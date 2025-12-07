uint64_t sub_1819F37E8(sqlite3_stmt **a1, int a2, void *a3, _DWORD *a4)
{
  v4 = *(*a1 + 3);
  *a3 = 0;
  *a4 = 0;
  if (a2 < 0 || *(v4 + 32) <= a2)
  {
    return 25;
  }

  if (*(*(v4 + 48) + a2) || (*(*(*a1 + 3) + 72) & 0xFFFFFFFD) == 1 || !*(v4 + 112))
  {
    return 0;
  }

  result = sub_1819F1838(a1, 0);
  if (!result)
  {
    result = sub_1819F1A64(v4, a1[7], a2, &v11, &v10);
    if (!result)
    {
      *a3 = *(v4 + 168);
      *a4 = *(v4 + 176);
    }

    *(v4 + 168) = 0;
    *(v4 + 176) = 0;
  }

  return result;
}

uint64_t sub_1819F38C8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v7 = *a1;
  v8 = *(*a1 + 24);
  *(v8 + 168) = a4;
  *(v8 + 176) = a5;
  if (a2)
  {
    if (*(v8 + 128) || (v14 = a6, result = sub_1819D630C(v8), a6 = v14, !result))
    {
      v12 = *(v8 + 144);
      if (v12)
      {
        result = (*(v12 + 16))(*(v8 + 128), a6, 8, a2, a3, a7);
      }

      else
      {
        result = (*(*(v8 + 136) + 24))(*(v8 + 128), a6, 8, a2, a3, *(v8 + 168), *(v8 + 176), a7);
      }
    }
  }

  else
  {
    result = 0;
  }

  v15 = *(v7 + 24);
  *(v15 + 168) = 0;
  *(v15 + 176) = 0;
  return result;
}

uint64_t sub_1819F39A0(uint64_t a1, int a2)
{
  if (*(a1 + 16))
  {
    return 0;
  }

  *(a1 + 24) = 0;
  v5 = (a1 + 24);
  v6 = *(a1 + 8);
  v7 = *(a1 + 32);
  v8 = *(*v6 + 32);
  bzero(v7, 8 * v8);
  v9 = sub_1819DFC90(v6, 1);
  v10 = v9;
  if (v6[15])
  {
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  else if (*(v9 + 2))
  {
    v11 = sub_1819DFFB0(*v9, v5);
    if (v8 >= 1 && *(v10 + 2) > v11)
    {
      v13 = v11;
      v14 = 1;
      do
      {
        v13 += sub_1819DFFB0((*v10 + v13), v7);
        v15 = v13 < *(v10 + 2) && v14++ < v8;
        v7 += 8;
      }

      while (v15);
    }
  }

  v16 = &off_1ED452EB0;
  if (dword_1ED452E80)
  {
    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v10);
    --qword_1ED456A90;
    off_1ED452EB0(v10);
    v10 = xmmword_1ED456AF0;
    if (!xmmword_1ED456AF0)
    {
      goto LABEL_22;
    }

    v16 = &xmmword_1ED452F28;
  }

  (*v16)(v10);
LABEL_22:
  result = v6[15];
  v6[15] = 0;
  *(a1 + 16) = a2;
  return result;
}

uint64_t sub_1819F3B18(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    v3 = *(v2 + 28);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(*(*a1 + 24) + 32);
  v5 = *(a1 + 160);
  if (!v5)
  {
    if (sqlite3_initialize() || (v30 = sub_181902484(32 * v3, 1913357809)) == 0)
    {
      if (v3 <= 0)
      {
        result = 0;
      }

      else
      {
        result = 7;
      }

      *(a1 + 160) = 0;
      return result;
    }

    v5 = v30;
    bzero(v30, 32 * v3);
    *(a1 + 160) = v5;
  }

  v6 = v3;
  if (v3 >= 1)
  {
    v7 = 0;
    v8 = v5 + 12;
    do
    {
      v33 = 0;
      v32 = 0;
      result = sub_1819F3DE4(a1, v7, &v33, &v32);
      if (result)
      {
        LODWORD(v15) = 0;
        goto LABEL_45;
      }

      v10 = v33;
      v11 = v32;
      *(v8 - 12) = 0u;
      *(v8 + 4) = 0u;
      *(v8 - 12) = v10;
      *(v8 - 1) = v11;
      if (sub_1819E0A34(v10, v11, v8, (v8 + 12)))
      {
        v8[5] = 1;
      }

      ++v7;
      v8 += 32;
    }

    while (v7 < v3);
  }

  if (v3 < 1)
  {
    result = 0;
    LODWORD(v15) = 0;
    goto LABEL_45;
  }

  v12 = 0;
  v13 = v5 + 3;
  while (1)
  {
    v14 = 0;
    v15 = v12;
    v16 = v13;
    v17 = 0xFFFFFFFFLL;
    do
    {
      if (!*(v16 - 7) && ((v17 & 0x80000000) != 0 || *v16 < v5[4 * v17 + 3]))
      {
        v17 = v14;
      }

      ++v14;
      v16 += 4;
    }

    while (v6 != v14);
    if ((v17 & 0x80000000) != 0)
    {
      result = 0;
      goto LABEL_45;
    }

    ++v12;
    v18 = *(a1 + 168);
    v19 = *(a1 + 176);
    if (v15 + 1 >= v18)
    {
      break;
    }

LABEL_29:
    v26 = (v19 + ((0x300000000 * v12 - 0x300000000) >> 30));
    v27 = &v5[4 * v17];
    v28 = *(v27 + 3);
    v29 = HIDWORD(v28) & 0x7FFFFFFF;
    *v26 = v17;
    v26[1] = v29;
    v26[2] = v28 & 0x7FFFFFFF;
    if (v29 >= v4)
    {
      result = 267;
      LODWORD(v15) = v12;
      goto LABEL_45;
    }

    if (sub_1819E0A34(*v27, *(v27 + 2), v27 + 3, v27 + 3))
    {
      v27[17] = 1;
    }
  }

  v31 = v15;
  v20 = v3;
  v21 = v13;
  v22 = v4;
  if (v18)
  {
    v23 = 2 * v18;
  }

  else
  {
    v23 = 32;
  }

  v24 = sqlite3_initialize();
  result = 7;
  if (!v23 || v24)
  {
    goto LABEL_44;
  }

  v25 = sub_18190287C(v19, 12 * v23, 0x100004052888210);
  if (v25)
  {
    v19 = v25;
    *(a1 + 176) = v25;
    *(a1 + 168) = v23;
    v4 = v22;
    v13 = v21;
    v3 = v20;
    goto LABEL_29;
  }

  result = 7;
LABEL_44:
  LODWORD(v15) = v31;
LABEL_45:
  *(a1 + 172) = v15;
  *(a1 + 80) &= ~8u;
  return result;
}

uint64_t sub_1819F3DE4(uint64_t a1, unsigned int a2, void *a3, _DWORD *a4)
{
  if ((a2 & 0x80000000) != 0)
  {
    goto LABEL_8;
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    if (*(v4 + 28) > a2)
    {
      goto LABEL_4;
    }

LABEL_8:
    v7 = 25;
    goto LABEL_9;
  }

  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(*a1 + 24);
  v6 = *(a1 + 72);
  if (!*(v5 + 116))
  {
    v9 = *(a1 + 80);
    if ((v9 & 0x40) != 0)
    {
      *(a1 + 80) = v9 & 0xFFFFFFBF;
    }

    goto LABEL_69;
  }

  if ((*(v5 + 72) & 0xFFFFFFFD) == 1)
  {
    v7 = 0;
LABEL_9:
    *a3 = 0;
    *a4 = 0;
    return v7;
  }

  if ((*(a1 + 80) & 0x40) != 0)
  {
    v10 = a1;
    v11 = a2;
    v12 = a3;
    v13 = a4;
    v14 = *(v4 + 28);
    if (sqlite3_initialize() || (v15 = sub_181902484(16 * v14, 0x1000040451B5BE8)) == 0)
    {
      v7 = 7;
LABEL_65:
      a1 = v10;
      v41 = *(v10 + 72);
      if (v41)
      {
        v42 = v7;
        sub_1819F4710(*(*(v10 + 64) + 16), *(v41 + 8));
        v7 = v42;
        a1 = v10;
      }

      *(a1 + 80) &= ~0x40u;
      a4 = v13;
      a3 = v12;
      if (v7)
      {
        goto LABEL_9;
      }

      v6 = *(a1 + 72);
      a2 = v11;
      goto LABEL_69;
    }

    v16 = v15;
    bzero(v15, 16 * *(v4 + 28));
    v17 = *(v4 + 28);
    if (v17 >= 1)
    {
      v18 = *(v4 + 32);
      v19 = v16 + 12;
      do
      {
        v20 = *v18;
        if (v6 || v20[4] && *(*v20 + 24) == *(*(v4 + 16) + 24) && !*(*v20 + 4))
        {
          v20[4] = 0;
        }

        else
        {
          *v19 = 1;
        }

        v19 += 4;
        ++v18;
        --v17;
      }

      while (v17);
    }

    v21 = sub_1819F1838(v10, 0);
    if (*(v5 + 32) < 1 || v21 != 0)
    {
LABEL_30:
      v23 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        v24 = v21;
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v16);
        --qword_1ED456A90;
        off_1ED452EB0(v16);
        v16 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          goto LABEL_64;
        }

        v23 = &xmmword_1ED452F28;
      }

      else
      {
        v24 = v21;
      }

      (*v23)(v16);
LABEL_64:
      v7 = v24;
      goto LABEL_65;
    }

    v25 = v10;
    v26 = 0;
    while (1)
    {
      v48 = 0;
      v47 = 0;
      v21 = sub_1819F1A64(v5, *(v25 + 56), v26, &v48, &v47);
      v25 = v10;
      if (!v21)
      {
        v28 = *(v10 + 64);
        v29 = v48;
        v30 = v47;
        v49[0] = v28;
        v49[1] = v16;
        v49[2] = (v26 << 32) - 1;
        v31 = *(v28 + 28);
        if (v31 >= 1)
        {
          v32 = 0;
          v33 = *(v28 + 32);
          do
          {
            v34 = *(*(**(v33 + 8 * v32) + 32) + 8);
            v35 = &v16[16 * v32];
            if (v34)
            {
              v38 = *v34;
              v36 = v34 + 1;
              v37 = v38;
              if (v38 < 1)
              {
                goto LABEL_46;
              }

              while (1)
              {
                v39 = *v36++;
                if (v26 == v39)
                {
                  break;
                }

                if (!--v37)
                {
                  goto LABEL_46;
                }
              }
            }

            if (!*(v35 + 3))
            {
              *(v35 + 2) = 1;
              goto LABEL_47;
            }

LABEL_46:
            *(v35 + 2) = 0;
LABEL_47:
            ++v32;
          }

          while (v32 != v31);
        }

        if (v29)
        {
          if (*(v5 + 128) || (v21 = sub_1819D630C(v5), v25 = v10, !v21))
          {
            v40 = *(v5 + 144);
            if (v40)
            {
              v21 = (*(v40 + 16))(*(v5 + 128), v49, 4, v29, v30, sub_1819F4260);
            }

            else
            {
              v21 = (*(*(v5 + 136) + 24))(*(v5 + 128), v49, 4, v29, v30, *(v5 + 168), *(v5 + 176), sub_1819F4260);
            }

            v25 = v10;
          }
        }

        else
        {
          v21 = 0;
        }
      }

      *(v5 + 168) = 0;
      *(v5 + 176) = 0;
      if (++v26 >= *(v5 + 32) || v21 != 0)
      {
        goto LABEL_30;
      }
    }
  }

LABEL_69:
  if (v6 && !*(v5 + 116))
  {
    if (a2)
    {
      v46 = *(v6 + 4 * a2 + 24);
    }

    else
    {
      v46 = 0;
    }

    v7 = 0;
    *a4 = *(v6 + 4 * a2 + 28) - v46;
    *a3 = *(v6 + 16) + v46;
  }

  else
  {
    v43 = *(a1 + 64);
    v44 = *(*(v43 + 32) + 8 * a2);
    if (*(*v44 + 4) || *(*v44 + 24) != *(*(v43 + 16) + 24))
    {
      v45 = 0;
      *a3 = 0;
    }

    else
    {
      *a3 = *(v44 + 8);
      v45 = *(v44 + 16);
    }

    v7 = 0;
    *a4 = v45;
  }

  return v7;
}

