void sub_ECCA48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a18 < 0)
  {
    operator delete(__p);
    sub_1959728(&a19);
    sub_1758FB8(a12);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a19);
  sub_1758FB8(a12);
  _Unwind_Resume(a1);
}

void sub_ECCABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_EDE138(va);
  sub_1758FB8(a12);
  _Unwind_Resume(a1);
}

void sub_ECCAE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    sub_1758FB8(a12);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0xECCB48);
}

void sub_ECCB18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_EDE138(va);
  sub_1758FB8(a12);
  _Unwind_Resume(a1);
}

uint64_t sub_ECCB58(uint64_t a1, uint64_t *a2, _DWORD *a3)
{
  v5 = sub_68C7DC(a2);
  if (v5 < 0)
  {
    v6 = -50;
  }

  else
  {
    v6 = 50;
  }

  a3[10] |= 0x400000u;
  a3[219] = v5 / 100 + ((5243 * (v6 + v5 % 100)) >> 19) + ((5243 * (v6 + v5 % 100)) >> 31);
  v7 = sub_68C850(a2);
  if (v7 < 0)
  {
    v8 = -5;
  }

  else
  {
    v8 = 5;
  }

  a3[10] |= 0x800000u;
  a3[220] = v7 / 10 + (((103 * (v8 + v7 % 10)) >> 15) & 1) + ((103 * (v8 + v7 % 10)) >> 10);
  if (sub_68C900(a2))
  {
    v10 = sub_68C8EC(a2);
    if (v10 < 0)
    {
      v11 = -5;
    }

    else
    {
      v11 = 5;
    }

    a3[10] |= 0x80000000;
    a3[228] = v10 / 10 + (((103 * (v11 + v10 % 10)) >> 15) & 1) + ((103 * (v11 + v10 % 10)) >> 10);
    if (!sub_68C99C(a2))
    {
LABEL_9:
      if (!sub_68CAD4(a2))
      {
        goto LABEL_10;
      }

      goto LABEL_20;
    }
  }

  else if (!sub_68C99C(a2))
  {
    goto LABEL_9;
  }

  v12 = sub_68C988(a2);
  if (v12 < 0)
  {
    v13 = -5;
  }

  else
  {
    v13 = 5;
  }

  a3[10] |= 0x10000000u;
  a3[225] = v12 / 10 + (((103 * (v13 + v12 % 10)) >> 15) & 1) + ((103 * (v13 + v12 % 10)) >> 10);
  if (!sub_68CAD4(a2))
  {
LABEL_10:
    result = sub_68CA38(a2);
    if (!result)
    {
      return result;
    }

    goto LABEL_24;
  }

LABEL_20:
  v14 = sub_68CAC0(a2);
  if (v14 < 0)
  {
    v15 = -5;
  }

  else
  {
    v15 = 5;
  }

  a3[10] |= 0x40000000u;
  a3[227] = v14 / 10 + (((103 * (v15 + v14 % 10)) >> 15) & 1) + ((103 * (v15 + v14 % 10)) >> 10);
  result = sub_68CA38(a2);
  if (result)
  {
LABEL_24:
    result = sub_68CA24(a2);
    if (result < 0)
    {
      v16 = -5;
    }

    else
    {
      v16 = 5;
    }

    a3[10] |= 0x20000000u;
    a3[226] = result / 10 + (((103 * (v16 + result % 10)) >> 15) & 1) + ((103 * (v16 + result % 10)) >> 10);
  }

  return result;
}

double sub_ECCE4C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (!sub_68EC38(a2, *(a3 + 39)))
  {
    return result;
  }

  v8 = sub_58BBC(a2);
  v9 = *v8;
  v10 = *(v8 + 8);
  while (v9 != v10)
  {
    v12 = *(a4 + 216);
    if (v12 && (v13 = *(a4 + 208), v13 < *v12))
    {
      *(a4 + 208) = v13 + 1;
      v14 = *&v12[2 * v13 + 2];
      *(v14 + 16) |= 1u;
      v11 = *(v14 + 48);
      if (v11)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v15 = sub_14BD508(*(a4 + 200));
      v14 = sub_19593CC(a4 + 200, v15);
      *(v14 + 16) |= 1u;
      v11 = *(v14 + 48);
      if (v11)
      {
        goto LABEL_4;
      }
    }

    v16 = *(v14 + 8);
    v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
    if (v16)
    {
      v17 = *v17;
    }

    v11 = sub_16F5CD4(v17);
    *(v14 + 48) = v11;
LABEL_4:
    sub_ECAE3C(v9, a3, v11);
    v9 += 44;
  }

  v18 = sub_58BBC(a2);
  if (*v18 != v18[1])
  {
    v19 = *sub_58BBC(a2);
    *(a4 + 40) |= 1u;
    v20 = *(a4 + 8);
    v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
    if (v20)
    {
      v21 = *v21;
    }

    sub_194EA1C((a4 + 704), v19, v21);
  }

  return result;
}

void sub_ECCFB0(uint64_t a1, void *a2, uint64_t a3)
{
  nullsub_1();
  v6 = v5[1] - *v5;
  if (v6)
  {
    v7 = 0;
    v8 = 0x5DDB1ADCB91F64A7 * (v6 >> 4);
    do
    {
      v9 = sub_68C454(a2, v7);
      v11 = *(v9 + 12272);
      v12 = *(v9 + 12280);
      while (v11 != v12)
      {
        v15 = *(a3 + 240);
        if (v15 && (v16 = *(a3 + 232), v16 < *v15))
        {
          *(a3 + 232) = v16 + 1;
          v14 = *&v15[2 * v16 + 2];
        }

        else
        {
          sub_14BE174(*(a3 + 224));
          v14 = sub_19593CC(a3 + 224, v13);
        }

        sub_EC8AE4(v11, v14, v10);
        v11 += 616;
      }

      ++v7;
    }

    while (v7 != v8);
  }
}

void sub_ECD094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 32) == 1)
  {
    v4 = sub_3B1D8C(*a1);
    v42 = 0;
    v43 = 0;
    v44 = 0;
    nullsub_1();
    v6 = *v5;
    v7 = v5[1];
    if (*v5 != v7)
    {
      do
      {
        if (!sub_69AE68(v6))
        {
          goto LABEL_4;
        }

        v8 = sub_73F54(v6);
        sub_2AD1B4(v4, *(v8 + 104), *(v8 + 112), &v30);
        v9 = v43;
        if (v43 >= v44)
        {
          v12 = v42;
          v13 = 0xAAAAAAAAAAAAAAABLL * ((v43 - v42) >> 2);
          v14 = v13 + 1;
          if (v13 + 1 > 0x1555555555555555)
          {
            sub_1794();
          }

          if (0x5555555555555556 * ((v44 - v42) >> 2) > v14)
          {
            v14 = 0x5555555555555556 * ((v44 - v42) >> 2);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v44 - v42) >> 2) >= 0xAAAAAAAAAAAAAAALL)
          {
            v15 = 0x1555555555555555;
          }

          else
          {
            v15 = v14;
          }

          if (v15)
          {
            if (v15 <= 0x1555555555555555)
            {
              operator new();
            }

            sub_1808();
          }

          v16 = 4 * ((v43 - v42) >> 2);
          *v16 = v37;
          *(v16 + 8) = v38;
          v17 = 12 * v13 + 12;
          v18 = (12 * v13 - (v9 - v12));
          memcpy((v16 - (v9 - v12)), v12, v9 - v12);
          v42 = v18;
          v43 = v17;
          v44 = 0;
          if (v12)
          {
            operator delete(v12);
          }

          v43 = v17;
          sub_99F0C(v41);
          v11 = __p;
          if (!__p)
          {
LABEL_8:
            if ((v36 & 0x80000000) == 0)
            {
              goto LABEL_9;
            }

            goto LABEL_31;
          }
        }

        else
        {
          v10 = v37;
          *(v43 + 2) = v38;
          *v9 = v10;
          v43 = v9 + 12;
          sub_99F0C(v41);
          v11 = __p;
          if (!__p)
          {
            goto LABEL_8;
          }
        }

        v19 = v40;
        if (v40 == v11)
        {
          v40 = v11;
          operator delete(v11);
          if ((v36 & 0x80000000) == 0)
          {
            goto LABEL_9;
          }
        }

        else
        {
          do
          {
            v20 = *(v19 - 1);
            v19 -= 3;
            if (v20 < 0)
            {
              operator delete(*v19);
            }
          }

          while (v19 != v11);
          v40 = v11;
          operator delete(__p);
          if ((v36 & 0x80000000) == 0)
          {
LABEL_9:
            if ((v34 & 0x80000000) == 0)
            {
              goto LABEL_10;
            }

            goto LABEL_32;
          }
        }

LABEL_31:
        operator delete(v35);
        if ((v34 & 0x80000000) == 0)
        {
LABEL_10:
          if (SHIBYTE(v32) < 0)
          {
            goto LABEL_33;
          }

          goto LABEL_4;
        }

LABEL_32:
        operator delete(v33);
        if (SHIBYTE(v32) < 0)
        {
LABEL_33:
          operator delete(v30);
        }

LABEL_4:
        v6 += 12656;
      }

      while (v6 != v7);
    }

    v30 = 0;
    v31 = 0;
    v32 = 0;
    BYTE7(v29[1]) = 17;
    strcpy(v29, "Charging Stations");
    sub_EAC188(&v30, &v42, v29, 0xFFFFFFFF, 0, 0, 0.0);
    if (SBYTE7(v29[1]) < 0)
    {
      operator delete(*&v29[0]);
    }

    sub_EAC680(&v30, v29);
    v22 = *(&v29[0] + 1);
    v21 = *&v29[0];
    if (*&v29[0] != *(&v29[0] + 1))
    {
      do
      {
        v23 = sub_1950FFC((a3 + 16), dword_278D070, 11, &off_2769C00, 0);
        sub_12CC584(v23, v21);
        v21 += 48;
      }

      while (v21 != v22);
      v21 = *&v29[0];
    }

    if (v21)
    {
      v24 = *(&v29[0] + 1);
      v25 = v21;
      if (*(&v29[0] + 1) != v21)
      {
        do
        {
          v24 = sub_12CBDFC(v24 - 48);
        }

        while (v24 != v21);
        v25 = *&v29[0];
      }

      *(&v29[0] + 1) = v21;
      operator delete(v25);
    }

    v26 = v30;
    if (!v30)
    {
      goto LABEL_55;
    }

    v27 = v31;
    v28 = v30;
    if (v31 == v30)
    {
LABEL_54:
      v31 = v26;
      operator delete(v28);
LABEL_55:
      if (v42)
      {
        v43 = v42;
        operator delete(v42);
      }

      return;
    }

    while (1)
    {
      if (*(v27 - 25) < 0)
      {
        operator delete(*(v27 - 6));
        if (*(v27 - 49) < 0)
        {
LABEL_52:
          operator delete(*(v27 - 9));
        }
      }

      else if (*(v27 - 49) < 0)
      {
        goto LABEL_52;
      }

      v27 -= 10;
      if (v27 == v26)
      {
        v28 = v30;
        goto LABEL_54;
      }
    }
  }
}

void sub_ECD478(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16)
{
  sub_D37F50(&a16);
  v18 = *(v16 - 112);
  if (v18)
  {
    *(v16 - 104) = v18;
    operator delete(v18);
  }

  _Unwind_Resume(a1);
}

void sub_ECD4F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1950D4C((a3 + 16), dword_278D178, 11, &off_2769460, 0);
  v6 = *a2;
  v35 = *(a2 + 8);
  if (*a2 != v35)
  {
    v7 = v5;
    v34 = v5;
    while (1)
    {
      v8 = v7[4];
      if (v8 && (v9 = *(v7 + 6), v9 < *v8))
      {
        *(v7 + 6) = v9 + 1;
        v10 = *&v8[2 * v9 + 2];
      }

      else
      {
        v11 = sub_12CFE5C(v7[2]);
        v10 = sub_19593CC((v7 + 2), v11);
      }

      v36 = v6;
      v12 = sub_68C454(v6, 0);
      v13 = *(v12 + 1104);
      v14 = *(v12 + 1112);
      if (v13 != v14)
      {
        break;
      }

LABEL_3:
      v6 = v36 + 976;
      v7 = v34;
      if (v36 + 976 == v35)
      {
        return;
      }
    }

    v15 = v12;
    v16 = 0;
    while (1)
    {
      v18 = v16;
      if (*(v13 + 24) <= v16)
      {
        v20 = *(v10 + 16);
        v19 = v16;
      }

      else
      {
        v19 = v16;
        do
        {
          v21 = sub_4D1F50(v15, v19);
          v22 = sub_2B51D8(a1, *(v21 + 32) | (*(v21 + 36) << 32));
          v23 = (v22 - *v22);
          if (*v23 >= 0x1Du && (v24 = v23[14]) != 0)
          {
            v25 = *(v22 + v24);
          }

          else
          {
            v25 = 0;
          }

          if (*(sub_4D1F50(v15, v19) + 38))
          {
            v26 = -v25;
          }

          else
          {
            v26 = v25;
          }

          v27 = *(v10 + 16);
          if (v27 == *(v10 + 20))
          {
            v20 = v27 + 1;
            sub_1959094((v10 + 16), v27 + 1);
            *(*(v10 + 24) + 8 * v27) = v26;
          }

          else
          {
            *(*(v10 + 24) + 8 * v27) = v26;
            v20 = v27 + 1;
          }

          *(v10 + 16) = v20;
          LODWORD(v16) = v16 + 1;
          v19 = v16;
          v18 = v16;
        }

        while (*(v13 + 24) > v16);
      }

      v16 = v19;
      if (v20)
      {
        v28 = v20 - 1;
      }

      else
      {
        v28 = 0;
      }

      v29 = *(v10 + 32);
      if (v29 == *(v10 + 36))
      {
        sub_1958E5C((v10 + 32), v29 + 1);
        *(*(v10 + 40) + 4 * v29) = v28;
        *(v10 + 32) = v29 + 1;
        if (v19)
        {
          goto LABEL_33;
        }
      }

      else
      {
        *(*(v10 + 40) + 4 * v29) = v28;
        *(v10 + 32) = v29 + 1;
        if (v19)
        {
          goto LABEL_33;
        }
      }

      v31 = *(v13 + 160);
      if ((v31 - 25) <= 0x3F && ((1 << (v31 - 25)) & 0x9000000000000001) != 0 || v31 == 17)
      {
        v30 = (1000000000 - sub_4D2138(v15));
        goto LABEL_39;
      }

LABEL_33:
      if (sub_4D1DC0(v15) == v18)
      {
        v30 = sub_4D2140(v15);
LABEL_39:
        v32 = v30 / 1000000000.0;
        v33 = *(v10 + 48);
        if (v33 != *(v10 + 52))
        {
          *(*(v10 + 56) + 4 * v33) = v32;
LABEL_44:
          v17 = v33 + 1;
          goto LABEL_11;
        }

        v17 = v33 + 1;
        sub_1958E5C((v10 + 48), v33 + 1);
        *(*(v10 + 56) + 4 * v33) = v32;
        goto LABEL_11;
      }

      v33 = *(v10 + 48);
      if (v33 != *(v10 + 52))
      {
        *(*(v10 + 56) + 4 * v33) = 1065353216;
        goto LABEL_44;
      }

      v17 = v33 + 1;
      sub_1958E5C((v10 + 48), v33 + 1);
      *(*(v10 + 56) + 4 * v33) = 1065353216;
LABEL_11:
      *(v10 + 48) = v17;
      v13 += 2616;
      if (v13 == v14)
      {
        goto LABEL_3;
      }
    }
  }
}

void sub_ECD828(uint64_t a1, void *a2, uint64_t a3)
{
  *__p = 0u;
  *v53 = 0u;
  v54 = 1065353216;
  v3 = 0x4FBCDA3AC10C9715 * ((a2[1] - *a2) >> 7);
  if (v3 >= 1)
  {
    v5 = 0;
    v47 = v3 & 0x7FFFFFFF;
    do
    {
      v51 = *(*(a3 + 64) + 8 * v5 + 8);
      v48 = v5;
      nullsub_1();
      v8 = *v6;
      v7 = v6[1];
      v49 = v7;
      while (v8 != v7)
      {
        v9 = *(v8 + 7416);
        v50 = v8;
        for (i = *(v8 + 7424); v9 != i; v9 += 1120)
        {
          v11 = *(v9 + 71);
          if (v11 >= 0)
          {
            v12 = (v9 + 48);
          }

          else
          {
            v12 = *(v9 + 48);
          }

          if (v11 >= 0)
          {
            v13 = *(v9 + 71);
          }

          else
          {
            v13 = *(v9 + 56);
          }

          v14 = sub_AAD8(&v55, v12, v13);
          v15 = __p[1];
          if (__p[1])
          {
            v16 = v14;
            v17 = vcnt_s8(__p[1]);
            v17.i16[0] = vaddlv_u8(v17);
            if (v17.u32[0] > 1uLL)
            {
              v18 = v14;
              if (v14 >= __p[1])
              {
                v18 = v14 % __p[1];
              }
            }

            else
            {
              v18 = (__p[1] - 1) & v14;
            }

            v19 = *(__p[0] + v18);
            if (v19)
            {
              v20 = *v19;
              if (*v19)
              {
                v21 = *(v9 + 71);
                if (v21 >= 0)
                {
                  v22 = *(v9 + 71);
                }

                else
                {
                  v22 = *(v9 + 56);
                }

                if (v21 >= 0)
                {
                  v23 = (v9 + 48);
                }

                else
                {
                  v23 = *(v9 + 48);
                }

                if (v17.u32[0] < 2uLL)
                {
                  v24 = __p[1] - 1;
                  while (1)
                  {
                    v29 = v20[1];
                    if (v16 == v29)
                    {
                      v30 = *(v20 + 39);
                      v31 = v30;
                      if (v30 < 0)
                      {
                        v30 = v20[3];
                      }

                      if (v30 == v22)
                      {
                        v32 = v31 >= 0 ? (v20 + 2) : v20[2];
                        if (!memcmp(v32, v23, v22))
                        {
                          goto LABEL_58;
                        }
                      }
                    }

                    else if ((v29 & v24) != v18)
                    {
                      goto LABEL_53;
                    }

                    v20 = *v20;
                    if (!v20)
                    {
                      goto LABEL_53;
                    }
                  }
                }

                do
                {
                  v25 = v20[1];
                  if (v16 == v25)
                  {
                    v26 = *(v20 + 39);
                    v27 = v26;
                    if (v26 < 0)
                    {
                      v26 = v20[3];
                    }

                    if (v26 == v22)
                    {
                      v28 = v27 >= 0 ? (v20 + 2) : v20[2];
                      if (!memcmp(v28, v23, v22))
                      {
                        goto LABEL_58;
                      }
                    }
                  }

                  else
                  {
                    if (v25 >= v15)
                    {
                      v25 %= v15;
                    }

                    if (v25 != v18)
                    {
                      break;
                    }
                  }

                  v20 = *v20;
                }

                while (v20);
              }
            }
          }

LABEL_53:
          v33 = *(a3 + 104);
          v55 = (v9 + 48);
          sub_EDE7E0(__p, (v9 + 48), &unk_229EB70, &v55)[5] = v33;
          v35 = *(a3 + 112);
          if (v35 && (v36 = *(a3 + 104), v36 < *v35))
          {
            *(a3 + 104) = v36 + 1;
            v37 = *&v35[2 * v36 + 2];
          }

          else
          {
            v38 = sub_14BDE5C(*(a3 + 96));
            v37 = sub_19593CC(a3 + 96, v38);
          }

          sub_EC6F6C(v9, v37, 0, v34);
LABEL_58:
          v55 = (v9 + 48);
          v39 = *(sub_EDE7E0(__p, (v9 + 48), &unk_229EB70, &v55) + 10);
          v40 = *(v9 + 464);
          v41 = v40 / 100;
          v42 = v40 % 100;
          if (v40 < 0)
          {
            v43 = -50;
          }

          else
          {
            v43 = 50;
          }

          sub_ECA76C(v39, v41 + ((5243 * (v43 + v42)) >> 19) + ((5243 * (v43 + v42)) >> 31), v51);
        }

        v8 = v50 + 12656;
        v7 = v49;
      }

      v5 = v48 + 1;
    }

    while (v48 + 1 != v47);
    v44 = v53[0];
    if (v53[0])
    {
      do
      {
        v46 = *v44;
        if (*(v44 + 39) < 0)
        {
          operator delete(v44[2]);
        }

        operator delete(v44);
        v44 = v46;
      }

      while (v46);
    }
  }

  v45 = __p[0];
  __p[0] = 0;
  if (v45)
  {
    operator delete(v45);
  }
}

void sub_ECDBF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_23D9C(va);
  _Unwind_Resume(a1);
}

void sub_ECDC10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_23D9C(va);
  _Unwind_Resume(a1);
}

