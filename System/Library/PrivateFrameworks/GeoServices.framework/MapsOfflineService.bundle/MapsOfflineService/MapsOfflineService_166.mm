void sub_A11224()
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
  xmmword_27B3888 = 0u;
  unk_27B3898 = 0u;
  dword_27B38A8 = 1065353216;
  sub_3A9A34(&xmmword_27B3888, v0, v0);
  sub_3A9A34(&xmmword_27B3888, v3, v3);
  sub_3A9A34(&xmmword_27B3888, __p, __p);
  sub_3A9A34(&xmmword_27B3888, v9, v9);
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
    qword_27B3860 = 0;
    qword_27B3868 = 0;
    qword_27B3858 = 0;
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

void sub_A1146C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B3870)
  {
    qword_27B3878 = qword_27B3870;
    operator delete(qword_27B3870);
  }

  _Unwind_Resume(exception_object);
}

void *sub_A11518(void *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    do
    {
      result = sub_A11564(result, a2, v2);
      v2 += 412;
    }

    while (v2 != v3);
  }

  return result;
}

void *sub_A11564(uint64_t a1, void *a2, void *a3)
{
  sub_A21C90(v25, a3);
  while (1)
  {
    sub_A21CE8(v25, &v23);
    v4 = sub_A21B4C(v25, &v23);
    sub_98ED24(&v23);
    if (!v4)
    {
      return sub_98ED24(v25);
    }

    if (*sub_A21CB8(v25) != 2)
    {
      goto LABEL_2;
    }

    sub_A21834(v25, 0xFFFFFFFFFFFFFFFFLL, &v23);
    v5 = sub_A21CB8(v25);
    v6 = v23;
    v7 = v23;
    if (v23 != v24)
    {
      v7 = v23;
      while (**v7 != 4)
      {
        v7 += 8;
        if (v7 == v24)
        {
          v7 = v24;
          break;
        }
      }
    }

    v8 = *(*v7 + 56);
    v9 = a2[3];
    if (0xCF3CF3CF3CF3CF3DLL * ((a2[4] - v9) >> 3) <= v8)
    {
      sub_6FAB4();
    }

    v10 = v9 + 168 * v8;
    v11 = *(v10 + 104);
    if (v11 != -1)
    {
      v12 = a2[6];
      if (0x8E38E38E38E38E39 * ((a2[7] - v12) >> 4) <= v11)
      {
        sub_6FAB4();
      }

      v10 = v12 + 144 * v11;
      v13 = *(v10 + 104);
      if (v13 != -1)
      {
        v14 = a2[9];
        if (0xF0F0F0F0F0F0F0F1 * ((a2[10] - v14) >> 3) <= v13)
        {
          sub_6FAB4();
        }

        v10 = v14 + 136 * v13;
      }
    }

    v15 = *(v5 + 1008);
    if (v15 <= 5)
    {
      v16 = *(v10 + 88);
      if (((1 << v15) & 0x26) != 0)
      {
        v17 = *(v5 + 116);
        v18 = *(v5 + 768);
        if (v17 == 0x7FFFFFFF)
        {
          v17 = *(v5 + 40);
          v19 = v17;
        }

        else
        {
          v19 = *(v5 + 116 + 4 * (*(v5 + 120) != 0x7FFFFFFF));
        }
      }

      else
      {
        if (((1 << v15) & 0x18) == 0)
        {
          goto LABEL_27;
        }

        v20 = *(v5 + 488);
        if (v20 == *(v5 + 496))
        {
          goto LABEL_27;
        }

        v21 = a2 + 73;
        if (v15 != 4)
        {
          v21 = &v20[v20[1] != 0x7FFFFFFF];
        }

        v19 = *v21;
        v18 = *(v20 + 3);
        v17 = *v20;
      }

      *(v5 + 2176) = v18;
      *(v5 + 2184) = v17;
      *(v5 + 2188) = v19;
      *(v5 + 2192) = v16;
    }

LABEL_27:
    if (v6)
    {
      v24 = v6;
      operator delete(v6);
    }

LABEL_2:
    sub_A21708(v25);
  }
}

void sub_A117D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  if (__p)
  {
    operator delete(__p);
    sub_98ED24(&a29);
    _Unwind_Resume(a1);
  }

  sub_98ED24(&a29);
  _Unwind_Resume(a1);
}

void sub_A11838()
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
  xmmword_27B38E0 = 0u;
  *algn_27B38F0 = 0u;
  dword_27B3900 = 1065353216;
  sub_3A9A34(&xmmword_27B38E0, v0, v0);
  sub_3A9A34(&xmmword_27B38E0, v3, v3);
  sub_3A9A34(&xmmword_27B38E0, __p, __p);
  sub_3A9A34(&xmmword_27B38E0, v9, v9);
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
    qword_27B38B8 = 0;
    qword_27B38C0 = 0;
    qword_27B38B0 = 0;
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

void sub_A11A80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B38C8)
  {
    qword_27B38D0 = qword_27B38C8;
    operator delete(qword_27B38C8);
  }

  _Unwind_Resume(exception_object);
}

void *sub_A11B2C(void *result, uint64_t a2, uint64_t a3)
{
  *result = a3;
  result[1] = a2;
  return result;
}

void sub_A11B34(uint64_t **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 8);
  if (v5 == v4 || *(v4 - 5704) != 4)
  {
    goto LABEL_10;
  }

  while (*v5 != 2)
  {
    v5 += 5704;
    if (v5 == v4)
    {
      goto LABEL_10;
    }
  }

  if (v5 == v4)
  {
LABEL_10:
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 96) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 40) = -1;
    *(a3 + 43) = -1;
    *(a3 + 47) = 0;
    *(a3 + 55) = 0;
    *(a3 + 63) = 0;
    *(a3 + 71) = 0;
    *(a3 + 80) = 0;
    *(a3 + 88) = 0;
    *(a3 + 96) = 0;
    *(a3 + 104) = 0;
    return;
  }

  v8 = (*a1)[9] + 696 * *(v5 + 752);
  __p = 0;
  __dst = 0;
  v19 = 0;
  v9 = *(v8 + 576);
  v10 = *(v8 + 568);
  v11 = &v9[*(v8 + 624)] - &v10[*(v8 + 616)] + *(v8 + 600) - *(v8 + 592);
  if (v11)
  {
    if ((v11 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  sub_6CADD4(&__p, 0, v10, v9, v9 - v10);
  sub_6CADD4(&__p, __dst, *(v8 + 616), *(v8 + 624), *(v8 + 624) - *(v8 + 616));
  v12 = sub_6CADD4(&__p, __dst, *(v8 + 592), *(v8 + 600), *(v8 + 600) - *(v8 + 592));
  v13 = sub_A11DEC(v12, &__p);
  v14 = sub_9A9F28(a1[1], v5, v13);
  sub_55F1E8(a3, v14);
  v15 = *(a3 + 32);
  if (v15 > 2)
  {
    if (v15 == 3 || v15 == 4)
    {
      v16 = *(a3 + 23);
      if ((v16 & 0x80u) != 0)
      {
        v16 = *(a3 + 8);
      }

      if (v16)
      {
        goto LABEL_27;
      }
    }

    goto LABEL_26;
  }

  if (v15 != 1)
  {
    if (v15 == 2 && (*(a3 + 4) != -1 || *a3 != -1 || *(a3 + 8) != *(a3 + 16)))
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (*a3 == -1)
  {
LABEL_26:
    sub_5410A0(a3, v8 + 104);
  }

LABEL_27:
  if (sub_9BCEF8(a2))
  {
    *(a3 + 104) = 1;
  }

  if (__p)
  {
    __dst = __p;
    operator delete(__p);
  }
}

void sub_A11DB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A11DEC(uint64_t a1, unsigned __int8 **a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = *a2 + 1;
  if (*a2 != v3 && v4 != v3)
  {
    while (1)
    {
      v6 = *v4;
      if (v6 > 7)
      {
        v7 = 0;
        v8 = *v2;
        if (v8 <= 7)
        {
          goto LABEL_6;
        }

LABEL_13:
        if (++v4 == v3)
        {
          break;
        }
      }

      else
      {
        v7 = dword_22A5FE8[v6];
        v8 = *v2;
        if (v8 > 7)
        {
          goto LABEL_13;
        }

LABEL_6:
        if (v7 < dword_22A5FE8[v8])
        {
          v2 = v4;
        }

        if (++v4 == v3)
        {
          break;
        }
      }
    }
  }

  if (v2 == v3)
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

void sub_A11E84()
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
  xmmword_27B3938 = 0u;
  unk_27B3948 = 0u;
  dword_27B3958 = 1065353216;
  sub_3A9A34(&xmmword_27B3938, v0, v0);
  sub_3A9A34(&xmmword_27B3938, v3, v3);
  sub_3A9A34(&xmmword_27B3938, __p, __p);
  sub_3A9A34(&xmmword_27B3938, v9, v9);
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
    qword_27B3910 = 0;
    qword_27B3918 = 0;
    qword_27B3908 = 0;
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

void sub_A120CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B3920)
  {
    qword_27B3928 = qword_27B3920;
    operator delete(qword_27B3920);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_A12178(uint64_t *result)
{
  v1 = result[1];
  v2 = *result;
  if (*result != v1)
  {
    v3 = *(v2 + 16);
    if (*(v2 + 8) != v3 && *(v3 - 5704) == 4)
    {
      v4 = result;
      while (1)
      {
        v5 = *(v2 + 8);
        v6 = *(v2 + 16);
        if (v5 != v6)
        {
          while (*v5 != 2)
          {
            v5 += 1426;
            if (v5 == v6)
            {
              goto LABEL_5;
            }
          }
        }

        if (v5 != v6)
        {
          result = sub_B6E0(v5 + 36);
          if (!result)
          {
            break;
          }
        }

LABEL_5:
        v2 += 104;
        if (v2 == v1)
        {
          return result;
        }
      }

      v7 = *v4;
      v8 = v4[1];
      if (*v4 != v8)
      {
        do
        {
          v9 = *(v7 + 8);
          v10 = *(v7 + 16);
          if (v9 != v10)
          {
            while (*v9 != 2)
            {
              v9 += 5704;
              if (v9 == v10)
              {
                v9 = *(v7 + 16);
                break;
              }
            }
          }

          *(v9 + 744) = 1;
          v7 += 104;
        }

        while (v7 != v8);
      }
    }
  }

  return result;
}

void sub_A12274(void *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = v1 - *a1;
  v4 = 0x4EC4EC4EC4EC4EC5 * (v3 >> 3);
  if (v1 != *a1 && v4 >= 2)
  {
    v6 = *(v2 + 2);
    if (*(v2 + 1) != v6 && *(v6 - 5704) == 4)
    {
      if (v3 == 104)
      {
        v8 = 0;
      }

      else
      {
        v9 = 0;
        v10 = *a1;
        while (*v10)
        {
          v10 += 26;
          v9 -= 104;
          if (v10 == v1)
          {
            goto LABEL_13;
          }
        }

        v8 = 0x4EC4EC4EC4EC4EC5 * (-v9 >> 3);
        if (v4 <= v8)
        {
LABEL_13:
          sub_6FAB4();
        }
      }

      v11 = &v2[26 * v8];
      v13 = *(v11 + 1);
      v12 = *(v11 + 2);
      if (v13 != v12)
      {
        while (*v13 != 2)
        {
          v13 += 5704;
          if (v13 == v12)
          {
            v13 = v12;
            break;
          }
        }
      }

      if (*(v13 + 2104) & 1) != 0 || v1 != v2 && (*(v13 + 2144))
      {
        v14 = 0;
        do
        {
          if (v14 != v8)
          {
            v15 = *a1 + 104 * v14;
            v17 = *(v15 + 8);
            v16 = *(v15 + 16);
            if (v17 != v16)
            {
              while (*v17 != 2)
              {
                v17 += 5704;
                if (v17 == v16)
                {
                  v17 = v16;
                  break;
                }
              }
            }

            if (*(v17 + 2104) == *(v13 + 2104))
            {
              if (*(v17 + 2104))
              {
                *(v17 + 2024) = *(v13 + 2024);
                if (v17 == v13)
                {
                  *(v17 + 2056) = *(v13 + 2056);
                  *(v17 + 2064) = *(v13 + 2064);
                }

                else
                {
                  v18 = (v17 + 2032);
                  v19 = *(v13 + 2055);
                  if (*(v17 + 2055) < 0)
                  {
                    if (v19 >= 0)
                    {
                      v22 = (v13 + 2032);
                    }

                    else
                    {
                      v22 = *(v13 + 2032);
                    }

                    if (v19 >= 0)
                    {
                      v23 = *(v13 + 2055);
                    }

                    else
                    {
                      v23 = *(v13 + 2040);
                    }

                    sub_13B38(v18, v22, v23);
                  }

                  else if ((*(v13 + 2055) & 0x80) != 0)
                  {
                    sub_13A68(v18, *(v13 + 2032), *(v13 + 2040));
                  }

                  else
                  {
                    v20 = *(v13 + 2032);
                    *(v17 + 2048) = *(v13 + 2048);
                    *v18 = v20;
                  }

                  *(v17 + 2056) = *(v13 + 2056);
                  *(v17 + 2064) = *(v13 + 2064);
                  sub_31F64((v17 + 2072), *(v13 + 2072), *(v13 + 2080), (*(v13 + 2080) - *(v13 + 2072)) >> 3);
                }

                *(v17 + 2096) = *(v13 + 2096);
              }
            }

            else if (*(v17 + 2104))
            {
              v21 = *(v17 + 2072);
              if (v21)
              {
                *(v17 + 2080) = v21;
                operator delete(v21);
              }

              if (*(v17 + 2055) < 0)
              {
                operator delete(*(v17 + 2032));
              }

              *(v17 + 2104) = 0;
            }

            else
            {
              sub_9740B0(v17 + 2024, v13 + 2024);
              *(v17 + 2104) = 1;
            }

            sub_A01A58(v17 + 2112, (v13 + 2112));
          }

          ++v14;
        }

        while (v14 != v4);
      }
    }
  }
}

void sub_A124F0(uint64_t **a1@<X0>, uint64_t a2@<X1>, unsigned int *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a3[2] == 1 || *(a2 + 174) == 1)
  {
    goto LABEL_3;
  }

  v10 = sub_A0716C(a2);
  sub_A07024(a2, v25);
  v11 = v25[0];
  v12 = sub_A072BC(a2);
  v13 = sub_A07308(a2);
  if (sub_A07228(a2))
  {
    v14 = a3;
    v15 = *a3;
    if (v13 != 0x7FFFFFFF)
    {
      v15 = v13;
    }

    if ((v10 - v15) <= 10799)
    {
      v19 = *v12;
      v20 = *(v12 + 8);
      if (*v12 != v20)
      {
        v21 = v10;
        while (v21 - v10 <= 3600)
        {
          v22 = *v19;
          if (*v19 - v21 >= 10800)
          {
            v11 = (v21 - v10 + v11);
            v16 = 1;
            goto LABEL_20;
          }

          v19 += 3;
          v21 = v22;
          if (v19 == v20)
          {
            goto LABEL_3;
          }
        }
      }

      goto LABEL_3;
    }

    v16 = 0;
  }

  else
  {
    if (*v12 == *(v12 + 8))
    {
      goto LABEL_3;
    }

    v17 = **v12;
    if (v17 == 0x7FFFFFFF)
    {
      goto LABEL_3;
    }

    v18 = v17 - v10;
    if (v18 <= 10799)
    {
      goto LABEL_3;
    }

    v14 = a3;
    v11 = (v18 + v11);
    v16 = 2;
  }

LABEL_20:
  v26 = v16 | (v11 << 32);
  if (v11 == 0x7FFFFFFF)
  {
LABEL_3:
    *(a5 + 160) = 0;
    *(a5 + 128) = 0u;
    *(a5 + 144) = 0u;
    *(a5 + 96) = 0u;
    *(a5 + 112) = 0u;
    *(a5 + 64) = 0u;
    *(a5 + 80) = 0u;
    *(a5 + 32) = 0u;
    *(a5 + 48) = 0u;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    sub_64B998(a5);
    *(a5 + 160) = 0;
    return;
  }

  v23 = v14;
  v24 = sub_A07180(a2);
  sub_A126C8(a1, &v26, *(a2 + 168), (a2 + 144), (a2 + 96), v24, v23, a4, a5);
}

void sub_A126C8(uint64_t **a1@<X0>, _DWORD *a2@<X1>, int a3@<W2>, const char *a4@<X3>, const char *a5@<X4>, uint64_t a6@<X5>, unsigned int *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  memset(&__dst, 0, sizeof(__dst));
  memset(v25, 0, sizeof(v25));
  v16 = *a2;
  if (*a2 == 2)
  {
    *(&__dst.__r_.__value_.__s + 23) = 11;
    strcpy(&__dst, "Last_Until_");
    v25[23] = 19;
    qmemcpy(v25, "{NextDepartureTime}", 19);
    if (a3 == 1)
    {
      sub_9CBE3C(a6, &__p);
      if (v24 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if (v24 >= 0)
      {
        v18 = HIBYTE(v24);
      }

      else
      {
        v18 = v23;
      }

      std::string::append(&__dst, p_p, v18);
      if (SHIBYTE(v24) < 0)
      {
        operator delete(__p);
      }
    }

    else
    {
      qmemcpy(&__dst.__r_.__value_.__r.__words[1] + 3, "NoType", 6);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        __dst.__r_.__value_.__l.__size_ = 17;
      }

      else
      {
        *(&__dst.__r_.__value_.__s + 23) = 17;
      }

      __dst.__r_.__value_.__s.__data_[17] = 0;
    }
  }

  else if (v16 == 1)
  {
    sub_195A048(&__dst, "Advisory_ServiceGap_ServiceEnds", 0x1FuLL);
    v25[23] = 16;
    strcpy(v25, "{ServiceEndTime}");
  }

  else if (!v16)
  {
    sub_195A048(&__dst, "Advisory_ServiceBeginsMessage", 0x1DuLL);
    v25[23] = 19;
    strcpy(v25, "{NextDepartureTime}");
  }

  sub_64B998(a9);
  *(a9 + 160) = 1;
  sub_64E308(a9, v25, a2 + 1, a4, 0);
  __p = 0;
  v23 = 0;
  v24 = 0;
  sub_9CCC50(a2 + 1, a5, a4, a8, a7, &__dst, a9, &__p);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p);
  }

  v19 = sub_9274F4(*a1, &__dst);
  v20 = *(a9 + 8);
  if (v20 >= *(a9 + 16))
  {
    *(a9 + 8) = sub_1CEE8(a9, v19);
    if ((v25[23] & 0x80000000) != 0)
    {
      goto LABEL_29;
    }
  }

  else
  {
    if (*(v19 + 23) < 0)
    {
      sub_325C(*(a9 + 8), *v19, v19[1]);
    }

    else
    {
      v21 = *v19;
      *(v20 + 16) = v19[2];
      *v20 = v21;
    }

    *(a9 + 8) = v20 + 24;
    if ((v25[23] & 0x80000000) != 0)
    {
LABEL_29:
      operator delete(*v25);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_30;
      }

      return;
    }
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_30:
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_A12984(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_A12A00(uint64_t **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const char *a4@<X3>, unsigned int *a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X8>)
{
  if (a5[2] == 1 || *a2 != 2)
  {
    *(a8 + 160) = 0;
    *(a8 + 128) = 0u;
    *(a8 + 144) = 0u;
    *(a8 + 96) = 0u;
    *(a8 + 112) = 0u;
    *(a8 + 64) = 0u;
    *(a8 + 80) = 0u;
    *(a8 + 32) = 0u;
    *(a8 + 48) = 0u;
    *a8 = 0u;
    *(a8 + 16) = 0u;
    sub_64B998(a8);
    *(a8 + 160) = 0;
    return;
  }

  __p = 0;
  v23 = 0;
  v24 = 0;
  v10 = *(a2 + 440);
  v11 = *(a2 + 448);
  if (v11 != v10)
  {
    if ((0x6DB6DB6DB6DB6DB7 * ((v11 - v10) >> 2)) < 0x1555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  v25[2] = &__p;
  v12 = *(a2 + 472);
  if (*(a2 + 464) == v12)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = *(v12 - 28);
  }

  v14 = *(a2 + 116);
  if (v14 == 0x7FFFFFFF)
  {
    v15 = *(a3 + 40);
  }

  else
  {
    v15 = v14;
  }

  v16 = *(a2 + 1008);
  if (v16 != 4 && v16 != 2)
  {
    goto LABEL_28;
  }

  if (v13 == 0x7FFFFFFF)
  {
    v13 = *a5;
  }

  if ((v15 - v13) > 10799 && (v25[0] = v15 << 32, v15 != 0x7FFFFFFF))
  {
    v17 = *(a2 + 48);
    if (v17 == -1)
    {
      v17 = *(a2 + 56);
    }

    if (0xCF3CF3CF3CF3CF3DLL * ((a7[1] - *a7) >> 3) <= v17)
    {
      sub_6FAB4();
    }

    v18 = *a7 + 168 * v17;
    v19 = *(a2 + 752);
    v20 = a7[9];
    if (0x66FD0EB66FD0EB67 * ((a7[10] - v20) >> 3) <= v19)
    {
      sub_6FAB4();
    }

    sub_A126C8(a1, v25, 1, (v18 + 136), a4, *(v20 + 696 * v19 + 556), a5, a6, a8);
    v21 = __p;
    if (__p)
    {
      goto LABEL_26;
    }
  }

  else
  {
LABEL_28:
    *(a8 + 160) = 0;
    *(a8 + 128) = 0u;
    *(a8 + 144) = 0u;
    *(a8 + 96) = 0u;
    *(a8 + 112) = 0u;
    *(a8 + 64) = 0u;
    *(a8 + 80) = 0u;
    *(a8 + 32) = 0u;
    *(a8 + 48) = 0u;
    *a8 = 0u;
    *(a8 + 16) = 0u;
    sub_64B998(a8);
    *(a8 + 160) = 0;
    v21 = __p;
    if (__p)
    {
LABEL_26:
      v23 = v21;
      operator delete(v21);
    }
  }
}

void sub_A12D70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_A12D98(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *(*result + 8);
  v4 = *(*result + 16);
  if (v3 >= v4)
  {
    v6 = *v2;
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *v2) >> 2);
    v8 = v7 + 1;
    if (v7 + 1 > 0x1555555555555555)
    {
      sub_1794();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v6) >> 2);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0xAAAAAAAAAAAAAAALL)
    {
      v10 = 0x1555555555555555;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (v10 <= 0x1555555555555555)
      {
        operator new();
      }

      sub_1808();
    }

    v11 = result;
    v12 = 4 * ((v3 - *v2) >> 2);
    *v12 = *a2;
    *(v12 + 8) = *(a2 + 2);
    v13 = 12 * v7 + 12;
    v14 = 12 * v7 - (v3 - v6);
    memcpy((v12 - (v3 - v6)), v6, v3 - v6);
    *v2 = v14;
    *(v2 + 8) = v13;
    *(v2 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }

    result = v11;
    *(v2 + 8) = v13;
  }

  else
  {
    v5 = *a2;
    *(v3 + 8) = *(a2 + 2);
    *v3 = v5;
    *(v2 + 8) = v3 + 12;
  }

  return result;
}

