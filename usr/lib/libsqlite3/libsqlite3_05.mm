uint64_t sub_1818C6990(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v8 = *(a1 + 104);
  if (a2 >= 1)
  {
    v8 += (*(a1 + 36) - a2) << 6;
  }

  v9 = 8 * a3;
  v10 = v9 + 120;
  v11 = v9 + 416;
  if (a4)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(*(a1 + 120) + 8 * a2);
  if (v13)
  {
    sub_18193A6F4(a1, v13);
    *(*(a1 + 120) + 8 * a2) = 0;
  }

  v14 = *(v8 + 32);
  if (v12 <= v14)
  {
    result = *(v8 + 40);
  }

  else
  {
    if (v14 >= 1)
    {
      sub_181929C84(*(v8 + 24), *(v8 + 40));
    }

    v15 = *(v8 + 24);
    if (v15)
    {
      result = sub_181929E8C(v15, v12, 3526279494);
    }

    else
    {
      result = sub_181902484(v12, 3526279494);
    }

    *(v8 + 40) = result;
    *(v8 + 8) = result;
    if (!result)
    {
      *(v8 + 32) = 0;
      return result;
    }

    *(v8 + 32) = v12;
  }

  *(*(a1 + 120) + 8 * a2) = result;
  *result = 0u;
  *(result + 16) = 0u;
  *result = v4;
  *(result + 64) = v5;
  *(result + 80) = result + 4 * v5 + 112;
  if (!v4)
  {
    v17 = (*(v8 + 8) + v10);
    *(result + 40) = v17;
    *v17 = 0uLL;
    v17[1] = 0uLL;
  }

  return result;
}

uint64_t sub_1818C6AC0(unsigned __int8 *a1)
{
  if (a1[84] < 0)
  {
    v4 = *(a1 + 20);
    if (!v4)
    {
LABEL_20:
      *a1 = 1;
      return 16;
    }

    v5 = *a1;
    if (v5 < 3)
    {
      goto LABEL_33;
    }

    if (v5 == 4)
    {
      return *(a1 + 1);
    }

    v12 = *(a1 + 3);
    if (v12)
    {
      v13 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v12);
        --qword_1ED456A90;
        off_1ED452EB0(v12);
        v12 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          goto LABEL_32;
        }

        v13 = &xmmword_1ED452F28;
      }

      (*v13)(v12);
    }

LABEL_32:
    *(a1 + 3) = 0;
    *a1 = 1;
    v4 = *(a1 + 20);
LABEL_33:
    result = sub_181943894(*(a1 + 4), v4, a1 + 17);
    if (result)
    {
      *a1 = 1;
      return result;
    }

    a1[84] = 0;
    v2 = *(a1 + 17);
    a1[85] = *(v2 + 1);
    goto LABEL_36;
  }

  v2 = *(a1 + 17);
  if (a1[84])
  {
    v3 = *(v2 + 112);
    if ((*(v3 + 52) & 0x20) != 0)
    {
      v7 = *(v3 + 40);
      --*(v7 + 152);
      *(v3 + 32) = *(v7 + 168);
      *(v7 + 168) = v3;
      (*(**(v7 + 72) + 144))(*(v7 + 72), *(v7 + 200) * (*(v3 + 48) - 1), *(v3 + 8));
    }

    else
    {
      sub_181932B68(v3);
    }

    v8 = a1[84] - 1;
    for (a1[84] = v8; v8; a1[84] = v8)
    {
      v9 = *(*&a1[8 * v8 + 144] + 112);
      if ((*(v9 + 52) & 0x20) != 0)
      {
        v10 = *(v9 + 40);
        --*(v10 + 152);
        *(v9 + 32) = *(v10 + 168);
        *(v10 + 168) = v9;
        (*(**(v10 + 72) + 144))(*(v10 + 72), *(v10 + 200) * (*(v9 + 48) - 1), *(v9 + 8));
      }

      else
      {
        sub_181932B68(v9);
      }

      v8 = a1[84] - 1;
    }

    v2 = *(a1 + 18);
    *(a1 + 17) = v2;
    goto LABEL_17;
  }

LABEL_36:
  if (!*v2 || *(v2 + 1) != (*(a1 + 16) == 0))
  {

    return sub_18193596C(84829, v2);
  }

LABEL_17:
  *(a1 + 43) = 0;
  *(a1 + 35) = 0;
  a1[1] &= 0xF1u;
  if (*(v2 + 24))
  {
    result = 0;
    *a1 = 0;
    return result;
  }

  if (*(v2 + 8))
  {
    goto LABEL_20;
  }

  if (*(v2 + 4) == 1)
  {
    v11 = bswap32(*(*(v2 + 80) + *(v2 + 9) + 8));
    *a1 = 0;

    return sub_1818C6EF4(a1, v11);
  }

  else
  {

    return sub_18190EDA8(84841);
  }
}

uint64_t sub_1818C6DCC(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = (*(a1 + 80) + *(a1 + 9));
  if (sub_181935454(a1, *v3))
  {
    v4 = 81486;
LABEL_5:

    return sub_18193596C(v4, a1);
  }

  v5 = *(v2 + 52);
  *(a1 + 26) = v5 - 1;
  *(a1 + 12) = 0;
  v6 = *(a1 + 10);
  *(a1 + 18) = *(a1 + 9) + v6 + 8;
  v7 = *(a1 + 80);
  *(a1 + 88) = v7 + v5;
  *(a1 + 96) = &v3[v6 + 8];
  *(a1 + 104) = v7 + v6;
  v8 = __rev16(*(v3 + 3));
  *(a1 + 24) = v8;
  if ((v5 - 8) / 6u < v8)
  {
    v4 = 81500;
    goto LABEL_5;
  }

  *(a1 + 20) = -1;
  *a1 = 1;
  if ((*(*(v2 + 8) + 50) & 0x20) == 0)
  {
    return 0;
  }

  return sub_181939AFC(a1);
}

uint64_t sub_1818C6EF4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 84);
  if (v3 < 19)
  {
    *(a1 + 70) = 0;
    v7 = (a1 + 136);
    v6 = *(a1 + 136);
    *(a1 + 2 * v3 + 88) = *(a1 + 86);
    v8 = a1 + 144;
    *(a1 + 144 + 8 * v3) = v6;
    *(a1 + 1) &= 0xF9u;
    *(a1 + 86) = 0;
    *(a1 + 84) = v3 + 1;
    result = sub_181943894(*(a1 + 32), a2, (a1 + 136));
    if (!result)
    {
      v9 = *v7;
      if (*(*v7 + 24) && *(v9 + 1) == *(a1 + 85))
      {
        return 0;
      }

      v10 = *(v9 + 112);
      if ((*(v10 + 52) & 0x20) != 0)
      {
        v11 = *(v10 + 40);
        --*(v11 + 152);
        *(v10 + 32) = *(v11 + 168);
        *(v11 + 168) = v10;
        (*(**(v11 + 72) + 144))(*(v11 + 72), *(v11 + 200) * (*(v10 + 48) - 1), *(v10 + 8));
      }

      else
      {
        sub_181932B68(v10);
      }

      result = sub_18190EDA8(84694);
    }

    v12 = *(a1 + 84) - 1;
    *(a1 + 84) = v12;
    *(a1 + 136) = *(v8 + 8 * v12);
  }

  else
  {

    return sub_18190EDA8(84680);
  }

  return result;
}

uint64_t sub_1818C7030(uint64_t result, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = a2;
  if (*a2 < 0)
  {
    v4 = a2 + 1;
    v5 = a2[1] & 0x7F | ((v3 & 0x7F) << 7);
    if ((a2[1] & 0x80) == 0)
    {
LABEL_3:
      v3 = v5;
      goto LABEL_6;
    }

    v4 = a2 + 2;
    v3 = a2[2] & 0x7F | (v5 << 7);
    if ((a2[2] & 0x80) != 0)
    {
      v4 = a2 + 3;
      v3 = a2[3] & 0x7F | (v3 << 7);
      if ((a2[3] & 0x80) != 0)
      {
        v4 = a2 + 4;
        v5 = a2[4] & 0x7F | (v3 << 7);
        if ((a2[4] & 0x80) == 0)
        {
          goto LABEL_3;
        }

        v4 = a2 + 5;
        v3 = a2[5] & 0x7F | (v5 << 7);
        if ((a2[5] & 0x80) != 0)
        {
          v4 = a2 + 6;
          v5 = a2[6] & 0x7F | (v3 << 7);
          if ((a2[6] & 0x80) == 0)
          {
            goto LABEL_3;
          }

          v4 = a2 + 7;
          v3 = a2[7] & 0x7F | (v5 << 7);
          if ((a2[7] & 0x80) != 0)
          {
            v4 = a2 + 8;
            v5 = a2[8] & 0x7F | (v3 << 7);
            goto LABEL_3;
          }
        }
      }
    }
  }

LABEL_6:
  v6 = v4 + 1;
  v7 = v4[1];
  if (v4[1] < 0)
  {
    v6 = v4 + 2;
    v8 = v4[2] ^ (v7 << 7);
    if (v4[2] < 0)
    {
      v6 = v4 + 3;
      v9 = v4[3] ^ (v8 << 7);
      if (v4[3] < 0)
      {
        v6 = v4 + 4;
        v7 = v4[4] ^ (v9 << 7) ^ 0x10204000;
        if (v4[4] < 0)
        {
          v6 = v4 + 5;
          v7 = v4[5] ^ (v7 << 7) ^ 0x4000;
          if (v4[5] < 0)
          {
            v6 = v4 + 6;
            v7 = v4[6] ^ (v7 << 7) ^ 0x4000;
            if (v4[6] < 0)
            {
              v6 = v4 + 7;
              v7 = v4[7] ^ (v7 << 7) ^ 0x4000;
              if (v4[7] < 0)
              {
                v6 = v4 + 8;
                v7 = v4[8] ^ (v7 << 7) ^ 0x4000;
                if (v4[8] < 0)
                {
                  v7 = (v4[9] | (v7 << 8)) ^ 0x8000;
                  v6 = v4 + 9;
                }
              }
            }
          }
        }
      }

      else
      {
        v7 = v9 ^ 0x204000;
      }
    }

    else
    {
      v7 = v8 & 0x3FFF;
    }
  }

  *(a3 + 16) = v3;
  *a3 = v7;
  *(a3 + 8) = v6 + 1;
  if (v3 > *(result + 14))
  {
    return sub_181935AF8(result, a2, a3);
  }

  v10 = v3 + v6 + 1 - a2;
  if ((v10 & 0xFFFC) == 0)
  {
    v10 = 4;
  }

  *(a3 + 22) = v10;
  *(a3 + 20) = v3;
  return result;
}

uint64_t sub_1818C7200(char *a1, unint64_t *a2)
{
  v2 = *a1;
  if ((v2 & 0x8000000000000000) != 0)
  {
    v4 = a1[1];
    if (v4 < 0)
    {
      v5 = a1[1];
      v6 = a1[2];
      v7 = v6 & 0x7F | (*a1 << 14) & 0x1FFFFF;
      if (v6 < 0)
      {
        v8 = (a1[3] | (v5 << 14)) & 0x1FC07F;
        if (a1[3] < 0)
        {
          v9 = a1[4];
          v10 = v9 | (v7 << 14);
          if (a1[4] < 0)
          {
            v11 = v8 | (v7 << 7);
            v12 = a1[5] | (v8 << 14);
            if (a1[5] < 0)
            {
              v13 = a1[6] | (v10 << 14);
              if (a1[6] < 0)
              {
                v14 = v13 & 0x1FC07F;
                v15 = a1[7] | (v12 << 14);
                if (a1[7] < 0)
                {
                  v16 = a1[8] | (v14 << 15) | (v15 << 8) & 0x1FC07F00u | (((v9 >> 3) & 0xF | (16 * v11)) << 32);
                  result = 9;
                }

                else
                {
                  v16 = v15 & 0xF01FC07F | (v14 << 7) | ((v11 >> 4) << 32);
                  result = 8;
                }

                *a2 = v16;
              }

              else
              {
                result = 7;
                *a2 = v13 & 0xF01FC07F | (v12 << 7) & 0xFE03F80 | ((v11 >> 11) << 32);
              }
            }

            else
            {
              result = 6;
              *a2 = v12 | (v10 << 7) & 0xFE03F80u | ((v11 >> 18) << 32);
            }
          }

          else
          {
            result = 5;
            *a2 = v10 | (v8 << 7) | ((v7 >> 18) << 32);
          }
        }

        else
        {
          result = 4;
          *a2 = v8 | (v7 << 7);
        }
      }

      else
      {
        result = 3;
        *a2 = v7 | ((v5 & 0x7F) << 7);
      }
    }

    else
    {
      result = 2;
      *a2 = v4 | ((v2 & 0x7F) << 7);
    }
  }

  else
  {
    result = 1;
    *a2 = v2;
  }

  return result;
}

char *sub_1818C7394(char *result, int a2, uint64_t a3)
{
  if (a2 <= 5)
  {
    if (a2 > 2)
    {
      if (a2 == 3)
      {
        v9 = (*result << 16) | (result[1] << 8);
        v10 = result[2];
      }

      else
      {
        if (a2 != 4)
        {
          v3 = bswap32(*(result + 2)) | ((result[1] | (*result << 8)) << 32);
          goto LABEL_31;
        }

        v9 = (*result << 24) | (result[1] << 16) | (result[2] << 8);
        v10 = result[3];
      }

      v3 = v9 | v10;
      goto LABEL_31;
    }

    if (a2)
    {
      if (a2 == 1)
      {
        v3 = *result;
        goto LABEL_31;
      }

      if (a2 == 2)
      {
        v3 = result[1] | (*result << 8);
LABEL_31:
        *a3 = v3;
        goto LABEL_32;
      }

      goto LABEL_33;
    }

LABEL_19:
    *(a3 + 20) = 1;
    return result;
  }

  if (a2 > 9)
  {
    if (a2 == 11)
    {
      goto LABEL_19;
    }

    if (a2 == 10)
    {
      *(a3 + 20) = 1025;
      *(a3 + 16) = 0;
      *a3 = 0;
      return result;
    }

LABEL_33:
    *(a3 + 8) = result;
    *(a3 + 16) = (a2 - 12) >> 1;
    *(a3 + 20) = word_181A20E24[a2 & 1];
    return result;
  }

  if ((a2 - 6) >= 2)
  {
    v3 = (a2 - 8);
    if (v3 < 2)
    {
      goto LABEL_31;
    }

    goto LABEL_33;
  }

  v4 = (*result << 24) | (result[1] << 16);
  v5 = (result[4] << 24) | (result[5] << 16) | ((v4 | (bswap32(*(result + 1)) >> 16)) << 32) | result[7] | (result[6] << 8);
  if (a2 == 6)
  {
    *a3 = v5;
LABEL_32:
    *(a3 + 20) = 4;
    return result;
  }

  *a3 = v5;
  v6 = ~v4 & 0x7FF00000;
  if ((v5 & 0xFFFFFFFFFFFFFLL) != 0 && v6 == 0)
  {
    v8 = 1;
  }

  else
  {
    v8 = 8;
  }

  *(a3 + 20) = v8;
  return result;
}

const unsigned __int8 *__cdecl sqlite3_value_text(const unsigned __int8 *result)
{
  if (result)
  {
    v3 = *(result + 10);
    if ((~v3 & 0x202) != 0 || result[22] != 1)
    {
      if (v3)
      {
        return 0;
      }

      else
      {
        return sub_18193CB70(result, 1, v1, v2);
      }
    }

    else
    {
      return *(result + 1);
    }
  }

  return result;
}

uint64_t sub_1818C757C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v4 = *(result + 20);
    if ((~v4 & 0x202) != 0 || *(result + 22) != a2)
    {
      if (v4)
      {
        return 0;
      }

      else
      {
        return sub_18193CB70(result, a2, a3, a4);
      }
    }

    else
    {
      return *(result + 8);
    }
  }

  return result;
}

uint64_t sub_1818C75B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (*(a1 + 32) >= 32)
  {
    v8 = *(a1 + 40);
    *(a1 + 8) = v8;
    *(a1 + 20) &= 0x2Du;
  }

  else
  {
    if (sub_1818BB128(a1, 0x20u, 0, a4))
    {
      *(a1 + 22) = 0;
      return 7;
    }

    v8 = *(a1 + 8);
  }

  sub_18193CE24(v8, a1);
  *(a1 + 22) = 1;
  v11 = *(a1 + 20) | 0x202;
  if (a3)
  {
    v11 = *(a1 + 20) & 0xFDD1 | 0x202;
  }

  *(a1 + 20) = v11;
  if (a2 != 1)
  {
    sub_1818F1820(a1, a2, v9, v10);
  }

  return 0;
}

void sub_1818C7678(uint64_t result, unsigned int *a2, uint64_t a3, int a4, int a5)
{
  v7 = *(result + 344);
  if (!v7)
  {
LABEL_59:
    if (!a2)
    {
      return;
    }

    goto LABEL_60;
  }

  v8 = *(v7 + 48);
  if ((v8 & 4) != 0)
  {
    sub_181910730(result, "table %s has more than one primary key", a3);
    goto LABEL_59;
  }

  *(v7 + 48) = v8 | 4;
  if (a2)
  {
    v9 = *a2;
    if (v9 < 1)
    {
      goto LABEL_57;
    }

    v43 = a5;
    v44 = a4;
    v45 = a3;
    v10 = 0;
    v11 = 0;
    LOWORD(v12) = -1;
    while (1)
    {
      for (i = *&a2[6 * v10 + 2]; i; i = *(i + 2))
      {
        if ((i[5] & 0x20) == 0)
        {
          break;
        }
      }

      v18 = *i;
      v19 = i;
      if (v18 == 118)
      {
        goto LABEL_17;
      }

      if (v18 == 114)
      {
        break;
      }

LABEL_18:
      if (v18 != 60)
      {
        goto LABEL_10;
      }

      v20 = *(i + 1);
      if (v20 && (v21 = *v20) != 0)
      {
        v22 = 0;
        v23 = v20 + 1;
        do
        {
          v22 += byte_181A20298[v21];
          v24 = *v23++;
          v21 = v24;
        }

        while (v24);
      }

      else
      {
        v22 = 0;
      }

      v25 = *(v7 + 8);
      v26 = *(v7 + 54);
      v12 = *(v7 + 104 + (v22 & 0xF));
      v27 = v25 + 16 * v12;
      if (*(v27 + 11) == v22)
      {
        v28 = *v27;
        for (j = v20; ; ++j)
        {
          if (*v28 == *j)
          {
            if (!*v28)
            {
LABEL_42:
              v11 = v25 + 16 * v12;
              v34 = *(v11 + 14);
              *(v11 + 14) = v34 | 1;
              if ((v34 & 0x60) != 0)
              {
                sub_181910730(result, "generated columns cannot be part of the PRIMARY KEY");
              }

              goto LABEL_10;
            }
          }

          else if (byte_181A20298[*v28] != byte_181A20298[*j])
          {
            break;
          }

          ++v28;
        }
      }

      v12 = 0;
      if (v26 <= 1)
      {
        v30 = 1;
      }

      else
      {
        v30 = v26;
      }

      do
      {
        v31 = v25 + 16 * v12;
        if (*(v31 + 11) == v22)
        {
          v32 = *v31;
          for (k = v20; ; ++k)
          {
            if (*v32 == *k)
            {
              if (!*v32)
              {
                goto LABEL_42;
              }
            }

            else if (byte_181A20298[*v32] != byte_181A20298[*k])
            {
              break;
            }

            ++v32;
          }
        }

        ++v12;
      }

      while (v12 != v30);
      LOWORD(v12) = -1;
LABEL_10:
      if (++v10 == v9)
      {
        a4 = v44;
        a3 = v45;
        a5 = v43;
        if (v9 == 1)
        {
          goto LABEL_45;
        }

        goto LABEL_57;
      }
    }

    v19 = *(i + 2);
    if (*v19 != 118)
    {
      goto LABEL_10;
    }

LABEL_17:
    *v19 = 60;
    v18 = *i;
    goto LABEL_18;
  }

  v12 = *(v7 + 54) - 1;
  v11 = *(v7 + 8) + 16 * v12;
  v13 = *(v11 + 14);
  *(v11 + 14) = v13 | 1;
  if ((v13 & 0x60) != 0)
  {
    v14 = a3;
    v15 = a4;
    v16 = a5;
    sub_181910730(result, "generated columns cannot be part of the PRIMARY KEY");
    a5 = v16;
    a4 = v15;
    a3 = v14;
  }

LABEL_45:
  if (!v11 || a5 == 1 || (*(v11 + 8) & 0xF0) != 0x40)
  {
LABEL_57:
    if (!a4)
    {
      sub_1818C8730(result, 0, 0, 0, a2, a3, 0, 0, a5, 0, 2u);
      return;
    }

    sub_181910730(result, "AUTOINCREMENT is only allowed on an INTEGER PRIMARY KEY");
    goto LABEL_59;
  }

  if (a2 && *(result + 302) >= 2u)
  {
    for (m = *(a2 + 1); m; m = *(m + 16))
    {
      if ((*(m + 5) & 0x20) == 0)
      {
        break;
      }
    }

    v36 = *(result + 408);
    if (v36)
    {
      while (*v36 != m)
      {
        v36 = v36[3];
        if (!v36)
        {
          goto LABEL_66;
        }
      }

      *v36 = v7 + 52;
    }
  }

LABEL_66:
  *(v7 + 52) = v12;
  *(v7 + 62) = a3;
  *(v7 + 48) |= 8 * a4;
  if (a2)
  {
    *(result + 300) = *(a2 + 24);
    v38 = *a2;
    if (v38 >= 1)
    {
      v39 = (a2 + 25);
      while ((*v39 & 0x20) == 0)
      {
        v39 += 12;
        if (!--v38)
        {
          goto LABEL_60;
        }
      }

      v40 = *(v39 - 1);
      v41 = v40 == 3 || v40 == 0;
      v42 = "LAST";
      if (v41)
      {
        v42 = "FIRST";
      }

      sub_181910730(result, "unsupported use of NULLS %s", v42);
    }

LABEL_60:
    v37 = *result;

    sub_18194E5B8(v37, a2);
  }
}

void *sub_1818C7AB0(void *ptr, int a2)
{
  v4 = qword_1EA831A88;
  if (!qword_1EA831A88)
  {
    v4 = malloc_default_zone();
  }

  result = malloc_type_zone_realloc(v4, ptr, a2, 0xC5750F60uLL);
  if (!result)
  {
    if (qword_1EA831A88)
    {
      v6 = (*(qword_1EA831A88 + 16))(qword_1EA831A88, ptr);
    }

    else
    {
      v6 = malloc_size(ptr);
    }

    sqlite3_log(7, "failed memory resize %u to %u bytes", v6, a2);
    return 0;
  }

  return result;
}

void sub_1818C7B4C(uint64_t *result, unsigned __int8 *a2, unsigned __int8 *a3, int a4)
{
  v6 = *result;
  v7 = result[43];
  if (!v7)
  {
    goto LABEL_25;
  }

  v10 = 4;
  if (*(v6 + 197))
  {
    if (*(v6 + 196) == 1)
    {
      v10 = 4;
    }

    else
    {
      v10 = 5;
    }
  }

  v11 = *(v7 + 8) + 16 * *(v7 + 54);
  v33 = 0uLL;
  WORD2(v33) = v10;
  *&v31 = 0;
  *(&v31 + 1) = sub_1818C7E14;
  *&v32 = sub_18195A49C;
  *(&v32 + 1) = 0;
  if (a2)
  {
    sub_181959BA0(&v31, a2);
    if (!WORD2(v33))
    {
      sub_181910730(result, "default value of column [%s] is not constant");
      goto LABEL_25;
    }
  }

  if ((*(v11 - 2) & 0x60) != 0)
  {
    sub_181910730(result, "cannot use DEFAULT on a generated column");
    goto LABEL_25;
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  LOBYTE(v31) = -75;
  v12 = a4 - a3;
  do
  {
    v13 = a3;
    v14 = v12;
    v15 = *a3++;
    --v12;
  }

  while ((byte_181A204C8[v15] & 1) != 0);
  v16 = v14;
  v17 = (v14 << 32) + 0x100000000;
  v18 = v16 - 2;
  do
  {
    v19 = byte_181A204C8[a3[v18]];
    v17 -= 0x100000000;
    --v18;
  }

  while ((v19 & 1) != 0);
  v20 = v17 >> 32;
  v21 = sub_181929E8C(v6, (v17 >> 32) + 1, 1565185748);
  v22 = v21;
  if (v21)
  {
    memcpy(v21, v13, v20);
    *(v22 + v20) = 0;
  }

  *(&v31 + 1) = v22;
  *&v32 = a2;
  DWORD1(v31) = 0x2000;
  v23 = sub_1818C7FEC(v6, &v31, 1, 0);
  if (v22)
  {
    sub_181929C84(v6, v22);
  }

  v24 = *(v7 + 80);
  v25 = *(v11 - 4);
  if (!*(v11 - 4) || !v24)
  {
    if (!v24)
    {
      *(v11 - 4) = 1;
      *(v7 + 80) = sub_18197FD9C(*result, v23);
      goto LABEL_25;
    }

    v26 = *v24;
    goto LABEL_34;
  }

  v26 = *v24;
  if (*v24 < v25)
  {
LABEL_34:
    *(v11 - 4) = v26 + 1;
    if (v24[1] <= v26)
    {
      *(v7 + 80) = sub_18197FE14(*result, v24, v23);
    }

    else
    {
      *v24 = v26 + 1;
      v30 = &v24[6 * v26];
      *(v30 + 2) = 0;
      *(v30 + 3) = 0;
      *(v30 + 1) = v23;
      *(v7 + 80) = v24;
    }

    goto LABEL_25;
  }

  v27 = v24 + 2;
  v28 = *&v24[6 * (v25 - 1) + 2];
  if (v28)
  {
    sub_1819439E0(*result, v28);
    v25 = *(v11 - 4);
  }

  *&v27[6 * v25 - 6] = v23;
LABEL_25:
  v29 = *(result + 302);
  if (v29 >= 2)
  {
    v33 = 0uLL;
    *&v31 = result;
    *(&v31 + 1) = sub_181961E4C;
    *&v32 = sub_181961EB8;
    *(&v32 + 1) = 0;
    *(result + 302) = 3;
    if (a2)
    {
      sub_181959BA0(&v31, a2);
    }

    *(result + 302) = v29;
  }

  if (a2)
  {
    sub_1819439E0(v6, a2);
  }
}

uint64_t sub_1818C7E14(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 36);
  if (v2 == 2 && (a2[4] & 1) != 0)
  {
    goto LABEL_30;
  }

  v3 = *a2;
  if (v3 > 0xA7)
  {
    if (*a2 > 0xABu)
    {
      if (v3 == 179 || v3 == 176)
      {
        goto LABEL_30;
      }

      if (v3 == 172)
      {
        v4 = *(a2 + 1);
        v5 = (v4 >> 20) & 1;
        if (v2 > 3)
        {
          v5 = 1;
        }

        if (v5 == 1 && (v4 & 0x1000000) == 0)
        {
          if (v2 == 5)
          {
            *(a2 + 1) = v4 | 0x40000000;
            return 0;
          }

          return 0;
        }

        if (*a1)
        {
          return sub_18195A4A8(a1, a2);
        }

        goto LABEL_30;
      }
    }

    else if (v3 - 168 < 3)
    {
LABEL_6:
      if ((a2[4] & 0x20) == 0)
      {
        if (v2 == 3 && *(a2 + 11) == *(a1 + 40))
        {
          return 0;
        }

LABEL_30:
        *(a1 + 36) = 0;
        return 2;
      }

      if (v2 == 2)
      {
        goto LABEL_30;
      }

      return 0;
    }

    return 0;
  }

  if (*a2 > 0x8Du)
  {
    if (v3 == 142)
    {
      goto LABEL_30;
    }

    if (v3 == 157)
    {
      if (v2 == 4)
      {
        goto LABEL_30;
      }

      if (v2 != 5)
      {
        return 0;
      }

      *a2 = 122;
    }

    return 0;
  }

  if (v3 != 60)
  {
    if (v3 == 72)
    {
      goto LABEL_30;
    }

    return 0;
  }

  v7 = *(a2 + 1);
  if ((v7 & 0x4000800) != 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 1);
  v9 = "true";
  for (i = v8; *i == *v9; ++i)
  {
    if (!*i)
    {
      v11 = 0x10000000;
      goto LABEL_47;
    }

LABEL_35:
    ++v9;
  }

  if (byte_181A20298[*i] == byte_181A20298[*v9])
  {
    goto LABEL_35;
  }

  for (j = "false"; *v8 != *j; ++j)
  {
    if (byte_181A20298[*v8] != byte_181A20298[*j])
    {
      goto LABEL_6;
    }

LABEL_43:
    ++v8;
  }

  if (*v8)
  {
    goto LABEL_43;
  }

  v11 = 0x20000000;
LABEL_47:
  *a2 = -85;
  *(a2 + 1) = v11 | v7;
  return 1;
}