void sub_ECDC24(uint64_t a1, void *a2, uint64_t a3)
{
  __p = 0;
  v92 = 0;
  v93 = 0;
  v3 = 0x4FBCDA3AC10C9715 * ((a2[1] - *a2) >> 7);
  if (v3 < 1)
  {
    return;
  }

  v4 = a3;
  v5 = 0;
  v83 = v3 & 0x7FFFFFFF;
  do
  {
    v6 = *(*(v4 + 64) + 8 * v5 + 8);
    v89 = (*a2 + 7808 * v5);
    nullsub_1();
    v8 = v7[1] - *v7;
    if (v8)
    {
      v9 = 0;
      v88 = 0x5DDB1ADCB91F64A7 * (v8 >> 4);
      v90 = v5;
      while (1)
      {
        v10 = sub_68C454(v89, v9);
        v11 = v10;
        v12 = v10[1281];
        v13 = v10[1282];
        if (v12 != 0x7FFFFFFFFFFFFFFFLL && v13 != 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

LABEL_6:
        if (++v9 == v88)
        {
          goto LABEL_3;
        }
      }

      v15 = __p;
      v16 = v92;
      if (__p == v92)
      {
        v21 = __p;
LABEL_45:
        if (v21 != v92)
        {
          v32 = 954437177 * ((v21 - __p) >> 3);
          *(v6 + 44) |= 8u;
          *(v6 + 920) = v32;
          v5 = v90;
          goto LABEL_93;
        }
      }

      else
      {
        v17 = v10[1284];
        v18 = v10[1283];
        v19 = v10[1287];
        v20 = v10[1286];
        v21 = __p;
        do
        {
          if (v12 == *v21)
          {
            v22 = *(v21 + 2);
            if (v17 - v18 == *(v21 + 3) - v22)
            {
              if (v18 == v17)
              {
LABEL_24:
                v24 = *(v21 + 5);
                if (v19 - v20 == *(v21 + 6) - v24)
                {
                  if (v20 == v19)
                  {
LABEL_13:
                    if (v13 == *(v21 + 1))
                    {
                      goto LABEL_45;
                    }
                  }

                  else
                  {
                    v25 = v11[1286];
                    while (*v25 == *v24)
                    {
                      if (*(v25 + 4) != *(v24 + 4))
                      {
                        break;
                      }

                      if (*(v25 + 8) != *(v24 + 8))
                      {
                        break;
                      }

                      if (*(v25 + 12) != *(v24 + 12))
                      {
                        break;
                      }

                      v27 = *(v25 + 16);
                      v26 = *(v25 + 24);
                      v28 = *(v24 + 16);
                      if (v26 - v27 != *(v24 + 24) - v28)
                      {
                        break;
                      }

                      for (; v27 != v26; v28 += 24)
                      {
                        v30 = *v27;
                        v29 = *(v27 + 8);
                        v31 = *v28;
                        if ((v29 - *v27) != (*(v28 + 8) - *v28))
                        {
                          goto LABEL_14;
                        }

                        if (v30 != v29)
                        {
                          while (*v30 == *v31 && v30[1] == v31[1] && v30[2] == v31[2])
                          {
                            v30 += 3;
                            v31 += 3;
                            if (v30 == v29)
                            {
                              goto LABEL_39;
                            }
                          }

                          goto LABEL_14;
                        }

LABEL_39:
                        v27 += 24;
                      }

                      if (*(v25 + 40) != *(v24 + 40) || *(v25 + 48) != *(v24 + 48))
                      {
                        break;
                      }

                      v25 += 64;
                      v24 += 64;
                      if (v25 == v19)
                      {
                        goto LABEL_13;
                      }
                    }
                  }
                }
              }

              else
              {
                v23 = v11[1283];
                while (*v23 == *v22 && *(v23 + 4) == *(v22 + 4) && *(v23 + 8) == *(v22 + 8) && *(v23 + 16) == *(v22 + 16))
                {
                  v23 += 24;
                  v22 += 24;
                  if (v23 == v17)
                  {
                    goto LABEL_24;
                  }
                }
              }
            }
          }

LABEL_14:
          v21 += 72;
        }

        while (v21 != v92);
      }

      v33 = 0x8E38E38E38E38E39 * ((v92 - __p) >> 3);
      *(v6 + 44) |= 8u;
      *(v6 + 920) = v33;
      if (v16 >= v93)
      {
        if (v33 + 1 > 0x38E38E38E38E38ELL)
        {
          sub_1794();
        }

        v39 = 0x8E38E38E38E38E39 * ((v93 - v15) >> 3);
        v40 = 2 * v39;
        if (2 * v39 <= v33 + 1)
        {
          v40 = v33 + 1;
        }

        if (v39 >= 0x1C71C71C71C71C7)
        {
          v41 = 0x38E38E38E38E38ELL;
        }

        else
        {
          v41 = v40;
        }

        p_p = &__p;
        if (v41)
        {
          if (v41 <= 0x38E38E38E38E38ELL)
          {
            operator new();
          }

          sub_1808();
        }

        v42 = 72 * v33;
        v94 = 0;
        v95 = 72 * v33;
        v96 = 72 * v33;
        v97 = 0;
        v43 = *(v11 + 1281);
        *&dword_10[18 * v33] = 0;
        *v42 = v43;
        *(v42 + 24) = 0;
        *(v42 + 32) = 0;
        v44 = v11[1283];
        v45 = v11[1284];
        if (v45 != v44)
        {
          if (0xAAAAAAAAAAAAAAABLL * ((v45 - v44) >> 3) <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          sub_1794();
        }

        *&stru_20.segname[72 * v33] = 0;
        *&stru_20.segname[72 * v33 + 8] = 0;
        *&stru_20.segname[72 * v33 + 16] = 0;
        sub_7C0AEC((v42 + 40), v11[1286], v11[1287], (v11[1287] - v11[1286]) >> 6);
        *(&stru_20.vmsize + 18 * v33) = *(v11 + 2578);
        v85 = v96;
        v46 = __p;
        v47 = v92;
        v87 = (v95 + __p - v92);
        v5 = v90;
        if (__p != v92)
        {
          v48 = __p;
          v49 = (v95 + __p - v92);
          do
          {
            *v49 = *v48;
            *(v49 + 3) = 0;
            *(v49 + 4) = 0;
            *(v49 + 2) = 0;
            *(v49 + 1) = v48[1];
            *(v49 + 4) = *(v48 + 4);
            *(v48 + 2) = 0;
            *(v48 + 3) = 0;
            *(v48 + 4) = 0;
            *(v49 + 5) = 0;
            *(v49 + 6) = 0;
            *(v49 + 7) = 0;
            v37 = *(v48 + 40);
            *(v49 + 40) = v37;
            *(v49 + 7) = *(v48 + 7);
            *(v48 + 5) = 0;
            *(v48 + 6) = 0;
            *(v48 + 7) = 0;
            *(v49 + 16) = *(v48 + 16);
            v48 = (v48 + 72);
            v49 += 72;
          }

          while (v48 != v47);
          do
          {
            v50 = v46[5];
            if (v50)
            {
              v51 = v46[6];
              v52 = v46[5];
              if (v51 != v50)
              {
                do
                {
                  v54 = *(v51 - 48);
                  if (v54)
                  {
                    v55 = *(v51 - 40);
                    v53 = *(v51 - 48);
                    if (v55 != v54)
                    {
                      v56 = *(v51 - 40);
                      do
                      {
                        v58 = *(v56 - 24);
                        v56 -= 24;
                        v57 = v58;
                        if (v58)
                        {
                          *(v55 - 16) = v57;
                          operator delete(v57);
                        }

                        v55 = v56;
                      }

                      while (v56 != v54);
                      v53 = *(v51 - 48);
                    }

                    *(v51 - 40) = v54;
                    operator delete(v53);
                  }

                  v51 -= 64;
                }

                while (v51 != v50);
                v52 = v46[5];
              }

              v46[6] = v50;
              operator delete(v52);
              v5 = v90;
            }

            v59 = v46[2];
            if (v59)
            {
              v46[3] = v59;
              operator delete(v59);
            }

            v46 += 9;
          }

          while (v46 != v47);
        }

        v60 = __p;
        __p = v87;
        v92 = (v85 + 72);
        v95 = v60;
        v96 = v60;
        v93 = v97;
        if (v60)
        {
          operator delete(v60);
        }

        v4 = a3;
        v92 = (v85 + 72);
        v38 = *(a3 + 248);
        if (!v38)
        {
          goto LABEL_91;
        }
      }

      else
      {
        v34 = *(v11 + 1281);
        *(v16 + 2) = 0;
        *v16 = v34;
        *(v16 + 3) = 0;
        *(v16 + 4) = 0;
        v35 = v11[1283];
        v36 = v11[1284];
        if (v36 != v35)
        {
          if (0xAAAAAAAAAAAAAAABLL * ((v36 - v35) >> 3) <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          sub_1794();
        }

        *(v16 + 5) = 0;
        *(v16 + 6) = 0;
        *(v16 + 7) = 0;
        sub_7C0AEC(v16 + 5, v11[1286], v11[1287], (v11[1287] - v11[1286]) >> 6);
        *(v16 + 16) = *(v11 + 2578);
        v4 = a3;
        v5 = v90;
        v92 = v16 + 72;
        v38 = *(a3 + 248);
        if (!v38)
        {
          goto LABEL_91;
        }
      }

      v61 = *(v4 + 240);
      if (v61 < *v38)
      {
        *(v4 + 240) = v61 + 1;
        v62 = *&v38[2 * v61 + 2];
LABEL_92:
        sub_ECA330(v11 + 1281, v62, *&v37);
LABEL_93:
        v64 = 0x3795876FF3795877 * ((v11[139] - v11[138]) >> 3);
        if (v64 >= 1)
        {
          v65 = 0;
          v66 = v64 & 0x7FFFFFFF;
          do
          {
            v67 = sub_50EA30(v11 + 138, v65);
            v68 = sub_1950D4C((*(*(v6 + 72) + 8 * v65 + 8) + 16), dword_278D0E8, 11, &off_2769CA8, 0);
            v69 = *(v67 + 2417);
            *(v68 + 4) |= 2u;
            *(v68 + 97) = v69;
            ++v65;
          }

          while (v66 != v65);
        }

        goto LABEL_6;
      }

LABEL_91:
      sub_14BE3A4(*(v4 + 232));
      v62 = sub_19593CC(v4 + 232, v63);
      goto LABEL_92;
    }

LABEL_3:
    ++v5;
  }

  while (v5 != v83);
  v70 = __p;
  if (__p)
  {
    v71 = v92;
    v72 = __p;
    if (v92 != __p)
    {
      do
      {
        v73 = *(v71 - 4);
        if (v73)
        {
          v74 = *(v71 - 3);
          v75 = *(v71 - 4);
          if (v74 != v73)
          {
            do
            {
              v77 = *(v74 - 48);
              if (v77)
              {
                v78 = *(v74 - 40);
                v76 = *(v74 - 48);
                if (v78 != v77)
                {
                  v79 = *(v74 - 40);
                  do
                  {
                    v81 = *(v79 - 24);
                    v79 -= 24;
                    v80 = v81;
                    if (v81)
                    {
                      *(v78 - 16) = v80;
                      operator delete(v80);
                    }

                    v78 = v79;
                  }

                  while (v79 != v77);
                  v76 = *(v74 - 48);
                }

                *(v74 - 40) = v77;
                operator delete(v76);
              }

              v74 -= 64;
            }

            while (v74 != v73);
            v75 = *(v71 - 4);
          }

          *(v71 - 3) = v73;
          operator delete(v75);
        }

        v82 = *(v71 - 7);
        if (v82)
        {
          *(v71 - 6) = v82;
          operator delete(v82);
        }

        v71 -= 72;
      }

      while (v71 != v70);
      v72 = __p;
    }

    v92 = v70;
    operator delete(v72);
  }
}

void sub_ECE4F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a17)
  {
    sub_21E5364(&a18, a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_ECF950(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  v29 = *(v27 - 184);
  if (!v29)
  {
    sub_4AE168((v27 - 160));
    _Unwind_Resume(a1);
  }

  *(v27 - 176) = v29;
  operator delete(v29);
  sub_4AE168((v27 - 160));
  _Unwind_Resume(a1);
}

void sub_ECFAB0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2[49];
  v8 = a2[50];
  while (v7 != v8)
  {
    v11 = *(a4 + 72);
    if (v11 && (v12 = *(a4 + 64), v12 < *v11))
    {
      *(a4 + 64) = v12 + 1;
      v13 = *&v11[2 * v12 + 2];
      v14 = *(v13 + 32);
      if (!v14)
      {
        goto LABEL_2;
      }
    }

    else
    {
      v15 = sub_16F5C34(*(a4 + 56));
      v13 = sub_19593CC(a4 + 56, v15);
      v14 = *(v13 + 32);
      if (!v14)
      {
        goto LABEL_2;
      }
    }

    v16 = *(v13 + 24);
    if (v16 >= *v14)
    {
LABEL_2:
      v9 = sub_16F5CD4(*(v13 + 16));
      v10 = sub_19593CC(v13 + 16, v9);
      goto LABEL_3;
    }

    *(v13 + 24) = v16 + 1;
    v10 = *&v14[2 * v16 + 2];
LABEL_3:
    sub_ECAE3C(v7, a3, v10);
    v7 += 38;
  }

  v17 = a2[52];
  v18 = a2[53];
  while (v17 != v18)
  {
    v21 = *(a4 + 120);
    if (v21 && (v22 = *(a4 + 112), v22 < *v21))
    {
      *(a4 + 112) = v22 + 1;
      v20 = *&v21[2 * v22 + 2];
    }

    else
    {
      v19 = sub_16F5CD4(*(a4 + 104));
      v20 = sub_19593CC(a4 + 104, v19);
    }

    sub_ECAE3C(v17, a3, v20);
    v17 += 38;
  }

  v23 = a2[55];
  if (v23 != a2[56])
  {
    *(a4 + 40) |= 4u;
    v24 = *(a4 + 192);
    if (!v24)
    {
      v25 = *(a4 + 8);
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
      if (v25)
      {
        v26 = *v26;
      }

      v24 = sub_16F5CD4(v26);
      *(a4 + 192) = v24;
      v23 = a2[55];
    }

    sub_ECAE3C(v23, a3, v24);
  }
}

void sub_ECFC68(void *a1@<X1>, unsigned int a2@<W2>, unsigned int a3@<W3>, _DWORD *a4@<X4>, unsigned int *a5@<X5>, void *a6@<X8>)
{
  v12 = a3;
  sub_69ADA0(a1);
  __p[1] = 0;
  v36 = 0;
  __p[0] = 0;
  v14 = v13[1];
  if (v14 != *v13)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v14 - *v13) >> 2) < 0x1555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  if (sub_4D1DC0(a1) - 1 == v12)
  {
    v15 = 0.0;
    if (!a3)
    {
      v15 = (1000000000 - sub_4D2138(a1));
    }

    v16 = sub_4D2140(a1);
    sub_2F4C8(__p, 0, a6, v15 / 1000000000.0, v16 / 1000000000.0);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    return;
  }

  if (a3)
  {
    v17 = (a1[138] + 2616 * a2);
    if (v17[10] != v12)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v24 = sub_4D2138(a1);
    sub_2F4C8(__p, 0, &v33, (1000000000 - v24) / 1000000000.0, 1.0);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    *__p = v33;
    v36 = v34;
    v17 = (a1[138] + 2616 * a2);
    if (v17[10] != v12)
    {
LABEL_11:
      if (v17[13] == v12)
      {
        goto LABEL_12;
      }

      goto LABEL_25;
    }
  }

  v25 = v17[11];
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

  *a4 = sub_4DE8CC(__p, (v26 + (((5243 * (v28 + v27)) >> 19) + ((5243 * (v28 + v27)) >> 31))), 0.1);
  if (v17[13] == v12)
  {
LABEL_12:
    v18 = v17[14];
    if (v18 == 0x7FFFFFFFFFFFFFFFLL || ((v19 = v18 / 100, v20 = v18 % 100, v18 < 0) ? (v21 = -50) : (v21 = 50), v22 = v19 + (((5243 * (v21 + v20)) >> 19) + ((5243 * (v21 + v20)) >> 31)), v22 < 1))
    {
      v23 = 0;
      *a5 = 0;
    }

    else
    {
      v23 = sub_4DE8CC(__p, v22, 0.1);
      *a5 = v23;
    }

    goto LABEL_27;
  }

LABEL_25:
  v23 = *a5;
LABEL_27:
  v29 = __p[1];
  v30 = 0xAAAAAAAAAAAAAAABLL * ((__p[1] - __p[0]) >> 2) - 1;
  v31 = v30 > v23 && v30 > *a4;
  v32 = -12;
  if (!v31)
  {
    v32 = 0;
  }

  *a6 = __p[0];
  a6[1] = &v29[v32];
  a6[2] = v36;
}

void sub_ECFFB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_ECFFF4(double a1, uint64_t a2, void *a3, unsigned int a4)
{
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v4 = a3[1] - *a3;
  if (!v4)
  {
    return;
  }

  v7 = 0;
  v8 = 0;
  v27 = a4;
  v28 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 3);
  do
  {
    while ((*(sub_ED0948(a3, v8) + 16) & 1) != 0 || (*(sub_ED0948(a3, v8) + 17) & 1) != 0 || (*(sub_ED0948(a3, v8) + 18) & 1) != 0 || v8 == 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3) - 1)
    {
      v35 = v34;
      v30 = v8 + 1;
      v9 = v8 + 1 - v7;
      if (0xAAAAAAAAAAAAAAABLL * ((v36 - v34) >> 2) < v9)
      {
        if (v9 <= 0x1555555555555555)
        {
          operator new();
        }

        sub_1794();
      }

      v29 = v8;
      if (v7 <= v30)
      {
        v10 = v8 + 1;
      }

      else
      {
        v10 = v7;
      }

      v11 = v7;
      if (v30 > v7)
      {
        do
        {
          while (1)
          {
            v13 = sub_ED0948(a3, v11);
            v14 = v35;
            if (v35 >= v36)
            {
              break;
            }

            v12 = *v13;
            *(v35 + 2) = *(v13 + 8);
            *v14 = v12;
            v35 = v14 + 12;
            if (v10 == ++v11)
            {
              goto LABEL_29;
            }
          }

          v15 = v34;
          v16 = 0xAAAAAAAAAAAAAAABLL * ((v35 - v34) >> 2);
          v17 = v16 + 1;
          if (v16 + 1 > 0x1555555555555555)
          {
            sub_1794();
          }

          if (0x5555555555555556 * ((v36 - v34) >> 2) > v17)
          {
            v17 = 0x5555555555555556 * ((v36 - v34) >> 2);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v36 - v34) >> 2) >= 0xAAAAAAAAAAAAAAALL)
          {
            v18 = 0x1555555555555555;
          }

          else
          {
            v18 = v17;
          }

          if (v18)
          {
            if (v18 <= 0x1555555555555555)
            {
              operator new();
            }

            sub_1808();
          }

          v19 = 4 * ((v35 - v34) >> 2);
          v20 = *v13;
          *(v19 + 8) = *(v13 + 8);
          *v19 = v20;
          v21 = 12 * v16 + 12;
          v22 = (12 * v16 - (v14 - v15));
          memcpy((v19 - (v14 - v15)), v15, v14 - v15);
          v34 = v22;
          v35 = v21;
          v36 = 0;
          if (v15)
          {
            operator delete(v15);
          }

          v35 = v21;
          ++v11;
        }

        while (v10 != v11);
      }

LABEL_29:
      memset(__p, 0, sizeof(__p));
      sub_41DB4(&v34, v27, 0, 1, __p, &v32, a1);
      if (__p[0])
      {
        operator delete(__p[0]);
      }

      v23 = v33;
      if (v33)
      {
        v24 = 0;
        do
        {
          v25 = sub_ED0948(a3, v7);
          v26 = v32;
          *(v25 + 20) = (*(v32 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v24) & 1;
          ++v24;
          ++v7;
        }

        while (v23 != v24);
LABEL_36:
        operator delete(v26);
        goto LABEL_37;
      }

      v26 = v32;
      if (v32)
      {
        goto LABEL_36;
      }

LABEL_37:
      v7 = v29;
      v8 = v30;
      if (v30 == v28)
      {
        goto LABEL_40;
      }
    }

    ++v8;
  }

  while (v8 != v28);
LABEL_40:
  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }
}

void sub_ED0398(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_ED08A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_89FA8(va);
  _Unwind_Resume(a1);
}

void sub_ED08BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_89FA8(va);
  _Unwind_Resume(a1);
}

void sub_ED08D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_89FA8(va);
  _Unwind_Resume(a1);
}

void sub_ED08E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_89FA8(va);
  _Unwind_Resume(a1);
}

void sub_ED08F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_89FA8(va);
  _Unwind_Resume(a1);
}

void sub_ED090C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_89FA8(va);
  _Unwind_Resume(a1);
}

void sub_ED0920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_89FA8(va);
  _Unwind_Resume(a1);
}

void sub_ED0934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_89FA8(va);
  _Unwind_Resume(a1);
}

unint64_t sub_ED0948(void *a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(&v16, ",size=", &v15);
    std::to_string(&v13, 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    v8 = std::string::append(&v16, v6, size);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v18 = v8->__r_.__value_.__r.__words[2];
    v17 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (v18 >= 0)
    {
      v10 = &v17;
    }

    else
    {
      v10 = v17;
    }

    if (v18 >= 0)
    {
      v11 = HIBYTE(v18);
    }

    else
    {
      v11 = *(&v17 + 1);
    }

    v12 = sub_2D390(exception, v10, v11);
  }

  return *a1 + 24 * a2;
}

void sub_ED0A84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 41) < 0)
  {
    operator delete(*(v32 - 64));
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((a32 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((a32 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a27);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_11;
}

void sub_ED0B64(_BYTE *a1, void *a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_4D1DC0(a2);
  v9 = a2[1290];
  v10 = a2[1291];
  if (v9 != v10)
  {
    v11 = v8;
    v12 = v8 - 1;
    do
    {
      v13 = *(v9 + 8);
      if (v13 >= v11 || v13 == v12 && sub_4D2140(a2) < 0x3B9ACA00)
      {
        goto LABEL_3;
      }

      if (sub_683A0C(v9))
      {
        if (a1[16])
        {
          goto LABEL_16;
        }
      }

      else
      {
        if (!sub_445A90(v9))
        {
          if (!sub_683864(v9) && !sub_683854(v9) || a1[18] != 1)
          {
            goto LABEL_3;
          }

LABEL_16:
          std::to_string(&v36, a3);
          v14 = std::string::append(&v36, "_", 1uLL);
          v15 = *&v14->__r_.__value_.__l.__data_;
          v37.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
          *&v37.__r_.__value_.__l.__data_ = v15;
          v14->__r_.__value_.__l.__size_ = 0;
          v14->__r_.__value_.__r.__words[2] = 0;
          v14->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v35, a4);
          if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v16 = &v35;
          }

          else
          {
            v16 = v35.__r_.__value_.__r.__words[0];
          }

          if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v35.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v35.__r_.__value_.__l.__size_;
          }

          v18 = std::string::append(&v37, v16, size);
          v19 = *&v18->__r_.__value_.__l.__data_;
          v38.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
          *&v38.__r_.__value_.__l.__data_ = v19;
          v18->__r_.__value_.__l.__size_ = 0;
          v18->__r_.__value_.__r.__words[2] = 0;
          v18->__r_.__value_.__r.__words[0] = 0;
          v20 = std::string::append(&v38, "_", 1uLL);
          v21 = *&v20->__r_.__value_.__l.__data_;
          v39.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
          *&v39.__r_.__value_.__l.__data_ = v21;
          v20->__r_.__value_.__l.__size_ = 0;
          v20->__r_.__value_.__r.__words[2] = 0;
          v20->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v34, *(v9 + 8));
          if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v22 = &v34;
          }

          else
          {
            v22 = v34.__r_.__value_.__r.__words[0];
          }

          if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v23 = HIBYTE(v34.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v23 = v34.__r_.__value_.__l.__size_;
          }

          v24 = std::string::append(&v39, v22, v23);
          v25 = *&v24->__r_.__value_.__l.__data_;
          v41 = v24->__r_.__value_.__r.__words[2];
          v40 = v25;
          v24->__r_.__value_.__l.__size_ = 0;
          v24->__r_.__value_.__r.__words[2] = 0;
          v24->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v34.__r_.__value_.__l.__data_);
            if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_37;
            }

LABEL_30:
            if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_31;
            }

LABEL_38:
            operator delete(v38.__r_.__value_.__l.__data_);
            if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_39;
            }

LABEL_32:
            if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_33;
            }

LABEL_40:
            operator delete(v37.__r_.__value_.__l.__data_);
            if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_41;
            }

LABEL_34:
            if (*(v9 + 4) == 2)
            {
LABEL_42:
              v26 = SHIBYTE(v41);
              if ((SHIBYTE(v41) & 0x8000000000000000) != 0)
              {
                v26 = *(&v40 + 1);
                if ((v41 & 0x7FFFFFFFFFFFFFFFLL) - 1 - *(&v40 + 1) < 9)
                {
                  if (0x7FFFFFFFFFFFFFF7 - (v41 & 0x7FFFFFFFFFFFFFFFLL) < *(&v40 + 1) + 9 - ((v41 & 0x7FFFFFFFFFFFFFFFLL) - 1))
                  {
                    sub_3244();
                  }

LABEL_47:
                  operator new();
                }

                v27 = v40;
              }

              else
              {
                if ((SHIBYTE(v41) - 14) < 9)
                {
                  goto LABEL_47;
                }

                v27 = &v40;
              }

              v28 = v27 + v26;
              *v28 = 0x74756F5266664F5FLL;
              v28[8] = 101;
              v29 = v26 + 9;
              if (SHIBYTE(v41) < 0)
              {
                *(&v40 + 1) = v26 + 9;
              }

              else
              {
                HIBYTE(v41) = v29 & 0x7F;
              }

              *(v27 + v29) = 0;
            }
          }

          else
          {
            if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_30;
            }

LABEL_37:
            operator delete(v39.__r_.__value_.__l.__data_);
            if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_38;
            }

LABEL_31:
            if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_32;
            }

LABEL_39:
            operator delete(v35.__r_.__value_.__l.__data_);
            if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_40;
            }

LABEL_33:
            if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_34;
            }

LABEL_41:
            operator delete(v36.__r_.__value_.__l.__data_);
            if (*(v9 + 4) == 2)
            {
              goto LABEL_42;
            }
          }

          sub_ED10A0(a1, v9, &v40, a4, a5, a6);
          if (SHIBYTE(v41) < 0)
          {
            operator delete(v40);
          }

          goto LABEL_3;
        }

        if (a1[17])
        {
          goto LABEL_16;
        }
      }

LABEL_3:
      v9 += 104;
    }

    while (v9 != v10);
  }
}

void sub_ED0FA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (*(v46 - 105) < 0)
  {
    operator delete(*(v46 - 128));
  }

  _Unwind_Resume(a1);
}