void sub_A12EF0()
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
  xmmword_27B39C0 = 0u;
  *algn_27B39D0 = 0u;
  dword_27B39E0 = 1065353216;
  sub_3A9A34(&xmmword_27B39C0, v0, v0);
  sub_3A9A34(&xmmword_27B39C0, v3, v3);
  sub_3A9A34(&xmmword_27B39C0, __p, __p);
  sub_3A9A34(&xmmword_27B39C0, v9, v9);
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
    qword_27B3968 = 0;
    qword_27B3970 = 0;
    qword_27B3960 = 0;
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

void sub_A131C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B3978)
  {
    qword_27B3980 = qword_27B3978;
    operator delete(qword_27B3978);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_A1328C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = a3;
  result[1] = a2;
  result[2] = a4;
  return result;
}

void sub_A13298(uint64_t a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = a2[94];
  v6 = *(*a1 + 72);
  if (0x66FD0EB66FD0EB67 * ((*(*a1 + 80) - v6) >> 3) <= v5)
  {
    sub_6FAB4();
  }

  *(a4 + 80) = 0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 88) = -1;
  *(a4 + 91) = -1;
  *(a4 + 95) = 0;
  *(a4 + 111) = 0;
  *(a4 + 103) = 0;
  *(a4 + 119) = 0;
  *(a4 + 136) = 0;
  *(a4 + 144) = 0;
  *(a4 + 128) = 0;
  *(a4 + 152) = 0;
  *(a4 + 192) = 0;
  *(a4 + 203) = -1;
  *(a4 + 200) = -1;
  *(a4 + 215) = 0;
  *(a4 + 207) = 0;
  *(a4 + 231) = 0;
  *(a4 + 223) = 0;
  *(a4 + 240) = 0;
  *(a4 + 248) = 0;
  *(a4 + 264) = 0;
  *(a4 + 256) = 0;
  v10 = sub_9A9F28(*(a1 + 8), a2, 7);
  v11 = v6 + 696 * v5;
  if (*(*(a1 + 16) + 1444) < 2u)
  {
    goto LABEL_22;
  }

  v12 = v10;
  v13 = v10[8];
  if (v13 > 2)
  {
    if (v13 == 3 || v13 == 4)
    {
      v16 = *(v10 + 23);
      if ((v16 & 0x80u) != 0)
      {
        v16 = *(v10 + 1);
      }

      v15 = v16 == 0;
      goto LABEL_15;
    }

LABEL_22:
    if (a2[275] == a2[276])
    {
      v22 = *(v11 + 616);
      v23 = *(v11 + 624);
      while (v22 != v23)
      {
        v25 = sub_9A9F28(*(a1 + 8), a2, *v22);
        v26 = *(a4 + 8);
        if (v26 >= *(a4 + 16))
        {
          v24 = sub_9A6FB4(a4, v25);
        }

        else
        {
          sub_55F1E8(*(a4 + 8), v25);
          v24 = v26 + 112;
        }

        *(a4 + 8) = v24;
        ++v22;
      }

      v27 = *(v11 + 592);
      v28 = *(v11 + 600);
      while (v27 != v28)
      {
        v30 = sub_9A9F28(*(a1 + 8), a2, *v27);
        v31 = *(a4 + 32);
        if (v31 >= *(a4 + 40))
        {
          v29 = sub_9A6FB4((a4 + 24), v30);
        }

        else
        {
          sub_55F1E8(*(a4 + 32), v30);
          v29 = v31 + 112;
        }

        *(a4 + 32) = v29;
        ++v27;
      }

LABEL_48:
      if (*(v11 + 641) != 1)
      {
        goto LABEL_50;
      }

LABEL_49:
      v35 = sub_9A9F28(*(a1 + 8), a2, *(v11 + 640));
      sub_5410A0(a4 + 160, v35);
      goto LABEL_50;
    }

    v19 = sub_9A9F28(*(a1 + 8), a2, 3);
    sub_55F1E8(&v44, v19);
    v20 = *(a4 + 8);
    if (v20 >= *(a4 + 16))
    {
      v21 = sub_9A6FB4(a4, &v44);
    }

    else
    {
      sub_55F1E8(*(a4 + 8), &v44);
      v21 = v20 + 112;
    }

    *(a4 + 8) = v21;
    v32 = *(a4 + 32);
    if (v32 >= *(a4 + 40))
    {
      v33 = sub_9A6FB4((a4 + 24), &v44);
    }

    else
    {
      sub_55F1E8(*(a4 + 32), &v44);
      v33 = v32 + 112;
    }

    *(a4 + 32) = v33;
    if (SHIBYTE(v56) < 0)
    {
      operator delete(__p);
      if ((v52 & 0x80000000) == 0)
      {
LABEL_43:
        v34 = v48;
        if (v48 == -1)
        {
          goto LABEL_48;
        }

LABEL_47:
        (off_266F960[v34])(&v42, &v44);
        goto LABEL_48;
      }
    }

    else if ((v52 & 0x80000000) == 0)
    {
      goto LABEL_43;
    }

    operator delete(v50);
    v34 = v48;
    if (v48 == -1)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  if (v13 == 1)
  {
    v15 = *v10 == -1;
LABEL_15:
    v14 = !v15;
    goto LABEL_18;
  }

  if (v13 != 2)
  {
    goto LABEL_22;
  }

  v14 = 1;
  if (v10[1] == -1 && *v10 == -1)
  {
    v15 = *(v10 + 1) == *(v10 + 2);
    goto LABEL_15;
  }

LABEL_18:
  if (!v14 || (a3 & 1) != 0)
  {
    goto LABEL_22;
  }

  v17 = *(a4 + 8);
  if (v17 >= *(a4 + 16))
  {
    v18 = sub_9A6FB4(a4, v10);
  }

  else
  {
    sub_55F1E8(*(a4 + 8), v10);
    v18 = v17 + 112;
  }

  *(a4 + 8) = v18;
  v38 = *(a4 + 32);
  if (v38 >= *(a4 + 40))
  {
    v39 = sub_9A6FB4((a4 + 24), v12);
  }

  else
  {
    sub_55F1E8(*(a4 + 32), v12);
    v39 = v38 + 112;
  }

  *(a4 + 32) = v39;
  if (*(v11 + 641) == 1)
  {
    goto LABEL_49;
  }

LABEL_50:
  if (*(a4 + 24) != *(a4 + 32) || !sub_7E7E4(3u))
  {
    return;
  }

  sub_19594F8(&v44);
  v36 = sub_4A5C(&v44, "No stepping artworks resolved for line ", 39);
  std::ostream::operator<<(v36, *(v11 + 48));
  if ((v57 & 0x10) != 0)
  {
    v40 = v56;
    if (v56 < v51)
    {
      v56 = v51;
      v40 = v51;
    }

    v41 = v50;
    v37 = v40 - v50;
    if (v40 - v50 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_76:
      sub_3244();
    }

LABEL_64:
    if (v37 >= 0x17)
    {
      operator new();
    }

    v43 = v37;
    if (v37)
    {
      memmove(&v42, v41, v37);
    }

    goto LABEL_69;
  }

  if ((v57 & 8) != 0)
  {
    v41 = v47;
    v37 = v49 - v47;
    if ((v49 - v47) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_76;
    }

    goto LABEL_64;
  }

  v37 = 0;
  v43 = 0;
LABEL_69:
  *(&v42 + v37) = 0;
  sub_7E854(&v42, 3u);
  if (v43 < 0)
  {
    operator delete(v42);
  }

  if (v55 < 0)
  {
    operator delete(v53);
  }

  std::locale::~locale(&v46);
  std::ostream::~ostream();
  std::ios::~ios();
}

void sub_A13874(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_97E978(v1);
  _Unwind_Resume(a1);
}

void sub_A1388C(_Unwind_Exception *a1)
{
  *(v1 + 8) = v2;
  sub_97E978(v1);
  _Unwind_Resume(a1);
}

void sub_A138A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    sub_97E978(v15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  sub_97E978(v15);
  _Unwind_Resume(a1);
}

void sub_A13948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_53E440(va);
  sub_97E978(v7);
  _Unwind_Resume(a1);
}

void sub_A1398C(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_97E978(v1);
  _Unwind_Resume(a1);
}

void sub_A139A4(_Unwind_Exception *a1)
{
  *(v1 + 8) = v2;
  sub_97E978(v1);
  _Unwind_Resume(a1);
}

BOOL sub_A139E4(uint64_t a1)
{
  result = 0;
  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    if (v3 == 1)
    {
      v5 = *a1 == -1;
    }

    else
    {
      if (v3 != 2)
      {
        return result;
      }

      if (*(a1 + 4) != -1)
      {
        return 1;
      }

      if (*a1 != -1)
      {
        return 1;
      }

      v5 = *(a1 + 8) == *(a1 + 16);
    }

    return !v5;
  }

  if (v3 == 3 || v3 == 4)
  {
    v4 = *(a1 + 23);
    if (v4 < 0)
    {
      v4 = *(a1 + 8);
    }

    v5 = v4 == 0;
    return !v5;
  }

  return result;
}

uint64_t sub_A13A70(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_9A6FB4(a1, a2);
    a1[1] = result;
  }

  else
  {
    sub_55F1E8(a1[1], a2);
    result = v3 + 112;
    a1[1] = v3 + 112;
    a1[1] = v3 + 112;
  }

  return result;
}

void sub_A13AD0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 80) = 0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 88) = -1;
  *(a4 + 91) = -1;
  *(a4 + 95) = 0;
  *(a4 + 111) = 0;
  *(a4 + 103) = 0;
  *(a4 + 119) = 0;
  *(a4 + 136) = 0;
  *(a4 + 144) = 0;
  *(a4 + 128) = 0;
  *(a4 + 152) = 0;
  *(a4 + 192) = 0;
  *(a4 + 203) = -1;
  *(a4 + 200) = -1;
  *(a4 + 215) = 0;
  *(a4 + 207) = 0;
  *(a4 + 231) = 0;
  *(a4 + 223) = 0;
  *(a4 + 240) = 0;
  *(a4 + 248) = 0;
  *(a4 + 264) = 0;
  *(a4 + 256) = 0;
  v8 = sub_9A9F28(*(a1 + 8), a2, 7);
  v9 = v8;
  v10 = v8[8];
  if (v10 > 2)
  {
    if (v10 != 3 && v10 != 4)
    {
      goto LABEL_21;
    }

    v11 = *(v8 + 23);
    if ((v11 & 0x80u) != 0)
    {
      v11 = *(v8 + 1);
    }

    if (!v11)
    {
      goto LABEL_21;
    }

    goto LABEL_13;
  }

  if (v10 != 1)
  {
    if (v10 != 2 || v8[1] == -1 && *v8 == -1 && *(v8 + 1) == *(v8 + 2))
    {
      goto LABEL_21;
    }

LABEL_13:
    v12 = *(a4 + 32);
    if (v12 >= *(a4 + 40))
    {
      v13 = sub_9A6FB4((a4 + 24), v8);
    }

    else
    {
      sub_55F1E8(*(a4 + 32), v8);
      v13 = v12 + 112;
    }

    *(a4 + 32) = v13;
    v14 = *(a4 + 8);
    if (v14 >= *(a4 + 16))
    {
      v15 = sub_9A6FB4(a4, v9);
    }

    else
    {
      sub_55F1E8(*(a4 + 8), v9);
      v15 = v14 + 112;
    }

    *(a4 + 8) = v15;
    return;
  }

  if (*v8 != -1)
  {
    goto LABEL_13;
  }

LABEL_21:
  v17 = *a3;
  v16 = a3[1];
  do
  {
    if (v16 == v17)
    {
      if (*(*(v17 - 8) + 2200) == *(*(v17 - 8) + 2208))
      {
        goto LABEL_28;
      }

LABEL_25:
      v20 = sub_9A9F28(*(a1 + 8), a2, 3);
      sub_55F1E8(v39, v20);
      v21 = *(a4 + 32);
      if (v21 >= *(a4 + 40))
      {
        v22 = sub_9A6FB4((a4 + 24), v39);
      }

      else
      {
        sub_55F1E8(*(a4 + 32), v39);
        v22 = v21 + 112;
      }

      *(a4 + 32) = v22;
      if (SHIBYTE(v46) < 0)
      {
        operator delete(__p[0]);
        if ((SHIBYTE(v43) & 0x80000000) == 0)
        {
LABEL_38:
          v31 = v40;
          if (v40 == -1)
          {
            goto LABEL_43;
          }

LABEL_42:
          (off_266F960[v31])(&v48, v39);
          goto LABEL_43;
        }
      }

      else if ((SHIBYTE(v43) & 0x80000000) == 0)
      {
        goto LABEL_38;
      }

      operator delete(v42[0]);
      v31 = v40;
      if (v40 == -1)
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }

    v19 = *(v16 - 8);
    v16 -= 8;
    v18 = v19;
  }

  while (*v19 != 2);
  if (*(v18 + 275) != *(v18 + 276))
  {
    goto LABEL_25;
  }

LABEL_28:
  v23 = *(a2 + 752);
  v24 = *(*a1 + 72);
  if (0x66FD0EB66FD0EB67 * ((*(*a1 + 80) - v24) >> 3) <= v23)
  {
    sub_6FAB4();
  }

  v25 = v24 + 696 * v23;
  v26 = *(v25 + 592);
  v27 = *(v25 + 600);
  while (v26 != v27)
  {
    v29 = sub_9A9F28(*(a1 + 8), a2, *v26);
    v30 = *(a4 + 32);
    if (v30 >= *(a4 + 40))
    {
      v28 = sub_9A6FB4((a4 + 24), v29);
    }

    else
    {
      sub_55F1E8(*(a4 + 32), v29);
      v28 = v30 + 112;
    }

    *(a4 + 32) = v28;
    ++v26;
  }

LABEL_43:
  if (*(*(a1 + 16) + 1444) < 2u)
  {
    return;
  }

  sub_9AA338(*(a1 + 8), 0x3345Bu, v39);
  v32 = *(a4 + 8);
  if (v32 >= *(a4 + 16))
  {
    sub_55ED98(a4, v39);
    v36 = SHIBYTE(v46);
    *(a4 + 8) = v37;
    if (v36 < 0)
    {
      operator delete(__p[0]);
      if (SHIBYTE(v43) < 0)
      {
        goto LABEL_54;
      }
    }

    else if (SHIBYTE(v43) < 0)
    {
      goto LABEL_54;
    }

LABEL_51:
    v38 = v40;
    if (v40 != -1)
    {
      goto LABEL_55;
    }

    return;
  }

  *v32 = 0;
  *(v32 + 32) = -1;
  v33 = v40;
  if (v40 != -1)
  {
    v48 = v32;
    (off_266F988[v40])(&v48, v39);
    *(v32 + 32) = v33;
  }

  *(v32 + 40) = v41;
  v34 = *v42;
  *(v32 + 64) = v43;
  *(v32 + 48) = v34;
  v42[0] = 0;
  v42[1] = 0;
  *(v32 + 72) = v44;
  v35 = *__p;
  *(v32 + 96) = v46;
  *(v32 + 80) = v35;
  v43 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v46 = 0;
  *(v32 + 104) = v47;
  *(a4 + 8) = v32 + 112;
  if ((SHIBYTE(v43) & 0x80000000) == 0)
  {
    goto LABEL_51;
  }

LABEL_54:
  operator delete(v42[0]);
  v38 = v40;
  if (v40 != -1)
  {
LABEL_55:
    (off_266F960[v38])(&v48, v39);
  }
}

void sub_A13F24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_53E440(va);
  sub_97E978(v3);
  _Unwind_Resume(a1);
}

void sub_A13F80(_Unwind_Exception *a1)
{
  *(v1 + 8) = v2;
  sub_97E978(v1);
  _Unwind_Resume(a1);
}

void sub_A13F98(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_97E978(v1);
  _Unwind_Resume(a1);
}

void sub_A13FD8(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_97E978(v1);
  _Unwind_Resume(a1);
}

void sub_A14004(uint64_t a1@<X0>, void *a2@<X1>, uint64_t **a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 80) = 0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 88) = -1;
  *(a4 + 91) = -1;
  *(a4 + 95) = 0;
  *(a4 + 111) = 0;
  *(a4 + 103) = 0;
  *(a4 + 119) = 0;
  *(a4 + 136) = 0;
  *(a4 + 144) = 0;
  *(a4 + 128) = 0;
  *(a4 + 152) = 0;
  *(a4 + 192) = 0;
  *(a4 + 203) = -1;
  *(a4 + 200) = -1;
  *(a4 + 215) = 0;
  *(a4 + 207) = 0;
  *(a4 + 231) = 0;
  *(a4 + 223) = 0;
  *(a4 + 240) = 0;
  *(a4 + 248) = 0;
  *(a4 + 264) = 0;
  v7 = a2[1] - *a2;
  *(a4 + 256) = 0;
  if (v7 == 8)
  {
    sub_9AA338(*(a1 + 8), 0x33454u, v23);
    v8 = *(a4 + 32);
    if (v8 >= *(a4 + 40))
    {
      sub_55ED98((a4 + 24), v23);
      v13 = SHIBYTE(v30);
      *(a4 + 32) = v14;
      if (v13 < 0)
      {
        operator delete(v29[0]);
        if (SHIBYTE(v27) < 0)
        {
          goto LABEL_6;
        }
      }

      else if (SHIBYTE(v27) < 0)
      {
        goto LABEL_6;
      }
    }

    else
    {
      *v8 = 0;
      *(v8 + 32) = -1;
      v9 = v24;
      if (v24 != -1)
      {
        v32 = v8;
        (off_266F988[v24])(&v32, v23);
        *(v8 + 32) = v9;
      }

      *(v8 + 40) = v25;
      v10 = *__p;
      *(v8 + 64) = v27;
      *(v8 + 48) = v10;
      __p[0] = 0;
      __p[1] = 0;
      *(v8 + 72) = v28;
      v11 = *v29;
      *(v8 + 96) = v30;
      *(v8 + 80) = v11;
      v27 = 0;
      v29[0] = 0;
      v29[1] = 0;
      v30 = 0;
      *(v8 + 104) = v31;
      *(a4 + 32) = v8 + 112;
      if (SHIBYTE(v27) < 0)
      {
LABEL_6:
        operator delete(__p[0]);
        v12 = v24;
        if (v24 == -1)
        {
          goto LABEL_12;
        }

LABEL_11:
        (off_266F960[v12])(&v32, v23);
        goto LABEL_12;
      }
    }

    v12 = v24;
    if (v24 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_12:
  v15 = a3[1];
  v16 = *a3;
  if (*a3 != v15)
  {
    while (**v16 != 2)
    {
      if (++v16 == v15)
      {
        return;
      }
    }
  }

  if (v16 != v15 && !*(*(a1 + 16) + 1444))
  {
    v17 = sub_9A9F28(*(a1 + 8), *v16, 7);
    v18 = v17[8];
    if (v18 > 2)
    {
      if (v18 != 3 && v18 != 4)
      {
        return;
      }

      v20 = *(v17 + 23);
      if ((v20 & 0x80u) != 0)
      {
        v20 = *(v17 + 1);
      }

      if (!v20)
      {
        return;
      }
    }

    else if (v18 == 1)
    {
      if (*v17 == -1)
      {
        return;
      }
    }

    else
    {
      if (v18 != 2)
      {
        return;
      }

      v19 = v17[1] == -1 && *v17 == -1;
      if (v19 && *(v17 + 1) == *(v17 + 2))
      {
        return;
      }
    }

    v21 = *(a4 + 8);
    if (v21 >= *(a4 + 16))
    {
      v22 = sub_9A6FB4(a4, v17);
    }

    else
    {
      sub_55F1E8(*(a4 + 8), v17);
      v22 = v21 + 112;
    }

    *(a4 + 8) = v22;
  }
}

void sub_A142E4(_Unwind_Exception *a1)
{
  *(v1 + 8) = v2;
  sub_97E978(v1);
  _Unwind_Resume(a1);
}

void sub_A14314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_53E440(va);
  sub_97E978(v3);
  _Unwind_Resume(a1);
}

void sub_A14348(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 80) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 88) = -1;
  *(a3 + 91) = -1;
  *(a3 + 95) = 0;
  *(a3 + 111) = 0;
  *(a3 + 103) = 0;
  *(a3 + 119) = 0;
  *(a3 + 136) = 0;
  *(a3 + 144) = 0;
  *(a3 + 128) = 0;
  *(a3 + 152) = 0;
  *(a3 + 192) = 0;
  *(a3 + 203) = -1;
  *(a3 + 200) = -1;
  *(a3 + 215) = 0;
  *(a3 + 207) = 0;
  *(a3 + 231) = 0;
  *(a3 + 223) = 0;
  *(a3 + 240) = 0;
  *(a3 + 248) = 0;
  *(a3 + 264) = 0;
  *(a3 + 256) = 0;
  if (*(a2 + 856) == -1 || *(*(a1 + 16) + 1444) > 1u)
  {
    return;
  }

  v5 = sub_9A9F28(*(a1 + 8), a2, 5);
  v6 = v5;
  v7 = v5[8];
  if (v7 > 2)
  {
    if (v7 != 3 && v7 != 4)
    {
      goto LABEL_19;
    }

    v8 = *(v5 + 23);
    if ((v8 & 0x80u) != 0)
    {
      v8 = *(v5 + 1);
    }

    if (!v8)
    {
      goto LABEL_19;
    }
  }

  else if (v7 == 1)
  {
    if (*v5 == -1)
    {
      goto LABEL_19;
    }
  }

  else if (v7 != 2 || v5[1] == -1 && *v5 == -1 && *(v5 + 1) == *(v5 + 2))
  {
    goto LABEL_19;
  }

  sub_5410A0(a3 + 48, v5);
  v9 = *(a3 + 32);
  if (v9 >= *(a3 + 40))
  {
    *(a3 + 32) = sub_9A6FB4((a3 + 24), v6);
    v10 = (a3 + 24);
    if (*(a3 + 24) != *(a3 + 32))
    {
      return;
    }

    goto LABEL_22;
  }

  sub_55F1E8(*(a3 + 32), v6);
  *(a3 + 32) = v9 + 112;
LABEL_19:
  v10 = (a3 + 24);
  if (*(a3 + 24) != *(a3 + 32))
  {
    return;
  }