unsigned int *sub_1818C7FEC(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned int **a4)
{
  if (a4)
  {
    v8 = *a4;
    v9 = 0x8000000;
    v10 = -1;
    v34 = v8;
    if (!v8)
    {
      goto LABEL_56;
    }
  }

  else
  {
    if (a3)
    {
      v11 = sub_1818C82E4(a2);
      v10 = -1;
    }

    else if ((a2[5] & 8) != 0 || (v12 = *(a2 + 1)) == 0)
    {
      v10 = 0;
      v11 = 80;
    }

    else
    {
      v13 = strlen(v12);
      v10 = (v13 & 0x3FFFFFFF) + 1;
      v11 = (v13 & 0x3FFFFFF8) + 88;
    }

    v8 = sub_181929E8C(a1, v11, 353104982);
    v9 = 0;
    v34 = v8;
    if (!v8)
    {
      goto LABEL_56;
    }
  }

  if (!a3 || (a2[6] & 2) != 0)
  {
    v14 = 80;
    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v14 = 16428;
    if (*(a2 + 2))
    {
      if ((v10 & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

LABEL_18:
      if ((a2[5] & 8) != 0 || (v16 = *(a2 + 1)) == 0)
      {
        v10 = 0;
        if (a3)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v10 = (strlen(v16) & 0x3FFFFFFF) + 1;
        if (a3)
        {
          goto LABEL_16;
        }
      }

      goto LABEL_23;
    }

    if (*(a2 + 4))
    {
      v14 = 16428;
    }

    else
    {
      v14 = 65552;
    }

    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_18;
    }
  }

LABEL_15:
  if (a3)
  {
LABEL_16:
    v15 = v14 & 0x7C;
    memcpy(v8, a2, v14 & 0x7C);
    goto LABEL_31;
  }

LABEL_23:
  v17 = *(a2 + 1);
  v15 = 80;
  if ((v17 & 0x4000) != 0)
  {
    v18 = 44;
  }

  else
  {
    v18 = 80;
  }

  if ((v17 & 0x10000) != 0)
  {
    v19 = 16;
  }

  else
  {
    v19 = v18;
  }

  memcpy(v8, a2, v19);
  if (v19 <= 0x4F)
  {
    v15 = 80;
    bzero(v8 + v19, 80 - v19);
  }

LABEL_31:
  v20 = v14 & 0x14000 | v9 | v8[1] & 0xF7FEBFFF;
  v8[1] = v20;
  if (v10)
  {
    v21 = v8 + v15;
    *(v8 + 1) = v21;
    memcpy(v21, *(a2 + 1), v10);
    v15 += v10;
    v20 = v8[1];
  }

  v34 = (v8 + ((v15 + 7) & 0xFFFFFFF8));
  v22 = *(a2 + 1);
  if (((v20 | v22) & 0x810000) == 0)
  {
    v23 = *(a2 + 4);
    if ((v22 & 0x1000) != 0)
    {
      v25 = sub_1818CB220(a1, v23, a3);
    }

    else
    {
      if (*a2 == 146)
      {
        v24 = 0;
      }

      else
      {
        v24 = a3;
      }

      v25 = sub_1818C83A0(a1, v23, v24);
    }

    *(v8 + 4) = v25;
    if (a2[7])
    {
      *(v8 + 9) = sub_18195C750(a1, v8, *(a2 + 9));
    }

    v26 = *a2;
    v27 = *(a2 + 2);
    if (a3)
    {
      if (v26 != 178 && v27)
      {
        v27 = sub_1818C7FEC(a1, v27, 1, &v34);
      }

      *(v8 + 2) = v27;
      v28 = *(a2 + 3);
      if (v28)
      {
        v29 = &v34;
        v30 = a1;
        v31 = 1;
LABEL_53:
        v32 = sub_1818C7FEC(v30, v28, v31, v29);
LABEL_55:
        *(v8 + 3) = v32;
        goto LABEL_56;
      }
    }

    else
    {
      if (v26 != 178 && v27)
      {
        v27 = sub_1818C7FEC(a1, v27, 0, 0);
      }

      *(v8 + 2) = v27;
      v28 = *(a2 + 3);
      if (v28)
      {
        v30 = a1;
        v31 = 0;
        v29 = 0;
        goto LABEL_53;
      }
    }

    v32 = 0;
    goto LABEL_55;
  }

LABEL_56:
  if (a4)
  {
    *a4 = v34;
  }

  return v8;
}

uint64_t sub_1818C82E4(uint64_t a1)
{
  LODWORD(v2) = 0;
  do
  {
    v3 = *(a1 + 4);
    if ((v3 & 0x20000) != 0)
    {
      v4 = 80;
      if ((v3 & 0x800) != 0)
      {
        goto LABEL_15;
      }
    }

    else if (*(a1 + 16))
    {
      v4 = 44;
      if ((v3 & 0x800) != 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (*(a1 + 32))
      {
        v4 = 44;
      }

      else
      {
        v4 = 16;
      }

      if ((v3 & 0x800) != 0)
      {
        goto LABEL_15;
      }
    }

    v5 = *(a1 + 8);
    if (v5)
    {
      v4 += (strlen(v5) & 0x3FFFFFFF) + 1;
    }

LABEL_15:
    v6 = (v4 + 7) & 0xFFFFFFF8;
    v7 = *(a1 + 16);
    if (v7)
    {
      v6 += sub_1818C82E4(v7);
    }

    a1 = *(a1 + 24);
    v2 = v6 + v2;
  }

  while (a1);
  return v2;
}

_DWORD *sub_1818C83A0(uint64_t a1, _DWORD *a2, unsigned int a3)
{
  if (!a2)
  {
    return 0;
  }

  if (a1 && *(a1 + 520) > a2)
  {
    if (*(a1 + 496) <= a2)
    {
      v5 = 128;
      goto LABEL_7;
    }

    if (*(a1 + 504) <= a2)
    {
      v5 = *(a1 + 438);
      goto LABEL_7;
    }
  }

  v5 = xmmword_1ED452EC0(a2);
LABEL_7:
  v6 = sub_181929E8C(a1, v5, 1079309605);
  v7 = v6;
  if (v6)
  {
    *v6 = *a2;
    v6[1] = a2[1];
    if (*a2 >= 1)
    {
      v8 = 0;
      v9 = 0;
      v25 = 0;
      v10 = 0;
      while (1)
      {
        v13 = &a2[v8];
        v14 = &v7[v8];
        v15 = *&a2[v8 + 2];
        if (!v15)
        {
          break;
        }

        v16 = sub_1818C7FEC(a1, *&a2[v8 + 2], a3, 0);
        *(v14 + 1) = v16;
        if (*v15 != 178 || v16 == 0)
        {
          goto LABEL_21;
        }

        v18 = *(v16 + 24);
        if (v18)
        {
          v25 = *(v15 + 3);
          *(v16 + 16) = v18;
          v9 = v18;
          v19 = *(v13 + 2);
          if (!v19)
          {
            goto LABEL_10;
          }
        }

        else
        {
          v22 = *(v15 + 2);
          if (v22 != v25)
          {
            if (v22)
            {
              v23 = v16;
              v9 = sub_1818C7FEC(a1, v22, a3, 0);
              v16 = v23;
            }

            else
            {
              v9 = 0;
            }

            *(v16 + 24) = v9;
            v25 = v22;
          }

          *(v16 + 16) = v9;
          v19 = *(v13 + 2);
          if (!v19)
          {
LABEL_10:
            v11 = 0;
            goto LABEL_11;
          }
        }

LABEL_22:
        v20 = strlen(v19);
        v21 = v20;
        if (a1)
        {
          v11 = sub_181929E8C(a1, v20 + 1, 354097263);
          if (!v11)
          {
            goto LABEL_11;
          }

LABEL_26:
          memcpy(v11, v19, v21 + 1);
          goto LABEL_11;
        }

        v11 = sub_181902484(v20 + 1, 354097263);
        if (v11)
        {
          goto LABEL_26;
        }

LABEL_11:
        v12 = &v7[v8];
        *(v12 + 2) = v11;
        v12[6] = v13[6];
        v12[7] = v13[7];
        ++v10;
        v8 += 6;
        if (v10 >= *a2)
        {
          return v7;
        }
      }

      *(v14 + 1) = 0;
LABEL_21:
      v19 = *(v13 + 2);
      if (!v19)
      {
        goto LABEL_10;
      }

      goto LABEL_22;
    }
  }

  return v7;
}

uint64_t sub_1818C85D8(uint64_t a1)
{
  *(a1 + 70) = 0;
  *(a1 + 1) &= 0xF9u;
  if (*a1)
  {
LABEL_10:

    return sub_181944D44(a1);
  }

  v2 = *(a1 + 136);
  v3 = *(a1 + 86);
  *(a1 + 86) = v3 + 1;
  if (*(v2 + 24) <= (v3 + 1))
  {
    *(a1 + 86) = v3;
    goto LABEL_10;
  }

  if (!*(v2 + 8))
  {
    while (1)
    {
      v5 = *(a1 + 136);
      if (*(v5 + 8))
      {
        break;
      }

      result = sub_1818C6EF4(a1, bswap32(*(*(v5 + 80) + (_byteswap_ushort(*(*(v5 + 96) + 2 * *(a1 + 86))) & *(v5 + 26)))));
      if (result)
      {
        return result;
      }
    }
  }

  return 0;
}

char **sub_1818C86A4(uint64_t *a1, char *a2)
{
  v4 = *a1;
  v5 = *(v4 + 100);
  v6 = *(v4 + 197);
  result = sub_181949138(v4, *(v4 + 100), a2, v6);
  if (!v6 && (!result || !result[3]))
  {

    return sub_18194E6B8(a1, v5, result, a2);
  }

  return result;
}

void *sub_1818C8730(void *a1, const char **a2, uint64_t a3, uint64_t a4, unsigned int *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, int a9, int a10, unsigned __int8 a11)
{
  v11 = a5;
  v173 = 0u;
  v174 = 0u;
  v171 = 0u;
  v172 = 0u;
  v169 = 0u;
  v170 = 0u;
  v13 = *a1;
  __dst = 0;
  if (*(a1 + 13))
  {
    goto LABEL_4;
  }

  v15 = a11;
  if (a11 != 2 && *(a1 + 302) == 1)
  {
    goto LABEL_4;
  }

  v165 = a8;
  v164 = a6;
  v18 = a3;
  v19 = a2;
  if (!*(v13 + 197))
  {
    v23 = *(v13 + 44);
    v24 = *(*(v13 + 32) + 24);
    *(v13 + 100) = *(v24 + 113);
    if ((*(v24 + 114) & 1) != 0 || (v25 = sub_18189F330(v13, 0, a1 + 1, 0), a2 = v19, a3 = v18, !v25))
    {
      v26 = *(v13 + 40);
      if (v26 < 2)
      {
LABEL_35:
        if ((v23 & 1) == 0)
        {
          *(v13 + 44) &= ~1u;
        }

        if (*(v13 + 111))
        {
          *(v13 + 44) |= 0x10u;
        }

        goto LABEL_13;
      }

      v27 = 32 * v26 - 8;
      while (1)
      {
        if ((*(*(*(v13 + 32) + v27) + 114) & 1) == 0)
        {
          v25 = sub_18189F330(v13, (v26 - 1), a1 + 1, 0);
          a2 = v19;
          a3 = v18;
          if (v25)
          {
            break;
          }
        }

        --v26;
        v27 -= 32;
        if ((v26 + 1) <= 2)
        {
          goto LABEL_35;
        }
      }
    }

    v16 = 0;
    *(a1 + 6) = v25;
    ++*(a1 + 13);
    a8 = v165;
    goto LABEL_5;
  }

LABEL_13:
  if (v11)
  {
    v20 = *v11;
    if (v20 >= 1)
    {
      v21 = (v11 + 25);
      while ((*v21 & 0x20) == 0)
      {
        v21 += 12;
        if (!--v20)
        {
          goto LABEL_18;
        }
      }

      sub_181910730(a1, "unsupported use of NULLS %s");
      goto LABEL_40;
    }
  }

LABEL_18:
  if (!a4)
  {
    v28 = a1[43];
    a8 = v165;
    if (v28)
    {
      v29 = v28[12];
      if (!v29)
      {
        v33 = 0;
        i = 0;
        v31 = -32768;
        goto LABEL_63;
      }

      v30 = (*(v13 + 32) + 24);
      v31 = -1;
      do
      {
        v32 = *v30;
        v30 += 4;
        ++v31;
      }

      while (v32 != v29);
      v33 = 0;
      goto LABEL_62;
    }

LABEL_4:
    v16 = 0;
    goto LABEL_5;
  }

  v22 = *a1;
  if (!*(a3 + 8))
  {
    v31 = *(v22 + 196);
    v33 = a2;
    goto LABEL_43;
  }

  if (*(v22 + 197))
  {
    sub_181910730(a1, "corrupt database");
LABEL_40:
    v16 = 0;
    a8 = v165;
    goto LABEL_5;
  }

  v34 = sub_18195D514(v22, a2);
  a3 = v18;
  v31 = v34;
  v33 = a3;
  if (v34 < 0)
  {
    sub_181910730(a1, "unknown database %T", v19);
    a8 = v165;
    goto LABEL_4;
  }

LABEL_43:
  if (!*(v13 + 197))
  {
    v35 = a3;
    v36 = sub_18196231C(a1, a4);
    if (!*(v35 + 8) && v36 && *(v36 + 96) == *(*(v13 + 32) + 56))
    {
      v31 = 1;
    }
  }

  v37 = *a1;
  *&v169 = a1;
  v38 = (*(v37 + 32) + 32 * v31);
  *(&v173 + 1) = *v38;
  v39 = v38[3];
  *&v174 = "index";
  *(&v174 + 1) = v33;
  LOBYTE(v173) = v31 == 1;
  *&v172 = &v169;
  *(&v172 + 1) = v39;
  *(&v169 + 1) = a1;
  *&v170 = sub_181962F5C;
  *(&v170 + 1) = sub_181962FE0;
  *&v171 = nullsub_8;
  DWORD2(v171) = 0;
  WORD6(v171) = 0;
  v181 = 0u;
  v182 = 0u;
  v179 = 0u;
  v180 = 0u;
  v176 = 0;
  v178 = 0u;
  memset(v175, 0, sizeof(v175));
  v177 = a4;
  sub_1818AEE70(&v169 + 1, v175);
  if (*(a4 + 35))
  {
    v41 = *(a4 + 72);
    v42 = *(*a1 + 32);
    if (v41)
    {
      v43 = (v42 + 24);
      v44 = 0xFFFFFFFF00000000;
      do
      {
        v45 = *v43;
        v43 += 4;
        v44 += 0x100000000;
      }

      while (v45 != v41);
      v46 = v44 >> 32;
    }

    else
    {
      v46 = -32768;
    }

    v40 = (v42 + 32 * v46);
  }

  else
  {
    v40 = (a4 + 72);
  }

  v48 = sub_1818CA520(a1, 0, *(a4 + 8), *v40);
  if (!v48)
  {
    goto LABEL_40;
  }

  v28 = v48;
  if (v31 == 1 && *(*(v13 + 32) + 56) != *(v48 + 96))
  {
    sub_181910730(a1, "cannot create a TEMP index on non-TEMP table %s", *v48);
    v16 = 0;
    a8 = v165;
    goto LABEL_154;
  }

  if ((*(v48 + 48) & 0x80) == 0)
  {
LABEL_62:
    i = 0;
    goto LABEL_63;
  }

  for (i = *(v48 + 16); i; i = *(i + 40))
  {
    if ((*(i + 99) & 3) == 2)
    {
      break;
    }
  }

LABEL_63:
  v49 = *v28;
  if (!*v28)
  {
    goto LABEL_101;
  }

  v50 = *v49;
  if (!*v49)
  {
    v59 = 0;
    v58 = "sqlite_";
    goto LABEL_97;
  }

  if ((v50 & 0xFFFFFFDF) != 0x53)
  {
    v57 = &byte_181A20298[v50];
    v58 = "sqlite_";
    goto LABEL_96;
  }

  v51 = *(v49 + 1);
  if (!v49[1])
  {
    v59 = 0;
    v58 = "qlite_";
    goto LABEL_97;
  }

  if ((v51 & 0xFFFFFFDF) != 0x51)
  {
    v57 = &byte_181A20298[v51];
    v58 = "qlite_";
    goto LABEL_96;
  }

  v52 = *(v49 + 2);
  if (!v49[2])
  {
    v59 = 0;
    v58 = "lite_";
    goto LABEL_97;
  }

  if ((v52 & 0xFFFFFFDF) != 0x4C)
  {
    v57 = &byte_181A20298[v52];
    v58 = "lite_";
    goto LABEL_96;
  }

  v53 = *(v49 + 3);
  if (!v49[3])
  {
    v59 = 0;
    v58 = "ite_";
    goto LABEL_97;
  }

  if ((v53 & 0xFFFFFFDF) != 0x49)
  {
    v57 = &byte_181A20298[v53];
    v58 = "ite_";
    goto LABEL_96;
  }

  v54 = *(v49 + 4);
  if (!v49[4])
  {
    v59 = 0;
    v58 = "te_";
    goto LABEL_97;
  }

  if ((v54 & 0xFFFFFFDF) != 0x54)
  {
    v57 = &byte_181A20298[v54];
    v58 = "te_";
    goto LABEL_96;
  }

  v55 = *(v49 + 5);
  if (!v49[5])
  {
    v59 = 0;
    v58 = "e_";
    goto LABEL_97;
  }

  if ((v55 & 0xFFFFFFDF) != 0x45)
  {
    v57 = &byte_181A20298[v55];
    v58 = "e_";
    goto LABEL_96;
  }

  v56 = *(v49 + 6);
  if (!v49[6])
  {
    v59 = 0;
    v58 = "_";
LABEL_97:
    if (v59 != byte_181A20298[*v58])
    {
      goto LABEL_101;
    }

    goto LABEL_98;
  }

  if (v56 != 95)
  {
    v57 = &byte_181A20298[v56];
    v58 = "_";
LABEL_96:
    v59 = *v57;
    goto LABEL_97;
  }

LABEL_98:
  if (a4 && !*(v13 + 197))
  {
    sub_181910730(a1, "table %s may not be indexed", a3);
LABEL_105:
    a8 = v165;
    v16 = 0;
    goto LABEL_154;
  }

LABEL_101:
  v60 = *(v28 + 63);
  if (v60 == 1)
  {
    sub_181910730(a1, "virtual tables may not be indexed", a3, a4, a5, a6, a7, a8);
    goto LABEL_105;
  }

  if (v60 == 2)
  {
    sub_181910730(a1, "views may not be indexed", a3, a4, a5, a6, a7, a8);
    goto LABEL_105;
  }

  v61 = v31;
  v160 = (*(v13 + 32) + 32 * v31);
  if (!v33)
  {
    v64 = v28[2];
    if (v64)
    {
      v65 = 1;
      do
      {
        ++v65;
        v64 = *(v64 + 40);
      }

      while (v64);
    }

    else
    {
      v65 = 1;
    }

    v66 = sub_1818A8BAC(v13, "sqlite_autoindex_%s_%d", v49, v65);
    v16 = v66;
    if (!v66)
    {
      goto LABEL_153;
    }

    if (!*(a1 + 302))
    {
LABEL_129:
      if (v61 == 1)
      {
        v67 = "sqlite_temp_master";
      }

      else
      {
        v67 = "sqlite_master";
      }

      v158 = *v160;
      if (sub_18195CEF8(a1, 18, v67, 0, *v160))
      {
        goto LABEL_153;
      }

      v68 = v61 == 1 ? 3 : 1;
      if (sub_18195CEF8(a1, v68, v16, *v28, v158))
      {
        goto LABEL_153;
      }

      goto LABEL_137;
    }

    ++v66[7];
    goto LABEL_128;
  }

  v16 = sub_181950DC4(v13, v33);
  if (!v16 || sub_18195CF88(a1, v16, "index", *v28))
  {
    goto LABEL_153;
  }

  if (*(a1 + 302) > 1u)
  {
    goto LABEL_137;
  }

  if (*(v13 + 197) || !sub_181917F20(v13, v16, *v160))
  {
    if (sub_1819495FC(v13, v16, *v160))
    {
      if (a10)
      {
        if (a1[19])
        {
          v62 = a1[19];
        }

        else
        {
          v62 = a1;
        }

        v63 = *(v62 + 29);
        if ((v63 & (1 << v61)) == 0)
        {
          *(v62 + 29) = v63 | (1 << v61);
          if (v61 == 1)
          {
            sub_1819108F4(v62);
          }
        }

        sub_18195D2F0(a1);
        a8 = v165;
        goto LABEL_154;
      }

      sub_181910730(a1, "index %s already exists");
      goto LABEL_234;
    }

LABEL_128:
    if (*(a1 + 302) <= 1u)
    {
      goto LABEL_129;
    }

LABEL_137:
    if (v11)
    {
      if (*v11 > *(*a1 + 144))
      {
        sub_181910730(a1, "too many columns in %s", "index");
      }

      a8 = v165;
      if (*(a1 + 13))
      {
        goto LABEL_154;
      }

      goto LABEL_151;
    }

    v175[0] = 0uLL;
    v69 = v28[1] + 16 * *(v28 + 27);
    *(v69 - 2) |= 8u;
    v70 = *(v69 - 16);
    *&v175[0] = v70;
    if (v70)
    {
      v71 = strlen(v70) & 0x3FFFFFFF;
    }

    else
    {
      v71 = 0;
    }

    DWORD2(v175[0]) = v71;
    v72 = sub_1818A8CF0(v13, 60, v175, 0);
    v73 = sub_18197FD9C(*a1, v72);
    v11 = v73;
    if (v73)
    {
      v74 = a9;
      if (a9 == -1)
      {
        v74 = 0;
      }

      LOBYTE(v73[6 * *v73]) = v74;
LABEL_151:
      v155 = v33;
      v156 = v61;
      v75 = *v11;
      if (v75 < 1)
      {
        v87 = 1;
      }

      else
      {
        v76 = 0;
        v77 = v11 + 2;
        do
        {
          if (**v77 == 114)
          {
            v86 = *(*v77 + 8);
            if (v86)
            {
              v83 = v76;
              v84 = strlen(v86);
              v76 = v83;
              v15 = a11;
              v85 = (v84 & 0x3FFFFFFF) + 1;
            }

            else
            {
              v85 = 1;
            }

            v76 += v85;
          }

          v77 += 6;
          --v75;
        }

        while (v75);
        v87 = v76 + 1;
      }

      v88 = strlen(v16) & 0x3FFFFFFF;
      if (i)
      {
        v89 = *(i + 94);
      }

      else
      {
        v89 = 1;
      }

      v90 = sub_181962494(v13, v89 + *v11, v88 + v87, &__dst);
      if (*(v13 + 103))
      {
        a8 = v165;
        v91 = v90;
LABEL_176:
        if (v91)
        {
          goto LABEL_177;
        }

        goto LABEL_154;
      }

      v97 = v90;
      v98 = __dst;
      *v97 = __dst;
      v99 = (v88 + 1);
      __dst = &v98[v99];
      memcpy(v98, v16, v99);
      *(v97 + 3) = v28;
      v97[98] = v164;
      *(v97 + 99) = v15 & 3 | (8 * (v164 != 0)) | *(v97 + 99) & 0xFFF4;
      *(v97 + 6) = *(*(v13 + 32) + 32 * v156 + 24);
      *(v97 + 47) = *v11;
      v91 = v97;
      if (v165)
      {
        sub_18195DE94(a1, v28, 2, v165, 0);
        *(v97 + 9) = v165;
      }

      v100 = *(v160[3] + 112);
      v161 = v11;
      if (*(a1 + 302) >= 2u)
      {
        v161 = 0;
        *(v91 + 10) = v11;
      }

      v159 = v91;
      if (!*(v91 + 47))
      {
        v126 = 0;
        goto LABEL_238;
      }

      v101 = (v11 + 2);
      v102 = 0;
      v157 = v100;
      while (1)
      {
        v166 = v101;
        v105 = *v101;
        v106 = **v101;
        v107 = *v101;
        if (v106 == 118 || v106 == 114 && (v107 = *(v105 + 16), *v107 == 118))
        {
          *v107 = 60;
        }

        sub_18195DE94(a1, v28, 32, v105, 0);
        if (*(a1 + 13))
        {
          a8 = 0;
          v11 = v161;
          goto LABEL_177;
        }

        v108 = v166;
        v109 = v166;
        do
        {
          v110 = *v109;
          v109 = (*v109 + 16);
        }

        while ((v110[5] & 0x20) != 0);
        if (*v110 == 168)
        {
          v111 = *(v110 + 12);
          if ((v111 & 0x80000000) != 0)
          {
            LODWORD(v111) = *(v28 + 26);
          }

          else
          {
            v112 = v28[1];
            if ((*(v112 + 16 * v111 + 8) & 0xF) == 0)
            {
              *(v91 + 99) &= ~8u;
              v112 = v28[1];
            }

            if ((*(v112 + 16 * v111 + 14) & 0x20) != 0)
            {
              *(v91 + 99) |= 0xC00u;
            }
          }

          *(*(v91 + 1) + 2 * v102) = v111;
          v113 = *v166;
          if (**v166 == 114)
          {
            goto LABEL_216;
          }

          if ((v111 & 0x80000000) == 0)
          {
            v117 = v28[1] + 16 * v111;
            v118 = *(v117 + 14);
            if ((v118 & 0x200) != 0)
            {
              v123 = *v117 - 1;
                ;
              }

              v115 = v102;
              if ((v118 & 4) != 0)
              {
                  ;
                }
              }

              v119 = (v123 + 1);
              goto LABEL_223;
            }
          }
        }

        else
        {
          if (v28 == a1[43])
          {
            sub_181910730(a1, "expressions prohibited in PRIMARY KEY and UNIQUE constraints");
            a8 = 0;
            v11 = v161;
            goto LABEL_176;
          }

          if (!*(v91 + 10))
          {
            *(v91 + 10) = v161;
            v161 = 0;
          }

          *(*(v91 + 1) + 2 * v102) = -2;
          *(v91 + 99) = *(v91 + 99) & 0xF7F7 | 0x800;
          v113 = *v166;
          if (**v166 == 114)
          {
LABEL_216:
            v114 = *(v113 + 1);
            v115 = v102;
            if (v114)
            {
              v116 = (strlen(*(v113 + 1)) & 0x3FFFFFFF) + 1;
            }

            else
            {
              v116 = 1;
            }

            v119 = __dst;
            v120 = v114;
            v121 = v116;
            memcpy(__dst, v120, v116);
            __dst = &v119[v121];
            v100 = v157;
            v108 = v166;
            goto LABEL_223;
          }
        }

        v115 = v102;
        v119 = 0;
LABEL_223:
        if (!v119)
        {
          v119 = "BINARY";
        }

        if (!*(v13 + 197))
        {
          v122 = sub_1818C86A4(a1, v119);
          v108 = v166;
          if (!v122)
          {
            a8 = 0;
            v11 = v161;
            v91 = v159;
            goto LABEL_176;
          }
        }

        *(*(v159 + 8) + 8 * v115) = v119;
        v103 = v115;
        v91 = v159;
        v104 = *(v108 + 16);
        if (v100 <= 3)
        {
          v104 = 0;
        }

        *(*(v159 + 7) + v103) = v104;
        v102 = v103 + 1;
        v101 = v108 + 3;
        if (v102 >= *(v159 + 47))
        {
          v126 = v102;
LABEL_238:
          v11 = v161;
          if (i)
          {
            v162 = v126;
            v127 = *(i + 94);
            if (*(i + 94))
            {
              v128 = 0;
              do
              {
                v167 = v127;
                if (sub_18195EA98(v159, *(v159 + 47), i, v128))
                {
                  --*(v159 + 48);
                  v127 = v167;
                }

                else
                {
                  *(*(v159 + 1) + 2 * v162) = *(*(i + 8) + 2 * v128);
                  *(*(v159 + 8) + 8 * v162) = *(*(i + 64) + 8 * v128);
                  *(*(v159 + 7) + v162++) = *(*(i + 56) + v128);
                  v127 = *(i + 94);
                }

                ++v128;
              }

              while (v128 < v127);
            }
          }

          else
          {
            *(*(v91 + 1) + 2 * v126) = -1;
            *(*(v91 + 8) + 8 * v126) = "BINARY";
          }

          v91 = v159;
          sub_1819497B4(v159);
          if (!a1[43])
          {
            sub_18195DF70(v159);
          }

          sub_18195EC48(v159);
          if (a4)
          {
            v129 = *(v159 + 48);
            if (v129 >= *(v28 + 27))
            {
              v130 = *(v159 + 99);
              *(v159 + 99) = v130 | 0x20;
              v131 = *(v28 + 27);
              if (v131 >= 1)
              {
                for (j = 0; j != v131; ++j)
                {
                  if (j != *(v28 + 26))
                  {
                    if (!v129)
                    {
LABEL_258:
                      *(v159 + 99) = v130 & 0xFFDF;
                      break;
                    }

                    v133 = *(v159 + 1);
                    v134 = v129;
                    while (1)
                    {
                      v135 = *v133++;
                      if (j == v135)
                      {
                        break;
                      }

                      if (!--v134)
                      {
                        goto LABEL_258;
                      }
                    }
                  }
                }
              }
            }
          }

          if (v28 == a1[43])
          {
            v139 = v28[2];
            if (v139)
            {
              v140 = *(v159 + 47);
              do
              {
                if (*(v139 + 94) == v140)
                {
                  if (*(v159 + 47))
                  {
                    v141 = 0;
                    while (1)
                    {
                      if (*(*(v139 + 8) + 2 * v141) != *(*(v159 + 1) + 2 * v141))
                      {
                        goto LABEL_273;
                      }

                      v142 = *(*(v139 + 64) + 8 * v141);
                      for (k = *(*(v159 + 8) + 8 * v141); *v142 != *k; ++k)
                      {
                        if (byte_181A20298[*v142] != byte_181A20298[*k])
                        {
                          goto LABEL_273;
                        }

LABEL_281:
                        ++v142;
                      }

                      if (*v142)
                      {
                        goto LABEL_281;
                      }

                      if (++v141 == v140)
                      {
LABEL_285:
                        v144 = *(v139 + 98);
                        v145 = v159[98];
                        if (v144 != v145)
                        {
                          if (v144 != 11 && v145 != 11)
                          {
                            sub_181910730(a1, "conflicting ON CONFLICT clauses specified", 0);
                            v144 = *(v139 + 98);
                          }

                          if (v144 == 11)
                          {
                            *(v139 + 98) = v159[98];
                          }
                        }

                        if (v15 == 2)
                        {
                          *(v139 + 99) = *(v139 + 99) & 0xFFFC | 2;
                        }

                        if (*(a1 + 302) >= 2u)
                        {
                          a8 = 0;
                          *(v159 + 5) = a1[44];
                          a1[44] = v159;
                          goto LABEL_154;
                        }

LABEL_295:
                        a8 = 0;
                        v91 = v159;
LABEL_177:
                        v92 = a8;
                        v93 = *(v91 + 9);
                        if (v93)
                        {
                          sub_1819439E0(v13, v93);
                        }

                        v94 = *(v91 + 10);
                        if (v94)
                        {
                          sub_18194E5B8(v13, v94);
                        }

                        v95 = *(v91 + 4);
                        if (v95)
                        {
                          sub_181929C84(v13, v95);
                        }

                        if ((*(v91 + 99) & 0x10) != 0)
                        {
                          v96 = *(v91 + 8);
                          if (v96)
                          {
                            sub_181929C84(v13, v96);
                          }
                        }

                        sub_181929C84(v13, v91);
                        a8 = v92;
                        goto LABEL_154;
                      }
                    }
                  }

                  LODWORD(v141) = 0;
LABEL_273:
                  if (v141 == v140)
                  {
                    goto LABEL_285;
                  }
                }

                v139 = *(v139 + 40);
              }

              while (v139);
            }
          }

          if (*(a1 + 302) > 1u)
          {
            goto LABEL_318;
          }

          if (*(v13 + 197))
          {
            if (a4)
            {
              v136 = *(v13 + 192);
              *(v159 + 22) = v136;
              v137 = *(*(v159 + 3) + 16);
              if (v137)
              {
                while (v137 == v159 || *(v137 + 88) != v136)
                {
                  v137 = *(v137 + 40);
                  if (!v137)
                  {
                    goto LABEL_264;
                  }
                }

                sub_181910730(a1, "invalid rootpage");
                v138 = sub_18190EDA8(135904);
                a8 = 0;
                *(a1 + 6) = v138;
                goto LABEL_176;
              }
            }

LABEL_264:
            if (sub_18188FAF0(*(v159 + 6) + 32, *v159, v159))
            {
              sub_18190BD38(v13);
              goto LABEL_295;
            }

            *(v13 + 44) |= 1u;
            goto LABEL_317;
          }

          if (a4 || (v28[6] & 0x80) == 0)
          {
            v146 = (*(a1 + 15) + 1);
            *(a1 + 15) = v146;
            v147 = sub_1818E7DFC(a1);
            if (!v147)
            {
              a8 = 0;
              v91 = v159;
              goto LABEL_176;
            }

            v148 = v147;
            sub_18195D3A8(a1, 1, v156);
            *(v159 + 22) = sub_1818A2964(v148, 187, 0, 0, 0);
            sub_1818A2964(v148, 147, v156, v146, 2);
            if (a7)
            {
              v149 = *(a1 + 72) + *(a1 + 70) - *v155;
              v150 = v149 - ((*v155)[v149 - 1] == 59);
              if (v164)
              {
                v151 = " UNIQUE";
              }

              else
              {
                v151 = &byte_181A2878D;
              }

              v152 = sub_1818A8BAC(v13, "CREATE%s INDEX %.*s", v151, v150, *v155);
            }

            else
            {
              v152 = 0;
            }

            sub_1818F73B0(a1, "INSERT INTO %Q.sqlite_master VALUES('index',%Q,%Q,#%d,%Q);", *(*(v13 + 32) + 32 * v156), *v159, *v28, v146, v152);
            if (v152)
            {
              sub_181929C84(v13, v152);
            }

            if (a4)
            {
              sub_181962568(a1, v159, v146);
              sub_18195E878(a1, v156);
              v153 = sub_1818A8BAC(v13, "name='%q' AND type='index'", *v159);
              sub_18195E8E8(v148, v156, v153, 0);
              sub_1818A2964(v148, 166, 0, 1, 0);
            }

            if (*(*v148 + 103))
            {
              v154 = &byte_1EA831A58;
            }

            else
            {
              v154 = (*(v148 + 136) + 40 * *(v159 + 22));
            }

            *(v154 + 2) = *(v148 + 144);
LABEL_317:
            v91 = v159;
LABEL_318:
            if (a4 && !*(v13 + 197))
            {
              if (*(a1 + 302) >= 2u)
              {
                a8 = 0;
                a1[44] = v91;
                goto LABEL_154;
              }

              a8 = 0;
              goto LABEL_176;
            }
          }

          a8 = 0;
          *(v91 + 5) = v28[2];
          v28[2] = v91;
          goto LABEL_154;
        }
      }
    }

LABEL_153:
    a8 = v165;
    goto LABEL_154;
  }

  sub_181910730(a1, "there is already a table named %s");
LABEL_234:
  a8 = v165;
LABEL_154:
  v80 = v28[2];
  v79 = v28 + 2;
  v78 = v80;
  if (v80)
  {
    if (*(v78 + 98) == 5)
    {
LABEL_161:
      while (1)
      {
        v82 = *(v78 + 40);
        if (!v82 || *(v82 + 98) == 5)
        {
          break;
        }

        *v79 = v82;
        v79 = (v82 + 40);
        *(v78 + 40) = *(v82 + 40);
        *(v82 + 40) = v78;
      }
    }

    else
    {
      while (1)
      {
        v81 = v78;
        v78 = *(v78 + 40);
        if (!v78)
        {
          break;
        }

        if (*(v78 + 98) == 5)
        {
          v79 = (v81 + 40);
          goto LABEL_161;
        }
      }
    }
  }

LABEL_5:
  if (a8)
  {
    sub_1819439E0(v13, a8);
  }

  if (v11)
  {
    sub_18194E5B8(v13, v11);
  }

  result = sub_1818BB5B0(v13, a4, a3, a4);
  if (v16)
  {
    return sub_181929C84(v13, v16);
  }

  return result;
}