void sub_ED10A0(uint64_t a1, uint64_t a2, const void **a3, int a4, uint64_t a5, uint64_t a6)
{
  if (sub_6834F4(a2))
  {
    v10 = *(a2 + 32);
    v11 = *(a2 + 40);
    if (v10 != v11)
    {
      v117 = a6;
      v118 = a5;
      v119 = *(a2 + 40);
      do
      {
        if (!sub_683140(v10))
        {
          goto LABEL_6;
        }

        v14 = *(a5 + 240);
        if (v14 && (v15 = *(a5 + 232), v15 < *v14))
        {
          *(a5 + 232) = v15 + 1;
          v16 = *&v14[2 * v15 + 2];
        }

        else
        {
          sub_14BE174(*(a5 + 224));
          v16 = sub_19593CC(a5 + 224, v17);
        }

        v18 = *(a2 + 4) != 0;
        *(v16 + 16) |= 0x20u;
        *(v16 + 76) = v18;
        v19 = sub_683530(a2);
        v20 = *(v16 + 16);
        if (v19)
        {
          *(v16 + 72) = *(a2 + 16);
          *(v16 + 88) = *(v10 + 22);
          v21 = *(v10 + 24);
          v20 |= 0x190u;
          *(v16 + 16) = v20;
          *(v16 + 84) = v21;
        }

        *(v16 + 16) = v20 | 0x40;
        *(v16 + 80) = a4;
        v22 = *(v10 + 16);
        if (v22 <= 2)
        {
          if (v22 == 1)
          {
            *(v16 + 16) = v20 | 0x44;
            *(v16 + 64) = 2;
            if (*(a3 + 23) >= 0)
            {
              v29 = *(a3 + 23);
            }

            else
            {
              v29 = a3[1];
            }

            if (v29 + 13 > 0x7FFFFFFFFFFFFFF7)
            {
              goto LABEL_256;
            }

            if (v29 + 13 >= 0x17)
            {
              operator new();
            }

            memset(&__p, 0, sizeof(__p));
            *(&__p.__r_.__value_.__s + 23) = v29 + 13;
            if (v29)
            {
              if (*(a3 + 23) >= 0)
              {
                v40 = a3;
              }

              else
              {
                v40 = *a3;
              }

              memmove(&__p, v40, v29);
            }

            strcpy(&__p + v29, "_TrafficLight");
            *(v16 + 16) |= 1u;
            v41 = *(v16 + 8);
            v42 = (v41 & 0xFFFFFFFFFFFFFFFCLL);
            if (v41)
            {
              v42 = *v42;
            }

            sub_194EA30((v16 + 48), &__p, v42);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
              v43 = *(a6 + 272);
              if (!v43)
              {
                goto LABEL_170;
              }
            }

            else
            {
              v43 = *(a6 + 272);
              if (!v43)
              {
LABEL_170:
                v77 = sub_14BE0EC(*(a6 + 256));
                v76 = sub_19593CC(a6 + 256, v77);
                goto LABEL_171;
              }
            }

            v75 = *(a6 + 264);
            if (v75 >= *v43)
            {
              goto LABEL_170;
            }

            *(a6 + 264) = v75 + 1;
            v76 = *&v43[2 * v75 + 2];
LABEL_171:
            if (*(a3 + 23) >= 0)
            {
              v78 = *(a3 + 23);
            }

            else
            {
              v78 = a3[1];
            }

            if (v78 + 13 > 0x7FFFFFFFFFFFFFF7)
            {
              goto LABEL_256;
            }

            if (v78 + 13 >= 0x17)
            {
              operator new();
            }

            memset(&__p, 0, sizeof(__p));
            *(&__p.__r_.__value_.__s + 23) = v78 + 13;
            v11 = v119;
            if (v78)
            {
              if (*(a3 + 23) >= 0)
              {
                v79 = a3;
              }

              else
              {
                v79 = *a3;
              }

              memmove(&__p, v79, v78);
            }

            a6 = v117;
            strcpy(&__p + v78, "_TrafficLight");
            *(v76 + 16) |= 1u;
            v80 = *(v76 + 8);
            v81 = (v80 & 0xFFFFFFFFFFFFFFFCLL);
            if (v80)
            {
              v81 = *v81;
            }

            sub_194EA30((v76 + 24), &__p, v81);
            a5 = v118;
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
              *(v76 + 16) |= 2u;
              v83 = *(v76 + 32);
              if (!v83)
              {
                goto LABEL_246;
              }
            }

            else
            {
              *(v76 + 16) |= 2u;
              v83 = *(v76 + 32);
              if (!v83)
              {
LABEL_246:
                v113 = *(v76 + 8);
                v114 = (v113 & 0xFFFFFFFFFFFFFFFCLL);
                if (v113)
                {
                  v114 = *v114;
                }

                v83 = sub_16F5828(v114);
                *(v76 + 32) = v83;
              }
            }

            sub_EC6D34((a2 + 20), v83, v82);
            *(v76 + 16) |= 4u;
            *(v76 + 40) = 1;
            goto LABEL_6;
          }

          if (v22 == 2)
          {
            *(v16 + 16) = v20 | 0x44;
            *(v16 + 64) = 2;
            if (*(a3 + 23) >= 0)
            {
              v25 = *(a3 + 23);
            }

            else
            {
              v25 = a3[1];
            }

            if (v25 + 9 > 0x7FFFFFFFFFFFFFF7)
            {
              goto LABEL_256;
            }

            if (v25 + 9 >= 0x17)
            {
              operator new();
            }

            memset(&__p, 0, sizeof(__p));
            *(&__p.__r_.__value_.__s + 23) = v25 + 9;
            if (v25)
            {
              if (*(a3 + 23) >= 0)
              {
                v50 = a3;
              }

              else
              {
                v50 = *a3;
              }

              memmove(&__p, v50, v25);
            }

            strcpy(&__p + v25, "_StopSign");
            *(v16 + 16) |= 1u;
            v51 = *(v16 + 8);
            v52 = (v51 & 0xFFFFFFFFFFFFFFFCLL);
            if (v51)
            {
              v52 = *v52;
            }

            sub_194EA30((v16 + 48), &__p, v52);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
              v53 = *(a6 + 272);
              if (!v53)
              {
                goto LABEL_224;
              }
            }

            else
            {
              v53 = *(a6 + 272);
              if (!v53)
              {
LABEL_224:
                v102 = sub_14BE0EC(*(a6 + 256));
                v101 = sub_19593CC(a6 + 256, v102);
                goto LABEL_225;
              }
            }

            v100 = *(a6 + 264);
            if (v100 >= *v53)
            {
              goto LABEL_224;
            }

            *(a6 + 264) = v100 + 1;
            v101 = *&v53[2 * v100 + 2];
LABEL_225:
            if (*(a3 + 23) >= 0)
            {
              v103 = *(a3 + 23);
            }

            else
            {
              v103 = a3[1];
            }

            if (v103 + 9 > 0x7FFFFFFFFFFFFFF7)
            {
              goto LABEL_256;
            }

            if (v103 + 9 >= 0x17)
            {
              operator new();
            }

            memset(&__p, 0, sizeof(__p));
            *(&__p.__r_.__value_.__s + 23) = v103 + 9;
            v11 = v119;
            if (v103)
            {
              if (*(a3 + 23) >= 0)
              {
                v104 = a3;
              }

              else
              {
                v104 = *a3;
              }

              memmove(&__p, v104, v103);
            }

            a6 = v117;
            strcpy(&__p + v103, "_StopSign");
            *(v101 + 16) |= 1u;
            v105 = *(v101 + 8);
            v106 = (v105 & 0xFFFFFFFFFFFFFFFCLL);
            if (v105)
            {
              v106 = *v106;
            }

            sub_194EA30((v101 + 24), &__p, v106);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
              *(v101 + 16) |= 2u;
              v108 = *(v101 + 32);
              if (!v108)
              {
                goto LABEL_251;
              }
            }

            else
            {
              *(v101 + 16) |= 2u;
              v108 = *(v101 + 32);
              if (!v108)
              {
LABEL_251:
                v115 = *(v101 + 8);
                v116 = (v115 & 0xFFFFFFFFFFFFFFFCLL);
                if (v115)
                {
                  v116 = *v116;
                }

                v108 = sub_16F5828(v116);
                *(v101 + 32) = v108;
              }
            }

            sub_EC6D34((a2 + 20), v108, v107);
            *(v101 + 16) |= 4u;
            *(v101 + 40) = 2;
            goto LABEL_6;
          }

          goto LABEL_6;
        }

        if (v22 != 3)
        {
          if (v22 != 4)
          {
            if (v22 != 5)
            {
              goto LABEL_6;
            }

            *(v16 + 16) = v20 | 0x44;
            *(v16 + 64) = 1;
            if (*(a3 + 23) >= 0)
            {
              v23 = *(a3 + 23);
            }

            else
            {
              v23 = a3[1];
            }

            if (byte_27BD1D7 >= 0)
            {
              v24 = byte_27BD1D7;
            }

            else
            {
              v24 = qword_27BD1C8;
            }

            if (v24 + v23 > 0x7FFFFFFFFFFFFFF7)
            {
              goto LABEL_256;
            }

            if (v24 + v23 > 0x16)
            {
              operator new();
            }

            memset(&__p, 0, sizeof(__p));
            *(&__p.__r_.__value_.__s + 23) = v24 + v23;
            if (v23)
            {
              if (*(a3 + 23) >= 0)
              {
                v44 = a3;
              }

              else
              {
                v44 = *a3;
              }

              memmove(&__p, v44, v23);
            }

            v45 = &__p + v23;
            if (v24)
            {
              if (byte_27BD1D7 >= 0)
              {
                v46 = &qword_27BD1C0;
              }

              else
              {
                v46 = qword_27BD1C0;
              }

              memmove(v45, v46, v24);
            }

            v45[v24] = 0;
            *(v16 + 16) |= 1u;
            v47 = *(v16 + 8);
            v48 = (v47 & 0xFFFFFFFFFFFFFFFCLL);
            if (v47)
            {
              v48 = *v48;
            }

            sub_194EA30((v16 + 48), &__p, v48);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
              v49 = *(a6 + 224);
              if (!v49)
              {
                goto LABEL_190;
              }
            }

            else
            {
              v49 = *(a6 + 224);
              if (!v49)
              {
LABEL_190:
                sub_14BE058(*(a6 + 208));
                v65 = sub_19593CC(a6 + 208, v85);
                goto LABEL_191;
              }
            }

            v84 = *(a6 + 216);
            if (v84 >= *v49)
            {
              goto LABEL_190;
            }

            *(a6 + 216) = v84 + 1;
            v65 = *&v49[2 * v84 + 2];
LABEL_191:
            v86 = sub_683938(a2);
            std::to_string(&__p, v86);
            *(v65 + 16) |= 2u;
            v87 = *(v65 + 8);
            v88 = (v87 & 0xFFFFFFFFFFFFFFFCLL);
            if (v87)
            {
              v88 = *v88;
            }

            sub_194EA30((v65 + 32), &__p, v88);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            v89 = *(a2 + 88) / 3.6;
            *(v65 + 16) |= 0x80u;
            *(v65 + 72) = v89;
            if (*(a3 + 23) >= 0)
            {
              v90 = *(a3 + 23);
            }

            else
            {
              v90 = a3[1];
            }

            if (byte_27BD1D7 >= 0)
            {
              v91 = byte_27BD1D7;
            }

            else
            {
              v91 = qword_27BD1C8;
            }

            if (v91 + v90 > 0x7FFFFFFFFFFFFFF7)
            {
LABEL_256:
              sub_3244();
            }

            if (v91 + v90 > 0x16)
            {
              operator new();
            }

            memset(&__p, 0, sizeof(__p));
            *(&__p.__r_.__value_.__s + 23) = v91 + v90;
            a5 = v118;
            if (v90)
            {
              if (*(a3 + 23) >= 0)
              {
                v92 = a3;
              }

              else
              {
                v92 = *a3;
              }

              memmove(&__p, v92, v90);
            }

            v93 = &__p + v90;
            if (v91)
            {
              if (byte_27BD1D7 >= 0)
              {
                v94 = &qword_27BD1C0;
              }

              else
              {
                v94 = qword_27BD1C0;
              }

              memmove(v93, v94, v91);
            }

            v93[v91] = 0;
            *(v65 + 16) |= 1u;
            v95 = *(v65 + 8);
            v96 = (v95 & 0xFFFFFFFFFFFFFFFCLL);
            if (v95)
            {
              v96 = *v96;
            }

            sub_194EA30((v65 + 24), &__p, v96);
            v11 = v119;
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            v97 = *(v65 + 16);
            *(v65 + 64) = 1;
            *(v65 + 16) = v97 | 0x24;
            v12 = *(v65 + 40);
            if (!v12)
            {
LABEL_219:
              v98 = *(v65 + 8);
              v99 = (v98 & 0xFFFFFFFFFFFFFFFCLL);
              if (v98)
              {
                v99 = *v99;
              }

              v12 = sub_16F5828(v99);
              *(v65 + 40) = v12;
            }

LABEL_5:
            sub_EC6D34((a2 + 20), v12, v13);
            goto LABEL_6;
          }

          *(v16 + 16) = v20 | 0x44;
          *(v16 + 64) = 1;
          if (*(a3 + 23) >= 0)
          {
            v27 = *(a3 + 23);
          }

          else
          {
            v27 = a3[1];
          }

          if (byte_27BD1BF >= 0)
          {
            v28 = byte_27BD1BF;
          }

          else
          {
            v28 = qword_27BD1B0;
          }

          if (v28 + v27 > 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_256;
          }

          if (v28 + v27 > 0x16)
          {
            operator new();
          }

          memset(&__p, 0, sizeof(__p));
          *(&__p.__r_.__value_.__s + 23) = v28 + v27;
          if (v27)
          {
            if (*(a3 + 23) >= 0)
            {
              v34 = a3;
            }

            else
            {
              v34 = *a3;
            }

            memmove(&__p, v34, v27);
          }

          v35 = &__p + v27;
          if (v28)
          {
            if (byte_27BD1BF >= 0)
            {
              v36 = &qword_27BD1A8;
            }

            else
            {
              v36 = qword_27BD1A8;
            }

            memmove(v35, v36, v28);
          }

          v35[v28] = 0;
          *(v16 + 16) |= 1u;
          v37 = *(v16 + 8);
          v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
          if (v37)
          {
            v38 = *v38;
          }

          sub_194EA30((v16 + 48), &__p, v38);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
            v39 = *(a6 + 224);
            if (!v39)
            {
              goto LABEL_141;
            }
          }

          else
          {
            v39 = *(a6 + 224);
            if (!v39)
            {
LABEL_141:
              sub_14BE058(*(a6 + 208));
              v65 = sub_19593CC(a6 + 208, v66);
              goto LABEL_142;
            }
          }

          v64 = *(a6 + 216);
          if (v64 >= *v39)
          {
            goto LABEL_141;
          }

          *(a6 + 216) = v64 + 1;
          v65 = *&v39[2 * v64 + 2];
LABEL_142:
          if (*(a3 + 23) >= 0)
          {
            v67 = *(a3 + 23);
          }

          else
          {
            v67 = a3[1];
          }

          if (byte_27BD1BF >= 0)
          {
            v68 = byte_27BD1BF;
          }

          else
          {
            v68 = qword_27BD1B0;
          }

          if (v68 + v67 > 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_256;
          }

          if (v68 + v67 > 0x16)
          {
            operator new();
          }

          memset(&__p, 0, sizeof(__p));
          *(&__p.__r_.__value_.__s + 23) = v68 + v67;
          a5 = v118;
          if (v67)
          {
            if (*(a3 + 23) >= 0)
            {
              v69 = a3;
            }

            else
            {
              v69 = *a3;
            }

            memmove(&__p, v69, v67);
          }

          v70 = &__p + v67;
          if (v68)
          {
            if (byte_27BD1BF >= 0)
            {
              v71 = &qword_27BD1A8;
            }

            else
            {
              v71 = qword_27BD1A8;
            }

            memmove(v70, v71, v68);
          }

          v70[v68] = 0;
          *(v65 + 16) |= 1u;
          v72 = *(v65 + 8);
          v73 = (v72 & 0xFFFFFFFFFFFFFFFCLL);
          if (v72)
          {
            v73 = *v73;
          }

          sub_194EA30((v65 + 24), &__p, v73);
          v11 = v119;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v74 = *(v65 + 16);
          *(v65 + 64) = 5;
          *(v65 + 16) = v74 | 0x24;
          v12 = *(v65 + 40);
          if (!v12)
          {
            goto LABEL_219;
          }

          goto LABEL_5;
        }

        *(v16 + 16) = v20 | 0x44;
        *(v16 + 64) = 1;
        if (*(a3 + 23) >= 0)
        {
          v26 = *(a3 + 23);
        }

        else
        {
          v26 = a3[1];
        }

        if (v26 + 15 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_256;
        }

        if (v26 + 15 >= 0x17)
        {
          operator new();
        }

        memset(&__p, 0, sizeof(__p));
        *(&__p.__r_.__value_.__s + 23) = v26 + 15;
        if (v26)
        {
          if (*(a3 + 23) >= 0)
          {
            v30 = a3;
          }

          else
          {
            v30 = *a3;
          }

          memmove(&__p, v30, v26);
        }

        strcpy(&__p + v26, "_RedLightCamera");
        *(v16 + 16) |= 1u;
        v31 = *(v16 + 8);
        v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
        if (v31)
        {
          v32 = *v32;
        }

        sub_194EA30((v16 + 48), &__p, v32);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
          v33 = *(a6 + 224);
          if (!v33)
          {
            goto LABEL_119;
          }
        }

        else
        {
          v33 = *(a6 + 224);
          if (!v33)
          {
            goto LABEL_119;
          }
        }

        v54 = *(a6 + 216);
        if (v54 >= *v33)
        {
LABEL_119:
          sub_14BE058(*(a6 + 208));
          v55 = sub_19593CC(a6 + 208, v56);
          goto LABEL_120;
        }

        *(a6 + 216) = v54 + 1;
        v55 = *&v33[2 * v54 + 2];
LABEL_120:
        if (*(a3 + 23) >= 0)
        {
          v57 = *(a3 + 23);
        }

        else
        {
          v57 = a3[1];
        }

        if (v57 + 15 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_256;
        }

        if (v57 + 15 >= 0x17)
        {
          operator new();
        }

        memset(&__p, 0, sizeof(__p));
        *(&__p.__r_.__value_.__s + 23) = v57 + 15;
        v11 = v119;
        if (v57)
        {
          if (*(a3 + 23) >= 0)
          {
            v58 = a3;
          }

          else
          {
            v58 = *a3;
          }

          memmove(&__p, v58, v57);
        }

        a6 = v117;
        strcpy(&__p + v57, "_RedLightCamera");
        *(v55 + 16) |= 1u;
        v59 = *(v55 + 8);
        v60 = (v59 & 0xFFFFFFFFFFFFFFFCLL);
        if (v59)
        {
          v60 = *v60;
        }

        sub_194EA30((v55 + 24), &__p, v60);
        a5 = v118;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v62 = *(v55 + 16);
        *(v55 + 64) = 2;
        *(v55 + 16) = v62 | 0x24;
        v63 = *(v55 + 40);
        if (!v63)
        {
          v109 = *(v55 + 8);
          v110 = (v109 & 0xFFFFFFFFFFFFFFFCLL);
          if (v109)
          {
            v110 = *v110;
          }

          v111 = sub_16F5828(v110);
          *(v55 + 40) = v111;
          sub_EC6D34((a2 + 20), v111, v112);
          if (!sub_683530(a2))
          {
            goto LABEL_6;
          }

LABEL_244:
          *(v55 + 16) |= 0x20u;
          *(v55 + 64) = 5;
          goto LABEL_6;
        }

        sub_EC6D34((a2 + 20), v63, v61);
        if (sub_683530(a2))
        {
          goto LABEL_244;
        }

LABEL_6:
        v10 += 184;
      }

      while (v10 != v11);
    }
  }
}

void sub_ED20BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_ED2340(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_ED236C(uint64_t *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = sub_3AF6B4(a2);
  v7 = 15;
  strcpy(v6, "ResponseBuilder");
  memset(v5, 0, sizeof(v5));
  v4 = sub_3AEC94(a2, v6, v5);
  sub_41D7AC(v4, v8);
  sub_ED7F90((a1 + 2), v8);
}

void sub_ED24D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  sub_5C010(&a18);
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_ED250C(uint64_t *a1@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, char **a5@<X4>, uint64_t a6@<X8>)
{
  sub_1757EA4(a6, 0, 0);
  v10 = *a2;
  v134 = a2[1];
  v135 = a2;
  if (*a2 == v134)
  {
    if (!sub_7E7E4(1u))
    {
LABEL_156:
      *(a6 + 40) |= 0x400000u;
      *(a6 + 552) = 20;
      return;
    }

    sub_19594F8(__p);
    sub_4A5C(__p, "No routes found", 15);
    if ((v149 & 0x10) != 0)
    {
      v130 = v148;
      if (v148 < v144)
      {
        v148 = v144;
        v130 = v144;
      }

      v131 = v143;
      v78 = v130 - v143;
      if (v130 - v143 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_159;
      }
    }

    else
    {
      if ((v149 & 8) == 0)
      {
        v78 = 0;
        v138 = 0;
LABEL_151:
        *(&__dst + v78) = 0;
        sub_7E854(&__dst, 1u);
        if (v138 < 0)
        {
          operator delete(__dst);
        }

        if (SHIBYTE(v147) < 0)
        {
          operator delete(v145);
        }

        std::locale::~locale(&v140);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_156;
      }

      v131 = locale;
      v78 = v142 - locale;
      if ((v142 - locale) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_159:
        sub_3244();
      }
    }

    if (v78 >= 0x17)
    {
      operator new();
    }

    v138 = v78;
    if (v78)
    {
      memmove(&__dst, v131, v78);
    }

    goto LABEL_151;
  }

  v132 = a4;
  do
  {
    v11 = *(a6 + 64);
    if (v11 && (v12 = *(a6 + 56), v12 < *v11))
    {
      *(a6 + 56) = v12 + 1;
      v13 = *&v11[2 * v12 + 2];
    }

    else
    {
      v14 = sub_14BD738(*(a6 + 48));
      v13 = sub_19593CC(a6 + 48, v14);
    }

    v15 = sub_68DB24(v10);
    *(v13 + 40) |= 4u;
    v16 = *(v13 + 8);
    v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
    if (v16)
    {
      v17 = *v17;
    }

    HIBYTE(v140.__locale_) = 4;
    LODWORD(__p[0]) = v15;
    BYTE4(__p[0]) = 0;
    sub_194EA1C((v13 + 720), __p, v17);
    if (SHIBYTE(v140.__locale_) < 0)
    {
      operator delete(__p[0]);
    }

    v18 = sub_68D7F4(v10);
    v19 = sub_ECA8CC(v18);
    *(v13 + 40) |= 0x1000000u;
    *(v13 + 884) = v19;
    if (sub_68D828(v10, 4))
    {
      v20 = 1;
    }

    else
    {
      v20 = sub_68D828(v10, 9);
    }

    *(v13 + 44) |= 1u;
    *(v13 + 916) = v20 ^ 1;
    v21 = sub_68D828(v10, 5);
    *(v13 + 44) |= 2u;
    *(v13 + 917) = v21 ^ 1;
    sub_ECCB58(a1, v10, v13);
    v22 = sub_394BD0();
    v23 = sub_EC7E7C(v22);
    *(v13 + 40) |= 0x200000u;
    *(v13 + 872) = v23;
    v24 = sub_68C454(v10, 0);
    v25 = sub_EC7E9C(*(v24 + 1097));
    *(v13 + 40) |= 0x2000000u;
    *(v13 + 888) = v25;
    v26 = sub_68DEC0(v10);
    v27 = *v26;
    v28 = v26[1];
    if (*v26 != v28)
    {
      while (1)
      {
        v48 = *(v13 + 144);
        if (v48 && (v49 = *(v13 + 136), v49 < *v48))
        {
          *(v13 + 136) = v49 + 1;
          v50 = *&v48[2 * v49 + 2];
        }

        else
        {
          v51 = *(v13 + 128);
          if (!v51)
          {
            operator new();
          }

          *v53 = v52;
          v53[1] = sub_195A650;
          *v52 = 0;
          v52[1] = 0;
          v52[2] = 0;
          v50 = sub_19593CC(v13 + 128, v52);
        }

        if (v27 == v50)
        {
          goto LABEL_41;
        }

        v54 = *(v27 + 23);
        if (*(v50 + 23) < 0)
        {
          break;
        }

        if ((*(v27 + 23) & 0x80) != 0)
        {
          sub_13A68(v50, *v27, *(v27 + 1));
LABEL_41:
          v27 = (v27 + 24);
          if (v27 == v28)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v55 = *v27;
          *(v50 + 16) = *(v27 + 2);
          *v50 = v55;
          v27 = (v27 + 24);
          if (v27 == v28)
          {
            goto LABEL_15;
          }
        }
      }

      if (v54 >= 0)
      {
        v46 = v27;
      }

      else
      {
        v46 = *v27;
      }

      if (v54 >= 0)
      {
        v47 = *(v27 + 23);
      }

      else
      {
        v47 = *(v27 + 1);
      }

      sub_13B38(v50, v46, v47);
      goto LABEL_41;
    }

LABEL_15:
    v29 = sub_68DDC0(v10);
    v30 = *v29;
    v31 = v29[1];
    if (*v29 != v31)
    {
      while (1)
      {
        v58 = *(v13 + 312);
        if (v58 && (v59 = *(v13 + 304), v59 < *v58))
        {
          *(v13 + 304) = v59 + 1;
          v60 = *&v58[2 * v59 + 2];
          v61 = *(v60 + 40);
          if (!v61)
          {
            goto LABEL_69;
          }
        }

        else
        {
          sub_14BAE64(*(v13 + 296));
          v60 = sub_19593CC(v13 + 296, v62);
          v61 = *(v60 + 40);
          if (!v61)
          {
            goto LABEL_69;
          }
        }

        v63 = *(v60 + 32);
        if (v63 >= *v61)
        {
LABEL_69:
          v65 = *(v60 + 24);
          if (!v65)
          {
            operator new();
          }

          *v67 = v66;
          v67[1] = sub_195A650;
          *v66 = 0;
          v66[1] = 0;
          v66[2] = 0;
          v64 = sub_19593CC(v60 + 24, v66);
          goto LABEL_72;
        }

        *(v60 + 32) = v63 + 1;
        v64 = *&v61[2 * v63 + 2];
LABEL_72:
        if (v30 == v64)
        {
LABEL_61:
          v30 += 3;
          if (v30 == v31)
          {
            break;
          }
        }

        else
        {
          v68 = *(v30 + 23);
          if (*(v64 + 23) < 0)
          {
            if (v68 >= 0)
            {
              v56 = v30;
            }

            else
            {
              v56 = *v30;
            }

            if (v68 >= 0)
            {
              v57 = *(v30 + 23);
            }

            else
            {
              v57 = v30[1];
            }

            sub_13B38(v64, v56, v57);
            goto LABEL_61;
          }

          if ((*(v30 + 23) & 0x80) != 0)
          {
            sub_13A68(v64, *v30, v30[1]);
            goto LABEL_61;
          }

          v69 = *v30;
          *(v64 + 16) = v30[2];
          *v64 = v69;
          v30 += 3;
          if (v30 == v31)
          {
            break;
          }
        }
      }
    }

    v32 = sub_68DE5C(v10);
    if (!sub_4D1F6C(v32))
    {
      v33 = sub_68DE5C(v10);
      *(v13 + 40) |= 0x2000u;
      v34 = *(v13 + 808);
      if (!v34)
      {
        v35 = *(v13 + 8);
        v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
        if (v35)
        {
          v36 = *v36;
        }

        sub_14BAE64(v36);
        v34 = v37;
        *(v13 + 808) = v37;
      }

      sub_64D110(v33, v34);
    }

    sub_ECCE4C(a1, v10, a3, v13);
    v38 = sub_68C454(v10, 0);
    v39 = v38;
    if (v38[1503] != v38[1504] && v38[1501] != 0x7FFFFFFFFFFFFFFFLL && v38[1502] != 0x7FFFFFFFFFFFFFFFLL)
    {
      *(v13 + 40) |= 0x4000u;
      v40 = *(v13 + 816);
      if (!v40)
      {
        v41 = *(v13 + 8);
        v42 = (v41 & 0xFFFFFFFFFFFFFFFCLL);
        if (v41)
        {
          v42 = *v42;
        }

        sub_14BBF6C(v42);
        v40 = v43;
        *(v13 + 816) = v43;
      }

      sub_EC8758(v39 + 1501, v40);
    }

    sub_ECCFB0(a1, v10, v13);
    nullsub_1();
    if (-1189124953 * ((v44[1] - *v44) >> 4))
    {
      v45 = sub_68C454(v10, 0);
      sub_ED47E4(a1, v45, 0, a3, v13);
    }

    sub_ED33B8(a1, v10, v13);
    v10 += 976;
  }

  while (v10 != v134);
  v70 = sub_3B2A90(*a1);
  v72 = *a2;
  v71 = a2[1];
  if (*a2 == v71)
  {
LABEL_84:
    v77 = 1;
  }

  else
  {
    v73 = v70;
    while (1)
    {
      nullsub_1();
      v76 = *v74;
      v75 = v74[1];
      if (*v74 != v75)
      {
        break;
      }

LABEL_83:
      v72 += 976;
      if (v72 == v71)
      {
        goto LABEL_84;
      }
    }

    while (sub_4B7C5C(v73, v76, *(a3 + 40)) == 2)
    {
      v76 += 12656;
      if (v76 == v75)
      {
        goto LABEL_83;
      }
    }

    v77 = 0;
  }

  *(a6 + 40) |= 0x4000000u;
  *(a6 + 565) = v77;
  v80 = *v135;
  v79 = v135[1];
  if (*v135 == v79)
  {
LABEL_95:
    v84 = 0;
  }

  else
  {
    while (1)
    {
      nullsub_1();
      v82 = *v81;
      v83 = *(v81 + 8);
      if (*v81 != v83)
      {
        break;
      }

LABEL_94:
      v80 += 976;
      if (v80 == v79)
      {
        goto LABEL_95;
      }
    }

    while (1)
    {
      sub_4D1DDC(v82, __p);
      __dst = a1;
      if (sub_EDE414(__p[0], __p[1], v140.__locale_, locale, &__dst))
      {
        break;
      }

      v82 += 1582;
      if (v82 == v83)
      {
        goto LABEL_94;
      }
    }

    v84 = 1;
  }

  *(a6 + 40) |= 0x10000000u;
  *(a6 + 567) = v84;
  if (*a3 == 1)
  {
    sub_ECD4F0(a1[1], v135, a6);
  }

  v85 = 0x4FBCDA3AC10C9715 * ((v135[1] - *v135) >> 7);
  if (v85 >= 1)
  {
    v86 = 0;
    v87 = v85 & 0x7FFFFFFF;
    do
    {
      v88 = *(*(a6 + 64) + 8 * v86 + 8);
      nullsub_1();
      v91 = *v89;
      v90 = v89[1];
      if (*v89 != v90)
      {
        v92 = (v91 + 7392);
        do
        {
          if (v92[619] == v92[620])
          {
            sub_EC6B44(v92, v88);
          }

          else
          {
            sub_ECA0F4((v91 + 12344), v88);
          }

          v91 += 12656;
          v92 += 1582;
        }

        while (v91 != v90);
      }

      ++v86;
    }

    while (v86 != v87);
  }

  sub_ED3814(a1, v135, a6);
  v95 = *v132;
  v94 = v132[1];
  if (*v132 != v94)
  {
    do
    {
      v96 = *(a6 + 136);
      if (v96 && (v97 = *(a6 + 128), v97 < *v96))
      {
        *(a6 + 128) = v97 + 1;
        v98 = *&v96[2 * v97 + 2];
      }

      else
      {
        v99 = sub_14BDE5C(*(a6 + 120));
        v98 = sub_19593CC(a6 + 120, v99);
      }

      sub_EC6F6C(v95, v98, 0, v93);
      v95 += 1120;
    }

    while (v95 != v94);
  }

  sub_ED3C10(a1, v135, a6);
  sub_ED456C(v100, v135, a5, a6);
  v101 = sub_1950D4C((a6 + 16), dword_278CFF0, 11, &off_2769490, 0);
  v102 = sub_68C454(*v135, 0);
  *(v101 + 4) |= 1u;
  v103 = v101[1];
  v104 = (v103 & 0xFFFFFFFFFFFFFFFCLL);
  if (v103)
  {
    v104 = *v104;
  }

  sub_194EA1C(v101 + 6, (v102 + 7464), v104);
  sub_3AF114();
  v106 = sub_2D5630(*v105);
  v107 = *(a6 + 40);
  *(a6 + 566) = v106;
  *(a6 + 40) = v107 | 0x8400000;
  *(a6 + 552) = 0;
  if (*(a3 + 32) == 1)
  {
    sub_EEA6F4(__p, a3);
    v108 = -1056139499 * ((v135[1] - *v135) >> 7);
    if (v108 >= 1)
    {
      sub_EEA728(__p, *v135, *(*(a6 + 64) + 8));
      v109 = sub_1950D4C((a6 + 16), dword_278CFF0, 11, &off_2769490, 0);
      v110 = sub_68E91C(*v135);
      *(v109 + 4) |= 2u;
      v111 = v109[1];
      v112 = (v111 & 0xFFFFFFFFFFFFFFFCLL);
      if (v111)
      {
        v112 = *v112;
      }

      sub_194EA1C(v109 + 7, v110, v112);
      v113 = (v108 & 0x7FFFFFFF) - 1;
      if ((v108 & 0x7FFFFFFF) != 1)
      {
        v114 = 16;
        v115 = 976;
        do
        {
          sub_EEA728(__p, &(*v135)[v115], *(*(a6 + 64) + v114));
          v115 += 976;
          v114 += 8;
          --v113;
        }

        while (v113);
      }

      v116 = 0x4FBCDA3AC10C9715 * ((v135[1] - *v135) >> 7);
      if (v116 >= 1)
      {
        v117 = 0;
        v118 = v116 & 0x7FFFFFFF;
        do
        {
          v119 = *(*(a6 + 64) + 8 * v117 + 8);
          v120 = &(*v135)[976 * v117];
          nullsub_1();
          v122 = v121[1] - *v121;
          if (v122)
          {
            v123 = 0;
            v124 = 0x5DDB1ADCB91F64A7 * (v122 >> 4);
            do
            {
              v125 = sub_68C454(v120, v123);
              sub_ED69F4(a1, v125, v117, v123++, v119, a6);
            }

            while (v124 != v123);
          }

          ++v117;
        }

        while (v117 != v118);
      }
    }
  }

  else
  {
    sub_EA8604(__p, a3);
    v126 = 0x4FBCDA3AC10C9715 * ((v135[1] - *v135) >> 7);
    if (v126 >= 1)
    {
      v127 = 0;
      v128 = v126 & 0x7FFFFFFF;
      v129 = 8;
      do
      {
        sub_EA8648(__p, &(*v135)[v127], *(*(a6 + 64) + v129));
        v127 += 976;
        v129 += 8;
        --v128;
      }

      while (v128);
    }
  }

  __p[0] = &off_26744A8;
  if (v154)
  {
    v155 = v154;
    operator delete(v154);
  }

  if (v153 < 0)
  {
    operator delete(v152);
  }

  if (v150)
  {
    v151 = v150;
    operator delete(v150);
  }

  if (v146)
  {
    v147 = v146;
    operator delete(v146);
  }

  if (v140.__locale_)
  {
    locale = v140.__locale_;
    operator delete(v140.__locale_);
  }
}

void sub_ED32A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a20 < 0)
  {
    operator delete(__p);
    sub_1959728(&a21);
    sub_1758FB8(a14);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a21);
  sub_1758FB8(a14);
  _Unwind_Resume(a1);
}