LABEL_22:
  sub_9AA338(*(a1 + 8), 0x3345Bu, v18);
  v11 = *(a3 + 32);
  if (v11 >= *(a3 + 40))
  {
    sub_55ED98(v10, v18);
    v15 = SHIBYTE(v25);
    *(a3 + 32) = v16;
    if (v15 < 0)
    {
      operator delete(__p[0]);
      if (SHIBYTE(v22) < 0)
      {
        goto LABEL_32;
      }
    }

    else if (SHIBYTE(v22) < 0)
    {
      goto LABEL_32;
    }
  }

  else
  {
    *v11 = 0;
    *(v11 + 32) = -1;
    v12 = v19;
    if (v19 != -1)
    {
      v27 = v11;
      (off_266F988[v19])(&v27, v18);
      *(v11 + 32) = v12;
    }

    *(v11 + 40) = v20;
    v13 = *v21;
    *(v11 + 64) = v22;
    *(v11 + 48) = v13;
    v21[0] = 0;
    v21[1] = 0;
    *(v11 + 72) = v23;
    v14 = *__p;
    *(v11 + 96) = v25;
    *(v11 + 80) = v14;
    v22 = 0;
    __p[0] = 0;
    __p[1] = 0;
    v25 = 0;
    *(v11 + 104) = v26;
    *(a3 + 32) = v11 + 112;
    if (SHIBYTE(v22) < 0)
    {
LABEL_32:
      operator delete(v21[0]);
      v17 = v19;
      if (v19 == -1)
      {
        return;
      }

      goto LABEL_33;
    }
  }

  v17 = v19;
  if (v19 != -1)
  {
LABEL_33:
    (off_266F960[v17])(&v27, v18);
  }
}

void sub_A14608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_53E440(va);
  sub_97E978(v3);
  _Unwind_Resume(a1);
}

void sub_A14628(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_97E978(v1);
  _Unwind_Resume(a1);
}

unint64_t sub_A14668@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 752);
  v6 = *(*result + 72);
  if (0x66FD0EB66FD0EB67 * ((*(*result + 80) - v6) >> 3) <= v5)
  {
    sub_6FAB4();
  }

  v8 = result;
  *(a4 + 80) = 0;
  v9 = v6 + 696 * v5;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 88) = -1;
  *(a4 + 91) = -1;
  *(a4 + 95) = 0;
  *(a4 + 111) = 0;
  *(a4 + 103) = 0;
  *(a4 + 119) = 0;
  *(a4 + 136) = 0;
  *(a4 + 144) = 0;
  *(a4 + 128) = 0;
  *(a4 + 152) = 0;
  *(a4 + 192) = 0;
  *(a4 + 203) = -1;
  *(a4 + 200) = -1;
  *(a4 + 215) = 0;
  *(a4 + 207) = 0;
  *(a4 + 231) = 0;
  *(a4 + 223) = 0;
  *(a4 + 240) = 0;
  *(a4 + 248) = 0;
  *(a4 + 264) = 0;
  *(a4 + 256) = 0;
  if ((a3 & 1) != 0 || *(*(result + 16) + 1444) <= 1u)
  {
    v10 = *(v9 + 616);
    v11 = *(v9 + 624);
    while (v10 != v11)
    {
      v13 = sub_9A9F28(*(v8 + 8), a2, *v10);
      v14 = *(a4 + 8);
      if (v14 >= *(a4 + 16))
      {
        v12 = sub_9A6FB4(a4, v13);
      }

      else
      {
        sub_55F1E8(*(a4 + 8), v13);
        v12 = v14 + 112;
      }

      *(a4 + 8) = v12;
      ++v10;
    }

    v15 = *(v9 + 592);
    v16 = *(v9 + 600);
    if (v15 == v16)
    {
      result = *(a4 + 32);
    }

    else
    {
      do
      {
        while (1)
        {
          v17 = sub_9A9F28(*(v8 + 8), a2, *v15);
          v18 = *(a4 + 32);
          if (v18 < *(a4 + 40))
          {
            break;
          }

          result = sub_9A6FB4((a4 + 24), v17);
          *(a4 + 32) = result;
          if (++v15 == v16)
          {
            goto LABEL_15;
          }
        }

        sub_55F1E8(*(a4 + 32), v17);
        result = v18 + 112;
        *(a4 + 32) = v18 + 112;
        ++v15;
      }

      while (v15 != v16);
    }

LABEL_15:
    if (*(a4 + 24) == result)
    {
      result = sub_7E7E4(3u);
      if (result)
      {
        sub_19594F8(&v26);
        v19 = sub_4A5C(&v26, "No stepping artworks resolved for line ", 39);
        std::ostream::operator<<(v19, *(v9 + 48));
        if ((v36 & 0x10) != 0)
        {
          v21 = v35;
          if (v35 < v32)
          {
            v35 = v32;
            v21 = v32;
          }

          v22 = v31;
          v20 = v21 - v31;
          if (v21 - v31 >= 0x7FFFFFFFFFFFFFF8)
          {
            goto LABEL_37;
          }
        }

        else
        {
          if ((v36 & 8) == 0)
          {
            v20 = 0;
            v25 = 0;
LABEL_28:
            *(&__p + v20) = 0;
            sub_7E854(&__p, 3u);
            if (v25 < 0)
            {
              operator delete(__p);
            }

            if (v34 < 0)
            {
              operator delete(v33);
            }

            std::locale::~locale(&v28);
            std::ostream::~ostream();
            result = std::ios::~ios();
            goto LABEL_33;
          }

          v22 = v29;
          v20 = v30 - v29;
          if ((v30 - v29) >= 0x7FFFFFFFFFFFFFF8)
          {
LABEL_37:
            sub_3244();
          }
        }

        if (v20 >= 0x17)
        {
          operator new();
        }

        v25 = v20;
        if (v20)
        {
          memmove(&__p, v22, v20);
        }

        goto LABEL_28;
      }
    }
  }

LABEL_33:
  if (*(v9 + 641) == 1)
  {
    v23 = sub_9A9F28(*(v8 + 8), a2, *(v9 + 640));
    return sub_5410A0(a4 + 160, v23);
  }

  return result;
}

void sub_A14A78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    sub_97E978(v15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  sub_97E978(v15);
  _Unwind_Resume(a1);
}

void sub_A14AEC(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_97E978(v1);
  _Unwind_Resume(a1);
}

void sub_A14B04(_Unwind_Exception *a1)
{
  *(v1 + 8) = v2;
  sub_97E978(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_A14B44@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t **a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 80) = 0;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 88) = -1;
  *(a5 + 91) = -1;
  *(a5 + 95) = 0;
  *(a5 + 111) = 0;
  *(a5 + 103) = 0;
  *(a5 + 119) = 0;
  *(a5 + 136) = 0;
  *(a5 + 144) = 0;
  *(a5 + 128) = 0;
  *(a5 + 152) = 0;
  *(a5 + 192) = 0;
  *(a5 + 203) = -1;
  *(a5 + 200) = -1;
  *(a5 + 215) = 0;
  *(a5 + 207) = 0;
  *(a5 + 231) = 0;
  *(a5 + 223) = 0;
  *(a5 + 240) = 0;
  *(a5 + 248) = 0;
  *(a5 + 264) = 0;
  *(a5 + 256) = 0;
  v6 = *(*(result + 16) + 1444);
  if (v6 <= 1)
  {
    v7 = a3[1];
    if (*a3 != v7)
    {
      v8 = a4[1];
      if (*a4 != v8)
      {
        v9 = *(v7 - 8);
        if (*v9 == 4)
        {
          v11 = result;
          v12 = *a4;
          while (1)
          {
            v13 = *v12;
            if (**v12 == 2)
            {
              break;
            }

            if (++v12 == v8)
            {
              return result;
            }
          }

          if (v12 != v8)
          {
            if (v6)
            {
              sub_9AA338(*(result + 8), 0x3345Du, v16);
              sub_A154D0(a5, v16);
              result = sub_53E440(v16);
            }

            else if (***a4 != 6 && *(v9 + 1944) == *(v9 + 1952))
            {
              v14 = sub_9A9F28(*(result + 8), *v12, 7);
              result = sub_A139E4(v14);
              if (result)
              {
                result = sub_A13A70(a5, v14);
              }
            }

            if (*(a2 + 48) != *(a2 + 56) && *((*v11)[9] + 696 * *(v9 + 752) + 64) != *((*v11)[9] + 696 * *(v13 + 94) + 64))
            {
              v15 = sub_9A9F28(v11[1], v13, 3);
              if (!sub_A139E4(v15))
              {
                v15 = sub_9A9F28(v11[1], v13, 2);
              }

              return sub_A13A70((a5 + 24), v15);
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_A14D50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_53E440(&a9);
  sub_97E978(v9);
  _Unwind_Resume(a1);
}

void sub_A14D94(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a3;
  if (*a3 == *(a3 + 8))
  {
    *(a4 + 240) = 0u;
    *(a4 + 256) = 0u;
    *(a4 + 208) = 0u;
    *(a4 + 224) = 0u;
    *(a4 + 176) = 0u;
    *(a4 + 192) = 0u;
    *(a4 + 144) = 0u;
    *(a4 + 160) = 0u;
    *(a4 + 112) = 0u;
    *(a4 + 128) = 0u;
    *(a4 + 80) = 0u;
    *(a4 + 96) = 0u;
    *(a4 + 48) = 0u;
    *(a4 + 64) = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *a4 = 0u;
    *(a4 + 91) = -1;
    *(a4 + 88) = -1;
    *(a4 + 95) = 0;
    *(a4 + 111) = 0;
    *(a4 + 103) = 0;
    *(a4 + 119) = 0;
    *(a4 + 136) = 0;
    *(a4 + 144) = 0;
    *(a4 + 128) = 0;
    *(a4 + 152) = 0;
    *(a4 + 200) = -1;
    *(a4 + 203) = -1;
    *(a4 + 207) = 0;
    *(a4 + 223) = 0;
    *(a4 + 215) = 0;
    *(a4 + 231) = 0;
    *(a4 + 240) = 0;
    *(a4 + 248) = 0;
    *(a4 + 264) = 0;
    *(a4 + 256) = 0;
    return;
  }

  v7 = *(a2 + 72);
  *(a4 + 80) = 0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 88) = -1;
  *(a4 + 91) = -1;
  *(a4 + 95) = 0;
  *(a4 + 111) = 0;
  *(a4 + 103) = 0;
  *(a4 + 119) = 0;
  *(a4 + 136) = 0;
  *(a4 + 144) = 0;
  *(a4 + 128) = 0;
  *(a4 + 152) = 0;
  *(a4 + 192) = 0;
  *(a4 + 203) = -1;
  *(a4 + 200) = -1;
  *(a4 + 215) = 0;
  *(a4 + 207) = 0;
  *(a4 + 231) = 0;
  *(a4 + 223) = 0;
  *(a4 + 248) = 0;
  *(a4 + 256) = 0;
  *(a4 + 240) = 0;
  *(a4 + 264) = 0;
  if (v7 == 2)
  {
    v8 = *v5;
    if (*v8 == 6)
    {
      v9 = *(v8 + 864);
      if (v9 != -1)
      {
        v10 = sub_9BCBDC(*a1, v9);
        if ((v10 - 4) < 4 || v10 == 9)
        {
          sub_9AA338(*(a1 + 8), 0x3345Cu, v32);
          v11 = *(a4 + 32);
          if (v11 >= *(a4 + 40))
          {
            sub_55ED98((a4 + 24), v32);
            v15 = SHIBYTE(v39);
            *(a4 + 32) = v16;
            if (v15 < 0)
            {
              operator delete(__p[0]);
              if (SHIBYTE(v36) < 0)
              {
                goto LABEL_18;
              }
            }

            else if (SHIBYTE(v36) < 0)
            {
              goto LABEL_18;
            }
          }

          else
          {
            *v11 = 0;
            *(v11 + 32) = -1;
            v12 = v33;
            if (v33 != -1)
            {
              v41 = v11;
              (off_266F988[v33])(&v41, v32);
              *(v11 + 32) = v12;
            }

            *(v11 + 40) = v34;
            v13 = *v35;
            *(v11 + 64) = v36;
            *(v11 + 48) = v13;
            v35[0] = 0;
            v35[1] = 0;
            *(v11 + 72) = v37;
            v14 = *__p;
            *(v11 + 96) = v39;
            *(v11 + 80) = v14;
            v36 = 0;
            __p[0] = 0;
            __p[1] = 0;
            v39 = 0;
            *(v11 + 104) = v40;
            *(a4 + 32) = v11 + 112;
            if (SHIBYTE(v36) < 0)
            {
LABEL_18:
              operator delete(v35[0]);
              v17 = v33;
              if (v33 == -1)
              {
                goto LABEL_20;
              }

              goto LABEL_19;
            }
          }

          v17 = v33;
          if (v33 != -1)
          {
LABEL_19:
            (off_266F960[v17])(&v41, v32);
          }
        }
      }
    }
  }

LABEL_20:
  sub_9AA338(*(a1 + 8), 0x33452u, v32);
  v18 = *(a4 + 8);
  if (v18 >= *(a4 + 16))
  {
    sub_55ED98(a4, v32);
    v22 = SHIBYTE(v39);
    *(a4 + 8) = v23;
    if (v22 < 0)
    {
      operator delete(__p[0]);
      if (SHIBYTE(v36) < 0)
      {
        goto LABEL_30;
      }
    }

    else if (SHIBYTE(v36) < 0)
    {
      goto LABEL_30;
    }
  }

  else
  {
    *v18 = 0;
    *(v18 + 32) = -1;
    v19 = v33;
    if (v33 != -1)
    {
      v41 = v18;
      (off_266F988[v33])(&v41, v32);
      *(v18 + 32) = v19;
    }

    *(v18 + 40) = v34;
    v20 = *v35;
    *(v18 + 64) = v36;
    *(v18 + 48) = v20;
    v35[0] = 0;
    v35[1] = 0;
    *(v18 + 72) = v37;
    v21 = *__p;
    *(v18 + 96) = v39;
    *(v18 + 80) = v21;
    v36 = 0;
    __p[0] = 0;
    __p[1] = 0;
    v39 = 0;
    *(v18 + 104) = v40;
    *(a4 + 8) = v18 + 112;
    if (SHIBYTE(v36) < 0)
    {
LABEL_30:
      operator delete(v35[0]);
      v24 = v33;
      if (v33 == -1)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }
  }

  v24 = v33;
  if (v33 != -1)
  {
LABEL_31:
    (off_266F960[v24])(&v41, v32);
  }

LABEL_32:
  if (*(a4 + 24) != *(a4 + 32))
  {
    return;
  }

  sub_9AA338(*(a1 + 8), 0x33454u, v32);
  v25 = *(a4 + 32);
  if (v25 >= *(a4 + 40))
  {
    sub_55ED98((a4 + 24), v32);
    v29 = SHIBYTE(v39);
    *(a4 + 32) = v30;
    if (v29 < 0)
    {
      operator delete(__p[0]);
      if (SHIBYTE(v36) < 0)
      {
        goto LABEL_44;
      }
    }

    else if (SHIBYTE(v36) < 0)
    {
      goto LABEL_44;
    }
  }

  else
  {
    *v25 = 0;
    *(v25 + 32) = -1;
    v26 = v33;
    if (v33 != -1)
    {
      v41 = v25;
      (off_266F988[v33])(&v41, v32);
      *(v25 + 32) = v26;
    }

    *(v25 + 40) = v34;
    v27 = *v35;
    *(v25 + 64) = v36;
    *(v25 + 48) = v27;
    v35[0] = 0;
    v35[1] = 0;
    *(v25 + 72) = v37;
    v28 = *__p;
    *(v25 + 96) = v39;
    *(v25 + 80) = v28;
    v36 = 0;
    __p[0] = 0;
    __p[1] = 0;
    v39 = 0;
    *(v25 + 104) = v40;
    *(a4 + 32) = v25 + 112;
    if (SHIBYTE(v36) < 0)
    {
LABEL_44:
      operator delete(v35[0]);
      v31 = v33;
      if (v33 != -1)
      {
        goto LABEL_45;
      }

      return;
    }
  }

  v31 = v33;
  if (v33 != -1)
  {
LABEL_45:
    (off_266F960[v31])(&v41, v32);
  }
}

void sub_A15278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_53E440(va);
  sub_97E978(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_A15300@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(*(result + 16) + 1444) != 1 || **(*(a3 + 8) - 8) != 2)
  {
    *(a4 + 240) = 0u;
    *(a4 + 256) = 0u;
    *(a4 + 208) = 0u;
    *(a4 + 224) = 0u;
    *(a4 + 176) = 0u;
    *(a4 + 192) = 0u;
    *(a4 + 144) = 0u;
    *(a4 + 160) = 0u;
    *(a4 + 112) = 0u;
    *(a4 + 128) = 0u;
    *(a4 + 80) = 0u;
    *(a4 + 96) = 0u;
    *(a4 + 48) = 0u;
    *(a4 + 64) = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *a4 = 0u;
    *(a4 + 91) = -1;
    *(a4 + 88) = -1;
    *(a4 + 95) = 0;
    *(a4 + 111) = 0;
    *(a4 + 103) = 0;
    *(a4 + 119) = 0;
    *(a4 + 136) = 0;
    *(a4 + 144) = 0;
    *(a4 + 128) = 0;
    *(a4 + 152) = 0;
    *(a4 + 200) = -1;
    *(a4 + 203) = -1;
    *(a4 + 207) = 0;
    *(a4 + 223) = 0;
    *(a4 + 215) = 0;
    *(a4 + 231) = 0;
    *(a4 + 240) = 0;
    *(a4 + 248) = 0;
    *(a4 + 264) = 0;
    *(a4 + 256) = 0;
    return result;
  }

  *(a4 + 80) = 0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 88) = -1;
  *(a4 + 91) = -1;
  *(a4 + 95) = 0;
  *(a4 + 111) = 0;
  *(a4 + 103) = 0;
  *(a4 + 119) = 0;
  *(a4 + 136) = 0;
  *(a4 + 144) = 0;
  *(a4 + 128) = 0;
  *(a4 + 152) = 0;
  *(a4 + 192) = 0;
  *(a4 + 203) = -1;
  *(a4 + 200) = -1;
  *(a4 + 215) = 0;
  *(a4 + 207) = 0;
  *(a4 + 231) = 0;
  *(a4 + 223) = 0;
  *(a4 + 240) = 0;
  *(a4 + 248) = 0;
  *(a4 + 264) = 0;
  *(a4 + 256) = 0;
  result = sub_9A9F28(*(result + 8), a2, 7);
  v5 = *(result + 32);
  if (v5 <= 2)
  {
    if (v5 == 1)
    {
      if (*result == -1)
      {
        return result;
      }
    }

    else if (v5 != 2 || *(result + 4) == -1 && *result == -1 && *(result + 8) == *(result + 16))
    {
      return result;
    }

LABEL_19:
    result = sub_9A6FB4(a4, result);
    *(a4 + 8) = result;
    return result;
  }

  if (v5 == 3 || v5 == 4)
  {
    v6 = *(result + 23);
    if ((v6 & 0x80u) != 0)
    {
      v6 = *(result + 8);
    }

    if (v6)
    {
      goto LABEL_19;
    }
  }

  return result;
}

uint64_t sub_A154D0(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    sub_55ED98(a1, a2);
  }

  else
  {
    *v3 = 0;
    *(v3 + 32) = -1;
    v4 = *(a2 + 32);
    if (v4 != -1)
    {
      v10 = v3;
      v5 = a2;
      (off_266F988[v4])(&v10);
      *(v3 + 32) = v4;
      a2 = v5;
    }

    *(v3 + 40) = *(a2 + 40);
    v6 = *(a2 + 48);
    *(v3 + 64) = *(a2 + 64);
    *(v3 + 48) = v6;
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 48) = 0;
    *(v3 + 72) = *(a2 + 72);
    v7 = *(a2 + 80);
    *(v3 + 96) = *(a2 + 96);
    *(v3 + 80) = v7;
    *(a2 + 88) = 0;
    *(a2 + 96) = 0;
    *(a2 + 80) = 0;
    *(v3 + 104) = *(a2 + 104);
    v8 = v3 + 112;
  }

  a1[1] = v8;
  return v8 - 112;
}

void sub_A155AC()
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
  xmmword_27B3A18 = 0u;
  unk_27B3A28 = 0u;
  dword_27B3A38 = 1065353216;
  sub_3A9A34(&xmmword_27B3A18, v0, v0);
  sub_3A9A34(&xmmword_27B3A18, v3, v3);
  sub_3A9A34(&xmmword_27B3A18, __p, __p);
  sub_3A9A34(&xmmword_27B3A18, v9, v9);
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
    qword_27B39F0 = 0;
    qword_27B39F8 = 0;
    qword_27B39E8 = 0;
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

void sub_A157F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B3A00)
  {
    qword_27B3A08 = qword_27B3A00;
    operator delete(qword_27B3A00);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A158A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *(a2 + 1444) > 1u;
  sub_527724(a1 + 8, a2);
  *(a1 + 1584) = a3;
  return a1;
}

void *sub_A158E0(void *result, uint64_t *a2)
{
  if (*result == 1)
  {
    v2 = result;
    result = sub_3320D0(v33, (a2 + 3), result[198]);
    v4 = *a2;
    v5 = a2[1];
    while (1)
    {
      if (v4 == v5)
      {
        return result;
      }

      sub_A21C90(v32, v4);
      while (1)
      {
        sub_A21CE8(v32, v22);
        v6 = sub_A21B4C(v32, v22);
        v7 = v28;
        v8 = v29;
        if (v29 == v28)
        {
          v8 = v28;
          v31 = 0;
          v15 = 0;
        }

        else
        {
          v9 = &v28[v30 >> 7];
          v10 = *v9;
          v11 = *v9 + 32 * (v30 & 0x7F);
          v12 = *(v28 + (((v31 + v30) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((v31 + v30) & 0x7F);
          if (v11 != v12)
          {
            do
            {
              v13 = *v11;
              if (*v11)
              {
                *(v11 + 8) = v13;
                operator delete(v13);
                v10 = *v9;
              }

              v11 += 32;
              if (v11 - v10 == 4096)
              {
                v14 = v9[1];
                ++v9;
                v10 = v14;
                v11 = v14;
              }
            }

            while (v11 != v12);
            v7 = v28;
            v8 = v29;
          }

          v31 = 0;
          v15 = v8 - v7;
          if (v15 >= 3)
          {
            do
            {
              operator delete(*v7);
              v8 = v29;
              v7 = v28 + 1;
              v28 = v7;
              v15 = v29 - v7;
            }

            while (v15 > 2);
          }
        }

        if (v15 == 1)
        {
          v16 = 64;
          goto LABEL_22;
        }

        if (v15 == 2)
        {
          v16 = 128;
LABEL_22:
          v30 = v16;
        }

        if (v7 != v8)
        {
          do
          {
            v17 = *v7++;
            operator delete(v17);
          }

          while (v7 != v8);
          if (v29 != v28)
          {
            v29 = (v29 + ((v28 - v29 + 7) & 0xFFFFFFFFFFFFFFF8));
          }
        }

        if (__p)
        {
          operator delete(__p);
        }

        v18 = v26;
        if (v26)
        {
          do
          {
            v19 = *v18;
            operator delete(v18);
            v18 = v19;
          }

          while (v19);
        }

        v20 = v25;
        v25 = 0;
        if (v20)
        {
          operator delete(v20);
        }

        if (v23)
        {
          v24 = v23;
          operator delete(v23);
        }

        if (!v6)
        {
          break;
        }

        v21 = sub_A21CB8(v32);
        sub_A15B6C(v2, v33, v21);
        sub_A21708(v32);
      }

      result = sub_98ED24(v32);
      v4 += 412;
    }
  }

  return result;
}

void sub_A15B3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_98ED24(&a9);
  sub_98ED24(&a28);
  _Unwind_Resume(a1);
}

uint64_t sub_A15B6C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*a3 == 5 && *(a3 + 964) == 1)
  {
    sub_64BC50(v14, &xmmword_22A6008, (result + 1185));
    sub_64E914(v14, &xmmword_22A6008, *(a3 + 960));
    sub_9AA338(a2, 0x33452u, v8);
    v5 = *(a3 + 1872);
    if (v5 >= *(a3 + 1880))
    {
      v6 = sub_A15D1C((a3 + 1864), v8, v14);
    }

    else
    {
      sub_55F1E8(*(a3 + 1872), v8);
      sub_55BD50(v5 + 112, v14);
      v6 = v5 + 272;
      *(a3 + 1872) = v5 + 272;
    }

    *(a3 + 1872) = v6;
    if (v13 < 0)
    {
      operator delete(__p);
      if ((v11 & 0x80000000) == 0)
      {
LABEL_8:
        v7 = v9;
        if (v9 == -1)
        {
          return sub_6081F0(v14);
        }

        goto LABEL_12;
      }
    }

    else if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    operator delete(v10);
    v7 = v9;
    if (v9 == -1)
    {
      return sub_6081F0(v14);
    }

LABEL_12:
    (off_266F9B0[v7])(&v15, v8);
    return sub_6081F0(v14);
  }

  return result;
}

