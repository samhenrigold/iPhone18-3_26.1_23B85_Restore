uint64_t sub_103B4(uint64_t result)
{
  if ((result & 0x80000000) == 0)
  {
    v1 = result;
    if (*qword_2DB18 > result)
    {
      v2 = *(qword_2DB18 + 16);
      if (*(v2 + 4 * result))
      {
        v3 = *(qword_2DB18 + 32);
        if (v3)
        {
          result = v3(*(*(qword_2DB18 + 8) + 8 * result));
          v2 = *(qword_2DB18 + 16);
        }
      }

      *(v2 + 4 * v1) = 0;
    }
  }

  return result;
}

uint64_t sub_1041C(uint64_t a1, uint64_t a2)
{
  v2 = *qword_2DB18;
  if (v2 < 1)
  {
LABEL_5:
    _lou_outOfMemory();
  }

  v3 = 0;
  while (*(*(qword_2DB18 + 16) + 4 * v3))
  {
    if (v2 == ++v3)
    {
      goto LABEL_5;
    }
  }

  v4 = (*(qword_2DB18 + 24))(v3, a1);
  v5 = qword_2DB18;
  *(*(qword_2DB18 + 8) + 8 * v3) = v4;
  *(*(v5 + 16) + 4 * v3) = 1;
  return v3;
}

uint64_t sub_104B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int *a5, uint64_t *a6, uint64_t *a7, int *a8, _DWORD *a9)
{
  v9 = *(a1 + 4 * a3 + 22612);
  if (!v9)
  {
    return 0;
  }

  v16 = a2;
  v18 = a1 + 31616;
  while (1)
  {
    v19 = v18 + 8 * v9;
    *a6 = v19;
    v20 = *(v19 + 44);
    *a5 = v20;
    if (v20 > 75)
    {
      break;
    }

    if (v20 != 74)
    {
      if (v20 != 75 || a3 != 0)
      {
        goto LABEL_26;
      }

      goto LABEL_24;
    }

    if (a3 == 1)
    {
      goto LABEL_24;
    }

LABEL_26:
    v9 = *(v19 + 20);
    if (!v9)
    {
      return 0;
    }
  }

  if (v20 == 76)
  {
    if (a3 != 2)
    {
      goto LABEL_26;
    }
  }

  else if (v20 == 77)
  {
    if (a3 != 3)
    {
      goto LABEL_26;
    }
  }

  else if (v20 != 78 || a3 != 4)
  {
    goto LABEL_26;
  }

LABEL_24:
  if (!sub_1062C(a1, v16, a4, v20, v19, a7, a8, a9))
  {
    v19 = *a6;
    goto LABEL_26;
  }

  return 1;
}

uint64_t sub_105E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  if ((v2 & 0x10) != 0)
  {
    v5 = *(a2 + 48);
    if (v5)
    {
      v3 = a1 + 31616 + 8 * v5;
    }

    else
    {
      v3 = a2;
    }

    v6 = v2 & 0xFFFFFFFFFFFFFFEFLL;
    while ((v6 & ~*(v3 + 32)) != 0)
    {
      v7 = *(v3 + 52);
      if (!v7)
      {
        goto LABEL_2;
      }

      v3 = a1 + 31616 + 8 * v7;
    }
  }

  else
  {
LABEL_2:
    v3 = a2;
  }

  return *(v3 + 44);
}

uint64_t sub_1062C(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t *a6, int *a7, _DWORD *a8)
{
  *a6 = a5 + 2 * *(a5 + 50) + 54;
  *a7 = 0;
  a8[3] = a2;
  *a8 = a2;
  a8[1] = -1;
  LODWORD(v8) = *a7;
  if (*a7 >= *(a5 + 52))
  {
    return 0;
  }

  v9 = a8;
  LODWORD(v14) = a2;
  v15 = 0;
  v16 = *(a5 + 52);
  v17 = a1 + 31616;
  v61 = a1 + 18100;
  v60 = a1 + 13608;
  while (1)
  {
    v63 = 1;
    v18 = *(a3 + 16);
    if (v14 > v18)
    {
      return 0;
    }

    v19 = *a6;
    v20 = (*a6 + 2 * v8);
    v21 = *v20;
    if (v21 > 0x5A)
    {
      if (*v20 <= 0x5Eu)
      {
        if (v21 == 91)
        {
          v9[1] = v14;
        }

        else
        {
          if (v21 != 93)
          {
            goto LABEL_101;
          }

          v9[2] = v14;
        }

        v22 = *a7 + 1;
        goto LABEL_95;
      }

      switch(v21)
      {
        case '_':
          LODWORD(v14) = v14 - v20[1];
          if (v14 < 0)
          {
            LODWORD(v14) = 0;
            v63 = 0;
          }

          v22 = v8 + 2;
          goto LABEL_95;
        case '~':
          if (v14 == v18)
          {
            goto LABEL_16;
          }

          break;
          if (!v14)
          {
LABEL_16:
            v22 = v8 + 1;
            goto LABEL_95;
          }

          break;
        default:
          goto LABEL_101;
      }

      v63 = 0;
      goto LABEL_16;
    }

    if (*v20 <= 0x23u)
    {
      break;
    }

    if (v21 != 36)
    {
      if (v21 == 37)
      {
        v29 = 0;
        v30 = v20[2];
        v31 = v17 + ((8 * v30) | (v20[1] << 19));
        v32 = *(v31 + 50);
        v33 = (v31 + 54);
        v34 = v14;
        do
        {
          if (v32 < 1)
          {
            LODWORD(v35) = 0;
          }

          else
          {
            v35 = 0;
            while (*(*(a3 + 8) + 2 * v34) != v33[v35])
            {
              if (v32 == ++v35)
              {
                goto LABEL_70;
              }
            }
          }

          if (v35 == v32)
          {
LABEL_70:
            v41 = 0;
            goto LABEL_71;
          }

          ++v34;
          ++v29;
        }

        while (v29 != 40);
        if (v30 == v20[3] || (v36 = v20[4], v36 < 0x29))
        {
          v41 = 1;
          LODWORD(v14) = v14 + 40;
        }

        else
        {
          v14 = v14 + 40;
          v37 = 40;
          while (v32 < 1)
          {
LABEL_45:
            ++v14;
            if (++v37 == v36)
            {
              goto LABEL_46;
            }
          }

          v38 = v33;
          v39 = v32;
          while (1)
          {
            v40 = *v38++;
            if (*(*(a3 + 8) + 2 * v14) != v40)
            {
              break;
            }

            if (!--v39)
            {
              goto LABEL_45;
            }
          }

LABEL_46:
          v41 = 1;
        }

LABEL_71:
        v63 = v41;
        v22 = v8 + 5;
        goto LABEL_95;
      }

      if (v21 != 64)
      {
        goto LABEL_101;
      }

LABEL_19:
      v23 = v20[1];
      v24 = v8 + 2;
      if (v23)
      {
        v22 = v24 + v23;
        v25 = v24;
        v26 = (*(a3 + 8) + 2 * v14);
        while (1)
        {
          v27 = *v26++;
          if (*(v19 + 2 * v25) != v27)
          {
            break;
          }

          if (++v25 >= v22)
          {
            v28 = 1;
            goto LABEL_74;
          }
        }

        v28 = 0;
      }

      else
      {
        v28 = 1;
        v22 = v8 + 2;
      }

LABEL_74:
      v63 = v28;
      LODWORD(v14) = v14 + v23;
      goto LABEL_95;
    }

    v42 = v20[4] | (((v20[1] << 32) | (v20[2] << 16) | v20[3]) << 16);
    if (!v20[5])
    {
      v50 = 0;
      goto LABEL_77;
    }

    v59 = v9;
    v43 = 0;
    v14 = v14;
    do
    {
      if (v14 >= *(a3 + 16))
      {
LABEL_75:
        v63 = 0;
        goto LABEL_93;
      }

      v44 = *(a3 + 8);
      v45 = *(v44 + 2 * v14);
      v46 = _lou_charHash(*(v44 + 2 * v14));
      if (a4 == 75)
      {
        v47 = *(v60 + 4 * v46);
        if (!v47)
        {
LABEL_57:
          v48 = &unk_28D38;
LABEL_62:
          v48[22] = v45;
          goto LABEL_63;
        }

        while (1)
        {
          v48 = (v17 + 8 * v47);
          if (v48[22] == v45)
          {
            break;
          }

          v47 = *(v48 + 3);
          if (!v47)
          {
            goto LABEL_57;
          }
        }
      }

      else
      {
        v49 = *(v61 + 4 * v46);
        if (!v49)
        {
LABEL_61:
          v48 = &unk_28D78;
          goto LABEL_62;
        }

        while (1)
        {
          v48 = (v17 + 8 * v49);
          if (v48[22] == v45)
          {
            break;
          }

          v49 = *(v48 + 3);
          if (!v49)
          {
            goto LABEL_61;
          }
        }
      }

LABEL_63:
      if ((*(v48 + 3) & v42) == 0)
      {
        goto LABEL_75;
      }

      ++v14;
      ++v43;
      v19 = *a6;
      v8 = *a7;
      v50 = *(*a6 + 2 * v8 + 10);
    }

    while (v43 < v50);
    v9 = v59;
    if (!v63)
    {
      goto LABEL_94;
    }

LABEL_77:
    if (v50 >= *(v19 + 2 * v8 + 12))
    {
      goto LABEL_94;
    }

    v59 = v9;
    v51 = v14;
    while (2)
    {
      if (v51 < *(a3 + 16))
      {
        v52 = *(a3 + 8);
        v53 = *(v52 + 2 * v51);
        v54 = _lou_charHash(*(v52 + 2 * v51));
        if (a4 == 75)
        {
          for (i = *(v60 + 4 * v54); i; i = *(v56 + 3))
          {
            v56 = (v17 + 8 * i);
            if (*(v56 + 22) == v53)
            {
              goto LABEL_90;
            }
          }

          v56 = &unk_28D38;
        }

        else
        {
          v57 = *(v61 + 4 * v54);
          if (v57)
          {
            while (1)
            {
              v56 = (v17 + 8 * v57);
              if (*(v56 + 22) == v53)
              {
                break;
              }

              v57 = *(v56 + 3);
              if (!v57)
              {
                goto LABEL_88;
              }
            }

LABEL_90:
            if ((v56[3] & v42) == 0)
            {
              break;
            }

            ++v51;
            if (++v50 >= *(*a6 + 2 * *a7 + 12))
            {
              break;
            }

            continue;
          }

LABEL_88:
          v56 = &unk_28D78;
        }

        *(v56 + 22) = v53;
        goto LABEL_90;
      }

      break;
    }

    LODWORD(v14) = v51;
LABEL_93:
    v9 = v59;
LABEL_94:
    v22 = *a7 + 7;
LABEL_95:
    *a7 = v22;
LABEL_96:
    if (!v15 == (v63 != 0))
    {
      v15 = 0;
      LODWORD(v8) = *a7;
      v16 = *(a5 + 52);
LABEL_98:
      if (v8 < v16)
      {
        continue;
      }
    }

    return 0;
  }

  switch(v21)
  {
    case '!':
      v15 = !v15;
      LODWORD(v8) = v8 + 1;
      *a7 = v8;
      goto LABEL_98;
    case '""':
      goto LABEL_19;
    case ' ':
      *a7 = v8 + 1;
      v9[3] = v14;
      if (v9[1] == -1)
      {
        v9[1] = *v9;
        v9[2] = v14;
      }

      return 1;
    default:
LABEL_101:
      result = _lou_handlePassVariableTest(v19, a7, &v63);
      if (result)
      {
        goto LABEL_96;
      }

      break;
  }

  return result;
}