void sub_ED331C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_EDE2F4(va);
  sub_1758FB8(a14);
  _Unwind_Resume(a1);
}

void sub_ED3344(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
    sub_1758FB8(a14);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0xED33A8);
}

void sub_ED3378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_EDE2F4(va);
  sub_1758FB8(a14);
  _Unwind_Resume(a1);
}

void sub_ED33B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 32) == 1)
  {
    v4 = sub_3B1D8C(*a1);
    v42 = 0;
    v43 = 0;
    v44 = 0;
    nullsub_1();
    v6 = *v5;
    v7 = v5[1];
    if (*v5 != v7)
    {
      do
      {
        if (!sub_69AE68(v6))
        {
          goto LABEL_4;
        }

        v8 = sub_73F54(v6);
        sub_2AD1B4(v4, *(v8 + 104), *(v8 + 112), &v30);
        v9 = v43;
        if (v43 >= v44)
        {
          v12 = v42;
          v13 = 0xAAAAAAAAAAAAAAABLL * ((v43 - v42) >> 2);
          v14 = v13 + 1;
          if (v13 + 1 > 0x1555555555555555)
          {
            sub_1794();
          }

          if (0x5555555555555556 * ((v44 - v42) >> 2) > v14)
          {
            v14 = 0x5555555555555556 * ((v44 - v42) >> 2);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v44 - v42) >> 2) >= 0xAAAAAAAAAAAAAAALL)
          {
            v15 = 0x1555555555555555;
          }

          else
          {
            v15 = v14;
          }

          if (v15)
          {
            if (v15 <= 0x1555555555555555)
            {
              operator new();
            }

            sub_1808();
          }

          v16 = 4 * ((v43 - v42) >> 2);
          *v16 = v37;
          *(v16 + 8) = v38;
          v17 = 12 * v13 + 12;
          v18 = (12 * v13 - (v9 - v12));
          memcpy((v16 - (v9 - v12)), v12, v9 - v12);
          v42 = v18;
          v43 = v17;
          v44 = 0;
          if (v12)
          {
            operator delete(v12);
          }

          v43 = v17;
          sub_99F0C(v41);
          v11 = __p;
          if (!__p)
          {
LABEL_8:
            if ((v36 & 0x80000000) == 0)
            {
              goto LABEL_9;
            }

            goto LABEL_31;
          }
        }

        else
        {
          v10 = v37;
          *(v43 + 2) = v38;
          *v9 = v10;
          v43 = v9 + 12;
          sub_99F0C(v41);
          v11 = __p;
          if (!__p)
          {
            goto LABEL_8;
          }
        }

        v19 = v40;
        if (v40 == v11)
        {
          v40 = v11;
          operator delete(v11);
          if ((v36 & 0x80000000) == 0)
          {
            goto LABEL_9;
          }
        }

        else
        {
          do
          {
            v20 = *(v19 - 1);
            v19 -= 3;
            if (v20 < 0)
            {
              operator delete(*v19);
            }
          }

          while (v19 != v11);
          v40 = v11;
          operator delete(__p);
          if ((v36 & 0x80000000) == 0)
          {
LABEL_9:
            if ((v34 & 0x80000000) == 0)
            {
              goto LABEL_10;
            }

            goto LABEL_32;
          }
        }

LABEL_31:
        operator delete(v35);
        if ((v34 & 0x80000000) == 0)
        {
LABEL_10:
          if (SHIBYTE(v32) < 0)
          {
            goto LABEL_33;
          }

          goto LABEL_4;
        }

LABEL_32:
        operator delete(v33);
        if (SHIBYTE(v32) < 0)
        {
LABEL_33:
          operator delete(v30);
        }

LABEL_4:
        v6 += 12656;
      }

      while (v6 != v7);
    }

    v30 = 0;
    v31 = 0;
    v32 = 0;
    BYTE7(v29[1]) = 17;
    strcpy(v29, "Charging Stations");
    sub_EAC188(&v30, &v42, v29, 0xFFFFFFFF, 0, 0, 0.0);
    if (SBYTE7(v29[1]) < 0)
    {
      operator delete(*&v29[0]);
    }

    sub_EAC680(&v30, v29);
    v22 = *(&v29[0] + 1);
    v21 = *&v29[0];
    if (*&v29[0] != *(&v29[0] + 1))
    {
      do
      {
        v23 = sub_1950FFC((a3 + 16), dword_278D070, 11, &off_2769C00, 0);
        sub_12CC584(v23, v21);
        v21 += 48;
      }

      while (v21 != v22);
      v21 = *&v29[0];
    }

    if (v21)
    {
      v24 = *(&v29[0] + 1);
      v25 = v21;
      if (*(&v29[0] + 1) != v21)
      {
        do
        {
          v24 = sub_12CBDFC(v24 - 48);
        }

        while (v24 != v21);
        v25 = *&v29[0];
      }

      *(&v29[0] + 1) = v21;
      operator delete(v25);
    }

    v26 = v30;
    if (!v30)
    {
      goto LABEL_55;
    }

    v27 = v31;
    v28 = v30;
    if (v31 == v30)
    {
LABEL_54:
      v31 = v26;
      operator delete(v28);
LABEL_55:
      if (v42)
      {
        v43 = v42;
        operator delete(v42);
      }

      return;
    }

    while (1)
    {
      if (*(v27 - 25) < 0)
      {
        operator delete(*(v27 - 6));
        if (*(v27 - 49) < 0)
        {
LABEL_52:
          operator delete(*(v27 - 9));
        }
      }

      else if (*(v27 - 49) < 0)
      {
        goto LABEL_52;
      }

      v27 -= 10;
      if (v27 == v26)
      {
        v28 = v30;
        goto LABEL_54;
      }
    }
  }
}

void sub_ED379C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16)
{
  sub_D37F50(&a16);
  v18 = *(v16 - 112);
  if (v18)
  {
    *(v16 - 104) = v18;
    operator delete(v18);
  }

  _Unwind_Resume(a1);
}

void sub_ED3814(uint64_t a1, void *a2, uint64_t a3)
{
  *__p = 0u;
  *v53 = 0u;
  v54 = 1065353216;
  v3 = 0x4FBCDA3AC10C9715 * ((a2[1] - *a2) >> 7);
  if (v3 >= 1)
  {
    v5 = 0;
    v47 = v3 & 0x7FFFFFFF;
    do
    {
      v51 = *(*(a3 + 64) + 8 * v5 + 8);
      v48 = v5;
      nullsub_1();
      v8 = *v6;
      v7 = v6[1];
      v49 = v7;
      while (v8 != v7)
      {
        v9 = *(v8 + 7416);
        v50 = v8;
        for (i = *(v8 + 7424); v9 != i; v9 += 1120)
        {
          v11 = *(v9 + 71);
          if (v11 >= 0)
          {
            v12 = (v9 + 48);
          }

          else
          {
            v12 = *(v9 + 48);
          }

          if (v11 >= 0)
          {
            v13 = *(v9 + 71);
          }

          else
          {
            v13 = *(v9 + 56);
          }

          v14 = sub_AAD8(&v55, v12, v13);
          v15 = __p[1];
          if (__p[1])
          {
            v16 = v14;
            v17 = vcnt_s8(__p[1]);
            v17.i16[0] = vaddlv_u8(v17);
            if (v17.u32[0] > 1uLL)
            {
              v18 = v14;
              if (v14 >= __p[1])
              {
                v18 = v14 % __p[1];
              }
            }

            else
            {
              v18 = (__p[1] - 1) & v14;
            }

            v19 = *(__p[0] + v18);
            if (v19)
            {
              v20 = *v19;
              if (*v19)
              {
                v21 = *(v9 + 71);
                if (v21 >= 0)
                {
                  v22 = *(v9 + 71);
                }

                else
                {
                  v22 = *(v9 + 56);
                }

                if (v21 >= 0)
                {
                  v23 = (v9 + 48);
                }

                else
                {
                  v23 = *(v9 + 48);
                }

                if (v17.u32[0] < 2uLL)
                {
                  v24 = __p[1] - 1;
                  while (1)
                  {
                    v29 = v20[1];
                    if (v16 == v29)
                    {
                      v30 = *(v20 + 39);
                      v31 = v30;
                      if (v30 < 0)
                      {
                        v30 = v20[3];
                      }

                      if (v30 == v22)
                      {
                        v32 = v31 >= 0 ? (v20 + 2) : v20[2];
                        if (!memcmp(v32, v23, v22))
                        {
                          goto LABEL_58;
                        }
                      }
                    }

                    else if ((v29 & v24) != v18)
                    {
                      goto LABEL_53;
                    }

                    v20 = *v20;
                    if (!v20)
                    {
                      goto LABEL_53;
                    }
                  }
                }

                do
                {
                  v25 = v20[1];
                  if (v16 == v25)
                  {
                    v26 = *(v20 + 39);
                    v27 = v26;
                    if (v26 < 0)
                    {
                      v26 = v20[3];
                    }

                    if (v26 == v22)
                    {
                      v28 = v27 >= 0 ? (v20 + 2) : v20[2];
                      if (!memcmp(v28, v23, v22))
                      {
                        goto LABEL_58;
                      }
                    }
                  }

                  else
                  {
                    if (v25 >= v15)
                    {
                      v25 %= v15;
                    }

                    if (v25 != v18)
                    {
                      break;
                    }
                  }

                  v20 = *v20;
                }

                while (v20);
              }
            }
          }

LABEL_53:
          v33 = *(a3 + 104);
          v55 = (v9 + 48);
          sub_EDE7E0(__p, (v9 + 48), &unk_229EB70, &v55)[5] = v33;
          v35 = *(a3 + 112);
          if (v35 && (v36 = *(a3 + 104), v36 < *v35))
          {
            *(a3 + 104) = v36 + 1;
            v37 = *&v35[2 * v36 + 2];
          }

          else
          {
            v38 = sub_14BDE5C(*(a3 + 96));
            v37 = sub_19593CC(a3 + 96, v38);
          }

          sub_EC6F6C(v9, v37, 0, v34);
LABEL_58:
          v55 = (v9 + 48);
          v39 = *(sub_EDE7E0(__p, (v9 + 48), &unk_229EB70, &v55) + 10);
          v40 = *(v9 + 464);
          v41 = v40 / 100;
          v42 = v40 % 100;
          if (v40 < 0)
          {
            v43 = -50;
          }

          else
          {
            v43 = 50;
          }

          sub_ECA76C(v39, v41 + ((5243 * (v43 + v42)) >> 19) + ((5243 * (v43 + v42)) >> 31), v51);
        }

        v8 = v50 + 12656;
        v7 = v49;
      }

      v5 = v48 + 1;
    }

    while (v48 + 1 != v47);
    v44 = v53[0];
    if (v53[0])
    {
      do
      {
        v46 = *v44;
        if (*(v44 + 39) < 0)
        {
          operator delete(v44[2]);
        }

        operator delete(v44);
        v44 = v46;
      }

      while (v46);
    }
  }

  v45 = __p[0];
  __p[0] = 0;
  if (v45)
  {
    operator delete(v45);
  }
}

void sub_ED3BE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_23D9C(va);
  _Unwind_Resume(a1);
}

void sub_ED3BFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_23D9C(va);
  _Unwind_Resume(a1);
}