void sub_A15CA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  sub_53E440(v4);
  *(v3 + 1872) = v4;
  sub_53E440(va);
  sub_6081F0(va1);
  _Unwind_Resume(a1);
}

void sub_A15CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  sub_6081F0(va);
  _Unwind_Resume(a1);
}

void sub_A15D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  sub_6081F0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_A15D1C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = 0xF0F0F0F0F0F0F0F1 * ((a1[1] - *a1) >> 4);
  v4 = v3 + 1;
  if (v3 + 1 > 0xF0F0F0F0F0F0F0)
  {
    sub_1794();
  }

  if (0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 4) > v4)
  {
    v4 = 0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 4);
  }

  if (0xF0F0F0F0F0F0F0F1 * ((a1[2] - *a1) >> 4) >= 0x78787878787878)
  {
    v7 = 0xF0F0F0F0F0F0F0;
  }

  else
  {
    v7 = v4;
  }

  v17 = a1;
  if (v7)
  {
    if (v7 <= 0xF0F0F0F0F0F0F0)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v14 = 272 * v3;
  v16 = 0;
  sub_55F1E8(272 * v3, a2);
  sub_55BD50(272 * v3 + 112, a3);
  v15 = 272 * v3 + 272;
  sub_A15F10(a1, &__p);
  v8 = a1[1];
  v9 = v14;
  for (i = v15; v15 != v9; i = v15)
  {
    v15 = i - 272;
    sub_6081F0(i - 160);
    if (*(i - 169) < 0)
    {
      operator delete(*(i - 192));
      if ((*(i - 201) & 0x80000000) == 0)
      {
LABEL_15:
        v11 = *(i - 240);
        if (v11 == -1)
        {
          goto LABEL_12;
        }

LABEL_19:
        (off_266F9B0[v11])(&v18, i - 272);
        goto LABEL_12;
      }
    }

    else if ((*(i - 201) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    operator delete(*(i - 224));
    v11 = *(i - 240);
    if (v11 != -1)
    {
      goto LABEL_19;
    }

LABEL_12:
    *(i - 240) = -1;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_A15EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_53E440(v9);
  sub_A161D4(&a9);
  _Unwind_Resume(a1);
}

void sub_A15F10(uint64_t *a1, void *a2)
{
  v4 = a2[1];
  v6 = *a1;
  v5 = a1[1];
  v7 = v4 + *a1 - v5;
  if (v5 != *a1)
  {
    v8 = v4 + *a1 - v5;
    v9 = *a1;
    do
    {
      sub_A16054(v8, v9);
      v9 += 272;
      v8 += 272;
    }

    while (v9 != v5);
    v10 = v6 + 112;
    do
    {
      sub_6081F0(v10);
      if (*(v10 - 9) < 0)
      {
        operator delete(*(v10 - 32));
        if ((*(v10 - 41) & 0x80000000) == 0)
        {
LABEL_8:
          v12 = *(v10 - 80);
          if (v12 == -1)
          {
            goto LABEL_5;
          }

LABEL_12:
          (off_266F9B0[v12])(&v16, v10 - 112);
          goto LABEL_5;
        }
      }

      else if ((*(v10 - 41) & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

      operator delete(*(v10 - 64));
      v12 = *(v10 - 80);
      if (v12 != -1)
      {
        goto LABEL_12;
      }

LABEL_5:
      *(v10 - 80) = -1;
      v11 = v10 + 160;
      v10 += 272;
    }

    while (v11 != v5);
  }

  a2[1] = v7;
  v13 = *a1;
  *a1 = v7;
  a1[1] = v13;
  a2[1] = v13;
  v14 = a1[1];
  a1[1] = a2[2];
  a2[2] = v14;
  v15 = a1[2];
  a1[2] = a2[3];
  a2[3] = v15;
  *a2 = a2[1];
}

__n128 sub_A16054(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 32) = -1;
  v3 = *(a2 + 32);
  if (v3 != -1)
  {
    v4 = a1;
    v11 = a1;
    (off_266F9D8[v3])(&v11, a2);
    a1 = v4;
    *(v4 + 32) = v3;
  }

  *(a1 + 40) = *(a2 + 40);
  v5 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = v5;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 48) = 0;
  *(a1 + 72) = *(a2 + 72);
  v6 = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 80) = v6;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 80) = 0;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 112) = 0;
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 184) = *(a2 + 184);
  v7 = *(a2 + 208);
  *(a1 + 200) = *(a2 + 200);
  *(a2 + 184) = 0;
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  *(a1 + 208) = v7;
  v8 = *(a2 + 216);
  *(a1 + 220) = *(a2 + 220);
  *(a1 + 216) = v8;
  v9 = *(a2 + 224);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 224) = v9;
  *(a2 + 232) = 0;
  *(a2 + 240) = 0;
  *(a2 + 224) = 0;
  result = *(a2 + 248);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 248) = result;
  *(a2 + 256) = 0;
  *(a2 + 264) = 0;
  *(a2 + 248) = 0;
  return result;
}

