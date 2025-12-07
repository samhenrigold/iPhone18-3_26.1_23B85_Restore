uint64_t sub_19198(int a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a2;
  v6 = (a5 + 2 * a1);
  v7 = (8 * v6[2]) | (v6[1] << 19);
  v8 = a3 + v7 + 31616;
  v9 = v6[3];
  v10 = v5;
  while (v10 - v5 < v9)
  {
    if (v10 < *(a4 + 16))
    {
      v11 = *(a3 + v7 + 31666);
      if (*(a3 + v7 + 31660) == 60)
      {
        if (v11 < 2)
        {
          LODWORD(v13) = 1;
        }

        else
        {
          v12 = (a3 + v7 + 31672);
          v13 = 1;
          while (1)
          {
            v14 = *v12;
            v12 += 2;
            if (*(*(a4 + 8) + 2 * v10) == v14)
            {
              break;
            }

            v13 += 2;
            if (v13 >= *(a3 + v7 + 31666))
            {
              return 0;
            }
          }
        }
      }

      else if (v11 < 1)
      {
        LODWORD(v13) = 0;
      }

      else
      {
        v13 = 0;
        while (*(*(a4 + 8) + 2 * v10) != *(a3 + v7 + 31670 + 2 * v13))
        {
          if (v11 == ++v13)
          {
            return 0;
          }
        }
      }

      ++v10;
      if (v13 < v11)
      {
        continue;
      }
    }

    return 0;
  }

  v16 = v5 + v9;
  v17 = v6[4];
  if (v9 < v17)
  {
    v18 = v16;
    if (*(a4 + 16) > v16)
    {
      v16 = *(a4 + 16);
    }

    v19 = v5 + v17;
    v20 = v7 + a3;
    v21 = v7 + a3 + 31670;
    v22 = (v20 + 31672);
    while (v18 != v16)
    {
      v23 = *(v8 + 50);
      if (*(v8 + 44) == 60)
      {
        if (v23 < 2)
        {
          LODWORD(v25) = 1;
        }

        else
        {
          v24 = v22;
          v25 = 1;
          while (1)
          {
            v26 = *v24;
            v24 += 2;
            if (*(*(a4 + 8) + 2 * v18) == v26)
            {
              break;
            }

            v25 += 2;
            if (v25 >= *(v8 + 50))
            {
              goto LABEL_39;
            }
          }
        }
      }

      else if (v23 < 1)
      {
        LODWORD(v25) = 0;
      }

      else
      {
        v25 = 0;
        while (*(*(a4 + 8) + 2 * v18) != *(v21 + 2 * v25))
        {
          if (v23 == ++v25)
          {
            goto LABEL_39;
          }
        }
      }

      if (v25 < v23 && ++v18 < v19)
      {
        continue;
      }

LABEL_39:
      v16 = v18;
      break;
    }
  }

  *a2 = v16;
  return 1;
}