uint64_t sub_1819F4260(void *a1, char a2, _BYTE *__s2, unsigned int a4)
{
  v5 = a1;
  v6 = *a1;
  if (a4 >= 0x8000)
  {
    v7 = 0x8000;
  }

  else
  {
    v7 = a4;
  }

  v8 = *(v6 + 16);
  if (!*(*(v6 + 8) + 108))
  {
LABEL_9:
    v10 = *(v8 + 24);
    if (a2)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (a4 < 1)
  {
    LODWORD(v7) = 0;
    v10 = *(v8 + 24);
    if (a2)
    {
      goto LABEL_11;
    }

LABEL_10:
    ++a1[2];
    goto LABEL_11;
  }

  v9 = 0;
  while (__s2[v9])
  {
    if (v7 == ++v9)
    {
      goto LABEL_9;
    }
  }

  LODWORD(v7) = v9;
  v10 = *(v8 + 24);
  if ((a2 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_11:
  if (*(v6 + 28) >= 1)
  {
    v11 = 0;
    __n = a4;
    v50 = v10;
    v51 = a4;
    while (1)
    {
      v13 = v5[1] + 16 * v11;
      if (*(v13 + 8))
      {
        v14 = *(*(v6 + 32) + 8 * v11);
        v15 = v14 + 32;
        while (1)
        {
          v16 = *(v15 + 16);
          if ((v16 == v7 || v16 < v7 && *v15) && !memcmp(*(v15 + 8), __s2, v16))
          {
            break;
          }

          v15 = *(v15 + 32);
          if (!v15)
          {
            goto LABEL_16;
          }
        }

        v17 = v5[2];
        LODWORD(v18) = *(v14 + 20);
        v19 = (*(v14 + 16) + 15);
        if (v19 > v18)
        {
          if (!v18)
          {
            LODWORD(v18) = 64;
          }

          v18 = v18;
          do
          {
            v20 = v18;
            v18 *= 2;
          }

          while (v20 < v19);
          v21 = *(v14 + 8);
          if (sqlite3_initialize())
          {
            return 7;
          }

          v22 = sub_18190287C(v21, v20, 688041480);
          if (!v22)
          {
            return 7;
          }

          *(v14 + 20) = v20;
          *(v14 + 8) = v22;
          v5 = a1;
        }

        sub_1819E08CC((v14 + 8), v13, v17);
        v23 = a4;
        if (*(*(v6 + 8) + 108) || *v15)
        {
          break;
        }
      }

LABEL_16:
      if (++v11 >= *(v6 + 28))
      {
        return 0;
      }
    }

    v24 = *(v15 + 24);
    v25 = *(v24 + 24);
    v26 = *(v24 + 32);
    v27 = v5[2] & 0xFFFFFFFF7FFFFFFFLL;
    if (*(v24 + 72) <= 0)
    {
      v32 = *(v25 + 8);
      if (v32 >= 1)
      {
        v33 = 0;
        while (1)
        {
          v34 = *(v25 + v33 + 7);
          if (*(v34 + 208) - 1 == a4 && !memcmp(__s2, (*(v34 + 200) + 1), __n))
          {
            break;
          }

          if (v32 == ++v33)
          {
            goto LABEL_15;
          }
        }

        if (!*(v26 + 60))
        {
          v35 = *(v25 + 1);
          if (v35 == *v25)
          {
            if (v35)
            {
              v36 = 2 * v35;
            }

            else
            {
              v36 = 64;
            }

            v37 = *(v25 + 1);
            if (sqlite3_initialize())
            {
              goto LABEL_69;
            }

            v38 = sub_18190287C(v37, (24 * v36) & ~((24 * v36) >> 31), 0x1000040504FFAC1);
            if (!v38)
            {
              goto LABEL_69;
            }

            *(v25 + 1) = v38;
            *v25 = v36;
            v35 = *(v25 + 1);
          }

          else
          {
            v38 = *(v25 + 1);
          }

          v49 = v38 + 24 * v35;
          *v49 = v50;
          *(v49 + 8) = v27;
          *(v49 + 16) = v33;
          *(v38 + 24 * (*(v25 + 1))++ + 20) = 0;
        }
      }

LABEL_15:
      result = *(v26 + 60);
      *(v26 + 60) = 0;
      v5 = a1;
      if (result)
      {
        return result;
      }

      goto LABEL_16;
    }

    if (v25)
    {
      if (*(v26 + 60))
      {
        goto LABEL_61;
      }

      goto LABEL_38;
    }

    if (!*(v26 + 60))
    {
      if (!sqlite3_initialize())
      {
        v48 = sub_181902484(160, 1913357809);
        if (v48)
        {
          v25 = v48;
          v48[8] = 0u;
          v48[9] = 0u;
          v48[6] = 0u;
          v48[7] = 0u;
          v48[4] = 0u;
          v48[5] = 0u;
          v48[2] = 0u;
          v48[3] = 0u;
          *v48 = 0u;
          v48[1] = 0u;
          *(v24 + 24) = v48;
          if (*(v26 + 60))
          {
            goto LABEL_61;
          }

LABEL_38:
          v28 = *(v25 + 6);
          v29 = *(v25 + 1);
          if (v29 != *v25)
          {
            v39 = *(v25 + 1);
LABEL_60:
            v40 = v39 + 24 * v29;
            *v40 = v50;
            *(v40 + 8) = v27;
            *(v40 + 16) = v28;
            *(v39 + 24 * (*(v25 + 1))++ + 20) = v23;
            goto LABEL_61;
          }

          if (v29)
          {
            v30 = 2 * v29;
          }

          else
          {
            v30 = 64;
          }

          v31 = *(v25 + 1);
          if (!sqlite3_initialize())
          {
            v39 = sub_18190287C(v31, (24 * v30) & ~((24 * v30) >> 31), 0x1000040504FFAC1);
            if (v39)
            {
              *(v25 + 1) = v39;
              *v25 = v30;
              v29 = *(v25 + 1);
              v23 = a4;
              goto LABEL_60;
            }
          }

          *(v26 + 60) = 7;
          v23 = a4;
LABEL_61:
          if (!v23)
          {
            goto LABEL_15;
          }

          v41 = *(v25 + 6);
          v42 = *(v25 + 7);
          v43 = v41 + v23;
          if (v43 <= v42)
          {
            v47 = *(v25 + 2);
LABEL_71:
            memcpy((v47 + v41), __s2, v51);
            *(v25 + 6) += v23;
            goto LABEL_15;
          }

          if (v42)
          {
            LODWORD(v44) = *(v25 + 7);
          }

          else
          {
            LODWORD(v44) = 64;
          }

          v44 = v44;
          do
          {
            v45 = v44;
            v44 *= 2;
          }

          while (v45 < v43);
          v46 = *(v25 + 2);
          if (!sqlite3_initialize())
          {
            v47 = sub_18190287C(v46, v45, 688041480);
            if (v47)
            {
              *(v25 + 7) = v45;
              *(v25 + 2) = v47;
              v41 = *(v25 + 6);
              v23 = a4;
              goto LABEL_71;
            }
          }

LABEL_69:
          *(v26 + 60) = 7;
          goto LABEL_15;
        }
      }

      *(v26 + 60) = 7;
    }

    *(v24 + 24) = 0;
    goto LABEL_15;
  }

  return 0;
}

BOOL sub_1819F4710(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = a2;
  *(a1 + 4) = 0;
  v4 = *a1;
  if (*a1 > 1)
  {
    if (v4 == 2)
    {
      if (*(a1 + 40) >= 1)
      {
        for (i = 6; sub_1819F4710(*(a1 + 8 * i), a2); ++i)
        {
          v9 = i - 5;
          if (v9 >= *(a1 + 40))
          {
            return 1;
          }
        }

        goto LABEL_25;
      }

      return 1;
    }

    if (v4 != 4 && v4 != 9)
    {
LABEL_23:
      if (!sub_1819F4710(*(a1 + 48), a2) || sub_1819F4710(*(a1 + 56), a2))
      {
LABEL_25:
        sub_1819F4844(a1);
        return 0;
      }

      return 1;
    }

    return *(*(*(a1 + 32) + 24) + 16) > 0;
  }

  if (!v4)
  {
    return *(*(*(a1 + 32) + 24) + 16) > 0;
  }

  if (v4 != 1)
  {
    goto LABEL_23;
  }

  if (*(a1 + 40) < 1)
  {
    return 0;
  }

  v6 = 0;
  LODWORD(v7) = 0;
  do
  {
    if (sub_1819F4710(*(a1 + 48 + 8 * v6), a2))
    {
      v7 = 1;
    }

    else
    {
      v7 = v7;
    }

    ++v6;
  }

  while (v6 < *(a1 + 40));
  return v7;
}

uint64_t sub_1819F4844(uint64_t result)
{
  v1 = result;
  if (*result == 4 || *result == 9)
  {
    *(*(*(result + 32) + 24) + 16) = 0;
  }

  else if (*(result + 40) >= 1)
  {
    v3 = 0;
    do
    {
      result = sub_1819F4844(*(v1 + 48 + 8 * v3++));
    }

    while (v3 < *(v1 + 40));
  }

  return result;
}

uint64_t sub_1819F48B8(uint64_t *a1, uint64_t a2, int *a3)
{
  v5 = *(*a1 + 32);
  v19 = 0;
  result = sub_1819D907C(a1, 9, &v19, 0);
  v7 = v19;
  if (v19)
  {
    if (!sub_1818DF6EC(v19, 0))
    {
      v8 = *(v7 + 16);
      if ((*(v8 + 20) & 0x9000) != 0)
      {
        sub_18193D288(v8, a2);
      }

      else
      {
        *v8 = a2;
        *(v8 + 20) = 4;
      }

      v9 = *(*v7 + 24);
      if (v9)
      {
        xmmword_1ED452F28(v9);
      }
    }

    if (sqlite3_step(v7) == 100)
    {
      v10 = sqlite3_column_blob(v7, 0);
      v11 = sqlite3_column_bytes(v7, 0);
      if (v5 < 1)
      {
        v12 = 0;
LABEL_22:
        v18 = v12 != v11;
        goto LABEL_23;
      }

      v12 = 0;
      while (v12 < v11)
      {
        v14 = &v10[v12];
        v15 = *v14;
        if (*v14 < 0)
        {
          v16 = v14[1];
          if (v14[1] < 0)
          {
            v17 = v14[2];
            if (v17 < 0)
            {
              v20 = 0;
              v13 = sub_1819DFFB0(v14, &v20);
              *a3 = v20 & 0x7FFFFFFF;
            }

            else
            {
              *a3 = ((v15 & 0x7F) << 14) | ((v16 & 0x7F) << 7) | v17;
              v13 = 3;
            }
          }

          else
          {
            *a3 = ((v15 & 0x7F) << 7) | v16;
            v13 = 2;
          }
        }

        else
        {
          *a3 = v15;
          v13 = 1;
        }

        v12 += v13;
        ++a3;
        if (!--v5)
        {
          goto LABEL_22;
        }
      }
    }

    v18 = 1;
LABEL_23:
    LODWORD(result) = sqlite3_reset(v7);
    if (v18 && result == 0)
    {
      return 267;
    }

    else
    {
      return result;
    }
  }

  return result;
}

uint64_t sub_1819F4A68(_DWORD *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    ++*a1;
  }

  return 0;
}

uint64_t sub_1819F4A80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (!v2)
  {
    sub_1819012D0(99877);
    return 0;
  }

  v3 = *(v2 + 20);
  if (((0x50505050uLL >> v3) & 1) == 0)
  {
    return 0;
  }

  if ((v3 & 0x24) != 0)
  {
    v4 = *v2;
  }

  else if ((v3 & 8) != 0)
  {
    v10 = *v2;
    if (*v2 >= -9.22337204e18)
    {
      v4 = 0x7FFFFFFFFFFFFFFFLL;
      if (v10 <= 9.22337204e18)
      {
        v4 = v10;
      }
    }

    else
    {
      v4 = 0x8000000000000000;
    }
  }

  else if ((v3 & 0x12) != 0 && *(v2 + 8))
  {
    v7 = a1;
    v8 = a2;
    v9 = sub_18193CFCC(*(a2 + 8));
    a2 = v8;
    v4 = v9;
    a1 = v7;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 40);

  return sub_1819F4B7C(v5, v4, a2 + 16, 0);
}

uint64_t sub_1819F4B7C(uint64_t *a1, unint64_t a2, uint64_t a3, int a4)
{
  v7 = a1;
  v8 = *a1;
  v134 = 0;
  result = sub_1819F39A0(a1, 1);
  if (result)
  {
    goto LABEL_3;
  }

  v117 = a4;
  result = sub_1819F89B0(v7[1], 1, a2);
  if (result)
  {
    goto LABEL_3;
  }

  v17 = *v7;
  v122 = a2;
  v115 = v7;
  v120 = v8;
  if (*(*v7 + 76))
  {
    v139 = 0;
    result = sub_1819D907C(v7, 9, &v139, 0);
    if (result)
    {
      goto LABEL_3;
    }

    v18 = v139;
    if (!sub_1818DF6EC(v139, 0))
    {
      v19 = *(v18 + 16);
      if ((*(v19 + 20) & 0x9000) != 0)
      {
        sub_18193D288(v19, a2);
      }

      else
      {
        *v19 = a2;
        *(v19 + 20) = 4;
      }

      v44 = *(*v18 + 24);
      if (v44)
      {
        xmmword_1ED452F28(v44);
      }
    }

    if (sqlite3_step(v18) == 100)
    {
      v45 = sqlite3_column_int64(v18, 1);
    }

    else
    {
      v45 = 0;
    }

    result = sqlite3_reset(v18);
    if (result || !v45)
    {
LABEL_291:
      if (!v117 || result)
      {
        goto LABEL_301;
      }

      if (*(*v7 + 72) == 3)
      {
        result = sub_1819F5F00(v7, a2);
        goto LABEL_301;
      }

      goto LABEL_302;
    }

    v130 = v7[1];
    v46 = sub_1819E25BC(v130);
    if (!v46)
    {
      goto LABEL_290;
    }

    v113 = v46;
    v47 = v46[7];
    if (v47 >= 1)
    {
      v48 = 0;
      v114 = v46 + 8;
      v118 = HIDWORD(a2);
      v121 = v45;
      while (1)
      {
        v116 = v47 - 1;
        v49 = &v114[4 * v47 - 4];
        v50 = v49[1];
        if (v50 >= 1)
        {
          break;
        }

LABEL_102:
        v37 = v47 < 2;
        v47 = v116;
        if (v37)
        {
          goto LABEL_272;
        }
      }

      v123 = v47;
      v119 = &v114[4 * v47 - 4];
LABEL_110:
      v129 = v50 - 1;
      v52 = *(v49 + 1) + 56 * (v50 - 1);
      if (*(v52 + 16) > v45)
      {
        goto LABEL_109;
      }

      v132 = (*(v49 + 1) + 56 * (v50 - 1));
      if (*(v52 + 24) < v45)
      {
        goto LABEL_109;
      }

      if (!v48)
      {
        ++*(v52 + 40);
      }

      ++*(v130 + 52);
      v53 = *(v52 + 32);
      if (v53 < 1)
      {
        v131 = 0;
        v56 = 4;
        v57 = *(v52 + 32);
        v133 = 0xFFFFFFFFLL;
      }

      else
      {
        v133 = a2 % v53;
        v54 = sub_1819DFC90(v130, (a2 % v53) | ((*v52 + 0x10000) << 37));
        if (!v54)
        {
          goto LABEL_108;
        }

        v55 = v54;
        if (!sub_1819FA200(v54, 0, v132[8], a2))
        {
          sub_1819D7E9C(v130, v133 | ((*v132 + 0x10000) << 37), *v55, *(v55 + 2));
          v97 = &off_1ED452EB0;
          if (dword_1ED452E80)
          {
            if (xmmword_1ED456AF0)
            {
              xmmword_1ED452F18(xmmword_1ED456AF0);
            }

            qword_1ED456A48[0] -= xmmword_1ED452EC0(v55);
            --qword_1ED456A90;
            off_1ED452EB0(v55);
            v51 = xmmword_1ED456AF0;
            if (!xmmword_1ED456AF0)
            {
              v48 = 1;
              v8 = v120;
              goto LABEL_109;
            }

            v97 = &xmmword_1ED452F28;
            v8 = v120;
          }

          else
          {
            v51 = v55;
            v8 = v120;
          }

          goto LABEL_107;
        }

        v131 = v55;
        if (**v55 == 4)
        {
          v56 = 4;
        }

        else
        {
          v56 = 8;
        }

        v57 = v132[8];
      }

      if (v118)
      {
        v58 = 8;
      }

      else
      {
        v58 = v56;
      }

      v59 = v130;
      v128 = v58;
      v60 = (*(*v130 + 196) - 8) / v58;
      v61 = 32;
      if (v60 <= 32)
      {
        v60 = 32;
      }

      v126 = v60;
      v124 = v53;
      if (!v57 || v57 == 1 && ((v62 = 4 * bswap32(*(*v131 + 4)), v62 <= 32) ? (v61 = 32) : (v61 = v62), v62 <= v126))
      {
        v63 = 1;
      }

      else
      {
        v63 = (2 * v57) | 1;
        v61 = v126;
      }

      v125 = v50;
      if (*(v130 + 60))
      {
LABEL_136:
        v64 = 0;
        if (v63 >= 1)
        {
          goto LABEL_144;
        }

LABEL_137:
        if (!*(v59 + 60))
        {
          goto LABEL_156;
        }

        if (!v64)
        {
          goto LABEL_271;
        }

        goto LABEL_237;
      }

      while (1)
      {
        if (sqlite3_initialize() || (v65 = sub_181902484(8 * v63, 1913357809)) == 0)
        {
          if (v63 < 1)
          {
            v64 = 0;
            if (!*(v59 + 60))
            {
LABEL_156:
              v127 = 0;
              goto LABEL_157;
            }

LABEL_230:
            v63 = 0;
            goto LABEL_231;
          }

          v64 = 0;
          *(v59 + 60) = 7;
        }

        else
        {
          v64 = v65;
          bzero(v65, 8 * v63);
          if (v63 < 1)
          {
            goto LABEL_137;
          }
        }

LABEL_144:
        v66 = 0;
        v67 = (v61 * v128);
        v68 = v63;
        do
        {
          if (!*(v59 + 60))
          {
            if (sqlite3_initialize() || (v69 = sub_181902484(v67 + 24, 1913357809)) == 0)
            {
              *(v59 + 60) = 7;
            }

            else
            {
              v70 = v69;
              bzero(v69, v67 + 24);
              v70[2] = v67 + 8;
              *v70 = v70 + 4;
              v64[v66] = v70;
            }
          }

          ++v66;
        }

        while (v63 != v66);
        if (*(v59 + 60))
        {
          if (v64)
          {
            goto LABEL_212;
          }

LABEL_271:
          v63 = 0;
LABEL_231:
          v45 = v121;
          v47 = v123;
          goto LABEL_245;
        }

        v71 = 0;
        do
        {
          **v64[v71] = v128;
          v72 = *v64[v71++];
          *(v72 + 4) = 0;
        }

        while (v63 != v71);
        v127 = 1;
LABEL_157:
        v73 = v132;
        v74 = 0;
        while (2)
        {
          if (v74 >= v73[8])
          {
            if (!*(v59 + 60))
            {
              sub_1819FA200(v64[v122 % v63], 1, v63, v122);
              if (v63 >= 1)
              {
                for (i = 0; i != v63; ++i)
                {
                  sub_1819D7E9C(v59, i + ((*v73 + 0x10000) << 37), *v64[i], *(v64[i] + 8));
                }
              }

              v73[8] = v63;
              sub_1819D8134(v59, *(v59 + 160));
              goto LABEL_231;
            }

            if (!v64)
            {
              goto LABEL_230;
            }

            if (v127)
            {
              v68 = v63;
LABEL_212:
              v93 = 0;
              while (2)
              {
                v94 = v64[v93];
                if (v94)
                {
                  v95 = &off_1ED452EB0;
                  if (!dword_1ED452E80)
                  {
                    goto LABEL_213;
                  }

                  if (xmmword_1ED456AF0)
                  {
                    xmmword_1ED452F18(xmmword_1ED456AF0);
                  }

                  qword_1ED456A48[0] -= xmmword_1ED452EC0(v94);
                  --qword_1ED456A90;
                  off_1ED452EB0(v94);
                  v94 = xmmword_1ED456AF0;
                  if (xmmword_1ED456AF0)
                  {
                    v95 = &xmmword_1ED452F28;
LABEL_213:
                    (*v95)(v94);
                  }
                }

                if (v68 == ++v93)
                {
                  break;
                }

                continue;
              }
            }

LABEL_237:
            v98 = &off_1ED452EB0;
            if (dword_1ED452E80)
            {
              if (xmmword_1ED456AF0)
              {
                xmmword_1ED452F18(xmmword_1ED456AF0);
              }

              qword_1ED456A48[0] -= xmmword_1ED452EC0(v64);
              --qword_1ED456A90;
              off_1ED452EB0(v64);
              v64 = xmmword_1ED456AF0;
              v45 = v121;
              v47 = v123;
              if (!xmmword_1ED456AF0)
              {
                goto LABEL_244;
              }

              v98 = &xmmword_1ED452F28;
            }

            else
            {
              v45 = v121;
              v47 = v123;
            }

            (*v98)(v64);
            v64 = 0;
LABEL_244:
            v63 = 0;
LABEL_245:
            if (v124 >= 1)
            {
              v99 = &off_1ED452EB0;
              if (dword_1ED452E80)
              {
                if (xmmword_1ED456AF0)
                {
                  xmmword_1ED452F18(xmmword_1ED456AF0);
                }

                qword_1ED456A48[0] -= xmmword_1ED452EC0(v131);
                --qword_1ED456A90;
                off_1ED452EB0(v131);
                v131 = xmmword_1ED456AF0;
                if (!xmmword_1ED456AF0)
                {
                  goto LABEL_252;
                }

                v99 = &xmmword_1ED452F28;
              }

              (*v99)(v131);
            }

LABEL_252:
            if (!v64)
            {
              v48 = 1;
              a2 = v122;
              v8 = v120;
LABEL_270:
              v49 = v119;
              v50 = v125;
              goto LABEL_109;
            }

            if (v63 >= 1)
            {
              v100 = v63;
              v101 = v64;
              do
              {
                v102 = *v101;
                if (*v101)
                {
                  v103 = &off_1ED452EB0;
                  if (dword_1ED452E80)
                  {
                    if (xmmword_1ED456AF0)
                    {
                      xmmword_1ED452F18(xmmword_1ED456AF0);
                    }

                    qword_1ED456A48[0] -= xmmword_1ED452EC0(v102);
                    --qword_1ED456A90;
                    off_1ED452EB0(v102);
                    v102 = xmmword_1ED456AF0;
                    if (!xmmword_1ED456AF0)
                    {
                      goto LABEL_256;
                    }

                    v103 = &xmmword_1ED452F28;
                  }

                  (*v103)(v102);
                }

LABEL_256:
                ++v101;
                --v100;
              }

              while (v100);
            }

            v97 = &off_1ED452EB0;
            if (dword_1ED452E80)
            {
              v45 = v121;
              a2 = v122;
              v8 = v120;
              v47 = v123;
              if (xmmword_1ED456AF0)
              {
                xmmword_1ED452F18(xmmword_1ED456AF0);
              }

              qword_1ED456A48[0] -= xmmword_1ED452EC0(v64);
              --qword_1ED456A90;
              off_1ED452EB0(v64);
              v51 = xmmword_1ED456AF0;
              if (!xmmword_1ED456AF0)
              {
                v48 = 1;
                goto LABEL_270;
              }

              v97 = &xmmword_1ED452F28;
            }

            else
            {
              v51 = v64;
              v45 = v121;
              a2 = v122;
              v8 = v120;
              v47 = v123;
            }

            v49 = v119;
            v50 = v125;
LABEL_107:
            (*v97)(v51);
LABEL_108:
            v48 = 1;
LABEL_109:
            v37 = v50 <= 1;
            v50 = v129;
            if (v37)
            {
              goto LABEL_102;
            }

            goto LABEL_110;
          }

          if (v74 == v133)
          {
            v75 = 0;
            v76 = v131;
            if (!v131)
            {
              goto LABEL_176;
            }
          }

          else
          {
            v75 = sub_1819DFC90(v59, v74 + ((*v73 + 0x10000) << 37));
            v76 = v75;
            if (!v75)
            {
LABEL_176:
              v86 = 0;
              goto LABEL_183;
            }
          }

          v77 = **v76;
          if (v77 == 4)
          {
            v78 = 4;
          }

          else
          {
            v78 = 8;
          }

          v79 = ((*(v76 + 2) - 8) / v78);
          if (v79 < 1)
          {
            v86 = 0;
            v73 = v132;
            if (!v74)
            {
              goto LABEL_182;
            }

            goto LABEL_183;
          }

          v80 = 0;
          while (1)
          {
            v82 = *v76;
            if (v77 == 4)
            {
              v83 = *(v82 + 4 * v80 + 8);
              if (!v83)
              {
                goto LABEL_169;
              }

              v84 = bswap32(v83);
            }

            else
            {
              v85 = *(v82 + 8 * v80 + 8);
              if (!v85)
              {
                goto LABEL_169;
              }

              v84 = bswap64(v85);
            }

            v81 = sub_1819FA200(v64[v84 % v63], 0, v63, v84);
            if (v81)
            {
              break;
            }

LABEL_169:
            if (v79 == ++v80)
            {
              v86 = 0;
              goto LABEL_181;
            }
          }

          v86 = v81;
LABEL_181:
          v59 = v130;
          v73 = v132;
          if (!v74)
          {
LABEL_182:
            *(**v64 + 1) = *(*v76 + 1);
          }

LABEL_183:
          if (v75)
          {
            v87 = &off_1ED452EB0;
            if (!dword_1ED452E80)
            {
              goto LABEL_158;
            }

            if (xmmword_1ED456AF0)
            {
              xmmword_1ED452F18(xmmword_1ED456AF0);
            }

            qword_1ED456A48[0] -= xmmword_1ED452EC0(v75);
            --qword_1ED456A90;
            off_1ED452EB0(v75);
            v75 = xmmword_1ED456AF0;
            if (xmmword_1ED456AF0)
            {
              v87 = &xmmword_1ED452F28;
LABEL_158:
              (*v87)(v75);
            }
          }

          ++v74;
          if (!v86)
          {
            continue;
          }

          break;
        }

        if (v64)
        {
          if (v127)
          {
            v88 = v63;
            v89 = v64;
            do
            {
              v90 = *v89;
              if (*v89)
              {
                v91 = &off_1ED452EB0;
                if (dword_1ED452E80)
                {
                  if (xmmword_1ED456AF0)
                  {
                    xmmword_1ED452F18(xmmword_1ED456AF0);
                  }

                  qword_1ED456A48[0] -= xmmword_1ED452EC0(v90);
                  --qword_1ED456A90;
                  off_1ED452EB0(v90);
                  v90 = xmmword_1ED456AF0;
                  if (!xmmword_1ED456AF0)
                  {
                    goto LABEL_193;
                  }

                  v91 = &xmmword_1ED452F28;
                }

                (*v91)(v90);
              }

LABEL_193:
              ++v89;
              --v88;
            }

            while (v88);
          }

          v92 = &off_1ED452EB0;
          if (dword_1ED452E80)
          {
            if (xmmword_1ED456AF0)
            {
              xmmword_1ED452F18(xmmword_1ED456AF0);
            }

            qword_1ED456A48[0] -= xmmword_1ED452EC0(v64);
            --qword_1ED456A90;
            off_1ED452EB0(v64);
            v64 = xmmword_1ED456AF0;
            if (!xmmword_1ED456AF0)
            {
              goto LABEL_206;
            }

            v92 = &xmmword_1ED452F28;
          }

          (*v92)(v64);
        }

LABEL_206:
        v63 = (2 * v63) | 1;
        v61 = v126;
        if (*(v59 + 60))
        {
          goto LABEL_136;
        }
      }
    }

LABEL_272:
    v37 = (*v113)-- <= 1;
    v7 = v115;
    if (!v37)
    {
      goto LABEL_290;
    }

    if (v113[7] < 1)
    {
LABEL_284:
      v108 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v113);
        --qword_1ED456A90;
        off_1ED452EB0(v113);
        if (!xmmword_1ED456AF0)
        {
          goto LABEL_290;
        }

        v113 = xmmword_1ED456AF0;
        v108 = &xmmword_1ED452F28;
      }

      (*v108)(v113);
LABEL_290:
      result = *(v130 + 60);
      *(v130 + 60) = 0;
      goto LABEL_291;
    }

    v104 = 0;
    v105 = (v113 + 10);
    while (1)
    {
      v106 = *v105;
      if (*v105)
      {
        v107 = &off_1ED452EB0;
        if (dword_1ED452E80)
        {
          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48[0] -= xmmword_1ED452EC0(v106);
          --qword_1ED456A90;
          off_1ED452EB0(v106);
          v106 = xmmword_1ED456AF0;
          if (!xmmword_1ED456AF0)
          {
            goto LABEL_277;
          }

          v107 = &xmmword_1ED452F28;
        }

        (*v107)(v106);
      }

LABEL_277:
      ++v104;
      v105 += 2;
      if (v104 >= v113[7])
      {
        goto LABEL_284;
      }
    }
  }

  v140 = 0xFFFFFFFFLL;
  v141 = 0;
  if (!a3)
  {
    if (a4 && v7[5])
    {
      v141 = v7[5];
      v7[5] = 0;
    }

    else
    {
      result = sub_1819D907C(v7, a4 + 2, &v141, 0);
      if (result)
      {
        goto LABEL_301;
      }

      v42 = v141;
      if (!sub_1818DF6EC(v141, 0))
      {
        v43 = *(v42 + 16);
        if ((*(v43 + 20) & 0x9000) != 0)
        {
          sub_18193D288(v43, a2);
        }

        else
        {
          *v43 = a2;
          *(v43 + 20) = 4;
        }

        v109 = *(*v42 + 24);
        if (v109)
        {
          xmmword_1ED452F28(v109);
        }
      }

      if (sqlite3_step(v42) != 100)
      {
        v36 = v42;
LABEL_300:
        result = sqlite3_reset(v36);
        goto LABEL_301;
      }
    }
  }

  v20 = 0;
  v139 = v7;
  while (v20 + 1 <= *(v17 + 32))
  {
    if (*(*(v17 + 48) + v20))
    {
      v21 = 0;
      goto LABEL_26;
    }

    v138 = 0;
    v137 = 0;
    v136 = 0;
    v135 = 0;
    if (v141)
    {
      v22 = sqlite3_column_value(v141, v20 + 1);
      if (!*(v17 + 112))
      {
        goto LABEL_36;
      }
    }

    else
    {
      v22 = *(a3 + 8 * v20);
      if (!*(v17 + 112))
      {
        goto LABEL_36;
      }
    }

    if (sub_1819DCE5C(v17, v22))
    {
      v21 = sub_1819DCF2C(v22, &v138, &v137, &v136, &v135);
      if (!v21)
      {
        v23 = 0;
        v24 = v137;
        goto LABEL_62;
      }

      goto LABEL_26;
    }

LABEL_36:
    if (v22)
    {
      v25 = *(v22 + 10);
      if ((0x4000000040004uLL >> v25))
      {
        v23 = 0;
        if ((~v25 & 0x202) == 0)
        {
          goto LABEL_43;
        }

        goto LABEL_46;
      }
    }

    else
    {
      sub_1819012D0(99877);
    }

    v26 = sqlite3_value_dup(v22);
    if (v26)
    {
      v22 = v26;
      v25 = *(v26 + 10);
      v23 = v26;
      if ((~v25 & 0x202) == 0)
      {
LABEL_43:
        if (*(v22 + 22) == 1)
        {
          v138 = *(v22 + 1);
          if ((v25 & 2) == 0)
          {
            goto LABEL_52;
          }

LABEL_50:
          if (*(v22 + 22) == 1)
          {
            v24 = *(v22 + 4);
            goto LABEL_59;
          }

LABEL_52:
          if ((v25 & 0x10) != 0)
          {
            v24 = *(v22 + 4);
            if ((v25 & 0x400) != 0)
            {
              v24 = (*v22 + v24);
            }
          }

          else if (v25)
          {
            v24 = 0;
          }

          else
          {
            v24 = sub_18193CB44(v22, 1, v10, v11);
          }

LABEL_59:
          v137 = v24;
          if (*(v17 + 112))
          {
            v28 = v141;
            if (v141)
            {
              v136 = sqlite3_column_text(v141, v20 + *(v17 + 32) + 1);
              v135 = sqlite3_column_bytes(v28, v20 + *(v17 + 32) + 1);
            }
          }

LABEL_62:
          v29 = v135;
          *(v17 + 168) = v136;
          *(v17 + 176) = v29;
          HIDWORD(v140) = 0;
          v30 = v138;
          if (v138)
          {
            if (!*(v17 + 128))
            {
              v21 = sub_1819D630C(v17);
              if (v21)
              {
                *(v115[4] + 8 * v20) -= SHIDWORD(v140);
                goto LABEL_72;
              }
            }

            v31 = *(v17 + 144);
            if (v31)
            {
              v21 = (*(v31 + 16))(*(v17 + 128), &v139, 4, v30, v24, sub_1819F8B64);
            }

            else
            {
              v21 = (*(*(v17 + 136) + 24))(*(v17 + 128), &v139, 4, v30, v24, *(v17 + 168), *(v17 + 176), sub_1819F8B64);
            }

            v33 = v115[4];
            v32 = *(v33 + 8 * v20) - SHIDWORD(v140);
            *(v33 + 8 * v20) = v32;
            if (!v21)
            {
LABEL_71:
              v21 = (v32 >> 63) & 0x10B;
            }

LABEL_72:
            *(v17 + 168) = 0;
            *(v17 + 176) = 0;
            if (v23)
            {
              v34 = v21;
              if ((*(v23 + 10) & 0x9000) != 0 || *(v23 + 8))
              {
                sub_18193CA00(v23);
              }

              sub_181929C84(*(v23 + 3), v23);
              v21 = v34;
            }

            goto LABEL_26;
          }

          v32 = *(v115[4] + 8 * v20);
          goto LABEL_71;
        }
      }

LABEL_46:
      if (v25)
      {
        v138 = 0;
        if ((v25 & 2) != 0)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v27 = sub_18193CB70(v22, 1, v10, v11);
        LOWORD(v25) = *(v22 + 10);
        v138 = v27;
        if ((v25 & 2) != 0)
        {
          goto LABEL_50;
        }
      }

      goto LABEL_52;
    }

    v21 = 7;
LABEL_26:
    ++v20;
    if (v21)
    {
      v40 = v21;
      v7 = v115;
      --v115[3];
      v36 = v141;
LABEL_90:
      sqlite3_reset(v36);
      result = v40;
      goto LABEL_301;
    }
  }

  v7 = v115;
  v35 = v115[3];
  v36 = v141;
  v37 = v35 < 1;
  v38 = v35 - 1;
  if (v37)
  {
    v40 = 267;
    goto LABEL_90;
  }

  v115[3] = v38;
  if (!v117)
  {
    goto LABEL_300;
  }

  v39 = v36;
  result = 0;
  v115[5] = v39;
LABEL_301:
  if (!result)
  {
LABEL_302:
    if (*(v8 + 104))
    {
      result = sub_1819D907C(v7, 8, &v134, 0);
      if (!result)
      {
        v110 = v134;
        if (!sub_1818DF6EC(v134, 0))
        {
          v111 = *(v110 + 16);
          if ((*(v111 + 20) & 0x9000) != 0)
          {
            sub_18193D288(v111, a2);
          }

          else
          {
            *v111 = a2;
            *(v111 + 20) = 4;
          }

          v112 = *(*v110 + 24);
          if (v112)
          {
            xmmword_1ED452F28(v112);
          }
        }

        sqlite3_step(v110);
        result = sqlite3_reset(v110);
      }
    }

    else
    {
      result = 0;
    }
  }

LABEL_3:
  v12 = *(v8 + 72);
  if ((v12 == 3 || v12 == 0) && result == 0)
  {
    result = sub_1819D907C(v7, 6, &v134, 0);
    if (!result)
    {
      v15 = v134;
      if (!sub_1818DF6EC(v134, 0))
      {
        v16 = *(v15 + 16);
        if ((*(v16 + 20) & 0x9000) != 0)
        {
          sub_18193D288(v16, a2);
        }

        else
        {
          *v16 = a2;
          *(v16 + 20) = 4;
        }

        v41 = *(*v15 + 24);
        if (v41)
        {
          xmmword_1ED452F28(v41);
        }
      }

      sqlite3_step(v15);
      return sqlite3_reset(v15);
    }
  }

  return result;
}