void **sub_A161D4(void **a1)
{
  sub_A16208(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_A16208(uint64_t a1)
{
  v1 = *(a1 + 8);
  for (i = *(a1 + 16); i != v1; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 272;
    sub_6081F0(i - 160);
    if (*(i - 169) < 0)
    {
      operator delete(*(i - 192));
      if ((*(i - 201) & 0x80000000) == 0)
      {
LABEL_6:
        v4 = *(i - 240);
        if (v4 == -1)
        {
          goto LABEL_3;
        }

LABEL_10:
        (off_266F9B0[v4])(&v5, i - 272);
        goto LABEL_3;
      }
    }

    else if ((*(i - 201) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    operator delete(*(i - 224));
    v4 = *(i - 240);
    if (v4 != -1)
    {
      goto LABEL_10;
    }

LABEL_3:
    *(i - 240) = -1;
  }
}

void sub_A165A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B3A88)
  {
    qword_27B3A90 = qword_27B3A88;
    operator delete(qword_27B3A88);
  }

  _Unwind_Resume(exception_object);
}

void sub_A16654(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, void *a5@<X8>)
{
  v10 = sub_A16AB0(a1);
  v11 = *(a1 + 128);
  if (v10 && v11 == 4)
  {
    if (a3 != 2 || a4 != 1)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v12 = v11 > 8;
    v13 = (1 << v11) & 0x160;
    if (v12 || v13 == 0)
    {
      goto LABEL_17;
    }
  }

  v15 = *(a1 + 48);
  v16 = *(a1 + 56);
  if (v15 == v16)
  {
LABEL_13:
    if (**(a1 + 72) != 2)
    {
LABEL_17:
      (*(*a1 + 104))(a1, 2);
      sub_A16900(a1, a5, a2);
      return;
    }
  }

  else
  {
    while (**v15 != 2)
    {
      if (++v15 == v16)
      {
        goto LABEL_13;
      }
    }
  }

  sub_A16790(a1, a5);
}

void sub_A16790(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  if (v3 != v4)
  {
    while (**v3 != 2)
    {
      if (++v3 == v4)
      {
        goto LABEL_4;
      }
    }

LABEL_5:
    sub_A1EC38();
  }

LABEL_4:
  if (**(a1 + 72) == 2)
  {
    goto LABEL_5;
  }

  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
}

_DWORD *sub_A16900(_DWORD *result, void *a2, uint64_t a3)
{
  if (*(result + 216) == 1)
  {
    v14[7] = v3;
    v14[8] = v4;
    v5 = *(a3 + 23);
    v6 = v5 >= 0 ? a3 : *a3;
    v7 = v5 >= 0 ? *(a3 + 23) : *(a3 + 8);
    if (v7 >= 5)
    {
      v9 = v6 + v7;
      v10 = v7;
      result = v6;
      do
      {
        result = memchr(result, 95, v10 - 4);
        if (!result)
        {
          break;
        }

        if (*result == 1852394591 && *(result + 4) == 101)
        {
          if (result != v9 && result - v6 != -1 && v7 >= 7)
          {
            result = v6;
            while (1)
            {
              result = memchr(result, 95, v7 - 6);
              if (!result)
              {
                break;
              }

              if (*result == 1937331039 && *(result + 3) == 1835365491)
              {
                if (result != v9 && result - v6 != -1)
                {
                  v14[0] = "{System}";
                  result = sub_353894(a2, "{System}", &unk_229EB70, v14);
                  if (*(result + 63) < 0)
                  {
                    *(result + 6) = 0;
                    v13 = *(result + 5);
                  }

                  else
                  {
                    v13 = result + 10;
                    *(result + 63) = 0;
                  }

                  *v13 = 0;
                }

                return result;
              }

              result = (result + 1);
              v7 = v9 - result;
              if (v9 - result < 7)
              {
                return result;
              }
            }
          }

          return result;
        }

        result = (result + 1);
        v10 = v9 - result;
      }

      while (v9 - result >= 5);
    }
  }

  return result;
}

_DWORD *sub_A16A78(void *a1, int a2)
{
  v2 = a1[6];
  v3 = a1[7];
  if (v2 == v3)
  {
    return a1[9];
  }

  while (**v2 != a2)
  {
    v2 += 8;
    if (v2 == v3)
    {
      return a1[9];
    }
  }

  return *v2;
}

BOOL sub_A16AB0(void *a1)
{
  v1 = a1[9];
  if (*v1 == 4)
  {
    if (*(v1 + 792) != 1)
    {
      return 0;
    }

    v2 = *(v1 + 752);
    if (v2 == -1)
    {
      return 0;
    }

    v3 = *(a1[10] + 72);
    if ((*(v3 + 696 * v2 + 67) & 0x80) != 0)
    {
      return 0;
    }

    goto LABEL_5;
  }

  v10 = a1[3];
  v9 = a1[4];
  if (v9 == v10)
  {
    return 0;
  }

  while (1)
  {
    v12 = *(v9 - 8);
    v9 -= 8;
    v11 = v12;
    v13 = *v12;
    if ((*v12 - 5) >= 2)
    {
      break;
    }

    if (v9 == v10)
    {
      return 0;
    }
  }

  if (v13 != 4)
  {
    return 0;
  }

  if (*(v11 + 792) != 1)
  {
    return 0;
  }

  v14 = *(v11 + 94);
  if (v14 == -1)
  {
    return 0;
  }

  v3 = *(a1[10] + 72);
  if ((*(v3 + 696 * v14 + 67) & 0x80) != 0)
  {
    return 0;
  }

  if (*v1 != 2)
  {
LABEL_5:
    v4 = a1[6];
    v5 = a1[7];
    if (v4 != v5)
    {
      while (1)
      {
        v6 = *v4;
        v7 = **v4;
        if ((v7 - 5) >= 2)
        {
          break;
        }

        result = 0;
        if (++v4 == v5)
        {
          return result;
        }
      }

      if (v7 == 2 && *(v6 + 792) == 1)
      {
        v15 = *(v6 + 94);
        if (v15 != -1)
        {
          return (*(v3 + 696 * v15 + 67) & 0x80) == 0;
        }
      }
    }

    return 0;
  }

  if (*(v1 + 792) == 1)
  {
    v15 = *(v1 + 752);
    if (v15 != -1)
    {
      return (*(v3 + 696 * v15 + 67) & 0x80) == 0;
    }
  }

  return 0;
}

BOOL sub_A16BEC(void *a1)
{
  v1 = a1[9];
  v2 = *v1;
  if (*v1 == 2)
  {
    if (*(v1 + 792) == 1)
    {
      v3 = *(v1 + 94);
      if (v3 != -1)
      {
        goto LABEL_4;
      }
    }

    v4 = -1;
LABEL_18:
    v12 = a1[3];
    v11 = a1[4];
    if (v11 != v12)
    {
      while (1)
      {
        v14 = *(v11 - 8);
        v11 -= 8;
        v13 = v14;
        v15 = *v14;
        if ((*v14 - 5) >= 2)
        {
          break;
        }

        if (v11 == v12)
        {
          return v4 == -1;
        }
      }

      if (v15 == 4 && *(v13 + 792) == 1)
      {
        v9 = *(v13 + 94);
        if (v9 != -1)
        {
          return v4 == *(*(a1[10] + 72) + 696 * v9 + 64);
        }
      }
    }

    return v4 == -1;
  }

  v5 = a1[6];
  v6 = a1[7];
  if (v5 == v6)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v7 = *v5;
    v8 = **v5;
    if ((v8 - 5) >= 2)
    {
      break;
    }

    if (++v5 == v6)
    {
      goto LABEL_14;
    }
  }

  if (v8 != 2 || *(v7 + 792) != 1 || (v3 = *(v7 + 94), v3 == -1))
  {
LABEL_14:
    v4 = -1;
    if (v2 == 4)
    {
      goto LABEL_15;
    }

    goto LABEL_18;
  }

LABEL_4:
  v4 = *(*(a1[10] + 72) + 696 * v3 + 64);
  if (v2 != 4)
  {
    goto LABEL_18;
  }

LABEL_15:
  if (*(v1 + 792) == 1)
  {
    v9 = *(v1 + 94);
    if (v9 == -1)
    {
      return v4 == -1;
    }

    return v4 == *(*(a1[10] + 72) + 696 * v9 + 64);
  }

  return v4 == -1;
}

uint64_t sub_A16D3C(void *a1)
{
  v1 = a1[9];
  if (*v1 == 2)
  {
    if (*(v1 + 792) == 1)
    {
      v2 = *(v1 + 752);
      if (v2 != -1)
      {
        return *(*(a1[10] + 72) + 696 * v2 + 64);
      }
    }

    return 0xFFFFFFFFLL;
  }

  v4 = a1[6];
  v5 = a1[7];
  if (v4 == v5)
  {
    return 0xFFFFFFFFLL;
  }

  while (1)
  {
    v6 = *v4;
    v7 = **v4;
    if ((v7 - 5) >= 2)
    {
      break;
    }

    if (++v4 == v5)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (v7 != 2 || *(v6 + 792) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *(v6 + 94);
  if (v2 != -1)
  {
    return *(*(a1[10] + 72) + 696 * v2 + 64);
  }

  return 0xFFFFFFFFLL;
}

BOOL sub_A16DDC(uint64_t a1)
{
  v2 = *(a1 + 24);
  v1 = *(a1 + 32);
  if (v1 == v2)
  {
    return 0;
  }

  v3 = 0;
  while (1)
  {
    v5 = *(v1 - 8);
    v1 -= 8;
    v4 = v5;
    v6 = *v5;
    if (*v5 == 2)
    {
      return v3 == 1;
    }

    if (*(v4 + 792) != 1 || (*(v4 + 157) & 1) == 0)
    {
      break;
    }

LABEL_3:
    if (v1 == v2)
    {
      return v3 == 1;
    }
  }

  v7 = v6 > 7;
  v8 = (1 << v6) & 0xD2;
  if (!v7 && v8 != 0)
  {
    return 0;
  }

  if (v3 <= 0)
  {
    ++v3;
    goto LABEL_3;
  }

  return 0;
}

void **sub_A16EA8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  v92[0] = "{Direction}";
  v4 = sub_353894(a2, "{Direction}", &unk_229EB70, v92);
  v5 = v4 + 5;
  if (v4 + 5 != a1 + 24)
  {
    v6 = *(v4 + 63);
    v7 = *(a1 + 215);
    if (v6 < 0)
    {
      if (v7 >= 0)
      {
        v9 = a1 + 24;
      }

      else
      {
        v9 = a1[24];
      }

      if (v7 >= 0)
      {
        v10 = *(a1 + 215);
      }

      else
      {
        v10 = a1[25];
      }

      sub_13B38(v5, v9, v10);
    }

    else if ((*(a1 + 215) & 0x80) != 0)
    {
      sub_13A68(v5, a1[24], a1[25]);
    }

    else
    {
      v8 = *(a1 + 12);
      v5[2] = a1[26];
      *v5 = v8;
    }
  }

  sub_9D43A4(a1 + 28, v92);
  *v94 = "{PreviousStop}";
  v11 = sub_353894(a2, "{PreviousStop}", &unk_229EB70, v94);
  if (*(v11 + 63) < 0)
  {
    v12 = v11;
    operator delete(v11[5]);
    v11 = v12;
  }

  *(v11 + 5) = *v92;
  v11[7] = v92[2];
  sub_9D43A4(a1 + 43, v92);
  *v94 = "{Stop}";
  v13 = sub_353894(a2, "{Stop}", &unk_229EB70, v94);
  if (*(v13 + 63) < 0)
  {
    v14 = v13;
    operator delete(v13[5]);
    v13 = v14;
  }

  *(v13 + 5) = *v92;
  v13[7] = v92[2];
  sub_9D4538(a1 + 53, v92);
  *v94 = "{Line}";
  v15 = sub_353894(a2, "{Line}", &unk_229EB70, v94);
  if (*(v15 + 63) < 0)
  {
    v16 = v15;
    operator delete(v15[5]);
    v15 = v16;
  }

  *(v15 + 5) = *v92;
  v15[7] = v92[2];
  v92[0] = "{Line}";
  v17 = sub_353894(a2, "{Line}", &unk_229EB70, v92);
  v92[0] = "{LineNumber}";
  v18 = sub_353894(a2, "{LineNumber}", &unk_229EB70, v92);
  if (v18 != v17)
  {
    v19 = *(v17 + 63);
    if (*(v18 + 63) < 0)
    {
      if (v19 >= 0)
      {
        v21 = (v17 + 5);
      }

      else
      {
        v21 = v17[5];
      }

      if (v19 >= 0)
      {
        v22 = *(v17 + 63);
      }

      else
      {
        v22 = v17[6];
      }

      sub_13B38(v18 + 5, v21, v22);
    }

    else if ((*(v17 + 63) & 0x80) != 0)
    {
      sub_13A68(v18 + 5, v17[5], v17[6]);
    }

    else
    {
      v20 = *(v17 + 5);
      v18[7] = v17[7];
      *(v18 + 5) = v20;
    }
  }

  sub_9D43A4(a1 + 56, v92);
  *v94 = "{System}";
  v23 = sub_353894(a2, "{System}", &unk_229EB70, v94);
  if (*(v23 + 63) < 0)
  {
    v24 = v23;
    operator delete(v23[5]);
    v23 = v24;
  }

  *(v23 + 5) = *v92;
  v23[7] = v92[2];
  v92[0] = "{VehicleNumber}";
  v25 = sub_353894(a2, "{VehicleNumber}", &unk_229EB70, v92);
  v26 = v25 + 5;
  if (v25 + 5 != a1 + 17)
  {
    v27 = *(v25 + 63);
    v28 = *(a1 + 159);
    if (v27 < 0)
    {
      if (v28 >= 0)
      {
        v30 = a1 + 17;
      }

      else
      {
        v30 = a1[17];
      }

      if (v28 >= 0)
      {
        v31 = *(a1 + 159);
      }

      else
      {
        v31 = a1[18];
      }

      sub_13B38(v26, v30, v31);
    }

    else if ((*(a1 + 159) & 0x80) != 0)
    {
      sub_13A68(v26, a1[17], a1[18]);
    }

    else
    {
      v29 = *(a1 + 17);
      v26[2] = a1[19];
      *v26 = v29;
    }
  }

  sub_9D4608(a1 + 40, v92);
  v32 = v92[0];
  *v94 = v92[1];
  *&v94[7] = *(&v92[1] + 7);
  v33 = HIBYTE(v92[2]);
  memset(v92, 0, 24);
  if (v93 < 0)
  {
    operator delete(v92[4]);
    if (SHIBYTE(v92[2]) < 0)
    {
      operator delete(v92[0]);
    }
  }

  v92[0] = "{AccessPointExit}";
  v34 = sub_353894(a2, "{AccessPointExit}", &unk_229EB70, v92);
  if (*(v34 + 63) < 0)
  {
    v35 = v34;
    operator delete(v34[5]);
    v34 = v35;
  }

  v36 = *v94;
  v34[5] = v32;
  v34[6] = v36;
  *(v34 + 55) = *&v94[7];
  *(v34 + 63) = v33;
  v92[0] = "{Platform}";
  v37 = sub_353894(a2, "{Platform}", &unk_229EB70, v92);
  v38 = v37 + 5;
  if (v37 + 5 != a1 + 46)
  {
    v39 = *(v37 + 63);
    v40 = *(a1 + 391);
    if (v39 < 0)
    {
      if (v40 >= 0)
      {
        v42 = a1 + 46;
      }

      else
      {
        v42 = a1[46];
      }

      if (v40 >= 0)
      {
        v43 = *(a1 + 391);
      }

      else
      {
        v43 = a1[47];
      }

      sub_13B38(v38, v42, v43);
    }

    else if ((*(a1 + 391) & 0x80) != 0)
    {
      sub_13A68(v38, a1[46], a1[47]);
    }

    else
    {
      v41 = *(a1 + 23);
      v38[2] = a1[48];
      *v38 = v41;
    }
  }

  sub_9D43A4(a1 + 43, v92);
  *v94 = "{nextBoardStation}";
  result = sub_353894(a2, "{nextBoardStation}", &unk_229EB70, v94);
  if (*(result + 63) < 0)
  {
    v45 = result;
    operator delete(result[5]);
    result = v45;
  }

  *(result + 5) = *v92;
  result[7] = v92[2];
  v47 = a1[21];
  v46 = a1[22];
  v48 = v46 - v47;
  if (v46 != v47)
  {
    v92[0] = "{Headsign}";
    v49 = sub_353894(a2, "{Headsign}", &unk_229EB70, v92);
    v50 = v49 + 5;
    if (v49 + 5 != v47)
    {
      v51 = *(v49 + 63);
      v52 = *(v47 + 23);
      if (v51 < 0)
      {
        if (v52 >= 0)
        {
          v54 = v47;
        }

        else
        {
          v54 = *v47;
        }

        if (v52 >= 0)
        {
          v55 = *(v47 + 23);
        }

        else
        {
          v55 = v47[1];
        }

        sub_13B38(v50, v54, v55);
      }

      else if ((*(v47 + 23) & 0x80) != 0)
      {
        sub_13A68(v50, *v47, v47[1]);
      }

      else
      {
        v53 = *v47;
        v50[2] = v47[2];
        *v50 = v53;
      }
    }

    v56 = a1[21];
    v92[0] = "{Headsign1}";
    v57 = sub_353894(a2, "{Headsign1}", &unk_229EB70, v92);
    result = (v57 + 5);
    if (v57 + 5 != v56)
    {
      v58 = *(v57 + 63);
      v59 = *(v56 + 23);
      if (v58 < 0)
      {
        if (v59 >= 0)
        {
          v61 = v56;
        }

        else
        {
          v61 = *v56;
        }

        if (v59 >= 0)
        {
          v62 = *(v56 + 23);
        }

        else
        {
          v62 = v56[1];
        }

        result = sub_13B38(result, v61, v62);
      }

      else if ((*(v56 + 23) & 0x80) != 0)
      {
        result = sub_13A68(result, *v56, v56[1]);
      }

      else
      {
        v60 = *v56;
        result[2] = v56[2];
        *result = v60;
      }
    }

    v63 = 0xAAAAAAAAAAAAAAABLL * (v48 >> 3);
    if (v63 >= 2)
    {
      v64 = a1[21];
      v92[0] = "{Headsign2}";
      v65 = sub_353894(a2, "{Headsign2}", &unk_229EB70, v92);
      result = (v65 + 5);
      if (v65 + 5 != (v64 + 24))
      {
        v66 = *(v65 + 63);
        v67 = *(v64 + 47);
        if (v66 < 0)
        {
          if (v67 >= 0)
          {
            v69 = (v64 + 24);
          }

          else
          {
            v69 = *(v64 + 24);
          }

          if (v67 >= 0)
          {
            v70 = *(v64 + 47);
          }

          else
          {
            v70 = *(v64 + 32);
          }

          result = sub_13B38(result, v69, v70);
        }

        else if ((*(v64 + 47) & 0x80) != 0)
        {
          result = sub_13A68(result, *(v64 + 24), *(v64 + 32));
        }

        else
        {
          v68 = *(v64 + 24);
          result[2] = *(v64 + 40);
          *result = v68;
        }
      }

      if (v48 != 48)
      {
        v71 = a1[21];
        v92[0] = "{Headsign3}";
        v72 = sub_353894(a2, "{Headsign3}", &unk_229EB70, v92);
        result = (v72 + 5);
        if (v72 + 5 != (v71 + 48))
        {
          v73 = *(v72 + 63);
          v74 = *(v71 + 71);
          if (v73 < 0)
          {
            if (v74 >= 0)
            {
              v76 = (v71 + 48);
            }

            else
            {
              v76 = *(v71 + 48);
            }

            if (v74 >= 0)
            {
              v77 = *(v71 + 71);
            }

            else
            {
              v77 = *(v71 + 56);
            }

            result = sub_13B38(result, v76, v77);
          }

          else if ((*(v71 + 71) & 0x80) != 0)
          {
            result = sub_13A68(result, *(v71 + 48), *(v71 + 56));
          }

          else
          {
            v75 = *(v71 + 48);
            result[2] = *(v71 + 64);
            *result = v75;
          }
        }

        if (v63 >= 4)
        {
          v78 = a1[21];
          v92[0] = "{Headsign4}";
          v79 = sub_353894(a2, "{Headsign4}", &unk_229EB70, v92);
          result = (v79 + 5);
          if (v79 + 5 != (v78 + 72))
          {
            v80 = *(v79 + 63);
            v81 = *(v78 + 95);
            if (v80 < 0)
            {
              if (v81 >= 0)
              {
                v83 = (v78 + 72);
              }

              else
              {
                v83 = *(v78 + 72);
              }

              if (v81 >= 0)
              {
                v84 = *(v78 + 95);
              }

              else
              {
                v84 = *(v78 + 80);
              }

              result = sub_13B38(result, v83, v84);
            }

            else if ((*(v78 + 95) & 0x80) != 0)
            {
              result = sub_13A68(result, *(v78 + 72), *(v78 + 80));
            }

            else
            {
              v82 = *(v78 + 72);
              result[2] = *(v78 + 88);
              *result = v82;
            }
          }

          if (v48 != 96)
          {
            v85 = a1[21];
            v92[0] = "{Headsign5}";
            v86 = sub_353894(a2, "{Headsign5}", &unk_229EB70, v92);
            result = (v86 + 5);
            if (v86 + 5 != (v85 + 96))
            {
              v87 = *(v86 + 63);
              v88 = *(v85 + 119);
              if (v87 < 0)
              {
                if (v88 >= 0)
                {
                  v90 = (v85 + 96);
                }

                else
                {
                  v90 = *(v85 + 96);
                }

                if (v88 >= 0)
                {
                  v91 = *(v85 + 119);
                }

                else
                {
                  v91 = *(v85 + 104);
                }

                return sub_13B38(result, v90, v91);
              }

              else if ((*(v85 + 119) & 0x80) != 0)
              {
                return sub_13A68(result, *(v85 + 96), *(v85 + 104));
              }

              else
              {
                v89 = *(v85 + 96);
                result[2] = *(v85 + 112);
                *result = v89;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_A176F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_2CD04(v15);
    _Unwind_Resume(a1);
  }

  sub_2CD04(v15);
  _Unwind_Resume(a1);
}

void sub_A1778C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_9D4608((a1 + 320), v3);
  *a2 = *v3;
  *(a2 + 16) = v4;
  v3[1] = 0;
  v4 = 0;
  v3[0] = 0;
  if (v6 < 0)
  {
    operator delete(__p);
    if (SHIBYTE(v4) < 0)
    {
      operator delete(v3[0]);
    }
  }
}

void sub_A17808(int a1@<W1>, uint64_t a2@<X8>)
{
  if (a1 > 4)
  {
    if (a1 <= 6)
    {
      if (a1 == 5)
      {
        *(a2 + 23) = 14;
        strcpy(a2, "_TRAIN_STATION");
        return;
      }

      v2 = "_SUBWAY_STATION";
    }

    else
    {
      if (a1 != 7)
      {
        if (a1 == 8)
        {
          *(a2 + 23) = 10;
          strcpy(a2, "_TRAM_STOP");
          return;
        }

        if (a1 == 9)
        {
          *(a2 + 23) = 13;
          strcpy(a2, "_TRAM_STATION");
          return;
        }

LABEL_15:
        *a2 = 0;
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        return;
      }

      v2 = "_FERRY_TERMINAL";
    }

    *(a2 + 23) = 15;
    *a2 = *v2;
    *(a2 + 7) = *(v2 + 7);
    *(a2 + 15) = 0;
    return;
  }

  if (a1 <= 1)
  {
    if (a1 == 1)
    {
      *(a2 + 23) = 9;
      strcpy(a2, "_BUS_STOP");
      return;
    }

    goto LABEL_15;
  }

  if (a1 == 2)
  {
    *(a2 + 23) = 11;
    strcpy(a2, "_TRAIN_STOP");
  }

  else
  {
    *(a2 + 23) = 12;
    if (a1 == 3)
    {
      strcpy(a2, "_SUBWAY_STOP");
    }

    else
    {
      strcpy(a2, "_BUS_STATION");
    }
  }
}

void sub_A179D0(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  v4 = a1;
  sub_9CC6F8(a1, &v18);
  if (v4 > 4)
  {
    if (v4 <= 6)
    {
      if (v4 == 5)
      {
        if ((v20 & 0x80u) == 0)
        {
          v6 = v20;
        }

        else
        {
          v6 = v19;
        }

        if (v6 + 1 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v6 + 1 >= 0x17)
        {
          operator new();
        }

        __p.__r_.__value_.__r.__words[2] = 0;
        *(&__p.__r_.__value_.__s + 23) = v6 + 1;
        *&__p.__r_.__value_.__l.__data_ = 0x5FuLL;
        if (v6)
        {
          if ((v20 & 0x80u) == 0)
          {
            v9 = &v18;
          }

          else
          {
            v9 = v18;
          }

          memmove(&__p.__r_.__value_.__l.__data_ + 1, v9, v6);
        }
      }

      else
      {
        if ((v20 & 0x80u) == 0)
        {
          v6 = v20;
        }

        else
        {
          v6 = v19;
        }

        if (v6 + 1 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v6 + 1 >= 0x17)
        {
          operator new();
        }

        __p.__r_.__value_.__r.__words[2] = 0;
        *(&__p.__r_.__value_.__s + 23) = v6 + 1;
        *&__p.__r_.__value_.__l.__data_ = 0x5FuLL;
        if (v6)
        {
          if ((v20 & 0x80u) == 0)
          {
            v8 = &v18;
          }

          else
          {
            v8 = v18;
          }

          memmove(&__p.__r_.__value_.__l.__data_ + 1, v8, v6);
        }
      }

      goto LABEL_94;
    }

    switch(v4)
    {
      case 7:
        *(a3 + 23) = 15;
        strcpy(a3, "_Terminal_Ferry");
        if ((v20 & 0x80000000) == 0)
        {
          return;
        }

        goto LABEL_123;
      case 8:
        if (a2)
        {
          if ((v20 & 0x80u) == 0)
          {
            v7 = v20;
          }

          else
          {
            v7 = v19;
          }

          if (v7 + 1 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v7 + 1 >= 0x17)
          {
            operator new();
          }

          __p.__r_.__value_.__r.__words[2] = 0;
          *(&__p.__r_.__value_.__s + 23) = v7 + 1;
          *&__p.__r_.__value_.__l.__data_ = 0x5FuLL;
          if (v7)
          {
            if ((v20 & 0x80u) == 0)
            {
              v16 = &v18;
            }

            else
            {
              v16 = v18;
            }

            memmove(&__p.__r_.__value_.__l.__data_ + 1, v16, v7);
          }

          goto LABEL_118;
        }

        break;
      case 9:
        if ((v20 & 0x80u) == 0)
        {
          v6 = v20;
        }

        else
        {
          v6 = v19;
        }

        if (v6 + 1 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v6 + 1 >= 0x17)
        {
          operator new();
        }

        __p.__r_.__value_.__r.__words[2] = 0;
        *(&__p.__r_.__value_.__s + 23) = v6 + 1;
        *&__p.__r_.__value_.__l.__data_ = 0x5FuLL;
        if (v6)
        {
          if ((v20 & 0x80u) == 0)
          {
            v11 = &v18;
          }

          else
          {
            v11 = v18;
          }

          memmove(&__p.__r_.__value_.__l.__data_ + 1, v11, v6);
        }

        goto LABEL_94;
    }

    goto LABEL_69;
  }

  if (v4 <= 1)
  {
    if (v4)
    {
      if (v4 == 1 && a2)
      {
        if ((v20 & 0x80u) == 0)
        {
          v7 = v20;
        }

        else
        {
          v7 = v19;
        }

        if (v7 + 1 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v7 + 1 >= 0x17)
        {
          operator new();
        }

        __p.__r_.__value_.__r.__words[2] = 0;
        *(&__p.__r_.__value_.__s + 23) = v7 + 1;
        *&__p.__r_.__value_.__l.__data_ = 0x5FuLL;
        if (v7)
        {
          if ((v20 & 0x80u) == 0)
          {
            v13 = &v18;
          }

          else
          {
            v13 = v18;
          }

          memmove(&__p.__r_.__value_.__l.__data_ + 1, v13, v7);
        }

        goto LABEL_118;
      }
    }

    else if (a2)
    {
      *(a3 + 23) = 8;
      strcpy(a3, "_Station");
      if ((v20 & 0x80000000) == 0)
      {
        return;
      }

      goto LABEL_123;
    }

    goto LABEL_69;
  }

  if (v4 == 2)
  {
    if (a2)
    {
      if ((v20 & 0x80u) == 0)
      {
        v7 = v20;
      }

      else
      {
        v7 = v19;
      }

      if (v7 + 1 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v7 + 1 >= 0x17)
      {
        operator new();
      }

      __p.__r_.__value_.__r.__words[2] = 0;
      *(&__p.__r_.__value_.__s + 23) = v7 + 1;
      *&__p.__r_.__value_.__l.__data_ = 0x5FuLL;
      if (v7)
      {
        if ((v20 & 0x80u) == 0)
        {
          v14 = &v18;
        }

        else
        {
          v14 = v18;
        }

        memmove(&__p.__r_.__value_.__l.__data_ + 1, v14, v7);
      }

      goto LABEL_118;
    }

LABEL_69:
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    if ((v20 & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_123;
  }

  if (v4 != 3)
  {
    if ((v20 & 0x80u) == 0)
    {
      v6 = v20;
    }

    else
    {
      v6 = v19;
    }

    if (v6 + 1 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v6 + 1 >= 0x17)
    {
      operator new();
    }

    __p.__r_.__value_.__r.__words[2] = 0;
    *(&__p.__r_.__value_.__s + 23) = v6 + 1;
    *&__p.__r_.__value_.__l.__data_ = 0x5FuLL;
    if (v6)
    {
      if ((v20 & 0x80u) == 0)
      {
        v10 = &v18;
      }

      else
      {
        v10 = v18;
      }

      memmove(&__p.__r_.__value_.__l.__data_ + 1, v10, v6);
    }

LABEL_94:
    *(&__p.__r_.__value_.__l.__data_ + v6 + 1) = 0;
    v12 = std::string::append(&__p, "_Station", 8uLL);
    goto LABEL_119;
  }

  if (!a2)
  {
    goto LABEL_69;
  }

  if ((v20 & 0x80u) == 0)
  {
    v7 = v20;
  }

  else
  {
    v7 = v19;
  }

  if (v7 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v7 + 1 >= 0x17)
  {
    operator new();
  }

  __p.__r_.__value_.__r.__words[2] = 0;
  *(&__p.__r_.__value_.__s + 23) = v7 + 1;
  *&__p.__r_.__value_.__l.__data_ = 0x5FuLL;
  if (v7)
  {
    if ((v20 & 0x80u) == 0)
    {
      v15 = &v18;
    }

    else
    {
      v15 = v18;
    }

    memmove(&__p.__r_.__value_.__l.__data_ + 1, v15, v7);
  }

LABEL_118:
  *(&__p.__r_.__value_.__l.__data_ + v7 + 1) = 0;
  v12 = std::string::append(&__p, "_Stop", 5uLL);
LABEL_119:
  *a3 = *&v12->__r_.__value_.__l.__data_;
  *(a3 + 16) = *(&v12->__r_.__value_.__l + 2);
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v20 & 0x80000000) == 0)
    {
      return;
    }

LABEL_123:
    operator delete(v18);
    return;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (v20 < 0)
  {
    goto LABEL_123;
  }
}

void sub_A18218(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  _Unwind_Resume(exception_object);
}

uint64_t sub_A182F0(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 == *(a1 + 56))
  {
    v1 = a1 + 72;
  }

  return *v1;
}

void sub_A18308(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[6];
  v3 = a1[7];
  if (v2 == v3)
  {
LABEL_4:
    v4 = a1[9];
    if (*v4 != 2)
    {
LABEL_8:
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
      return;
    }
  }

  else
  {
    while (1)
    {
      v4 = *v2;
      if (**v2 == 2)
      {
        break;
      }

      if (++v2 == v3)
      {
        goto LABEL_4;
      }
    }
  }

  if ((v4[198] & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = *(v4 + 94);
  if (v5 == -1)
  {
    goto LABEL_8;
  }

  v6 = *(a1[10] + 72) + 696 * v5;
  if (*(v6 + 559) == 1)
  {
    goto LABEL_8;
  }

  sub_9D4538(v6, a2);
}

void sub_A18380(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[6];
  v3 = a1[7];
  if (v2 == v3)
  {
LABEL_4:
    v4 = a1[9];
    if (*v4 != 2)
    {
LABEL_11:
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
      return;
    }
  }

  else
  {
    while (1)
    {
      v4 = *v2;
      if (**v2 == 2)
      {
        break;
      }

      if (++v2 == v3)
      {
        goto LABEL_4;
      }
    }
  }

  if ((v4[198] & 1) == 0)
  {
    goto LABEL_11;
  }

  v5 = a1[10];
  v6 = *(v4 + 94);
  v7 = v5[9];
  if (0x66FD0EB66FD0EB67 * ((v5[10] - v7) >> 3) <= v6)
  {
    sub_6FAB4();
  }

  v8 = *(v7 + 696 * v6 + 64);
  v10 = v5 + 12;
  v9 = v5[12];
  if (0x4EC4EC4EC4EC4EC5 * ((v10[1] - v9) >> 4) <= v8)
  {
    sub_6FAB4();
  }

  sub_9D43A4((v9 + 208 * v8), a2);
}

void *sub_A18468@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = result[6];
  v4 = result[7];
  if (v3 == v4)
  {
LABEL_4:
    v5 = result[9];
    if (*v5 != 2)
    {
      return result;
    }
  }

  else
  {
    while (1)
    {
      v5 = *v3;
      if (**v3 == 2)
      {
        break;
      }

      if (++v3 == v4)
      {
        goto LABEL_4;
      }
    }
  }

  if (*(v5 + 792) == 1)
  {
    v6 = *(v5 + 28);
    v7 = *(v5 + 29);
    if (v6 != v7)
    {
      v8 = 0;
      do
      {
        if (v8 < a2[2])
        {
          if (*(v6 + 23) < 0)
          {
            result = sub_325C(v8, *v6, *(v6 + 8));
          }

          else
          {
            v9 = *v6;
            v8[2] = *(v6 + 16);
            *v8 = v9;
          }

          v8 += 3;
        }

        else
        {
          result = sub_1CEE8(a2, v6);
          v8 = result;
        }

        a2[1] = v8;
        v6 += 56;
      }

      while (v6 != v7);
    }
  }

  return result;
}

void sub_A1854C(_Unwind_Exception *a1)
{
  *(v1 + 8) = v2;
  sub_1A104(v1);
  _Unwind_Resume(a1);
}

double sub_A18578@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a4@<X8>)
{
  if (*(*(a2 + 16) + 1444))
  {
    v5 = *sub_A21B20(a1);
    if (v5 > 3)
    {
      switch(v5)
      {
        case 4:
          sub_A1F638();
        case 5:
          sub_A1F240();
        case 6:
          sub_A1F044();
      }
    }

    else
    {
      switch(v5)
      {
        case 1:
          sub_A1EE48();
        case 2:
          sub_A1F43C();
        case 3:
          sub_A1F834();
      }
    }
  }

  *a4 = 0;
  a4[1] = 0;
  return result;
}

void sub_A186C4(uint64_t a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X8>)
{
  v17 = *(a3 + 48);
  v7.n128_f64[0] = sub_9792D0(a2, a3, &v15);
  if (v15)
  {
    v8 = v16;
    a4->n128_u64[0] = v15;
    a4->n128_u64[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v7.n128_f64[0] = sub_A18578(a2, a3, &v13);
    if (v13)
    {
      v9 = v14;
      a4->n128_u64[0] = v13;
      a4->n128_u64[1] = v9;
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v10 = *sub_A21B20(a2);
      if (v10 <= 4)
      {
        if (v10 <= 1)
        {
          if (v10 == 1)
          {
            sub_A1FA30();
          }
        }

        else
        {
          if (v10 == 2)
          {
            sub_A20220();
          }

          if (v10 == 4)
          {
            sub_A1FC2C();
          }
        }
      }

      else
      {
        if (v10 <= 7)
        {
          if (v10 != 5)
          {
            if (v10 != 6)
            {
              sub_A20024();
            }

            sub_A1FE28();
          }

          sub_A20618();
        }

        if (v10 == 8)
        {
          sub_A2041C();
        }

        if (v10 == 9)
        {
          sub_A20814();
        }
      }

      a4->n128_u64[0] = 0;
      a4->n128_u64[1] = 0;
    }

    v11 = v14;
    if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11, v7);
      std::__shared_weak_count::__release_weak(v11);
    }
  }

  v12 = v16;
  if (v16)
  {
    if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12, v7);
      std::__shared_weak_count::__release_weak(v12);
    }
  }
}

void sub_A18984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_1F1A8(va);
  sub_1F1A8(va1);
  _Unwind_Resume(a1);
}

void sub_A189C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1F1A8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_A189D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 104);
  if (v2 == -1)
  {
    return 0;
  }

  v3 = *(a1 + 80);
  v4 = *(*(v3 + 24) + 144 * v2 + 104);
  if (v4 == -1)
  {
    return 0;
  }

  v5 = *(v3 + 48) + 136 * v4;
  if (*(v5 + 16) == *(v5 + 24))
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

BOOL sub_A18A20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  if (a2 == -1 || a3 == -1)
  {
    return v3;
  }

  v5 = *(a1 + 80);
  v6 = *v5 + 168 * a2;
  v7 = *v5 + 168 * a3;
  v8 = *(v6 + 104);
  if (v8 == -1 || (v9 = *(v5[3] + 144 * v8 + 104), v9 == -1))
  {
    v10 = 0;
    v11 = *(v7 + 104);
    if (v11 == -1)
    {
      return 0;
    }
  }

  else
  {
    v10 = (v5[6] + 136 * v9);
    if (v10[2] == v10[3])
    {
      v10 = 0;
    }

    v11 = *(v7 + 104);
    if (v11 == -1)
    {
      return 0;
    }
  }

  v12 = *(v5[3] + 144 * v11 + 104);
  if (v12 == -1)
  {
    return 0;
  }

  v3 = 0;
  v13 = (v5[6] + 136 * v12);
  if (v13[2] == v13[3])
  {
    v13 = 0;
  }

  if (!v10 || !v13)
  {
    return v3;
  }

  if (v10[11] == v13[11])
  {
    return 0;
  }

  v16 = sub_9BCCEC(v6, v5);
  sub_9D43A4(v16, v26);
  v17 = sub_9BCCEC(v7, *(a1 + 80));
  sub_9D43A4(v17, __p);
  v18 = v27;
  if ((v27 & 0x80u) == 0)
  {
    v19 = v27;
  }

  else
  {
    v19 = v26[1];
  }

  v20 = v25;
  v21 = v25;
  if ((v25 & 0x80u) != 0)
  {
    v20 = __p[1];
  }

  if (v19 == v20)
  {
    if ((v27 & 0x80u) == 0)
    {
      v22 = v26;
    }

    else
    {
      v22 = v26[0];
    }

    if ((v25 & 0x80u) == 0)
    {
      v23 = __p;
    }

    else
    {
      v23 = __p[0];
    }

    v3 = memcmp(v22, v23, v19) != 0;
  }

  else
  {
    v3 = 1;
  }

  if (v21 < 0)
  {
    operator delete(__p[0]);
    v18 = v27;
  }

  if ((v18 & 0x80) == 0)
  {
    return v3;
  }

  operator delete(v26[0]);
  return v3;
}