void *sub_1818C9A34(uint64_t a1, char *__s)
{
  if (!__s)
  {
    return 0;
  }

  v4 = strlen(__s);
  v5 = v4;
  if (!a1)
  {
    v6 = sub_181902484(v4 + 1, 354097263);
    if (v6)
    {
      goto LABEL_4;
    }

    return 0;
  }

  v6 = sub_181929E8C(a1, v4 + 1, 354097263);
  if (!v6)
  {
    return 0;
  }

LABEL_4:

  return memcpy(v6, __s, v5 + 1);
}

uint64_t sub_1818C9ACC(uint64_t result, uint64_t a2, int a3)
{
  if (!a2)
  {
    return result;
  }

  v27 = a2;
  if (!a3)
  {
    v28 = a2;
    v5 = *(a2 + 56);
    if (!v5)
    {
      v3 = &v28;
      goto LABEL_4;
    }

    v6 = (((2 * *(a2 + 32)) ^ 2) + *(result + 48)) & 3;
    *(a2 + 33) = v6;
    v7 = *(result + 124);
    if (v7 >= 1)
    {
      v8 = *(v5 + 16);
      while (1)
      {
        v9 = *v8;
        v10 = !*v8 || v9 == a2;
        if (!v10 && *(v9 + 33) == v6)
        {
          break;
        }

        ++v8;
        if (!--v7)
        {
          goto LABEL_22;
        }
      }

      v11 = (v9 + 40);
      while (1)
      {
        v12 = v11;
        v11 = v11[1];
        if (!v11)
        {
          break;
        }

        if (v11[2] != v5)
        {
          *v11 = a2 + 40;
          v12[1] = a2 + 40;
          *(a2 + 40) = v12;
          *(a2 + 48) = v11;
          goto LABEL_27;
        }
      }
    }

LABEL_22:
    v13 = result + 16 * v6;
    v16 = *(v13 + 56);
    v14 = (v13 + 56);
    v15 = v16;
    v17 = (a2 + 40);
    if (v16)
    {
      *(v15 + 8) = v17;
      *v17 = v15;
    }

    else
    {
      v14[1] = v17;
    }

    *v14 = v17;
LABEL_27:
    ++*(result + 24);
    v18 = *(v5 + 33) - 1;
    *(v5 + 33) = v18;
    ++*(v5 + 34);
    if (v18)
    {
      goto LABEL_5;
    }

    v19 = *(v5 + 32);
    if (v19 == 2)
    {
      v22 = result;
      v23 = (result + 136);
    }

    else
    {
      if (v19 != 1)
      {
        if (!*(v5 + 32))
        {
          v20 = *v5;
          if (*v5 || *(result + 176) == v5)
          {
            v21 = *(v5 + 8);
            if (v21)
            {
              *v21 = v20;
              v20 = *v5;
            }

            if (v20)
            {
              *(v20 + 8) = v21;
            }

            if (*(result + 168) == v5)
            {
              *(result + 168) = v20;
            }

            if (*(result + 176) == v5)
            {
              *(result + 176) = *(v5 + 8);
            }

            *v5 = 0;
            *(v5 + 8) = 0;
          }
        }

        goto LABEL_44;
      }

      v22 = result;
      v23 = (result + 152);
    }

    sub_1819A900C(v23, v5);
    result = v22;
LABEL_44:
    v24 = (result + 136);
    if (*(v5 + 33) + *(v5 + 34) >= *(result + 124))
    {
      v26 = *(result + 144);
      if (v26)
      {
        *v26 = v5;
        *(v5 + 8) = v26;
      }

      else
      {
        *v24 = v5;
      }

      v24 = (result + 144);
    }

    else
    {
      v25 = *v24;
      if (*v24)
      {
        *(v25 + 8) = v5;
        *v5 = v25;
      }

      else
      {
        *(result + 144) = v5;
      }
    }

    *v24 = v5;
    *(v5 + 32) = 2;
    goto LABEL_5;
  }

  v3 = &v27;
LABEL_4:
  v4 = result;
  sub_1819A8D0C(result, v3);
  result = v4;
LABEL_5:

  return sub_1819A811C(result);
}

void *sub_1818C9D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, int *a6, uint64_t a7, unsigned __int8 *a8, int a9, int a10)
{
  v14 = *a1;
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v15 = *(a3 + 8);
  if (a9)
  {
    if (v15)
    {
      sub_181910730(a1, "temporary trigger may not have qualified name");
      goto LABEL_50;
    }

    if (!a7)
    {
      goto LABEL_50;
    }

    v16 = 1;
  }

  else
  {
    if (v15)
    {
      if (*(v14 + 197))
      {
        sub_181910730(a1, "corrupt database");
        goto LABEL_50;
      }

      v18 = a2;
      v19 = a5;
      v20 = a4;
      v21 = a3;
      v22 = sub_18195D514(v14, a2);
      a3 = v21;
      a4 = v20;
      a5 = v19;
      v16 = v22;
      v17 = v21;
      if (v16 < 0)
      {
        sub_181910730(a1, "unknown database %T", v18);
        goto LABEL_50;
      }
    }

    else
    {
      v16 = *(v14 + 196);
      v17 = a2;
    }

    a2 = v17;
    if (!a7)
    {
      goto LABEL_50;
    }
  }

  if (*(v14 + 103))
  {
    goto LABEL_50;
  }

  v92 = a2;
  if (v16 != 1 && *(v14 + 197))
  {
    v23 = *(a7 + 72);
    if (v23)
    {
      v24 = a5;
      v25 = v16;
      v26 = a4;
      v27 = a3;
      sub_181929C84(v14, v23);
      a3 = v27;
      LODWORD(a4) = v26;
      v16 = v25;
      a5 = v24;
    }

    *(a7 + 72) = 0;
  }

  v90 = v16;
  if (*(a7 + 35))
  {
    v32 = *(a7 + 72);
    v33 = *(*a1 + 32);
    if (v32)
    {
      v34 = (v33 + 24);
      v35 = 0xFFFFFFFF00000000;
      do
      {
        v36 = *v34;
        v34 += 4;
        v35 += 0x100000000;
      }

      while (v36 != v32);
      v37 = v35 >> 32;
    }

    else
    {
      v37 = -32768;
    }

    v28 = a3;
    v29 = a4;
    v30 = a5;
    v31 = (v33 + 32 * v37);
  }

  else
  {
    v28 = a3;
    v29 = a4;
    v30 = a5;
    v31 = (a7 + 72);
  }

  v38 = sub_1818CA520(a1, 0, *(a7 + 8), *v31);
  v39 = *(a7 + 24);
  if (v39)
  {
    v40 = *a1;
    if (*(*a1 + 824) || (v41 = *(v39 + 44) - 1, (*(v39 + 44) = v41) == 0))
    {
      sub_18194E094(v40, v39, a3, a4);
    }
  }

  *(a7 + 24) = v38;
  *(a7 + 33) |= 0x400u;
  v42 = v29;
  v43 = v92;
  if (!v38)
  {
    v44 = v28;
    v45 = v90;
    goto LABEL_44;
  }

  ++*(v38 + 44);
  v44 = v28;
  if ((*(a7 + 33) & 2) != 0)
  {
    v46 = *(v38 + 16);
    v45 = v90;
    if (!v46)
    {
      goto LABEL_43;
    }

    while (1)
    {
      v47 = *v46;
      for (i = *(a7 + 48); *v47 == *i; ++i)
      {
        if (!*v47)
        {
          *(a7 + 56) = v46;
          goto LABEL_44;
        }

LABEL_38:
        ++v47;
      }

      if (byte_181A20298[*v47] == byte_181A20298[*i])
      {
        goto LABEL_38;
      }

      v46 = *(v46 + 40);
      if (!v46)
      {
LABEL_43:
        v49 = v44;
        sub_181910730(a1, "no such index: %s", *(a7 + 48));
        v44 = v49;
        v43 = v92;
        v42 = v29;
        v45 = v90;
        v38 = 0;
        *(a1 + 43) |= 8u;
        goto LABEL_44;
      }
    }
  }

  v45 = v90;
LABEL_44:
  if (!*(v14 + 197) && !*(v44 + 8) && v38 && *(v38 + 96) == *(*(v14 + 32) + 56))
  {
    v45 = 1;
  }

  if (*(v14 + 103))
  {
    goto LABEL_50;
  }

  v57 = (*(*a1 + 32) + 32 * v45);
  v58 = *v57;
  *(&v97 + 1) = v57[3];
  *(&v98 + 1) = v58;
  *&v99 = "trigger";
  *(&v99 + 1) = v43;
  LOBYTE(v98) = v45 == 1;
  *&v94 = a1;
  *(&v94 + 1) = a1;
  *&v95 = sub_181962F5C;
  *(&v95 + 1) = sub_181962FE0;
  *&v96 = nullsub_8;
  DWORD2(v96) = 0;
  WORD6(v96) = 0;
  *&v97 = &v94;
  if (a7)
  {
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v101 = 0;
    v103 = 0u;
    memset(v100, 0, sizeof(v100));
    v102 = a7;
    v59 = v42;
    v60 = sub_1818AEE70(&v94 + 1, v100);
    v42 = v59;
    if (v60)
    {
      goto LABEL_50;
    }
  }

  v61 = v42;
  v62 = v30;
  v63 = sub_18196231C(a1, a7);
  if (!v63)
  {
    goto LABEL_70;
  }

  if (*(v63 + 63) == 1)
  {
    sub_181910730(a1, "cannot create triggers on virtual tables");
LABEL_70:
    v64 = 0;
    goto LABEL_71;
  }

  v91 = v63;
  if ((*(v63 + 49) & 0x10) != 0 && sub_18195D6B0(v14))
  {
    sub_181910730(a1, "cannot create triggers on shadow tables");
    goto LABEL_70;
  }

  v65 = sub_181950DC4(v14, v92);
  if (!v65)
  {
    goto LABEL_50;
  }

  v89 = v65;
  if (sub_18195CF88(a1, v65, "trigger", *v91))
  {
    goto LABEL_77;
  }

  if (*(a1 + 302) <= 1u && sub_1819493D0((*(*(v14 + 32) + 32 * v45 + 24) + 56), v89))
  {
    if (a10)
    {
      if (*(a1 + 152))
      {
        v66 = *(a1 + 152);
      }

      else
      {
        v66 = a1;
      }

      v67 = *(v66 + 116);
      if ((v67 & (1 << v45)) == 0)
      {
        *(v66 + 116) = v67 | (1 << v45);
        if (v45 == 1)
        {
          sub_1819108F4(v66);
        }
      }
    }

    else
    {
      sub_181910730(a1, "trigger %T already exists", v92);
    }

    goto LABEL_77;
  }

  if (!sqlite3_strnicmp(*v91, "sqlite_", 7))
  {
    sub_181910730(a1, "cannot create trigger on system table", v88);
LABEL_77:
    v64 = v89;
LABEL_74:
    sub_181929C84(v14, v64);
    goto LABEL_50;
  }

  v68 = v45;
  v69 = (a7 + 8);
  v70 = *(v91 + 63);
  if (v61 == 66 || v70 != 2)
  {
    if (v61 == 66 && v70 != 2)
    {
      sub_181910730(a1, "cannot create INSTEAD OF trigger on table: %S");
      goto LABEL_95;
    }

    if (*(a1 + 302) > 1u)
    {
      goto LABEL_98;
    }

    v78 = *(v91 + 96);
    v79 = *(v14 + 32);
    if (v78)
    {
      v80 = (v79 + 24);
      v81 = -1;
      do
      {
        v82 = *v80;
        v80 += 4;
        ++v81;
      }

      while (v82 != v78);
    }

    else
    {
      v81 = -32768;
    }

    v83 = *(v79 + 32 * v81);
    v93 = v83;
    if (a9)
    {
      v83 = *(v79 + 32);
    }

    if (v81 != 1 && a9 == 0)
    {
      v85 = 7;
    }

    else
    {
      v85 = 5;
    }

    if (sub_18195CEF8(a1, v85, v89, *v91, v83))
    {
      goto LABEL_128;
    }

    v86 = v81 == 1 ? "sqlite_temp_master" : "sqlite_master";
    if (sub_18195CEF8(a1, 18, v86, 0, v93))
    {
      goto LABEL_128;
    }

    if (v14)
    {
LABEL_98:
      v56 = sub_181929E8C(v14, 0x48uLL, 0x1030040EE43544ELL);
      if (v56)
      {
        goto LABEL_99;
      }
    }

    else
    {
      v56 = sub_181902484(72, 0x1030040EE43544ELL);
      if (v56)
      {
LABEL_99:
        *(v56 + 64) = 0;
        *(v56 + 32) = 0u;
        *(v56 + 48) = 0u;
        *v56 = 0u;
        *(v56 + 16) = 0u;
        *v56 = v89;
        v71 = sub_1818C9A34(v14, *v69);
        v74 = v61 == 33 || v61 == 66;
        *(v56 + 8) = v71;
        v75 = *(v91 + 96);
        *(v56 + 40) = *(*(v14 + 32) + 32 * v68 + 24);
        *(v56 + 48) = v75;
        *(v56 + 16) = v62;
        if (v74)
        {
          v76 = 1;
        }

        else
        {
          v76 = 2;
        }

        *(v56 + 17) = v76;
        if (*(a1 + 302) < 2u)
        {
          if (a8)
          {
            v87 = sub_1818C7FEC(v14, a8, 1, 0);
          }

          else
          {
            v87 = 0;
          }
        }

        else
        {
          v77 = *(a1 + 408);
          if (v77)
          {
            while (*v77 != *v69)
            {
              v77 = v77[3];
              if (!v77)
              {
                goto LABEL_136;
              }
            }

            *v77 = v71;
          }

LABEL_136:
          v87 = a8;
          a8 = 0;
        }

        *(v56 + 24) = v87;
        *(v56 + 32) = a6;
        *(a1 + 360) = v56;
        result = sub_1818BB5B0(v14, a7, v72, v73);
        if (a8)
        {
          goto LABEL_58;
        }

        goto LABEL_59;
      }
    }

LABEL_128:
    v64 = v89;
    goto LABEL_74;
  }

  sub_181910730(a1, "cannot create %s trigger on view: %S");
LABEL_95:
  v64 = v89;
LABEL_71:
  if (*(v14 + 196) == 1)
  {
    *(v14 + 198) |= 1u;
  }

  if (v64)
  {
    goto LABEL_74;
  }

LABEL_50:
  result = sub_1818BB5B0(v14, a7, a3, a4);
  if (a6)
  {
    v53 = *a6;
    if (*a6 >= 1)
    {
      v54 = 0;
      do
      {
        v55 = *&a6[2 * v54 + 2];
        if (v55)
        {
          sub_181929C84(v14, v55);
          v53 = *a6;
        }

        ++v54;
      }

      while (v54 < v53);
    }

    result = sub_181939EC8(v14, a6);
  }

  v56 = 0;
  if (a8)
  {
LABEL_58:
    result = sub_1819439E0(v14, a8);
  }

LABEL_59:
  if (!*(a1 + 360))
  {
    return sub_1818A313C(v14, v56, v51, v52);
  }

  return result;
}

