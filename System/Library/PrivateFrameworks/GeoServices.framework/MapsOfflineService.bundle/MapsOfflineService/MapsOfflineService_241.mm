void sub_EB5B20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_3E52A0(va);
  _Unwind_Resume(a1);
}

void sub_EB5B34(uint64_t result, uint64_t *a2, _BYTE *a3, uint64_t a4)
{
  v4 = a2[1];
  if (*a2 != v4)
  {
    v5 = 1736263375 * ((v4 - *a2) >> 3);
    if (v5 >= 1)
    {
      v9 = 0;
      v10 = v5 & 0x7FFFFFFF;
      v11 = 8;
      do
      {
        while (1)
        {
          v12 = *a2;
          v13 = *(*(a4 + 64) + v11);
          v14 = *(v13 + 40);
          if (v14 && (v15 = *(v13 + 32), v15 < *v14))
          {
            *(v13 + 32) = v15 + 1;
            v16 = *&v14[2 * v15 + 2];
          }

          else
          {
            v17 = sub_14D5CF8(*(v13 + 24));
            v16 = sub_19593CC(v13 + 24, v17);
          }

          v18 = v16[4];
          v16[4] = v18 | 4;
          v16[16] = 2;
          if (*(v12 + v9 + 24) != 0x7FFFFFFFFFFFFFFFLL && *(v12 + v9 + 36) != 0x7FFFFFFF)
          {
            break;
          }

          v16[4] = v18 | 0xC;
          v16[17] = 20;
          v11 += 8;
          v9 += 376;
          if (!--v10)
          {
            return;
          }
        }

        sub_EB62AC(result, (v12 + v9), a3, v16);
        v16[4] |= 8u;
        v16[17] = 0;
        v11 += 8;
        v9 += 376;
        --v10;
      }

      while (v10);
    }
  }
}

void sub_EB5CA8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2[1];
  if (*a2 != v4)
  {
    v5 = -1431655765 * ((v4 - *a2) >> 4);
    if (v5 >= 1)
    {
      v9 = 0;
      v10 = v5 & 0x7FFFFFFF;
      do
      {
        while (1)
        {
          v12 = *a2;
          v13 = *(*(a4 + 64) + 8 * v9 + 8);
          v14 = *(v13 + 40);
          if (v14 && (v15 = *(v13 + 32), v15 < *v14))
          {
            *(v13 + 32) = v15 + 1;
            v16 = *&v14[2 * v15 + 2];
          }

          else
          {
            v17 = sub_14D5CF8(*(v13 + 24));
            v16 = sub_19593CC(v13 + 24, v17);
          }

          v18 = (v12 + 48 * v9);
          v19 = *(v16 + 16);
          *(v16 + 16) = v19 | 4;
          *(v16 + 64) = 1;
          v20 = v18[2];
          if (v20 != 0x7FFFFFFF)
          {
            break;
          }

          *(v16 + 16) = v19 | 0xC;
          *(v16 + 68) = 20;
          if (++v9 == v10)
          {
            return;
          }
        }

        v21 = v20 / 10;
        v22 = v20 % 10;
        if (v20 < 0)
        {
          v23 = -5;
        }

        else
        {
          v23 = 5;
        }

        *(v16 + 16) = v19 | 0x14;
        *(v16 + 72) = v21 + (((103 * (v23 + v22)) >> 15) & 1) + ((103 * (v23 + v22)) >> 10);
        v24 = *v18 + -978307200.0;
        v11 = v19 | 0x54;
        *(v16 + 16) = v19 | 0x54;
        *(v16 + 80) = v24;
        if (*(a3 + 5) == 1)
        {
          v25 = *(v18 + 2);
          v26 = v25 / 100;
          v27 = v25 % 100;
          if (v25 < 0)
          {
            v28 = -50;
          }

          else
          {
            v28 = 50;
          }

          v29 = v26 + ((5243 * (v28 + v27)) >> 19) + ((5243 * (v28 + v27)) >> 31);
          v11 = v19 | 0xD4;
          *(v16 + 16) = v19 | 0xD4;
          *(v16 + 88) = v29;
        }

        if (*(a3 + 6) == 1)
        {
          v30 = *(v18 + 3);
          v31 = *(v18 + 4);
          if (v30 != v31)
          {
            do
            {
              while (1)
              {
                v34 = *(v16 + 40);
                if (v34)
                {
                  v35 = *(v16 + 32);
                  if (v35 < *v34)
                  {
                    break;
                  }
                }

                sub_14BAE64(*(v16 + 24));
                v33 = sub_19593CC(v16 + 24, v32);
                sub_64D110(v30, v33);
                v30 += 20;
                if (v30 == v31)
                {
                  goto LABEL_4;
                }
              }

              *(v16 + 32) = v35 + 1;
              sub_64D110(v30, *&v34[2 * v35 + 2]);
              v30 += 20;
            }

            while (v30 != v31);
LABEL_4:
            v11 = *(v16 + 16);
          }
        }

        *(v16 + 16) = v11 | 8;
        *(v16 + 68) = 0;
        ++v9;
      }

      while (v9 != v10);
    }
  }
}

void sub_EB5F78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 64);
  if (v2)
  {
    v3 = (v2 + 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = &v3[v4];
    do
    {
      v6 = *v3;
      v7 = *(*v3 + 40);
      if (v7)
      {
        v8 = (v7 + 8);
      }

      else
      {
        v8 = 0;
      }

      v9 = *(v6 + 32);
      v10 = &v8[v9];
      if (v9)
      {
        v11 = 8 * v9;
        while (!*(*v8 + 68) && (*(*v8 + 16) & 0x10) != 0)
        {
          ++v8;
          v11 -= 8;
          if (v8 == v10)
          {
            goto LABEL_36;
          }
        }

        v13 = v10 - 1;
        do
        {
          v11 -= 8;
          if (!v11)
          {
            v10 = v8;
            goto LABEL_36;
          }

          v14 = *v13--;
          v15 = *(v14 + 16) & 0x10;
          --v10;
          if (*(v14 + 68))
          {
            v16 = 1;
          }

          else
          {
            v16 = v15 == 0;
          }
        }

        while (v16);
        v17 = v11 >> 3;
        v18 = v17 + 1;
        if (v17 < 3)
        {
          v19 = 0;
          v23 = 0;
        }

        else
        {
          if (v18 >= 0x124924924924924)
          {
            v19 = 0x124924924924924;
          }

          else
          {
            v19 = v17 + 1;
          }

          while (1)
          {
            v20 = operator new(112 * v19, &std::nothrow);
            if (v20)
            {
              break;
            }

            v21 = v19 >> 1;
            v22 = v19 > 1;
            v19 >>= 1;
            if (!v22)
            {
              v23 = 0;
              v19 = v21;
              goto LABEL_34;
            }
          }

          v23 = v20;
        }

LABEL_34:
        v10 = sub_EB6738(v8, v10, v18, v23, v19);
        if (v23)
        {
          operator delete(v23);
        }
      }

LABEL_36:
      v24 = *(v6 + 40);
      if (v24)
      {
        v25 = (v24 + 8);
      }

      else
      {
        v25 = 0;
      }

      v26 = v10;
      v27 = v10 - v25;
      if (v10 != v25)
      {
        while (*(*v25 + 64) == 2 && *(*v25 + 72) < 0x259u)
        {
          ++v25;
          v27 -= 8;
          if (v25 == v10)
          {
            v26 = v10;
            goto LABEL_60;
          }
        }

        v28 = v10 - 1;
        v29 = v10;
        do
        {
          if (v28 == v25)
          {
            v26 = v25;
            goto LABEL_60;
          }

          v31 = *v28--;
          v30 = v31;
          --v29;
          v27 -= 8;
        }

        while (*(v31 + 64) != 2 || *(v30 + 72) > 0x258u);
        v32 = v27 >> 3;
        v33 = v32 + 1;
        if (v32 < 3)
        {
          v34 = 0;
          v37 = 0;
        }

        else
        {
          if (v33 >= 0x124924924924924)
          {
            v34 = 0x124924924924924;
          }

          else
          {
            v34 = v32 + 1;
          }

          while (1)
          {
            v35 = operator new(112 * v34, &std::nothrow);
            if (v35)
            {
              break;
            }

            v36 = v34 >> 1;
            v22 = v34 > 1;
            v34 >>= 1;
            if (!v22)
            {
              v37 = 0;
              v34 = v36;
              goto LABEL_58;
            }
          }

          v37 = v35;
        }

LABEL_58:
        v26 = sub_EB6FAC(v25, v29, v33, v37, v34);
        if (v37)
        {
          operator delete(v37);
        }
      }

LABEL_60:
      v38 = v10 - v26;
      if (v38 < 1)
      {
        v42 = 0;
        v39 = 0;
      }

      else
      {
        if (v38 >= 0x124924924924924)
        {
          v39 = 0x124924924924924;
        }

        else
        {
          v39 = v10 - v26;
        }

        while (1)
        {
          v40 = operator new(112 * v39, &std::nothrow);
          if (v40)
          {
            break;
          }

          v41 = v39 >> 1;
          v22 = v39 > 1;
          v39 >>= 1;
          if (!v22)
          {
            v42 = 0;
            v39 = v41;
            goto LABEL_69;
          }
        }

        v42 = v40;
      }

LABEL_69:
      sub_EB7524(v26, v10, v10 - v26, v42, v39);
      if (v42)
      {
        operator delete(v42);
      }

      ++v3;
    }

    while (v3 != v5);
  }
}

void sub_EB628C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

double sub_EB62AC(uint64_t a1, uint64_t *a2, _BYTE *a3, uint64_t a4)
{
  sub_EB64E4(a1, a2 + 8, a3, a4);
  if (a3[5] == 1)
  {
    v8 = a2[3];
    v9 = v8 / 100;
    v10 = v8 % 100;
    if (v8 < 0)
    {
      v11 = -50;
    }

    else
    {
      v11 = 50;
    }

    *(a4 + 16) |= 0x80u;
    *(a4 + 88) = v9 + ((5243 * (v11 + v10)) >> 19) + ((5243 * (v11 + v10)) >> 31);
  }

  if (a3[6] == 1)
  {
    v12 = a2[41];
    v13 = a2[42];
    while (v12 != v13)
    {
      v16 = *(a4 + 40);
      if (v16 && (v17 = *(a4 + 32), v17 < *v16))
      {
        *(a4 + 32) = v17 + 1;
        v15 = *&v16[2 * v17 + 2];
      }

      else
      {
        sub_14BAE64(*(a4 + 24));
        v15 = sub_19593CC(a4 + 24, v14);
      }

      sub_64D110(v12, v15);
      v12 += 20;
    }
  }

  if (a3[7] == 1)
  {
    v18 = *a2;
    if (*a2 != a2[1])
    {
      *(a4 + 16) |= 1u;
      v19 = *(a4 + 48);
      if (!v19)
      {
        v20 = *(a4 + 8);
        v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
        if (v20)
        {
          v21 = *v21;
        }

        v19 = sub_14BEF24(v21);
        *(a4 + 48) = v19;
        v18 = *a2;
      }

      *(v19 + 16) |= 1u;
      v22 = *(v19 + 8);
      v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      if (v22)
      {
        v23 = *v23;
      }

      sub_194EA1C((v19 + 24), v18, v23);
      sub_74B1D0(v18, __p);
      *(v19 + 16) |= 2u;
      v24 = *(v19 + 8);
      v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
      if (v24)
      {
        v25 = *v25;
      }

      sub_194EA30((v19 + 32), __p, v25);
      if (v29 < 0)
      {
        operator delete(__p[0]);
      }

      *(v19 + 16) |= 4u;
      v26 = *(v19 + 8);
      v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
      if (v26)
      {
        v27 = *v27;
      }

      sub_194EA1C((v19 + 40), v18 + 8, v27);
    }
  }

  return result;
}

void sub_EB64C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_EB64E4(uint64_t a1, _DWORD *a2, _BYTE *a3, _DWORD *a4)
{
  if (*a3 == 1)
  {
    v4 = a2[1];
    v5 = v4 / 10;
    v6 = v4 % 10;
    if (v4 < 0)
    {
      v7 = -5;
    }

    else
    {
      v7 = 5;
    }

    a4[4] |= 0x10u;
    a4[18] = v5 + (((103 * (v7 + v6)) >> 15) & 1) + ((103 * (v7 + v6)) >> 10);
    if (a3[1] != 1)
    {
LABEL_3:
      if (a3[2] != 1)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if (a3[1] != 1)
  {
    goto LABEL_3;
  }

  v8 = a2[67];
  v9 = v8 / 10;
  v10 = v8 % 10;
  if (v8 < 0)
  {
    v11 = -5;
  }

  else
  {
    v11 = 5;
  }

  a4[4] |= 0x20u;
  a4[19] = v9 + (((103 * (v11 + v10)) >> 15) & 1) + ((103 * (v11 + v10)) >> 10);
  if (a3[2] != 1)
  {
LABEL_4:
    if (a3[3] != 1)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_15:
  v12 = a2[66];
  v13 = v12 / 10;
  v14 = v12 % 10;
  if (v12 < 0)
  {
    v15 = -5;
  }

  else
  {
    v15 = 5;
  }

  a4[4] |= 0x400u;
  a4[25] = v13 + (((103 * (v15 + v14)) >> 15) & 1) + ((103 * (v15 + v14)) >> 10);
  if (a3[3] != 1)
  {
LABEL_5:
    if (a3[4] != 1)
    {
      return;
    }

    goto LABEL_23;
  }

LABEL_19:
  v16 = a2[69];
  v17 = v16 / 10;
  v18 = v16 % 10;
  if (v16 < 0)
  {
    v19 = -5;
  }

  else
  {
    v19 = 5;
  }

  a4[4] |= 0x200u;
  a4[24] = v17 + (((103 * (v19 + v18)) >> 15) & 1) + ((103 * (v19 + v18)) >> 10);
  if (a3[4] == 1)
  {
LABEL_23:
    v20 = a2[70];
    v21 = v20 / 10;
    v22 = v20 % 10;
    if (v20 < 0)
    {
      v23 = -5;
    }

    else
    {
      v23 = 5;
    }

    a4[4] |= 0x100u;
    a4[23] = v21 + (((103 * (v23 + v22)) >> 15) & 1) + ((103 * (v23 + v22)) >> 10);
  }
}

uint64_t *sub_EB6738(uint64_t *a1, uint64_t *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = a1;
  if (a3 == 3)
  {
    v11 = a1 + 1;
    v10 = a1[1];
    if (*(v10 + 68))
    {
      v12 = 1;
    }

    else
    {
      v12 = (*(v10 + 16) & 0x10) == 0;
    }

    if (!v12)
    {
      v26 = *a1;
      if (v10 != *v6)
      {
        v27 = *(v26 + 8);
        if ((v27 & 2) != 0)
        {
          v27 = 0;
        }

        else if (v27)
        {
          v27 = *(v27 & 0xFFFFFFFFFFFFFFFCLL);
        }

        v46 = *(v10 + 8);
        if ((v46 & 2) != 0)
        {
          v46 = 0;
        }

        else if (v46)
        {
          v46 = *(v46 & 0xFFFFFFFFFFFFFFFCLL);
        }

        v51 = v6[1];
        if (v27 == v46)
        {
          sub_14D2840(v26, v51);
          v7 = *v11;
          v8 = *a2;
          if (*a2 == *v11)
          {
            return a2;
          }

          goto LABEL_81;
        }

        sub_1956DC4(v26, v51);
      }

      v7 = *v11;
      v8 = *a2;
      if (*a2 == *v11)
      {
        return a2;
      }

LABEL_81:
      v9 = *(v7 + 8);
      if ((v9 & 2) != 0)
      {
        v9 = 0;
      }

      else if (v9)
      {
        v9 = *(v9 & 0xFFFFFFFFFFFFFFFCLL);
      }

      v39 = *(v8 + 8);
      if ((v39 & 2) == 0)
      {
        goto LABEL_59;
      }

      goto LABEL_90;
    }

    v13 = *a2;
    if (*a2 != v10)
    {
      v14 = *(v10 + 8);
      if ((v14 & 2) != 0)
      {
        v14 = 0;
      }

      else if (v14)
      {
        v14 = *(v14 & 0xFFFFFFFFFFFFFFFCLL);
      }

      v45 = *(v13 + 8);
      if ((v45 & 2) != 0)
      {
        v45 = 0;
      }

      else if (v45)
      {
        v45 = *(v45 & 0xFFFFFFFFFFFFFFFCLL);
      }

      v47 = a1[1];
      if (v14 == v45)
      {
        sub_14D2840(v47, v13);
        v48 = *v6;
        v49 = v6[1];
        if (v49 == *v6)
        {
          return v11;
        }

LABEL_74:
        v50 = *(v48 + 8);
        if ((v50 & 2) != 0)
        {
          v50 = 0;
        }

        else if (v50)
        {
          v50 = *(v50 & 0xFFFFFFFFFFFFFFFCLL);
        }

        v52 = *(v49 + 8);
        if ((v52 & 2) != 0)
        {
          v52 = 0;
        }

        else if (v52)
        {
          v52 = *(v52 & 0xFFFFFFFFFFFFFFFCLL);
        }

        if (v50 == v52)
        {
          sub_14D2840(v48, v49);
        }

        else
        {
          sub_1956DC4(v48, v49);
        }

        return v11;
      }

      sub_1956DC4(v47, v13);
    }

    v48 = *v6;
    v49 = v6[1];
    if (v49 == *v6)
    {
      return v11;
    }

    goto LABEL_74;
  }

  if (a3 == 2)
  {
    v7 = *a1;
    v8 = *a2;
    if (*a2 != *v6)
    {
      v9 = *(v7 + 8);
      if ((v9 & 2) != 0)
      {
        v9 = 0;
      }

      else if (v9)
      {
        v9 = *(v9 & 0xFFFFFFFFFFFFFFFCLL);
      }

      v39 = *(v8 + 8);
      if ((v39 & 2) == 0)
      {
LABEL_59:
        if (v39)
        {
          v39 = *(v39 & 0xFFFFFFFFFFFFFFFCLL);
        }

        goto LABEL_91;
      }

LABEL_90:
      v39 = 0;
LABEL_91:
      if (v9 == v39)
      {
        sub_14D2840(v7, v8);
      }

      else
      {
        sub_1956DC4(v7, v8);
      }

      return a2;
    }

    return a2;
  }

  v15 = a4;
  if (a5 >= a3)
  {
    v28 = a1 + 1;
    sub_EB6C98(a4, *a1);
    v29 = v15 + 112;
    for (i = 1; v28 != a2; ++v28)
    {
      while (1)
      {
        v31 = *v28;
        if (!*(*v28 + 68) && (*(*v28 + 16) & 0x10) != 0)
        {
          break;
        }

        sub_EB6C98(v29, v31);
        ++i;
        v29 += 112;
        if (++v28 == a2)
        {
          goto LABEL_53;
        }
      }

      v33 = *v6;
      if (*v6 != v31)
      {
        v34 = *(v33 + 8);
        if ((v34 & 2) != 0)
        {
          v34 = 0;
        }

        else if (v34)
        {
          v34 = *(v34 & 0xFFFFFFFFFFFFFFFCLL);
        }

        v35 = *(v31 + 8);
        if ((v35 & 2) != 0)
        {
          v35 = 0;
        }

        else if (v35)
        {
          v35 = *(v35 & 0xFFFFFFFFFFFFFFFCLL);
        }

        if (v34 == v35)
        {
          sub_14D2840(v33, v31);
        }

        else
        {
          sub_14D2790(v33, v31);
        }
      }

      ++v6;
    }

LABEL_53:
    v36 = *v28;
    v37 = *v6;
    if (*v6 != *v28)
    {
      v38 = *(v37 + 8);
      if ((v38 & 2) != 0)
      {
        v38 = 0;
      }

      else if (v38)
      {
        v38 = *(v38 & 0xFFFFFFFFFFFFFFFCLL);
      }

      v53 = *(v36 + 8);
      if ((v53 & 2) != 0)
      {
        v53 = 0;
      }

      else if (v53)
      {
        v53 = *(v53 & 0xFFFFFFFFFFFFFFFCLL);
      }

      if (v38 == v53)
      {
        sub_14D2840(v37, v36);
      }

      else
      {
        sub_14D2790(v37, v36);
      }
    }

    v11 = v6 + 1;
    if (v29 > v15)
    {
      v63 = v15;
      v64 = v6 + 1;
      do
      {
        v65 = *v64;
        if (v63 != *v64)
        {
          v66 = *(v65 + 8);
          if ((v66 & 2) != 0)
          {
            v66 = 0;
          }

          else if (v66)
          {
            v66 = *(v66 & 0xFFFFFFFFFFFFFFFCLL);
          }

          v67 = *(v63 + 8);
          if ((v67 & 2) != 0)
          {
            v67 = 0;
          }

          else if (v67)
          {
            v67 = *(v67 & 0xFFFFFFFFFFFFFFFCLL);
          }

          if (v66 == v67)
          {
            sub_14D2840(v65, v63);
          }

          else
          {
            sub_14D2790(v65, v63);
          }
        }

        v63 += 112;
        ++v64;
      }

      while (v63 < v29);
    }

    if (v15 && i)
    {
      for (j = 0; j < i; ++j)
      {
        sub_14D13E0(v15);
        v15 += 112;
      }
    }
  }

  else
  {
    v16 = a3 / 2;
    v17 = &a1[a3 / 2];
    v19 = *(v17 - 1);
    v18 = v17 - 1;
    v20 = *(v19 + 16) & 0x10;
    if (*(v19 + 68))
    {
      v21 = 1;
    }

    else
    {
      v21 = v20 == 0;
    }

    if (v21)
    {
      v22 = 8 - 8 * v16;
      v40 = a3 / 2;
      while (v22)
      {
        --v40;
        v23 = *--v18;
        v24 = *(v23 + 16) & 0x10;
        v22 += 8;
        if (*(v23 + 68))
        {
          v25 = 1;
        }

        else
        {
          v25 = v24 == 0;
        }

        if (!v25)
        {
          goto LABEL_61;
        }
      }

      v42 = a5;
      v44 = a1;
    }

    else
    {
      v40 = a3 / 2;
LABEL_61:
      v41 = a3;
      v42 = a5;
      v43 = sub_EB6738(a1, v18, v40, a4, a5);
      a3 = v41;
      v44 = v43;
    }

    v54 = v6[v16];
    v55 = a3 - v16;
    if (*(v54 + 68))
    {
      v56 = 1;
    }

    else
    {
      v56 = (*(v54 + 16) & 0x10) == 0;
    }

    if (v56)
    {
      v58 = v17;
      v59 = v42;
LABEL_118:
      v11 = sub_EB6738(v58, a2, v55, v15, v59);
    }

    else
    {
      v11 = a2 + 1;
      v57 = v17 + 1;
      v58 = v17;
      v59 = v42;
      while (v57 != a2)
      {
        --v55;
        v60 = *v57++;
        v61 = *(v60 + 16) & 0x10;
        ++v58;
        if (*(v60 + 68))
        {
          v62 = 1;
        }

        else
        {
          v62 = v61 == 0;
        }

        if (v62)
        {
          goto LABEL_118;
        }
      }
    }

    if (v44 != v17)
    {
      if (v17 == v11)
      {
        return v44;
      }

      else
      {
        return sub_EB6D98(v44, v17, v11);
      }
    }
  }

  return v11;
}

uint64_t sub_EB6C98(uint64_t a1, uint64_t a2)
{
  sub_14D12C8(a1, 0, 0);
  if (a1 != a2)
  {
    v4 = *(a1 + 8);
    if ((v4 & 2) != 0)
    {
      v4 = 0;
    }

    else if (v4)
    {
      v4 = *(v4 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v5 = *(a2 + 8);
    if ((v5 & 2) != 0)
    {
      v5 = 0;
    }

    else if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (v4 == v5)
    {
      sub_14D2840(a1, a2);
    }

    else
    {
      sub_14D2790(a1, a2);
    }
  }

  return a1;
}

uint64_t *sub_EB6D38(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = a1[1];
    if (*v3)
    {
      v4 = 0;
      do
      {
        ++v4;
        v2 = sub_14D13E0(v2) + 112;
      }

      while (v4 < *v3);
    }
  }

  return a1;
}

uint64_t *sub_EB6D98(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v5 = a1 + 1;
  v6 = a2 + 1;
  v7 = a1 + 1;
  v8 = *a1;
  v9 = *a2;
  if (v9 != v8)
  {
    goto LABEL_2;
  }

LABEL_12:
  while (v6 != a3)
  {
    while (1)
    {
      if (v7 == v4)
      {
        v4 = v6;
      }

      ++v7;
      ++v5;
      ++v6;
      v8 = *(v7 - 1);
      v9 = *(v6 - 1);
      if (v9 == v8)
      {
        break;
      }

LABEL_2:
      v10 = *(v8 + 8);
      if ((v10 & 2) != 0)
      {
        v10 = 0;
      }

      else if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFCLL);
      }

      v11 = *(v9 + 8);
      if ((v11 & 2) != 0)
      {
        v11 = 0;
      }

      else if (v11)
      {
        v11 = *(v11 & 0xFFFFFFFFFFFFFFFCLL);
      }

      if (v10 != v11)
      {
        sub_1956DC4(v8, v9);
        goto LABEL_12;
      }

      sub_14D2840(v8, v9);
      if (v6 == a3)
      {
        goto LABEL_18;
      }
    }
  }

LABEL_18:
  if (v7 != v4)
  {
    v12 = v4;
    while (1)
    {
      v13 = *v7;
      v14 = *v12;
      if (*v12 == *v7)
      {
        goto LABEL_33;
      }

      v15 = *(v13 + 8);
      if ((v15 & 2) != 0)
      {
        v15 = 0;
      }

      else if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFCLL);
      }

      v16 = *(v14 + 8);
      if ((v16 & 2) != 0)
      {
        v16 = 0;
      }

      else if (v16)
      {
        v16 = *(v16 & 0xFFFFFFFFFFFFFFFCLL);
      }

      if (v15 == v16)
      {
        break;
      }

      sub_1956DC4(v13, v14);
LABEL_33:
      ++v7;
      ++v12;
      v17 = v7 == v4;
      if (v12 == a3)
      {
        goto LABEL_34;
      }

LABEL_20:
      if (v17)
      {
        v4 = v12;
      }
    }

    sub_14D2840(v13, v14);
    ++v7;
    ++v12;
    v17 = v7 == v4;
    if (v12 != a3)
    {
      goto LABEL_20;
    }

LABEL_34:
    if (v7 != v4)
    {
      v12 = v4 + 1;
      while (1)
      {
        v18 = *v7;
        v19 = *v4;
        if (*v4 == *v7)
        {
          goto LABEL_47;
        }

        v20 = *(v18 + 8);
        if ((v20 & 2) != 0)
        {
          v20 = 0;
        }

        else if (v20)
        {
          v20 = *(v20 & 0xFFFFFFFFFFFFFFFCLL);
        }

        v21 = *(v19 + 8);
        if ((v21 & 2) != 0)
        {
          v21 = 0;
        }

        else if (v21)
        {
          v21 = *(v21 & 0xFFFFFFFFFFFFFFFCLL);
        }

        if (v20 != v21)
        {
          break;
        }

        sub_14D2840(v18, v19);
        v17 = ++v7 == v4;
        if (v12 != a3)
        {
          goto LABEL_20;
        }

LABEL_48:
        if (v7 == v4)
        {
          return v5;
        }
      }

      sub_1956DC4(v18, v19);
LABEL_47:
      v17 = ++v7 == v4;
      if (v12 != a3)
      {
        goto LABEL_20;
      }

      goto LABEL_48;
    }
  }

  return v5;
}