void sub_ED3C10(uint64_t a1, void *a2, uint64_t a3)
{
  __p = 0;
  v92 = 0;
  v93 = 0;
  v3 = 0x4FBCDA3AC10C9715 * ((a2[1] - *a2) >> 7);
  if (v3 < 1)
  {
    return;
  }

  v4 = a3;
  v5 = 0;
  v83 = v3 & 0x7FFFFFFF;
  do
  {
    v6 = *(*(v4 + 64) + 8 * v5 + 8);
    v89 = (*a2 + 7808 * v5);
    nullsub_1();
    v8 = v7[1] - *v7;
    if (v8)
    {
      v9 = 0;
      v88 = 0x5DDB1ADCB91F64A7 * (v8 >> 4);
      v90 = v5;
      while (1)
      {
        v10 = sub_68C454(v89, v9);
        v11 = v10;
        v12 = v10[1281];
        v13 = v10[1282];
        if (v12 != 0x7FFFFFFFFFFFFFFFLL && v13 != 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

LABEL_6:
        if (++v9 == v88)
        {
          goto LABEL_3;
        }
      }

      v15 = __p;
      v16 = v92;
      if (__p == v92)
      {
        v21 = __p;
LABEL_45:
        if (v21 != v92)
        {
          v32 = 954437177 * ((v21 - __p) >> 3);
          *(v6 + 44) |= 8u;
          *(v6 + 920) = v32;
          v5 = v90;
          goto LABEL_93;
        }
      }

      else
      {
        v17 = v10[1284];
        v18 = v10[1283];
        v19 = v10[1287];
        v20 = v10[1286];
        v21 = __p;
        do
        {
          if (v12 == *v21)
          {
            v22 = *(v21 + 2);
            if (v17 - v18 == *(v21 + 3) - v22)
            {
              if (v18 == v17)
              {
LABEL_24:
                v24 = *(v21 + 5);
                if (v19 - v20 == *(v21 + 6) - v24)
                {
                  if (v20 == v19)
                  {
LABEL_13:
                    if (v13 == *(v21 + 1))
                    {
                      goto LABEL_45;
                    }
                  }

                  else
                  {
                    v25 = v11[1286];
                    while (*v25 == *v24)
                    {
                      if (*(v25 + 4) != *(v24 + 4))
                      {
                        break;
                      }

                      if (*(v25 + 8) != *(v24 + 8))
                      {
                        break;
                      }

                      if (*(v25 + 12) != *(v24 + 12))
                      {
                        break;
                      }

                      v27 = *(v25 + 16);
                      v26 = *(v25 + 24);
                      v28 = *(v24 + 16);
                      if (v26 - v27 != *(v24 + 24) - v28)
                      {
                        break;
                      }

                      for (; v27 != v26; v28 += 24)
                      {
                        v30 = *v27;
                        v29 = *(v27 + 8);
                        v31 = *v28;
                        if ((v29 - *v27) != (*(v28 + 8) - *v28))
                        {
                          goto LABEL_14;
                        }

                        if (v30 != v29)
                        {
                          while (*v30 == *v31 && v30[1] == v31[1] && v30[2] == v31[2])
                          {
                            v30 += 3;
                            v31 += 3;
                            if (v30 == v29)
                            {
                              goto LABEL_39;
                            }
                          }

                          goto LABEL_14;
                        }

LABEL_39:
                        v27 += 24;
                      }

                      if (*(v25 + 40) != *(v24 + 40) || *(v25 + 48) != *(v24 + 48))
                      {
                        break;
                      }

                      v25 += 64;
                      v24 += 64;
                      if (v25 == v19)
                      {
                        goto LABEL_13;
                      }
                    }
                  }
                }
              }

              else
              {
                v23 = v11[1283];
                while (*v23 == *v22 && *(v23 + 4) == *(v22 + 4) && *(v23 + 8) == *(v22 + 8) && *(v23 + 16) == *(v22 + 16))
                {
                  v23 += 24;
                  v22 += 24;
                  if (v23 == v17)
                  {
                    goto LABEL_24;
                  }
                }
              }
            }
          }

LABEL_14:
          v21 += 72;
        }

        while (v21 != v92);
      }

      v33 = 0x8E38E38E38E38E39 * ((v92 - __p) >> 3);
      *(v6 + 44) |= 8u;
      *(v6 + 920) = v33;
      if (v16 >= v93)
      {
        if (v33 + 1 > 0x38E38E38E38E38ELL)
        {
          sub_1794();
        }

        v39 = 0x8E38E38E38E38E39 * ((v93 - v15) >> 3);
        v40 = 2 * v39;
        if (2 * v39 <= v33 + 1)
        {
          v40 = v33 + 1;
        }

        if (v39 >= 0x1C71C71C71C71C7)
        {
          v41 = 0x38E38E38E38E38ELL;
        }

        else
        {
          v41 = v40;
        }

        p_p = &__p;
        if (v41)
        {
          if (v41 <= 0x38E38E38E38E38ELL)
          {
            operator new();
          }

          sub_1808();
        }

        v42 = 72 * v33;
        v94 = 0;
        v95 = 72 * v33;
        v96 = 72 * v33;
        v97 = 0;
        v43 = *(v11 + 1281);
        *&dword_10[18 * v33] = 0;
        *v42 = v43;
        *(v42 + 24) = 0;
        *(v42 + 32) = 0;
        v44 = v11[1283];
        v45 = v11[1284];
        if (v45 != v44)
        {
          if (0xAAAAAAAAAAAAAAABLL * ((v45 - v44) >> 3) <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          sub_1794();
        }

        *&stru_20.segname[72 * v33] = 0;
        *&stru_20.segname[72 * v33 + 8] = 0;
        *&stru_20.segname[72 * v33 + 16] = 0;
        sub_7C0AEC((v42 + 40), v11[1286], v11[1287], (v11[1287] - v11[1286]) >> 6);
        *(&stru_20.vmsize + 18 * v33) = *(v11 + 2578);
        v85 = v96;
        v46 = __p;
        v47 = v92;
        v87 = (v95 + __p - v92);
        v5 = v90;
        if (__p != v92)
        {
          v48 = __p;
          v49 = (v95 + __p - v92);
          do
          {
            *v49 = *v48;
            *(v49 + 3) = 0;
            *(v49 + 4) = 0;
            *(v49 + 2) = 0;
            *(v49 + 1) = v48[1];
            *(v49 + 4) = *(v48 + 4);
            *(v48 + 2) = 0;
            *(v48 + 3) = 0;
            *(v48 + 4) = 0;
            *(v49 + 5) = 0;
            *(v49 + 6) = 0;
            *(v49 + 7) = 0;
            v37 = *(v48 + 40);
            *(v49 + 40) = v37;
            *(v49 + 7) = *(v48 + 7);
            *(v48 + 5) = 0;
            *(v48 + 6) = 0;
            *(v48 + 7) = 0;
            *(v49 + 16) = *(v48 + 16);
            v48 = (v48 + 72);
            v49 += 72;
          }

          while (v48 != v47);
          do
          {
            v50 = v46[5];
            if (v50)
            {
              v51 = v46[6];
              v52 = v46[5];
              if (v51 != v50)
              {
                do
                {
                  v54 = *(v51 - 48);
                  if (v54)
                  {
                    v55 = *(v51 - 40);
                    v53 = *(v51 - 48);
                    if (v55 != v54)
                    {
                      v56 = *(v51 - 40);
                      do
                      {
                        v58 = *(v56 - 24);
                        v56 -= 24;
                        v57 = v58;
                        if (v58)
                        {
                          *(v55 - 16) = v57;
                          operator delete(v57);
                        }

                        v55 = v56;
                      }

                      while (v56 != v54);
                      v53 = *(v51 - 48);
                    }

                    *(v51 - 40) = v54;
                    operator delete(v53);
                  }

                  v51 -= 64;
                }

                while (v51 != v50);
                v52 = v46[5];
              }

              v46[6] = v50;
              operator delete(v52);
              v5 = v90;
            }

            v59 = v46[2];
            if (v59)
            {
              v46[3] = v59;
              operator delete(v59);
            }

            v46 += 9;
          }

          while (v46 != v47);
        }

        v60 = __p;
        __p = v87;
        v92 = (v85 + 72);
        v95 = v60;
        v96 = v60;
        v93 = v97;
        if (v60)
        {
          operator delete(v60);
        }

        v4 = a3;
        v92 = (v85 + 72);
        v38 = *(a3 + 248);
        if (!v38)
        {
          goto LABEL_91;
        }
      }

      else
      {
        v34 = *(v11 + 1281);
        *(v16 + 2) = 0;
        *v16 = v34;
        *(v16 + 3) = 0;
        *(v16 + 4) = 0;
        v35 = v11[1283];
        v36 = v11[1284];
        if (v36 != v35)
        {
          if (0xAAAAAAAAAAAAAAABLL * ((v36 - v35) >> 3) <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          sub_1794();
        }

        *(v16 + 5) = 0;
        *(v16 + 6) = 0;
        *(v16 + 7) = 0;
        sub_7C0AEC(v16 + 5, v11[1286], v11[1287], (v11[1287] - v11[1286]) >> 6);
        *(v16 + 16) = *(v11 + 2578);
        v4 = a3;
        v5 = v90;
        v92 = v16 + 72;
        v38 = *(a3 + 248);
        if (!v38)
        {
          goto LABEL_91;
        }
      }

      v61 = *(v4 + 240);
      if (v61 < *v38)
      {
        *(v4 + 240) = v61 + 1;
        v62 = *&v38[2 * v61 + 2];
LABEL_92:
        sub_ECA330(v11 + 1281, v62, *&v37);
LABEL_93:
        v64 = 0x3795876FF3795877 * ((v11[139] - v11[138]) >> 3);
        if (v64 >= 1)
        {
          v65 = 0;
          v66 = v64 & 0x7FFFFFFF;
          do
          {
            v67 = sub_50EA30(v11 + 138, v65);
            v68 = sub_1950D4C((*(*(v6 + 72) + 8 * v65 + 8) + 16), dword_278D0E8, 11, &off_2769CA8, 0);
            v69 = *(v67 + 2417);
            *(v68 + 4) |= 2u;
            *(v68 + 97) = v69;
            ++v65;
          }

          while (v66 != v65);
        }

        goto LABEL_6;
      }

LABEL_91:
      sub_14BE3A4(*(v4 + 232));
      v62 = sub_19593CC(v4 + 232, v63);
      goto LABEL_92;
    }

LABEL_3:
    ++v5;
  }

  while (v5 != v83);
  v70 = __p;
  if (__p)
  {
    v71 = v92;
    v72 = __p;
    if (v92 != __p)
    {
      do
      {
        v73 = *(v71 - 4);
        if (v73)
        {
          v74 = *(v71 - 3);
          v75 = *(v71 - 4);
          if (v74 != v73)
          {
            do
            {
              v77 = *(v74 - 48);
              if (v77)
              {
                v78 = *(v74 - 40);
                v76 = *(v74 - 48);
                if (v78 != v77)
                {
                  v79 = *(v74 - 40);
                  do
                  {
                    v81 = *(v79 - 24);
                    v79 -= 24;
                    v80 = v81;
                    if (v81)
                    {
                      *(v78 - 16) = v80;
                      operator delete(v80);
                    }

                    v78 = v79;
                  }

                  while (v79 != v77);
                  v76 = *(v74 - 48);
                }

                *(v74 - 40) = v77;
                operator delete(v76);
              }

              v74 -= 64;
            }

            while (v74 != v73);
            v75 = *(v71 - 4);
          }

          *(v71 - 3) = v73;
          operator delete(v75);
        }

        v82 = *(v71 - 7);
        if (v82)
        {
          *(v71 - 6) = v82;
          operator delete(v82);
        }

        v71 -= 72;
      }

      while (v71 != v70);
      v72 = __p;
    }

    v92 = v70;
    operator delete(v72);
  }
}

void sub_ED44E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a17)
  {
    sub_21E5364(&a18, a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_ED456C(uint64_t a1, unsigned int ***a2, char **a3, uint64_t a4)
{
  if (*a3 != a3[1])
  {
    v6 = sub_1950D4C((a4 + 16), dword_278D000, 11, &off_2769510, 0);
    v7 = *a2;
    v8 = a2[1];
    if (v7 != v8)
    {
      while ((sub_68D7D8(v7) & 1) == 0)
      {
        v7 += 976;
        if (v7 == v8)
        {
          v7 = v8;
          break;
        }
      }
    }

    v9 = *a3;
    v10 = v6[4];
    if (v10 && (v11 = *(v6 + 6), v11 < *v10))
    {
      *(v6 + 6) = v11 + 1;
      v12 = *&v10[2 * v11 + 2];
    }

    else
    {
      v13 = sub_12D00D4(v6[2]);
      v12 = sub_19593CC((v6 + 2), v13);
    }

    v14 = *v9 + -978307200.0;
    *(v12 + 16) |= 1u;
    *(v12 + 24) = v14;
    v15 = sub_68C850(v7);
    if (v15 != v9[1])
    {
      v15 = sub_68C850(v7);
    }

    if (v15 < 0)
    {
      v16 = -5;
    }

    else
    {
      v16 = 5;
    }

    *(v12 + 16) |= 2u;
    *(v12 + 32) = v15 / 10 + (((103 * (v16 + v15 % 10)) >> 15) & 1) + ((103 * (v16 + v15 % 10)) >> 10);
    v17 = (a3[1] - *a3) >> 3;
    if (v17 >= 2)
    {
      v18 = 0;
      v19 = v17 - 1;
      do
      {
        v28 = *a3;
        v29 = v6[4];
        if (v29 && (v30 = *(v6 + 6), v30 < *v29))
        {
          *(v6 + 6) = v30 + 1;
          v21 = *&v29[2 * v30 + 2];
        }

        else
        {
          v20 = sub_12D00D4(v6[2]);
          v21 = sub_19593CC((v6 + 2), v20);
        }

        v22 = v28[v18 + 2] + -978307200.0;
        v23 = *(v21 + 16);
        *(v21 + 16) = v23 | 1;
        *(v21 + 24) = v22;
        v24 = v28[v18 + 3];
        v25 = v24 / 10;
        v26 = v24 % 10;
        if (v24 < 0)
        {
          v27 = -5;
        }

        else
        {
          v27 = 5;
        }

        *(v21 + 16) = v23 | 3;
        *(v21 + 32) = v25 + (((103 * (v27 + v26)) >> 15) & 1) + ((103 * (v27 + v26)) >> 10);
        v18 += 2;
        --v19;
      }

      while (v19);
    }
  }
}

void sub_ED5BB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  v29 = *(v27 - 184);
  if (!v29)
  {
    sub_4AE168((v27 - 160));
    _Unwind_Resume(a1);
  }

  *(v27 - 176) = v29;
  operator delete(v29);
  sub_4AE168((v27 - 160));
  _Unwind_Resume(a1);
}

void sub_ED5D14(void *a1@<X1>, unsigned int a2@<W2>, unsigned int a3@<W3>, _DWORD *a4@<X4>, unsigned int *a5@<X5>, void *a6@<X8>)
{
  v12 = a3;
  sub_69CB14(a1);
  __p[1] = 0;
  v36 = 0;
  __p[0] = 0;
  v14 = v13[1];
  if (v14 != *v13)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v14 - *v13) >> 2) < 0x1555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  if (sub_4D1DC0(a1) - 1 == v12)
  {
    v15 = 0.0;
    if (!a3)
    {
      v15 = (1000000000 - sub_4D2138(a1));
    }

    v16 = sub_4D2140(a1);
    sub_2F4C8(__p, 0, a6, v15 / 1000000000.0, v16 / 1000000000.0);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    return;
  }

  if (a3)
  {
    v17 = (a1[138] + 2616 * a2);
    if (v17[10] != v12)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v24 = sub_4D2138(a1);
    sub_2F4C8(__p, 0, &v33, (1000000000 - v24) / 1000000000.0, 1.0);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    *__p = v33;
    v36 = v34;
    v17 = (a1[138] + 2616 * a2);
    if (v17[10] != v12)
    {
LABEL_11:
      if (v17[13] == v12)
      {
        goto LABEL_12;
      }

      goto LABEL_25;
    }
  }

  v25 = v17[11];
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

  *a4 = sub_4DE8CC(__p, (v26 + (((5243 * (v28 + v27)) >> 19) + ((5243 * (v28 + v27)) >> 31))), 0.1);
  if (v17[13] == v12)
  {
LABEL_12:
    v18 = v17[14];
    if (v18 == 0x7FFFFFFFFFFFFFFFLL || ((v19 = v18 / 100, v20 = v18 % 100, v18 < 0) ? (v21 = -50) : (v21 = 50), v22 = v19 + (((5243 * (v21 + v20)) >> 19) + ((5243 * (v21 + v20)) >> 31)), v22 < 1))
    {
      v23 = 0;
      *a5 = 0;
    }

    else
    {
      v23 = sub_4DE8CC(__p, v22, 0.1);
      *a5 = v23;
    }

    goto LABEL_27;
  }

LABEL_25:
  v23 = *a5;
LABEL_27:
  v29 = __p[1];
  v30 = 0xAAAAAAAAAAAAAAABLL * ((__p[1] - __p[0]) >> 2) - 1;
  v31 = v30 > v23 && v30 > *a4;
  v32 = -12;
  if (!v31)
  {
    v32 = 0;
  }

  *a6 = __p[0];
  a6[1] = &v29[v32];
  a6[2] = v36;
}

void sub_ED6064(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_ED60A0(double a1, uint64_t a2, void *a3, unsigned int a4)
{
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v4 = a3[1] - *a3;
  if (!v4)
  {
    return;
  }

  v7 = 0;
  v8 = 0;
  v27 = a4;
  v28 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 3);
  do
  {
    while ((*(sub_ED0948(a3, v8) + 16) & 1) != 0 || (*(sub_ED0948(a3, v8) + 17) & 1) != 0 || (*(sub_ED0948(a3, v8) + 18) & 1) != 0 || v8 == 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3) - 1)
    {
      v35 = v34;
      v30 = v8 + 1;
      v9 = v8 + 1 - v7;
      if (0xAAAAAAAAAAAAAAABLL * ((v36 - v34) >> 2) < v9)
      {
        if (v9 <= 0x1555555555555555)
        {
          operator new();
        }

        sub_1794();
      }

      v29 = v8;
      if (v7 <= v30)
      {
        v10 = v8 + 1;
      }

      else
      {
        v10 = v7;
      }

      v11 = v7;
      if (v30 > v7)
      {
        do
        {
          while (1)
          {
            v13 = sub_ED0948(a3, v11);
            v14 = v35;
            if (v35 >= v36)
            {
              break;
            }

            v12 = *v13;
            *(v35 + 2) = *(v13 + 8);
            *v14 = v12;
            v35 = v14 + 12;
            if (v10 == ++v11)
            {
              goto LABEL_29;
            }
          }

          v15 = v34;
          v16 = 0xAAAAAAAAAAAAAAABLL * ((v35 - v34) >> 2);
          v17 = v16 + 1;
          if (v16 + 1 > 0x1555555555555555)
          {
            sub_1794();
          }

          if (0x5555555555555556 * ((v36 - v34) >> 2) > v17)
          {
            v17 = 0x5555555555555556 * ((v36 - v34) >> 2);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v36 - v34) >> 2) >= 0xAAAAAAAAAAAAAAALL)
          {
            v18 = 0x1555555555555555;
          }

          else
          {
            v18 = v17;
          }

          if (v18)
          {
            if (v18 <= 0x1555555555555555)
            {
              operator new();
            }

            sub_1808();
          }

          v19 = 4 * ((v35 - v34) >> 2);
          v20 = *v13;
          *(v19 + 8) = *(v13 + 8);
          *v19 = v20;
          v21 = 12 * v16 + 12;
          v22 = (12 * v16 - (v14 - v15));
          memcpy((v19 - (v14 - v15)), v15, v14 - v15);
          v34 = v22;
          v35 = v21;
          v36 = 0;
          if (v15)
          {
            operator delete(v15);
          }

          v35 = v21;
          ++v11;
        }

        while (v10 != v11);
      }

LABEL_29:
      memset(__p, 0, sizeof(__p));
      sub_41DB4(&v34, v27, 0, 1, __p, &v32, a1);
      if (__p[0])
      {
        operator delete(__p[0]);
      }

      v23 = v33;
      if (v33)
      {
        v24 = 0;
        do
        {
          v25 = sub_ED0948(a3, v7);
          v26 = v32;
          *(v25 + 20) = (*(v32 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v24) & 1;
          ++v24;
          ++v7;
        }

        while (v23 != v24);
LABEL_36:
        operator delete(v26);
        goto LABEL_37;
      }

      v26 = v32;
      if (v32)
      {
        goto LABEL_36;
      }

LABEL_37:
      v7 = v29;
      v8 = v30;
      if (v30 == v28)
      {
        goto LABEL_40;
      }
    }

    ++v8;
  }

  while (v8 != v28);
LABEL_40:
  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }
}

void sub_ED6444(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_ED6954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_89FA8(va);
  _Unwind_Resume(a1);
}

void sub_ED6968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_89FA8(va);
  _Unwind_Resume(a1);
}

void sub_ED697C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_89FA8(va);
  _Unwind_Resume(a1);
}

void sub_ED6990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_89FA8(va);
  _Unwind_Resume(a1);
}

void sub_ED69A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_89FA8(va);
  _Unwind_Resume(a1);
}

void sub_ED69B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_89FA8(va);
  _Unwind_Resume(a1);
}

void sub_ED69CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_89FA8(va);
  _Unwind_Resume(a1);
}

void sub_ED69E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_89FA8(va);
  _Unwind_Resume(a1);
}

void sub_ED69F4(_BYTE *a1, void *a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_4D1DC0(a2);
  v9 = a2[1290];
  v10 = a2[1291];
  if (v9 != v10)
  {
    v11 = v8;
    v12 = v8 - 1;
    do
    {
      v13 = *(v9 + 8);
      if (v13 >= v11 || v13 == v12 && sub_4D2140(a2) < 0x3B9ACA00)
      {
        goto LABEL_3;
      }

      if (sub_683A0C(v9))
      {
        if (a1[16])
        {
          goto LABEL_16;
        }
      }

      else
      {
        if (!sub_445A90(v9))
        {
          if (!sub_683864(v9) && !sub_683854(v9) || a1[18] != 1)
          {
            goto LABEL_3;
          }

LABEL_16:
          std::to_string(&v36, a3);
          v14 = std::string::append(&v36, "_", 1uLL);
          v15 = *&v14->__r_.__value_.__l.__data_;
          v37.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
          *&v37.__r_.__value_.__l.__data_ = v15;
          v14->__r_.__value_.__l.__size_ = 0;
          v14->__r_.__value_.__r.__words[2] = 0;
          v14->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v35, a4);
          if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v16 = &v35;
          }

          else
          {
            v16 = v35.__r_.__value_.__r.__words[0];
          }

          if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v35.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v35.__r_.__value_.__l.__size_;
          }

          v18 = std::string::append(&v37, v16, size);
          v19 = *&v18->__r_.__value_.__l.__data_;
          v38.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
          *&v38.__r_.__value_.__l.__data_ = v19;
          v18->__r_.__value_.__l.__size_ = 0;
          v18->__r_.__value_.__r.__words[2] = 0;
          v18->__r_.__value_.__r.__words[0] = 0;
          v20 = std::string::append(&v38, "_", 1uLL);
          v21 = *&v20->__r_.__value_.__l.__data_;
          v39.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
          *&v39.__r_.__value_.__l.__data_ = v21;
          v20->__r_.__value_.__l.__size_ = 0;
          v20->__r_.__value_.__r.__words[2] = 0;
          v20->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v34, *(v9 + 8));
          if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v22 = &v34;
          }

          else
          {
            v22 = v34.__r_.__value_.__r.__words[0];
          }

          if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v23 = HIBYTE(v34.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v23 = v34.__r_.__value_.__l.__size_;
          }

          v24 = std::string::append(&v39, v22, v23);
          v25 = *&v24->__r_.__value_.__l.__data_;
          v41 = v24->__r_.__value_.__r.__words[2];
          v40 = v25;
          v24->__r_.__value_.__l.__size_ = 0;
          v24->__r_.__value_.__r.__words[2] = 0;
          v24->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v34.__r_.__value_.__l.__data_);
            if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_37;
            }

LABEL_30:
            if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_31;
            }

LABEL_38:
            operator delete(v38.__r_.__value_.__l.__data_);
            if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_39;
            }

LABEL_32:
            if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_33;
            }

LABEL_40:
            operator delete(v37.__r_.__value_.__l.__data_);
            if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_41;
            }

LABEL_34:
            if (*(v9 + 4) == 2)
            {
LABEL_42:
              v26 = SHIBYTE(v41);
              if ((SHIBYTE(v41) & 0x8000000000000000) != 0)
              {
                v26 = *(&v40 + 1);
                if ((v41 & 0x7FFFFFFFFFFFFFFFLL) - 1 - *(&v40 + 1) < 9)
                {
                  if (0x7FFFFFFFFFFFFFF7 - (v41 & 0x7FFFFFFFFFFFFFFFLL) < *(&v40 + 1) + 9 - ((v41 & 0x7FFFFFFFFFFFFFFFLL) - 1))
                  {
                    sub_3244();
                  }

LABEL_47:
                  operator new();
                }

                v27 = v40;
              }

              else
              {
                if ((SHIBYTE(v41) - 14) < 9)
                {
                  goto LABEL_47;
                }

                v27 = &v40;
              }

              v28 = v27 + v26;
              *v28 = 0x74756F5266664F5FLL;
              v28[8] = 101;
              v29 = v26 + 9;
              if (SHIBYTE(v41) < 0)
              {
                *(&v40 + 1) = v26 + 9;
              }

              else
              {
                HIBYTE(v41) = v29 & 0x7F;
              }

              *(v27 + v29) = 0;
            }
          }

          else
          {
            if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_30;
            }

LABEL_37:
            operator delete(v39.__r_.__value_.__l.__data_);
            if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_38;
            }

LABEL_31:
            if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_32;
            }

LABEL_39:
            operator delete(v35.__r_.__value_.__l.__data_);
            if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_40;
            }

LABEL_33:
            if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_34;
            }

LABEL_41:
            operator delete(v36.__r_.__value_.__l.__data_);
            if (*(v9 + 4) == 2)
            {
              goto LABEL_42;
            }
          }

          sub_ED6F30(a1, v9, &v40, a4, a5, a6);
          if (SHIBYTE(v41) < 0)
          {
            operator delete(v40);
          }

          goto LABEL_3;
        }

        if (a1[17])
        {
          goto LABEL_16;
        }
      }

LABEL_3:
      v9 += 104;
    }

    while (v9 != v10);
  }
}

void sub_ED6E30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (*(v46 - 105) < 0)
  {
    operator delete(*(v46 - 128));
  }

  _Unwind_Resume(a1);
}