uint64_t sub_1818CA520(char **a1, char a2, char *a3, _BYTE *a4)
{
  v8 = *a1;
  v9 = *(*a1 + 11);
  if ((v9 & 0x10) != 0 || *(v8 + 197))
  {
    goto LABEL_3;
  }

  v11 = *(*(v8 + 32) + 24);
  *(v8 + 100) = *(v11 + 113);
  if ((*(v11 + 114) & 1) == 0)
  {
    v12 = sub_18189F330(v8, 0, a1 + 1, 0);
    if (v12)
    {
LABEL_20:
      v15 = v12;
      result = 0;
      *(a1 + 6) = v15;
      ++*(a1 + 13);
      return result;
    }
  }

  v13 = *(v8 + 40);
  if (v13 >= 2)
  {
    v14 = 32 * v13 - 8;
    do
    {
      if ((*(*(*(v8 + 32) + v14) + 114) & 1) == 0)
      {
        v12 = sub_18189F330(v8, (v13 - 1), a1 + 1, 0);
        if (v12)
        {
          goto LABEL_20;
        }
      }

      --v13;
      v14 -= 32;
    }

    while ((v13 + 1) > 2);
  }

  if ((v9 & 1) == 0)
  {
    *(v8 + 44) &= ~1u;
  }

  if (*(v8 + 111))
  {
    *(v8 + 44) |= 0x10u;
  }

LABEL_3:
  result = sub_181917F20(v8, a3, a4);
  if (result)
  {
    if (*(result + 63) != 1 || (*(a1 + 36) & 4) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

  if ((*(a1 + 36) & 4) != 0 || *(v8 + 197))
  {
LABEL_9:
    if ((a2 & 2) != 0)
    {
      return 0;
    }

    *(a1 + 43) |= 8u;
LABEL_11:
    if (a4)
    {
      sub_181910730(a1, "%s: %s.%s");
    }

    else
    {
      sub_181910730(a1, "%s: %s");
    }

    return 0;
  }

  v16 = *a3;
  if (*a3)
  {
    v17 = 0;
    v18 = a3 + 1;
    do
    {
      v17 = -1640531535 * (v17 + (v16 & 0xDF));
      v19 = *v18++;
      v16 = v19;
    }

    while (v19);
  }

  else
  {
    v17 = 0;
  }

  v20 = (v8 + 568);
  v21 = *(v8 + 584);
  if (!v21)
  {
    v22 = *(v8 + 572);
    if (v22)
    {
      goto LABEL_35;
    }

LABEL_45:
    v23 = &qword_1EA831A30;
LABEL_46:
    v26 = v23[2];
    if (v26)
    {
      goto LABEL_47;
    }

    goto LABEL_58;
  }

  v20 = (v21 + 16 * (v17 % *v20));
  v22 = *v20;
  if (!*v20)
  {
    goto LABEL_45;
  }

LABEL_35:
  v23 = (v20 + 2);
  do
  {
    v23 = *v23;
    if (v17 == *(v23 + 8))
    {
      v24 = v23[3];
      for (i = a3; ; ++i)
      {
        if (*v24 == *i)
        {
          if (!*v24)
          {
            goto LABEL_46;
          }
        }

        else if (byte_181A20298[*v24] != byte_181A20298[*i])
        {
          break;
        }

        ++v24;
      }
    }

    --v22;
  }

  while (v22);
  v26 = qword_1EA831A40;
  if (qword_1EA831A40)
  {
    goto LABEL_47;
  }

LABEL_58:
  v35 = *a3;
  if (!*a3)
  {
    v36 = "pragma_";
    goto LABEL_147;
  }

  if ((v35 & 0xFFFFFFDF) != 0x50)
  {
    v35 += byte_181A20298;
    v36 = "pragma_";
    goto LABEL_146;
  }

  v35 = a3[1];
  if (!a3[1])
  {
    v36 = "ragma_";
    goto LABEL_147;
  }

  if ((v35 & 0xFFFFFFDF) != 0x52)
  {
    v35 += byte_181A20298;
    v36 = "ragma_";
    goto LABEL_146;
  }

  v35 = a3[2];
  if (!a3[2])
  {
    v36 = "agma_";
    goto LABEL_147;
  }

  if ((v35 & 0xFFFFFFDF) != 0x41)
  {
    v35 += byte_181A20298;
    v36 = "agma_";
    goto LABEL_146;
  }

  v35 = a3[3];
  if (!a3[3])
  {
    v36 = "gma_";
    goto LABEL_147;
  }

  if ((v35 & 0xFFFFFFDF) != 0x47)
  {
    v35 += byte_181A20298;
    v36 = "gma_";
    goto LABEL_146;
  }

  v35 = a3[4];
  if (!a3[4])
  {
    v36 = "ma_";
    goto LABEL_147;
  }

  if ((v35 & 0xFFFFFFDF) != 0x4D)
  {
    v35 += byte_181A20298;
    v36 = "ma_";
    goto LABEL_146;
  }

  v35 = a3[5];
  if (!a3[5])
  {
    v36 = "a_";
    goto LABEL_147;
  }

  if ((v35 & 0xFFFFFFDF) != 0x41)
  {
    v35 += byte_181A20298;
    v36 = "a_";
    goto LABEL_146;
  }

  v35 = a3[6];
  if (!a3[6])
  {
    v36 = "_";
LABEL_147:
    if (v35 != byte_181A20298[*v36])
    {
      goto LABEL_9;
    }

    goto LABEL_148;
  }

  if (v35 != 95)
  {
    v35 += byte_181A20298;
    v36 = "_";
LABEL_146:
    LODWORD(v35) = *v35;
    goto LABEL_147;
  }

LABEL_148:
  v26 = sub_18194D168(v8, a3);
  if (!v26)
  {
    goto LABEL_9;
  }

LABEL_47:
  v27 = *v26;
  v71 = 0;
  result = *(v26 + 40);
  if (result)
  {
    return result;
  }

  v28 = *a1;
  v29 = *(v27 + 8);
  if (v29 && v29 != *(v27 + 16))
  {
    goto LABEL_9;
  }

  v30 = v28 ? sub_181929E8C(*a1, 0x78uLL, 0x10B2040A26A9E65) : sub_181902484(120, 0x10B2040A26A9E65);
  v31 = v30;
  if (!v30)
  {
    goto LABEL_9;
  }

  v70 = v28;
  v30[14] = 0;
  *(v30 + 5) = 0u;
  *(v30 + 6) = 0u;
  *(v30 + 3) = 0u;
  *(v30 + 4) = 0u;
  *(v30 + 1) = 0u;
  *(v30 + 2) = 0u;
  *v30 = 0u;
  v32 = *(v26 + 8);
  if (!v32 || ((v33 = strlen(*(v26 + 8)), !v28) ? (v34 = sub_181902484(v33 + 1, 354097263)) : (v34 = sub_181929E8C(v28, v33 + 1, 354097263)), (v37 = v34) == 0))
  {
    *v31 = 0;
    sub_181929C84(v70, v31);
    goto LABEL_9;
  }

  memcpy(v34, v32, v33 + 1);
  *v31 = v37;
  *(v26 + 40) = v31;
  *(v31 + 63) = 1;
  v31[12] = *(*(v70 + 4) + 24);
  *(v31 + 26) = -1;
  v38 = *(v31 + 12) | 0x8000;
  *(v31 + 11) = 1;
  *(v31 + 12) = v38;
  v39 = strlen(v37);
  v40 = sub_181929E8C(v70, v39 + 1, 354097263);
  v41 = v40;
  if (v40)
  {
    memcpy(v40, v37, v39 + 1);
  }

  v42 = *a1;
  v43 = *(v31 + 16);
  v44 = 8 * v43 + 16;
  if (v43 + 3 >= *(*a1 + 36))
  {
    sub_181910730(a1, "too many columns on %s", *v31);
  }

  v45 = v31[9];
  if (v45)
  {
    if (*(v42 + 64) > v45)
    {
      if (*(v42 + 62) <= v45)
      {
        if (v44 < 0x81)
        {
          goto LABEL_96;
        }
      }

      else if (*(v42 + 63) <= v45 && v44 <= *(v42 + 219))
      {
        goto LABEL_96;
      }
    }

    v46 = sub_181929F38(v42, v45, v44, 528201247);
  }

  else
  {
    v46 = sub_181929E8C(v42, v44, 528201247);
  }

  v45 = v46;
  if (!v46)
  {
    if (v41)
    {
      sub_181929C84(v42, v41);
    }

    goto LABEL_99;
  }

LABEL_96:
  v47 = *(v31 + 16);
  *(v31 + 16) = v47 + 1;
  *&v45[8 * v47] = v41;
  *&v45[8 * v47 + 8] = 0;
  v31[9] = v45;
LABEL_99:
  v48 = *a1;
  v49 = *(v31 + 16);
  v50 = 8 * v49 + 16;
  if (v49 + 3 >= *(*a1 + 36))
  {
    sub_181910730(a1, "too many columns on %s", *v31);
  }

  v51 = v31[9];
  if (!v51)
  {
    v52 = sub_181929E8C(v48, v50, 528201247);
    goto LABEL_110;
  }

  if (*(v48 + 64) <= v51)
  {
    goto LABEL_109;
  }

  if (*(v48 + 62) > v51)
  {
    if (*(v48 + 63) <= v51 && v50 <= *(v48 + 219))
    {
      goto LABEL_111;
    }

    goto LABEL_109;
  }

  if (v50 >= 0x81)
  {
LABEL_109:
    v52 = sub_181929F38(v48, v51, v50, 528201247);
LABEL_110:
    v51 = v52;
    if (!v52)
    {
      goto LABEL_112;
    }
  }

LABEL_111:
  v53 = *(v31 + 16);
  *(v31 + 16) = v53 + 1;
  v54 = &v51[8 * v53];
  *v54 = 0;
  *(v54 + 1) = 0;
  v31[9] = v51;
LABEL_112:
  v55 = *v31;
  if (*v31)
  {
    v56 = strlen(*v31);
    v57 = sub_181929E8C(v70, v56 + 1, 354097263);
    v58 = v57;
    if (v57)
    {
      memcpy(v57, v55, v56 + 1);
    }
  }

  else
  {
    v58 = 0;
  }

  v59 = *a1;
  v60 = *(v31 + 16);
  v61 = 8 * v60 + 16;
  if (v60 + 3 >= *(*a1 + 36))
  {
    sub_181910730(a1, "too many columns on %s", *v31);
  }

  v62 = v31[9];
  if (v62)
  {
    if (*(v59 + 64) > v62)
    {
      if (*(v59 + 62) <= v62)
      {
        if (v61 < 0x81)
        {
LABEL_128:
          v64 = *(v31 + 16);
          *(v31 + 16) = v64 + 1;
          *&v62[8 * v64] = v58;
          *&v62[8 * v64 + 8] = 0;
          v31[9] = v62;
          goto LABEL_131;
        }
      }

      else if (*(v59 + 63) <= v62 && v61 <= *(v59 + 219))
      {
        goto LABEL_128;
      }
    }

    v63 = sub_181929F38(v59, v62, v61, 528201247);
  }

  else
  {
    v63 = sub_181929E8C(v59, v61, 528201247);
  }

  v62 = v63;
  if (v63)
  {
    goto LABEL_128;
  }

  if (v58)
  {
    sub_181929C84(v59, v58);
  }

LABEL_131:
  if (!sub_18194B478(v70, v31, v26, *(v27 + 16), &v71))
  {
    return *(v26 + 40);
  }

  v65 = v71;
  sub_181910730(a1, "%s", v71);
  if (v65)
  {
    sub_181929C84(v70, v65);
  }

  v68 = *(v26 + 40);
  if (!v68)
  {
    return 0;
  }

  *(v68 + 48) |= 0x4000u;
  if (*(v70 + 103) || (v69 = *(v68 + 44) - 1, (*(v68 + 44) = v69) == 0))
  {
    sub_18194E094(v70, v68, v66, v67);
  }

  result = 0;
  *(v26 + 40) = 0;
  return result;
}

void *sub_1818CAE18(void *a1, char a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5)
{
  if (*(a1 + 13))
  {
    return 0;
  }

  v10 = a5;
  v12 = *a1;
  v13 = *(a3 + 8);
  if (*a1)
  {
    v5 = sub_181929E8C(*a1, v13 + 97, 0x1030040FE2BAAC3);
    if (!v5)
    {
      return v5;
    }
  }

  else
  {
    v5 = sub_181902484(v13 + 97, 0x1030040FE2BAAC3);
    if (!v5)
    {
      return v5;
    }
  }

  bzero(v5, v13 + 97);
  v14 = v5 + 12;
  memcpy(v5 + 12, *a3, *(a3 + 8));
  v15 = *(v5 + 96);
  if (byte_181A204C8[*(v5 + 96)] < 0)
  {
    v16 = 0;
    if (v15 == 91)
    {
      v15 = 93;
    }

    for (i = 1; ; ++i)
    {
      v18 = i;
      v19 = *(v14 + i);
      if (v19 == v15)
      {
        ++i;
        LOBYTE(v19) = v15;
        if (*(v14 + v18 + 1) != v15)
        {
          break;
        }
      }

      *(v14 + v16++) = v19;
    }

    *(v14 + v16) = 0;
  }

  v5[3] = v14;
  *v5 = a2;
  v5[9] = sub_181989258(v12, a4, v10);
  v20 = *(a1 + 302);
  if (v20 >= 2 && v20 != 3)
  {
    v21 = v5[3];
    if (*a1)
    {
      v22 = sub_181929E8C(*a1, 0x20uLL, 0x10F00409A20EBA4);
      if (!v22)
      {
        return v5;
      }
    }

    else
    {
      v22 = sub_181902484(32, 0x10F00409A20EBA4);
      if (!v22)
      {
        return v5;
      }
    }

    *v22 = 0u;
    *(v22 + 16) = 0u;
    *v22 = v21;
    *(v22 + 8) = *a3;
    *(v22 + 24) = a1[51];
    a1[51] = v22;
  }

  return v5;
}

uint64_t sub_1818CAFD4(uint64_t a1, _DWORD *a2, _DWORD *a3, int a4)
{
  v8 = *a1;
  v9 = sub_1818A8CF0(*a1, 172, a3, 1);
  v10 = v9;
  if (v9)
  {
    *(v9 + 14) = *a3 - *(a1 + 336);
    if (a2 && *a2 > *(*a1 + 160) && !*(a1 + 30))
    {
      sub_181910730(a1, "too many arguments on function %T", a3);
    }

    *(v10 + 32) = a2;
    *(v10 + 4) |= 8u;
    sub_181952030(a1, v10);
    if (a4 == 1)
    {
      *(v10 + 4) |= 4u;
    }
  }

  else if (a2)
  {
    sub_18194E5B8(v8, a2);
  }

  return v10;
}

void *sub_1818CB0C0(void *result, _DWORD *a2)
{
  for (; result; result = result[10])
  {
    v2 = result[6];
    if (v2)
    {
      v3 = *(v2 + 40);
      if (v3 > *a2)
      {
        *a2 = v3;
      }
    }

    v4 = result[8];
    if (v4)
    {
      v5 = *(v4 + 40);
      if (v5 > *a2)
      {
        *a2 = v5;
      }
    }

    v6 = result[12];
    if (v6)
    {
      v7 = *(v6 + 40);
      if (v7 > *a2)
      {
        *a2 = v7;
      }
    }

    v8 = result[4];
    if (v8)
    {
      v9 = *v8;
      if (*v8 >= 1)
      {
        v10 = 0;
        v11 = 2;
        do
        {
          v12 = *&v8[v11];
          if (v12)
          {
            v13 = *(v12 + 40);
            if (v13 > *a2)
            {
              *a2 = v13;
              v9 = *v8;
            }
          }

          ++v10;
          v11 += 6;
        }

        while (v10 < v9);
      }
    }

    v14 = result[7];
    if (v14)
    {
      v15 = *v14;
      if (*v14 >= 1)
      {
        v16 = 0;
        v17 = 2;
        do
        {
          v18 = *&v14[v17];
          if (v18)
          {
            v19 = *(v18 + 40);
            if (v19 > *a2)
            {
              *a2 = v19;
              v15 = *v14;
            }
          }

          ++v16;
          v17 += 6;
        }

        while (v16 < v15);
      }
    }

    v20 = result[9];
    if (v20)
    {
      v21 = *v20;
      if (*v20 >= 1)
      {
        v22 = 0;
        v23 = 2;
        do
        {
          v24 = *&v20[v23];
          if (v24)
          {
            v25 = *(v24 + 40);
            if (v25 > *a2)
            {
              *a2 = v25;
              v21 = *v20;
            }
          }

          ++v22;
          v23 += 6;
        }

        while (v22 < v21);
      }
    }
  }

  return result;
}

uint64_t sub_1818CB220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = 0;
  if (a2)
  {
    v4 = a2;
    v6 = 0;
    v7 = &v23;
    do
    {
      v8 = sub_181929E8C(a1, 0x80uLL, 0x102004058EEC421);
      if (!v8)
      {
        break;
      }

      v9 = v8;
      v8[4] = sub_1818C83A0(a1, *(v4 + 32), a3);
      v9[5] = sub_1818CB478(a1, *(v4 + 40), a3);
      v10 = *(v4 + 48);
      if (v10)
      {
        v11 = sub_1818C7FEC(a1, v10, a3, 0);
      }

      else
      {
        v11 = 0;
      }

      v9[6] = v11;
      v9[7] = sub_1818C83A0(a1, *(v4 + 56), a3);
      v12 = *(v4 + 64);
      if (v12)
      {
        v13 = sub_1818C7FEC(a1, v12, a3, 0);
      }

      else
      {
        v13 = 0;
      }

      v9[8] = v13;
      v9[9] = sub_1818C83A0(a1, *(v4 + 72), a3);
      *v9 = *v4;
      v9[11] = v6;
      v9[10] = 0;
      v14 = *(v4 + 96);
      if (v14)
      {
        v15 = sub_1818C7FEC(a1, v14, a3, 0);
      }

      else
      {
        v15 = 0;
      }

      v9[12] = v15;
      v9[1] = 0;
      *(v9 + 1) = *(v4 + 4) & 0xFFFFFFDF;
      *(v9 + 20) = -1;
      *(v9 + 1) = *(v4 + 2);
      v9[13] = sub_18195C5D4(a1, *(v4 + 104));
      v9[14] = 0;
      v17 = *(v4 + 120);
      v24[0] = 0;
      if (v17)
      {
        v18 = v24;
        do
        {
          v19 = sub_18195C750(a1, 0, v17);
          *v18 = v19;
          if (!v19)
          {
            break;
          }

          v18 = (v19 + 64);
          v17 = *(v17 + 64);
        }

        while (v17);
        v20 = v24[0];
      }

      else
      {
        v20 = 0;
      }

      v9[15] = v20;
      v21 = *(a1 + 103);
      if (*(v4 + 112))
      {
        if (*(a1 + 103))
        {
          *(v9 + 4) = *(v4 + 16);
LABEL_26:
          v9[11] = 0;
          sub_1818BB408(a1, v9, 1, v16);
          return v23;
        }

        v24[0] = 0;
        v24[1] = sub_18195CA24;
        v24[3] = 0;
        v24[4] = 0;
        v24[2] = sub_18195CA60;
        v24[5] = v9;
        sub_1818AEE70(v24, v9);
        v21 = *(a1 + 103);
      }

      *(v9 + 4) = *(v4 + 16);
      if (v21)
      {
        goto LABEL_26;
      }

      *v7 = v9;
      v4 = *(v4 + 80);
      v6 = v9;
      v7 = v9 + 10;
    }

    while (v4);
  }

  return v23;
}

int *sub_1818CB478(void *a1, int *a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  result = sub_181929E8C(a1, 72 * *a2 + 8, 0x103204056E3F560);
  if (result)
  {
    v7 = *a2;
    *result = *a2;
    result[1] = v7;
    if (*a2 >= 1)
    {
      v8 = 0;
      v43 = result;
      v45 = a2 + 2;
      v46 = result + 2;
      v47 = a2;
      v44 = a3;
      while (1)
      {
        v10 = &v46[18 * v8];
        v11 = &v45[18 * v8];
        v10[6] = v11[6];
        if ((*(v11 + 25) & 4) != 0)
        {
          if (a1)
          {
            v15 = sub_181929E8C(a1, 0x18uLL, 0x10200405AF6BDC9);
            if (!v15)
            {
              goto LABEL_20;
            }
          }

          else
          {
            v15 = sub_181902484(24, 0x10200405AF6BDC9);
            if (!v15)
            {
LABEL_20:
              v15 = 0;
              *(v10 + 25) &= ~4u;
              goto LABEL_24;
            }
          }

          v16 = *(v11 + 8);
          v17 = *(v16 + 16);
          *v15 = *v16;
          v15[2] = v17;
          v18 = sub_1818CB220(a1, *v15, a3);
          *v15 = v18;
          if (v18)
          {
            goto LABEL_24;
          }

          sub_181929C84(a1, v15);
          goto LABEL_20;
        }

        v12 = *(v11 + 8);
        if (*(v11 + 27))
        {
          v15 = *(v11 + 8);
          goto LABEL_24;
        }

        if (!v12)
        {
          v15 = 0;
          goto LABEL_24;
        }

        v13 = strlen(*(v11 + 8));
        v14 = v13;
        if (!a1)
        {
          break;
        }

        v15 = sub_181929E8C(a1, v13 + 1, 354097263);
        if (v15)
        {
          goto LABEL_23;
        }

LABEL_24:
        *(v10 + 8) = v15;
        v19 = *v11;
        if (!*v11)
        {
          v22 = 0;
          goto LABEL_31;
        }

        v20 = strlen(*v11);
        v21 = v20;
        if (!a1)
        {
          v22 = sub_181902484(v20 + 1, 354097263);
          if (!v22)
          {
            goto LABEL_31;
          }

LABEL_30:
          memcpy(v22, v19, v21 + 1);
          goto LABEL_31;
        }

        v22 = sub_181929E8C(a1, v20 + 1, 354097263);
        if (v22)
        {
          goto LABEL_30;
        }

LABEL_31:
        *v10 = v22;
        v23 = *(v11 + 1);
        if (!v23)
        {
          v26 = 0;
          goto LABEL_38;
        }

        v24 = strlen(*(v11 + 1));
        v25 = v24;
        if (!a1)
        {
          v26 = sub_181902484(v24 + 1, 354097263);
          if (!v26)
          {
            goto LABEL_38;
          }

LABEL_37:
          memcpy(v26, v23, v25 + 1);
          goto LABEL_38;
        }

        v26 = sub_181929E8C(a1, v24 + 1, 354097263);
        if (v26)
        {
          goto LABEL_37;
        }

LABEL_38:
        *(v10 + 1) = v26;
        v10[7] = v11[7];
        v27 = *(v10 + 25);
        if ((v27 & 2) == 0)
        {
          if ((v27 & 8) != 0)
          {
            *(v10 + 5) = sub_1818C83A0(a1, *(v11 + 5), a3);
          }

          else
          {
            v10[10] = v11[10];
          }

          goto LABEL_48;
        }

        v28 = *(v11 + 5);
        if (!v28)
        {
          *(v10 + 5) = 0;
          goto LABEL_48;
        }

        v29 = strlen(*(v11 + 5));
        v30 = v29;
        if (!a1)
        {
          v31 = sub_181902484(v29 + 1, 354097263);
          if (!v31)
          {
            goto LABEL_45;
          }

LABEL_44:
          memcpy(v31, v28, v30 + 1);
          goto LABEL_45;
        }

        v31 = sub_181929E8C(a1, v29 + 1, 354097263);
        if (v31)
        {
          goto LABEL_44;
        }

LABEL_45:
        *(v10 + 5) = v31;
LABEL_48:
        v32 = *(v11 + 6);
        *(v10 + 6) = v32;
        if ((*(v10 + 25) & 0x200) != 0)
        {
          ++*v32;
        }

        v33 = *(v11 + 2);
        *(v10 + 2) = v33;
        if (v33)
        {
          ++*(v33 + 44);
        }

        v34 = *(v11 + 7);
        if ((*(v11 + 25) & 0x800) == 0)
        {
          if (v34)
          {
            v9 = sub_1818C7FEC(a1, *(v11 + 7), a3, 0);
            goto LABEL_6;
          }

LABEL_5:
          v9 = 0;
          goto LABEL_6;
        }

        if (!v34)
        {
          goto LABEL_5;
        }

        v35 = sub_181929E8C(a1, 8 * *v34 + 8, 0x10040436913F5);
        v9 = v35;
        if (v35)
        {
          v36 = *v34;
          *v35 = *v34;
          if (v36 >= 1)
          {
            v37 = 1;
            while (1)
            {
              v40 = *&v34[2 * v37];
              if (v40)
              {
                v41 = strlen(*&v34[2 * v37]);
                v42 = v41;
                if (a1)
                {
                  v38 = sub_181929E8C(a1, v41 + 1, 354097263);
                  if (!v38)
                  {
                    goto LABEL_60;
                  }

LABEL_67:
                  memcpy(v38, v40, v42 + 1);
                  goto LABEL_60;
                }

                v38 = sub_181902484(v41 + 1, 354097263);
                if (v38)
                {
                  goto LABEL_67;
                }
              }

              else
              {
                v38 = 0;
              }

LABEL_60:
              *(v9 + 8 * v37) = v38;
              if (v37++ >= *v34)
              {
                a3 = v44;
                break;
              }
            }
          }
        }

LABEL_6:
        *(v10 + 7) = v9;
        *(v10 + 4) = *(v11 + 4);
        if (++v8 >= *v47)
        {
          return v43;
        }
      }

      v15 = sub_181902484(v13 + 1, 354097263);
      if (!v15)
      {
        goto LABEL_24;
      }

LABEL_23:
      memcpy(v15, v12, v14 + 1);
      goto LABEL_24;
    }
  }

  return result;
}

void *sub_1818CB940(uint64_t a1, uint64_t a2, int *a3, _DWORD *a4, unsigned __int8 *a5, char a6, unsigned __int8 *a7, uint64_t a8)
{
  v13 = *a1;
  v14 = sub_1818CAE18(a1, 130, a2, a7, a8);
  v17 = v14;
  if (v14)
  {
    if (*(a1 + 302) < 2u)
    {
      v14[6] = sub_1818C83A0(v13, a4, 1u);
      if (a5)
      {
        v19 = sub_1818C7FEC(v13, a5, 1, 0);
      }

      else
      {
        v19 = 0;
      }

      v17[5] = v19;
      v18 = sub_1818CB478(v13, a3, 1);
    }

    else
    {
      v14[5] = a5;
      v14[6] = a4;
      v18 = a3;
      a5 = 0;
      a4 = 0;
      a3 = 0;
    }

    v17[4] = v18;
    *(v17 + 1) = a6;
  }

  if (a4)
  {
    sub_18194E5B8(v13, a4);
  }

  if (a5)
  {
    sub_1819439E0(v13, a5);
  }

  sub_1818BB5B0(v13, a3, v15, v16);
  return v17;
}

void *sub_1818CBA4C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  v5 = *(a1 + 360);
  v6 = *a1;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0;
  v61 = 0;
  *(a1 + 360) = 0;
  if (*(a1 + 52) || !v5)
  {
    goto LABEL_69;
  }

  v8 = *(v5 + 40);
  if (v8)
  {
    v9 = (*(v6 + 32) + 24);
    v10 = -1;
    do
    {
      v11 = *v9;
      v9 += 4;
      ++v10;
    }

    while (v11 != v8);
  }

  else
  {
    v10 = -32768;
  }

  v12 = *v5;
  *(v5 + 56) = a2;
  if (a2)
  {
    v13 = a2;
    do
    {
      v13[1] = v5;
      v13 = v13[10];
    }

    while (v13);
  }

  v60 = v12;
  if (v12)
  {
    v14 = strlen(v12) & 0x3FFFFFFF;
  }

  else
  {
    v14 = 0;
  }

  LODWORD(v61) = v14;
  v15 = v10;
  v16 = (*(v6 + 32) + 32 * v10);
  v17 = *v16;
  *(&v65 + 1) = v16[3];
  *(&v66 + 1) = v17;
  *&v67 = "trigger";
  *(&v67 + 1) = &v60;
  LOBYTE(v66) = v10 == 1;
  *&v62 = a1;
  *(&v62 + 1) = a1;
  *&v63 = sub_181962F5C;
  *(&v63 + 1) = sub_181962FE0;
  *&v64 = nullsub_8;
  DWORD2(v64) = 0;
  WORD6(v64) = 0;
  *&v65 = &v62;
  if (v4)
  {
    v58 = v12;
    while (!sub_1818AEE70(&v62 + 1, v4[2]))
    {
      v18 = v4[5];
      if (v18)
      {
        if (sub_181959BA0(&v62 + 8, v18))
        {
          break;
        }
      }

      v19 = v4[6];
      if (v19 && *v19 >= 1)
      {
        v20 = (v19 + 2);
        v21 = *v19 + 1;
        while (!*v20 || !sub_181959BA0(&v62 + 8, *v20))
        {
          v20 += 3;
          if (--v21 <= 1)
          {
            goto LABEL_26;
          }
        }

        goto LABEL_68;
      }

LABEL_26:
      v22 = v4[4];
      if (v22)
      {
        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        v69 = 0;
        v71 = 0u;
        memset(v68, 0, sizeof(v68));
        v70 = v22;
        if (sub_1818AEE70(&v62 + 1, v68))
        {
          goto LABEL_68;
        }
      }

      v23 = v15;
      v24 = v4[8];
      if (v24)
      {
        while (1)
        {
          v25 = *v24;
          if (*v24)
          {
            if (*v25 >= 1)
            {
              break;
            }
          }

LABEL_36:
          v28 = *(v24 + 8);
          if (v28 && sub_181959BA0(&v62 + 8, v28))
          {
            goto LABEL_68;
          }

          v29 = *(v24 + 16);
          if (v29 && *v29 >= 1)
          {
            v30 = (v29 + 2);
            v31 = *v29 + 1;
            while (!*v30 || !sub_181959BA0(&v62 + 8, *v30))
            {
              v30 += 3;
              if (--v31 <= 1)
              {
                goto LABEL_45;
              }
            }

            goto LABEL_68;
          }

LABEL_45:
          v32 = *(v24 + 24);
          if (v32 && sub_181959BA0(&v62 + 8, v32))
          {
            goto LABEL_68;
          }

          v24 = *(v24 + 32);
          if (!v24)
          {
            goto LABEL_48;
          }
        }

        v26 = (v25 + 2);
        v27 = *v25 + 1;
        while (!*v26 || !sub_181959BA0(&v62 + 8, *v26))
        {
          v26 += 3;
          if (--v27 <= 1)
          {
            goto LABEL_36;
          }
        }

        goto LABEL_68;
      }

LABEL_48:
      v4 = v4[10];
      v15 = v23;
      v12 = v58;
      if (!v4)
      {
        goto LABEL_49;
      }
    }

    goto LABEL_68;
  }

LABEL_49:
  v33 = *(v5 + 24);
  if (v33 && sub_181959BA0(&v62 + 8, v33))
  {
    goto LABEL_68;
  }

  if (*(a1 + 302) < 2u)
  {
    if (!*(v6 + 197))
    {
      v34 = v15;
      if ((*(v6 + 51) & 0x10) != 0 && !*(v6 + 592) && !*(v6 + 220) && (*(v6 + 564) < 1 || *(v6 + 600)))
      {
        v45 = *(v5 + 56);
        if (v45)
        {
          while (1)
          {
            v46 = *(v45 + 24);
            if (v46)
            {
              v47 = strrchr(*(v45 + 24), 95);
              if (v47)
              {
                *v47 = 0;
                v48 = v47;
                v49 = sub_181917F20(v6, v46, 0);
                *v48 = 95;
                if (v49)
                {
                  if (*(v49 + 63) == 1)
                  {
                    v50 = v49;
                    v51 = *v49;
                    if (*v49)
                    {
                      v52 = strlen(*v49) & 0x3FFFFFFF;
                    }

                    else
                    {
                      LODWORD(v52) = 0;
                    }

                    v53 = v51;
                    v54 = v52;
                    if (!sqlite3_strnicmp(v46, v53, v52))
                    {
                      v55 = &v46[v54];
                      if (*v55 == 95)
                      {
                        v56 = sub_1819493D0((v6 + 568), *v50[9]);
                        if (v56)
                        {
                          if (**v56 >= 3)
                          {
                            v57 = *(*v56 + 184);
                            if (v57)
                            {
                              if (v57(v55 + 1))
                              {
                                break;
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

            v45 = *(v45 + 80);
            if (!v45)
            {
              goto LABEL_57;
            }
          }

          sub_181910730(a1, "trigger %s may not write to shadow table %s", *v5, *(v45 + 24));
          goto LABEL_68;
        }
      }

LABEL_57:
      v4 = sub_1818E7DFC(a1);
      if (!v4)
      {
        goto LABEL_69;
      }

      sub_18195D3A8(a1, 0, v10);
      v35 = sub_18189F1F4(v6, *a3, *(a3 + 8));
      v15 = v34;
      sub_1818F73B0(a1, "INSERT INTO %Q.sqlite_master VALUES('trigger',%Q,%Q,0,'CREATE TRIGGER %q')", *(*(v6 + 32) + 32 * v34), v12, *(v5 + 8), v35);
      if (v35)
      {
        sub_181929C84(v6, v35);
      }

      sub_18195E878(a1, v10);
      v36 = sub_1818A8BAC(v6, "type='trigger' AND name='%q'", v12);
      sub_18195E8E8(v4, v10, v36, 0);
    }
  }

  else
  {
    *(a1 + 360) = v5;
    v5 = 0;
  }

  if (!*(v6 + 197))
  {
LABEL_68:
    v4 = 0;
    goto LABEL_69;
  }

  v37 = sub_18188FAF0(*(*(v6 + 32) + 32 * v15 + 24) + 56, v12, v5);
  if (!v37)
  {
    v38 = *(v5 + 48);
    if (*(v5 + 40) == v38)
    {
      v42 = sub_1819493D0((v38 + 8), *(v5 + 8));
      v4 = 0;
      *(v5 + 64) = *(v42 + 88);
      *(v42 + 88) = v5;
      v5 = 0;
      goto LABEL_69;
    }

    v5 = 0;
    goto LABEL_68;
  }

  if (!*(v6 + 103) && !*(v6 + 104))
  {
    *(v6 + 103) = 1;
    if (*(v6 + 220) >= 1)
    {
      *(v6 + 424) = 1;
    }

    ++*(v6 + 432);
    *(v6 + 436) = 0;
    if (*(v6 + 344))
    {
      v5 = v37;
      sub_181910730(*(v6 + 344), "out of memory");
      v43 = *(v6 + 344);
      *(v43 + 24) = 7;
      for (i = *(v43 + 216); i; i = *(i + 216))
      {
        ++*(i + 52);
        *(i + 24) = 7;
      }

      goto LABEL_68;
    }
  }

  v4 = 0;
  v5 = v37;
LABEL_69:
  sub_1818A313C(v6, v5, a3, a4);
  return sub_1818CC034(v6, v4, v39, v40);
}

void *sub_1818CC034(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v4 = a2;
    v5 = result;
    do
    {
      v6 = *(v4 + 80);
      v7 = *(v4 + 40);
      if (v7)
      {
        sub_1819439E0(v5, v7);
      }

      v8 = *(v4 + 48);
      if (v8)
      {
        sub_18194E5B8(v5, v8);
      }

      v9 = *(v4 + 16);
      if (v9)
      {
        sub_1818BB408(v5, v9, 1, a4);
      }

      v10 = *(v4 + 56);
      if (v10)
      {
        v11 = *v10;
        if (*v10 >= 1)
        {
          v12 = 0;
          do
          {
            v13 = v10[v12 + 1];
            if (v13)
            {
              sub_181929C84(v5, v13);
              v11 = *v10;
            }

            ++v12;
          }

          while (v12 < v11);
        }

        sub_181939EC8(v5, v10);
      }

      v14 = *(v4 + 64);
      if (v14)
      {
        sub_18194E51C(v5, v14);
      }

      sub_1818BB5B0(v5, *(v4 + 32), a3, a4);
      v15 = *(v4 + 72);
      if (v15)
      {
        sub_181929C84(v5, v15);
      }

      result = sub_181929C84(v5, v4);
      v4 = v6;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_1818CC140(uint64_t a1, uint64_t *a2)
{
  v4 = 0;
  v5 = *(a1 + 600);
  *(a1 + 600) = 0;
  do
  {
    while (1)
    {
      if (v4 >= *(a1 + 564))
      {
        v10 = 0;
        v11 = 0;
        v12 = 0;
        *(a1 + 600) = v5;
        while (1)
        {
          while (1)
          {
            if (v10 >= *(a1 + 40))
            {
              if (v12)
              {
                v20 = *(a1 + 280);
                if (v20)
                {
                  if (v20(*(a1 + 272)))
                  {
                    return 531;
                  }
                }
              }

              v21 = *(*(*(a1 + 32) + 8) + 8);
              v22 = *v21;
              v23 = *(*v21 + 19);
              if (*(*v21 + 19) || *v22 == &unk_1ED453A78)
              {
                v24 = &unk_181A20D35;
              }

              else
              {
                v24 = *(v22 + 216);
                if (!v24)
                {
LABEL_72:
                  v34 = -1;
                  v35 = 8;
                  while (++v34 < *(a1 + 40))
                  {
                    v36 = *(*(a1 + 32) + v35);
                    if (v36)
                    {
                      v8 = sub_1818CC964(v36, 0);
                      v35 += 32;
                      if (v8)
                      {
                        return v8;
                      }
                    }

                    else
                    {
                      v35 += 32;
                    }
                  }

                  v37 = -1;
                  v38 = 8;
                  while (++v37 < *(a1 + 40))
                  {
                    v39 = *(*(a1 + 32) + v38);
                    if (v39)
                    {
                      v8 = sub_1818CCD6C(v39, 0);
                      v38 += 32;
                      if (v8)
                      {
                        return v8;
                      }
                    }

                    else
                    {
                      v38 += 32;
                    }
                  }

                  goto LABEL_134;
                }
              }

              if ((strlen(v24) & 0x3FFFFFFF) == 0 || v11 <= 1)
              {
                goto LABEL_72;
              }

              v25 = *a1;
              if (v23 || *v22 == &unk_1ED453A78)
              {
                v65 = 0;
                v64 = 0;
                v26 = &unk_181A20D35;
              }

              else
              {
                v26 = *(v22 + 216);
                v65 = 0;
                v64 = 0;
                if (!v26)
                {
                  v27 = 0;
                  goto LABEL_54;
                }
              }

              v27 = strlen(v26) & 0x3FFFFFFF;
LABEL_54:
              v28 = sub_1818A8BAC(a1, "%.4c%s%.16c", 0, v26, 0);
              if (!v28)
              {
                return 7;
              }

              v29 = v28;
              v30 = v28 + 4;
              __buf = 0;
              sqlite3_initialize();
              arc4random_buf(&__buf, 4uLL);
              sqlite3_snprintf(13, &v30[v27], "-mj%06X9%02X", __buf >> 8, __buf);
              v8 = (*(v25 + 56))(v25, v30, 0, &v64);
              if (v8 || !v64 || (__buf = 0, sqlite3_log(13, "MJ collide: %s", v30), sqlite3_initialize(), arc4random_buf(&__buf, 4uLL), sqlite3_snprintf(13, &v30[v27], "-mj%06X9%02X", __buf >> 8, __buf), v8 = (*(v25 + 56))(v25, v30, 0, &v64), v8) || !v64)
              {
LABEL_67:
                if (v8)
                {
                  goto LABEL_69;
                }
              }

              else
              {
                v31 = 1;
                while (1)
                {
                  __buf = 0;
                  if (++v31 >= 0x65)
                  {
                    break;
                  }

                  sqlite3_initialize();
                  arc4random_buf(&__buf, 4uLL);
                  sqlite3_snprintf(13, &v30[v27], "-mj%06X9%02X", __buf >> 8, __buf);
                  v32 = (*(v25 + 56))(v25, v30, 0, &v64);
                  if (v32)
                  {
                    v33 = 1;
                  }

                  else
                  {
                    v33 = v64 == 0;
                  }

                  if (v33)
                  {
                    v8 = v32;
                    goto LABEL_67;
                  }
                }

                sqlite3_log(13, "MJ delete: %s", v30);
                v53 = *(v25 + 48);
                if (v53)
                {
                  v53(v25, v30, 0);
                }
              }

              v8 = sub_18193BBF4(v25, v30, &v65, 16406, 0);
              if (v8)
              {
                goto LABEL_69;
              }

              v40 = *(a1 + 40);
              v41 = v65;
              if (v40 >= 1)
              {
                v42 = 0;
                v43 = 0;
                v44 = 8;
                do
                {
                  v45 = *(*(a1 + 32) + v44);
                  if (v45)
                  {
                    if (*(v45 + 16) == 2)
                    {
                      v46 = **(v45 + 8);
                      v47 = *(v46 + 224);
                      if (v47)
                      {
                        v48 = strlen(*(v46 + 224));
                        v49 = (*(*v41 + 24))(v41, v47, (v48 & 0x3FFFFFFFu) + 1, v43);
                        if (v49)
                        {
                          v8 = v49;
                          if (*v41)
                          {
                            (*(*v41 + 8))(v41);
                            *v41 = 0;
                          }

                          v50 = &off_1ED452EB0;
                          if (dword_1ED452E80)
                          {
                            if (xmmword_1ED456AF0)
                            {
                              xmmword_1ED452F18(xmmword_1ED456AF0);
                            }

                            qword_1ED456A48[0] -= xmmword_1ED452EC0(v41);
                            --qword_1ED456A90;
                            off_1ED452EB0(v41);
                            v41 = xmmword_1ED456AF0;
                            if (xmmword_1ED456AF0)
                            {
                              v50 = &xmmword_1ED452F28;
                              goto LABEL_101;
                            }
                          }

                          else
                          {
LABEL_101:
                            (*v50)(v41);
                          }

LABEL_107:
                          v52 = *(v25 + 48);
                          if (v52)
                          {
                            v52(v25, v30, 0);
                          }

                          goto LABEL_69;
                        }

                        v43 += (strlen(v47) & 0x3FFFFFFF) + 1;
                        v40 = *(a1 + 40);
                      }
                    }
                  }

                  ++v42;
                  v44 += 32;
                }

                while (v42 < v40);
              }

              if (((*(*v41 + 96))(v41) & 0x400) == 0)
              {
                v51 = (*(*v41 + 40))(v41, 2);
                if (v51)
                {
                  v8 = v51;
                  if (*v41)
                  {
                    (*(*v41 + 8))(v41);
                    *v41 = 0;
                  }

                  sqlite3_free(v41);
                  goto LABEL_107;
                }
              }

              v54 = -1;
              v55 = 8;
              while (1)
              {
                v56 = *(a1 + 40);
                if (++v54 >= v56)
                {
                  break;
                }

                v57 = *(*(a1 + 32) + v55);
                if (v57)
                {
                  v8 = sub_1818CC964(v57, v30);
                  v55 += 32;
                  if (v8)
                  {
                    goto LABEL_118;
                  }
                }

                else
                {
                  v55 += 32;
                }
              }

              v8 = 0;
LABEL_118:
              if (*v41)
              {
                (*(*v41 + 8))(v41);
                *v41 = 0;
              }

              sqlite3_free(v41);
              if (v54 < v56)
              {
LABEL_69:
                sub_181929C84(a1, v29);
                return v8;
              }

              v58 = *(v25 + 48);
              if (v58)
              {
                v8 = v58(v25, v30, 1);
                v59 = sub_181929C84(a1, v29);
                if (v8)
                {
                  return v8;
                }
              }

              else
              {
                v59 = sub_181929C84(a1, v29);
              }

              if (off_1EA831A10)
              {
                v59 = off_1EA831A10(v59);
              }

              v60 = *(a1 + 40);
              if (v60 >= 1)
              {
                v61 = 0;
                v62 = 8;
                do
                {
                  v59 = *(*(a1 + 32) + v62);
                  if (v59)
                  {
                    v59 = sub_1818CCD6C(v59, 1);
                    v60 = *(a1 + 40);
                  }

                  ++v61;
                  v62 += 32;
                }

                while (v61 < v60);
              }

              if (off_1EA831A18)
              {
                off_1EA831A18(v59);
              }

LABEL_134:
              sub_18193BAEC(a1);
              return 0;
            }

            v13 = *(a1 + 32);
            v14 = *(v13 + 32 * v10 + 8);
            if (v14)
            {
              if (*(v14 + 16) == 2)
              {
                break;
              }
            }

            ++v10;
          }

          if (*(v14 + 17))
          {
            ++*(v14 + 20);
            if (!*(v14 + 18))
            {
              sub_181932DEC(v14);
              v13 = *(a1 + 32);
            }
          }

          v15 = **(v14 + 8);
          if (*(v13 + 32 * v10 + 16) == 1 || ((0x34uLL >> *(v15 + 9)) & 1) != 0 || *(v15 + 16))
          {
            v8 = *(v15 + 48);
            if (!v8)
            {
              goto LABEL_27;
            }
          }

          else
          {
            if (!*(v15 + 20))
            {
              ++v11;
            }

            v8 = *(v15 + 48);
            if (!v8)
            {
LABEL_27:
              if (!*(v15 + 344))
              {
                while (1)
                {
                  v17 = *(v15 + 22);
                  if (v17 >= 4 && v17 != 5)
                  {
                    break;
                  }

                  if (*(v15 + 17))
                  {
                    goto LABEL_42;
                  }

                  v19 = (*(**(v15 + 72) + 56))(*(v15 + 72), 4);
                  if (v19 != 5)
                  {
                    v8 = v19;
                    if (v19)
                    {
                      goto LABEL_21;
                    }

LABEL_42:
                    v8 = 0;
                    *(v15 + 22) = 4;
                    goto LABEL_21;
                  }

                  if (!(*(v15 + 232))(*(v15 + 240)))
                  {
                    v8 = 5;
                    if (*(v14 + 17))
                    {
                      goto LABEL_22;
                    }

                    goto LABEL_29;
                  }
                }
              }

              v8 = 0;
              if (!*(v14 + 17))
              {
                goto LABEL_29;
              }

LABEL_22:
              v16 = *(v14 + 20) - 1;
              *(v14 + 20) = v16;
              if (!v16)
              {
                sub_181932ECC(v14);
              }

              goto LABEL_29;
            }
          }

LABEL_21:
          if (*(v14 + 17))
          {
            goto LABEL_22;
          }

LABEL_29:
          v12 = 1;
          ++v10;
          if (v8)
          {
            return v8;
          }
        }
      }

      v6 = *(*(v5 + 8 * v4) + 16);
      if (v6)
      {
        v7 = *(*v6 + 120);
        if (v7)
        {
          break;
        }
      }

      ++v4;
    }

    v8 = v7(v6);
    sub_18193BD34(a2, v6);
    ++v4;
  }

  while (!v8);
  *(a1 + 600) = v5;
  return v8;
}

uint64_t sub_1818CC964(uint64_t *a1, _BYTE *a2)
{
  if (*(a1 + 16) != 2)
  {
    return 0;
  }

  v3 = a1[1];
  if (*(a1 + 17) && (++*(a1 + 5), !*(a1 + 18)))
  {
    v11 = a2;
    sub_181932DEC(a1);
    a2 = v11;
    if (!*(v3 + 33))
    {
      goto LABEL_8;
    }
  }

  else if (!*(v3 + 33))
  {
LABEL_8:
    v7 = *v3;
    if (*(v3 + 35))
    {
      *(v7 + 32) = *(v3 + 64);
    }

    result = sub_1818DCD58(v7, a2, 0);
    goto LABEL_11;
  }

  v4 = a1[1];
  v5 = *v4;
  for (i = *(v4 + 16); i; i = *(i + 40))
  {
    *(i + 1) &= ~4u;
  }

  if (*(v4 + 34))
  {
    goto LABEL_8;
  }

  v12 = *(v4 + 64);
  v13 = v12 - 2;
  if (v12 >= 2)
  {
    v14 = v13 / (*(v4 + 56) / 5u + 1) * (*(v4 + 56) / 5u + 1);
    if (v14 + 1 == dword_1EA8315A8 / *(v4 + 52))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    if (v15 + v14 == v12)
    {
      goto LABEL_26;
    }
  }

  else if (!v12)
  {
    goto LABEL_26;
  }

  v16 = dword_1EA8315A8;
  if (v12 == dword_1EA8315A8 / *(v4 + 52) + 1)
  {
LABEL_26:
    result = sub_18190EDA8(83457);
    goto LABEL_11;
  }

  v17 = bswap32(*(*(*(v4 + 24) + 80) + 36));
  v18 = *a1;
  v19 = *(*a1 + 336);
  if (v19)
  {
    v20 = *(v18 + 40);
    v21 = *(v18 + 32);
    if (v20 < 1)
    {
      v24 = a2;
      v22 = 0;
    }

    else
    {
      v22 = 0;
      v23 = (v21 + 8);
      while (*v23 != a1)
      {
        ++v22;
        v23 += 4;
        if (v20 == v22)
        {
          v24 = a2;
          v22 = *(v18 + 40);
          goto LABEL_36;
        }
      }

      v24 = a2;
    }

LABEL_36:
    v26 = v19(*(v18 + 320), *(v21 + 32 * v22), *(v4 + 64), v17);
    if (v26 >= v17)
    {
      v25 = v17;
    }

    else
    {
      v25 = v26;
    }

    a2 = v24;
    if (!v25)
    {
      goto LABEL_8;
    }

    v16 = dword_1EA8315A8;
  }

  else
  {
    v25 = v17;
  }

  v27 = *(v4 + 56) / 5u;
  if (v12 > 1)
  {
    v29 = v27 + 1;
    v31 = v13 / v29 * v29;
    v30 = v16 / *(v4 + 52);
    if (v31 + 1 == v30)
    {
      v32 = 3;
    }

    else
    {
      v32 = 2;
    }

    v28 = v32 + v31;
  }

  else
  {
    v28 = 0;
    v29 = v27 + 1;
    v30 = v16 / *(v4 + 52);
  }

  v33 = v12 - v25 - (v25 - v12 + v27 + v28) / v27;
  v34 = v30 + 1;
  v35 = v30 + 1 >= v12 || v33 >= v34;
  v36 = !v35;
  v37 = v33 - v36;
  do
  {
    v38 = v37;
    v35 = v37 >= 2;
    v39 = v37 - 2;
    if (v35)
    {
      v41 = v39 / v29 * v29;
      if (v41 + 1 == v30)
      {
        v42 = 3;
      }

      else
      {
        v42 = 2;
      }

      v40 = v42 + v41;
    }

    else
    {
      v40 = 0;
    }

    v37 = v38 - 1;
  }

  while (v38 == v40 || v38 == v34);
  if (v38 > v12)
  {
    result = sub_18190EDA8(83484);
    goto LABEL_11;
  }

  v43 = a2;
  if (v38 >= v12)
  {
    v45 = 0;
    v46 = 1;
  }

  else
  {
    v44 = *(v4 + 16);
    if (v44 && (v45 = sub_18193880C(v44, 0, 0), v45))
    {
      v46 = 0;
    }

    else
    {
      do
      {
        v45 = sub_181938468(v4, v38, v12, v25 == v17);
        v12 = (v12 - 1);
        v46 = v45 == 0;
      }

      while (v12 > v38 && !v45);
    }
  }

  v47 = !v46;
  if (v45 == 101)
  {
    v47 = 0;
  }

  if (!v47)
  {
    a2 = v43;
    if (!v17)
    {
      goto LABEL_79;
    }

    v45 = sub_1818D8D88(*(*(v4 + 24) + 112));
    if (v25 == v17)
    {
      *(*(*(v4 + 24) + 80) + 32) = 0;
      *(*(*(v4 + 24) + 80) + 36) = 0;
    }

    *(*(*(v4 + 24) + 80) + 28) = bswap32(v38);
    *(v4 + 35) = 1;
    *(v4 + 64) = v38;
  }

  a2 = v43;
LABEL_79:
  if (!v45)
  {
    goto LABEL_8;
  }

  v48 = v45;
  sub_1818E34C8(v5);
  result = v48;
LABEL_11:
  if (*(a1 + 17))
  {
    v9 = *(a1 + 5) - 1;
    *(a1 + 5) = v9;
    if (!v9)
    {
      v10 = result;
      sub_181932ECC(a1);
      return v10;
    }
  }

  return result;
}

uint64_t sub_1818CCD6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!*(a1 + 16))
  {
    return 0;
  }

  if (*(a1 + 17))
  {
    ++*(a1 + 20);
    if (!*(a1 + 18))
    {
      v7 = a2;
      sub_181932DEC(a1);
      LODWORD(a2) = v7;
      if (*(a1 + 16) != 2)
      {
        goto LABEL_29;
      }

LABEL_5:
      v4 = *(a1 + 8);
      v5 = *v4;
      result = *(*v4 + 48);
      if (!result)
      {
        ++*(v5 + 132);
        if (*(v5 + 21) == 2 && *(v5 + 8) && *(v5 + 9) == 1)
        {
          *(v5 + 21) = 1;
LABEL_28:
          --*(a1 + 28);
          *(v4 + 36) = 1;
          sub_1818EFAC4(*(v4 + 96));
          *(v4 + 96) = 0;
          goto LABEL_29;
        }

        v8 = a2;
        result = sub_1818CD128(v5, *(v5 + 24), 1);
        if (result != 13 && result != 10)
        {
          if (v8)
          {
            goto LABEL_28;
          }

          goto LABEL_24;
        }

        *(v5 + 48) = result;
        *(v5 + 21) = 6;
        v10 = sub_181933ECC;
        LODWORD(a2) = v8;
        if (!result)
        {
          if (!*(v5 + 27) || (v10 = sub_181933ED8, *(v5 + 296)))
          {
            v10 = sub_18193417C;
          }
        }

        *(v5 + 288) = v10;
      }

      if (a2)
      {
        goto LABEL_28;
      }

LABEL_24:
      if (result)
      {
        if (!*(a1 + 17))
        {
          return result;
        }

        goto LABEL_31;
      }

      goto LABEL_28;
    }
  }

  if (v2 == 2)
  {
    goto LABEL_5;
  }

LABEL_29:
  sub_1818CCF18(a1);
  if (!*(a1 + 17))
  {
    return 0;
  }

  result = 0;
LABEL_31:
  v11 = *(a1 + 20) - 1;
  *(a1 + 20) = v11;
  if (!v11)
  {
    v12 = result;
    sub_181932ECC(a1);
    return v12;
  }

  return result;
}

uint64_t *sub_1818CCF18(uint64_t *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  *(v3 + 35) = 0;
  if (*(result + 16))
  {
    if (*(v2 + 212) >= 2)
    {
      if (*(v3 + 128) == result)
      {
        *(v3 + 128) = 0;
        *(v3 + 40) &= 0xFF3Fu;
        for (i = *(v3 + 120); i; i = *(i + 16))
        {
          *(i + 12) = 1;
        }
      }

      *(result + 16) = 1;
      return result;
    }

    v6 = (v3 + 120);
    v5 = *(v3 + 120);
    if (v5)
    {
      do
      {
        if (*v5 == v1)
        {
          v7 = *(v5 + 16);
          *v6 = v7;
          if (*(v5 + 8) == 1)
          {
            goto LABEL_11;
          }

          v8 = &off_1ED452EB0;
          if (dword_1ED452E80)
          {
            if (xmmword_1ED456AF0)
            {
              xmmword_1ED452F18(xmmword_1ED456AF0);
            }

            qword_1ED456A48[0] -= xmmword_1ED452EC0(v5);
            --qword_1ED456A90;
            result = off_1ED452EB0(v5);
            v5 = xmmword_1ED456AF0;
            if (!xmmword_1ED456AF0)
            {
              goto LABEL_10;
            }

            v8 = &xmmword_1ED452F28;
          }

          result = (*v8)(v5);
        }

        else
        {
          v6 = (v5 + 16);
        }

LABEL_10:
        v7 = *v6;
LABEL_11:
        v5 = v7;
      }

      while (v7);
    }

    if (*(v3 + 128) == v1)
    {
      *(v3 + 128) = 0;
      v9 = *(v3 + 60);
      v10 = -193;
    }

    else
    {
      v9 = *(v3 + 60);
      if (v9 != 2)
      {
        goto LABEL_25;
      }

      v10 = -129;
    }

    *(v3 + 40) &= v10;
LABEL_25:
    v11 = v9 - 1;
    *(v3 + 60) = v11;
    if (!v11)
    {
      *(v3 + 36) = 0;
    }
  }

  *(v1 + 16) = 0;
  if (!*(v3 + 36))
  {
    v12 = *(v3 + 24);
    if (v12)
    {
      *(v3 + 24) = 0;
      v13 = *(v12 + 112);
      v14 = *(v13 + 40);
      result = sub_181932B68(v13);
      if (!*(*(v14 + 336) + 24))
      {

        return sub_181934964(v14);
      }
    }
  }

  return result;
}

uint64_t sub_1818CD128(uint64_t a1, int a2, int a3)
{
  if (*(a1 + 21) <= 1u && *(a1 + 22) < 2u)
  {
    return 0;
  }

  if (*(a1 + 128) >= 1)
  {
    v7 = 0;
    v8 = 16;
    do
    {
      sub_1818EFAC4(*(*(a1 + 120) + v8));
      ++v7;
      v8 += 56;
    }

    while (v7 < *(a1 + 128));
  }

  v9 = *(a1 + 88);
  v10 = *v9;
  if (*(a1 + 8))
  {
    if (v10 != &unk_1EEF8FF50)
    {
      goto LABEL_12;
    }

    v10 = &unk_1EEF8FF50;
  }

  else if (!v10)
  {
    goto LABEL_12;
  }

  v10[1](*(a1 + 88));
  *v9 = 0;
LABEL_12:
  v11 = *(a1 + 120);
  if (!v11)
  {
    goto LABEL_19;
  }

  v12 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_18;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v11);
  --qword_1ED456A90;
  off_1ED452EB0(v11);
  v11 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v12 = &xmmword_1ED452F28;
LABEL_18:
    (*v12)(v11);
  }

LABEL_19:
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 60) = 0;
  v13 = *(a1 + 80);
  v14 = *v13;
  if (!*v13)
  {
LABEL_50:
    v16 = 0;
    goto LABEL_65;
  }

  if (v14 != &unk_1EEF8FF50)
  {
    v15 = *(a1 + 9);
    if (v15 == 1)
    {
      goto LABEL_40;
    }

    if (v15 == 3)
    {
      if (!*(a1 + 96))
      {
        goto LABEL_63;
      }

      v16 = (*(v14 + 32))(*(a1 + 80), 0);
      if (!v16)
      {
        if (*(a1 + 12) && *(a1 + 14))
        {
          v17 = (*(**(a1 + 80) + 40))(*(a1 + 80));
LABEL_62:
          v16 = v17;
          goto LABEL_64;
        }

        goto LABEL_63;
      }

LABEL_64:
      *(a1 + 96) = 0;
      goto LABEL_65;
    }

    if (v15 <= 4 && *(a1 + 8))
    {
LABEL_40:
      if (a2)
      {
        v21 = 1;
        if (!*(a1 + 96))
        {
          goto LABEL_63;
        }
      }

      else
      {
        v21 = *(a1 + 16) != 0;
        if (!*(a1 + 96))
        {
          goto LABEL_63;
        }
      }

      v22 = *(a1 + 208);
      if (!v22)
      {
        v21 = 1;
      }

      if (v21)
      {
        v16 = (*(v14 + 32))(*(a1 + 80), 0);
        if (v16)
        {
          goto LABEL_64;
        }
      }

      else
      {
        v16 = (*(v14 + 24))(*(a1 + 80), &unk_181A20D0D, 28, 0);
        if (v16)
        {
          goto LABEL_64;
        }
      }

      if (*(a1 + 11))
      {
        v16 = 0;
      }

      else
      {
        v16 = (*(**(a1 + 80) + 40))(*(a1 + 80), *(a1 + 14) | 0x10u);
      }

      if (v16)
      {
        goto LABEL_64;
      }

      if (v22 < 1)
      {
        goto LABEL_64;
      }

      v46 = 0;
      v16 = (*(**(a1 + 80) + 48))(*(a1 + 80), &v46);
      if (v16)
      {
        goto LABEL_64;
      }

      if (v46 > v22)
      {
        v17 = (*(**(a1 + 80) + 32))(*(a1 + 80), v22);
        goto LABEL_62;
      }

LABEL_63:
      v16 = 0;
      goto LABEL_64;
    }

    v23 = *(a1 + 16);
    (*(v14 + 8))(*(a1 + 80));
    *v13 = 0;
    if (!v23)
    {
      v24 = *(*a1 + 48);
      if (v24)
      {
        v16 = v24();
        goto LABEL_65;
      }
    }

    goto LABEL_50;
  }

  v18 = v13[2];
  if (v18)
  {
    do
    {
      v19 = *v18;
      v20 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v18);
        --qword_1ED456A90;
        off_1ED452EB0(v18);
        v18 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          goto LABEL_31;
        }

        v20 = &xmmword_1ED452F28;
      }

      (*v20)(v18);
LABEL_31:
      v18 = v19;
    }

    while (v19);
  }

  v16 = 0;
  *v13 = 0;
LABEL_65:
  sub_1818EFAC4(*(a1 + 64));
  *(a1 + 64) = 0;
  *(a1 + 52) = 0;
  if (v16)
  {
    goto LABEL_114;
  }

  if (!*(a1 + 19) && *(a1 + 16))
  {
    if (!a3 || !**(a1 + 72))
    {
      goto LABEL_150;
    }

    v36 = *(a1 + 336);
    LODWORD(v37) = *(v36 + 8);
    if ((v37 & 0x80000000) != 0)
    {
      v37 = -1024 * v37 / (*(v36 + 11) + *(v36 + 10));
      if (v37 >= 1000000000)
      {
        LODWORD(v37) = 1000000000;
      }
    }

    v38 = *v36;
    if (*v36)
    {
      v39 = 0;
      do
      {
        v38 = *(v38 + 64);
        v39 += 100;
      }

      while (v38);
    }

    else
    {
      v39 = 0;
    }

    if (!v37 || (v39 / v37) < 25)
    {
LABEL_150:
      v25 = *(a1 + 336);
      for (i = *v25; i; i = *(i + 64))
      {
        *(i + 52) &= 0xFFF3u;
      }

      v25[2] = v25[1];
      if (v25[9])
      {
        goto LABEL_83;
      }

      goto LABEL_114;
    }
  }

  v25 = *(a1 + 336);
  v26 = *v25;
  if (!*v25)
  {
    goto LABEL_82;
  }

  do
  {
    v27 = *(v26 + 24);
    v28 = *(v26 + 72);
    if (*(v27 + 16) == v26)
    {
      *(v27 + 16) = v28;
      v29 = *(v26 + 64);
      if (!v29)
      {
LABEL_75:
        *(v27 + 8) = v28;
        if (!v28)
        {
          *v27 = 0;
          *(v27 + 49) = 2;
          goto LABEL_77;
        }

LABEL_76:
        *(v28 + 64) = v29;
        goto LABEL_77;
      }
    }

    else
    {
      v29 = *(v26 + 64);
      if (!v29)
      {
        goto LABEL_75;
      }
    }

    *(v29 + 72) = v28;
    if (v28)
    {
      goto LABEL_76;
    }

    *v27 = v29;
LABEL_77:
    *(v26 + 52) = *(v26 + 52) & 0xFFF0 | 1;
    if (!*(v26 + 56) && *(v27 + 48))
    {
      xmmword_1ED452F80(*(v27 + 72), *v26, 0);
    }

    v26 = *v25;
  }

  while (*v25);
  v25 = *(a1 + 336);
LABEL_82:
  if (v25[9])
  {
LABEL_83:
    v30 = *(a1 + 32);
    v31 = *v25;
    if (!*v25)
    {
LABEL_98:
      if (!v30)
      {
        if (v25[3] && (v35 = (*(&xmmword_1ED452F70 + 1))(v25[9], 1, 0)) != 0)
        {
          bzero(*v35, *(v25 + 10));
          v30 = 1;
        }

        else
        {
          v30 = 0;
        }
      }

      xmmword_1ED452F90(v25[9], v30 + 1);
      goto LABEL_114;
    }

    while (2)
    {
      v32 = v31;
      v31 = *(v31 + 64);
      if (*(v32 + 48) > v30)
      {
        v33 = *(v32 + 24);
        v34 = *(v32 + 72);
        if (*(v33 + 16) == v32)
        {
          *(v33 + 16) = v34;
          if (!v31)
          {
            goto LABEL_92;
          }

LABEL_89:
          *(v31 + 72) = v34;
          if (v34)
          {
LABEL_93:
            *(v34 + 64) = v31;
          }

          else
          {
            *v33 = v31;
          }
        }

        else
        {
          if (v31)
          {
            goto LABEL_89;
          }

LABEL_92:
          *(v33 + 8) = v34;
          if (v34)
          {
            goto LABEL_93;
          }

          *v33 = 0;
          *(v33 + 49) = 2;
        }

        *(v32 + 52) = *(v32 + 52) & 0xFFF0 | 1;
        if (!*(v32 + 56) && *(v33 + 48))
        {
          xmmword_1ED452F80(*(v33 + 72), *v32, 0);
        }
      }

      if (!v31)
      {
        goto LABEL_98;
      }

      continue;
    }
  }

LABEL_114:
  v40 = *(a1 + 344);
  if (v40)
  {
    if (*(v40 + 64))
    {
      if (!*(v40 + 63))
      {
        (*(**(v40 + 8) + 112))(*(v40 + 8), 0, 1, 9);
      }

      *(v40 + 64) = 0;
      *(v40 + 124) = 0;
      *(v40 + 67) = 0;
    }
  }

  else if (a3 && !v16)
  {
    v42 = *(a1 + 32);
    if (*(a1 + 40) <= v42)
    {
      v16 = 0;
    }

    else
    {
      v16 = sub_1818F8F88(a1, v42);
    }
  }

  if (a3)
  {
    if (!v16)
    {
      v41 = *(a1 + 72);
      if (!*v41 || (v16 = (*(*v41 + 80))(v41, 22, 0), v16 == 12))
      {
        v16 = 0;
      }
    }
  }

  if (*(a1 + 8))
  {
    goto LABEL_125;
  }

  v43 = *(a1 + 344);
  if (!v43)
  {
LABEL_139:
    v44 = *(a1 + 72);
    if (*v44)
    {
      if (*(a1 + 17))
      {
        LODWORD(result) = 0;
      }

      else
      {
        LODWORD(result) = (*(*v44 + 64))(v44, 1);
      }

      if (*(a1 + 22) != 5)
      {
        *(a1 + 22) = 1;
      }
    }

    else
    {
      LODWORD(result) = 0;
    }

    *(a1 + 23) = *(a1 + 16);
    goto LABEL_126;
  }

  if (!*(v43 + 63))
  {
LABEL_125:
    LODWORD(result) = 0;
    goto LABEL_126;
  }

  *(v43 + 63) = 0;
  if (!(*(**(v43 + 8) + 112))(*(v43 + 8), (*(v43 + 60) + 3), 1, 6))
  {
    if (!*(v43 + 63))
    {
      goto LABEL_139;
    }

    goto LABEL_125;
  }

  LODWORD(result) = 0;
  *(v43 + 63) = 1;
LABEL_126:
  *(a1 + 21) = 1;
  *(a1 + 24) = 0;
  if (v16)
  {
    return v16;
  }

  else
  {
    return result;
  }
}

uint64_t sub_1818CD8F0(uint64_t a1)
{
  result = sub_1818EFAC4(*(a1 + 64));
  *(a1 + 64) = 0;
  if (*(a1 + 128) >= 1)
  {
    v3 = 0;
    v4 = 16;
    do
    {
      result = sub_1818EFAC4(*(*(a1 + 120) + v4));
      ++v3;
      v4 += 56;
    }

    while (v3 < *(a1 + 128));
  }

  v5 = *(a1 + 88);
  v6 = *v5;
  if (*(a1 + 8))
  {
    if (v6 != &unk_1EEF8FF50)
    {
      goto LABEL_9;
    }

    v6 = &unk_1EEF8FF50;
  }

  else if (!v6)
  {
    goto LABEL_9;
  }

  result = v6[1](*(a1 + 88));
  *v5 = 0;
LABEL_9:
  v7 = *(a1 + 120);
  if (!v7)
  {
    goto LABEL_16;
  }

  v8 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_15;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v7);
  --qword_1ED456A90;
  result = off_1ED452EB0(v7);
  v7 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v8 = &xmmword_1ED452F28;
LABEL_15:
    result = (*v8)(v7);
  }

LABEL_16:
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 60) = 0;
  v9 = *(a1 + 344);
  if (v9)
  {
    v10 = (a1 + 21);
    if (*(a1 + 21) == 6 && *(v9 + 64))
    {
      v11 = *(a1 + 344);
      if (!*(v9 + 63))
      {
        result = (*(**(v9 + 8) + 112))(*(v9 + 8), 0, 1, 9);
        v11 = *(a1 + 344);
      }

      *(v9 + 64) = 0;
      *(v9 + 124) = 0;
      *(v9 + 67) = 0;
      v9 = v11;
    }

    if ((*(v9 + 60) & 0x80000000) == 0)
    {
      if (*(v9 + 64))
      {
        if (!*(v9 + 63))
        {
          result = (*(**(v9 + 8) + 112))(*(v9 + 8), 0, 1, 9);
        }

        *(v9 + 64) = 0;
        *(v9 + 124) = 0;
        *(v9 + 67) = 0;
      }

      if (!*(v9 + 63))
      {
        result = (*(**(v9 + 8) + 112))(*(v9 + 8), (*(v9 + 60) + 3), 1, 5);
      }

      *(v9 + 60) = -1;
    }
  }

  else
  {
    if (*(a1 + 8))
    {
      goto LABEL_48;
    }

    v12 = *(a1 + 72);
    if (!*v12 || ((*(*v12 + 96))(v12) & 0x800) == 0 || (*(a1 + 9) & 5) != 1)
    {
      v13 = *(a1 + 80);
      if (*v13)
      {
        (*(*v13 + 8))(*(a1 + 80));
        *v13 = 0;
      }
    }

    result = *(a1 + 72);
    if (*result)
    {
      if (*(a1 + 17))
      {
        v14 = 1;
      }

      else
      {
        result = (*(*result + 64))(result, 0);
        v14 = result == 0;
      }

      if (*(a1 + 22) != 5)
      {
        *(a1 + 22) = 0;
      }

      *(a1 + 23) = *(a1 + 16);
      if (!v14 && *(a1 + 21) == 6)
      {
        *(a1 + 22) = 5;
      }
    }

    else
    {
      *(a1 + 23) = *(a1 + 16);
    }

    v10 = (a1 + 21);
  }

  *v10 = 0;
LABEL_48:
  if (*(a1 + 48))
  {
    if (*(a1 + 16))
    {
      v15 = **(a1 + 80) == 0;
    }

    else
    {
      result = sub_181934D80(a1);
      v15 = 0;
      *(a1 + 23) = 0;
    }

    *(a1 + 21) = v15;
    if (*(a1 + 27))
    {
      result = (*(**(a1 + 72) + 144))(*(a1 + 72), 0, 0);
      v16 = *(a1 + 27);
      *(a1 + 48) = 0;
      if (v16)
      {
        v17 = sub_181933ED8;
        if (!*(a1 + 296))
        {
          goto LABEL_58;
        }
      }
    }

    else
    {
      *(a1 + 48) = 0;
    }

    v17 = sub_18193417C;
LABEL_58:
    *(a1 + 288) = v17;
  }

  *(a1 + 24) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  return result;
}

uint64_t sub_1818CDC54(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 32 * a2 + 24);
  for (i = *(v4 + 16); i; i = *i)
  {
    *(i[2] + 48) &= ~0x10u;
  }

  v6 = *(v4 + 40);
  if (v6)
  {
    do
    {
      *(v6[2] + 99) &= ~0x80u;
      v6 = *v6;
    }

    while (v6);
    v3 = *(a1 + 32);
  }

  v7 = *(v3 + 32 * a2);
  v22[0] = a1;
  v22[1] = v7;
  v8 = sub_181917F20(a1, "sqlite_stat1", v7);
  if (v8 && !*(v8 + 63))
  {
    v17 = sub_1818A8BAC(a1, "SELECT tbl,idx,stat FROM %Q.sqlite_stat1", v7);
    if (v17)
    {
      v18 = v17;
      v9 = sqlite3_exec(a1, v17, sub_1818F70D8, v22, 0);
      sub_181929C84(a1, v18);
      v10 = *(v4 + 40);
      if (!v10)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v9 = 7;
      v10 = *(v4 + 40);
      if (!v10)
      {
        goto LABEL_27;
      }
    }
  }

  else
  {
    v9 = 0;
    v10 = *(v4 + 40);
    if (!v10)
    {
      goto LABEL_27;
    }
  }

  do
  {
    v11 = v10[2];
    if ((*(v11 + 99) & 0x80) == 0)
    {
      if (*(v11 + 94) >= 5u)
      {
        v12 = 5;
      }

      else
      {
        v12 = *(v11 + 94);
      }

      v14 = *(v11 + 16);
      v13 = *(v11 + 24);
      v15 = *(v13 + 58);
      if (v15 <= 98)
      {
        LOWORD(v15) = 99;
        *(v13 + 58) = 99;
      }

      if (*(v11 + 72))
      {
        LOWORD(v15) = v15 - 10;
      }

      *v14 = v15;
      memcpy(v14 + 1, &unk_181A20E32, 2 * (v12 & 0x7FFF));
      LODWORD(v16) = *(v11 + 94);
      if (v12 < v16)
      {
        do
        {
          v14[v12 + 1] = 23;
          v16 = *(v11 + 94);
          ++v12;
        }

        while (v12 < v16);
      }

      if (*(v11 + 98))
      {
        v14[v16] = 0;
      }
    }

    v10 = *v10;
  }

  while (v10);
LABEL_27:
  if (v9 == 7 && !*(a1 + 103) && !*(a1 + 104))
  {
    *(a1 + 103) = 1;
    if (*(a1 + 220) >= 1)
    {
      *(a1 + 424) = 1;
    }

    ++*(a1 + 432);
    *(a1 + 436) = 0;
    v20 = *(a1 + 344);
    if (v20)
    {
      sub_181910730(v20, "out of memory");
      for (j = *(a1 + 344); ; ++*(j + 52))
      {
        *(j + 24) = 7;
        j = *(j + 216);
        if (!j)
        {
          break;
        }
      }
    }
  }

  return v9;
}