uint64_t sub_10B90(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, _DWORD *a8, unsigned int *a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, unint64_t a14, uint64_t a15)
{
  v15 = a8;
  v16 = a7;
  v17 = a6;
  v19 = a4;
  v21 = a13;
  v22 = a14;
  v23 = HIDWORD(a14);
  v63 = *(a5 + 20);
  v61 = a3;
  result = sub_11020(a14, SHIDWORD(a14), a1, a3, a4, a5, a6, a7, a8, a9, a10);
  if (result)
  {
    v25 = *(a5 + 20);
    v65 = a15;
    if (v23 < a15)
    {
      v26 = 0;
      v27 = a15 - (v22 >> 32);
      v28 = vdupq_n_s64(v27 - 1);
      v29 = (v17 + 4 * (v22 >> 32) + 8);
      do
      {
        v30 = vdupq_n_s64(v26);
        v31 = vmovn_s64(vcgeq_u64(v28, vorrq_s8(v30, xmmword_1DCF0)));
        if (vuzp1_s16(v31, *v28.i8).u8[0])
        {
          *(v29 - 2) = v25;
        }

        if (vuzp1_s16(v31, *&v28).i8[2])
        {
          *(v29 - 1) = v25;
        }

        if (vuzp1_s16(*&v28, vmovn_s64(vcgeq_u64(v28, vorrq_s8(v30, xmmword_1DDA0)))).i32[1])
        {
          *v29 = v25;
          v29[1] = v25;
        }

        v26 += 4;
        v29 += 4;
      }

      while (((v27 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v26);
    }

    if (*(a11 + 52) > v21)
    {
      v58 = v22 >> 32;
      v62 = v65;
      v32 = a11;
      v56 = v16;
      v57 = a2;
      v59 = v17;
      v60 = v19;
      while (1)
      {
        v33 = (a12 + 2 * v21);
        v34 = *v33;
        if (v34 <= 0x29)
        {
          break;
        }

        if (v34 != 42)
        {
          if (v34 == 63)
          {
            ++v21;
LABEL_54:
            a13 = v21;
            goto LABEL_55;
          }

          if (v34 == 64)
          {
            goto LABEL_47;
          }

LABEL_57:
          result = _lou_handlePassVariableAction(a12, &a13);
          if (!result)
          {
            return result;
          }

          v21 = a13;
          goto LABEL_55;
        }

        v53 = v25 - v63;
        if (v25 - v63 >= 1)
        {
          memmove((*(a5 + 8) + 2 * v63), (*(a5 + 8) + 2 * v25), (2 * v53));
          *(a5 + 20) -= v53;
          v25 = v63;
        }

        v32 = a11;
        result = sub_11020(v23, v65, a1, v61, v19, a5, v17, v16, v15, a9, a10);
        if (!result)
        {
          return result;
        }

        v21 = ++a13;
        v62 = HIDWORD(v65);
LABEL_55:
        if (v21 >= *(v32 + 52))
        {
          goto LABEL_60;
        }
      }

      if (v34 == 34)
      {
LABEL_47:
        v49 = v33[1];
        v50 = *(a5 + 20);
        if (v50 + v49 > *(a5 + 16))
        {
          return 0;
        }

        memcpy((*(a5 + 8) + 2 * v50), v33 + 2, 2 * v49);
        v51 = a13;
        v52 = *(a12 + 2 + 2 * a13);
        *(a5 + 20) += v52;
        v21 = v51 + v52 + 2;
        goto LABEL_54;
      }

      if (v34 == 37)
      {
        LODWORD(v35) = v23;
        if (v23 < v65)
        {
          v36 = 0;
          v37 = 0;
          v35 = v58;
          v38 = a1 + 31616 + ((8 * v33[2]) | (v33[1] << 19));
          v39 = v38 + 54 + 2 * *(v38 + 50);
          v40 = v39 + 2;
          while (1)
          {
            v41 = *(v38 + 50);
            if (v41 < 1)
            {
              v42 = 0;
            }

            else
            {
              v42 = 0;
              while (*(*(v19 + 8) + 2 * v35) != *(v38 + 54 + 2 * v42))
              {
                if (v41 == ++v42)
                {
                  goto LABEL_44;
                }
              }
            }

            if (v42 == v41)
            {
              break;
            }

            if (v42 >= v36)
            {
              v43 = v37;
            }

            else
            {
              v43 = 0;
            }

            v44 = *(v38 + 52);
            if (v43 >= v44)
            {
LABEL_39:
              v43 = v37;
              v42 = v36;
            }

            else
            {
              if (v42 >= v36)
              {
                v45 = v36;
              }

              else
              {
                v45 = 0;
              }

              v46 = v42 - v45 + 1;
              while (--v46)
              {
                v43 = v43 + *(v39 + 2 * v43);
                if (v43 >= v44)
                {
                  goto LABEL_39;
                }
              }

              v55 = v15;
              v47 = *(v39 + 2 * v43) - 1;
              v48 = *(a5 + 20);
              if (v47 + v48 >= *(a5 + 16))
              {
                return 0;
              }

              *(v59 + 4 * v35) = v48;
              v54 = v40;
              memcpy((*(a5 + 8) + 2 * *(a5 + 20)), (v40 + 2 * v43), 2 * v47);
              *(a5 + 20) += v47;
              v40 = v54;
              v15 = v55;
            }

            ++v35;
            v36 = v42;
            v37 = v43;
            v19 = v60;
            if (v35 == v65)
            {
              LODWORD(v35) = v65;
              break;
            }
          }

LABEL_44:
          v16 = v56;
          a2 = v57;
          v17 = v59;
          v32 = a11;
        }

        if (!v35)
        {
          return 0;
        }

        v21 = a13 + 3;
        goto LABEL_54;
      }

      goto LABEL_57;
    }

    v62 = v65;
LABEL_60:
    *a2 = v62;
    return 1;
  }

  return result;
}

uint64_t sub_11020(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _DWORD *a8, _DWORD *a9, unsigned int *a10, int a11)
{
  v14 = a1;
  if (a11 != 74)
  {
    if (a2 > a1)
    {
      v20 = *(a6 + 20);
      if (a2 - a1 + v20 > *(a6 + 16))
      {
        return 0;
      }

      v21 = *(a6 + 8);
      v22 = (a7 + 4 * a1);
      v23 = (*(a5 + 8) + 2 * a1);
      v24 = a2 - a1;
      do
      {
        *v22++ = v20;
        v25 = *v23++;
        v26 = *(a6 + 20);
        *(v21 + 2 * v26) = v25;
        v20 = v26 + 1;
        *(a6 + 20) = v26 + 1;
        --v24;
      }

      while (v24);
    }

    return 1;
  }

  if (a2 <= a1)
  {
    return 1;
  }

  for (i = 2 * a1; ; i += 2)
  {
    result = sub_11144(*(*(a5 + 8) + i), a3, v14, a4, a5, a6, a7, a8, a9, a10);
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

uint64_t sub_11144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _DWORD *a8, _DWORD *a9, unsigned int *a10)
{
  v14 = a4;
  v15 = a3;
  v18 = *(a2 + 4 * _lou_charHash(a1) + 18100);
  if (v18)
  {
    while (1)
    {
      v19 = (a2 + 31616 + 8 * v18);
      if (v19[22] == a1)
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
    v19 = &unk_28D78;
    word_28DA4 = a1;
  }

  v20 = *(v19 + 4);
  if (v20)
  {
    return sub_11274((a2 + 8 * v20 + 31670), *(a2 + 8 * v20 + 31668), *(a2 + 8 * v20 + 31666), a2, v15, a5, a6, a7, a8, a9, a10);
  }

  return sub_1157C(a1, v14, a6, v15, a7);
}

uint64_t sub_11274(unsigned __int16 *a1, unsigned int a2, signed int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, _DWORD *a9, _DWORD *a10, unsigned int *a11)
{
  v11 = *(a7 + 20);
  if (v11 + a3 > *(a7 + 16) || (a5 + a2) > *(a6 + 16))
  {
    return 0;
  }

  if (!*a10 && *a9 >= a5 && *a9 < (a5 + a2))
  {
    *a9 = v11 + a3 / 2;
    *a10 = 1;
  }

  if (a2 >= 1)
  {
    v18 = *(a7 + 20);
    v19 = (a2 + 3) & 0xFFFFFFFC;
    v20 = vdupq_n_s64(a2 - 1);
    v21 = (a8 + 4 * a5 + 8);
    v22 = xmmword_1DDA0;
    v23 = xmmword_1DCF0;
    v24 = vdupq_n_s64(4uLL);
    do
    {
      v25 = vmovn_s64(vcgeq_u64(v20, v23));
      if (vuzp1_s16(v25, *v20.i8).u8[0])
      {
        *(v21 - 2) = v18;
      }

      if (vuzp1_s16(v25, *&v20).i8[2])
      {
        *(v21 - 1) = v18;
      }

      if (vuzp1_s16(*&v20, vmovn_s64(vcgeq_u64(v20, *&v22))).i32[1])
      {
        *v21 = v18;
        v21[1] = v18;
      }

      v22 = vaddq_s64(v22, v24);
      v23 = vaddq_s64(v23, v24);
      v21 += 4;
      v19 -= 4;
    }

    while (v19);
  }

  if (!a3)
  {
    return 0;
  }

  v26 = *(a7 + 20);
  if (v26 + a3 > *(a7 + 16))
  {
    return 0;
  }

  v27 = *a11;
  if (*a11)
  {
    v28 = *a1;
    v29 = *(a4 + 4 * _lou_charHash(*a1) + 13608);
    if (v29)
    {
      while (1)
      {
        v30 = (a4 + 31616 + 8 * v29);
        if (*(v30 + 22) == v28)
        {
          break;
        }

        v29 = *(v30 + 3);
        if (!v29)
        {
          goto LABEL_27;
        }
      }
    }

    else
    {
LABEL_27:
      v30 = &unk_28D38;
      word_28D64 = v28;
    }

    v31 = *(v30 + 12);
    if (v31)
    {
      v32 = a4 + 31616 + 8 * v31;
    }

    else
    {
      v32 = v30;
    }

    while (1)
    {
      v33 = *(v32 + 52);
      if (!v33)
      {
        break;
      }

      v32 = a4 + 31616 + 8 * v33;
      if (((v30[4] | 0x10) & ~*(v32 + 32)) == 0)
      {
        goto LABEL_35;
      }
    }

    v32 = v30;
LABEL_35:
    v34 = *(v32 + 44);
    v35 = *(a7 + 8);
    v36 = *(a7 + 20);
    v26 = v36 + 1;
    *(a7 + 20) = v36 + 1;
    *(v35 + 2 * v36) = v34;
    *a11 = 0;
    v27 = 1;
  }

  if (a11[1] || a11[2])
  {
    if (a3 > v27)
    {
      v37 = a4 + 13608;
      v38 = a4 + 31616;
      v39 = v27;
      v40 = a3;
      do
      {
        v41 = a1[v39];
        v42 = *(v37 + 4 * _lou_charHash(a1[v39]));
        if (v42)
        {
          while (1)
          {
            v43 = (v38 + 8 * v42);
            if (*(v43 + 22) == v41)
            {
              break;
            }

            v42 = *(v43 + 3);
            if (!v42)
            {
              goto LABEL_43;
            }
          }
        }

        else
        {
LABEL_43:
          word_28D64 = v41;
          v43 = &unk_28D38;
        }

        v44 = *(v43 + 12);
        if (v44)
        {
          v45 = (v38 + 8 * v44);
        }

        else
        {
          v45 = v43;
        }

        while (1)
        {
          v46 = *(v45 + 13);
          if (!v46)
          {
            break;
          }

          v45 = (v38 + 8 * v46);
          if (((v43[4] | 0x10) & ~v45[4]) == 0)
          {
            goto LABEL_51;
          }
        }

        v45 = v43;
LABEL_51:
        v47 = *(v45 + 22);
        v48 = *(a7 + 8);
        v49 = *(a7 + 20);
        *(a7 + 20) = v49 + 1;
        *(v48 + 2 * v49) = v47;
        ++v39;
      }

      while (v39 != v40);
    }
  }

  else
  {
    v50 = &a1[v27];
    v51 = a3 - v27;
    memcpy((*(a7 + 8) + 2 * v26), v50, 2 * (a3 - v27));
    *(a7 + 20) += v51;
  }

  return 1;
}

uint64_t sub_1157C(uint64_t a1, char a2, uint64_t a3, int a4, uint64_t a5)
{
  *(a5 + 4 * a4) = *(a3 + 20);
  if (a2 < 0)
  {
    return 1;
  }

  v6 = _lou_unknownDots(a1);
  v7 = strlen(v6);
  v8 = *(a3 + 20);
  if (v7 + v8 > *(a3 + 16))
  {
    return 0;
  }

  if (v7)
  {
    v10 = 0;
    v11 = *(a3 + 8) + 2 * v8;
    v12 = v8 + 1;
    do
    {
      v13 = v6[v10];
      *(a3 + 20) = v12 + v10;
      *(v11 + 2 * v10++) = v13;
    }

    while (v7 > v10);
  }

  return 1;
}

uint64_t sub_1160C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, _DWORD *a8, unsigned int *a9)
{
  v12 = 32;
  result = sub_11274(&v12, 1u, 1, a1, a2, a3, a4, a6, a7, a8, a9);
  if (result)
  {
    if (a5)
    {
      *(a5 + *(a4 + 20) - 1) = 49;
    }

    return 1;
  }

  return result;
}

uint64_t sub_11690(uint64_t a1, uint64_t a2)
{
  if (word_2DBE8 == a1)
  {
    LOBYTE(v2) = qword_2DBF0;
  }

  else
  {
    v4 = a1;
    v5 = *(a2 + 4 * _lou_charHash(a1) + 18100);
    if (v5)
    {
      while (1)
      {
        v6 = (a2 + 31616 + 8 * v5);
        if (*(v6 + 22) == v4)
        {
          break;
        }

        v5 = *(v6 + 3);
        if (!v5)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      v6 = &unk_28D78;
      word_28DA4 = v4;
    }

    v2 = v6[3];
    qword_2DBF0 = v2;
    word_2DBE8 = v4;
  }

  return v2 & 1;
}

uint64_t sub_1172C(unsigned int *a1, _DWORD *a2, _DWORD *a3, unsigned int **a4, _DWORD *a5, uint64_t a6)
{
  if (*a5)
  {
    v6 = 0;
    v7 = *(a6 + 2 * (*(a6 + 50) - *a5) + 54);
    if (v7 <= 0x16)
    {
      if (*(a6 + 2 * (*(a6 + 50) - *a5) + 54) > 4u)
      {
        if (v7 == 5)
        {
          v6 = a1[587];
          if (!v6)
          {
            goto LABEL_23;
          }
        }

        else
        {
          if (v7 != 19)
          {
            goto LABEL_23;
          }

          v6 = a1[240];
          if (!v6)
          {
            goto LABEL_23;
          }
        }
      }

      else if (v7 == 3)
      {
        v6 = a1[585];
        if (!v6)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v7 != 4)
        {
          goto LABEL_23;
        }

        v6 = a1[586];
        if (!v6)
        {
          goto LABEL_23;
        }
      }
    }

    else if (*(a6 + 2 * (*(a6 + 50) - *a5) + 54) <= 0x2Cu)
    {
      if (v7 == 23)
      {
        v6 = a1[241];
        if (!v6)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v7 != 24)
        {
          goto LABEL_23;
        }

        v6 = a1[243];
        if (!v6)
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
      switch(v7)
      {
        case '-':
          v6 = a1[634];
          if (!v6)
          {
            goto LABEL_23;
          }

          break;
        case '.':
          v6 = a1[635];
          if (!v6)
          {
            goto LABEL_23;
          }

          break;
        case '/':
          v6 = a1[242];
          if (!v6)
          {
            goto LABEL_23;
          }

          break;
        default:
          goto LABEL_23;
      }
    }

    v8 = &a1[2 * v6 + 7904];
    *a4 = v8;
    *a3 = v8[11];
    *a2 = *(v8 + 26);
    v6 = 1;
LABEL_23:
    --*a5;
    return v6;
  }

  return 0;
}

uint64_t sub_11850(uint64_t a1, int a2, __int16 a3, uint64_t a4, int a5)
{
  if ((a3 & 0x100) != 0)
  {
    return 0;
  }

  if (a5 + a2 < *(a4 + 16))
  {
    v6 = a1 + 18100;
    v7 = a1 + 31616;
    v8 = a5 + a2;
    while (1)
    {
      v9 = *(a4 + 8);
      v10 = *(v9 + 2 * v8);
      v11 = *(v6 + 4 * _lou_charHash(*(v9 + 2 * v8)));
      if (v11)
      {
        while (1)
        {
          v12 = (v7 + 8 * v11);
          if (*(v12 + 22) == v10)
          {
            break;
          }

          v11 = *(v12 + 3);
          if (!v11)
          {
            goto LABEL_7;
          }
        }
      }

      else
      {
LABEL_7:
        word_28DA4 = v10;
        v12 = &unk_28D78;
      }

      v13 = v12[3];
      if (v13)
      {
        break;
      }

      if ((v13 & 2) != 0)
      {
        return 0;
      }

      v14 = 0;
      v15 = 0;
      while (1)
      {
        v16 = *(v12 + 5);
        if (!v16)
        {
          break;
        }

        v12 = (v7 + 8 * v16);
        v17 = *(v12 + 11);
        if (v17 == 101)
        {
          v18 = v15;
        }

        else
        {
          v18 = 1;
        }

        if (v17 == 99)
        {
          v18 = v15;
        }

        if (*(v12 + 25) >= 2)
        {
          v15 = v18;
        }

        if (v17 == 105)
        {
          v14 = 1;
        }

        if (v17 == 110)
        {
          return 1;
        }
      }

      if (v15 && !v14)
      {
        return 0;
      }

      ++v8;
      result = 1;
      if (v8 >= *(a4 + 16))
      {
        return result;
      }
    }
  }

  return 1;
}

__int16 *_lou_translate(char *a1, const char *a2, unsigned __int16 *a3, unsigned int *a4, unsigned __int16 *a5, int *a6, __int16 *a7, _BYTE *a8, void *__b, uint64_t a10, unsigned int *a11, unsigned int a12, uint64_t a13, int *a14)
{
  result = 0;
  if (!a1)
  {
    return result;
  }

  if (!a3)
  {
    return result;
  }

  v17 = a4;
  if (!a4)
  {
    return result;
  }

  v18 = a5;
  if (!a5)
  {
    return result;
  }

  v19 = a6;
  if (!a6)
  {
    return result;
  }

  v22 = a12;
  _lou_logMessage(0, "Performing translation: tableList=%s, inlen=%d", a1, *a4);
  _lou_logWidecharBuf(0, "Inbuf=", a3, *v17);
  if (!_lou_isValidMode(a12))
  {
    _lou_logMessage(40000, "Invalid mode parameter: %d", a12);
  }

  v175 = 0;
  v176 = 0;
  v173 = 0;
  v174 = 0;
  if (a2)
  {
    v23 = a2;
  }

  else
  {
    v23 = a1;
  }

  v172 = 0;
  v161 = v23;
  _lou_getTable(a1, v23, &v176, &v175);
  if (!v176)
  {
    return 0;
  }

  v24 = *v17;
  if ((v24 & 0x80000000) != 0)
  {
    return 0;
  }

  v25 = *v19;
  if (*v19 < 0)
  {
    return 0;
  }

  if (v24)
  {
    v26 = 0;
    while (a3[v26])
    {
      if (v24 == ++v26)
      {
        LODWORD(v26) = *v17;
        break;
      }
    }
  }

  else
  {
    LODWORD(v26) = 0;
  }

  LODWORD(v172) = -1;
  v173 = a3;
  LODWORD(v174) = v26;
  result = _lou_allocMem(0, 0, v26, v25);
  if (!result)
  {
    return result;
  }

  v27 = v174;
  __dst = result;
  if (!a7)
  {
    bzero(result, 2 * v174);
    goto LABEL_29;
  }

  if (v174 < 1)
  {
LABEL_29:
    v28 = 0;
    goto LABEL_30;
  }

  v28 = 0;
  v29 = a7;
  v30 = result;
  do
  {
    v31 = *v29++;
    *v30++ = v31;
    if ((v31 & 0x3FFF) != 0)
    {
      v28 = 1;
    }

    --v27;
  }

  while (v27);
LABEL_30:
  v32 = a11;
  if (!a8 || *a8 == 88)
  {
    a8 = 0;
  }

  if (__b && v174 >= 1)
  {
    v33 = v28;
    memset(__b, 255, 4 * v174);
    v28 = v33;
    v32 = a11;
  }

  v156 = a8;
  v149 = v32;
  v154 = v28;
  if (!v32 || (v34 = *v32, (v34 & 0x80000000) != 0))
  {
    v152 = -1;
    v167 = 1;
    v168 = -1;
LABEL_50:
    v44 = -1;
LABEL_51:
    v153 = v44;
    goto LABEL_52;
  }

  v167 = 0;
  v168 = v34;
  if ((a12 & 0x22) == 0)
  {
    v152 = -1;
    goto LABEL_50;
  }

  v35 = v34;
  if (sub_17708(v173[v34], v176)[12])
  {
    v153 = v35;
    v152 = v35 + 1;
    goto LABEL_52;
  }

  v36 = v35;
  v37 = v35;
  while (1)
  {
    v38 = v173[v37];
    v39 = v176;
    v40 = *(v39 + 4 * _lou_charHash(v173[v37]) + 13608);
    if (v40)
    {
      while (1)
      {
        v41 = (v39 + 31616 + 8 * v40);
        if (*(v41 + 22) == v38)
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
      word_28E24 = v38;
      v41 = &unk_28DF8;
    }

    if (v41[24])
    {
      break;
    }

    if (v37-- <= 0)
    {
      v43 = 0;
      goto LABEL_231;
    }
  }

  v43 = v37 + 1;
LABEL_231:
  v137 = v36;
  a8 = v156;
  if ((a12 & 0x20) != 0 || v36 >= v174)
  {
    v152 = v36;
    v44 = v43;
    goto LABEL_51;
  }

  while (1)
  {
    v138 = v137;
    v139 = v173[v137];
    v140 = v176;
    v141 = *(v140 + 4 * _lou_charHash(v173[v137]) + 13608);
    if (v141)
    {
      while (1)
      {
        v142 = (v140 + 31616 + 8 * v141);
        if (*(v142 + 22) == v139)
        {
          break;
        }

        v141 = *(v142 + 3);
        if (!v141)
        {
          goto LABEL_236;
        }
      }
    }

    else
    {
LABEL_236:
      word_28E24 = v139;
      v142 = &unk_28DF8;
    }

    if (v142[24])
    {
      break;
    }

    v137 = v138 + 1;
    if (v174 <= v138 + 1)
    {
      v152 = v138 + 1;
      goto LABEL_257;
    }
  }

  v152 = v138;
LABEL_257:
  v153 = v43;
  a8 = v156;
LABEL_52:
  result = _lou_allocMem(5, 0, v174, *v19);
  if (!result)
  {
    return result;
  }

  v46 = result;
  if (*(v176 + 932) > 1 || *(v176 + 936))
  {
    result = _lou_allocMem(6, 0, v174, *v19);
    v162 = result;
    if (!result)
    {
      return result;
    }

    result = _lou_allocMem(7, 0, v174, *v19);
    if (!result)
    {
      return result;
    }

    v158 = result;
  }

  else
  {
    v158 = 0;
    v162 = 0;
  }

  v47 = a14;
  if (a8)
  {
    v48 = _lou_allocMem(3, 0, v174, *v19);
    if (v48)
    {
      v150 = v48;
      memset(v48, 42, *v19);
    }

    else
    {
      v150 = 0;
    }

    v47 = a14;
  }

  else
  {
    v150 = 0;
  }

  v49 = 0;
  v50 = 0;
  dword_2DBF8 = 0;
  if (a13 && v47)
  {
    v49 = *v47;
    v50 = a13;
  }

  qword_2DC00 = v50;
  dword_2DC08 = v49;
  if (!qword_2DC10)
  {
    v51 = malloc_type_malloc(0x28uLL, 0x109004028638895uLL);
    *v51 = 3;
    v51[1] = &unk_2DC18;
    v51[2] = &unk_2DC30;
    v51[3] = sub_17B00;
    v51[4] = 0;
    qword_2DC10 = v51;
LABEL_74:
    v52 = 0;
    do
    {
      sub_12A90(v52);
      v52 = (v52 + 1);
    }

    while (v52 < *qword_2DC10);
    goto LABEL_76;
  }

  if (*qword_2DC10 >= 1)
  {
    goto LABEL_74;
  }

LABEL_76:
  v169 = 0;
  v170 = 0;
  v171 = 0;
  v53 = sub_12AF8(*v19, v45);
  v54 = *(*(qword_2DC10 + 8) + 8 * v53);
  v55 = *(v176 + 936) == 0;
  v56 = *v19;
  LODWORD(v169) = v53;
  v170 = v54;
  v171 = v56;
  v57 = v46;
  v151 = v19;
  v157 = v17;
  __src = v46;
  v155 = v18;
  while (1)
  {
    v166 = 0;
    v164 = v55;
    if (v55 == 1)
    {
      v85 = _lou_allocMem(1, 0, v174, v56);
      if (v85)
      {
        v86 = v85;
        v87 = _lou_allocMem(2, 0, v174, *v19);
        if (v87)
        {
          sub_12B7C(v176, v22, &v172, &v169, v57, __dst, a8, v150, v86, v87, v154, &v166, &v168, &v167, v153, v152);
          v60 = v166;
          goto LABEL_185;
        }
      }

      return 0;
    }

    v165 = v57;
    if (!v55)
    {
      v58 = v176;
      v186[0] = &v172;
      if (!*(v176 + 936))
      {
        v60 = 0;
        goto LABEL_185;
      }

      v184 = 0;
      v183 = 0;
      v182 = 0;
      v181 = 0;
      v179 = 0;
      v180 = 0;
      v178 = 0;
      v185 = 0;
      HIDWORD(v171) = 0;
      _lou_resetPassVariables();
      v59 = v174;
      if (v174 < 1)
      {
        v84 = 0;
        v60 = 0;
        v65 = &v172;
        goto LABEL_169;
      }

      v60 = 0;
      v61 = 0;
      v62 = 0;
      v177 = 0;
      v63 = v58 + 31616;
      v64 = 1;
      v65 = &v172;
      while (1)
      {
        if (!v64)
        {
          goto LABEL_87;
        }

        v66 = *(v58 + 22592);
        if (!v66)
        {
          break;
        }

        while (1)
        {
          v67 = v63 + 8 * v66;
          v68 = *(v67 + 44);
          if (sub_17C38(v58, v60, v65, v68, v67, &v183, &v182, &v181, &v179, &v178, &v177))
          {
            break;
          }

          v66 = *(v67 + 16);
          if (!v66)
          {
            goto LABEL_86;
          }
        }

        v62 = v67;
        v61 = v68;
LABEL_114:
        v184 = v62;
        if (v61 == 75)
        {
          v22 = a12;
          if (qword_2DC00)
          {
            v81 = dword_2DBF8;
            if (dword_2DBF8 < dword_2DC08)
            {
              ++dword_2DBF8;
              *(qword_2DC00 + 8 * v81) = v62;
            }
          }

          if (sub_18884(v58, v186, &v169, v165, 75, &v184, v183, v182, v181, &v185, v179, v180, HIDWORD(v180), &v168, &v167, v178, v177, v148))
          {
            v82 = v186[0];
            v83 = *v65;
            if (*v186[0] != v83 && v83 != v172)
            {
              sub_12A90(v83);
            }

            v64 = v185 != v60;
            v65 = v82;
            v60 = v185;
            goto LABEL_127;
          }

          v60 = v185;
          v65 = v186[0];
          goto LABEL_181;
        }

        v22 = a12;
        if (v61 != 83)
        {
          v64 = 1;
          goto LABEL_127;
        }

        if (SHIDWORD(v171) >= v171)
        {
LABEL_181:
          v18 = v155;
          a8 = v156;
          v19 = v151;
LABEL_182:
          v166 = v60;
          v112 = *v65;
          if (v112 != v172)
          {
            sub_12A90(v112);
          }

          v17 = v157;
          v57 = v165;
          goto LABEL_185;
        }

        *(v165 + 4 * SHIDWORD(v171)) = v60;
        v79 = *(*(v65 + 1) + 2 * v60);
        v185 = v60 + 1;
        v80 = SHIDWORD(v171);
        ++HIDWORD(v171);
        v170[v80] = v79;
        v64 = 1;
        ++v60;
LABEL_127:
        v59 = v65[4];
        if (v60 >= v59)
        {
          v84 = HIDWORD(v171);
          v18 = v155;
          a8 = v156;
          v19 = v151;
LABEL_169:
          v104 = malloc_type_malloc(2 * v84, 0x1000040BDFB0063uLL);
          v22 = a12;
          if (!v104)
          {
            _lou_outOfMemory();
          }

          if (v84 >= 1)
          {
            v105 = v84;
            v106 = v165;
            v107 = v104;
            do
            {
              v109 = *v106++;
              v108 = v109;
              if ((v109 & 0x80000000) != 0)
              {
                v111 = *__dst;
              }

              else
              {
                v110 = v65[4];
                if (v108 >= v110)
                {
                  v111 = __dst[v110 - 1];
                }

                else
                {
                  v111 = __dst[v108];
                }
              }

              *v107++ = v111;
              --v105;
            }

            while (v105);
          }

          memcpy(__dst, v104, 2 * v84);
          free(v104);
          goto LABEL_182;
        }
      }

LABEL_86:
      v184 = v62;
LABEL_87:
      v69 = 0;
      v70 = v59 - v60;
      while (1)
      {
        if (v69)
        {
          if (v69 != 1)
          {
            if (v69 == 2)
            {
              v61 = 83;
              goto LABEL_114;
            }

            goto LABEL_110;
          }

          if (v70 < 1)
          {
            goto LABEL_110;
          }

          v71 = *(v65 + 1);
          v72 = *(v71 + 2 * v60);
          v73 = *(v58 + 13608 + 4 * _lou_charHash(*(v71 + 2 * v60)));
          if (v73)
          {
            while (1)
            {
              v74 = (v63 + 8 * v73);
              if (v74[22] == v72)
              {
                break;
              }

              v73 = *(v74 + 3);
              if (!v73)
              {
                goto LABEL_96;
              }
            }
          }

          else
          {
LABEL_96:
            v74 = &unk_28DF8;
            word_28E24 = v72;
          }

          v75 = (v74 + 10);
          v70 = 1;
        }

        else
        {
          if (v70 < 2)
          {
            goto LABEL_110;
          }

          v75 = (v58 + 22632 + 4 * _lou_stringHash((*(v65 + 1) + 2 * v60), 1, v58));
        }

        for (i = *v75; i; i = *(v62 + 16))
        {
          v62 = v63 + 8 * i;
          v61 = *(v62 + 44);
          if (v69 == 1)
          {
            if (!v64)
            {
              continue;
            }
          }

          else
          {
            v77 = *(v62 + 50);
            if (v70 < v77)
            {
              continue;
            }

            v78 = sub_17B14(v62 + 54, *(v65 + 1) + 2 * v60, v77, v58);
            if (!v64 || !v78)
            {
              continue;
            }
          }

          if (v61 == 75 && sub_17C38(v58, v60, v65, 75, v62, &v183, &v182, &v181, &v179, &v178, &v177))
          {
            v61 = 75;
            goto LABEL_114;
          }
        }

LABEL_110:
        if (++v69 == 3)
        {
          goto LABEL_114;
        }
      }
    }

    v88 = v176;
    v89 = &v172;
    v186[0] = &v172;
    v184 = 0;
    v183 = 0;
    v182 = 0;
    v181 = 0;
    v179 = 0;
    v180 = 0;
    v178 = 0;
    v177 = 0;
    HIDWORD(v171) = 0;
    v185 = 0;
    _lou_resetPassVariables();
    v90 = v174;
    if (v174 < 1)
    {
      v60 = 0;
      goto LABEL_160;
    }

    v91 = 0;
    v92 = 0;
    v93 = 1;
    while (1)
    {
      if (!v93)
      {
        goto LABEL_140;
      }

      v94 = *(v88 + 22592 + 4 * v164);
      if (!v94)
      {
LABEL_138:
        v184 = v92;
LABEL_139:
        v57 = v165;
LABEL_140:
        if (SHIDWORD(v171) >= v171)
        {
          v60 = v91;
          goto LABEL_159;
        }

        *(v57 + 4 * SHIDWORD(v171)) = v91;
        v97 = *(v89 + 1);
        v60 = v91 + 1;
        v185 = v91 + 1;
        LOWORD(v97) = *(v97 + 2 * v91);
        v98 = SHIDWORD(v171);
        ++HIDWORD(v171);
        v170[v98] = v97;
        v93 = 1;
        goto LABEL_142;
      }

      while (1)
      {
        v95 = v88 + 31616 + 8 * v94;
        v96 = *(v95 + 44);
        if (sub_17C38(v88, v91, v89, v96, v95, &v183, &v182, &v181, &v179, &v178, &v177))
        {
          break;
        }

        v94 = *(v95 + 16);
        if (!v94)
        {
          goto LABEL_138;
        }
      }

      v184 = v95;
      if ((v96 - 76) >= 3)
      {
        if (v96 == 83)
        {
          v92 = v95;
          goto LABEL_139;
        }

        if (v96 != 74)
        {
          break;
        }
      }

      if (qword_2DC00)
      {
        v99 = dword_2DBF8;
        if (dword_2DBF8 < dword_2DC08)
        {
          ++dword_2DBF8;
          *(qword_2DC00 + 8 * v99) = v95;
        }
      }

      if (!sub_18884(v88, v186, &v169, v165, v96, &v184, v183, v182, v181, &v185, v179, v180, HIDWORD(v180), &v168, &v167, v178, v177, v148))
      {
        v60 = v185;
        v89 = v186[0];
        goto LABEL_194;
      }

      v100 = v186[0];
      v101 = *v89;
      if (*v186[0] != v101 && v101 != v172)
      {
        sub_12A90(v101);
      }

      v60 = v185;
      v93 = v185 != v91;
      v89 = v100;
      v92 = v95;
      v57 = v165;
LABEL_142:
      v91 = v60;
      if (v60 >= v89[4])
      {
        goto LABEL_159;
      }
    }

    v60 = v91;
LABEL_194:
    v57 = v165;
LABEL_159:
    v90 = v89[4];
    v19 = v151;
    a8 = v156;
LABEL_160:
    v18 = v155;
    if (v60 < v90)
    {
      v102 = 2 * v60;
      do
      {
        if (!sub_199D0(*(*(v89 + 1) + v102), v88))
        {
          break;
        }

        ++v60;
        v102 += 2;
      }

      while (v60 != v89[4]);
      v185 = v60;
    }

    v166 = v60;
    v103 = *v89;
    if (v103 != v172)
    {
      sub_12A90(v103);
    }

    v17 = v157;
LABEL_185:
    *(v57 + 4 * SHIDWORD(v171)) = v60;
    v113 = v162;
    v114 = __src;
    if (v57 != __src)
    {
      memcpy(v158, __src, 4 * *v19 + 4);
      if ((v171 & 0x8000000000000000) == 0)
      {
        v115 = 0;
        v116 = 4 * HIDWORD(v171) + 4;
        do
        {
          *&__src[v115 / 2] = *&v158[2 * (*(v57 + v115) & ~(*(v57 + v115) >> 31))];
          v115 += 4;
        }

        while (v116 != v115);
      }

      v113 = v57;
    }

    if (v164 >= *(v176 + 932))
    {
      break;
    }

    v55 = v164 + 1;
    sub_12A90(v172);
    LODWORD(v172) = v169;
    v173 = v170;
    LODWORD(v174) = HIDWORD(v171);
    v118 = sub_12AF8(*v19, v117);
    v119 = *(*(qword_2DC10 + 8) + 8 * v118);
    v56 = *v19;
    LODWORD(v169) = v118;
    v170 = v119;
    v171 = v56;
    v57 = v113;
  }

  v120 = HIDWORD(v171);
  if (SHIDWORD(v171) < 1)
  {
    *v17 = *&__src[2 * SHIDWORD(v171)];
    *v19 = v120;
    v129 = __b;
  }

  else
  {
    v121 = v170;
    v122 = HIDWORD(v171);
    v123 = a7;
    v124 = a7;
    v125 = v18;
    do
    {
      if (v123)
      {
        if ((*v121 & 0xC0) != 0)
        {
          v126 = 56;
        }

        else
        {
          v126 = 48;
        }

        *v124 = v126;
      }

      if ((v22 & 4) != 0)
      {
        v128 = *v121 | 0x2800;
        if ((v22 & 0x40) == 0)
        {
          v128 = *v121;
        }

        *v125 = v128;
      }

      else
      {
        CharForDots = _lou_getCharForDots(*v121, v175);
        *v125 = CharForDots;
        if (!CharForDots)
        {
          v143 = _lou_showDots(v121, 1u);
          _lou_logMessage(40000, "%s: no mapping for dot pattern %s in display table", v161, v143);
          return 0;
        }
      }

      ++v121;
      ++v125;
      ++v124;
      --v122;
      v123 = a7;
    }

    while (v122);
    v114 = __src;
    a8 = v156;
    v17 = v157;
    *v157 = *&__src[2 * v120];
    *v19 = v120;
    v129 = __b;
    if (a10)
    {
      v130 = 0;
      do
      {
        v131 = *&__src[2 * v130];
        if (v131 < 0)
        {
          v131 = 0;
        }

        else if (v131 >= *v157)
        {
          v131 = *v157 - 1;
        }

        *(a10 + 4 * v130++) = v131;
        v120 = *v19;
      }

      while (v130 < v120);
    }
  }

  if (v129)
  {
    if (v120 < 1)
    {
      v134 = -1;
      v133 = -1;
    }

    else
    {
      v132 = 0;
      v133 = -1;
      v134 = -1;
      do
      {
        v135 = *&v114[2 * v132];
        if (v135 > v134)
        {
          v136 = v133 & ~(v133 >> 31);
          do
          {
            if ((v134 & 0x80000000) == 0 && v134 < *v17)
            {
              v129[v134] = v136;
              v135 = *&v114[2 * v132];
            }

            ++v134;
          }

          while (v134 < v135);
          LODWORD(v120) = *v19;
          v133 = v132;
        }

        ++v132;
      }

      while (v132 < v120);
    }

    for (j = v134 & ~(v134 >> 31); *v17 > j; ++j)
    {
      v129[j] = v133;
    }
  }

  if (v150)
  {
    v145 = v174;
    memcpy(a8, v150, v174);
    a8[v145] = 0;
    v129 = __b;
  }

  if (v149)
  {
    v146 = *v149;
    if (v146 != -1)
    {
      v147 = &v129[v146];
      if (!v129)
      {
        v147 = &v168;
      }

      *v149 = *v147;
    }
  }

  if (a14)
  {
    *a14 = dword_2DBF8;
  }

  _lou_logMessage(0, "Translation complete: outlen=%d", *v19);
  _lou_logWidecharBuf(0, "Outbuf=", v18, *v19);
  return (&dword_0 + 1);
}

uint64_t sub_12A90(uint64_t result)
{
  if ((result & 0x80000000) == 0)
  {
    v1 = result;
    if (*qword_2DC10 > result)
    {
      v2 = *(qword_2DC10 + 16);
      if (*(v2 + 4 * result))
      {
        v3 = *(qword_2DC10 + 32);
        if (v3)
        {
          result = v3(*(*(qword_2DC10 + 8) + 8 * result));
          v2 = *(qword_2DC10 + 16);
        }
      }

      *(v2 + 4 * v1) = 0;
    }
  }

  return result;
}

uint64_t sub_12AF8(uint64_t a1, uint64_t a2)
{
  v2 = *qword_2DC10;
  if (v2 < 1)
  {
LABEL_5:
    _lou_outOfMemory();
  }

  v3 = 0;
  while (*(*(qword_2DC10 + 16) + 4 * v3))
  {
    if (v2 == ++v3)
    {
      goto LABEL_5;
    }
  }

  v4 = (*(qword_2DC10 + 24))(v3, a1);
  v5 = qword_2DC10;
  *(*(qword_2DC10 + 8) + 8 * v3) = v4;
  *(*(v5 + 16) + 4 * v3) = 1;
  return v3;
}

uint64_t sub_12B7C(uint64_t a1, char a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _DWORD *a9, uint64_t a10, int a11, _DWORD *a12, int *a13, _DWORD *a14, int a15, int a16)
{
  v16 = a6;
  v718 = a3;
  v716 = 0;
  v715 = 0;
  v714 = 0;
  v713 = 0;
  v711 = 0;
  v712 = 0;
  v710 = 0;
  v709 = 0;
  translation_direction = 1;
  if (!*(a1 + 940))
  {
    goto LABEL_37;
  }

  v17 = a3[4];
  if (v17 < 1)
  {
    goto LABEL_37;
  }

  v18 = 0;
  v19 = 0;
  v20 = 0;
  LOWORD(v21) = 0;
  v22 = 0;
  v701 = a1 + 13608;
  v23 = a1 + 31616;
  v699 = a1 + 22632;
  do
  {
    v24 = 0;
    v25 = v17 - v22;
    v26 = v22;
    do
    {
      if (v24)
      {
        if (v24 != 1)
        {
          if (v24 == 2)
          {
            goto LABEL_34;
          }

          goto LABEL_23;
        }

        if (v25 < 1)
        {
          goto LABEL_23;
        }

        v27 = *(a3 + 1);
        v28 = *(v27 + 2 * v22);
        v29 = *(v701 + 4 * _lou_charHash(*(v27 + 2 * v22)));
        if (v29)
        {
          while (1)
          {
            v30 = (v23 + 8 * v29);
            if (v30[22] == v28)
            {
              break;
            }

            v29 = *(v30 + 3);
            if (!v29)
            {
              goto LABEL_13;
            }
          }
        }

        else
        {
LABEL_13:
          v30 = &unk_28DF8;
          word_28E24 = v28;
        }

        v31 = (v30 + 10);
        v25 = 1;
      }

      else
      {
        if (v25 < 2)
        {
          goto LABEL_23;
        }

        v31 = (v699 + 4 * _lou_stringHash((*(a3 + 1) + 2 * v22), 1, a1));
      }

      v32 = *v31;
      if (v32)
      {
        while (1)
        {
          v33 = v23 + 8 * v32;
          v19 = *(v33 + 44);
          v18 = *(v33 + 50);
          if ((v24 == 1 || v25 >= v18 && sub_17B14(v33 + 54, *(a3 + 1) + 2 * v22, *(v33 + 50), a1)) && v19 == 86)
          {
            break;
          }

          v32 = *(v33 + 16);
          if (!v32)
          {
            goto LABEL_23;
          }
        }

        v16 = a6;
LABEL_28:
        v17 = a3[4];
        if (v18 + v22 > v17)
        {
          goto LABEL_37;
        }

        v21 = dword_1DDB0[v20];
        v20 = ~v20 & 1;
        if (v18 < 1)
        {
          v19 = 86;
        }

        else
        {
          v34 = (v16 + 2 * v22);
          v35 = v18;
          do
          {
            *v34++ |= v21;
            --v35;
          }

          while (v35);
          v19 = 86;
          v22 += v18;
        }

        goto LABEL_36;
      }

LABEL_23:
      ++v24;
    }

    while (v24 != 3);
    if (v19 != 83)
    {
      v16 = a6;
      if (v19 != 86)
      {
        v17 = a3[4];
        continue;
      }

      goto LABEL_28;
    }

LABEL_34:
    v16 = a6;
    v17 = a3[4];
    if (v22 >= v17)
    {
      break;
    }

    ++v22;
    *(a6 + 2 * v26) |= v21;
    v19 = 83;
LABEL_36:
    ;
  }

  while (v22 < v17);
LABEL_37:
  v717 = 0;
  v708 = 0;
  v706 = 0;
  v707 = 0;
  v36 = a4;
  *(a4 + 20) = 0;
  v705 = 0;
  _lou_resetPassVariables();
  v37 = a3;
  if (*(a1 + 2340) && a3[4] >= 1)
  {
    v38 = 0;
    do
    {
      v39 = *(a3 + 1);
      v40 = *(v39 + 2 * v38);
      v41 = *(a1 + 13608 + 4 * _lou_charHash(*(v39 + 2 * v38)));
      if (v41)
      {
        while (1)
        {
          v42 = (a1 + 31616 + 8 * v41);
          if (*(v42 + 22) == v40)
          {
            break;
          }

          v41 = *(v42 + 3);
          if (!v41)
          {
            goto LABEL_43;
          }
        }
      }

      else
      {
LABEL_43:
        v42 = &unk_28DF8;
        word_28E24 = v40;
      }

      if ((v42[24] & 0x10) != 0)
      {
        *(v16 + 2 * v38) |= 0x8000u;
      }

      ++v38;
    }

    while (v38 < a3[4]);
  }

  v43 = a5;
  if (*(a1 + 928) && a3[4] >= 1)
  {
    v44 = 0;
    v45 = 0;
    do
    {
      v46 = *(a3 + 1);
      v47 = *(v46 + 2 * v44);
      v48 = *(a1 + 13608 + 4 * _lou_charHash(*(v46 + 2 * v44)));
      if (v48)
      {
        while (1)
        {
          v49 = (a1 + 31616 + 8 * v48);
          if (*(v49 + 22) == v47)
          {
            break;
          }

          v48 = *(v49 + 3);
          if (!v48)
          {
            goto LABEL_53;
          }
        }
      }

      else
      {
LABEL_53:
        v49 = &unk_28DF8;
        word_28E24 = v47;
      }

      if ((v49[24] & 0x10) != 0)
      {
        v50 = v45 + 1;
        if (v45 >= 1)
        {
          v51 = (v16 + 2 * v44);
          *v51 |= 0x1000u;
          if (v45 == 1)
          {
            *(v51 - 1) |= 0x1000u;
            v50 = 2;
          }
        }
      }

      else
      {
        v50 = 0;
      }

      ++v44;
      v45 = v50;
    }

    while (v44 < a3[4]);
  }

  v52 = 0;
  v53 = a1;
  v680 = a1 + 1960;
  v697 = a1 + 13608;
  v698 = a1 + 31616;
  v54 = a10;
  while (2)
  {
    if (v52 >= 0xA)
    {
      v55 = a1 + 1552 + 24 * v52 - 240;
    }

    else
    {
      v55 = a1 + 1312 + 24 * v52;
    }

    if (!*(v55 + 16))
    {
      goto LABEL_431;
    }

    v676 = v52;
    v690 = *(v55 + 20);
    v56 = a9;
    v702 = v55;
    if (v37[4] < 1)
    {
      goto LABEL_103;
    }

    for (i = 0; i < v59; ++i)
    {
      v58 = sub_1A324(*(*(v37 + 1) + 2 * i), v53, v55);
      v55 = v702;
      a9[i] = (a9[i] & 0xFFFFFFFA | v58) ^ 1;
      v59 = v37[4];
    }

    if (v59 < 1)
    {
      goto LABEL_103;
    }

    v60 = 0;
    v61 = 0;
    v682 = *(v680 + 36 * *(v702 + 20));
    v62 = -1;
    v63 = -1;
    v64 = -1;
    while (2)
    {
      v65 = v56[v60];
      if (v61)
      {
        v66 = v60;
      }

      else
      {
        v66 = v64;
      }

      if ((v65 & 1) == 0)
      {
        v62 = v60;
        v61 = 0;
        v64 = v66;
        goto LABEL_98;
      }

      v67 = *(*(v37 + 1) + 2 * v60);
      v68 = *(a6 + 2 * v60);
      v69 = sub_1A418(*(*(v37 + 1) + 2 * v60), a1, v55);
      v55 = v702;
      if (v69)
      {
        v70 = *(v702 + 8);
        if (v70)
        {
          v71 = *(v697 + 4 * _lou_charHash(v67));
          if (v71)
          {
            while (1)
            {
              v72 = (v698 + 8 * v71);
              if (*(v72 + 22) == v67)
              {
                break;
              }

              v71 = *(v72 + 3);
              if (!v71)
              {
                goto LABEL_80;
              }
            }
          }

          else
          {
LABEL_80:
            v72 = &unk_28DF8;
            word_28E24 = v67;
          }

          v73 = (v72[3] & v70) != 0;
          v55 = v702;
        }

        else
        {
          v73 = (*v702 & v68);
        }

        v37 = a3;
        if (v73)
        {
          if ((v63 & 0x80000000) != 0)
          {
            v63 = v60;
          }

          v61 = 1;
          v56 = a9;
          goto LABEL_98;
        }
      }

      v61 &= v65 << 31 >> 31;
      if (!sub_1A418(*(*(v37 + 1) + 2 * v60), a1, v55))
      {
        v56 = a9;
        goto LABEL_94;
      }

      v56 = a9;
      if ((v63 & 0x80000000) != 0)
      {
LABEL_94:
        v55 = v702;
        goto LABEL_98;
      }

      v55 = v702;
      *(a10 + 8 * v63) = *(v702 + 16) | *(a10 + 8 * v63);
      if (v61)
      {
        v74 = *(v702 + 16);
        if (v682 && v63 < v62)
        {
          v61 = 0;
          *(a10 + 8 * v64 + 2) = (*(a10 + 8 * v64) | (v74 << 16)) >> 16;
          v64 = -1;
          v63 = -1;
          v60 = v62;
          goto LABEL_98;
        }

        v61 = 0;
        v75 = a10 + 8 * v60;
      }

      else
      {
        v74 = *(v702 + 16);
        v75 = a10 + 8 * v64;
      }

      *(v75 + 2) = (*v75 | (v74 << 16)) >> 16;
      v64 = -1;
      v63 = -1;
LABEL_98:
      if (++v60 < v37[4])
      {
        continue;
      }

      break;
    }

    v54 = a10;
    v53 = a1;
    v16 = a6;
    if ((v63 & 0x80000000) == 0)
    {
      *(a10 + 8 * v63) = *(v55 + 16) | *(a10 + 8 * v63);
      if (v61)
      {
        v64 = v37[4];
      }

      *(a10 + 8 * v64 + 2) = (*(a10 + 8 * v64) | (*(v55 + 16) << 16)) >> 16;
    }

LABEL_103:
    v76 = a1 + 1960;
    v77 = (v680 + 36 * v690);
    if (!v77[6])
    {
      v43 = a5;
      v36 = a4;
      v52 = v676;
      if (v77[5])
      {
        if (!v77[3])
        {
          goto LABEL_376;
        }

        v80 = v37[4];
        if (v80 >= 1)
        {
          for (j = 0; j < v80; ++j)
          {
            v82 = *(v54 + 8 * j);
            v83 = *(v55 + 16);
            if ((v83 & v82) != 0)
            {
              v84 = v54 + 8 * j;
              v85 = *(v84 + 8);
              if ((v83 & WORD1(v85)) != 0)
              {
                *(v54 + 8 * j) = v82 & 0xFFFFFFFFFFFF0000 | (v83 ^ 0xFFFF) & v82;
                *(v84 + 8) = v85 & 0xFFFFFFFF0000FFFFLL | v85 & (~*(v55 + 16) << 16);
                *(v54 + 8 * j) = v82 & 0xFFFFFFFF0000 | (v83 ^ 0xFFFF) & v82 | ((*(v55 + 16) | HIWORD(v82)) << 48);
                v80 = v37[4];
              }
            }
          }
        }
      }

      goto LABEL_416;
    }

    v78 = (v680 + 36 * *(v55 + 20));
    if (*v78)
    {
      if (v78[2])
      {
        v79 = 1;
      }

      else
      {
        v79 = v78[4] != 0;
      }

      v683 = v79;
    }

    else
    {
      v683 = 0;
    }

    v673 = (v680 + 36 * v690);
    if (v37[4] < 1)
    {
      v92 = -1;
      goto LABEL_197;
    }

    v86 = 0;
    v87 = 0;
    v88 = 0;
    v89 = 0;
    v90 = v78[5];
    v91 = -1;
    v92 = -1;
    v691 = v90;
    while (2)
    {
      v93 = *(v54 + 8 * v86);
      v94 = *(v55 + 16);
      if (v88)
      {
LABEL_130:
        if ((v94 & WORD1(v93)) != 0)
        {
          v88 = 0;
          *(v54 + 8 * v86) = v93 & 0xFFFFFFFF0000FFFFLL | ((WORD1(v93) & ~v94) << 16);
          v97 = 1;
          if (v87 && (v91 & 0x80000000) == 0)
          {
            v98 = *(v55 + 16);
            v99 = *(v54 + 8 * v91);
            if (v90 && v89 == 1)
            {
              v88 = 0;
              *(v54 + 8 * v91) = v99 & 0xFFFFFFFFFFFFLL | ((v98 | HIWORD(v99)) << 48);
            }

            else
            {
              *(v54 + 8 * v91) = v99 & 0xFFFF0000FFFFFFFFLL | ((v98 | WORD2(v99)) << 32);
              v88 = 0;
              if (v56[v86])
              {
                v120 = *(v54 + 8 * v86);
                v121 = v120 & 0xFFFFFFFF0000FFFFLL | v120 & 0xFFFF0000 | (*(v55 + 16) << 16);
                *(v54 + 8 * v86) = v121;
                *(v54 + 8 * v86) = v121 & 0xFFFF0000FFFFFFFFLL | ((*(v55 + 16) | WORD2(v120)) << 32);
              }
            }

            goto LABEL_138;
          }
        }

        else
        {
          v97 = 0;
          v88 = 1;
        }

        if (!v87)
        {
          goto LABEL_152;
        }

LABEL_138:
        if ((v56[v86] & 1) == 0)
        {
          v100 = v88 ^ 1;
          if ((v91 & 0x80000000) != 0)
          {
            v100 = 1;
          }

          if ((v100 & 1) == 0)
          {
            v101 = *(v54 + 8 * v91);
            if (v90 && v89 == 1)
            {
              v102 = *(v55 + 16) | HIWORD(v101);
              v103 = 0xFFFFFFFFFFFFLL;
              v104 = 48;
            }

            else
            {
              v102 = (*(v55 + 16) | WORD2(v101));
              v103 = 0xFFFF0000FFFFFFFFLL;
              v104 = 32;
            }

            *(v54 + 8 * v91) = (v103 & v101) + (v102 << v104);
          }

          v91 = -1;
          goto LABEL_177;
        }

        if (v86 == v91)
        {
          v105 = 1;
          v87 = 1;
          v89 = 1;
        }

        else
        {
          if (!v683)
          {
            v106 = sub_1A418(*(*(v37 + 1) + 2 * v86), v53, v55);
            v90 = v691;
            v55 = v702;
            if (!v106)
            {
              v105 = 1;
              v87 = 1;
              goto LABEL_179;
            }
          }

          v89 += v97 ^ 1;
          v105 = 1;
          v87 = 1;
        }

        v92 = v86;
        goto LABEL_179;
      }

      v95 = *(v55 + 16);
      if ((v95 & v93) != 0)
      {
        v93 = v93 & 0xFFFFFFFFFFFF0000 | (v95 ^ 0xFFFF) & v93;
        *(v54 + 8 * v86) = v93;
        if (v87)
        {
          v96 = v86;
        }

        else
        {
          v96 = v91;
        }

        if (v56[v86])
        {
          v91 = v96;
        }

        else
        {
          v91 = -1;
        }

        v94 = *(v55 + 16);
        goto LABEL_130;
      }

      v88 = 0;
      v97 = 1;
      if (v87)
      {
        goto LABEL_138;
      }

LABEL_152:
      if (v56[v86])
      {
        if (sub_1A418(*(*(v37 + 1) + 2 * v86), v53, v55))
        {
          if (!v97)
          {
            v91 = v86;
          }

          v107 = v92 + 1;
          if (v86 > (v92 + 1))
          {
            v108 = v107 + 1;
            v109 = &v56[v107];
            do
            {
              *v109++ &= ~1u;
              v113 = v86 == v108++;
            }

            while (!v113);
          }

          v55 = v702;
          v90 = v691;
          if ((v92 & 0x80000000) == 0)
          {
            v110 = *(v54 + 8 * v92);
            v111 = *(v702 + 16);
            if ((v111 & HIWORD(v110)) == 0)
            {
              v112 = v111 & WORD1(v110);
              v113 = (*(v702 + 16) & WORD2(v110)) != 0 && v112 == 0;
              if (v113)
              {
                *(v54 + 8 * v92) = v110 & 0xFFFFFFFFFFFFLL | ((*(v702 + 16) | HIWORD(v110)) << 48);
              }

              v114 = v92 << 32;
              v115 = (v54 + 8 * v92);
              while (v86 - 1 > v114 >> 32)
              {
                v117 = v115[1];
                ++v115;
                v116 = v117;
                v118 = *(v702 + 16);
                v114 += 0x100000000;
                if ((v118 & WORD1(v117)) != 0)
                {
                  *v115 = v116 & 0xFFFFFFFF0000FFFFLL | ((WORD1(v116) & ~v118) << 16);
                  *v115 = v116 & 0xFFFF00000000FFFFLL | ((WORD1(v116) & ~v118) << 16) | ((WORD2(v116) & ~*(v702 + 16)) << 32);
                  goto LABEL_138;
                }
              }
            }
          }

          goto LABEL_138;
        }

        v55 = v702;
        v90 = v691;
      }

LABEL_177:
      v105 = 0;
      v87 = 0;
      if (v86 == v91)
      {
        v89 = 1;
        v92 = v86;
      }

LABEL_179:
      ++v86;
      v119 = v37[4];
      if (v86 < v119)
      {
        continue;
      }

      break;
    }

    if (v88)
    {
      *(v54 + 8 * v119 + 2) = (*(v54 + 8 * v119) & (~*(v55 + 16) << 16)) >> 16;
      v122 = v105 ^ 1;
      if ((v91 & 0x80000000) != 0)
      {
        v122 = 1;
      }

      v76 = a1 + 1960;
      if (v122)
      {
        v16 = a6;
      }

      else
      {
        v123 = *(v54 + 8 * v91);
        v16 = a6;
        if (v90 && v89 == 1)
        {
          v124 = *(v55 + 16) | HIWORD(v123);
          v125 = 0xFFFFFFFFFFFFLL;
          v126 = 48;
        }

        else
        {
          v124 = (*(v55 + 16) | WORD2(v123));
          v125 = 0xFFFF0000FFFFFFFFLL;
          v126 = 32;
        }

        *(v54 + 8 * v91) = (v125 & v123) + (v124 << v126);
      }
    }

    else
    {
      v16 = a6;
      v76 = a1 + 1960;
    }

    v77 = v673;
LABEL_197:
    LODWORD(v127) = v92 + 1;
    LODWORD(v128) = v37[4];
    if ((v92 + 1) < v128)
    {
      v127 = v127;
      do
      {
        v56[v127++] &= ~1u;
        v128 = v37[4];
      }

      while (v127 < v128);
    }

    if ((v92 & 0x80000000) == 0)
    {
      v129 = *(v54 + 8 * v92);
      v130 = *(v55 + 16);
      if ((v130 & HIWORD(v129)) == 0)
      {
        v131 = v130 & WORD1(v129);
        if ((*(v55 + 16) & WORD2(v129)) != 0 && v131 == 0)
        {
          *(v54 + 8 * v92) = v129 & 0xFFFFFFFFFFFFLL | ((*(v55 + 16) | HIWORD(v129)) << 48);
          LODWORD(v128) = v37[4];
        }

        v133 = (v54 + 8 * v92);
        while (v128 - 1 > v92)
        {
          v135 = v133[1];
          ++v133;
          v134 = v135;
          v136 = *(v55 + 16);
          ++v92;
          if ((v136 & WORD1(v135)) != 0)
          {
            *v133 = v134 & 0xFFFFFFFF0000FFFFLL | ((WORD1(v134) & ~v136) << 16);
            *v133 = v134 & 0xFFFF00000000FFFFLL | ((WORD1(v134) & ~v136) << 16) | ((WORD2(v134) & ~*(v55 + 16)) << 32);
            LODWORD(v128) = v37[4];
            break;
          }
        }
      }
    }

    if (v128 >= 1)
    {
      v137 = 0;
      v138 = v56;
      v139 = 0xFFFFFFFFLL;
      do
      {
        v140 = *(v54 + 8 * v137);
        v141 = *(v55 + 16);
        if ((v141 & HIWORD(v140)) != 0)
        {
          if ((!v137 || (*(v138 - 1) & 1) == 0) && (v137 + 1 == v128 || (v138[1] & 1) == 0))
          {
            *v138 |= 4u;
          }
        }

        else if ((v141 & WORD2(v140)) != 0)
        {
          if ((v141 & WORD1(v140)) != 0)
          {
            if (v139 & 0x80000000) == 0 && (*v138)
            {
              v56[v139] &= ~4u;
            }

            v139 = 0xFFFFFFFFLL;
          }

          else
          {
            if (!v137 || (*(v138 - 1) & 1) == 0)
            {
              *v138 |= 4u;
            }

            v139 = v137;
          }
        }

        ++v137;
        v128 = v37[4];
        ++v138;
      }

      while (v137 < v128);
    }

    if (v77[8])
    {
      v142 = (v76 + 36 * *(v55 + 20));
      if (v142[2])
      {
        v692 = 0;
      }

      else
      {
        v692 = v142[4] == 0;
      }

      if (v128 < 1)
      {
        goto LABEL_375;
      }

      v185 = 0;
      v186 = 0;
      v187 = 0;
      v188 = 0;
      v189 = 0;
      LODWORD(v190) = -1;
      v191 = -1;
      v192 = -1;
      v193 = 0xFFFFFFFFLL;
      v685 = 0xFFFFFFFFLL;
      v678 = (v76 + 36 * *(v55 + 20));
      while (1)
      {
        v194 = v56[v185];
        v195 = (v194 & 1) == 0;
        v196 = (v194 & 1) != 0 ? v190 : v185;
        v190 = v186 ? v196 : v190;
        if (v186)
        {
          v195 = (v194 & 1) == 0;
          v186 = (v194 & 1) != 0;
        }

        else
        {
          v186 = v194 & 1;
        }

        v197 = *(a10 + 8 * v185);
        v198 = *(v55 + 16);
        if (v189)
        {
          break;
        }

        v201 = (v198 & HIWORD(v197));
        if (v201)
        {
          v193 = v185;
        }

        else
        {
          LODWORD(v197) = v198 & WORD1(v197);
          if ((v198 & WORD2(v197)) == 0 || v197 != 0)
          {
            goto LABEL_372;
          }
        }

        v189 = v201 == 0;
        if (v188)
        {
          if (!*(v55 + 8) || (v194 & 4) != 0)
          {
            ++v187;
            v192 = v185;
LABEL_334:
            v200 = v189 || v195;
            if ((v200 & 1) != 0 || v185 == v193)
            {
              if (v185 == v128 - 1 && v187 >= v142[8])
              {
                if (v191 < v192)
                {
                  v191 = v128;
                }

                sub_1A7B8(v685, v191, v192, a10, v702, a1, v56);
                v142 = v678;
                v55 = v702;
              }

              v188 = 1;
              goto LABEL_366;
            }

            v189 = 0;
          }

          if (v191 < v192)
          {
            v191 = v185;
          }

          v202 = v692;
          if (v191 == v190)
          {
            v202 = 0;
          }

          v187 -= v202;
          if (v187 >= v142[8])
          {
            sub_1A7B8(v685, v191, v192, a10, v702, a1, v56);
            v142 = v678;
            v55 = v702;
          }

LABEL_365:
          v188 = 0;
          goto LABEL_366;
        }

LABEL_351:
        if (!v189 && v185 != v193)
        {
          v189 = 0;
          goto LABEL_365;
        }

        if (*(v55 + 8) && (v194 & 4) == 0)
        {
          goto LABEL_365;
        }

        v191 = -1;
        v188 = 1;
        v192 = v185;
        v685 = v185;
        v187 = 1;
LABEL_366:
        ++v185;
        v128 = v37[4];
        if (v185 >= v128)
        {
          goto LABEL_234;
        }
      }

      if ((v198 & WORD2(v197)) != 0)
      {
        if ((v198 & WORD1(v197)) == 0 && v185 != v190)
        {
          goto LABEL_333;
        }
      }

      else
      {
LABEL_372:
        if (v185 != v190)
        {
          goto LABEL_333;
        }
      }

      v189 = 0;
      if (v188)
      {
        v191 = v185;
      }

LABEL_333:
      if (v188)
      {
        goto LABEL_334;
      }

      goto LABEL_351;
    }

LABEL_234:
    v54 = a10;
    v53 = a1;
    v16 = a6;
    if (v128 < 1)
    {
      goto LABEL_375;
    }

    v143 = 0;
    v144 = 0;
    v145 = 0;
    v146 = 0;
    v147 = 0;
    v684 = *(v680 + 36 * *(v55 + 20) + 20);
    v693 = -1;
    v148 = v56;
    v149 = a10;
    v150 = -1;
    while (2)
    {
      v151 = *v149;
      if (v147)
      {
        v152 = *(v55 + 16);
        if ((v152 & WORD1(v151)) != 0)
        {
          goto LABEL_241;
        }

        if ((WORD2(v151) & v152) != 0)
        {
          v693 = v143;
          goto LABEL_241;
        }

        goto LABEL_242;
      }

      v152 = *(v55 + 16);
LABEL_241:
      v153 = v152;
      if ((v152 & v151) != 0)
      {
LABEL_242:
        v147 = 1;
        goto LABEL_243;
      }

      if (v144)
      {
LABEL_246:
        if ((*v148 & 1) != 0 && ((v154 = *(v55 + 16), (v154 & WORD2(*v149)) != 0) ? (v155 = (v154 & WORD1(*v149)) == 0) : (v155 = 1), v155))
        {
          if ((*v148 & 2) != 0 || (v156 = sub_1A564(*(*(v37 + 1) + 2 * v143), v53, v55), v55 = v702, v156))
          {
            if (v684 && v145 == 1 && v150 != v693)
            {
              v157 = *(a10 + 8 * v150);
              v158 = HIDWORD(v157);
              v159 = v157 & 0xFFFFFFFFFFFFLL | ((*(v55 + 16) | HIWORD(v157)) << 48);
              *(a10 + 8 * v150) = v159;
              *(a10 + 8 * v150) = v159 & 0xFFFF0000FFFFFFFFLL | ((v158 & ~*(v55 + 16)) << 32);
              v56[v150] &= ~4u;
            }

            if (sub_1A564(*(*(v37 + 1) + 2 * v143), v53, v55))
            {
              v147 = 0;
              v146 = 1;
              v144 = 1;
              v55 = v702;
              goto LABEL_243;
            }

            v55 = v702;
            if (v150 == v693)
            {
              *(a10 + 8 * v693 + 4) = *(a10 + 8 * v693 + 4) & ~*(v702 + 16);
            }

            v147 = 0;
            v146 = 0;
            *(v149 + 4) = *(v702 + 16) | *(v149 + 4);
            v693 = -1;
            v145 = 1;
            v150 = v143;
          }

          else
          {
            if (v146)
            {
              if (v150 == v693)
              {
                *(a10 + 8 * v693 + 4) = *(a10 + 8 * v693 + 4) & ~*(v702 + 16);
              }

              v145 = 0;
              *(v149 + 4) = *(v702 + 16) | *(v149 + 4);
              v693 = -1;
              v150 = v143;
            }

            v147 = 0;
            v146 = 0;
            ++v145;
          }

          v144 = 1;
        }

        else
        {
          if (v684 && v145 == 1 && v150 != v693)
          {
            v160 = *(a10 + 8 * v150);
            v161 = HIDWORD(v160);
            v162 = v160 & 0xFFFFFFFFFFFFLL | ((*(v55 + 16) | HIWORD(v160)) << 48);
            *(a10 + 8 * v150) = v162;
            *(a10 + 8 * v150) = v162 & 0xFFFF0000FFFFFFFFLL | ((v161 & ~*(v55 + 16)) << 32);
            v56[v150] &= ~4u;
            v163 = *v149;
            v164 = *v149 & 0xFFFFFFFF0000FFFFLL | *v149 & (~*(v55 + 16) << 16);
            *v149 = v164;
            *v149 = v164 & 0xFFFF0000FFFFFFFFLL | ((WORD2(v163) & ~*(v55 + 16)) << 32);
          }

          if (v146 || (*v148 & 2) != 0 || (v165 = sub_1A564(*(*(v37 + 1) + 2 * v143), v53, v55), v55 = v702, v165))
          {
            v166 = *v149;
            v167 = *v149 & 0xFFFFFFFF0000FFFFLL | *v149 & (~*(v55 + 16) << 16);
            *v149 = v167;
            *v149 = v167 & 0xFFFF0000FFFFFFFFLL | ((WORD2(v166) & ~*(v55 + 16)) << 32);
          }

          if (v143 == v150)
          {
            v147 = 0;
            v144 = 0;
            v56[v150] &= ~4u;
            v168 = *v149;
            v169 = *v149 & 0xFFFFFFFF0000FFFFLL | *v149 & (~*(v55 + 16) << 16);
            *v149 = v169;
            v170 = v169 & 0xFFFF0000FFFFFFFFLL | ((WORD2(v168) & ~*(v55 + 16)) << 32);
            goto LABEL_286;
          }

LABEL_287:
          v147 = 0;
          v144 = 0;
        }
      }

      else if ((v152 & WORD2(v151)) != 0)
      {
        if ((*v148 & 2) != 0)
        {
          if (!v684 || v143 == v693)
          {
            v146 = 0;
            v145 = 0;
            v150 = v143;
            goto LABEL_246;
          }
        }

        else
        {
          v171 = v53;
          v172 = v55;
          if (!sub_1A564(*(*(v37 + 1) + 2 * v143), v171, v55) || v684 == 0 || v143 == v693)
          {
            v146 = 0;
            v145 = 0;
            v150 = v143;
            v55 = v172;
            v53 = a1;
            goto LABEL_246;
          }

          v153 = *(v172 + 16);
          v151 = *v149;
          v55 = v172;
          v53 = a1;
        }

        v177 = v151 & 0xFFFFFFFFFFFFLL | ((v153 | HIWORD(v151)) << 48);
        *v149 = v177;
        if (v148[1])
        {
          *(v149 + 12) = *(v55 + 16) | *(v149 + 12);
          if ((*v148 & 4) != 0)
          {
            v148[1] |= 4u;
            v177 = *v149;
          }
        }

        v147 = 0;
        v144 = 0;
        *v149 = v177 & 0xFFFF0000FFFFFFFFLL | ((WORD2(v177) & ~*(v55 + 16)) << 32);
        *v148 &= ~4u;
      }

      else
      {
        v175 = HIWORD(v151);
        if ((v152 & HIWORD(v151)) == 0)
        {
          goto LABEL_287;
        }

        if ((*v148 & 2) == 0)
        {
          v677 = v145;
          v176 = v55;
          if (!sub_1A564(*(*(v37 + 1) + 2 * v143), v53, v55))
          {
            v147 = 0;
            v144 = 0;
            v55 = v176;
            v145 = v677;
            goto LABEL_243;
          }

          v152 = *(v176 + 16);
          v151 = *v149;
          v175 = HIWORD(*v149);
          v55 = v176;
          v145 = v677;
        }

        v147 = 0;
        v144 = 0;
        v170 = v151 & 0xFFFFFFFFFFFFLL | ((v175 & ~v152) << 48);
LABEL_286:
        *v149 = v170;
      }

LABEL_243:
      ++v143;
      v149 += 8;
      ++v148;
      if (v143 < v37[4])
      {
        continue;
      }

      break;
    }

    v16 = a6;
    if (v144)
    {
      if (v684 && v145 == 1 && v150 != v693)
      {
        v178 = *(a10 + 8 * v150);
        v179 = HIDWORD(v178);
        v180 = v178 & 0xFFFFFFFFFFFFLL | ((*(v55 + 16) | HIWORD(v178)) << 48);
        *(a10 + 8 * v150) = v180;
        *(a10 + 8 * v150) = v180 & 0xFFFF0000FFFFFFFFLL | ((v179 & ~*(v55 + 16)) << 32);
        v56[v150] &= ~4u;
        v181 = *v149;
        v182 = *v149 & 0xFFFFFFFF0000FFFFLL | *v149 & (~*(v55 + 16) << 16);
        *v149 = v182;
        *v149 = v182 & 0xFFFF0000FFFFFFFFLL | ((WORD2(v181) & ~*(v55 + 16)) << 32);
      }

      if (v146)
      {
        v183 = *v149;
        v184 = *v149 & 0xFFFFFFFF0000FFFFLL | *v149 & (~*(v55 + 16) << 16);
        *v149 = v184;
        *v149 = v184 & 0xFFFF0000FFFFFFFFLL | ((WORD2(v183) & ~*(v55 + 16)) << 32);
      }
    }

LABEL_375:
    v36 = a4;
    v43 = a5;
    v52 = v676;
    if (!v673[7])
    {
LABEL_376:
      v205 = v680 + 36 * *(v55 + 20);
      if (*(v205 + 24))
      {
        if (!*(v205 + 28) && v37[4] >= 1)
        {
          v206 = 0;
          v207 = 0;
          v208 = 0;
          v209 = 0xFFFFFFFFLL;
          while (1)
          {
            v210 = *(v54 + 8 * v206);
            if (v208)
            {
              v211 = *(v55 + 16);
              if ((v211 & WORD1(v210)) == 0 && (WORD2(v210) & v211) == 0)
              {
                goto LABEL_389;
              }
            }

            else
            {
              v211 = *(v55 + 16);
            }

            if ((v211 & v210) == 0)
            {
              if (v207)
              {
                v213 = v209;
                if ((v211 & WORD2(v210)) == 0)
                {
LABEL_402:
                  v208 = 0;
                  v207 = a9[v206] & 1;
                  goto LABEL_390;
                }
              }

              else
              {
                v213 = v206;
                if ((v211 & WORD2(v210)) == 0)
                {
                  v208 = 0;
                  v207 = 0;
                  goto LABEL_390;
                }
              }

              if ((v211 & WORD1(v210)) != 0)
              {
                *(v54 + 8 * v206) = v210 & 0xFFFFFFFF0000FFFFLL | ((WORD1(v210) & ~v211) << 16);
                *(v54 + 8 * v206) = v210 & 0xFFFF00000000FFFFLL | ((WORD1(v210) & ~v211) << 16) | ((WORD2(v210) & ~*(v55 + 16)) << 32);
                *(v54 + 8 * v213 + 4) = *(v54 + 8 * v213 + 4) & ~*(v55 + 16);
                if (v206 > v213)
                {
                  v214 = v213;
                  do
                  {
                    *(v54 + 8 * v214++ + 6) |= *(v55 + 16);
                  }

                  while (v206 != v214);
                }

                v208 = 0;
                v207 = 0;
                v209 = v213;
                goto LABEL_390;
              }

              v209 = v213;
              goto LABEL_402;
            }

LABEL_389:
            v208 = 1;
LABEL_390:
            if (++v206 >= v37[4])
            {
              goto LABEL_416;
            }
          }
        }

        goto LABEL_416;
      }

      if (v37[4] < 1)
      {
        goto LABEL_416;
      }

      v215 = 0;
      v216 = 0;
      while (2)
      {
        v217 = *(v54 + 8 * v215);
        v218 = *(v55 + 16);
        if (v216)
        {
          if ((v218 & WORD1(v217)) != 0)
          {
            v216 = 0;
            v219 = v217 & 0xFFFFFFFF0000FFFFLL | ((WORD1(v217) & ~v218) << 16);
            goto LABEL_412;
          }

LABEL_411:
          v219 = v217 & 0xFFFFFFFFFFFFLL | ((v218 | HIWORD(v217)) << 48);
          v216 = 1;
LABEL_412:
          *(v54 + 8 * v215) = v219;
        }

        else
        {
          if ((*(v55 + 16) & v217) != 0)
          {
            v217 = v217 & 0xFFFFFFFFFFFF0000 | (*(v55 + 16) ^ 0xFFFF) & v217;
            *(v54 + 8 * v215) = v217;
            LOWORD(v218) = *(v55 + 16);
            goto LABEL_411;
          }

          v216 = 0;
        }

        if (++v215 >= v37[4])
        {
          break;
        }

        continue;
      }
    }

LABEL_416:
    if (*(v55 + 8) && v37[4] >= 1)
    {
      for (k = 0; k < v37[4]; ++k)
      {
        v221 = *(v54 + 8 * k);
        v222 = *(v55 + 16);
        if ((v222 & HIWORD(v221)) != 0)
        {
          v223 = *(v55 + 8);
          if (v223 != 16)
          {
            v225 = *(v37 + 1);
            v226 = *(v225 + 2 * k);
            v227 = *(v697 + 4 * _lou_charHash(*(v225 + 2 * k)));
            if (v227)
            {
              while (1)
              {
                v228 = (v698 + 8 * v227);
                if (*(v228 + 22) == v226)
                {
                  break;
                }

                v227 = *(v228 + 3);
                if (!v227)
                {
                  goto LABEL_426;
                }
              }
            }

            else
            {
LABEL_426:
              v228 = &unk_28DF8;
              word_28E24 = v226;
            }

            v55 = v702;
            if ((v228[3] & v223) != 0)
            {
              continue;
            }

            v221 = *(v54 + 8 * k);
            v224 = (*(v702 + 16) ^ 0xFFFFFFFFLL) & HIWORD(v221);
            goto LABEL_429;
          }

          if ((*(v16 + 2 * k) & 0x80000000) == 0)
          {
            v224 = HIWORD(v221) & (v222 ^ 0xFFFFFFFFLL);
LABEL_429:
            *(v54 + 8 * k) = v221 & 0xFFFFFFFFFFFFLL | (v224 << 48);
          }
        }
      }
    }

LABEL_431:
    if (++v52 != 16)
    {
      continue;
    }

    break;
  }

  v686 = 0;
  v666 = 0;
  v667 = v53 + 22632;
  v664 = a2 & 1;
  v659 = 0;
  v660 = (v53 + 976);
  v661 = v43 - 4;
  v655 = v53 + 2682;
  v656 = v53 + 2550;
  v657 = v53 + 3198;
  v654 = v43 + 8;
  v663 = 117;
LABEL_433:
  v668 = 1;
  while (2)
  {
    while (1)
    {
      v229 = v718;
      v231 = v706;
      v230 = HIDWORD(v706);
      v232 = v707;
      v233 = v705;
      v703 = v718;
      while (1)
      {
        v234 = v717;
        if (v717 > v229[4])
        {
          goto LABEL_1217;
        }

        if (v717 < 1)
        {
          v239 = a16;
        }

        else
        {
          v235 = *(v229 + 1) + 2 * v717;
          v236 = *(v235 - 2);
          v237 = *(v697 + 4 * _lou_charHash(*(v235 - 2)));
          if (v237)
          {
            while (1)
            {
              v238 = (v698 + 8 * v237);
              if (*(v238 + 22) == v236)
              {
                break;
              }

              v237 = *(v238 + 3);
              if (!v237)
              {
                goto LABEL_440;
              }
            }
          }

          else
          {
LABEL_440:
            v238 = &unk_28DF8;
            word_28E24 = v236;
          }

          v239 = a16;
          v229 = v703;
          if ((v238[24] & 1) != 0 && v686 != 94)
          {
            v230 = *(v36 + 20);
            v232 = v233;
            v231 = v234;
          }
        }

        if (v234 == v229[4])
        {
LABEL_1217:
          v706 = __PAIR64__(v230, v231);
LABEL_1218:
          if (v233 <= v234)
          {
            v625 = v718;
            do
            {
              sub_19CA4(0, 1, 1, 0, v233, a1, v234, v625, v36, v43, a10, a13, a14);
              if (a11)
              {
                sub_19CA4(0, 1, 0, 1, v233, a1, v234, v625, v36, v43, a10, a13, a14);
                sub_19CA4(1, 0, 0, 1, v233, a1, v234, v625, v36, v43, a10, a13, a14);
              }

              sub_19CA4(1, 0, 1, 0, v233, a1, v234, v625, v36, v43, a10, a13, a14);
              v233 = (v233 + 1);
            }

            while (v234 + 1 != v233);
          }

          goto LABEL_1223;
        }

        if (v234 < a15 || v234 >= v239)
        {
          break;
        }

        __src = 2;
        if (!sub_19A3C(v234, v239, a1, &v717, v229, v36, v43, a10, &v716, a13, &__src, a2))
        {
          LODWORD(v706) = v231;
          goto LABEL_1224;
        }
      }

      v706 = __PAIR64__(v230, v231);
      v707 = v232;
      if (v234 < 2)
      {
        v242 = a6;
        if (v234)
        {
          v240 = *(v229 + 1);
          goto LABEL_455;
        }

        v244 = 32;
      }

      else
      {
        v240 = *(v229 + 1);
        v241 = v240 + 2 * v234;
        v242 = a6;
        if (*(v241 - 2) == -1)
        {
          v243 = (v241 - 4);
          goto LABEL_456;
        }

LABEL_455:
        v243 = (v240 + 2 * v234 - 2);
LABEL_456:
        v244 = *v243;
      }

      v245 = *(v697 + 4 * _lou_charHash(v244));
      if (v245)
      {
        while (1)
        {
          v246 = (v698 + 8 * v245);
          if (*(v246 + 22) == v244)
          {
            break;
          }

          v245 = *(v246 + 3);
          if (!v245)
          {
            goto LABEL_460;
          }
        }
      }

      else
      {
LABEL_460:
        v246 = &unk_28DF8;
        word_28E24 = v244;
      }

      v247 = v229[4];
      v43 = a5;
      v36 = a4;
      if (v234 >= v247)
      {
        goto LABEL_1218;
      }

      v248 = *(v242 + 2 * v234);
      v653 = v708;
      if (!v708)
      {
        v653 = v248 & 0x1000;
        LODWORD(v708) = v653;
      }

      if ((v248 & 0x800) == 0)
      {
        break;
      }

      if (!v666)
      {
        _lou_logMessage(30000, "warning: Typeform no_translate is deprecated for input.");
      }

      v459 = *(*(v229 + 1) + 2 * v234);
      if ((v459 - 127) < 0xFFA1u)
      {
        goto LABEL_1223;
      }

      LOWORD(__src) = 0x8000;
      v460 = *(v697 + 4 * _lou_charHash(v459));
      if (v460)
      {
        while (1)
        {
          v461 = (v698 + 8 * v460);
          if (v461[22] == v459)
          {
            break;
          }

          v460 = *(v461 + 3);
          if (!v460)
          {
            goto LABEL_878;
          }
        }
      }

      else
      {
LABEL_878:
        v461 = &unk_28DF8;
        word_28E24 = v459;
      }

      v462 = *(v461 + 5);
      if (v462)
      {
        while (1)
        {
          v463 = v698 + 8 * v462;
          if ((*(v463 + 44) - 61) <= 8 && *(v463 + 52) == 1)
          {
            break;
          }

          v462 = *(v463 + 16);
          if (!v462)
          {
            goto LABEL_886;
          }
        }

        LOWORD(__src) = *(v463 + 56);
      }

LABEL_886:
      if (!sub_195E0(&__src, 1, 1, 0, v234, v229, a4, a5, a13, a14))
      {
        goto LABEL_1223;
      }

      v717 = v234 + 1;
      v705 = v234 + 1;
      v668 = 1;
      v666 = 1;
    }

    v674 = v246[3];
    v640 = *a13;
    v642 = *(a4 + 16);
    v649 = *(a4 + 20);
    if (v234 < a15)
    {
      v249 = a15;
    }

    else
    {
      v249 = v247;
    }

    v250 = *(v229 + 1);
    v251 = *(v250 + 2 * v234);
    v252 = *(v697 + 4 * _lou_charHash(*(v250 + 2 * v234)));
    v253 = a1;
    if (v252)
    {
      while (1)
      {
        v254 = (v698 + 8 * v252);
        if (v254[22] == v251)
        {
          break;
        }

        v252 = *(v254 + 3);
        if (!v252)
        {
          goto LABEL_471;
        }
      }
    }

    else
    {
LABEL_471:
      v254 = &unk_28DF8;
      word_28E24 = v251;
    }

    v647 = 0;
    v255 = 0;
    v675 = 0;
    v670 = v249 - v234;
    v256 = v663 == 84;
    if ((v674 & 4) == 0)
    {
      v256 = 1;
    }

    v645 = v256;
    v257 = (v674 & 9) == 0;
    v641 = (v234 + 1);
    v258 = v653 | v664;
    v259 = (a2 & 0x22) != 0 && v234 <= a16;
    v261 = v259 && v234 >= a15;
    v652 = v653 | v664;
    if (v258)
    {
      v262 = 1;
    }

    else
    {
      v262 = (v674 & 2) == 0;
    }

    v648 = v262;
    if (v258)
    {
      v263 = 1;
    }

    else
    {
      v263 = (v674 & 0xB) == 0;
    }

    v646 = v263;
    if (v258)
    {
      v257 = 1;
    }

    v650 = v257;
    if (v258)
    {
      v264 = 1;
    }

    else
    {
      v264 = (v674 & 1) == 0;
    }

    if (v258)
    {
      v261 = 1;
    }

    v643 = v261;
    v644 = v264;
    v651 = (v254 + 10);
    v665 = v234 + 1;
    v265 = a1 + 31616;
    v266 = v703;
LABEL_497:
    v267 = v675;
    if (v675)
    {
      if (v675 == 1)
      {
        if (v670 > 0)
        {
          v670 = 1;
          v268 = v651;
          goto LABEL_503;
        }

        goto LABEL_504;
      }

      v716 = &unk_2DC70;
      LODWORD(v275) = 117;
      dword_2DC9C = 117;
      v694 = 1;
      word_2DCA2 = 1;
      word_2DCA6 = *(*(v266 + 8) + 2 * v234);
      word_2DCA4 = 0;
LABEL_917:
      v43 = a5;
      v36 = a4;
      v351 = a14;
      goto LABEL_918;
    }

    if (v670 >= 2)
    {
      v269 = _lou_stringHash((*(v266 + 8) + 2 * v234), 1, v253);
      v265 = a1 + 31616;
      v268 = (v667 + 4 * v269);
LABEL_503:
      v255 = *v268;
    }

LABEL_504:
    if (!v255)
    {
      goto LABEL_871;
    }

    while (2)
    {
      v716 = (v265 + 8 * v255);
      v687 = v716[11];
      v681 = v716;
      v270 = *(v716 + 25);
      v694 = v270;
      if (v267 != 1)
      {
        if (*(v716 + 25))
        {
          v277 = v670 < v270;
        }

        else
        {
          v277 = 1;
        }

        if (v277)
        {
LABEL_519:
          v253 = a1;
          goto LABEL_520;
        }

        if (v270 >= 1)
        {
          v279 = 0;
          LODWORD(v280) = 0;
          v281 = v716 + 54;
          v679 = v234 + v270;
          v282 = v234;
          while (1)
          {
            v283 = *(*(v266 + 8) + 2 * v282);
            if (v283 == 0xFFFF)
            {
              break;
            }

            v284 = *(v697 + 4 * _lou_charHash(v283));
            if (v284)
            {
              while (1)
              {
                v285 = (v698 + 8 * v284);
                if (*(v285 + 22) == v283)
                {
                  break;
                }

                v284 = *(v285 + 3);
                if (!v284)
                {
                  goto LABEL_528;
                }
              }
            }

            else
            {
LABEL_528:
              v285 = &unk_28DF8;
              word_28E24 = v283;
            }

            if (v282 == v234)
            {
              v280 = v285[3];
            }

            v286 = v280;
            v287 = *&v281[2 * v279];
            v288 = *(v697 + 4 * _lou_charHash(*&v281[2 * v279]));
            if (v288)
            {
              while (1)
              {
                v289 = (v698 + 8 * v288);
                if (v289[22] == v287)
                {
                  break;
                }

                v288 = *(v289 + 3);
                if (!v288)
                {
                  goto LABEL_534;
                }
              }
            }

            else
            {
LABEL_534:
              v289 = &unk_28DF8;
              word_28E24 = v287;
            }

            v290 = sub_105E0(a1, v285);
            if (v290 != sub_105E0(a1, v289))
            {
              v253 = a1;
              v265 = a1 + 31616;
              goto LABEL_611;
            }

            v291 = *(a6 + 2 * v234);
            v270 = v694;
            v266 = v703;
            if ((v291 & 0x80000000) == 0 && (*(a6 + 2 * v282) | v291) != v291)
            {
              v253 = a1;
              v265 = a1 + 31616;
              goto LABEL_520;
            }

            v280 = v285[3];
            v265 = a1 + 31616;
            if (v282 != v641 && v280 != 2 && (v286 & v280 & 2) != 0 && ((v280 ^ v286) & 0x30) != 0)
            {
              goto LABEL_519;
            }

            ++v279;
            if (++v282 >= v679)
            {
              goto LABEL_506;
            }
          }

          if (v270 == 1)
          {
            v266 = v703;
            if (v234 != v282)
            {
              goto LABEL_519;
            }

            break;
          }

          v253 = a1;
LABEL_611:
          v266 = v703;
LABEL_520:
          v271 = v681;
LABEL_868:
          v255 = *(v271 + 16);
          v267 = v675;
          if (v255)
          {
            continue;
          }

          v255 = 0;
LABEL_871:
          v675 = v267 + 1;
          goto LABEL_497;
        }
      }

      break;
    }

LABEL_506:
    v271 = v681;
    if ((*(v681 + 35) & 2) != 0 && *(a10 + 8 * v234) || (v272 = v234 + v270, (*(v681 + 27) & 2) != 0) && *(a10 + 8 * v272))
    {
      v253 = a1;
      v267 = v675;
      goto LABEL_871;
    }

    v273 = *(v266 + 16);
    v253 = a1;
    if (v272 + 2 < v273 && (v274 = *(v266 + 8) + 2 * v234, *(v274 + 2) == -1))
    {
      v276 = (v274 + 4);
      v275 = v687;
LABEL_545:
      v278 = *v276;
    }

    else
    {
      v275 = v687;
      if (v272 < v273)
      {
        v276 = (*(v266 + 8) + 2 * v272);
        goto LABEL_545;
      }

      v278 = 32;
    }

    v292 = *(v697 + 4 * _lou_charHash(v278));
    if (v292)
    {
      while (1)
      {
        v293 = (v698 + 8 * v292);
        if (*(v293 + 22) == v278)
        {
          break;
        }

        v292 = *(v293 + 3);
        if (!v292)
        {
          goto LABEL_549;
        }
      }
    }

    else
    {
LABEL_549:
      v293 = &unk_28DF8;
      word_28E24 = v278;
    }

    v294 = *(v681 + 3);
    v295 = v294 & 0xFFFFFFFFFDFFFFFFLL;
    v296 = v294 & v674;
    if (v295)
    {
      v297 = v296 == 0;
    }

    else
    {
      v297 = 0;
    }

    if (v297 || ((v298 = v293[3], v299 = *(v681 + 4), v300 = v299 & 0xFFFFFFFFFDFFFFFFLL, v301 = v299 & v298, v300) ? (v302 = v301 == 0) : (v302 = 0), v302))
    {
LABEL_867:
      v265 = a1 + 31616;
      goto LABEL_868;
    }

    v265 = a1 + 31616;
    if (*(v681 + 48))
    {
      v303 = v234;
      if ((v234 & 0x80000000) == 0)
      {
        v304 = v234;
        while (1)
        {
          v305 = *(v266 + 8);
          v306 = *(v305 + 2 * v304);
          v307 = *(v697 + 4 * _lou_charHash(*(v305 + 2 * v304)));
          if (v307)
          {
            while (1)
            {
              v308 = (v698 + 8 * v307);
              if (*(v308 + 22) == v306)
              {
                break;
              }

              v307 = *(v308 + 3);
              if (!v307)
              {
                goto LABEL_564;
              }
            }
          }

          else
          {
LABEL_564:
            v308 = &unk_28DF8;
            word_28E24 = v306;
          }

          v266 = v703;
          if ((v308[24] & 2) == 0)
          {
            break;
          }

          v259 = v304-- <= 0;
          if (v259)
          {
            v303 = -1;
            goto LABEL_574;
          }
        }

        v303 = v304 + 1;
      }

LABEL_574:
      LODWORD(v309) = *(v266 + 16);
      LODWORD(v310) = v234;
      if (v309 > v234)
      {
        v310 = v234;
        while (1)
        {
          v311 = *(v266 + 8);
          v312 = *(v311 + 2 * v310);
          v313 = *(v697 + 4 * _lou_charHash(*(v311 + 2 * v310)));
          if (v313)
          {
            while (1)
            {
              v314 = (v698 + 8 * v313);
              if (*(v314 + 22) == v312)
              {
                break;
              }

              v313 = *(v314 + 3);
              if (!v313)
              {
                goto LABEL_579;
              }
            }
          }

          else
          {
LABEL_579:
            v314 = &unk_28DF8;
            word_28E24 = v312;
          }

          v266 = v703;
          if ((v314[24] & 2) == 0)
          {
            break;
          }

          ++v310;
          v309 = v703[4];
          if (v310 >= v309)
          {
            goto LABEL_584;
          }
        }

        LODWORD(v310) = v310 - 1;
        LODWORD(v309) = v703[4];
      }

LABEL_584:
      v315 = v266;
      v316 = v303 & ~(v303 >> 31);
      v317 = v310 - v316 - (v310 == v309);
      v318 = malloc_type_calloc(v317 + 2, 1uLL, 0x100004077774924uLL);
      v319 = *(v315 + 8) + 2 * v316;
      v253 = a1;
      v320 = sub_17768(v319, v317 + 1, v318, a1);
      v271 = v681;
      v275 = v687;
      if (v320)
      {
        v321 = v665 - v316;
        do
        {
          if (v321 >= (v234 - v316 + v270))
          {
            goto LABEL_590;
          }

          v322 = v318[v321++];
        }

        while ((v322 & 1) == 0);
        free(v318);
        v265 = a1 + 31616;
LABEL_589:
        v266 = v703;
        goto LABEL_868;
      }

LABEL_590:
      free(v318);
      v265 = a1 + 31616;
      v266 = v703;
    }

    switch(v275)
    {
      case '=':
      case '>':
      case '?':
      case '@':
      case 'A':
      case 'B':
      case 'C':
      case 'D':
      case 'G':
      case 'I':
      case 'T':
      case 'X':
      case 'Y':
      case 'n':
        goto LABEL_889;
      case 'J':
        if (!v668)
        {
          goto LABEL_868;
        }

        LODWORD(v275) = 74;
        v373 = sub_17C38(v253, v234, v266, 74, v271, &v715, &v714, &v713, &v711, &v710, &v709);
        goto LABEL_693;
      case 'O':
        LODWORD(v275) = 79;
        if ((v643 & 1) == 0)
        {
          goto LABEL_917;
        }

        goto LABEL_868;
      case 'P':
      case 'Q':
        if (v652)
        {
          goto LABEL_868;
        }

        if (v234 >= 1)
        {
          v323 = 1;
          v324 = (v234 - 1);
          v325 = v661;
          do
          {
            if (v323 + v272 > *(v266 + 16))
            {
              goto LABEL_608;
            }

            v326 = *(v266 + 8);
            v327 = *(v326 + 2 * v324);
            v328 = _lou_charHash(*(v326 + 2 * v324));
            v265 = a1 + 31616;
            v329 = *(v697 + 4 * v328);
            if (v329)
            {
              while (1)
              {
                v330 = (v698 + 8 * v329);
                if (*(v330 + 22) == v327)
                {
                  break;
                }

                v329 = *(v330 + 3);
                if (!v329)
                {
                  goto LABEL_599;
                }
              }
            }

            else
            {
LABEL_599:
              v330 = &unk_28DF8;
              word_28E24 = v327;
            }

            if ((v330[24] & 2) == 0)
            {
              goto LABEL_608;
            }

            v331 = *(v703 + 1) + 2 * (v323 + v272);
            v332 = *(v331 - 2);
            v333 = _lou_charHash(*(v331 - 2));
            v265 = a1 + 31616;
            v334 = *(v697 + 4 * v333);
            if (v334)
            {
              while (1)
              {
                v335 = (v698 + 8 * v334);
                if (*(v335 + 22) == v332)
                {
                  break;
                }

                v334 = *(v335 + 3);
                if (!v334)
                {
                  goto LABEL_604;
                }
              }
            }

            else
            {
LABEL_604:
              v335 = &unk_28DF8;
              word_28E24 = v332;
            }

            v266 = v703;
            if ((v335[24] & 2) == 0)
            {
              goto LABEL_608;
            }

            ++v323;
            --v324;
          }

          while (v323 != v641);
          LODWORD(v323) = v234 + 1;
LABEL_608:
          v336 = v323 - 1;
          v253 = a1;
          v271 = v681;
          v275 = v687;
          goto LABEL_820;
        }

        v336 = 0;
        v325 = v661;
LABEL_820:
        while (2)
        {
          if (v336 < 1)
          {
            goto LABEL_589;
          }

          v433 = v275;
          v434 = v234 - v336;
          v435 = sub_17B14(*(v703 + 1) + 2 * v434, *(v703 + 1) + 2 * v272, v336, v253);
          if (!v435)
          {
            --v336;
LABEL_832:
            v275 = v433;
LABEL_833:
            v265 = a1 + 31616;
            if (v435)
            {
              goto LABEL_589;
            }

            continue;
          }

          break;
        }

        v436 = v649;
        while (v436 > 0)
        {
          v437 = *(v325 + 4 * v436);
          if (v437 == v434)
          {
            break;
          }

          --v436;
          if (v437 < v434)
          {
            goto LABEL_832;
          }
        }

        v438 = v665 - v336;
        v275 = v433;
        while (v438 < v272)
        {
          if (*(a10 + 8 * v438++))
          {
            goto LABEL_833;
          }
        }

        v440 = v272 + 1;
        while (v440 < v336 + v272)
        {
          if (*(a10 + 8 * v440++))
          {
            goto LABEL_833;
          }
        }

        if (v234 <= v336)
        {
          v447 = 0;
          v265 = a1 + 31616;
          v270 = v694;
        }

        else
        {
          v442 = *(v703 + 1);
          v443 = *(v442 + 2 * (v234 + ~v336));
          v444 = _lou_charHash(*(v442 + 2 * (v234 + ~v336)));
          v265 = a1 + 31616;
          v445 = *(v697 + 4 * v444);
          v270 = v694;
          if (v445)
          {
            while (1)
            {
              v446 = (v698 + 8 * v445);
              if (*(v446 + 22) == v443)
              {
                break;
              }

              v445 = v446[3];
              if (!v445)
              {
                goto LABEL_843;
              }
            }
          }

          else
          {
LABEL_843:
            v446 = &unk_28DF8;
            word_28E24 = v443;
          }

          v447 = (v446[6] >> 1) & 1;
        }

        v266 = v703;
        v647 = v336;
        if (v447 != (v275 == 81))
        {
          goto LABEL_868;
        }

        v647 = v336;
        goto LABEL_889;
      case 'S':
      case 'V':
        v337 = v234 + 1;
        while (v337 < v272)
        {
          if (*(a10 + 8 * v337++))
          {
            v339 = 1;
            goto LABEL_617;
          }
        }

        v339 = 0;
LABEL_617:
        v265 = a1 + 31616;
        LODWORD(v275) = 83;
        if (!(v664 | v339 | v653))
        {
          goto LABEL_917;
        }

        goto LABEL_868;
      case 'W':
        LODWORD(v275) = 87;
        if (!v652)
        {
          goto LABEL_917;
        }

        goto LABEL_868;
      case 'Z':
        if (v652)
        {
          goto LABEL_868;
        }

        if ((v674 & 9) == 0 && !sub_1A91C(v253, v234, v266, v674) || (v298 & 2) != 0 || !((v663 == 90) | v298 & 1) || (LODWORD(v275) = 90, !sub_1A9D0(v253, v234, a2, v266, 90, v270, v640)))
        {
          LODWORD(v275) = 83;
        }

        goto LABEL_917;
      case '[':
        if (v652)
        {
          goto LABEL_868;
        }

        v402 = v234 + 1;
        while (1)
        {
          v265 = a1 + 31616;
          if (v402 >= v272)
          {
            break;
          }

          if (*(a10 + 8 * v402++))
          {
            goto LABEL_867;
          }
        }

LABEL_762:
        if (!v253[236])
        {
          if ((v674 & 9) != 0 && (v298 & 9) != 0)
          {
            goto LABEL_889;
          }

          goto LABEL_868;
        }

        v404 = v234;
        do
        {
          if (v404 < 1)
          {
            goto LABEL_775;
          }

          --v404;
          v405 = *(v266 + 8);
          v406 = *(v405 + 2 * v404);
          v407 = *(v697 + 4 * _lou_charHash(*(v405 + 2 * v404)));
          if (v407)
          {
            while (1)
            {
              v408 = (v698 + 8 * v407);
              if (*(v408 + 22) == v406)
              {
                break;
              }

              v407 = *(v408 + 3);
              if (!v407)
              {
                goto LABEL_768;
              }
            }
          }

          else
          {
LABEL_768:
            v408 = &unk_28DF8;
            word_28E24 = v406;
          }

          v266 = v703;
        }

        while ((v408[25] & 0x40) != 0);
        v409 = *(v703 + 1);
        v410 = *(v409 + 2 * v404);
        v411 = *(v697 + 4 * _lou_charHash(*(v409 + 2 * v404)));
        if (v411)
        {
          while (1)
          {
            v412 = (v698 + 8 * v411);
            if (v412[22] == v410)
            {
              break;
            }

            v411 = *(v412 + 3);
            if (!v411)
            {
              goto LABEL_773;
            }
          }
        }

        else
        {
LABEL_773:
          v412 = &unk_28DF8;
          word_28E24 = v410;
        }

        v266 = v703;
        if ((v412[12] & 0x2001) == 0)
        {
          v265 = a1 + 31616;
          goto LABEL_868;
        }

LABEL_775:
        v413 = v234 + *(v271 + 50);
        while (2)
        {
          v414 = *(v266 + 16);
          if (v413 >= v414)
          {
            goto LABEL_889;
          }

          v415 = v253[424];
          if (v415)
          {
            v416 = v413 <= v414;
          }

          else
          {
            v416 = 0;
          }

          if (!v416 || v415 < 1)
          {
LABEL_785:
            v425 = v413;
            goto LABEL_786;
          }

          v422 = 0;
          v423 = 1;
          v424 = v660;
          v425 = v413;
          while (2)
          {
            v427 = *v424++;
            v426 = v427;
            if (!v422)
            {
              if (v426)
              {
LABEL_797:
                if (*(*(v266 + 8) + 2 * v425) == v426)
                {
                  v422 = 1;
                }

                else
                {
                  v425 = v413 - 1;
                  v422 = -1;
                }
              }

              else
              {
                v422 = 0;
              }

LABEL_804:
              if (v425 >= v414)
              {
                goto LABEL_785;
              }

              ++v425;
              v623 = v423++ >= v415;
              if (v623)
              {
                goto LABEL_785;
              }

              continue;
            }

            break;
          }

          if (v422 != 1)
          {
            if (v426)
            {
              v422 = -1;
            }

            else
            {
              v425 = v413 - 1;
              v422 = 0;
            }

            goto LABEL_804;
          }

          if (v426)
          {
            goto LABEL_797;
          }

          if (v425 >= v414)
          {
            goto LABEL_889;
          }

LABEL_786:
          v418 = *(v266 + 8);
          v419 = *(v418 + 2 * v425);
          v420 = *(v697 + 4 * _lou_charHash(*(v418 + 2 * v425)));
          if (v420)
          {
            while (1)
            {
              v421 = (v698 + 8 * v420);
              if (*(v421 + 22) == v419)
              {
                break;
              }

              v420 = *(v421 + 3);
              if (!v420)
              {
                goto LABEL_789;
              }
            }
          }

          else
          {
LABEL_789:
            v421 = &unk_28DF8;
            word_28E24 = v419;
          }

          v266 = v703;
          if ((v421[25] & 0x80) != 0)
          {
            v413 = v425 + 1;
            continue;
          }

          break;
        }

        v428 = *(v703 + 1);
        v429 = *(v428 + 2 * v425);
        v430 = _lou_charHash(*(v428 + 2 * v425));
        v265 = a1 + 31616;
        v431 = *(v697 + 4 * v430);
        if (v431)
        {
          while (1)
          {
            v432 = (v698 + 8 * v431);
            if (v432[22] == v429)
            {
              break;
            }

            v431 = *(v432 + 3);
            if (!v431)
            {
              goto LABEL_816;
            }
          }
        }

        else
        {
LABEL_816:
          v432 = &unk_28DF8;
          word_28E24 = v429;
        }

        v266 = v703;
        if ((v432[12] & 0x2001) == 0)
        {
          goto LABEL_868;
        }

LABEL_889:
        v694 = v270;
        if ((v275 & 0xFFFFFFFE) != 0x58)
        {
          goto LABEL_917;
        }

        v464 = v275;
        v465 = v718;
        v466 = *(v718 + 1);
        LODWORD(v467) = v717;
        v468 = *(v466 + 2 * v717);
        v469 = *(v697 + 4 * _lou_charHash(*(v466 + 2 * v717)));
        v43 = a5;
        v36 = a4;
        v686 = v464;
        if (v469)
        {
          while (1)
          {
            v470 = (v698 + 8 * v469);
            if (*(v470 + 22) == v468)
            {
              break;
            }

            v469 = *(v470 + 3);
            if (!v469)
            {
              goto LABEL_893;
            }
          }
        }

        else
        {
LABEL_893:
          v470 = &unk_28DF8;
          word_28E24 = v468;
        }

        if ((v470[24] & 1) == 0)
        {
          v471 = HIDWORD(v706);
          if (HIDWORD(v706))
          {
            v472 = v706;
          }

          else
          {
            v472 = 0;
          }

          if (v467 < v465[4])
          {
            v467 = v467;
            do
            {
              v473 = *(v465 + 1);
              v474 = *(v473 + 2 * v467);
              v475 = *(v697 + 4 * _lou_charHash(*(v473 + 2 * v467)));
              if (v475)
              {
                while (1)
                {
                  v476 = (v698 + 8 * v475);
                  if (*(v476 + 22) == v474)
                  {
                    break;
                  }

                  v475 = *(v476 + 3);
                  if (!v475)
                  {
                    goto LABEL_903;
                  }
                }
              }

              else
              {
LABEL_903:
                v476 = &unk_28DF8;
                word_28E24 = v474;
              }

              if (v476[24])
              {
                break;
              }

              ++v467;
            }

            while (v467 < v465[4]);
          }

          v717 = v472;
          *(a4 + 20) = v471;
          v705 = v707;
          if (!sub_19A3C(v472, v467, a1, &v717, v465, a4, a5, a10, &v716, a13, a14, a2))
          {
            goto LABEL_1223;
          }
        }

        continue;
      case '\\':
        if (!v652)
        {
          LODWORD(v275) = 92;
          if (((v674 | v298) & 2) != 0)
          {
            goto LABEL_917;
          }
        }

        goto LABEL_868;
      case ']':
        v374 = v650;
        if ((v298 & 1) == 0)
        {
          v374 = 1;
        }

        if ((v374 & 1) != 0 || v649 + *(v271 + 52) >= v642)
        {
          goto LABEL_868;
        }

        v375 = v272;
        do
        {
          if (++v375 >= *(v266 + 16))
          {
            goto LABEL_868;
          }

          v376 = *(v266 + 8);
          v377 = *(v376 + 2 * v375);
          v378 = _lou_charHash(*(v376 + 2 * v375));
          v265 = a1 + 31616;
          v379 = *(v697 + 4 * v378);
          if (v379)
          {
            while (1)
            {
              v380 = (v698 + 8 * v379);
              if (*(v380 + 22) == v377)
              {
                break;
              }

              v379 = *(v380 + 3);
              if (!v379)
              {
                goto LABEL_708;
              }
            }
          }

          else
          {
LABEL_708:
            v380 = &unk_28DF8;
            word_28E24 = v377;
          }

          v266 = v703;
        }

        while ((v380[24] & 1) != 0);
        v381 = *(v703 + 1);
        v382 = *(v381 + 2 * v375);
        v383 = _lou_charHash(*(v381 + 2 * v375));
        v265 = a1 + 31616;
        v384 = *(v697 + 4 * v383);
        if (v384)
        {
          while (1)
          {
            v385 = (v698 + 8 * v384);
            if (*(v385 + 22) == v382)
            {
              break;
            }

            v384 = *(v385 + 3);
            if (!v384)
            {
              goto LABEL_713;
            }
          }
        }

        else
        {
LABEL_713:
          v385 = &unk_28DF8;
          word_28E24 = v382;
        }

        LODWORD(v275) = 93;
        v266 = v703;
        if ((v385[24] & 4) != 0)
        {
          goto LABEL_917;
        }

        goto LABEL_868;
      case '^':
        v362 = v650;
        if ((v298 & 1) == 0)
        {
          v362 = 1;
        }

        if (v362)
        {
          goto LABEL_868;
        }

        v388 = v272;
        do
        {
          if (++v388 >= *(v266 + 16))
          {
            goto LABEL_868;
          }

          v389 = *(v266 + 8);
          v390 = *(v389 + 2 * v388);
          v391 = _lou_charHash(*(v389 + 2 * v388));
          v265 = a1 + 31616;
          v392 = *(v697 + 4 * v391);
          if (v392)
          {
            while (1)
            {
              v393 = (v698 + 8 * v392);
              if (*(v393 + 22) == v390)
              {
                break;
              }

              v392 = *(v393 + 3);
              if (!v392)
              {
                goto LABEL_736;
              }
            }
          }

          else
          {
LABEL_736:
            v393 = &unk_28DF8;
            word_28E24 = v390;
          }

          v394 = v393[3];
          v266 = v703;
        }

        while ((v394 & 1) != 0);
        if ((v394 & 0x102) == 0)
        {
          goto LABEL_868;
        }

        LODWORD(v275) = 94;
        v373 = sub_1A9D0(v253, v234, a2, v703, 94, v270, v640);
        goto LABEL_693;
      case '_':
        if (!v644)
        {
          LODWORD(v275) = 95;
          if (v663 != 94 && (v298 & 1) != 0)
          {
            goto LABEL_917;
          }
        }

        goto LABEL_868;
        goto LABEL_762;
      case 'a':
        v363 = v650;
        if ((v298 & 0xB) == 0)
        {
          v363 = 1;
        }

        LODWORD(v275) = 97;
        if ((v363 & 1) == 0)
        {
          goto LABEL_917;
        }

        goto LABEL_868;
      case 'b':
        v364 = v646;
        if ((v298 & 9) == 0)
        {
          v364 = 1;
        }

        LODWORD(v275) = 98;
        if ((v364 & 1) == 0)
        {
          goto LABEL_917;
        }

        goto LABEL_868;
      case 'c':
        v372 = v650;
        if ((v298 & 2) == 0)
        {
          v372 = 1;
        }

        LODWORD(v275) = 99;
        if ((v372 & 1) == 0)
        {
          goto LABEL_917;
        }

        goto LABEL_868;
      case 'd':
        v365 = v646;
        if ((v298 & 2) == 0)
        {
          v365 = 1;
        }

        LODWORD(v275) = 100;
        if ((v365 & 1) == 0)
        {
          goto LABEL_917;
        }

        goto LABEL_868;
      case 'e':
        v361 = v648;
        if ((v298 & 2) == 0)
        {
          v361 = 1;
        }

        LODWORD(v275) = 101;
        if ((v361 & 1) == 0)
        {
          goto LABEL_917;
        }

        goto LABEL_868;
      case 'f':
        v371 = v648;
        if ((v298 & 0xB) == 0)
        {
          v371 = 1;
        }

        LODWORD(v275) = 102;
        if ((v371 & 1) == 0)
        {
          goto LABEL_917;
        }

        goto LABEL_868;
      case 'g':
        v387 = v648;
        if ((v298 & 9) == 0)
        {
          v387 = 1;
        }

        LODWORD(v275) = 103;
        if ((v387 & 1) == 0)
        {
          goto LABEL_917;
        }

        goto LABEL_868;
      case 'h':
        v340 = *(v266 + 8);
        v341 = *(v340 + 2 * v234);
        v342 = _lou_charHash(*(v340 + 2 * v234));
        v265 = a1 + 31616;
        v343 = *(v697 + 4 * v342);
        if (!v343)
        {
          goto LABEL_622;
        }

        while (1)
        {
          v344 = (v698 + 8 * v343);
          if (*(v344 + 22) == v341)
          {
            break;
          }

          v343 = *(v344 + 3);
          if (!v343)
          {
LABEL_622:
            v344 = &unk_28DF8;
            word_28E24 = v341;
            break;
          }
        }

        v266 = v703;
        if ((v344[24] & 8) == 0)
        {
          goto LABEL_868;
        }

        if (v234 >= 1)
        {
          v345 = *(v703 + 1) + 2 * v234;
          v346 = *(v345 - 2);
          v347 = _lou_charHash(*(v345 - 2));
          v265 = a1 + 31616;
          v348 = *(v697 + 4 * v347);
          if (v348)
          {
            while (1)
            {
              v349 = (v698 + 8 * v348);
              if (*(v349 + 22) == v346)
              {
                break;
              }

              v348 = *(v349 + 3);
              if (!v348)
              {
                goto LABEL_628;
              }
            }
          }

          else
          {
LABEL_628:
            v349 = &unk_28DF8;
            word_28E24 = v346;
          }

          v266 = v703;
          if ((v349[24] & 2) != 0)
          {
            goto LABEL_868;
          }
        }

        if (v272 >= *(v266 + 16))
        {
          goto LABEL_868;
        }

        v350 = v234 + v270;
        v351 = a14;
        while (1)
        {
          v352 = *(v266 + 8);
          v353 = *(v352 + 2 * v350);
          v354 = *(v697 + 4 * _lou_charHash(*(v352 + 2 * v350)));
          if (v354)
          {
            while (1)
            {
              v355 = (v698 + 8 * v354);
              if (*(v355 + 22) == v353)
              {
                break;
              }

              v354 = *(v355 + 3);
              if (!v354)
              {
                goto LABEL_635;
              }
            }
          }

          else
          {
LABEL_635:
            v355 = &unk_28DF8;
            word_28E24 = v353;
          }

          v43 = a5;
          v36 = a4;
          if ((v355[24] & 6) != 0)
          {
            break;
          }

          v356 = *(v703 + 1);
          v357 = *(v356 + 2 * v350);
          v358 = _lou_charHash(*(v356 + 2 * v350));
          v265 = a1 + 31616;
          v359 = *(v697 + 4 * v358);
          if (v359)
          {
            while (1)
            {
              v360 = (v698 + 8 * v359);
              if (*(v360 + 22) == v357)
              {
                break;
              }

              v359 = *(v360 + 3);
              if (!v359)
              {
                goto LABEL_641;
              }
            }
          }

          else
          {
LABEL_641:
            v360 = &unk_28DF8;
            word_28E24 = v357;
          }

          v266 = v703;
          if ((v360[24] & 1) == 0 && ++v350 < v703[4])
          {
            continue;
          }

          goto LABEL_868;
        }

        LODWORD(v275) = 104;
        goto LABEL_918;
      case 'i':
        v366 = *(v266 + 8);
        v367 = *(v366 + 2 * v234);
        v368 = _lou_charHash(*(v366 + 2 * v234));
        v265 = a1 + 31616;
        v369 = *(v697 + 4 * v368);
        if (!v369)
        {
          goto LABEL_678;
        }

        while (1)
        {
          v370 = (v698 + 8 * v369);
          if (*(v370 + 22) == v367)
          {
            break;
          }

          v369 = *(v370 + 3);
          if (!v369)
          {
LABEL_678:
            v370 = &unk_28DF8;
            word_28E24 = v367;
            break;
          }
        }

        v266 = v703;
        if ((v370[24] & 8) == 0)
        {
          goto LABEL_868;
        }

        v351 = a14;
        if ((v703[4] - 1) <= v234)
        {
          if ((v234 & 0x80000000) == 0)
          {
            goto LABEL_847;
          }

          goto LABEL_868;
        }

        v395 = *(v703 + 1) + 2 * v234;
        v396 = *(v395 + 2);
        v397 = _lou_charHash(*(v395 + 2));
        v265 = a1 + 31616;
        v398 = *(v697 + 4 * v397);
        if (v398)
        {
          while (1)
          {
            v399 = (v698 + 8 * v398);
            if (*(v399 + 22) == v396)
            {
              break;
            }

            v398 = *(v399 + 3);
            if (!v398)
            {
              goto LABEL_747;
            }
          }
        }

        else
        {
LABEL_747:
          v399 = &unk_28DF8;
          word_28E24 = v396;
        }

        v266 = v703;
        if ((v234 & 0x80000000) != 0 || (v399[3] & 2) != 0)
        {
          goto LABEL_868;
        }

LABEL_847:
        v448 = v234;
        while (1)
        {
          v449 = *(v266 + 8);
          v450 = *(v449 + 2 * v448);
          v451 = *(v697 + 4 * _lou_charHash(*(v449 + 2 * v448)));
          if (v451)
          {
            while (1)
            {
              v452 = (v698 + 8 * v451);
              if (*(v452 + 22) == v450)
              {
                break;
              }

              v451 = *(v452 + 3);
              if (!v451)
              {
                goto LABEL_851;
              }
            }
          }

          else
          {
LABEL_851:
            v452 = &unk_28DF8;
            word_28E24 = v450;
          }

          v43 = a5;
          v36 = a4;
          if ((v452[24] & 6) != 0)
          {
            break;
          }

          v453 = *(v703 + 1);
          v454 = *(v453 + 2 * v448);
          v455 = _lou_charHash(*(v453 + 2 * v448));
          v265 = a1 + 31616;
          v456 = *(v697 + 4 * v455);
          if (v456)
          {
            while (1)
            {
              v457 = (v698 + 8 * v456);
              if (*(v457 + 22) == v454)
              {
                break;
              }

              v456 = *(v457 + 3);
              if (!v456)
              {
                goto LABEL_857;
              }
            }
          }

          else
          {
LABEL_857:
            v457 = &unk_28DF8;
            word_28E24 = v454;
          }

          v266 = v703;
          if (v448 >= 1)
          {
            --v448;
            if ((v457[3] & 1) == 0)
            {
              continue;
            }
          }

          goto LABEL_868;
        }

        LODWORD(v275) = 105;
LABEL_918:
        v688 = v275;
        v477 = v717;
        if (v647)
        {
          v477 = v717 + v694;
          v717 += v694;
        }

        v478 = v705;
        if (v705 <= v477)
        {
          v479 = v718;
          do
          {
            sub_19CA4(0, 1, 1, 0, v478, v253, v477, v479, v36, v43, a10, a13, v351);
            if (a11)
            {
              sub_19CA4(0, 1, 0, 1, v478, v253, v477, v479, v36, v43, a10, a13, v351);
              sub_19CA4(1, 0, 0, 1, v478, v253, v477, v479, v36, v43, a10, a13, v351);
            }

            if (v478 < v477)
            {
              sub_19CA4(1, 0, 1, 0, v478, v253, v477, v479, v36, v43, a10, a13, v351);
            }

            v478 = (v478 + 1);
          }

          while (v477 + 1 != v478);
        }

        LODWORD(v480) = v477 + 1;
        v705 = v477 + 1;
        if (v688 != 96)
        {
          v482 = v718;
          v487 = v253[240];
          if (v487 && v718[4] > v477)
          {
            v488 = *(v718 + 1);
            v489 = *(v488 + 2 * v477);
            v490 = *(v697 + 4 * _lou_charHash(*(v488 + 2 * v477)));
            if (v490)
            {
              while (1)
              {
                v491 = (v698 + 8 * v490);
                if (*(v491 + 22) == v489)
                {
                  break;
                }

                v490 = *(v491 + 3);
                if (!v490)
                {
                  goto LABEL_939;
                }
              }
            }

            else
            {
LABEL_939:
              v491 = &unk_28DF8;
              word_28E24 = v489;
            }

            if ((v674 & 2) != 0 || (v491[3] & 2) == 0)
            {
              v253 = a1;
            }

            else
            {
              v253 = a1;
              if (v482[4] <= v480)
              {
                goto LABEL_1249;
              }

              v492 = *(v482 + 1);
              v493 = *(v492 + 2 * v480);
              v494 = *(v697 + 4 * _lou_charHash(*(v492 + 2 * v480)));
              if (v494)
              {
                while (1)
                {
                  v495 = (v698 + 8 * v494);
                  if (*(v495 + 22) == v493)
                  {
                    break;
                  }

                  v494 = *(v495 + 3);
                  if (!v494)
                  {
                    goto LABEL_946;
                  }
                }
              }

              else
              {
LABEL_946:
                v495 = &unk_28DF8;
                word_28E24 = v493;
              }

              if ((v674 & 4) != 0 || (v495[3] & 2) == 0)
              {
LABEL_1249:
                v496 = *(v482 + 1);
                if (v477 < 1)
                {
                  goto LABEL_956;
                }

                v497 = *(a1 + 2676);
                if (v497 < 1)
                {
                  goto LABEL_956;
                }

                v498 = *(v496 + 2 * v477 - 2);
                if (*(a1 + 2548) != v498)
                {
                  v499 = 0;
                  while (v497 - 1 != v499)
                  {
                    v500 = *(v656 + 2 * v499++);
                    if (v500 == v498)
                    {
                      if (v499 < v497)
                      {
                        goto LABEL_972;
                      }

                      break;
                    }
                  }

LABEL_956:
                  v501 = *(a1 + 3192);
                  v351 = a14;
                  if (v501 >= 1)
                  {
                    v502 = *(v496 + 2 * v477);
                    if (*(a1 + 2680) != v502)
                    {
                      v503 = 0;
                      while (v501 - 1 != v503)
                      {
                        v504 = *(v655 + 2 * v503++);
                        if (v504 == v502)
                        {
                          if (v503 < v501)
                          {
                            goto LABEL_973;
                          }

                          goto LABEL_962;
                        }
                      }

                      goto LABEL_962;
                    }

LABEL_973:
                    v484 = a13;
                    v486 = a10;
                    goto LABEL_974;
                  }

LABEL_962:
                  if (v480 < v482[4])
                  {
                    v505 = *(a1 + 3324);
                    if (v505 >= 1)
                    {
                      v506 = *(v496 + 2 * v480);
                      if (*(a1 + 3196) == v506)
                      {
                        goto LABEL_973;
                      }

                      v507 = 0;
                      while (v505 - 1 != v507)
                      {
                        v508 = *(v657 + 2 * v507++);
                        if (v508 == v506)
                        {
                          if (v507 < v505)
                          {
                            goto LABEL_973;
                          }

                          break;
                        }
                      }
                    }
                  }

                  v509 = v698 + 8 * v487;
                  v484 = a13;
                  v485 = sub_195E0((v509 + 54), 0, *(v509 + 52), 0, v477, v482, v36, v43, a13, a14);
                  goto LABEL_932;
                }
              }
            }
          }

LABEL_972:
          v351 = a14;
          goto LABEL_973;
        }

        v481 = v253[242];
        v482 = v718;
        if (v481)
        {
          sub_195E0((v698 + 8 * v481 + 54), 0, *(v698 + 8 * v481 + 52), 0, v477, v718, v36, v43, a13, v351);
        }

        v483 = v253[240];
        if (!v483)
        {
          v253 = a1;
          goto LABEL_973;
        }

        v484 = a13;
        v485 = sub_195E0((v698 + 8 * v483 + 54), 0, *(v698 + 8 * v483 + 52), 0, v477, v482, v36, v43, a13, v351);
        v253 = a1;
LABEL_932:
        v486 = a10;
        if (!v485)
        {
          goto LABEL_1223;
        }

LABEL_974:
        sub_19CA4(1, 0, 1, 0, v477, v253, v477, v482, v36, v43, v486, v484, v351);
        v510 = v253[241];
        if (v253[237])
        {
          if (v253[241])
          {
            goto LABEL_976;
          }
        }

        else if (v253[241])
        {
          if (v482[4] > v477)
          {
            v522 = *(v482 + 1);
            v523 = *(v522 + 2 * v477);
            v524 = *(v697 + 4 * _lou_charHash(*(v522 + 2 * v477)));
            if (v524)
            {
              while (1)
              {
                v525 = (v698 + 8 * v524);
                if (*(v525 + 22) == v523)
                {
                  break;
                }

                v524 = *(v525 + 3);
                if (!v524)
                {
                  goto LABEL_994;
                }
              }
            }

            else
            {
LABEL_994:
              v525 = &unk_28DF8;
              word_28E24 = v523;
            }

            v253 = a1;
            v351 = a14;
            if ((v525[24] & 4) != 0)
            {
              v526 = (v674 & 4) != 0 || v663 == 107;
              v527 = !v526;
              if ((v663 == 84 || v527) && !sub_195E0((v698 + 8 * v510 + 54), 0, *(v698 + 8 * v510 + 52), 0, v477, v482, v36, v43, a13, a14))
              {
                goto LABEL_1223;
              }
            }
          }

          if (v253[237])
          {
            v510 = v253[241];
            if (v253[241])
            {
LABEL_976:
              v511 = HIDWORD(v708);
              v512 = *(v482 + 1);
              v513 = v477;
              v514 = *(v512 + 2 * v477);
              v515 = _lou_charHash(*(v512 + 2 * v477));
              v516 = *(v697 + 4 * v515);
              if (v511)
              {
                if (*(v697 + 4 * v515))
                {
                  while (1)
                  {
                    v517 = (v698 + 8 * v516);
                    if (*(v517 + 22) == v514)
                    {
                      break;
                    }

                    v516 = v517[3];
                    if (!v516)
                    {
                      goto LABEL_980;
                    }
                  }
                }

                else
                {
LABEL_980:
                  v517 = &unk_28DF8;
                  word_28E24 = v514;
                }

                v43 = a5;
                v36 = a4;
                if ((v517[6] & 0x4000904) != 0)
                {
                  goto LABEL_1038;
                }

                HIDWORD(v708) = 0;
                v510 = v253[243];
                if (!v510)
                {
                  goto LABEL_1038;
                }

                v518 = *(v482 + 1);
                v519 = *(v518 + 2 * v477);
                v520 = *(v697 + 4 * _lou_charHash(*(v518 + 2 * v477)));
                if (v520)
                {
                  while (1)
                  {
                    v521 = (v698 + 8 * v520);
                    if (*(v521 + 22) == v519)
                    {
                      break;
                    }

                    v520 = *(v521 + 3);
                    if (!v520)
                    {
                      goto LABEL_986;
                    }
                  }
                }

                else
                {
LABEL_986:
                  v521 = &unk_28DF8;
                  word_28E24 = v519;
                }

                if ((v521[25] & 0x10) == 0)
                {
                  goto LABEL_1038;
                }
              }

              else
              {
                if (*(v697 + 4 * v515))
                {
                  while (1)
                  {
                    v528 = (v698 + 8 * v516);
                    if (v528[22] == v514)
                    {
                      break;
                    }

                    v516 = *(v528 + 3);
                    if (!v516)
                    {
                      goto LABEL_1011;
                    }
                  }
                }

                else
                {
LABEL_1011:
                  v528 = &unk_28DF8;
                  word_28E24 = v514;
                }

                v43 = a5;
                v36 = a4;
                if ((v528[12] & 0x104) == 0)
                {
                  v536 = *(v482 + 1);
                  v537 = *(v536 + 2 * v477);
                  v538 = *(v697 + 4 * _lou_charHash(*(v536 + 2 * v477)));
                  if (!v538)
                  {
LABEL_1023:
                    v539 = &unk_28DF8;
                    word_28E24 = v537;
                    goto LABEL_1024;
                  }

                  while (1)
                  {
                    v539 = (v698 + 8 * v538);
                    if (*(v539 + 22) == v537)
                    {
                      break;
                    }

                    v538 = *(v539 + 3);
                    if (!v538)
                    {
                      goto LABEL_1023;
                    }
                  }

LABEL_1024:
                  while ((v539[25] & 8) != 0)
                  {
                    if (++v513 >= v482[4])
                    {
                      break;
                    }

                    v540 = *(v482 + 1);
                    v541 = *(v540 + 2 * v513);
                    v542 = *(v697 + 4 * _lou_charHash(*(v540 + 2 * v513)));
                    if (v542)
                    {
                      while (1)
                      {
                        v543 = (v698 + 8 * v542);
                        if (v543[22] == v541)
                        {
                          break;
                        }

                        v542 = *(v543 + 3);
                        if (!v542)
                        {
                          goto LABEL_1029;
                        }
                      }
                    }

                    else
                    {
LABEL_1029:
                      v543 = &unk_28DF8;
                      word_28E24 = v541;
                    }

                    if ((v543[12] & 0x104) != 0)
                    {
                      v535 = (&v708 + 4);
                      goto LABEL_1036;
                    }

                    v544 = *(v482 + 1);
                    v537 = *(v544 + 2 * v513);
                    v545 = *(v697 + 4 * _lou_charHash(*(v544 + 2 * v513)));
                    if (!v545)
                    {
                      goto LABEL_1023;
                    }

                    while (1)
                    {
                      v539 = (v698 + 8 * v545);
                      if (*(v539 + 22) == v537)
                      {
                        break;
                      }

                      v545 = *(v539 + 3);
                      if (!v545)
                      {
                        goto LABEL_1023;
                      }
                    }
                  }

                  goto LABEL_1038;
                }

                HIDWORD(v708) = 1;
                v529 = v253[242];
                v530 = v253[243];
                if (v529)
                {
                  v531 = v530 == 0;
                }

                else
                {
                  v531 = 1;
                }

                if (!v531)
                {
                  v532 = v698 + 8 * v529;
                  v533 = v698 + 8 * v530;
                  v534 = *(v532 + 52);
                  if (v534 == *(v533 + 52) && !memcmp((v532 + 54), (v533 + 54), 2 * v534))
                  {
                    v535 = &v708;
LABEL_1036:
                    *v535 = 1;
                  }
                }
              }

              sub_195E0((v698 + 8 * v510 + 54), 0, *(v698 + 8 * v510 + 52), 0, v477, v482, v36, v43, a13, v351);
            }
          }
        }

LABEL_1038:
        v546 = v688;
        if (v688 == 74)
        {
LABEL_1039:
          if (qword_2DC00)
          {
            v547 = dword_2DBF8;
            if (dword_2DBF8 < dword_2DC08)
            {
              ++dword_2DBF8;
              *(qword_2DC00 + 8 * v547) = v716;
            }
          }

          if (!sub_18884(v253, &v718, v36, v43, 74, &v716, v715, v714, v713, &v717, v711, v712, HIDWORD(v712), a13, v351, v710, v709, v639))
          {
            goto LABEL_1223;
          }

          v548 = *v482;
          if (*v718 != v548 && v548 != *a3)
          {
            sub_12A90(v548);
          }

          v668 = v717 != v477;
          v686 = 74;
          continue;
        }

        v549 = a1 + 31616;
        if (!v668)
        {
          goto LABEL_1053;
        }

        v550 = v716;
        v551 = v253[5649];
        if (!v551)
        {
          goto LABEL_1052;
        }

        do
        {
          v552 = (v549 + 8 * v551);
          v553 = v552[11];
          if (sub_17C38(v253, v477, v482, v553, v552, &v715, &v714, &v713, &v711, &v710, &v709))
          {
            v694 = 0;
            v716 = v552;
            v546 = v553;
            v113 = v553 == 74;
            v43 = a5;
            v36 = a4;
            LODWORD(v480) = v477 + 1;
            if (!v113)
            {
              goto LABEL_1057;
            }

            goto LABEL_1039;
          }

          v551 = v552[4];
          v549 = a1 + 31616;
        }

        while (v551);
        v716 = v552;
        v43 = a5;
        v36 = a4;
        v546 = v688;
        LODWORD(v480) = v477 + 1;
LABEL_1052:
        v716 = v550;
LABEL_1053:
        if (qword_2DC00)
        {
          v554 = dword_2DBF8;
          if (dword_2DBF8 < dword_2DC08)
          {
            ++dword_2DBF8;
            *(qword_2DC00 + 8 * v554) = v716;
          }
        }

LABEL_1057:
        v555 = *(v482 + 1);
        v556 = *(v555 + 2 * v477);
        v557 = *(v697 + 4 * _lou_charHash(*(v555 + 2 * v477)));
        if (v557)
        {
          while (1)
          {
            v558 = (v698 + 8 * v557);
            if (v558[22] == v556)
            {
              break;
            }

            v557 = *(v558 + 3);
            if (!v557)
            {
              goto LABEL_1060;
            }
          }
        }

        else
        {
LABEL_1060:
          v558 = &unk_28DF8;
          word_28E24 = v556;
        }

        if ((v558[12] & 0x2001) != 0)
        {
          LODWORD(v708) = 0;
        }

        if (v546 <= 86)
        {
          if ((v546 - 80) < 2)
          {
            v659 = v477 - (v647 + v694);
          }

          else if (v546 == 61 || v546 == 79)
          {
            LODWORD(v708) = 0;
          }

LABEL_1079:
          if (v546 == 117)
          {
            if (!sub_19494(*(*(v482 + 1) + 2 * v477), v253, v477, v482, v36, v43, a13, v351, a2))
            {
              goto LABEL_1223;
            }

            v717 = v480;
            v562 = 117;
            goto LABEL_1208;
          }

          if (v546 != 73)
          {
            v563 = v716;
            v564 = v716 + 2 * v694 + 54;
            v565 = *(v716 + 26);
            if (v546 == 81)
            {
              v566 = 2 * v694 + 56;
              v567 = 1;
              do
              {
                v568 = *(v716 + v566);
                ++v567;
                v566 += 2;
              }

              while (v568 != 44);
              v564 += 2 * v567;
              v565 -= v567;
              v546 = 81;
            }

            goto LABEL_1109;
          }

          v480 = (v694 + v477);
          v717 = v694 + v477;
          v559 = *(v716 + 26);
          if (v559 >= 1)
          {
            v560 = v716 + v694 + 27;
            do
            {
              v561 = *v560++;
              if (!sub_19494(v561, v253, v480, v482, v36, v43, a13, v351, a2))
              {
                goto LABEL_1223;
              }
            }

            while (--v559);
          }

          v562 = 73;
LABEL_1208:
          if (a7)
          {
            v622 = *(a7 + v480);
            if ((v622 - 48) <= 9)
            {
              *(a8 + *(v36 + 20)) = v622;
            }
          }

          v623 = (v562 - 62) >= 0xA && (v562 - 83) >= 0x23;
          v624 = v663;
          v686 = v562;
          if (!v623)
          {
            v624 = v562;
          }

          v663 = v624;
          goto LABEL_433;
        }

        if (v546 > 107)
        {
          if (v546 == 109)
          {
            if (!v253[237])
            {
              v575 = v253[241];
              if (v575)
              {
                if (!sub_195E0((v698 + 8 * v575 + 2 * *(v698 + 8 * v575 + 50) + 54), *(v698 + 8 * v575 + 50), *(v698 + 8 * v575 + 52), 0, v477, v482, v36, v43, a13, v351))
                {
                  goto LABEL_1223;
                }
              }
            }

            v546 = 107;
          }

          else
          {
            if (v546 != 108)
            {
              goto LABEL_1079;
            }

            if (v253[240] && (sub_17708(*(*(v482 + 1) + 2 * v477), v253)[12] & 2) != 0)
            {
              --*(v36 + 20);
            }

            v546 = 108;
          }

          goto LABEL_1108;
        }

        if (v546 == 87)
        {
          v668 = 1;
          v686 = 87;
          if (!v708)
          {
            sub_1A240(v253, &v717, v36, a2, v482, &v706, &v708, &v705);
            v668 = 1;
            v686 = 87;
          }

          continue;
        }

        if (v546 != 90)
        {
          goto LABEL_1079;
        }

        if (v663 != 90)
        {
          v546 = 90;
LABEL_1108:
          v563 = v716;
          v564 = v716 + 2 * v694 + 54;
          v565 = *(v716 + 26);
          goto LABEL_1109;
        }

        v569 = *(v36 + 20);
        if (v569 > 0)
        {
          v570 = 0;
          v571 = *(v36 + 8);
          do
          {
            if (!sub_199D0(*(v571 + 2 * v569 - 2), v253))
            {
              break;
            }

            v571 = *(v36 + 8);
            v572 = *(v36 + 20);
            if (*(v571 + 2 * v572 - 2) == -1)
            {
              v570 = 1;
            }

            v573 = __OFSUB__(v572, 1);
            v569 = v572 - 1;
            *(v36 + 20) = v569;
          }

          while (!((v569 < 0) ^ v573 | (v569 == 0)));
          if (v570)
          {
            v574 = *(v36 + 20);
            *(*(v36 + 8) + 2 * v574) = -1;
            *(v36 + 20) = v574 + 1;
          }

          goto LABEL_1079;
        }

        v563 = v716;
        v564 = v716 + 2 * v694 + 54;
        v565 = *(v716 + 26);
        v546 = 90;
LABEL_1109:
        v689 = v546;
        if (v565)
        {
          if (v647)
          {
            if (!sub_195E0(v564, 0, v565, 0, v477, v482, v36, v43, a13, v351))
            {
              goto LABEL_1223;
            }

LABEL_1126:
            v562 = v546;
            if (v546 > 92)
            {
              if ((v546 - 93) < 2)
              {
                if (v477 < v482[4])
                {
                  v477 = v477;
                  v604 = *(v482 + 1);
                  do
                  {
                    v605 = *(v604 + 2 * v477);
                    v606 = *(v697 + 4 * _lou_charHash(*(v604 + 2 * v477)));
                    if (v606)
                    {
                      while (1)
                      {
                        v607 = (v698 + 8 * v606);
                        if (*(v607 + 22) == v605)
                        {
                          break;
                        }

                        v606 = *(v607 + 3);
                        if (!v606)
                        {
                          goto LABEL_1162;
                        }
                      }
                    }

                    else
                    {
LABEL_1162:
                      v607 = &unk_28DF8;
                      word_28E24 = v605;
                    }

                    if ((v607[24] & 1) == 0)
                    {
                      break;
                    }

                    v604 = *(v482 + 1);
                    if (*(v604 + 2 * v477) == -1)
                    {
                      break;
                    }

                    ++v477;
                  }

                  while (v477 < v482[4]);
                }

                v717 = v477;
              }
            }

            else
            {
              switch(v546)
              {
                case 'O':
                  v608 = v482[4] - v694;
                  if (v608 > a15 && (a2 & 0x22) != 0)
                  {
                    v608 = a15 - 1;
                  }

                  if (v477 <= v608)
                  {
                    v610 = v477;
                    v611 = v608;
                    while (sub_17B14(v563 + 54, *(v482 + 1) + 2 * v610, v694, a1))
                    {
                      if (*a14)
                      {
                        v477 = v610 + v694;
                      }

                      else
                      {
                        v612 = *a13;
                        v477 = v610 + v694;
                        if (v610 <= v612 && v477 > v612)
                        {
                          *a14 = 1;
                          *a13 = *(v36 + 20) - 1;
                        }
                      }

                      v610 = v477;
                      if (v477 > v611)
                      {
                        goto LABEL_1206;
                      }
                    }

                    LODWORD(v477) = v610;
                  }

LABEL_1206:
                  v717 = v477;
                  v562 = 79;
                  break;
                case 'P':
LABEL_1149:
                  v600 = a15;
                  if (v482[4] < a15)
                  {
                    v600 = v482[4];
                  }

                  if ((a2 & 0x22) != 0)
                  {
                    v601 = v600;
                  }

                  else
                  {
                    v601 = v482[4];
                  }

                  v602 = v717;
                  v603 = v717 + v647;
                  if ((v717 + v647) <= v601)
                  {
                    v614 = 0;
                    v615 = *(v482 + 1);
                    v616 = v717 - 1;
                    do
                    {
                      if (!sub_17B14(v615 + 2 * v659, v615 + 2 * v602, v647, a1))
                      {
                        break;
                      }

                      if (v614)
                      {
                        v617 = v616 + 1;
                        while (v617 < (v602 + v647 - 1))
                        {
                          if (*(a10 + 8 * v617++))
                          {
                            goto LABEL_1155;
                          }
                        }
                      }

                      if (!*a14 && *a13 >= v602 - v694 && *a13 < v603)
                      {
                        *a14 = 1;
                        *a13 = *(a4 + 20) - 1;
                      }

                      v602 = v603 + v694;
                      if (v603 + v694 > v601)
                      {
                        break;
                      }

                      v615 = *(v482 + 1);
                      v620 = memcmp(v563 + 54, (v615 + 2 * v603), 2 * v694);
                      v603 = v602 + v647;
                      v616 += v647 + v694;
                      v614 = 1;
                    }

                    while (!v620 && v603 <= v601);
                  }

LABEL_1155:
                  LODWORD(v480) = v602 - v694;
                  v717 = v602 - v694;
                  v43 = a5;
                  v36 = a4;
                  v562 = v689;
                  goto LABEL_1208;
                case 'Q':
                  v581 = 0;
                  v582 = 0;
                  v583 = v563 + 2 * v694;
                  v584 = -1;
                  v585 = 4;
                  do
                  {
                    v586 = *&v583[v582 + 56];
                    v587 = v585;
                    ++v584;
                    v582 += 2;
                    ++v581;
                    ++v585;
                  }

                  while (v586 != 44);
                  v588 = *(v36 + 20);
                  if (v588 + v584 + 1 > *(v36 + 16))
                  {
                    goto LABEL_1223;
                  }

                  if (v588 > 0)
                  {
                    v589 = 2 * v581 - 2;
                    v590 = v661 + 4 * v581;
                    while (1)
                    {
                      v591 = *(v661 + 4 * v588);
                      if (v591 < v659)
                      {
                        break;
                      }

                      *(*(v36 + 8) + 2 * v588 + v589) = *(*(v36 + 8) + 2 * v588 - 2);
                      *(v590 + 4 * v588--) = v591;
                      if ((v588 + 1) <= 1)
                      {
                        LODWORD(v588) = 0;
                        break;
                      }
                    }
                  }

                  memcpy((*(v36 + 8) + 2 * v588), v583 + 54, v582);
                  v592 = *(v43 + 4 * v588);
                  v593 = vdupq_n_s64(v584);
                  v594 = v587 & 0xFFFFFFFFFFFFFFFCLL;
                  v595 = xmmword_1DCF0;
                  v596 = xmmword_1DDA0;
                  v597 = (v654 + 4 * v588);
                  do
                  {
                    v598 = vmovn_s64(vcgeq_u64(v593, v595));
                    if (vuzp1_s16(v598, *v593.i8).u8[0])
                    {
                      *(v597 - 2) = v592;
                    }

                    if (vuzp1_s16(v598, *&v593).i8[2])
                    {
                      *(v597 - 1) = v592;
                    }

                    if (vuzp1_s16(*&v593, vmovn_s64(vcgeq_u64(v593, *&v596))).i32[1])
                    {
                      *v597 = v592;
                      v597[1] = v592;
                    }

                    v599 = vdupq_n_s64(4uLL);
                    v596 = vaddq_s64(v596, v599);
                    v595 = vaddq_s64(v595, v599);
                    v597 += 4;
                    v594 -= 4;
                  }

                  while (v594);
                  *(v36 + 20) += v584 + 1;
                  if (*a14 && *a13 >= v588)
                  {
                    *a13 += v584 + 1;
                  }

                  goto LABEL_1149;
              }
            }

            LODWORD(v480) = v477;
            goto LABEL_1208;
          }

          if (!sub_195E0(v564, v694, v565, 0, v477, v482, v36, v43, a13, v351))
          {
            goto LABEL_1223;
          }

          LODWORD(v477) = v694 + v477;
LABEL_1125:
          v717 = v477;
          goto LABEL_1126;
        }

        if (v694 < 1)
        {
          goto LABEL_1126;
        }

        v576 = v717;
        if (!sub_19494(*(*(v482 + 1) + 2 * v477), v253, v477, v482, v36, v43, a13, a14, a2))
        {
          goto LABEL_1246;
        }

        v577 = v477 + 1;
        v578 = 1;
        do
        {
          if (v577 >= v482[4] || v578 >= v694)
          {
            LODWORD(v477) = v477 + v578;
            goto LABEL_1125;
          }
        }

        while (sub_19494(*(*(v482 + 1) + 2 * v577++), v253, (v477 + v578++), v482, v36, v43, a13, a14, a2));
        v576 = v477 + v578 - 1;
LABEL_1246:
        v717 = v576;
LABEL_1223:
        v230 = HIDWORD(v706);
LABEL_1224:
        LODWORD(v626) = v717;
        if (v230 && v717 < v718[4])
        {
          v627 = *(v718 + 1);
          v628 = *(v627 + 2 * v717);
          v629 = *(v697 + 4 * _lou_charHash(*(v627 + 2 * v717)));
          v630 = a3;
          if (v629)
          {
            while (1)
            {
              v631 = (v698 + 8 * v629);
              if (*(v631 + 22) == v628)
              {
                break;
              }

              v629 = *(v631 + 3);
              if (!v629)
              {
                goto LABEL_1229;
              }
            }
          }

          else
          {
LABEL_1229:
            v631 = &unk_28DF8;
            word_28E24 = v628;
          }

          if ((v631[24] & 1) == 0)
          {
            LODWORD(v626) = v706;
            *(v36 + 20) = v230;
          }
        }

        else
        {
          v630 = a3;
        }

        v632 = v718;
        if (v626 >= v718[4])
        {
          v633 = a12;
        }

        else
        {
          v626 = v626;
          v633 = a12;
          do
          {
            v634 = *(v632 + 1);
            v635 = *(v634 + 2 * v626);
            v636 = *(v697 + 4 * _lou_charHash(*(v634 + 2 * v626)));
            if (v636)
            {
              while (1)
              {
                v637 = (v698 + 8 * v636);
                if (*(v637 + 22) == v635)
                {
                  break;
                }

                v636 = *(v637 + 3);
                if (!v636)
                {
                  goto LABEL_1238;
                }
              }
            }

            else
            {
LABEL_1238:
              v637 = &unk_28DF8;
              word_28E24 = v635;
            }

            if ((v637[24] & 1) == 0)
            {
              break;
            }

            ++v626;
          }

          while (v632[4] != v626);
        }

        *v633 = v626;
        result = *v632;
        if (result != *v630)
        {
          return sub_12A90(result);
        }

        return result;
      case 'j':
        LODWORD(v275) = 106;
        if ((v674 & 9) != 0 && (v298 & 4) != 0)
        {
          goto LABEL_917;
        }

        goto LABEL_868;
      case 'k':
        v386 = v645;
        if ((v298 & 4) == 0)
        {
          v386 = 1;
        }

        LODWORD(v275) = 107;
        if ((v386 & 1) == 0)
        {
          goto LABEL_917;
        }

        goto LABEL_868;
      case 'l':
        LODWORD(v275) = 108;
        if (((v663 != 84) & ((v674 & 4) >> 2)) != 0)
        {
          goto LABEL_917;
        }

        goto LABEL_868;
      case 'm':
        if ((v298 & 4) == 0)
        {
          goto LABEL_868;
        }

        if ((v674 & 4) != 0)
        {
          LODWORD(v275) = 107;
        }

        else
        {
          LODWORD(v275) = 109;
        }

        goto LABEL_917;
      case 'p':
        if (v652)
        {
          goto LABEL_868;
        }

        v400 = v234 + 1;
        while (v400 < v272)
        {
          if (*(a10 + 8 * v400++))
          {
            goto LABEL_867;
          }
        }

        v458 = (v698 + 8 * *(v271 + 40));
        if (!_lou_pattern_check(*(v266 + 8), v234 - 1, 0xFFFFFFFFLL, 0xFFFFFFFFLL, (v458 + 1), v253))
        {
          goto LABEL_867;
        }

        v373 = _lou_pattern_check(*(v266 + 8), v234 + *(v271 + 50), *(v266 + 16), 1, &v458[*v458], v253);
        LODWORD(v275) = 112;
LABEL_693:
        v265 = a1 + 31616;
        if (v373)
        {
          goto LABEL_917;
        }

        goto LABEL_868;
      default:
        goto LABEL_868;
    }
  }
}

uint64_t lou_translatePrehyphenated(char *a1, unsigned __int16 *a2, unsigned int *a3, unsigned __int16 *a4, int *a5, __int16 *a6, _BYTE *a7, void *__b, uint64_t a9, unsigned int *a10, uint64_t a11, uint64_t a12, unsigned int a13)
{
  v15 = a6;
  v17 = a4;
  v21 = a9;
  if (a11)
  {
    if (a12)
    {
      if (a9)
      {
        v22 = 0;
      }

      else
      {
        v33 = a7;
        v24 = malloc_type_malloc(4 * *a5, 0x100004052888210uLL);
        v17 = a4;
        v15 = a6;
        a7 = v33;
        v21 = v24;
        v22 = v24;
        if (!v24)
        {
          _lou_outOfMemory();
        }
      }

      v34 = v22;
      if (_lou_translate(a1, a1, a2, a3, v17, a5, v15, a7, __b, v21, a10, a13, 0, 0) && *a5 >= 1)
      {
        v25 = 0;
        v26 = 0;
        v27 = v34;
        while (1)
        {
          v28 = *(v21 + 4 * v25);
          if (v28 < v26)
          {
            break;
          }

          if (v28 <= v26)
          {
            v29 = 48;
          }

          else
          {
            v29 = *(a11 + v28);
          }

          *(a12 + v25++) = v29;
          v26 = v28;
          if (v25 >= *a5)
          {
            v23 = 1;
            if (v34)
            {
              goto LABEL_19;
            }

            return v23;
          }
        }

        v23 = 0;
        if (v34)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v23 = 1;
        v27 = v34;
        if (v34)
        {
LABEL_19:
          free(v27);
        }
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    _lou_translate(a1, a1, a2, a3, a4, a5, a6, a7, __b, a9, a10, a13, 0, 0);
    return 1;
  }

  return v23;
}

uint64_t lou_hyphenate(char *a1, unsigned __int16 *a2, int a3, _BYTE *a4, int a5)
{
  Table = lou_getTable(a1);
  result = 0;
  if (a4)
  {
    if (a2)
    {
      if (Table)
      {
        result = 0;
        if (a3 <= 99)
        {
          if (*(Table + 2544))
          {
            if (a5)
            {
              v51 = a3;
              v52 = 100;
              v11 = malloc_type_malloc(0x190uLL, 0x100004052888210uLL);
              if (!lou_backTranslate(a1, a2, &v51, v53, &v52, 0, 0, 0, v11, 0, 0))
              {
                free(v11);
                return 0;
              }

              v12 = malloc_type_malloc(v52 + 1, 0x100004077774924uLL);
              v13 = v52;
            }

            else
            {
              __memcpy_chk();
              v11 = 0;
              v52 = a3;
              v13 = a3;
              v12 = a4;
            }

            v14 = v13 < 1;
            v47 = a3;
            v48 = a4;
            v46 = v11;
            v15 = 0;
            if (!v14)
            {
              do
              {
                v12[v15++] = 48;
              }

              while (v15 < v52);
            }

            LODWORD(v16) = 0;
            v12[v15] = 0;
            v17 = Table + 13608;
            v18 = Table + 31616;
            v49 = v12;
            while (1)
            {
              v19 = v52;
              if (v16 < v52)
              {
                v16 = v16;
                do
                {
                  v20 = v53[v16];
                  v21 = *(v17 + 4 * _lou_charHash(v53[v16]));
                  if (v21)
                  {
                    while (1)
                    {
                      v22 = (v18 + 8 * v21);
                      if (*(v22 + 22) == v20)
                      {
                        break;
                      }

                      v21 = *(v22 + 3);
                      if (!v21)
                      {
                        goto LABEL_18;
                      }
                    }
                  }

                  else
                  {
LABEL_18:
                    word_28E24 = v20;
                    v22 = &unk_28DF8;
                  }

                  v19 = v52;
                  if ((v22[24] & 2) != 0)
                  {
                    break;
                  }

                  ++v16;
                }

                while (v16 < v52);
              }

              if (v16 == v19)
              {
                break;
              }

              v23 = v16 + 1;
              LODWORD(v24) = v23;
              if (v23 < v19)
              {
                v24 = v23;
                do
                {
                  v25 = v53[v24];
                  v26 = *(v17 + 4 * _lou_charHash(v53[v24]));
                  if (v26)
                  {
                    while (1)
                    {
                      v27 = (v18 + 8 * v26);
                      if (*(v27 + 22) == v25)
                      {
                        break;
                      }

                      v26 = *(v27 + 3);
                      if (!v26)
                      {
                        goto LABEL_27;
                      }
                    }
                  }

                  else
                  {
LABEL_27:
                    word_28E24 = v25;
                    v27 = &unk_28DF8;
                  }

                  if ((v27[24] & 2) == 0)
                  {
                    break;
                  }

                  ++v24;
                }

                while (v24 < v52);
              }

              result = sub_17768(&v53[v16], v24 - v16, &v12[v16], Table);
              if (!result)
              {
                return result;
              }

              v28 = v16 - 2;
              if (v16 >= 2)
              {
                v29 = v53[(v16 - 1)];
                for (i = *(v17 + 4 * _lou_charHash(v53[(v16 - 1)])); i; i = v31[3])
                {
                  v31 = (v18 + 8 * i);
                  if (*(v31 + 22) == v29)
                  {
                    goto LABEL_36;
                  }
                }

                word_28E24 = v29;
                v31 = &unk_28DF8;
LABEL_36:
                while (1)
                {
                  v32 = v31[5];
                  if (!v32)
                  {
                    break;
                  }

                  v31 = (v18 + 8 * v32);
                  if (v31[11] == 110)
                  {
                    v33 = v53[v28];
                    v34 = *(v17 + 4 * _lou_charHash(v53[v28]));
                    if (v34)
                    {
                      while (1)
                      {
                        v35 = (v18 + 8 * v34);
                        if (*(v35 + 22) == v33)
                        {
                          break;
                        }

                        v34 = *(v35 + 3);
                        if (!v34)
                        {
                          goto LABEL_41;
                        }
                      }
                    }

                    else
                    {
LABEL_41:
                      word_28E24 = v33;
                      v35 = &unk_28DF8;
                    }

                    if ((v35[24] & 2) != 0)
                    {
                      v36 = 50;
                      goto LABEL_44;
                    }

                    break;
                  }
                }
              }

              v36 = 48;
LABEL_44:
              v12 = v49;
              v49[v16] = v36;
              if (v23 < v24)
              {
                v37 = &v49[v23];
                v38 = ~v16 + v24;
                do
                {
                  *v37 = *v37 & 1 | 0x30;
                  ++v37;
                  --v38;
                }

                while (v38);
              }

              if (v24 == v52)
              {
                v19 = v24;
                break;
              }

              v49[v24] = 48;
              LODWORD(v16) = v24 + 1;
            }

            if (a5)
            {
              if (v47 < 1)
              {
                v39 = 0;
              }

              else
              {
                v39 = v47;
                memset(v48, 48, v47);
              }

              v48[v39] = 0;
              if (v19 >= 1)
              {
                v40 = -1;
                v41 = v46;
                v42 = v12;
                v43 = v19;
                do
                {
                  v45 = *v41++;
                  v44 = v45;
                  if (v45 > v47 || v44 < 0)
                  {
                    break;
                  }

                  if (v44 > v40)
                  {
                    v48[v44] = *v42;
                    v40 = v44;
                  }

                  ++v42;
                  --v43;
                }

                while (v43);
              }

              free(v12);
              free(v46);
            }

            return 1;
          }
        }
      }
    }
  }

  return result;
}

unsigned __int16 *sub_17708(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = *(a2 + 4 * _lou_charHash(a1) + 13608);
  if (v4)
  {
    while (1)
    {
      result = (a2 + 31616 + 8 * v4);
      if (result[22] == v3)
      {
        break;
      }

      v4 = *(result + 3);
      if (!v4)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    result = &unk_28DF8;
    word_28E24 = v3;
  }

  return result;
}

uint64_t sub_17768(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  result = 0;
  if (a2 <= 2045 && *(a4 + 2544))
  {
    v31 = *(a4 + 2544);
    v8 = a4 + 31616;
    v9 = malloc_type_calloc(a2 + 3, 2uLL, 0x1000040BDFB0063uLL);
    *v9 = 46;
    v32 = a2;
    if (a2 >= 1)
    {
      v10 = 0;
      do
      {
        v11 = *(a1 + 2 * v10);
        v12 = *(a4 + 13608 + 4 * _lou_charHash(*(a1 + 2 * v10)));
        if (v12)
        {
          while (1)
          {
            v13 = (v8 + 8 * v12);
            if (v13[22] == v11)
            {
              break;
            }

            v12 = *(v13 + 3);
            if (!v12)
            {
              goto LABEL_8;
            }
          }
        }

        else
        {
LABEL_8:
          word_28E24 = v11;
          v13 = &unk_28DF8;
        }

        v9[v10 + 1] = sub_105E0(a4, v13);
        *(a3 + v10++) = 48;
      }

      while (v10 != a2);
    }

    v9[a2 + 1] = 46;
    if (a2 >= -1)
    {
      v14 = 0;
      LODWORD(v15) = 0;
      v16 = (a2 + 2);
      v17 = a4 + 31618;
      v18 = 1;
      v19 = v8 + 8 * v31;
      do
      {
        if (v15 == 0xFFFF)
        {
LABEL_13:
          LODWORD(v15) = 0;
        }

        else
        {
          while (1)
          {
            v20 = (v19 + 16 * v15);
            v21 = *v20;
            if (v21)
            {
              v22 = *(v20 + 7);
              if (*(v20 + 7))
              {
                break;
              }
            }

LABEL_19:
            LODWORD(v15) = *(v20 + 6);
            if (v15 == 0xFFFF)
            {
              goto LABEL_13;
            }
          }

          v23 = (v17 + 8 * v21);
          while (*(v23 - 1) != v9[v14])
          {
            v23 += 2;
            if (!--v22)
            {
              goto LABEL_19;
            }
          }

          v15 = *v23;
          v24 = *(v19 + 16 * v15 + 8);
          if (v24)
          {
            v25 = (v8 + 8 * v24);
            v26 = strlen(v25);
            LODWORD(v27) = v32 + ~v14 + v26;
            v27 = v27 >= v26 ? v26 : v27;
            if (v27 >= 1)
            {
              v28 = 0;
              v29 = a3 + v18 - v26;
              do
              {
                v30 = v25[v28];
                if (*(v29 + v28) < v30)
                {
                  *(v29 + v28) = v30;
                }

                ++v28;
              }

              while (v28 < v27);
            }
          }
        }

        ++v14;
        ++v18;
      }

      while (v14 != v16);
    }

    *(a3 + v32) = 0;
    free(v9);
    return 1;
  }

  return result;
}

uint64_t lou_dotsToChar(const char *a1, unsigned __int16 *a2, __int16 *a3, int a4)
{
  result = 0;
  if (a1)
  {
    v6 = a2;
    if (a2)
    {
      v7 = a3;
      if (a3)
      {
        LODWORD(v8) = a4;
        DisplayTable = _lou_getDisplayTable(a1);
        result = 0;
        if (v8 >= 1)
        {
          if (DisplayTable)
          {
            v8 = v8;
            do
            {
              v11 = *v6++;
              v10 = v11;
              v12 = v11 | 0x8000;
              if ((v11 & 0xFF00) == 0x2800)
              {
                v13 = v12;
              }

              else
              {
                v13 = v10;
              }

              CharForDots = _lou_getCharForDots(v13, DisplayTable);
              if (CharForDots)
              {
                v15 = CharForDots;
              }

              else
              {
                v15 = 32;
              }

              *v7++ = v15;
              --v8;
            }

            while (v8);
            return 1;
          }
        }
      }
    }
  }

  return result;
}

uint64_t lou_charToDots(const char *a1, unsigned __int16 *a2, _WORD *a3, int a4, char a5)
{
  result = 0;
  if (a1)
  {
    v7 = a2;
    if (a2)
    {
      v8 = a3;
      if (a3)
      {
        LODWORD(v10) = a4;
        DisplayTable = _lou_getDisplayTable(a1);
        result = 0;
        if (v10 >= 1)
        {
          if (DisplayTable)
          {
            v10 = v10;
            do
            {
              v12 = *v7++;
              DotsForChar = _lou_getDotsForChar(v12, DisplayTable);
              v14 = DotsForChar | 0x2800;
              if ((a5 & 0x40) == 0)
              {
                v14 = DotsForChar;
              }

              *v8++ = v14;
              --v10;
            }

            while (v10);
            return 1;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_17B14(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (!a3)
  {
    return 0;
  }

  if (a3 < 1)
  {
    return 1;
  }

  v7 = 0;
  v8 = a4 + 13608;
  v9 = a4 + 31616;
  v10 = a3;
  while (1)
  {
    v11 = *(a1 + 2 * v7);
    v12 = *(v8 + 4 * _lou_charHash(*(a1 + 2 * v7)));
    if (v12)
    {
      while (1)
      {
        v13 = (v9 + 8 * v12);
        if (v13[22] == v11)
        {
          break;
        }

        v12 = *(v13 + 3);
        if (!v12)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      word_28E24 = v11;
      v13 = &unk_28DF8;
    }

    v14 = sub_105E0(a4, v13);
    v15 = *(a2 + 2 * v7);
    v16 = *(v8 + 4 * _lou_charHash(*(a2 + 2 * v7)));
    if (v16)
    {
      while (1)
      {
        v17 = (v9 + 8 * v16);
        if (v17[22] == v15)
        {
          break;
        }

        v16 = *(v17 + 3);
        if (!v16)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      word_28E24 = v15;
      v17 = &unk_28DF8;
    }

    if (v14 != sub_105E0(a4, v17))
    {
      return 0;
    }

    if (++v7 == v10)
    {
      return 1;
    }
  }
}

uint64_t sub_17C38(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, int *a6, uint64_t *a7, int *a8, int *a9, uint64_t *a10, _WORD *a11)
{
  v117 = a2;
  *a10 = 0;
  *a7 = a5 + 2 * *(a5 + 50) + 54;
  *a8 = 0;
  *a6 = (a4 & 0xFFFFFFFE) != 74;
  v11 = *a8;
  v12 = *(a5 + 52);
  if (*a8 >= v12)
  {
    return 0;
  }

  v15 = a5;
  v17 = 0;
  v18 = a1 + 31616;
  v111 = a1 + 18100;
  v116 = 0;
  v110 = a1 + 13608;
  v19 = -1;
  v104 = -1;
  while (1)
  {
    result = 0;
    v114 = 1;
    v21 = v117;
    if (v117 < 0)
    {
      return result;
    }

    v22 = *(a3 + 16);
    if (v117 > v22)
    {
      return result;
    }

    v23 = *a7;
    v24 = *a7 + 2 * v11;
    v25 = *v24;
    if (v25 > 0x5C)
    {
      if (*v24 > 0x7Au)
      {
        if (v25 == 123 || v25 == 125)
        {
          v41 = v18 + ((8 * *(v24 + 4)) | (*(v24 + 2) << 19));
          if (!v11 || v11 >= 1 && *(v23 + 2 * v11 - 2) == 91)
          {
            *a10 = v41;
            v25 = *(*a7 + 2 * v11);
            *a11 = v25;
          }

          v114 = *(*(a3 + 8) + 2 * v21) == *(v41 + 2 * ((v25 != 123) | (2 * *a6)) + 54);
          v117 = v21 + 1;
          v36 = v11 + 3;
          goto LABEL_70;
        }

        if (v25 != 126)
        {
          goto LABEL_104;
        }

        if (v117 == v22)
        {
          goto LABEL_39;
        }
      }

      else
      {
        if (v25 == 93)
        {
          v36 = v11 + 1;
          v19 = v117;
          goto LABEL_70;
        }

        if (v25 == 95)
        {
          v117 -= *(v24 + 2);
          v114 = v117 >= 0;
          v36 = v11 + 2;
          goto LABEL_70;
        }

        if (v25 != 96)
        {
          goto LABEL_104;
        }

        if (!v117)
        {
          goto LABEL_39;
        }
      }

      v114 = 0;
LABEL_39:
      v36 = v11 + 1;
LABEL_70:
      *a8 = v36;
      goto LABEL_71;
    }

    if (*v24 > 0x24u)
    {
      break;
    }

    if (*v24 <= 0x21u)
    {
      if (v25 == 33)
      {
        v17 = !v17;
        *a8 = ++v11;
        goto LABEL_73;
      }

      if (v25 == 32)
      {
LABEL_224:
        result = 0;
        *a8 = v11 + 1;
        if (v104 == -1)
        {
          v93 = a2;
        }

        else
        {
          v93 = v104;
        }

        if (v104 == -1)
        {
          v94 = v21;
        }

        else
        {
          v94 = v19;
        }

        if (v93 >= a2 && v94 != -1)
        {
          *a9 = a2;
          a9[1] = v93;
          result = 1;
          a9[2] = v94;
          a9[3] = v21;
        }

        return result;
      }

LABEL_104:
      result = _lou_handlePassVariableTest(*a7, a8, &v114);
      if (!result)
      {
        return result;
      }

LABEL_71:
      if (!v17 != (v114 != 0))
      {
        return 0;
      }

      goto LABEL_72;
    }

    if (v25 == 34)
    {
      goto LABEL_49;
    }

    if (v25 != 36)
    {
      goto LABEL_104;
    }

    v105 = v15;
    v101 = v19;
    v26 = *(v24 + 8) | (((*(v24 + 2) << 32) | (*(v24 + 4) << 16) | *(v24 + 6)) << 16);
    if (!*(v24 + 10))
    {
      v35 = 0;
LABEL_76:
      if (v35 >= *(v23 + 2 * v11 + 12))
      {
LABEL_97:
        v117 = v21;
        goto LABEL_99;
      }

      v21 = v21;
      while (2)
      {
        if (v21 >= *(a3 + 16))
        {
          goto LABEL_97;
        }

        v42 = *(*(a3 + 8) + 2 * v21);
        if (v42 == 0xFFFF)
        {
          goto LABEL_98;
        }

        v43 = *a6;
        v44 = _lou_charHash(*(*(a3 + 8) + 2 * v21));
        if (v43)
        {
          v45 = *(v111 + 4 * v44);
          if (v45)
          {
            while (1)
            {
              v46 = (v18 + 8 * v45);
              if (*(v46 + 22) == v42)
              {
                goto LABEL_92;
              }

              v45 = *(v46 + 3);
              if (!v45)
              {
                v46 = &unk_28DB8;
                goto LABEL_91;
              }
            }
          }

          v46 = &unk_28DB8;
        }

        else
        {
          v47 = *(v110 + 4 * v44);
          if (v47)
          {
            while (1)
            {
              v46 = (v18 + 8 * v47);
              if (*(v46 + 22) == v42)
              {
                break;
              }

              v47 = *(v46 + 3);
              if (!v47)
              {
                v46 = &unk_28DF8;
                goto LABEL_91;
              }
            }

LABEL_92:
            if ((v46[3] & v26) != 0)
            {
              if (v17)
              {
                goto LABEL_97;
              }
            }

            else if (!v17)
            {
              goto LABEL_97;
            }

            ++v21;
            if (++v35 >= *(*a7 + 2 * *a8 + 12))
            {
              goto LABEL_97;
            }

            continue;
          }

          v46 = &unk_28DF8;
        }

        break;
      }

LABEL_91:
      *(v46 + 22) = v42;
      goto LABEL_92;
    }

    v27 = 0;
    do
    {
      if (v21 >= *(a3 + 16) || (v28 = *(*(a3 + 8) + 2 * v21), v28 == 0xFFFF))
      {
LABEL_98:
        v117 = v21;
        v114 = 0;
        goto LABEL_99;
      }

      v29 = *a6;
      v30 = _lou_charHash(*(*(a3 + 8) + 2 * v21));
      if (v29)
      {
        v31 = *(v111 + 4 * v30);
        if (!v31)
        {
          v32 = &unk_28DB8;
LABEL_25:
          v32[22] = v28;
          goto LABEL_26;
        }

        while (1)
        {
          v32 = (v18 + 8 * v31);
          if (v32[22] == v28)
          {
            break;
          }

          v31 = *(v32 + 3);
          if (!v31)
          {
            v32 = &unk_28DB8;
            goto LABEL_25;
          }
        }
      }

      else
      {
        v33 = *(v110 + 4 * v30);
        if (!v33)
        {
          v32 = &unk_28DF8;
          goto LABEL_25;
        }

        while (1)
        {
          v32 = (v18 + 8 * v33);
          if (v32[22] == v28)
          {
            break;
          }

          v33 = *(v32 + 3);
          if (!v33)
          {
            v32 = &unk_28DF8;
            goto LABEL_25;
          }
        }
      }

LABEL_26:
      if ((*(v32 + 3) & v26) != 0)
      {
        if (v17)
        {
          goto LABEL_98;
        }
      }

      else if (!v17)
      {
        goto LABEL_98;
      }

      ++v21;
      ++v27;
      v23 = *a7;
      v34 = *a8;
      v35 = *(*a7 + 2 * v34 + 10);
    }

    while (v27 < v35);
    v117 = v21;
    if (v114)
    {
      v11 = v34;
      goto LABEL_76;
    }

LABEL_99:
    *a8 += 7;
    v19 = v101;
    v15 = v105;
    if (!v114)
    {
      return 0;
    }

LABEL_72:
    v17 = 0;
    v11 = *a8;
    LOWORD(v12) = *(v15 + 52);
LABEL_73:
    if (v11 >= v12)
    {
      return 0;
    }
  }

  if (*v24 > 0x3Fu)
  {
    if (v25 == 64)
    {
LABEL_49:
      v37 = *(v24 + 2);
      LODWORD(v24) = v11 + 2;
      if (v37)
      {
        v36 = v24 + v37;
        v24 = v24;
        v38 = v117;
        while (1)
        {
          if (v22 == v38)
          {
LABEL_55:
            v40 = 1;
            goto LABEL_69;
          }

          v39 = *(*(a3 + 8) + 2 * v38);
          if (v39 == 0xFFFF || *(v23 + 2 * v24) != v39)
          {
            break;
          }

          ++v38;
          if (++v24 >= v36)
          {
            goto LABEL_55;
          }
        }

        v40 = 0;
      }

      else
      {
        v40 = 1;
        v36 = v11 + 2;
      }

LABEL_69:
      v114 = v40;
      v117 += v37;
    }

    else
    {
      if (v25 != 91)
      {
        goto LABEL_104;
      }

      v36 = v11 + 1;
      v104 = v117;
    }

    goto LABEL_70;
  }

  if (v25 == 37)
  {
    v114 = sub_19198(v11, &v117, a1, a3, *a7);
    v36 = v11 + 5;
    goto LABEL_70;
  }

  if (v25 != 47)
  {
    goto LABEL_104;
  }

  v115 = 0;
  if (v22 <= v117)
  {
    v71 = 0;
  }

  else
  {
    v102 = v19;
    i = 0;
    v49 = 0;
    v50 = v11 + 1;
    v99 = v23 + 10;
    v95 = v50;
    v96 = *a11;
    v109 = *a6;
    v97 = *a10;
    v98 = v23 + 12;
    v106 = v15;
    while (2)
    {
      v115 = v21;
      v116 = v50;
      v51 = *(v15 + 52);
      if (v50 >= v51)
      {
        goto LABEL_213;
      }

      v52 = *(v15 + 52);
      v53 = v50;
      while (2)
      {
        v118[0] = 1;
        v54 = v115;
        if (v115 >= *(a3 + 16))
        {
          goto LABEL_216;
        }

        v55 = v115;
        v56 = v23 + 2 * v53;
        v57 = *v56;
        if (v57 > 0x3F)
        {
          if (*v56 <= 0x5Eu)
          {
            if (v57 != 64)
            {
              if (v57 == 91 || v57 == 93)
              {
                v116 = v53 + 1;
LABEL_147:
                if (i)
                {
                  goto LABEL_213;
                }

LABEL_180:
                v53 = v116;
LABEL_181:
                i = 0;
                v52 = *(v106 + 52);
LABEL_182:
                v51 = v52;
                if (v53 >= v52)
                {
                  goto LABEL_213;
                }

                continue;
              }

              goto LABEL_168;
            }

LABEL_138:
            v66 = *(v56 + 2);
            LODWORD(v56) = v53 + 2;
            if (v66)
            {
              v67 = v56 + v66;
              v56 = v56;
              v68 = (*(a3 + 8) + 2 * v115);
              while (1)
              {
                v70 = *v68++;
                v69 = v70;
                if (v70 == 0xFFFF || *(v23 + 2 * v56) != v69)
                {
                  break;
                }

                if (++v56 >= v67)
                {
                  v59 = 1;
                  goto LABEL_171;
                }
              }

              v59 = 0;
              v118[0] = 0;
            }

            else
            {
              v59 = 1;
              v67 = v53 + 2;
            }

LABEL_171:
            v115 += v66;
            v116 = v67;
LABEL_179:
            if (!i != (v59 != 0))
            {
              goto LABEL_213;
            }

            goto LABEL_180;
          }

          if (v57 == 125 || v57 == 123)
          {
            v61 = v18 + ((8 * *(v56 + 4)) | (*(v56 + 2) << 19));
            v62 = *(*(a3 + 8) + 2 * v115);
            v63 = v61 + 54;
            v64 = v57 == 123;
            v65 = (2 * v109) | 1;
            if (v64)
            {
              v65 = 2 * v109;
            }

            v59 = v62 == *(v63 + 2 * v65);
            if (v96 == 123 && v61 == v97)
            {
              if (v62 == *(v63 + 4 * v109))
              {
                --v49;
              }

              else if (v62 == *(v63 + 2 * ((2 * v109) | 1)))
              {
                ++v49;
              }
            }

            ++v115;
            v116 = v53 + 3;
            goto LABEL_179;
          }

          if (v57 != 95)
          {
            goto LABEL_168;
          }

          v115 -= *(v56 + 2);
          if (v115 < 0)
          {
            v59 = 0;
            v115 = 0;
            v118[0] = 0;
          }

          else
          {
            v59 = 1;
          }

          v60 = v53 + 2;
LABEL_178:
          v116 = v60;
          goto LABEL_179;
        }

        break;
      }

      if (*v56 > 0x21u)
      {
        if (v57 == 34)
        {
          goto LABEL_138;
        }

        if (v57 != 36)
        {
          if (v57 != 37)
          {
            goto LABEL_168;
          }

          v58 = i;
          v59 = sub_19198(v53, &v115, a1, a3, v23);
          i = v58;
          v60 = v53 + 5;
          goto LABEL_178;
        }

        v72 = v53;
        v113 = *(v56 + 8) | (((*(v56 + 2) << 32) | (*(v56 + 4) << 16) | *(v56 + 6)) << 16);
        if (!*(v99 + 2 * v53))
        {
          v81 = 0;
          goto LABEL_185;
        }

        v73 = *(*(a3 + 8) + 2 * v115);
        if (v73 == 0xFFFF)
        {
          goto LABEL_210;
        }

        v107 = v49;
        v74 = 0;
LABEL_152:
        v75 = i;
        v76 = _lou_charHash(v73);
        if (v109)
        {
          v77 = *(v111 + 4 * v76);
          for (i = v75; v77; v77 = *(v78 + 3))
          {
            v78 = (v18 + 8 * v77);
            if (v78[22] == v73)
            {
              goto LABEL_162;
            }
          }

          v78 = &unk_28DB8;
        }

        else
        {
          v79 = *(v110 + 4 * v76);
          for (i = v75; v79; v79 = *(v78 + 3))
          {
            v78 = (v18 + 8 * v79);
            if (v78[22] == v73)
            {
              goto LABEL_162;
            }
          }

          v78 = &unk_28DF8;
        }

        v78[22] = v73;
LABEL_162:
        ++v55;
        v80 = *(v78 + 6) & v113;
        if (i)
        {
          v80 = v80 == 0;
        }

        v118[0] = v80;
        v53 = v116;
        if (!v80)
        {
          v115 = v55;
          v84 = v116;
          v49 = v107;
LABEL_212:
          i = 0;
          v116 = v84 + 7;
          v50 = v95;
          goto LABEL_213;
        }

        v72 = v116;
        ++v74;
        v81 = *(v99 + 2 * v116);
        if (v74 >= v81)
        {
          v115 = v55;
          v54 = v55;
          v49 = v107;
LABEL_185:
          if (v81 >= *(v98 + 2 * v72))
          {
            v53 += 7;
            v116 = v53;
            v50 = v95;
            goto LABEL_181;
          }

          v83 = v54;
          v84 = v53;
          v108 = v49;
LABEL_187:
          if (v83 >= *(a3 + 16))
          {
            v71 = 0;
            v115 = v83;
            goto LABEL_217;
          }

          v85 = *(*(a3 + 8) + 2 * v83);
          if (v85 == 0xFFFF)
          {
            v115 = v83;
            v118[0] = 0;
            goto LABEL_212;
          }

          v86 = i;
          v87 = _lou_charHash(*(*(a3 + 8) + 2 * v83));
          if (v109)
          {
            v88 = *(v111 + 4 * v87);
            i = v86;
            if (v88)
            {
              v49 = v108;
              while (1)
              {
                v89 = (v18 + 8 * v88);
                if (v89[22] == v85)
                {
                  goto LABEL_204;
                }

                v88 = *(v89 + 3);
                if (!v88)
                {
                  v89 = &unk_28DB8;
                  goto LABEL_203;
                }
              }
            }

            v89 = &unk_28DB8;
LABEL_202:
            v49 = v108;
LABEL_203:
            v89[22] = v85;
          }

          else
          {
            v90 = *(v110 + 4 * v87);
            i = v86;
            if (!v90)
            {
              v89 = &unk_28DF8;
              goto LABEL_202;
            }

            v49 = v108;
            while (1)
            {
              v89 = (v18 + 8 * v90);
              if (v89[22] == v85)
              {
                break;
              }

              v90 = *(v89 + 3);
              if (!v90)
              {
                v89 = &unk_28DF8;
                goto LABEL_203;
              }
            }
          }

LABEL_204:
          v91 = (*(v89 + 3) & v113) == 0;
          v84 = v116;
          if (!i == v91 || (++v83, ++v81, v81 >= *(v98 + 2 * v116)))
          {
            v53 = v116 + 7;
            v115 = v83;
            v116 += 7;
            v50 = v95;
            if (v118[0])
            {
              goto LABEL_181;
            }

            i = 0;
LABEL_213:
            LODWORD(v21) = v21 + 1;
            v15 = v106;
            if (v21 >= *(a3 + 16))
            {
LABEL_216:
              v71 = 0;
              goto LABEL_217;
            }

            continue;
          }

          goto LABEL_187;
        }

        v73 = *(*(a3 + 8) + 2 * v55);
        if (v73 == 0xFFFF)
        {
          v54 = v55;
          v49 = v107;
LABEL_210:
          v115 = v54;
          v118[0] = 0;
          v84 = v53;
          goto LABEL_212;
        }

        goto LABEL_152;
      }

      break;
    }

    if (v57 != 32)
    {
      if (v57 == 33)
      {
        i = !i;
        v116 = ++v53;
        goto LABEL_182;
      }

LABEL_168:
      v82 = i;
      _lou_handlePassVariableTest(v23, &v116, v118);
      i = v82;
      v59 = v118[0];
      goto LABEL_179;
    }

    v71 = 1;
    if (v97 && v49 != 1)
    {
      v116 = v51;
      goto LABEL_147;
    }

LABEL_217:
    v19 = v102;
  }

  result = 0;
  if (v17)
  {
    v92 = v71;
  }

  else
  {
    v92 = 0;
  }

  if (v71 | v17 && (v92 & 1) == 0)
  {
    LODWORD(v21) = v115;
    v11 = v116;
    goto LABEL_224;
  }

  return result;
}

uint64_t sub_18884(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7, uint64_t a8, int a9, _DWORD *a10, unint64_t a11, unsigned int a12, unsigned int a13, int *a14, _DWORD *a15, uint64_t a16, unsigned __int16 a17, char a18)
{
  v21 = a4;
  v24 = a18;
  v25 = a9;
  v26 = HIDWORD(a11);
  v148 = *(a3 + 20);
  v147 = a15;
  v149 = a11;
  v146 = a14;
  result = sub_19378(a11, SHIDWORD(a11), a1, *a2, a3, a4, a5, a14, a15, a18);
  if (result)
  {
    if (*(*a6 + 52) > v25)
    {
      v132 = v24;
      v135 = a5;
      v144 = a16;
      v140 = 2 * a7;
      v141 = a16 + 54;
      v138 = a17;
      v131 = a13;
      v129 = v26 + 1;
      v143 = *(a3 + 20);
      v136 = a1 + 31616;
      v139 = v140 | 1;
      v133 = a1;
      v134 = a1 + 31670 + 2 * v139;
      v29 = a1 + 31670 + 4 * a7;
      v127 = a1 + 31676;
      v30 = v21 - 4;
      v31 = a12;
      v32 = a12;
      v145 = a12;
      v128 = a6;
      v142 = v29;
      while (1)
      {
        v33 = (a8 + 2 * v25);
        v34 = *v33;
        if (v34 > 0x3E)
        {
          if (*v33 > 0x7Au)
          {
            if (v34 == 123)
            {
              v97 = v33[1];
              v98 = v33[2];
              *(v21 + 4 * *(a3 + 20)) = v149;
              v85 = *(v29 + ((8 * v98) | (v97 << 19)));
LABEL_85:
              v99 = *(a3 + 8);
              v100 = *(a3 + 20);
              *(a3 + 20) = v100 + 1;
              *(v99 + 2 * v100) = v85;
LABEL_86:
              v25 += 3;
LABEL_87:
              a9 = v25;
              goto LABEL_88;
            }

            if (v34 == 125)
            {
              v83 = v33[1];
              v84 = v33[2];
              *(v21 + 4 * *(a3 + 20)) = v149;
              v85 = *(v134 + ((8 * v84) | (v83 << 19)));
              goto LABEL_85;
            }
          }

          else
          {
            if (v34 == 63)
            {
              v86 = v31;
              if (v144)
              {
                v87 = *(v141 + 2 * v140);
                v88 = *(v141 + 2 * v139);
                if (v138 == 123)
                {
                  v89 = 0;
                  v90 = *(*a2 + 16);
                  if (v90 <= v129)
                  {
                    v91 = v129;
                  }

                  else
                  {
                    v91 = *(*a2 + 16);
                  }

                  v92 = (v149 >> 32) + 1;
                  v93 = HIDWORD(v149);
                  while (v92 < v90)
                  {
                    v94 = *(*(*a2 + 8) + 2 * v92);
                    v89 -= v94 == v87;
                    if (v94 == v88)
                    {
                      ++v89;
                    }

                    ++v93;
                    ++v92;
                    if (v89 == 1)
                    {
                      goto LABEL_113;
                    }
                  }

                  v93 = v91;
LABEL_113:
                  if (v93 != v90)
                  {
                    v120 = sub_12AF8(v90, v28);
                    v121 = *(*(qword_2DC10 + 8) + 8 * v120);
                    v122 = *a2;
                    v123 = *(*a2 + 16);
                    if (v123 < 1)
                    {
                      v125 = 0;
                    }

                    else
                    {
                      v124 = 0;
                      v125 = 0;
                      v126 = 2 * v123;
                      do
                      {
                        if (2 * v93 != v124)
                        {
                          *(v121 + 2 * v125++) = *(*(v122 + 8) + v124);
                        }

                        v124 += 2;
                      }

                      while (v126 != v124);
                    }

                    dword_2DC58 = v120;
                    qword_2DC60 = v121;
                    dword_2DC68 = v125;
                    *a2 = &dword_2DC58;
                    v25 = a9;
                  }
                }

                else
                {
                  v107 = 0;
                  v108 = *(a3 + 20);
                  v109 = 2 * v108;
                  v110 = v108;
                  while (1)
                  {
                    v111 = v110;
                    if (v110 < 1)
                    {
                      break;
                    }

                    v112 = v109;
                    --v110;
                    v113 = *(a3 + 8);
                    v114 = *(v113 + 2 * v111 - 2);
                    v107 -= v114 == v88;
                    if (v114 == v87)
                    {
                      ++v107;
                    }

                    v109 = v112 - 2;
                    if (v107 == 1)
                    {
                      if (v108 > v110 + 1)
                      {
                        v115 = (v113 + v112);
                        do
                        {
                          *(v115 - 1) = *v115;
                          LODWORD(v111) = v111 + 1;
                          ++v115;
                        }

                        while (v108 > v111);
                      }

                      *(a3 + 20) = v108 - 1;
                      break;
                    }
                  }
                }
              }

              a9 = ++v25;
              v31 = v86;
              v29 = v142;
              goto LABEL_88;
            }

            if (v34 == 64)
            {
LABEL_46:
              v67 = v33[1];
              v68 = *(a3 + 20);
              if (v68 + v67 > *(a3 + 16))
              {
                return 0;
              }

              if (v33[1])
              {
                v69 = 0;
                do
                {
                  *(v21 + 4 * (v69 + *(a3 + 20))) = v26;
                  ++v69;
                }

                while (v67 != v69);
                v68 = *(a3 + 20);
              }

              memcpy((*(a3 + 8) + 2 * v68), v33 + 2, 2 * v67);
              v70 = a9;
              v71 = *(a8 + 2 + 2 * a9);
              *(a3 + 20) += v71;
              v25 = v70 + v71 + 2;
              goto LABEL_87;
            }
          }

          goto LABEL_90;
        }

        if (*v33 <= 0x29u)
        {
          break;
        }

        if (v34 != 42)
        {
          if (v34 == 59)
          {
            if (!v144)
            {
              return 0;
            }

            v72 = *(v141 + 2 * v140);
            v73 = *(v141 + 2 * v139);
            v74 = v136 + ((8 * *(v33 + 4)) | (v33[1] << 19));
            v75 = *(v74 + 54 + 2 * v140);
            v76 = *(v74 + 54 + 2 * v139);
            if (v138 == 123)
            {
              v77 = 0;
              v78 = *(*a2 + 16);
              if (v78 <= v129)
              {
                v79 = v129;
              }

              else
              {
                v79 = *(*a2 + 16);
              }

              v80 = (v149 >> 32) + 1;
              v81 = HIDWORD(v149);
              while (v80 < v78)
              {
                v82 = *(*(*a2 + 8) + 2 * v80);
                v77 -= v82 == v72;
                if (v82 == v73)
                {
                  ++v77;
                }

                ++v81;
                ++v80;
                if (v77 == 1)
                {
                  goto LABEL_110;
                }
              }

              v81 = v79;
LABEL_110:
              if (v81 == v78)
              {
                return 0;
              }

              v116 = *(v74 + 54 + 2 * v140);
              v117 = sub_12AF8(v78, v28);
              v118 = *(*(qword_2DC10 + 8) + 8 * v117);
              memcpy(v118, *(*a2 + 8), 2 * *(*a2 + 16));
              *(v118 + (v149 >> 32)) = v116;
              *(v118 + v81) = v76;
              v119 = *(*a2 + 16);
              dword_2DC40 = v117;
              v29 = v142;
              qword_2DC48 = v118;
              dword_2DC50 = v119;
              *a2 = &dword_2DC40;
              v31 = v31;
              v25 = a9;
              a6 = v128;
              v32 = v145;
            }

            else
            {
              if (v135 == 74)
              {
                v72 = *(v144 + 58);
                v73 = *(v144 + 60);
                v75 = *(v74 + 58);
                v76 = *(v74 + 60);
              }

              v101 = 0;
              v102 = *(a3 + 8);
              v103 = *(a3 + 20);
              *(v102 + 2 * v103) = v76;
              v104 = v103;
              v32 = v145;
              do
              {
                if (v104 < 1)
                {
                  return 0;
                }

                v105 = v104 - 1;
                v106 = *(v102 - 2 + 2 * v104);
                v101 -= v106 == v73;
                if (v106 == v72)
                {
                  ++v101;
                }

                v104 = v105;
              }

              while (v101 != 1);
              *(v102 + 2 * v105) = v75;
              *(a3 + 20) = v103 + 1;
            }

            goto LABEL_86;
          }

          goto LABEL_90;
        }

        v95 = v143;
        v96 = v143 - v148;
        if (v143 - v148 >= 1)
        {
          if (v96 + v143 > *(a3 + 16))
          {
            return 0;
          }

          memmove((*(a3 + 8) + 2 * v148), (*(a3 + 8) + 2 * v143), (2 * v96));
          *(a3 + 20) -= v96;
          v95 = v148;
        }

        result = sub_19378(v26, v32, v133, *a2, a3, v21, v135, v146, v147, v132);
        if (!result)
        {
          return result;
        }

        v143 = v95;
        v25 = ++a9;
        v31 = v131;
LABEL_88:
        if (v25 >= *(*a6 + 52))
        {
          goto LABEL_124;
        }
      }

      if (v34 == 34)
      {
        goto LABEL_46;
      }

      if (v34 == 37)
      {
        if (v26 >= v32)
        {
          goto LABEL_86;
        }

        v130 = v31;
        v35 = (8 * v33[2]) | (v33[1] << 19);
        v36 = v136 + v35;
        v37 = v136 + v35 + 54;
        v38 = v37 + 2 * *(v136 + v35 + 50);
        v39 = *a2;
        v40 = v127 + v35;
        v41 = v149 >> 32;
        v137 = v127 + v35;
        while (1)
        {
          v42 = *(v36 + 44);
          v43 = *(v36 + 50);
          if (v42 == 60)
          {
            v44 = v43 - 2;
            if (v43 < 2 || (v45 = *(*(v39 + 8) + 2 * v41), v45 == *(v36 + 56)))
            {
              LODWORD(v46) = 0;
              v47 = 0;
            }

            else
            {
              LODWORD(v46) = 0;
              v63 = 0;
              v64 = (v44 >> 1) + 1;
              v47 = (v44 & 0xFFFFFFFE) + 2;
              v65 = v44 & 0xFFFFFFFE;
              while (v65 != v63)
              {
                v66 = *(v40 + 2 * v63);
                v63 += 2;
                LODWORD(v46) = v46 + 1;
                if (v45 == v66)
                {
                  v47 = v63;
                  goto LABEL_14;
                }
              }

              LODWORD(v46) = v64;
            }

LABEL_14:
            if (v47 != v43)
            {
              goto LABEL_23;
            }
          }

          else
          {
            if (v43 < 1)
            {
              LODWORD(v46) = 0;
            }

            else
            {
              v46 = 0;
              while (*(*(v39 + 8) + 2 * v41) != *(v37 + 2 * v46))
              {
                if (v43 == ++v46)
                {
                  goto LABEL_36;
                }
              }
            }

            if (v46 != v43)
            {
LABEL_23:
              for (i = 0; v46; LODWORD(v46) = v46 - 1)
              {
                if (v42 == 58)
                {
                  v49 = 1;
                }

                else
                {
                  v49 = *(v38 + 2 * i);
                }

                i += v49;
              }

              if (v42 == 58)
              {
                v50 = *(a3 + 20);
                if (v50 >= *(a3 + 16))
                {
                  return 0;
                }

                *(v21 + 4 * v50) = v41;
                v51 = *(v38 + 2 * i);
                v52 = *(a3 + 8);
                v53 = *(a3 + 20);
                *(a3 + 20) = v53 + 1;
                *(v52 + 2 * v53) = v51;
              }

              else
              {
                v54 = (v38 + 2 * i);
                v55 = *v54;
                v56 = v55 - 1;
                v57 = *(a3 + 20);
                v58 = v55 - 1 + v57;
                if (v58 > *(a3 + 16))
                {
                  return 0;
                }

                if (v55 >= 2)
                {
                  do
                  {
                    *(v30 + 4 * v58) = v41;
                    v57 = *(a3 + 20);
                    --v58;
                  }

                  while (v58 > v57);
                }

                if (!v55)
                {
                  return 0;
                }

                v59 = v21;
                v60 = v26;
                v61 = v30;
                v62 = v39;
                memcpy((*(a3 + 8) + 2 * v57), v54 + 1, (2 * v56));
                v40 = v137;
                v39 = v62;
                v30 = v61;
                v26 = v60;
                v21 = v59;
                *(a3 + 20) += v56;
                v32 = v145;
              }
            }
          }

LABEL_36:
          if (++v41 == v32)
          {
            v25 = a9;
            a6 = v128;
            v29 = v142;
            v31 = v130;
            goto LABEL_86;
          }
        }
      }

LABEL_90:
      result = _lou_handlePassVariableAction(a8, &a9);
      if (!result)
      {
        return result;
      }

      v25 = a9;
      goto LABEL_88;
    }

    LODWORD(v31) = a12;
LABEL_124:
    *a10 = v31;
    return 1;
  }

  return result;
}