uint64_t *sub_EB6FAC(uint64_t *a1, uint64_t *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = a1;
  if (a3 == 3)
  {
    v11 = a1 + 1;
    v10 = a1[1];
    if (*(v10 + 64) == 2 && *(v10 + 72) <= 0x258u)
    {
      v12 = *a1;
      if (v10 != *v6)
      {
        v13 = *(v12 + 8);
        if ((v13 & 2) != 0)
        {
          v13 = 0;
        }

        else if (v13)
        {
          v13 = *(v13 & 0xFFFFFFFFFFFFFFFCLL);
        }

        v54 = *(v10 + 8);
        if ((v54 & 2) != 0)
        {
          v54 = 0;
        }

        else if (v54)
        {
          v54 = *(v54 & 0xFFFFFFFFFFFFFFFCLL);
        }

        v55 = v6[1];
        if (v13 == v54)
        {
          sub_14D2840(v12, v55);
          v7 = *v11;
          v8 = *a2;
          if (*a2 == *v11)
          {
            return a2;
          }

          goto LABEL_84;
        }

        sub_1956DC4(v12, v55);
      }

      v7 = *v11;
      v8 = *a2;
      if (*a2 == *v11)
      {
        return a2;
      }

LABEL_84:
      v9 = *(v7 + 8);
      if ((v9 & 2) != 0)
      {
        v9 = 0;
      }

      else if (v9)
      {
        v9 = *(v9 & 0xFFFFFFFFFFFFFFFCLL);
      }

      v32 = *(v8 + 8);
      if ((v32 & 2) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_89;
    }

    v20 = *a2;
    if (*a2 != v10)
    {
      v21 = *(v10 + 8);
      if ((v21 & 2) != 0)
      {
        v21 = 0;
      }

      else if (v21)
      {
        v21 = *(v21 & 0xFFFFFFFFFFFFFFFCLL);
      }

      v48 = *(v20 + 8);
      if ((v48 & 2) != 0)
      {
        v48 = 0;
      }

      else if (v48)
      {
        v48 = *(v48 & 0xFFFFFFFFFFFFFFFCLL);
      }

      v49 = a1[1];
      if (v21 == v48)
      {
        sub_14D2840(v49, v20);
        v50 = *v6;
        v51 = v6[1];
        if (v51 == *v6)
        {
          return v11;
        }

LABEL_66:
        v52 = *(v50 + 8);
        if ((v52 & 2) != 0)
        {
          v52 = 0;
        }

        else if (v52)
        {
          v52 = *(v52 & 0xFFFFFFFFFFFFFFFCLL);
        }

        v53 = *(v51 + 8);
        if ((v53 & 2) != 0)
        {
          v53 = 0;
        }

        else if (v53)
        {
          v53 = *(v53 & 0xFFFFFFFFFFFFFFFCLL);
        }

        if (v52 == v53)
        {
          sub_14D2840(v50, v51);
        }

        else
        {
          sub_1956DC4(v50, v51);
        }

        return v11;
      }

      sub_1956DC4(v49, v20);
    }

    v50 = *v6;
    v51 = v6[1];
    if (v51 == *v6)
    {
      return v11;
    }

    goto LABEL_66;
  }

  if (a3 == 2)
  {
    v7 = *a1;
    v8 = *a2;
    if (*a2 != *v6)
    {
      v9 = *(v7 + 8);
      if ((v9 & 2) != 0)
      {
        v9 = 0;
      }

      else if (v9)
      {
        v9 = *(v9 & 0xFFFFFFFFFFFFFFFCLL);
      }

      v32 = *(v8 + 8);
      if ((v32 & 2) == 0)
      {
LABEL_45:
        if (v32)
        {
          v32 = *(v32 & 0xFFFFFFFFFFFFFFFCLL);
        }

        goto LABEL_90;
      }

LABEL_89:
      v32 = 0;
LABEL_90:
      if (v9 == v32)
      {
        sub_14D2840(v7, v8);
      }

      else
      {
        sub_1956DC4(v7, v8);
      }

      return a2;
    }

    return a2;
  }

  v14 = a4;
  if (a5 < a3)
  {
    v15 = a3 / 2;
    v16 = &a1[a3 / 2];
    v17 = v16 - 1;
    v18 = *(v16 - 1);
    if (*(v18 + 64) == 2 && *(v18 + 72) < 0x259u)
    {
      v19 = a3 / 2;
LABEL_51:
      v37 = a5;
      v38 = sub_EB6FAC(a1, v17, v19, a4, a5);
      v39 = a3;
      v40 = v38;
      v41 = v39 - v15;
      v42 = v6[v15];
      if (*(v42 + 64) == 2)
      {
LABEL_52:
        v43 = v37;
        if (*(v42 + 72) <= 0x258u)
        {
          v11 = a2 + 1;
          v44 = v16 + 1;
          v45 = v16;
          while (v44 != a2)
          {
            --v41;
            v47 = *v44++;
            v46 = v47;
            ++v45;
            if (*(v47 + 64) != 2 || *(v46 + 72) >= 0x259u)
            {
              goto LABEL_104;
            }
          }

          goto LABEL_105;
        }

        v45 = v16;
LABEL_104:
        v11 = sub_EB6FAC(v45, a2, v41, v14, v43);
LABEL_105:
        if (v40 != v16)
        {
          if (v16 == v11)
          {
            return v40;
          }

          else
          {
            return sub_EB6D98(v40, v16, v11);
          }
        }

        return v11;
      }
    }

    else
    {
      v33 = 8 - 8 * v15;
      v19 = a3 / 2;
      while (v33)
      {
        --v19;
        v35 = *--v17;
        v34 = v35;
        v33 += 8;
        if (*(v35 + 64) == 2 && *(v34 + 72) <= 0x258u)
        {
          goto LABEL_51;
        }
      }

      v37 = a5;
      v40 = a1;
      v41 = a3 - v15;
      v42 = a1[v15];
      if (*(v42 + 64) == 2)
      {
        goto LABEL_52;
      }
    }

    v45 = v16;
    v43 = v37;
    goto LABEL_104;
  }

  v22 = a1 + 1;
  sub_EB6C98(a4, *a1);
  v23 = v14 + 112;
  for (i = 1; v22 != a2; ++v22)
  {
    while (1)
    {
      v25 = *v22;
      if (*(*v22 + 64) == 2 && *(v25 + 72) <= 0x258u)
      {
        break;
      }

      sub_EB6C98(v23, v25);
      ++i;
      v23 += 112;
      if (++v22 == a2)
      {
        goto LABEL_39;
      }
    }

    v26 = *v6;
    if (*v6 != v25)
    {
      v27 = *(v26 + 8);
      if ((v27 & 2) != 0)
      {
        v27 = 0;
      }

      else if (v27)
      {
        v27 = *(v27 & 0xFFFFFFFFFFFFFFFCLL);
      }

      v28 = *(v25 + 8);
      if ((v28 & 2) != 0)
      {
        v28 = 0;
      }

      else if (v28)
      {
        v28 = *(v28 & 0xFFFFFFFFFFFFFFFCLL);
      }

      if (v27 == v28)
      {
        sub_14D2840(v26, v25);
      }

      else
      {
        sub_14D2790(v26, v25);
      }
    }

    ++v6;
  }

LABEL_39:
  v29 = *v22;
  v30 = *v6;
  if (*v6 != *v22)
  {
    v31 = *(v30 + 8);
    if ((v31 & 2) != 0)
    {
      v31 = 0;
    }

    else if (v31)
    {
      v31 = *(v31 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v56 = *(v29 + 8);
    if ((v56 & 2) != 0)
    {
      v56 = 0;
    }

    else if (v56)
    {
      v56 = *(v56 & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (v31 == v56)
    {
      sub_14D2840(v30, v29);
    }

    else
    {
      sub_14D2790(v30, v29);
    }
  }

  v11 = v6 + 1;
  if (v23 > v14)
  {
    v57 = v14;
    v58 = v6 + 1;
    do
    {
      v59 = *v58;
      if (v57 != *v58)
      {
        v60 = *(v59 + 8);
        if ((v60 & 2) != 0)
        {
          v60 = 0;
        }

        else if (v60)
        {
          v60 = *(v60 & 0xFFFFFFFFFFFFFFFCLL);
        }

        v61 = *(v57 + 8);
        if ((v61 & 2) != 0)
        {
          v61 = 0;
        }

        else if (v61)
        {
          v61 = *(v61 & 0xFFFFFFFFFFFFFFFCLL);
        }

        if (v60 == v61)
        {
          sub_14D2840(v59, v57);
        }

        else
        {
          sub_14D2790(v59, v57);
        }
      }

      v57 += 112;
      ++v58;
    }

    while (v57 < v23);
  }

  if (v14 && i)
  {
    for (j = 0; j < i; ++j)
    {
      sub_14D13E0(v14);
      v14 += 112;
    }
  }

  return v11;
}

double sub_EB7524(uint64_t *result, uint64_t *a2, unint64_t a3, void *a4, int64_t a5)
{
  if (a3 >= 2)
  {
    v6 = result;
    if (a3 == 2)
    {
      v7 = *(a2 - 1);
      v8 = *result;
      if (v7 != *v6 && *(v7 + 72) < *(*v6 + 72))
      {
        v10 = *(v8 + 8);
        if ((v10 & 2) != 0)
        {
          v10 = 0;
        }

        else if (v10)
        {
          v10 = *(v10 & 0xFFFFFFFFFFFFFFFCLL);
        }

        v48 = *(v7 + 8);
        if ((v48 & 2) != 0)
        {
          v48 = 0;
        }

        else if (v48)
        {
          v48 = *(v48 & 0xFFFFFFFFFFFFFFFCLL);
        }

        if (v10 == v48)
        {

          *&v17 = sub_14D2840(v8, v7).n128_u64[0];
        }

        else
        {

          sub_1956DC4(v8, v7);
        }
      }
    }

    else if (a3 <= 0)
    {
      if (result != a2)
      {
        v18 = result + 1;
        if (result + 1 != a2)
        {
          v19 = 0;
          v20 = result;
          do
          {
            v21 = v18;
            if (*(*v18 + 72) < *(*v20 + 72))
            {
              sub_EB6C98(&v50, *v18);
              v22 = *v20;
              v23 = v19;
              while (1)
              {
                v24 = *(v6 + v23 + 8);
                if (v24 != v22)
                {
                  v25 = *(v24 + 8);
                  if ((v25 & 2) != 0)
                  {
                    v25 = 0;
                  }

                  else if (v25)
                  {
                    v25 = *(v25 & 0xFFFFFFFFFFFFFFFCLL);
                  }

                  v26 = *(v22 + 8);
                  if ((v26 & 2) != 0)
                  {
                    v26 = 0;
                  }

                  else if (v26)
                  {
                    v26 = *(v26 & 0xFFFFFFFFFFFFFFFCLL);
                  }

                  if (v25 == v26)
                  {
                    sub_14D2840(v24, v22);
                  }

                  else
                  {
                    sub_14D2790(v24, v22);
                  }
                }

                if (!v23)
                {
                  break;
                }

                v22 = *(v6 + v23 - 8);
                v23 -= 8;
                if (v52 >= *(v22 + 72))
                {
                  v27 = *(v6 + v23 + 8);
                  if (v27 == &v50)
                  {
                    goto LABEL_20;
                  }

                  goto LABEL_41;
                }
              }

              v27 = *v6;
              if (*v6 == &v50)
              {
                goto LABEL_20;
              }

LABEL_41:
              v28 = v27[1];
              if ((v28 & 2) != 0)
              {
                v28 = 0;
              }

              else if (v28)
              {
                v28 = *(v28 & 0xFFFFFFFFFFFFFFFCLL);
              }

              v29 = v51;
              if ((v51 & 2) != 0)
              {
                v29 = 0;
              }

              else if (v51)
              {
                v29 = *(v51 & 0xFFFFFFFFFFFFFFFCLL);
              }

              if (v28 == v29)
              {
                sub_14D2840(v27, &v50);
              }

              else
              {
                sub_14D2790(v27, &v50);
              }

LABEL_20:
              sub_14D13E0(&v50);
            }

            v18 = v21 + 1;
            v19 += 8;
            v20 = v21;
          }

          while (v21 + 1 != a2);
        }
      }
    }

    else
    {
      v11 = a4;
      v12 = a3 >> 1;
      v13 = &result[a3 >> 1];
      if (a3 <= a5)
      {
        v49 = 0;
        v50 = a4;
        v51 = &v49;
        sub_EB7AAC(result, &result[a3 >> 1], a3 >> 1, a4);
        v49 = v12;
        v30 = a3 - v12;
        v31 = &v11[14 * v12];
        sub_EB7AAC(v13, a2, v30, v31);
        v49 = a3;
        v32 = &v11[14 * a3];
        v33 = v31;
        while (v33 != v32)
        {
          v34 = *v6;
          if (*(v33 + 72) >= *(v11 + 18))
          {
            if (v34 != v11)
            {
              v36 = *(v34 + 8);
              if ((v36 & 2) != 0)
              {
                v36 = 0;
              }

              else if (v36)
              {
                v36 = *(v36 & 0xFFFFFFFFFFFFFFFCLL);
              }

              v38 = v11[1];
              if ((v38 & 2) != 0)
              {
                v38 = 0;
              }

              else if (v38)
              {
                v38 = *(v38 & 0xFFFFFFFFFFFFFFFCLL);
              }

              if (v36 == v38)
              {
                *&v17 = sub_14D2840(v34, v11).n128_u64[0];
              }

              else
              {
                sub_14D2790(v34, v11);
              }
            }

            v11 += 14;
            ++v6;
            if (v11 == v31)
            {
LABEL_97:
              while (v33 != v32)
              {
                v42 = *v6;
                if (v33 != *v6)
                {
                  v43 = *(v42 + 8);
                  if ((v43 & 2) != 0)
                  {
                    v43 = 0;
                  }

                  else if (v43)
                  {
                    v43 = *(v43 & 0xFFFFFFFFFFFFFFFCLL);
                  }

                  v44 = *(v33 + 8);
                  if ((v44 & 2) != 0)
                  {
                    v44 = 0;
                  }

                  else if (v44)
                  {
                    v44 = *(v44 & 0xFFFFFFFFFFFFFFFCLL);
                  }

                  if (v43 == v44)
                  {
                    *&v17 = sub_14D2840(v42, v33).n128_u64[0];
                  }

                  else
                  {
                    sub_14D2790(v42, v33);
                  }
                }

                v33 += 112;
                ++v6;
              }

              goto LABEL_109;
            }
          }

          else
          {
            if (v34 != v33)
            {
              v35 = *(v34 + 8);
              if ((v35 & 2) != 0)
              {
                v35 = 0;
              }

              else if (v35)
              {
                v35 = *(v35 & 0xFFFFFFFFFFFFFFFCLL);
              }

              v37 = *(v33 + 8);
              if ((v37 & 2) != 0)
              {
                v37 = 0;
              }

              else if (v37)
              {
                v37 = *(v37 & 0xFFFFFFFFFFFFFFFCLL);
              }

              if (v35 == v37)
              {
                *&v17 = sub_14D2840(v34, v33).n128_u64[0];
              }

              else
              {
                sub_14D2790(v34, v33);
              }
            }

            v33 += 112;
            ++v6;
            if (v11 == v31)
            {
              goto LABEL_97;
            }
          }
        }

        while (v11 != v31)
        {
          v39 = *v6;
          if (v11 != *v6)
          {
            v40 = *(v39 + 8);
            if ((v40 & 2) != 0)
            {
              v40 = 0;
            }

            else if (v40)
            {
              v40 = *(v40 & 0xFFFFFFFFFFFFFFFCLL);
            }

            v41 = v11[1];
            if ((v41 & 2) != 0)
            {
              v41 = 0;
            }

            else if (v41)
            {
              v41 = *(v41 & 0xFFFFFFFFFFFFFFFCLL);
            }

            if (v40 == v41)
            {
              *&v17 = sub_14D2840(v39, v11).n128_u64[0];
            }

            else
            {
              sub_14D2790(v39, v11);
            }
          }

          v11 += 14;
          ++v6;
        }

LABEL_109:
        v45 = v50;
        if (v50)
        {
          v46 = v51;
          if (*v51)
          {
            v47 = 0;
            do
            {
              ++v47;
              v45 = sub_14D13E0(v45) + 112;
            }

            while (v47 < *v46);
          }
        }
      }

      else
      {
        sub_EB7524(result, &result[a3 >> 1], a3 >> 1, a4, a5);
        v16 = a3 - v12;
        sub_EB7524(v13, a2, v16, v11, a5);

        return sub_EB7DAC(v6, v13, a2, v12, v16, v11, a5);
      }
    }
  }

  return v17;
}

void sub_EB7A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_EB6D38(va);
  _Unwind_Resume(a1);
}

void sub_EB7AAC(uint64_t *result, uint64_t *a2, unint64_t a3, void *a4)
{
  if (a3)
  {
    v4 = a4;
    v6 = result;
    if (a3 == 2)
    {
      v9 = *(a2 - 1);
      if (*(v9 + 72) >= *(*result + 72))
      {
        sub_EB6C98(a4, *result);
        v7 = *(a2 - 1);
      }

      else
      {
        sub_EB6C98(a4, v9);
        v7 = *v6;
      }

      v8 = v4 + 14;

      goto LABEL_6;
    }

    if (a3 == 1)
    {
      v7 = *result;
      v8 = a4;

LABEL_6:
      sub_EB6C98(v8, v7);
      return;
    }

    if (a3 > 8)
    {
      v22 = a3 >> 1;
      v23 = &result[a3 >> 1];
      sub_EB7524(result, v23, v22, a4, v22);
      sub_EB7524(v23, a2, a3 - v22, &v4[14 * v22], a3 - v22);
      v25 = v23;
      while (v25 != a2)
      {
        if (*(*v25 + 72) >= *(*v6 + 72))
        {
          sub_EB6C98(v4, *v6++);
          v4 += 14;
          if (v6 == v23)
          {
            goto LABEL_58;
          }
        }

        else
        {
          sub_EB6C98(v4, *v25++);
          v4 += 14;
          if (v6 == v23)
          {
LABEL_58:
            while (v25 != a2)
            {
              v27 = *v25++;
              sub_EB6C98(v4, v27);
              v4 += 14;
            }

            return;
          }
        }
      }

      while (v6 != v23)
      {
        v26 = *v6++;
        sub_EB6C98(v4, v26);
        v4 += 14;
      }
    }

    else if (result != a2)
    {
      v10 = result + 1;
      sub_EB6C98(a4, *result);
      if (v10 != a2)
      {
        v11 = 0;
        v12 = v4;
        do
        {
          v13 = v12;
          v12 += 112;
          if (*(*v10 + 72) >= *(v13 + 72))
          {
            sub_EB6C98(v12, *v10);
          }

          else
          {
            sub_EB6C98(v12, v13);
            v14 = v4;
            if (v13 != v4)
            {
              v15 = v11;
              while (1)
              {
                v14 = v4 + v15;
                if (*(*v10 + 72) >= *(v4 + v15 - 40))
                {
                  break;
                }

                v16 = *(v14 + 8);
                if ((v16 & 2) != 0)
                {
                  v16 = 0;
                }

                else if (v16)
                {
                  v16 = *(v16 & 0xFFFFFFFFFFFFFFFCLL);
                }

                v17 = *(v4 + v15 - 104);
                if ((v17 & 2) != 0)
                {
                  v17 = 0;
                }

                else if (v17)
                {
                  v17 = *(v17 & 0xFFFFFFFFFFFFFFFCLL);
                }

                v18 = v14 - 112;
                if (v16 == v17)
                {
                  sub_14D2840(v14, v18);
                }

                else
                {
                  sub_14D2790(v14, v18);
                }

                v15 -= 112;
                if (!v15)
                {
                  v14 = v4;
                  break;
                }
              }
            }

            v19 = *v10;
            if (v14 != *v10)
            {
              v20 = *(v14 + 8);
              if ((v20 & 2) != 0)
              {
                v20 = 0;
              }

              else if (v20)
              {
                v20 = *(v20 & 0xFFFFFFFFFFFFFFFCLL);
              }

              v21 = *(v19 + 8);
              if ((v21 & 2) != 0)
              {
                v21 = 0;
              }

              else if (v21)
              {
                v21 = *(v21 & 0xFFFFFFFFFFFFFFFCLL);
              }

              if (v20 == v21)
              {
                sub_14D2840(v14, v19);
              }

              else
              {
                sub_14D2790(v14, v19);
              }
            }
          }

          ++v10;
          v11 += 112;
        }

        while (v10 != a2);
      }
    }
  }
}

double sub_EB7DAC(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a5)
  {
    return v43;
  }

  while (a5 > a7 && a4 > a7)
  {
    if (!a4)
    {
      return v43;
    }

    v11 = 0;
    v12 = *a2;
    v13 = -a4;
    while (1)
    {
      v14 = *(v11 + result);
      if (*(*a2 + 72) < *(v14 + 72))
      {
        break;
      }

      ++v11;
      if (__CFADD__(v13++, 1))
      {
        return v43;
      }
    }

    v16 = -v13;
    v17 = (v11 + result);
    v78 = a3;
    v79 = a6;
    if (-v13 < a5)
    {
      v18 = a5 / 2;
      v19 = &a2[a5 / 2];
      v20 = a2;
      if ((a2 - result) != v11)
      {
        v21 = (a2 - result - v11) >> 3;
        v20 = (v11 + result);
        do
        {
          v22 = v21 >> 1;
          v23 = &v20[v21 >> 1];
          v25 = *v23;
          v24 = v23 + 1;
          v21 += ~(v21 >> 1);
          if (*(v25 + 72) > *(*v19 + 72))
          {
            v21 = v22;
          }

          else
          {
            v20 = v24;
          }
        }

        while (v21);
      }

      v26 = (v20 - result - v11) >> 3;
      a3 = &a2[a5 / 2];
      if (v20 == a2)
      {
        goto LABEL_29;
      }

LABEL_27:
      a3 = v20;
      if (a2 != v19)
      {
        v33 = a2;
        v34 = a5;
        v35 = a7;
        v36 = sub_EB6D98(v20, v33, v19);
        v17 = (v11 + result);
        a7 = v35;
        a5 = v34;
        a3 = v36;
      }

      goto LABEL_29;
    }

    if (v13 == -1)
    {
      if (v12 != v14)
      {
        v71 = *(v14 + 8);
        if ((v71 & 2) != 0)
        {
          v71 = 0;
        }

        else if (v71)
        {
          v71 = *(v71 & 0xFFFFFFFFFFFFFFFCLL);
        }

        v77 = *(v12 + 8);
        if ((v77 & 2) != 0)
        {
          v77 = 0;
        }

        else if (v77)
        {
          v77 = *(v77 & 0xFFFFFFFFFFFFFFFCLL);
        }

        if (v71 == v77)
        {

          *&v43 = sub_14D2840(v14, v12).n128_u64[0];
        }

        else
        {

          sub_1956DC4(v14, v12);
        }
      }

      return v43;
    }

    v26 = v16 / 2;
    v27 = &result[v16 / 2];
    v19 = a2;
    if (a2 != a3)
    {
      v28 = a3 - a2;
      v19 = a2;
      do
      {
        v29 = v28 >> 1;
        v30 = &v19[v28 >> 1];
        v32 = *v30;
        v31 = v30 + 1;
        v28 += ~(v28 >> 1);
        if (*(v32 + 72) < *(*(v11 + v27) + 72))
        {
          v19 = v31;
        }

        else
        {
          v28 = v29;
        }
      }

      while (v28);
    }

    v18 = v19 - a2;
    v20 = (v11 + v27);
    a3 = v19;
    if ((v11 + v27) != a2)
    {
      goto LABEL_27;
    }

LABEL_29:
    v37 = -(v26 + v13);
    v38 = a5 - v18;
    if (v26 + v18 >= a5 - (v26 + v18) - v13)
    {
      v44 = a7;
      result = v17;
      sub_EB7DAC(a3, v19, v78, v37, a5 - v18, v79, a7);
      a4 = v26;
      a6 = v79;
      a5 = v18;
      a2 = v20;
      a7 = v44;
      if (!v18)
      {
        return v43;
      }
    }

    else
    {
      v39 = v11 + result;
      v40 = -(v26 + v13);
      v41 = v26;
      a6 = v79;
      v42 = a7;
      sub_EB7DAC(v39, v20, a3, v41, v18, v79, a7);
      a4 = v40;
      result = a3;
      a3 = v78;
      a5 = v38;
      a2 = v19;
      a7 = v42;
      if (!v38)
      {
        return v43;
      }
    }
  }

  if (a4 <= a5)
  {
    if (a2 == result)
    {
      return v43;
    }

    v45 = 0;
    v57 = a6;
    v58 = result;
    do
    {
      v59 = *v58++;
      sub_EB6C98(v57, v59);
      ++v45;
      v57 += 112;
    }

    while (v58 != a2);
    v60 = a6;
    while (a2 != a3)
    {
      v61 = *a2;
      v62 = *result;
      if (*(*a2 + 72) >= *(v60 + 72))
      {
        if (v62 != v60)
        {
          v64 = *(v62 + 8);
          if ((v64 & 2) != 0)
          {
            v64 = 0;
          }

          else if (v64)
          {
            v64 = *(v64 & 0xFFFFFFFFFFFFFFFCLL);
          }

          v66 = *(v60 + 8);
          if ((v66 & 2) != 0)
          {
            v66 = 0;
          }

          else if (v66)
          {
            v66 = *(v66 & 0xFFFFFFFFFFFFFFFCLL);
          }

          if (v64 == v66)
          {
            *&v43 = sub_14D2840(v62, v60).n128_u64[0];
          }

          else
          {
            sub_14D2790(v62, v60);
          }
        }

        v60 += 112;
        ++result;
        if (v57 == v60)
        {
          goto LABEL_133;
        }
      }

      else
      {
        if (v62 != v61)
        {
          v63 = *(v62 + 8);
          if ((v63 & 2) != 0)
          {
            v63 = 0;
          }

          else if (v63)
          {
            v63 = *(v63 & 0xFFFFFFFFFFFFFFFCLL);
          }

          v65 = *(v61 + 8);
          if ((v65 & 2) != 0)
          {
            v65 = 0;
          }

          else if (v65)
          {
            v65 = *(v65 & 0xFFFFFFFFFFFFFFFCLL);
          }

          if (v63 == v65)
          {
            *&v43 = sub_14D2840(v62, v61).n128_u64[0];
          }

          else
          {
            sub_14D2790(v62, v61);
          }
        }

        ++a2;
        ++result;
        if (v57 == v60)
        {
          goto LABEL_133;
        }
      }
    }

    do
    {
      v68 = *result;
      if (v60 != *result)
      {
        v69 = *(v68 + 8);
        if ((v69 & 2) != 0)
        {
          v69 = 0;
        }

        else if (v69)
        {
          v69 = *(v69 & 0xFFFFFFFFFFFFFFFCLL);
        }

        v70 = *(v60 + 8);
        if ((v70 & 2) != 0)
        {
          v70 = 0;
        }

        else if (v70)
        {
          v70 = *(v70 & 0xFFFFFFFFFFFFFFFCLL);
        }

        if (v69 == v70)
        {
          *&v43 = sub_14D2840(v68, v60).n128_u64[0];
        }

        else
        {
          sub_14D2790(v68, v60);
        }
      }

      ++result;
      v67 = v57 - 112 == v60;
      v60 += 112;
    }

    while (!v67);
  }

  else
  {
    if (a2 == a3)
    {
      return v43;
    }

    v45 = 0;
    v46 = a6;
    v47 = a2;
    do
    {
      v48 = *v47++;
      sub_EB6C98(v46, v48);
      ++v45;
      v46 += 112;
    }

    while (v47 != a3);
    while (a2 != result)
    {
      v49 = a2 - 1;
      v50 = *(a2 - 1);
      v52 = *--a3;
      v51 = v52;
      if (*(v46 - 40) >= *(v50 + 72))
      {
        if (v51 == v46 - 112)
        {
          v49 = a2;
          v46 -= 112;
        }

        else
        {
          v54 = *(v51 + 8);
          if ((v54 & 2) != 0)
          {
            v54 = 0;
          }

          else if (v54)
          {
            v54 = *(v54 & 0xFFFFFFFFFFFFFFFCLL);
          }

          v56 = *(v46 - 104);
          if ((v56 & 2) != 0)
          {
            v56 = 0;
          }

          else if (v56)
          {
            v56 = *(v56 & 0xFFFFFFFFFFFFFFFCLL);
          }

          if (v54 == v56)
          {
            *&v43 = sub_14D2840(v51, v46 - 112).n128_u64[0];
          }

          else
          {
            sub_14D2790(v51, v46 - 112);
          }

          v49 = a2;
          v46 -= 112;
        }
      }

      else if (v51 != v50)
      {
        v53 = *(v51 + 8);
        if ((v53 & 2) != 0)
        {
          v53 = 0;
        }

        else if (v53)
        {
          v53 = *(v53 & 0xFFFFFFFFFFFFFFFCLL);
        }

        v55 = *(v50 + 8);
        if ((v55 & 2) != 0)
        {
          v55 = 0;
        }

        else if (v55)
        {
          v55 = *(v55 & 0xFFFFFFFFFFFFFFFCLL);
        }

        if (v53 == v55)
        {
          *&v43 = sub_14D2840(v51, v50).n128_u64[0];
        }

        else
        {
          sub_14D2790(v51, v50);
        }
      }

      a2 = v49;
      if (v46 == a6)
      {
        goto LABEL_133;
      }
    }

    if (v46 != a6)
    {
      v72 = v46 - 112;
      v73 = 0x1FFFFFFFFFFFFFFFLL;
      do
      {
        v74 = a3[v73];
        if (v72 != v74)
        {
          v75 = *(v74 + 8);
          if ((v75 & 2) != 0)
          {
            v75 = 0;
          }

          else if (v75)
          {
            v75 = *(v75 & 0xFFFFFFFFFFFFFFFCLL);
          }

          v76 = *(v72 + 8);
          if ((v76 & 2) != 0)
          {
            v76 = 0;
          }

          else if (v76)
          {
            v76 = *(v76 & 0xFFFFFFFFFFFFFFFCLL);
          }

          if (v75 == v76)
          {
            *&v43 = sub_14D2840(v74, v72).n128_u64[0];
          }

          else
          {
            sub_14D2790(v74, v72);
          }
        }

        --v73;
        v67 = v72 == a6;
        v72 -= 112;
      }

      while (!v67);
    }
  }

LABEL_133:
  if (a6 && v45)
  {
    do
    {
      sub_14D13E0(a6);
      a6 += 112;
      --v45;
    }

    while (v45);
  }

  return v43;
}

void sub_EB846C()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_27BB060 = 0u;
  *algn_27BB070 = 0u;
  dword_27BB080 = 1065353216;
  sub_3A9A34(&xmmword_27BB060, v0, v0);
  sub_3A9A34(&xmmword_27BB060, v3, v3);
  sub_3A9A34(&xmmword_27BB060, __p, __p);
  sub_3A9A34(&xmmword_27BB060, v9, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_27BB038 = 0;
    qword_27BB040 = 0;
    qword_27BB030 = 0;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_EB86B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27BB048)
  {
    qword_27BB050 = qword_27BB048;
    operator delete(qword_27BB048);
  }

  _Unwind_Resume(exception_object);
}

void sub_EB8760()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = v0;
  v8 = sub_74700();
  cat = v6->__cat_;
  v10 = sub_7E7E4(3u);
  if (cat == &off_2669FE0)
  {
    if (!v10)
    {
      goto LABEL_75;
    }

    sub_19594F8(&v46);
    LODWORD(v43) = sub_7421C(v8);
    sub_7230C(&v43, __p);
    if (v45 >= 0)
    {
      v22 = __p;
    }

    else
    {
      v22 = __p[0];
    }

    if (v45 >= 0)
    {
      v23 = HIBYTE(v45);
    }

    else
    {
      v23 = __p[1];
    }

    v24 = sub_4A5C(&v46, v22, v23);
    v25 = sub_4A5C(v24, " failed (SubError: ", 19);
    std::error_condition::message(&v42, v6);
    if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = &v42;
    }

    else
    {
      v26 = v42.__r_.__value_.__r.__words[0];
    }

    if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v42.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v42.__r_.__value_.__l.__size_;
    }

    v28 = sub_4A5C(v25, v26, size);
    v29 = sub_4A5C(v28, "): ", 3);
    v30 = sub_73F1C(v8);
    v31 = *(v30 + 23);
    if (v31 >= 0)
    {
      v32 = v30;
    }

    else
    {
      v32 = *v30;
    }

    if (v31 >= 0)
    {
      v33 = *(v30 + 23);
    }

    else
    {
      v33 = *(v30 + 8);
    }

    sub_4A5C(v29, v32, v33);
    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v45) & 0x80000000) == 0)
      {
LABEL_40:
        v34 = v56;
        if ((v56 & 0x10) == 0)
        {
          goto LABEL_41;
        }

        goto LABEL_62;
      }
    }

    else if ((SHIBYTE(v45) & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

    operator delete(__p[0]);
    v34 = v56;
    if ((v56 & 0x10) == 0)
    {
LABEL_41:
      if ((v34 & 8) == 0)
      {
        v35 = 0;
        HIBYTE(v45) = 0;
LABEL_70:
        *(__p + v35) = 0;
        sub_7E854(__p, 3u);
        if (SHIBYTE(v45) < 0)
        {
          operator delete(__p[0]);
        }

        if (v54 < 0)
        {
          operator delete(v53);
        }

        std::locale::~locale(&v48);
        std::ostream::~ostream();
        std::ios::~ios();
LABEL_75:
        v41 = sub_3AF4C0(v7);
        sub_21E2C18(v41, 1, *(v4 + 60));
      }

      v40 = v49;
      v35 = v50 - v49;
      if ((v50 - v49) > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_77:
        sub_3244();
      }

LABEL_65:
      if (v35 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v45) = v35;
      if (v35)
      {
        memmove(__p, v40, v35);
      }

      goto LABEL_70;
    }

LABEL_62:
    v39 = v55;
    if (v55 < v52)
    {
      v55 = v52;
      v39 = v52;
    }

    v40 = v51;
    v35 = v39 - v51;
    if (v39 - v51 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_77;
    }

    goto LABEL_65;
  }

  if (!v10)
  {
    goto LABEL_57;
  }

  sub_19594F8(&v46);
  LODWORD(v42.__r_.__value_.__l.__data_) = sub_7421C(v8);
  sub_7230C(&v42, __p);
  if (v45 >= 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  if (v45 >= 0)
  {
    v12 = HIBYTE(v45);
  }

  else
  {
    v12 = __p[1];
  }

  v13 = sub_4A5C(&v46, v11, v12);
  sub_4A5C(v13, " failed (ErrorCode: ", 20);
  v14 = std::ostream::operator<<();
  v15 = sub_4A5C(v14, "): ", 3);
  v16 = sub_73F1C(v8);
  v17 = *(v16 + 23);
  if (v17 >= 0)
  {
    v18 = v16;
  }

  else
  {
    v18 = *v16;
  }

  if (v17 >= 0)
  {
    v19 = *(v16 + 23);
  }

  else
  {
    v19 = *(v16 + 8);
  }

  sub_4A5C(v15, v18, v19);
  if ((SHIBYTE(v45) & 0x80000000) == 0)
  {
    v20 = v56;
    if ((v56 & 0x10) == 0)
    {
      goto LABEL_17;
    }

LABEL_44:
    v36 = v55;
    if (v55 < v52)
    {
      v55 = v52;
      v36 = v52;
    }

    v37 = v51;
    v21 = v36 - v51;
    if (v36 - v51 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_59:
      sub_3244();
    }

LABEL_47:
    if (v21 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v45) = v21;
    if (v21)
    {
      memmove(__p, v37, v21);
    }

    goto LABEL_52;
  }

  operator delete(__p[0]);
  v20 = v56;
  if ((v56 & 0x10) != 0)
  {
    goto LABEL_44;
  }

LABEL_17:
  if ((v20 & 8) != 0)
  {
    v37 = v49;
    v21 = v50 - v49;
    if ((v50 - v49) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_59;
    }

    goto LABEL_47;
  }

  v21 = 0;
  HIBYTE(v45) = 0;
LABEL_52:
  *(__p + v21) = 0;
  sub_7E854(__p, 3u);
  if (SHIBYTE(v45) < 0)
  {
    operator delete(__p[0]);
  }

  if (v54 < 0)
  {
    operator delete(v53);
  }

  std::locale::~locale(&v48);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_57:
  val = v6->__val_;
  *(v2 + 40) |= 0x400000u;
  *(v2 + 552) = val;
}

void sub_EBAE08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *a32)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a32);
  sub_14AFBC8(&a22);
  sub_EBB868(&a29);
  sub_559B98(&STACK[0xAD0]);
  sub_1F1A8(v32 - 128);
  sub_1F1A8(v32 - 112);
  _Unwind_Resume(a1);
}