void sub_ED6F30(uint64_t a1, uint64_t a2, const void **a3, int a4, uint64_t a5, uint64_t a6)
{
  if (sub_6834F4(a2))
  {
    v10 = *(a2 + 32);
    v11 = *(a2 + 40);
    if (v10 != v11)
    {
      v117 = a6;
      v118 = a5;
      v119 = *(a2 + 40);
      do
      {
        if (!sub_683140(v10))
        {
          goto LABEL_6;
        }

        v14 = *(a5 + 240);
        if (v14 && (v15 = *(a5 + 232), v15 < *v14))
        {
          *(a5 + 232) = v15 + 1;
          v16 = *&v14[2 * v15 + 2];
        }

        else
        {
          sub_14BE174(*(a5 + 224));
          v16 = sub_19593CC(a5 + 224, v17);
        }

        v18 = *(a2 + 4) != 0;
        *(v16 + 16) |= 0x20u;
        *(v16 + 76) = v18;
        v19 = sub_683530(a2);
        v20 = *(v16 + 16);
        if (v19)
        {
          *(v16 + 72) = *(a2 + 16);
          *(v16 + 88) = *(v10 + 22);
          v21 = *(v10 + 24);
          v20 |= 0x190u;
          *(v16 + 16) = v20;
          *(v16 + 84) = v21;
        }

        *(v16 + 16) = v20 | 0x40;
        *(v16 + 80) = a4;
        v22 = *(v10 + 16);
        if (v22 <= 2)
        {
          if (v22 == 1)
          {
            *(v16 + 16) = v20 | 0x44;
            *(v16 + 64) = 2;
            if (*(a3 + 23) >= 0)
            {
              v29 = *(a3 + 23);
            }

            else
            {
              v29 = a3[1];
            }

            if (v29 + 13 > 0x7FFFFFFFFFFFFFF7)
            {
              goto LABEL_256;
            }

            if (v29 + 13 >= 0x17)
            {
              operator new();
            }

            memset(&__p, 0, sizeof(__p));
            *(&__p.__r_.__value_.__s + 23) = v29 + 13;
            if (v29)
            {
              if (*(a3 + 23) >= 0)
              {
                v40 = a3;
              }

              else
              {
                v40 = *a3;
              }

              memmove(&__p, v40, v29);
            }

            strcpy(&__p + v29, "_TrafficLight");
            *(v16 + 16) |= 1u;
            v41 = *(v16 + 8);
            v42 = (v41 & 0xFFFFFFFFFFFFFFFCLL);
            if (v41)
            {
              v42 = *v42;
            }

            sub_194EA30((v16 + 48), &__p, v42);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
              v43 = *(a6 + 272);
              if (!v43)
              {
                goto LABEL_170;
              }
            }

            else
            {
              v43 = *(a6 + 272);
              if (!v43)
              {
LABEL_170:
                v77 = sub_14BE0EC(*(a6 + 256));
                v76 = sub_19593CC(a6 + 256, v77);
                goto LABEL_171;
              }
            }

            v75 = *(a6 + 264);
            if (v75 >= *v43)
            {
              goto LABEL_170;
            }

            *(a6 + 264) = v75 + 1;
            v76 = *&v43[2 * v75 + 2];
LABEL_171:
            if (*(a3 + 23) >= 0)
            {
              v78 = *(a3 + 23);
            }

            else
            {
              v78 = a3[1];
            }

            if (v78 + 13 > 0x7FFFFFFFFFFFFFF7)
            {
              goto LABEL_256;
            }

            if (v78 + 13 >= 0x17)
            {
              operator new();
            }

            memset(&__p, 0, sizeof(__p));
            *(&__p.__r_.__value_.__s + 23) = v78 + 13;
            v11 = v119;
            if (v78)
            {
              if (*(a3 + 23) >= 0)
              {
                v79 = a3;
              }

              else
              {
                v79 = *a3;
              }

              memmove(&__p, v79, v78);
            }

            a6 = v117;
            strcpy(&__p + v78, "_TrafficLight");
            *(v76 + 16) |= 1u;
            v80 = *(v76 + 8);
            v81 = (v80 & 0xFFFFFFFFFFFFFFFCLL);
            if (v80)
            {
              v81 = *v81;
            }

            sub_194EA30((v76 + 24), &__p, v81);
            a5 = v118;
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
              *(v76 + 16) |= 2u;
              v83 = *(v76 + 32);
              if (!v83)
              {
                goto LABEL_246;
              }
            }

            else
            {
              *(v76 + 16) |= 2u;
              v83 = *(v76 + 32);
              if (!v83)
              {
LABEL_246:
                v113 = *(v76 + 8);
                v114 = (v113 & 0xFFFFFFFFFFFFFFFCLL);
                if (v113)
                {
                  v114 = *v114;
                }

                v83 = sub_16F5828(v114);
                *(v76 + 32) = v83;
              }
            }

            sub_EC6D34((a2 + 20), v83, v82);
            *(v76 + 16) |= 4u;
            *(v76 + 40) = 1;
            goto LABEL_6;
          }

          if (v22 == 2)
          {
            *(v16 + 16) = v20 | 0x44;
            *(v16 + 64) = 2;
            if (*(a3 + 23) >= 0)
            {
              v25 = *(a3 + 23);
            }

            else
            {
              v25 = a3[1];
            }

            if (v25 + 9 > 0x7FFFFFFFFFFFFFF7)
            {
              goto LABEL_256;
            }

            if (v25 + 9 >= 0x17)
            {
              operator new();
            }

            memset(&__p, 0, sizeof(__p));
            *(&__p.__r_.__value_.__s + 23) = v25 + 9;
            if (v25)
            {
              if (*(a3 + 23) >= 0)
              {
                v50 = a3;
              }

              else
              {
                v50 = *a3;
              }

              memmove(&__p, v50, v25);
            }

            strcpy(&__p + v25, "_StopSign");
            *(v16 + 16) |= 1u;
            v51 = *(v16 + 8);
            v52 = (v51 & 0xFFFFFFFFFFFFFFFCLL);
            if (v51)
            {
              v52 = *v52;
            }

            sub_194EA30((v16 + 48), &__p, v52);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
              v53 = *(a6 + 272);
              if (!v53)
              {
                goto LABEL_224;
              }
            }

            else
            {
              v53 = *(a6 + 272);
              if (!v53)
              {
LABEL_224:
                v102 = sub_14BE0EC(*(a6 + 256));
                v101 = sub_19593CC(a6 + 256, v102);
                goto LABEL_225;
              }
            }

            v100 = *(a6 + 264);
            if (v100 >= *v53)
            {
              goto LABEL_224;
            }

            *(a6 + 264) = v100 + 1;
            v101 = *&v53[2 * v100 + 2];
LABEL_225:
            if (*(a3 + 23) >= 0)
            {
              v103 = *(a3 + 23);
            }

            else
            {
              v103 = a3[1];
            }

            if (v103 + 9 > 0x7FFFFFFFFFFFFFF7)
            {
              goto LABEL_256;
            }

            if (v103 + 9 >= 0x17)
            {
              operator new();
            }

            memset(&__p, 0, sizeof(__p));
            *(&__p.__r_.__value_.__s + 23) = v103 + 9;
            v11 = v119;
            if (v103)
            {
              if (*(a3 + 23) >= 0)
              {
                v104 = a3;
              }

              else
              {
                v104 = *a3;
              }

              memmove(&__p, v104, v103);
            }

            a6 = v117;
            strcpy(&__p + v103, "_StopSign");
            *(v101 + 16) |= 1u;
            v105 = *(v101 + 8);
            v106 = (v105 & 0xFFFFFFFFFFFFFFFCLL);
            if (v105)
            {
              v106 = *v106;
            }

            sub_194EA30((v101 + 24), &__p, v106);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
              *(v101 + 16) |= 2u;
              v108 = *(v101 + 32);
              if (!v108)
              {
                goto LABEL_251;
              }
            }

            else
            {
              *(v101 + 16) |= 2u;
              v108 = *(v101 + 32);
              if (!v108)
              {
LABEL_251:
                v115 = *(v101 + 8);
                v116 = (v115 & 0xFFFFFFFFFFFFFFFCLL);
                if (v115)
                {
                  v116 = *v116;
                }

                v108 = sub_16F5828(v116);
                *(v101 + 32) = v108;
              }
            }

            sub_EC6D34((a2 + 20), v108, v107);
            *(v101 + 16) |= 4u;
            *(v101 + 40) = 2;
            goto LABEL_6;
          }

          goto LABEL_6;
        }

        if (v22 != 3)
        {
          if (v22 != 4)
          {
            if (v22 != 5)
            {
              goto LABEL_6;
            }

            *(v16 + 16) = v20 | 0x44;
            *(v16 + 64) = 1;
            if (*(a3 + 23) >= 0)
            {
              v23 = *(a3 + 23);
            }

            else
            {
              v23 = a3[1];
            }

            if (byte_27BD1D7 >= 0)
            {
              v24 = byte_27BD1D7;
            }

            else
            {
              v24 = qword_27BD1C8;
            }

            if (v24 + v23 > 0x7FFFFFFFFFFFFFF7)
            {
              goto LABEL_256;
            }

            if (v24 + v23 > 0x16)
            {
              operator new();
            }

            memset(&__p, 0, sizeof(__p));
            *(&__p.__r_.__value_.__s + 23) = v24 + v23;
            if (v23)
            {
              if (*(a3 + 23) >= 0)
              {
                v44 = a3;
              }

              else
              {
                v44 = *a3;
              }

              memmove(&__p, v44, v23);
            }

            v45 = &__p + v23;
            if (v24)
            {
              if (byte_27BD1D7 >= 0)
              {
                v46 = &qword_27BD1C0;
              }

              else
              {
                v46 = qword_27BD1C0;
              }

              memmove(v45, v46, v24);
            }

            v45[v24] = 0;
            *(v16 + 16) |= 1u;
            v47 = *(v16 + 8);
            v48 = (v47 & 0xFFFFFFFFFFFFFFFCLL);
            if (v47)
            {
              v48 = *v48;
            }

            sub_194EA30((v16 + 48), &__p, v48);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
              v49 = *(a6 + 224);
              if (!v49)
              {
                goto LABEL_190;
              }
            }

            else
            {
              v49 = *(a6 + 224);
              if (!v49)
              {
LABEL_190:
                sub_14BE058(*(a6 + 208));
                v65 = sub_19593CC(a6 + 208, v85);
                goto LABEL_191;
              }
            }

            v84 = *(a6 + 216);
            if (v84 >= *v49)
            {
              goto LABEL_190;
            }

            *(a6 + 216) = v84 + 1;
            v65 = *&v49[2 * v84 + 2];
LABEL_191:
            v86 = sub_683938(a2);
            std::to_string(&__p, v86);
            *(v65 + 16) |= 2u;
            v87 = *(v65 + 8);
            v88 = (v87 & 0xFFFFFFFFFFFFFFFCLL);
            if (v87)
            {
              v88 = *v88;
            }

            sub_194EA30((v65 + 32), &__p, v88);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            v89 = *(a2 + 88) / 3.6;
            *(v65 + 16) |= 0x80u;
            *(v65 + 72) = v89;
            if (*(a3 + 23) >= 0)
            {
              v90 = *(a3 + 23);
            }

            else
            {
              v90 = a3[1];
            }

            if (byte_27BD1D7 >= 0)
            {
              v91 = byte_27BD1D7;
            }

            else
            {
              v91 = qword_27BD1C8;
            }

            if (v91 + v90 > 0x7FFFFFFFFFFFFFF7)
            {
LABEL_256:
              sub_3244();
            }

            if (v91 + v90 > 0x16)
            {
              operator new();
            }

            memset(&__p, 0, sizeof(__p));
            *(&__p.__r_.__value_.__s + 23) = v91 + v90;
            a5 = v118;
            if (v90)
            {
              if (*(a3 + 23) >= 0)
              {
                v92 = a3;
              }

              else
              {
                v92 = *a3;
              }

              memmove(&__p, v92, v90);
            }

            v93 = &__p + v90;
            if (v91)
            {
              if (byte_27BD1D7 >= 0)
              {
                v94 = &qword_27BD1C0;
              }

              else
              {
                v94 = qword_27BD1C0;
              }

              memmove(v93, v94, v91);
            }

            v93[v91] = 0;
            *(v65 + 16) |= 1u;
            v95 = *(v65 + 8);
            v96 = (v95 & 0xFFFFFFFFFFFFFFFCLL);
            if (v95)
            {
              v96 = *v96;
            }

            sub_194EA30((v65 + 24), &__p, v96);
            v11 = v119;
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            v97 = *(v65 + 16);
            *(v65 + 64) = 1;
            *(v65 + 16) = v97 | 0x24;
            v12 = *(v65 + 40);
            if (!v12)
            {
LABEL_219:
              v98 = *(v65 + 8);
              v99 = (v98 & 0xFFFFFFFFFFFFFFFCLL);
              if (v98)
              {
                v99 = *v99;
              }

              v12 = sub_16F5828(v99);
              *(v65 + 40) = v12;
            }

LABEL_5:
            sub_EC6D34((a2 + 20), v12, v13);
            goto LABEL_6;
          }

          *(v16 + 16) = v20 | 0x44;
          *(v16 + 64) = 1;
          if (*(a3 + 23) >= 0)
          {
            v27 = *(a3 + 23);
          }

          else
          {
            v27 = a3[1];
          }

          if (byte_27BD1BF >= 0)
          {
            v28 = byte_27BD1BF;
          }

          else
          {
            v28 = qword_27BD1B0;
          }

          if (v28 + v27 > 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_256;
          }

          if (v28 + v27 > 0x16)
          {
            operator new();
          }

          memset(&__p, 0, sizeof(__p));
          *(&__p.__r_.__value_.__s + 23) = v28 + v27;
          if (v27)
          {
            if (*(a3 + 23) >= 0)
            {
              v34 = a3;
            }

            else
            {
              v34 = *a3;
            }

            memmove(&__p, v34, v27);
          }

          v35 = &__p + v27;
          if (v28)
          {
            if (byte_27BD1BF >= 0)
            {
              v36 = &qword_27BD1A8;
            }

            else
            {
              v36 = qword_27BD1A8;
            }

            memmove(v35, v36, v28);
          }

          v35[v28] = 0;
          *(v16 + 16) |= 1u;
          v37 = *(v16 + 8);
          v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
          if (v37)
          {
            v38 = *v38;
          }

          sub_194EA30((v16 + 48), &__p, v38);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
            v39 = *(a6 + 224);
            if (!v39)
            {
              goto LABEL_141;
            }
          }

          else
          {
            v39 = *(a6 + 224);
            if (!v39)
            {
LABEL_141:
              sub_14BE058(*(a6 + 208));
              v65 = sub_19593CC(a6 + 208, v66);
              goto LABEL_142;
            }
          }

          v64 = *(a6 + 216);
          if (v64 >= *v39)
          {
            goto LABEL_141;
          }

          *(a6 + 216) = v64 + 1;
          v65 = *&v39[2 * v64 + 2];
LABEL_142:
          if (*(a3 + 23) >= 0)
          {
            v67 = *(a3 + 23);
          }

          else
          {
            v67 = a3[1];
          }

          if (byte_27BD1BF >= 0)
          {
            v68 = byte_27BD1BF;
          }

          else
          {
            v68 = qword_27BD1B0;
          }

          if (v68 + v67 > 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_256;
          }

          if (v68 + v67 > 0x16)
          {
            operator new();
          }

          memset(&__p, 0, sizeof(__p));
          *(&__p.__r_.__value_.__s + 23) = v68 + v67;
          a5 = v118;
          if (v67)
          {
            if (*(a3 + 23) >= 0)
            {
              v69 = a3;
            }

            else
            {
              v69 = *a3;
            }

            memmove(&__p, v69, v67);
          }

          v70 = &__p + v67;
          if (v68)
          {
            if (byte_27BD1BF >= 0)
            {
              v71 = &qword_27BD1A8;
            }

            else
            {
              v71 = qword_27BD1A8;
            }

            memmove(v70, v71, v68);
          }

          v70[v68] = 0;
          *(v65 + 16) |= 1u;
          v72 = *(v65 + 8);
          v73 = (v72 & 0xFFFFFFFFFFFFFFFCLL);
          if (v72)
          {
            v73 = *v73;
          }

          sub_194EA30((v65 + 24), &__p, v73);
          v11 = v119;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v74 = *(v65 + 16);
          *(v65 + 64) = 5;
          *(v65 + 16) = v74 | 0x24;
          v12 = *(v65 + 40);
          if (!v12)
          {
            goto LABEL_219;
          }

          goto LABEL_5;
        }

        *(v16 + 16) = v20 | 0x44;
        *(v16 + 64) = 1;
        if (*(a3 + 23) >= 0)
        {
          v26 = *(a3 + 23);
        }

        else
        {
          v26 = a3[1];
        }

        if (v26 + 15 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_256;
        }

        if (v26 + 15 >= 0x17)
        {
          operator new();
        }

        memset(&__p, 0, sizeof(__p));
        *(&__p.__r_.__value_.__s + 23) = v26 + 15;
        if (v26)
        {
          if (*(a3 + 23) >= 0)
          {
            v30 = a3;
          }

          else
          {
            v30 = *a3;
          }

          memmove(&__p, v30, v26);
        }

        strcpy(&__p + v26, "_RedLightCamera");
        *(v16 + 16) |= 1u;
        v31 = *(v16 + 8);
        v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
        if (v31)
        {
          v32 = *v32;
        }

        sub_194EA30((v16 + 48), &__p, v32);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
          v33 = *(a6 + 224);
          if (!v33)
          {
            goto LABEL_119;
          }
        }

        else
        {
          v33 = *(a6 + 224);
          if (!v33)
          {
            goto LABEL_119;
          }
        }

        v54 = *(a6 + 216);
        if (v54 >= *v33)
        {
LABEL_119:
          sub_14BE058(*(a6 + 208));
          v55 = sub_19593CC(a6 + 208, v56);
          goto LABEL_120;
        }

        *(a6 + 216) = v54 + 1;
        v55 = *&v33[2 * v54 + 2];
LABEL_120:
        if (*(a3 + 23) >= 0)
        {
          v57 = *(a3 + 23);
        }

        else
        {
          v57 = a3[1];
        }

        if (v57 + 15 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_256;
        }

        if (v57 + 15 >= 0x17)
        {
          operator new();
        }

        memset(&__p, 0, sizeof(__p));
        *(&__p.__r_.__value_.__s + 23) = v57 + 15;
        v11 = v119;
        if (v57)
        {
          if (*(a3 + 23) >= 0)
          {
            v58 = a3;
          }

          else
          {
            v58 = *a3;
          }

          memmove(&__p, v58, v57);
        }

        a6 = v117;
        strcpy(&__p + v57, "_RedLightCamera");
        *(v55 + 16) |= 1u;
        v59 = *(v55 + 8);
        v60 = (v59 & 0xFFFFFFFFFFFFFFFCLL);
        if (v59)
        {
          v60 = *v60;
        }

        sub_194EA30((v55 + 24), &__p, v60);
        a5 = v118;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v62 = *(v55 + 16);
        *(v55 + 64) = 2;
        *(v55 + 16) = v62 | 0x24;
        v63 = *(v55 + 40);
        if (!v63)
        {
          v109 = *(v55 + 8);
          v110 = (v109 & 0xFFFFFFFFFFFFFFFCLL);
          if (v109)
          {
            v110 = *v110;
          }

          v111 = sub_16F5828(v110);
          *(v55 + 40) = v111;
          sub_EC6D34((a2 + 20), v111, v112);
          if (!sub_683530(a2))
          {
            goto LABEL_6;
          }

LABEL_244:
          *(v55 + 16) |= 0x20u;
          *(v55 + 64) = 5;
          goto LABEL_6;
        }

        sub_EC6D34((a2 + 20), v63, v61);
        if (sub_683530(a2))
        {
          goto LABEL_244;
        }

LABEL_6:
        v10 += 184;
      }

      while (v10 != v11);
    }
  }
}

void sub_ED7F4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_ED81D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_ED81FC(uint64_t *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = sub_3AF6B4(a2);
  v7 = 15;
  strcpy(v6, "ResponseBuilder");
  memset(v5, 0, sizeof(v5));
  v4 = sub_3AEC94(a2, v6, v5);
  sub_41D820(v4, v8);
  sub_EDDECC((a1 + 2), v8);
}

void sub_ED8360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  sub_5C010(&a18);
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_ED839C(uint64_t *a1@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
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
    v20 = sub_6910B0();
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
      sub_EDA720(a1, v43, 0, a3, v11);
    }

    sub_ED9234(a1, v8, v11);
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

    while (sub_4B8018(v71, v74, *(a3 + 40)) == 2)
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
      if (sub_EDEC10(__p[0], __p[1], v136.__locale_, locale, &__dst))
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
    sub_ED9690(a1[1], v131, a5);
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

  sub_ED99C8(a1, v131, a5);
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

  sub_ED9DC4(a1, v131, a5);
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
    sub_EEB678(__p, a3);
    v105 = -1056139499 * ((v131[1] - *v131) >> 7);
    if (v105 >= 1)
    {
      sub_EEB6AC(__p, *v131, *(*(a5 + 64) + 8));
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
          sub_EEB6AC(__p, &(*v131)[v112], *(*(a5 + 64) + v111));
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
              sub_EDC930(a1, v122, v114, v120++, v116, a5);
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
    sub_EA90C0(__p, a3);
    v123 = 0x4FBCDA3AC10C9715 * ((v131[1] - *v131) >> 7);
    if (v123 >= 1)
    {
      v124 = 0;
      v125 = v123 & 0x7FFFFFFF;
      v126 = 8;
      do
      {
        sub_EA9104(__p, &(*v131)[v124], *(*(a5 + 64) + v126));
        v124 += 976;
        v126 += 8;
        --v125;
      }

      while (v125);
    }
  }

  __p[0] = &off_26744C0;
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

void sub_ED9124(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a18 < 0)
  {
    operator delete(__p);
    sub_1959728(&a19);
    sub_1758FB8(a12);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a19);
  sub_1758FB8(a12);
  _Unwind_Resume(a1);
}

void sub_ED9198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_EDE384(va);
  sub_1758FB8(a12);
  _Unwind_Resume(a1);
}

void sub_ED91C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    sub_1758FB8(a12);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0xED9224);
}

void sub_ED91F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_EDE384(va);
  sub_1758FB8(a12);
  _Unwind_Resume(a1);
}

void sub_ED9234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 32) == 1)
  {
    v4 = sub_3B1D8C(*a1);
    v42 = 0;
    v43 = 0;
    v44 = 0;
    nullsub_1();
    v6 = *v5;
    v7 = v5[1];
    if (*v5 != v7)
    {
      do
      {
        if (!sub_69AE68(v6))
        {
          goto LABEL_4;
        }

        v8 = sub_73F54(v6);
        sub_2AD1B4(v4, *(v8 + 104), *(v8 + 112), &v30);
        v9 = v43;
        if (v43 >= v44)
        {
          v12 = v42;
          v13 = 0xAAAAAAAAAAAAAAABLL * ((v43 - v42) >> 2);
          v14 = v13 + 1;
          if (v13 + 1 > 0x1555555555555555)
          {
            sub_1794();
          }

          if (0x5555555555555556 * ((v44 - v42) >> 2) > v14)
          {
            v14 = 0x5555555555555556 * ((v44 - v42) >> 2);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v44 - v42) >> 2) >= 0xAAAAAAAAAAAAAAALL)
          {
            v15 = 0x1555555555555555;
          }

          else
          {
            v15 = v14;
          }

          if (v15)
          {
            if (v15 <= 0x1555555555555555)
            {
              operator new();
            }

            sub_1808();
          }

          v16 = 4 * ((v43 - v42) >> 2);
          *v16 = v37;
          *(v16 + 8) = v38;
          v17 = 12 * v13 + 12;
          v18 = (12 * v13 - (v9 - v12));
          memcpy((v16 - (v9 - v12)), v12, v9 - v12);
          v42 = v18;
          v43 = v17;
          v44 = 0;
          if (v12)
          {
            operator delete(v12);
          }

          v43 = v17;
          sub_99F0C(v41);
          v11 = __p;
          if (!__p)
          {
LABEL_8:
            if ((v36 & 0x80000000) == 0)
            {
              goto LABEL_9;
            }

            goto LABEL_31;
          }
        }

        else
        {
          v10 = v37;
          *(v43 + 2) = v38;
          *v9 = v10;
          v43 = v9 + 12;
          sub_99F0C(v41);
          v11 = __p;
          if (!__p)
          {
            goto LABEL_8;
          }
        }

        v19 = v40;
        if (v40 == v11)
        {
          v40 = v11;
          operator delete(v11);
          if ((v36 & 0x80000000) == 0)
          {
            goto LABEL_9;
          }
        }

        else
        {
          do
          {
            v20 = *(v19 - 1);
            v19 -= 3;
            if (v20 < 0)
            {
              operator delete(*v19);
            }
          }

          while (v19 != v11);
          v40 = v11;
          operator delete(__p);
          if ((v36 & 0x80000000) == 0)
          {
LABEL_9:
            if ((v34 & 0x80000000) == 0)
            {
              goto LABEL_10;
            }

            goto LABEL_32;
          }
        }

LABEL_31:
        operator delete(v35);
        if ((v34 & 0x80000000) == 0)
        {
LABEL_10:
          if (SHIBYTE(v32) < 0)
          {
            goto LABEL_33;
          }

          goto LABEL_4;
        }

LABEL_32:
        operator delete(v33);
        if (SHIBYTE(v32) < 0)
        {
LABEL_33:
          operator delete(v30);
        }

LABEL_4:
        v6 += 12656;
      }

      while (v6 != v7);
    }

    v30 = 0;
    v31 = 0;
    v32 = 0;
    BYTE7(v29[1]) = 17;
    strcpy(v29, "Charging Stations");
    sub_EAC188(&v30, &v42, v29, 0xFFFFFFFF, 0, 0, 0.0);
    if (SBYTE7(v29[1]) < 0)
    {
      operator delete(*&v29[0]);
    }

    sub_EAC680(&v30, v29);
    v22 = *(&v29[0] + 1);
    v21 = *&v29[0];
    if (*&v29[0] != *(&v29[0] + 1))
    {
      do
      {
        v23 = sub_1950FFC((a3 + 16), dword_278D070, 11, &off_2769C00, 0);
        sub_12CC584(v23, v21);
        v21 += 48;
      }

      while (v21 != v22);
      v21 = *&v29[0];
    }

    if (v21)
    {
      v24 = *(&v29[0] + 1);
      v25 = v21;
      if (*(&v29[0] + 1) != v21)
      {
        do
        {
          v24 = sub_12CBDFC(v24 - 48);
        }

        while (v24 != v21);
        v25 = *&v29[0];
      }

      *(&v29[0] + 1) = v21;
      operator delete(v25);
    }

    v26 = v30;
    if (!v30)
    {
      goto LABEL_55;
    }

    v27 = v31;
    v28 = v30;
    if (v31 == v30)
    {
LABEL_54:
      v31 = v26;
      operator delete(v28);
LABEL_55:
      if (v42)
      {
        v43 = v42;
        operator delete(v42);
      }

      return;
    }

    while (1)
    {
      if (*(v27 - 25) < 0)
      {
        operator delete(*(v27 - 6));
        if (*(v27 - 49) < 0)
        {
LABEL_52:
          operator delete(*(v27 - 9));
        }
      }

      else if (*(v27 - 49) < 0)
      {
        goto LABEL_52;
      }

      v27 -= 10;
      if (v27 == v26)
      {
        v28 = v30;
        goto LABEL_54;
      }
    }
  }
}

void sub_ED9618(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16)
{
  sub_D37F50(&a16);
  v18 = *(v16 - 112);
  if (v18)
  {
    *(v16 - 104) = v18;
    operator delete(v18);
  }

  _Unwind_Resume(a1);
}

void sub_ED9690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1950D4C((a3 + 16), dword_278D178, 11, &off_2769460, 0);
  v6 = *a2;
  v35 = *(a2 + 8);
  if (*a2 != v35)
  {
    v7 = v5;
    v34 = v5;
    while (1)
    {
      v8 = v7[4];
      if (v8 && (v9 = *(v7 + 6), v9 < *v8))
      {
        *(v7 + 6) = v9 + 1;
        v10 = *&v8[2 * v9 + 2];
      }

      else
      {
        v11 = sub_12CFE5C(v7[2]);
        v10 = sub_19593CC((v7 + 2), v11);
      }

      v36 = v6;
      v12 = sub_68C454(v6, 0);
      v13 = *(v12 + 1104);
      v14 = *(v12 + 1112);
      if (v13 != v14)
      {
        break;
      }

LABEL_3:
      v6 = v36 + 976;
      v7 = v34;
      if (v36 + 976 == v35)
      {
        return;
      }
    }

    v15 = v12;
    v16 = 0;
    while (1)
    {
      v18 = v16;
      if (*(v13 + 24) <= v16)
      {
        v20 = *(v10 + 16);
        v19 = v16;
      }

      else
      {
        v19 = v16;
        do
        {
          v21 = sub_4D1F50(v15, v19);
          v22 = sub_2B51D8(a1, *(v21 + 32) | ((*(v21 + 36) & 0x1FFFFFFF) << 32));
          v23 = (v22 - *v22);
          if (*v23 >= 0x1Du && (v24 = v23[14]) != 0)
          {
            v25 = *(v22 + v24);
          }

          else
          {
            v25 = 0;
          }

          if ((*(sub_4D1F50(v15, v19) + 39) & 0x20) != 0)
          {
            v26 = v25;
          }

          else
          {
            v26 = -v25;
          }

          v27 = *(v10 + 16);
          if (v27 == *(v10 + 20))
          {
            v20 = v27 + 1;
            sub_1959094((v10 + 16), v27 + 1);
            *(*(v10 + 24) + 8 * v27) = v26;
          }

          else
          {
            *(*(v10 + 24) + 8 * v27) = v26;
            v20 = v27 + 1;
          }

          *(v10 + 16) = v20;
          LODWORD(v16) = v16 + 1;
          v19 = v16;
          v18 = v16;
        }

        while (*(v13 + 24) > v16);
      }

      v16 = v19;
      if (v20)
      {
        v28 = v20 - 1;
      }

      else
      {
        v28 = 0;
      }

      v29 = *(v10 + 32);
      if (v29 == *(v10 + 36))
      {
        sub_1958E5C((v10 + 32), v29 + 1);
        *(*(v10 + 40) + 4 * v29) = v28;
        *(v10 + 32) = v29 + 1;
        if (v19)
        {
          goto LABEL_33;
        }
      }

      else
      {
        *(*(v10 + 40) + 4 * v29) = v28;
        *(v10 + 32) = v29 + 1;
        if (v19)
        {
          goto LABEL_33;
        }
      }

      v31 = *(v13 + 160);
      if ((v31 - 25) <= 0x3F && ((1 << (v31 - 25)) & 0x9000000000000001) != 0 || v31 == 17)
      {
        v30 = (1000000000 - sub_4D2138(v15));
        goto LABEL_39;
      }

LABEL_33:
      if (sub_4D1DC0(v15) == v18)
      {
        v30 = sub_4D2140(v15);
LABEL_39:
        v32 = v30 / 1000000000.0;
        v33 = *(v10 + 48);
        if (v33 != *(v10 + 52))
        {
          *(*(v10 + 56) + 4 * v33) = v32;
LABEL_44:
          v17 = v33 + 1;
          goto LABEL_11;
        }

        v17 = v33 + 1;
        sub_1958E5C((v10 + 48), v33 + 1);
        *(*(v10 + 56) + 4 * v33) = v32;
        goto LABEL_11;
      }

      v33 = *(v10 + 48);
      if (v33 != *(v10 + 52))
      {
        *(*(v10 + 56) + 4 * v33) = 1065353216;
        goto LABEL_44;
      }

      v17 = v33 + 1;
      sub_1958E5C((v10 + 48), v33 + 1);
      *(*(v10 + 56) + 4 * v33) = 1065353216;
LABEL_11:
      *(v10 + 48) = v17;
      v13 += 2616;
      if (v13 == v14)
      {
        goto LABEL_3;
      }
    }
  }
}