uint64_t sub_19378(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int *a8, _DWORD *a9, char a10)
{
  v14 = a1;
  if (a7 != 74)
  {
    if (a2 > a1)
    {
      v19 = *(a5 + 20);
      if (a2 - a1 + v19 > *(a5 + 16))
      {
        return 0;
      }

      v20 = *(a5 + 8);
      v21 = (*(a4 + 8) + 2 * a1);
      v22 = a2 - a1;
      do
      {
        *(a6 + 4 * v19) = v14;
        v23 = *v21++;
        v24 = *(a5 + 20);
        *(v20 + 2 * v24) = v23;
        v19 = v24 + 1;
        *(a5 + 20) = v24 + 1;
        LODWORD(v14) = v14 + 1;
        --v22;
      }

      while (v22);
    }

    return 1;
  }

  if (a2 <= a1)
  {
    return 1;
  }

  for (i = 2 * a1; ; i += 2)
  {
    result = sub_19494(*(*(a4 + 8) + i), a3, v14, a4, a5, a6, a8, a9, a10);
    if (!result)
    {
      break;
    }

    v14 = (v14 + 1);
    if (a2 == v14)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_19494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7, _DWORD *a8, char a9)
{
  v14 = a3;
  v16 = a1;
  v17 = *(a2 + 4 * _lou_charHash(a1) + 13608);
  if (v17)
  {
    while (1)
    {
      v18 = (a2 + 31616 + 8 * v17);
      if (*(v18 + 22) == v16)
      {
        break;
      }

      v17 = v18[3];
      if (!v17)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    v18 = &unk_28DF8;
    word_28E24 = v16;
  }

  v19 = v18[4];
  if (v19)
  {
    return sub_195E0((a2 + 8 * v19 + 31672), 1, *(a2 + 8 * v19 + 31668), 0, v14, a4, a5, a6, a7, a8);
  }

  v21 = v18[12];
  if (v21)
  {
    v19 = *(a2 + 8 * v21 + 31632);
    if (v19)
    {
      return sub_195E0((a2 + 8 * v19 + 31672), 1, *(a2 + 8 * v19 + 31668), 0, v14, a4, a5, a6, a7, a8);
    }
  }

  return sub_19738(v16, a2, v14, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_195E0(void *__src, int a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, int *a9, _DWORD *a10)
{
  v10 = *(a7 + 20);
  if (v10 + a3 > *(a7 + 16))
  {
    return 0;
  }

  v14 = a5 + a2;
  if (a5 + a2 > *(a6 + 16))
  {
    return 0;
  }

  memcpy((*(a7 + 8) + 2 * v10), __src, 2 * a3);
  if (*a10 == 2)
  {
    if (*a9 == a5)
    {
      *a9 = *(a7 + 20);
    }

    goto LABEL_21;
  }

  if (!*a10)
  {
    v19 = *a9;
    if (*a9 >= a5 && v19 < v14)
    {
      v22 = *(a7 + 20);
    }

    else
    {
      if (v19 != v14 || *(*(a6 + 8) + 2 * v19) != 0)
      {
        goto LABEL_21;
      }

      v22 = *(a7 + 20) + a3 / 2 + 1;
    }

    *a9 = v22;
    *a10 = 1;
  }

LABEL_21:
  if (a3 >= 1)
  {
    v23 = 0;
    do
    {
      *(a8 + 4 * (v23 + *(a7 + 20))) = a5 + a4;
      ++v23;
    }

    while (a3 != v23);
  }

  *(a7 + 20) += a3;
  return 1;
}

uint64_t sub_19738(__int16 a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7, _DWORD *a8, char a9)
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v40 = a1;
  v15 = *(a2 + 956);
  if (v15)
  {
    return sub_195E0((a2 + 8 * v15 + 31616 + 2 * *(a2 + 8 * v15 + 31666) + 54), *(a2 + 8 * v15 + 31666), *(a2 + 8 * v15 + 31668), 0, a3, a4, a5, a6, a7, v32);
  }

  v38 = a7;
  if (a9 < 0)
  {
    v17 = &unk_2004F;
  }

  else
  {
    v17 = _lou_showString(&v40, 1u, 1);
  }

  v18 = strlen(v17);
  v39 = v33;
  v19 = __chkstk_darwin();
  v21 = &v33[-v20];
  if (!v19)
  {
    return sub_195E0(v21, 1, v18, 0, v13, v12, v11, v10, v38, a8);
  }

  v34 = v13;
  v35 = v12;
  v36 = v11;
  v37 = v10;
  v22 = 0;
  v23 = 0;
  v24 = a2 + 13608;
  v25 = a2 + 31616;
  do
  {
    v26 = v17[v22];
    v27 = *(v24 + 4 * _lou_charHash(v26));
    if (v27)
    {
      while (1)
      {
        v28 = (v25 + 8 * v27);
        if (v28[22] == v26)
        {
          break;
        }

        v27 = *(v28 + 3);
        if (!v27)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      word_28E24 = v26;
      v28 = &unk_28DF8;
    }

    v29 = *(v28 + 5);
    if (!v29)
    {
      goto LABEL_16;
    }

    while (1)
    {
      v30 = v25 + 8 * v29;
      if ((*(v30 + 44) - 61) <= 8 && *(v30 + 52) == 1)
      {
        break;
      }

      v29 = *(v30 + 16);
      if (!v29)
      {
        goto LABEL_16;
      }
    }

    v31 = *(v30 + 56);
    *&v21[2 * v22] = v31;
    if (!v31)
    {
LABEL_16:
      *&v21[2 * v22] = _lou_charToFallbackDots(v17[v22]);
    }

    v22 = ++v23;
  }

  while (v18 > v23);
  v11 = v36;
  v10 = v37;
  v12 = v35;
  v13 = v34;
  if (!(v18 >> 31))
  {
    return sub_195E0(v21, 1, v18, 0, v13, v12, v11, v10, v38, a8);
  }

  _lou_logMessage(40000, "String too long: %zu", v18);
  return 0;
}

uint64_t sub_199D0(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = *(a2 + 4 * _lou_charHash(a1) + 18100);
  if (v4)
  {
    while (1)
    {
      v5 = (a2 + 31616 + 8 * v4);
      if (*(v5 + 22) == v3)
      {
        break;
      }

      v4 = v5[3];
      if (!v4)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    v5 = &unk_28DB8;
    word_28DE4 = v3;
  }

  return v5[6] & 1;
}

uint64_t sub_19A3C(int a1, int a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, int *a10, _DWORD *a11, char a12)
{
  v15 = a3;
  if (*a11 == 2 || (v18 = *(a3 + 2536), !v18) || (result = sub_195E0((a3 + 8 * v18 + 31670), 0, *(a3 + 8 * v18 + 31668), 0, *a4, a5, a6, a7, a10, a11), result))
  {
    if (a1 >= a2)
    {
      v28 = 1;
    }

    else
    {
      v31 = 0;
      v30 = v15;
      v20 = v15 + 13608;
      v21 = v15 + 31616;
      v22 = a1;
      do
      {
        *(a8 + 8 * v22) = 0;
        v23 = *(*(a5 + 8) + 2 * v22);
        if (v23 == 0xFFFF)
        {
          v31 = 1;
        }

        else
        {
          *a4 = v22;
          v24 = *(v20 + 4 * _lou_charHash(v23));
          if (v24)
          {
            while (1)
            {
              v25 = (v21 + 8 * v24);
              if (v25[22] == v23)
              {
                break;
              }

              v24 = *(v25 + 3);
              if (!v24)
              {
                goto LABEL_10;
              }
            }
          }

          else
          {
LABEL_10:
            v25 = &unk_28DF8;
            word_28E24 = v23;
          }

          v26 = *(v25 + 10);
          if (v26)
          {
            v27 = v21 + 8 * v26;
            *a9 = v27;
            result = sub_195E0((v27 + 2 * *(v27 + 50) + 54), *(v27 + 50), *(v27 + 52), 0, *a4, a5, a6, a7, a10, a11);
            if (!result)
            {
              return result;
            }
          }

          else
          {
            result = sub_19494(*(*(a5 + 8) + 2 * v22), v30, *a4, a5, a6, a7, a10, a11, a12);
            if (!result)
            {
              return result;
            }
          }
        }

        ++v22;
      }

      while (v22 != a2);
      v28 = v31 == 0;
      v15 = v30;
    }

    if (*a11 == 2 || (v29 = *(v15 + 2540), !v29) || (result = sub_195E0((v15 + 8 * v29 + 31670), 0, *(v15 + 8 * v29 + 31668), 0, *a4, a5, a6, a7, a10, a11), result))
    {
      *a4 = a2;
      if (v28)
      {
        return 1;
      }

      __src = -1;
      result = sub_195E0(&__src, 0, 1, 0, a2, a5, a6, a7, a10, a11);
      if (result)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_19CA4(uint64_t result, int a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int *a12, _DWORD *a13)
{
  v14 = a7;
  v16 = a5;
  v20 = result;
  if (a2 && a3)
  {
    for (i = 0; i != 144; i += 24)
    {
      v22 = *(a6 + i + 1568);
      if (v22 && ((HIWORD(*(a11 + 8 * v16)) | WORD1(*(a11 + 8 * v16)) | (HIDWORD(*(a11 + 8 * v16)) | *(a11 + 8 * v16))) & v22) != 0)
      {
        result = sub_1AE10(a11, v16, a6 + i + 1552, a6, v14, a8, a9, a10, a12, a13);
      }
    }
  }

  v56 = v20;
  if (a2 && a4)
  {
    v23 = 0;
    v24 = a6 + 1312;
    do
    {
      v25 = *(v24 + 24 * v23 + 16);
      if (v25)
      {
        v26 = (*(a11 + 8 * v16 + 2) & v25) != 0;
        if ((*(a11 + 8 * v16 + 2) & v25) != 0 && v16 >= 1)
        {
          v28 = *(v24 + 24 * v23 + 16);
          v26 = 1;
          v29 = (a11 + 8 * v16 - 8);
          while (1)
          {
            v30 = *v29--;
            result = v28 & HIDWORD(v30);
            if ((v28 & v30) != 0 || result != 0)
            {
              break;
            }

            result = (++v26 - v16);
            if (result == 1)
            {
              v26 = v16 + 1;
              break;
            }
          }
        }
      }

      else
      {
        v26 = 0;
      }

      v60[v23++] = v26;
    }

    while (v23 != 10);
    v32 = 0;
    for (j = 0xFFFFFFFFLL; ; j = 0xFFFFFFFFLL)
    {
      do
      {
        v34 = v60[v32];
        if (v34 >= 1 && ((j & 0x80000000) != 0 || v34 < v60[j]))
        {
          j = v32;
        }

        ++v32;
      }

      while (v32 != 10);
      if ((j & 0x80000000) != 0)
      {
        break;
      }

      v60[j] = 0;
      result = sub_1AE10(a11, v16, v24 + 24 * j, a6, v14, a8, a9, a10, a12, a13);
      v32 = 0;
    }
  }

  v35 = a13;
  v58 = v14;
  if (!v20 || !a4)
  {
    goto LABEL_70;
  }

  v36 = 0;
  v59 = a6 + 1312;
  v57 = v16 + 1;
  do
  {
    v37 = v59 + 24 * v36;
    v38 = *(v37 + 16);
    if (!v38)
    {
LABEL_56:
      v42 = 0;
      goto LABEL_58;
    }

    v39 = *(a11 + 8 * v16);
    if ((*(v37 + 16) & v39) != 0)
    {
      v40 = *(a8 + 16);
      if (v57 >= v40)
      {
        goto LABEL_57;
      }

      v41 = v40 - v16;
      v42 = 1;
      v43 = a11 + 8 * v57;
      while ((*(v43 + 2) & v38) == 0)
      {
        v43 += 8;
        if (v41 == ++v42)
        {
          v42 = v41;
          break;
        }
      }
    }

    else
    {
      if ((*(v37 + 16) & WORD2(v39)) == 0)
      {
        goto LABEL_56;
      }

      v44 = v16 + 1;
      if (v57 >= *(a8 + 16))
      {
LABEL_57:
        v42 = 1;
        goto LABEL_58;
      }

      v42 = 1;
      do
      {
        if ((*(v37 + 16) & WORD1(*(a11 + 8 * v44))) != 0)
        {
          break;
        }

        v45 = *(a8 + 8);
        v46 = *(v45 + 2 * v44);
        result = _lou_charHash(*(v45 + 2 * v44));
        v47 = *(a6 + 13608 + 4 * result);
        if (v47)
        {
          while (1)
          {
            v48 = (a6 + 31616 + 8 * v47);
            if (*(v48 + 22) == v46)
            {
              break;
            }

            v47 = *(v48 + 3);
            if (!v47)
            {
              goto LABEL_51;
            }
          }
        }

        else
        {
LABEL_51:
          v48 = &unk_28DF8;
          word_28E24 = v46;
        }

        v35 = a13;
        if ((v48[25] & 0x20) != 0)
        {
          break;
        }

        result = sub_1A324(*(*(a8 + 8) + 2 * v44), a6, v37);
        if (result)
        {
          break;
        }

        ++v42;
        ++v44;
      }

      while (v44 < *(a8 + 16));
    }

LABEL_58:
    v60[v36++] = v42;
  }

  while (v36 != 10);
  v49 = 9;
  for (k = 9; ; k = 9)
  {
    do
    {
      v51 = v49;
      if (v60[k] < v60[v49])
      {
        k = v49;
      }

      --v49;
    }

    while (v51);
    if (!v60[k])
    {
      break;
    }

    v60[k] = 0;
    result = sub_1AE98(a11, v16, v59 + 24 * k, a6, v58, a8, a9, a10, a12, v35);
    v49 = 9;
  }

  for (m = 0; m != -240; m -= 24)
  {
    if (((HIWORD(*(a11 + 8 * v16)) | WORD1(*(a11 + 8 * v16)) | (HIDWORD(*(a11 + 8 * v16)) | *(a11 + 8 * v16))) & *(a6 + m + 1544)) != 0)
    {
      result = sub_1AFE4(a11, v16, a6 + m + 1528, a6, v58, a8, a9, a10, a12, v35);
    }
  }

  v20 = v56;
LABEL_70:
  if (v20 && a3)
  {
    for (n = 0; n != -144; n -= 24)
    {
      v54 = a6 + n;
      v55 = *(a6 + n + 1688);
      if (v55)
      {
        if (((HIWORD(*(a11 + 8 * v16)) | WORD1(*(a11 + 8 * v16)) | (HIDWORD(*(a11 + 8 * v16)) | *(a11 + 8 * v16))) & v55) != 0)
        {
          sub_1AE98(a11, v16, v54 + 1672, a6, v58, a8, a9, a10, a12, v35);
          result = sub_1AFE4(a11, v16, v54 + 1672, a6, v58, a8, a9, a10, a12, v35);
        }
      }
    }
  }

  return result;
}

uint64_t sub_1A240(uint64_t a1, int *a2, uint64_t a3, char a4, uint64_t a5, int *a6, _DWORD *a7, _DWORD *a8)
{
  v15 = *(a5 + 8);
  v16 = *(v15 + 2 * *a2);
  result = _lou_charHash(*(v15 + 2 * *a2));
  v18 = *(a1 + 4 * result + 13608);
  if (v18)
  {
    while (1)
    {
      v19 = (a1 + 31616 + 8 * v18);
      if (*(v19 + 22) == v16)
      {
        break;
      }

      v18 = *(v19 + 3);
      if (!v18)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    v19 = &unk_28DF8;
    word_28E24 = v16;
  }

  if ((v19[24] & 1) == 0 && !(*a7 | a4 & 1))
  {
    v20 = a6[1];
    if (v20)
    {
      *a2 = *a6;
      v20 = a6[1];
    }

    else
    {
      *a2 = 0;
    }

    *(a3 + 20) = v20;
    *a8 = a6[2];
    *a7 = 1;
  }

  return result;
}

BOOL sub_1A324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 36 * *(a3 + 20) + 1984);
  if (*(a3 + 8) != 16 || v6 && *(a2 + 952))
  {
    if (sub_1A418(a1, a2, a3))
    {
      return 0;
    }

    else if (v6)
    {

      return sub_1A564(a1, a2, a3);
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v8 = *(a2 + 4 * _lou_charHash(a1) + 13608);
    if (v8)
    {
      while (1)
      {
        v9 = (a2 + 31616 + 8 * v8);
        if (*(v9 + 22) == a1)
        {
          break;
        }

        v8 = v9[3];
        if (!v8)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      v9 = &unk_28DF8;
      word_28E24 = a1;
    }

    return v9[6] & 1;
  }
}

BOOL sub_1A418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (*(a3 + 8))
  {
    v6 = *(a2 + 4 * _lou_charHash(a1) + 13608);
    if (v6)
    {
      while (1)
      {
        v7 = (a2 + 31616 + 8 * v6);
        if (v7[22] == v5)
        {
          break;
        }

        v6 = *(v7 + 3);
        if (!v6)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
LABEL_5:
      v7 = &unk_28DF8;
      word_28E24 = v5;
    }

    v8 = *(v7 + 12);
    if (v8)
    {
      v9 = a2 + 31616 + 8 * v8;
    }

    else
    {
      v9 = v7;
    }

    v10 = *(a3 + 8);
    if ((v10 & *(v9 + 24)) != 0)
    {
      return 1;
    }

    else
    {
      while (1)
      {
        v12 = *(v9 + 52);
        if (!v12)
        {
          break;
        }

        v9 = a2 + 31616 + 8 * v12;
        if ((*(v9 + 24) & v10) != 0)
        {
          return 1;
        }
      }

      return 0;
    }
  }

  else
  {
    v13 = (a2 + 514 * *(a3 + 20) + 8468);
    if (*v13)
    {
      do
      {
        v15 = *v13++;
        v14 = v15;
        if (v15)
        {
          v16 = v14 == a1;
        }

        else
        {
          v16 = 1;
        }
      }

      while (!v16);
      return v14 == 0;
    }

    else
    {
      v17 = *(a2 + 4 * _lou_charHash(a1) + 13608);
      if (v17)
      {
        while (1)
        {
          v18 = (a2 + 31616 + 8 * v17);
          if (*(v18 + 22) == v5)
          {
            break;
          }

          v17 = v18[3];
          if (!v17)
          {
            goto LABEL_24;
          }
        }
      }

      else
      {
LABEL_24:
        v18 = &unk_28DF8;
        word_28E24 = v5;
      }

      return (v18[6] & 1) == 0;
    }
  }
}

BOOL sub_1A564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a3 + 8);
  v7 = a2 + 13608;
  v8 = _lou_charHash(a1);
  v9 = *(v7 + 4 * v8);
  if (v6)
  {
    if (*(v7 + 4 * v8))
    {
      while (1)
      {
        v10 = (a2 + 31616 + 8 * v9);
        if (*(v10 + 22) == v5)
        {
          break;
        }

        v9 = *(v10 + 3);
        if (!v9)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
LABEL_5:
      v10 = &unk_28DF8;
      word_28E24 = v5;
    }

    v11 = *(a3 + 8);
    if ((v11 & v10[3]) != 0)
    {
      return 0;
    }

    v12 = *(v10 + 12);
    v13 = a2 + 31616;
    if (v12)
    {
      v14 = (v13 + 8 * v12);
    }

    else
    {
      v14 = v10;
    }

    v15 = *(v14 + 13);
    if (v15)
    {
      v16 = v10[4];
      do
      {
        v17 = v13 + 8 * v15;
        if ((v16 & ~*(v17 + 32)) == 0 && (*(v17 + 24) & v11) != 0)
        {
          return 0;
        }

        v15 = *(v17 + 52);
      }

      while (v15);
    }

    v18 = _lou_charHash(v5);
    v19 = *(v7 + 4 * v18);
    if (v11 == 4)
    {
      if (*(v7 + 4 * v18))
      {
        while (1)
        {
          v33 = (v13 + 8 * v19);
          if (*(v33 + 22) == v5)
          {
            break;
          }

          v19 = v33[3];
          if (!v19)
          {
            goto LABEL_44;
          }
        }
      }

      else
      {
LABEL_44:
        v33 = &unk_28DF8;
        word_28E24 = v5;
      }

      v21 = v33[6];
      v22 = 67111172;
      return (v21 & v22) == 0;
    }

    if (v11 == 16)
    {
      if (*(v7 + 4 * v18))
      {
        while (1)
        {
          v20 = (v13 + 8 * v19);
          if (v20[22] == v5)
          {
            break;
          }

          v19 = *(v20 + 3);
          if (!v19)
          {
            goto LABEL_20;
          }
        }
      }

      else
      {
LABEL_20:
        v20 = &unk_28DF8;
        word_28E24 = v5;
      }

      v21 = v20[12];
      v22 = 514;
      return (v21 & v22) == 0;
    }

    if (*(v7 + 4 * v18))
    {
      while (1)
      {
        v34 = (v13 + 8 * v19);
        if (*(v34 + 22) == v5)
        {
          break;
        }

        v19 = v34[3];
        if (!v19)
        {
          goto LABEL_53;
        }
      }
    }

    else
    {
LABEL_53:
      v34 = &unk_28DF8;
      word_28E24 = v5;
    }

    return ((v34[6] >> 1) & 1) == 0;
  }

  else
  {
    if (*(v7 + 4 * v8))
    {
      while (1)
      {
        v23 = (a2 + 31616 + 8 * v9);
        if (*(v23 + 22) == v5)
        {
          break;
        }

        v9 = *(v23 + 3);
        if (!v9)
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
LABEL_25:
      v23 = &unk_28DF8;
      word_28E24 = v5;
    }

    if ((v23[24] & 2) != 0)
    {
      return 0;
    }

    v24 = a2 + 514 * *(a3 + 20);
    if (*(v24 + 3328))
    {
      v25 = (v24 + 3328);
      do
      {
        v27 = *v25++;
        v26 = v27;
        if (v27)
        {
          v28 = v26 == v5;
        }

        else
        {
          v28 = 1;
        }
      }

      while (!v28);
      return v26 == 0;
    }

    v31 = *(v7 + 4 * _lou_charHash(v5));
    if (v31)
    {
      while (1)
      {
        v32 = (a2 + 31616 + 8 * v31);
        if (*(v32 + 22) == v5)
        {
          break;
        }

        v31 = v32[3];
        if (!v31)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
LABEL_39:
      v32 = &unk_28DF8;
      word_28E24 = v5;
    }

    return v32[6] & 1;
  }
}

uint64_t sub_1A7B8(uint64_t result, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = (a6 + 36 * *(a5 + 20) + 1960);
  if (result <= a2)
  {
    v12 = result;
    v13 = (a4 + 8 * result);
    v14 = a2 - result + 1;
    v15 = (a7 + 4 * result);
    do
    {
      v16 = HIDWORD(*v13);
      v17 = *v13 & 0xFFFFFFFFFFFFLL | ((HIWORD(*v13) & ~*(a5 + 16)) << 48);
      *v13 = v17;
      *v13++ = v17 & 0xFFFF0000FFFFFFFFLL | ((v16 & ~*(a5 + 16)) << 32);
      *v15++ &= ~4u;
      --v14;
    }

    while (v14);
  }

  else
  {
    v12 = result;
  }

  *(a4 + 8 * v12) = *(a5 + 16) | *(a4 + 8 * v12);
  if (v11[4] || v11[2])
  {
    v18 = *(a5 + 16);
    v19 = a4 + 8 * a2;
LABEL_8:
    *(v19 + 2) = (*v19 | (v18 << 16)) >> 16;
    return result;
  }

  v20 = v11[1];
  if (v20)
  {
    v21 = v11[6];
    if (v21)
    {
      v22 = a6 + 31616 + 8 * v20;
      v23 = a6 + 31616 + 8 * v21;
      v24 = *(v22 + 52);
      if (v24 == *(v23 + 52))
      {
        result = memcmp((v22 + 54), (v23 + 54), 2 * v24);
        if (!result)
        {
          *(a4 + 8 * a3 + 4) = *(a5 + 16) | *(a4 + 8 * a3 + 4);
          *(a7 + 4 * a3) |= 4u;
          return result;
        }
      }
    }

    v18 = *(a5 + 16);
    v19 = a4 + 8 * a3;
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_1A91C(uint64_t a1, int a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    return 0;
  }

  v5 = (a2 - 2);
  if (a2 < 2)
  {
    return 1;
  }

  v7 = a1 + 13608;
  v8 = a1 + 31616;
  while (1)
  {
    v9 = *(a3 + 8);
    v10 = *(v9 + 2 * v5);
    v11 = *(v7 + 4 * _lou_charHash(*(v9 + 2 * v5)));
    if (v11)
    {
      while (1)
      {
        v12 = (v8 + 8 * v11);
        if (*(v12 + 22) == v10)
        {
          break;
        }

        v11 = *(v12 + 3);
        if (!v11)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:
      word_28E24 = v10;
      v12 = &unk_28DF8;
    }

    v13 = v12[3];
    if ((v13 & 1) == 0)
    {
      return (v13 >> 1) & 1;
    }

    if (v5-- < 1)
    {
      return 1;
    }
  }
}

uint64_t sub_1A9D0(uint64_t a1, int a2, char a3, uint64_t a4, int a5, int a6, int a7)
{
  if (a6 + a2 >= *(a4 + 16))
  {
    return 1;
  }

  v9 = a4;
  v11 = a1;
  v65 = a1 + 13608;
  v12 = a1 + 31616;
  v13 = a6 + a2;
  do
  {
    v14 = *(v9 + 8);
    v15 = *(v14 + 2 * v13);
    v16 = *(v65 + 4 * _lou_charHash(*(v14 + 2 * v13)));
    if (v16)
    {
      while (1)
      {
        v17 = (v12 + 8 * v16);
        if (*(v17 + 22) == v15)
        {
          break;
        }

        v16 = *(v17 + 3);
        if (!v16)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      v17 = &unk_28DF8;
      word_28E24 = v15;
    }

    v18 = *(v9 + 16);
    if ((v17[24] & 1) == 0)
    {
      break;
    }

    ++v13;
  }

  while (v13 < v18);
  if (v18 == v13)
  {
    return 1;
  }

  if (a5 == 94)
  {
    v20 = *(v9 + 8);
    v21 = *(v20 + 2 * v13);
    v22 = *(v65 + 4 * _lou_charHash(*(v20 + 2 * v13)));
    if (v22)
    {
      while (1)
      {
        v23 = (v12 + 8 * v22);
        if (*(v23 + 22) == v21)
        {
          break;
        }

        v22 = *(v23 + 3);
        if (!v22)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
LABEL_16:
      v23 = &unk_28DF8;
      word_28E24 = v21;
    }

    if ((v23[24] & 6) == 0)
    {
      return 1;
    }

    v24 = *(v9 + 8) + 2 * v13;
    v25 = *(v24 - 2);
    v26 = *(v65 + 4 * _lou_charHash(*(v24 - 2)));
    if (v26)
    {
      while (1)
      {
        v27 = (v12 + 8 * v26);
        if (*(v27 + 22) == v25)
        {
          break;
        }

        v26 = *(v27 + 3);
        if (!v26)
        {
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_21:
      v27 = &unk_28DF8;
      word_28E24 = v25;
    }

    if ((v27[24] & 1) == 0)
    {
      return 1;
    }

    v18 = *(v9 + 16);
  }

  LODWORD(v28) = v13;
  if (v18 > v13)
  {
    v28 = v13;
    do
    {
      v29 = *(v9 + 8);
      v30 = *(v29 + 2 * v28);
      v31 = *(v65 + 4 * _lou_charHash(*(v29 + 2 * v28)));
      if (v31)
      {
        while (1)
        {
          v32 = (v12 + 8 * v31);
          if (*(v32 + 22) == v30)
          {
            break;
          }

          v31 = *(v32 + 3);
          if (!v31)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        v32 = &unk_28DF8;
        word_28E24 = v30;
      }

      if (v32[24])
      {
        break;
      }

      ++v28;
    }

    while (v28 < *(v9 + 16));
  }

  if ((a3 & 0x22) != 0 && v13 <= a7 && v28 > a7)
  {
    return 0;
  }

  if (v28 <= v13)
  {
    return 1;
  }

  v59 = v28;
  v60 = v11 + 22632;
  v33 = v13;
  do
  {
    v34 = 0;
    v35 = *(v9 + 16) - v33;
    v36 = 1;
    do
    {
      v37 = v36;
      if (v34)
      {
        if (v35 < 1)
        {
          goto LABEL_75;
        }

        v38 = *(v9 + 8);
        v39 = *(v38 + 2 * v33);
        v40 = *(v65 + 4 * _lou_charHash(*(v38 + 2 * v33)));
        if (v40)
        {
          while (1)
          {
            v41 = (v12 + 8 * v40);
            if (v41[22] == v39)
            {
              break;
            }

            v40 = *(v41 + 3);
            if (!v40)
            {
              goto LABEL_44;
            }
          }
        }

        else
        {
LABEL_44:
          v41 = &unk_28DF8;
          word_28E24 = v39;
        }

        v42 = (v41 + 10);
        v35 = 1;
      }

      else
      {
        if (v35 < 2)
        {
          goto LABEL_75;
        }

        v42 = (v60 + 4 * _lou_stringHash((*(v9 + 8) + 2 * v33), 1, v11));
      }

      v43 = *v42;
      if (!v43)
      {
        goto LABEL_75;
      }

      v61 = v35;
      v62 = v37;
      v44 = v9;
      v45 = v11;
      v64 = v35;
      v63 = v34;
      do
      {
        v46 = v12 + 8 * v43;
        if (*(v46 + 50) < 1)
        {
          LODWORD(v47) = 0;
          if ((v34 & 1) == 0)
          {
            goto LABEL_71;
          }
        }

        else
        {
          v47 = 0;
          v48 = v46 + 54;
          while (1)
          {
            v49 = *(v48 + 2 * v47);
            v50 = *(v65 + 4 * _lou_charHash(*(v48 + 2 * v47)));
            if (v50)
            {
              while (1)
              {
                v51 = (v12 + 8 * v50);
                if (v51[22] == v49)
                {
                  break;
                }

                v50 = *(v51 + 3);
                if (!v50)
                {
                  goto LABEL_55;
                }
              }
            }

            else
            {
LABEL_55:
              v51 = &unk_28DF8;
              word_28E24 = v49;
            }

            v52 = *(v44 + 8) + 2 * v47;
            v53 = v33;
            v54 = *(v52 + 2 * v33);
            v55 = *(v65 + 4 * _lou_charHash(*(v52 + 2 * v33)));
            if (v55)
            {
              while (1)
              {
                v56 = (v12 + 8 * v55);
                if (v56[22] == v54)
                {
                  break;
                }

                v55 = *(v56 + 3);
                if (!v55)
                {
                  goto LABEL_59;
                }
              }
            }

            else
            {
LABEL_59:
              v56 = &unk_28DF8;
              word_28E24 = v54;
            }

            v57 = sub_105E0(v45, v51);
            if (v57 != sub_105E0(v45, v56))
            {
              break;
            }

            v58 = ++v47 >= *(v46 + 50) || v47 >= v64;
            v33 = v53;
            if (v58)
            {
              goto LABEL_70;
            }
          }

          v33 = v53;
LABEL_70:
          v34 = v63;
          if ((v63 & 1) == 0)
          {
LABEL_71:
            if (v47 != *(v46 + 50))
            {
              goto LABEL_73;
            }
          }
        }

        if ((*(v46 + 44) & 0xFFFFFFFE) == 0x58)
        {
          return 0;
        }

LABEL_73:
        v43 = *(v46 + 16);
      }

      while (v43);
      v11 = v45;
      v9 = v44;
      LODWORD(v28) = v59;
      v35 = v61;
      v37 = v62;
LABEL_75:
      v36 = 0;
      v34 = 1;
    }

    while ((v37 & 1) != 0);
    ++v33;
    result = 1;
  }

  while (v28 != v33);
  return result;
}

uint64_t sub_1AE10(uint64_t result, int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, int *a9, _DWORD *a10)
{
  v10 = *(result + 8 * a2);
  v11 = *(a3 + 16);
  if ((v11 & WORD1(v10)) != 0)
  {
    if ((v11 & WORD2(v10)) != 0)
    {
      v12 = *(a4 + 36 * *(a3 + 20) + 1988);
      if (!v12)
      {
        return result;
      }

      goto LABEL_7;
    }

    v12 = *(a4 + 36 * *(a3 + 20) + 1976);
    if (v12 || (v12 = *(a4 + 36 * *(a3 + 20) + 1968)) != 0)
    {
LABEL_7:
      v13 = -1;
      return sub_195E0((a4 + 8 * v12 + 31670), 0, *(a4 + 8 * v12 + 31668), v13, a5, a6, a7, a8, a9, a10);
    }

    v12 = *(a4 + 36 * *(a3 + 20) + 1964);
    if (v12)
    {
      v13 = 0;
      return sub_195E0((a4 + 8 * v12 + 31670), 0, *(a4 + 8 * v12 + 31668), v13, a5, a6, a7, a8, a9, a10);
    }
  }

  return result;
}

uint64_t sub_1AE98(uint64_t result, int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, int *a9, _DWORD *a10)
{
  v12 = result;
  v13 = (a4 + 36 * *(a3 + 20) + 1960);
  if ((*(result + 8 * a2) & *(a3 + 16)) != 0)
  {
    v14 = *v13;
    if (*v13 || (v14 = *(a4 + 36 * *(a3 + 20) + 1972)) != 0)
    {
      v26 = a4;
      v15 = a5;
      v16 = a6;
      v17 = a7;
      v18 = a8;
      result = sub_195E0((a4 + 8 * v14 + 31670), 0, *(a4 + 8 * v14 + 31668), 0, a5, a6, a7, a8, a9, a10);
      a4 = v26;
      a5 = v15;
      a6 = v16;
      a7 = v17;
      a8 = v18;
    }
  }

  v19 = *(v12 + 8 * a2);
  v20 = *(a3 + 16);
  v21 = v20 & WORD1(v19);
  if ((v20 & WORD2(v19)) != 0 && v21 == 0)
  {
    v23 = v13[6];
    if (v23)
    {
      v24 = a4 + 8 * v23;
      v25 = *(v24 + 31668);

      return sub_195E0((v24 + 31670), 0, v25, 0, a5, a6, a7, a8, a9, a10);
    }
  }

  return result;
}

uint64_t sub_1AFE4(uint64_t result, int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, int *a9, _DWORD *a10)
{
  if ((*(a3 + 16) & *(result + 8 * a2 + 6)) != 0)
  {
    v10 = *(a4 + 36 * *(a3 + 20) + 1980);
    if (v10)
    {
      return sub_195E0((a4 + 8 * v10 + 31670), 0, *(a4 + 8 * v10 + 31668), 0, a5, a6, a7, a8, a9, a10);
    }
  }

  return result;
}

uint64_t _lou_pattern_compile(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = 0;
  *a3 = 2;
  result = sub_1B0D4(a1, a2, &v9, a3, a4, a3, a3 + 1, a5, a6);
  if (result)
  {
    *a3 += 3;
    result = sub_1B218(a3, 2, a4, a3);
    if (result)
    {
      result = sub_1B344(a3, 2, a4, a3);
      if (result)
      {
        return *a3;
      }
    }
  }

  return result;
}

uint64_t sub_1B0D4(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, unsigned __int16 *a6, _WORD *a7, uint64_t a8, uint64_t a9)
{
  v9 = *a6;
  if (v9 + 6 >= a5)
  {
    return 0;
  }

  v14 = (a4 + 2 * v9);
  *v14 = 1;
  *(a4 + 2 * *a6 + 2) = -1;
  v15 = *a6 + 3;
  *a6 = v15;
  v14[2] = v15;
  *(a4 + 2 * *a6) = -1;
  *(a4 + 2 * *a6 + 2) = v9;
  *(a4 + 2 * *a6 + 4) = -1;
  if (*a3 >= a2)
  {
    return *a6;
  }

  v17 = a4 + 4;
  while (1)
  {
    v18 = *a6;
    result = sub_1B6C8(a1, a2, a3, a4, a5, a6, a7, a8, a9);
    if (!result)
    {
      break;
    }

    v20 = *a6;
    if (v20 + 3 >= a5)
    {
      return 0;
    }

    *(v17 + 2 * v18) = v20;
    *(a4 + 2 * *a6) = -1;
    *(a4 + 2 + 2 * *a6) = v18;
    *(v17 + 2 * *a6) = -1;
    if (*a3 >= a2)
    {
      return *a6;
    }
  }

  return result;
}

uint64_t sub_1B218(uint64_t a1, int a2, uint64_t a3, _WORD *a4)
{
  v7 = a1 + 6;
  for (i = a1 + 4; ; a2 = *(i + 2 * v16))
  {
    v9 = a2;
    v10 = *(a1 + 2 * a2);
    if ((v10 - 2) >= 2)
    {
      break;
    }

    result = sub_1B218(a1, *(v7 + 2 * a2), a3, a4);
    if (!result)
    {
      return result;
    }

    v10 = *(a1 + 2 * v9);
LABEL_6:
    if ((v10 - 4) >= 3)
    {
      v16 = v9;
    }

    else
    {
      v12 = *a4;
      if (v12 + 6 >= a3)
      {
        return 0;
      }

      v13 = a1 + 2 * v9;
      v14 = *(v13 + 2);
      v15 = (a1 + 2 * v14);
      if (*v15 == 1)
      {
        return 0;
      }

      v16 = v9;
      v17 = v15[1];
      v18 = a1 + 2 * v12;
      *v18 = -65535;
      *(v18 + 4) = v14;
      LOWORD(v18) = *a4 + 3;
      *a4 = v18;
      v19 = (a1 + 2 * v18);
      *v19 = -1;
      v19[1] = v14;
      v19[2] = v9;
      *a4 += 3;
      *(v13 + 6) = v12;
      *(i + 2 * v17) = v9;
      *(v13 + 2) = v17;
      v15[1] = v12;
      v15[2] = v18;
    }
  }

  if (v10 != 0xFFFF)
  {
    goto LABEL_6;
  }

  return 1;
}

uint64_t sub_1B344(uint64_t a1, int a2, uint64_t a3, unsigned __int16 *a4)
{
  v7 = a1 + 6;
  v8 = a1 + 2;
  for (i = a1 + 4; ; a2 = *(i + 2 * v17))
  {
    v10 = a2;
    v11 = *(a1 + 2 * a2);
    if ((v11 - 2) >= 5)
    {
      if (v11 == 0xFFFF)
      {
        return 1;
      }
    }

    else
    {
      result = sub_1B344(a1, *(v7 + 2 * a2), a3, a4);
      if (!result)
      {
        return result;
      }

      v11 = *(a1 + 2 * v10);
    }

    if (v11 != 7)
    {
      v17 = v10;
      continue;
    }

    v13 = *a4;
    if (v13 + 12 >= a3)
    {
      break;
    }

    v14 = (a1 + 2 * v10);
    v15 = v14[1];
    v16 = (a1 + 2 * v15);
    if (*v16 == 1)
    {
      break;
    }

    v17 = v10;
    v18 = v14[1];
    do
    {
      v18 = *(v8 + 2 * v18);
    }

    while (*(a1 + 2 * v18) != 1);
    v19 = *(i + 2 * v18);
    v20 = a1 + 2 * v13;
    *v20 = -65535;
    *(v20 + 4) = v19;
    LOWORD(v20) = *a4 + 3;
    *a4 = v20;
    v21 = (a1 + 2 * v20);
    *v21 = -1;
    v21[1] = v15;
    v21[2] = v10;
    *a4 += 3;
    v14[3] = v13;
    *(i + 2 * v18) = v10;
    v14[1] = v18;
    *(v8 + 2 * v19) = v13;
    v16[2] = v20;
    v22 = v14[2];
    v23 = (a1 + 2 * v22);
    v24 = *v23;
    if (v24 == 7 || v24 == 0xFFFF)
    {
      break;
    }

    for (j = v14[2]; ; LOWORD(v24) = *(a1 + 2 * j))
    {
      v27 = a1 + 2 * j;
      if (v24 == 7 || v24 == 0xFFFF)
      {
        break;
      }

      j = *(v27 + 4);
    }

    v28 = *(v27 + 2);
    v29 = *a4;
    v30 = a1 + 2 * v29;
    *v30 = -65535;
    *(v30 + 4) = v22;
    v31 = *a4 + 3;
    *a4 = v31;
    v32 = (a1 + 2 * v31);
    *v32 = -1;
    v32[1] = v28;
    v32[2] = v10;
    *a4 += 3;
    v14[4] = v29;
    *(v27 + 2) = v10;
    v14[2] = j;
    v23[1] = v29;
    *(i + 2 * v28) = v31;
    result = sub_1B344(a1, v14[4], a3, a4);
    if (!result)
    {
      return result;
    }
  }

  return 0;
}

uint64_t sub_1B538(uint64_t result, int a2)
{
  v2 = result + 2 * a2;
  v3 = *(v2 + 4);
  if (*(result + 2 * v3) != -1)
  {
    v5 = result;
    do
    {
      v3 = *(result + 4 + 2 * v3);
    }

    while (*(result + 2 * v3) != -1);
    v6 = result + 2 * v3;
    v7 = *(v6 + 2);
    v8 = result + 2 * v7;
    v9 = *(v8 + 2);
    *(v2 + 4) = v7;
    *(v8 + 2) = a2;
    *(v8 + 4) = v9;
    result = sub_1BEB0(result, v7);
    if (v9 == a2)
    {
      LOWORD(v8) = *(v8 + 4);
    }

    else
    {
      v8 = v9;
      do
      {
        v7 = v8;
        v10 = v5 + 2 * v8;
        v8 = *(v10 + 2);
        result = sub_1BEB0(v5, v9);
        *(v10 + 2) = *(v10 + 4);
        *(v10 + 4) = v8;
        LODWORD(v9) = v8;
      }

      while (v8 != a2);
    }

    v11 = v5 + 2 * v7;
    *(v11 + 2) = v8;
    *(v11 + 4) = v3;
    *(v6 + 2) = v7;
  }

  return result;
}

uint64_t _lou_pattern_check(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a3;
  v14 = a2;
  v11 = malloc_type_malloc(4 * *(a5 + 2), 0x100004052888210uLL);
  bzero(v11, 4 * *(a5 + 2));
  v12 = sub_1BF2C(a1, &v14, v9, a4, a5, 2, 0, 0, v11, a6);
  free(v11);
  return v12;
}

uint64_t sub_1B6C8(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, unsigned __int16 *a6, _WORD *a7, uint64_t a8, uint64_t a9)
{
  v10 = a5;
  v13 = *a3;
  v14 = *(a1 + 2 * *a3);
  if (v14 <= 0x2D)
  {
    if (*(a1 + 2 * *a3) <= 0x27u)
    {
      switch(v14)
      {
        case '!':
          v43 = *a6;
          if ((v43 + 10) >= a5)
          {
            return 0;
          }

          *a3 = v13 + 1;
          *(a4 + 2 * v43) = 3;
          v44 = *a6;
          *a6 = v44 + 4;
          *(a4 + 2 * v44 + 6) = v44 + 4;
          v45 = *a6;
          v46 = a4 + 2 * v45;
          *v46 = -65535;
          v47 = *a6 + 3;
          *a6 = v47;
          *(v46 + 4) = v47;
          v48 = *a6;
          v49 = (a4 + 2 * v48);
          *v49 = 0;
          v49[1] = v45;
          v49[2] = -1;
          if (!sub_1B6C8(a1, a2, a3, a4, a5, a6, a7, a8, a9))
          {
            return 0;
          }

          v50 = *a6;
          if (v50 + 3 >= v10)
          {
            return 0;
          }

          v49[2] = v50;
          v51 = (a4 + 2 * *a6);
          *v51 = -1;
          v51[1] = v48;
LABEL_63:
          v51[2] = v44;
LABEL_55:
          v42 = *a6;
          goto LABEL_56;
        case '$':
          goto LABEL_39;
        case '%':
          v15 = *a6;
          if ((v15 + 5) >= a5)
          {
            return 0;
          }

          v16 = v13 + 1;
          *a3 = v13 + 1;
          if (v13 + 1 >= a2)
          {
            return 0;
          }

          v17 = *(a1 + 2 * v16);
          v18 = v13 + 2;
          if (v17 == 91)
          {
            *a3 = v18;
            if (v18 >= a2)
            {
              return 0;
            }

            v19 = (a1 + 2 * v18);
            v20 = v13 + 2;
            while (1)
            {
              v21 = *v19++;
              if (v21 == 93)
              {
                break;
              }

              v22 = 0;
              if (a2 == ++v20)
              {
                return v22;
              }
            }

            *(a4 + 2 * v15) = 9;
            if (v18 >= v20)
            {
              LOWORD(v68) = 0;
              LOWORD(v67) = 0;
LABEL_133:
              *(a4 + 2 * *a6 + 6) = v67;
              *(a4 + 2 * *a6 + 8) = v68;
              if (v17 != 91)
              {
                goto LABEL_85;
              }

              v59 = v18 + 1;
LABEL_84:
              *a3 = v59;
LABEL_85:
              v22 = *a6 + 5;
LABEL_86:
              *a6 = v22;
              return v22;
            }

            v16 = v18;
          }

          else
          {
            *(a4 + 2 * v15) = 9;
            v20 = v13 + 2;
          }

          v67 = 0;
          v68 = 0;
          v69 = a8 + 40;
          v70 = (a1 + 2 * v16);
          do
          {
            v72 = *v70++;
            v71 = v72;
            if (v72 > 59)
            {
              if (v71 > 96)
              {
                if (v71 > 116)
                {
                  if (v71 == 117)
                  {
                    v68 |= 0x10u;
                  }

                  else
                  {
                    if (v71 != 126)
                    {
                      return 0;
                    }

                    v68 |= 0x2000u;
                  }
                }

                else if (v71 == 97)
                {
                  v68 |= 2u;
                }

                else
                {
                  if (v71 != 108)
                  {
                    return 0;
                  }

                  v68 |= 0x20u;
                }
              }

              else if (v71 > 93)
              {
                if (v71 == 94)
                {
                  v67 |= 0x100u;
                }

                else
                {
                  if (v71 != 95)
                  {
                    return 0;
                  }

                  v68 |= 1u;
                }
              }

              else if (v71 == 60)
              {
                v68 |= 0x4000u;
              }

              else
              {
                if (v71 != 62)
                {
                  return 0;
                }

                v68 |= 0x8000u;
              }
            }

            else if (v71 <= 47)
            {
              switch(v71)
              {
                case '#':
                  v68 |= 4u;
                  break;
                case '$':
                  v68 |= 0x80u;
                  break;
                case '.':
                  v68 |= 8u;
                  break;
                default:
                  return 0;
              }
            }

            else
            {
              if ((v71 - 48) >= 8)
              {
                return 0;
              }

              v73 = v71 - 48;
              v74 = *(v69 + 8 * (v71 - 48));
              if (!v74)
              {
                v74 = *(a8 + 24);
                *(v69 + 8 * v73) = v74;
                if (v74 > 0x800000)
                {
                  _lou_logMessage(40000, "%s:%d: error: Too many character attributes defined", *a9, *(a9 + 24));
                  return 0;
                }

                *(a8 + 24) = 2 * v74;
              }

              v67 |= v74 >> 16;
            }

            *a3 = ++v16;
          }

          while (v20 != v16);
          v18 = v20;
          goto LABEL_133;
      }

LABEL_41:
      if (*a6 + 5 >= a5)
      {
        return 0;
      }

      *(a4 + 2 * *a6) = 10;
      *(a4 + 2 * *a6 + 6) = 1;
      v33 = *(a1 + 2 * v13);
      goto LABEL_82;
    }

    if (v14 == 40)
    {
      v52 = *a6;
      if ((v52 + 10) >= a5)
      {
        return 0;
      }

      v53 = (v13 + 1);
      *a3 = v53;
      if (v53 >= a2)
      {
        return 0;
      }

      v54 = 0;
      v55 = 0;
      for (i = 2 * v53; ; i += 2)
      {
        v57 = *(a1 + i);
        if (v55 || v57 != 92)
        {
          if (v55 || v57 != 40)
          {
            v58 = 0;
            if (!v55 && v57 == 41)
            {
              if (!v54)
              {
                *(a4 + 2 * v52) = 2;
                v44 = *a6;
                *a6 = v44 + 4;
                *(a4 + 2 * v44 + 6) = v44 + 4;
                v82 = a4 + 2 * *a6;
                *v82 = -65536;
                *(v82 + 4) = -1;
                if (!sub_1B0D4(a1, v53, a3, a4, a5, a6, a7, a8, a9))
                {
                  return 0;
                }

                ++*a3;
                v51 = (a4 + 2 * *a6);
                goto LABEL_63;
              }

              v58 = 0;
              --v54;
            }
          }

          else
          {
            v58 = 0;
            ++v54;
          }
        }

        else
        {
          v58 = 1;
        }

        v22 = 0;
        v53 = (v53 + 1);
        v55 = v58;
        if (a2 == v53)
        {
          return v22;
        }
      }
    }

    if (v14 == 42)
    {
      v29 = *a6;
      if ((v29 + 5) >= a5)
      {
        return 0;
      }

      v30 = 5;
    }

    else
    {
      if (v14 != 43)
      {
        goto LABEL_41;
      }

      v29 = *a6;
      if ((v29 + 5) >= a5)
      {
        return 0;
      }

      v30 = 4;
    }

    *(a4 + 2 * v29) = v30;
    v33 = (*a7)++;
LABEL_82:
    *(a4 + 2 * *a6 + 8) = v33;
LABEL_83:
    v59 = v13 + 1;
    goto LABEL_84;
  }

  if (*(a1 + 2 * *a3) <= 0x5Au)
  {
    if (v14 != 46)
    {
      if (v14 == 63)
      {
        if (*a6 + 4 >= a5)
        {
          return 0;
        }

        *(a4 + 2 * *a6) = 6;
        *a3 = v13 + 1;
        v22 = *a6 + 4;
        goto LABEL_86;
      }

      if (v14 == 64)
      {
        v23 = v13 + 1;
        *a3 = v13 + 1;
        if (v13 + 1 >= a2)
        {
          return 0;
        }

        v24 = *(a1 + 2 * v23);
        v25 = v13 + 2;
        if (v24 == 91)
        {
          *a3 = v25;
          if (v25 >= a2)
          {
            return 0;
          }

          v26 = (a1 + 2 * v25);
          v27 = v25;
          while (1)
          {
            v28 = *v26++;
            if (v28 == 93)
            {
              break;
            }

            v22 = 0;
            if (a2 == ++v27)
            {
              return v22;
            }
          }

          v23 = v25;
        }

        else
        {
          v27 = v25;
        }

        if (v27 + *a6 - v23 + 4 >= a5)
        {
          return 0;
        }

        *(a4 + 2 * *a6) = 11;
        v75 = (a4 + 2 * *a6 + 6);
        if (v23 >= v27)
        {
          LOWORD(v78) = 1;
        }

        else
        {
          v76 = 0;
          v77 = (a1 + 2 * v23);
          v78 = 1;
          v79 = v27 - v23;
          do
          {
            v81 = *v77++;
            v80 = v81;
            if (v76 || v80 != 92)
            {
              v76 = 0;
              v75[v78++] = v80;
            }

            else
            {
              v76 = 1;
            }

            --v79;
          }

          while (v79);
          *a3 = v27;
          v23 = v27;
        }

        *v75 = v78 - 1;
        if (v24 == 91)
        {
          *a3 = v23 + 1;
        }

        v42 = v78 + *a6;
LABEL_56:
        v22 = v42 + 3;
        goto LABEL_86;
      }

      goto LABEL_41;
    }

    v31 = *a6;
    if ((v31 + 3) >= a5)
    {
      return 0;
    }

    v32 = 8;
    goto LABEL_54;
  }

  if (*(a1 + 2 * *a3) > 0x5Du)
  {
    if (v14 != 94)
    {
      if (v14 == 124)
      {
        if (*a6 + 5 >= a5)
        {
          return 0;
        }

        *(a4 + 2 * *a6) = 7;
        goto LABEL_83;
      }

      goto LABEL_41;
    }

LABEL_39:
    v31 = *a6;
    if ((v31 + 3) >= a5)
    {
      return 0;
    }

    v32 = 12;
LABEL_54:
    *(a4 + 2 * v31) = v32;
    *a3 = v13 + 1;
    goto LABEL_55;
  }

  if (v14 != 91)
  {
    if (v14 == 92)
    {
      *a3 = ++v13;
      if (v13 >= a2)
      {
        return 0;
      }
    }

    goto LABEL_41;
  }

  v34 = v13 + 1;
  *a3 = v34;
  if (v34 >= a2)
  {
    return 0;
  }

  v35 = 0;
  v36 = 0;
  v37 = (a1 + 2 * v34);
  v38 = v37;
  while (1)
  {
    v40 = *v38++;
    v39 = v40;
    if (v36 || v39 != 92)
    {
      break;
    }

    v41 = 1;
LABEL_50:
    v22 = 0;
    --v35;
    v36 = v41;
    if (v34 - a2 == v35)
    {
      return v22;
    }
  }

  v41 = 0;
  if (v36 || v39 != 93)
  {
    goto LABEL_50;
  }

  if (*a6 - v35 + 4 < a5)
  {
    v60 = v34 - v35;
    *(a4 + 2 * *a6) = 10;
    v61 = (a4 + 2 * *a6 + 6);
    if (v34 >= v60)
    {
      LOWORD(v64) = 1;
    }

    else
    {
      v62 = 0;
      v63 = v60 - v34;
      v64 = 1;
      do
      {
        v66 = *v37++;
        v65 = v66;
        if (v62 || v65 != 92)
        {
          v62 = 0;
          v61[v64++] = v65;
        }

        else
        {
          v62 = 1;
        }

        --v63;
      }

      while (v63);
      LODWORD(v34) = v60;
    }

    *v61 = v64 - 1;
    *a3 = v34 + 1;
    v42 = v64 + *a6;
    goto LABEL_56;
  }

  return 0;
}

uint64_t sub_1BEB0(uint64_t result, int a2)
{
  v2 = result;
  v3 = *(result + 2 * a2);
  v4 = result + 2 * a2;
  if ((v3 - 2) >= 5)
  {
    if (v3 != 7)
    {
      return result;
    }

    sub_1B538(result, *(v4 + 6));
    HIDWORD(v6) = *(v4 + 6);
    LODWORD(v6) = HIDWORD(v6);
    *(v4 + 6) = v6 >> 16;
  }

  v5 = *(v4 + 6);

  return sub_1B538(v2, v5);
}

uint64_t sub_1BF2C(uint64_t a1, int *a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14 = a4;
  v16 = a9;
  v17 = a5 + 4;
  v63 = a5 + 8;
  v18 = a5 + 6;
  v19 = a4 * a3;
  v58 = *a2;
  v59 = a4 * a3;
  while (1)
  {
LABEL_2:
    v20 = *(a5 + 2 * a6);
    if (v20 == 0xFFFF)
    {
      return 1;
    }

    if (v20 == 12)
    {
      if (*a2 * v14 < v19)
      {
        return a7;
      }

      return a7 == 0;
    }

    v21 = *a2;
    if (*a2 * v14 >= v19)
    {
      break;
    }

    result = 0;
    if (*(a5 + 2 * a6) <= 5u)
    {
      if (*(a5 + 2 * a6) > 3u)
      {
        goto LABEL_28;
      }

      goto LABEL_13;
    }

    if (*(a5 + 2 * a6) <= 7u)
    {
      if (v20 != 6)
      {
LABEL_37:
        v41 = a5 + 2 * a6;
        if (sub_1BF2C(a1, a2, a3, v14, a5, *(v41 + 6), a7, a8, v16, a10))
        {
          return 1;
        }

        *a2 = v21;
        v23 = (v41 + 8);
LABEL_41:
        v16 = a9;
        goto LABEL_61;
      }

LABEL_39:
      v42 = a5 + 2 * a6;
      if (sub_1BF2C(a1, a2, a3, v14, a5, *(v42 + 6), a7, a8, v16, a10))
      {
        return 1;
      }

      *a2 = v21;
      v23 = (v42 + 4);
      goto LABEL_41;
    }

    switch(v20)
    {
      case 8:
        *a2 = v21 + v14;
LABEL_57:
        v23 = (v17 + 2 * a6);
        goto LABEL_61;
      case 9:
        v43 = *(a1 + 2 * v21);
        v44 = a5 + 2 * a6;
        v57 = *(v44 + 6);
        v56 = v44;
        v61 = *(v44 + 8);
        v45 = translation_direction;
        v46 = _lou_charHash(v43);
        v47 = &unk_28E40;
        if (!v45)
        {
          v47 = &unk_28E80;
        }

        v48 = 13608;
        if (!v45)
        {
          v48 = 18100;
        }

        v49 = *(a10 + v48 + 4 * v46);
        if (v49)
        {
          while (1)
          {
            v50 = a10 + 31616 + 8 * v49;
            if (*(v50 + 44) == v43)
            {
              break;
            }

            v49 = *(v50 + 12);
            if (!v49)
            {
              goto LABEL_51;
            }
          }
        }

        else
        {
LABEL_51:
          v51 = &unk_28E40;
          if (!v45)
          {
            v51 = &unk_28E80;
          }

          v51[22] = v43;
          v50 = v47;
        }

        v16 = a9;
        if ((a7 != 0) == ((*(v50 + 24) & ((v57 << 16) & 0xFFFFFFFFFCFFFFFFLL | v61)) != 0))
        {
          return 0;
        }

        *a2 += v14;
        v24 = v56;
        break;
      case 10:
        v24 = a5 + 2 * a6;
        v25 = *(v24 + 6);
        if (*(v24 + 6))
        {
          v26 = (v63 + 2 * a6);
          while (1)
          {
            v27 = *v26++;
            if (v27 == *(a1 + 2 * v21))
            {
              break;
            }

            if (!--v25)
            {
              goto LABEL_26;
            }
          }

          if ((a7 != 0) == (v25 != 0))
          {
            return 0;
          }
        }

        else
        {
LABEL_26:
          if (!a7)
          {
            return 0;
          }
        }

        *a2 = v21 + v14;
        break;
      default:
        return result;
    }

    v23 = (v24 + 4);
LABEL_61:
    a6 = *v23;
    for (i = *(a5 + 2 * a6); i == -1; i = *(a5 + 2 * a6))
    {
      v53 = *(v17 + 2 * a6);
      if (v53 == 0xFFFF)
      {
        break;
      }

      v54 = (a5 + 2 * v53);
      v55 = *v54;
      if (v55 == 3)
      {
        a7 = a7 == 0;
      }

      else if ((v55 - 4) <= 1)
      {
        a6 = *(v17 + 2 * a6);
        if (*a2 != v58)
        {
          goto LABEL_2;
        }

        return 0;
      }

      a6 = v54[2];
    }
  }

  result = 0;
  if (*(a5 + 2 * a6) <= 3u)
  {
LABEL_13:
    if (v20 == 1)
    {
      goto LABEL_57;
    }

    if (v20 != 2)
    {
      if (v20 != 3)
      {
        return result;
      }

      a7 = a7 == 0;
    }

    v23 = (v18 + 2 * a6);
    goto LABEL_61;
  }

  if (*(a5 + 2 * a6) < 6u)
  {
LABEL_28:
    if (a6 == a8)
    {
      v60 = a7;
      v28 = *(v63 + 2 * a8);
      v29 = a8;
      ++*(v16 + 4 * v28);
      v30 = a8;
    }

    else
    {
      v29 = a6;
      v31 = *(v63 + 2 * a6);
      if (*(v16 + 4 * v31))
      {
LABEL_43:
        v23 = (v17 + 2 * v29);
        goto LABEL_61;
      }

      v60 = a7;
      *(v16 + 4 * v31) = 1;
      v30 = a6;
    }

    v32 = *a2;
    v33 = v18;
    v34 = v29;
    v35 = *(v18 + 2 * v29);
    v36 = v14;
    v37 = v14;
    v38 = v16;
    if (sub_1BF2C(a1, a2, a3, v37, a5, v35, v60, v30, v16, a10))
    {
      return 1;
    }

    *a2 = v32;
    v39 = *(v63 + 2 * v30);
    v40 = *(v38 + 4 * v39);
    *(v38 + 4 * v39) = v40 - 1;
    a8 = v30;
    v16 = v38;
    if (*(a5 + 2 * a6) == 4)
    {
      v14 = v36;
      v19 = v59;
      v18 = v33;
      v29 = v34;
      a7 = v60;
      if (v40 < 2)
      {
        return 0;
      }
    }

    else
    {
      v14 = v36;
      v19 = v59;
      v18 = v33;
      v29 = v34;
      a7 = v60;
    }

    goto LABEL_43;
  }

  if (v20 == 6)
  {
    goto LABEL_39;
  }

  if (v20 == 7)
  {
    goto LABEL_37;
  }

  if (v20 != 9)
  {
    return result;
  }

  if ((*(a5 + 2 * a6 + 6) & 0x100) == 0)
  {
    return 0;
  }

  return a7 == 0;
}

uint64_t _lou_stringHash(unsigned __int16 *a1, int a2, uint64_t a3)
{
  v4 = *a1;
  if (a2)
  {
    v4 = sub_1C488(*a1, a3);
    v6 = sub_1C488(a1[1], a3);
  }

  else
  {
    v6 = a1[1];
  }

  return (v6 + (v4 << 8) - 1123 * ((3824548 * (v6 + (v4 << 8))) >> 32));
}

uint64_t sub_1C488(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 4 * (result - 1123 * ((3824548 * result) >> 32)) + 13608);
  if (v2)
  {
    v3 = a2 + 31616;
    while (1)
    {
      v4 = v3 + 8 * v2;
      if (*(v4 + 44) == result)
      {
        break;
      }

      v2 = *(v4 + 12);
      if (!v2)
      {
        return result;
      }
    }

    v5 = *(v4 + 32);
    if ((v5 & 0x10) != 0)
    {
      v6 = *(v4 + 48);
      if (v6)
      {
        v4 = v3 + 8 * v6;
      }

      v7 = v5 & 0xFFFFFFFFFFFFFFEFLL;
      while ((v7 & ~*(v4 + 32)) != 0)
      {
        v8 = *(v4 + 52);
        if (!v8)
        {
          return result;
        }

        v4 = v3 + 8 * v8;
      }

      return *(v4 + 44);
    }
  }

  return result;
}

char *_lou_showString(unsigned __int16 *a1, unsigned int a2, int a3)
{
  byte_2DD10[0] = 39;
  if (a2 >= 1)
  {
    v5 = a2;
    v6 = &dword_0 + 1;
    v7 = &dword_0 + 1;
    while (1)
    {
      v9 = *a1++;
      v8 = v9;
      if (a3 || (v8 - 127) < 0xFFFFFFA1)
      {
        v10 = __sprintf_chk(__src, 0, 0x14uLL, "%x", v8);
        v11 = v10;
        v12 = v10 - 1;
        if ((v10 - 1) > 7)
        {
          v14 = 0;
          LOBYTE(v13) = 63;
        }

        else
        {
          v13 = 0x7A7A7A7978787878uLL >> (8 * v12);
          v14 = dword_1E014[v12];
        }

        if ((v10 + v7 + v14) > 2041)
        {
          goto LABEL_19;
        }

        v15 = &byte_2DD10[v7];
        *v15 = 92;
        v15[1] = v13;
        if (v14)
        {
          memset(&byte_2DD10[v7 + 2], 48, v14);
          v7 += v14 + 2;
        }

        else
        {
          v7 += 2;
        }

        if (v11 >= 1)
        {
          memcpy(&byte_2DD10[v7], __src, v11);
          v7 += v11;
        }
      }

      else
      {
        byte_2DD10[v7++] = v8;
      }

      if (v6 < v5)
      {
        ++v6;
        if (v7 < 2046)
        {
          continue;
        }
      }

      goto LABEL_19;
    }
  }

  v7 = &dword_0 + 1;
LABEL_19:
  *&byte_2DD10[v7] = 39;
  return byte_2DD10;
}

char *_lou_unknownDots(unsigned int a1)
{
  byte_2E510[0] = 92;
  v1 = a1;
  v2 = 1;
  v3 = &qword_1DDC8;
  v4 = 15;
  v5 = &dword_0 + 1;
  result = byte_2E510;
  do
  {
    if ((v2 & v1) != 0)
    {
      byte_2E510[v5++] = *(v3 - 8);
    }

    v7 = *v3;
    v3 += 2;
    v2 = v7;
    --v4;
  }

  while (v4);
  if (v5 == 1)
  {
    LOBYTE(word_2E511) = 48;
    v5 = &dword_0 + 2;
  }

  *&byte_2E510[v5] = 47;
  return result;
}

char *_lou_showDots(uint64_t a1, unsigned int a2)
{
  result = byte_2E524;
  v4 = a2 - 1;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = a2;
    do
    {
      v8 = &qword_1DDC8;
      v9 = 15;
      v10 = 1;
      do
      {
        if ((v10 & *(a1 + 2 * v5)) != 0 && v6 <= 2046)
        {
          byte_2E524[v6++] = *(v8 - 8);
        }

        v11 = *v8;
        v8 += 2;
        v10 = v11;
        --v9;
      }

      while (v9);
      if (*(a1 + 2 * v5) == -32768 && v6 < 2047)
      {
        byte_2E524[v6++] = 48;
      }

      if (v5 != v4 && v6 <= 2046)
      {
        byte_2E524[v6++] = 45;
      }

      ++v5;
    }

    while (v5 < v7 && v6 < 2047);
    v12 = v6;
  }

  byte_2E524[v12] = 0;
  return result;
}

char *_lou_showAttributes(uint64_t a1)
{
  v1 = 0;
  v2 = &qword_1DEC8;
  v3 = 1;
  v4 = 13;
  do
  {
    if ((v3 & a1) != 0 && v1 <= 2046)
    {
      byte_2ED24[v1++] = *(v2 - 8);
    }

    v5 = *v2;
    v2 += 2;
    v3 = v5;
    --v4;
  }

  while (v4);
  byte_2ED24[v1] = 0;
  return byte_2ED24;
}

BOOL _lou_isValidMode(int a1)
{
  for (i = 0; i != 7; ++i)
  {
    a1 &= ~dword_1DF98[i];
  }

  return a1 == 0;
}

uint64_t _lou_charToFallbackDots(unsigned int a1)
{
  if (a1 <= 0x7F)
  {
    v1 = a1;
  }

  else
  {
    v1 = 63;
  }

  v2 = &unk_1DFB3;
  do
  {
    v3 = v2[1];
    v2 += 4;
  }

  while (v3 > v1);
  return (byte_1DFB4[v1 & ~*(v2 - 2) | *(v2 - 1)] | *v2) | 0x8000u;
}

void sub_1C920()
{
  sub_2A9C();
  sub_2AA8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1CA78(void *a1)
{
  v1 = [a1 activeTable];
  sub_2A9C();
  sub_2AB4(&dword_0, v2, v3, "Tried to translate technical text, but there is no technical table for %@.", v4, v5, v6, v7);
}

void sub_1CAFC(void *a1)
{
  v1 = [a1 activeTable];
  sub_2A9C();
  sub_2AB4(&dword_0, v2, v3, "Tried to translate text to braille, but couldn't find a table to use for %@", v4, v5, v6, v7);
}

void sub_1CB80()
{
  sub_2A9C();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "Couldn't set form type data correctly! %@ %@", v2, 0x16u);
}

void sub_1CC44()
{
  sub_2A9C();
  v3 = 1024;
  v4 = v0;
  _os_log_error_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "Error translating text: '%@' result:%d", v2, 0x12u);
}

void sub_1CD08()
{
  sub_2A9C();
  sub_2AA8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1CD78()
{
  sub_2A9C();
  sub_2AA8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}