uint64_t sub_EBB3C4(unsigned int a1)
{
  if (a1 > 0x2C || ((1 << a1) & 0xFFFFEFFFAFELL) != 0)
  {
    return 1;
  }

  if (((1 << a1) & 0x1000500) == 0)
  {
    *&v11.__val_ = a1;
    v11.__cat_ = &off_2669FE0;
    std::error_condition::message(&v13, &v11);
    if (sub_7E7E4(3u))
    {
      sub_19594F8(&v11.__val_);
      v2 = sub_4A5C(&v11, "Unexpected error code: ", 23);
      if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v3 = &v13;
      }

      else
      {
        v3 = v13.__r_.__value_.__r.__words[0];
      }

      if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v13.__r_.__value_.__l.__size_;
      }

      sub_4A5C(v2, v3, size);
      sub_1959680(&v11, __p);
      sub_7E854(__p, 3u);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }

      sub_1959728(&v11);
    }

    exception = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    if ((v12 & 0x80u) == 0)
    {
      v6 = &v11;
    }

    else
    {
      v6 = *&v11.__val_;
    }

    if ((v12 & 0x80u) == 0)
    {
      cat = v12;
    }

    else
    {
      cat = v11.__cat_;
    }

    v8 = sub_2D390(exception, v6, cat);
  }

  return 0;
}

void sub_EBB540(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a16);
  if (*(v21 - 33) < 0)
  {
    operator delete(*(v21 - 56));
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

std::string::size_type *sub_EBB5E8(uint64_t a1, std::string *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    v5 = sub_EBFC40(a1, a2);
    *(a1 + 8) = v5;
    return &v5[-2].__r_.__value_.__r.__words[2];
  }

  else
  {
    sub_EBFDD4(a1, *(a1 + 8), a2);
    *(a1 + 8) = v3 + 32;
    *(a1 + 8) = v3 + 32;
    return v3;
  }
}

void sub_EBB65C(int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  sub_14A5204(a3, 0, 0);
  v6 = v5[4];
  v5[4] = v6 | 1;
  v5[6] = a1;
  if (a2 != 0x7FFFFFFF)
  {
    v5[4] = v6 | 3;
    v5[7] = a2;
  }
}

uint64_t sub_EBB6B8(uint64_t **a1, void *a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7)
{
  v13 = sub_9274F4(*a1, a3);
  *(a7 + 16) |= 2u;
  v14 = *(a7 + 8);
  v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
  if (v14)
  {
    v15 = *v15;
  }

  sub_194EA1C((a7 + 32), v13, v15);
  sub_64B998(v24);
  v16 = *(a4 + 23);
  if ((v16 & 0x80u) != 0)
  {
    v16 = *(a4 + 8);
  }

  if (v16)
  {
    sub_EBE908(a1, a2, a4, a5, v24);
  }

  sub_64C184(v24, v13);
  if (a6)
  {
    v23 = 0;
    LOBYTE(__p) = 0;
    sub_64C06C(v24, "{VehicleName}", &__p);
  }

  *(a7 + 16) |= 8u;
  v17 = *(a7 + 48);
  if (!v17)
  {
    v18 = *(a7 + 8);
    v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
    if (v18)
    {
      v19 = *v19;
    }

    sub_14BAE64(v19);
    v17 = v20;
    *(a7 + 48) = v20;
  }

  sub_64D110(v24, v17);
  return sub_53A868(v24);
}

void sub_EBB82C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_53A868(&a16);
    _Unwind_Resume(a1);
  }

  sub_53A868(&a16);
  _Unwind_Resume(a1);
}

void **sub_EBB868(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_14A52AC(v3 - 4);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_EBB8C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = v8;
  v16 = sub_74700();
  cat = v14->__cat_;
  v18 = sub_7E7E4(3u);
  if (cat == &off_2669FE0)
  {
    if (!v18)
    {
      goto LABEL_75;
    }

    sub_19594F8(&v54);
    LODWORD(v51) = sub_7421C(v16);
    sub_7230C(&v51, __p);
    if (v53 >= 0)
    {
      v30 = __p;
    }

    else
    {
      v30 = __p[0];
    }

    if (v53 >= 0)
    {
      v31 = HIBYTE(v53);
    }

    else
    {
      v31 = __p[1];
    }

    v32 = sub_4A5C(&v54, v30, v31);
    v33 = sub_4A5C(v32, " failed (SubError: ", 19);
    std::error_condition::message(&v50, v14);
    if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v34 = &v50;
    }

    else
    {
      v34 = v50.__r_.__value_.__r.__words[0];
    }

    if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v50.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v50.__r_.__value_.__l.__size_;
    }

    v36 = sub_4A5C(v33, v34, size);
    v37 = sub_4A5C(v36, "): ", 3);
    v38 = sub_73F1C(v16);
    v39 = *(v38 + 23);
    if (v39 >= 0)
    {
      v40 = v38;
    }

    else
    {
      v40 = *v38;
    }

    if (v39 >= 0)
    {
      v41 = *(v38 + 23);
    }

    else
    {
      v41 = *(v38 + 8);
    }

    sub_4A5C(v37, v40, v41);
    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v53) & 0x80000000) == 0)
      {
LABEL_40:
        v42 = v64;
        if ((v64 & 0x10) == 0)
        {
          goto LABEL_41;
        }

        goto LABEL_62;
      }
    }

    else if ((SHIBYTE(v53) & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

    operator delete(__p[0]);
    v42 = v64;
    if ((v64 & 0x10) == 0)
    {
LABEL_41:
      if ((v42 & 8) == 0)
      {
        v43 = 0;
        HIBYTE(v53) = 0;
LABEL_70:
        *(__p + v43) = 0;
        sub_7E854(__p, 3u);
        if (SHIBYTE(v53) < 0)
        {
          operator delete(__p[0]);
        }

        if (v62 < 0)
        {
          operator delete(v61);
        }

        std::locale::~locale(&v56);
        std::ostream::~ostream();
        std::ios::~ios();
LABEL_75:
        v49 = sub_3AF4C0(v15);
        sub_21E2C18(v49, 1, *(v12 + 60));
      }

      v48 = v57;
      v43 = v58 - v57;
      if ((v58 - v57) > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_77:
        sub_3244();
      }

LABEL_65:
      if (v43 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v53) = v43;
      if (v43)
      {
        memmove(__p, v48, v43);
      }

      goto LABEL_70;
    }

LABEL_62:
    v47 = v63;
    if (v63 < v60)
    {
      v63 = v60;
      v47 = v60;
    }

    v48 = v59;
    v43 = v47 - v59;
    if (v47 - v59 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_77;
    }

    goto LABEL_65;
  }

  if (!v18)
  {
    goto LABEL_57;
  }

  sub_19594F8(&v54);
  LODWORD(v50.__r_.__value_.__l.__data_) = sub_7421C(v16);
  sub_7230C(&v50, __p);
  if (v53 >= 0)
  {
    v19 = __p;
  }

  else
  {
    v19 = __p[0];
  }

  if (v53 >= 0)
  {
    v20 = HIBYTE(v53);
  }

  else
  {
    v20 = __p[1];
  }

  v21 = sub_4A5C(&v54, v19, v20);
  sub_4A5C(v21, " failed (ErrorCode: ", 20);
  v22 = std::ostream::operator<<();
  v23 = sub_4A5C(v22, "): ", 3);
  v24 = sub_73F1C(v16);
  v25 = *(v24 + 23);
  if (v25 >= 0)
  {
    v26 = v24;
  }

  else
  {
    v26 = *v24;
  }

  if (v25 >= 0)
  {
    v27 = *(v24 + 23);
  }

  else
  {
    v27 = *(v24 + 8);
  }

  sub_4A5C(v23, v26, v27);
  if ((SHIBYTE(v53) & 0x80000000) == 0)
  {
    v28 = v64;
    if ((v64 & 0x10) == 0)
    {
      goto LABEL_17;
    }

LABEL_44:
    v44 = v63;
    if (v63 < v60)
    {
      v63 = v60;
      v44 = v60;
    }

    v45 = v59;
    v29 = v44 - v59;
    if (v44 - v59 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_59:
      sub_3244();
    }

LABEL_47:
    if (v29 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v53) = v29;
    if (v29)
    {
      memmove(__p, v45, v29);
    }

    goto LABEL_52;
  }

  operator delete(__p[0]);
  v28 = v64;
  if ((v64 & 0x10) != 0)
  {
    goto LABEL_44;
  }

LABEL_17:
  if ((v28 & 8) != 0)
  {
    v45 = v57;
    v29 = v58 - v57;
    if ((v58 - v57) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_59;
    }

    goto LABEL_47;
  }

  v29 = 0;
  HIBYTE(v53) = 0;
LABEL_52:
  *(__p + v29) = 0;
  sub_7E854(__p, 3u);
  if (SHIBYTE(v53) < 0)
  {
    operator delete(__p[0]);
  }

  if (v62 < 0)
  {
    operator delete(v61);
  }

  std::locale::~locale(&v56);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_57:
  val = v14->__val_;
  *(v10 + 40) |= 0x80u;
  *(v10 + 248) = val;
}

void sub_EBDF24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *a32)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a32);
  sub_14AFBC8(&a22);
  sub_EBB868(&a29);
  sub_559B98(&STACK[0xAD0]);
  sub_1F1A8(v32 - 128);
  sub_1F1A8(v32 - 112);
  _Unwind_Resume(a1);
}