void sub_ED99C8(uint64_t a1, void *a2, uint64_t a3)
{
  *__p = 0u;
  *v53 = 0u;
  v54 = 1065353216;
  v3 = 0x4FBCDA3AC10C9715 * ((a2[1] - *a2) >> 7);
  if (v3 >= 1)
  {
    v5 = 0;
    v47 = v3 & 0x7FFFFFFF;
    do
    {
      v51 = *(*(a3 + 64) + 8 * v5 + 8);
      v48 = v5;
      nullsub_1();
      v8 = *v6;
      v7 = v6[1];
      v49 = v7;
      while (v8 != v7)
      {
        v9 = *(v8 + 7416);
        v50 = v8;
        for (i = *(v8 + 7424); v9 != i; v9 += 1120)
        {
          v11 = *(v9 + 71);
          if (v11 >= 0)
          {
            v12 = (v9 + 48);
          }

          else
          {
            v12 = *(v9 + 48);
          }

          if (v11 >= 0)
          {
            v13 = *(v9 + 71);
          }

          else
          {
            v13 = *(v9 + 56);
          }

          v14 = sub_AAD8(&v55, v12, v13);
          v15 = __p[1];
          if (__p[1])
          {
            v16 = v14;
            v17 = vcnt_s8(__p[1]);
            v17.i16[0] = vaddlv_u8(v17);
            if (v17.u32[0] > 1uLL)
            {
              v18 = v14;
              if (v14 >= __p[1])
              {
                v18 = v14 % __p[1];
              }
            }

            else
            {
              v18 = (__p[1] - 1) & v14;
            }

            v19 = *(__p[0] + v18);
            if (v19)
            {
              v20 = *v19;
              if (*v19)
              {
                v21 = *(v9 + 71);
                if (v21 >= 0)
                {
                  v22 = *(v9 + 71);
                }

                else
                {
                  v22 = *(v9 + 56);
                }

                if (v21 >= 0)
                {
                  v23 = (v9 + 48);
                }

                else
                {
                  v23 = *(v9 + 48);
                }

                if (v17.u32[0] < 2uLL)
                {
                  v24 = __p[1] - 1;
                  while (1)
                  {
                    v29 = v20[1];
                    if (v16 == v29)
                    {
                      v30 = *(v20 + 39);
                      v31 = v30;
                      if (v30 < 0)
                      {
                        v30 = v20[3];
                      }

                      if (v30 == v22)
                      {
                        v32 = v31 >= 0 ? (v20 + 2) : v20[2];
                        if (!memcmp(v32, v23, v22))
                        {
                          goto LABEL_58;
                        }
                      }
                    }

                    else if ((v29 & v24) != v18)
                    {
                      goto LABEL_53;
                    }

                    v20 = *v20;
                    if (!v20)
                    {
                      goto LABEL_53;
                    }
                  }
                }

                do
                {
                  v25 = v20[1];
                  if (v16 == v25)
                  {
                    v26 = *(v20 + 39);
                    v27 = v26;
                    if (v26 < 0)
                    {
                      v26 = v20[3];
                    }

                    if (v26 == v22)
                    {
                      v28 = v27 >= 0 ? (v20 + 2) : v20[2];
                      if (!memcmp(v28, v23, v22))
                      {
                        goto LABEL_58;
                      }
                    }
                  }

                  else
                  {
                    if (v25 >= v15)
                    {
                      v25 %= v15;
                    }

                    if (v25 != v18)
                    {
                      break;
                    }
                  }

                  v20 = *v20;
                }

                while (v20);
              }
            }
          }

LABEL_53:
          v33 = *(a3 + 104);
          v55 = (v9 + 48);
          sub_EDE7E0(__p, (v9 + 48), &unk_229EB70, &v55)[5] = v33;
          v35 = *(a3 + 112);
          if (v35 && (v36 = *(a3 + 104), v36 < *v35))
          {
            *(a3 + 104) = v36 + 1;
            v37 = *&v35[2 * v36 + 2];
          }

          else
          {
            v38 = sub_14BDE5C(*(a3 + 96));
            v37 = sub_19593CC(a3 + 96, v38);
          }

          sub_EC6F6C(v9, v37, 0, v34);
LABEL_58:
          v55 = (v9 + 48);
          v39 = *(sub_EDE7E0(__p, (v9 + 48), &unk_229EB70, &v55) + 10);
          v40 = *(v9 + 464);
          v41 = v40 / 100;
          v42 = v40 % 100;
          if (v40 < 0)
          {
            v43 = -50;
          }

          else
          {
            v43 = 50;
          }

          sub_ECA76C(v39, v41 + ((5243 * (v43 + v42)) >> 19) + ((5243 * (v43 + v42)) >> 31), v51);
        }

        v8 = v50 + 12656;
        v7 = v49;
      }

      v5 = v48 + 1;
    }

    while (v48 + 1 != v47);
    v44 = v53[0];
    if (v53[0])
    {
      do
      {
        v46 = *v44;
        if (*(v44 + 39) < 0)
        {
          operator delete(v44[2]);
        }

        operator delete(v44);
        v44 = v46;
      }

      while (v46);
    }
  }

  v45 = __p[0];
  __p[0] = 0;
  if (v45)
  {
    operator delete(v45);
  }
}

void sub_ED9D98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_23D9C(va);
  _Unwind_Resume(a1);
}

void sub_ED9DB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_23D9C(va);
  _Unwind_Resume(a1);
}

void sub_ED9DC4(uint64_t a1, void *a2, uint64_t a3)
{
  __p = 0;
  v92 = 0;
  v93 = 0;
  v3 = 0x4FBCDA3AC10C9715 * ((a2[1] - *a2) >> 7);
  if (v3 < 1)
  {
    return;
  }

  v4 = a3;
  v5 = 0;
  v83 = v3 & 0x7FFFFFFF;
  do
  {
    v6 = *(*(v4 + 64) + 8 * v5 + 8);
    v89 = (*a2 + 7808 * v5);
    nullsub_1();
    v8 = v7[1] - *v7;
    if (v8)
    {
      v9 = 0;
      v88 = 0x5DDB1ADCB91F64A7 * (v8 >> 4);
      v90 = v5;
      while (1)
      {
        v10 = sub_68C454(v89, v9);
        v11 = v10;
        v12 = v10[1281];
        v13 = v10[1282];
        if (v12 != 0x7FFFFFFFFFFFFFFFLL && v13 != 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

LABEL_6:
        if (++v9 == v88)
        {
          goto LABEL_3;
        }
      }

      v15 = __p;
      v16 = v92;
      if (__p == v92)
      {
        v21 = __p;
LABEL_45:
        if (v21 != v92)
        {
          v32 = 954437177 * ((v21 - __p) >> 3);
          *(v6 + 44) |= 8u;
          *(v6 + 920) = v32;
          v5 = v90;
          goto LABEL_93;
        }
      }

      else
      {
        v17 = v10[1284];
        v18 = v10[1283];
        v19 = v10[1287];
        v20 = v10[1286];
        v21 = __p;
        do
        {
          if (v12 == *v21)
          {
            v22 = *(v21 + 2);
            if (v17 - v18 == *(v21 + 3) - v22)
            {
              if (v18 == v17)
              {
LABEL_24:
                v24 = *(v21 + 5);
                if (v19 - v20 == *(v21 + 6) - v24)
                {
                  if (v20 == v19)
                  {
LABEL_13:
                    if (v13 == *(v21 + 1))
                    {
                      goto LABEL_45;
                    }
                  }

                  else
                  {
                    v25 = v11[1286];
                    while (*v25 == *v24)
                    {
                      if (*(v25 + 4) != *(v24 + 4))
                      {
                        break;
                      }

                      if (*(v25 + 8) != *(v24 + 8))
                      {
                        break;
                      }

                      if (*(v25 + 12) != *(v24 + 12))
                      {
                        break;
                      }

                      v27 = *(v25 + 16);
                      v26 = *(v25 + 24);
                      v28 = *(v24 + 16);
                      if (v26 - v27 != *(v24 + 24) - v28)
                      {
                        break;
                      }

                      for (; v27 != v26; v28 += 24)
                      {
                        v30 = *v27;
                        v29 = *(v27 + 8);
                        v31 = *v28;
                        if ((v29 - *v27) != (*(v28 + 8) - *v28))
                        {
                          goto LABEL_14;
                        }

                        if (v30 != v29)
                        {
                          while (*v30 == *v31 && v30[1] == v31[1] && v30[2] == v31[2])
                          {
                            v30 += 3;
                            v31 += 3;
                            if (v30 == v29)
                            {
                              goto LABEL_39;
                            }
                          }

                          goto LABEL_14;
                        }

LABEL_39:
                        v27 += 24;
                      }

                      if (*(v25 + 40) != *(v24 + 40) || *(v25 + 48) != *(v24 + 48))
                      {
                        break;
                      }

                      v25 += 64;
                      v24 += 64;
                      if (v25 == v19)
                      {
                        goto LABEL_13;
                      }
                    }
                  }
                }
              }

              else
              {
                v23 = v11[1283];
                while (*v23 == *v22 && *(v23 + 4) == *(v22 + 4) && *(v23 + 8) == *(v22 + 8) && *(v23 + 16) == *(v22 + 16))
                {
                  v23 += 24;
                  v22 += 24;
                  if (v23 == v17)
                  {
                    goto LABEL_24;
                  }
                }
              }
            }
          }

LABEL_14:
          v21 += 72;
        }

        while (v21 != v92);
      }

      v33 = 0x8E38E38E38E38E39 * ((v92 - __p) >> 3);
      *(v6 + 44) |= 8u;
      *(v6 + 920) = v33;
      if (v16 >= v93)
      {
        if (v33 + 1 > 0x38E38E38E38E38ELL)
        {
          sub_1794();
        }

        v39 = 0x8E38E38E38E38E39 * ((v93 - v15) >> 3);
        v40 = 2 * v39;
        if (2 * v39 <= v33 + 1)
        {
          v40 = v33 + 1;
        }

        if (v39 >= 0x1C71C71C71C71C7)
        {
          v41 = 0x38E38E38E38E38ELL;
        }

        else
        {
          v41 = v40;
        }

        p_p = &__p;
        if (v41)
        {
          if (v41 <= 0x38E38E38E38E38ELL)
          {
            operator new();
          }

          sub_1808();
        }

        v42 = 72 * v33;
        v94 = 0;
        v95 = 72 * v33;
        v96 = 72 * v33;
        v97 = 0;
        v43 = *(v11 + 1281);
        *&dword_10[18 * v33] = 0;
        *v42 = v43;
        *(v42 + 24) = 0;
        *(v42 + 32) = 0;
        v44 = v11[1283];
        v45 = v11[1284];
        if (v45 != v44)
        {
          if (0xAAAAAAAAAAAAAAABLL * ((v45 - v44) >> 3) <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          sub_1794();
        }

        *&stru_20.segname[72 * v33] = 0;
        *&stru_20.segname[72 * v33 + 8] = 0;
        *&stru_20.segname[72 * v33 + 16] = 0;
        sub_7C0AEC((v42 + 40), v11[1286], v11[1287], (v11[1287] - v11[1286]) >> 6);
        *(&stru_20.vmsize + 18 * v33) = *(v11 + 2578);
        v85 = v96;
        v46 = __p;
        v47 = v92;
        v87 = (v95 + __p - v92);
        v5 = v90;
        if (__p != v92)
        {
          v48 = __p;
          v49 = (v95 + __p - v92);
          do
          {
            *v49 = *v48;
            *(v49 + 3) = 0;
            *(v49 + 4) = 0;
            *(v49 + 2) = 0;
            *(v49 + 1) = v48[1];
            *(v49 + 4) = *(v48 + 4);
            *(v48 + 2) = 0;
            *(v48 + 3) = 0;
            *(v48 + 4) = 0;
            *(v49 + 5) = 0;
            *(v49 + 6) = 0;
            *(v49 + 7) = 0;
            v37 = *(v48 + 40);
            *(v49 + 40) = v37;
            *(v49 + 7) = *(v48 + 7);
            *(v48 + 5) = 0;
            *(v48 + 6) = 0;
            *(v48 + 7) = 0;
            *(v49 + 16) = *(v48 + 16);
            v48 = (v48 + 72);
            v49 += 72;
          }

          while (v48 != v47);
          do
          {
            v50 = v46[5];
            if (v50)
            {
              v51 = v46[6];
              v52 = v46[5];
              if (v51 != v50)
              {
                do
                {
                  v54 = *(v51 - 48);
                  if (v54)
                  {
                    v55 = *(v51 - 40);
                    v53 = *(v51 - 48);
                    if (v55 != v54)
                    {
                      v56 = *(v51 - 40);
                      do
                      {
                        v58 = *(v56 - 24);
                        v56 -= 24;
                        v57 = v58;
                        if (v58)
                        {
                          *(v55 - 16) = v57;
                          operator delete(v57);
                        }

                        v55 = v56;
                      }

                      while (v56 != v54);
                      v53 = *(v51 - 48);
                    }

                    *(v51 - 40) = v54;
                    operator delete(v53);
                  }

                  v51 -= 64;
                }

                while (v51 != v50);
                v52 = v46[5];
              }

              v46[6] = v50;
              operator delete(v52);
              v5 = v90;
            }

            v59 = v46[2];
            if (v59)
            {
              v46[3] = v59;
              operator delete(v59);
            }

            v46 += 9;
          }

          while (v46 != v47);
        }

        v60 = __p;
        __p = v87;
        v92 = (v85 + 72);
        v95 = v60;
        v96 = v60;
        v93 = v97;
        if (v60)
        {
          operator delete(v60);
        }

        v4 = a3;
        v92 = (v85 + 72);
        v38 = *(a3 + 248);
        if (!v38)
        {
          goto LABEL_91;
        }
      }

      else
      {
        v34 = *(v11 + 1281);
        *(v16 + 2) = 0;
        *v16 = v34;
        *(v16 + 3) = 0;
        *(v16 + 4) = 0;
        v35 = v11[1283];
        v36 = v11[1284];
        if (v36 != v35)
        {
          if (0xAAAAAAAAAAAAAAABLL * ((v36 - v35) >> 3) <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          sub_1794();
        }

        *(v16 + 5) = 0;
        *(v16 + 6) = 0;
        *(v16 + 7) = 0;
        sub_7C0AEC(v16 + 5, v11[1286], v11[1287], (v11[1287] - v11[1286]) >> 6);
        *(v16 + 16) = *(v11 + 2578);
        v4 = a3;
        v5 = v90;
        v92 = v16 + 72;
        v38 = *(a3 + 248);
        if (!v38)
        {
          goto LABEL_91;
        }
      }

      v61 = *(v4 + 240);
      if (v61 < *v38)
      {
        *(v4 + 240) = v61 + 1;
        v62 = *&v38[2 * v61 + 2];
LABEL_92:
        sub_ECA330(v11 + 1281, v62, *&v37);
LABEL_93:
        v64 = 0x3795876FF3795877 * ((v11[139] - v11[138]) >> 3);
        if (v64 >= 1)
        {
          v65 = 0;
          v66 = v64 & 0x7FFFFFFF;
          do
          {
            v67 = sub_50EA30(v11 + 138, v65);
            v68 = sub_1950D4C((*(*(v6 + 72) + 8 * v65 + 8) + 16), dword_278D0E8, 11, &off_2769CA8, 0);
            v69 = *(v67 + 2417);
            *(v68 + 4) |= 2u;
            *(v68 + 97) = v69;
            ++v65;
          }

          while (v66 != v65);
        }

        goto LABEL_6;
      }

LABEL_91:
      sub_14BE3A4(*(v4 + 232));
      v62 = sub_19593CC(v4 + 232, v63);
      goto LABEL_92;
    }

LABEL_3:
    ++v5;
  }

  while (v5 != v83);
  v70 = __p;
  if (__p)
  {
    v71 = v92;
    v72 = __p;
    if (v92 != __p)
    {
      do
      {
        v73 = *(v71 - 4);
        if (v73)
        {
          v74 = *(v71 - 3);
          v75 = *(v71 - 4);
          if (v74 != v73)
          {
            do
            {
              v77 = *(v74 - 48);
              if (v77)
              {
                v78 = *(v74 - 40);
                v76 = *(v74 - 48);
                if (v78 != v77)
                {
                  v79 = *(v74 - 40);
                  do
                  {
                    v81 = *(v79 - 24);
                    v79 -= 24;
                    v80 = v81;
                    if (v81)
                    {
                      *(v78 - 16) = v80;
                      operator delete(v80);
                    }

                    v78 = v79;
                  }

                  while (v79 != v77);
                  v76 = *(v74 - 48);
                }

                *(v74 - 40) = v77;
                operator delete(v76);
              }

              v74 -= 64;
            }

            while (v74 != v73);
            v75 = *(v71 - 4);
          }

          *(v71 - 3) = v73;
          operator delete(v75);
        }

        v82 = *(v71 - 7);
        if (v82)
        {
          *(v71 - 6) = v82;
          operator delete(v82);
        }

        v71 -= 72;
      }

      while (v71 != v70);
      v72 = __p;
    }

    v92 = v70;
    operator delete(v72);
  }
}

void sub_EDA698(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a17)
  {
    sub_21E5364(&a18, a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_EDBAF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  v29 = *(v27 - 184);
  if (!v29)
  {
    sub_4AE168((v27 - 160));
    _Unwind_Resume(a1);
  }

  *(v27 - 176) = v29;
  operator delete(v29);
  sub_4AE168((v27 - 160));
  _Unwind_Resume(a1);
}

void sub_EDBC50(void *a1@<X1>, unsigned int a2@<W2>, unsigned int a3@<W3>, _DWORD *a4@<X4>, unsigned int *a5@<X5>, void *a6@<X8>)
{
  v12 = a3;
  sub_69E8D8(a1);
  __p[1] = 0;
  v36 = 0;
  __p[0] = 0;
  v14 = v13[1];
  if (v14 != *v13)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v14 - *v13) >> 2) < 0x1555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  if (sub_4D1DC0(a1) - 1 == v12)
  {
    v15 = 0.0;
    if (!a3)
    {
      v15 = (1000000000 - sub_4D2138(a1));
    }

    v16 = sub_4D2140(a1);
    sub_2F4C8(__p, 0, a6, v15 / 1000000000.0, v16 / 1000000000.0);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    return;
  }

  if (a3)
  {
    v17 = (a1[138] + 2616 * a2);
    if (v17[10] != v12)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v24 = sub_4D2138(a1);
    sub_2F4C8(__p, 0, &v33, (1000000000 - v24) / 1000000000.0, 1.0);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    *__p = v33;
    v36 = v34;
    v17 = (a1[138] + 2616 * a2);
    if (v17[10] != v12)
    {
LABEL_11:
      if (v17[13] == v12)
      {
        goto LABEL_12;
      }

      goto LABEL_25;
    }
  }

  v25 = v17[11];
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

  *a4 = sub_4DE8CC(__p, (v26 + (((5243 * (v28 + v27)) >> 19) + ((5243 * (v28 + v27)) >> 31))), 0.1);
  if (v17[13] == v12)
  {
LABEL_12:
    v18 = v17[14];
    if (v18 == 0x7FFFFFFFFFFFFFFFLL || ((v19 = v18 / 100, v20 = v18 % 100, v18 < 0) ? (v21 = -50) : (v21 = 50), v22 = v19 + (((5243 * (v21 + v20)) >> 19) + ((5243 * (v21 + v20)) >> 31)), v22 < 1))
    {
      v23 = 0;
      *a5 = 0;
    }

    else
    {
      v23 = sub_4DE8CC(__p, v22, 0.1);
      *a5 = v23;
    }

    goto LABEL_27;
  }

LABEL_25:
  v23 = *a5;
LABEL_27:
  v29 = __p[1];
  v30 = 0xAAAAAAAAAAAAAAABLL * ((__p[1] - __p[0]) >> 2) - 1;
  v31 = v30 > v23 && v30 > *a4;
  v32 = -12;
  if (!v31)
  {
    v32 = 0;
  }

  *a6 = __p[0];
  a6[1] = &v29[v32];
  a6[2] = v36;
}

void sub_EDBFA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_EDBFDC(double a1, uint64_t a2, void *a3, unsigned int a4)
{
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v4 = a3[1] - *a3;
  if (!v4)
  {
    return;
  }

  v7 = 0;
  v8 = 0;
  v27 = a4;
  v28 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 3);
  do
  {
    while ((*(sub_ED0948(a3, v8) + 16) & 1) != 0 || (*(sub_ED0948(a3, v8) + 17) & 1) != 0 || (*(sub_ED0948(a3, v8) + 18) & 1) != 0 || v8 == 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3) - 1)
    {
      v35 = v34;
      v30 = v8 + 1;
      v9 = v8 + 1 - v7;
      if (0xAAAAAAAAAAAAAAABLL * ((v36 - v34) >> 2) < v9)
      {
        if (v9 <= 0x1555555555555555)
        {
          operator new();
        }

        sub_1794();
      }

      v29 = v8;
      if (v7 <= v30)
      {
        v10 = v8 + 1;
      }

      else
      {
        v10 = v7;
      }

      v11 = v7;
      if (v30 > v7)
      {
        do
        {
          while (1)
          {
            v13 = sub_ED0948(a3, v11);
            v14 = v35;
            if (v35 >= v36)
            {
              break;
            }

            v12 = *v13;
            *(v35 + 2) = *(v13 + 8);
            *v14 = v12;
            v35 = v14 + 12;
            if (v10 == ++v11)
            {
              goto LABEL_29;
            }
          }

          v15 = v34;
          v16 = 0xAAAAAAAAAAAAAAABLL * ((v35 - v34) >> 2);
          v17 = v16 + 1;
          if (v16 + 1 > 0x1555555555555555)
          {
            sub_1794();
          }

          if (0x5555555555555556 * ((v36 - v34) >> 2) > v17)
          {
            v17 = 0x5555555555555556 * ((v36 - v34) >> 2);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v36 - v34) >> 2) >= 0xAAAAAAAAAAAAAAALL)
          {
            v18 = 0x1555555555555555;
          }

          else
          {
            v18 = v17;
          }

          if (v18)
          {
            if (v18 <= 0x1555555555555555)
            {
              operator new();
            }

            sub_1808();
          }

          v19 = 4 * ((v35 - v34) >> 2);
          v20 = *v13;
          *(v19 + 8) = *(v13 + 8);
          *v19 = v20;
          v21 = 12 * v16 + 12;
          v22 = (12 * v16 - (v14 - v15));
          memcpy((v19 - (v14 - v15)), v15, v14 - v15);
          v34 = v22;
          v35 = v21;
          v36 = 0;
          if (v15)
          {
            operator delete(v15);
          }

          v35 = v21;
          ++v11;
        }

        while (v10 != v11);
      }

LABEL_29:
      memset(__p, 0, sizeof(__p));
      sub_41DB4(&v34, v27, 0, 1, __p, &v32, a1);
      if (__p[0])
      {
        operator delete(__p[0]);
      }

      v23 = v33;
      if (v33)
      {
        v24 = 0;
        do
        {
          v25 = sub_ED0948(a3, v7);
          v26 = v32;
          *(v25 + 20) = (*(v32 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v24) & 1;
          ++v24;
          ++v7;
        }

        while (v23 != v24);
LABEL_36:
        operator delete(v26);
        goto LABEL_37;
      }

      v26 = v32;
      if (v32)
      {
        goto LABEL_36;
      }

LABEL_37:
      v7 = v29;
      v8 = v30;
      if (v30 == v28)
      {
        goto LABEL_40;
      }
    }

    ++v8;
  }

  while (v8 != v28);
LABEL_40:
  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }
}

void sub_EDC380(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_EDC890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_89FA8(va);
  _Unwind_Resume(a1);
}

void sub_EDC8A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_89FA8(va);
  _Unwind_Resume(a1);
}

void sub_EDC8B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_89FA8(va);
  _Unwind_Resume(a1);
}

void sub_EDC8CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_89FA8(va);
  _Unwind_Resume(a1);
}

void sub_EDC8E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_89FA8(va);
  _Unwind_Resume(a1);
}