uint64_t sub_1819F5EA0(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = *a1;
  if (!result)
  {
    result = sub_1819F5FE4(*(a2 + 40), 0, a3, a4);
    if (!result)
    {
      result = sub_1819F64D8(*(a2 + 40), a3, *a4);
    }
  }

  *a1 = result;
  return result;
}

uint64_t sub_1819F5F00(uint64_t *a1, uint64_t a2)
{
  v8 = 0;
  result = sub_1819D907C(a1, 3, &v8, 0);
  if (!result)
  {
    v5 = v8;
    if (!sub_1818DF6EC(v8, 0))
    {
      v6 = *(v5 + 16);
      if ((*(v6 + 20) & 0x9000) != 0)
      {
        sub_18193D288(v6, a2);
      }

      else
      {
        *v6 = a2;
        *(v6 + 20) = 4;
      }

      v7 = *(*v5 + 24);
      if (v7)
      {
        xmmword_1ED452F28(v7);
      }
    }

    if (sqlite3_step(v5) == 100)
    {
      result = 0;
      a1[5] = v5;
    }

    else
    {

      return sqlite3_reset(v5);
    }
  }

  return result;
}

uint64_t sub_1819F5FE4(uint64_t *a1, int a2, uint64_t a3, uint64_t *a4)
{
  v7 = *a1;
  v8 = *(*a1 + 72);
  if (v8)
  {
    v9 = v8 == 3;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v47 = 0;
    v10 = sub_1819D907C(a1, a2 + 4, &v47, 0);
    v11 = v47;
    if (v47)
    {
      v12 = *(*v47 + 24);
      if (v12)
      {
        xmmword_1ED452F18(*(*v47 + 24));
      }

      v13 = *(v11 + 8);
      if (v13 >= 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = *(v11 + 16);
        do
        {
          v17 = (v16 + v14);
          if ((*(v16 + v14 + 20) & 0x9000) != 0 || v17[8])
          {
            sub_18193CA00(v17);
            v16 = *(v11 + 16);
            v13 = *(v11 + 8);
          }

          *(v16 + v14 + 20) = 1;
          ++v15;
          v14 += 64;
        }

        while (v15 < v13);
      }

      if (*(v11 + 93))
      {
        *(v11 + 134) = *(v11 + 134) & 0xFFFC | 1;
      }

      if (v12)
      {
        xmmword_1ED452F28(v12);
      }
    }

    sqlite3_bind_value(v11, 1, *(a3 + 8));
    if (v10)
    {
LABEL_47:
      v31 = *v7;
      if (*v7)
      {
        v32 = *(v31 + 113);
        switch(v32)
        {
          case 186:
            goto LABEL_51;
          case 118:
            v38 = *(v31 + 56);
            goto LABEL_67;
          case 109:
LABEL_51:
            v33 = "unopened";
            break;
          default:
            v33 = "invalid";
            break;
        }
      }

      else
      {
        v33 = "NULL";
      }

      sqlite3_log(21, "API call with %s database connection pointer", v33);
      sub_1819012D0(192786);
      v38 = 0;
      goto LABEL_67;
    }

    v18 = 0;
    v19 = a3 + 16;
    while (1)
    {
      if (v18 + 2 > *(v7 + 32) + 1)
      {
        sqlite3_step(v11);
        v10 = sqlite3_reset(v11);
        goto LABEL_47;
      }

      v20 = *(*(v7 + 48) + v18);
      if (!*(v7 + 72) || v20 != 0)
      {
        break;
      }

      v10 = 0;
LABEL_23:
      ++v18;
      if (v10)
      {
        goto LABEL_47;
      }
    }

    v22 = *(v19 + 8 * v18);
    if (v22)
    {
      if ((~v22[10] & 0x401) == 0)
      {
        v23 = a1[5];
        if (v23)
        {
          v22 = sqlite3_column_value(v23, v18 + 1);
          if (*(v7 + 112) && !v20)
          {
            v24 = a4;
            v25 = v18 + *(v7 + 32);
            v26 = sqlite3_column_value(a1[5], v25 + 1);
            v27 = v25 + 2;
            a4 = v24;
            sqlite3_bind_value(v11, v27, v26);
          }

LABEL_40:
          v10 = sqlite3_bind_value(v11, v18 + 2, v22);
          goto LABEL_23;
        }
      }
    }

    else
    {
      sub_1819012D0(99912);
    }

    if (sub_1819DCE5C(v7, v22))
    {
      v45 = 0;
      v46 = 0;
      v44 = 0;
      v10 = sub_1819DCF2C(v22, &v46, &v44 + 1, &v45, &v44);
      if (!v10)
      {
        sub_1818DF574(v11, v18 + 2, v46, SHIDWORD(v44), 0xFFFFFFFFFFFFFFFFLL, 1);
        if (!v20)
        {
          sub_1818DF574(v11, v18 + *(v7 + 32) + 2, v45, v44, 0xFFFFFFFFFFFFFFFFLL, 1);
        }
      }

      goto LABEL_23;
    }

    goto LABEL_40;
  }

  v28 = *(a3 + 8);
  if (!v28)
  {
    sub_1819012D0(99877);
    v7 = *a1;
    goto LABEL_54;
  }

  v29 = *(v28 + 20);
  if (((0x50505050uLL >> v29) & 1) == 0)
  {
LABEL_54:
    if (!*(v7 + 104))
    {
      return 20;
    }

    v47 = 0;
    v34 = sub_1819D907C(a1, 7, &v47, 0);
    if (v34)
    {
      return v34;
    }

    v35 = v47;
    if (!sub_1818DF6EC(v47, 0))
    {
      v36 = *(*v35 + 24);
      if (v36)
      {
        xmmword_1ED452F28(v36);
      }
    }

    if (!sub_1818DF6EC(v35, 1u))
    {
      v37 = *(*v35 + 24);
      if (v37)
      {
        xmmword_1ED452F28(v37);
      }
    }

    sqlite3_step(v35);
    v34 = sqlite3_reset(v35);
    if (v34)
    {
      return v34;
    }

    v40 = **a1;
    if (!v40)
    {
      v42 = "NULL";
      goto LABEL_88;
    }

    v41 = *(v40 + 113);
    if (v41 == 186)
    {
LABEL_78:
      v42 = "unopened";
LABEL_88:
      sqlite3_log(21, "API call with %s database connection pointer", v42);
      sub_1819012D0(192786);
      v38 = 0;
      v10 = 0;
      goto LABEL_67;
    }

    if (v41 != 118)
    {
      if (v41 != 109)
      {
        v42 = "invalid";
        goto LABEL_88;
      }

      goto LABEL_78;
    }

    v38 = *(v40 + 56);
    v10 = 0;
LABEL_67:
    *a4 = v38;
    return v10;
  }

  if ((v29 & 0x24) != 0)
  {
    v30 = *v28;
  }

  else if ((v29 & 8) != 0)
  {
    v43 = *v28;
    if (*v28 >= -9.22337204e18)
    {
      if (v43 <= 9.22337204e18)
      {
        v30 = v43;
      }

      else
      {
        v30 = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    else
    {
      v30 = 0x8000000000000000;
    }
  }

  else if ((v29 & 0x12) != 0 && *(v28 + 8))
  {
    v30 = sub_18193CFCC(v28);
  }

  else
  {
    v30 = 0;
  }

  v10 = 0;
  *a4 = v30;
  return v10;
}

uint64_t sub_1819F64D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v44 = 0;
  v45 = 0;
  v46 = a1;
  v47 = 0;
  v7 = sub_1819F39A0(a1, 1);
  if (v7)
  {
    v8 = v7;
    LODWORD(v47) = 0;
    goto LABEL_4;
  }

  v8 = sub_1819F89B0(*(a1 + 8), 0, a3);
  LODWORD(v47) = 0;
  if (v8)
  {
LABEL_4:
    ++*(a1 + 24);
    v11 = v44;
    if (v44)
    {
      goto LABEL_5;
    }

    return v8;
  }

  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = a2 + 16;
  v39 = a2 + 16;
  while (v16 < *(v6 + 32))
  {
    v20 = 0;
    v8 = 0;
    HIDWORD(v47) = 0;
    v21 = v16;
    if (*(*(v6 + 48) + v16))
    {
      goto LABEL_63;
    }

    v43 = 0;
    v42 = 0;
    v41 = 0;
    v40 = 0;
    v22 = *(a1 + 40);
    if (!v22)
    {
      goto LABEL_25;
    }

    v23 = *(v17 + 8 * v16);
    if (!v23)
    {
      sub_1819012D0(99912);
      v21 = v47;
LABEL_25:
      v25 = 0;
      v26 = 0;
      v24 = *(v17 + 8 * v21);
      if (!*(v6 + 112))
      {
        goto LABEL_33;
      }

      goto LABEL_26;
    }

    if ((~*(v23 + 20) & 0x401) != 0)
    {
      goto LABEL_25;
    }

    v24 = sqlite3_column_value(v22, v16 + 1);
    if (*(v6 + 72))
    {
      v25 = 0;
      v26 = 0;
      if (!*(v6 + 112))
      {
        goto LABEL_33;
      }
    }

    else
    {
      if (!*(v6 + 112))
      {
        v26 = 0;
        v25 = 0;
LABEL_33:
        if (v24)
        {
          v30 = *(v24 + 10);
          if ((~v30 & 0x202) != 0 || *(v24 + 22) != 1)
          {
            if (v30)
            {
              v27 = 0;
              v42 = 0;
              if ((v30 & 2) == 0)
              {
                goto LABEL_45;
              }
            }

            else
            {
              v27 = sub_18193CB70(v24, 1, v9, v10);
              LOWORD(v30) = *(v24 + 10);
              v42 = v27;
              if ((v30 & 2) == 0)
              {
                goto LABEL_45;
              }
            }
          }

          else
          {
            v27 = *(v24 + 1);
            v42 = v27;
            if ((v30 & 2) == 0)
            {
LABEL_45:
              if ((v30 & 0x10) != 0)
              {
                v28 = *(v24 + 4);
                if ((v30 & 0x400) != 0)
                {
                  v28 = (*v24 + v28);
                }

                goto LABEL_51;
              }

              if ((v30 & 1) == 0)
              {
                v28 = sub_18193CB44(v24, 1, v9, v10);
                goto LABEL_51;
              }

LABEL_48:
              v28 = 0;
              v43 = 0;
              goto LABEL_52;
            }
          }

          if (*(v24 + 22) != 1)
          {
            goto LABEL_45;
          }

          v28 = *(v24 + 4);
LABEL_51:
          v43 = v28;
          goto LABEL_52;
        }

        v42 = 0;
        sub_1819012D0(93690);
        v27 = 0;
        goto LABEL_48;
      }

      v29 = v47 + *(v6 + 32);
      v26 = sqlite3_column_text(*(a1 + 40), v29 + 1);
      v40 = v26;
      v25 = sqlite3_column_bytes(*(a1 + 40), v29 + 1);
      v41 = v25;
      if (!*(v6 + 112))
      {
        goto LABEL_33;
      }
    }

LABEL_26:
    if (!sub_1819DCE5C(v6, v24))
    {
      goto LABEL_33;
    }

    v8 = sub_1819DCF2C(v24, &v42, &v43, &v40, &v41);
    if (!v8)
    {
      v26 = v40;
      v25 = v41;
      v27 = v42;
      v28 = v43;
LABEL_52:
      *(v6 + 168) = v26;
      *(v6 + 176) = v25;
      if (v27)
      {
        if (*(v6 + 128) || (v8 = sub_1819D630C(v6), !v8))
        {
          v31 = *(v6 + 144);
          if (v31)
          {
            v32 = (*(v31 + 16))(*(v6 + 128), &v46, 4, v27, v28, sub_1819F8B64);
          }

          else
          {
            v32 = (*(*(v6 + 136) + 24))(*(v6 + 128), &v46, 4, v27, v28, *(v6 + 168), *(v6 + 176), sub_1819F8B64);
          }

          v8 = v32;
        }
      }

      else
      {
        v8 = 0;
      }

      *(v6 + 168) = 0;
      *(v6 + 176) = 0;
      v17 = v39;
    }

    v20 = HIDWORD(v47);
LABEL_63:
    v33 = v15 + 9;
    if (v33 <= v14)
    {
      v37 = v44;
LABEL_72:
      v38 = (v37 + v15);
      if (v20 <= 0x7F)
      {
        v38->i8[0] = v20;
        v18 = 1;
      }

      else if (v20 >> 14)
      {
        v18 = sub_1819436D0(v38, v20);
      }

      else
      {
        v38->i8[0] = (v20 >> 7) | 0x80;
        v38->i8[1] = v20 & 0x7F;
        v18 = 2;
      }

      v15 += v18;
      goto LABEL_15;
    }

    if (v14)
    {
      LODWORD(v34) = v14;
    }

    else
    {
      LODWORD(v34) = 64;
    }

    v34 = v34;
    do
    {
      v35 = v34;
      v34 *= 2;
    }

    while (v35 < v33);
    v36 = v44;
    if (!sqlite3_initialize())
    {
      v37 = sub_18190287C(v36, v35, 688041480);
      if (v37)
      {
        v44 = v37;
        v14 = v35;
        goto LABEL_72;
      }
    }

    v8 = 7;
LABEL_15:
    v19 = v47;
    *(*(a1 + 32) + 8 * v47) += SHIDWORD(v47);
    v16 = v19 + 1;
    LODWORD(v47) = v19 + 1;
    if (v8)
    {
      goto LABEL_4;
    }
  }

  v45 = __PAIR64__(v14, v15);
  ++*(a1 + 24);
  v8 = sub_1819F8CE0(a1, a3, &v44);
  v11 = v44;
  if (!v44)
  {
    return v8;
  }

LABEL_5:
  v12 = &off_1ED452EB0;
  if (dword_1ED452E80)
  {
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
      goto LABEL_10;
    }
  }

  else
  {
LABEL_10:
    (*v12)(v11);
  }

  return v8;
}

uint64_t sub_1819F69C8(uint64_t *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  *(a1 + 4) = 0;
  result = sub_1819D7DA4(*v2, 0, "DELETE FROM %Q.'%q_data';DELETE FROM %Q.'%q_idx';", *(v2 + 16), *(v2 + 24), *(v2 + 16), *(v2 + 24));
  if (result)
  {
    return result;
  }

  if (*(v2 + 104))
  {
    result = sub_1819D7DA4(*v2, 0, "DELETE FROM %Q.'%q_docsize';", *(v2 + 16), *(v2 + 24));
    if (result)
    {
      return result;
    }
  }

  if (*(v2 + 72) == 3)
  {
    result = sub_1819D7DA4(*v2, 0, "DELETE FROM %Q.'%q_content';", *(v2 + 16), *(v2 + 24));
    if (result)
    {
      return result;
    }
  }

  v4 = a1[1];
  v5 = *(v4 + 160);
  if (v5)
  {
    if ((*v5)-- > 1)
    {
      goto LABEL_26;
    }

    if (v5[7] < 1)
    {
LABEL_20:
      v11 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v5);
        --qword_1ED456A90;
        off_1ED452EB0(v5);
        v5 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          goto LABEL_26;
        }

        v11 = &xmmword_1ED452F28;
      }

      (*v11)(v5);
LABEL_26:
      *(v4 + 160) = 0;
      goto LABEL_27;
    }

    v7 = 0;
    v8 = (v5 + 10);
    while (1)
    {
      v9 = *v8;
      if (*v8)
      {
        v10 = &off_1ED452EB0;
        if (dword_1ED452E80)
        {
          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48[0] -= xmmword_1ED452EC0(v9);
          --qword_1ED456A90;
          off_1ED452EB0(v9);
          v9 = xmmword_1ED456AF0;
          if (!xmmword_1ED456AF0)
          {
            goto LABEL_13;
          }

          v10 = &xmmword_1ED452F28;
        }

        (*v10)(v9);
      }

LABEL_13:
      ++v7;
      v8 += 2;
      if (v7 >= v5[7])
      {
        goto LABEL_20;
      }
    }
  }

LABEL_27:
  v12 = *(v4 + 24);
  if (v12)
  {
    sub_1819D8C28(v12);
    *(v4 + 32) = 0;
    *(v4 + 56) = 0;
    *(v4 + 64) = 0;
  }

  *(v4 + 52) = 0;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  if (*(*v4 + 76))
  {
    *&v14 = 1;
  }

  sub_1819D7E9C(v4, 1, &byte_181A2878D, 0);
  sub_1819D8134(v4, &v13);
  result = *(v4 + 60);
  *(v4 + 60) = 0;
  if (!result)
  {

    return sub_1819D8D48(a1, "version", 0, 4);
  }

  return result;
}

uint64_t sub_1819F6CC4(uint64_t *a1, int a2)
{
  v3 = a1;
  v4 = *a1;
  pStmt = 0;
  v270 = 0u;
  v271 = 0u;
  v272 = v4;
  v5 = *(v4 + 32);
  if (sqlite3_initialize())
  {
    return 7;
  }

  v8 = sub_181902484(12 * v5, 0x100004052888210);
  if (!v8)
  {
    return 7;
  }

  v9 = *(v4 + 32);
  v244 = v8;
  bzero(v8, v9 * 8);
  v10 = *(v4 + 72);
  if (v10)
  {
    v11 = 1;
    if (!a2 || v10 != 2)
    {
      goto LABEL_129;
    }
  }

  v12 = sub_1819D907C(v3, 11, &pStmt, 0);
  if (v12)
  {
    goto LABEL_9;
  }

  v257 = v3;
  v13 = pStmt;
  if (sqlite3_step(pStmt) == 100)
  {
    v259 = &v244[v9];
    while (1)
    {
      v14 = sqlite3_column_int64(v13, 0);
      *&v270 = v14;
      HIDWORD(v270) = 0;
      if (!*(v4 + 104))
      {
        break;
      }

      v15 = sub_1819F48B8(v257, v14, v259);
      if (!v15)
      {
        break;
      }

      v6 = v15;
      v16 = 0;
LABEL_94:
      v46 = *(&v271 + 1);
      if (!*(&v271 + 1))
      {
        goto LABEL_12;
      }

      v266 = v16;
      for (i = 0; i != 512; ++i)
      {
        v48 = *(v46 + 8 * i);
        if (v48)
        {
          do
          {
            v50 = *(v48 + 16);
            v49 = &off_1ED452EB0;
            if (dword_1ED452E80)
            {
              if (xmmword_1ED456AF0)
              {
                xmmword_1ED452F18(xmmword_1ED456AF0);
              }

              qword_1ED456A48[0] -= xmmword_1ED452EC0(v48);
              --qword_1ED456A90;
              off_1ED452EB0(v48);
              v48 = xmmword_1ED456AF0;
              if (!xmmword_1ED456AF0)
              {
                goto LABEL_101;
              }

              v49 = &xmmword_1ED452F28;
            }

            (*v49)(v48);
LABEL_101:
            v48 = v50;
          }

          while (v50);
        }
      }

      v51 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        v16 = v266;
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v46);
        --qword_1ED456A90;
        off_1ED452EB0(v46);
        v46 = xmmword_1ED456AF0;
        if (xmmword_1ED456AF0)
        {
          v51 = &xmmword_1ED452F28;
          goto LABEL_113;
        }

LABEL_12:
        *(&v271 + 1) = 0;
        if (!v16)
        {
          goto LABEL_114;
        }

        goto LABEL_13;
      }

      LOBYTE(v16) = v266;
LABEL_113:
      (*v51)(v46);
      *(&v271 + 1) = 0;
      if (!v16)
      {
LABEL_114:
        v52 = sqlite3_reset(pStmt);
        v3 = v257;
        if (!v6)
        {
          v6 = v52;
        }

        goto LABEL_117;
      }

LABEL_13:
      v13 = pStmt;
      if (sqlite3_step(pStmt) != 100)
      {
        goto LABEL_116;
      }
    }

    if (*(v4 + 116) == 1)
    {
      if (sqlite3_initialize() || (v17 = sub_181902484(4096, 1913357809)) == 0)
      {
        *(&v271 + 1) = 0;
        sqlite3_reset(pStmt);
        v6 = 7;
        goto LABEL_430;
      }

      v18 = v17;
      bzero(v17, 0x1000uLL);
      *(&v271 + 1) = v18;
    }

    v19 = 0;
    while (1)
    {
      while (1)
      {
        v21 = *(v4 + 32);
        v16 = v19 >= v21;
        if (v19 >= v21)
        {
          v6 = 0;
          goto LABEL_94;
        }

        if (!*(*(v4 + 48) + v19))
        {
          break;
        }

        ++v19;
      }

      v274 = 0;
      LODWORD(v276) = 0;
      v277[0] = 0;
      LODWORD(v273) = 0;
      v20 = (v19 + 1);
      v22 = pStmt;
      v25 = sqlite3_column_value(pStmt, v19 + 1);
      v26 = *(v4 + 72);
      if (v26 == 2)
      {
        if (sub_1819DCE5C(v4, v25))
        {
          v6 = sub_1819DCF2C(v25, &v274, &v276, v277, &v273);
          *(&v270 + 1) = v19;
          if (v6)
          {
            goto LABEL_76;
          }

          goto LABEL_55;
        }

        v26 = *(v4 + 72);
      }

      if (!v26 && *(v4 + 112))
      {
        v264 = v16;
        v27 = *(v4 + 32);
        v277[0] = sqlite3_column_text(v22, v27 + v20);
        v28 = v27 + v20;
        v16 = v264;
        LODWORD(v273) = sqlite3_column_bytes(v22, v28);
      }

      if (!v25)
      {
        v274 = 0;
        sub_1819012D0(93690);
LABEL_53:
        v31 = 0;
        goto LABEL_54;
      }

      v29 = *(v25 + 10);
      if ((~v29 & 0x202) != 0 || *(v25 + 22) != 1)
      {
        if (v29)
        {
          v274 = 0;
          if ((v29 & 2) == 0)
          {
            goto LABEL_50;
          }
        }

        else
        {
          v30 = sub_18193CB70(v25, 1, v23, v24);
          LOWORD(v29) = *(v25 + 10);
          v274 = v30;
          if ((v29 & 2) == 0)
          {
            goto LABEL_50;
          }
        }
      }

      else
      {
        v274 = *(v25 + 1);
        if ((v29 & 2) == 0)
        {
          goto LABEL_50;
        }
      }

      if (*(v25 + 22) == 1)
      {
        v31 = *(v25 + 4);
        goto LABEL_54;
      }

LABEL_50:
      if ((v29 & 0x10) != 0)
      {
        v31 = *(v25 + 4);
        if ((v29 & 0x400) != 0)
        {
          v31 += *v25;
        }

        goto LABEL_54;
      }

      if (v29)
      {
        goto LABEL_53;
      }

      v31 = sub_18193CB44(v25, 1, v23, v24);
LABEL_54:
      LODWORD(v276) = v31;
      *(&v270 + 1) = v19;
LABEL_55:
      if (*(v4 + 116) == 2)
      {
        if (sqlite3_initialize() || (v32 = sub_181902484(4096, 1913357809)) == 0)
        {
          *(&v271 + 1) = 0;
          v6 = 7;
          goto LABEL_76;
        }

        v33 = v32;
        bzero(v32, 0x1000uLL);
        *(&v271 + 1) = v33;
      }

      v34 = v273;
      *(v4 + 168) = v277[0];
      *(v4 + 176) = v34;
      v35 = v274;
      if (!v274)
      {
        *(v4 + 168) = 0;
        *(v4 + 176) = 0;
LABEL_71:
        if (*(v4 + 104))
        {
          if (HIDWORD(v270) == v259[v19])
          {
            v6 = 0;
          }

          else
          {
            v6 = 267;
          }
        }

        else
        {
          v6 = 0;
        }

        goto LABEL_76;
      }

      v36 = v276;
      if (*(v4 + 128) || (v39 = sub_1819D630C(v4), !v39))
      {
        v37 = *(v4 + 144);
        if (v37)
        {
          v38 = (*(v37 + 16))(*(v4 + 128), &v270, 4, v35, v36, sub_1819F9BBC);
        }

        else
        {
          v38 = (*(*(v4 + 136) + 24))(*(v4 + 128), &v270, 4, v35, v36, *(v4 + 168), *(v4 + 176), sub_1819F9BBC);
        }

        v6 = v38;
        *(v4 + 168) = 0;
        *(v4 + 176) = 0;
        v20 = (v19 + 1);
        if (v38)
        {
          goto LABEL_76;
        }

        goto LABEL_71;
      }

      v6 = v39;
      *(v4 + 168) = 0;
      *(v4 + 176) = 0;
      v20 = (v19 + 1);
LABEL_76:
      v244[v19] += SHIDWORD(v270);
      if (*(v4 + 116) != 2)
      {
        goto LABEL_25;
      }

      v40 = *(&v271 + 1);
      if (!*(&v271 + 1))
      {
        goto LABEL_24;
      }

      __dst = v20;
      v265 = v16;
      for (j = 0; j != 512; ++j)
      {
        v42 = *(v40 + 8 * j);
        if (v42)
        {
          do
          {
            v43 = *(v42 + 16);
            v44 = &off_1ED452EB0;
            if (dword_1ED452E80)
            {
              if (xmmword_1ED456AF0)
              {
                xmmword_1ED452F18(xmmword_1ED456AF0);
              }

              qword_1ED456A48[0] -= xmmword_1ED452EC0(v42);
              --qword_1ED456A90;
              off_1ED452EB0(v42);
              v42 = xmmword_1ED456AF0;
              if (!xmmword_1ED456AF0)
              {
                goto LABEL_83;
              }

              v44 = &xmmword_1ED452F28;
            }

            (*v44)(v42);
LABEL_83:
            v42 = v43;
          }

          while (v43);
        }
      }

      v45 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        v16 = v265;
        v20 = __dst;
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v40);
        --qword_1ED456A90;
        off_1ED452EB0(v40);
        v40 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          goto LABEL_24;
        }

        v45 = &xmmword_1ED452F28;
      }

      else
      {
        v16 = v265;
        v20 = __dst;
      }

      (*v45)(v40);