uint64_t sub_EBE4E0(unsigned int a1)
{
  result = 0;
  if (a1 <= 0x2C)
  {
    if (((1 << a1) & 0x61C2E17E00) != 0)
    {
      return 1;
    }

    else if (((1 << a1) & 0x100000000001) != 0)
    {
      *&v12.__val_ = a1;
      v12.__cat_ = &off_2669FE0;
      std::error_condition::message(&v14, &v12);
      if (sub_7E7E4(3u))
      {
        sub_19594F8(&v12.__val_);
        v3 = sub_4A5C(&v12, "Unexpected error code: ", 23);
        if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v4 = &v14;
        }

        else
        {
          v4 = v14.__r_.__value_.__r.__words[0];
        }

        if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v14.__r_.__value_.__l.__size_;
        }

        sub_4A5C(v3, v4, size);
        sub_1959680(&v12, __p);
        sub_7E854(__p, 3u);
        if (v11 < 0)
        {
          operator delete(__p[0]);
        }

        sub_1959728(&v12);
      }

      exception = __cxa_allocate_exception(0x40uLL);
      std::operator+<char>();
      if ((v13 & 0x80u) == 0)
      {
        v7 = &v12;
      }

      else
      {
        v7 = *&v12.__val_;
      }

      if ((v13 & 0x80u) == 0)
      {
        cat = v13;
      }

      else
      {
        cat = v12.__cat_;
      }

      v9 = sub_2D390(exception, v7, cat);
    }
  }

  return result;
}

void sub_EBE64C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a16);
  if (*(v21 - 33) < 0)
  {
    operator delete(*(v21 - 56));
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_EBE6F4(unsigned int a1)
{
  result = 0;
  if (a1 <= 0x2C)
  {
    if (((1 << a1) & 0x408108024) != 0)
    {
      return 1;
    }

    else if (((1 << a1) & 0x100000000001) != 0)
    {
      *&v12.__val_ = a1;
      v12.__cat_ = &off_2669FE0;
      std::error_condition::message(&v14, &v12);
      if (sub_7E7E4(3u))
      {
        sub_19594F8(&v12.__val_);
        v3 = sub_4A5C(&v12, "Unexpected error code: ", 23);
        if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v4 = &v14;
        }

        else
        {
          v4 = v14.__r_.__value_.__r.__words[0];
        }

        if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v14.__r_.__value_.__l.__size_;
        }

        sub_4A5C(v3, v4, size);
        sub_1959680(&v12, __p);
        sub_7E854(__p, 3u);
        if (v11 < 0)
        {
          operator delete(__p[0]);
        }

        sub_1959728(&v12);
      }

      exception = __cxa_allocate_exception(0x40uLL);
      std::operator+<char>();
      if ((v13 & 0x80u) == 0)
      {
        v7 = &v12;
      }

      else
      {
        v7 = *&v12.__val_;
      }

      if ((v13 & 0x80u) == 0)
      {
        cat = v13;
      }

      else
      {
        cat = v12.__cat_;
      }

      v9 = sub_2D390(exception, v7, cat);
    }
  }

  return result;
}

void sub_EBE860(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a16);
  if (*(v21 - 33) < 0)
  {
    operator delete(*(v21 - 56));
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_EBE908(uint64_t **a1, void *a2, uint64_t a3, int a4, uint64_t a5)
{
  v6 = sub_9274F4(*a1, a3);
  sub_64C184(a5, v6);
  sub_649B9C(v7, "{toDestination}", 17);
  operator new();
}

void sub_EBFB20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  sub_5C42C0(va);
  _Unwind_Resume(a1);
}