void sub_A18BE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A18C14(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_A21730(a2, v9);
  sub_A21834(a2, 0xFFFFFFFFFFFFFFFFLL, __p);
  v6 = sub_A21B20(a2);
  sub_A18CF8(a1, v9, __p, v6, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }

  return a1;
}

void sub_A18CAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

uint64_t sub_A18CF8(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = &off_266FA10;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v6 = a2[1];
  if (v6 != *a2)
  {
    if (((v6 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v7 = a3[1] - *a3;
  if (v7)
  {
    if ((v7 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v8 = *a5;
  *(a1 + 72) = a4;
  *(a1 + 80) = v8;
  *(a1 + 88) = vextq_s8(*(a5 + 1), *(a5 + 1), 8uLL);
  v9 = a5[4];
  *(a1 + 104) = a5[3];
  *(a1 + 112) = a5 + 5;
  *(a1 + 120) = v9;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 168) = 0u;
  *(a1 + 224) = 0;
  *(a1 + 132) = 2;
  *(a1 + 160) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 216) = 0;
  *(a1 + 200) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 248) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 252) = 0x8000000080000000;
  *(a1 + 260) = 0;
  *(a1 + 264) = xmmword_22A5CD0;
  *(a1 + 280) = 0x8000000080000000;
  *(a1 + 288) = 0;
  *(a1 + 292) = xmmword_22A5CD0;
  *(a1 + 308) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0;
  *(a1 + 392) = 2;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0;
  sub_A18FC8(a1, 0);
  return a1;
}

void sub_A18ED8(_Unwind_Exception *a1)
{
  sub_1AA90((v1 + 496));
  sub_55A03C((v1 + 472));
  sub_9354C4((v1 + 448));
  sub_9354C4((v1 + 424));
  sub_509680(v1 + 368);
  sub_9354C4((v1 + 344));
  sub_9354C4((v1 + 320));
  sub_9354C4(v3);
  if (*(v1 + 215) < 0)
  {
    operator delete(*(v1 + 192));
    sub_1A104(v2);
    if ((*(v1 + 159) & 0x80000000) == 0)
    {
LABEL_3:
      v8 = *v5;
      if (!*v5)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    sub_1A104(v2);
    if ((*(v1 + 159) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(*v4);
  v8 = *v5;
  if (!*v5)
  {
LABEL_4:
    v9 = *v6;
    if (!*v6)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  *(v1 + 56) = v8;
  operator delete(v8);
  v9 = *v6;
  if (!*v6)
  {
LABEL_5:
    v10 = *(v1 + 16);
    if (!v10)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_10:
  *(v1 + 32) = v9;
  operator delete(v9);
  v10 = *(v1 + 16);
  if (!v10)
  {
LABEL_6:
    _Unwind_Resume(a1);
  }

LABEL_11:
  std::__shared_weak_count::__release_weak(v10);
  _Unwind_Resume(a1);
}

void sub_A18FC8(uint64_t a1, __n128 a2)
{
  v4 = (a1 + 72);
  v3 = *(a1 + 72);
  if (*(v3 + 792) != 1)
  {
    goto LABEL_49;
  }

  v5 = *(a1 + 80);
  v6 = *(v5 + 72) + 696 * *(v3 + 94);
  if ((*(v6 + 559) & 1) == 0)
  {
    v7 = (a1 + 424);
    if (a1 + 424 != v6)
    {
      sub_942014(v7, *v6, *(v6 + 8), 0x6DB6DB6DB6DB6DB7 * ((*(v6 + 8) - *v6) >> 3));
      v5 = *(a1 + 80);
    }
  }

  v8 = *(v5 + 96) + 208 * *(v6 + 64);
  *(a1 + 132) = *(v6 + 556);
  if (*(v6 + 560) == 1)
  {
    *(a1 + 217) = **v4 != 8;
    v9 = (a1 + 448);
    if (a1 + 448 == v8)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  *(a1 + 217) = 0;
  v9 = (a1 + 448);
  if (a1 + 448 != v8)
  {
LABEL_9:
    sub_942014(v9, *v8, *(v8 + 8), 0x6DB6DB6DB6DB6DB7 * ((*(v8 + 8) - *v8) >> 3));
  }

LABEL_10:
  *(a1 + 216) = *(v8 + 200);
  *(a1 + 160) = *(v3 + 158);
  v10 = (v3 + 40);
  v11 = (a1 + 136);
  if (*(v3 + 216) == 1 && v11 != v10)
  {
    v20 = *(v3 + 183);
    if (*(a1 + 159) < 0)
    {
      if (v20 >= 0)
      {
        v22 = v3 + 40;
      }

      else
      {
        v22 = *(v3 + 20);
      }

      if (v20 >= 0)
      {
        v23 = *(v3 + 183);
      }

      else
      {
        v23 = *(v3 + 21);
      }

      sub_13B38(v11, v22, v23);
    }

    else if ((*(v3 + 183) & 0x80) != 0)
    {
      sub_13A68(v11, *(v3 + 20), *(v3 + 21));
    }

    else
    {
      v21 = *v10;
      *(a1 + 152) = *(v3 + 22);
      *v11 = v21;
    }
  }

  v13 = *(v3 + 28);
  v14 = *(v3 + 29);
  if (v13 != v14)
  {
    v15 = *(a1 + 176);
    do
    {
      while (v15 >= *(a1 + 184))
      {
        v15 = sub_1CEE8(a1 + 168, v13);
        *(a1 + 176) = v15;
        v13 += 56;
        if (v13 == v14)
        {
          goto LABEL_23;
        }
      }

      if (*(v13 + 23) < 0)
      {
        sub_325C(v15, *v13, *(v13 + 8));
      }

      else
      {
        v16 = *v13;
        *(v15 + 16) = *(v13 + 16);
        *v15 = v16;
      }

      v15 += 24;
      *(a1 + 176) = v15;
      *(a1 + 176) = v15;
      v13 += 56;
    }

    while (v13 != v14);
  }

LABEL_23:
  if ((*(v6 + 561) & 1) == 0 && *(v3 + 584) == 1)
  {
    v17 = (a1 + 192);
    if ((a1 + 192) != v3 + 132)
    {
      v18 = *(v3 + 551);
      if (*(a1 + 215) < 0)
      {
        if (v18 >= 0)
        {
          v24 = v3 + 132;
        }

        else
        {
          v24 = *(v3 + 66);
        }

        if (v18 >= 0)
        {
          v25 = *(v3 + 551);
        }

        else
        {
          v25 = *(v3 + 67);
        }

        sub_13B38(v17, v24, v25);
      }

      else if ((*(v3 + 551) & 0x80) != 0)
      {
        sub_13A68(v17, *(v3 + 66), *(v3 + 67));
      }

      else
      {
        v19 = *(v3 + 33);
        *(a1 + 208) = *(v3 + 68);
        *v17 = v19;
      }
    }
  }

  *(a1 + 161) = *(v3 + 156);
  v3 = *(a1 + 72);
LABEL_49:
  if (*v3 == 7)
  {
    goto LABEL_66;
  }

  v26 = *(a1 + 48);
  if (v26 == *(a1 + 56))
  {
    v26 = v4;
  }

  v3 = *v26;
  if (**v26 == 7)
  {
LABEL_66:
    if (*(v3 + 952) == 1)
    {
      v27 = *(v3 + 107);
      if (v27 != -1)
      {
        v28 = (*(*(a1 + 80) + 120) + 304 * v27 + 40);
        if ((a1 + 320) != v28)
        {
          sub_942014((a1 + 320), *v28, v28[1], 0x6DB6DB6DB6DB6DB7 * ((v28[1] - *v28) >> 3));
        }

        sub_9D4608((a1 + 320), &v32);
        v29 = v32;
        v30 = v33;
        v31 = SHIBYTE(v34);
        v33 = 0;
        v34 = 0;
        v32 = 0;
        if (v36 < 0)
        {
          operator delete(__p);
          if (SHIBYTE(v34) < 0)
          {
            operator delete(v32);
          }
        }

        if (v31 < 0)
        {
          *(a1 + 163) = v30 != 0;
          operator delete(v29);
        }

        else
        {
          *(a1 + 163) = v31 != 0;
        }
      }
    }
  }

  sub_A1936C(a1, **(a1 + 72));
  sub_A19520(a1);
}

uint64_t sub_A1936C(uint64_t result, int a2)
{
  if (a2 <= 4)
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        v2 = result;
        result = sub_A16AB0(result);
        if (result && (result = sub_A16BEC(v2), result))
        {
          *(v2 + 128) = 3;
        }

        else
        {
          *(v2 + 128) = 2;
        }
      }

      else if (a2 == 3)
      {
        *(result + 128) = 11;
      }

      else
      {
        *(result + 128) = 4;
      }

      return result;
    }

    if (a2)
    {
      if (a2 == 1)
      {
        *(result + 128) = 1;
      }

      return result;
    }

LABEL_17:
    *(result + 128) = 0;
    return result;
  }

  if (a2 <= 7)
  {
    if (a2 == 5)
    {
      v3 = result;
      result = sub_A16AB0(result);
      if (result)
      {
        result = sub_A16BEC(v3);
        if (result)
        {
          *(v3 + 128) = 5;
        }

        else
        {
          *(v3 + 128) = 6;
        }
      }

      else
      {
        *(v3 + 128) = 0;
      }
    }

    else if (a2 == 6)
    {
      *(result + 128) = 8;
    }

    else
    {
      *(result + 128) = 9;
    }

    return result;
  }

  switch(a2)
  {
    case 8:
      *(result + 128) = 7;
      return result;
    case 9:
      *(result + 128) = 10;
      return result;
    case 10:
      goto LABEL_17;
  }

  return result;
}

void sub_A19520(uint64_t a1)
{
  v3 = (a1 + 72);
  v2 = *(a1 + 72);
  v4 = *(v2 + 6);
  if (v4 != -1 || ((v4 = *(v2 + 7), v5 = *v2, v4 != -1) ? (v6 = v5 == 6) : (v6 = 0), v6))
  {
    v7 = *(a1 + 80);
    if (*v7)
    {
      v8 = *v7 + 168 * v4;
      v9 = sub_9BCCEC(v8, v7);
      if ((a1 + 344) != v9)
      {
        sub_942014((a1 + 344), *v9, v9[1], 0x6DB6DB6DB6DB6DB7 * ((v9[1] - *v9) >> 3));
      }

      *(a1 + 162) = *(v8 + 163);
      v10 = *(a1 + 72);
      if (*v10 == 6)
      {
        v11 = *(a1 + 48);
        if (v11 == *(a1 + 56))
        {
          v11 = v3;
        }

        v10 = *v11;
        if (*(*v11 + 792) == 1)
        {
          if (*(v10 + 271) < 0)
          {
            sub_325C(__p, *(v10 + 248), *(v10 + 256));
            BYTE8(v14) = *(v10 + 272);
            if (*(v10 + 303) < 0)
            {
LABEL_27:
              sub_325C(&v15, *(v10 + 280), *(v10 + 288));
              goto LABEL_28;
            }
          }

          else
          {
            *__p = *(v10 + 248);
            *&v14 = *(v10 + 264);
            BYTE8(v14) = *(v10 + 272);
            if (*(v10 + 303) < 0)
            {
              goto LABEL_27;
            }
          }

          goto LABEL_26;
        }
      }

      else
      {
        if (*v10 != 2)
        {
          return;
        }

        if (*(v10 + 792) == 1)
        {
          if (*(v10 + 271) < 0)
          {
            sub_325C(__p, *(v10 + 248), *(v10 + 256));
            BYTE8(v14) = *(v10 + 272);
            if (*(v10 + 303) < 0)
            {
              goto LABEL_27;
            }
          }

          else
          {
            *__p = *(v10 + 248);
            *&v14 = *(v10 + 264);
            BYTE8(v14) = *(v10 + 272);
            if (*(v10 + 303) < 0)
            {
              goto LABEL_27;
            }
          }

LABEL_26:
          v15 = *(v10 + 280);
          v16 = *(v10 + 296);
          goto LABEL_28;
        }
      }

      *__p = 0u;
      v14 = 0u;
      BYTE8(v14) = 2;
      v16 = 0;
      v15 = 0uLL;
LABEL_28:
      if (*(a1 + 391) < 0)
      {
        operator delete(*(a1 + 368));
      }

      *(a1 + 368) = *__p;
      *(a1 + 384) = v14;
      BYTE7(v14) = 0;
      LOBYTE(__p[0]) = 0;
      *(a1 + 392) = BYTE8(v14);
      if (*(a1 + 423) < 0)
      {
        operator delete(*(a1 + 400));
        v12 = SBYTE7(v14);
        *(a1 + 400) = v15;
        *(a1 + 416) = v16;
        HIBYTE(v16) = 0;
        LOBYTE(v15) = 0;
        if (v12 < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        *(a1 + 400) = v15;
        *(a1 + 416) = v16;
      }
    }
  }
}

void sub_A1978C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_A197B0@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (*(a1 + 792) != 1)
  {
    *&v2 = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 24) = 2;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 32) = 0;
    return *&v2;
  }

  if (*(a1 + 271) < 0)
  {
    v3 = a1;
    v4 = a2;
    sub_325C(a2, *(a1 + 248), *(a1 + 256));
    a1 = v3;
    a2 = v4;
    *(v4 + 24) = *(v3 + 272);
    if ((*(v3 + 303) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    sub_325C((a2 + 32), *(a1 + 280), *(a1 + 288));
    return *&v2;
  }

  *a2 = *(a1 + 248);
  *(a2 + 16) = *(a1 + 264);
  *(a2 + 24) = *(a1 + 272);
  if (*(a1 + 303) < 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v2 = *(a1 + 280);
  *(a2 + 32) = v2;
  *(a2 + 48) = *(a1 + 296);
  return *&v2;
}

void sub_A19880(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_A1989C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 792) != 1)
  {
    return 0;
  }

  v2 = *(a2 + 271);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 256);
  }

  if (!v2)
  {
    return 0;
  }

  v3 = *(a2 + 303);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 288);
  }

  return v3 != 0;
}

uint64_t sub_A198E8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a3 == -1 || (*(a2 + 792) & 1) == 0)
  {
LABEL_7:
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    return result;
  }

  v4 = *(**(result + 80) + 168 * a3 + 162);
  if (v4 == 2)
  {
    if (*(a2 + 304) == 1)
    {
      operator new();
    }

    operator new();
  }

  if (v4 != 1)
  {
    if (!*(**(result + 80) + 168 * a3 + 162))
    {
      *(a4 + 23) = 15;
      strcpy(a4, "Notice_Platform");
      return result;
    }

    goto LABEL_7;
  }

  if (*(a2 + 304) == 1)
  {
    operator new();
  }

  *(a4 + 23) = 20;
  strcpy(a4, "Notice_Platform_Name");
  return result;
}

BOOL sub_A19AB8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 != 4 && a2 != 2 || *a3 != 2)
  {
    return 0;
  }

  if (*(a3 + 216) != 1)
  {
    return 1;
  }

  v3 = *(a3 + 183);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a3 + 168);
  }

  if (!v3)
  {
    return 1;
  }

  v4 = *(a3 + 215);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a3 + 200);
  }

  return v4 == 0;
}

uint64_t sub_A19B38@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result > 8)
  {
    if (result <= 11)
    {
      if (result == 9)
      {
        v2 = 15;
        a2[23] = 15;
        v3 = "_EXPRESS_TICKET";
      }

      else
      {
        if (result == 10)
        {
          goto LABEL_17;
        }

        v2 = 15;
        a2[23] = 15;
        v3 = "_NIGHT_DISCOUNT";
      }

      *a2 = *v3;
      *(a2 + 7) = *(v3 + 7);
      goto LABEL_43;
    }

    if ((result - 13) >= 3)
    {
      if (result == 12)
      {
        v2 = 10;
        a2[23] = 10;
        *(a2 + 4) = 21573;
        *a2 = *"_SL_TICKET";
        goto LABEL_43;
      }

      goto LABEL_23;
    }

LABEL_17:
    v4 = a2;
    result = sub_7E7E4(1u);
    if (!result)
    {
LABEL_37:
      v2 = 13;
      a2 = v4;
      v4[23] = 13;
      qmemcpy(v4, "_UNKNOWN_TYPE", 13);
      goto LABEL_43;
    }

    sub_19594F8(&v11);
    sub_4A5C(&v11, "Unexpected Surcharge Type: ", 27);
    std::ostream::operator<<();
    if ((v21 & 0x10) != 0)
    {
      v7 = v20;
      if (v20 < v17)
      {
        v20 = v17;
        v7 = v17;
      }

      v8 = v16;
      v5 = v7 - v16;
      if (v7 - v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_45;
      }
    }

    else
    {
      if ((v21 & 8) == 0)
      {
        v5 = 0;
        v10 = 0;
LABEL_32:
        *(&__p + v5) = 0;
        sub_7E854(&__p, 1u);
        if (v10 < 0)
        {
          operator delete(__p);
        }

        if (v19 < 0)
        {
          operator delete(v18);
        }

        std::locale::~locale(&v13);
        std::ostream::~ostream();
        result = std::ios::~ios();
        goto LABEL_37;
      }

      v8 = v14;
      v5 = v15 - v14;
      if ((v15 - v14) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_45:
        sub_3244();
      }
    }

    if (v5 >= 0x17)
    {
      operator new();
    }

    v10 = v5;
    if (v5)
    {
      memmove(&__p, v8, v5);
    }

    goto LABEL_32;
  }

  if (result > 3)
  {
    if ((result - 4) >= 2)
    {
      if (result == 6)
      {
        v2 = 13;
        a2[23] = 13;
        v6 = "_TRAIN_TICKET";
        goto LABEL_39;
      }

      if (result == 7)
      {
        v2 = 6;
        a2[23] = 6;
        *a2 = 1313426527;
        *(a2 + 2) = 21061;
        goto LABEL_43;
      }

LABEL_23:
      v2 = 13;
      a2[23] = 13;
      v6 = "_UNKNOWN_TYPE";
LABEL_39:
      *a2 = *v6;
      *(a2 + 5) = *(v6 + 5);
      goto LABEL_43;
    }

    goto LABEL_17;
  }

  if (result <= 1)
  {
    if (result == 1)
    {
      v2 = 14;
      a2[23] = 14;
      qmemcpy(a2, "_RESERVED_SEAT", 14);
      goto LABEL_43;
    }

    goto LABEL_23;
  }

  if (result == 2)
  {
    v2 = 18;
    a2[23] = 18;
    *(a2 + 8) = 21569;
    *a2 = *"_NON_RESERVED_SEAT";
  }

  else
  {
    v2 = 6;
    a2[23] = 6;
    *a2 = 1163020127;
    *(a2 + 2) = 20037;
  }

LABEL_43:
  a2[v2] = 0;
  return result;
}