void sub_EDC8F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_89FA8(va);
  _Unwind_Resume(a1);
}

void sub_EDC908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_89FA8(va);
  _Unwind_Resume(a1);
}

void sub_EDC91C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_89FA8(va);
  _Unwind_Resume(a1);
}

void sub_EDC930(_BYTE *a1, void *a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_4D1DC0(a2);
  v9 = a2[1290];
  v10 = a2[1291];
  if (v9 != v10)
  {
    v11 = v8;
    v12 = v8 - 1;
    do
    {
      v13 = *(v9 + 8);
      if (v13 >= v11 || v13 == v12 && sub_4D2140(a2) < 0x3B9ACA00)
      {
        goto LABEL_3;
      }

      if (sub_683A0C(v9))
      {
        if (a1[16])
        {
          goto LABEL_16;
        }
      }

      else
      {
        if (!sub_445A90(v9))
        {
          if (!sub_683864(v9) && !sub_683854(v9) || a1[18] != 1)
          {
            goto LABEL_3;
          }

LABEL_16:
          std::to_string(&v36, a3);
          v14 = std::string::append(&v36, "_", 1uLL);
          v15 = *&v14->__r_.__value_.__l.__data_;
          v37.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
          *&v37.__r_.__value_.__l.__data_ = v15;
          v14->__r_.__value_.__l.__size_ = 0;
          v14->__r_.__value_.__r.__words[2] = 0;
          v14->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v35, a4);
          if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v16 = &v35;
          }

          else
          {
            v16 = v35.__r_.__value_.__r.__words[0];
          }

          if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v35.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v35.__r_.__value_.__l.__size_;
          }

          v18 = std::string::append(&v37, v16, size);
          v19 = *&v18->__r_.__value_.__l.__data_;
          v38.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
          *&v38.__r_.__value_.__l.__data_ = v19;
          v18->__r_.__value_.__l.__size_ = 0;
          v18->__r_.__value_.__r.__words[2] = 0;
          v18->__r_.__value_.__r.__words[0] = 0;
          v20 = std::string::append(&v38, "_", 1uLL);
          v21 = *&v20->__r_.__value_.__l.__data_;
          v39.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
          *&v39.__r_.__value_.__l.__data_ = v21;
          v20->__r_.__value_.__l.__size_ = 0;
          v20->__r_.__value_.__r.__words[2] = 0;
          v20->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v34, *(v9 + 8));
          if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v22 = &v34;
          }

          else
          {
            v22 = v34.__r_.__value_.__r.__words[0];
          }

          if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v23 = HIBYTE(v34.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v23 = v34.__r_.__value_.__l.__size_;
          }

          v24 = std::string::append(&v39, v22, v23);
          v25 = *&v24->__r_.__value_.__l.__data_;
          v41 = v24->__r_.__value_.__r.__words[2];
          v40 = v25;
          v24->__r_.__value_.__l.__size_ = 0;
          v24->__r_.__value_.__r.__words[2] = 0;
          v24->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v34.__r_.__value_.__l.__data_);
            if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_37;
            }

LABEL_30:
            if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_31;
            }

LABEL_38:
            operator delete(v38.__r_.__value_.__l.__data_);
            if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_39;
            }

LABEL_32:
            if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_33;
            }

LABEL_40:
            operator delete(v37.__r_.__value_.__l.__data_);
            if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_41;
            }

LABEL_34:
            if (*(v9 + 4) == 2)
            {
LABEL_42:
              v26 = SHIBYTE(v41);
              if ((SHIBYTE(v41) & 0x8000000000000000) != 0)
              {
                v26 = *(&v40 + 1);
                if ((v41 & 0x7FFFFFFFFFFFFFFFLL) - 1 - *(&v40 + 1) < 9)
                {
                  if (0x7FFFFFFFFFFFFFF7 - (v41 & 0x7FFFFFFFFFFFFFFFLL) < *(&v40 + 1) + 9 - ((v41 & 0x7FFFFFFFFFFFFFFFLL) - 1))
                  {
                    sub_3244();
                  }

LABEL_47:
                  operator new();
                }

                v27 = v40;
              }

              else
              {
                if ((SHIBYTE(v41) - 14) < 9)
                {
                  goto LABEL_47;
                }

                v27 = &v40;
              }

              v28 = v27 + v26;
              *v28 = 0x74756F5266664F5FLL;
              v28[8] = 101;
              v29 = v26 + 9;
              if (SHIBYTE(v41) < 0)
              {
                *(&v40 + 1) = v26 + 9;
              }

              else
              {
                HIBYTE(v41) = v29 & 0x7F;
              }

              *(v27 + v29) = 0;
            }
          }

          else
          {
            if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_30;
            }

LABEL_37:
            operator delete(v39.__r_.__value_.__l.__data_);
            if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_38;
            }

LABEL_31:
            if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_32;
            }

LABEL_39:
            operator delete(v35.__r_.__value_.__l.__data_);
            if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_40;
            }

LABEL_33:
            if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_34;
            }

LABEL_41:
            operator delete(v36.__r_.__value_.__l.__data_);
            if (*(v9 + 4) == 2)
            {
              goto LABEL_42;
            }
          }

          sub_EDCE6C(a1, v9, &v40, a4, a5, a6);
          if (SHIBYTE(v41) < 0)
          {
            operator delete(v40);
          }

          goto LABEL_3;
        }

        if (a1[17])
        {
          goto LABEL_16;
        }
      }

LABEL_3:
      v9 += 104;
    }

    while (v9 != v10);
  }
}

void sub_EDCD6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (*(v46 - 105) < 0)
  {
    operator delete(*(v46 - 128));
  }

  _Unwind_Resume(a1);
}

void sub_EDCE6C(uint64_t a1, uint64_t a2, const void **a3, int a4, uint64_t a5, uint64_t a6)
{
  if (sub_6834F4(a2))
  {
    v10 = *(a2 + 32);
    v11 = *(a2 + 40);
    if (v10 != v11)
    {
      v117 = a6;
      v118 = a5;
      v119 = *(a2 + 40);
      do
      {
        if (!sub_683140(v10))
        {
          goto LABEL_6;
        }

        v14 = *(a5 + 240);
        if (v14 && (v15 = *(a5 + 232), v15 < *v14))
        {
          *(a5 + 232) = v15 + 1;
          v16 = *&v14[2 * v15 + 2];
        }

        else
        {
          sub_14BE174(*(a5 + 224));
          v16 = sub_19593CC(a5 + 224, v17);
        }

        v18 = *(a2 + 4) != 0;
        *(v16 + 16) |= 0x20u;
        *(v16 + 76) = v18;
        v19 = sub_683530(a2);
        v20 = *(v16 + 16);
        if (v19)
        {
          *(v16 + 72) = *(a2 + 16);
          *(v16 + 88) = *(v10 + 22);
          v21 = *(v10 + 24);
          v20 |= 0x190u;
          *(v16 + 16) = v20;
          *(v16 + 84) = v21;
        }

        *(v16 + 16) = v20 | 0x40;
        *(v16 + 80) = a4;
        v22 = *(v10 + 16);
        if (v22 <= 2)
        {
          if (v22 == 1)
          {
            *(v16 + 16) = v20 | 0x44;
            *(v16 + 64) = 2;
            if (*(a3 + 23) >= 0)
            {
              v29 = *(a3 + 23);
            }

            else
            {
              v29 = a3[1];
            }

            if (v29 + 13 > 0x7FFFFFFFFFFFFFF7)
            {
              goto LABEL_256;
            }

            if (v29 + 13 >= 0x17)
            {
              operator new();
            }

            memset(&__p, 0, sizeof(__p));
            *(&__p.__r_.__value_.__s + 23) = v29 + 13;
            if (v29)
            {
              if (*(a3 + 23) >= 0)
              {
                v40 = a3;
              }

              else
              {
                v40 = *a3;
              }

              memmove(&__p, v40, v29);
            }

            strcpy(&__p + v29, "_TrafficLight");
            *(v16 + 16) |= 1u;
            v41 = *(v16 + 8);
            v42 = (v41 & 0xFFFFFFFFFFFFFFFCLL);
            if (v41)
            {
              v42 = *v42;
            }

            sub_194EA30((v16 + 48), &__p, v42);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
              v43 = *(a6 + 272);
              if (!v43)
              {
                goto LABEL_170;
              }
            }

            else
            {
              v43 = *(a6 + 272);
              if (!v43)
              {
LABEL_170:
                v77 = sub_14BE0EC(*(a6 + 256));
                v76 = sub_19593CC(a6 + 256, v77);
                goto LABEL_171;
              }
            }

            v75 = *(a6 + 264);
            if (v75 >= *v43)
            {
              goto LABEL_170;
            }

            *(a6 + 264) = v75 + 1;
            v76 = *&v43[2 * v75 + 2];
LABEL_171:
            if (*(a3 + 23) >= 0)
            {
              v78 = *(a3 + 23);
            }

            else
            {
              v78 = a3[1];
            }

            if (v78 + 13 > 0x7FFFFFFFFFFFFFF7)
            {
              goto LABEL_256;
            }

            if (v78 + 13 >= 0x17)
            {
              operator new();
            }

            memset(&__p, 0, sizeof(__p));
            *(&__p.__r_.__value_.__s + 23) = v78 + 13;
            v11 = v119;
            if (v78)
            {
              if (*(a3 + 23) >= 0)
              {
                v79 = a3;
              }

              else
              {
                v79 = *a3;
              }

              memmove(&__p, v79, v78);
            }

            a6 = v117;
            strcpy(&__p + v78, "_TrafficLight");
            *(v76 + 16) |= 1u;
            v80 = *(v76 + 8);
            v81 = (v80 & 0xFFFFFFFFFFFFFFFCLL);
            if (v80)
            {
              v81 = *v81;
            }

            sub_194EA30((v76 + 24), &__p, v81);
            a5 = v118;
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
              *(v76 + 16) |= 2u;
              v83 = *(v76 + 32);
              if (!v83)
              {
                goto LABEL_246;
              }
            }

            else
            {
              *(v76 + 16) |= 2u;
              v83 = *(v76 + 32);
              if (!v83)
              {
LABEL_246:
                v113 = *(v76 + 8);
                v114 = (v113 & 0xFFFFFFFFFFFFFFFCLL);
                if (v113)
                {
                  v114 = *v114;
                }

                v83 = sub_16F5828(v114);
                *(v76 + 32) = v83;
              }
            }

            sub_EC6D34((a2 + 20), v83, v82);
            *(v76 + 16) |= 4u;
            *(v76 + 40) = 1;
            goto LABEL_6;
          }

          if (v22 == 2)
          {
            *(v16 + 16) = v20 | 0x44;
            *(v16 + 64) = 2;
            if (*(a3 + 23) >= 0)
            {
              v25 = *(a3 + 23);
            }

            else
            {
              v25 = a3[1];
            }

            if (v25 + 9 > 0x7FFFFFFFFFFFFFF7)
            {
              goto LABEL_256;
            }

            if (v25 + 9 >= 0x17)
            {
              operator new();
            }

            memset(&__p, 0, sizeof(__p));
            *(&__p.__r_.__value_.__s + 23) = v25 + 9;
            if (v25)
            {
              if (*(a3 + 23) >= 0)
              {
                v50 = a3;
              }

              else
              {
                v50 = *a3;
              }

              memmove(&__p, v50, v25);
            }

            strcpy(&__p + v25, "_StopSign");
            *(v16 + 16) |= 1u;
            v51 = *(v16 + 8);
            v52 = (v51 & 0xFFFFFFFFFFFFFFFCLL);
            if (v51)
            {
              v52 = *v52;
            }

            sub_194EA30((v16 + 48), &__p, v52);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
              v53 = *(a6 + 272);
              if (!v53)
              {
                goto LABEL_224;
              }
            }

            else
            {
              v53 = *(a6 + 272);
              if (!v53)
              {
LABEL_224:
                v102 = sub_14BE0EC(*(a6 + 256));
                v101 = sub_19593CC(a6 + 256, v102);
                goto LABEL_225;
              }
            }

            v100 = *(a6 + 264);
            if (v100 >= *v53)
            {
              goto LABEL_224;
            }

            *(a6 + 264) = v100 + 1;
            v101 = *&v53[2 * v100 + 2];
LABEL_225:
            if (*(a3 + 23) >= 0)
            {
              v103 = *(a3 + 23);
            }

            else
            {
              v103 = a3[1];
            }

            if (v103 + 9 > 0x7FFFFFFFFFFFFFF7)
            {
              goto LABEL_256;
            }

            if (v103 + 9 >= 0x17)
            {
              operator new();
            }

            memset(&__p, 0, sizeof(__p));
            *(&__p.__r_.__value_.__s + 23) = v103 + 9;
            v11 = v119;
            if (v103)
            {
              if (*(a3 + 23) >= 0)
              {
                v104 = a3;
              }

              else
              {
                v104 = *a3;
              }

              memmove(&__p, v104, v103);
            }

            a6 = v117;
            strcpy(&__p + v103, "_StopSign");
            *(v101 + 16) |= 1u;
            v105 = *(v101 + 8);
            v106 = (v105 & 0xFFFFFFFFFFFFFFFCLL);
            if (v105)
            {
              v106 = *v106;
            }

            sub_194EA30((v101 + 24), &__p, v106);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
              *(v101 + 16) |= 2u;
              v108 = *(v101 + 32);
              if (!v108)
              {
                goto LABEL_251;
              }
            }

            else
            {
              *(v101 + 16) |= 2u;
              v108 = *(v101 + 32);
              if (!v108)
              {
LABEL_251:
                v115 = *(v101 + 8);
                v116 = (v115 & 0xFFFFFFFFFFFFFFFCLL);
                if (v115)
                {
                  v116 = *v116;
                }

                v108 = sub_16F5828(v116);
                *(v101 + 32) = v108;
              }
            }

            sub_EC6D34((a2 + 20), v108, v107);
            *(v101 + 16) |= 4u;
            *(v101 + 40) = 2;
            goto LABEL_6;
          }

          goto LABEL_6;
        }

        if (v22 != 3)
        {
          if (v22 != 4)
          {
            if (v22 != 5)
            {
              goto LABEL_6;
            }

            *(v16 + 16) = v20 | 0x44;
            *(v16 + 64) = 1;
            if (*(a3 + 23) >= 0)
            {
              v23 = *(a3 + 23);
            }

            else
            {
              v23 = a3[1];
            }

            if (byte_27BD1D7 >= 0)
            {
              v24 = byte_27BD1D7;
            }

            else
            {
              v24 = qword_27BD1C8;
            }

            if (v24 + v23 > 0x7FFFFFFFFFFFFFF7)
            {
              goto LABEL_256;
            }

            if (v24 + v23 > 0x16)
            {
              operator new();
            }

            memset(&__p, 0, sizeof(__p));
            *(&__p.__r_.__value_.__s + 23) = v24 + v23;
            if (v23)
            {
              if (*(a3 + 23) >= 0)
              {
                v44 = a3;
              }

              else
              {
                v44 = *a3;
              }

              memmove(&__p, v44, v23);
            }

            v45 = &__p + v23;
            if (v24)
            {
              if (byte_27BD1D7 >= 0)
              {
                v46 = &qword_27BD1C0;
              }

              else
              {
                v46 = qword_27BD1C0;
              }

              memmove(v45, v46, v24);
            }

            v45[v24] = 0;
            *(v16 + 16) |= 1u;
            v47 = *(v16 + 8);
            v48 = (v47 & 0xFFFFFFFFFFFFFFFCLL);
            if (v47)
            {
              v48 = *v48;
            }

            sub_194EA30((v16 + 48), &__p, v48);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
              v49 = *(a6 + 224);
              if (!v49)
              {
                goto LABEL_190;
              }
            }

            else
            {
              v49 = *(a6 + 224);
              if (!v49)
              {
LABEL_190:
                sub_14BE058(*(a6 + 208));
                v65 = sub_19593CC(a6 + 208, v85);
                goto LABEL_191;
              }
            }

            v84 = *(a6 + 216);
            if (v84 >= *v49)
            {
              goto LABEL_190;
            }

            *(a6 + 216) = v84 + 1;
            v65 = *&v49[2 * v84 + 2];
LABEL_191:
            v86 = sub_683938(a2);
            std::to_string(&__p, v86);
            *(v65 + 16) |= 2u;
            v87 = *(v65 + 8);
            v88 = (v87 & 0xFFFFFFFFFFFFFFFCLL);
            if (v87)
            {
              v88 = *v88;
            }

            sub_194EA30((v65 + 32), &__p, v88);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            v89 = *(a2 + 88) / 3.6;
            *(v65 + 16) |= 0x80u;
            *(v65 + 72) = v89;
            if (*(a3 + 23) >= 0)
            {
              v90 = *(a3 + 23);
            }

            else
            {
              v90 = a3[1];
            }

            if (byte_27BD1D7 >= 0)
            {
              v91 = byte_27BD1D7;
            }

            else
            {
              v91 = qword_27BD1C8;
            }

            if (v91 + v90 > 0x7FFFFFFFFFFFFFF7)
            {
LABEL_256:
              sub_3244();
            }

            if (v91 + v90 > 0x16)
            {
              operator new();
            }

            memset(&__p, 0, sizeof(__p));
            *(&__p.__r_.__value_.__s + 23) = v91 + v90;
            a5 = v118;
            if (v90)
            {
              if (*(a3 + 23) >= 0)
              {
                v92 = a3;
              }

              else
              {
                v92 = *a3;
              }

              memmove(&__p, v92, v90);
            }

            v93 = &__p + v90;
            if (v91)
            {
              if (byte_27BD1D7 >= 0)
              {
                v94 = &qword_27BD1C0;
              }

              else
              {
                v94 = qword_27BD1C0;
              }

              memmove(v93, v94, v91);
            }

            v93[v91] = 0;
            *(v65 + 16) |= 1u;
            v95 = *(v65 + 8);
            v96 = (v95 & 0xFFFFFFFFFFFFFFFCLL);
            if (v95)
            {
              v96 = *v96;
            }

            sub_194EA30((v65 + 24), &__p, v96);
            v11 = v119;
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            v97 = *(v65 + 16);
            *(v65 + 64) = 1;
            *(v65 + 16) = v97 | 0x24;
            v12 = *(v65 + 40);
            if (!v12)
            {
LABEL_219:
              v98 = *(v65 + 8);
              v99 = (v98 & 0xFFFFFFFFFFFFFFFCLL);
              if (v98)
              {
                v99 = *v99;
              }

              v12 = sub_16F5828(v99);
              *(v65 + 40) = v12;
            }

LABEL_5:
            sub_EC6D34((a2 + 20), v12, v13);
            goto LABEL_6;
          }

          *(v16 + 16) = v20 | 0x44;
          *(v16 + 64) = 1;
          if (*(a3 + 23) >= 0)
          {
            v27 = *(a3 + 23);
          }

          else
          {
            v27 = a3[1];
          }

          if (byte_27BD1BF >= 0)
          {
            v28 = byte_27BD1BF;
          }

          else
          {
            v28 = qword_27BD1B0;
          }

          if (v28 + v27 > 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_256;
          }

          if (v28 + v27 > 0x16)
          {
            operator new();
          }

          memset(&__p, 0, sizeof(__p));
          *(&__p.__r_.__value_.__s + 23) = v28 + v27;
          if (v27)
          {
            if (*(a3 + 23) >= 0)
            {
              v34 = a3;
            }

            else
            {
              v34 = *a3;
            }

            memmove(&__p, v34, v27);
          }

          v35 = &__p + v27;
          if (v28)
          {
            if (byte_27BD1BF >= 0)
            {
              v36 = &qword_27BD1A8;
            }

            else
            {
              v36 = qword_27BD1A8;
            }

            memmove(v35, v36, v28);
          }

          v35[v28] = 0;
          *(v16 + 16) |= 1u;
          v37 = *(v16 + 8);
          v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
          if (v37)
          {
            v38 = *v38;
          }

          sub_194EA30((v16 + 48), &__p, v38);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
            v39 = *(a6 + 224);
            if (!v39)
            {
              goto LABEL_141;
            }
          }

          else
          {
            v39 = *(a6 + 224);
            if (!v39)
            {
LABEL_141:
              sub_14BE058(*(a6 + 208));
              v65 = sub_19593CC(a6 + 208, v66);
              goto LABEL_142;
            }
          }

          v64 = *(a6 + 216);
          if (v64 >= *v39)
          {
            goto LABEL_141;
          }

          *(a6 + 216) = v64 + 1;
          v65 = *&v39[2 * v64 + 2];
LABEL_142:
          if (*(a3 + 23) >= 0)
          {
            v67 = *(a3 + 23);
          }

          else
          {
            v67 = a3[1];
          }

          if (byte_27BD1BF >= 0)
          {
            v68 = byte_27BD1BF;
          }

          else
          {
            v68 = qword_27BD1B0;
          }

          if (v68 + v67 > 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_256;
          }

          if (v68 + v67 > 0x16)
          {
            operator new();
          }

          memset(&__p, 0, sizeof(__p));
          *(&__p.__r_.__value_.__s + 23) = v68 + v67;
          a5 = v118;
          if (v67)
          {
            if (*(a3 + 23) >= 0)
            {
              v69 = a3;
            }

            else
            {
              v69 = *a3;
            }

            memmove(&__p, v69, v67);
          }

          v70 = &__p + v67;
          if (v68)
          {
            if (byte_27BD1BF >= 0)
            {
              v71 = &qword_27BD1A8;
            }

            else
            {
              v71 = qword_27BD1A8;
            }

            memmove(v70, v71, v68);
          }

          v70[v68] = 0;
          *(v65 + 16) |= 1u;
          v72 = *(v65 + 8);
          v73 = (v72 & 0xFFFFFFFFFFFFFFFCLL);
          if (v72)
          {
            v73 = *v73;
          }

          sub_194EA30((v65 + 24), &__p, v73);
          v11 = v119;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v74 = *(v65 + 16);
          *(v65 + 64) = 5;
          *(v65 + 16) = v74 | 0x24;
          v12 = *(v65 + 40);
          if (!v12)
          {
            goto LABEL_219;
          }

          goto LABEL_5;
        }

        *(v16 + 16) = v20 | 0x44;
        *(v16 + 64) = 1;
        if (*(a3 + 23) >= 0)
        {
          v26 = *(a3 + 23);
        }

        else
        {
          v26 = a3[1];
        }

        if (v26 + 15 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_256;
        }

        if (v26 + 15 >= 0x17)
        {
          operator new();
        }

        memset(&__p, 0, sizeof(__p));
        *(&__p.__r_.__value_.__s + 23) = v26 + 15;
        if (v26)
        {
          if (*(a3 + 23) >= 0)
          {
            v30 = a3;
          }

          else
          {
            v30 = *a3;
          }

          memmove(&__p, v30, v26);
        }

        strcpy(&__p + v26, "_RedLightCamera");
        *(v16 + 16) |= 1u;
        v31 = *(v16 + 8);
        v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
        if (v31)
        {
          v32 = *v32;
        }

        sub_194EA30((v16 + 48), &__p, v32);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
          v33 = *(a6 + 224);
          if (!v33)
          {
            goto LABEL_119;
          }
        }

        else
        {
          v33 = *(a6 + 224);
          if (!v33)
          {
            goto LABEL_119;
          }
        }

        v54 = *(a6 + 216);
        if (v54 >= *v33)
        {
LABEL_119:
          sub_14BE058(*(a6 + 208));
          v55 = sub_19593CC(a6 + 208, v56);
          goto LABEL_120;
        }

        *(a6 + 216) = v54 + 1;
        v55 = *&v33[2 * v54 + 2];
LABEL_120:
        if (*(a3 + 23) >= 0)
        {
          v57 = *(a3 + 23);
        }

        else
        {
          v57 = a3[1];
        }

        if (v57 + 15 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_256;
        }

        if (v57 + 15 >= 0x17)
        {
          operator new();
        }

        memset(&__p, 0, sizeof(__p));
        *(&__p.__r_.__value_.__s + 23) = v57 + 15;
        v11 = v119;
        if (v57)
        {
          if (*(a3 + 23) >= 0)
          {
            v58 = a3;
          }

          else
          {
            v58 = *a3;
          }

          memmove(&__p, v58, v57);
        }

        a6 = v117;
        strcpy(&__p + v57, "_RedLightCamera");
        *(v55 + 16) |= 1u;
        v59 = *(v55 + 8);
        v60 = (v59 & 0xFFFFFFFFFFFFFFFCLL);
        if (v59)
        {
          v60 = *v60;
        }

        sub_194EA30((v55 + 24), &__p, v60);
        a5 = v118;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v62 = *(v55 + 16);
        *(v55 + 64) = 2;
        *(v55 + 16) = v62 | 0x24;
        v63 = *(v55 + 40);
        if (!v63)
        {
          v109 = *(v55 + 8);
          v110 = (v109 & 0xFFFFFFFFFFFFFFFCLL);
          if (v109)
          {
            v110 = *v110;
          }

          v111 = sub_16F5828(v110);
          *(v55 + 40) = v111;
          sub_EC6D34((a2 + 20), v111, v112);
          if (!sub_683530(a2))
          {
            goto LABEL_6;
          }

LABEL_244:
          *(v55 + 16) |= 0x20u;
          *(v55 + 64) = 5;
          goto LABEL_6;
        }

        sub_EC6D34((a2 + 20), v63, v61);
        if (sub_683530(a2))
        {
          goto LABEL_244;
        }

LABEL_6:
        v10 += 184;
      }

      while (v10 != v11);
    }
  }
}