LABEL_24:
      *(&v271 + 1) = 0;
LABEL_25:
      v19 = v20;
      if (v6)
      {
        goto LABEL_94;
      }
    }
  }

LABEL_116:
  v6 = sqlite3_reset(v13);
  v3 = v257;
LABEL_117:
  if (v6)
  {
    goto LABEL_430;
  }

  v12 = sub_1819F39A0(v3, 0);
  if (v12)
  {
LABEL_9:
    v6 = v12;
    goto LABEL_430;
  }

  v53 = 0;
  v6 = 267;
  while ((*(v4 + 32) & ~(*(v4 + 32) >> 31)) != v53)
  {
    v54 = *(v3[4] + v53 * 8);
    v55 = v244[v53++];
    if (v54 != v55)
    {
      goto LABEL_430;
    }
  }

  if (!*(v4 + 72))
  {
    v274 = 0;
    v6 = sub_1819F9E10(v3, "content", &v274);
    if (v6)
    {
      goto LABEL_430;
    }

    if (v274 != v3[3])
    {
      goto LABEL_479;
    }
  }

  if (*(v4 + 104))
  {
    v274 = 0;
    v6 = sub_1819F9E10(v3, "docsize", &v274);
    if (v6)
    {
      goto LABEL_430;
    }

    if (v274 != v3[3])
    {
LABEL_479:
      v6 = 267;
      goto LABEL_430;
    }
  }

  v11 = 0;
LABEL_129:
  v56 = v3[1];
  v57 = v271;
  v240 = *(*v56 + 116);
  v274 = 0;
  v275 = 0;
  v273 = 0;
  v58 = sub_1819E25BC(v56);
  if (!v58)
  {
    v198 = v56 + 15;
    goto LABEL_429;
  }

  v238 = v57;
  v239 = v11;
  v59 = v58[7];
  v60 = &unk_1ED456000;
  v242 = v58;
  if (v59 < 1)
  {
    goto LABEL_397;
  }

  v61 = 0;
  v241 = v58 + 8;
  while (2)
  {
    v62 = &v241[4 * v61];
    if (v62[1] < 1)
    {
      goto LABEL_133;
    }

    v243 = v61;
    v63 = 0;
    v245 = v62;
    while (2)
    {
      v64 = (*(v62 + 1) + 56 * v63);
      v65 = *v56;
      v252 = *(*v56 + 188);
      v276 = 0;
      v66 = v64[1];
      if (!v66)
      {
        goto LABEL_136;
      }

      v248 = v63;
      v255 = v64[2];
      v246 = v65;
      v67 = sqlite3_mprintf("SELECT segid, term, (pgno>>1), (pgno&1) FROM %Q.'%q_idx' WHERE segid=%d ORDER BY 1, 2", *(v65 + 16), *(v65 + 24), *v64);
      v68 = v67;
      if (v56[15])
      {
        if (!v67)
        {
          goto LABEL_154;
        }
      }

      else
      {
        if (!v67)
        {
          v56[15] = 7;
          goto LABEL_154;
        }

        v69 = sub_1818954B4(**v56, v67, 0xFFFFFFFFLL, 133, 0, &v276, 0);
        if (v69 == 1)
        {
          v70 = 11;
        }

        else
        {
          v70 = v69;
        }

        v56[15] = v70;
        if (!v68)
        {
          goto LABEL_154;
        }
      }

      v71 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        v72 = v60[350];
        if (v72)
        {
          xmmword_1ED452F18(v72);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v68);
        --qword_1ED456A90;
        off_1ED452EB0(v68);
        v68 = v60[350];
        if (!v68)
        {
          goto LABEL_154;
        }

        v71 = &xmmword_1ED452F28;
      }

      (*v71)(v68);
LABEL_154:
      v256 = v64;
      if (v56[15])
      {
        goto LABEL_155;
      }

      v258 = v66 - 1;
      while (1)
      {
        if (sqlite3_step(v276) != 100)
        {
          goto LABEL_155;
        }

        v75 = sqlite3_column_blob(v276, 1);
        v76 = sqlite3_column_bytes(v276, 1);
        v74 = sqlite3_column_int(v276, 2);
        v77 = sqlite3_column_int(v276, 3);
        if (v74 < v256[1])
        {
          v74 = v258;
          goto LABEL_159;
        }

        v253 = v77;
        v78 = sub_1819DFC90(v56, (*v256 << 37) + v74);
        if (!v78)
        {
          goto LABEL_155;
        }

        v79 = v78;
        v80 = *(v78 + 2);
        if (v80 < 4)
        {
          break;
        }

        v81 = *(v78 + 3);
        if (v81 > v80)
        {
          break;
        }

        v254 = v74;
        if (v80 <= v81)
        {
          if (v76 || (v80 == 4 ? (v86 = v81 == 4) : (v86 = 0), v86 ? (v87 = *(v246 + 188) == 5) : (v87 = 0), !v87))
          {
            v56[15] = 267;
          }

          goto LABEL_307;
        }

        v82 = *v78;
        v83 = (*v78 + v81);
        v84 = *v83;
        if (*v83 < 0)
        {
          v85 = v83[1];
          if (v83[1] < 0)
          {
            v88 = v83[2];
            if (v88 < 0)
            {
              v277[0] = 0;
              sub_1819DFFB0(v83, v277);
              v84 = v277[0] & 0x7FFFFFFF;
            }

            else
            {
              v84 = ((v84 & 0x7F) << 14) | ((v85 & 0x7F) << 7) | v88;
            }
          }

          else
          {
            v84 = ((v84 & 0x7F) << 7) | v85;
          }
        }

        v89 = __rev16(*v82);
        v90 = v84 < v81 && v84 > v89;
        if (!v90)
        {
          goto LABEL_199;
        }

        v91 = v82 + v84;
        v92 = *v91;
        if (*v91 < 0)
        {
          v94 = v91[1];
          if (v91[1] < 0)
          {
            v95 = v91[2];
            if (v95 < 0)
            {
              v277[0] = 0;
              v93 = sub_1819DFFB0(v91, v277);
              v92 = v277[0] & 0x7FFFFFFF;
            }

            else
            {
              v92 = ((v92 & 0x7F) << 14) | ((v94 & 0x7F) << 7) | v95;
              v93 = 3;
            }
          }

          else
          {
            v92 = ((v92 & 0x7F) << 7) | v94;
            v93 = 2;
          }
        }

        else
        {
          v93 = 1;
        }

        v96 = v92 - v76;
        if (v92 >= v76)
        {
          v97 = v76;
        }

        else
        {
          v97 = v92;
        }

        if (v97 < 1 || (v98 = memcmp(v82 + v93 + v84, v75, v97)) == 0)
        {
          if ((v96 & 0x80000000) == 0)
          {
            goto LABEL_200;
          }

LABEL_199:
          v56[15] = 267;
          goto LABEL_200;
        }

        if (v98 < 0)
        {
          goto LABEL_199;
        }

LABEL_200:
        v260 = 0;
        v99 = 0;
        v251 = 0;
        v100 = 0;
        v101 = 0;
        __dsta = 0;
        v267 = 0;
        while (!v56[15])
        {
          v102 = *v79;
          v103 = (*v79 + v81);
          v104 = *v103;
          if (*v103 < 0)
          {
            v106 = v103[1];
            if (v103[1] < 0)
            {
              v107 = v103[2];
              if (v107 < 0)
              {
                v277[0] = 0;
                v108 = v99;
                v109 = sub_1819DFFB0(v103, v277);
                v99 = v108;
                v105 = v109;
                v104 = v277[0] & 0x7FFFFFFF;
              }

              else
              {
                v104 = ((v104 & 0x7F) << 14) | ((v106 & 0x7F) << 7) | v107;
                v105 = 3;
              }
            }

            else
            {
              v104 = ((v104 & 0x7F) << 7) | v106;
              v105 = 2;
            }
          }

          else
          {
            v105 = 1;
          }

          v110 = v101 + v104;
          v111 = *(v79 + 3);
          if (v110 >= v111)
          {
            v56[15] = 267;
            v113 = v100;
            v60 = &unk_1ED456000;
            if (v100)
            {
              goto LABEL_268;
            }

            goto LABEL_201;
          }

          v112 = v102 + v110;
          v113 = *(v102 + v110);
          if (!v101)
          {
            if ((v113 & 0x80) != 0)
            {
              v117 = *(v112 + 1);
              if (*(v112 + 1) < 0)
              {
                v119 = *(v112 + 2);
                if ((v119 & 0x80000000) != 0)
                {
                  v277[0] = 0;
                  v143 = v105;
                  v144 = sub_1819DFFB0(v112, v277);
                  v105 = v143;
                  v113 = v277[0] & 0x7FFFFFFF;
                  v115 = v144;
                }

                else
                {
                  v113 = ((v113 & 0x7F) << 14) | ((v117 & 0x7F) << 7) | v119;
                  v115 = 3;
                }
              }

              else
              {
                v113 = ((v113 & 0x7F) << 7) | v117;
                v115 = 2;
              }
            }

            else
            {
              v115 = 1;
            }

            v145 = v115 + v110;
            if (v115 + v110 + v113 <= v111)
            {
              if (!v113)
              {
                v99 = 0;
                v60 = &unk_1ED456000;
                goto LABEL_202;
              }

              v146 = v105;
              if (v251 >= v113)
              {
                goto LABEL_292;
              }

              if (v251)
              {
                v150 = v251;
              }

              else
              {
                v150 = 64;
              }

              do
              {
                v151 = v150;
                v150 *= 2;
              }

              while (v151 < v113);
              if (sqlite3_initialize() || (v152 = sub_18190287C(__dsta, v151, 688041480)) == 0)
              {
                v113 = 0;
                v99 = 0;
                v56[15] = 7;
                v60 = &unk_1ED456000;
              }

              else
              {
                v251 = v151;
                __dsta = v152;
LABEL_292:
                memcpy(__dsta, (v102 + v145), v113);
                v60 = &unk_1ED456000;
                v105 = v146;
LABEL_268:
                v146 = v105;
                if (v260 >= v113)
                {
                  memcpy(v267, __dsta, v113);
                  goto LABEL_277;
                }

                if (v260)
                {
                  LODWORD(v147) = v260;
                }

                else
                {
                  LODWORD(v147) = 64;
                }

                v147 = v147;
                do
                {
                  v148 = v147;
                  v147 *= 2;
                }

                while (v148 < v113);
                if (sqlite3_initialize() || (v149 = sub_18190287C(v267, v148, 688041480)) == 0)
                {
                  v99 = 0;
                  v56[15] = 7;
                }

                else
                {
                  v260 = v148;
                  v267 = v149;
                  memcpy(v149, __dsta, v113);
LABEL_277:
                  v99 = v113;
                }
              }

              v105 = v146;
              goto LABEL_202;
            }

LABEL_266:
            v56[15] = 267;
            v113 = v100;
            v60 = &unk_1ED456000;
            goto LABEL_267;
          }

          if ((v113 & 0x80) != 0)
          {
            v116 = *(v112 + 1);
            if (*(v112 + 1) < 0)
            {
              v118 = *(v112 + 2);
              if ((v118 & 0x80000000) != 0)
              {
                v277[0] = 0;
                v120 = v105;
                v121 = v99;
                v122 = sub_1819DFFB0(v112, v277);
                v99 = v121;
                v105 = v120;
                v113 = v277[0] & 0x7FFFFFFF;
                v114 = v122;
              }

              else
              {
                v113 = ((v113 & 0x7F) << 14) | ((v116 & 0x7F) << 7) | v118;
                v114 = 3;
              }
            }

            else
            {
              v113 = ((v113 & 0x7F) << 7) | v116;
              v114 = 2;
            }
          }

          else
          {
            v114 = 1;
          }

          v123 = v114 + v110;
          v124 = (v102 + v114 + v110);
          v125 = *v124;
          if (*v124 < 0)
          {
            v127 = v124[1];
            if (v124[1] < 0)
            {
              v128 = v124[2];
              if (v128 < 0)
              {
                v277[0] = 0;
                v249 = v105;
                v129 = v99;
                v130 = sub_1819DFFB0(v124, v277);
                v99 = v129;
                v105 = v249;
                v125 = v277[0] & 0x7FFFFFFF;
                v126 = v130;
              }

              else
              {
                v125 = ((v125 & 0x7F) << 14) | ((v127 & 0x7F) << 7) | v128;
                v126 = 3;
              }
            }

            else
            {
              v125 = ((v125 & 0x7F) << 7) | v127;
              v126 = 2;
            }
          }

          else
          {
            v126 = 1;
          }

          v131 = v126 + v123;
          v132 = v125;
          v133 = v131 + v125;
          if (v113 > v100 || v133 > v111)
          {
            goto LABEL_266;
          }

          if (v132)
          {
            v135 = (v132 + v113);
            v250 = v105;
            v247 = v99;
            if (v135 > v251)
            {
              if (v251)
              {
                LODWORD(v136) = v251;
              }

              else
              {
                LODWORD(v136) = 64;
              }

              v136 = v136;
              do
              {
                v137 = v136;
                v136 *= 2;
              }

              while (v137 < v135);
              if (sqlite3_initialize() || (v138 = sub_18190287C(__dsta, v137, 688041480)) == 0)
              {
                v56[15] = 7;
                v60 = &unk_1ED456000;
                v105 = v250;
                if (v113)
                {
                  goto LABEL_268;
                }

                goto LABEL_201;
              }

              v251 = v137;
              __dsta = v138;
            }

            memcpy(&__dsta[v113], (v102 + v131), v132);
            v113 = (v132 + v113);
            v60 = &unk_1ED456000;
            v105 = v250;
            v99 = v247;
            if (v56[15])
            {
              goto LABEL_267;
            }
          }

          else
          {
            v60 = &unk_1ED456000;
          }

          v139 = v113 - v99;
          if (v113 >= v99)
          {
            v140 = v99;
          }

          else
          {
            v140 = v113;
          }

          if (v140 >= 1 && (v141 = v105, v142 = memcmp(__dsta, v267, v140), v105 = v141, v142))
          {
            if (v142 <= 0)
            {
              goto LABEL_262;
            }
          }

          else if (v139 <= 0)
          {
LABEL_262:
            v56[15] = 267;
            if (v113)
            {
              goto LABEL_268;
            }

            goto LABEL_201;
          }

LABEL_267:
          if (v113)
          {
            goto LABEL_268;
          }

LABEL_201:
          v99 = 0;
LABEL_202:
          v81 += v105;
          v100 = v113;
          v101 = v110;
          if (v81 >= *(v79 + 2))
          {
            break;
          }
        }

        v74 = v254;
        if (__dsta)
        {
          v153 = &off_1ED452EB0;
          if (!dword_1ED452E80)
          {
            goto LABEL_299;
          }

          v154 = v60[350];
          if (v154)
          {
            xmmword_1ED452F18(v154);
          }

          qword_1ED456A48[0] -= xmmword_1ED452EC0(__dsta);
          --qword_1ED456A90;
          off_1ED452EB0(__dsta);
          __dsta = v60[350];
          if (__dsta)
          {
            v153 = &xmmword_1ED452F28;
LABEL_299:
            (*v153)(__dsta);
          }
        }

        if (v267)
        {
          v155 = &off_1ED452EB0;
          if (!dword_1ED452E80)
          {
            goto LABEL_306;
          }

          v156 = v60[350];
          if (v156)
          {
            xmmword_1ED452F18(v156);
          }

          qword_1ED456A48[0] -= xmmword_1ED452EC0(v267);
          --qword_1ED456A90;
          off_1ED452EB0(v267);
          v267 = v60[350];
          if (v267)
          {
            v155 = &xmmword_1ED452F28;
LABEL_306:
            (*v155)(v267);
          }
        }

LABEL_307:
        v157 = &off_1ED452EB0;
        if (dword_1ED452E80)
        {
          v158 = v60[350];
          if (v158)
          {
            xmmword_1ED452F18(v158);
          }

          qword_1ED456A48[0] -= xmmword_1ED452EC0(v79);
          --qword_1ED456A90;
          off_1ED452EB0(v79);
          v79 = v60[350];
          if (v79)
          {
            v157 = &xmmword_1ED452F28;
            goto LABEL_312;
          }
        }

        else
        {
LABEL_312:
          (*v157)(v79);
        }

        if (v56[15])
        {
          goto LABEL_155;
        }

        v159 = v74 - 1;
        if (v258 >= v74 - 1)
        {
          goto LABEL_331;
        }

        v160 = v258 + 1;
        v161 = v159;
        while (2)
        {
          v162 = sub_1819DFC90(v56, v160 + (*v256 << 37));
          if (v162)
          {
            if (*(v162 + 3) < *(v162 + 2))
            {
              v56[15] = 267;
            }

            if (v160 >= (v255 + 1) && __rev16(**v162))
            {
              v56[15] = 267;
            }

            v163 = &off_1ED452EB0;
            if (dword_1ED452E80)
            {
              if (v60[350])
              {
                v164 = v162;
                xmmword_1ED452F18(v60[350]);
                v162 = v164;
              }

              v165 = v162;
              qword_1ED456A48[0] -= xmmword_1ED452EC0(v162);
              --qword_1ED456A90;
              off_1ED452EB0(v165);
              if (v60[350])
              {
                v163 = &xmmword_1ED452F28;
                goto LABEL_327;
              }
            }

            else
            {
LABEL_327:
              (*v163)();
            }
          }

          v166 = v56[15];
          if (v160 < v161)
          {
            ++v160;
            if (!v166)
            {
              continue;
            }
          }

          break;
        }

        v74 = v254;
        if (v166)
        {
          goto LABEL_155;
        }

LABEL_331:
        if (v253)
        {
          v167 = *v256;
          v168 = sub_1819EE4E4(v56, 0, v167, v74);
          v169 = v168;
          if (v56[15])
          {
            if (!v168)
            {
              goto LABEL_155;
            }

LABEL_337:
            v255 = 0;
            goto LABEL_338;
          }

          if (v168[5])
          {
            goto LABEL_337;
          }

          v177 = v167 << 37;
          v178 = v254;
          while (2)
          {
            v179 = v178 + 1;
            v178 = v169[7];
            if (v179 >= v178)
            {
              v255 = v179;
              v181 = v178;
              goto LABEL_372;
            }

            v180 = v179;
            while (2)
            {
              v182 = sub_1819DFC90(v56, v177 + v180);
              if (v182)
              {
                if (__rev16(**v182))
                {
                  v56[15] = 267;
                }

                v183 = &off_1ED452EB0;
                if (dword_1ED452E80)
                {
                  if (v60[350])
                  {
                    v184 = v182;
                    xmmword_1ED452F18(v60[350]);
                    v182 = v184;
                  }

                  v185 = v182;
                  qword_1ED456A48[0] -= xmmword_1ED452EC0(v182);
                  --qword_1ED456A90;
                  off_1ED452EB0(v185);
                  if (v60[350])
                  {
                    v183 = &xmmword_1ED452F28;
                    goto LABEL_360;
                  }
                }

                else
                {
LABEL_360:
                  (*v183)();
                }
              }

              ++v180;
              v181 = v169[7];
              if (v180 < v181)
              {
                continue;
              }

              break;
            }

            v255 = v180;
            v178 = v169[7];
LABEL_372:
            v186 = sub_1819DFC90(v56, v181 + v177);
            if (v186)
            {
              v277[0] = 0;
              v187 = __rev16(**v186);
              if (*(v186 + 3) <= v187 || (v252 != 5 || v187) && ((v188 = *(v169 + 4), v189 = v186, sub_1819DFFB0((*v186 + v187), v277), v186 = v189, v277[0] != v188) ? (v190 = v252 != 5) : (v190 = 0), v277[0] < v188 || v190))
              {
                v56[15] = 267;
              }

              v191 = &off_1ED452EB0;
              if (dword_1ED452E80)
              {
                if (v60[350])
                {
                  v192 = v186;
                  xmmword_1ED452F18(v60[350]);
                  v186 = v192;
                }

                v193 = v186;
                qword_1ED456A48[0] -= xmmword_1ED452EC0(v186);
                --qword_1ED456A90;
                off_1ED452EB0(v193);
                if (v60[350])
                {
                  v191 = &xmmword_1ED452F28;
                  goto LABEL_387;
                }
              }

              else
              {
LABEL_387:
                (*v191)();
              }
            }

            sub_1819DF9BC(v56, v169, 0);
            if (!v56[15] && !v169[5])
            {
              continue;
            }

            break;
          }

LABEL_338:
          if (*v169 >= 1)
          {
            v170 = 0;
            v171 = 2;
            do
            {
              v172 = *&v169[v171];
              if (v172)
              {
                v173 = &off_1ED452EB0;
                if (dword_1ED452E80)
                {
                  v174 = v60[350];
                  if (v174)
                  {
                    xmmword_1ED452F18(v174);
                  }

                  qword_1ED456A48[0] -= xmmword_1ED452EC0(v172);
                  --qword_1ED456A90;
                  off_1ED452EB0(v172);
                  v172 = v60[350];
                  if (!v172)
                  {
                    goto LABEL_341;
                  }

                  v173 = &xmmword_1ED452F28;
                }

                (*v173)(v172);
              }

LABEL_341:
              ++v170;
              v171 += 8;
            }

            while (v170 < *v169);
          }

          v175 = &off_1ED452EB0;
          if (dword_1ED452E80)
          {
            v176 = v60[350];
            v74 = v254;
            if (v176)
            {
              xmmword_1ED452F18(v176);
            }

            qword_1ED456A48[0] -= xmmword_1ED452EC0(v169);
            --qword_1ED456A90;
            off_1ED452EB0(v169);
            v169 = v60[350];
            if (!v169)
            {
              goto LABEL_159;
            }

            v175 = &xmmword_1ED452F28;
          }

          else
          {
            v74 = v254;
          }

          (*v175)(v169);
        }

        else
        {
          v255 = v256[2];
        }

LABEL_159:
        v258 = v74;
        if (v56[15])
        {
          goto LABEL_155;
        }
      }

      v56[15] = 267;
      v194 = &off_1ED452EB0;
      if (!dword_1ED452E80)
      {
        goto LABEL_396;
      }

      v195 = v60[350];
      if (v195)
      {
        xmmword_1ED452F18(v195);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v79);
      --qword_1ED456A90;
      off_1ED452EB0(v79);
      v79 = v60[350];
      if (v79)
      {
        v194 = &xmmword_1ED452F28;
LABEL_396:
        (*v194)(v79);
      }

LABEL_155:
      v73 = sqlite3_finalize(v276);
      v62 = v245;
      v63 = v248;
      if (!v56[15])
      {
        v56[15] = v73;
      }

LABEL_136:
      if (++v63 < v62[1])
      {
        continue;
      }

      break;
    }

    v58 = v242;
    v61 = v243;
    v59 = v242[7];
LABEL_133:
    if (++v61 < v59)
    {
      continue;
    }

    break;
  }