int sqlite3_get_table(sqlite3 *db, const char *zSql, char ***pazResult, int *pnRow, int *pnColumn, char **pzErrmsg)
{
  if (pazResult)
  {
    *pazResult = 0;
  }

  if (pnColumn)
  {
    *pnColumn = 0;
  }

  if (pnRow)
  {
    *pnRow = 0;
  }

  if (pzErrmsg)
  {
    *pzErrmsg = 0;
  }

  if (!db)
  {
    v7 = "NULL";
    goto LABEL_20;
  }

  v6 = *(db + 113);
  if (v6 == 186)
  {
LABEL_13:
    v7 = "unopened";
LABEL_20:
    sqlite3_log(21, "API call with %s database connection pointer", v7);
    goto LABEL_21;
  }

  if (v6 != 118)
  {
    if (v6 != 109)
    {
      v7 = "invalid";
      goto LABEL_20;
    }

    goto LABEL_13;
  }

  if (!pazResult)
  {
LABEL_21:

    return sub_1819012D0(162570);
  }

  v27 = 0uLL;
  v28 = xmmword_181A1FD60;
  v29 = 0;
  if (sqlite3_initialize() || (v15 = sub_181902484(160, 0x10040436913F5), (*&v27 = v15) == 0))
  {
LABEL_17:
    result = 7;
    *(db + 20) = 7;
    return result;
  }

  *v15 = 0;
  v16 = sqlite3_exec(db, zSql, sub_1818D10D4, &v27, pzErrmsg);
  *v27 = HIDWORD(v28);
  if (v16 == 4)
  {
    sqlite3_free_table((v27 + 8));
    v17 = *(&v27 + 1);
    v18 = db;
    if (!*(&v27 + 1))
    {
      goto LABEL_42;
    }

    if (!pzErrmsg)
    {
LABEL_36:
      v21 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v17);
        --qword_1ED456A90;
        off_1ED452EB0(v17);
        v17 = xmmword_1ED456AF0;
        v18 = db;
        if (!xmmword_1ED456AF0)
        {
          goto LABEL_42;
        }

        v21 = &xmmword_1ED452F28;
      }

      (*v21)(v17);
      v18 = db;
LABEL_42:
      result = v29;
      *(v18 + 20) = v29;
      return result;
    }

    v19 = *pzErrmsg;
    if (*pzErrmsg)
    {
      v20 = &off_1ED452EB0;
      if (!dword_1ED452E80)
      {
LABEL_34:
        (*v20)(v19);
        goto LABEL_35;
      }

      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v19);
      --qword_1ED456A90;
      off_1ED452EB0(v19);
      v19 = xmmword_1ED456AF0;
      if (xmmword_1ED456AF0)
      {
        v20 = &xmmword_1ED452F28;
        goto LABEL_34;
      }
    }