void sub_EBFB34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void **a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  sub_4B98C4(&a11);
  if (*(v35 - 121) < 0)
  {
    operator delete(v34[4]);
    if ((*(v35 - 153) & 0x80000000) == 0)
    {
LABEL_3:
      if ((a19 & 0x80000000) == 0)
      {
LABEL_8:
        sub_662AC8(&a20);
        sub_5C42C0(&a34);
        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(__p);
      goto LABEL_8;
    }
  }

  else if ((*(v35 - 153) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v34);
  if ((a19 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_EBFC08(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_4A48(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_EBFC24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  sub_662AC8(&a17);
  sub_5C42C0(va);
  _Unwind_Resume(a1);
}

std::string *sub_EBFC40(std::string **a1, std::string *a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_1794();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 4 > v3)
  {
    v3 = v5 >> 4;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFE0)
  {
    v6 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v16 = 32 * v2;
  sub_EBFDD4(a1, 32 * v2, a2);
  v7 = (32 * v2 + 32);
  v8 = *a1;
  v9 = a1[1];
  v10 = (*a1 - v9);
  v11 = &v10[v16];
  if (*a1 != v9)
  {
    v12 = 0;
    v13 = *a1;
    v14 = &v10[v16];
    do
    {
      sub_EBFDD4(a1, v14, v13);
      v13 = (v13 + 32);
      v14 += 32;
      v12 -= 32;
    }

    while (v13 != v9);
    do
    {
      sub_14A52AC(v8);
      v8 = (v8 + 32);
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v11;
  a1[1] = v7;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

void sub_EBFD94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_EBFE68(va);
  _Unwind_Resume(a1);
}

void sub_EBFDA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (v4)
  {
    v6 = (v3 - 32);
    do
    {
      v6 = sub_14A52AC(v6) - 4;
      v4 += 32;
    }

    while (v4);
  }

  sub_EBFE68(va);
  _Unwind_Resume(a1);
}

void sub_EBFDD4(uint64_t a1, uint64_t a2, std::string *a3)
{
  sub_14A5204(a2, 0, 0);
  if (v4 != a3)
  {
    size = v4->__r_.__value_.__l.__size_;
    if ((size & 2) != 0)
    {
      size = 0;
    }

    else if (size)
    {
      size = *(size & 0xFFFFFFFFFFFFFFFCLL);
    }

    v6 = a3->__r_.__value_.__l.__size_;
    if ((v6 & 2) != 0)
    {
      v6 = 0;
    }

    else if (v6)
    {
      v6 = *(v6 & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (size == v6)
    {
      sub_14A580C(v4, a3);
    }

    else
    {
      sub_14A57B8(v4, a3);
    }
  }
}

uint64_t sub_EBFE68(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    sub_14A52AC((i - 32));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_EC2F70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  if (SLOBYTE(STACK[0x3A7]) < 0)
  {
    operator delete(STACK[0x390]);
    if ((SLOBYTE(STACK[0x38F]) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((SLOBYTE(STACK[0x38F]) & 0x80000000) == 0)
  {
LABEL_3:
    if (SLOBYTE(STACK[0x377]) < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_18;
  }

  operator delete(STACK[0x378]);
  if (SLOBYTE(STACK[0x377]) < 0)
  {
LABEL_4:
    operator delete(STACK[0x360]);
    if ((SLOBYTE(STACK[0x35F]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  if ((SLOBYTE(STACK[0x35F]) & 0x80000000) == 0)
  {
LABEL_5:
    if (SLOBYTE(STACK[0x347]) < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(STACK[0x348]);
  if (SLOBYTE(STACK[0x347]) < 0)
  {
LABEL_6:
    operator delete(STACK[0x330]);
    if ((SLOBYTE(STACK[0x32F]) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  if ((SLOBYTE(STACK[0x32F]) & 0x80000000) == 0)
  {
LABEL_7:
    if (SLOBYTE(STACK[0x317]) < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(STACK[0x318]);
  if (SLOBYTE(STACK[0x317]) < 0)
  {
LABEL_8:
    operator delete(STACK[0x300]);
    if ((SLOBYTE(STACK[0x2FF]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  if ((SLOBYTE(STACK[0x2FF]) & 0x80000000) == 0)
  {
LABEL_9:
    if (SLOBYTE(STACK[0x2E7]) < 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(STACK[0x2E8]);
  if (SLOBYTE(STACK[0x2E7]) < 0)
  {
LABEL_10:
    operator delete(STACK[0x2D0]);
    if ((SLOBYTE(STACK[0x2CF]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  if ((SLOBYTE(STACK[0x2CF]) & 0x80000000) == 0)
  {
LABEL_11:
    if (SLOBYTE(STACK[0x2B7]) < 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(STACK[0x2B8]);
  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
LABEL_12:
    operator delete(STACK[0x2A0]);
    if ((SLOBYTE(STACK[0x29F]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  if ((SLOBYTE(STACK[0x29F]) & 0x80000000) == 0)
  {
LABEL_13:
    if (SLOBYTE(STACK[0x287]) < 0)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_27:
  operator delete(STACK[0x288]);
  if (SLOBYTE(STACK[0x287]) < 0)
  {
LABEL_14:
    operator delete(STACK[0x270]);
    if (SLOBYTE(STACK[0x26F]) < 0)
    {
LABEL_36:
      operator delete(STACK[0x258]);
      if ((SLOBYTE(STACK[0x257]) & 0x80000000) == 0)
      {
LABEL_37:
        if (SLOBYTE(STACK[0x23F]) < 0)
        {
LABEL_38:
          operator delete(STACK[0x228]);
          if ((SLOBYTE(STACK[0x227]) & 0x80000000) == 0)
          {
LABEL_39:
            if (SLOBYTE(STACK[0x20F]) < 0)
            {
LABEL_40:
              operator delete(a70);
              if ((a69 & 0x80000000) == 0)
              {
LABEL_41:
                if (a67 < 0)
                {
                  goto LABEL_42;
                }

                goto LABEL_44;
              }

LABEL_34:
              operator delete(a68);
              if (a67 < 0)
              {
LABEL_42:
                operator delete(a66);
                if ((a65 & 0x80000000) == 0)
                {
                  goto LABEL_43;
                }

                goto LABEL_45;
              }

LABEL_44:
              if ((a65 & 0x80000000) == 0)
              {
LABEL_43:
                _Unwind_Resume(a1);
              }

LABEL_45:
              operator delete(a63);
              _Unwind_Resume(a1);
            }

LABEL_33:
            if ((a69 & 0x80000000) == 0)
            {
              goto LABEL_41;
            }

            goto LABEL_34;
          }

LABEL_32:
          operator delete(STACK[0x210]);
          if (SLOBYTE(STACK[0x20F]) < 0)
          {
            goto LABEL_40;
          }

          goto LABEL_33;
        }

LABEL_31:
        if ((SLOBYTE(STACK[0x227]) & 0x80000000) == 0)
        {
          goto LABEL_39;
        }

        goto LABEL_32;
      }

LABEL_30:
      operator delete(STACK[0x240]);
      if (SLOBYTE(STACK[0x23F]) < 0)
      {
        goto LABEL_38;
      }

      goto LABEL_31;
    }

LABEL_29:
    if ((SLOBYTE(STACK[0x257]) & 0x80000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_30;
  }

LABEL_28:
  if (SLOBYTE(STACK[0x26F]) < 0)
  {
    goto LABEL_36;
  }

  goto LABEL_29;
}

void sub_EC31E8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *a1;
  if (*a1 != v3)
  {
    v6 = *a1;
    do
    {
      if (*v6 == -1 && v6[1] == -1)
      {
        return;
      }

      v6 += 110;
    }

    while (v6 != v3);
    if (v4 != v3)
    {
LABEL_11:
      v8 = *(a2 + 88);
      if (v8 && (v9 = *(a2 + 80), v9 < *v8))
      {
        *(a2 + 80) = v9 + 1;
        v10 = *&v8[2 * v9 + 2];
        *(v10 + 16) |= 8u;
        *(v10 + 144) = 0;
        v11 = *(v10 + 40);
        if (!v11)
        {
          goto LABEL_20;
        }
      }

      else
      {
        sub_155218C(*(a2 + 72));
        v10 = sub_19593CC(a2 + 72, v12);
        *(v10 + 16) |= 8u;
        *(v10 + 144) = 0;
        v11 = *(v10 + 40);
        if (!v11)
        {
          goto LABEL_20;
        }
      }

      v13 = *(v10 + 32);
      if (v13 < *v11)
      {
        *(v10 + 32) = v13 + 1;
        v14 = *&v11[2 * v13 + 2];
        *(v14 + 16) |= 4u;
        v15 = *(v14 + 184);
        if (!v15)
        {
          goto LABEL_21;
        }

        goto LABEL_18;
      }

LABEL_20:
      sub_15520A4(*(v10 + 24));
      v14 = sub_19593CC(v10 + 24, v17);
      *(v14 + 16) |= 4u;
      v15 = *(v14 + 184);
      if (!v15)
      {
LABEL_21:
        v18 = *(v14 + 8);
        v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
        if (v18)
        {
          v19 = *v19;
        }

        v15 = sub_1550F20(v19);
        *(v14 + 184) = v15;
        *(v15 + 40) |= 0x80u;
        v16 = *(v15 + 176);
        if (v16)
        {
          goto LABEL_27;
        }

        goto LABEL_24;
      }

LABEL_18:
      *(v15 + 40) |= 0x80u;
      v16 = *(v15 + 176);
      if (v16)
      {
LABEL_27:
        LODWORD(v2) = *(v4 + 4);
        v22 = exp(v2 * -6.28318531 / 4294967300.0 + 3.14159265);
        *&v2 = atan((v22 + -1.0 / v22) * 0.5) * 57.2957795;
        v23 = *(v16 + 40);
        *(v16 + 40) = v23 | 1;
        LODWORD(v24) = *v4;
        *(v16 + 40) = v23 | 3;
        *(v16 + 48) = v2;
        *(v16 + 56) = v24 * 360.0 / 4294967300.0 + -180.0;
        v25 = *(v4 + 312);
        v26 = *(v4 + 320);
        while (1)
        {
          if (v25 == v26)
          {
            v4 += 440;
            if (v4 == v3)
            {
              return;
            }

            goto LABEL_11;
          }

          v34 = *(v15 + 112);
          if (v34 && (v35 = *(v15 + 104), v35 < *v34))
          {
            *(v15 + 104) = v35 + 1;
            sub_EA3534(v25, *&v34[2 * v35 + 2], *&v2);
            v36 = *(v15 + 88);
            if (!v36)
            {
              goto LABEL_28;
            }
          }

          else
          {
            sub_16F60C0(*(v15 + 96));
            v38 = sub_19593CC(v15 + 96, v37);
            sub_EA3534(v25, v38, v39);
            v36 = *(v15 + 88);
            if (!v36)
            {
              goto LABEL_28;
            }
          }

          v40 = *(v15 + 80);
          if (v40 >= *v36)
          {
LABEL_28:
            v27 = sub_16F5828(*(v15 + 72));
            v28 = sub_19593CC(v15 + 72, v27);
            goto LABEL_29;
          }

          *(v15 + 80) = v40 + 1;
          v28 = *&v36[2 * v40 + 2];
LABEL_29:
          LODWORD(v29) = v25[1];
          v30 = exp(v29 * -6.28318531 / 4294967300.0 + 3.14159265);
          *&v2 = atan((v30 + -1.0 / v30) * 0.5) * 57.2957795;
          v31 = *(v28 + 40);
          *(v28 + 40) = v31 | 1;
          v32 = *v25;
          v25 += 44;
          LODWORD(v33) = v32;
          *(v28 + 40) = v31 | 3;
          *(v28 + 48) = v2;
          *(v28 + 56) = v33 * 360.0 / 4294967300.0 + -180.0;
        }
      }

LABEL_24:
      v20 = *(v15 + 8);
      v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
      if (v20)
      {
        v21 = *v21;
      }

      v16 = sub_16F5828(v21);
      *(v15 + 176) = v16;
      goto LABEL_27;
    }
  }
}

void sub_EC3570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 80) >= 2)
  {
    sub_21E2C18(a1, 3, a2);
  }
}

void sub_EC673C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  if (SLOBYTE(STACK[0x3A7]) < 0)
  {
    operator delete(STACK[0x390]);
    if ((SLOBYTE(STACK[0x38F]) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((SLOBYTE(STACK[0x38F]) & 0x80000000) == 0)
  {
LABEL_3:
    if (SLOBYTE(STACK[0x377]) < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_18;
  }

  operator delete(STACK[0x378]);
  if (SLOBYTE(STACK[0x377]) < 0)
  {
LABEL_4:
    operator delete(STACK[0x360]);
    if ((SLOBYTE(STACK[0x35F]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  if ((SLOBYTE(STACK[0x35F]) & 0x80000000) == 0)
  {
LABEL_5:
    if (SLOBYTE(STACK[0x347]) < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(STACK[0x348]);
  if (SLOBYTE(STACK[0x347]) < 0)
  {
LABEL_6:
    operator delete(STACK[0x330]);
    if ((SLOBYTE(STACK[0x32F]) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  if ((SLOBYTE(STACK[0x32F]) & 0x80000000) == 0)
  {
LABEL_7:
    if (SLOBYTE(STACK[0x317]) < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(STACK[0x318]);
  if (SLOBYTE(STACK[0x317]) < 0)
  {
LABEL_8:
    operator delete(STACK[0x300]);
    if ((SLOBYTE(STACK[0x2FF]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  if ((SLOBYTE(STACK[0x2FF]) & 0x80000000) == 0)
  {
LABEL_9:
    if (SLOBYTE(STACK[0x2E7]) < 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(STACK[0x2E8]);
  if (SLOBYTE(STACK[0x2E7]) < 0)
  {
LABEL_10:
    operator delete(STACK[0x2D0]);
    if ((SLOBYTE(STACK[0x2CF]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  if ((SLOBYTE(STACK[0x2CF]) & 0x80000000) == 0)
  {
LABEL_11:
    if (SLOBYTE(STACK[0x2B7]) < 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(STACK[0x2B8]);
  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
LABEL_12:
    operator delete(STACK[0x2A0]);
    if ((SLOBYTE(STACK[0x29F]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  if ((SLOBYTE(STACK[0x29F]) & 0x80000000) == 0)
  {
LABEL_13:
    if (SLOBYTE(STACK[0x287]) < 0)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_27:
  operator delete(STACK[0x288]);
  if (SLOBYTE(STACK[0x287]) < 0)
  {
LABEL_14:
    operator delete(STACK[0x270]);
    if (SLOBYTE(STACK[0x26F]) < 0)
    {
LABEL_37:
      operator delete(STACK[0x258]);
      if ((SLOBYTE(STACK[0x257]) & 0x80000000) == 0)
      {
LABEL_38:
        if (SLOBYTE(STACK[0x23F]) < 0)
        {
LABEL_39:
          operator delete(STACK[0x228]);
          if ((SLOBYTE(STACK[0x227]) & 0x80000000) == 0)
          {
LABEL_40:
            if (SLOBYTE(STACK[0x20F]) < 0)
            {
LABEL_41:
              operator delete(a70);
              if ((a69 & 0x80000000) == 0)
              {
LABEL_42:
                if (a67 < 0)
                {
LABEL_43:
                  operator delete(a66);
                  if ((a65 & 0x80000000) == 0)
                  {
LABEL_44:
                    _Unwind_Resume(a1);
                  }

LABEL_36:
                  operator delete(a63);
                  _Unwind_Resume(a1);
                }

LABEL_35:
                if ((a65 & 0x80000000) == 0)
                {
                  goto LABEL_44;
                }

                goto LABEL_36;
              }

LABEL_34:
              operator delete(a68);
              if (a67 < 0)
              {
                goto LABEL_43;
              }

              goto LABEL_35;
            }

LABEL_33:
            if ((a69 & 0x80000000) == 0)
            {
              goto LABEL_42;
            }

            goto LABEL_34;
          }

LABEL_32:
          operator delete(STACK[0x210]);
          if (SLOBYTE(STACK[0x20F]) < 0)
          {
            goto LABEL_41;
          }

          goto LABEL_33;
        }

LABEL_31:
        if ((SLOBYTE(STACK[0x227]) & 0x80000000) == 0)
        {
          goto LABEL_40;
        }

        goto LABEL_32;
      }

LABEL_30:
      operator delete(STACK[0x240]);
      if (SLOBYTE(STACK[0x23F]) < 0)
      {
        goto LABEL_39;
      }

      goto LABEL_31;
    }

LABEL_29:
    if ((SLOBYTE(STACK[0x257]) & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_30;
  }

LABEL_28:
  if (SLOBYTE(STACK[0x26F]) < 0)
  {
    goto LABEL_37;
  }

  goto LABEL_29;
}

void sub_EC6954(uint64_t *result, uint64_t a2)
{
  v3 = *result;
  v4 = result[1];
  if (*result == v4)
  {
    v5 = *(a2 + 144);
    if (v5 == *(a2 + 148))
    {
      v7 = v5 + 1;
      sub_1958E5C((a2 + 144), v5 + 1);
      *(*(a2 + 152) + 4 * v5) = 4;
      v8 = (a2 + 168);
      v9 = *(a2 + 168);
      *(a2 + 144) = v7;
      if (v9 != *(a2 + 172))
      {
LABEL_4:
        *(*(a2 + 176) + 4 * v9) = 0;
        v10 = v9 + 1;
LABEL_7:
        *v8 = v10;
        v3 = *result;
        v4 = result[1];
        goto LABEL_8;
      }
    }

    else
    {
      *(*(a2 + 152) + 4 * v5) = 4;
      v11 = v5 + 1;
      v8 = (a2 + 168);
      v9 = *(a2 + 168);
      *(a2 + 144) = v11;
      if (v9 != *(a2 + 172))
      {
        goto LABEL_4;
      }
    }

    v10 = v9 + 1;
    sub_1958E5C(v8, v9 + 1);
    *(*(a2 + 176) + 4 * v9) = 0;
    goto LABEL_7;
  }

LABEL_8:
  while (v3 != v4)
  {
    while (1)
    {
      v12 = (*(v3 + 16) - 1) >= 4 ? 4 : *(v3 + 16) - 1;
      v13 = *(a2 + 144);
      if (v13 == *(a2 + 148))
      {
        v14 = v13 + 1;
        sub_1958E5C((a2 + 144), v13 + 1);
        *(*(a2 + 152) + 4 * v13) = v12;
      }

      else
      {
        *(*(a2 + 152) + 4 * v13) = v12;
        v14 = v13 + 1;
      }

      *(a2 + 144) = v14;
      v15 = *v3 < 0 ? -50 : 50;
      v16 = *v3 / 100 + ((5243 * (v15 + *v3 % 100)) >> 19) + ((5243 * (v15 + *v3 % 100)) >> 31);
      v17 = *(a2 + 168);
      if (v17 != *(a2 + 172))
      {
        break;
      }

      sub_1958E5C((a2 + 168), v17 + 1);
      *(*(a2 + 176) + 4 * v17) = v16;
      *(a2 + 168) = v17 + 1;
      v3 += 24;
      if (v3 == v4)
      {
        return;
      }
    }

    *(*(a2 + 176) + 4 * v17) = v16;
    *(a2 + 168) = v17 + 1;
    v3 += 24;
  }
}

void sub_EC6B44(uint64_t *result, uint64_t a2)
{
  v3 = *result;
  v4 = result[1];
  if (*result == v4)
  {
    v5 = *(a2 + 152);
    if (v5 == *(a2 + 156))
    {
      v7 = v5 + 1;
      sub_1958E5C((a2 + 152), v5 + 1);
      *(*(a2 + 160) + 4 * v5) = 4;
      v8 = (a2 + 176);
      v9 = *(a2 + 176);
      *(a2 + 152) = v7;
      if (v9 != *(a2 + 180))
      {
LABEL_4:
        *(*(a2 + 184) + 4 * v9) = 0;
        v10 = v9 + 1;
LABEL_7:
        *v8 = v10;
        v3 = *result;
        v4 = result[1];
        goto LABEL_8;
      }
    }

    else
    {
      *(*(a2 + 160) + 4 * v5) = 4;
      v11 = v5 + 1;
      v8 = (a2 + 176);
      v9 = *(a2 + 176);
      *(a2 + 152) = v11;
      if (v9 != *(a2 + 180))
      {
        goto LABEL_4;
      }
    }

    v10 = v9 + 1;
    sub_1958E5C(v8, v9 + 1);
    *(*(a2 + 184) + 4 * v9) = 0;
    goto LABEL_7;
  }

LABEL_8:
  while (v3 != v4)
  {
    while (1)
    {
      v12 = (*(v3 + 16) - 1) >= 4 ? 4 : *(v3 + 16) - 1;
      v13 = *(a2 + 152);
      if (v13 == *(a2 + 156))
      {
        v14 = v13 + 1;
        sub_1958E5C((a2 + 152), v13 + 1);
        *(*(a2 + 160) + 4 * v13) = v12;
      }

      else
      {
        *(*(a2 + 160) + 4 * v13) = v12;
        v14 = v13 + 1;
      }

      *(a2 + 152) = v14;
      v15 = *v3 < 0 ? -50 : 50;
      v16 = *v3 / 100 + ((5243 * (v15 + *v3 % 100)) >> 19) + ((5243 * (v15 + *v3 % 100)) >> 31);
      v17 = *(a2 + 176);
      if (v17 != *(a2 + 180))
      {
        break;
      }

      sub_1958E5C((a2 + 176), v17 + 1);
      *(*(a2 + 184) + 4 * v17) = v16;
      *(a2 + 176) = v17 + 1;
      v3 += 24;
      if (v3 == v4)
      {
        return;
      }
    }

    *(*(a2 + 184) + 4 * v17) = v16;
    *(a2 + 176) = v17 + 1;
    v3 += 24;
  }
}

double sub_EC6D34(_DWORD *a1, uint64_t a2, double a3)
{
  LODWORD(a3) = a1[1];
  v5 = exp(*&a3 * -6.28318531 / 4294967300.0 + 3.14159265);
  v6 = atan((v5 + -1.0 / v5) * 0.5);
  HIDWORD(v7) = 1078765020;
  result = v6 * 57.2957795;
  v9 = *(a2 + 40);
  *(a2 + 40) = v9 | 1;
  LODWORD(v7) = *a1;
  *(a2 + 40) = v9 | 3;
  *(a2 + 48) = result;
  *(a2 + 56) = v7 * 360.0 / 4294967300.0 + -180.0;
  return result;
}

void sub_EC6DFC(_DWORD *a1, uint64_t a2, double a3)
{
  LODWORD(a3) = a1[1];
  v5 = exp(*&a3 * -6.28318531 / 4294967300.0 + 3.14159265);
  v6 = atan((v5 + -1.0 / v5) * 0.5);
  HIDWORD(v7) = 1078765020;
  v8 = *(a2 + 40);
  *(a2 + 40) = v8 | 1;
  LODWORD(v7) = *a1;
  *(a2 + 40) = v8 | 3;
  *(a2 + 48) = v6 * 57.2957795;
  *(a2 + 56) = v7 * 360.0 / 4294967300.0 + -180.0;
  v9 = a1[2];
  if (v9 != 0x7FFFFFFF)
  {
    *(a2 + 40) = v8 | 7;
    *(a2 + 64) = v9 / 100.0;
  }
}

uint64_t sub_EC6EF0(uint64_t result)
{
  result = result;
  if (result <= 0xDu)
  {
    if (result <= 2u)
    {
      if (result < 2u)
      {
        return result;
      }
    }

    else if (result == 3 || result == 6 || result == 12)
    {
      return result;
    }

    return 64;
  }

  if (result <= 0x11u)
  {
    if (result != 14 && result != 15)
    {
      return 64;
    }
  }

  else if (result != 18 && result != 23 && result != 79)
  {
    return 64;
  }

  return result;
}

uint64_t **sub_EC6F6C(uint64_t a1, uint64_t a2, int a3, double a4)
{
  if (*(a1 + 700) == 1)
  {
    v7 = (a1 + 688);
    *(a2 + 40) |= 0x10u;
    v8 = *(a2 + 104);
    if (!v8)
    {
      v9 = *(a2 + 8);
      v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
      if (v9)
      {
        v10 = *v10;
      }

      v8 = sub_16F5828(v10);
      *(a2 + 104) = v8;
    }

    v11 = (a1 + 692);
LABEL_15:
    LODWORD(a4) = *v11;
    v15 = exp(*&a4 * -6.28318531 / 4294967300.0 + 3.14159265);
    v16 = atan((v15 + -1.0 / v15) * 0.5) * 57.2957795;
    v17 = *(v8 + 40);
    *(v8 + 40) = v17 | 1;
    *(v8 + 48) = v16;
    LODWORD(v16) = *v7;
    *(v8 + 40) = v17 | 3;
    *(v8 + 56) = *&v16 * 360.0 / 4294967300.0 + -180.0;
    goto LABEL_16;
  }

  v7 = (a1 + 32);
  v11 = (a1 + 36);
  if (*(a1 + 32) != -1 || *(a1 + 36) != -1)
  {
    *(a2 + 40) |= 0x10u;
    v8 = *(a2 + 104);
    if (!v8)
    {
      v13 = *(a2 + 8);
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
      if (v13)
      {
        v14 = *v14;
      }

      v8 = sub_16F5828(v14);
      *(a2 + 104) = v8;
    }

    goto LABEL_15;
  }

LABEL_16:
  *(a2 + 40) |= 1u;
  v18 = *(a2 + 8);
  v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
  if (v18)
  {
    v19 = *v19;
  }

  sub_194EA1C((a2 + 72), (a1 + 48), v19);
  *(a2 + 40) |= 2u;
  v20 = *(a2 + 8);
  v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
  if (v20)
  {
    sub_194EA1C((a2 + 80), (a1 + 480), *v21);
    v22 = *(a1 + 96);
    if (v22 <= 0xF)
    {
      goto LABEL_20;
    }
  }

  else
  {
    sub_194EA1C((a2 + 80), (a1 + 480), v21);
    v22 = *(a1 + 96);
    if (v22 <= 0xF)
    {
LABEL_20:
      v23 = dword_22AD7E8[v22];
      goto LABEL_23;
    }
  }

  v23 = 3;
LABEL_23:
  v24 = *(a2 + 40);
  *(a2 + 136) = v23;
  *(a2 + 40) = v24 | 0x104;
  v25 = *(a2 + 8);
  v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
  if (v25)
  {
    v26 = *v26;
  }

  sub_194EA1C((a2 + 88), (a1 + 104), v26);
  *(a2 + 40) |= 8u;
  v27 = *(a2 + 8);
  v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
  if (v27)
  {
    v28 = *v28;
  }

  sub_194EA1C((a2 + 96), (a1 + 128), v28);
  v29 = 1000 * *(a1 + 152);
  v30 = *(a2 + 40);
  v31 = v30 | 0x80;
  *(a2 + 40) = v30 | 0x80;
  *(a2 + 128) = v29;
  v32 = *(a1 + 156);
  if (v32 != 0x7FFFFFFF)
  {
    v31 = v30 | 0x480;
    *(a2 + 40) = v30 | 0x480;
    *(a2 + 144) = 1000 * v32;
  }

  v33 = *(a1 + 160);
  if (v33 && v33 != 0x7FFFFFFF)
  {
    v31 |= 0x800u;
    *(a2 + 40) = v31;
    *(a2 + 152) = 1000 * v33;
  }

  *(a2 + 176) = *(a1 + 164);
  *(a2 + 140) = *(a1 + 165);
  v34 = *(a1 + 166);
  *(a2 + 40) = v31 | 0x11200;
  *(a2 + 160) = v34;
  v35 = *(a1 + 168);
  if (v35)
  {
    *(a2 + 40) = v31 | 0x15200;
    *(a2 + 168) = v35;
  }

  v36 = *(a1 + 200);
  v37 = *(a1 + 208);
  while (v36 != v37)
  {
    if (*(v36 + 23) < 0)
    {
      sub_325C(__p, *v36, *(v36 + 1));
    }

    else
    {
      v38 = *v36;
      v43 = *(v36 + 2);
      *__p = v38;
    }

    sub_4F803C(a2, __p);
    if (SHIBYTE(v43) < 0)
    {
      operator delete(__p[0]);
    }

    v36 = (v36 + 24);
  }

  v39 = sub_6597CC(a1);
  *(a2 + 40) |= 0x20000u;
  *(a2 + 180) = v39;
  if (a3)
  {
    if (sub_659540(a1) && (*(a1 + 800) - 1) < 0x16)
    {
      sub_58872C();
    }

    if (*(a1 + 96) < 0x10u)
    {
      sub_58872C();
    }

    sub_58872C();
  }

  if (((*(a1 + 224) - 1) & 0xFC) != 0)
  {
    v40 = 0;
  }

  else
  {
    v40 = (*(a1 + 224) - 1) + 1;
  }

  return sub_19500C0(a2 + 16, qword_278D0D0, 14, v40, 0);
}

void sub_EC74CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_EC74E8(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  if (*(a1 + 492) == 1)
  {
    *(a3 + 140) = 1;
    *(a3 + 16) = v6 | 0x11;
    v7 = *(a3 + 112);
    if (!v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *(a3 + 16) = v6 | 1;
    v7 = *(a3 + 112);
    if (!v7)
    {
LABEL_3:
      v8 = *(a3 + 8);
      v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL);
      if (v8)
      {
        v9 = *v9;
      }

      sub_14BAE64(v9);
      *(a3 + 112) = v10;
      sub_64D110(a1, v10);
      v11 = *(a1 + 168);
      v12 = *(a1 + 176);
      if (v11 == v12)
      {
        goto LABEL_109;
      }

LABEL_11:
      while (1)
      {
        v13 = *(v11 + 768);
        if (v13)
        {
          break;
        }

LABEL_10:
        v11 += 800;
        if (v11 == v12)
        {
          goto LABEL_109;
        }
      }

      v14 = *(a3 + 80);
      if (v14 && (v15 = *(a3 + 72), v15 < *v14))
      {
        *(a3 + 72) = v15 + 1;
        v16 = *&v14[2 * v15 + 2];
        if (v13 == 1)
        {
LABEL_15:
          v17 = sub_589204(a2, v11);
          if (!v17)
          {
            sub_49EC("unordered_map::at: key not found");
          }

          v18 = *(v17 + 10);
          *(v16 + 16) |= 2u;
          *(v16 + 56) = v18;
          goto LABEL_83;
        }
      }

      else
      {
        v19 = sub_14BCDF8(*(a3 + 64));
        v16 = sub_19593CC(a3 + 64, v19);
        v13 = *(v11 + 768);
        if (v13 == 1)
        {
          goto LABEL_15;
        }
      }

      if (v13 == 3)
      {
        v32 = *v11;
        *(v16 + 16) |= 4u;
        *(v16 + 60) = v32;
      }

      else if (v13 == 2)
      {
        *(v16 + 16) |= 1u;
        v20 = *(v16 + 48);
        if (!v20)
        {
          v21 = *(v16 + 8);
          v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
          if (v21)
          {
            v22 = *v22;
          }

          sub_14BCD74(v22);
          v20 = v23;
          *(v16 + 48) = v23;
        }

        if (*(v11 + 768) != 2)
        {
          sub_5AF20();
        }

        *(v20 + 16) |= 1u;
        v24 = *(v20 + 24);
        if (!v24)
        {
          v25 = *(v20 + 8);
          v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
          if (v25)
          {
            v26 = *v26;
          }

          sub_14BAE64(v26);
          v24 = v27;
          *(v20 + 24) = v27;
        }

        sub_64D110(v11, v24);
        *(v20 + 16) |= 2u;
        v28 = *(v20 + 32);
        if (v28)
        {
          sub_64D110((v11 + 160), v28);
          v30 = (v11 + 320);
          v31 = *(v11 + 352);
          if (v31 <= 2)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v33 = *(v20 + 8);
          v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
          if (v33)
          {
            v34 = *v34;
          }

          sub_14BAE64(v34);
          *(v20 + 32) = v35;
          sub_64D110((v11 + 160), v35);
          v30 = (v11 + 320);
          v31 = *(v11 + 352);
          if (v31 <= 2)
          {
LABEL_31:
            if (v31 == 1)
            {
              if (*v30 == -1)
              {
                goto LABEL_46;
              }
            }

            else if (v31 != 2 || *(v11 + 324) == -1 && *v30 == -1 && *(v11 + 328) == *(v11 + 336))
            {
              goto LABEL_46;
            }

            goto LABEL_51;
          }
        }

        if (v31 != 3 && v31 != 4)
        {
          goto LABEL_46;
        }

        v36 = *(v11 + 343);
        if (v36 < 0)
        {
          v36 = *(v11 + 328);
        }

        if (!v36)
        {
LABEL_46:
          if (sub_4D1F6C((v11 + 432)))
          {
            goto LABEL_47;
          }

LABEL_53:
          *(v20 + 16) |= 8u;
          v39 = *(v20 + 48);
          if (v39)
          {
            sub_64D110((v11 + 432), v39);
            if (!sub_4D1F6C((v11 + 592)))
            {
              goto LABEL_55;
            }
          }

          else
          {
            v45 = *(v20 + 8);
            v46 = (v45 & 0xFFFFFFFFFFFFFFFCLL);
            if (v45)
            {
              v46 = *v46;
            }

            sub_14BAE64(v46);
            *(v20 + 48) = v47;
            sub_64D110((v11 + 432), v47);
            if (!sub_4D1F6C((v11 + 592)))
            {
              goto LABEL_55;
            }
          }

LABEL_48:
          if (*(v11 + 752) != 1)
          {
            goto LABEL_83;
          }

LABEL_69:
          if (*(v11 + 756) != -1 || *(v11 + 760) != -1)
          {
            *(v20 + 16) |= 0x20u;
            v51 = *(v20 + 64);
            if (v51)
            {
              v52 = 1;
            }

            else
            {
              v53 = *(v20 + 8);
              v54 = (v53 & 0xFFFFFFFFFFFFFFFCLL);
              if (v53)
              {
                v54 = *v54;
              }

              v51 = sub_14BCCF8(v54);
              *(v20 + 64) = v51;
              v52 = *(v11 + 752) == 1;
            }

            v55 = *(v51 + 16);
            *(v51 + 16) = v55 | 2;
            *(v51 + 32) = v52;
            if (*(v11 + 756) != -1 || *(v11 + 760) != -1)
            {
              *(v51 + 16) = v55 | 3;
              v56 = *(v51 + 24);
              if (!v56)
              {
                v57 = *(v51 + 8);
                v58 = (v57 & 0xFFFFFFFFFFFFFFFCLL);
                if (v57)
                {
                  v58 = *v58;
                }

                v56 = sub_16F5828(v58);
                *(v51 + 24) = v56;
              }

              LODWORD(v37) = *(v11 + 760);
              v59 = exp(v37 * -6.28318531 / 4294967300.0 + 3.14159265);
              v60 = atan((v59 + -1.0 / v59) * 0.5);
              v61 = *(v56 + 40);
              *(v56 + 40) = v61 | 1;
              LODWORD(v62) = *(v11 + 756);
              *(v56 + 40) = v61 | 3;
              *(v56 + 48) = v60 * 57.2957795;
              *(v56 + 56) = v62 * 360.0 / 4294967300.0 + -180.0;
            }
          }

          goto LABEL_83;
        }

LABEL_51:
        *(v20 + 16) |= 4u;
        v38 = *(v20 + 40);
        if (v38)
        {
          sub_586C94(v30, v38, v29);
          if (!sub_4D1F6C((v11 + 432)))
          {
            goto LABEL_53;
          }
        }

        else
        {
          v41 = *(v20 + 8);
          v42 = (v41 & 0xFFFFFFFFFFFFFFFCLL);
          if (v41)
          {
            v42 = *v42;
          }

          v43 = sub_14BF484(v42);
          *(v20 + 40) = v43;
          sub_586C94(v30, v43, v44);
          if (!sub_4D1F6C((v11 + 432)))
          {
            goto LABEL_53;
          }
        }

LABEL_47:
        if (sub_4D1F6C((v11 + 592)))
        {
          goto LABEL_48;
        }

LABEL_55:
        *(v20 + 16) |= 0x10u;
        v40 = *(v20 + 56);
        if (v40)
        {
          sub_64D110((v11 + 592), v40);
          if (*(v11 + 752) != 1)
          {
            goto LABEL_83;
          }
        }

        else
        {
          v48 = *(v20 + 8);
          v49 = (v48 & 0xFFFFFFFFFFFFFFFCLL);
          if (v48)
          {
            v49 = *v49;
          }

          sub_14BAE64(v49);
          *(v20 + 56) = v50;
          sub_64D110((v11 + 592), v50);
          if (*(v11 + 752) != 1)
          {
            goto LABEL_83;
          }
        }

        goto LABEL_69;
      }

LABEL_83:
      v63 = *(v11 + 776);
      v64 = *(v11 + 784);
      while (1)
      {
        if (v63 == v64)
        {
          goto LABEL_10;
        }

        if ((*(v63 + 23) & 0x8000000000000000) != 0)
        {
          if (!v63[1])
          {
            goto LABEL_91;
          }
        }

        else if (!*(v63 + 23))
        {
          goto LABEL_91;
        }

        v67 = *(v16 + 40);
        if (v67 && (v68 = *(v16 + 32), v68 < *v67))
        {
          *(v16 + 32) = v68 + 1;
          v69 = *&v67[2 * v68 + 2];
          if (v63 == v69)
          {
            goto LABEL_91;
          }

LABEL_105:
          v73 = *(v63 + 23);
          if (*(v69 + 23) < 0)
          {
            if (v73 >= 0)
            {
              v65 = v63;
            }

            else
            {
              v65 = *v63;
            }

            if (v73 >= 0)
            {
              v66 = *(v63 + 23);
            }

            else
            {
              v66 = v63[1];
            }

            sub_13B38(v69, v65, v66);
            goto LABEL_91;
          }

          if ((*(v63 + 23) & 0x80) != 0)
          {
            v75 = *v63;
            v76 = v63[1];
            v63 += 3;
            sub_13A68(v69, v75, v76);
          }

          else
          {
            v74 = *v63;
            *(v69 + 16) = v63[2];
            *v69 = v74;
            v63 += 3;
          }
        }

        else
        {
          v70 = *(v16 + 24);
          if (!v70)
          {
            operator new();
          }

          *v72 = v71;
          v72[1] = sub_195A650;
          *v71 = 0;
          v71[1] = 0;
          v71[2] = 0;
          v69 = sub_19593CC(v16 + 24, v71);
          if (v63 != v69)
          {
            goto LABEL_105;
          }

LABEL_91:
          v63 += 3;
        }
      }
    }
  }

  sub_64D110(a1, v7);
  v11 = *(a1 + 168);
  v12 = *(a1 + 176);
  if (v11 != v12)
  {
    goto LABEL_11;
  }

LABEL_109:
  v77 = *(a1 + 160);
  *(a3 + 16) |= 8u;
  *(a3 + 136) = v77;
  if (!sub_4D1F6C((a1 + 192)))
  {
    *(a3 + 16) |= 2u;
    v79 = *(a3 + 120);
    if (!v79)
    {
      v80 = *(a3 + 8);
      v81 = (v80 & 0xFFFFFFFFFFFFFFFCLL);
      if (v80)
      {
        v81 = *v81;
      }

      sub_14BAE64(v81);
      v79 = v82;
      *(a3 + 120) = v82;
    }

    sub_64D110((a1 + 192), v79);
  }

  v83 = *(a1 + 384);
  if (v83 > 2)
  {
    if (v83 != 3 && v83 != 4)
    {
      goto LABEL_134;
    }

    v84 = *(a1 + 375);
    if ((v84 & 0x80u) != 0)
    {
      v84 = *(a1 + 360);
    }

    if (!v84)
    {
      goto LABEL_134;
    }

    goto LABEL_129;
  }

  if (v83 != 1)
  {
    if (v83 != 2 || *(a1 + 356) == -1 && *(a1 + 352) == -1 && *(a1 + 360) == *(a1 + 368))
    {
      goto LABEL_134;
    }

LABEL_129:
    *(a3 + 16) |= 4u;
    v85 = *(a3 + 128);
    if (!v85)
    {
      v86 = *(a3 + 8);
      v87 = (v86 & 0xFFFFFFFFFFFFFFFCLL);
      if (v86)
      {
        v87 = *v87;
      }

      v85 = sub_14BF484(v87);
      *(a3 + 128) = v85;
    }

    sub_586C94(a1 + 352, v85, v78);
    goto LABEL_134;
  }

  if (*(a1 + 352) != -1)
  {
    goto LABEL_129;
  }

LABEL_134:
  v89 = *(a1 + 464);
  v88 = *(a1 + 472);
  while (v89 != v88)
  {
    if ((*(v89 + 23) & 0x8000000000000000) != 0)
    {
      if (!*(v89 + 8))
      {
        goto LABEL_135;
      }

LABEL_141:
      sub_EC7CEC(a3, v89);
      goto LABEL_135;
    }

    if (*(v89 + 23))
    {
      goto LABEL_141;
    }

LABEL_135:
    v89 += 24;
  }
}

void **sub_EC7CEC(uint64_t a1, void **a2)
{
  v4 = *(a1 + 104);
  if (v4)
  {
    v5 = *(a1 + 96);
    if (v5 < *v4)
    {
      *(a1 + 96) = v5 + 1;
      result = *&v4[2 * v5 + 2];
      if (result == a2)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  v7 = *(a1 + 88);
  if (!v7)
  {
    operator new();
  }

  *v9 = v8;
  v9[1] = sub_195A650;
  *v8 = 0;
  v8[1] = 0;
  v8[2] = 0;
  result = sub_19593CC(a1 + 88, v8);
  if (result != a2)
  {
LABEL_9:
    v10 = *(a2 + 23);
    if (*(result + 23) < 0)
    {
      if (v10 >= 0)
      {
        v12 = a2;
      }

      else
      {
        v12 = *a2;
      }

      if (v10 >= 0)
      {
        v13 = *(a2 + 23);
      }

      else
      {
        v13 = a2[1];
      }

      return sub_13B38(result, v12, v13);
    }

    else if ((*(a2 + 23) & 0x80) != 0)
    {
      v14 = *a2;
      v15 = a2[1];

      return sub_13A68(result, v14, v15);
    }

    else
    {
      v11 = *a2;
      result[2] = a2[2];
      *result = v11;
    }
  }

  return result;
}

uint64_t sub_EC7E24(int a1)
{
  if ((a1 - 1) > 0x60)
  {
    return 0;
  }

  else
  {
    return dword_22AD868[a1 - 1];
  }
}

uint64_t sub_EC7E48(unsigned int *a1)
{
  if (*a1 >= 0xE)
  {
    return 8;
  }

  else
  {
    return *a1;
  }
}

uint64_t sub_EC7E5C(unsigned int a1)
{
  if (a1 > 0x2C)
  {
    return 1;
  }

  else
  {
    return dword_22AD9EC[a1];
  }
}

uint64_t sub_EC7E7C(unsigned int a1)
{
  if (a1 > 5)
  {
    return 4;
  }

  else
  {
    return dword_22ADAA0[a1];
  }
}

uint64_t sub_EC7E9C(int a1)
{
  if (a1)
  {
    if (a1 != 2 || !sub_7E7E4(1u))
    {
      return 0;
    }

    sub_19594F8(&v7);
    sub_4A5C(&v7, "Encountered side-of-street that is not supported in driving.", 60);
    if ((v17 & 0x10) != 0)
    {
      v3 = v16;
      if (v16 < v13)
      {
        v16 = v13;
        v3 = v13;
      }

      v4 = v12;
      v2 = v3 - v12;
      if (v3 - v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if ((v17 & 8) == 0)
      {
        v2 = 0;
        v6 = 0;
LABEL_17:
        *(&__p + v2) = 0;
        sub_7E854(&__p, 1u);
        if (v6 < 0)
        {
          operator delete(__p);
        }

        if (v15 < 0)
        {
          operator delete(v14);
        }

        std::locale::~locale(&v9);
        std::ostream::~ostream();
        std::ios::~ios();
        return 0;
      }

      v4 = v10;
      v2 = v11 - v10;
      if ((v11 - v10) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_23:
        sub_3244();
      }
    }

    if (v2 >= 0x17)
    {
      operator new();
    }

    v6 = v2;
    if (v2)
    {
      memmove(&__p, v4, v2);
    }

    goto LABEL_17;
  }

  return 1;
}

void sub_EC8118(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_EC8164@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1491264(a2, 0, 0);
  v4 = *(result + 16);
  *(result + 24) = *a1 + -978307200.0;
  v5 = a1[2] != 0;
  *(result + 16) = v4 | 5;
  *(result + 40) = v5;
  return result;
}

unint64_t sub_EC81D0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *(a2 + 32) = *a1;
  v5 = *(a1 + 8);
  if (v5 >= 3)
  {
    v5 = 0;
  }

  *(a2 + 16) = v4 | 0xA;
  *(a2 + 44) = v5;
  result = sub_329BC(a1 + 12);
  if (result)
  {
    *(a2 + 16) |= 1u;
    v7 = *(a2 + 24);
    if (!v7)
    {
      v8 = *(a2 + 8);
      v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL);
      if (v8)
      {
        v9 = *v9;
      }

      sub_16F58FC(v9);
      v7 = v10;
      *(a2 + 24) = v10;
    }

    v11 = sub_32DBC((a1 + 12));
    v12 = exp(3.14159265 - HIDWORD(v11) * 6.28318531 / 4294967300.0);
    v13 = atan((v12 - 1.0 / v12) * 0.5);
    *(v7 + 16) |= 2u;
    *(v7 + 56) = v13 * 57.2957795;
    v14 = sub_32DBC((a1 + 12));
    *(v7 + 16) |= 4u;
    *(v7 + 64) = v14 * 360.0 / 4294967300.0 + -180.0;
    v15 = sub_32DA0(a1 + 12);
    v16 = exp(3.14159265 - HIDWORD(v15) * 6.28318531 / 4294967300.0);
    v17 = atan((v16 - 1.0 / v16) * 0.5);
    *(v7 + 16) |= 8u;
    *(v7 + 72) = v17 * 57.2957795;
    result = sub_32DA0(a1 + 12);
    *(v7 + 16) |= 0x10u;
    *(v7 + 80) = result * 360.0 / 4294967300.0 + -180.0;
  }

  return result;
}

uint64_t sub_EC83A0(uint64_t result)
{
  if ((result - 1) >= 7)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

void sub_EC83B0(uint64_t a1, uint64_t a2, double a3)
{
  v5 = *(a2 + 40);
  *(a2 + 136) = 9;
  v6 = v5 | 0x120;
  *(a2 + 40) = v6;
  v7 = *(a2 + 112);
  if (v7)
  {
    *(a2 + 40) = v6 | 0x10;
    v8 = *(a2 + 104);
    if (v8)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v9 = *(a2 + 8);
    v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
    if (v9)
    {
      v10 = *v10;
    }

    v7 = sub_14BDDBC(v10);
    *(a2 + 112) = v7;
    *(a2 + 40) |= 0x10u;
    v8 = *(a2 + 104);
    if (v8)
    {
LABEL_10:
      LODWORD(a3) = *(a1 + 44);
      v13 = exp(*&a3 * -6.28318531 / 4294967300.0 + 3.14159265);
      v14 = atan((v13 + -1.0 / v13) * 0.5);
      HIDWORD(v15) = 1078765020;
      v16 = *(v8 + 40);
      *(v8 + 40) = v16 | 1;
      LODWORD(v15) = *(a1 + 40);
      *(v8 + 40) = v16 | 3;
      *(v8 + 48) = v14 * 57.2957795;
      *(v8 + 56) = v15 * 360.0 / 4294967300.0 + -180.0;
      *(a2 + 40) |= 1u;
      v17 = *(a2 + 8);
      v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
      if (v17)
      {
        v18 = *v18;
      }

      sub_194EA1C((a2 + 72), (a1 + 8), v18);
      v19 = *(a1 + 79);
      if ((v19 & 0x80u) != 0)
      {
        v19 = *(a1 + 64);
      }

      if (v19)
      {
        *(v7 + 16) |= 1u;
        v20 = *(v7 + 48);
        if (!v20)
        {
          v21 = *(v7 + 8);
          v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
          if (v21)
          {
            v22 = *v22;
          }

          sub_14BAE64(v22);
          *(v7 + 48) = v20;
        }

        sub_64E090(v20, (a1 + 56));
      }

      v23 = *(a1 + 103);
      if ((v23 & 0x80u) != 0)
      {
        v23 = *(a1 + 88);
      }

      if (v23)
      {
        *(v7 + 16) |= 2u;
        v24 = *(v7 + 56);
        if (!v24)
        {
          v25 = *(v7 + 8);
          v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
          if (v25)
          {
            v26 = *v26;
          }

          sub_14BAE64(v26);
          *(v7 + 56) = v24;
        }

        sub_64E090(v24, (a1 + 80));
      }

      v27 = *(v7 + 40);
      if (v27 && (v28 = *(v7 + 32), v28 < *v27))
      {
        *(v7 + 32) = v28 + 1;
        v29 = *&v27[2 * v28 + 2];
      }

      else
      {
        v30 = sub_14BDD20(*(v7 + 24));
        v29 = sub_19593CC(v7 + 24, v30);
      }

      v31 = *(a1 + 104);
      v32 = *(a1 + 112);
      while (v31 != v32)
      {
        v35 = *(v29 + 40);
        if (v35 && (v36 = *(v29 + 32), v36 < *v35))
        {
          *(v29 + 32) = v36 + 1;
          v34 = *&v35[2 * v36 + 2];
        }

        else
        {
          sub_14BAE64(*(v29 + 24));
          v34 = sub_19593CC(v29 + 24, v33);
        }

        sub_64E090(v34, v31);
        v31 += 3;
      }

      v37 = *(a1 + 128);
      *(a2 + 40) |= 0x20000u;
      *(a2 + 180) = v37;
      sub_81338C(a1);
      sub_58872C();
    }
  }

  v11 = *(a2 + 8);
  v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
  if (v11)
  {
    v12 = *v12;
  }

  v8 = sub_16F5828(v12);
  *(a2 + 104) = v8;
  goto LABEL_10;
}

void sub_EC8744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_53E440(va);
  _Unwind_Resume(a1);
}

void sub_EC8758(void ***a1, uint64_t a2)
{
  v4 = *a1;
  if (*a1 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = a1[1];
    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *(a2 + 16) |= 4u;
    *(a2 + 88) = v4;
    v5 = a1[1];
    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
LABEL_3:
      if (sub_4D1F6C(a1 + 9))
      {
        goto LABEL_12;
      }

      goto LABEL_7;
    }
  }

  *(a2 + 16) |= 8u;
  *(a2 + 92) = v5;
  if (sub_4D1F6C(a1 + 9))
  {
    goto LABEL_12;
  }

LABEL_7:
  *(a2 + 16) |= 2u;
  v6 = *(a2 + 80);
  if (!v6)
  {
    v7 = *(a2 + 8);
    v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
    if (v7)
    {
      v8 = *v8;
    }

    sub_14BAE64(v8);
    v6 = v9;
    *(a2 + 80) = v9;
  }

  sub_64D110(a1 + 9, v6);
LABEL_12:
  sub_1959254((a2 + 24), (a1[3] - a1[2]) >> 4);
  v10 = a1[2];
  for (i = a1[3]; v10 != i; v10 += 16)
  {
    v18 = *(a2 + 40);
    if (v18 && (v19 = *(a2 + 32), v19 < *v18))
    {
      *(a2 + 32) = v19 + 1;
      v13 = *&v18[2 * v19 + 2];
    }

    else
    {
      v12 = sub_14BBE00(*(a2 + 24));
      v13 = sub_19593CC(a2 + 24, v12);
    }

    if (*v10 < 0)
    {
      v14 = -50;
    }

    else
    {
      v14 = 50;
    }

    v15 = *v10 / 100 + ((5243 * (v14 + *v10 % 100)) >> 19) + ((5243 * (v14 + *v10 % 100)) >> 31);
    v16 = v13[4];
    v13[4] = v16 | 1;
    v17 = *(v10 + 8);
    v13[4] = v16 | 3;
    v13[6] = v15;
    v13[7] = v17;
  }

  if (*(a1 + 10) != 0x7FFFFFFF && *(a1 + 11) != 0x7FFFFFFF)
  {
    *(a2 + 16) |= 1u;
    v20 = *(a2 + 72);
    if (!v20)
    {
      v21 = *(a2 + 8);
      v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
      if (v21)
      {
        v22 = *v22;
      }

      v20 = sub_14BBE78(v22);
      *(a2 + 72) = v20;
    }

    v23 = *(a1 + 10);
    v24 = v20[4];
    v20[4] = v24 | 1;
    v25 = *(a1 + 11);
    v20[4] = v24 | 3;
    v20[6] = v23;
    v20[7] = v25;
  }

  sub_1959254((a2 + 48), -1171354717 * ((a1[7] - a1[6]) >> 4));
  v26 = a1[6];
  for (j = a1[7]; v26 != j; v26 += 176)
  {
    v30 = *(a2 + 64);
    if (v30 && (v31 = *(a2 + 56), v31 < *v30))
    {
      *(a2 + 56) = v31 + 1;
      v32 = *&v30[2 * v31 + 2];
    }

    else
    {
      v33 = sub_14BBEF0(*(a2 + 48));
      v32 = sub_19593CC(a2 + 48, v33);
    }

    v34 = *(v26 + 8);
    if (*v26 < 0)
    {
      v35 = -50;
    }

    else
    {
      v35 = 50;
    }

    v36 = *v26 / 100 + ((5243 * (v35 + *v26 % 100)) >> 19) + ((5243 * (v35 + *v26 % 100)) >> 31);
    v37 = v34 / 100;
    v38 = v34 % 100;
    if (v34 < 0)
    {
      v39 = -50;
    }

    else
    {
      v39 = 50;
    }

    v40 = ((5243 * (v39 + v38)) >> 19) + ((5243 * (v39 + v38)) >> 31);
    v41 = *(v32 + 16);
    *(v32 + 32) = v36;
    *(v32 + 36) = v37 + v40;
    *(v32 + 16) = v41 | 7;
    v29 = *(v32 + 24);
    if (!v29)
    {
      v42 = *(v32 + 8);
      v43 = (v42 & 0xFFFFFFFFFFFFFFFCLL);
      if (v42)
      {
        v43 = *v43;
      }

      sub_14BAE64(v43);
      v29 = v28;
      *(v32 + 24) = v28;
    }

    sub_64D110((v26 + 16), v29);
  }
}

void sub_EC8AE4(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = *(a2 + 16);
  *(a2 + 64) = 3;
  *(a2 + 16) = v5 | 6;
  v6 = *(a2 + 56);
  if (!v6)
  {
    v7 = *(a2 + 8);
    v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
    if (v7)
    {
      v8 = *v8;
    }

    sub_14BE228(v8);
    v6 = v9;
    *(a2 + 56) = v9;
  }

  v10 = *(a1 + 8);
  a3.n128_f64[0] = v10 / 100.0;
  a3.n128_f32[0] = a3.n128_f64[0];
  v11 = *(v6 + 16);
  *(v6 + 44) = a3.n128_u32[0];
  v12 = v10 / 100;
  v13 = v10 % 100;
  if (v10 < 0)
  {
    v14 = -50;
  }

  else
  {
    v14 = 50;
  }

  *(v6 + 40) = v12 + ((5243 * (v14 + v13)) >> 19) + ((5243 * (v14 + v13)) >> 31);
  *(v6 + 16) = v11 | 0xD;
  v15 = *(v6 + 24);
  if (v15)
  {
    sub_586C94(a1 + 16, v15, a3);
    if (sub_4D1F6C((a1 + 136)))
    {
      goto LABEL_34;
    }

LABEL_14:
    if (sub_4D1F6C((a1 + 296)))
    {
      goto LABEL_34;
    }

    *(v6 + 16) |= 2u;
    v20 = *(v6 + 32);
    if (v20)
    {
      *(v20 + 16) |= 2u;
      v21 = *(v20 + 32);
      if (v21)
      {
LABEL_24:
        sub_64D110((a1 + 136), v21);
        *(v20 + 16) |= 4u;
        v27 = *(v20 + 40);
        if (!v27)
        {
          v28 = *(v20 + 8);
          v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
          if (v28)
          {
            v29 = *v29;
          }

          sub_14BAE64(v29);
          v27 = v30;
          *(v20 + 40) = v30;
        }

        sub_64D110((a1 + 296), v27);
        if (!sub_4D1F6C((a1 + 456)))
        {
          *(v20 + 16) |= 8u;
          v31 = *(v20 + 48);
          if (!v31)
          {
            v32 = *(v20 + 8);
            v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
            if (v32)
            {
              v33 = *v33;
            }

            sub_14BAE64(v33);
            v31 = v34;
            *(v20 + 48) = v34;
          }

          sub_64D110((a1 + 456), v31);
        }

        goto LABEL_34;
      }
    }

    else
    {
      v22 = *(v6 + 8);
      v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      if (v22)
      {
        v23 = *v23;
      }

      v20 = sub_14BDC94(v23);
      *(v6 + 32) = v20;
      *(v20 + 16) |= 2u;
      v21 = *(v20 + 32);
      if (v21)
      {
        goto LABEL_24;
      }
    }

    v24 = *(v20 + 8);
    v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
    if (v24)
    {
      v25 = *v25;
    }

    sub_14BAE64(v25);
    v21 = v26;
    *(v20 + 32) = v26;
    goto LABEL_24;
  }

  v16 = *(v6 + 8);
  v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
  if (v16)
  {
    v17 = *v17;
  }

  v18 = sub_14BF484(v17);
  *(v6 + 24) = v18;
  sub_586C94(a1 + 16, v18, v19);
  if (!sub_4D1F6C((a1 + 136)))
  {
    goto LABEL_14;
  }

LABEL_34:
  v35 = *(a1 + 128);
  *(a2 + 16) |= 0x20u;
  *(a2 + 76) = v35;
}

double sub_EC8D54(int *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1 + 2;
  v5 = v4 / 10;
  v6 = v4 % 10;
  if (v4 < 0)
  {
    v7 = -5;
  }

  else
  {
    v7 = 5;
  }

  *(a2 + 16) |= 2u;
  *(a2 + 32) = v5 + (((103 * (v7 + v6)) >> 15) & 1) + ((103 * (v7 + v6)) >> 10);
  result = sub_4470E4(v3);
  *(a2 + 16) |= 1u;
  *(a2 + 24) = result;
  return result;
}

__int128 *sub_EC8DEC(__int128 *result, uint64_t a2)
{
  if (*(result + 18) != -1 || *(result + 19) != -1)
  {
    v4 = result;
    nullsub_1();
    v5 = *(a2 + 16);
    *(a2 + 48) = v6;
    *(a2 + 16) = v5 | 9;
    v7 = *(a2 + 8);
    v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
    if (v7)
    {
      v8 = *v8;
    }

    sub_194EA1C((a2 + 24), v4, v8);
    *(a2 + 16) |= 2u;
    v10 = *(a2 + 32);
    if (!v10)
    {
      v11 = *(a2 + 8);
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
      if (v11)
      {
        v12 = *v12;
      }

      v10 = sub_16F5828(v12);
      *(a2 + 32) = v10;
    }

    LODWORD(v9) = *(v4 + 19);
    v13 = exp(v9 * -6.28318531 / 4294967300.0 + 3.14159265);
    v14 = atan((v13 + -1.0 / v13) * 0.5);
    HIDWORD(v15) = 1078765020;
    v16 = *(v10 + 40);
    *(v10 + 40) = v16 | 1;
    LODWORD(v15) = *(v4 + 18);
    *(v10 + 40) = v16 | 3;
    *(v10 + 48) = v14 * 57.2957795;
    *(v10 + 56) = v15 * 360.0 / 4294967300.0 + -180.0;
    *(a2 + 16) |= 4u;
    v17 = *(a2 + 40);
    if (v17)
    {
      v18 = v17[8];
      if (!v18)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v19 = *(a2 + 8);
      v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v17 = sub_1551A70(*v20);
        *(a2 + 40) = v17;
        v18 = v17[8];
        if (!v18)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v17 = sub_1551A70(v20);
        *(a2 + 40) = v17;
        v18 = v17[8];
        if (!v18)
        {
          goto LABEL_19;
        }
      }
    }

    v21 = *(v17 + 14);
    if (v21 < *v18)
    {
      *(v17 + 14) = v21 + 1;
      result = *&v18[2 * v21 + 2];
LABEL_20:
      v23 = *(result + 4);
      *(result + 4) = v23 | 1;
      v24 = *(v4 + 21);
      *(result + 4) = v23 | 3;
      *(result + 6) = 6;
      *(result + 7) = v24;
      return result;
    }

LABEL_19:
    v22 = sub_15519F8(v17[6]);
    result = sub_19593CC((v17 + 6), v22);
    goto LABEL_20;
  }

  return result;
}

double sub_EC8FF0(__int128 *a1, uint64_t a2)
{
  v2 = *(a1 + 47);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a1 + 4);
  }

  if (v2)
  {
    v4 = *(a1 + 167);
    if ((v4 & 0x80u) != 0)
    {
      v4 = *(a1 + 19);
    }

    if (v4)
    {
      v5 = *(a1 + 239);
      if ((v5 & 0x80u) != 0)
      {
        v5 = *(a1 + 28);
      }

      if (v5)
      {
        v6 = *a1;
        v7 = *(a1 + 1);
        v8 = *a1;
        if (*a1 != v7)
        {
          v10 = *(a1 + 264);
          if (v10 == 2)
          {
            v11 = 2;
          }

          else
          {
            v11 = v10 == 1;
          }

          *(a2 + 16) |= 2u;
          *(a2 + 56) = v11;
          do
          {
            sub_64E090(a2, v8);
            v8 += 3;
          }

          while (v8 != v7);
          *(a2 + 16) |= 1u;
          v12 = *(a2 + 48);
          if (!v12)
          {
            v13 = *(a2 + 8);
            v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
            if (v13)
            {
              v14 = *v14;
            }

            v12 = sub_16F5DB8(v14);
            *(a2 + 48) = v12;
          }

          *(v12 + 4) |= 1u;
          v15 = v12[1];
          v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
          if (v15)
          {
            v16 = *v16;
          }

          sub_194EA1C(v12 + 14, (a1 + 24), v16);
          *(v12 + 4) |= 2u;
          v17 = v12[1];
          v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
          if (v17)
          {
            v18 = *v18;
          }

          sub_194EA1C(v12 + 15, a1 + 3, v18);
          *(v12 + 4) |= 4u;
          v19 = v12[1];
          v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
          if (v19)
          {
            v20 = *v20;
          }

          sub_194EA1C(v12 + 16, (a1 + 72), v20);
          *(v12 + 4) |= 8u;
          v21 = v12[1];
          v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
          if (v21)
          {
            v22 = *v22;
          }

          sub_194EA1C(v12 + 17, a1 + 6, v22);
          *(v12 + 4) |= 0x10u;
          v23 = v12[1];
          v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
          if (v23)
          {
            v24 = *v24;
          }

          sub_194EA1C(v12 + 18, (a1 + 120), v24);
          *(v12 + 4) |= 0x20u;
          v25 = v12[1];
          v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
          if (v25)
          {
            v26 = *v26;
          }

          sub_194EA1C(v12 + 19, a1 + 9, v26);
          *(v12 + 4) |= 0x40u;
          v27 = v12[1];
          v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
          if (v27)
          {
            v28 = *v28;
          }

          sub_194EA1C(v12 + 20, (a1 + 168), v28);
          *(v12 + 4) |= 0x80u;
          v29 = v12[1];
          v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
          if (v29)
          {
            v30 = *v30;
          }

          sub_194EA1C(v12 + 21, a1 + 12, v30);
          *(v12 + 4) |= 0x200u;
          v31 = v12[1];
          v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
          if (v31)
          {
            v32 = *v32;
          }

          sub_194EA1C(v12 + 23, (a1 + 216), v32);
          *(v12 + 4) |= 0x400u;
          v33 = v12[1];
          v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
          if (v33)
          {
            v34 = *v34;
          }

          sub_194EA1C(v12 + 24, a1 + 15, v34);
        }
      }
    }
  }

  return *&v6;
}

void sub_EC92BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 467) == 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  *(a4 + 16) |= 0x400u;
  *(a4 + 104) = v4;
  if (*(a2 + 32) == 0x7FFFFFFF || *(a2 + 68) == 0x7FFFFFFF)
  {
    return;
  }

  if (!sub_4566B4((a2 + 40)))
  {
    return;
  }

  v9 = *(a2 + 144);
  if (!v9)
  {
    return;
  }

  if (v9 == 2)
  {
    v10 = *(a2 + 136);
    if (v10 > 0xFFFFFFFEFFFFFFFFLL || !v10)
    {
      return;
    }

    goto LABEL_16;
  }

  if (v9 != 1)
  {
    sub_5AF20();
  }

  if (*(a2 + 136) != -1)
  {
LABEL_16:
    if (*(a1 + 72) == -1 && *(a1 + 76) == -1)
    {
      return;
    }

    *(a4 + 16) |= 0x10u;
    v11 = *(a4 + 56);
    if (!v11)
    {
      v12 = *(a4 + 8);
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
      if (v12)
      {
        v13 = *v13;
      }

      v11 = sub_14BC8C8(v13);
      *(a4 + 56) = v11;
    }

    v87 = a1;
    v14 = *(a2 + 32);
    v15 = v14 / 10;
    v16 = v14 % 10;
    if (v14 < 0)
    {
      v17 = -5;
    }

    else
    {
      v17 = 5;
    }

    *(v11 + 16) |= 2u;
    *(v11 + 32) = v15 + (((103 * (v17 + v16)) >> 15) & 1) + ((103 * (v17 + v16)) >> 10);
    v18 = sub_3F80((a2 + 40));
    if (v18 < 0)
    {
      v19 = 65036;
    }

    else
    {
      v19 = 500;
    }

    v20 = v19 + v18 % 1000 + ((-31981 * (v19 + v18 % 1000)) >> 16);
    *(v11 + 16) |= 8u;
    *(v11 + 40) = v18 / 1000 + (v20 >> 9) + ((v20 & 0x8000) >> 15);
    v21 = sub_4470E4(a2 + 40);
    v22 = *(v11 + 16);
    *(v11 + 36) = v21;
    *(v11 + 16) = v22 | 5;
    v23 = *(v11 + 24);
    if (!v23)
    {
      v24 = *(v11 + 8);
      v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
      if (v24)
      {
        v25 = *v25;
      }

      v23 = sub_14BC824(v25);
      *(v11 + 24) = v23;
    }

    v27 = *(a2 + 72);
    v26 = *(a2 + 80);
    if (v27 != v26)
    {
      while (1)
      {
        v28 = *(v23 + 32);
        if (v28 && (v29 = *(v23 + 24), v29 < *v28))
        {
          *(v23 + 24) = v29 + 1;
          v30 = *&v28[2 * v29 + 2];
        }

        else
        {
          v31 = sub_14BC7A8(*(v23 + 16));
          v30 = sub_19593CC(v23 + 16, v31);
        }

        if (*v27 - 1 < 0xA)
        {
          v32 = (*v27 - 1) + 1;
        }

        else
        {
          v32 = 0;
        }

        v33 = v30[4];
        v30[4] = v33 | 1;
        v30[6] = v32;
        v34 = *(v27 + 1);
        if (v34 != 0x7FFFFFFF)
        {
          v36 = v34 / 1000;
          v37 = v34 % 1000;
          if (v34 < 0)
          {
            v38 = 65036;
          }

          else
          {
            v38 = 500;
          }

          v39 = v38 + v37 + ((-31981 * (v38 + v37)) >> 16);
          v40 = v33 | 3;
          v30[4] = v40;
          v30[7] = v36 + (v39 >> 9) + ((v39 & 0x8000) >> 15);
          v41 = *(v27 + 2);
          if (v41 == 0x7FFFFFFF)
          {
            goto LABEL_34;
          }

LABEL_67:
          v45 = v41 / 1000;
          v46 = v41 % 1000;
          if (v41 < 0)
          {
            v47 = 65036;
          }

          else
          {
            v47 = 500;
          }

          v48 = v47 + v46 + ((-31981 * (v47 + v46)) >> 16);
          v30[4] = v40 | 4;
          v30[8] = v45 + (v48 >> 9) + ((v48 & 0x8000) >> 15);
          goto LABEL_34;
        }

        if (sub_7E7E4(3u))
        {
          break;
        }

LABEL_66:
        v40 = v30[4] | 2;
        v30[4] = v40;
        v30[7] = 50000;
        v41 = *(v27 + 2);
        if (v41 != 0x7FFFFFFF)
        {
          goto LABEL_67;
        }

LABEL_34:
        v27 += 16;
        if (v27 == v26)
        {
          goto LABEL_71;
        }
      }

      sub_19594F8(&v94);
      sub_4A5C(&v94, "Maximum power associated to the suggested charger plug is missing, using a default value for now.", 97);
      if ((v103 & 0x10) != 0)
      {
        v42 = v102;
        v43 = v99;
        if (v102 < *&v99[8])
        {
          v102 = *&v99[8];
          v42 = *&v99[8];
          v43 = v99;
        }
      }

      else
      {
        if ((v103 & 8) == 0)
        {
          v35 = 0;
          v93 = 0;
LABEL_61:
          *(&__dst + v35) = 0;
          sub_7E854(&__dst, 3u);
          if (v93 < 0)
          {
            operator delete(__dst);
          }

          v94 = v90;
          *(&v94 + *(*&v90 - 24)) = v88;
          if (v101 < 0)
          {
            operator delete(*&__p[1]);
          }

          std::locale::~locale(&v96);
          std::ostream::~ostream();
          std::ios::~ios();
          goto LABEL_66;
        }

        v42 = v98;
        v43 = &v97;
      }

      v44 = *v43;
      v35 = v42 - *v43;
      if (v35 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v35 >= 0x17)
      {
        operator new();
      }

      v93 = v42 - *v43;
      if (v35)
      {
        memmove(&__dst, v44, v35);
      }

      goto LABEL_61;
    }

LABEL_71:
    v49 = *(a2 + 96);
    v50 = *(a2 + 104);
    if (v49 == v50)
    {
LABEL_110:
      nullsub_1();
      v72 = *(a4 + 16);
      *(a4 + 96) = v73;
      *(a4 + 16) = v72 | 0x201;
      v74 = *(a4 + 8);
      v75 = (v74 & 0xFFFFFFFFFFFFFFFCLL);
      if (v74)
      {
        v75 = *v75;
      }

      sub_194EA1C((a4 + 24), v87, v75);
      *(a4 + 16) |= 2u;
      v77 = *(a4 + 32);
      if (!v77)
      {
        v78 = *(a4 + 8);
        v79 = (v78 & 0xFFFFFFFFFFFFFFFCLL);
        if (v78)
        {
          v79 = *v79;
        }

        v77 = sub_16F5828(v79);
        *(a4 + 32) = v77;
      }

      LODWORD(v76) = *(v87 + 76);
      v80 = exp(v76 * -6.28318531 / 4294967300.0 + 3.14159265);
      v81 = atan((v80 + -1.0 / v80) * 0.5) * 57.2957795;
      v82 = *(v77 + 40);
      *(v77 + 40) = v82 | 1;
      *(v77 + 48) = v81;
      LODWORD(v81) = *(v87 + 72);
      *(v77 + 40) = v82 | 3;
      *(v77 + 56) = *&v81 * 360.0 / 4294967300.0 + -180.0;
      *(a4 + 16) |= 0x40u;
      v83 = *(a4 + 72);
      if (!v83)
      {
        v84 = *(a4 + 8);
        v85 = (v84 & 0xFFFFFFFFFFFFFFFCLL);
        if (v84)
        {
          v85 = *v85;
        }

        sub_16F5E18(v85);
        v83 = v86;
        *(a4 + 72) = v86;
      }

      sub_EC8FF0((v87 + 96), v83);
      operator new();
    }

    while (1)
    {
      v51 = *(v23 + 56);
      if (v51 && (v52 = *(v23 + 48), v52 < *v51))
      {
        *(v23 + 48) = v52 + 1;
        v53 = *&v51[2 * v52 + 2];
      }

      else
      {
        v54 = sub_14BC7A8(*(v23 + 40));
        v53 = sub_19593CC(v23 + 40, v54);
      }

      if (*v49 - 1 < 0xA)
      {
        v55 = (*v49 - 1) + 1;
      }

      else
      {
        v55 = 0;
      }

      v56 = v53[4];
      v53[4] = v56 | 1;
      v53[6] = v55;
      v57 = *(v49 + 1);
      if (v57 != 0x7FFFFFFF)
      {
        v59 = v57 / 1000;
        v60 = v57 % 1000;
        if (v57 < 0)
        {
          v61 = 65036;
        }

        else
        {
          v61 = 500;
        }

        v62 = v61 + v60 + ((-31981 * (v61 + v60)) >> 16);
        v63 = v56 | 3;
        v53[4] = v63;
        v53[7] = v59 + (v62 >> 9) + ((v62 & 0x8000) >> 15);
        v64 = *(v49 + 2);
        if (v64 == 0x7FFFFFFF)
        {
          goto LABEL_73;
        }

LABEL_106:
        v68 = v64 / 1000;
        v69 = v64 % 1000;
        if (v64 < 0)
        {
          v70 = 65036;
        }

        else
        {
          v70 = 500;
        }

        v71 = v70 + v69 + ((-31981 * (v70 + v69)) >> 16);
        v53[4] = v63 | 4;
        v53[8] = v68 + (v71 >> 9) + ((v71 & 0x8000) >> 15);
        goto LABEL_73;
      }

      if (sub_7E7E4(3u))
      {
        break;
      }

LABEL_105:
      v63 = v53[4] | 2;
      v53[4] = v63;
      v53[7] = 50000;
      v64 = *(v49 + 2);
      if (v64 != 0x7FFFFFFF)
      {
        goto LABEL_106;
      }

LABEL_73:
      v49 += 16;
      if (v49 == v50)
      {
        goto LABEL_110;
      }
    }

    sub_19594F8(&v94);
    sub_4A5C(&v94, "Maximum power associated to the supported charger plug is missing, using a default value for now.", 97);
    if ((v103 & 0x10) != 0)
    {
      v65 = v102;
      v66 = v99;
      if (v102 < *&v99[8])
      {
        v102 = *&v99[8];
        v65 = *&v99[8];
        v66 = v99;
      }
    }

    else
    {
      if ((v103 & 8) == 0)
      {
        v58 = 0;
        v93 = 0;
LABEL_100:
        *(&__dst + v58) = 0;
        sub_7E854(&__dst, 3u);
        if (v93 < 0)
        {
          operator delete(__dst);
        }

        v94 = v91;
        *(&v94 + *(*&v91 - 24)) = v89;
        if (v101 < 0)
        {
          operator delete(*&__p[1]);
        }

        std::locale::~locale(&v96);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_105;
      }

      v65 = v98;
      v66 = &v97;
    }

    v67 = *v66;
    v58 = v65 - *v66;
    if (v58 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v58 >= 0x17)
    {
      operator new();
    }

    v93 = v65 - *v66;
    if (v58)
    {
      memmove(&__dst, v67, v58);
    }

    goto LABEL_100;
  }
}

void sub_EC9F18(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_EC9F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_53E440(va);
  _Unwind_Resume(a1);
}

void sub_EC9F5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_1959728(va);
  _Unwind_Resume(a1);
}

void sub_EC9F70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_1959728(va);
  _Unwind_Resume(a1);
}

void sub_EC9F84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_1959728(va);
  _Unwind_Resume(a1);
}

void sub_EC9F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_1959728(va);
  _Unwind_Resume(a1);
}

void sub_EC9FAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
    sub_1959728(&a22);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a22);
  _Unwind_Resume(a1);
}

void sub_EC9FFC(uint64_t *a1, uint64_t a2)
{
  *(a2 + 16) |= 0x20u;
  v3 = *(a2 + 64);
  if (!v3)
  {
    v5 = *(a2 + 8);
    v6 = (v5 & 0xFFFFFFFFFFFFFFFCLL);
    if (v5)
    {
      v6 = *v6;
    }

    v3 = sub_14BC948(v6);
    *(a2 + 64) = v3;
  }

  v7 = *a1;
  v8 = a1[1];
  while (v7 != v8)
  {
    v11 = *(v3 + 32);
    if (v11 && (v12 = *(v3 + 24), v12 < *v11))
    {
      *(v3 + 24) = v12 + 1;
      v10 = *&v11[2 * v12 + 2];
    }

    else
    {
      sub_155A67C(*(v3 + 16));
      v10 = sub_19593CC(v3 + 16, v9);
    }

    sub_437268(v7, v10);
    v7 += 72;
  }
}

double sub_ECA0BC(uint64_t a1, uint64_t a2)
{
  result = sub_4470E4(a1);
  *(a2 + 16) |= 2u;
  *(a2 + 32) = result;
  return result;
}

void sub_ECA0F4(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  v3 = result[1];
  if (*result != v3)
  {
    do
    {
      while (1)
      {
        v5 = *v2 < 0 ? -50 : 50;
        v6 = *v2 / 100 + ((5243 * (v5 + *v2 % 100)) >> 19) + ((5243 * (v5 + *v2 % 100)) >> 31);
        v7 = *(a2 + 176);
        if (v7 == *(a2 + 180))
        {
          v8 = v7 + 1;
          sub_1958E5C((a2 + 176), v7 + 1);
          *(*(a2 + 184) + 4 * v7) = v6;
        }

        else
        {
          *(*(a2 + 184) + 4 * v7) = v6;
          v8 = v7 + 1;
        }

        *(a2 + 176) = v8;
        v9 = *(v2 + 8) == 1 ? 1 : 4;
        v10 = *(a2 + 152);
        if (v10 != *(a2 + 156))
        {
          break;
        }

        sub_1958E5C((a2 + 152), v10 + 1);
        *(*(a2 + 160) + 4 * v10) = v9;
        *(a2 + 152) = v10 + 1;
        v2 += 16;
        if (v2 == v3)
        {
          return;
        }
      }

      *(*(a2 + 160) + 4 * v10) = v9;
      *(a2 + 152) = v10 + 1;
      v2 += 16;
    }

    while (v2 != v3);
  }
}

uint64_t *sub_ECA238(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  v3 = result[1];
  if (*result != v3)
  {
    do
    {
      v7 = *(a2 + 168);
      if (v7 && (v8 = *(a2 + 160), v8 < *v7))
      {
        *(a2 + 160) = v8 + 1;
        v9 = *&v7[2 * v8 + 2];
        *(v9 + 16) |= 1u;
        v5 = *(v9 + 24);
        if (!v5)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v10 = sub_14BC020(*(a2 + 152));
        v9 = sub_19593CC(a2 + 152, v10);
        *(v9 + 16) |= 1u;
        v5 = *(v9 + 24);
        if (!v5)
        {
LABEL_13:
          v11 = *(v9 + 8);
          v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
          if (v11)
          {
            v12 = *v12;
          }

          sub_14BAE64(v12);
          *(v9 + 24) = v5;
        }
      }

      sub_64E090(v5, (v2 + 16));
      result = sub_754A5C(v2);
      if ((result - 1) >= 3)
      {
        v6 = 0;
      }

      else
      {
        v6 = result;
      }

      *(v9 + 16) |= 2u;
      *(v9 + 32) = v6;
      v2 += 40;
    }

    while (v2 != v3);
  }

  return result;
}

void sub_ECA330(uint64_t *a1, uint64_t a2, long double a3)
{
  v4 = a1[1];
  if (*a1 < 0)
  {
    v5 = -50;
  }

  else
  {
    v5 = 50;
  }

  v6 = *a1 / 100 + ((5243 * (v5 + *a1 % 100)) >> 19) + ((5243 * (v5 + *a1 % 100)) >> 31);
  v7 = v4 / 100;
  v8 = v4 % 100;
  if (v4 < 0)
  {
    v9 = -50;
  }

  else
  {
    v9 = 50;
  }

  *(a2 + 16) |= 3u;
  *(a2 + 72) = v6;
  *(a2 + 76) = v7 + ((5243 * (v9 + v8)) >> 19) + ((5243 * (v9 + v8)) >> 31);
  v11 = a1[2];
  for (i = a1[3]; v11 != i; v11 += 24)
  {
    v20 = *(a2 + 40);
    if (v20 && (v21 = *(a2 + 32), v21 < *v20))
    {
      *(a2 + 32) = v21 + 1;
      v22 = *&v20[2 * v21 + 2];
      *(v22 + 16) |= 1u;
      v12 = *(v22 + 24);
      if (!v12)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v23 = sub_14BE2A4(*(a2 + 24));
      v22 = sub_19593CC(a2 + 24, v23);
      *(v22 + 16) |= 1u;
      v12 = *(v22 + 24);
      if (!v12)
      {
LABEL_19:
        v24 = *(v22 + 8);
        v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
        if (v24)
        {
          v25 = *v25;
        }

        v12 = sub_16F5828(v25);
        *(v22 + 24) = v12;
      }
    }

    LODWORD(a3) = *(v11 + 4);
    v13 = exp(*&a3 * -6.28318531 / 4294967300.0 + 3.14159265);
    a3 = atan((v13 + -1.0 / v13) * 0.5) * 57.2957795;
    v14 = *(v12 + 40);
    *(v12 + 40) = v14 | 1;
    LODWORD(v15) = *v11;
    *(v12 + 40) = v14 | 3;
    *(v12 + 48) = a3;
    *(v12 + 56) = v15 * 360.0 / 4294967300.0 + -180.0;
    v16 = *(v11 + 16);
    v17 = v16 / 100;
    v18 = v16 % 100;
    if (v16 < 0)
    {
      v19 = -50;
    }

    else
    {
      v19 = 50;
    }

    *(v22 + 16) |= 2u;
    *(v22 + 32) = v17 + ((5243 * (v19 + v18)) >> 19) + ((5243 * (v19 + v18)) >> 31);
  }

  v26 = a1[5];
  for (j = a1[6]; v26 != j; v26 += 64)
  {
    v28 = *(a2 + 64);
    if (v28 && (v29 = *(a2 + 56), v29 < *v28))
    {
      *(a2 + 56) = v29 + 1;
      v30 = *&v28[2 * v29 + 2];
      *(v30 + 16) |= 1u;
      v31 = *(v30 + 24);
      if (v31)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v32 = sub_14BE320(*(a2 + 48));
      v30 = sub_19593CC(a2 + 48, v32);
      *(v30 + 16) |= 1u;
      v31 = *(v30 + 24);
      if (v31)
      {
        goto LABEL_32;
      }
    }

    v33 = *(v30 + 8);
    v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
    if (v33)
    {
      v34 = *v34;
    }

    sub_16F58FC(v34);
    v31 = v35;
    *(v30 + 24) = v35;
LABEL_32:
    sub_4B6994(v26, v31);
    v36 = *(v26 + 48);
    if (v36 <= 8)
    {
      if (((1 << v36) & 0x1EE) != 0)
      {
        goto LABEL_34;
      }

      if (v36 == 4)
      {
        v39 = *(v30 + 16);
        *(v30 + 16) = v39 | 8;
        *(v30 + 40) = 4;
        v40 = *(v26 + 52);
        v41 = v40 / 10;
        v42 = v40 % 10;
        if (v40 < 0)
        {
          v43 = -5;
        }

        else
        {
          v43 = 5;
        }

        v37 = v39 | 0xA;
        *(v30 + 16) = v37;
        *(v30 + 32) = v41 + (((103 * (v43 + v42)) >> 15) & 1) + ((103 * (v43 + v42)) >> 10);
        v38 = *(v26 + 56);
        if (v38 == 0x7FFFFFFFFFFFFFFFLL)
        {
          continue;
        }

LABEL_35:
        *(v30 + 16) = v37 | 4;
        *(v30 + 36) = v38;
        continue;
      }
    }

    v36 = 1;
LABEL_34:
    v37 = *(v30 + 16) | 8;
    *(v30 + 16) = v37;
    *(v30 + 40) = v36;
    v38 = *(v26 + 56);
    if (v38 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_35;
    }
  }
}

void sub_ECA76C(int a1, int a2, uint64_t a3)
{
  v6 = *(a3 + 248);
  if (v6 == *(a3 + 252))
  {
    sub_1958E5C((a3 + 248), v6 + 1);
    *(*(a3 + 256) + 4 * v6) = a1;
    *(a3 + 248) = v6 + 1;
    v7 = (a3 + 272);
    v8 = *(a3 + 272);
    if (v8 != *(a3 + 276))
    {
LABEL_3:
      *(*(a3 + 280) + 4 * v8) = a2;
      *v7 = v8 + 1;
      return;
    }
  }

  else
  {
    *(*(a3 + 256) + 4 * v6) = a1;
    *(a3 + 248) = v6 + 1;
    v7 = (a3 + 272);
    v8 = *(a3 + 272);
    if (v8 != *(a3 + 276))
    {
      goto LABEL_3;
    }
  }

  sub_1958E5C(v7, v8 + 1);
  *(*(a3 + 280) + 4 * v8) = a2;
  *v7 = v8 + 1;
}

void sub_ECA844(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = (a2 + 264);
  v5 = *(a2 + 264);
  if (v5 == *(a2 + 268))
  {
    sub_1958E5C((a2 + 264), v5 + 1);
    *(*(a2 + 272) + 4 * v5) = v3;
  }

  else
  {
    *(*(a2 + 272) + 4 * v5) = result;
  }

  *v4 = v5 + 1;
}

uint64_t sub_ECA8CC(int a1)
{
  result = 0;
  if (a1 < 5)
  {
    switch(a1)
    {
      case 2:
        return 1;
      case 3:
        return 2;
      case 4:
        exception = __cxa_allocate_exception(0x40uLL);
        v8 = sub_2D390(exception, "Got invalid route type USER_ROUTE in response.", 0x2EuLL);
    }
  }

  else if (a1 <= 5)
  {
    return 4;
  }

  else
  {
    switch(a1)
    {
      case 6:
        return 5;
      case 7:
        v5 = __cxa_allocate_exception(0x40uLL);
        v6 = sub_2D390(v5, "Got invalid route type ALTERNATE_NON_NAVIGABLE in response.", 0x3BuLL);
      case 8:
        v3 = __cxa_allocate_exception(0x40uLL);
        v4 = sub_2D390(v3, "Got invalid route type UNKNOWN in response.", 0x2BuLL);
    }
  }

  return result;
}

int32x2_t sub_ECA9F0(void ***a1, int32x2_t *a2)
{
  a2[2].i32[0] |= 1u;
  v4 = a2[3];
  if (!v4)
  {
    v5 = a2[1];
    v6 = (*&v5 & 0xFFFFFFFFFFFFFFFCLL);
    if (v5.i8[0])
    {
      v6 = *v6;
    }

    sub_14BAE64(v6);
    v4 = v7;
    a2[3] = v7;
  }

  sub_64D110(a1, v4);
  a2[2].i32[0] |= 6u;
  v8 = a1[20];
  v9 = vceq_s32(v8, 0x200000002);
  result = vsub_s32(vand_s8(v9, 0x200000002), vbic_s8(vceq_s32(v8, 0x100000001), v9));
  a2[4] = result;
  return result;
}

uint64_t sub_ECAA80(int a1)
{
  if ((a1 - 2) >= 3)
  {
    return 0;
  }

  else
  {
    return (a1 - 1);
  }
}

BOOL sub_ECAA94(uint64_t a1, uint64_t a2)
{
  if (sub_5CBB30(a1))
  {
    *(a2 + 16) |= 1u;
    v5 = *(a2 + 24);
    if (!v5)
    {
      v6 = *(a2 + 8);
      v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
      if (v6)
      {
        v7 = *v7;
      }

      v5 = sub_14BDABC(v7);
      *(a2 + 24) = v5;
    }

    v8 = *(v5 + 16);
    *(v5 + 28) = *a1;
    v9 = *(a1 + 8);
    *(v5 + 16) = v8 | 0xA;
    *(v5 + 33) = v9;
    if (!sub_5CBB44(a1))
    {
LABEL_3:
      result = sub_5CBB58(a1);
      if (!result)
      {
        return result;
      }

      goto LABEL_15;
    }
  }

  else if (!sub_5CBB44(a1))
  {
    goto LABEL_3;
  }

  *(a2 + 16) |= 2u;
  v10 = *(a2 + 32);
  if (!v10)
  {
    v11 = *(a2 + 8);
    v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
    if (v11)
    {
      v12 = *v12;
    }

    v10 = sub_14BDABC(v12);
    *(a2 + 32) = v10;
  }

  v13 = *(v10 + 16);
  *(v10 + 28) = *(a1 + 16);
  v14 = *(a1 + 24);
  *(v10 + 16) = v13 | 0xA;
  *(v10 + 33) = v14;
  result = sub_5CBB58(a1);
  if (result)
  {
LABEL_15:
    v15 = *(a1 + 32);
    if (v15)
    {
      v16 = v15 / 10;
      v17 = v15 % 10;
      if (v15 < 0)
      {
        v18 = -5;
      }

      else
      {
        v18 = 5;
      }

      *(a2 + 16) |= 4u;
      *(a2 + 40) = v16 + (((103 * (v18 + v17)) >> 15) & 1) + ((103 * (v18 + v17)) >> 10);
    }
  }

  return result;
}

void sub_ECAC00(void *a1, uint64_t a2, long double a3)
{
  for (i = a1[2]; i; i = *i)
  {
    v6 = *(a2 + 40);
    if (v6 && (v7 = *(a2 + 32), v7 < *v6))
    {
      *(a2 + 32) = v7 + 1;
      v8 = *&v6[2 * v7 + 2];
    }

    else
    {
      v9 = sub_16F5828(*(a2 + 24));
      v8 = sub_19593CC(a2 + 24, v9);
    }

    LODWORD(a3) = *(i + 5);
    v10 = exp(*&a3 * -6.28318531 / 4294967300.0 + 3.14159265);
    a3 = atan((v10 + -1.0 / v10) * 0.5) * 57.2957795;
    v11 = *(v8 + 40);
    *(v8 + 40) = v11 | 1;
    LODWORD(v12) = *(i + 4);
    *(v8 + 40) = v11 | 3;
    *(v8 + 48) = a3;
    *(v8 + 56) = v12 * 360.0 / 4294967300.0 + -180.0;
    v13 = *(i + 6);
    if (v13 != 0x7FFFFFFF)
    {
      a3 = v13 / 100.0;
      *(v8 + 40) = v11 | 7;
      *(v8 + 64) = a3;
    }
  }

  *(a2 + 16) |= 1u;
  v14 = *(a2 + 48);
  if (!v14)
  {
    v15 = *(a2 + 8);
    v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
    if (v15)
    {
      v16 = *v16;
    }

    v14 = sub_1551A70(v16);
    *(a2 + 48) = v14;
  }

  v18 = a1[5];
  v17 = a1[6];
  while (v18 != v17)
  {
    if (*v18 != -1 && v18[1] != -1)
    {
      v24 = v14[8];
      if (v24 && (v25 = *(v14 + 14), v25 < *v24))
      {
        *(v14 + 14) = v25 + 1;
        v20 = *&v24[2 * v25 + 2];
      }

      else
      {
        v19 = sub_15519F8(v14[6]);
        v20 = sub_19593CC((v14 + 6), v19);
      }

      v21 = *v18;
      v22 = v20[4];
      v20[4] = v22 | 1;
      v20[6] = v21;
      v23 = v18[1];
      v20[4] = v22 | 3;
      v20[7] = v23;
    }

    v18 += 2;
  }
}

void sub_ECAE3C(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  if (sub_734C10(a1))
  {
    *(a3 + 40) |= 1u;
    v6 = *(a3 + 8);
    v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
    if (v6)
    {
      v7 = *v7;
    }

    sub_194EA1C((a3 + 48), a1, v7);
  }

  if (sub_734C10((a1 + 8)) && *(a2 + 1) == 1)
  {
    *(a3 + 40) |= 2u;
    v8 = *(a3 + 8);
    v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL);
    if (v8)
    {
      v9 = *v9;
    }

    sub_194EA1C((a3 + 56), a1 + 2, v9);
    v10 = a1[15];
    if (v10 == 3)
    {
      v11 = 2;
    }

    else
    {
      v11 = 1;
    }

    if (v10 == 2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11;
    }

    *(a3 + 40) |= 0x20u;
    *(a3 + 84) = v12;
  }

  v13 = a1[30] - 1;
  if (v13 <= 3)
  {
    v14 = dword_22ADCF0[v13];
    *(a3 + 40) |= 0x40u;
    *(a3 + 88) = v14;
    if (!sub_7345C4((a1 + 16)))
    {
LABEL_18:
      if (*(a2 + 6) != 1)
      {
        return;
      }

LABEL_24:
      if (!sub_1232EB4(a1 + 3))
      {
        return;
      }

      v18 = sub_1232E84(a1 + 3);
      v19 = (v18 + 16 * (*(v18 + 8) > 7uLL));
      *(a3 + 40) |= 8u;
      v20 = *(a3 + 8);
      v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
      if (v20)
      {
        v21 = *v21;
        v22 = strlen(v19);
        if (v22 < 0x7FFFFFFFFFFFFFF8)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v22 = strlen(v19);
        if (v22 < 0x7FFFFFFFFFFFFFF8)
        {
LABEL_27:
          v23 = v22;
          if (v22 >= 0x17)
          {
            operator new();
          }

          v25 = v22;
          if (v22)
          {
            memmove(&__dst, v19, v22);
          }

          *(&__dst + v23) = 0;
          sub_194EA1C((a3 + 72), &__dst, v21);
          if (v25 < 0)
          {
            operator delete(__dst);
          }

          return;
        }
      }

      sub_3244();
    }
  }

  else if (!sub_7345C4((a1 + 16)))
  {
    goto LABEL_18;
  }

  *(a3 + 40) |= 4u;
  v15 = *(a3 + 8);
  v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
  if (v15)
  {
    v16 = *v16;
  }

  sub_194EA1C((a3 + 64), (a1 + 18), v16);
  v17 = a1[16];
  *(a3 + 40) |= 0x10u;
  *(a3 + 80) = v17;
  if (*(a2 + 6) == 1)
  {
    goto LABEL_24;
  }
}

void sub_ECB0C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_ECB0E0(void ***a1, uint64_t a2)
{
  *(a2 + 16) |= 1u;
  v4 = *(a2 + 24);
  if (!v4)
  {
    v5 = *(a2 + 8);
    v6 = (v5 & 0xFFFFFFFFFFFFFFFCLL);
    if (v5)
    {
      v6 = *v6;
    }

    sub_14BAE64(v6);
    v4 = v7;
    *(a2 + 24) = v7;
  }

  sub_64D110(a1, v4);
  *(a2 + 16) |= 2u;
  v8 = *(a2 + 32);
  if (!v8)
  {
    v9 = *(a2 + 8);
    v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
    if (v9)
    {
      v10 = *v10;
    }

    sub_14BAE64(v10);
    v8 = v11;
    *(a2 + 32) = v11;
  }

  sub_64D110(a1 + 20, v8);
  *(a2 + 16) |= 4u;
  v12 = *(a2 + 40);
  if (!v12)
  {
    v13 = *(a2 + 8);
    v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
    if (v13)
    {
      v14 = *v14;
    }

    sub_14BB040(v14);
    v12 = v15;
    *(a2 + 40) = v15;
  }

  sub_74E3A0(a1 + 40, v12);
  *(a2 + 16) |= 8u;
  v16 = *(a2 + 48);
  if (v16)
  {
    v17 = a1 + 220;
  }

  else
  {
    v18 = *(a2 + 8);
    v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
    if (v18)
    {
      v19 = *v19;
    }

    sub_14BB040(v19);
    v16 = v20;
    *(a2 + 48) = v20;
    v17 = a1 + 220;
  }

  sub_74E3A0(v17, v16);
}

uint64_t sub_ECB220(unsigned int *a1, _DWORD *a2)
{
  if (sub_3F80(a1) == 0x7FFFFFFF)
  {
    v4 = sub_5AAC4(a1);
  }

  else
  {
    v4 = sub_3F80(a1);
  }

  if (v4 < 0)
  {
    v5 = 65036;
  }

  else
  {
    v5 = 500;
  }

  v6 = v5 + v4 % 1000 + ((-31981 * (v5 + v4 % 1000)) >> 16);
  a2[4] |= 2u;
  a2[7] = v4 / 1000 + (v6 >> 9) + ((v6 & 0x8000) >> 15);
  result = sub_4470E4(a1);
  a2[4] |= 1u;
  a2[6] = result;
  return result;
}

uint64_t sub_ECB2E4(unsigned int a1)
{
  if (a1 > 9)
  {
    return 0;
  }

  else
  {
    return dword_22ADAB8[a1];
  }
}

uint64_t sub_ECB304(int a1)
{
  if ((a1 - 1) > 0x28)
  {
    return 0;
  }

  else
  {
    return dword_22ADAE0[a1 - 1];
  }
}

int32x2_t sub_ECB328(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (!*a1)
  {
    v4 |= 4u;
    *(a2 + 64) = 0;
  }

  *(a2 + 68) = vmovn_s64(*(a1 + 8));
  *(a2 + 76) = *(a1 + 576);
  *(a2 + 16) = v4 | 0x39;
  v5 = *(a2 + 48);
  if (!v5)
  {
    v6 = *(a2 + 8);
    v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
    if (v6)
    {
      v7 = *v7;
    }

    v5 = sub_1551A70(v7);
    *(a2 + 48) = v5;
  }

  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  while (v8 != v9)
  {
    if (*v8 != -1 && v8[1] != -1)
    {
      v15 = v5[8];
      if (v15 && (v16 = *(v5 + 14), v16 < *v15))
      {
        *(v5 + 14) = v16 + 1;
        v11 = *&v15[2 * v16 + 2];
      }

      else
      {
        v10 = sub_15519F8(v5[6]);
        v11 = sub_19593CC((v5 + 6), v10);
      }

      v12 = *v8;
      v13 = v11[4];
      v11[4] = v13 | 1;
      v11[6] = v12;
      v14 = v8[1];
      v11[4] = v13 | 3;
      v11[7] = v14;
    }

    v8 += 2;
  }

  if (sub_685BAC(a1))
  {
    *(a2 + 16) |= 2u;
    v18 = *(a2 + 56);
    if (v18)
    {
      *(v18 + 16) |= 1u;
      v19 = *(v18 + 24);
      if (v19)
      {
LABEL_27:
        sub_64D110((a1 + 96), v19);
        *(v18 + 16) |= 2u;
        v26 = *(v18 + 32);
        if (!v26)
        {
          v27 = *(v18 + 8);
          v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
          if (v27)
          {
            v28 = *v28;
          }

          sub_14BAE64(v28);
          v26 = v29;
          *(v18 + 32) = v29;
        }

        sub_64D110((a1 + 256), v26);
        *(v18 + 16) |= 4u;
        v31 = *(v18 + 40);
        if (!v31)
        {
          v32 = *(v18 + 8);
          v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
          if (v32)
          {
            v33 = *v33;
          }

          v31 = sub_14BF484(v33);
          *(v18 + 40) = v31;
        }

        sub_586C94(a1 + 416, v31, v30);
        *(v18 + 16) |= 8u;
        v34 = *(v18 + 48);
        if (!v34)
        {
          v35 = *(v18 + 8);
          v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
          if (v35)
          {
            v36 = *v36;
          }

          v34 = sub_1551A70(v36);
          *(v18 + 48) = v34;
        }

        v37 = *(a1 + 528);
        v38 = *(a1 + 536);
        while (v37 != v38)
        {
          if (*v37 != -1 && v37[1] != -1)
          {
            v44 = v34[8];
            if (v44 && (v45 = *(v34 + 14), v45 < *v44))
            {
              *(v34 + 14) = v45 + 1;
              v40 = *&v44[2 * v45 + 2];
            }

            else
            {
              v39 = sub_15519F8(v34[6]);
              v40 = sub_19593CC((v34 + 6), v39);
            }

            v41 = *v37;
            v42 = v40[4];
            v40[4] = v42 | 1;
            v40[6] = v41;
            v43 = v37[1];
            v40[4] = v42 | 3;
            v40[7] = v43;
          }

          v37 += 2;
        }

        goto LABEL_49;
      }
    }

    else
    {
      v20 = *(a2 + 8);
      v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
      if (v20)
      {
        v21 = *v21;
      }

      sub_14BA464(v21);
      v18 = v22;
      *(a2 + 56) = v22;
      *(v22 + 16) |= 1u;
      v19 = *(v22 + 24);
      if (v19)
      {
        goto LABEL_27;
      }
    }

    v23 = *(v18 + 8);
    v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
    if (v23)
    {
      v24 = *v24;
    }

    sub_14BAE64(v24);
    v19 = v25;
    *(v18 + 24) = v25;
    goto LABEL_27;
  }

LABEL_49:
  v46 = *(a1 + 552);
  v47 = *(a1 + 560);
  while (v46 != v47)
  {
    v52 = *(a2 + 40);
    if (v52 && (v53 = *(a2 + 32), v53 < *v52))
    {
      *(a2 + 32) = v53 + 1;
      v49 = *&v52[2 * v53 + 2];
    }

    else
    {
      v48 = sub_14BA4E4(*(a2 + 24));
      v49 = sub_19593CC(a2 + 24, v48);
    }

    v50 = v49[2].i32[0];
    result = vmovn_s64(*v46);
    v49[3] = result;
    v51 = v46[1].i64[0];
    v49[2].i32[0] = v50 | 7;
    v49[4].i32[0] = v51;
    v46 = (v46 + 24);
  }

  return result;
}

__int16 **sub_ECB694(__int16 **result, uint64_t a2)
{
  v3 = result;
  v4 = *result;
  v5 = result[1];
  if (*result != v5)
  {
    do
    {
      v6 = *(a2 + 40);
      if (v6 && (v7 = *(a2 + 32), v7 < *v6))
      {
        *(a2 + 32) = v7 + 1;
        result = *&v6[2 * v7 + 2];
      }

      else
      {
        v8 = sub_14BA608(*(a2 + 24));
        result = sub_19593CC(a2 + 24, v8);
      }

      v9 = *v4;
      v10 = *(result + 4);
      *(result + 4) = v10 | 1;
      *(result + 6) = v9;
      if (*(v4 + 2) == 1)
      {
        *(result + 4) = v10 | 5;
        *(result + 8) = 2;
      }

      v4 += 2;
    }

    while (v4 != v5);
  }

  v11 = *(v3 + 24);
  if (v11 < 2)
  {
    *(a2 + 16) |= 1u;
    *(a2 + 48) = v11;
  }

  if (*(v3 + 32) == 1)
  {
    v12 = 0;
  }

  else
  {
    if (*(v3 + 32))
    {
      return result;
    }

    v12 = 1;
  }

  *(a2 + 16) |= 4u;
  *(a2 + 56) = v12;
  return result;
}

uint64_t sub_ECB7A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_588D8(a1);
  *(a2 + 16) |= 1u;
  *(a2 + 24) = v4;
  result = sub_588E0(a1);
  *(a2 + 16) |= 2u;
  *(a2 + 32) = result;
  return result;
}

uint64_t sub_ECB7F4(uint64_t result)
{
  if ((result - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

double sub_ECB804(__int128 *a1, uint64_t a2)
{
  *(a2 + 16) |= 1u;
  v4 = *(a2 + 8);
  v5 = (v4 & 0xFFFFFFFFFFFFFFFCLL);
  if (v4)
  {
    v5 = *v5;
  }

  sub_194EA1C((a2 + 24), a1, v5);
  *(a2 + 16) |= 2u;
  v6 = *(a2 + 8);
  v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
  if (v6)
  {
    v7 = *v7;
    v8 = (a2 + 32);
    v9 = (a1 + 24);
  }

  else
  {
    v8 = (a2 + 32);
    v9 = (a1 + 24);
  }

  sub_194EA1C(v8, v9, v7);
  return result;
}

uint64_t sub_ECB8AC(unsigned int a1)
{
  if (a1 > 0x59)
  {
    return 0;
  }

  else
  {
    return dword_22ADB84[a1];
  }
}

uint64_t sub_ECB8CC(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

void sub_ECB8D8()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_27BD150 = 0u;
  unk_27BD160 = 0u;
  dword_27BD170 = 1065353216;
  sub_3A9A34(&xmmword_27BD150, v0, v0);
  sub_3A9A34(&xmmword_27BD150, v3, v3);
  sub_3A9A34(&xmmword_27BD150, __p, __p);
  sub_3A9A34(&xmmword_27BD150, v9, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      return;
    }

LABEL_9:
    operator delete(v0[0]);
    return;
  }

LABEL_8:
  operator delete(v3[0]);
  if (v1 < 0)
  {
    goto LABEL_9;
  }
}

void sub_ECBAA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  sub_23D9C(&xmmword_27BD150);
  if (a36 < 0)
  {
    operator delete(__p);
    if ((a29 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a22 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a29 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a24);
  if ((a22 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a15 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a17);
  if ((a15 & 0x80000000) == 0)
  {
LABEL_5:
    _Unwind_Resume(a1);
  }

LABEL_9:
  operator delete(a10);
  _Unwind_Resume(a1);
}

void sub_ECBB20(uint64_t *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = sub_3AF6B4(a2);
  v7 = 15;
  strcpy(v6, "ResponseBuilder");
  memset(v5, 0, sizeof(v5));
  v4 = sub_3AEC94(a2, v6, v5);
  sub_41D598(v4, v8);
  sub_ED2100((a1 + 2), v8);
}

void sub_ECBC84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  sub_5C010(&a18);
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_ECBCC0(uint64_t *a1@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  sub_1757EA4(a5, 0, 0);
  v8 = *a2;
  v130 = a2[1];
  v131 = a2;
  if (*a2 == v130)
  {
    if (!sub_7E7E4(1u))
    {
LABEL_155:
      *(a5 + 40) |= 0x400000u;
      *(a5 + 552) = 20;
      return;
    }

    sub_19594F8(__p);
    sub_4A5C(__p, "No routes found", 15);
    if ((v145 & 0x10) != 0)
    {
      v127 = v144;
      if (v144 < v140)
      {
        v144 = v140;
        v127 = v140;
      }

      v128 = v139;
      v76 = v127 - v139;
      if (v127 - v139 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_158;
      }
    }

    else
    {
      if ((v145 & 8) == 0)
      {
        v76 = 0;
        v134 = 0;
LABEL_150:
        *(&__dst + v76) = 0;
        sub_7E854(&__dst, 1u);
        if (v134 < 0)
        {
          operator delete(__dst);
        }

        if (SHIBYTE(v143) < 0)
        {
          operator delete(v141);
        }

        std::locale::~locale(&v136);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_155;
      }

      v128 = locale;
      v76 = v138 - locale;
      if ((v138 - locale) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_158:
        sub_3244();
      }
    }

    if (v76 >= 0x17)
    {
      operator new();
    }

    v134 = v76;
    if (v76)
    {
      memmove(&__dst, v128, v76);
    }

    goto LABEL_150;
  }

  do
  {
    v9 = *(a5 + 64);
    if (v9 && (v10 = *(a5 + 56), v10 < *v9))
    {
      *(a5 + 56) = v10 + 1;
      v11 = *&v9[2 * v10 + 2];
    }

    else
    {
      v12 = sub_14BD738(*(a5 + 48));
      v11 = sub_19593CC(a5 + 48, v12);
    }

    v13 = sub_68DB24(v8);
    *(v11 + 40) |= 4u;
    v14 = *(v11 + 8);
    v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
    if (v14)
    {
      v15 = *v15;
    }

    HIBYTE(v136.__locale_) = 4;
    LODWORD(__p[0]) = v13;
    BYTE4(__p[0]) = 0;
    sub_194EA1C((v11 + 720), __p, v15);
    if (SHIBYTE(v136.__locale_) < 0)
    {
      operator delete(__p[0]);
    }

    v16 = sub_68D7F4(v8);
    v17 = sub_ECA8CC(v16);
    *(v11 + 40) |= 0x1000000u;
    *(v11 + 884) = v17;
    if (sub_68D828(v8, 4))
    {
      v18 = 1;
    }

    else
    {
      v18 = sub_68D828(v8, 9);
    }

    *(v11 + 44) |= 1u;
    *(v11 + 916) = v18 ^ 1;
    v19 = sub_68D828(v8, 5);
    *(v11 + 44) |= 2u;
    *(v11 + 917) = v19 ^ 1;
    sub_ECCB58(a1, v8, v11);
    v20 = sub_68F8AC();
    v21 = sub_EC7E7C(v20);
    *(v11 + 40) |= 0x200000u;
    *(v11 + 872) = v21;
    v22 = sub_68C454(v8, 0);
    v23 = sub_EC7E9C(*(v22 + 1097));
    *(v11 + 40) |= 0x2000000u;
    *(v11 + 888) = v23;
    v24 = sub_68DEC0(v8);
    v25 = *v24;
    v26 = v24[1];
    if (*v24 != v26)
    {
      while (1)
      {
        v46 = *(v11 + 144);
        if (v46 && (v47 = *(v11 + 136), v47 < *v46))
        {
          *(v11 + 136) = v47 + 1;
          v48 = *&v46[2 * v47 + 2];
        }

        else
        {
          v49 = *(v11 + 128);
          if (!v49)
          {
            operator new();
          }

          *v51 = v50;
          v51[1] = sub_195A650;
          *v50 = 0;
          v50[1] = 0;
          v50[2] = 0;
          v48 = sub_19593CC(v11 + 128, v50);
        }

        if (v25 == v48)
        {
          goto LABEL_40;
        }

        v52 = *(v25 + 23);
        if (*(v48 + 23) < 0)
        {
          break;
        }

        if ((*(v25 + 23) & 0x80) != 0)
        {
          sub_13A68(v48, *v25, *(v25 + 1));
LABEL_40:
          v25 = (v25 + 24);
          if (v25 == v26)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v53 = *v25;
          *(v48 + 16) = *(v25 + 2);
          *v48 = v53;
          v25 = (v25 + 24);
          if (v25 == v26)
          {
            goto LABEL_14;
          }
        }
      }

      if (v52 >= 0)
      {
        v44 = v25;
      }

      else
      {
        v44 = *v25;
      }

      if (v52 >= 0)
      {
        v45 = *(v25 + 23);
      }

      else
      {
        v45 = *(v25 + 1);
      }

      sub_13B38(v48, v44, v45);
      goto LABEL_40;
    }

LABEL_14:
    v27 = sub_68DDC0(v8);
    v28 = *v27;
    v29 = v27[1];
    if (*v27 != v29)
    {
      while (1)
      {
        v56 = *(v11 + 312);
        if (v56 && (v57 = *(v11 + 304), v57 < *v56))
        {
          *(v11 + 304) = v57 + 1;
          v58 = *&v56[2 * v57 + 2];
          v59 = *(v58 + 40);
          if (!v59)
          {
            goto LABEL_68;
          }
        }

        else
        {
          sub_14BAE64(*(v11 + 296));
          v58 = sub_19593CC(v11 + 296, v60);
          v59 = *(v58 + 40);
          if (!v59)
          {
            goto LABEL_68;
          }
        }

        v61 = *(v58 + 32);
        if (v61 >= *v59)
        {
LABEL_68:
          v63 = *(v58 + 24);
          if (!v63)
          {
            operator new();
          }

          *v65 = v64;
          v65[1] = sub_195A650;
          *v64 = 0;
          v64[1] = 0;
          v64[2] = 0;
          v62 = sub_19593CC(v58 + 24, v64);
          goto LABEL_71;
        }

        *(v58 + 32) = v61 + 1;
        v62 = *&v59[2 * v61 + 2];
LABEL_71:
        if (v28 == v62)
        {
LABEL_60:
          v28 += 3;
          if (v28 == v29)
          {
            break;
          }
        }

        else
        {
          v66 = *(v28 + 23);
          if (*(v62 + 23) < 0)
          {
            if (v66 >= 0)
            {
              v54 = v28;
            }

            else
            {
              v54 = *v28;
            }

            if (v66 >= 0)
            {
              v55 = *(v28 + 23);
            }

            else
            {
              v55 = v28[1];
            }

            sub_13B38(v62, v54, v55);
            goto LABEL_60;
          }

          if ((*(v28 + 23) & 0x80) != 0)
          {
            sub_13A68(v62, *v28, v28[1]);
            goto LABEL_60;
          }

          v67 = *v28;
          *(v62 + 16) = v28[2];
          *v62 = v67;
          v28 += 3;
          if (v28 == v29)
          {
            break;
          }
        }
      }
    }

    v30 = sub_68DE5C(v8);
    if (!sub_4D1F6C(v30))
    {
      v31 = sub_68DE5C(v8);
      *(v11 + 40) |= 0x2000u;
      v32 = *(v11 + 808);
      if (!v32)
      {
        v33 = *(v11 + 8);
        v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
        if (v33)
        {
          v34 = *v34;
        }

        sub_14BAE64(v34);
        v32 = v35;
        *(v11 + 808) = v35;
      }

      sub_64D110(v31, v32);
    }

    sub_ECCE4C(a1, v8, a3, v11);
    v36 = sub_68C454(v8, 0);
    v37 = v36;
    if (v36[1503] != v36[1504] && v36[1501] != 0x7FFFFFFFFFFFFFFFLL && v36[1502] != 0x7FFFFFFFFFFFFFFFLL)
    {
      *(v11 + 40) |= 0x4000u;
      v38 = *(v11 + 816);
      if (!v38)
      {
        v39 = *(v11 + 8);
        v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
        if (v39)
        {
          v40 = *v40;
        }

        sub_14BBF6C(v40);
        v38 = v41;
        *(v11 + 816) = v41;
      }

      sub_EC8758(v37 + 1501, v38);
    }

    sub_ECCFB0(a1, v8, v11);
    nullsub_1();
    if (-1189124953 * ((v42[1] - *v42) >> 4))
    {
      v43 = sub_68C454(v8, 0);
      sub_ECE580(a1, v43, 0, a3, v11);
    }

    sub_ECD094(a1, v8, v11);
    v8 += 976;
  }

  while (v8 != v130);
  v68 = sub_3B2A90(*a1);
  v70 = *a2;
  v69 = a2[1];
  if (*a2 == v69)
  {
LABEL_83:
    v75 = 1;
  }

  else
  {
    v71 = v68;
    while (1)
    {
      nullsub_1();
      v74 = *v72;
      v73 = v72[1];
      if (*v72 != v73)
      {
        break;
      }

LABEL_82:
      v70 += 976;
      if (v70 == v69)
      {
        goto LABEL_83;
      }
    }

    while (sub_4B7810(v71, v74, *(a3 + 40)) == 2)
    {
      v74 += 12656;
      if (v74 == v73)
      {
        goto LABEL_82;
      }
    }

    v75 = 0;
  }

  *(a5 + 40) |= 0x4000000u;
  *(a5 + 565) = v75;
  v78 = *v131;
  v77 = v131[1];
  if (*v131 == v77)
  {
LABEL_94:
    v82 = 0;
  }

  else
  {
    while (1)
    {
      nullsub_1();
      v80 = *v79;
      v81 = *(v79 + 8);
      if (*v79 != v81)
      {
        break;
      }

LABEL_93:
      v78 += 976;
      if (v78 == v77)
      {
        goto LABEL_94;
      }
    }

    while (1)
    {
      sub_4D1DDC(v80, __p);
      __dst = a1;
      if (sub_EDE414(__p[0], __p[1], v136.__locale_, locale, &__dst))
      {
        break;
      }

      v80 += 1582;
      if (v80 == v81)
      {
        goto LABEL_93;
      }
    }

    v82 = 1;
  }

  *(a5 + 40) |= 0x10000000u;
  *(a5 + 567) = v82;
  if (*a3 == 1)
  {
    sub_ECD4F0(a1[1], v131, a5);
  }

  v83 = 0x4FBCDA3AC10C9715 * ((v131[1] - *v131) >> 7);
  if (v83 >= 1)
  {
    v84 = 0;
    v85 = v83 & 0x7FFFFFFF;
    do
    {
      v86 = *(*(a5 + 64) + 8 * v84 + 8);
      nullsub_1();
      v89 = *v87;
      v88 = v87[1];
      if (*v87 != v88)
      {
        v90 = (v89 + 7392);
        do
        {
          if (v90[619] == v90[620])
          {
            sub_EC6B44(v90, v86);
          }

          else
          {
            sub_ECA0F4((v89 + 12344), v86);
          }

          v89 += 12656;
          v90 += 1582;
        }

        while (v89 != v88);
      }

      ++v84;
    }

    while (v84 != v85);
  }

  sub_ECD828(a1, v131, a5);
  v93 = *a4;
  v92 = a4[1];
  if (*a4 != v92)
  {
    do
    {
      v94 = *(a5 + 136);
      if (v94 && (v95 = *(a5 + 128), v95 < *v94))
      {
        *(a5 + 128) = v95 + 1;
        v96 = *&v94[2 * v95 + 2];
      }

      else
      {
        v97 = sub_14BDE5C(*(a5 + 120));
        v96 = sub_19593CC(a5 + 120, v97);
      }

      sub_EC6F6C(v93, v96, 0, v91);
      v93 += 1120;
    }

    while (v93 != v92);
  }

  sub_ECDC24(a1, v131, a5);
  v98 = sub_1950D4C((a5 + 16), dword_278CFF0, 11, &off_2769490, 0);
  v99 = sub_68C454(*v131, 0);
  *(v98 + 4) |= 1u;
  v100 = v98[1];
  v101 = (v100 & 0xFFFFFFFFFFFFFFFCLL);
  if (v100)
  {
    v101 = *v101;
  }

  sub_194EA1C(v98 + 6, (v99 + 7464), v101);
  sub_3AF114();
  v103 = sub_2D5630(*v102);
  v104 = *(a5 + 40);
  *(a5 + 566) = v103;
  *(a5 + 40) = v104 | 0x8400000;
  *(a5 + 552) = 0;
  if (*(a3 + 32) == 1)
  {
    sub_EE8048(__p, a3);
    v105 = -1056139499 * ((v131[1] - *v131) >> 7);
    if (v105 >= 1)
    {
      sub_EE807C(__p, *v131, *(*(a5 + 64) + 8));
      v106 = sub_1950D4C((a5 + 16), dword_278CFF0, 11, &off_2769490, 0);
      v107 = sub_68E91C(*v131);
      *(v106 + 4) |= 2u;
      v108 = v106[1];
      v109 = (v108 & 0xFFFFFFFFFFFFFFFCLL);
      if (v108)
      {
        v109 = *v109;
      }

      sub_194EA1C(v106 + 7, v107, v109);
      v110 = (v105 & 0x7FFFFFFF) - 1;
      if ((v105 & 0x7FFFFFFF) != 1)
      {
        v111 = 16;
        v112 = 976;
        do
        {
          sub_EE807C(__p, &(*v131)[v112], *(*(a5 + 64) + v111));
          v112 += 976;
          v111 += 8;
          --v110;
        }

        while (v110);
      }

      v113 = 0x4FBCDA3AC10C9715 * ((v131[1] - *v131) >> 7);
      if (v113 >= 1)
      {
        v114 = 0;
        v115 = v113 & 0x7FFFFFFF;
        do
        {
          v116 = *(*(a5 + 64) + 8 * v114 + 8);
          v117 = &(*v131)[976 * v114];
          nullsub_1();
          v119 = v118[1] - *v118;
          if (v119)
          {
            v120 = 0;
            v121 = 0x5DDB1ADCB91F64A7 * (v119 >> 4);
            do
            {
              v122 = sub_68C454(v117, v120);
              sub_ED0B64(a1, v122, v114, v120++, v116, a5);
            }

            while (v121 != v120);
          }

          ++v114;
        }

        while (v114 != v115);
      }
    }
  }

  else
  {
    sub_EA7200(__p, a3);
    v123 = 0x4FBCDA3AC10C9715 * ((v131[1] - *v131) >> 7);
    if (v123 >= 1)
    {
      v124 = 0;
      v125 = v123 & 0x7FFFFFFF;
      v126 = 8;
      do
      {
        sub_EA7244(__p, &(*v131)[v124], *(*(a5 + 64) + v126));
        v124 += 976;
        v126 += 8;
        --v125;
      }

      while (v125);
    }
  }

  __p[0] = &off_2674490;
  if (v150)
  {
    v151 = v150;
    operator delete(v150);
  }

  if (v149 < 0)
  {
    operator delete(v148);
  }

  if (v146)
  {
    v147 = v146;
    operator delete(v146);
  }

  if (v142)
  {
    v143 = v142;
    operator delete(v142);
  }

  if (v136.__locale_)
  {
    locale = v136.__locale_;
    operator delete(v136.__locale_);
  }
}