void sub_A19F58(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  if (SHIBYTE(a11) < 0)
  {
    operator delete(a9);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_A19F9C(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  *(a2 + 57) = 0u;
  a2[2] = 0u;
  a2[3] = 0u;
  *a2 = 0u;
  a2[1] = 0u;
  v4 = sub_64B998((a2 + 5));
  sub_A1A024(a1, a2 + 10, v4, v5);
}

void sub_A19FF8(_Unwind_Exception *a1)
{
  sub_1A104((v1 + 48));
  sub_4B98C4((v1 + 24));
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void sub_A1A024(uint64_t a1, uint64_t *a2, double a3, int32x4_t a4)
{
  v4 = **(a1 + 72);
  if (v4 == 8 || v4 == 2)
  {
    sub_A1AB08(a1, a2, &v21, a4);
    sub_A1AE7C(a1, a2, __p);
    v8 = v23;
    if ((v23 & 0x80u) != 0)
    {
      v8 = v22;
    }

    if (v8)
    {
      sub_9CE41C(&v21, *(a1 + 96), a2);
    }

    v9 = v20;
    v10 = v20;
    if ((v20 & 0x80u) != 0)
    {
      v9 = __p[1];
    }

    if (v9)
    {
      v11 = sub_9274F4(*(a1 + 96), __p);
      v12 = v23;
      if ((v23 & 0x80u) != 0)
      {
        v12 = v22;
      }

      if (v12)
      {
        v13 = a2[7];
        if (v13 >= a2[8])
        {
          v14 = sub_1CEE8((a2 + 6), &xmmword_22A6298);
        }

        else
        {
          *(v13 + 16) = 0x100000000000000;
          *v13 = xmmword_22A6298;
          v14 = v13 + 24;
          a2[7] = v13 + 24;
        }

        a2[7] = v14;
      }

      sub_64C184(a2, v11);
      v10 = v20;
    }

    if ((v10 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }

    v15 = v24;
    if (!v24)
    {
      goto LABEL_34;
    }

    v16 = v25;
    v17 = v24;
    if (v25 == v24)
    {
LABEL_33:
      v25 = v15;
      operator delete(v17);
LABEL_34:
      if (v23 < 0)
      {
        operator delete(v21);
      }

      return;
    }

    while (1)
    {
      if (*(v16 - 1) < 0)
      {
        operator delete(*(v16 - 3));
        v18 = v16 - 6;
        if (*(v16 - 25) < 0)
        {
LABEL_31:
          operator delete(*v18);
        }
      }

      else
      {
        v18 = v16 - 6;
        if (*(v16 - 25) < 0)
        {
          goto LABEL_31;
        }
      }

      v16 = v18;
      if (v18 == v15)
      {
        v17 = v24;
        goto LABEL_33;
      }
    }
  }
}

void sub_A1A1E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_A1ADC0(&a16);
  _Unwind_Resume(a1);
}

void sub_A1A21C(uint64_t a1, unsigned __int8 *a2, uint64_t *a3)
{
  if (*(a1 + 40) == 1 && *a2 <= 1u)
  {
    sub_588850(0, v5);
    sub_64BF94(a3, "{IC_Artwork}", v5);
  }
}

void sub_A1A2D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_53E440(va);
  _Unwind_Resume(a1);
}

void sub_A1A2EC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(a1 + 56);
  v11 = *(a1 + 48);
  if (v11 != v10)
  {
    while ((sub_9BD0A4(*v11, a2) & 1) != 0)
    {
      if (++v11 == v10)
      {
        strcpy(a5, "{BaseFare} cash fare");
        v12 = 20;
        goto LABEL_26;
      }
    }
  }

  if (*(a1 + 73) == 1 && *(a1 + 40) == 1)
  {
    strcpy(a5, "{BaseFare} IC fare");
    v12 = 18;
  }

  else
  {
    v14 = *(a1 + 56);
    v15 = *(a1 + 48);
    if (v15 != v14)
    {
      while ((sub_9BCFA4(*v15, a2) & 1) != 0)
      {
        if (++v15 == v14)
        {
          operator new();
        }
      }

      v16 = *(a1 + 48);
      v17 = *(a1 + 56);
      if (v16 != v17)
      {
        do
        {
          if ((sub_9BD018(*v16, a2) & 1) == 0)
          {
            goto LABEL_25;
          }

          ++v16;
        }

        while (v16 != v17);
        v16 = *(a1 + 48);
        if (*(a1 + 56) - v16 >= 9uLL)
        {
          operator new();
        }
      }

      v18 = *v16;
      v19 = (a3 + 968);
      sub_508FC0(*v16, a2, v27);
      v20 = *(a4 + 24);
      v21 = "{BaseFare} {CardName} card fare";
      if ((v20 & 1) == 0 && !sub_2C8F00(a2, v18, *v19))
      {
        v21 = "{BaseFare} {CardName} fare";
      }

      v22 = strlen(v21);
      if (v22 < 0x7FFFFFFFFFFFFFF8)
      {
        v23 = v22;
        if (v22 < 0x17)
        {
          v26 = v22;
          if (v22)
          {
            memcpy(&__dst, v21, v22);
          }

          *(&__dst + v23) = 0;
          *v31 = *"{CardName}";
          v32 = 0xA00000000000000;
          if (SHIBYTE(v28) < 0)
          {
            sub_325C(&v33, v27[0], v27[1]);
          }

          else
          {
            v33 = *v27;
            v34 = v28;
          }

          memset(__p, 0, sizeof(__p));
          v29 = __p;
          v30 = 0;
          operator new();
        }

        operator new();
      }

      sub_3244();
    }

LABEL_25:
    strcpy(a5, "Board_Base_Fare");
    v12 = 15;
  }

LABEL_26:
  *(a5 + 23) = v12;
  *(a5 + 32) = 0;
  *(a5 + 40) = 0;
  *(a5 + 24) = 0;
}

void sub_A1A868(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  sub_1AA90(&a10);
  sub_1AB28(&a27);
  if (a18 < 0)
  {
    operator delete(__p);
    if (a24 < 0)
    {
LABEL_6:
      operator delete(a19);
      _Unwind_Resume(a1);
    }
  }

  else if (a24 < 0)
  {
    goto LABEL_6;
  }

  _Unwind_Resume(a1);
}

void sub_A1AB08(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>, int32x4_t a4@<Q1>)
{
  v5.i32[1] = 0;
  v5.i64[1] = 0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  v6 = a1[9];
  if (*(v6 + 2104) != 1)
  {
    goto LABEL_3;
  }

  v7 = *(v6 + 2024);
  if (v7 == 0x7FFFFFFF)
  {
    goto LABEL_3;
  }

  if ((*(v6 + 2055) & 0x80000000) == 0)
  {
    if (!*(v6 + 2055))
    {
      goto LABEL_3;
    }

LABEL_20:
    if (v7)
    {
      sub_A1A970(a1, v6 + 2024, a2);
    }

    strcpy(a3, "Board_Base_Fare_Free");
    *(a3 + 23) = 20;
    *(a3 + 32) = 0;
    *(a3 + 40) = 0;
    *(a3 + 24) = 0;
    return;
  }

  if (*(v6 + 2040))
  {
    goto LABEL_20;
  }

LABEL_3:
  v9 = a1[3];
  v8 = a1[4];
  if (v8 != v9)
  {
    v10 = 0;
    while (1)
    {
      v12 = *(v8 - 8);
      v8 -= 8;
      v11 = v12;
      v13 = *v12;
      if (*v12 == 8 || v13 == 2)
      {
        ++v10;
        if (*(v11 + 2104) == 1 && v11[506] != 0x7FFFFFFF)
        {
          v15 = *(v11 + 2055);
          if (v15 < 0)
          {
            v15 = *(v11 + 255);
          }

          if (v15)
          {
            break;
          }
        }
      }

      if (v8 == v9)
      {
        return;
      }
    }

    if (v11[517] > v10)
    {
      v16 = *(a1[11] + 1184);
      if (v16 < 2)
      {
        goto LABEL_25;
      }

      if (v16 == 2)
      {
        if (*(v6 + 2144) == 1)
        {
LABEL_25:
          operator new();
        }

        v5.i32[0] = 8;
        a4.i32[0] = *v6;
        v18 = vbicq_s8(xmmword_22A6020, vdupq_lane_s32(*&vceqq_s32(a4, v5), 0));
        if (*v6 == 8)
        {
          v17 = 0;
        }

        else
        {
          v17 = 0x6172545F65657246;
        }
      }

      else
      {
        v17 = 0;
        v18 = 0uLL;
      }

      *&v19 = v17;
      *(&v19 + 1) = v18.i64[0];
      *a3 = v19;
      *(a3 + 16) = v18.i64[1];
      *(a3 + 24) = 0;
      *(a3 + 32) = 0;
      *(a3 + 40) = 0;
    }
  }
}

void sub_A1AD7C(_Unwind_Exception *a1)
{
  operator delete(v2);
  sub_A1ADC0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_A1ADC0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 24);
    if (v3 == v2)
    {
LABEL_11:
      *(a1 + 32) = v2;
      operator delete(v4);
      goto LABEL_12;
    }

    while (1)
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 3));
        v5 = v3 - 6;
        if (*(v3 - 25) < 0)
        {
LABEL_9:
          operator delete(*v5);
        }
      }

      else
      {
        v5 = v3 - 6;
        if (*(v3 - 25) < 0)
        {
          goto LABEL_9;
        }
      }

      v3 = v5;
      if (v5 == v2)
      {
        v4 = *(a1 + 24);
        goto LABEL_11;
      }
    }
  }

LABEL_12:
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_A1AE7C(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = *(a1 + 72);
  if (*(v3 + 2144) != 1)
  {
    return;
  }

  v4 = *(v3 + 2112);
  if (*(v3 + 2120) == v4)
  {
    sub_6FAB4();
  }

  v6 = *v4;
  if (*v4 == 0x7FFFFFFF)
  {
    goto LABEL_15;
  }

  v7 = *(v4 + 31);
  if ((v7 & 0x8000000000000000) == 0)
  {
    if (v6)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 == 0;
    }

    if (!v8)
    {
      return;
    }

LABEL_15:
    sub_A19B38(*(v4 + 40), v17);
    if ((v18 & 0x80u) == 0)
    {
      v10 = v18;
    }

    else
    {
      v10 = v17[1];
    }

    if (v10 + 10 <= 0x7FFFFFFFFFFFFFF7)
    {
      if (v10 + 10 >= 0x17)
      {
        operator new();
      }

      *&v16.__r_.__value_.__r.__words[1] = 0x6567uLL;
      *(&v16.__r_.__value_.__s + 23) = v10 + 10;
      v16.__r_.__value_.__r.__words[0] = *"{Surcharge";
      if (v10)
      {
        if ((v18 & 0x80u) == 0)
        {
          v11 = v17;
        }

        else
        {
          v11 = v17[0];
        }

        memmove(&v16.__r_.__value_.__r.__words[1] + 2, v11, v10);
      }

      *(&v16.__r_.__value_.__r.__words[1] + v10 + 2) = 0;
      v12 = std::string::append(&v16, "}", 1uLL);
      v13 = *&v12->__r_.__value_.__l.__data_;
      v15 = v12->__r_.__value_.__r.__words[2];
      *__p = v13;
      v12->__r_.__value_.__l.__size_ = 0;
      v12->__r_.__value_.__r.__words[2] = 0;
      v12->__r_.__value_.__r.__words[0] = 0;
      sub_64EFAC(a2, __p, v4);
    }

    sub_3244();
  }

  if (v6)
  {
    v9 = 1;
  }

  else
  {
    v9 = *(v4 + 16) == 0;
  }

  if (v9)
  {
    goto LABEL_15;
  }
}

void sub_A1B2D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  sub_53E440(&__p);
  if (v33 < 0)
  {
    operator delete(*(v34 - 104));
    if ((v32 & 0x80) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v32 & 0x80) == 0)
  {
LABEL_3:
    _Unwind_Resume(a1);
  }

  operator delete(v31);
  _Unwind_Resume(a1);
}

void sub_A1B378(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1[11] + 1444))
  {
    v2 = *(*a1 + 136);

    v2();
  }

  else
  {
    *(a2 + 320) = 0;
    *(a2 + 288) = 0u;
    *(a2 + 304) = 0u;
    *(a2 + 256) = 0u;
    *(a2 + 272) = 0u;
    *(a2 + 224) = 0u;
    *(a2 + 240) = 0u;
    *(a2 + 192) = 0u;
    *(a2 + 208) = 0u;
    *(a2 + 176) = 0u;
    *(a2 + 128) = 0u;
    *(a2 + 144) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 112) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 160) = 0u;
    v3 = a2 + 160;
    sub_64B998(a2);
    sub_64B998(v3);
    *(a2 + 320) = 0;
  }
}

void sub_A1B440(uint64_t a1@<X8>)
{
  *(a1 + 320) = 0;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 160) = 0u;
  v2 = a1 + 160;
  sub_64B998(a1);
  sub_64B998(v2);
  *(a1 + 320) = 0;
}

uint64_t sub_A1B4C0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1[11] + 1444))
  {
    v3 = *(*a1 + 144);

    return v3();
  }

  else
  {
    (*(*a1 + 152))(v5);
    sub_55BD50(a2, v5);
    *(a2 + 160) = 0;
    return sub_53A868(v5);
  }
}

void sub_A1B58C(uint64_t a1@<X8>)
{
  *(a1 + 160) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  sub_64B998(a1);
  *(v1 + 160) = 0;
}

void sub_A1B5D8(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, int a5@<W4>, char a6@<W5>, char a7@<W6>, void **a8@<X8>)
{
  v9 = *a2;
  if (*a2 == 0x7FFFFFFF)
  {
LABEL_2:

    sub_64B998(a8);
    return;
  }

  v14 = a2;
  if (*(a2 + 8))
  {
    v15 = *(a2 + 9);
    if (v15 == 1)
    {
      v16 = 5;
    }

    else if (v15 == 2)
    {
      if ((a7 & 1) == 0)
      {
        goto LABEL_2;
      }

      v16 = 4;
    }

    else
    {
      v17 = a2[1];
      if (*(a2 + 9) || *(a2 + 8) != 1 || v17 == 0x7FFFFFFF || v9 / 60 != v17 / 60)
      {
        if (v17 <= v9)
        {
          v16 = 2;
        }

        else
        {
          v16 = 3;
        }
      }

      else
      {
        v16 = 1;
      }
    }
  }

  else
  {
    v16 = 0;
  }

  sub_64B9C4(a8, (*(a1 + 88) + 1177));
  if (v16 & 6) == 2 && (a6)
  {
    v19 = 0;
    sub_64C770(a8, &xmmword_22A6030, &unk_22A6048, 2, &v19);
    sub_9CE3F8(a8, v16);
  }

  else
  {
    sub_64C184(a8, &xmmword_22A6030);
  }

  if (a5 && v16 && v16 != 5)
  {
    v14 += v14[1] != 0x7FFFFFFF;
  }

  v18 = *v14;
  sub_64E308(a8, &xmmword_22A6030, &v18, a3, a4);
}

void sub_A1B7F4(uint64_t a1@<X0>, int *a2@<X1>, void **a4@<X8>)
{
  sub_64B9C4(a4, (*(a1 + 88) + 1177));
  if (!*(a2 + 8) || (v7 = *(a2 + 9), v7 == 1))
  {
    v11 = *(a1 + 96);
    v18 = 9;
    strcpy(__p, "Scheduled");
    v12 = sub_9274F4(v11, __p);
    sub_64C184(a4, v12);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    if (v7 == 2)
    {
      v8 = *(a1 + 96);
      v18 = 9;
      strcpy(__p, "Cancelled");
      v9 = sub_9274F4(v8, __p);
      v16 = 0;
      sub_64C770(a4, v9, &unk_22A62F8, 2, &v16);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }

      v10 = 4;
    }

    else
    {
      v13 = a2[1];
      if (*a2 == 0x7FFFFFFF || *(a2 + 9) || *(a2 + 8) != 1 || v13 == 0x7FFFFFFF || *a2 / 60 != v13 / 60)
      {
        operator new();
      }

      v14 = *(a1 + 96);
      v18 = 7;
      strcpy(__p, "On-time");
      v15 = sub_9274F4(v14, __p);
      v16 = 0;
      sub_64C770(a4, v15, "OnTime", 1, &v16);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }

      v10 = 1;
    }

    sub_9CE3F8(a4, v10);
  }
}

void sub_A1BAC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_53A868(v15);
  _Unwind_Resume(a1);
}

void sub_A1BB1C(uint64_t a1@<X0>, unsigned int a2@<W1>, const void **a3@<X2>, uint64_t a4@<X8>)
{
  v6 = sub_6DEFC(a2, *(*(a1 + 88) + 968));
  if (v6 > 1)
  {
    switch(v6)
    {
      case 2:
        if (*(a3 + 23) >= 0)
        {
          v7 = *(a3 + 23);
        }

        else
        {
          v7 = a3[1];
        }

        if (v7 + 3 <= 0x7FFFFFFFFFFFFFF7)
        {
          if (v7 + 3 >= 0x17)
          {
            operator new();
          }

          v18.__r_.__value_.__r.__words[2] = 0;
          *&v18.__r_.__value_.__l.__data_ = 0x776546uLL;
          *(&v18.__r_.__value_.__s + 23) = v7 + 3;
          v10 = &v18.__r_.__value_.__s.__data_[3];
          if (v7)
          {
            if (*(a3 + 23) >= 0)
            {
              v11 = a3;
            }

            else
            {
              v11 = *a3;
            }

            memmove(v18.__r_.__value_.__r.__words + 3, v11, v7);
          }

          goto LABEL_67;
        }

        goto LABEL_70;
      case 3:
        if (*(a3 + 23) >= 0)
        {
          v7 = *(a3 + 23);
        }

        else
        {
          v7 = a3[1];
        }

        if (v7 + 4 <= 0x7FFFFFFFFFFFFFF7)
        {
          if (v7 + 4 >= 0x17)
          {
            operator new();
          }

          *&v18.__r_.__value_.__r.__words[1] = 0uLL;
          *(&v18.__r_.__value_.__s + 23) = v7 + 4;
          v10 = &v18.__r_.__value_.__s.__data_[4];
          v18.__r_.__value_.__r.__words[0] = 2037277005;
          if (v7)
          {
            if (*(a3 + 23) >= 0)
            {
              v12 = a3;
            }

            else
            {
              v12 = *a3;
            }

            memmove(v18.__r_.__value_.__r.__words + 4, v12, v7);
          }

          goto LABEL_67;
        }

LABEL_70:
        sub_3244();
      case 4:
        if (*(a3 + 23) >= 0)
        {
          v7 = *(a3 + 23);
        }

        else
        {
          v7 = a3[1];
        }

        if (v7 + 5 <= 0x7FFFFFFFFFFFFFF7)
        {
          if (v7 + 5 >= 0x17)
          {
            operator new();
          }

          HIDWORD(v18.__r_.__value_.__r.__words[1]) = 0;
          v18.__r_.__value_.__r.__words[2] = 0;
          *(&v18.__r_.__value_.__s + 23) = v7 + 5;
          *(v18.__r_.__value_.__r.__words + 4) = 114;
          v10 = &v18.__r_.__value_.__s.__data_[5];
          LODWORD(v18.__r_.__value_.__l.__data_) = 1701344335;
          if (v7)
          {
            if (*(a3 + 23) >= 0)
            {
              v15 = a3;
            }

            else
            {
              v15 = *a3;
            }

            memmove(v18.__r_.__value_.__r.__words + 5, v15, v7);
          }

LABEL_67:
          v10[v7] = 0;
          v17 = std::string::append(&v18, "s", 1uLL);
          *a4 = *v17;
          v17->__r_.__value_.__l.__size_ = 0;
          v17->__r_.__value_.__r.__words[2] = 0;
          v17->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v18.__r_.__value_.__l.__data_);
          }

          return;
        }

        goto LABEL_70;
    }

LABEL_37:
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    return;
  }

  if (v6)
  {
    if (v6 == 1)
    {
      if (*(a3 + 23) >= 0)
      {
        v7 = *(a3 + 23);
      }

      else
      {
        v7 = a3[1];
      }

      if (v7 + 3 <= 0x7FFFFFFFFFFFFFF7)
      {
        if (v7 + 3 >= 0x17)
        {
          operator new();
        }

        v18.__r_.__value_.__r.__words[2] = 0;
        *&v18.__r_.__value_.__l.__data_ = 0x6F7754uLL;
        *(&v18.__r_.__value_.__s + 23) = v7 + 3;
        v10 = &v18.__r_.__value_.__s.__data_[3];
        if (v7)
        {
          if (*(a3 + 23) >= 0)
          {
            v16 = a3;
          }

          else
          {
            v16 = *a3;
          }

          memmove(v18.__r_.__value_.__r.__words + 3, v16, v7);
        }

        goto LABEL_67;
      }

      goto LABEL_70;
    }

    goto LABEL_37;
  }

  if (*(a3 + 23) >= 0)
  {
    v8 = *(a3 + 23);
  }

  else
  {
    v8 = a3[1];
  }

  v9 = v8 + 3;
  if (v8 + 3 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_70;
  }

  if (v9 >= 0x17)
  {
    operator new();
  }

  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  *(a4 + 23) = v9;
  *(a4 + 2) = 101;
  v13 = (a4 + 3);
  *a4 = 28239;
  if (v8)
  {
    if (*(a3 + 23) >= 0)
    {
      v14 = a3;
    }

    else
    {
      v14 = *a3;
    }

    memmove(v13, v14, v8);
  }

  *(v13 + v8) = 0;
}

void sub_A1C004(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A1C02C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  *v65 = 0u;
  *v66 = 0u;
  v67 = *(a3 + 32);
  prime = *(a3 + 8);
  if (prime == 1)
  {
    prime = 2;
LABEL_17:
    sub_B07C(v65, prime);
    goto LABEL_18;
  }

  if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(*(a3 + 8));
    v9 = v65[1];
    v10 = prime >= v65[1];
    if (prime > v65[1])
    {
      goto LABEL_17;
    }
  }

  else
  {
    v9 = 0;
    v10 = 1;
    if (prime)
    {
      goto LABEL_17;
    }
  }

  if (!v10)
  {
    v11 = vcvtps_u32_f32(v66[1] / v67);
    if (v9 < 3 || (v12 = vcnt_s8(v9), v12.i16[0] = vaddlv_u8(v12), v12.u32[0] > 1uLL))
    {
      v11 = std::__next_prime(v11);
    }

    else
    {
      v13 = 1 << -__clz(v11 - 1);
      if (v11 >= 2)
      {
        v11 = v13;
      }
    }

    if (prime <= v11)
    {
      prime = v11;
    }

    if (prime < v9)
    {
      goto LABEL_17;
    }
  }

LABEL_18:
  for (i = *(a3 + 16); i; i = *i)
  {
    sub_2C7D4(v65, i + 2, (i + 2));
  }

  v15 = a1[59];
  v16 = a1[60];
  if (v15 != v16)
  {
    while (1)
    {
      v17 = sub_3536DC(v65, v15);
      if (!v17)
      {
        goto LABEL_23;
      }

      v18 = v65[1];
      v19 = v17[1];
      v20 = vcnt_s8(v65[1]);
      v20.i16[0] = vaddlv_u8(v20);
      if (v20.u32[0] > 1uLL)
      {
        if (v19 >= v65[1])
        {
          v19 %= v65[1];
        }
      }

      else
      {
        v19 &= v65[1] - 1;
      }

      v21 = *v17;
      v22 = v65[0];
      v23 = *(v65[0] + v19);
      do
      {
        v24 = v23;
        v23 = *v23;
      }

      while (v23 != v17);
      if (v24 != v66)
      {
        v25 = v24[1];
        if (v20.u32[0] > 1uLL)
        {
          if (v25 >= v65[1])
          {
            v25 %= v65[1];
          }
        }

        else
        {
          v25 &= v65[1] - 1;
        }

        if (v25 == v19)
        {
          goto LABEL_44;
        }
      }

      if (!v21)
      {
        break;
      }

      v26 = v21[1];
      if (v20.u32[0] > 1uLL)
      {
        if (v26 >= v65[1])
        {
          v26 %= v65[1];
        }
      }

      else
      {
        v26 &= v65[1] - 1;
      }

      if (v26 != v19)
      {
        break;
      }

LABEL_45:
      v27 = v21[1];
      if (v20.u32[0] > 1uLL)
      {
        if (v27 >= v18)
        {
          v27 %= v18;
        }
      }

      else
      {
        v27 &= v18 - 1;
      }

      if (v27 != v19)
      {
        v22[v27] = v24;
        v21 = *v17;
      }

LABEL_51:
      *v24 = v21;
      *v17 = 0;
      --v66[1];
      if (*(v17 + 63) < 0)
      {
        v28 = v17;
        operator delete(v17[5]);
        v17 = v28;
        if (*(v28 + 39) < 0)
        {
LABEL_55:
          v29 = v17;
          operator delete(v17[2]);
          v17 = v29;
        }
      }

      else if (*(v17 + 39) < 0)
      {
        goto LABEL_55;
      }

      operator delete(v17);
LABEL_23:
      v15 += 18;
      if (v15 == v16)
      {
        goto LABEL_56;
      }
    }

    *(v65[0] + v19) = 0;
    v21 = *v17;
LABEL_44:
    if (!v21)
    {
      goto LABEL_51;
    }

    goto LABEL_45;
  }