LABEL_397:
  sub_1819E5E40(v56, v58, 32, 0, 0, 0, 0xFFFFFFFF, 0, &v273);
  v196 = 0;
  v197 = v273;
  v268 = v56 + 15;
  if (!v56[15])
  {
    v196 = 0;
    v212 = (v273 + 104);
    __dstb = (v273 + 104);
    while (1)
    {
      if (*(v197 + 20))
      {
        goto LABEL_398;
      }

      v277[0] = 0;
      LODWORD(v276) = 0;
      v213 = &v212[128 * *(*(v197 + 96) + 4)];
      v214 = *(v213 + 14);
      v215 = *(v213 + 26);
      v216 = *(v213 + 12);
      if (v240 != 1)
      {
        break;
      }

      if (!*(v213 + 2) || *(v213 + 30))
      {
        v217 = 81 * v214;
        if (v215 >= 1)
        {
          do
          {
            v218 = *v216++;
            v217 = 9 * v217 + v218;
            --v215;
          }

          while (v215);
        }

        v196 ^= v217;
      }

LABEL_438:
      sub_1819DEB74(v56, v197, 0, 0);
      v60 = &unk_1ED456000;
      if (v56[15])
      {
        goto LABEL_398;
      }
    }

    LODWORD(v275) = 0;
    v219 = *(v213 + 30);
    v220 = (v219 + 8);
    if (v220 <= HIDWORD(v275))
    {
      v224 = 0;
      v225 = v274;
    }

    else
    {
      if (HIDWORD(v275))
      {
        LODWORD(v221) = HIDWORD(v275);
      }

      else
      {
        LODWORD(v221) = 64;
      }

      v221 = v221;
      do
      {
        v222 = v221;
        v221 *= 2;
      }

      while (v222 < v220);
      v223 = v274;
      if (sqlite3_initialize() || (v225 = sub_18190287C(v223, v222, 688041480)) == 0)
      {
        v212 = __dstb;
        *v268 = 7;
        goto LABEL_456;
      }

      HIDWORD(v275) = v222;
      v274 = v225;
      v224 = v275;
      v219 = *(v213 + 30);
      v212 = __dstb;
    }

    *(v225 + v224 + v219) = 0;
    sub_1819ED198(v56, v213, &v274, sub_1819F107C);
LABEL_456:
    v226 = v275;
    v227 = (v275 + 4);
    if (v227 <= HIDWORD(v275))
    {
      v232 = v274;
    }

    else
    {
      if (HIDWORD(v275))
      {
        LODWORD(v228) = HIDWORD(v275);
      }

      else
      {
        LODWORD(v228) = 64;
      }

      v228 = v228;
      do
      {
        v229 = v228;
        v228 *= 2;
      }

      while (v229 < v227);
      v230 = v274;
      if (sqlite3_initialize() || (v232 = sub_18190287C(v230, v229, 688041480)) == 0)
      {
        v212 = __dstb;
        *v268 = 7;
        v231 = v275;
        goto LABEL_466;
      }

      HIDWORD(v275) = v229;
      v274 = v232;
      v226 = v275;
      v212 = __dstb;
    }

    *(v232 + v226) = 0;
    v231 = v275 + 4;
    LODWORD(v275) = v275 + 4;
LABEL_466:
    for (k = v274; !sub_1819E0A34(k, v231, &v276, v277); v196 ^= v234)
    {
      v234 = (HIDWORD(v277[0]) & 0x7FFFFFFF) + 9 * v214 + (v277[0] & 0x7FFFFFFF) + 8 * ((HIDWORD(v277[0]) & 0x7FFFFFFF) + 9 * v214);
      if (v215 >= 1)
      {
        v235 = v216;
        v236 = v215;
        do
        {
          v237 = *v235++;
          v234 = 9 * v234 + v237;
          --v236;
        }

        while (v236);
      }
    }

    goto LABEL_438;
  }

LABEL_398:
  sub_1819DB2CC(v197);
  v198 = v56 + 15;
  v199 = v239;
  if (*v268)
  {
    v199 = 1;
  }

  if ((v199 & 1) == 0 && v196 != v238)
  {
    *v268 = 267;
  }

  v200 = v242;
  v90 = (*v242)-- <= 1;
  if (v90)
  {
    if (v242[7] < 1)
    {
LABEL_416:
      v206 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        v207 = v60[350];
        if (v207)
        {
          xmmword_1ED452F18(v207);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v242);
        --qword_1ED456A90;
        off_1ED452EB0(v242);
        if (!v60[350])
        {
          goto LABEL_422;
        }

        v206 = &xmmword_1ED452F28;
      }

      (*v206)();
      goto LABEL_422;
    }

    v201 = 0;
    v202 = (v242 + 10);
    while (1)
    {
      v203 = *v202;
      if (*v202)
      {
        v204 = &off_1ED452EB0;
        if (dword_1ED452E80)
        {
          v205 = v60[350];
          if (v205)
          {
            xmmword_1ED452F18(v205);
          }

          qword_1ED456A48[0] -= xmmword_1ED452EC0(v203);
          --qword_1ED456A90;
          off_1ED452EB0(v203);
          v203 = v60[350];
          v200 = v242;
          if (!v203)
          {
            goto LABEL_408;
          }

          v204 = &xmmword_1ED452F28;
        }

        (*v204)(v203);
        v200 = v242;
      }

LABEL_408:
      ++v201;
      v202 += 2;
      if (v201 >= v200[7])
      {
        goto LABEL_416;
      }
    }
  }

LABEL_422:
  v208 = v274;
  if (v274)
  {
    v209 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_428;
    }

    v210 = v60[350];
    if (v210)
    {
      xmmword_1ED452F18(v210);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v208);
    --qword_1ED456A90;
    off_1ED452EB0(v208);
    v208 = v60[350];
    if (v208)
    {
      v209 = &xmmword_1ED452F28;
LABEL_428:
      (*v209)(v208);
    }
  }

LABEL_429:
  v6 = *v198;
  *v198 = 0;
LABEL_430:
  v211 = &off_1ED452EB0;
  if (dword_1ED452E80)
  {
    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v244);
    --qword_1ED456A90;
    off_1ED452EB0(v244);
    if (xmmword_1ED456AF0)
    {
      v211 = &xmmword_1ED452F28;
      goto LABEL_435;
    }
  }

  else
  {
LABEL_435:
    (*v211)();
  }

  return v6;
}

uint64_t sub_1819F89B0(uint64_t *a1, int a2, uint64_t a3)
{
  if (a1[3])
  {
    goto LABEL_6;
  }

  v6 = *a1;
  if (sqlite3_initialize())
  {
    goto LABEL_3;
  }

  v10 = sub_181902484(40, 0x10B0040AACFDA29);
  a1[3] = v10;
  if (!v10)
  {
    goto LABEL_4;
  }

  v11 = v10;
  *(v10 + 32) = 0;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 8) = a1 + 4;
  *v10 = *(v6 + 116);
  *(v10 + 20) = 1024;
  if (sqlite3_initialize())
  {
    *(v11 + 32) = 0;
  }

  else
  {
    v13 = sub_181902484(0x2000, 0x2004093837F09);
    *(v11 + 32) = v13;
    if (v13)
    {
      bzero(v13, 0x2000uLL);
      v7 = 0;
      goto LABEL_5;
    }
  }

  v12 = &off_1ED452EB0;
  if (dword_1ED452E80)
  {
    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v11);
    --qword_1ED456A90;
    off_1ED452EB0(v11);
    v11 = xmmword_1ED456AF0;
    if (!xmmword_1ED456AF0)
    {
      goto LABEL_3;
    }

    v12 = &xmmword_1ED452F28;
  }

  (*v12)(v11);
LABEL_3:
  a1[3] = 0;
LABEL_4:
  v7 = 7;
LABEL_5:
  *(a1 + 15) = v7;
LABEL_6:
  v8 = a1[5];
  if (v8 > a3 || v8 == a3 && !*(a1 + 12) || *(a1 + 8) > *(*a1 + 212))
  {
    sub_1819E6520(a1);
  }

  a1[5] = a3;
  *(a1 + 12) = a2;
  if (!a2)
  {
    ++*(a1 + 14);
  }

  result = *(a1 + 15);
  *(a1 + 15) = 0;
  return result;
}

uint64_t sub_1819F8B64(_DWORD *a1, char a2, char *__s2, int a4)
{
  v5 = *(*a1 + 8);
  v6 = a1[3];
  if (a2)
  {
    if (v6)
    {
      goto LABEL_6;
    }

    v6 = 1;
  }

  else
  {
    ++v6;
  }

  a1[3] = v6;
LABEL_6:
  if (a4 >= 0x8000)
  {
    v7 = 0x8000;
  }

  else
  {
    v7 = a4;
  }

  v8 = a1[2];
  v9 = v6 - 1;
  v10 = *v5;
  result = sub_1819F92B8(v5[3], v5[5], v8, v6 - 1, 0x30u, __s2, v7);
  v12 = *(v10 + 56);
  if (result)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12 < 1;
  }

  if (!v13)
  {
    v14 = 0;
    do
    {
      v15 = *(*(v10 + 64) + 4 * v14);
      if (v15 >= 1)
      {
        v16 = 0;
        v17 = 0;
        while (v17 < v7)
        {
          v18 = v17 + 1;
          if (__s2[v17] >= 0xC0u)
          {
            if (v18 >= v7)
            {
              break;
            }

            v19 = &__s2[v17 + 1];
            while (1)
            {
              v20 = *v19++;
              if ((v20 & 0xC0) != 0x80)
              {
                break;
              }

              if (v7 == ++v18)
              {
                v17 = v7;
                if (v16 + 1 == v15)
                {
                  goto LABEL_20;
                }

                goto LABEL_15;
              }
            }
          }

          v17 = v18;
LABEL_20:
          if (++v16 == v15)
          {
            if (!v17)
            {
              break;
            }

            result = sub_1819F92B8(v5[3], v5[5], v8, v9, v14 + 49, __s2, v17);
            v12 = *(v10 + 56);
            if (!result)
            {
              goto LABEL_16;
            }

            return result;
          }
        }
      }

LABEL_15:
      result = 0;
LABEL_16:
      ++v14;
    }

    while (v14 < v12);
  }

  return result;
}

uint64_t sub_1819F8CE0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (!*(*a1 + 104))
  {
    return 0;
  }

  v32 = 0;
  result = sub_1819D907C(a1, 7, &v32, 0);
  if (result)
  {
    return result;
  }

  v7 = v32;
  if (!sub_1818DF6EC(v32, 0))
  {
    v8 = v7[16];
    if ((*(v8 + 20) & 0x9000) != 0)
    {
      sub_18193D288(v8, a2);
    }

    else
    {
      *v8 = a2;
      *(v8 + 20) = 4;
    }

    v9 = *(*v7 + 24);
    if (v9)
    {
      xmmword_1ED452F28(v9);
    }
  }

  if (!*(*a1 + 76))
  {
    goto LABEL_39;
  }

  v10 = a1[1];
  v11 = sub_1819E25BC(v10);
  if (v11)
  {
    v12 = v11;
    v13 = *(v11 + 2);
    if ((*v11)-- > 1)
    {
      goto LABEL_32;
    }

    v31 = v13;
    if (v11[7] >= 1)
    {
      v15 = 0;
      v16 = (v11 + 10);
      do
      {
        v17 = *v16;
        if (*v16)
        {
          v18 = &off_1ED452EB0;
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
            if (!xmmword_1ED456AF0)
            {
              goto LABEL_17;
            }

            v18 = &xmmword_1ED452F28;
          }

          (*v18)(v17);
        }

LABEL_17:
        ++v15;
        v16 += 2;
      }

      while (v15 < v12[7]);
    }

    v19 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      v13 = v31;
      goto LABEL_31;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v12);
    --qword_1ED456A90;
    off_1ED452EB0(v12);
    v12 = xmmword_1ED456AF0;
    v13 = v31;
    if (xmmword_1ED456AF0)
    {
      v19 = &xmmword_1ED452F28;
LABEL_31:
      (*v19)(v12);
    }
  }

  else
  {
    v13 = 0;
  }

LABEL_32:
  v20 = *(v10 + 60);
  *(v10 + 60) = 0;
  if (!sub_1818DF6EC(v7, 2u))
  {
    v21 = v7[16];
    if ((*(v21 + 148) & 0x9000) != 0)
    {
      sub_18193D288(v21 + 128, v13);
    }

    else
    {
      *(v21 + 128) = v13;
      *(v21 + 148) = 4;
    }

    v22 = *(*v7 + 24);
    if (v22)
    {
      xmmword_1ED452F28(v22);
    }
  }

  result = v20;
  if (!v20)
  {
LABEL_39:
    v23 = *(a3 + 8);
    if ((v23 & 0x80000000) != 0)
    {
      sub_1819012D0(101409);
    }

    else
    {
      v24 = *a3;
      if (!sub_1818DF6EC(v7, 1u))
      {
        if (v24)
        {
          v25 = sub_1818900D0(v7[16] + 64, v24, v23, 0, 0);
          if (v25)
          {
            v26 = v25;
            v27 = *v7;
            *(v27 + 80) = v26;
            sub_181932D5C(v27, v26);
            sub_18193C988(*v7, v26);
          }
        }

        v28 = *(*v7 + 24);
        if (v28)
        {
          xmmword_1ED452F28(v28);
        }
      }
    }

    sqlite3_step(v7);
    v29 = sqlite3_reset(v7);
    if (!sub_1818DF6EC(v7, 1u))
    {
      v30 = *(*v7 + 24);
      if (v30)
      {
        xmmword_1ED452F28(v30);
      }
    }

    return v29;
  }

  return result;
}

uint64_t sub_1819F9060(void *a1)
{
  v2 = *(*a1 + 32);
  v3 = a1[3];
  if (sqlite3_initialize())
  {
    v4 = 0;
LABEL_3:
    v5 = 0;
    v6 = 0;
    v7 = 7;
    goto LABEL_4;
  }

  v19 = sub_18190287C(0, 0x40uLL, 688041480);
  v4 = v19;
  if (!v19)
  {
    goto LABEL_3;
  }

  if (v3 > 0x7F)
  {
    if (v3 >> 14)
    {
      v5 = sub_1819436D0(v19, v3);
      v7 = 0;
      v6 = 64;
    }

    else
    {
      v7 = 0;
      v19->i8[0] = (v3 >> 7) | 0x80;
      v19->i8[1] = v3 & 0x7F;
      v6 = 64;
      v5 = 2;
    }
  }

  else
  {
    v7 = 0;
    v19->i8[0] = v3;
    v6 = 64;
    v5 = 1;
  }

LABEL_4:
  if (v2 >= 1)
  {
    v8 = 0;
    while (1)
    {
      v10 = *(a1[4] + 8 * v8);
      v11 = (v5 + 9);
      if (v11 <= v6)
      {
        goto LABEL_19;
      }

      LODWORD(v12) = v6 ? v6 : 64;
      v12 = v12;
      do
      {
        v13 = v12;
        v12 *= 2;
      }

      while (v13 < v11);
      if (!sqlite3_initialize())
      {
        v14 = sub_18190287C(v4, v13, 688041480);
        if (v14)
        {
          break;
        }
      }

      v7 = 7;
LABEL_8:
      if (++v8 == v2)
      {
        goto LABEL_23;
      }
    }

    v4 = v14;
    v6 = v13;
LABEL_19:
    v15 = &v4[v5];
    if (v10 <= 0x7F)
    {
      v15->i8[0] = v10;
      v9 = 1;
    }

    else if (v10 >> 14)
    {
      v9 = sub_1819436D0(v15, v10);
    }

    else
    {
      v15->i8[0] = (v10 >> 7) | 0x80;
      v15->i8[1] = v10 & 0x7F;
      v9 = 2;
    }

    v5 += v9;
    goto LABEL_8;
  }

LABEL_23:
  if (!v7)
  {
    v16 = a1[1];
    sub_1819D7E9C(v16, 1, v4, v5);
    v7 = *(v16 + 60);
    *(v16 + 60) = 0;
  }

  if (v4)
  {
    v17 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_31:
      (*v17)(v4);
      return v7;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v4);
    --qword_1ED456A90;
    off_1ED452EB0(v4);
    v4 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v17 = &xmmword_1ED452F28;
      goto LABEL_31;
    }
  }

  return v7;
}

uint64_t sub_1819F92B8(int *a1, unint64_t a2, unsigned int a3, signed int a4, unsigned __int8 a5, char *__s2, unsigned int a7)
{
  v10 = a5;
  v11 = a1[5];
  v69 = *a1 == 0;
  if (a7 < 1)
  {
    v13 = 13;
  }

  else
  {
    v12 = a7;
    v13 = 13;
    do
    {
      v13 ^= __s2[v12 - 1] ^ (8 * v13);
      v14 = v12-- > 1;
    }

    while (v14);
  }

  v15 = (a5 ^ (8 * v13) ^ v13) % v11;
  v16 = *(a1 + 4);
  v17 = *(v16 + 8 * v15);
  v18 = a7 + 1;
  if (!v17)
  {
LABEL_19:
    if (v18 <= 15)
    {
      v27 = 15;
    }

    else
    {
      v27 = a7 + 1;
    }

    if (v11 > 2 * a1[4])
    {
      if (sqlite3_initialize())
      {
        return 7;
      }

      goto LABEL_24;
    }

    if (sqlite3_initialize())
    {
      return 7;
    }

    v67 = v27;
    v35 = sub_181902484(16 * v11, 0x2004093837F09);
    if (!v35)
    {
      return 7;
    }

    v36 = v35;
    v37 = 2 * v11;
    bzero(v35, 16 * v11);
    v38 = a1[5];
    if (v38 < 1)
    {
      if (!v16)
      {
        goto LABEL_54;
      }
    }

    else
    {
      for (i = 0; i != v38; ++i)
      {
        while (1)
        {
          v42 = *(v16 + 8 * i);
          if (!v42)
          {
            break;
          }

          *(v16 + 8 * i) = *v42;
          v43 = *(v42 + 28);
          if (v43 < 1)
          {
            v40 = 13;
          }

          else
          {
            v44 = v43 + 1;
            v45 = (v42 + v43 + 47);
            v40 = 13;
            do
            {
              v46 = *v45--;
              v40 ^= v46 ^ (8 * v40);
              --v44;
            }

            while (v44 > 1);
          }

          v41 = v40 % v37;
          *v42 = v36[v41];
          v36[v41] = v42;
        }
      }
    }

    v52 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v16);
      --qword_1ED456A90;
      off_1ED452EB0(v16);
      v16 = xmmword_1ED456AF0;
      if (!xmmword_1ED456AF0)
      {
LABEL_54:
        a1[5] = v37;
        *(a1 + 4) = v36;
        if (a7 < 1)
        {
          v54 = 13;
          v27 = v67;
        }

        else
        {
          v53 = a7;
          v54 = 13;
          v27 = v67;
          do
          {
            v54 ^= __s2[v53 - 1] ^ (8 * v54);
            v14 = v53-- > 1;
          }

          while (v14);
        }

        LODWORD(v15) = (v10 ^ (8 * v54) ^ v54) % v37;
        if (sqlite3_initialize())
        {
          return 7;
        }

LABEL_24:
        v28 = v27 + 113;
        v29 = sub_181902484(v28, 0x10200401705F15ELL);
        if (v29)
        {
          v24 = v29;
          *(v29 + 16) = 0u;
          *(v29 + 32) = 0u;
          *v29 = 0u;
          *(v29 + 16) = v28;
          *(v29 + 48) = v10;
          v30 = v29 + 48;
          memcpy((v29 + 49), __s2, a7);
          *(v24 + 28) = v18;
          *(v30 + v18) = 0;
          v31 = *(a1 + 4);
          *v24 = *(v31 + 8 * v15);
          *(v31 + 8 * v15) = v24;
          *(v24 + 24) = a7 + 49;
          ++a1[4];
          v32 = (v24 + (a7 + 49));
          if (a2 > 0x7F)
          {
            v34 = a3;
            if (a2 >> 14)
            {
              v33 = sub_1819436D0(v32, a2);
            }

            else
            {
              v32->i8[0] = (a2 >> 7) | 0x80;
              v32->i8[1] = a2 & 0x7F;
              v33 = 2;
            }
          }

          else
          {
            v32->i8[0] = a2;
            v33 = 1;
            v34 = a3;
          }

          v20 = *(v24 + 24) + v33;
          *(v24 + 40) = a2;
          *(v24 + 20) = v20;
          *(v24 + 24) = v20;
          v55 = *a1;
          if (*a1 == 1)
          {
            v47 = 0;
            if ((v34 & 0x80000000) == 0)
            {
              goto LABEL_70;
            }

LABEL_64:
            *(v24 + 32) = 1;
            goto LABEL_99;
          }

          v47 = 0;
          *(v24 + 24) = ++v20;
          if (v55)
          {
            v56 = -1;
          }

          else
          {
            v56 = 0;
          }

          *(v24 + 34) = v56;
LABEL_69:
          if ((v34 & 0x80000000) == 0)
          {
            goto LABEL_70;
          }

          goto LABEL_64;
        }

        return 7;
      }

      v52 = &xmmword_1ED452F28;
    }

    (*v52)(v16);
    goto LABEL_54;
  }

  while (*(v17 + 48) != v10 || *(v17 + 28) != v18 || memcmp((v17 + 49), __s2, a7))
  {
    v17 = *v17;
    if (!v17)
    {
      goto LABEL_19;
    }
  }

  v19 = *(v17 + 16);
  v20 = *(v17 + 24);
  if (v19 - v20 > 21)
  {
    v24 = v17;
    goto LABEL_44;
  }

  v21 = sqlite3_initialize();
  result = 7;
  if (v19 && !v21)
  {
    v23 = sub_18190287C(v17, 2 * v19, 0x10200401705F15ELL);
    if (v23)
    {
      v24 = v23;
      *(v23 + 16) = 2 * v19;
      v25 = (*(a1 + 4) + 8 * v15);
      do
      {
        v26 = v25;
        v25 = *v25;
      }

      while (v25 != v17);
      *v26 = v23;
      v20 = *(v23 + 24);
LABEL_44:
      v34 = a3;
      v47 = -v20;
      v48 = *(v24 + 40);
      v49 = a2 - v48;
      if (a2 != v48)
      {
        sub_1819EB56C(a1, v24, 0);
        v50 = (v24 + *(v24 + 24));
        if (v49 > 0x7F)
        {
          if (v49 >> 14)
          {
            v51 = sub_1819436D0(v50, v49);
          }

          else
          {
            v50->i8[0] = (v49 >> 7) | 0x80;
            v50->i8[1] = v49 & 0x7F;
            v51 = 2;
          }
        }

        else
        {
          v50->i8[0] = v49;
          v51 = 1;
        }

        v20 = *(v24 + 24) + v51;
        *(v24 + 40) = a2;
        *(v24 + 20) = v20;
        *(v24 + 24) = v20;
        v60 = *a1;
        if (*a1 != 1)
        {
          *(v24 + 24) = ++v20;
          if (v60)
          {
            v61 = -1;
          }

          else
          {
            v61 = 0;
          }

          *(v24 + 34) = v61;
          *(v24 + 36) = 0;
          v60 = 1;
        }

        v69 = v60;
        if ((a3 & 0x80000000) != 0)
        {
          goto LABEL_64;
        }

LABEL_70:
        if (*a1 != 1)
        {
          if (*(v24 + 34) == v34)
          {
            v57 = a4;
            if (!v69)
            {
              goto LABEL_99;
            }
          }

          else
          {
            v57 = a4;
            if (*a1)
            {
              *(v24 + 34) = v34;
              v57 = v34;
            }

            else
            {
              *(v24 + 24) = v20 + 1;
              *(v24 + v20) = 1;
              v58 = (v24 + *(v24 + 24));
              if (v34 > 0x7F)
              {
                if (v34 >> 14)
                {
                  v59 = sub_1819436D0(v58, v34);
                  v57 = a4;
                }

                else
                {
                  v58->i8[0] = (v34 >> 7) | 0x80;
                  v58->i8[1] = v34 & 0x7F;
                  v59 = 2;
                }
              }

              else
              {
                v58->i8[0] = v34;
                v59 = 1;
              }

              v20 = *(v24 + 24) + v59;
              *(v24 + 24) = v20;
              *(v24 + 34) = v34;
              *(v24 + 36) = 0;
              if (!v69)
              {
                goto LABEL_99;
              }
            }
          }

          v62 = (v24 + v20);
          v63 = v57 - *(v24 + 36);
          v64 = v63 + 2;
          if ((v63 + 2) > 0x7F)
          {
            if (v64 >> 14)
            {
              v66 = v57;
              v65 = sub_1819436D0(v62, v64);
              v57 = v66;
            }

            else
            {
              v62->i8[0] = (v64 >> 7) | 0x80;
              v62->i8[1] = v64 & 0x7F;
              v65 = 2;
            }
          }

          else
          {
            v62->i8[0] = v64;
            v65 = 1;
          }

          v20 = *(v24 + 24) + v65;
          *(v24 + 24) = v20;
          *(v24 + 36) = v57;
          goto LABEL_99;
        }

        *(v24 + 33) = 1;
LABEL_99:
        result = 0;
        **(a1 + 1) += v20 + v47;
        return result;
      }

      goto LABEL_69;
    }

    return 7;
  }

  return result;
}