LABEL_35:
    *pzErrmsg = sqlite3_mprintf("%s", *(&v27 + 1));
    v17 = *(&v27 + 1);
    v18 = db;
    if (!*(&v27 + 1))
    {
      goto LABEL_42;
    }

    goto LABEL_36;
  }

  v22 = *(&v27 + 1);
  if (*(&v27 + 1))
  {
    v23 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      v24 = v16;
      goto LABEL_50;
    }

    v24 = v16;
    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v22);
    --qword_1ED456A90;
    off_1ED452EB0(v22);
    v22 = xmmword_1ED456AF0;
    v16 = v24;
    if (xmmword_1ED456AF0)
    {
      v23 = &xmmword_1ED452F28;
LABEL_50:
      (*v23)(v22);
      v16 = v24;
    }
  }

  if (v16)
  {
    v25 = v16;
    sqlite3_free_table((v27 + 8));
    return v25;
  }

  v26 = v27;
  if (v28 > HIDWORD(v28))
  {
    v26 = sub_18190287C(v27, 8 * HIDWORD(v28), 0x10040436913F5);
    if (!v26)
    {
      sqlite3_free_table((v27 + 8));
      goto LABEL_17;
    }
  }

  *pazResult = (v26 + 8);
  if (pnColumn)
  {
    *pnColumn = DWORD2(v28);
  }

  result = 0;
  if (pnRow)
  {
    *pnRow = DWORD1(v28);
  }

  return result;
}

uint64_t sub_1818CE2C0(uint64_t ***a1, uint64_t a2, __int16 a3)
{
  result = *(a1 + 5);
  v7 = *(a1 + 6);
  if (result < v7)
  {
LABEL_4:
    v14 = a1[4];
    *(a1 + 5) = result + 1;
    v15 = &v14[7 * result];
    if ((a3 & 2) == 0)
    {
      *(a1 + 7) = result + 1;
    }

    if (!a2)
    {
      *(v15 + 8) = 1;
LABEL_10:
      *(v15 + 9) = a3;
      *v15 = a2;
      v15[1] = a1;
      *(v15 + 20) = 0u;
      *(v15 + 36) = 0u;
      *(v15 + 13) = 0;
      return result;
    }

    if ((*(a2 + 6) & 8) == 0)
    {
      v16 = 1;
      goto LABEL_30;
    }

    v17 = *(a2 + 44);
    if (v17 >= 8)
    {
      v18 = 40;
      if (v17 >= 0x100)
      {
        v19 = *(a2 + 44);
        do
        {
          v18 += 40;
          v17 = v19 >> 4;
          v20 = v19 > 0xFFF;
          v19 >>= 4;
        }

        while (v20);
      }

      if (v17 < 0x10)
      {
        LOBYTE(v21) = v17;
      }

      else
      {
        do
        {
          v18 += 10;
          v21 = v17 >> 1;
          v20 = v17 > 0x1F;
          v17 >>= 1;
        }

        while (v20);
      }
    }

    else
    {
      if (v17 < 2)
      {
        v16 = -270;
        goto LABEL_30;
      }

      v18 = 40;
      do
      {
        v18 -= 10;
        LOBYTE(v21) = 2 * v17;
        v22 = v17 >= 4;
        v17 *= 2;
      }

      while (!v22);
    }

    v16 = v18 + word_181A27AA2[v21 & 7] - 280;
LABEL_30:
    *(v15 + 8) = v16;
    while (1)
    {
      v24 = *(a2 + 4);
      if ((v24 & 0x82000) == 0)
      {
        goto LABEL_10;
      }

      if ((v24 & 0x80000) != 0)
      {
        v23 = (*(a2 + 32) + 8);
      }

      else
      {
        if (*a2 != 114)
        {
          goto LABEL_10;
        }

        v23 = (a2 + 16);
      }

      a2 = *v23;
      if (!*v23)
      {
        goto LABEL_10;
      }
    }
  }

  v8 = a1[4];
  v9 = *a1;
  v10 = ***a1;
  v11 = 112 * v7;
  v12 = sub_181929E8C(v10, 112 * v7 + 16, 0x1020040EDED9539);
  if (v12)
  {
    *v12 = *(v9 + 88);
    v12[1] = v11;
    *(v9 + 88) = v12;
    v13 = (v12 + 2);
    a1[4] = v13;
    memcpy(v13, v8, 56 * *(a1 + 5));
    result = *(a1 + 5);
    *(a1 + 6) *= 2;
    goto LABEL_4;
  }

  a1[4] = 0;
  if (a2 && (a3 & 1) != 0)
  {
    sub_1819439E0(v10, a2);
  }

  result = 0;
  a1[4] = v8;
  return result;
}