LABEL_56:
  *v62 = 0u;
  *v63 = 0u;
  v64 = 1065353216;
  v30 = a1[62];
  v31 = a1[63];
  if (v30 != v31)
  {
    v32 = (v30 + 24);
    do
    {
      v36 = sub_3536DC(v65, v32 - 3);
      v37 = v36;
      if (v36)
      {
        v38 = (v36 + 5);
        sub_977A7C(v62, v36 + 2, (v36 + 2), (v36 + 5));
        if (v32 != v38)
        {
          v39 = *(v32 + 23);
          if (*(v37 + 63) < 0)
          {
            if (v39 >= 0)
            {
              v33 = v32;
            }

            else
            {
              v33 = *v32;
            }

            if (v39 >= 0)
            {
              v34 = *(v32 + 23);
            }

            else
            {
              v34 = v32[1];
            }

            sub_13B38(v37 + 5, v33, v34);
          }

          else if ((*(v32 + 23) & 0x80) != 0)
          {
            sub_13A68(v37 + 5, *v32, v32[1]);
          }

          else
          {
            v40 = *v32;
            v37[7] = v32[2];
            *v38 = v40;
          }
        }
      }

      v35 = v32 + 3;
      v32 += 6;
    }

    while (v35 != v31);
  }

  sub_6A5584(a2, v65, a1[12], 0, __p);
  sub_6A56A4(__p, v62);
  sub_64C184(a4, __p);
  v41 = a1[59];
  for (j = a1[60]; v41 != j; v41 += 144)
  {
    v43 = v61;
    if ((v61 & 0x80u) == 0)
    {
      v44 = __p;
    }

    else
    {
      v44 = __p[0];
    }

    if ((v61 & 0x80u) != 0)
    {
      v43 = __p[1];
    }

    v45 = *(v41 + 23);
    if (v45 >= 0)
    {
      v46 = v41;
    }

    else
    {
      v46 = *v41;
    }

    if (v45 >= 0)
    {
      v47 = *(v41 + 23);
    }

    else
    {
      v47 = *(v41 + 8);
    }

    if (v47)
    {
      if (v43 >= v47)
      {
        v48 = v44 + v43;
        v49 = *v46;
        v50 = v44;
        do
        {
          v51 = v43 - v47;
          if (v51 == -1)
          {
            break;
          }

          v52 = memchr(v50, v49, v51 + 1);
          if (!v52)
          {
            break;
          }

          v53 = v52;
          if (!memcmp(v52, v46, v47))
          {
            if (v53 != v48 && v53 - v44 != -1)
            {
              goto LABEL_74;
            }

            break;
          }

          v50 = (v53 + 1);
          v43 = v48 - (v53 + 1);
        }

        while (v43 >= v47);
      }
    }

    else
    {
LABEL_74:
      sub_64BF34(a4, v41);
    }
  }

  if (v61 < 0)
  {
    operator delete(__p[0]);
  }

  v54 = v63[0];
  if (v63[0])
  {
    do
    {
      v58 = *v54;
      if (*(v54 + 63) < 0)
      {
        operator delete(v54[5]);
        if (*(v54 + 39) < 0)
        {
LABEL_112:
          operator delete(v54[2]);
        }
      }

      else if (*(v54 + 39) < 0)
      {
        goto LABEL_112;
      }

      operator delete(v54);
      v54 = v58;
    }

    while (v58);
  }

  v55 = v62[0];
  v62[0] = 0;
  if (v55)
  {
    operator delete(v55);
  }

  v56 = v66[0];
  if (v66[0])
  {
    do
    {
      v59 = *v56;
      if (*(v56 + 63) < 0)
      {
        operator delete(v56[5]);
        if (*(v56 + 39) < 0)
        {
LABEL_118:
          operator delete(v56[2]);
        }
      }

      else if (*(v56 + 39) < 0)
      {
        goto LABEL_118;
      }

      operator delete(v56);
      v56 = v59;
    }

    while (v59);
  }

  v57 = v65[0];
  v65[0] = 0;
  if (v57)
  {
    operator delete(v57);
  }
}

void sub_A1C584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  sub_2CD04(va);
  sub_2CD04(va1);
  _Unwind_Resume(a1);
}

void sub_A1C5A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_2CD04(va);
  _Unwind_Resume(a1);
}

void sub_A1C5B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_2CD04(&a16);
    sub_2CD04(&a22);
    _Unwind_Resume(a1);
  }

  sub_2CD04(&a16);
  sub_2CD04(&a22);
  _Unwind_Resume(a1);
}

void sub_A1C628(char *a1, uint64_t a2, int a3, int a4)
{
  v4 = *(a2 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 8);
  }

  if (v4)
  {
    sub_A16654(a1, a2, a3, a4, v14);
    if (*(a2 + 23) < 0)
    {
      sub_325C(__p, *a2, *(a2 + 8));
    }

    else
    {
      *__p = *a2;
      v13 = *(a2 + 16);
    }

    v7 = (*(*a1 + 112))(a1);
    v8 = (*(*a1 + 120))(a1);
    sub_9CD974(v14, v7, v8, a1[160], *(a1 + 12), a2);
    sub_A1C02C(a1, a2, v14, (a2 + 80));
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p[0]);
    }

    v9 = v15;
    if (!v15)
    {
LABEL_10:
      v10 = v14[0];
      v14[0] = 0;
      if (v10)
      {
        operator delete(v10);
      }

      return;
    }

    while (1)
    {
      v11 = *v9;
      if (*(v9 + 63) < 0)
      {
        operator delete(v9[5]);
        if (*(v9 + 39) < 0)
        {
LABEL_18:
          operator delete(v9[2]);
        }
      }

      else if (*(v9 + 39) < 0)
      {
        goto LABEL_18;
      }

      operator delete(v9);
      v9 = v11;
      if (!v11)
      {
        goto LABEL_10;
      }
    }
  }
}

void sub_A1C794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2CD04(va);
  _Unwind_Resume(a1);
}

void sub_A1C7A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_2CD04(&a15);
  _Unwind_Resume(a1);
}

void sub_A1C7CC(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, void *a5@<X8>)
{
  v37 = 0uLL;
  v38 = 0;
  if (*(a2 + 24) == *(a2 + 32))
  {
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    return;
  }

  sub_A16654(a1, a2, a3, a4, v35);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  while (v8 != v9)
  {
    if (*(v8 + 23) < 0)
    {
      sub_325C(__len, *v8, *(v8 + 1));
    }

    else
    {
      v10 = *v8;
      v33 = *(v8 + 2);
      *__len = v10;
    }

    v11 = *(v8 + 24);
    v34 = *(v8 + 24);
    v12 = HIBYTE(v33);
    v13 = HIBYTE(v33);
    if (v33 < 0)
    {
      v12 = __len[1];
    }

    if (v12)
    {
      __p[0] = 0;
      __p[1] = 0;
      v31 = 0;
      if (v11)
      {
        v14 = (*(*a1 + 112))(a1);
        v15 = (*(*a1 + 120))(a1);
        sub_9CD974(v35, v14, v15, *(a1 + 160), *(a1 + 96), __len);
        sub_6A5584(__len, v35, *(a1 + 96), 0, &v28);
        if (SHIBYTE(v31) < 0)
        {
          operator delete(__p[0]);
        }

        *__p = v28;
        v31 = v29;
      }

      else if (SHIBYTE(v33) < 0)
      {
        sub_13A68(__p, __len[0], __len[1]);
      }

      else
      {
        *__p = *__len;
        v31 = v33;
      }

      v16 = HIBYTE(v31);
      v17 = HIBYTE(v31);
      if (v31 < 0)
      {
        v16 = __p[1];
      }

      if (v16)
      {
        v18 = *(&v37 + 1);
        if (*(&v37 + 1) >= v38)
        {
          v20 = sub_1CEE8(&v37, __p);
        }

        else
        {
          if (SHIBYTE(v31) < 0)
          {
            sub_325C(*(&v37 + 1), __p[0], __p[1]);
          }

          else
          {
            v19 = *__p;
            *(*(&v37 + 1) + 16) = v31;
            *v18 = v19;
          }

          v20 = v18 + 24;
        }

        *(&v37 + 1) = v20;
        v17 = HIBYTE(v31);
      }

      if (v17 < 0)
      {
        operator delete(__p[0]);
      }

      v13 = HIBYTE(v33);
    }

    if (v13 < 0)
    {
      operator delete(__len[0]);
    }

    v8 += 2;
  }

  *a5 = v37;
  a5[2] = v38;
  v38 = 0;
  v37 = 0uLL;
  v21 = v36;
  if (v36)
  {
    while (1)
    {
      v22 = *v21;
      if (v21[63] < 0)
      {
        operator delete(*(v21 + 5));
        if ((v21[39] & 0x80000000) == 0)
        {
          goto LABEL_36;
        }

LABEL_39:
        operator delete(*(v21 + 2));
        operator delete(v21);
        v21 = v22;
        if (!v22)
        {
          break;
        }
      }

      else
      {
        if (v21[39] < 0)
        {
          goto LABEL_39;
        }

LABEL_36:
        operator delete(v21);
        v21 = v22;
        if (!v22)
        {
          break;
        }
      }
    }
  }

  v23 = v35[0];
  v35[0] = 0;
  if (v23)
  {
    operator delete(v23);
  }

  v24 = v37;
  if (v37)
  {
    v25 = *(&v37 + 1);
    v26 = v37;
    if (*(&v37 + 1) != v37)
    {
      do
      {
        v27 = *(v25 - 1);
        v25 -= 3;
        if (v27 < 0)
        {
          operator delete(*v25);
        }
      }

      while (v25 != v24);
      v26 = v37;
    }

    *(&v37 + 1) = v24;
    operator delete(v26);
  }
}

void sub_A1CAE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, char a28)
{
  *(v29 - 72) = v28;
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  sub_2CD04(&a28);
  sub_1A104((v29 - 80));
  _Unwind_Resume(a1);
}

uint64_t sub_A1CB48@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  (*(*a1 + 96))(&v55);
  v8 = v57;
  if ((v57 & 0x80u) != 0)
  {
    v8 = v56;
  }

  if (!v8 && sub_4D1F6C(v63) && v58 == v59)
  {
    sub_64B998(a4);
    return sub_9721FC(&v55);
  }

  v9 = v57;
  if ((v57 & 0x80u) != 0)
  {
    v9 = v56;
  }

  if (v9)
  {
    sub_A1C628(a1, &v55, a2, a3);
    goto LABEL_10;
  }

  if (v58 == v59)
  {
    goto LABEL_10;
  }

  sub_A1C7CC(a1, &v55, a2, a3, &v53);
  if ((v62 & 1) == 0)
  {
    memset(&__p, 0, sizeof(__p));
    v11 = v53;
    v12 = v54;
    if (v54 == v53)
    {
LABEL_77:
      sub_64C184(v63, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if (v11)
        {
          goto LABEL_87;
        }

        goto LABEL_10;
      }

LABEL_78:
      if (!v11)
      {
        goto LABEL_10;
      }

      goto LABEL_87;
    }

    v32 = 0;
    v33 = 0;
    v34 = 0xAAAAAAAAAAAAAAABLL * (v54 - v53);
    v35 = v53;
    while (1)
    {
      v36 = *(v35 + 23);
      v37 = v36 >= 0 ? v35 : *v35;
      v38 = v36 >= 0 ? *(v35 + 23) : v35[1];
      std::string::append(&__p, v37, v38);
      if (v33 < 0xAAAAAAAAAAAAAAABLL * ((v61 - v60) >> 3))
      {
        break;
      }

LABEL_48:
      ++v33;
      v35 += 3;
      v32 += 24;
      if (v34 == v33)
      {
        goto LABEL_77;
      }
    }

    v39 = (v60 + v32);
    v40 = *(v60 + v32 + 23);
    v41 = v40;
    v42 = *(v60 + v32 + 8);
    if (v40 < 0)
    {
      v40 = v39[1];
    }

    if (v40 == (&dword_0 + 1) && ((v43 = *v39, v41 >= 0) ? (v44 = (v60 + v32)) : (v44 = *v39), *v44 == 32))
    {
      if (v41 < 0)
      {
        goto LABEL_68;
      }
    }

    else
    {
      v45 = sub_9274F4(*(a1 + 96), v60 + v32);
      v39 = v45;
      if (*(v45 + 23) < 0)
      {
        v43 = *v45;
        v42 = v45[1];
LABEL_68:
        sub_325C(v50, v43, v42);
LABEL_69:
        if (SHIBYTE(v51) >= 0)
        {
          v47 = v50;
        }

        else
        {
          v47 = v50[0];
        }

        if (SHIBYTE(v51) >= 0)
        {
          v48 = HIBYTE(v51);
        }

        else
        {
          v48 = v50[1];
        }

        std::string::append(&__p, v47, v48);
        if (SHIBYTE(v51) < 0)
        {
          operator delete(v50[0]);
        }

        goto LABEL_48;
      }
    }

    v46 = *v39;
    v51 = v39[2];
    *v50 = v46;
    goto LABEL_69;
  }

  v11 = v53;
  v12 = v54;
  sub_74300(v63, v53, v54, 0xAAAAAAAAAAAAAAABLL * (v54 - v53));
  v13 = v60;
  v14 = v61;
  if (v60 == v61)
  {
    goto LABEL_78;
  }

  do
  {
    v17 = *(v13 + 23);
    v18 = v17;
    v19 = *(v13 + 8);
    if ((v17 & 0x80u) != 0)
    {
      v17 = *(v13 + 8);
    }

    if (v17 == 1 && ((v20 = *v13, v18 >= 0) ? (v21 = v13) : (v21 = *v13), *v21 == 32))
    {
      v22 = v13;
      if ((v18 & 0x80000000) == 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v22 = sub_9274F4(*(a1 + 96), v13);
      if ((*(v22 + 23) & 0x80000000) == 0)
      {
LABEL_29:
        v23 = *v22;
        __p.__r_.__value_.__r.__words[2] = v22[2];
        *&__p.__r_.__value_.__l.__data_ = v23;
        goto LABEL_32;
      }

      v20 = *v22;
      v19 = v22[1];
    }

    sub_325C(&__p, v20, v19);
LABEL_32:
    v24 = v65;
    if (v65 < v66)
    {
      v15 = *&__p.__r_.__value_.__l.__data_;
      *(v65 + 16) = *(&__p.__r_.__value_.__l + 2);
      *v24 = v15;
      v16 = v24 + 24;
LABEL_17:
      v65 = v16;
      goto LABEL_18;
    }

    v25 = v64;
    v26 = v65 - v64;
    v27 = 0xAAAAAAAAAAAAAAABLL * ((v65 - v64) >> 3);
    v28 = v27 + 1;
    if (v27 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1794();
    }

    if (0x5555555555555556 * ((v66 - v64) >> 3) > v28)
    {
      v28 = 0x5555555555555556 * ((v66 - v64) >> 3);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((v66 - v64) >> 3) >= 0x555555555555555)
    {
      v29 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v29 = v28;
    }

    if (v29)
    {
      if (v29 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_1808();
    }

    v30 = (8 * ((v65 - v64) >> 3));
    *v30 = __p;
    memset(&__p, 0, sizeof(__p));
    v16 = 24 * v27 + 24;
    v31 = 24 * v27 - v26;
    memcpy(v30 - v26, v25, v26);
    v64 = v31;
    v65 = v16;
    v66 = 0;
    if (!v25)
    {
      goto LABEL_17;
    }

    operator delete(v25);
    v65 = v16;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

LABEL_18:
    v13 += 24;
  }

  while (v13 != v14);
  if (!v11)
  {
    goto LABEL_10;
  }

LABEL_87:
  while (v12 != v11)
  {
    v49 = *(v12 - 1);
    v12 -= 3;
    if (v49 < 0)
    {
      operator delete(*v12);
    }
  }

  operator delete(v11);
LABEL_10:
  sub_55BD50(a4, v63);
  return sub_9721FC(&v55);
}

void sub_A1D008(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void **a25, uint64_t a26, uint64_t a27, char a28)
{
  if (a23 < 0)
  {
    operator delete(__p);
    sub_1A104(&a25);
    sub_9721FC(&a28);
    _Unwind_Resume(a1);
  }

  sub_1A104(&a25);
  sub_9721FC(&a28);
  _Unwind_Resume(a1);
}

void sub_A1D0C0(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  sub_64B9C4(a3, (*(a1 + 88) + 1177));
  memset(&__p, 0, sizeof(__p));
  if (a2 > 599)
  {
    *(&__p.__r_.__value_.__s + 23) = 15;
    strcpy(&__p, "Walk {WalkTime}");
    v7 = a2 & 0x7FFFFFFF;
    v6 = "{WalkTime}";
  }

  else
  {
    sub_195A048(&__p, "Walk less than {OneMinute}", 0x1AuLL);
    v6 = "{OneMinute}";
    v7 = 600;
  }

  sub_64E914(a3, v6, v7);
  v8 = sub_9274F4(*(a1 + 96), &__p);
  sub_64C184(a3, v8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_A1D1B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_53A868(v15);
  _Unwind_Resume(a1);
}

void sub_A1D1DC(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_64B9C4(a3, (*(a1 + 88) + 1177));
  v6 = sub_9BCE28(*(a1 + 80), a2);
  v7 = sub_9BCBDC(*(a1 + 80), a2);
  v8 = *(a1 + 96);
  sub_9CC800(v7, v6, __p);
  v9 = sub_9274F4(v8, __p);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  LOBYTE(__p[0]) = 0;
  sub_64C770(a3, v9, &unk_22A62F8, 2, __p);
  *(a3 + 104) = 5;
}

void sub_A1D2E0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_64B9C4(a2, (*(a1 + 88) + 1177));
  sub_9CBE3C(*(a1 + 132), v10);
  if ((v11 & 0x80u) == 0)
  {
    v4 = v11;
  }

  else
  {
    v4 = v10[1];
  }

  if (v4 + 10 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  if (v4 + 10 >= 0x17)
  {
    operator new();
  }

  __p[1] = 0;
  v9 = 0;
  __p[0] = 0;
  HIBYTE(v9) = v4 + 10;
  if (v4)
  {
    if ((v11 & 0x80u) == 0)
    {
      v5 = v10;
    }

    else
    {
      v5 = v10[0];
    }

    memmove(__p, v5, v4);
  }

  strcpy(__p + v4, " cancelled");
  v6 = sub_9274F4(*(a1 + 96), __p);
  v7 = 0;
  sub_64C770(a2, v6, &unk_22A62F8, 2, &v7);
  *(a2 + 104) = 4;
  if ((SHIBYTE(v9) & 0x80000000) == 0)
  {
    if ((v11 & 0x80000000) == 0)
    {
      return;
    }

LABEL_16:
    operator delete(v10[0]);
    return;
  }

  operator delete(__p[0]);
  if (v11 < 0)
  {
    goto LABEL_16;
  }
}

void sub_A1D474(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((a22 & 0x80000000) == 0)
    {
LABEL_3:
      sub_53A868(v22);
      _Unwind_Resume(a1);
    }
  }

  else if ((a22 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a17);
  sub_53A868(v22);
  _Unwind_Resume(a1);
}

void sub_A1D550(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = a2[275];
  v8 = a2[276];
  if (v7 == v8)
  {
    sub_A1D87C(v17, a1, a2[94], 0, 0, a3);
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    v15 = a4;
    v16 = 0;
    operator new();
  }

  v9 = 0;
  v10 = 0;
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v11 = (v8 - v7) >> 4;
  do
  {
    sub_A1D87C(v17, a1, *(a2[275] + v9), v10, 1, 1);
    v12 = a4[1];
    if (v12 >= a4[2])
    {
      v13 = sub_A1E90C(a4, v17);
    }

    else
    {
      sub_A1E838(a4[1], v17);
      v13 = v12 + 160;
    }

    a4[1] = v13;
    if (v26 < 0)
    {
      operator delete(__p);
      if (v24 < 0)
      {
LABEL_12:
        operator delete(v23);
        v14 = v22;
        if (v22 == -1)
        {
          goto LABEL_14;
        }

LABEL_13:
        (off_266FAE8[v14])(&v15, &v21);
        goto LABEL_14;
      }
    }

    else if (v24 < 0)
    {
      goto LABEL_12;
    }

    v14 = v22;
    if (v22 != -1)
    {
      goto LABEL_13;
    }

LABEL_14:
    v22 = -1;
    if (v20 < 0)
    {
      operator delete(v19);
      if ((v18 & 0x80000000) == 0)
      {
        goto LABEL_3;
      }
    }

    else if ((v18 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

    operator delete(v17[0]);
LABEL_3:
    ++v10;
    v9 += 16;
  }

  while (v11 != v10);
}

void sub_A1D7F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    sub_4A48(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_A1D87C(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, int a5, int a6)
{
  v6 = *(*(a2 + 80) + 72);
  if (0x66FD0EB66FD0EB67 * ((*(*(a2 + 80) + 80) - v6) >> 3) <= a3)
  {
    sub_6FAB4();
  }

  v11 = v6 + 696 * a3;
  if (*(v11 + 559) == 1)
  {
    v33 = 0uLL;
    v34 = 0;
    if (!a6)
    {
      goto LABEL_15;
    }
  }

  else if (a5)
  {
    sub_9D45C0(v11, v23);
    v33 = *v23;
    v34 = v24;
    v23[1] = 0;
    *&v24 = 0;
    v23[0] = 0;
    if (SLOBYTE(__p_15[1]) < 0)
    {
      operator delete(__p);
      if (SBYTE7(v24) < 0)
      {
        operator delete(v23[0]);
      }
    }

    if (!a6)
    {
      goto LABEL_15;
    }
  }

  else
  {
    sub_9D4538(v11, &v33);
    if (!a6)
    {
      goto LABEL_15;
    }
  }

  if (*(*(a2 + 112) + 8) == 1)
  {
    v12 = *(v11 + 616);
    if (*(v11 + 624) - v12 == 1 && *v12 == 1)
    {
      sub_55F1E8(v23, v11 + 104);
      goto LABEL_16;
    }
  }

LABEL_15:
  __p = 0;
  v32 = 0u;
  *v23 = 0u;
  v24 = 0u;
  memset(__p_8, 255, sizeof(__p_8));
  *__p_15 = 0uLL;
  v28 = 0;
  memset(v29, 0, sizeof(v29));
  v30 = 0;
  v31 = 0;
  *&v32 = 0;
  BYTE8(v32) = 0;
LABEL_16:
  std::to_string(&v20, a4);
  v13 = std::string::insert(&v20, 0, "{Line", 5uLL);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v21.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v21.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  v15 = std::string::append(&v21, "}", 1uLL);
  v16 = v15->__r_.__value_.__r.__words[0];
  size = v15->__r_.__value_.__l.__size_;
  v22[0] = v15->__r_.__value_.__r.__words[2];
  *(v22 + 3) = *(&v15->__r_.__value_.__r.__words[2] + 3);
  v18 = SHIBYTE(v15->__r_.__value_.__r.__words[2]);
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_21:
    operator delete(v20.__r_.__value_.__l.__data_);
    if ((v18 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_22;
  }

  operator delete(v21.__r_.__value_.__l.__data_);
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_21;
  }

LABEL_18:
  if ((v18 & 0x80000000) == 0)
  {
LABEL_19:
    *a1 = v16;
    *(a1 + 8) = size;
    *(a1 + 16) = v22[0];
    *(a1 + 19) = *(v22 + 3);
    *(a1 + 23) = v18;
    goto LABEL_23;
  }

LABEL_22:
  sub_325C(a1, v16, size);
LABEL_23:
  if (SHIBYTE(v34) < 0)
  {
    sub_325C((a1 + 24), v33, *(&v33 + 1));
  }

  else
  {
    *(a1 + 24) = v33;
    *(a1 + 40) = v34;
  }

  sub_55F1E8(a1 + 48, v23);
  if (v18 < 0)
  {
    operator delete(v16);
    if ((SBYTE7(v32) & 0x80000000) == 0)
    {
LABEL_28:
      if ((v29[0] & 0x80000000) == 0)
      {
        goto LABEL_29;
      }

LABEL_33:
      operator delete(*(__p_15 + 1));
      v19 = __p;
      if (__p == -1)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }
  }

  else if ((SBYTE7(v32) & 0x80000000) == 0)
  {
    goto LABEL_28;
  }

  operator delete(v30);
  if ((v29[0] & 0x80000000) != 0)
  {
    goto LABEL_33;
  }

LABEL_29:
  v19 = __p;
  if (__p != -1)
  {
LABEL_34:
    (off_266FAE8[v19])(&v21, v23);
  }

LABEL_35:
  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33);
  }
}