_DWORD *sub_1819F9908(uint64_t a1, _DWORD *a2)
{
  v2 = a2[6];
  if (!v2)
  {
    return 0;
  }

  v3 = a2;
  v4 = a2[7];
  if (v4 >= 1)
  {
    v5 = a2 + 10;
    for (i = a2[7]; i; --i)
    {
      v7 = *(v5 - 1);
      if (v7 >= 1)
      {
        if (v7 == v2)
        {
          if (v2 != 1 || *(*v5 + 32))
          {
LABEL_20:
            ++*a2;
            return v3;
          }

          return 0;
        }

        if (v7 == v2 - 1 && *(v5 - 2) == v7)
        {
          goto LABEL_20;
        }
      }

      v5 += 4;
    }
  }

  if (*(a1 + 60))
  {
    return 0;
  }

  if (!sqlite3_initialize())
  {
    v11 = 16 * v4;
    v12 = sub_181902484(v11 + 64, 1913357809);
    if (v12)
    {
      v13 = v12;
      bzero(v12, v11 + 64);
      v14 = v3[7];
      if (v14 < 63)
      {
        v15 = v14 + 1;
      }

      else
      {
        v15 = 64;
      }

      v13[7] = v15;
      *v13 = 1;
      *(v13 + 1) = *(v3 + 1);
      *(v13 + 2) = *(v3 + 2);
      v16 = &v13[4 * v15 + 4];
      if (!*(a1 + 60))
      {
        if (!sqlite3_initialize())
        {
          v18 = sub_181902484(56 * v2, 1913357809);
          if (v18)
          {
            v19 = v18;
            bzero(v18, 56 * v2);
            *(v16 + 8) = v19;
            v20 = v3[7];
            if (v20 >= 1)
            {
              v21 = 0;
              do
              {
                v23 = &v3[4 * v20 + 4];
                if (*(v23 + 4) >= 1)
                {
                  v24 = 0;
                  v25 = 0;
                  do
                  {
                    v26 = *(v16 + 8) + 56 * v21 + v24;
                    v27 = (*(v23 + 8) + v24);
                    v28 = *v27;
                    v29 = v27[1];
                    v30 = v27[2];
                    *(v26 + 48) = *(v27 + 6);
                    *(v26 + 16) = v29;
                    *(v26 + 32) = v30;
                    *v26 = v28;
                    ++v25;
                    v24 += 56;
                  }

                  while (v25 < *(v23 + 4));
                  v21 += v25;
                }
              }

              while (v20-- >= 2);
            }

            *(v16 + 4) = v2;
            v13[6] = v2;
            return v13;
          }
        }

        if (v2 >= 1)
        {
          *(a1 + 60) = 7;
        }
      }

      *(v16 + 8) = 0;
      v17 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v13);
        --qword_1ED456A90;
        off_1ED452EB0(v13);
        v13 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          return 0;
        }

        v17 = &xmmword_1ED452F28;
      }

      (*v17)(v13);
      return 0;
    }
  }

  if (v4 < -3)
  {
    return 0;
  }

  v3 = 0;
  *(a1 + 60) = 7;
  return v3;
}

uint64_t sub_1819F9BBC(uint64_t a1, char a2, char *__s2, int a4)
{
  v7 = *(a1 + 24);
  if (a4 >= 0x8000)
  {
    v8 = 0x8000;
  }

  else
  {
    v8 = a4;
  }

  v9 = *(a1 + 12);
  if (a2)
  {
    if (v9)
    {
      goto LABEL_9;
    }

    v9 = 1;
  }

  else
  {
    ++v9;
  }

  *(a1 + 12) = v9;
LABEL_9:
  v10 = *(*(a1 + 32) + 116);
  if (v10 == 2)
  {
    v12 = 0;
    v11 = *(a1 + 8);
  }

  else if (v10)
  {
    v11 = 0;
    v12 = 0;
  }

  else
  {
    v11 = v9 - 1;
    v12 = *(a1 + 8);
  }

  v31 = 0;
  result = sub_1819F9F4C(v7, 0, __s2, v8, &v31);
  if (!(result | v31))
  {
    v14 = 9 * (9 * *a1 + v12 + v11 + 8 * (9 * *a1 + v12)) + 48;
    if (a4 >= 1)
    {
      v15 = __s2;
      v16 = v8;
      do
      {
        v17 = *v15++;
        v14 = 9 * v14 + v17;
        --v16;
      }

      while (v16);
    }

    *(a1 + 16) ^= v14;
  }

  if (!result)
  {
    for (i = 0; ; ++i)
    {
      v19 = *(a1 + 32);
      if (i >= *(v19 + 56))
      {
        break;
      }

      v20 = *(*(v19 + 64) + 4 * i);
      if (v20 >= 1)
      {
        v21 = 0;
        v22 = 0;
        while (v22 < v8)
        {
          v23 = v22 + 1;
          if (__s2[v22] >= 0xC0u)
          {
            if (v23 >= v8)
            {
              break;
            }

            v24 = &__s2[v22 + 1];
            while (1)
            {
              v25 = *v24++;
              if ((v25 & 0xC0) != 0x80)
              {
                break;
              }

              if (v8 == ++v23)
              {
                v22 = v8;
                if (v21 + 1 == v20)
                {
                  goto LABEL_27;
                }

                goto LABEL_21;
              }
            }
          }

          v22 = v23;
LABEL_27:
          if (++v21 == v20)
          {
            if (!v22)
            {
              break;
            }

            result = sub_1819F9F4C(v7, i + 1, __s2, v22, &v31);
            if (!v31)
            {
              v26 = 9 * *a1 + v12 + v11 + 8 * (9 * *a1 + v12);
              v27 = i + v26 + 8 * v26 + 49;
              if (v22 >= 1)
              {
                v28 = v22;
                v29 = __s2;
                do
                {
                  v30 = *v29++;
                  v27 = 9 * v27 + v30;
                  --v28;
                }

                while (v28);
              }

              *(a1 + 16) ^= v27;
            }

            goto LABEL_22;
          }
        }
      }

LABEL_21:
      result = 0;
LABEL_22:
      if (result)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1819F9E10(uint64_t **a1, uint64_t a2, sqlite3_int64 *a3)
{
  v4 = *a1;
  v5 = sqlite3_mprintf("SELECT count(*) FROM %Q.'%q_%s'", (*a1)[2], (*a1)[3], a2);
  if (!v5)
  {
    return 7;
  }

  v6 = v5;
  pStmt = 0;
  v7 = sub_1818954B4(*v4, v5, 0xFFFFFFFFLL, 128, 0, &pStmt, 0);
  if (!v7)
  {
    if (sqlite3_step(pStmt) == 100)
    {
      *a3 = sqlite3_column_int64(pStmt, 0);
    }

    v7 = sqlite3_finalize(pStmt);
  }

  v8 = &off_1ED452EB0;
  if (dword_1ED452E80)
  {
    v9 = v7;
    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v6);
    --qword_1ED456A90;
    off_1ED452EB0(v6);
    v6 = xmmword_1ED456AF0;
    if (!xmmword_1ED456AF0)
    {
      return v9;
    }

    v8 = &xmmword_1ED452F28;
  }

  else
  {
    v9 = v7;
  }

  (*v8)(v6);
  return v9;
}

uint64_t sub_1819F9F4C(uint64_t result, int a2, char *__s2, int a4, _DWORD *a5)
{
  *a5 = 0;
  if (result)
  {
    v9 = result;
    if (a4 < 1)
    {
      v11 = 13;
    }

    else
    {
      v10 = a4;
      v11 = 13;
      do
      {
        v11 ^= __s2[v10 - 1] ^ (8 * v11);
      }

      while (v10-- > 1);
    }

    v13 = (a2 ^ (8 * v11) ^ v11) & 0x1FF;
    v14 = *(result + 8 * v13);
    if (v14)
    {
      while (1)
      {
        if (*(v14 + 12) == a2 && *(v14 + 8) == a4)
        {
          result = memcmp(*v14, __s2, a4);
          if (!result)
          {
            break;
          }
        }

        v14 = *(v14 + 16);
        if (!v14)
        {
          goto LABEL_8;
        }
      }

      *a5 = 1;
    }

    else
    {
LABEL_8:
      if (sqlite3_initialize() || (v15 = sub_181902484(a4 + 24, 1913357809)) == 0)
      {
        if (a4 <= -24)
        {
          return 0;
        }

        else
        {
          return 7;
        }
      }

      else
      {
        v16 = v15;
        bzero(v15, a4 + 24);
        *v16 = v16 + 6;
        v16[2] = a4;
        v16[3] = a2;
        memcpy(v16 + 6, __s2, a4);
        result = 0;
        *(v16 + 2) = *(v9 + 8 * v13);
        *(v9 + 8 * v13) = v16;
      }
    }
  }

  return result;
}

uint64_t sub_1819FA088(sqlite3 ***a1)
{
  insert_rowid = sqlite3_last_insert_rowid(**a1);
  if (*(a1 + 4))
  {
    v3 = sub_1819F9060(a1);
    if (v3)
    {
      goto LABEL_14;
    }

    *(a1 + 4) = 0;
  }

  v4 = a1[1];
  sub_1819E6520(v4);
  v5 = v4[9];
  if (v5)
  {
    v4[9] = 0;
    v6 = *(v5 + 3);
    v7 = *(v5 + 4);
    v8 = v7[3];
    if (v8)
    {
      xmmword_1ED452F18(v8);
    }

    sub_181929C84(v7, v5);
    v9 = v7[3];
    if (v9)
    {
      xmmword_1ED452F28(v9);
    }

    v10 = sqlite3_finalize(v6);
    v11 = *(v4 + 15);
    if (v11)
    {
      v3 = v11;
    }

    else
    {
      v3 = v10;
    }
  }

  else
  {
    v3 = *(v4 + 15);
  }

  *(v4 + 15) = 0;
LABEL_14:
  v12 = **a1;
  if (!v12)
  {
    v14 = "NULL";
    goto LABEL_24;
  }

  v13 = *(v12 + 113);
  if (v13 == 186)
  {
LABEL_18:
    v14 = "unopened";
LABEL_24:
    sqlite3_log(21, "API call with %s database connection pointer", v14);
    sub_1819012D0(192799);
    return v3;
  }

  if (v13 != 118)
  {
    if (v13 != 109)
    {
      v14 = "invalid";
      goto LABEL_24;
    }

    goto LABEL_18;
  }

  v15 = *(v12 + 24);
  if (v15)
  {
    xmmword_1ED452F18(v15);
    v16 = *(v12 + 24);
    *(v12 + 56) = insert_rowid;
    if (v16)
    {
      xmmword_1ED452F28(v16);
    }
  }

  else
  {
    *(v12 + 56) = insert_rowid;
  }

  return v3;
}

uint64_t sub_1819FA200(unsigned __int8 **a1, int a2, int a3, unint64_t a4)
{
  v4 = *a1;
  v5 = **a1;
  v6 = *(a1 + 2);
  if (v5 == 4)
  {
    v7 = 2;
  }

  else
  {
    v7 = 3;
  }

  if (v6 <= 16)
  {
    v8 = 1;
  }

  else
  {
    v8 = (v6 - 8) >> v7;
  }

  if (HIDWORD(a4) && v5 == 4)
  {
    return 2;
  }

  if (a4)
  {
    v10 = bswap32(*(v4 + 4));
    if (a2 || v10 < (v8 >> 1))
    {
      v11 = a4 / a3 % v8;
      *(v4 + 4) = bswap32(v10 + 1);
      v12 = *a1 + 8;
      if (v5 == 4)
      {
        v13 = v8 + 1;
        while (*&v12[4 * v11])
        {
          v11 = (v11 + 1) % v8;
          if (!--v13)
          {
            return 0;
          }
        }

        *&v12[4 * v11] = bswap32(a4);
        return 0;
      }

      else
      {
        v14 = v8 + 1;
        while (*&v12[8 * v11])
        {
          v11 = (v11 + 1) % v8;
          if (!--v14)
          {
            return 0;
          }
        }

        *&v12[8 * v11] = bswap64(a4);
        return 0;
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    *(v4 + 1) = 1;
    return 0;
  }
}

uint64_t sub_1819FA31C(uint64_t a1)
{
  *(a1 + 16) = 0;
  v1 = *(a1 + 8);
  v2 = *(v1 + 72);
  if (v2)
  {
    *(v1 + 72) = 0;
    v3 = v2[3];
    v4 = v2[4];
    v5 = v4[3];
    if (v5)
    {
      xmmword_1ED452F18(v5);
    }

    sub_181929C84(v4, v2);
    v6 = v4[3];
    if (v6)
    {
      xmmword_1ED452F28(v6);
    }

    v7 = sqlite3_finalize(v3);
    if (!*(v1 + 60))
    {
      *(v1 + 60) = v7;
    }
  }

  v8 = *(v1 + 24);
  if (v8)
  {
    sub_1819D8C28(v8);
    *(v1 + 32) = 0;
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  *(v1 + 52) = 0;
  v9 = *(v1 + 160);
  if (v9)
  {
    if ((*v9)-- > 1)
    {
      goto LABEL_29;
    }

    if (v9[7] < 1)
    {
LABEL_23:
      v15 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v9);
        --qword_1ED456A90;
        off_1ED452EB0(v9);
        v9 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          goto LABEL_29;
        }

        v15 = &xmmword_1ED452F28;
      }

      (*v15)(v9);
LABEL_29:
      *(v1 + 160) = 0;
      goto LABEL_30;
    }

    v11 = 0;
    v12 = (v9 + 10);
    while (1)
    {
      v13 = *v12;
      if (*v12)
      {
        v14 = &off_1ED452EB0;
        if (dword_1ED452E80)
        {
          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48[0] -= xmmword_1ED452EC0(v13);
          --qword_1ED456A90;
          off_1ED452EB0(v13);
          v13 = xmmword_1ED456AF0;
          if (!xmmword_1ED456AF0)
          {
            goto LABEL_16;
          }

          v14 = &xmmword_1ED452F28;
        }

        (*v14)(v13);
      }

LABEL_16:
      ++v11;
      v12 += 2;
      if (v11 >= v9[7])
      {
        goto LABEL_23;
      }
    }
  }

LABEL_30:
  result = *(v1 + 60);
  *(v1 + 60) = 0;
  return result;
}

void sub_1819FA518(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2;
  if (a1)
  {
    v10 = *(*(a1 + 8) + 8);
    v11 = *a3;
    if (*a3)
    {
      goto LABEL_3;
    }

LABEL_6:
    v14 = a1;
    sub_1819012D0(92237);
    a1 = v14;
LABEL_7:
    v13 = 0;
    goto LABEL_8;
  }

  v10 = 0;
  v11 = *a3;
  if (!*a3)
  {
    goto LABEL_6;
  }

LABEL_3:
  v12 = *(v11 + 20);
  if ((v12 & 0x24) == 0)
  {
    if ((v12 & 8) != 0)
    {
      v19 = *v11;
      if (*v11 >= -9.22337204e18)
      {
        v13 = 0x7FFFFFFFFFFFFFFFLL;
        if (v19 <= 9.22337204e18)
        {
          v13 = v19;
        }
      }

      else
      {
        v13 = 0x8000000000000000;
      }

      goto LABEL_8;
    }

    if ((v12 & 0x12) != 0 && *(v11 + 8))
    {
      v18 = a1;
      v13 = sub_18193CFCC(v11);
      a1 = v18;
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v13 = *v11;
LABEL_8:
  v15 = (*v10)[11];
  if (!v15)
  {
    goto LABEL_17;
  }

  while (v15[3] != v13)
  {
    v15 = v15[1];
    if (!v15)
    {
      goto LABEL_17;
    }
  }

  v16 = *(v15 + 8);
  if (v16 == 3 || v16 == 0)
  {
LABEL_17:
    sub_1819FA708(a1, a2, a3, a4, a5, a6, a7, a8, v13);
    return;
  }

  v20 = *v15;
  v15[18] = v10;
  (v10[3])(&unk_1EEF90788, v15, a1, (v9 - 1), a3 + 1);
  v15[18] = 0;
  v21 = *(v20 + 16);
  if (v21)
  {
    v22 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v21);
      --qword_1ED456A90;
      off_1ED452EB0(v21);
      v21 = xmmword_1ED456AF0;
      if (!xmmword_1ED456AF0)
      {
        goto LABEL_31;
      }

      v22 = &xmmword_1ED452F28;
    }

    (*v22)(v21);
  }

LABEL_31:
  *(v20 + 16) = 0;
}

void sub_1819FA708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v16 = *MEMORY[0x1E69E9840];
  if (sqlite3_initialize())
  {
    v9 = 0;
  }

  else
  {
    v14 = 0;
    v11 = 0;
    v12 = &v15;
    v13 = 0x7FFFFFFD00000200;
    sqlite3_str_vappendf(&v11, "no such cursor: %lld", va);
    if (v12 && (v12[v14] = 0, HIDWORD(v13)) && (v14 & 0x40000000000) == 0)
    {
      v9 = sub_18192A12C(&v11);
    }

    else
    {
      v9 = v12;
    }
  }

  if (a1)
  {
    *(a1 + 36) = 1;
    sub_1818900D0(*a1, v9, -1, 1, 0xFFFFFFFFFFFFFFFFLL);
  }

  if (v9)
  {
    v10 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_16:
      (*v10)(v9);
      return;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v9);
    --qword_1ED456A90;
    off_1ED452EB0(v9);
    v9 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v10 = &xmmword_1ED452F28;
      goto LABEL_16;
    }
  }
}

uint64_t sub_1819FA884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (sqlite3_initialize())
  {
    v8 = 0;
LABEL_3:
    result = 7;
    goto LABEL_4;
  }

  v10 = sub_181902484(72, 1913357809);
  v8 = v10;
  if (!v10)
  {
    goto LABEL_3;
  }

  *(v10 + 32) = 0u;
  *(v10 + 48) = 0u;
  *(v10 + 64) = 0;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  v11 = *(a1 + 24);
  *(v10 + 24) = *(a1 + 40);
  *(v10 + 8) = v11;
  v12 = *(a1 + 64);
  *(v10 + 32) = *(a1 + 48);
  *(v10 + 48) = v12;
  v13 = *(a1 + 16);
  *v10 = v13;
  v14 = v13 == 0;
  v15 = 56;
  if (v14)
  {
    v15 = 24;
  }

  result = (*(a1 + v15))(*(a1 + 8), a2, a3, v10 + 64);
  if (result)
  {
    v16 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      v17 = result;
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v8);
      --qword_1ED456A90;
      off_1ED452EB0(v8);
      v8 = xmmword_1ED456AF0;
      if (!xmmword_1ED456AF0)
      {
        goto LABEL_16;
      }

      v16 = &xmmword_1ED452F28;
    }

    else
    {
      v17 = result;
    }

    (*v16)(v8);
    v8 = 0;
LABEL_16:
    result = v17;
  }

LABEL_4:
  *a4 = v8;
  return result;
}

int *sub_1819FA9F0(int *result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  v2 = *result;
  v3 = *(result + 8);
  v4 = v2 == 0;
  v5 = 48;
  if (v4)
  {
    v5 = 16;
  }

  (*(v1 + v5))(v3);
  v6 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_9;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v1);
  --qword_1ED456A90;
  result = off_1ED452EB0(v1);
  v1 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v6 = &xmmword_1ED452F28;
LABEL_9:
    v7 = *v6;

    return v7(v1);
  }

  return result;
}

void sub_1819FAAEC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5)
{
  v97 = 0;
  if (a4 != 5)
  {
    if (a3)
    {
      *(a3 + 36) = 1;
      v14 = *a3;

      sub_1818900D0(v14, "wrong number of arguments to function snippet()", -1, 1, 0xFFFFFFFFFFFFFFFFLL);
    }

    return;
  }

  v95 = 0u;
  v96 = 0u;
  v82 = (*(a1 + 16))(a2);
  v98 = 0u;
  *v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0;
  v11 = *a5;
  if (!*a5)
  {
    sub_1819012D0(92237);
    goto LABEL_10;
  }

  v12 = *(v11 + 20);
  if ((v12 & 0x24) != 0)
  {
    v13 = *v11;
    goto LABEL_11;
  }

  if ((v12 & 8) == 0)
  {
    if ((v12 & 0x12) != 0 && *(v11 + 8))
    {
      LODWORD(v13) = sub_18193CFCC(v11);
      goto LABEL_11;
    }

LABEL_10:
    LODWORD(v13) = 0;
    goto LABEL_11;
  }

  v68 = *v11;
  if (*v11 >= -9.22337204e18)
  {
    if (v68 <= 9.22337204e18)
    {
      *&v13 = v68;
    }

    else
    {
      LODWORD(v13) = -1;
    }
  }

  else
  {
    LODWORD(v13) = 0;
  }

LABEL_11:
  v15 = a5[1];
  if (v15)
  {
    v16 = *(v15 + 20);
    if ((~v16 & 0x202) != 0 || *(v15 + 22) != 1)
    {
      if (v16)
      {
        v15 = 0;
      }

      else
      {
        v15 = sub_18193CB70(v15, 1, v9, v10);
      }
    }

    else
    {
      v15 = *(v15 + 8);
    }
  }

  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = &byte_181A2878D;
  }

  *(&v98 + 1) = v17;
  v18 = a5[2];
  if (v18)
  {
    v19 = *(v18 + 20);
    if ((~v19 & 0x202) != 0 || *(v18 + 22) != 1)
    {
      if (v19)
      {
        v18 = 0;
      }

      else
      {
        v18 = sub_18193CB70(v18, 1, v9, v10);
      }
    }

    else
    {
      v18 = *(v18 + 8);
    }
  }

  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = &byte_181A2878D;
  }

  v99[0] = v20;
  DWORD1(v98) = -1;
  v21 = a5[3];
  if (v21)
  {
    v22 = *(v21 + 20);
    if ((~v22 & 0x202) != 0 || *(v21 + 22) != 1)
    {
      if (v22)
      {
        v21 = 0;
      }

      else
      {
        v21 = sub_18193CB70(v21, 1, v9, v10);
      }
    }

    else
    {
      v21 = *(v21 + 8);
    }
  }

  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = &byte_181A2878D;
  }

  __s = v23;
  v24 = a5[4];
  if (v24)
  {
    v25 = *(v24 + 20);
    v26 = v82;
    if ((v25 & 0x24) != 0)
    {
      v85 = *v24;
    }

    else if ((v25 & 8) != 0)
    {
      v69 = *v24;
      if (*v24 >= -9.22337204e18)
      {
        if (v69 <= 9.22337204e18)
        {
          *&v85 = v69;
        }

        else
        {
          LODWORD(v85) = -1;
        }
      }

      else
      {
        LODWORD(v85) = 0;
      }
    }

    else if ((v25 & 0x12) != 0 && *(v24 + 8))
    {
      LODWORD(v85) = sub_18193CFCC(v24);
    }

    else
    {
      LODWORD(v85) = 0;
    }
  }

  else
  {
    sub_1819012D0(92237);
    LODWORD(v85) = 0;
    v26 = v82;
  }

  v27 = LODWORD(v13) & ~(SLODWORD(v13) >> 31);
  v28 = (*(a1 + 48))(a2);
  v29 = sqlite3_initialize();
  v30 = 0;
  v31 = 7;
  v32 = 1;
  if (v28 >= 1 && !v29)
  {
    v30 = sub_181902484(v28, 1947628884);
    if (v30)
    {
      v31 = (*(a1 + 64))(a2, &v97 + 4);
      v32 = 0;
    }

    else
    {
      v31 = 7;
      v32 = 1;
    }
  }

  v80 = v32;
  v81 = a3;
  v95 = 0u;
  v96 = 0u;
  if (v26 >= 1)
  {
    v88 = 0;
    v33 = 0;
    v34 = v28;
    v35 = LODWORD(v85);
    v83 = v28;
    v84 = LODWORD(v13);
    while ((LODWORD(v13) & 0x80000000) == 0 && v33 != LODWORD(v13))
    {
LABEL_61:
      v33 = (v33 + 1);
      if (v33 == v26)
      {
        goto LABEL_124;
      }
    }

    v93 = 0;
    v94 = 0;
    v92 = 0;
    LODWORD(v95) = 0;
    DWORD2(v95) = 0;
    v31 = (*(a1 + 88))(a2, v33, &v96 + 8, &v93);
    if (!v31)
    {
      v31 = (*(a1 + 176))(a2, v33, &v94, &v93 + 4);
      if (!v31)
      {
        v31 = (*(a1 + 184))(a2, *(&v96 + 1), v93, v94, HIDWORD(v93), &v95, sub_1819FC580);
        if (!v31)
        {
          v31 = (*(a1 + 96))(a2, v33, &v92);
          if (!v31)
          {
            if (SHIDWORD(v97) < 1)
            {
              v31 = 0;
              goto LABEL_61;
            }

            v36 = 0;
            while (1)
            {
              v91 = 0;
              v89 = 0;
              v90 = 0;
              v31 = (*(a1 + 72))(a2, v36, &v91, &v90 + 4, &v90);
              if (HIDWORD(v90) == v33)
              {
                if (v90 > v92)
                {
                  v31 = 267;
                  goto LABEL_61;
                }

                if (v31)
                {
                  goto LABEL_61;
                }

                bzero(v30, v34);
                v31 = sub_1819FC750(a1, a2, v92, v30, v33, v90, v35, &v89, &v89 + 1);
                if (v31)
                {
                  goto LABEL_61;
                }

                if (v89 > SHIDWORD(v88))
                {
                  v88 = __PAIR64__(v89, HIDWORD(v89));
                  LODWORD(v97) = v92;
                  v27 = v33;
                }

                v31 = 0;
                v38 = DWORD2(v95);
                if (DWORD2(v95) && v92 > v35)
                {
                  if (SDWORD2(v95) <= 1)
                  {
                    v38 = 1;
                  }

                  v39 = (v38 - 1);
                  v40 = (v96 + 4);
                  v41 = v39;
                  v42 = 1;
                  while (v41)
                  {
                    v43 = *v40++;
                    --v42;
                    --v41;
                    if (v43 > v90)
                    {
                      v39 = -v42;
                      break;
                    }
                  }

                  if (*(v96 + 4 * v39) >= v90)
                  {
                    v31 = 0;
                  }

                  else
                  {
                    v87 = v27;
                    v44 = v39;
                    bzero(v30, v34);
                    v86 = v44;
                    v45 = *(v96 + 4 * v44);
                    v105 = 0;
                    v106[0] = 0;
                    v31 = (*(a1 + 64))(a2, &v105);
                    v46 = 0;
                    if (v105 >= 1 && v31 == 0)
                    {
                      v48 = 1;
                      do
                      {
                        v31 = (*(a1 + 72))(a2, (v48 - 1), v106 + 4, v106, &v105 + 4);
                        if (v31)
                        {
                          v50 = 0;
                        }

                        else
                        {
                          v50 = LODWORD(v106[0]) == v33;
                        }

                        if (v50 && SHIDWORD(v105) >= v45 && SLODWORD(v85) + v45 > SHIDWORD(v105))
                        {
                          if (*(v30 + SHIDWORD(v106[0])))
                          {
                            ++v46;
                          }

                          else
                          {
                            v46 += 1000;
                          }

                          *(v30 + SHIDWORD(v106[0])) = 1;
                          v52 = v30;
                          v53 = v31;
                          (*(a1 + 56))(a2);
                          v31 = v53;
                          v30 = v52;
                        }

                        if (v31)
                        {
                          v49 = 0;
                        }

                        else
                        {
                          v49 = v48 < v105;
                        }

                        ++v48;
                      }

                      while (v49);
                      v26 = v82;
                      v35 = LODWORD(v85);
                    }

                    v54 = *(v96 + 4 * v86);
                    if (v54)
                    {
                      v55 = 100;
                    }

                    else
                    {
                      v55 = 120;
                    }

                    v27 = v87;
                    if (v31)
                    {
                      v34 = v83;
                      LODWORD(v13) = v84;
                    }

                    else
                    {
                      v56 = v55 + v46;
                      v34 = v83;
                      LODWORD(v13) = v84;
                      if (v56 > SHIDWORD(v88))
                      {
                        v31 = 0;
                        LODWORD(v97) = v92;
                        v27 = v33;
                        v88 = __PAIR64__(v56, v54);
                      }
                    }
                  }
                }
              }

              v36 = (v36 + 1);
              if (v31)
              {
                v37 = 0;
              }

              else
              {
                v37 = v36 < SHIDWORD(v97);
              }

              if (!v37)
              {
                goto LABEL_61;
              }
            }
          }
        }
      }
    }

LABEL_125:
    v57 = v81;
    v58 = v80;
    v59 = v88;
    goto LABEL_126;
  }

  LODWORD(v88) = 0;