void sub_1818CE4CC(int *result, uint64_t ***a2, uint64_t a3)
{
  v381[1] = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v380[0] = 0;
  v379 = 0;
  v378 = 0;
  v4 = **v3;
  if (*(v4 + 103))
  {
    return;
  }

  v6 = a2;
  v376 = *v3;
  v377 = v3;
  v8 = &a2[4][7 * a3];
  v9 = (v3 + 74);
  v10 = *v8;
  *(v3 + 148) = 0;
  v11 = v10[2];
  if (!v11)
  {
LABEL_15:
    v13 = 0;
    goto LABEL_16;
  }

  if (*v11 != 168 || (*(v11 + 1) & 0x20) != 0)
  {
    if ((*(v11 + 1) & 0x810000) == 0)
    {
      v13 = sub_1819725E8(v3 + 148, v11);
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v14 = *(v11 + 11);
  if (*(v3 + 150) == v14)
  {
    v13 = 1;
    goto LABEL_16;
  }

  v15 = *(v3 + 149);
  if (v15 < 2)
  {
    goto LABEL_15;
  }

  v16 = v3 + 151;
  v17 = 1;
  while (1)
  {
    v18 = *v16++;
    if (v18 == v14)
    {
      break;
    }

    if (v15 == ++v17)
    {
      goto LABEL_15;
    }
  }

  v13 = 1 << v17;
LABEL_16:
  v19 = *v10;
  v373 = v4;
  v374 = result;
  if (v19 != 50)
  {
    v28 = v10[3];
    if (!v28)
    {
      v31 = 0;
      v22 = v377;
      goto LABEL_56;
    }

    v29 = *v28 == 168 && (*(v28 + 1) & 0x20) == 0;
    v22 = v377;
    if (v29)
    {
      v40 = *(v28 + 11);
      if (v377[150] == v40)
      {
        v31 = 1;
        goto LABEL_56;
      }

      v42 = v377[149];
      if (v42 >= 2)
      {
        v43 = (v377 + 151);
        v44 = 1;
        while (1)
        {
          v45 = *v43++;
          if (v45 == v40)
          {
            break;
          }

          if (v42 == ++v44)
          {
            goto LABEL_55;
          }
        }

        v31 = 1 << v44;
LABEL_56:
        v8[5] = v31;
        v46 = *(v10 + 1);
        if (v10[2])
        {
          v47 = (v46 & 0x41000) == 0;
        }

        else
        {
          v47 = 0;
        }

        if (v47 && !v10[4])
        {
          v51 = v31 | v13;
          if (!*v9)
          {
            goto LABEL_83;
          }
        }

        else
        {
          if (*v10 != 168 || (*(v10 + 1) & 0x20) != 0)
          {
            if ((v46 & 0x810000) == 0)
            {
              v49 = v13;
              v50 = sub_1819725E8(v9, v10);
              v22 = v377;
              v13 = v49;
              v51 = v50;
              if (!*v9)
              {
                goto LABEL_83;
              }

              goto LABEL_82;
            }

LABEL_76:
            v51 = 0;
            if (!*v9)
            {
              goto LABEL_83;
            }

            goto LABEL_82;
          }

          v52 = *(v10 + 11);
          if (v22[150] == v52)
          {
            v51 = 1;
            if (!*v9)
            {
              goto LABEL_83;
            }

            goto LABEL_82;
          }

          v53 = v22[149];
          if (v53 < 2)
          {
            goto LABEL_76;
          }

          v54 = (v22 + 151);
          v55 = 1;
          while (1)
          {
            v56 = *v54++;
            if (v56 == v52)
            {
              break;
            }

            if (v53 == ++v55)
            {
              goto LABEL_76;
            }
          }

          v51 = 1 << v55;
          if (!*v9)
          {
            goto LABEL_83;
          }
        }

LABEL_82:
        *(v8 + 9) |= 0x1000u;
        goto LABEL_83;
      }
    }

    else if ((*(v28 + 1) & 0x810000) == 0)
    {
      v30 = v13;
      v31 = sub_1819725E8(v9, v28);
      v22 = v377;
      v13 = v30;
      goto LABEL_56;
    }

LABEL_55:
    v31 = 0;
    goto LABEL_56;
  }

  v20 = v13;
  v21 = sub_18195B27C(v376, v10);
  v22 = v377;
  if (v21)
  {
    return;
  }

  v23 = v10[4];
  v369 = v6;
  if ((*(v10 + 5) & 0x10) != 0)
  {
    v24 = v9;
    v41 = sub_181971618(v9, v23);
    v22 = v377;
    v27 = v41;
    v13 = v20;
  }

  else
  {
    v13 = v20;
    v24 = v9;
    if (v23)
    {
      v25 = *v23;
      if (*v23 >= 1)
      {
        v26 = 0;
        v27 = 0;
        while (1)
        {
          v33 = v23[3 * v26 + 1];
          if (v33)
          {
            if (*v33 == 168 && (*(v33 + 1) & 0x20) == 0)
            {
              v35 = *(v33 + 11);
              if (v22[150] == v35)
              {
                v32 = 1;
                goto LABEL_31;
              }

              v36 = v22[149];
              if (v36 >= 2)
              {
                v37 = (v377 + 151);
                v38 = 1;
                while (1)
                {
                  v39 = *v37++;
                  if (v39 == v35)
                  {
                    break;
                  }

                  if (v36 == ++v38)
                  {
                    goto LABEL_30;
                  }
                }

                v32 = 1 << v38;
                goto LABEL_31;
              }
            }

            else if ((*(v33 + 1) & 0x810000) == 0)
            {
              v32 = sub_1819725E8(v9, v33);
              v22 = v377;
              v13 = v20;
              v25 = *v23;
              goto LABEL_31;
            }
          }

LABEL_30:
          v32 = 0;
LABEL_31:
          v27 |= v32;
          if (++v26 >= v25)
          {
            goto LABEL_81;
          }
        }
      }
    }

    v27 = 0;
  }

LABEL_81:
  v8[5] = v27;
  v51 = v27 | v13;
  v9 = v24;
  v6 = v369;
  result = v374;
  if (*v9)
  {
    goto LABEL_82;
  }

LABEL_83:
  v57 = *(v10 + 1);
  if ((v57 & 3) == 0)
  {
LABEL_87:
    v368 = 0;
LABEL_98:
    v371 = a3;
    v372 = a3;
    v8[6] = v51;
    v8[3] = -1;
    *(v8 + 10) = 0;
    v367 = v9;
    if (v19 <= 0x3A && (v19 > 0x35 || v19 == 45 || (v19 & 0x3E) == 0x32))
    {
      for (i = v10[2]; i; i = *(i + 2))
      {
        if ((i[5] & 0x20) == 0)
        {
          break;
        }
      }

      for (j = v10[3]; j; j = *(j + 2))
      {
        if ((j[5] & 0x20) == 0)
        {
          break;
        }
      }

      if ((v8[5] & v13) != 0)
      {
        v71 = 2048;
      }

      else
      {
        v71 = 0x3FFF;
      }

      v72 = *(v8 + 9);
      v73 = __OFSUB__(v72, 1);
      v74 = v72 - 1;
      if (v74 < 0 == v73)
      {
        i = *(*(i + 4) + 24 * v74 + 8);
      }

      v365 = v13;
      v75 = *i;
      v76 = i;
      if (v19 - 55 <= 3 && v75 == 177)
      {
        v76 = *(*(i + 4) + 8);
        v75 = *v76;
      }

      if (v75 == 168)
      {
        v77 = *(v76 + 44);
        v381[0] = v77;
      }

      else
      {
        v81 = *v374;
        if (v81 < 1)
        {
          goto LABEL_163;
        }

        v82 = 0;
        v22 = v377;
        while (1)
        {
          v83 = *(*&v374[18 * v82 + 6] + 16);
          if (v83)
          {
            break;
          }

LABEL_136:
          if (++v82 == v81)
          {
            goto LABEL_163;
          }
        }

        while (!*(v83 + 80))
        {
          v83 = *(v83 + 40);
          if (!v83)
          {
            goto LABEL_136;
          }
        }

        v97 = sub_181972B58(v374, v381, v76, v82);
        v22 = v377;
        if (!v97)
        {
LABEL_163:
          if (v19 == 45)
          {
            *(v8 + 9) |= 0x800u;
          }

          if (j)
          {
            v99 = *j;
            v100 = j;
            if (v19 - 55 <= 3 && v99 == 177)
            {
              v100 = *(*(j + 4) + 8);
              v99 = *v100;
            }

            if (v99 == 168)
            {
              v381[0] = *(v100 + 44);
            }

            else
            {
              v101 = *v374;
              if (v101 < 1)
              {
                goto LABEL_188;
              }

              v102 = 0;
              v22 = v377;
              while (1)
              {
                v103 = *(*&v374[18 * v102 + 6] + 16);
                if (v103)
                {
                  break;
                }

LABEL_173:
                if (++v102 == v101)
                {
                  goto LABEL_188;
                }
              }

              while (!*(v103 + 80))
              {
                v103 = *(v103 + 40);
                if (!v103)
                {
                  goto LABEL_173;
                }
              }

              v104 = sub_181972B58(v374, v381, v100, v102);
              v22 = v377;
              if (!v104)
              {
                goto LABEL_188;
              }
            }

            if ((j[4] & 0x20) == 0)
            {
              if ((*(v8 + 7) & 0x80000000) != 0)
              {
                v115 = 0;
                v106 = v10;
                v116 = v8;
              }

              else
              {
                if (v10)
                {
                  v105 = sub_1818C7FEC(v373, v10, 0, 0);
                  v106 = v105;
                  if (*(v373 + 103))
                  {
                    if (v105)
                    {
                      sub_1819439E0(v373, v105);
                    }

                    return;
                  }
                }

                else
                {
                  if (*(v373 + 103))
                  {
                    return;
                  }

                  v106 = 0;
                }

                v138 = sub_1818CE2C0(v6, v106, 3);
                if (!v138)
                {
                  return;
                }

                v139 = v6[4];
                v8 = &v139[7 * v138];
                *(v8 + 6) = a3;
                v140 = &v139[7 * a3];
                *(v8 + 8) = *(v140 + 8);
                ++*(v140 + 22);
                if (v19 == 45)
                {
                  *(v8 + 9) |= 0x800u;
                }

                v116 = &v139[7 * a3];
                *(v116 + 9) |= 8u;
                if (sub_181971C28(v376, v106))
                {
                  *(v116 + 10) |= 0x800u;
                  v115 = 2048;
                }

                else
                {
                  v115 = 0;
                }
              }

              sub_181971DD0(v376, v106);
              *(v8 + 28) = v381[0];
              v8[5] = (v368 | v365);
              v8[6] = v51;
              v117 = v106->u8[0];
              if (v117 == 51)
              {
                v118 = 256;
              }

              else
              {
                v118 = 128;
              }

              if (v117 == 50)
              {
                v118 = 1;
              }

              v119 = v117 >= 0x36;
              v120 = 2 << (v117 - 54);
              if (!v119)
              {
                LOWORD(v120) = v118;
              }

              *(v8 + 10) = (v120 + v115) & v71;
              v8 = v116;
              goto LABEL_266;
            }
          }

LABEL_188:
          if (v19 == 51)
          {
            v107 = *(v10 + 1);
            v65 = v373;
            if ((v107 & 1) == 0)
            {
              while (1)
              {
                v108 = *i;
                if ((v108 - 173) >= 2)
                {
                  break;
                }

                i = *(i + 2);
              }

              if (v108 == 176)
              {
                v108 = i[2];
              }

              if ((v108 - 154) < 3 || v108 == 118 || v108 == 168 && (i[6] & 0x20) == 0 && (v109 = *(i + 9)) != 0 && ((v110 = *(i + 12), (v110 & 0x80000000) != 0) || (v111 = *(v109 + 8)) == 0 || v110 >= *(v109 + 54) || (*(v111 + 16 * v110 + 8) & 0xF) != 0))
              {
                *v10 = -85;
                v10[1] = "false";
                *(v10 + 1) = v107 | 0x20000000;
                v8[6] = 0;
                *(v8 + 10) = 0;
              }
            }
          }

          else
          {
            v65 = v373;
          }

          goto LABEL_268;
        }

        v77 = v381[0];
      }

      *(v8 + 28) = v77;
      if (v19 == 51)
      {
        v98 = 256;
      }

      else
      {
        v98 = 128;
      }

      if (v19 == 50)
      {
        v98 = 1;
      }

      if (v19 >= 0x36)
      {
        v98 = 2 << (v19 - 54);
      }

      *(v8 + 10) = v98 & v71;
      goto LABEL_163;
    }

    v64 = *v10;
    if (v64 > 0x33)
    {
      v65 = v373;
      if (v64 == 52)
      {
        v89 = v10[2];
        if (*v89 == 168 && (v57 & 1) == 0 && (*(v89 + 12) & 0x80000000) == 0)
        {
          v90 = sub_1818C7FEC(v373, v10[2], 0, 0);
          v91 = sub_181929E8C(v373, 0x50uLL, 0x1032040B79D87BDLL);
          if (v91)
          {
            *(v91 + 2) = 0u;
            *(v91 + 3) = 0u;
            *(v91 + 4) = 0u;
            *v91 = 0u;
            *(v91 + 1) = 0u;
            *v91 = 122;
            *(v91 + 26) = -1;
            *(v91 + 10) = 1;
          }

          v92 = sub_18194F098(v376, 55, v90, v91);
          v93 = sub_1818CE2C0(v6, v92, 131);
          v22 = v377;
          if (v93)
          {
            v94 = &v6[4][7 * v93];
            *(v94 + 40) = 0;
            *(v94 + 28) = *(v89 + 44);
            *(v94 + 20) = 4;
            v95 = v6[4];
            v96 = &v95[7 * v93];
            *(v96 + 6) = a3;
            v8 = &v95[7 * a3];
            *(v96 + 8) = *(v8 + 8);
            ++*(v8 + 22);
            *(v8 + 9) |= 8u;
            *(v94 + 48) = v8[6];
          }
        }

        goto LABEL_268;
      }

      if (v64 == 172)
      {
        if (*(v6 + 16) == 44)
        {
          if (sub_181971ECC(v376, v10, v380, &v379, &v378))
          {
            v78 = *(v10[4] + 32);
            v79 = v380[0];
            if (v380[0])
            {
              v80 = sub_1818C7FEC(v373, v380[0], 0, 0);
            }

            else
            {
              v80 = 0;
            }

            v141 = v378;
            if (v378)
            {
              if (!*(*v376 + 103))
              {
                *(v8 + 9) |= 0x400u;
                v142 = *(v79 + 1);
                v143 = *v142;
                if (*v142)
                {
                  v144 = 0;
                  do
                  {
                    *v142 = v143 & (~byte_181A204C8[v143] | 0xDF);
                    *(*(v80 + 1) + v144++) = byte_181A20298[v143];
                    v142 = (v144 + *(v79 + 1));
                    v143 = *v142;
                  }

                  while (*v142);
                }
              }
            }

            if (!*(v373 + 103))
            {
              v145 = *(v80 + 1);
              if (v145)
              {
                v146 = strlen(*(v80 + 1)) & 0x3FFFFFFF;
              }

              else
              {
                v146 = 0;
              }

              v318 = v145 + v146;
              v321 = *(v318 - 1);
              v319 = (v318 - 1);
              v320 = v321;
              if (v141)
              {
                if (v320 == 64)
                {
                  v379 = 0;
                }

                LODWORD(v320) = byte_181A20298[v320];
                *v319 = v320;
              }

              if (v320 == 191)
              {
                while (v319 > *(v80 + 1))
                {
                  *v319 = 0x80;
                  v322 = *--v319;
                  LOBYTE(v320) = v322;
                  if (v322 != 191)
                  {
                    goto LABEL_609;
                  }
                }

                LOBYTE(v320) = -65;
              }

LABEL_609:
              *v319 = v320 + 1;
            }

            if (v141)
            {
              v334 = "NOCASE";
            }

            else
            {
              v334 = "BINARY";
            }

            if (v78)
            {
              v335 = sub_1818C7FEC(v373, v78, 0, 0);
            }

            else
            {
              v335 = 0;
            }

            v336 = sub_18195F910(v376, v335, v334);
            v337 = sub_18194F098(v376, 58, v336, v79);
            if (v337 && (*(v10 + 1) & 3) != 0)
            {
              *(v337 + 1) |= *(v10 + 1) & 3;
              *(v337 + 14) = *(v10 + 14);
            }

            v338 = sub_1818CE2C0(v6, v337, 259);
            if (v78)
            {
              v339 = sub_1818C7FEC(v373, v78, 0, 0);
            }

            else
            {
              v339 = 0;
            }

            v340 = sub_18195F910(v376, v339, v334);
            v341 = sub_18194F098(v376, 57, v340, v80);
            if (v341 && (*(v10 + 1) & 3) != 0)
            {
              *(v341 + 1) |= *(v10 + 1) & 3;
              *(v341 + 14) = *(v10 + 14);
            }

            v342 = sub_1818CE2C0(v6, v341, 259);
            sub_1818CE4CC(v374, v6, v338);
            sub_1818CE4CC(v374, v6, v342);
            v343 = v6[4];
            v65 = v373;
            v8 = &v343[7 * a3];
            if (v379)
            {
              v344 = &v343[7 * v338];
              *(v344 + 6) = a3;
              v345 = &v343[7 * a3];
              v346 = *(v345 + 8);
              *(v344 + 8) = v346;
              LOBYTE(v344) = *(v345 + 22);
              v347 = &v343[7 * v342];
              *(v347 + 6) = a3;
              *(v347 + 8) = v346;
              *(v345 + 22) = v344 + 2;
            }
          }

          goto LABEL_267;
        }

        goto LABEL_268;
      }

LABEL_269:
      if (v64 == 54)
      {
LABEL_272:
        v151 = v10[2];
        v152 = *v151;
        if (v152 == 176)
        {
          v152 = v151[2];
        }

        v153 = v10[2];
        if (v152 != 177)
        {
          if (v152 != 139)
          {
            goto LABEL_327;
          }

          v153 = *(v151 + 4);
        }

        v154 = **(v153 + 32);
        if (v154 >= 2)
        {
          v155 = v10[3];
          v156 = *v155;
          if (v156 == 176)
          {
            v156 = v155[2];
          }

          v157 = v10[3];
          if (v156 != 177)
          {
            if (v156 != 139)
            {
              goto LABEL_327;
            }

            v157 = *(v155 + 4);
          }

          if (**(v157 + 32) == v154 && ((v151[5] & 0x10) == 0 || (v155[5] & 0x10) == 0) && *(v6 + 16) == 44)
          {
            v158 = 0;
            v159 = 8;
            v160 = v376;
            while (1)
            {
              v162 = v10[2];
              v163 = *v162;
              if (v163 == 177)
              {
                v166 = *(v162 + 4);
                v165 = *(v166 + v159);
                if (*(v160 + 302) >= 2u)
                {
                  *(v166 + v159) = 0;
                }

                else if (v165)
                {
                  goto LABEL_301;
                }
              }

              else
              {
                if (v163 != 139)
                {
                  v165 = v10[2];
LABEL_301:
                  v165 = sub_1818C7FEC(*v160, v165, 0, 0);
                  goto LABEL_303;
                }

                v164 = sub_181929E8C(*v160, 0x50uLL, 0x1032040B79D87BDLL);
                v165 = v164;
                if (v164)
                {
                  *(v164 + 2) = 0u;
                  *(v164 + 3) = 0u;
                  *(v164 + 4) = 0u;
                  *v164 = 0u;
                  *(v164 + 1) = 0u;
                  *v164 = -78;
                  *(v164 + 26) = -1;
                  v164[10] = 1;
                  if (*(*v160 + 148) <= 0)
                  {
                    sub_181910730(v160, "Expression tree is too large (maximum depth %d)", *(*v160 + 148));
                  }

                  v165[1] |= 0x20000u;
                  v165[11] = v154;
                  v165[12] = v158;
                  *(v165 + 2) = v162;
                }
              }

LABEL_303:
              v167 = v10[3];
              v168 = *v167;
              if (v168 != 177)
              {
                if (v168 == 139)
                {
                  v169 = sub_181929E8C(*v160, 0x50uLL, 0x1032040B79D87BDLL);
                  v170 = v169;
                  if (v169)
                  {
                    *(v169 + 2) = 0u;
                    *(v169 + 3) = 0u;
                    *(v169 + 4) = 0u;
                    *v169 = 0u;
                    *(v169 + 1) = 0u;
                    *v169 = -78;
                    *(v169 + 26) = -1;
                    v169[10] = 1;
                    if (*(*v160 + 148) <= 0)
                    {
                      v357 = *(*v160 + 148);
                      v171 = v160;
                      v172 = v170;
                      sub_181910730(v171, "Expression tree is too large (maximum depth %d)", v357);
                      v170 = v172;
                      v160 = v376;
                    }

                    v170[1] |= 0x20000u;
                    v170[11] = v154;
                    v170[12] = v158;
                    *(v170 + 2) = v167;
                  }

                  goto LABEL_315;
                }

                v170 = v10[3];
LABEL_313:
                v170 = sub_1818C7FEC(*v160, v170, 0, 0);
                goto LABEL_315;
              }

              v173 = *(v167 + 4);
              v170 = *(v173 + v159);
              if (*(v160 + 302) >= 2u)
              {
                *(v173 + v159) = 0;
              }

              else if (v170)
              {
                goto LABEL_313;
              }

LABEL_315:
              v174 = sub_18194F098(v160, *v10, v165, v170);
              if (v174 && (*(v10 + 1) & 3) != 0)
              {
                *(v174 + 1) |= *(v10 + 1) & 3;
                *(v174 + 14) = *(v10 + 14);
              }

              v161 = sub_1818CE2C0(v6, v174, 32769);
              sub_1818CE4CC(v374, v6, v161);
              ++v158;
              v159 += 24;
              if (v154 == v158)
              {
                v283 = &v6[4][7 * v372];
                *(v283 + 18) |= 6u;
                *(v283 + 20) = 0x2000;
                goto LABEL_605;
              }
            }
          }
        }

LABEL_327:
        if (*(v6 + 16) != 44)
        {
          goto LABEL_605;
        }

        if (v64 == 172)
        {
          v180 = v10[4];
          if (v180 && *v180 == 2)
          {
            v181 = *(v180 + 32);
            if (*v181 == 168 && *(*(v181 + 9) + 63) == 1)
            {
              v182 = "match";
              v183 = v10[1];
              v184 = &off_1E6A27AC8;
              for (k = v183; ; ++k)
              {
                if (*k == *v182)
                {
                  if (!*k)
                  {
LABEL_356:
                    v198 = *(v184 + 8);
                    v189 = *(v180 + 8);
                    v190 = 1;
                    goto LABEL_368;
                  }
                }

                else if (byte_181A20298[*k] != byte_181A20298[*v182])
                {
                  v186 = "glob";
                  v187 = v10[1];
                  v184 = &off_1E6A27AD8;
                  while (1)
                  {
                    if (*v187 == *v186)
                    {
                      if (!*v187)
                      {
                        goto LABEL_356;
                      }
                    }

                    else if (byte_181A20298[*v187] != byte_181A20298[*v186])
                    {
                      v323 = "like";
                      v324 = v10[1];
                      v184 = &off_1E6A27AE8;
                      while (1)
                      {
                        if (*v324 == *v323)
                        {
                          if (!*v324)
                          {
                            goto LABEL_356;
                          }
                        }

                        else if (byte_181A20298[*v324] != byte_181A20298[*v323])
                        {
                          v325 = "regexp";
                          v184 = &off_1E6A27AF8;
                          while (1)
                          {
                            if (*v183 == *v325)
                            {
                              if (!*v183)
                              {
                                goto LABEL_356;
                              }
                            }

                            else if (byte_181A20298[*v183] != byte_181A20298[*v325])
                            {
                              goto LABEL_598;
                            }

                            ++v183;
                            ++v325;
                          }
                        }

                        ++v324;
                        ++v323;
                      }
                    }

                    ++v187;
                    ++v186;
                  }
                }

                ++v182;
              }
            }

LABEL_598:
            v181 = *(v180 + 8);
            if (*v181 == 168)
            {
              v326 = *(v181 + 9);
              if (*(v326 + 63) == 1)
              {
                v380[1] = 0;
                v381[0] = 0;
                v327 = (v326 + 80);
                do
                {
                  v328 = *v327;
                  v329 = *v327;
                  v330 = *v329;
                  v327 = (v329 + 5);
                }

                while (v330 != v65);
                v331 = *(*v328[2] + 144);
                if (v331)
                {
                  v332 = v331();
                  v22 = v377;
                  if (v332 >= 150)
                  {
                    v198 = v332;
                    v189 = *(v180 + 32);
                    v190 = 1;
LABEL_368:
                    v375 = (v22 + 151);
                    while (1)
                    {
                      v206 = v181;
                      if (!v189)
                      {
                        goto LABEL_386;
                      }

                      if (*v189 != 168 || (*(v189 + 1) & 0x20) != 0)
                      {
                        break;
                      }

                      v210 = *(v189 + 11);
                      if (v22[150] == v210)
                      {
                        v209 = 1;
                        if (!v181)
                        {
                          goto LABEL_403;
                        }

                        goto LABEL_387;
                      }

                      v211 = v22[149];
                      if (v211 < 2)
                      {
                        goto LABEL_386;
                      }

                      v212 = v375;
                      v213 = 1;
                      while (1)
                      {
                        v214 = *v212++;
                        if (v214 == v210)
                        {
                          break;
                        }

                        if (v211 == ++v213)
                        {
                          goto LABEL_386;
                        }
                      }

                      v209 = 1 << v213;
                      if (!v181)
                      {
LABEL_403:
                        if (v189)
                        {
                          v222 = sub_1818C7FEC(v65, v189, 0, 0);
                        }

                        else
                        {
                          v222 = 0;
                        }

                        v223 = sub_181929E8C(*v376, 0x50uLL, 0x1032040B79D87BDLL);
                        v224 = v223;
                        if (v223)
                        {
                          *(v223 + 3) = 0u;
                          *(v223 + 4) = 0u;
                          *(v223 + 1) = 0u;
                          *(v223 + 2) = 0u;
                          *v223 = 0u;
                          *v223 = 47;
                          *(v223 + 26) = -1;
                          if (v222)
                          {
                            v223[3] = v222;
                            *(v223 + 1) |= v222[1] & 0x400208;
                            v225 = v222[10] + 1;
                          }

                          else
                          {
                            v225 = 1;
                          }

                          *(v223 + 10) = v225;
                          if (*(*v376 + 148) < v225)
                          {
                            sub_181910730(v376, "Expression tree is too large (maximum depth %d)", *(*v376 + 148));
                          }

                          if (*(v10 + 4))
                          {
                            *(v224 + 4) |= 1u;
                            *(v224 + 56) = *(v10 + 14);
                          }
                        }

                        else if (v222)
                        {
                          sub_1819439E0(*v376, v222);
                        }

                        v200 = sub_1818CE2C0(v6, v224, 3);
                        v201 = &v6[4][7 * v200];
                        *(v201 + 40) = v209;
                        *(v201 + 28) = *(v206 + 44);
                        *(v201 + 20) = 64;
                        *(v201 + 23) = v198;
                        v202 = v6[4];
                        v203 = &v202[7 * v200];
                        *(v203 + 6) = v371;
                        v65 = v373;
                        v204 = &v202[7 * v372];
                        *(v203 + 8) = *(v204 + 8);
                        ++*(v204 + 22);
                        *(v204 + 9) |= 8u;
                        *(v201 + 48) = v204[6];
                        v22 = v377;
                        goto LABEL_370;
                      }

LABEL_387:
                      if (*v181 == 168 && (*(v181 + 1) & 0x20) == 0)
                      {
                        v217 = *(v181 + 11);
                        if (v22[150] == v217)
                        {
                          if ((v209 & 1) == 0)
                          {
                            goto LABEL_403;
                          }
                        }

                        else
                        {
                          v218 = v22[149];
                          if (v218 < 2)
                          {
                            goto LABEL_403;
                          }

                          v219 = v375;
                          v220 = 1;
                          while (1)
                          {
                            v221 = *v219++;
                            if (v221 == v217)
                            {
                              break;
                            }

                            if (v218 == ++v220)
                            {
                              goto LABEL_403;
                            }
                          }

                          if (((1 << v220) & v209) == 0)
                          {
                            goto LABEL_403;
                          }
                        }
                      }

                      else
                      {
                        if ((*(v181 + 1) & 0x810000) != 0)
                        {
                          goto LABEL_403;
                        }

                        v216 = sub_1819725E8(v367, v181);
                        v22 = v377;
                        if ((v216 & v209) == 0)
                        {
                          goto LABEL_403;
                        }
                      }

LABEL_370:
                      v181 = v189;
                      v189 = v206;
                      v205 = v190-- <= 1;
                      if (v205)
                      {
                        goto LABEL_605;
                      }
                    }

                    if ((*(v189 + 1) & 0x810000) == 0)
                    {
                      v208 = sub_1819725E8(v367, v189);
                      v22 = v377;
                      v209 = v208;
                      if (!v181)
                      {
                        goto LABEL_403;
                      }

                      goto LABEL_387;
                    }

LABEL_386:
                    v209 = 0;
                    if (!v181)
                    {
                      goto LABEL_403;
                    }

                    goto LABEL_387;
                  }
                }
              }
            }
          }
        }

        else if (v64 <= 0x35 && ((1 << v64) & 0x30400000000000) != 0)
        {
          v189 = v10[2];
          v188 = v10[3];
          v190 = *v189 == 168 && *(*(v189 + 9) + 63) == 1;
          if (v188)
          {
            if (*v188 == 168 && *(*(v188 + 9) + 63) == 1)
            {
              ++v190;
              v181 = v10[3];
            }

            else
            {
              v181 = v10[2];
              v189 = v10[3];
            }
          }

          else
          {
            v181 = v10[2];
            v189 = 0;
          }

          v199 = v64 - 46;
          v198 = (v199 & 0xF8) != 0 ? 0 : 0x4446000000000045uLL >> (8 * v199);
          if (v190)
          {
            goto LABEL_368;
          }
        }

LABEL_605:
        v333 = &v6[4][7 * v372];
        *(v333 + 40) |= v368;
        return;
      }

      if (v64 != 50)
      {
        if (v64 != 45)
        {
          goto LABEL_327;
        }

        goto LABEL_272;
      }

      if (*(v8 + 9))
      {
        goto LABEL_327;
      }

      v175 = v10[2];
      if (*v175 != 177)
      {
        goto LABEL_327;
      }

      if ((*(v10 + 5) & 0x10) == 0)
      {
        goto LABEL_327;
      }

      v176 = v10[4];
      if (*(v176 + 80))
      {
        if ((*(v176 + 5) & 2) == 0)
        {
          goto LABEL_327;
        }
      }

      if (*(v176 + 112) || *(v6 + 16) != 44)
      {
        goto LABEL_327;
      }

      v177 = 177;
      v178 = 1;
      v179 = v371;
      while (1)
      {
        v196 = v179;
        if (v177 == 177)
        {
          goto LABEL_348;
        }

        if (v177 == 139)
        {
          break;
        }

        v197 = 1;
LABEL_350:
        if (v178 - 1 >= v197)
        {
          goto LABEL_605;
        }

        v191 = sub_1818CE2C0(v6, v10, 32770);
        v192 = v191;
        HIDWORD(v6[4][7 * v191 + 4]) = v178;
        sub_1818CE4CC(v374, v6, v191);
        v193 = v6[4];
        v194 = &v193[7 * v192];
        v179 = v196;
        *(v194 + 6) = v196;
        v195 = &v193[7 * v372];
        *(v194 + 8) = *(v195 + 8);
        ++*(v195 + 22);
        v175 = v10[2];
        v177 = *v175;
        ++v178;
        if (v177 == 176)
        {
          v177 = v175[2];
        }
      }

      v175 = *(v175 + 4);
LABEL_348:
      v197 = **(v175 + 4);
      goto LABEL_350;
    }

    v65 = v373;
    if (v64 != 43)
    {
      if (v64 == 49)
      {
        if (*(v6 + 16) == 44)
        {
          v66 = v10[4];
          v67 = v10[2];
          if (v67)
          {
            v68 = sub_1818C7FEC(v373, v67, 0, 0);
          }

          else
          {
            v68 = 0;
          }

          v121 = *(v66 + 8);
          if (v121)
          {
            v122 = sub_1818C7FEC(v373, v121, 0, 0);
          }

          else
          {
            v122 = 0;
          }

          v123 = sub_18194F098(v376, 58, v68, v122);
          if (v123 && (*(v10 + 1) & 3) != 0)
          {
            *(v123 + 1) |= *(v10 + 1) & 3;
            *(v123 + 14) = *(v10 + 14);
          }

          v124 = sub_1818CE2C0(v6, v123, 3);
          v125 = v124;
          sub_1818CE4CC(v374, v6, v124);
          v126 = v6[4];
          v127 = &v126[7 * v125];
          *(v127 + 6) = a3;
          v128 = &v126[7 * a3];
          *(v127 + 8) = *(v128 + 8);
          ++*(v128 + 22);
          v129 = v10[2];
          if (v129)
          {
            v130 = sub_1818C7FEC(v373, v129, 0, 0);
          }

          else
          {
            v130 = 0;
          }

          v131 = *(v66 + 32);
          if (v131)
          {
            v132 = sub_1818C7FEC(v373, v131, 0, 0);
          }

          else
          {
            v132 = 0;
          }

          v133 = sub_18194F098(v376, 56, v130, v132);
          if (v133 && (*(v10 + 1) & 3) != 0)
          {
            *(v133 + 1) |= *(v10 + 1) & 3;
            *(v133 + 14) = *(v10 + 14);
          }

          v134 = sub_1818CE2C0(v6, v133, 3);
          v135 = v134;
          sub_1818CE4CC(v374, v6, v134);
          v136 = v6[4];
          v137 = &v136[7 * v135];
          *(v137 + 6) = a3;
          v8 = &v136[7 * a3];
          *(v137 + 8) = *(v8 + 8);
          ++*(v8 + 22);
          goto LABEL_267;
        }

LABEL_268:
        v64 = *v10;
        goto LABEL_269;
      }

      goto LABEL_269;
    }

    v366 = *v6;
    v84 = **v6;
    v85 = *v84;
    v86 = a3;
    v87 = &v6[4][7 * a3];
    v88 = *v87;
    v364 = *v84;
    v370 = v6;
    if (!*v84)
    {
      v112 = sub_181902484(496, 0x1022040838CBA82);
      goto LABEL_256;
    }

    if (*(v85 + 436) <= 0x1EFu)
    {
      if (*(v85 + 432))
      {
        if (*(v85 + 103))
        {
LABEL_257:
          *(v87 + 32) = 0;
          goto LABEL_265;
        }
      }

      else
      {
        ++*(v85 + 452);
      }

      goto LABEL_255;
    }

    v113 = *(v85 + 472);
    if (v113)
    {
      v114 = (v85 + 472);
    }

    else
    {
      v113 = *(v85 + 464);
      if (!v113)
      {
        ++*(v85 + 456);
LABEL_255:
        v112 = sub_18192A080(v85, 496, 0x1022040838CBA82);
LABEL_256:
        v113 = v112;
        if (!v112)
        {
          goto LABEL_257;
        }

        goto LABEL_261;
      }

      v114 = (v85 + 464);
    }

    *v114 = *v113;
    ++*(v85 + 448);
LABEL_261:
    v360 = v84;
    *(v113 + 464) = 0u;
    *(v113 + 480) = 0u;
    *(v113 + 432) = 0u;
    *(v113 + 448) = 0u;
    *(v113 + 400) = 0u;
    *(v113 + 416) = 0u;
    *(v113 + 368) = 0u;
    *(v113 + 384) = 0u;
    *(v113 + 336) = 0u;
    *(v113 + 352) = 0u;
    *(v113 + 304) = 0u;
    *(v113 + 320) = 0u;
    *(v113 + 272) = 0u;
    *(v113 + 288) = 0u;
    *(v113 + 240) = 0u;
    *(v113 + 256) = 0u;
    *(v113 + 208) = 0u;
    *(v113 + 224) = 0u;
    *(v113 + 176) = 0u;
    *(v113 + 192) = 0u;
    *(v113 + 144) = 0u;
    *(v113 + 160) = 0u;
    *(v113 + 112) = 0u;
    *(v113 + 128) = 0u;
    *(v113 + 80) = 0u;
    *(v113 + 96) = 0u;
    *(v113 + 48) = 0u;
    *(v113 + 64) = 0u;
    *(v113 + 16) = 0u;
    *(v113 + 32) = 0u;
    *v113 = 0u;
    *(v87 + 32) = v113;
    *(v87 + 18) |= 0x10u;
    *(v113 + 248) = 0u;
    *(v113 + 232) = 0u;
    *(v113 + 216) = 0u;
    *(v113 + 200) = 0u;
    *(v113 + 184) = 0u;
    *(v113 + 168) = 0u;
    *(v113 + 152) = 0u;
    *(v113 + 136) = 0u;
    *(v113 + 120) = 0u;
    *(v113 + 104) = 0u;
    *(v113 + 88) = 0u;
    *(v113 + 72) = 0u;
    *(v113 + 56) = 0u;
    *(v113 + 40) = 0u;
    *(v113 + 456) = 0u;
    *(v113 + 472) = 0u;
    *(v113 + 424) = 0u;
    *(v113 + 440) = 0u;
    *(v113 + 392) = 0u;
    *(v113 + 408) = 0u;
    *(v113 + 360) = 0u;
    *(v113 + 376) = 0u;
    *(v113 + 328) = 0u;
    *(v113 + 344) = 0u;
    *(v113 + 296) = 0u;
    *(v113 + 312) = 0u;
    *(v113 + 264) = 0u;
    *(v113 + 280) = 0u;
    *(v113 + 17) = 0;
    *v113 = v366;
    *(v113 + 8) = 0;
    *(v113 + 28) = 0;
    *(v113 + 20) = 0x800000000;
    *(v113 + 32) = v113 + 40;
    sub_18196A914(v113, v88, 43);
    v147 = *(v113 + 20);
    if (v147 >= 1)
    {
      v148 = v147 + 1;
      do
      {
        sub_1818CE4CC(result, v113, v148 - 2);
        --v148;
      }

      while (v148 > 1);
    }

    v150 = v364;
    v149 = v366;
    if (*(v364 + 103))
    {
      goto LABEL_265;
    }

    v359 = v88;
    v226 = *(v113 + 20);
    if (v226 <= 0)
    {
      *(v113 + 488) = -1;
      *(v87 + 20) = 512;
      *(v87 + 28) = -1;
      v229 = -1;
      *(v370 + 17) = 1;
      v284 = v359;
      goto LABEL_525;
    }

    v358 = (v364 + 464);
    v227 = *(v113 + 32);
    v361 = (v364 + 472);
    v228 = -1;
    v229 = -1;
    while (1)
    {
      v230 = *(v227 + 20);
      if ((v230 & 0x1FF) != 0)
      {
        v231 = *(v227 + 18);
        if ((v231 & 8) == 0)
        {
          v232 = *(v227 + 28);
          v233 = *(v149 + 150);
          if (v233 == v232)
          {
            v234 = 1;
          }

          else
          {
            v237 = *(v149 + 149);
            if (v237 < 2)
            {
LABEL_435:
              v234 = 0;
            }

            else
            {
              v238 = v366 + 151;
              v239 = 1;
              while (1)
              {
                v240 = *v238++;
                if (v240 == v232)
                {
                  break;
                }

                if (v237 == ++v239)
                {
                  goto LABEL_435;
                }
              }

              v234 = 1 << v239;
            }
          }

          if ((v231 & 2) != 0)
          {
            v241 = *(*(v113 + 32) + 56 * *(v227 + 24) + 28);
            if (v233 == v241)
            {
              v242 = 1;
            }

            else
            {
              v243 = *(v149 + 149);
              if (v243 < 2)
              {
LABEL_445:
                v242 = 0;
              }

              else
              {
                v244 = v366 + 151;
                v245 = 1;
                while (1)
                {
                  v246 = *v244++;
                  if (v246 == v241)
                  {
                    break;
                  }

                  if (v243 == ++v245)
                  {
                    goto LABEL_445;
                  }
                }

                v242 = 1 << v245;
              }
            }

            v234 |= v242;
          }

          v228 &= v234;
          v261 = v234 & v229;
          if ((v230 & 2) != 0)
          {
            v229 = v261;
          }

          else
          {
            v229 = 0;
          }
        }

        goto LABEL_479;
      }

      if (*(v150 + 436) > 0x1E7u)
      {
        break;
      }

      if (!*(v150 + 432))
      {
        ++*(v150 + 452);
LABEL_447:
        v236 = sub_18192A080(v150, 488, 0x102204039E20F80);
        if (v236)
        {
          goto LABEL_448;
        }

        goto LABEL_454;
      }

      if (!*(v150 + 103))
      {
        goto LABEL_447;
      }

LABEL_454:
      v229 = 0;
      v149 = v366;
LABEL_479:
      if (v226 >= 2)
      {
        --v226;
        v227 += 56;
        if (v228)
        {
          continue;
        }
      }

      *(v113 + 488) = v228;
      *(v87 + 20) = 512;
      *(v87 + 28) = -1;
      if (v228)
      {
        v262 = *(v113 + 20);
        *(v370 + 17) = 1;
        if (v262 == 2)
        {
          v263 = 0;
          v264 = *(v113 + 32);
          while (1)
          {
LABEL_485:
            if (*(v264 + 20) == 1024)
            {
              v265 = *(v264 + 32);
              if (v263 >= *(v265 + 20))
              {
                break;
              }

              v266 = *(v265 + 32);
              if (!v266)
              {
                break;
              }

              v267 = v266 + 56 * v263;
            }

            else
            {
              v267 = v264;
              if (v263)
              {
                break;
              }
            }

            v268 = 0;
            ++v263;
            while (*(v264 + 76) == 1024)
            {
              v269 = *(v264 + 88);
              if (v268 >= *(v269 + 20))
              {
                v149 = v366;
                goto LABEL_485;
              }

              v270 = *(v269 + 32);
              v271 = (v270 + 56 * v268);
              if (!v270)
              {
                v149 = v366;
                goto LABEL_485;
              }

LABEL_497:
              if (((v271[9] | *(v267 + 18)) & 0x80) == 0)
              {
                v272 = *(v267 + 20);
                v273 = v271[10];
                if ((v272 & 0x3E) != 0 && (v273 & 0x3E) != 0)
                {
                  v275 = v273 | v272;
                  v276 = ((v273 | v272) & 0xFFE5) == 0 || (v275 & 0xFFD9) == 0;
                  if (v276 && !sub_181959260(0, *(*v267 + 16), *(*v271 + 16), 0xFFFFFFFFLL) && !sub_181959260(0, *(*v267 + 24), *(*v271 + 24), 0xFFFFFFFFLL))
                  {
                    v277 = (v275 & 0x18) != 0 ? 8 : 32;
                    v278 = ((v275 + 63) & v275) != 0 ? v277 : v275;
                    if (*v267)
                    {
                      v279 = sub_1818C7FEC(***v370, *v267, 0, 0);
                      if (v279)
                      {
                        v280 = 53;
                        do
                        {
                          v281 = 2 << (v280++ - 53);
                        }

                        while (v281 != v278);
                        *v279 = v280;
                        v282 = sub_1818CE2C0(v370, v279, 3);
                        sub_1818CE4CC(v374, v370, v282);
                      }
                    }
                  }
                }
              }

              ++v268;
              v264 = *(v113 + 32);
            }

            v271 = (v264 + 56);
            if (!v268)
            {
              goto LABEL_497;
            }

            v149 = v366;
          }
        }
      }

      v86 = v372;
      v284 = v359;
      if (!v229)
      {
        goto LABEL_265;
      }

LABEL_525:
      v285 = 0;
      v286 = 0;
      v287 = v149 + 151;
      v288 = -1;
LABEL_526:
      v289 = *(v113 + 20);
      if (v289 < 1)
      {
        goto LABEL_560;
      }

      v290 = *(v113 + 32);
      v291 = v290 + 18;
      while (1)
      {
        *(v290 + 18) &= ~0x40u;
        v293 = *(v290 + 28);
        if (v293 != v288)
        {
          if (*(v366 + 150) == v293)
          {
            v292 = 1;
          }

          else
          {
            v294 = *(v366 + 149);
            if (v294 < 2)
            {
LABEL_537:
              v292 = 0;
            }

            else
            {
              v295 = v287;
              v296 = 1;
              while (1)
              {
                v297 = *v295++;
                if (v297 == v293)
                {
                  break;
                }

                if (v294 == ++v296)
                {
                  goto LABEL_537;
                }
              }

              v292 = 1 << v296;
            }
          }

          if ((v292 & v229) != 0)
          {
            break;
          }
        }

        v290 += 56;
        v291 += 56;
        v205 = v289-- <= 1;
        if (v205)
        {
          goto LABEL_560;
        }
      }

      if (v289 < 1)
      {
        v286 = 1;
        goto LABEL_559;
      }

      v362 = v287;
      v363 = v285;
      v298 = *(v290 + 32);
      v299 = *(*v290 + 16);
      while (1)
      {
        if (*(v291 + 10) == v293)
        {
          if (*(v291 + 14) != v298)
          {
            v286 = 0;
            goto LABEL_558;
          }

          v300 = *(v291 - 18);
          if (v298 == -2)
          {
            if (sub_181959260(v360, *(v300 + 16), v299, 0xFFFFFFFFLL))
            {
              v286 = 0;
              v86 = v372;
LABEL_558:
              v285 = v363;
              v287 = v362;
LABEL_559:
              v288 = v293;
              if (v286 | v285++)
              {
LABEL_560:
                if (v286)
                {
                  v305 = *(v113 + 20);
                  if (v305 < 1)
                  {
                    v307 = 0;
                    v317 = 0;
                    v316 = v360;
LABEL_629:
                    v348 = sub_181929E8C(*v316, 0x50uLL, 0x1032040B79D87BDLL);
                    if (v348)
                    {
                      v349 = v348;
                      *(v348 + 2) = 0u;
                      *(v348 + 3) = 0u;
                      *(v348 + 4) = 0u;
                      *v348 = 0u;
                      *(v348 + 1) = 0u;
                      *v348 = 50;
                      *(v348 + 26) = -1;
                      v350 = 1;
                      *(v348 + 10) = 1;
                      if (v317)
                      {
                        v348[2] = v317;
                        *(v348 + 1) |= v317[1] & 0x400208;
                        v351 = v317[10];
                        if (v351 < 1)
                        {
                          v350 = 1;
                        }

                        else
                        {
                          v350 = v351 + 1;
                          *(v348 + 10) = v350;
                        }
                      }

                      if (*(*v316 + 148) < v350)
                      {
                        sub_181910730(v316, "Expression tree is too large (maximum depth %d)", *(*v316 + 148));
                      }

                      if ((*(v284 + 1) & 3) != 0)
                      {
                        *(v349 + 4) |= *(v284 + 1) & 3;
                        *(v349 + 56) = *(v284 + 14);
                      }

                      *(v349 + 32) = v307;
                      v352 = sub_1818CE2C0(v370, v349, 3);
                      v353 = v352;
                      sub_1818CE4CC(v374, v370, v352);
                      v354 = v370[4];
                      v355 = &v354[7 * v353];
                      *(v355 + 6) = v371;
                      v356 = &v354[7 * v86];
                      *(v355 + 8) = *(v356 + 8);
                      ++*(v356 + 22);
                    }

                    else
                    {
                      if (v317)
                      {
                        sub_1819439E0(*v316, v317);
                      }

                      if (v307)
                      {
                        sub_18194E5B8(v364, v307);
                      }
                    }

                    goto LABEL_265;
                  }

                  v306 = 0;
                  v307 = 0;
                  v308 = *(v113 + 32);
                  v309 = v305 + 1;
                  while (2)
                  {
                    if ((v308[9] & 0x40) == 0)
                    {
                      goto LABEL_566;
                    }

                    v311 = *(*v308 + 24);
                    if (v311)
                    {
                      v312 = sub_1818C7FEC(v364, v311, 0, 0);
                    }

                    else
                    {
                      v312 = 0;
                    }

                    v313 = *v366;
                    if (v307)
                    {
                      v314 = *v307;
                      if (v307[1] > *v307)
                      {
                        *v307 = v314 + 1;
                        v315 = &v307[6 * v314];
                        *(v315 + 2) = 0;
                        *(v315 + 3) = 0;
                        *(v315 + 1) = v312;
LABEL_565:
                        v306 = *(*v308 + 16);
LABEL_566:
                        v308 += 28;
                        if (--v309 <= 1)
                        {
                          v316 = v360;
                          if (v306)
                          {
                            v317 = sub_1818C7FEC(v364, v306, 0, 0);
                          }

                          else
                          {
                            v317 = 0;
                          }

                          v284 = v359;
                          goto LABEL_629;
                        }

                        continue;
                      }

                      v310 = sub_18197FE14(*v313, v307, v312);
                    }

                    else
                    {
                      v310 = sub_18197FD9C(*v313, v312);
                    }

                    break;
                  }

                  v307 = v310;
                  goto LABEL_565;
                }

LABEL_265:
                v6 = v370;
                v8 = &v370[4][7 * v86];
LABEL_266:
                v65 = v373;
LABEL_267:
                v22 = v377;
                goto LABEL_268;
              }

              goto LABEL_526;
            }

            v300 = *(v291 - 18);
          }

          v301 = sub_1818D0A24(*(v300 + 24));
          v302 = sub_1818D0A24(*(v300 + 16));
          if (v301)
          {
            v303 = v301 == v302;
          }

          else
          {
            v303 = 1;
          }

          if (!v303)
          {
            v286 = 0;
            v86 = v372;
            v284 = v359;
            goto LABEL_558;
          }

          *v291 |= 0x40u;
          v86 = v372;
          v284 = v359;
        }

        else
        {
          *v291 &= ~0x40u;
        }

        v291 += 56;
        if (!--v289)
        {
          v286 = 1;
          goto LABEL_558;
        }
      }
    }

    v235 = (v364 + 472);
    v236 = *v361;
    if (*v361 || (v235 = (v364 + 464), (v236 = *v358) != 0))
    {
      *v235 = *v236;
      ++*(v150 + 448);
LABEL_448:
      *(v227 + 32) = v236;
      *(v227 + 18) |= 0x20u;
      *(v227 + 20) = 1024;
      *(v227 + 28) = -1;
      *(v236 + 248) = 0u;
      *(v236 + 232) = 0u;
      *(v236 + 216) = 0u;
      *(v236 + 200) = 0u;
      *(v236 + 184) = 0u;
      *(v236 + 168) = 0u;
      *(v236 + 152) = 0u;
      *(v236 + 136) = 0u;
      *(v236 + 120) = 0u;
      *(v236 + 104) = 0u;
      *(v236 + 88) = 0u;
      *(v236 + 72) = 0u;
      *(v236 + 56) = 0u;
      *(v236 + 40) = 0u;
      *(v236 + 456) = 0u;
      *(v236 + 472) = 0u;
      *(v236 + 424) = 0u;
      *(v236 + 440) = 0u;
      *(v236 + 392) = 0u;
      *(v236 + 408) = 0u;
      *(v236 + 360) = 0u;
      *(v236 + 376) = 0u;
      *(v236 + 328) = 0u;
      *(v236 + 344) = 0u;
      *(v236 + 296) = 0u;
      *(v236 + 312) = 0u;
      *(v236 + 264) = 0u;
      *(v236 + 280) = 0u;
      v247 = *v370;
      *(v236 + 17) = 0;
      *v236 = v247;
      *(v236 + 8) = 0;
      *(v236 + 28) = 0;
      *(v236 + 20) = 0x800000000;
      *(v236 + 32) = v236 + 40;
      sub_18196A914(v236, *v227, 44);
      v248 = *(v236 + 20);
      if (v248 >= 1)
      {
        v249 = v248 + 1;
        do
        {
          sub_1818CE4CC(v374, v236, v249 - 2);
          --v249;
        }

        while (v249 > 1);
      }

      *(v236 + 8) = v370;
      v150 = v364;
      if (*(v364 + 103) || (v251 = *(v236 + 20), v251 < 1))
      {
        v250 = 0;
        v149 = v366;
      }

      else
      {
        v250 = 0;
        v252 = 0;
        v253 = *(v236 + 32);
        v149 = v366;
        do
        {
          v255 = **v253;
          if (v255 <= 0x3A && (v255 > 0x35 || v255 == 45 || (v255 & 0x3E) == 0x32) || *(v253 + 10) == 64)
          {
            v256 = *(v253 + 7);
            if (*(v366 + 150) == v256)
            {
              v254 = 1;
            }

            else
            {
              v257 = *(v366 + 149);
              if (v257 < 2)
              {
LABEL_469:
                v254 = 0;
              }

              else
              {
                v258 = v366 + 151;
                v259 = 1;
                while (1)
                {
                  v260 = *v258++;
                  if (v260 == v256)
                  {
                    break;
                  }

                  if (v257 == ++v259)
                  {
                    goto LABEL_469;
                  }
                }

                v254 = 1 << v259;
              }
            }

            v250 |= v254;
          }

          ++v252;
          v253 += 7;
        }

        while (v252 != v251);
      }

      v229 = 0;
      v228 &= v250;
      goto LABEL_479;
    }

    ++*(v150 + 456);
    goto LABEL_447;
  }

  v58 = *(v10 + 14);
  if (v22[150] != v58)
  {
    v60 = v22[149];
    if (v60 < 2)
    {
LABEL_92:
      v59 = 0;
      if ((v57 & 1) == 0)
      {
        goto LABEL_86;
      }
    }

    else
    {
      v61 = (v22 + 151);
      v62 = 1;
      while (1)
      {
        v63 = *v61++;
        if (v63 == v58)
        {
          break;
        }

        if (v60 == ++v62)
        {
          goto LABEL_92;
        }
      }

      v59 = 1 << v62;
      if ((v57 & 1) == 0)
      {
        goto LABEL_86;
      }
    }

LABEL_93:
    v51 |= v59;
    if (v59 > v51 >> 1)
    {
      v368 = v59 - 1;
      goto LABEL_98;
    }

    goto LABEL_128;
  }

  v59 = 1;
  if (v57)
  {
    goto LABEL_93;
  }

LABEL_86:
  if (v59 > v51 >> 1)
  {
    goto LABEL_87;
  }

  if (*result < 1 || (result[8] & 0x40) == 0)
  {
    v368 = 0;
    v57 &= 0xFFFFFFFC;
    *(v10 + 1) = v57;
    goto LABEL_98;
  }

LABEL_128:

  sub_181910730(v376, "ON clause references tables to its right");
}