LABEL_124:
  if (v31)
  {
    goto LABEL_125;
  }

  v31 = (*(a1 + 88))(a2, v27, &v99[1], &v100);
  v57 = v81;
  v58 = v80;
  v59 = v88;
  if (!(v31 | v97))
  {
    v31 = (*(a1 + 96))(a2, v27, &v97);
  }

LABEL_126:
  if (!v99[1])
  {
    goto LABEL_172;
  }

  v94 = 0;
  LODWORD(v105) = 0;
  if (!v31)
  {
    v102 = 0uLL;
    *(&v100 + 1) = a1;
    *&v101 = a2;
    *(&v101 + 1) = v27;
    v31 = (*(a1 + 64))(a2, &v102);
    if (!v31)
    {
      *(&v102 + 4) = -1;
      if (SHIDWORD(v101) >= v102)
      {
LABEL_130:
        v31 = 0;
        goto LABEL_131;
      }

      do
      {
        v106[0] = 0;
        HIDWORD(v105) = 0;
        v31 = (*(*(&v100 + 1) + 72))(v101);
        if (v31)
        {
          break;
        }

        if (LODWORD(v106[0]) == DWORD2(v101))
        {
          v70 = HIDWORD(v105);
          v71 = v70 + (*(*(&v100 + 1) + 56))(v101, HIDWORD(v106[0])) - 1;
          if ((DWORD1(v102) & 0x80000000) != 0)
          {
            DWORD1(v102) = HIDWORD(v105);
LABEL_184:
            DWORD2(v102) = v71;
            goto LABEL_185;
          }

          if (SHIDWORD(v105) > SDWORD2(v102))
          {
            goto LABEL_130;
          }

          if (v71 > SDWORD2(v102))
          {
            goto LABEL_184;
          }
        }

LABEL_185:
        v31 = 0;
        ++HIDWORD(v101);
      }

      while (SHIDWORD(v101) < v102);
    }
  }

LABEL_131:
  LODWORD(v98) = v59;
  DWORD1(v98) = LODWORD(v85) + v59 - 1;
  if (v59 >= 1 && !v31)
  {
    v60 = strlen(__s);
    v104 = sqlite3_mprintf("%z%.*s", v104, v60, __s);
    if (v104)
    {
      v31 = 0;
    }

    else
    {
      v31 = 7;
    }
  }

LABEL_137:
  if ((DWORD1(v102) & 0x80000000) != 0 || SDWORD1(v102) >= v59 || v31)
  {
    if (v31)
    {
      goto LABEL_153;
    }

    goto LABEL_152;
  }

  *(&v102 + 4) = -1;
  if (SHIDWORD(v101) < v102)
  {
    while (1)
    {
      v106[0] = 0;
      HIDWORD(v105) = 0;
      v31 = (*(*(&v100 + 1) + 72))(v101);
      if (v31)
      {
        goto LABEL_137;
      }

      if (LODWORD(v106[0]) == DWORD2(v101))
      {
        v61 = v31;
        v62 = HIDWORD(v105);
        v63 = v62 + (*(*(&v100 + 1) + 56))(v101, HIDWORD(v106[0])) - 1;
        if ((DWORD1(v102) & 0x80000000) != 0)
        {
          DWORD1(v102) = HIDWORD(v105);
          v31 = v61;
LABEL_143:
          DWORD2(v102) = v63;
          goto LABEL_144;
        }

        if (SHIDWORD(v105) > SDWORD2(v102))
        {
          v31 = v61;
          goto LABEL_137;
        }

        v31 = v61;
        if (v63 > SDWORD2(v102))
        {
          goto LABEL_143;
        }
      }

LABEL_144:
      ++HIDWORD(v101);
      if (SHIDWORD(v101) >= v102)
      {
        goto LABEL_137;
      }
    }
  }

LABEL_152:
  v31 = (*(a1 + 176))(a2, v27, &v94, &v105);
  if (!v31)
  {
    v31 = (*(a1 + 184))(a2, v99[1], v100, v94, v105, &v98, sub_1819FC8F8);
    if (DWORD2(v103))
    {
      goto LABEL_154;
    }

LABEL_162:
    if (SDWORD1(v98) >= v97 - 1)
    {
      goto LABEL_165;
    }

    if (v31)
    {
      goto LABEL_172;
    }

LABEL_164:
    v65 = __s;
    v66 = strlen(__s);
LABEL_169:
    v104 = sqlite3_mprintf("%z%.*s", v104, v66, v65);
    if (v104)
    {
      v31 = 0;
    }

    else
    {
      v31 = 7;
    }

    goto LABEL_172;
  }

LABEL_153:
  if (!DWORD2(v103))
  {
    goto LABEL_162;
  }

LABEL_154:
  if (v31 || !v99[0])
  {
    goto LABEL_162;
  }

  v64 = strlen(v99[0]);
  v104 = sqlite3_mprintf("%z%.*s", v104, v64, v99[0]);
  if (!v104)
  {
    v31 = 7;
    goto LABEL_173;
  }

  if (SDWORD1(v98) < v97 - 1)
  {
    goto LABEL_164;
  }

  v31 = 0;
LABEL_165:
  if (!v31 && v99[1])
  {
    v65 = &v99[1][SDWORD1(v103)];
    v66 = (v100 - DWORD1(v103));
    if (v100 - DWORD1(v103) < 0)
    {
      v66 = strlen(&v99[1][SDWORD1(v103)]);
    }

    goto LABEL_169;
  }

LABEL_172:
  if (!v31)
  {
    if (!v57)
    {
      goto LABEL_208;
    }

    v67 = v104;
    v72 = v57;
    v73 = -1;
    goto LABEL_207;
  }

LABEL_173:
  if (v57)
  {
    v57[9] = v31;
    if (*(*v57 + 20))
    {
      switch(v31)
      {
        case 516:
          v67 = "abort due to ROLLBACK";
          break;
        case 101:
          v67 = "no more rows available";
          break;
        case 100:
          v67 = "another row available";
          break;
        default:
          if (v31 > 0x1Cu || ((0x1410004uLL >> v31) & 1) != 0)
          {
            v67 = "unknown error";
          }

          else
          {
            v67 = off_1E6A27DD8[v31];
          }

          break;
      }

      v72 = v57;
      v73 = 0;
LABEL_207:
      sub_18190B23C(v72, v67, -1, 1, v73);
    }
  }

LABEL_208:
  v74 = v104;
  if (!v104)
  {
    goto LABEL_215;
  }

  v75 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_214;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v74);
  --qword_1ED456A90;
  off_1ED452EB0(v74);
  v74 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v75 = &xmmword_1ED452F28;
LABEL_214:
    (*v75)(v74);
  }

LABEL_215:
  if ((v58 & 1) == 0)
  {
    v76 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v30);
      --qword_1ED456A90;
      off_1ED452EB0(v30);
      v30 = xmmword_1ED456AF0;
      if (!xmmword_1ED456AF0)
      {
        goto LABEL_222;
      }

      v76 = &xmmword_1ED452F28;
    }

    (*v76)(v30);
  }

LABEL_222:
  v77 = v96;
  if (!v96)
  {
    return;
  }

  v78 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_228;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v77);
  --qword_1ED456A90;
  off_1ED452EB0(v77);
  v77 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v78 = &xmmword_1ED452F28;
LABEL_228:
    (*v78)(v77);
  }
}

void sub_1819FB7C4(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t *a5)
{
  if (a4 != 3)
  {
    if (a3)
    {
      a3[9] = 1;
      v11 = *a3;

      sub_1818900D0(v11, "wrong number of arguments to function highlight()", -1, 1, 0xFFFFFFFFFFFFFFFFLL);
    }

    return;
  }

  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  *__s = 0u;
  v8 = *a5;
  if (!*a5)
  {
    v12 = a5;
    sub_1819012D0(92237);
    a5 = v12;
    goto LABEL_10;
  }

  v9 = *(v8 + 20);
  if ((v9 & 0x24) != 0)
  {
    v10 = *v8;
    goto LABEL_11;
  }

  if ((v9 & 8) == 0)
  {
    if ((v9 & 0x12) != 0 && *(v8 + 8))
    {
      v16 = a5;
      v17 = sub_18193CFCC(v8);
      a5 = v16;
      v10 = *&v17;
      goto LABEL_11;
    }

LABEL_10:
    v10 = 0.0;
    goto LABEL_11;
  }

  v29 = *v8;
  if (*v8 >= -9.22337204e18)
  {
    if (v29 <= 9.22337204e18)
    {
      *&v10 = v29;
    }

    else
    {
      v10 = NAN;
    }
  }

  else
  {
    v10 = -0.0;
  }

LABEL_11:
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  *__s = 0u;
  v13 = a5[1];
  if (v13)
  {
    v14 = *(v13 + 20);
    if ((~v14 & 0x202) != 0 || *(v13 + 22) != 1)
    {
      if (v14)
      {
        v13 = 0;
      }

      else
      {
        v15 = a5;
        v13 = sub_18193CB70(v13, 1, a3, a4);
        a5 = v15;
      }
    }

    else
    {
      v13 = *(v13 + 8);
    }
  }

  *(&v34 + 1) = v13;
  v18 = a5[2];
  if (v18)
  {
    v19 = *(v18 + 20);
    if ((~v19 & 0x202) != 0 || *(v18 + 22) != 1)
    {
      if (v19)
      {
        v18 = 0;
      }

      else
      {
        v18 = sub_18193CB70(v18, 1, a3, a4);
      }
    }

    else
    {
      v18 = *(v18 + 8);
    }
  }

  __s[0] = v18;
  DWORD1(v34) = -1;
  v20 = (*(a1 + 88))(a2, COERCE_DOUBLE(*&v10), &__s[1], &v36);
  if (v20 == 25)
  {
    if (a3)
    {
      v21 = &byte_181A2878D;
LABEL_32:
      sub_18190B23C(a3, v21, -1, 1, 0);
      return;
    }

    return;
  }

  if (!__s[1])
  {
    goto LABEL_67;
  }

  v33 = 0;
  v32 = 0;
  if (!v20)
  {
    v38 = 0uLL;
    *(&v36 + 1) = a1;
    *&v37 = a2;
    *(&v37 + 1) = LODWORD(v10);
    v20 = (*(a1 + 64))(a2, &v38);
    if (!v20)
    {
      *(&v38 + 4) = -1;
      if (SHIDWORD(v37) >= v38)
      {
LABEL_37:
        v20 = (*(a1 + 176))(a2, COERCE_DOUBLE(*&v10), &v33, &v32);
        if (!v20)
        {
          v20 = (*(a1 + 184))(a2, __s[1], v36, v33, v32, &v34, sub_1819FC8F8);
        }

        goto LABEL_39;
      }

      while (1)
      {
        v42 = 0;
        v41 = 0;
        v20 = (*(*(&v36 + 1) + 72))(v37);
        if (v20)
        {
          break;
        }

        if (v42 == DWORD2(v37))
        {
          v30 = v41;
          v31 = v30 + (*(*(&v36 + 1) + 56))(v37, HIDWORD(v42)) - 1;
          if ((DWORD1(v38) & 0x80000000) != 0)
          {
            DWORD1(v38) = v41;
LABEL_81:
            DWORD2(v38) = v31;
            goto LABEL_82;
          }

          if (v41 > SDWORD2(v38))
          {
            goto LABEL_37;
          }

          if (v31 > SDWORD2(v38))
          {
            goto LABEL_81;
          }
        }

LABEL_82:
        ++HIDWORD(v37);
        if (SHIDWORD(v37) >= v38)
        {
          goto LABEL_37;
        }
      }
    }
  }

LABEL_39:
  if (DWORD2(v39))
  {
    if (!v20 && __s[0] != 0)
    {
      v23 = strlen(__s[0]);
      v40 = sqlite3_mprintf("%z%.*s", v40, v23, __s[0]);
      if (v40)
      {
        v20 = 0;
      }

      else
      {
        v20 = 7;
      }
    }
  }

  if (v20)
  {
    v24 = 1;
  }

  else
  {
    v24 = __s[1] == 0;
  }

  if (v24)
  {
    if (v20)
    {
      goto LABEL_60;
    }
  }

  else
  {
    v25 = (v36 - DWORD1(v39));
    if (v36 - DWORD1(v39) < 0)
    {
      v25 = strlen(&__s[1][SDWORD1(v39)]);
    }

    v40 = sqlite3_mprintf("%z%.*s", v40, v25, &__s[1][SDWORD1(v39)]);
    if (!v40)
    {
      v20 = 7;
      goto LABEL_67;
    }
  }

  if (a3)
  {
    sub_18190B23C(a3, v40, -1, 1, 0xFFFFFFFFFFFFFFFFLL);
  }

  v20 = 0;
LABEL_60:
  v26 = v40;
  if (v40)
  {
    v27 = &off_1ED452EB0;
    v28 = v20;
    if (!dword_1ED452E80)
    {
LABEL_66:
      (*v27)(v26);
      v20 = v28;
      goto LABEL_67;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v26);
    --qword_1ED456A90;
    off_1ED452EB0(v26);
    v26 = xmmword_1ED456AF0;
    v20 = v28;
    if (xmmword_1ED456AF0)
    {
      v27 = &xmmword_1ED452F28;
      goto LABEL_66;
    }
  }

LABEL_67:
  if (a3)
  {
    if (v20)
    {
      a3[9] = v20;
      if (*(*a3 + 20))
      {
        switch(v20)
        {
          case 516:
            v21 = "abort due to ROLLBACK";
            break;
          case 101:
            v21 = "no more rows available";
            break;
          case 100:
            v21 = "another row available";
            break;
          default:
            if (v20 > 0x1Cu || ((0x1410004uLL >> v20) & 1) != 0)
            {
              v21 = "unknown error";
            }

            else
            {
              v21 = off_1E6A27DD8[v20];
            }

            break;
        }

        goto LABEL_32;
      }
    }
  }
}

void sub_1819FBD18(uint64_t a1, uint64_t a2, _DWORD *a3, int a4, uint64_t a5)
{
  v47 = 0;
  v10 = (*(a1 + 120))(a2, 0);
  if (!v10)
  {
    v49 = 0;
    v50 = 0;
    v19 = (*(a1 + 48))(a2);
    if (sqlite3_initialize() || (v25 = 16 * v19, (v26 = sub_181902484(v25 + 32, 0x1080040A9F9A45FLL)) == 0))
    {
      v12 = 7;
      goto LABEL_14;
    }

    v10 = v26;
    bzero(v26, v25 + 32);
    *v10 = v19;
    *(v10 + 2) = v10 + 8;
    *(v10 + 3) = &v10[2 * v19 + 8];
    v27 = (*(a1 + 24))(a2, &v50);
    if (!v27)
    {
      v27 = (*(a1 + 32))(a2, 0xFFFFFFFFLL, &v49);
      if (!v27)
      {
        *(v10 + 1) = v49 / v50;
        if (v19 < 1)
        {
LABEL_69:
          v12 = (*(a1 + 112))(a2, v10, sqlite3_free);
          if (v12)
          {
            goto LABEL_14;
          }

          goto LABEL_2;
        }

        v45 = 0;
        while (1)
        {
          v48 = 0;
          v27 = (*(a1 + 104))(a2, v45, &v48, sub_1819FCD3C);
          if (v27)
          {
            break;
          }

          v46 = log(((v50 - v48) + 0.5) / (v48 + 0.5));
          if (v46 <= 0.0)
          {
            v46 = 0.000001;
          }

          *(*(v10 + 2) + 8 * v45++) = v46;
          if (v19 == v45)
          {
            goto LABEL_69;
          }
        }
      }
    }

    v28 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      v29 = v27;
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v10);
      --qword_1ED456A90;
      off_1ED452EB0(v10);
      if (!xmmword_1ED456AF0)
      {
        goto LABEL_60;
      }

      v28 = &xmmword_1ED452F28;
    }

    else
    {
      v29 = v27;
    }

    (*v28)();
LABEL_60:
    v12 = v29;
    goto LABEL_14;
  }

LABEL_2:
  v11 = *(v10 + 3);
  bzero(v11, 8 * *v10);
  v12 = (*(a1 + 64))(a2, &v47);
  if (v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = v47 < 1;
  }

  if (!v13)
  {
    v21 = 0;
    while (1)
    {
      LODWORD(v50) = 0;
      LODWORD(v49) = 0;
      LODWORD(v48) = 0;
      v12 = (*(a1 + 72))(a2, v21, &v50, &v49, &v48);
      if (v12)
      {
        goto LABEL_14;
      }

      v22 = 1.0;
      if (v49 < a4)
      {
        v23 = *(a5 + 8 * v49);
        if (!v23)
        {
          sub_1819012D0(92272);
LABEL_29:
          v22 = 0.0;
          goto LABEL_21;
        }

        v24 = *(v23 + 20);
        if ((v24 & 8) != 0)
        {
          v22 = *v23;
        }

        else
        {
          if ((v24 & 0x24) == 0)
          {
            if ((v24 & 0x12) != 0)
            {
              v22 = sub_18193CF90(v23);
              goto LABEL_21;
            }

            goto LABEL_29;
          }

          v22 = *v23;
        }
      }

LABEL_21:
      v11->f64[v50] = v22 + v11->f64[v50];
      v21 = (v21 + 1);
      if (v21 >= v47)
      {
        goto LABEL_8;
      }
    }
  }

  if (!v12)
  {
LABEL_8:
    LODWORD(v50) = 0;
    v12 = (*(a1 + 96))(a2, 0xFFFFFFFFLL, &v50);
    if (!v12)
    {
      v14 = *v10;
      if (v14 < 1)
      {
        v18 = 0.0;
        goto LABEL_54;
      }

      v15 = *(v10 + 2);
      v16 = v50 * 0.75 / *(v10 + 1) + 0.25;
      if (v14 >= 4)
      {
        v17 = v14 & 0x7FFFFFFC;
        v30 = vdupq_lane_s64(*&v16, 0);
        v31 = v15 + 1;
        v32 = v11 + 1;
        v18 = 0.0;
        v33 = vdupq_n_s64(0x400199999999999AuLL);
        v34 = vdupq_n_s64(0x3FF3333333333333uLL);
        v35 = v17;
        do
        {
          v36 = vmulq_f64(v31[-1], vdivq_f64(vmulq_f64(v32[-1], v33), vmlaq_f64(v32[-1], v34, v30)));
          v37 = vmulq_f64(*v31, vdivq_f64(vmulq_f64(*v32, v33), vmlaq_f64(*v32, v34, v30)));
          v18 = v18 + v36.f64[0] + v36.f64[1] + v37.f64[0] + v37.f64[1];
          v31 += 2;
          v32 += 2;
          v35 -= 4;
        }

        while (v35);
        if (v17 == v14)
        {
LABEL_54:
          if (a3)
          {
            v44 = *a3;
            if ((*(v44 + 20) & 0x9000) != 0)
            {
              sub_18193CA54(v44);
            }

            else
            {
              *(v44 + 20) = 1;
            }

            *v44 = -v18;
            *(v44 + 20) = 8;
          }

          else
          {
            sub_1819012D0(100067);
          }

          return;
        }
      }

      else
      {
        v17 = 0;
        v18 = 0.0;
      }

      v38 = &v11->f64[v17];
      v39 = &v15->f64[v17];
      v40 = v14 - v17;
      do
      {
        v41 = *v39++;
        v42 = v41;
        v43 = *v38++;
        v18 = v18 + v42 * (v43 * 2.2 / (v43 + v16 * 1.2));
        --v40;
      }

      while (v40);
      goto LABEL_54;
    }
  }

LABEL_14:
  if (a3)
  {
    a3[9] = v12;
    if (*(*a3 + 20))
    {
      switch(v12)
      {
        case 516:
          v20 = "abort due to ROLLBACK";
          break;
        case 101:
          v20 = "no more rows available";
          break;
        case 100:
          v20 = "another row available";
          break;
        default:
          if (v12 > 0x1Cu || ((0x1410004uLL >> v12) & 1) != 0)
          {
            v20 = "unknown error";
          }

          else
          {
            v20 = off_1E6A27DD8[v12];
          }

          break;
      }

      sub_18190B23C(a3, v20, -1, 1, 0);
    }
  }
}

void sub_1819FC298(uint64_t a1, uint64_t a2, _DWORD *a3, int a4, uint64_t *a5)
{
  v25 = 0;
  v24 = 0;
  if (a4 == 1)
  {
    v6 = *a5;
    if (*a5)
    {
      v7 = *(v6 + 20);
      if ((0x4000000040004uLL >> v7))
      {
        v10 = a5;
        sub_18190FC94(*a5, 0);
        a5 = v10;
        v7 = *(v6 + 20);
      }

      if ((0x50505050uLL >> (v7 & 0x3F)))
      {
        v11 = *a5;
        if (!*a5)
        {
          sub_1819012D0(92237);
          v13 = 0;
          v14 = a2;
          v15 = a1;
          goto LABEL_26;
        }

        v12 = *(v11 + 20);
        if ((v12 & 0x24) != 0)
        {
          v13 = *v11;
          goto LABEL_9;
        }

        v14 = a2;
        v15 = a1;
        if ((v12 & 8) != 0)
        {
          v18 = *v11;
          if (*v11 >= -9.22337204e18)
          {
            if (v18 > 9.22337204e18 || (v13 = v18, (v18 & 0x80000000) != 0))
            {
LABEL_38:
              if (a3)
              {
                a3[9] = 25;
                if (*(*a3 + 20))
                {

                  sub_18190B23C(a3, "column index out of range", -1, 1, 0);
                }
              }

              return;
            }

LABEL_26:
            if (v13 < (*(v15 + 16))(v14))
            {
              v19 = (*(a1 + 176))(a2, v13, &v25, &v24);
              if (v19)
              {
                if (!a3)
                {
                  return;
                }

                a3[9] = v19;
                if ((*(*a3 + 20) & 1) == 0)
                {
                  return;
                }

                switch(v19)
                {
                  case 516:
                    v20 = "abort due to ROLLBACK";
                    break;
                  case 101:
                    v20 = "no more rows available";
                    break;
                  case 100:
                    v20 = "another row available";
                    break;
                  default:
                    if (v19 > 0x1Cu || ((0x1410004uLL >> v19) & 1) != 0)
                    {
                      v20 = "unknown error";
                    }

                    else
                    {
                      v20 = off_1E6A27DD8[v19];
                    }

                    break;
                }

                v22 = a3;
                v21 = -1;
                v23 = 0;
              }

              else
              {
                if (!a3)
                {
                  return;
                }

                v21 = v24;
                v20 = v25;
                v22 = a3;
                v23 = -1;
              }

              sub_18190B23C(v22, v20, v21, 1, v23);
              return;
            }

            goto LABEL_38;
          }
        }

        else if ((v12 & 0x12) != 0 && *(v11 + 8))
        {
          v13 = sub_18193CFCC(*a5);
LABEL_9:
          v14 = a2;
          v15 = a1;
          if ((v13 & 0x80000000) != 0)
          {
            goto LABEL_38;
          }

          goto LABEL_26;
        }

        v13 = 0;
        goto LABEL_26;
      }
    }

    else
    {
      sub_1819012D0(99877);
    }

    if (!a3)
    {
      return;
    }

    a3[9] = 1;
    v16 = "non-integer argument passed to function fts5_get_locale()";
  }

  else
  {
    if (!a3)
    {
      return;
    }

    a3[9] = 1;
    v16 = "wrong number of arguments to function fts5_get_locale()";
  }

  v17 = *a3;

  sub_1818900D0(v17, v16, -1, 1, 0xFFFFFFFFFFFFFFFFLL);
}

uint64_t sub_1819FC580(uint64_t a1, char a2, uint64_t a3, uint64_t a4, int a5)
{
  if (a2)
  {
    return 0;
  }

  v5 = *a1;
  if (*a1 < 1)
  {
    v11 = (a1 + 8);
    v10 = *(a1 + 8);
    v22 = *(a1 + 4);
    if (v22 == v10)
    {
      if (v22)
      {
        v13 = 2 * v22;
      }

      else
      {
        v13 = 64;
      }

      v14 = a1;
      v23 = *(a1 + 16);
      v24 = sqlite3_initialize();
      if (v13)
      {
        v25 = v24 == 0;
      }

      else
      {
        v25 = 0;
      }

      if (v25)
      {
        v26 = sub_18190287C(v23, 4 * v13, 0x100004052888210);
        if (v26)
        {
          v20 = v26;
          v5 = 0;
          goto LABEL_36;
        }
      }

LABEL_40:
      v17 = 7;
      a1 = v14;
      goto LABEL_41;
    }

    v5 = 0;
    goto LABEL_38;
  }

  if (a5 < 1)
  {
    goto LABEL_24;
  }

  v6 = (a5 - 1);
  while (1)
  {
    v7 = *(*(a1 + 24) + v6);
    if (v7 > 0x20 || ((1 << v7) & 0x100002600) == 0)
    {
      break;
    }

    if (v6-- <= 0)
    {
      LODWORD(v6) = -1;
      break;
    }
  }

  if (v6 == a5 - 1 || v7 != 58 && v7 != 46)
  {
LABEL_24:
    v17 = 0;
    goto LABEL_41;
  }

  v11 = (a1 + 8);
  v10 = *(a1 + 8);
  v12 = *(a1 + 4);
  if (v12 != v10)
  {
LABEL_38:
    v20 = *(a1 + 16);
    goto LABEL_39;
  }

  if (v12)
  {
    v13 = 2 * v12;
  }

  else
  {
    v13 = 64;
  }

  v14 = a1;
  v15 = *(a1 + 16);
  v16 = sqlite3_initialize();
  v17 = 7;
  if (!v13)
  {
    a1 = v14;
    goto LABEL_41;
  }

  v18 = v16;
  a1 = v14;
  if (!v18)
  {
    v19 = sub_18190287C(v15, 4 * v13, 0x100004052888210);
    if (v19)
    {
      v20 = v19;
LABEL_36:
      a1 = v14;
      *(v14 + 16) = v20;
      *(v14 + 4) = v13;
      v10 = *(v14 + 8);
LABEL_39:
      v17 = 0;
      *v11 = v10 + 1;
      *(v20 + 4 * v10) = v5;
      goto LABEL_41;
    }

    goto LABEL_40;
  }

LABEL_41:
  ++*a1;
  return v17;
}

uint64_t sub_1819FC750(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, int a6, int a7, _DWORD *a8, _DWORD *a9)
{
  v9 = a7;
  v15 = a9;
  v37 = 0;
  v38 = 0;
  v16 = a7;
  result = (*(a1 + 64))(a2, &v37);
  v18 = v37 >= 1 && result == 0;
  v34 = v16;
  if (v18)
  {
    v32 = a3;
    v33 = v9;
    v22 = 0;
    v19 = 0;
    v21 = -1;
    v23 = 1;
    v24 = v16 + a6;
    do
    {
      result = (*(a1 + 72))(a2, (v23 - 1), &v38 + 4, &v38, &v37 + 4);
      if (result)
      {
        v26 = 0;
      }

      else
      {
        v26 = v38 == a5;
      }

      if (v26)
      {
        v27 = HIDWORD(v37);
        v28 = SHIDWORD(v37) < a6 || v24 <= SHIDWORD(v37);
        if (!v28)
        {
          if (*(a4 + SHIDWORD(v38)))
          {
            ++v19;
          }

          else
          {
            v19 += 1000;
          }

          *(a4 + SHIDWORD(v38)) = 1;
          if (v21 < 0)
          {
            v21 = v27;
          }

          v29 = result;
          v30 = (*(a1 + 56))(a2);
          result = v29;
          v22 = v30 + v27;
        }
      }

      v28 = v23++ < v37;
    }

    while (v28 && result == 0);
    v20 = v22;
    v9 = v33;
    v15 = a9;
    a3 = v32;
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v21 = -1;
  }

  *a8 = v19;
  if (v15)
  {
    v31 = v21 - (v21 + v9 - v20) / 2;
    if (v31 + v34 > a3)
    {
      v31 = a3 - v9;
    }

    *v15 = v31 & ~(v31 >> 63);
  }

  return result;
}

uint64_t sub_1819FC8F8(int *a1, char a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  if (a2)
  {
    return 0;
  }

  v8 = a1[20];
  a1[20] = v8 + 1;
  v9 = a1[1];
  if ((v9 & 0x80000000) == 0)
  {
    v10 = *a1;
    if (v8 > v9 || v8 < v10)
    {
      return 0;
    }

    if (v10 && v8 == v10)
    {
      a1[21] = a5;
    }
  }

  if (a1[22])
  {
    v13 = a1[17];
    if (v8 > v13 && (v13 & 0x80000000) == 0 || a1[21] >= a5)
    {
      v18 = 0;
      result = 0;
      goto LABEL_26;
    }

    v14 = *(a1 + 2);
    if (v14)
    {
      v15 = a5;
      v16 = strlen(*(a1 + 2));
      v17 = sqlite3_mprintf("%z%.*s", *(a1 + 12), v16, v14);
      a5 = v15;
      *(a1 + 12) = v17;
      if (v17)
      {
        result = 0;
      }

      else
      {
        result = 7;
      }
    }

    else
    {
      result = 0;
    }

    a1[22] = 0;
  }

  else
  {
    result = 0;
  }

  v18 = 1;
LABEL_26:
  if (v8 != a1[17] || v18 == 0)
  {
    v20 = a1 + 18;
    if (v8 != a1[18])
    {
      goto LABEL_61;
    }

    if (v18)
    {
      if (!result)
      {
        v21 = *(a1 + 1);
        if (v21)
        {
          v22 = strlen(*(a1 + 1));
          v23 = sqlite3_mprintf("%z%.*s", *(a1 + 12), v22, v21);
          *(a1 + 12) = v23;
          if (v23)
          {
            result = 0;
          }

          else
          {
            result = 7;
          }
        }
      }

      a1[22] = 1;
    }

    goto LABEL_52;
  }

  if (!result)
  {
    v24 = *(a1 + 3);
    if (v24)
    {
      v25 = a1[21];
      v26 = v24 + v25;
      v27 = a5;
      v28 = (a5 - v25);
      if (a5 - v25 < 0)
      {
        v28 = strlen((v24 + v25));
      }

      v29 = sqlite3_mprintf("%z%.*s", *(a1 + 12), v28, v26);
      *(a1 + 12) = v29;
      if (!v29)
      {
        result = 7;
        a5 = v27;
        goto LABEL_51;
      }

      result = 0;
      a5 = v27;
    }
  }

  if (!result)
  {
    v30 = *(a1 + 1);
    if (v30)
    {
      v31 = a5;
      v32 = strlen(*(a1 + 1));
      v33 = sqlite3_mprintf("%z%.*s", *(a1 + 12), v32, v30);
      a5 = v31;
      *(a1 + 12) = v33;
      if (v33)
      {
        result = 0;
      }

      else
      {
        result = 7;
      }
    }
  }

LABEL_51:
  v20 = a1 + 18;
  v34 = a1[18];
  a1[21] = a5;
  a1[22] = 1;
  if (v8 != v34)
  {
    goto LABEL_61;
  }

LABEL_52:
  if (result || (v35 = *(a1 + 3)) == 0)
  {
    a1[21] = a6;
    if (result)
    {
      goto LABEL_61;
    }
  }

  else
  {
    v36 = a1[21];
    v37 = v35 + v36;
    v38 = (a6 - v36);
    if (a6 - v36 < 0)
    {
      v38 = strlen((v35 + v36));
    }

    v39 = sqlite3_mprintf("%z%.*s", *(a1 + 12), v38, v37);
    *(a1 + 12) = v39;
    a1[21] = a6;
    if (!v39)
    {
      result = 7;
      goto LABEL_61;
    }
  }

  *(a1 + 17) = -1;
  if (a1[15] < a1[16])
  {
    do
    {
      result = (*(*(a1 + 5) + 72))(*(a1 + 6));
      if (result)
      {
        goto LABEL_61;
      }

      if (!a1[14])
      {
        v59 = (*(*(a1 + 5) + 56))(*(a1 + 6), 0) - 1;
        if (a1[17] < 0)
        {
          a1[17] = 0;
LABEL_95:
          *v20 = v59;
          goto LABEL_96;
        }

        if (*v20 < 0)
        {
          break;
        }

        if (v59 > *v20)
        {
          goto LABEL_95;
        }
      }

LABEL_96:
      v57 = a1[16];
      v58 = a1[15] + 1;
      a1[15] = v58;
    }

    while (v58 < v57);
  }

  result = 0;
LABEL_61:
  if (v8 == a1[1])
  {
    if (a1[22])
    {
      v40 = a1[17];
      if ((v40 & 0x80000000) == 0 && v8 >= v40)
      {
        v41 = *(a1 + 3);
        if (result)
        {
          v42 = 1;
        }

        else
        {
          v42 = v41 == 0;
        }

        if (!v42)
        {
          v43 = a1[21];
          v44 = v41 + v43;
          v45 = (a6 - v43);
          if (a6 - v43 < 0)
          {
            v45 = strlen((v41 + v43));
          }

          v46 = sqlite3_mprintf("%z%.*s", *(a1 + 12), v45, v44);
          *(a1 + 12) = v46;
          if (v46)
          {
            result = 0;
          }

          else
          {
            result = 7;
          }
        }

        a1[21] = a6;
      }

      v47 = *(a1 + 2);
      if (result)
      {
        v48 = 1;
      }

      else
      {
        v48 = v47 == 0;
      }

      if (!v48)
      {
        v49 = strlen(*(a1 + 2));
        v50 = sqlite3_mprintf("%z%.*s", *(a1 + 12), v49, v47);
        *(a1 + 12) = v50;
        if (v50)
        {
          result = 0;
        }

        else
        {
          result = 7;
        }
      }

      a1[22] = 0;
    }

    v51 = *(a1 + 3);
    if (result)
    {
      v52 = 1;
    }

    else
    {
      v52 = v51 == 0;
    }

    if (!v52)
    {
      v53 = a1[21];
      v54 = v51 + v53;
      v55 = (a6 - v53);
      if (a6 - v53 < 0)
      {
        v55 = strlen((v51 + v53));
      }

      v56 = sqlite3_mprintf("%z%.*s", *(a1 + 12), v55, v54);
      *(a1 + 12) = v56;
      if (v56)
      {
        result = 0;
      }

      else
      {
        result = 7;
      }
    }

    a1[21] = a6;
  }

  return result;
}

uint64_t sub_1819FCD50(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  if (a3)
  {
    return 1;
  }

  if (sqlite3_initialize())
  {
    v7 = 0;
LABEL_4:
    v8 = 7;
    goto LABEL_5;
  }

  v10 = sub_181902484(192, 0x101004062B2E2B4);
  v7 = v10;
  if (!v10)
  {
    goto LABEL_4;
  }

  *(v10 + 160) = 0u;
  *(v10 + 176) = 0u;
  *(v10 + 128) = 0u;
  *(v10 + 144) = 0u;
  *(v10 + 96) = 0u;
  *(v10 + 112) = 0u;
  *(v10 + 64) = 0u;
  *(v10 + 80) = 0u;
  *(v10 + 32) = 0u;
  *(v10 + 48) = 0u;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 136) = 0x100000040;
  if (sqlite3_initialize())
  {
    *(v7 + 128) = 0;
    goto LABEL_4;
  }

  v11 = sub_181902484(64, 0x100004077774924);
  *(v7 + 128) = v11;
  v12 = "L* N* Co";
  if (!v11 || a3 < 1)
  {
    goto LABEL_23;
  }

  v13 = 0;
  while (2)
  {
    v14 = *(a2 + 8 * v13);
    if (!v14)
    {
      goto LABEL_15;
    }

    for (i = "categories"; *v14 != *i; ++i)
    {
      if (byte_181A20298[*v14] != byte_181A20298[*i])
      {
        goto LABEL_15;
      }

LABEL_19:
      ++v14;
    }

    if (*v14)
    {
      goto LABEL_19;
    }

    v12 = *(a2 + 8 * v13 + 8);
LABEL_15:
    v13 += 2;
    if (v13 < a3)
    {
      continue;
    }

    break;
  }

LABEL_23:
  if (!v11)
  {
    goto LABEL_4;
  }

  v16 = *v12;
  if (*v12)
  {
    while (1)
    {
LABEL_27:
      if (!v16)
      {
        goto LABEL_127;
      }

      if (v16 != 32 && v16 != 9)
      {
        break;
      }

      v17 = *++v12;
      v16 = v17;
    }

    v8 = 1;
    *(v7 + 160) = 1;
    v18 = *v12;
    if (v18 <= 0x4D)
    {
      switch(v18)
      {
        case 'C':
          v25 = *(v12 + 1);
          if (v25 > 0x6D)
          {
            switch(v25)
            {
              case 'n':
                *(v7 + 163) = 1;
                goto LABEL_127;
              case 'o':
                *(v7 + 191) = 1;
                goto LABEL_127;
              case 's':
                *(v7 + 164) = 1;
                goto LABEL_127;
            }
          }

          else
          {
            switch(v25)
            {
              case '*':
                *(v7 + 191) = 1;
                *(v7 + 161) = 16843009;
                goto LABEL_127;
              case 'c':
                *(v7 + 161) = 1;
                goto LABEL_127;
              case 'f':
                *(v7 + 162) = 1;
                goto LABEL_127;
            }
          }

          break;
        case 'L':
          v24 = *(v12 + 1);
          if (v24 <= 0x6C)
          {
            switch(v24)
            {
              case '*':
                *(v7 + 190) = 1;
                *(v7 + 165) = 16843009;
                *(v7 + 169) = 1;
                goto LABEL_127;
              case 'C':
                *(v7 + 190) = 1;
                goto LABEL_127;
              case 'l':
                *(v7 + 165) = 1;
                goto LABEL_127;
            }
          }

          else if (*(v12 + 1) > 0x73u)
          {
            if (v24 == 116)
            {
              *(v7 + 168) = 1;
              goto LABEL_127;
            }

            if (v24 == 117)
            {
              *(v7 + 169) = 1;
              goto LABEL_127;
            }
          }

          else
          {
            if (v24 == 109)
            {
              *(v7 + 166) = 1;
              goto LABEL_127;
            }

            if (v24 == 111)
            {
              *(v7 + 167) = 1;
              goto LABEL_127;
            }
          }

          break;
        case 'M':
          v20 = *(v12 + 1);
          if (v20 > 0x64)
          {
            if (v20 == 101)
            {
              *(v7 + 171) = 1;
              goto LABEL_127;
            }

            if (v20 == 110)
            {
              *(v7 + 172) = 1;
              goto LABEL_127;
            }
          }

          else
          {
            if (v20 == 42)
            {
              *(v7 + 170) = 257;
              *(v7 + 172) = 1;
              goto LABEL_127;
            }

            if (v20 == 99)
            {
              *(v7 + 170) = 1;
              goto LABEL_127;
            }
          }

          break;
      }

      goto LABEL_5;
    }

    if (*v12 > 0x52u)
    {
      if (v18 != 83)
      {
        if (v18 != 90)
        {
          goto LABEL_5;
        }

        v21 = *(v12 + 1);
        if (v21 > 0x6F)
        {
          if (v21 == 112)
          {
            *(v7 + 188) = 1;
            goto LABEL_127;
          }

          if (v21 != 115)
          {
            goto LABEL_5;
          }
        }

        else
        {
          if (v21 != 42)
          {
            if (v21 == 108)
            {
              *(v7 + 187) = 1;
              goto LABEL_127;
            }

            goto LABEL_5;
          }

          *(v7 + 187) = 257;
        }

        *(v7 + 189) = 1;
        goto LABEL_127;
      }

      v23 = *(v12 + 1);
      if (v23 <= 0x6A)
      {
        if (v23 == 42)
        {
          *(v7 + 183) = 16843009;
          goto LABEL_127;
        }

        if (v23 == 99)
        {
          *(v7 + 183) = 1;
          goto LABEL_127;
        }
      }

      else
      {
        switch(v23)
        {
          case 'k':
            *(v7 + 184) = 1;
            goto LABEL_127;
          case 'm':
            *(v7 + 185) = 1;
            goto LABEL_127;
          case 'o':
            *(v7 + 186) = 1;
            goto LABEL_127;
        }
      }

LABEL_5:
      sub_1819FD438(v7);
      v7 = 0;
      goto LABEL_6;
    }

    if (v18 == 78)
    {
      v22 = *(v12 + 1);
      if (v22 > 0x6B)
      {
        if (v22 == 108)
        {
          *(v7 + 174) = 1;
          goto LABEL_127;
        }

        if (v22 == 111)
        {
          *(v7 + 175) = 1;
          goto LABEL_127;
        }
      }

      else
      {
        if (v22 == 42)
        {
          *(v7 + 173) = 257;
          *(v7 + 175) = 1;
          goto LABEL_127;
        }

        if (v22 == 100)
        {
          *(v7 + 173) = 1;
          goto LABEL_127;
        }
      }

      goto LABEL_5;
    }

    if (v18 != 80)
    {
      goto LABEL_5;
    }

    v19 = *(v12 + 1);
    if (v19 <= 0x65)
    {
      if (*(v12 + 1) > 0x63u)
      {
        if (v19 == 100)
        {
          *(v7 + 177) = 1;
          goto LABEL_127;
        }

        if (v19 == 101)
        {
          *(v7 + 178) = 1;
          goto LABEL_127;
        }
      }

      else
      {
        if (v19 == 42)
        {
          *(v7 + 179) = 16843009;
          *(v7 + 176) = 16843009;
          goto LABEL_127;
        }

        if (v19 == 99)
        {
          *(v7 + 176) = 1;
          goto LABEL_127;
        }
      }

      goto LABEL_5;
    }

    if (*(v12 + 1) <= 0x6Eu)
    {
      if (v19 == 102)
      {
        *(v7 + 179) = 1;
        goto LABEL_127;
      }

      if (v19 == 105)
      {
        *(v7 + 180) = 1;
        goto LABEL_127;
      }

      goto LABEL_5;
    }

    if (v19 != 111)
    {
      if (v19 == 115)
      {
        *(v7 + 182) = 1;
        goto LABEL_127;
      }

      goto LABEL_5;
    }

    *(v7 + 181) = 1;
LABEL_127:
    while (1)
    {
      v16 = *v12;
      if (!*v12)
      {
        break;
      }

      if (v16 == 9 || v16 == 32)
      {
        goto LABEL_27;
      }

      ++v12;
    }
  }

  v26 = 0;
  v27 = word_181A2594A;
  do
  {
    v29 = *v27++;
    v28 = v29;
    v30 = (v29 >> 5) + v26;
    if (v30 >= 128)
    {
      v31 = 128;
    }

    else
    {
      v31 = v30;
    }

    if (v26 < v31)
    {
      memset((v7 + v26), *(v7 + 160 + (v28 & 0x1F)), (v31 + ~v26) + 1);
      v26 = v31;
    }
  }

  while (v26 < 128);
  *v7 = 0;
  if (a3 < 1)
  {
    v8 = 0;
    goto LABEL_6;
  }

  v32 = 0;
  while (2)
  {
    v33 = (a2 + 8 * v32);
    v34 = *v33;
    if (!*v33)
    {
      goto LABEL_172;
    }

    v35 = v33[1];
    v36 = *v33;
    v37 = "remove_diacritics";
    while (2)
    {
      if (*v36 == *v37)
      {
        if (!*v36)
        {
          v43 = *v35 - 48;
          if (v43 <= 2 && !v35[1])
          {
            v8 = 0;
            *(v7 + 140) = v43;
            goto LABEL_168;
          }

LABEL_172:
          v8 = 1;
          goto LABEL_5;
        }

        goto LABEL_143;
      }

      if (byte_181A20298[*v36] == byte_181A20298[*v37])
      {
LABEL_143:
        ++v36;
        ++v37;
        continue;
      }

      break;
    }

    v38 = v34;
    for (j = "tokenchars"; *v38 == *j; ++j)
    {
      if (!*v38)
      {
        v44 = v7;
        v45 = 1;
        goto LABEL_167;
      }

LABEL_148:
      ++v38;
    }

    if (byte_181A20298[*v38] == byte_181A20298[*j])
    {
      goto LABEL_148;
    }

    v40 = v34;
    for (k = "separators"; ; ++k)
    {
      if (*v40 == *k)
      {
        if (*v40)
        {
          goto LABEL_153;
        }

        v44 = v7;
        v45 = 0;
LABEL_167:
        v8 = sub_1819FE818(v44, v35, v45);
        goto LABEL_168;
      }

      if (byte_181A20298[*v40] != byte_181A20298[*k])
      {
        break;
      }

LABEL_153:
      ++v40;
    }

    for (m = "categories"; *v34 != *m; ++m)
    {
      if (byte_181A20298[*v34] != byte_181A20298[*m])
      {
        goto LABEL_172;
      }

LABEL_158:
      ++v34;
    }

    if (*v34)
    {
      goto LABEL_158;
    }

    v8 = 0;
LABEL_168:
    if (!v8)
    {
      v32 += 2;
      if (v32 < a3)
      {
        continue;
      }
    }

    break;
  }

  if (v8)
  {
    goto LABEL_5;
  }

LABEL_6:
  *a4 = v7;
  return v8;
}