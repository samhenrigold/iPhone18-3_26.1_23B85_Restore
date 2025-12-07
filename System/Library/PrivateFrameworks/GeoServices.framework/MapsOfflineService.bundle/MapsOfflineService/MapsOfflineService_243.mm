void sub_EDDE88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_EDE10C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_EDE138(uint64_t a1)
{
  *a1 = &off_2674490;
  v2 = *(a1 + 184);
  if (v2)
  {
    *(a1 + 192) = v2;
    operator delete(v2);
  }

  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  v3 = *(a1 + 112);
  if (v3)
  {
    *(a1 + 120) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 80);
  if (v4)
  {
    *(a1 + 88) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    *(a1 + 24) = v5;
    operator delete(v5);
  }

  return a1;
}

uint64_t sub_EDE1C8(uint64_t a1)
{
  sub_EDE200(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_EDE200(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 16); i != a2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 72;
    v5 = *(i - 32);
    if (v5)
    {
      v6 = *(i - 24);
      v7 = *(i - 32);
      if (v6 != v5)
      {
        do
        {
          v9 = *(v6 - 48);
          if (v9)
          {
            v10 = *(v6 - 40);
            v8 = *(v6 - 48);
            if (v10 != v9)
            {
              v11 = *(v6 - 40);
              do
              {
                v13 = *(v11 - 24);
                v11 -= 24;
                v12 = v13;
                if (v13)
                {
                  *(v10 - 16) = v12;
                  operator delete(v12);
                }

                v10 = v11;
              }

              while (v11 != v9);
              v8 = *(v6 - 48);
            }

            *(v6 - 40) = v9;
            operator delete(v8);
          }

          v6 -= 64;
        }

        while (v6 != v5);
        v7 = *(i - 32);
      }

      *(i - 24) = v5;
      operator delete(v7);
    }

    v14 = *(i - 56);
    if (v14)
    {
      *(i - 48) = v14;
      operator delete(v14);
    }
  }
}

uint64_t sub_EDE2F4(uint64_t a1)
{
  *a1 = &off_26744A8;
  v2 = *(a1 + 184);
  if (v2)
  {
    *(a1 + 192) = v2;
    operator delete(v2);
  }

  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  v3 = *(a1 + 112);
  if (v3)
  {
    *(a1 + 120) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 80);
  if (v4)
  {
    *(a1 + 88) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    *(a1 + 24) = v5;
    operator delete(v5);
  }

  return a1;
}

uint64_t sub_EDE384(uint64_t a1)
{
  *a1 = &off_26744C0;
  v2 = *(a1 + 184);
  if (v2)
  {
    *(a1 + 192) = v2;
    operator delete(v2);
  }

  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  v3 = *(a1 + 112);
  if (v3)
  {
    *(a1 + 120) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 80);
  if (v4)
  {
    *(a1 + 88) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    *(a1 + 24) = v5;
    operator delete(v5);
  }

  return a1;
}

uint64_t sub_EDE414(void *a1, unint64_t a2, void *a3, unint64_t a4, uint64_t a5)
{
  v8 = a2;
  if (a1)
  {
    if (a3)
    {
      while (1)
      {
        v10 = sub_4D1DC0(a1);
        v11 = sub_4D1DC0(a3);
        if (v8 >= v10 || a4 >= v11)
        {
          if (v8 < v10 == a4 < v11)
          {
            return 0;
          }
        }

        else
        {
          v12 = sub_4D1F50(a1, v8);
          if (v12 == sub_4D1F50(a3, a4))
          {
            return 0;
          }
        }

        v13 = sub_4D1F50(a1, v8);
        v14 = sub_2B51D8(*(*a5 + 8), *(v13 + 32) | (*(v13 + 36) << 32));
        v15 = (v14 - *v14);
        if (*v15 >= 0x9Bu)
        {
          v16 = v15[77];
          if (v16)
          {
            if ((*(v14 + v16 + 3) & 2) != 0)
            {
              break;
            }
          }
        }

        ++v8;
      }
    }

    else
    {
      if (a2 >= sub_4D1DC0(a1))
      {
        return 0;
      }

      while (1)
      {
        v17 = sub_4D1F50(a1, v8);
        v18 = sub_2B51D8(*(*a5 + 8), *(v17 + 32) | (*(v17 + 36) << 32));
        v19 = (v18 - *v18);
        if (*v19 >= 0x9Bu)
        {
          v20 = v19[77];
          if (v20)
          {
            if ((*(v18 + v20 + 3) & 2) != 0)
            {
              break;
            }
          }
        }

        if (++v8 >= sub_4D1DC0(a1))
        {
          return 0;
        }
      }
    }
  }

  else
  {
    if (!a3 || a4 >= sub_4D1DC0(a3))
    {
      return 0;
    }

    while (1)
    {
      v22 = sub_4D1F50(0, v8);
      v23 = sub_2B51D8(*(*a5 + 8), *(v22 + 32) | (*(v22 + 36) << 32));
      v24 = (v23 - *v23);
      if (*v24 >= 0x9Bu)
      {
        v25 = v24[77];
        if (v25)
        {
          if ((*(v23 + v25 + 3) & 2) != 0)
          {
            break;
          }
        }
      }

      ++v8;
      if (a4 >= sub_4D1DC0(a3))
      {
        return 0;
      }
    }
  }

  return 1;
}

uint64_t **sub_EDE628(void *a1, uint64_t *a2)
{
  v2 = a2;
  v4 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_AAD8(&v25, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    v13 = *(v2 + 23);
    if (v13 >= 0)
    {
      v14 = *(v2 + 23);
    }

    else
    {
      v14 = v2[1];
    }

    if (v13 < 0)
    {
      v2 = *v2;
    }

    if (v9.u32[0] < 2uLL)
    {
      v15 = *&v7 - 1;
      while (1)
      {
        v20 = v12[1];
        if (v8 == v20)
        {
          v21 = *(v12 + 39);
          v22 = v21;
          if (v21 < 0)
          {
            v21 = v12[3];
          }

          if (v21 == v14)
          {
            v23 = v22 >= 0 ? (v12 + 2) : v12[2];
            if (!memcmp(v23, v2, v14))
            {
              return v12;
            }
          }
        }

        else if ((v20 & v15) != v10)
        {
          return 0;
        }

        v12 = *v12;
        if (!v12)
        {
          return v12;
        }
      }
    }

    do
    {
      v16 = v12[1];
      if (v8 == v16)
      {
        v17 = *(v12 + 39);
        v18 = v17;
        if (v17 < 0)
        {
          v17 = v12[3];
        }

        if (v17 == v14)
        {
          v19 = v18 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v19, v2, v14))
          {
            return v12;
          }
        }
      }

      else
      {
        if (v16 >= *&v7)
        {
          v16 %= *&v7;
        }

        if (v16 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

uint64_t **sub_EDE7E0(void *a1, uint64_t *a2, uint64_t a3, __int128 **a4)
{
  v4 = a2;
  v6 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v7 = v6;
  }

  v8 = sub_AAD8(&v26, a2, v7);
  v9 = v8;
  v10 = a1[1];
  if (!*&v10)
  {
    goto LABEL_43;
  }

  v11 = vcnt_s8(v10);
  v11.i16[0] = vaddlv_u8(v11);
  if (v11.u32[0] > 1uLL)
  {
    v12 = v8;
    if (v8 >= *&v10)
    {
      v12 = v8 % *&v10;
    }
  }

  else
  {
    v12 = (*&v10 - 1) & v8;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_43:
    operator new();
  }

  v15 = *(v4 + 23);
  if (v15 >= 0)
  {
    v16 = *(v4 + 23);
  }

  else
  {
    v16 = v4[1];
  }

  if (v15 < 0)
  {
    v4 = *v4;
  }

  if (v11.u32[0] < 2uLL)
  {
    while (1)
    {
      v21 = v14[1];
      if (v21 == v9)
      {
        v22 = *(v14 + 39);
        v23 = v22;
        if (v22 < 0)
        {
          v22 = v14[3];
        }

        if (v22 == v16)
        {
          v24 = v23 >= 0 ? (v14 + 2) : v14[2];
          if (!memcmp(v24, v4, v16))
          {
            return v14;
          }
        }
      }

      else if ((v21 & (*&v10 - 1)) != v12)
      {
        goto LABEL_43;
      }

      v14 = *v14;
      if (!v14)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v17 = v14[1];
    if (v17 == v9)
    {
      break;
    }

    if (v17 >= *&v10)
    {
      v17 %= *&v10;
    }

    if (v17 != v12)
    {
      goto LABEL_43;
    }

LABEL_20:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_43;
    }
  }

  v18 = *(v14 + 39);
  v19 = v18;
  if (v18 < 0)
  {
    v18 = v14[3];
  }

  if (v18 != v16)
  {
    goto LABEL_20;
  }

  v20 = v19 >= 0 ? (v14 + 2) : v14[2];
  if (memcmp(v20, v4, v16))
  {
    goto LABEL_20;
  }

  return v14;
}

void sub_EDEBE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

void sub_EDEBF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

uint64_t sub_EDEC10(void *a1, unint64_t a2, void *a3, unint64_t a4, uint64_t a5)
{
  v8 = a2;
  if (a1)
  {
    if (a3)
    {
      while (1)
      {
        v10 = sub_4D1DC0(a1);
        v11 = sub_4D1DC0(a3);
        if (v8 >= v10 || a4 >= v11)
        {
          if (v8 < v10 == a4 < v11)
          {
            return 0;
          }
        }

        else
        {
          v12 = sub_4D1F50(a1, v8);
          if (v12 == sub_4D1F50(a3, a4))
          {
            return 0;
          }
        }

        v13 = sub_4D1F50(a1, v8);
        v14 = sub_2B51D8(*(*a5 + 8), *(v13 + 32) | ((*(v13 + 36) & 0x1FFFFFFF) << 32));
        v15 = (v14 - *v14);
        if (*v15 >= 0x9Bu)
        {
          v16 = v15[77];
          if (v16)
          {
            if ((*(v14 + v16 + 3) & 2) != 0)
            {
              break;
            }
          }
        }

        ++v8;
      }
    }

    else
    {
      if (a2 >= sub_4D1DC0(a1))
      {
        return 0;
      }

      while (1)
      {
        v17 = sub_4D1F50(a1, v8);
        v18 = sub_2B51D8(*(*a5 + 8), *(v17 + 32) | ((*(v17 + 36) & 0x1FFFFFFF) << 32));
        v19 = (v18 - *v18);
        if (*v19 >= 0x9Bu)
        {
          v20 = v19[77];
          if (v20)
          {
            if ((*(v18 + v20 + 3) & 2) != 0)
            {
              break;
            }
          }
        }

        if (++v8 >= sub_4D1DC0(a1))
        {
          return 0;
        }
      }
    }
  }

  else
  {
    if (!a3 || a4 >= sub_4D1DC0(a3))
    {
      return 0;
    }

    while (1)
    {
      v22 = sub_4D1F50(0, v8);
      v23 = sub_2B51D8(*(*a5 + 8), *(v22 + 32) | ((*(v22 + 36) & 0x1FFFFFFF) << 32));
      v24 = (v23 - *v23);
      if (*v24 >= 0x9Bu)
      {
        v25 = v24[77];
        if (v25)
        {
          if ((*(v23 + v25 + 3) & 2) != 0)
          {
            break;
          }
        }
      }

      ++v8;
      if (a4 >= sub_4D1DC0(a3))
      {
        return 0;
      }
    }
  }

  return 1;
}

void sub_EDEE5C()
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
  xmmword_27BD1D8 = 0u;
  unk_27BD1E8 = 0u;
  dword_27BD1F8 = 1065353216;
  sub_3A9A34(&xmmword_27BD1D8, v0, v0);
  sub_3A9A34(&xmmword_27BD1D8, v3, v3);
  sub_3A9A34(&xmmword_27BD1D8, __p, __p);
  sub_3A9A34(&xmmword_27BD1D8, v9, v9);
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
    qword_27BD180 = 0;
    qword_27BD188 = 0;
    qword_27BD178 = 0;
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

void sub_EDF134(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27BD190)
  {
    qword_27BD198 = qword_27BD190;
    operator delete(qword_27BD190);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_EDF1F8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_7E9A4(v29);
  sub_1757EA4(a3, 0, 0);
  if (*(a1 + 1994))
  {
    sub_EEFE38(&v23, *(a1 + 2160), a1 + 1960, *(a1 + 3152));
    memset(v22, 0, sizeof(v22));
    v6 = *(a1 + 3128);
    if (v6)
    {
      v7 = (v6 + 280);
    }

    else
    {
      v7 = v22;
    }

    sub_EEFE3C(&v23, *a1, v7, a1 + 32, &v20);
    if (&v20 != a3)
    {
      v8 = a3[1];
      if ((v8 & 2) != 0)
      {
        v8 = 0;
      }

      else if (v8)
      {
        v8 = *(v8 & 0xFFFFFFFFFFFFFFFCLL);
      }

      v10 = v21;
      if ((v21 & 2) != 0)
      {
        v10 = 0;
      }

      else if (v21)
      {
        v10 = *(v21 & 0xFFFFFFFFFFFFFFFCLL);
      }

      if (v8 == v10)
      {
        sub_175C55C(a3, &v20);
      }

      else
      {
        sub_175C1D0(a3, &v20);
      }
    }

    sub_1758FB8(&v20);
    *(a2 + 16) = vcvtad_u64_f64(sub_7EA60(v29));
    sub_EDF52C(v22);
    sub_4773BC(&v28);
    v25[0] = off_266AB00;
    v12 = 132;
    do
    {
      v13 = &v25[v12];
      v12 -= 6;
      v14 = *(v13 - 3);
      if (v14)
      {
        v15 = 0;
        v16 = 0;
        v17 = v13 - 5;
        do
        {
          if ((*(v25[v12] + v16) & 0x80000000) == 0)
          {
            v18 = *v17 + v15;
            v19 = *(v18 + 8);
            if (v19)
            {
              *(v18 + 16) = v19;
              operator delete(v19);
              v14 = *(v13 - 3);
            }
          }

          ++v16;
          v15 += 32;
        }

        while (v16 != v14);
        operator delete(v25[v12]);
        v25[v12] = &unk_2290750;
        *(v13 - 1) = 0;
        *(v13 - 4) = 0;
        *(v13 - 3) = 0;
        *v17 = 0;
      }
    }

    while (v12 != 36);
    v25[0] = &off_266AB88;
    if (__p)
    {
      v27 = __p;
      operator delete(__p);
    }
  }

  else
  {
    sub_ECBCBC(&v20, *(a1 + 2160));
    sub_ECBCC0(&v20, *a1, a1 + 1960, (a1 + 1120), &v23);
    if (&v23 != a3)
    {
      v9 = a3[1];
      if ((v9 & 2) != 0)
      {
        v9 = 0;
      }

      else if (v9)
      {
        v9 = *(v9 & 0xFFFFFFFFFFFFFFFCLL);
      }

      v11 = v24;
      if ((v24 & 2) != 0)
      {
        v11 = 0;
      }

      else if (v24)
      {
        v11 = *(v24 & 0xFFFFFFFFFFFFFFFCLL);
      }

      if (v9 == v11)
      {
        sub_175C55C(a3, &v23);
      }

      else
      {
        sub_175C1D0(a3, &v23);
      }
    }

    sub_1758FB8(&v23);
    *(a2 + 8) = vcvtad_u64_f64(sub_7EA60(v29));
  }
}

void sub_EDF4E0(_Unwind_Exception *a1)
{
  sub_EDF52C(&STACK[0x248]);
  sub_EE0F7C(&STACK[0x260]);
  sub_1758FB8(v1);
  _Unwind_Resume(a1);
}

char **sub_EDF52C(char **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 == v2)
    {
      goto LABEL_27;
    }

    while (1)
    {
      v6 = *(v3 - 3);
      if (!v6)
      {
        goto LABEL_6;
      }

      v7 = *(v3 - 2);
      v5 = *(v3 - 3);
      if (v7 != v6)
      {
        break;
      }

LABEL_5:
      *(v3 - 2) = v6;
      operator delete(v5);
LABEL_6:
      v3 -= 32;
      if (v3 == v2)
      {
        v4 = *a1;
LABEL_27:
        a1[1] = v2;
        operator delete(v4);
        return a1;
      }
    }

    while ((*(v7 - 1) & 0x80000000) == 0)
    {
      v9 = *(v7 - 6);
      if (v9)
      {
        goto LABEL_15;
      }

LABEL_16:
      v10 = v7 - 9;
      v11 = *(v7 - 9);
      if (v11)
      {
        v12 = *(v7 - 8);
        v8 = *(v7 - 9);
        if (v12 != v11)
        {
          do
          {
            v13 = *(v12 - 6);
            if (v13)
            {
              *(v12 - 5) = v13;
              operator delete(v13);
            }

            v14 = v12 - 10;
            if (*(v12 - 57) < 0)
            {
              operator delete(*v14);
            }

            v12 -= 10;
          }

          while (v14 != v11);
          v8 = *v10;
        }

        *(v7 - 8) = v11;
        operator delete(v8);
      }

      v7 -= 9;
      if (v10 == v6)
      {
        v5 = *(v3 - 3);
        goto LABEL_5;
      }
    }

    operator delete(*(v7 - 3));
    v9 = *(v7 - 6);
    if (!v9)
    {
      goto LABEL_16;
    }

LABEL_15:
    *(v7 - 5) = v9;
    operator delete(v9);
    goto LABEL_16;
  }

  return a1;
}

void sub_EDF664(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_7E9A4(v29);
  sub_1757EA4(a3, 0, 0);
  if (*(a1 + 1994))
  {
    sub_EFC5B8(&v23, *(a1 + 2160), a1 + 1960, *(a1 + 3152));
    memset(v22, 0, sizeof(v22));
    v6 = *(a1 + 3128);
    if (v6)
    {
      v7 = (v6 + 280);
    }

    else
    {
      v7 = v22;
    }

    sub_EFC5BC(&v23, *a1, v7, a1 + 32, (a1 + 8), &v20);
    if (&v20 != a3)
    {
      v8 = a3[1];
      if ((v8 & 2) != 0)
      {
        v8 = 0;
      }

      else if (v8)
      {
        v8 = *(v8 & 0xFFFFFFFFFFFFFFFCLL);
      }

      v10 = v21;
      if ((v21 & 2) != 0)
      {
        v10 = 0;
      }

      else if (v21)
      {
        v10 = *(v21 & 0xFFFFFFFFFFFFFFFCLL);
      }

      if (v8 == v10)
      {
        sub_175C55C(a3, &v20);
      }

      else
      {
        sub_175C1D0(a3, &v20);
      }
    }

    sub_1758FB8(&v20);
    *(a2 + 16) = vcvtad_u64_f64(sub_7EA60(v29));
    sub_EDF52C(v22);
    sub_4773BC(&v28);
    v25[0] = off_266AC30;
    v12 = 132;
    do
    {
      v13 = &v25[v12];
      v12 -= 6;
      v14 = *(v13 - 3);
      if (v14)
      {
        v15 = 0;
        v16 = 0;
        v17 = v13 - 5;
        do
        {
          if ((*(v25[v12] + v16) & 0x80000000) == 0)
          {
            v18 = *v17 + v15;
            v19 = *(v18 + 8);
            if (v19)
            {
              *(v18 + 16) = v19;
              operator delete(v19);
              v14 = *(v13 - 3);
            }
          }

          ++v16;
          v15 += 32;
        }

        while (v16 != v14);
        operator delete(v25[v12]);
        v25[v12] = &unk_2290750;
        *(v13 - 1) = 0;
        *(v13 - 4) = 0;
        *(v13 - 3) = 0;
        *v17 = 0;
      }
    }

    while (v12 != 36);
    v25[0] = &off_266AB88;
    if (__p)
    {
      v27 = __p;
      operator delete(__p);
    }
  }

  else
  {
    sub_ED2508(&v20, *(a1 + 2160));
    sub_ED250C(&v20, *a1, a1 + 1960, (a1 + 1120), (a1 + 8), &v23);
    if (&v23 != a3)
    {
      v9 = a3[1];
      if ((v9 & 2) != 0)
      {
        v9 = 0;
      }

      else if (v9)
      {
        v9 = *(v9 & 0xFFFFFFFFFFFFFFFCLL);
      }

      v11 = v24;
      if ((v24 & 2) != 0)
      {
        v11 = 0;
      }

      else if (v24)
      {
        v11 = *(v24 & 0xFFFFFFFFFFFFFFFCLL);
      }

      if (v9 == v11)
      {
        sub_175C55C(a3, &v23);
      }

      else
      {
        sub_175C1D0(a3, &v23);
      }
    }

    sub_1758FB8(&v23);
    *(a2 + 8) = vcvtad_u64_f64(sub_7EA60(v29));
  }
}

void sub_EDF94C(_Unwind_Exception *a1)
{
  sub_EDF52C(&STACK[0x248]);
  sub_EB3644(&STACK[0x260]);
  sub_1758FB8(v1);
  _Unwind_Resume(a1);
}

void sub_EDF998(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_7E9A4(v29);
  sub_1757EA4(a3, 0, 0);
  if (*(a1 + 1994))
  {
    sub_F07704(&v23, *(a1 + 2160), a1 + 1960, *(a1 + 3152));
    memset(v22, 0, sizeof(v22));
    v6 = *(a1 + 3128);
    if (v6)
    {
      v7 = (v6 + 280);
    }

    else
    {
      v7 = v22;
    }

    sub_F07708(&v23, *a1, v7, a1 + 32, &v20);
    if (&v20 != a3)
    {
      v8 = a3[1];
      if ((v8 & 2) != 0)
      {
        v8 = 0;
      }

      else if (v8)
      {
        v8 = *(v8 & 0xFFFFFFFFFFFFFFFCLL);
      }

      v10 = v21;
      if ((v21 & 2) != 0)
      {
        v10 = 0;
      }

      else if (v21)
      {
        v10 = *(v21 & 0xFFFFFFFFFFFFFFFCLL);
      }

      if (v8 == v10)
      {
        sub_175C55C(a3, &v20);
      }

      else
      {
        sub_175C1D0(a3, &v20);
      }
    }

    sub_1758FB8(&v20);
    *(a2 + 16) = vcvtad_u64_f64(sub_7EA60(v29));
    sub_EDF52C(v22);
    sub_4773BC(&v28);
    v25[0] = off_266ACA8;
    v12 = 132;
    do
    {
      v13 = &v25[v12];
      v12 -= 6;
      v14 = *(v13 - 3);
      if (v14)
      {
        v15 = 0;
        v16 = 0;
        v17 = v13 - 5;
        do
        {
          if ((*(v25[v12] + v16) & 0x80000000) == 0)
          {
            v18 = *v17 + v15;
            v19 = *(v18 + 8);
            if (v19)
            {
              *(v18 + 16) = v19;
              operator delete(v19);
              v14 = *(v13 - 3);
            }
          }

          ++v16;
          v15 += 32;
        }

        while (v16 != v14);
        operator delete(v25[v12]);
        v25[v12] = &unk_2290750;
        *(v13 - 1) = 0;
        *(v13 - 4) = 0;
        *(v13 - 3) = 0;
        *v17 = 0;
      }
    }

    while (v12 != 36);
    v25[0] = &off_266AB88;
    if (__p)
    {
      v27 = __p;
      operator delete(__p);
    }
  }

  else
  {
    sub_ED8398(&v20, *(a1 + 2160));
    sub_ED839C(&v20, *a1, a1 + 1960, (a1 + 1120), &v23);
    if (&v23 != a3)
    {
      v9 = a3[1];
      if ((v9 & 2) != 0)
      {
        v9 = 0;
      }

      else if (v9)
      {
        v9 = *(v9 & 0xFFFFFFFFFFFFFFFCLL);
      }

      v11 = v24;
      if ((v24 & 2) != 0)
      {
        v11 = 0;
      }

      else if (v24)
      {
        v11 = *(v24 & 0xFFFFFFFFFFFFFFFCLL);
      }

      if (v9 == v11)
      {
        sub_175C55C(a3, &v23);
      }

      else
      {
        sub_175C1D0(a3, &v23);
      }
    }

    sub_1758FB8(&v23);
    *(a2 + 8) = vcvtad_u64_f64(sub_7EA60(v29));
  }
}

void sub_EDFC80(_Unwind_Exception *a1)
{
  sub_EDF52C(&STACK[0x248]);
  sub_EE1098(&STACK[0x260]);
  sub_1758FB8(v1);
  _Unwind_Resume(a1);
}

void sub_EDFCCC(uint64_t a1, uint64_t a2)
{
  sub_175C1D0(a2 + 576, a2);
  if (!*(a1 + 3128))
  {
    goto LABEL_44;
  }

  v4 = sub_1950D4C((a2 + 592), dword_278CFF0, 11, &off_2769490, 0);
  *(v4 + 4) |= 8u;
  v5 = v4[9];
  if (!v5)
  {
    v6 = v4[1];
    v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
    if (v6)
    {
      v7 = *v7;
    }

    sub_12D0EA4(v7);
    v4[9] = v5;
  }

  v8 = *(a1 + 3128);
  if (!v8)
  {
    sub_21E17C0();
  }

  sub_12C5844(v5, v8);
  v9 = *(a1 + 3128);
  if (!v9)
  {
    sub_21E17C0();
  }

  if (v9[38] == v9[39])
  {
LABEL_15:
    v15 = v9[32];
    for (i = v9[33]; v15 != i; v15 += 64)
    {
      while (1)
      {
        v20 = sub_1950784((a2 + 592), dword_278D010, 11, 0, 0);
        v21 = v20[2];
        if (v21)
        {
          v22 = *(v20 + 2);
          if (v22 < *v21)
          {
            break;
          }
        }

        v17 = v20;
        v18 = sub_12E1EE4(*v20);
        v19 = sub_19593CC(v17, v18);
        sub_12D94D8(v19, v15);
        v15 += 64;
        if (v15 == i)
        {
          goto LABEL_21;
        }
      }

      *(v20 + 2) = v22 + 1;
      sub_12D94D8(*&v21[2 * v22 + 2], v15);
    }

LABEL_21:
    v23 = *(a2 + 872);
    if (v23)
    {
      v24 = (v23 + 8);
    }

    else
    {
      v24 = 0;
    }

    v25 = *(a2 + 864);
    if (v25)
    {
      v26 = &v24[v25];
      do
      {
        v27 = *(a1 + 3128);
        if (!v27)
        {
          sub_21E17C0();
        }

        v28 = *v24;
        v29 = *(*v24 + 280);
        v31 = v27[35];
        v30 = v27[36];
        if (v31 != v30)
        {
          while (*v31 != v29)
          {
            v31 += 32;
            if (v31 == v30)
            {
              goto LABEL_33;
            }
          }
        }

        if (v31 == v30)
        {
LABEL_33:
          if (v30 >= v27[37])
          {
            sub_3E441C(v27 + 35);
            v32 = v33;
          }

          else
          {
            *v30 = -1;
            *(v30 + 16) = 0;
            *(v30 + 24) = 0;
            v32 = v30 + 32;
            *(v30 + 8) = 0;
          }

          v27[36] = v32;
          *(v32 - 32) = v29;
          v31 = v32 - 32;
        }

        v34 = *(v28 + 56);
        if (v34 >= 1)
        {
          v35 = 48;
          v36 = 8;
          do
          {
            v37 = *(*(v28 + 64) + v36);
            if (*(v37 + 41))
            {
              v38 = *(v37 + 8);
              v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
              if (v38)
              {
                v39 = *v39;
              }

              sub_194EA1C((v37 + 768), (*(v31 + 8) + v35), v39);
            }

            v36 += 8;
            v35 += 72;
            --v34;
          }

          while (v34);
        }

        ++v24;
      }

      while (v24 != v26);
    }

LABEL_44:
    sub_EE01BC(a1, v48);
    operator new();
  }

  *(v4 + 4) |= 8u;
  v10 = v4[9];
  if (v10)
  {
    *(v10 + 16) |= 8u;
    v11 = *(v10 + 232);
    if (v11)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v40 = v4[1];
    v41 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
    if (v40)
    {
      v41 = *v41;
    }

    sub_12D0EA4(v41);
    v10 = v42;
    v4[9] = v42;
    *(v42 + 16) |= 8u;
    v11 = *(v42 + 232);
    if (v11)
    {
LABEL_11:
      sub_EE27DC(v48, v11);
      v12 = *(a1 + 3128);
      if (v12)
      {
LABEL_12:
        v13 = *(v12 + 304);
        for (j = *(v12 + 312); v13 != j; v13 += 3)
        {
          sub_EE280C(v48, v13);
        }

        sub_EE11B4(v48);
        v9 = *(a1 + 3128);
        if (!v9)
        {
          sub_21E17C0();
        }

        goto LABEL_15;
      }

LABEL_51:
      exception = __cxa_allocate_exception(0x40uLL);
      v47 = sub_2D390(exception, "Bad optional access.", 0x14uLL);
    }
  }

  v43 = *(v10 + 8);
  v44 = (v43 & 0xFFFFFFFFFFFFFFFCLL);
  if (v43)
  {
    v44 = *v44;
  }

  sub_131A21C(v44);
  *(v10 + 232) = v45;
  sub_EE27DC(v48, v45);
  v12 = *(a1 + 3128);
  if (v12)
  {
    goto LABEL_12;
  }

  goto LABEL_51;
}

void sub_EE0190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_EE11B4(va);
  _Unwind_Resume(a1);
}

void sub_EE01A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_EE11B4(va);
  _Unwind_Resume(a1);
}

void sub_EE01BC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 2160);
  HIBYTE(v12[2]) = 21;
  strcpy(v12, "ResponseBuilderModule");
  __p = 0;
  v10 = 0;
  v11 = 0;
  v4 = sub_3AEC94(v3, v12, &__p);
  sub_41D598(v4, a2);
  v5 = __p;
  if (__p)
  {
    v6 = v10;
    v7 = __p;
    if (v10 != __p)
    {
      do
      {
        v8 = *(v6 - 1);
        v6 -= 3;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = __p;
    }

    v10 = v5;
    operator delete(v7);
  }

  if (SHIBYTE(v12[2]) < 0)
  {
    operator delete(v12[0]);
  }
}

void sub_EE0290(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_EE02B4(uint64_t a1, uint64_t a2)
{
  sub_175C1D0(a2 + 576, a2);
  if (!*(a1 + 3128))
  {
    goto LABEL_44;
  }

  v4 = sub_1950D4C((a2 + 592), dword_278CFF0, 11, &off_2769490, 0);
  *(v4 + 4) |= 8u;
  v5 = v4[9];
  if (!v5)
  {
    v6 = v4[1];
    v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
    if (v6)
    {
      v7 = *v7;
    }

    sub_12D0EA4(v7);
    v4[9] = v5;
  }

  v8 = *(a1 + 3128);
  if (!v8)
  {
    sub_21E17C0();
  }

  sub_12C5844(v5, v8);
  v9 = *(a1 + 3128);
  if (!v9)
  {
    sub_21E17C0();
  }

  if (v9[38] == v9[39])
  {
LABEL_15:
    v15 = v9[32];
    for (i = v9[33]; v15 != i; v15 += 64)
    {
      while (1)
      {
        v20 = sub_1950784((a2 + 592), dword_278D010, 11, 0, 0);
        v21 = v20[2];
        if (v21)
        {
          v22 = *(v20 + 2);
          if (v22 < *v21)
          {
            break;
          }
        }

        v17 = v20;
        v18 = sub_12E1EE4(*v20);
        v19 = sub_19593CC(v17, v18);
        sub_12D94D8(v19, v15);
        v15 += 64;
        if (v15 == i)
        {
          goto LABEL_21;
        }
      }

      *(v20 + 2) = v22 + 1;
      sub_12D94D8(*&v21[2 * v22 + 2], v15);
    }

LABEL_21:
    v23 = *(a2 + 872);
    if (v23)
    {
      v24 = (v23 + 8);
    }

    else
    {
      v24 = 0;
    }

    v25 = *(a2 + 864);
    if (v25)
    {
      v26 = &v24[v25];
      do
      {
        v27 = *(a1 + 3128);
        if (!v27)
        {
          sub_21E17C0();
        }

        v28 = *v24;
        v29 = *(*v24 + 280);
        v31 = v27[35];
        v30 = v27[36];
        if (v31 != v30)
        {
          while (*v31 != v29)
          {
            v31 += 32;
            if (v31 == v30)
            {
              goto LABEL_33;
            }
          }
        }

        if (v31 == v30)
        {
LABEL_33:
          if (v30 >= v27[37])
          {
            sub_3E441C(v27 + 35);
            v32 = v33;
          }

          else
          {
            *v30 = -1;
            *(v30 + 16) = 0;
            *(v30 + 24) = 0;
            v32 = v30 + 32;
            *(v30 + 8) = 0;
          }

          v27[36] = v32;
          *(v32 - 32) = v29;
          v31 = v32 - 32;
        }

        v34 = *(v28 + 56);
        if (v34 >= 1)
        {
          v35 = 48;
          v36 = 8;
          do
          {
            v37 = *(*(v28 + 64) + v36);
            if (*(v37 + 41))
            {
              v38 = *(v37 + 8);
              v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
              if (v38)
              {
                v39 = *v39;
              }

              sub_194EA1C((v37 + 768), (*(v31 + 8) + v35), v39);
            }

            v36 += 8;
            v35 += 72;
            --v34;
          }

          while (v34);
        }

        ++v24;
      }

      while (v24 != v26);
    }

LABEL_44:
    sub_EE07A4(a1, v48);
    operator new();
  }

  *(v4 + 4) |= 8u;
  v10 = v4[9];
  if (v10)
  {
    *(v10 + 16) |= 8u;
    v11 = *(v10 + 232);
    if (v11)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v40 = v4[1];
    v41 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
    if (v40)
    {
      v41 = *v41;
    }

    sub_12D0EA4(v41);
    v10 = v42;
    v4[9] = v42;
    *(v42 + 16) |= 8u;
    v11 = *(v42 + 232);
    if (v11)
    {
LABEL_11:
      sub_EE27DC(v48, v11);
      v12 = *(a1 + 3128);
      if (v12)
      {
LABEL_12:
        v13 = *(v12 + 304);
        for (j = *(v12 + 312); v13 != j; v13 += 3)
        {
          sub_EE280C(v48, v13);
        }

        sub_EE11B4(v48);
        v9 = *(a1 + 3128);
        if (!v9)
        {
          sub_21E17C0();
        }

        goto LABEL_15;
      }

LABEL_51:
      exception = __cxa_allocate_exception(0x40uLL);
      v47 = sub_2D390(exception, "Bad optional access.", 0x14uLL);
    }
  }

  v43 = *(v10 + 8);
  v44 = (v43 & 0xFFFFFFFFFFFFFFFCLL);
  if (v43)
  {
    v44 = *v44;
  }

  sub_131A21C(v44);
  *(v10 + 232) = v45;
  sub_EE27DC(v48, v45);
  v12 = *(a1 + 3128);
  if (v12)
  {
    goto LABEL_12;
  }

  goto LABEL_51;
}

void sub_EE0778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_EE11B4(va);
  _Unwind_Resume(a1);
}

void sub_EE0790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_EE11B4(va);
  _Unwind_Resume(a1);
}

void sub_EE07A4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 2160);
  HIBYTE(v12[2]) = 21;
  strcpy(v12, "ResponseBuilderModule");
  __p = 0;
  v10 = 0;
  v11 = 0;
  v4 = sub_3AEC94(v3, v12, &__p);
  sub_41D7AC(v4, a2);
  v5 = __p;
  if (__p)
  {
    v6 = v10;
    v7 = __p;
    if (v10 != __p)
    {
      do
      {
        v8 = *(v6 - 1);
        v6 -= 3;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = __p;
    }

    v10 = v5;
    operator delete(v7);
  }

  if (SHIBYTE(v12[2]) < 0)
  {
    operator delete(v12[0]);
  }
}

void sub_EE0878(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_EE089C(uint64_t a1, uint64_t a2)
{
  sub_175C1D0(a2 + 576, a2);
  if (!*(a1 + 3128))
  {
    goto LABEL_44;
  }

  v4 = sub_1950D4C((a2 + 592), dword_278CFF0, 11, &off_2769490, 0);
  *(v4 + 4) |= 8u;
  v5 = v4[9];
  if (!v5)
  {
    v6 = v4[1];
    v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
    if (v6)
    {
      v7 = *v7;
    }

    sub_12D0EA4(v7);
    v4[9] = v5;
  }

  v8 = *(a1 + 3128);
  if (!v8)
  {
    sub_21E17C0();
  }

  sub_12C5844(v5, v8);
  v9 = *(a1 + 3128);
  if (!v9)
  {
    sub_21E17C0();
  }

  if (v9[38] == v9[39])
  {
LABEL_15:
    v15 = v9[32];
    for (i = v9[33]; v15 != i; v15 += 64)
    {
      while (1)
      {
        v20 = sub_1950784((a2 + 592), dword_278D010, 11, 0, 0);
        v21 = v20[2];
        if (v21)
        {
          v22 = *(v20 + 2);
          if (v22 < *v21)
          {
            break;
          }
        }

        v17 = v20;
        v18 = sub_12E1EE4(*v20);
        v19 = sub_19593CC(v17, v18);
        sub_12D94D8(v19, v15);
        v15 += 64;
        if (v15 == i)
        {
          goto LABEL_21;
        }
      }

      *(v20 + 2) = v22 + 1;
      sub_12D94D8(*&v21[2 * v22 + 2], v15);
    }

LABEL_21:
    v23 = *(a2 + 872);
    if (v23)
    {
      v24 = (v23 + 8);
    }

    else
    {
      v24 = 0;
    }

    v25 = *(a2 + 864);
    if (v25)
    {
      v26 = &v24[v25];
      do
      {
        v27 = *(a1 + 3128);
        if (!v27)
        {
          sub_21E17C0();
        }

        v28 = *v24;
        v29 = *(*v24 + 280);
        v31 = v27[35];
        v30 = v27[36];
        if (v31 != v30)
        {
          while (*v31 != v29)
          {
            v31 += 32;
            if (v31 == v30)
            {
              goto LABEL_33;
            }
          }
        }

        if (v31 == v30)
        {
LABEL_33:
          if (v30 >= v27[37])
          {
            sub_3E441C(v27 + 35);
            v32 = v33;
          }

          else
          {
            *v30 = -1;
            *(v30 + 16) = 0;
            *(v30 + 24) = 0;
            v32 = v30 + 32;
            *(v30 + 8) = 0;
          }

          v27[36] = v32;
          *(v32 - 32) = v29;
          v31 = v32 - 32;
        }

        v34 = *(v28 + 56);
        if (v34 >= 1)
        {
          v35 = 48;
          v36 = 8;
          do
          {
            v37 = *(*(v28 + 64) + v36);
            if (*(v37 + 41))
            {
              v38 = *(v37 + 8);
              v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
              if (v38)
              {
                v39 = *v39;
              }

              sub_194EA1C((v37 + 768), (*(v31 + 8) + v35), v39);
            }

            v36 += 8;
            v35 += 72;
            --v34;
          }

          while (v34);
        }

        ++v24;
      }

      while (v24 != v26);
    }

LABEL_44:
    sub_EE0D8C(a1, v48);
    operator new();
  }

  *(v4 + 4) |= 8u;
  v10 = v4[9];
  if (v10)
  {
    *(v10 + 16) |= 8u;
    v11 = *(v10 + 232);
    if (v11)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v40 = v4[1];
    v41 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
    if (v40)
    {
      v41 = *v41;
    }

    sub_12D0EA4(v41);
    v10 = v42;
    v4[9] = v42;
    *(v42 + 16) |= 8u;
    v11 = *(v42 + 232);
    if (v11)
    {
LABEL_11:
      sub_EE27DC(v48, v11);
      v12 = *(a1 + 3128);
      if (v12)
      {
LABEL_12:
        v13 = *(v12 + 304);
        for (j = *(v12 + 312); v13 != j; v13 += 3)
        {
          sub_EE280C(v48, v13);
        }

        sub_EE11B4(v48);
        v9 = *(a1 + 3128);
        if (!v9)
        {
          sub_21E17C0();
        }

        goto LABEL_15;
      }

LABEL_51:
      exception = __cxa_allocate_exception(0x40uLL);
      v47 = sub_2D390(exception, "Bad optional access.", 0x14uLL);
    }
  }

  v43 = *(v10 + 8);
  v44 = (v43 & 0xFFFFFFFFFFFFFFFCLL);
  if (v43)
  {
    v44 = *v44;
  }

  sub_131A21C(v44);
  *(v10 + 232) = v45;
  sub_EE27DC(v48, v45);
  v12 = *(a1 + 3128);
  if (v12)
  {
    goto LABEL_12;
  }

  goto LABEL_51;
}

void sub_EE0D60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_EE11B4(va);
  _Unwind_Resume(a1);
}

void sub_EE0D78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_EE11B4(va);
  _Unwind_Resume(a1);
}

void sub_EE0D8C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 2160);
  HIBYTE(v12[2]) = 21;
  strcpy(v12, "ResponseBuilderModule");
  __p = 0;
  v10 = 0;
  v11 = 0;
  v4 = sub_3AEC94(v3, v12, &__p);
  sub_41D820(v4, a2);
  v5 = __p;
  if (__p)
  {
    v6 = v10;
    v7 = __p;
    if (v10 != __p)
    {
      do
      {
        v8 = *(v6 - 1);
        v6 -= 3;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = __p;
    }

    v10 = v5;
    operator delete(v7);
  }

  if (SHIBYTE(v12[2]) < 0)
  {
    operator delete(v12[0]);
  }
}

void sub_EE0E60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_EE0E84(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 224);
  HIBYTE(v12[2]) = 21;
  strcpy(v12, "ResponseBuilderModule");
  __p = 0;
  v10 = 0;
  v11 = 0;
  v4 = sub_3AEC94(v3, v12, &__p);
  sub_41D7AC(v4, a2);
  v5 = __p;
  if (__p)
  {
    v6 = v10;
    v7 = __p;
    if (v10 != __p)
    {
      do
      {
        v8 = *(v6 - 1);
        v6 -= 3;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = __p;
    }

    v10 = v5;
    operator delete(v7);
  }

  if (SHIBYTE(v12[2]) < 0)
  {
    operator delete(v12[0]);
  }
}

void sub_EE0F58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_EE0F7C(void *a1)
{
  sub_4773BC((a1 + 148));
  v2 = a1 + 13;
  a1[13] = off_266AB00;
  v3 = 132;
  do
  {
    v4 = &v2[v3];
    v3 -= 6;
    v5 = *(v4 - 3);
    if (v5)
    {
      v6 = 0;
      v7 = 0;
      v8 = v4 - 5;
      do
      {
        if ((*(v2[v3] + v7) & 0x80000000) == 0)
        {
          v9 = *v8 + v6;
          v10 = *(v9 + 8);
          if (v10)
          {
            *(v9 + 16) = v10;
            operator delete(v10);
            v5 = *(v4 - 3);
          }
        }

        ++v7;
        v6 += 32;
      }

      while (v7 != v5);
      operator delete(v2[v3]);
      v2[v3] = &unk_2290750;
      *(v4 - 1) = 0;
      *(v4 - 4) = 0;
      *(v4 - 3) = 0;
      *v8 = 0;
    }
  }

  while (v3 != 36);
  a1[13] = &off_266AB88;
  v11 = a1[40];
  if (v11)
  {
    a1[41] = v11;
    operator delete(v11);
  }

  return a1;
}

void *sub_EE1098(void *a1)
{
  sub_4773BC((a1 + 148));
  v2 = a1 + 13;
  a1[13] = off_266ACA8;
  v3 = 132;
  do
  {
    v4 = &v2[v3];
    v3 -= 6;
    v5 = *(v4 - 3);
    if (v5)
    {
      v6 = 0;
      v7 = 0;
      v8 = v4 - 5;
      do
      {
        if ((*(v2[v3] + v7) & 0x80000000) == 0)
        {
          v9 = *v8 + v6;
          v10 = *(v9 + 8);
          if (v10)
          {
            *(v9 + 16) = v10;
            operator delete(v10);
            v5 = *(v4 - 3);
          }
        }

        ++v7;
        v6 += 32;
      }

      while (v7 != v5);
      operator delete(v2[v3]);
      v2[v3] = &unk_2290750;
      *(v4 - 1) = 0;
      *(v4 - 4) = 0;
      *(v4 - 3) = 0;
      *v8 = 0;
    }
  }

  while (v3 != 36);
  a1[13] = &off_266AB88;
  v11 = a1[40];
  if (v11)
  {
    a1[41] = v11;
    operator delete(v11);
  }

  return a1;
}

void *sub_EE11B4(void *a1)
{
  sub_EE128C((a1 + 11));
  v2 = a1[8];
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = *(v2 + 10);
      if (v4 != -1)
      {
        (off_26745F8[v4])(&v10, v2 + 2);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = a1[6];
  a1[6] = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = a1[3];
  if (v6)
  {
    do
    {
      v9 = *v6;
      if (*(v6 + 39) < 0)
      {
        operator delete(v6[2]);
      }

      operator delete(v6);
      v6 = v9;
    }

    while (v9);
  }

  v7 = a1[1];
  a1[1] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return a1;
}

uint64_t sub_EE128C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v4 = *v2;
      v5 = v2[2];
      if (v5)
      {
        v6 = v2[3];
        v3 = v2[2];
        if (v6 != v5)
        {
          do
          {
            v7 = v6 - 32;
            v8 = *(v6 - 8);
            if (v8 != -1)
            {
              (off_26745F8[v8])(&v11, v6 - 32);
            }

            *(v6 - 8) = -1;
            v6 -= 32;
          }

          while (v7 != v5);
          v3 = v2[2];
        }

        v2[3] = v5;
        operator delete(v3);
      }

      operator delete(v2);
      v2 = v4;
    }

    while (v4);
  }

  v9 = *a1;
  *a1 = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return a1;
}

void sub_EE136C()
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
  xmmword_27BD230 = 0u;
  unk_27BD240 = 0u;
  dword_27BD250 = 1065353216;
  sub_3A9A34(&xmmword_27BD230, v0, v0);
  sub_3A9A34(&xmmword_27BD230, v3, v3);
  sub_3A9A34(&xmmword_27BD230, __p, __p);
  sub_3A9A34(&xmmword_27BD230, v9, v9);
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
    qword_27BD208 = 0;
    qword_27BD210 = 0;
    qword_27BD200 = 0;
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

void sub_EE15B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27BD218)
  {
    qword_27BD220 = qword_27BD218;
    operator delete(qword_27BD218);
  }

  _Unwind_Resume(exception_object);
}

void sub_EE1660(uint64_t a1)
{
  v2 = sub_74700();
  v3 = sub_73ECC(v2);
  if (sub_585D8(v3))
  {
    v4 = sub_73ECC(v2);
    v5 = *(v4 + 16);
    v10 = *v4;
    v11 = v5;
  }

  else
  {
    sub_58568(&v10);
  }

  sub_585EC(&v10, &__p);
  *(a1 + 40) |= 1u;
  v6 = *(a1 + 8);
  v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
  if (v6)
  {
    v7 = *v7;
  }

  sub_194EA1C((a1 + 376), &__p, v7);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p);
  }

  __p = 0uLL;
  v9 = 0;
  nullsub_1();
}

void sub_EE171C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_EE1738(uint64_t a1)
{
  v2 = sub_74700();
  v3 = sub_73ECC(v2);
  if (sub_585D8(v3))
  {
    v4 = sub_73ECC(v2);
    v5 = *(v4 + 16);
    v10 = *v4;
    v11 = v5;
  }

  else
  {
    sub_58568(&v10);
  }

  sub_585EC(&v10, &__p);
  *(a1 + 40) |= 2u;
  v6 = *(a1 + 8);
  v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
  if (v6)
  {
    v7 = *v7;
  }

  sub_194EA1C((a1 + 200), &__p, v7);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p);
  }

  __p = 0uLL;
  v9 = 0;
  nullsub_1();
}

void sub_EE17F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_EE1810(uint64_t a1, uint64_t a2)
{
  sub_4EF5E4(a1, &__p);
  *(a2 + 40) |= 2u;
  v4 = *(a2 + 8);
  v5 = (v4 & 0xFFFFFFFFFFFFFFFCLL);
  if (v4)
  {
    v5 = *v5;
  }

  sub_194EA30((a2 + 384), &__p, v5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    v8 = sub_4EF360(a1);
    result = sub_585D8(v8);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v6 = sub_4EF360(a1);
    result = sub_585D8(v6);
    if (!result)
    {
      return result;
    }
  }

  v9 = sub_4EF360(a1);
  *(a2 + 40) |= 0x8000u;
  v10 = *(a2 + 496);
  if (v10)
  {
    return sub_ECB7A4(v9, v10);
  }

  v11 = v9;
  v12 = *(a2 + 8);
  v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
  if (v12)
  {
    v13 = *v13;
  }

  v14 = sub_155248C(v13);
  *(a2 + 496) = v14;
  return sub_ECB7A4(v11, v14);
}

void sub_EE190C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_EE1928(uint64_t a1, uint64_t a2)
{
  sub_4EF5E4(a1, &__p);
  *(a2 + 40) |= 1u;
  v4 = *(a2 + 8);
  v5 = (v4 & 0xFFFFFFFFFFFFFFFCLL);
  if (v4)
  {
    v5 = *v5;
  }

  sub_194EA30((a2 + 192), &__p, v5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    v8 = sub_4EF360(a1);
    result = sub_585D8(v8);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v6 = sub_4EF360(a1);
    result = sub_585D8(v6);
    if (!result)
    {
      return result;
    }
  }

  v9 = sub_4EF360(a1);
  *(a2 + 40) |= 0x20u;
  v10 = *(a2 + 232);
  if (v10)
  {
    return sub_ECB7A4(v9, v10);
  }

  v11 = v9;
  v12 = *(a2 + 8);
  v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
  if (v12)
  {
    v13 = *v13;
  }

  v14 = sub_155248C(v13);
  *(a2 + 232) = v14;
  return sub_ECB7A4(v11, v14);
}

void sub_EE1A24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_EE1A40(int a1, void *a2)
{
  v9[0] = a1;
  LODWORD(v9[1]) = 3;
  v12 = 11;
  strcpy(__p, "RequestTime");
  v17 = __p;
  v17 = (sub_A1D1C(a2, __p, &unk_229EB70, &v17) + 5);
  (sub_3D4A0C)(&v17);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  (off_2674670[LODWORD(v9[1])])(__p, v9);
  v3 = sub_74700();
  v4 = sub_73ED4(v3);
  if (*v4 != v4[1])
  {
    sub_72D24(v3, &v16);
    LODWORD(v17) = v16.__r_.__value_.__r.__words[2];
    *(&v17 + 3) = *(&v16.__r_.__value_.__r.__words[2] + 3);
    v12 = 10;
    memset(&v16, 0, sizeof(v16));
    strcpy(__p, "AbBranchId");
    v9[0] = __p;
    v5 = sub_A1D1C(a2, __p, &unk_229EB70, v9);
    v6 = *(v5 + 12);
    if (v6 != -1)
    {
      (off_2674670[v6])(v9, v5 + 5);
    }

    *(v5 + 12) = -1;
    operator new();
  }

  sub_7F0A4(__p);
  sub_7F2DC(__p, v13);
  v15[0] = v14;
  *(v15 + 3) = *(&v14 + 3);
  v13[1] = 0;
  v14 = 0;
  v10 = 11;
  v13[0] = 0;
  strcpy(v9, "CodeVersion");
  v17 = v9;
  v7 = sub_A1D1C(a2, v9, &unk_229EB70, &v17);
  v8 = *(v7 + 12);
  if (v8 != -1)
  {
    (off_2674670[v8])(&v17, v7 + 5);
  }

  *(v7 + 12) = -1;
  operator new();
}

uint64_t sub_EE24F4(uint64_t a1)
{
  if (sub_3B8538(a1))
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

void sub_EE2518()
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
  xmmword_27BD258 = 0u;
  unk_27BD268 = 0u;
  dword_27BD278 = 1065353216;
  sub_3A9A34(&xmmword_27BD258, v0, v0);
  sub_3A9A34(&xmmword_27BD258, v3, v3);
  sub_3A9A34(&xmmword_27BD258, __p, __p);
  sub_3A9A34(&xmmword_27BD258, v9, v9);
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

void sub_EE26E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  sub_23D9C(&xmmword_27BD258);
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

void *sub_EE2760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1950CD0(a1 + 16, dword_278CFF0, qword_278CFF8);
  v4 = result[6] & 0xFFFFFFFFFFFFFFFELL;
  if (*(v4 + 23) < 0)
  {
    v6 = *v4;
    v7 = *(v4 + 8);

    return sub_325C(a2, v6, v7);
  }

  else
  {
    v5 = *v4;
    *(a2 + 16) = *(v4 + 16);
    *a2 = v5;
  }

  return result;
}

double sub_EE27DC(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 1065353216;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 1065353216;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 1065353216;
  return result;
}

void sub_EE280C(uint64_t *result, uint64_t *a2)
{
  v4 = *result;
  v5 = *(*result + 32);
  if (v5)
  {
    v6 = *(v4 + 24);
    if (v6 < *v5)
    {
      *(v4 + 24) = v6 + 1;
      v7 = *&v5[2 * v6 + 2];
      v8 = *a2;
      v9 = a2[1];
      if (*a2 == v9)
      {
        return;
      }

      goto LABEL_6;
    }
  }

  v10 = sub_131A174(*(v4 + 16));
  v7 = sub_19593CC(v4 + 16, v10);
  v8 = *a2;
  v9 = a2[1];
  if (*a2 != v9)
  {
LABEL_6:
    v50 = v9;
    do
    {
      nullsub_1();
      LODWORD(v53) = *(*result + 48);
      v13 = sub_EE2BAC(result + 1, v12, v12, &v53);
      if (v14)
      {
        v15 = *result;
        nullsub_1();
        sub_64CFD8(v15, v16);
      }

      v17 = *(v13 + 10);
      v18 = *(v7 + 16);
      if (v18 == *(v7 + 20))
      {
        sub_1958E5C((v7 + 16), v18 + 1);
        *(*(v7 + 24) + 4 * v18) = v17;
        *(v7 + 16) = v18 + 1;
        if (!sub_83EB8(v8))
        {
          goto LABEL_13;
        }
      }

      else
      {
        *(*(v7 + 24) + 4 * v18) = v17;
        *(v7 + 16) = v18 + 1;
        if (!sub_83EB8(v8))
        {
LABEL_13:
          v19 = sub_73EC4(v8);
          LODWORD(v53) = *(*result + 72);
          v20 = sub_EE3550(result + 11, v19, v19, &v53);
          if (v21)
          {
            v22 = *result;
            v23 = *(*result + 80);
            if (v23 && (v24 = *(v22 + 72), v24 < *v23))
            {
              *(v22 + 72) = v24 + 1;
              v25 = *&v23[2 * v24 + 2];
              v26 = sub_73EC4(v8);
              v27 = *v26;
              v28 = v26[1];
              if (*v26 != v28)
              {
LABEL_24:
                while (1)
                {
                  v39 = *(v25 + 40);
                  if (v39 && (v40 = *(v25 + 32), v40 < *v39))
                  {
                    *(v25 + 32) = v40 + 1;
                    v41 = *&v39[2 * v40 + 2];
                  }

                  else
                  {
                    v42 = sub_131A0C8(*(v25 + 24));
                    v41 = sub_19593CC(v25 + 24, v42);
                  }

                  v51 = &v52;
                  v52 = v41;
                  v43 = *(v27 + 24);
                  if (v43 == -1)
                  {
                    break;
                  }

                  v53 = &v51;
                  (off_2674790[v43])(&v53, v27);
                  v27 += 32;
                  if (v27 == v28)
                  {
                    goto LABEL_30;
                  }
                }

LABEL_40:
                sub_5AF20();
              }
            }

            else
            {
              v37 = sub_131A0C8(*(v22 + 64));
              v25 = sub_19593CC(v22 + 64, v37);
              v38 = sub_73EC4(v8);
              v27 = *v38;
              v28 = v38[1];
              if (*v38 != v28)
              {
                goto LABEL_24;
              }
            }
          }

LABEL_30:
          v44 = *(v20 + 10);
          v45 = *(v7 + 32);
          if (v45 == *(v7 + 36))
          {
            v11 = v45 + 1;
            sub_1958E5C((v7 + 32), v45 + 1);
            *(*(v7 + 40) + 4 * v45) = v44;
          }

          else
          {
            *(*(v7 + 40) + 4 * v45) = v44;
            v11 = v45 + 1;
          }

          v9 = v50;
          goto LABEL_8;
        }
      }

      v29 = sub_58BBC(v8);
      LODWORD(v53) = *(*result + 72);
      v30 = sub_EE2FE0(result + 6, v29, v29, &v53);
      if (v31)
      {
        v32 = sub_58BBC(v8);
        v33 = *result;
        v34 = *(*result + 80);
        if (v34 && (v35 = *(v33 + 72), v35 < *v34))
        {
          *(v33 + 72) = v35 + 1;
          v36 = *&v34[2 * v35 + 2];
        }

        else
        {
          v46 = sub_131A0C8(*(v33 + 64));
          v36 = sub_19593CC(v33 + 64, v46);
        }

        v51 = &v52;
        v52 = v36;
        v47 = *(v32 + 24);
        if (v47 == -1)
        {
          goto LABEL_40;
        }

        v53 = &v51;
        (off_2674790[v47])(&v53, v32);
      }

      v48 = *(v30 + 12);
      v49 = *(v7 + 32);
      if (v49 == *(v7 + 36))
      {
        v11 = v49 + 1;
        sub_1958E5C((v7 + 32), v49 + 1);
        *(*(v7 + 40) + 4 * v49) = v48;
      }

      else
      {
        *(*(v7 + 40) + 4 * v49) = v48;
        v11 = v49 + 1;
      }

LABEL_8:
      *(v7 + 32) = v11;
      v8 += 80;
    }

    while (v8 != v9);
  }
}

uint64_t **sub_EE2BAC(void *a1, uint64_t *a2, uint64_t a3, _DWORD *a4)
{
  v4 = a2;
  v6 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v7 = v6;
  }

  v8 = sub_AAD8(&v26, a2, v7);
  v9 = v8;
  v10 = a1[1];
  if (!*&v10)
  {
    goto LABEL_43;
  }

  v11 = vcnt_s8(v10);
  v11.i16[0] = vaddlv_u8(v11);
  if (v11.u32[0] > 1uLL)
  {
    v12 = v8;
    if (v8 >= *&v10)
    {
      v12 = v8 % *&v10;
    }
  }

  else
  {
    v12 = (*&v10 - 1) & v8;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_43:
    operator new();
  }

  v15 = *(v4 + 23);
  if (v15 >= 0)
  {
    v16 = *(v4 + 23);
  }

  else
  {
    v16 = v4[1];
  }

  if (v15 < 0)
  {
    v4 = *v4;
  }

  if (v11.u32[0] < 2uLL)
  {
    while (1)
    {
      v21 = v14[1];
      if (v21 == v9)
      {
        v22 = *(v14 + 39);
        v23 = v22;
        if (v22 < 0)
        {
          v22 = v14[3];
        }

        if (v22 == v16)
        {
          v24 = v23 >= 0 ? (v14 + 2) : v14[2];
          if (!memcmp(v24, v4, v16))
          {
            return v14;
          }
        }
      }

      else if ((v21 & (*&v10 - 1)) != v12)
      {
        goto LABEL_43;
      }

      v14 = *v14;
      if (!v14)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v17 = v14[1];
    if (v17 == v9)
    {
      break;
    }

    if (v17 >= *&v10)
    {
      v17 %= *&v10;
    }

    if (v17 != v12)
    {
      goto LABEL_43;
    }

LABEL_20:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_43;
    }
  }

  v18 = *(v14 + 39);
  v19 = v18;
  if (v18 < 0)
  {
    v18 = v14[3];
  }

  if (v18 != v16)
  {
    goto LABEL_20;
  }

  v20 = v19 >= 0 ? (v14 + 2) : v14[2];
  if (memcmp(v20, v4, v16))
  {
    goto LABEL_20;
  }

  return v14;
}

void sub_EE2FB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

void sub_EE2FC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_EE2FE0(void *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v6 = sub_83EC8(a1, a2);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_36;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v8)
    {
      v10 = v6 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_36:
    operator new();
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v13 = v12[1];
      if (v13 == v7)
      {
        v14 = *(v12 + 10);
        v15 = *(a2 + 24);
        if (v14 != -1 && v15 == v14)
        {
          v22 = &v23;
          if ((off_2674700[v14])(&v22, v12 + 2, a2))
          {
            return v12;
          }
        }

        else if (v15 == v14)
        {
          return v12;
        }
      }

      else if ((v13 & (*&v8 - 1)) != v10)
      {
        goto LABEL_36;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_36;
      }
    }
  }

  while (1)
  {
    v17 = v12[1];
    if (v17 == v7)
    {
      break;
    }

    if (v17 >= *&v8)
    {
      v17 %= *&v8;
    }

    if (v17 != v10)
    {
      goto LABEL_36;
    }

LABEL_24:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_36;
    }
  }

  v18 = *(v12 + 10);
  v19 = *(a2 + 24);
  if (v18 == -1 || v19 != v18)
  {
    if (v19 == v18)
    {
      return v12;
    }

    goto LABEL_24;
  }

  v22 = &v23;
  if (((off_2674700[v18])(&v22, v12 + 2, a2) & 1) == 0)
  {
    goto LABEL_24;
  }

  return v12;
}

void sub_EE33F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_840B0(v9);
  sub_EE3410(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_EE3410(uint64_t result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      v3 = v1[10];
      if (v3 != -1)
      {
        (off_2674730[v3])(&v4, v1 + 4);
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t ***sub_EE3488(uint64_t ***result, char *a2)
{
  v2 = *a2;
  v3 = ***result;
  *(v3 + 16) |= 0x10u;
  *(v3 + 80) = v2;
  return result;
}

uint64_t ***sub_EE34AC(uint64_t ***result, uint64_t *a2)
{
  v2 = *a2;
  v3 = ***result;
  *(v3 + 16) |= 2u;
  *(v3 + 56) = v2;
  return result;
}

uint64_t ***sub_EE34D0(uint64_t ***result, uint64_t *a2)
{
  v2 = *a2;
  v3 = ***result;
  *(v3 + 16) |= 4u;
  *(v3 + 64) = v2;
  return result;
}

double sub_EE34F4(uint64_t ***a1, double *a2)
{
  result = *a2;
  v3 = ***a1;
  *(v3 + 16) |= 8u;
  *(v3 + 72) = result;
  return result;
}

double sub_EE3518(uint64_t ***a1, __int128 *a2)
{
  v2 = ***a1;
  *(v2 + 16) |= 1u;
  v3 = *(v2 + 8);
  v4 = (v3 & 0xFFFFFFFFFFFFFFFCLL);
  if (v3)
  {
    v4 = *v4;
  }

  sub_194EA1C((v2 + 48), a2, v4);
  return result;
}

void *sub_EE3550(void *a1, uint64_t *a2, uint64_t *a3, _DWORD *a4)
{
  v5 = 3735928559;
  v7 = *a2;
  v6 = a2[1];
  if (*a2 != v6)
  {
    do
    {
      LOBYTE(v31) = 0;
      v32 = -1;
      v8 = *(v7 + 24);
      if (v8 != -1)
      {
        v34 = &v31;
        (off_2674760[v8])(&v34, v7);
        v32 = v8;
      }

      v9 = sub_83EC8(&v33, &v31);
      if (v32 != -1)
      {
        (off_2674730[v32])(&v34, &v31);
      }

      v5 ^= (v5 << 6) + (v5 >> 2) + v9 + 2654435769;
      v7 += 32;
    }

    while (v7 != v6);
  }

  v10 = a1[1];
  if (!*&v10)
  {
    goto LABEL_51;
  }

  v11 = vcnt_s8(v10);
  v11.i16[0] = vaddlv_u8(v11);
  if (v11.u32[0] > 1uLL)
  {
    v12 = v5;
    if (v5 >= *&v10)
    {
      v12 = v5 % *&v10;
    }
  }

  else
  {
    v12 = (*&v10 - 1) & v5;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_51:
    operator new();
  }

  if (v11.u32[0] >= 2uLL)
  {
    while (1)
    {
      v22 = v14[1];
      if (v22 == v5)
      {
        v24 = v14[2];
        v23 = v14[3];
        v25 = *a2;
        if (v23 - v24 == a2[1] - *a2)
        {
          if (v24 == v23)
          {
            return v14;
          }

          while (1)
          {
            v26 = *(v24 + 24);
            v27 = *(v25 + 24);
            if (v26 != -1 && v27 == v26)
            {
              v31 = &v34;
              if (((off_2674700[v26])(&v31, v24, v25) & 1) == 0)
              {
                break;
              }
            }

            else if (v27 != v26)
            {
              break;
            }

            v24 += 32;
            v25 += 32;
            if (v24 == v23)
            {
              return v14;
            }
          }
        }
      }

      else
      {
        if (v22 >= *&v10)
        {
          v22 %= *&v10;
        }

        if (v22 != v12)
        {
          goto LABEL_51;
        }
      }

      v14 = *v14;
      if (!v14)
      {
        goto LABEL_51;
      }
    }
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 != v5)
    {
      if ((v15 & (*&v10 - 1)) != v12)
      {
        goto LABEL_51;
      }

      goto LABEL_19;
    }

    v17 = v14[2];
    v16 = v14[3];
    v18 = *a2;
    if (v16 - v17 == a2[1] - *a2)
    {
      break;
    }

LABEL_19:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_51;
    }
  }

  for (; v17 != v16; v18 += 32)
  {
    v19 = *(v17 + 24);
    v20 = *(v18 + 24);
    if (v19 != -1 && v20 == v19)
    {
      v31 = &v34;
      if (((off_2674700[v19])(&v31, v17, v18) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (v20 != v19)
    {
      goto LABEL_19;
    }

    v17 += 32;
  }

  return v14;
}

void sub_EE3A40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_EE3A94(va);
  _Unwind_Resume(a1);
}

void sub_EE3A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_EE3A94(va);
  _Unwind_Resume(a1);
}

void sub_EE3A6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_840B0(va);
  _Unwind_Resume(a1);
}

void sub_EE3A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_3ED1D4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_EE3A94(uint64_t result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      v3 = v1[2];
      if (v3)
      {
        v4 = v1[3];
        v5 = v1[2];
        if (v4 != v3)
        {
          do
          {
            v6 = v4 - 32;
            v7 = *(v4 - 8);
            if (v7 != -1)
            {
              (off_2674730[v7])(&v8, v4 - 32);
            }

            *(v4 - 8) = -1;
            v4 -= 32;
          }

          while (v6 != v3);
          v5 = v1[2];
        }

        v1[3] = v3;
        operator delete(v5);
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t sub_EE3B64(uint64_t result, char a2, char a3, int a4, int a5)
{
  *result = a2;
  *(result + 1) = a3;
  *(result + 4) = a4;
  *(result + 8) = a5;
  return result;
}

void sub_EE3B74(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  sub_483434((a1 + 1), a2);
  sub_47766C(a1 + 136, a2, 100);
}

void sub_EE3CA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_D329A4((v18 + 1088));
  sub_47FF64(v19);
  _Unwind_Resume(a1);
}

void sub_EE3CDC(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint32x2_t *a5)
{
  sub_4EE138(a5, 0);
  v75 = 0;
  v76 = 0;
  v77 = 0;
  v9 = sub_68C590(a2);
  if (v9)
  {
    v10 = 0;
    while (1)
    {
      v12 = sub_68C454(a2, v10);
      v13 = *(v12 + 1104);
      v14 = *(v12 + 1112);
      v15 = v13 + 654;
      if (v13 != v14 && v15 != v14)
      {
        v17 = *v13;
        do
        {
          v18 = v17 >= *v15;
          if (v17 <= *v15)
          {
            v17 = *v15;
          }

          if (!v18)
          {
            v13 = v15;
          }

          v15 += 654;
        }

        while (v15 != v14);
      }

      v19 = *v13;
      v20 = *(a4 + 8);
      if (v10 >= 0x8E38E38E38E38E39 * ((*(a4 + 16) - v20) >> 3))
      {
        v62 = 0;
        v60 = 0u;
        *v61 = 0u;
        *__p = 0u;
        *v59 = 0u;
      }

      else
      {
        sub_D3797C(__p, v20 + 72 * v10);
      }

      sub_EE433C(a1, v12, __p, &v63);
      v21 = v76;
      if (v76 >= v77)
      {
        v76 = sub_4FA044(&v75, &v63);
        if (v73)
        {
          *(&v73 + 1) = v73;
          operator delete(v73);
        }
      }

      else
      {
        v22 = v63;
        *(v76 + 24) = 0;
        *(v21 + 32) = 0;
        *(v21 + 8) = 0;
        *(v21 + 16) = 0;
        *v21 = v22;
        *(v21 + 8) = *v64;
        *(v21 + 24) = v65;
        v64[0] = 0;
        v64[1] = 0;
        *(v21 + 40) = 0;
        *(v21 + 48) = 0;
        *(v21 + 32) = *v66;
        *(v21 + 48) = v67;
        v65 = 0;
        v66[0] = 0;
        v66[1] = 0;
        v67 = 0;
        v23 = v68;
        *(v21 + 72) = v69;
        *(v21 + 80) = 0;
        *(v21 + 56) = v23;
        v68 = 0uLL;
        *(v21 + 88) = 0;
        *(v21 + 96) = 0;
        *(v21 + 80) = *v70;
        *(v21 + 96) = v71;
        v69 = 0;
        v70[0] = 0;
        v70[1] = 0;
        v71 = 0;
        *(v21 + 104) = v72;
        *(v21 + 120) = 0;
        *(v21 + 128) = 0;
        *(v21 + 136) = 0;
        *(v21 + 120) = v73;
        *(v21 + 136) = v74;
        v73 = 0uLL;
        v74 = 0;
        v76 = v21 + 144;
      }

      v24 = v70[0];
      if (v70[0])
      {
        v25 = v70[1];
        v26 = v70[0];
        if (v70[1] != v70[0])
        {
          do
          {
            v27 = *(v25 - 6);
            if (v27)
            {
              *(v25 - 5) = v27;
              operator delete(v27);
            }

            v28 = (v25 - 80);
            if (*(v25 - 57) < 0)
            {
              operator delete(*v28);
            }

            v25 -= 80;
          }

          while (v28 != v24);
          v26 = v70[0];
        }

        v70[1] = v24;
        operator delete(v26);
      }

      if ((SHIBYTE(v69) & 0x80000000) == 0)
      {
        break;
      }

      operator delete(v68);
      v29 = v66[0];
      if (v66[0])
      {
        goto LABEL_35;
      }

LABEL_36:
      if (v64[0])
      {
        v64[1] = v64[0];
        operator delete(v64[0]);
      }

      if (SHIBYTE(v62) < 0)
      {
        operator delete(v61[0]);
        v30 = v59[1];
        if (!v59[1])
        {
          goto LABEL_41;
        }

LABEL_40:
        *&v60 = v30;
        operator delete(v30);
        goto LABEL_41;
      }

      v30 = v59[1];
      if (v59[1])
      {
        goto LABEL_40;
      }

LABEL_41:
      v31 = __p[0];
      if (__p[0])
      {
        v32 = __p[1];
        v11 = __p[0];
        if (__p[1] != __p[0])
        {
          do
          {
            v33 = *(v32 - 6);
            if (v33)
            {
              *(v32 - 5) = v33;
              operator delete(v33);
            }

            v34 = (v32 - 80);
            if (*(v32 - 57) < 0)
            {
              operator delete(*v34);
            }

            v32 -= 80;
          }

          while (v34 != v31);
          v11 = __p[0];
        }

        __p[1] = v31;
        operator delete(v11);
      }

      if (++v10 == v9)
      {
        goto LABEL_55;
      }
    }

    v29 = v66[0];
    if (!v66[0])
    {
      goto LABEL_36;
    }

LABEL_35:
    v66[1] = v29;
    operator delete(v29);
    goto LABEL_36;
  }

  v19 = 0;
LABEL_55:
  if (sub_68D7F4(a2) == 1)
  {
    v35 = *a3;
  }

  else
  {
    v35 = sub_68D7F4(a2);
  }

  v36 = sub_EE24F4(*a1);
  if (sub_68D7F4(a2) == 1)
  {
    v37 = *(a3 + 1);
  }

  else
  {
    v37 = v36;
  }

  v38 = sub_68D828(a2, 4);
  v39 = sub_68D828(a2, 5);
  v40 = sub_68D828(a2, 10);
  v41 = sub_68D828(a2, 2);
  v42 = v38 ^ 1u;
  if (!v39)
  {
    v42 |= 2uLL;
  }

  if (!v40)
  {
    v42 |= 4uLL;
  }

  if (v41)
  {
    v43 = v42;
  }

  else
  {
    v43 = v42 | 8;
  }

  __p[0] = 0;
  __p[1] = 0;
  v59[0] = 0;
  v44 = sub_68DB24(a2);
  v46 = *(a3 + 4);
  v45 = *(a3 + 8);
  v55 = 0;
  v56 = 0;
  v57 = 0;
  v47 = sub_73EC4(a2);
  sub_4F9688(&v63, v44, v35, v43, v36, v37, v46, v45, 0, &v55, v47, &v75, __p);
  if (v55)
  {
    v56 = v55;
    operator delete(v55);
  }

  sub_4ECBD0(a5, &v63, v19);
  if (v72)
  {
    *(&v72 + 1) = v72;
    operator delete(v72);
  }

  v48 = v69;
  if (v69)
  {
    v49 = v70[0];
    v50 = v69;
    if (v70[0] != v69)
    {
      do
      {
        v49 = sub_4F0FB4(v49 - 144);
      }

      while (v49 != v48);
      v50 = v69;
    }

    v70[0] = v48;
    operator delete(v50);
  }

  if (v65)
  {
    v66[0] = v65;
    operator delete(v65);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v51 = v75;
  if (v75)
  {
    v52 = v76;
    v53 = v75;
    if (v76 != v75)
    {
      do
      {
        v52 = sub_4F0FB4(v52 - 144);
      }

      while (v52 != v51);
      v53 = v75;
    }

    v76 = v51;
    operator delete(v53);
  }
}

void sub_EE41FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  sub_4EC1C8(&a29);
  if (!__p)
  {
    sub_4F0F58((v29 - 112));
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  sub_4F0F58((v29 - 112));
  _Unwind_Resume(a1);
}

void sub_EE42E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  sub_4F0FB4(va);
  sub_4F39FC(&a19);
  sub_4F0F58((v28 - 112));
  _Unwind_Resume(a1);
}

void sub_EE4320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_4F39FC(va);
  sub_4F0F58((v18 - 112));
  _Unwind_Resume(a1);
}

void sub_EE433C(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 **a3@<X2>, uint64_t a4@<X8>)
{
  sub_EE48BC(a1, a2, v16);
  sub_EE4AE8(a1, a2, __p);
  v8 = *(a2 + 10176);
  if (v8 == *(a2 + 10184))
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = sub_69B32C(a2);
    v10 = *(v8 + 8);
    v11 = v9 - v10;
    v12 = *(v8 + 16) - v10;
  }

  *&v14 = v11;
  *(&v14 + 1) = v12;
  v13 = sub_4D1DB8(a2);
  sub_4F8F24(a4, v13, v16, __p, a3, &v14, (a3 + 3));
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v16[0])
  {
    v16[1] = v16[0];
    operator delete(v16[0]);
  }
}

void sub_EE440C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_EE4458(uint64_t a1, unsigned int ***a2, unsigned int a3, uint64_t *a4, void ***a5, int **a6, uint32x2_t *a7)
{
  v11 = 0;
  v12 = 0x7FFFFFFF;
  v13 = 8;
  if (a3 > 0xD)
  {
    v14 = 0x7FFFFFFFLL;
    v39 = a3;
    v18 = *a2;
    v17 = a2[1];
    if (*a2 != v17)
    {
LABEL_8:
      v41 = v12;
      v40 = v17;
      do
      {
        v43[0] = v13;
        v43[1] = v11;
        v44 = v12;
        v45 = v14;
        if (v13 == 8)
        {
          if (sub_68D7F4(v18) == 1)
          {
            v43[0] = 0;
            if (v44 != 0x7FFFFFFF)
            {
              goto LABEL_15;
            }
          }

          else
          {
            v43[0] = sub_68D7F4(v18);
            if (v44 != 0x7FFFFFFF)
            {
LABEL_15:
              if (sub_68D058(v18))
              {
                goto LABEL_33;
              }

              goto LABEL_38;
            }
          }
        }

        else if (v12 != 0x7FFFFFFF)
        {
          goto LABEL_15;
        }

        v20 = v13;
        v21 = a6;
        v22 = v14;
        v23 = a7;
        v24 = sub_68C850(v18);
        v25 = sub_68C850(*a2);
        if (!sub_68F890(*a2) || v43[0])
        {
          v28 = (v24 - v25) & ~((v24 - v25) >> 31);
          a7 = v23;
          v14 = v22;
          goto LABEL_32;
        }

        v26 = *(a1 + 2496) * v25;
        if (v26 >= 0.0)
        {
          a7 = v23;
          if (v26 >= 4.50359963e15)
          {
            goto LABEL_30;
          }

          v27 = (v26 + v26) + 1;
        }

        else
        {
          a7 = v23;
          if (v26 <= -4.50359963e15)
          {
            goto LABEL_30;
          }

          v27 = (v26 + v26) - 1 + (((v26 + v26) - 1) >> 63);
        }

        v26 = (v27 >> 1);
LABEL_30:
        v14 = v22;
        v28 = v26;
        if (*(a1 + 2488) > v26)
        {
          v28 = *(a1 + 2488);
        }

LABEL_32:
        a6 = v21;
        v17 = v40;
        v44 = v28;
        v13 = v20;
        v12 = v41;
        if (sub_68D058(v18))
        {
LABEL_33:
          if (v45 == 0x7FFFFFFF)
          {
            sub_68CC00(v18, __p);
            if (sub_4566B4(__p))
            {
              v29 = sub_456698(__p);
            }

            else
            {
              v29 = 0x7FFFFFFF;
            }

            v45 = v29;
          }
        }

LABEL_38:
        v30 = sub_68DB24(v18);
        if (atomic_load_explicit(byte_2733CF0, memory_order_acquire))
        {
          v31 = *a6;
          v32 = a6[1];
          if (*a6 != v32)
          {
            goto LABEL_40;
          }
        }

        else
        {
          sub_21E5328();
          v31 = *a6;
          v32 = a6[1];
          if (*a6 != v32)
          {
LABEL_40:
            while (*v31 != v30)
            {
              v31 += 8;
              if (v31 == v32)
              {
                v19 = &dword_2733CD0;
                goto LABEL_12;
              }
            }
          }
        }

        if (v31 == v32)
        {
          v19 = &dword_2733CD0;
        }

        else
        {
          v19 = v31;
        }

LABEL_12:
        sub_EE3CDC(a1, v18, v43, v19, a7);
        v18 += 976;
      }

      while (v18 != v17);
    }
  }

  else
  {
    v14 = 0x7FFFFFFFLL;
    if (((1 << a3) & 0x3A82) != 0)
    {
      nullsub_1();
      if (*(v15 + 128) == 1)
      {
        v16 = v15;
        v13 = sub_4F96B8(v15);
        v11 = sub_4F96C8(v16);
        v12 = sub_4F96D0(v16);
        v14 = sub_4F96D8(v16);
      }

      else
      {
        v11 = 0;
      }

      sub_4EC9D4(a7, __p);
      sub_D16C58(a7, __p);
      sub_5287C0(__p);
    }

    v39 = a3;
    v18 = *a2;
    v17 = a2[1];
    if (*a2 != v17)
    {
      goto LABEL_8;
    }
  }

  sub_4EE138(a7, 0);
  v33 = sub_74700();
  if (v39 <= 0xD)
  {
    if (((1 << v39) & 0x3C19) != 0)
    {
      v34 = sub_73EC4(v33);
      sub_4EC868(a7, v34);
      sub_4EC87C(a7, a4);
    }

    else if (((1 << v39) & 0x60) != 0)
    {
      sub_4EC760(a7, 1);
    }
  }

  sub_4EC810(a7, a5);
  v35 = sub_3CF23C(a7);
  v36 = *(v35 + 23);
  if ((v36 & 0x80u) != 0)
  {
    v36 = *(v35 + 8);
  }

  if (v39 == 1 || !v36)
  {
    sub_3E9608(*a1);
  }
}

void sub_EE4898(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_EE48BC(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(a2 + 1104);
  v5 = *(a2 + 1112);
  if (v4 == v5 || *(*(a1 + 2480) + 3) == 1)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return;
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6 = (v5 - v4) >> 3;
  v7 = 0x3795876FF3795877 * v6 - 1;
  if (0x3795876FF3795877 * v6 != 1)
  {
    v9 = 0;
    v10 = 0;
    v11 = 1008;
    v19 = a3;
    do
    {
      v10 += *(*(a2 + 1104) + v11);
      if (sub_4D1DB8(a2) >= v10)
      {
        v12 = sub_4D1DB8(a2) - v10;
        a3 = v19;
        v13 = v19[2];
        if (v9 >= v13)
        {
LABEL_12:
          v14 = v9;
          v15 = v9 >> 3;
          v16 = v15 + 1;
          if ((v15 + 1) >> 61)
          {
            *v19 = 0;
            sub_1794();
          }

          if (v13 >> 2 > v16)
          {
            v16 = v13 >> 2;
          }

          if (v13 >= 0x7FFFFFFFFFFFFFF8)
          {
            v17 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v17 = v16;
          }

          if (v17)
          {
            if (!(v17 >> 61))
            {
              operator new();
            }

            *v19 = 0;
            sub_1808();
          }

          v18 = (8 * v15);
          *v18 = v12;
          v9 = (v18 + 1);
          memcpy(0, 0, v14);
          a3 = v19;
          v19[1] = v9;
          v19[2] = 0;
          goto LABEL_7;
        }
      }

      else
      {
        v12 = 0;
        v13 = a3[2];
        if (v9 >= v13)
        {
          goto LABEL_12;
        }
      }

      *v9 = v12;
      v9 += 8;
LABEL_7:
      a3[1] = v9;
      v11 += 2616;
      --v7;
    }

    while (v7);
  }

  *a3 = 0;
}

void sub_EE4AA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  *a10 = v10;
  if (v10)
  {
    a10[1] = v10;
    operator delete(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_EE4AE8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if ((*(*(result + 2480) + 3) & 1) == 0)
  {
    sub_47A6A8(result + 1088, a2, 0, v22);
    if (v24)
    {
      v4 = (v24 + 8);
    }

    else
    {
      v4 = 0;
    }

    if (v23)
    {
      v5 = 8 * v23;
      do
      {
        v6 = *v4;
        if (*(*v4 + 32))
        {
          v7 = *(*v4 + 32);
        }

        else
        {
          v7 = &off_2734B00;
        }

        v8 = *(v7 + 7);
        v9 = v8 / 10000000.0;
        v10 = -1;
        if (v8 / 10000000.0 <= 180.0)
        {
          v8 = *(v7 + 6) / 10000000.0;
          if (fabs(v8) <= 85.0511288 && v9 >= -180.0)
          {
            v11 = sin(fmin(fmax(v8, -85.0511288), 85.0511288) * 3.14159265 / 180.0);
            LODWORD(v12) = ((log((v11 + 1.0) / (1.0 - v11)) / -12.5663706 + 0.5) * 4294967300.0);
            if (v12 >= 0xFFFFFFFE)
            {
              v12 = 4294967294;
            }

            else
            {
              v12 = v12;
            }

            v8 = (v9 + 180.0) / 360.0 * 4294967300.0;
            v10 = v8 | (v12 << 32);
          }
        }

        v20 = v10;
        v21 = 0x7FFFFFFF;
        LODWORD(v8) = *(v6 + 60);
        v13 = llround(*&v8 * 100.0) % 36000;
        if (v13 > 0xFFFF735F)
        {
          LOWORD(v13) = v13 - 29536;
        }

        v19 = v13;
        v18 = *(v6 + 48);
        v14 = *(v6 + 64);
        v16 = *(v6 + 68);
        v17 = v14;
        v15 = 0;
        sub_EE7BB0(a3, &v18, &v20, &v19, &v17, &v16, &v15);
        ++v4;
        v5 -= 8;
      }

      while (v5);
    }

    return sub_1218EBC(v22);
  }

  return result;
}

void sub_EE4D60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_1218EBC(va);
  v19 = *v17;
  if (*v17)
  {
    *(v17 + 8) = v19;
    operator delete(v19);
  }

  _Unwind_Resume(a1);
}

void sub_EE4D84(_DWORD *a1, void *a2)
{
  *a1 = 0x7FFFFFFF;
  v3 = 20;
  strcpy(__p, "familiar_route_logic");
  sub_5F5AC(a2, __p);
  if (v3 < 0)
  {
    operator delete(*__p);
  }

  operator new();
}

void sub_EE4EDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_EE4F00(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  sub_4822C0((a1 + 1), a2);
  sub_4773FC(a1 + 136, a2, 100);
}

void sub_EE5030(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_D32888((v18 + 1088));
  sub_47FADC(v19);
  _Unwind_Resume(a1);
}

void sub_EE5068(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint32x2_t *a5)
{
  sub_4EE138(a5, 3);
  v75 = 0;
  v76 = 0;
  v77 = 0;
  v9 = sub_68C590(a2);
  if (v9)
  {
    v10 = 0;
    while (1)
    {
      v12 = sub_68C454(a2, v10);
      v13 = *(v12 + 1104);
      v14 = *(v12 + 1112);
      v15 = v13 + 654;
      if (v13 != v14 && v15 != v14)
      {
        v17 = *v13;
        do
        {
          v18 = v17 >= *v15;
          if (v17 <= *v15)
          {
            v17 = *v15;
          }

          if (!v18)
          {
            v13 = v15;
          }

          v15 += 654;
        }

        while (v15 != v14);
      }

      v19 = *v13;
      v20 = *(a4 + 8);
      if (v10 >= 0x8E38E38E38E38E39 * ((*(a4 + 16) - v20) >> 3))
      {
        v62 = 0;
        v60 = 0u;
        *v61 = 0u;
        *__p = 0u;
        *v59 = 0u;
      }

      else
      {
        sub_D3797C(__p, v20 + 72 * v10);
      }

      sub_EE56C8(a1, v12, __p, &v63);
      v21 = v76;
      if (v76 >= v77)
      {
        v76 = sub_4FA044(&v75, &v63);
        if (v73)
        {
          *(&v73 + 1) = v73;
          operator delete(v73);
        }
      }

      else
      {
        v22 = v63;
        *(v76 + 24) = 0;
        *(v21 + 32) = 0;
        *(v21 + 8) = 0;
        *(v21 + 16) = 0;
        *v21 = v22;
        *(v21 + 8) = *v64;
        *(v21 + 24) = v65;
        v64[0] = 0;
        v64[1] = 0;
        *(v21 + 40) = 0;
        *(v21 + 48) = 0;
        *(v21 + 32) = *v66;
        *(v21 + 48) = v67;
        v65 = 0;
        v66[0] = 0;
        v66[1] = 0;
        v67 = 0;
        v23 = v68;
        *(v21 + 72) = v69;
        *(v21 + 80) = 0;
        *(v21 + 56) = v23;
        v68 = 0uLL;
        *(v21 + 88) = 0;
        *(v21 + 96) = 0;
        *(v21 + 80) = *v70;
        *(v21 + 96) = v71;
        v69 = 0;
        v70[0] = 0;
        v70[1] = 0;
        v71 = 0;
        *(v21 + 104) = v72;
        *(v21 + 120) = 0;
        *(v21 + 128) = 0;
        *(v21 + 136) = 0;
        *(v21 + 120) = v73;
        *(v21 + 136) = v74;
        v73 = 0uLL;
        v74 = 0;
        v76 = v21 + 144;
      }

      v24 = v70[0];
      if (v70[0])
      {
        v25 = v70[1];
        v26 = v70[0];
        if (v70[1] != v70[0])
        {
          do
          {
            v27 = *(v25 - 6);
            if (v27)
            {
              *(v25 - 5) = v27;
              operator delete(v27);
            }

            v28 = (v25 - 80);
            if (*(v25 - 57) < 0)
            {
              operator delete(*v28);
            }

            v25 -= 80;
          }

          while (v28 != v24);
          v26 = v70[0];
        }

        v70[1] = v24;
        operator delete(v26);
      }

      if ((SHIBYTE(v69) & 0x80000000) == 0)
      {
        break;
      }

      operator delete(v68);
      v29 = v66[0];
      if (v66[0])
      {
        goto LABEL_35;
      }

LABEL_36:
      if (v64[0])
      {
        v64[1] = v64[0];
        operator delete(v64[0]);
      }

      if (SHIBYTE(v62) < 0)
      {
        operator delete(v61[0]);
        v30 = v59[1];
        if (!v59[1])
        {
          goto LABEL_41;
        }

LABEL_40:
        *&v60 = v30;
        operator delete(v30);
        goto LABEL_41;
      }

      v30 = v59[1];
      if (v59[1])
      {
        goto LABEL_40;
      }

LABEL_41:
      v31 = __p[0];
      if (__p[0])
      {
        v32 = __p[1];
        v11 = __p[0];
        if (__p[1] != __p[0])
        {
          do
          {
            v33 = *(v32 - 6);
            if (v33)
            {
              *(v32 - 5) = v33;
              operator delete(v33);
            }

            v34 = (v32 - 80);
            if (*(v32 - 57) < 0)
            {
              operator delete(*v34);
            }

            v32 -= 80;
          }

          while (v34 != v31);
          v11 = __p[0];
        }

        __p[1] = v31;
        operator delete(v11);
      }

      if (++v10 == v9)
      {
        goto LABEL_55;
      }
    }

    v29 = v66[0];
    if (!v66[0])
    {
      goto LABEL_36;
    }

LABEL_35:
    v66[1] = v29;
    operator delete(v29);
    goto LABEL_36;
  }

  v19 = 0;
LABEL_55:
  if (sub_68D7F4(a2) == 1)
  {
    v35 = *a3;
  }

  else
  {
    v35 = sub_68D7F4(a2);
  }

  v36 = sub_EE24F4(*a1);
  if (sub_68D7F4(a2) == 1)
  {
    v37 = *(a3 + 1);
  }

  else
  {
    v37 = v36;
  }

  v38 = sub_68D828(a2, 4);
  v39 = sub_68D828(a2, 5);
  v40 = sub_68D828(a2, 10);
  v41 = sub_68D828(a2, 2);
  v42 = v38 ^ 1u;
  if (!v39)
  {
    v42 |= 2uLL;
  }

  if (!v40)
  {
    v42 |= 4uLL;
  }

  if (v41)
  {
    v43 = v42;
  }

  else
  {
    v43 = v42 | 8;
  }

  __p[0] = 0;
  __p[1] = 0;
  v59[0] = 0;
  v44 = sub_68DB24(a2);
  v46 = *(a3 + 4);
  v45 = *(a3 + 8);
  v55 = 0;
  v56 = 0;
  v57 = 0;
  v47 = sub_73EC4(a2);
  sub_4F9688(&v63, v44, v35, v43, v36, v37, v46, v45, 0, &v55, v47, &v75, __p);
  if (v55)
  {
    v56 = v55;
    operator delete(v55);
  }

  sub_4ECBD0(a5, &v63, v19);
  if (v72)
  {
    *(&v72 + 1) = v72;
    operator delete(v72);
  }

  v48 = v69;
  if (v69)
  {
    v49 = v70[0];
    v50 = v69;
    if (v70[0] != v69)
    {
      do
      {
        v49 = sub_4F0FB4(v49 - 144);
      }

      while (v49 != v48);
      v50 = v69;
    }

    v70[0] = v48;
    operator delete(v50);
  }

  if (v65)
  {
    v66[0] = v65;
    operator delete(v65);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v51 = v75;
  if (v75)
  {
    v52 = v76;
    v53 = v75;
    if (v76 != v75)
    {
      do
      {
        v52 = sub_4F0FB4(v52 - 144);
      }

      while (v52 != v51);
      v53 = v75;
    }

    v76 = v51;
    operator delete(v53);
  }
}

void sub_EE5588(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  sub_4EC1C8(&a29);
  if (!__p)
  {
    sub_4F0F58((v29 - 112));
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  sub_4F0F58((v29 - 112));
  _Unwind_Resume(a1);
}

void sub_EE5674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  sub_4F0FB4(va);
  sub_4F39FC(&a19);
  sub_4F0F58((v28 - 112));
  _Unwind_Resume(a1);
}

void sub_EE56AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_4F39FC(va);
  sub_4F0F58((v18 - 112));
  _Unwind_Resume(a1);
}

void sub_EE56C8(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 **a3@<X2>, uint64_t a4@<X8>)
{
  sub_EE5BD0(a1, a2, v16);
  sub_EE5DFC(a1, a2, __p);
  v8 = *(a2 + 10176);
  if (v8 == *(a2 + 10184))
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = sub_69B32C(a2);
    v10 = *(v8 + 8);
    v11 = v9 - v10;
    v12 = *(v8 + 16) - v10;
  }

  *&v14 = v11;
  *(&v14 + 1) = v12;
  v13 = sub_4D1DB8(a2);
  sub_4F8F24(a4, v13, v16, __p, a3, &v14, (a3 + 3));
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v16[0])
  {
    v16[1] = v16[0];
    operator delete(v16[0]);
  }
}

void sub_EE5798(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void **sub_EE57E4(uint64_t a1, unsigned int ***a2, unsigned int a3, uint64_t *a4, void ***a5, int **a6, uint32x2_t *a7)
{
  v10 = 0;
  v11 = 0x7FFFFFFF;
  v12 = 8;
  if (a3 > 0xD)
  {
    v13 = 0x7FFFFFFF;
    v16 = *a2;
    v17 = a2[1];
    if (*a2 != v17)
    {
LABEL_8:
      v38 = v11;
      v37 = v17;
      do
      {
        v40[0] = v12;
        v40[1] = v10;
        v41 = v11;
        v42 = v13;
        if (v12 == 8)
        {
          if (sub_68D7F4(v16) == 1)
          {
            v40[0] = 0;
            if (v41 != 0x7FFFFFFF)
            {
              goto LABEL_15;
            }
          }

          else
          {
            v40[0] = sub_68D7F4(v16);
            if (v41 != 0x7FFFFFFF)
            {
LABEL_15:
              if (sub_6905BC(v16))
              {
                goto LABEL_33;
              }

              goto LABEL_38;
            }
          }
        }

        else if (v11 != 0x7FFFFFFF)
        {
          goto LABEL_15;
        }

        v19 = v12;
        v20 = v10;
        v21 = a7;
        v22 = sub_68C850(v16);
        v23 = sub_68C850(*a2);
        if (!sub_68F890(*a2) || v40[0])
        {
          v26 = (v22 - v23) & ~((v22 - v23) >> 31);
          a7 = v21;
          v10 = v20;
          goto LABEL_32;
        }

        v24 = *(a1 + 2496) * v23;
        if (v24 >= 0.0)
        {
          a7 = v21;
          if (v24 >= 4.50359963e15)
          {
            goto LABEL_30;
          }

          v25 = (v24 + v24) + 1;
        }

        else
        {
          a7 = v21;
          if (v24 <= -4.50359963e15)
          {
            goto LABEL_30;
          }

          v25 = (v24 + v24) - 1 + (((v24 + v24) - 1) >> 63);
        }

        v24 = (v25 >> 1);
LABEL_30:
        v10 = v20;
        v26 = v24;
        if (*(a1 + 2488) > v24)
        {
          v26 = *(a1 + 2488);
        }

LABEL_32:
        v12 = v19;
        v41 = v26;
        v11 = v38;
        v17 = v37;
        if (sub_6905BC(v16))
        {
LABEL_33:
          if (v42 == 0x7FFFFFFF)
          {
            sub_690164(v16, v43);
            if (sub_4566B4(v43))
            {
              v27 = sub_456698(v43);
            }

            else
            {
              v27 = 0x7FFFFFFF;
            }

            v42 = v27;
          }
        }

LABEL_38:
        v28 = sub_68DB24(v16);
        if (atomic_load_explicit(byte_2733CF0, memory_order_acquire))
        {
          v29 = *a6;
          v30 = a6[1];
          if (*a6 != v30)
          {
            goto LABEL_40;
          }
        }

        else
        {
          sub_21E5328();
          v29 = *a6;
          v30 = a6[1];
          if (*a6 != v30)
          {
LABEL_40:
            while (*v29 != v28)
            {
              v29 += 8;
              if (v29 == v30)
              {
                v18 = &dword_2733CD0;
                goto LABEL_12;
              }
            }
          }
        }

        if (v29 == v30)
        {
          v18 = &dword_2733CD0;
        }

        else
        {
          v18 = v29;
        }

LABEL_12:
        sub_EE5068(a1, v16, v40, v18, a7);
        v16 += 976;
      }

      while (v16 != v17);
    }
  }

  else
  {
    v13 = 0x7FFFFFFF;
    if (((1 << a3) & 0x3A82) != 0)
    {
      nullsub_1();
      if (*(v14 + 128) == 1)
      {
        v15 = v14;
        v12 = sub_4F96B8(v14);
        v10 = sub_4F96C8(v15);
        v11 = sub_4F96D0(v15);
        v13 = sub_4F96D8(v15);
      }

      else
      {
        v10 = 0;
      }

      sub_4EC9D4(a7, v43);
      sub_D16C58(a7, v43);
      sub_5287C0(v43);
    }

    v16 = *a2;
    v17 = a2[1];
    if (*a2 != v17)
    {
      goto LABEL_8;
    }
  }

  sub_4EE138(a7, 3);
  v31 = sub_74700();
  if (a3 <= 0xD)
  {
    if (((1 << a3) & 0x3C19) != 0)
    {
      v32 = sub_73EC4(v31);
      sub_4EC868(a7, v32);
      sub_4EC87C(a7, a4);
    }

    else if (((1 << a3) & 0x60) != 0)
    {
      sub_4EC760(a7, 1);
    }
  }

  return sub_4EC810(a7, a5);
}

void sub_EE5BD0(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(a2 + 1104);
  v5 = *(a2 + 1112);
  if (v4 == v5 || *(*(a1 + 2480) + 3) == 1)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return;
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6 = (v5 - v4) >> 3;
  v7 = 0x3795876FF3795877 * v6 - 1;
  if (0x3795876FF3795877 * v6 != 1)
  {
    v9 = 0;
    v10 = 0;
    v11 = 1008;
    v19 = a3;
    do
    {
      v10 += *(*(a2 + 1104) + v11);
      if (sub_4D1DB8(a2) >= v10)
      {
        v12 = sub_4D1DB8(a2) - v10;
        a3 = v19;
        v13 = v19[2];
        if (v9 >= v13)
        {
LABEL_12:
          v14 = v9;
          v15 = v9 >> 3;
          v16 = v15 + 1;
          if ((v15 + 1) >> 61)
          {
            *v19 = 0;
            sub_1794();
          }

          if (v13 >> 2 > v16)
          {
            v16 = v13 >> 2;
          }

          if (v13 >= 0x7FFFFFFFFFFFFFF8)
          {
            v17 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v17 = v16;
          }

          if (v17)
          {
            if (!(v17 >> 61))
            {
              operator new();
            }

            *v19 = 0;
            sub_1808();
          }

          v18 = (8 * v15);
          *v18 = v12;
          v9 = (v18 + 1);
          memcpy(0, 0, v14);
          a3 = v19;
          v19[1] = v9;
          v19[2] = 0;
          goto LABEL_7;
        }
      }

      else
      {
        v12 = 0;
        v13 = a3[2];
        if (v9 >= v13)
        {
          goto LABEL_12;
        }
      }

      *v9 = v12;
      v9 += 8;
LABEL_7:
      a3[1] = v9;
      v11 += 2616;
      --v7;
    }

    while (v7);
  }

  *a3 = 0;
}

void sub_EE5DBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  *a10 = v10;
  if (v10)
  {
    a10[1] = v10;
    operator delete(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_EE5DFC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if ((*(*(result + 2480) + 3) & 1) == 0)
  {
    sub_477DA4((result + 1088), a2, 0, v22);
    if (v24)
    {
      v4 = (v24 + 8);
    }

    else
    {
      v4 = 0;
    }

    if (v23)
    {
      v5 = 8 * v23;
      do
      {
        v6 = *v4;
        if (*(*v4 + 32))
        {
          v7 = *(*v4 + 32);
        }

        else
        {
          v7 = &off_2734B00;
        }

        v8 = *(v7 + 7);
        v9 = v8 / 10000000.0;
        v10 = -1;
        if (v8 / 10000000.0 <= 180.0)
        {
          v8 = *(v7 + 6) / 10000000.0;
          if (fabs(v8) <= 85.0511288 && v9 >= -180.0)
          {
            v11 = sin(fmin(fmax(v8, -85.0511288), 85.0511288) * 3.14159265 / 180.0);
            LODWORD(v12) = ((log((v11 + 1.0) / (1.0 - v11)) / -12.5663706 + 0.5) * 4294967300.0);
            if (v12 >= 0xFFFFFFFE)
            {
              v12 = 4294967294;
            }

            else
            {
              v12 = v12;
            }

            v8 = (v9 + 180.0) / 360.0 * 4294967300.0;
            v10 = v8 | (v12 << 32);
          }
        }

        v20 = v10;
        v21 = 0x7FFFFFFF;
        LODWORD(v8) = *(v6 + 60);
        v13 = llround(*&v8 * 100.0) % 36000;
        if (v13 > 0xFFFF735F)
        {
          LOWORD(v13) = v13 - 29536;
        }

        v19 = v13;
        v18 = *(v6 + 48);
        v14 = *(v6 + 64);
        v16 = *(v6 + 68);
        v17 = v14;
        v15 = 0;
        sub_EE7BB0(a3, &v18, &v20, &v19, &v17, &v16, &v15);
        ++v4;
        v5 -= 8;
      }

      while (v5);
    }

    return sub_1218EBC(v22);
  }

  return result;
}

void sub_EE6074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_1218EBC(va);
  v19 = *v17;
  if (*v17)
  {
    *(v17 + 8) = v19;
    operator delete(v19);
  }

  _Unwind_Resume(a1);
}

void sub_EE6098(_DWORD *a1, void *a2)
{
  *a1 = 0x7FFFFFFF;
  v3 = 20;
  strcpy(__p, "familiar_route_logic");
  sub_5F5AC(a2, __p);
  if (v3 < 0)
  {
    operator delete(*__p);
  }

  operator new();
}

void sub_EE61F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_EE6214(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  sub_484598((a1 + 1), a2);
  sub_4778DC(a1 + 136, a2, 100);
}

void sub_EE6344(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_D32AC0((v18 + 1088));
  sub_480074(v19);
  _Unwind_Resume(a1);
}

void sub_EE637C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint32x2_t *a5)
{
  sub_4EE138(a5, 2);
  v75 = 0;
  v76 = 0;
  v77 = 0;
  v9 = sub_68C590(a2);
  if (v9)
  {
    v10 = 0;
    while (1)
    {
      v12 = sub_68C454(a2, v10);
      v13 = *(v12 + 1104);
      v14 = *(v12 + 1112);
      v15 = v13 + 654;
      if (v13 != v14 && v15 != v14)
      {
        v17 = *v13;
        do
        {
          v18 = v17 >= *v15;
          if (v17 <= *v15)
          {
            v17 = *v15;
          }

          if (!v18)
          {
            v13 = v15;
          }

          v15 += 654;
        }

        while (v15 != v14);
      }

      v19 = *v13;
      v20 = *(a4 + 8);
      if (v10 >= 0x8E38E38E38E38E39 * ((*(a4 + 16) - v20) >> 3))
      {
        v62 = 0;
        v60 = 0u;
        *v61 = 0u;
        *__p = 0u;
        *v59 = 0u;
      }

      else
      {
        sub_D3797C(__p, v20 + 72 * v10);
      }

      sub_EE69DC(a1, v12, __p, &v63);
      v21 = v76;
      if (v76 >= v77)
      {
        v76 = sub_4FA044(&v75, &v63);
        if (v73)
        {
          *(&v73 + 1) = v73;
          operator delete(v73);
        }
      }

      else
      {
        v22 = v63;
        *(v76 + 24) = 0;
        *(v21 + 32) = 0;
        *(v21 + 8) = 0;
        *(v21 + 16) = 0;
        *v21 = v22;
        *(v21 + 8) = *v64;
        *(v21 + 24) = v65;
        v64[0] = 0;
        v64[1] = 0;
        *(v21 + 40) = 0;
        *(v21 + 48) = 0;
        *(v21 + 32) = *v66;
        *(v21 + 48) = v67;
        v65 = 0;
        v66[0] = 0;
        v66[1] = 0;
        v67 = 0;
        v23 = v68;
        *(v21 + 72) = v69;
        *(v21 + 80) = 0;
        *(v21 + 56) = v23;
        v68 = 0uLL;
        *(v21 + 88) = 0;
        *(v21 + 96) = 0;
        *(v21 + 80) = *v70;
        *(v21 + 96) = v71;
        v69 = 0;
        v70[0] = 0;
        v70[1] = 0;
        v71 = 0;
        *(v21 + 104) = v72;
        *(v21 + 120) = 0;
        *(v21 + 128) = 0;
        *(v21 + 136) = 0;
        *(v21 + 120) = v73;
        *(v21 + 136) = v74;
        v73 = 0uLL;
        v74 = 0;
        v76 = v21 + 144;
      }

      v24 = v70[0];
      if (v70[0])
      {
        v25 = v70[1];
        v26 = v70[0];
        if (v70[1] != v70[0])
        {
          do
          {
            v27 = *(v25 - 6);
            if (v27)
            {
              *(v25 - 5) = v27;
              operator delete(v27);
            }

            v28 = (v25 - 80);
            if (*(v25 - 57) < 0)
            {
              operator delete(*v28);
            }

            v25 -= 80;
          }

          while (v28 != v24);
          v26 = v70[0];
        }

        v70[1] = v24;
        operator delete(v26);
      }

      if ((SHIBYTE(v69) & 0x80000000) == 0)
      {
        break;
      }

      operator delete(v68);
      v29 = v66[0];
      if (v66[0])
      {
        goto LABEL_35;
      }

LABEL_36:
      if (v64[0])
      {
        v64[1] = v64[0];
        operator delete(v64[0]);
      }

      if (SHIBYTE(v62) < 0)
      {
        operator delete(v61[0]);
        v30 = v59[1];
        if (!v59[1])
        {
          goto LABEL_41;
        }

LABEL_40:
        *&v60 = v30;
        operator delete(v30);
        goto LABEL_41;
      }

      v30 = v59[1];
      if (v59[1])
      {
        goto LABEL_40;
      }

LABEL_41:
      v31 = __p[0];
      if (__p[0])
      {
        v32 = __p[1];
        v11 = __p[0];
        if (__p[1] != __p[0])
        {
          do
          {
            v33 = *(v32 - 6);
            if (v33)
            {
              *(v32 - 5) = v33;
              operator delete(v33);
            }

            v34 = (v32 - 80);
            if (*(v32 - 57) < 0)
            {
              operator delete(*v34);
            }

            v32 -= 80;
          }

          while (v34 != v31);
          v11 = __p[0];
        }

        __p[1] = v31;
        operator delete(v11);
      }

      if (++v10 == v9)
      {
        goto LABEL_55;
      }
    }

    v29 = v66[0];
    if (!v66[0])
    {
      goto LABEL_36;
    }

LABEL_35:
    v66[1] = v29;
    operator delete(v29);
    goto LABEL_36;
  }

  v19 = 0;
LABEL_55:
  if (sub_68D7F4(a2) == 1)
  {
    v35 = *a3;
  }

  else
  {
    v35 = sub_68D7F4(a2);
  }

  v36 = sub_EE24F4(*a1);
  if (sub_68D7F4(a2) == 1)
  {
    v37 = *(a3 + 1);
  }

  else
  {
    v37 = v36;
  }

  v38 = sub_68D828(a2, 4);
  v39 = sub_68D828(a2, 5);
  v40 = sub_68D828(a2, 10);
  v41 = sub_68D828(a2, 2);
  v42 = v38 ^ 1u;
  if (!v39)
  {
    v42 |= 2uLL;
  }

  if (!v40)
  {
    v42 |= 4uLL;
  }

  if (v41)
  {
    v43 = v42;
  }

  else
  {
    v43 = v42 | 8;
  }

  __p[0] = 0;
  __p[1] = 0;
  v59[0] = 0;
  v44 = sub_68DB24(a2);
  v46 = *(a3 + 4);
  v45 = *(a3 + 8);
  v55 = 0;
  v56 = 0;
  v57 = 0;
  v47 = sub_73EC4(a2);
  sub_4F9688(&v63, v44, v35, v43, v36, v37, v46, v45, 0, &v55, v47, &v75, __p);
  if (v55)
  {
    v56 = v55;
    operator delete(v55);
  }

  sub_4ECBD0(a5, &v63, v19);
  if (v72)
  {
    *(&v72 + 1) = v72;
    operator delete(v72);
  }

  v48 = v69;
  if (v69)
  {
    v49 = v70[0];
    v50 = v69;
    if (v70[0] != v69)
    {
      do
      {
        v49 = sub_4F0FB4(v49 - 144);
      }

      while (v49 != v48);
      v50 = v69;
    }

    v70[0] = v48;
    operator delete(v50);
  }

  if (v65)
  {
    v66[0] = v65;
    operator delete(v65);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v51 = v75;
  if (v75)
  {
    v52 = v76;
    v53 = v75;
    if (v76 != v75)
    {
      do
      {
        v52 = sub_4F0FB4(v52 - 144);
      }

      while (v52 != v51);
      v53 = v75;
    }

    v76 = v51;
    operator delete(v53);
  }
}

void sub_EE689C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  sub_4EC1C8(&a29);
  if (!__p)
  {
    sub_4F0F58((v29 - 112));
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  sub_4F0F58((v29 - 112));
  _Unwind_Resume(a1);
}

void sub_EE6988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  sub_4F0FB4(va);
  sub_4F39FC(&a19);
  sub_4F0F58((v28 - 112));
  _Unwind_Resume(a1);
}

void sub_EE69C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_4F39FC(va);
  sub_4F0F58((v18 - 112));
  _Unwind_Resume(a1);
}

void sub_EE69DC(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 **a3@<X2>, uint64_t a4@<X8>)
{
  sub_EE6EE4(a1, a2, v16);
  sub_EE7110(a1, a2, __p);
  v8 = *(a2 + 10176);
  if (v8 == *(a2 + 10184))
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = sub_69B32C(a2);
    v10 = *(v8 + 8);
    v11 = v9 - v10;
    v12 = *(v8 + 16) - v10;
  }

  *&v14 = v11;
  *(&v14 + 1) = v12;
  v13 = sub_4D1DB8(a2);
  sub_4F8F24(a4, v13, v16, __p, a3, &v14, (a3 + 3));
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v16[0])
  {
    v16[1] = v16[0];
    operator delete(v16[0]);
  }
}

void sub_EE6AAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void **sub_EE6AF8(uint64_t a1, unsigned int ***a2, unsigned int a3, uint64_t *a4, void ***a5, int **a6, uint32x2_t *a7)
{
  v10 = 0;
  v11 = 0x7FFFFFFF;
  v12 = 8;
  if (a3 > 0xD)
  {
    v13 = 0x7FFFFFFF;
    v16 = *a2;
    v17 = a2[1];
    if (*a2 != v17)
    {
LABEL_8:
      v38 = v11;
      v37 = v17;
      do
      {
        v40[0] = v12;
        v40[1] = v10;
        v41 = v11;
        v42 = v13;
        if (v12 == 8)
        {
          if (sub_68D7F4(v16) == 1)
          {
            v40[0] = 0;
            if (v41 != 0x7FFFFFFF)
            {
              goto LABEL_15;
            }
          }

          else
          {
            v40[0] = sub_68D7F4(v16);
            if (v41 != 0x7FFFFFFF)
            {
LABEL_15:
              if (sub_6905BC(v16))
              {
                goto LABEL_33;
              }

              goto LABEL_38;
            }
          }
        }

        else if (v11 != 0x7FFFFFFF)
        {
          goto LABEL_15;
        }

        v19 = v12;
        v20 = v10;
        v21 = a7;
        v22 = sub_68C850(v16);
        v23 = sub_68C850(*a2);
        if (!sub_68F890(*a2) || v40[0])
        {
          v26 = (v22 - v23) & ~((v22 - v23) >> 31);
          a7 = v21;
          v10 = v20;
          goto LABEL_32;
        }

        v24 = *(a1 + 2496) * v23;
        if (v24 >= 0.0)
        {
          a7 = v21;
          if (v24 >= 4.50359963e15)
          {
            goto LABEL_30;
          }

          v25 = (v24 + v24) + 1;
        }

        else
        {
          a7 = v21;
          if (v24 <= -4.50359963e15)
          {
            goto LABEL_30;
          }

          v25 = (v24 + v24) - 1 + (((v24 + v24) - 1) >> 63);
        }

        v24 = (v25 >> 1);
LABEL_30:
        v10 = v20;
        v26 = v24;
        if (*(a1 + 2488) > v24)
        {
          v26 = *(a1 + 2488);
        }

LABEL_32:
        v12 = v19;
        v41 = v26;
        v11 = v38;
        v17 = v37;
        if (sub_6905BC(v16))
        {
LABEL_33:
          if (v42 == 0x7FFFFFFF)
          {
            sub_6918C4(v16, v43);
            if (sub_4566B4(v43))
            {
              v27 = sub_456698(v43);
            }

            else
            {
              v27 = 0x7FFFFFFF;
            }

            v42 = v27;
          }
        }

LABEL_38:
        v28 = sub_68DB24(v16);
        if (atomic_load_explicit(byte_2733CF0, memory_order_acquire))
        {
          v29 = *a6;
          v30 = a6[1];
          if (*a6 != v30)
          {
            goto LABEL_40;
          }
        }

        else
        {
          sub_21E5328();
          v29 = *a6;
          v30 = a6[1];
          if (*a6 != v30)
          {
LABEL_40:
            while (*v29 != v28)
            {
              v29 += 8;
              if (v29 == v30)
              {
                v18 = &dword_2733CD0;
                goto LABEL_12;
              }
            }
          }
        }

        if (v29 == v30)
        {
          v18 = &dword_2733CD0;
        }

        else
        {
          v18 = v29;
        }

LABEL_12:
        sub_EE637C(a1, v16, v40, v18, a7);
        v16 += 976;
      }

      while (v16 != v17);
    }
  }

  else
  {
    v13 = 0x7FFFFFFF;
    if (((1 << a3) & 0x3A82) != 0)
    {
      nullsub_1();
      if (*(v14 + 128) == 1)
      {
        v15 = v14;
        v12 = sub_4F96B8(v14);
        v10 = sub_4F96C8(v15);
        v11 = sub_4F96D0(v15);
        v13 = sub_4F96D8(v15);
      }

      else
      {
        v10 = 0;
      }

      sub_4EC9D4(a7, v43);
      sub_D16C58(a7, v43);
      sub_5287C0(v43);
    }

    v16 = *a2;
    v17 = a2[1];
    if (*a2 != v17)
    {
      goto LABEL_8;
    }
  }

  sub_4EE138(a7, 2);
  v31 = sub_74700();
  if (a3 <= 0xD)
  {
    if (((1 << a3) & 0x3C19) != 0)
    {
      v32 = sub_73EC4(v31);
      sub_4EC868(a7, v32);
      sub_4EC87C(a7, a4);
    }

    else if (((1 << a3) & 0x60) != 0)
    {
      sub_4EC760(a7, 1);
    }
  }

  return sub_4EC810(a7, a5);
}

void sub_EE6EE4(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(a2 + 1104);
  v5 = *(a2 + 1112);
  if (v4 == v5 || *(*(a1 + 2480) + 3) == 1)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return;
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6 = (v5 - v4) >> 3;
  v7 = 0x3795876FF3795877 * v6 - 1;
  if (0x3795876FF3795877 * v6 != 1)
  {
    v9 = 0;
    v10 = 0;
    v11 = 1008;
    v19 = a3;
    do
    {
      v10 += *(*(a2 + 1104) + v11);
      if (sub_4D1DB8(a2) >= v10)
      {
        v12 = sub_4D1DB8(a2) - v10;
        a3 = v19;
        v13 = v19[2];
        if (v9 >= v13)
        {
LABEL_12:
          v14 = v9;
          v15 = v9 >> 3;
          v16 = v15 + 1;
          if ((v15 + 1) >> 61)
          {
            *v19 = 0;
            sub_1794();
          }

          if (v13 >> 2 > v16)
          {
            v16 = v13 >> 2;
          }

          if (v13 >= 0x7FFFFFFFFFFFFFF8)
          {
            v17 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v17 = v16;
          }

          if (v17)
          {
            if (!(v17 >> 61))
            {
              operator new();
            }

            *v19 = 0;
            sub_1808();
          }

          v18 = (8 * v15);
          *v18 = v12;
          v9 = (v18 + 1);
          memcpy(0, 0, v14);
          a3 = v19;
          v19[1] = v9;
          v19[2] = 0;
          goto LABEL_7;
        }
      }

      else
      {
        v12 = 0;
        v13 = a3[2];
        if (v9 >= v13)
        {
          goto LABEL_12;
        }
      }

      *v9 = v12;
      v9 += 8;
LABEL_7:
      a3[1] = v9;
      v11 += 2616;
      --v7;
    }

    while (v7);
  }

  *a3 = 0;
}

void sub_EE70D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  *a10 = v10;
  if (v10)
  {
    a10[1] = v10;
    operator delete(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_EE7110@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if ((*(*(result + 2480) + 3) & 1) == 0)
  {
    sub_47AE70(result + 1088, a2, 0, v22);
    if (v24)
    {
      v4 = (v24 + 8);
    }

    else
    {
      v4 = 0;
    }

    if (v23)
    {
      v5 = 8 * v23;
      do
      {
        v6 = *v4;
        if (*(*v4 + 32))
        {
          v7 = *(*v4 + 32);
        }

        else
        {
          v7 = &off_2734B00;
        }

        v8 = *(v7 + 7);
        v9 = v8 / 10000000.0;
        v10 = -1;
        if (v8 / 10000000.0 <= 180.0)
        {
          v8 = *(v7 + 6) / 10000000.0;
          if (fabs(v8) <= 85.0511288 && v9 >= -180.0)
          {
            v11 = sin(fmin(fmax(v8, -85.0511288), 85.0511288) * 3.14159265 / 180.0);
            LODWORD(v12) = ((log((v11 + 1.0) / (1.0 - v11)) / -12.5663706 + 0.5) * 4294967300.0);
            if (v12 >= 0xFFFFFFFE)
            {
              v12 = 4294967294;
            }

            else
            {
              v12 = v12;
            }

            v8 = (v9 + 180.0) / 360.0 * 4294967300.0;
            v10 = v8 | (v12 << 32);
          }
        }

        v20 = v10;
        v21 = 0x7FFFFFFF;
        LODWORD(v8) = *(v6 + 60);
        v13 = llround(*&v8 * 100.0) % 36000;
        if (v13 > 0xFFFF735F)
        {
          LOWORD(v13) = v13 - 29536;
        }

        v19 = v13;
        v18 = *(v6 + 48);
        v14 = *(v6 + 64);
        v16 = *(v6 + 68);
        v17 = v14;
        v15 = 0;
        sub_EE7BB0(a3, &v18, &v20, &v19, &v17, &v16, &v15);
        ++v4;
        v5 -= 8;
      }

      while (v5);
    }

    return sub_1218EBC(v22);
  }

  return result;
}

void sub_EE7388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_1218EBC(va);
  v19 = *v17;
  if (*v17)
  {
    *(v17 + 8) = v19;
    operator delete(v19);
  }

  _Unwind_Resume(a1);
}

void sub_EE73AC(_DWORD *a1, void *a2)
{
  *a1 = 0x7FFFFFFF;
  v3 = 20;
  strcpy(__p, "familiar_route_logic");
  sub_5F5AC(a2, __p);
  if (v3 < 0)
  {
    operator delete(*__p);
  }

  operator new();
}

void sub_EE7504(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_EE7528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  nullsub_1();
  if (*(v8 + 128) == 1)
  {
    nullsub_1();
    sub_4F970C(v9, &v54);
    v42 = a4;
    nullsub_1();
    v11 = sub_4F96E0(v10);
    v52 = 0;
    v53 = 0;
    v51 = 0;
    __p = &v51;
    LOBYTE(v49) = 0;
    if (v11 != v54)
    {
      if (0x8E38E38E38E38E39 * ((v11 - v54) >> 4) < 0x1C71C71C71C71C8)
      {
        operator new();
      }

      sub_1794();
    }

    v12 = sub_5EBCF8(a2);
    if (v12)
    {
      for (i = 0; i != v12; ++i)
      {
        v15 = sub_5EBC20(a2, i);
        v16 = *(a3 + 8);
        if (i >= 0x8E38E38E38E38E39 * ((*(a3 + 16) - v16) >> 3))
        {
          __p = 0;
          v49 = 0;
          v50 = 0;
        }

        else
        {
          __p = 0;
          v49 = 0;
          v50 = 0;
          sub_4F1814(&__p, *(v16 + 72 * i), *(v16 + 72 * i + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(v16 + 72 * i + 8) - *(v16 + 72 * i)) >> 4));
        }

        sub_EE4AE8(a1, v15, v47);
        v17 = *(v15 + 10176);
        if (v17 == *(v15 + 10184))
        {
          v20 = 0x7FFFFFFFFFFFFFFFLL;
          v21 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v18 = sub_69B32C(v15);
          v19 = *(v17 + 8);
          v20 = v18 - v19;
          v21 = *(v17 + 16) - v19;
        }

        *&v46 = v20;
        *(&v46 + 1) = v21;
        v22 = *(a3 + 8);
        if (i >= 0x8E38E38E38E38E39 * ((*(a3 + 16) - v22) >> 3))
        {
          v43 = 0;
          v44 = 0;
          v45 = 0;
          v26 = (v11 + 144 * i);
          v27 = v52;
          if (v52 >= v53)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v23 = v22 + 72 * i;
          v43 = 0;
          v44 = 0;
          v45 = 0;
          v25 = *(v23 + 24);
          v24 = *(v23 + 32);
          if (v24 != v25)
          {
            if (((v24 - v25) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_1794();
          }

          v26 = (v11 + 144 * i);
          v27 = v52;
          if (v52 >= v53)
          {
LABEL_23:
            v28 = sub_EE7A0C(&v51, v26, (v26 + 1), v47, &__p, &v46, &v43);
            goto LABEL_24;
          }
        }

        sub_4F8F24(v27, *v26, (v26 + 1), v47, &__p, &v46, &v43);
        v28 = v27 + 144;
LABEL_24:
        v52 = v28;
        if (v43)
        {
          v44 = v43;
          operator delete(v43);
        }

        if (v47[0])
        {
          v47[1] = v47[0];
          operator delete(v47[0]);
        }

        v29 = __p;
        if (__p)
        {
          v30 = v49;
          v14 = __p;
          if (v49 != __p)
          {
            do
            {
              v31 = *(v30 - 6);
              if (v31)
              {
                *(v30 - 5) = v31;
                operator delete(v31);
              }

              v32 = v30 - 10;
              if (*(v30 - 57) < 0)
              {
                operator delete(*v32);
              }

              v30 -= 10;
            }

            while (v32 != v29);
            v14 = __p;
            a4 = v42;
          }

          v49 = v29;
          operator delete(v14);
        }
      }
    }

    nullsub_1();
    v34 = sub_4C5154(v33);
    sub_4ECCB8(a4, &v51, v34);
    v35 = sub_57478(a2);
    v36 = sub_73EC4(v35);
    sub_4ED5BC(a4, v36);
    v37 = sub_57478(a2);
    v38 = sub_68F328(v37);
    sub_4ECFBC(a4, *v38 == v38[1]);
    v39 = v51;
    if (v51)
    {
      v40 = v52;
      v41 = v51;
      if (v52 != v51)
      {
        do
        {
          v40 = sub_4F0FB4(v40 - 144);
        }

        while (v40 != v39);
        v41 = v51;
      }

      v52 = v39;
      operator delete(v41);
    }
  }
}

uint64_t sub_EE7A0C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, __int128 **a5, __int128 *a6, uint64_t a7)
{
  v7 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 4);
  v8 = v7 + 1;
  if (v7 + 1 > 0x1C71C71C71C71C7)
  {
    sub_1794();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4) > v8)
  {
    v8 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 4) >= 0xE38E38E38E38E3)
  {
    v10 = 0x1C71C71C71C71C7;
  }

  else
  {
    v10 = v8;
  }

  v19 = a1;
  if (v10)
  {
    if (v10 <= 0x1C71C71C71C71C7)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v16 = 144 * v7;
  v17 = 144 * v7;
  v18 = 0;
  sub_4F8F24(144 * v7, *a2, a3, a4, a5, a6, a7);
  v17 = 144 * v7 + 144;
  sub_4FA214(a1, &__p);
  v11 = a1[1];
  v13 = v16;
  for (i = v17; v17 != v13; i = v17)
  {
    v17 = i - 144;
    sub_4F0FB4(i - 144);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v11;
}

void sub_EE7B9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_4FA35C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_EE7BB0(uint64_t a1, void *a2, uint64_t *a3, __int16 *a4, unsigned __int8 *a5, int *a6, int *a7)
{
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  if (v9 >= v10)
  {
    v18 = *a1;
    v19 = v9 - *a1;
    v20 = v19 >> 5;
    v21 = (v19 >> 5) + 1;
    if (v21 >> 59)
    {
      sub_1794();
    }

    v22 = v10 - v18;
    if (v22 >> 4 > v21)
    {
      v21 = v22 >> 4;
    }

    if (v22 >= 0x7FFFFFFFFFFFFFE0)
    {
      v23 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v23 = v21;
    }

    if (v23)
    {
      if (!(v23 >> 59))
      {
        operator new();
      }

      sub_1808();
    }

    v24 = 32 * v20;
    v25 = *a3;
    v26 = *(a3 + 2);
    v27 = *a4;
    v28 = *a5;
    v29 = *a6;
    v30 = *a7;
    *v24 = *a2;
    *(v24 + 8) = v25;
    *(v24 + 16) = v26;
    *(v24 + 20) = v27;
    *(v24 + 22) = v28 & 0xFFFF00FF | (v29 << 8) | (v30 << 16);
    v17 = 32 * v20 + 32;
    memcpy(0, v18, v19);
    *a1 = 0;
    *(a1 + 8) = v17;
    *(a1 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v11 = *a3;
    v12 = *(a3 + 2);
    v13 = *a4;
    v14 = *a5;
    v15 = *a6;
    v16 = *a7;
    *v9 = *a2;
    *(v9 + 8) = v11;
    *(v9 + 16) = v12;
    *(v9 + 20) = v13;
    *(v9 + 22) = v14 & 0xFFFF00FF | (v15 << 8) | (v16 << 16);
    v17 = v9 + 32;
  }

  *(a1 + 8) = v17;
  return v17 - 32;
}

void sub_EE7D54()
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
  xmmword_27BD2B0 = 0u;
  unk_27BD2C0 = 0u;
  dword_27BD2D0 = 1065353216;
  sub_3A9A34(&xmmword_27BD2B0, v0, v0);
  sub_3A9A34(&xmmword_27BD2B0, v3, v3);
  sub_3A9A34(&xmmword_27BD2B0, __p, __p);
  sub_3A9A34(&xmmword_27BD2B0, v9, v9);
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
    qword_27BD288 = 0;
    qword_27BD290 = 0;
    qword_27BD280 = 0;
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

void sub_EE7F9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27BD298)
  {
    qword_27BD2A0 = qword_27BD298;
    operator delete(qword_27BD298);
  }

  _Unwind_Resume(exception_object);
}

void *sub_EE8048(void *a1, int *a2)
{
  result = sub_EA7200(a1, a2);
  *result = &off_26747D0;
  return result;
}

void sub_EE807C(void (***a1)(void, unint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  sub_EA7354(a1, a2, a3);
  v6 = sub_68E508(a2);
  *(a3 + 40) |= 0x40u;
  v7 = *(a3 + 8);
  v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
  if (v7)
  {
    v8 = *v8;
  }

  sub_194EA1C((a3 + 752), v6, v8);
  v9 = sub_68E634(a2);
  *(a3 + 40) |= 0x80u;
  v10 = *(a3 + 8);
  v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
  if (v10)
  {
    v11 = *v11;
  }

  sub_194EA1C((a3 + 760), v9, v11);
  v12 = sub_68EA58(a2);
  v13 = *(v12 + 23);
  if ((v13 & 0x80u) != 0)
  {
    v13 = *(v12 + 8);
  }

  if (v13)
  {
    *(a3 + 40) |= 0x8000u;
    v14 = *(a3 + 824);
    if (!v14)
    {
      v15 = *(a3 + 8);
      v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
      if (v15)
      {
        v16 = *v16;
      }

      sub_14BAE64(v16);
      v14 = v17;
      *(a3 + 824) = v17;
    }

    v18 = sub_68EA58(a2);
    sub_64E090(v14, v18);
  }

  nullsub_1();
  v20 = *v19;
  v21 = *(v19 + 8);
  if (*v19 != v21)
  {
    do
    {
      sub_EE81BC(a1, v20, a3);
      v20 += 1582;
    }

    while (v20 != v21);
  }
}

void sub_EE81BC(void (***a1)(void, unint64_t, uint64_t), void *a2, uint64_t a3)
{
  sub_EE83E8(a1, a2, a3);
  v6 = a2[942];
  v7 = a2[943];
  while (v6 != v7)
  {
    v10 = *(a3 + 384);
    if (v10 && (v11 = *(a3 + 376), v11 < *v10))
    {
      *(a3 + 376) = v11 + 1;
      v9 = *&v10[2 * v11 + 2];
    }

    else
    {
      sub_14BB54C(*(a3 + 368));
      v9 = sub_19593CC(a3 + 368, v8);
    }

    sub_EE96B0(a1, v6, v9);
    v6 += 112;
  }

  v12 = a2[939];
  v13 = a2[940];
  while (v12 != v13)
  {
    v16 = *(a3 + 384);
    if (v16 && (v17 = *(a3 + 376), v17 < *v16))
    {
      *(a3 + 376) = v17 + 1;
      v15 = *&v16[2 * v17 + 2];
    }

    else
    {
      sub_14BB54C(*(a3 + 368));
      v15 = sub_19593CC(a3 + 368, v14);
    }

    sub_EE913C(a1, v12, v15);
    v12 += 280;
  }

  v18 = a2[945];
  v19 = a2[946];
  while (v18 != v19)
  {
    v22 = *(a3 + 384);
    if (v22 && (v23 = *(a3 + 376), v23 < *v22))
    {
      *(a3 + 376) = v23 + 1;
      v21 = *&v22[2 * v23 + 2];
    }

    else
    {
      sub_14BB54C(*(a3 + 368));
      v21 = sub_19593CC(a3 + 368, v20);
    }

    sub_EE9D4C(a1, v18, v21);
    v18 += 214;
  }

  sub_EE86F4(a1, a2, a3);
}

void sub_EE834C(void (***a1)(void, unint64_t, uint64_t), void *a2, uint64_t a3)
{
  nullsub_1();
  v7 = -1189124953 * ((v6[1] - *v6) >> 4);
  if (v7)
  {
    v8 = 0;
    do
    {
      v9 = *(*(a3 + 64) + 8 * v8 + 8);
      v10 = sub_68C454(a2, v8);
      sub_EE81BC(a1, v10, v9);
      ++v8;
    }

    while (v7 != v8);
  }
}

void sub_EE83E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_682474(a2 + 7584))
  {
    v5 = sub_68233C(a2 + 7584);
    *(a3 + 40) |= 0x40000u;
    v6 = *(a3 + 848);
    if (v6)
    {
      *(v6 + 16) |= 1u;
      v7 = *(v6 + 96);
      if (v7)
      {
LABEL_11:
        sub_64D110(v5, v7);
        goto LABEL_12;
      }
    }

    else
    {
      v8 = *(a3 + 8);
      v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL);
      if (v8)
      {
        v9 = *v9;
      }

      v6 = sub_14BB0C4(v9);
      *(a3 + 848) = v6;
      *(v6 + 16) |= 1u;
      v7 = *(v6 + 96);
      if (v7)
      {
        goto LABEL_11;
      }
    }

    v10 = *(v6 + 8);
    v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
    if (v10)
    {
      v11 = *v11;
    }

    sub_14BAE64(v11);
    v7 = v12;
    *(v6 + 96) = v12;
    goto LABEL_11;
  }

LABEL_12:
  if (sub_681EB0(a2 + 7584))
  {
    v13 = sub_681D7C(a2 + 7584);
    v14 = *v13;
    v15 = *(v13 + 8);
    while (v14 != v15)
    {
      *(a3 + 40) |= 0x40000u;
      v18 = *(a3 + 848);
      if (v18)
      {
        v19 = *(v18 + 40);
        if (!v19)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v20 = *(a3 + 8);
        v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
        if (v20)
        {
          v18 = sub_14BB0C4(*v21);
          *(a3 + 848) = v18;
          v19 = *(v18 + 40);
          if (!v19)
          {
LABEL_14:
            sub_14BAE64(*(v18 + 24));
            v17 = sub_19593CC(v18 + 24, v16);
            goto LABEL_15;
          }
        }

        else
        {
          v18 = sub_14BB0C4(v21);
          *(a3 + 848) = v18;
          v19 = *(v18 + 40);
          if (!v19)
          {
            goto LABEL_14;
          }
        }
      }

      v22 = *(v18 + 32);
      if (v22 >= *v19)
      {
        goto LABEL_14;
      }

      *(v18 + 32) = v22 + 1;
      v17 = *&v19[2 * v22 + 2];
LABEL_15:
      sub_64D110(v14, v17);
      v14 += 20;
    }
  }

  if (sub_682474(a2 + 8440))
  {
    v23 = sub_68233C(a2 + 8440);
    *(a3 + 40) |= 0x80000u;
    v24 = *(a3 + 856);
    if (v24)
    {
      *(v24 + 16) |= 1u;
      v25 = *(v24 + 96);
      if (v25)
      {
LABEL_36:
        sub_64D110(v23, v25);
        goto LABEL_37;
      }
    }

    else
    {
      v26 = *(a3 + 8);
      v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
      if (v26)
      {
        v27 = *v27;
      }

      v24 = sub_14BB0C4(v27);
      *(a3 + 856) = v24;
      *(v24 + 16) |= 1u;
      v25 = *(v24 + 96);
      if (v25)
      {
        goto LABEL_36;
      }
    }

    v28 = *(v24 + 8);
    v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
    if (v28)
    {
      v29 = *v29;
    }

    sub_14BAE64(v29);
    v25 = v30;
    *(v24 + 96) = v30;
    goto LABEL_36;
  }

LABEL_37:
  if (sub_681EB0(a2 + 8440))
  {
    v31 = sub_681D7C(a2 + 8440);
    v32 = *v31;
    v33 = *(v31 + 8);
    while (1)
    {
      if (v32 == v33)
      {
        return;
      }

      *(a3 + 40) |= 0x80000u;
      v36 = *(a3 + 856);
      if (v36)
      {
        v37 = *(v36 + 40);
        if (!v37)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v38 = *(a3 + 8);
        v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
        if (v38)
        {
          v36 = sub_14BB0C4(*v39);
          *(a3 + 856) = v36;
          v37 = *(v36 + 40);
          if (!v37)
          {
LABEL_39:
            sub_14BAE64(*(v36 + 24));
            v35 = sub_19593CC(v36 + 24, v34);
            goto LABEL_40;
          }
        }

        else
        {
          v36 = sub_14BB0C4(v39);
          *(a3 + 856) = v36;
          v37 = *(v36 + 40);
          if (!v37)
          {
            goto LABEL_39;
          }
        }
      }

      v40 = *(v36 + 32);
      if (v40 >= *v37)
      {
        goto LABEL_39;
      }

      *(v36 + 32) = v40 + 1;
      v35 = *&v37[2 * v40 + 2];
LABEL_40:
      sub_64D110(v32, v35);
      v32 += 20;
    }
  }
}

void sub_EE86F4(void (***result)(void, unint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 1112) - *(a2 + 1104);
  if (v3)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0x3795876FF3795877 * (v3 >> 3);
    do
    {
      v10 = sub_50EA30((a2 + 1104), v8);
      v11 = (v10 + 385);
      v12 = *(*(a3 + 72) + (v7 >> 29) + 8);
      if (!*(v10 + 386))
      {
        v11 = (a2 + 1097);
      }

      v13 = *v11;
      sub_EA79F0(result, v10, *(*(a3 + 72) + (v7 >> 29) + 8));
      sub_EE8840(result, v10, v13, v12);
      (**result)(result, v10, v12);
      sub_EE8AD0(result, v10, v12);
      sub_EE8E20(result, v10, v12);
      ++v8;
      v7 += 0x100000000;
    }

    while (v9 != v8);
  }
}

void sub_EE8840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v8 = sub_1950D4C((a4 + 16), dword_278D0E8, 11, &off_2769CA8, 0);
  v9 = *(a2 + 1888);
  v10 = *(a2 + 1896);
  if (v9 != v10)
  {
    v11 = v8;
    while (!sub_80A4D8(v9))
    {
LABEL_6:
      v9 += 280;
      if (v9 == v10)
      {
        return;
      }
    }

    v14 = *(a4 + 144);
    if (v14 && (v15 = *(a4 + 136), v15 < *v14))
    {
      *(a4 + 136) = v15 + 1;
      v16 = *&v14[2 * v15 + 2];
      if (!sub_80A518(v9))
      {
        goto LABEL_11;
      }
    }

    else
    {
      sub_14BB54C(*(a4 + 128));
      v16 = sub_19593CC(a4 + 128, v17);
      if (!sub_80A518(v9))
      {
LABEL_11:
        sub_EE913C(a1, v9, v16);
        if (*(a1 + 11))
        {
LABEL_16:
          sub_682344(v9, __p);
          v19 = v11[8];
          if (v19)
          {
            v20 = *(v11 + 14);
            v21 = *v19;
            if (v20 < *v19)
            {
              *(v11 + 14) = v20 + 1;
              v12 = *&v19[2 * v20 + 2];
              if (*(v12 + 23) < 0)
              {
                operator delete(*v12);
              }

              v13 = *__p;
              *(v12 + 16) = v29;
              *v12 = v13;
              goto LABEL_6;
            }

            if (v21 != *(v11 + 15))
            {
              *v19 = v21 + 1;
              v22 = v11[6];
              if (!v22)
              {
                goto LABEL_23;
              }

LABEL_20:
              *v24 = v23;
              v24[1] = sub_195A650;
              v25 = *__p;
              *(v23 + 16) = v29;
              *v23 = v25;
              __p[1] = 0;
              v29 = 0;
              __p[0] = 0;
              v26 = *(v11 + 14);
              v27 = v11[8] + 8 * v26;
              *(v11 + 14) = v26 + 1;
              *(v27 + 8) = v23;
              if (SHIBYTE(v29) < 0)
              {
                operator delete(__p[0]);
              }

              goto LABEL_6;
            }
          }

          else
          {
            v21 = *(v11 + 15);
          }

          sub_1959254(v11 + 12, v21 + 1);
          ++*v11[8];
          v22 = v11[6];
          if (!v22)
          {
LABEL_23:
            operator new();
          }

          goto LABEL_20;
        }

LABEL_15:
        v18 = *(a4 + 324);
        *(v16 + 16) |= 0x400u;
        *(v16 + 96) = v18;
        goto LABEL_16;
      }
    }

    sub_EE9EEC(a1, a2, v9, v5, v16);
    if (*(a1 + 11))
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }
}

void sub_EE8AB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_EE8AD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 1936);
  v4 = *(a2 + 1944);
  if (v3 != v4)
  {
    while (1)
    {
      v7 = *(a3 + 144);
      if (!v7)
      {
        break;
      }

      v8 = *(a3 + 136);
      if (v8 >= *v7)
      {
        break;
      }

      *(a3 + 136) = v8 + 1;
      v9 = *&v7[2 * v8 + 2];
      if (sub_681D38(v3))
      {
        goto LABEL_9;
      }

LABEL_10:
      v13 = sub_4DADB4(v3);
      nullsub_1();
      v15 = v14;
      v16 = sub_58BBC(v13);
      v17 = *(v9 + 16);
      if (*(a1 + 11) == 1)
      {
        v17 |= 0xC0000u;
        *(v9 + 132) = vmovn_s64(*v16);
      }

      v18 = v15[1];
      if (*v15 < 0)
      {
        v19 = -50;
      }

      else
      {
        v19 = 50;
      }

      v20 = *v15 / 100 + ((5243 * (v19 + *v15 % 100)) >> 19) + ((5243 * (v19 + *v15 % 100)) >> 31);
      v21 = v18 / 100;
      v22 = v18 % 100;
      if (v18 < 0)
      {
        v23 = -50;
      }

      else
      {
        v23 = 50;
      }

      *(v9 + 80) = v20;
      *(v9 + 84) = v21 + ((5243 * (v23 + v22)) >> 19) + ((5243 * (v23 + v22)) >> 31);
      *(v9 + 16) = v17 | 0x190;
      v24 = *(v9 + 56);
      if (v24)
      {
        if (sub_4D1F6C((v3 + 384)))
        {
          goto LABEL_20;
        }
      }

      else
      {
        v26 = *(v9 + 8);
        v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
        if (v26)
        {
          v27 = *v27;
        }

        v24 = sub_14BBB28(v27);
        *(v9 + 56) = v24;
        if (sub_4D1F6C((v3 + 384)))
        {
LABEL_20:
          v25 = *(v3 + 567);
          if ((v25 & 0x8000000000000000) == 0)
          {
            goto LABEL_21;
          }

          goto LABEL_32;
        }
      }

      *(v24 + 16) |= 2u;
      v28 = *(v24 + 56);
      if (v28)
      {
        sub_64D110((v3 + 384), v28);
        v25 = *(v3 + 567);
        if ((v25 & 0x8000000000000000) == 0)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v29 = *(v24 + 8);
        v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
        if (v29)
        {
          v30 = *v30;
        }

        sub_14BAE64(v30);
        *(v24 + 56) = v31;
        sub_64D110((v3 + 384), v31);
        v25 = *(v3 + 567);
        if ((v25 & 0x8000000000000000) == 0)
        {
LABEL_21:
          if (v25)
          {
            goto LABEL_33;
          }

          goto LABEL_36;
        }
      }

LABEL_32:
      if (*(v3 + 552))
      {
LABEL_33:
        *(v24 + 16) |= 1u;
        v32 = *(v24 + 8);
        v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
        if (v32)
        {
          v33 = *v33;
        }

        sub_194EA1C((v24 + 48), (v3 + 544), v33);
      }

LABEL_36:
      v34 = *(v3 + 380);
      if (v34 == 2)
      {
        v35 = 2;
      }

      else
      {
        v35 = v34 == 1;
      }

      *(v24 + 16) |= 4u;
      *(v24 + 64) = v35;
      v36 = *(v3 + 680);
      v37 = *(v3 + 688);
      while (v36 != v37)
      {
        v42 = *(v24 + 40);
        if (v42 && (v43 = *(v24 + 32), v43 < *v42))
        {
          *(v24 + 32) = v43 + 1;
          v39 = *&v42[2 * v43 + 2];
        }

        else
        {
          v38 = sub_14BBAAC(*(v24 + 24));
          v39 = sub_19593CC(v24 + 24, v38);
        }

        v40 = *sub_58BBC(v36);
        v39[4] |= 4u;
        v39[8] = v40;
        v41 = *(sub_58BBC(v36) + 8);
        v39[4] |= 8u;
        v39[9] = v41;
        v36 += 56;
      }

      v3 += 704;
      if (v3 == v4)
      {
        return;
      }
    }

    sub_14BB54C(*(a3 + 128));
    v9 = sub_19593CC(a3 + 128, v10);
    if (!sub_681D38(v3))
    {
      goto LABEL_10;
    }

LABEL_9:
    v11 = sub_681D38(v3);
    v12 = sub_ECB8AC(v11);
    *(v9 + 16) |= 0x800u;
    *(v9 + 100) = v12;
    goto LABEL_10;
  }
}

void sub_EE8E20(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2[323] != -1 && a2[324] != -1 && a2[325] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = *(a3 + 144);
    if (v5 && (v6 = *(a3 + 136), v6 < *v5))
    {
      *(a3 + 136) = v6 + 1;
      v7 = *&v5[2 * v6 + 2];
      *(v7 + 16) |= 8u;
      if (*(v7 + 48))
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_14BB54C(*(a3 + 128));
      v7 = sub_19593CC(a3 + 128, v9);
      *(v7 + 16) |= 8u;
      if (*(v7 + 48))
      {
        goto LABEL_16;
      }
    }

    v10 = *(v7 + 8);
    v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
    if (v10)
    {
      v11 = *v11;
    }

    *(v7 + 48) = sub_14BBBD0(v11);
LABEL_16:
    operator new();
  }
}

void sub_EE913C(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  *(a3 + 16) |= 1u;
  v6 = *(a3 + 24);
  if (!v6)
  {
    v7 = *(a3 + 8);
    v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
    if (v7)
    {
      v8 = *v8;
    }

    v6 = sub_14BB6FC(v8);
    *(a3 + 24) = v6;
  }

  v9 = sub_4DADB4(a2);
  nullsub_1();
  v11 = v10;
  v12 = sub_58BBC(v9);
  v13 = *(a3 + 16);
  if (*(a1 + 11) == 1)
  {
    v13 |= 0xC0000u;
    *(a3 + 132) = vmovn_s64(*v12);
  }

  v14 = v11[1];
  if (*v11 < 0)
  {
    v15 = -50;
  }

  else
  {
    v15 = 50;
  }

  v16 = *v11 / 100 + ((5243 * (v15 + *v11 % 100)) >> 19) + ((5243 * (v15 + *v11 % 100)) >> 31);
  if (v14 < 0)
  {
    v17 = -50;
  }

  else
  {
    v17 = 50;
  }

  *(a3 + 16) = v13 | 0x180;
  *(a3 + 80) = v16;
  *(a3 + 84) = v14 / 100 + ((5243 * (v17 + v14 % 100)) >> 19) + ((5243 * (v17 + v14 % 100)) >> 31);
  if (sub_681EA0(a2))
  {
    v18 = sub_3F80(a2);
    *(a3 + 16) |= 0x2000u;
    *(a3 + 112) = v18;
  }

  v19 = sub_681D38(a2);
  v20 = sub_ECB8AC(v19);
  *(a3 + 16) |= 0x800u;
  *(a3 + 100) = v20;
  if (sub_80A4A8(a2) != -1)
  {
    v21 = sub_80A4A8(a2);
    *(v6 + 16) |= 0x10u;
    *(v6 + 124) = v21;
  }

  v22 = sub_68238C(a2);
  if (!sub_4D1F6C(v22))
  {
    v23 = sub_68238C(a2);
    v24 = *(v6 + 40);
    if (v24 && (v25 = *(v6 + 32), v25 < *v24))
    {
      *(v6 + 32) = v25 + 1;
      v26 = *&v24[2 * v25 + 2];
    }

    else
    {
      v27 = v23;
      sub_14BAE64(*(v6 + 24));
      v26 = sub_19593CC(v6 + 24, v28);
      v23 = v27;
    }

    sub_64D110(v23, v26);
  }

  v29 = sub_681D7C(a2);
  v30 = *v29;
  v31 = *(v29 + 8);
  while (v30 != v31)
  {
    v34 = *(v6 + 64);
    if (v34 && (v35 = *(v6 + 56), v35 < *v34))
    {
      *(v6 + 56) = v35 + 1;
      v33 = *&v34[2 * v35 + 2];
    }

    else
    {
      sub_14BAE64(*(v6 + 48));
      v33 = sub_19593CC(v6 + 48, v32);
    }

    sub_64D110(v30, v33);
    v30 += 20;
  }

  if (sub_80A4A0(a2))
  {
    v36 = sub_80A4A0(a2);
    v37 = sub_EC7E24(v36);
    *(v6 + 16) |= 8u;
    *(v6 + 120) = v37;
  }

  if (sub_80A528(a2))
  {
    v41 = sub_80A4D0(a2);
    *(v6 + 16) |= 2u;
    v42 = *(v6 + 104);
    if (v42)
    {
      sub_ECB694(v41, v42);
      v43 = sub_80A4B0(a2);
      if (sub_7345C4(v43))
      {
        goto LABEL_50;
      }
    }

    else
    {
      v44 = v41;
      v45 = *(v6 + 8);
      v46 = (v45 & 0xFFFFFFFFFFFFFFFCLL);
      if (v45)
      {
        v46 = *v46;
      }

      sub_14BB658(v46);
      *(v6 + 104) = v47;
      sub_ECB694(v44, v47);
      v48 = sub_80A4B0(a2);
      if (sub_7345C4(v48))
      {
        goto LABEL_50;
      }
    }

LABEL_34:
    if (sub_681DB0(a2) == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_35;
    }

    goto LABEL_57;
  }

  v38 = sub_80A4B0(a2);
  if (!sub_7345C4(v38))
  {
    goto LABEL_34;
  }

LABEL_50:
  v49 = sub_80A4B0(a2);
  *(v6 + 16) |= 1u;
  v50 = *(v6 + 96);
  if (!v50)
  {
    v51 = *(v6 + 8);
    v52 = (v51 & 0xFFFFFFFFFFFFFFFCLL);
    if (v51)
    {
      v52 = *v52;
    }

    v50 = sub_16F5CD4(v52);
    *(v6 + 96) = v50;
  }

  *(v50 + 40) |= 4u;
  v53 = *(v50 + 8);
  v54 = (v53 & 0xFFFFFFFFFFFFFFFCLL);
  if (v53)
  {
    v54 = *v54;
  }

  sub_194EA1C((v50 + 64), (v49 + 8), v54);
  v55 = *v49;
  *(v50 + 40) |= 0x10u;
  *(v50 + 80) = v55;
  if (sub_681DB0(a2) == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_35:
    v39 = sub_682394(a2);
    v40 = v39[8];
    if (v40 <= 2)
    {
      goto LABEL_36;
    }

    goto LABEL_65;
  }

LABEL_57:
  if (*(a1 + 11) == 1)
  {
    v56 = sub_681D64(a2);
    if ((v57 & 1) == 0)
    {
      sub_4F0F0C();
    }

    v58 = 0x100000;
    v59 = 140;
  }

  else
  {
    v60 = sub_681DB0(a2);
    if (v60 < 0)
    {
      v61 = -50;
    }

    else
    {
      v61 = 50;
    }

    v56 = v60 / 100 + ((5243 * (v61 + v60 % 100)) >> 19) + ((5243 * (v61 + v60 % 100)) >> 31);
    v58 = 0x4000;
    v59 = 116;
  }

  *(a3 + 16) |= v58;
  *(a3 + v59) = v56;
  v39 = sub_682394(a2);
  v40 = v39[8];
  if (v40 <= 2)
  {
LABEL_36:
    if (v40 == 1)
    {
      if (*v39 == -1)
      {
        return;
      }
    }

    else if (v40 != 2 || v39[1] == -1 && *v39 == -1 && *(v39 + 1) == *(v39 + 2))
    {
      return;
    }

    goto LABEL_70;
  }

LABEL_65:
  if (v40 == 3 || v40 == 4)
  {
    v62 = *(v39 + 23);
    if ((v62 & 0x80u) != 0)
    {
      v62 = *(v39 + 1);
    }

    if (v62)
    {
LABEL_70:
      v63 = sub_682394(a2);
      *(v6 + 16) |= 4u;
      v65 = *(v6 + 112);
      if (!v65)
      {
        v66 = v63;
        v67 = *(v6 + 8);
        v68 = (v67 & 0xFFFFFFFFFFFFFFFCLL);
        if (v67)
        {
          v68 = *v68;
        }

        v65 = sub_14BF484(v68);
        *(v6 + 112) = v65;
        v63 = v66;
      }

      sub_586C94(v63, v65, v64);
    }
  }
}

uint64_t sub_EE96B0(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v6 = sub_4DADB4(a2);
  nullsub_1();
  v8 = v7;
  v9 = sub_58BBC(v6);
  v79 = a1;
  v10 = *(a3 + 16);
  if (*(a1 + 11) == 1)
  {
    v10 |= 0xC0000u;
    *(a3 + 132) = vmovn_s64(*v9);
  }

  v11 = v8[1];
  if (*v8 < 0)
  {
    v12 = -50;
  }

  else
  {
    v12 = 50;
  }

  v13 = *v8 / 100 + ((5243 * (v12 + *v8 % 100)) >> 19) + ((5243 * (v12 + *v8 % 100)) >> 31);
  if (v11 < 0)
  {
    v14 = -50;
  }

  else
  {
    v14 = 50;
  }

  *(a3 + 16) = v10 | 0x180;
  *(a3 + 80) = v13;
  *(a3 + 84) = v11 / 100 + ((5243 * (v14 + v11 % 100)) >> 19) + ((5243 * (v14 + v11 % 100)) >> 31);
  if (sub_681EA0(a2))
  {
    v15 = sub_3F80(a2);
    *(a3 + 16) |= 0x2000u;
    *(a3 + 112) = v15;
  }

  v16 = sub_681D38(a2);
  v17 = sub_ECB8AC(v16);
  *(a3 + 16) |= 0x800u;
  *(a3 + 100) = v17;
  v18 = sub_682A98(a2);
  *(a3 + 16) |= 0x8000u;
  *(a3 + 120) = v18;
  v19 = sub_681D74(a2);
  *(a3 + 16) |= 0x200000u;
  *(a3 + 144) = v19;
  v20 = sub_681D98(a2);
  if (*&v20 > -1 && ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&v20 - 1) < 0xFFFFFFFFFFFFFLL || (*&v20 & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    v24 = sub_681D98(a2);
    *(a3 + 16) |= 0x200u;
    *(a3 + 88) = v24 / 3.6;
  }

  v25 = sub_681DA0(a2);
  if (*&v25 > -1 && ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&v25 - 1) < 0xFFFFFFFFFFFFFLL || (*&v25 & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    v29 = sub_681DA0(a2);
    *(a3 + 16) |= 0x1000u;
    *(a3 + 104) = v29 / 3.6;
  }

  if (sub_682B14(a2) != -1)
  {
    v30 = sub_682B14(a2);
    *(a3 + 16) |= 0x20000u;
    *(a3 + 128) = v30;
  }

  v31 = sub_9351C(a2);
  v32 = *v31;
  v33 = *(v31 + 8);
  if (*v31 != v33)
  {
    *(a3 + 16) |= 0x20u;
    v34 = *(a3 + 64);
    if (!v34)
    {
      v35 = v31;
      v36 = *(a3 + 8);
      v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
      if (v36)
      {
        v37 = *v37;
      }

      v34 = sub_14BB4B8(v37);
      *(a3 + 64) = v34;
      v38 = v35;
      v32 = *v35;
      v33 = v38[1];
    }

    if (v32 != v33)
    {
      v39 = (v34 + 16);
      v40 = *(v34 + 16);
      do
      {
        while (1)
        {
          v41 = *v32 == 1;
          if (v40 == *(v34 + 20))
          {
            break;
          }

          *(*(v34 + 24) + 4 * v40++) = v41;
          *v39 = v40;
          if (++v32 == v33)
          {
            goto LABEL_47;
          }
        }

        sub_1958E5C((v34 + 16), v40 + 1);
        *(*(v34 + 24) + 4 * v40++) = v41;
        *v39 = v40;
        ++v32;
      }

      while (v32 != v33);
    }
  }

LABEL_47:
  *(a3 + 16) |= 2u;
  v42 = *(a3 + 32);
  if (!v42)
  {
    v43 = *(a3 + 8);
    v44 = (v43 & 0xFFFFFFFFFFFFFFFCLL);
    if (v43)
    {
      v44 = *v44;
    }

    v42 = sub_14BB828(v44);
    *(a3 + 32) = v42;
  }

  v45 = sub_681D7C(a2);
  sub_1959254((v42 + 24), -858993459 * ((v45[1] - *v45) >> 5));
  v46 = sub_681D7C(a2);
  v48 = *v46;
  v47 = *(v46 + 8);
  while (v48 != v47)
  {
    v51 = *(v42 + 40);
    if (v51 && (v52 = *(v42 + 32), v52 < *v51))
    {
      *(v42 + 32) = v52 + 1;
      v50 = *&v51[2 * v52 + 2];
    }

    else
    {
      sub_14BAE64(*(v42 + 24));
      v50 = sub_19593CC(v42 + 24, v49);
    }

    sub_64D110(v48, v50);
    v48 += 20;
  }

  v53 = sub_682A88(a2);
  *(v42 + 16) |= 8u;
  *(v42 + 84) = v53;
  v54 = sub_682A60(a2);
  *(v42 + 16) |= 0x10u;
  *(v42 + 88) = v54;
  v55 = sub_682A68(a2);
  if ((v55 - 1) >= 4)
  {
    v56 = 0;
  }

  else
  {
    v56 = v55;
  }

  *(v42 + 16) |= 0x80u;
  *(v42 + 100) = v56;
  v57 = sub_682A90(a2);
  *(v42 + 16) |= 0x20u;
  *(v42 + 92) = v57;
  if (!sub_682E20(a2))
  {
    v58 = sub_682A80(a2);
    if (!sub_681708(v58))
    {
      goto LABEL_63;
    }

LABEL_66:
    v64 = sub_682A70(a2);
    if (v64 < 0)
    {
      v65 = -5;
    }

    else
    {
      v65 = 5;
    }

    *(v42 + 16) |= 1u;
    *(v42 + 72) = v64 / 10 + (((103 * (v65 + v64 % 10)) >> 15) & 1) + ((103 * (v65 + v64 % 10)) >> 10);
    v66 = sub_682A78(a2);
    if (v66 < 0)
    {
      v67 = -5;
    }

    else
    {
      v67 = 5;
    }

    *(v42 + 16) |= 2u;
    *(v42 + 76) = v66 / 10 + (((103 * (v67 + v66 % 10)) >> 15) & 1) + ((103 * (v67 + v66 % 10)) >> 10);
    result = sub_93420(a2);
    v60 = *result;
    v61 = *(result + 8);
    if (*result == v61)
    {
      goto LABEL_84;
    }

    goto LABEL_80;
  }

  v62 = sub_682B24(a2);
  *(v42 + 16) |= 0x40u;
  *(v42 + 96) = v62;
  v63 = sub_682A80(a2);
  if (sub_681708(v63))
  {
    goto LABEL_66;
  }

LABEL_63:
  result = sub_93420(a2);
  v60 = *result;
  v61 = *(result + 8);
  if (*result == v61)
  {
    goto LABEL_84;
  }

  do
  {
LABEL_80:
    result = sub_681724(v60);
    if (result)
    {
      v75 = *(v42 + 64);
      if (v75 && (v76 = *(v42 + 56), v76 < *v75))
      {
        *(v42 + 56) = v76 + 1;
        result = *&v75[2 * v76 + 2];
      }

      else
      {
        v68 = sub_14BB7AC(*(v42 + 48));
        result = sub_19593CC(v42 + 48, v68);
      }

      v69 = *v60;
      v70 = *(result + 16);
      *(result + 16) = v70 | 1;
      v71 = v60[1];
      v72 = v71 / 10;
      v73 = v71 % 10;
      if (v71 < 0)
      {
        v74 = -5;
      }

      else
      {
        v74 = 5;
      }

      *(result + 16) = v70 | 3;
      *(result + 24) = v69;
      *(result + 28) = v72 + (((103 * (v74 + v73)) >> 15) & 1) + ((103 * (v74 + v73)) >> 10);
    }

    v60 += 3;
  }

  while (v60 != v61);
LABEL_84:
  if (*(v79 + 11))
  {
    result = sub_681D64(a2);
    if (v77)
    {
      result = sub_681D64(a2);
      if ((v78 & 1) == 0)
      {
        sub_4F0F0C();
      }

      *(a3 + 16) |= 0x100000u;
      *(a3 + 140) = result;
    }
  }

  return result;
}

void sub_EE9D4C(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  *(a3 + 16) |= 0x40u;
  v5 = *(a3 + 72);
  if (v5)
  {
    if (!sub_681EA0(a2))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v19 = *(a3 + 8);
  v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
  if (v19)
  {
    v20 = *v20;
  }

  v5 = sub_14BB5DC(v20);
  *(a3 + 72) = v5;
  if (sub_681EA0(a2))
  {
LABEL_3:
    v6 = sub_3F80(a2);
    *(a3 + 16) |= 0x2000u;
    *(a3 + 112) = v6;
  }

LABEL_4:
  v7 = sub_681D38(a2);
  v8 = sub_ECB8AC(v7);
  *(a3 + 16) |= 0x800u;
  *(a3 + 100) = v8;
  if (sub_682474(a2))
  {
    v9 = sub_68233C(a2);
    *(v5 + 4) |= 1u;
    v10 = v5[3];
    if (!v10)
    {
      v11 = v9;
      v12 = v5[1];
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
      if (v12)
      {
        v13 = *v13;
      }

      sub_14BAE64(v13);
      v10 = v14;
      v5[3] = v14;
      v9 = v11;
    }

    sub_64D110(v9, v10);
  }

  v15 = sub_681D7C(a2);
  if (*v15 != v15[1])
  {
    v16 = *sub_681D7C(a2);
    *(v5 + 4) |= 2u;
    v17 = v5[4];
    if (v17)
    {
      v18 = v16;
    }

    else
    {
      v21 = v5[1];
      v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
      if (v21)
      {
        v22 = *v22;
      }

      sub_14BAE64(v22);
      v17 = v23;
      v5[4] = v23;
      v18 = v16;
    }

    sub_64D110(v18, v17);
  }
}

void sub_EE9EEC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v10 = sub_4DADB4(a3);
  nullsub_1();
  v12 = v11;
  v13 = sub_58BBC(v10);
  v14 = *(a5 + 16);
  if (*(a1 + 11) == 1)
  {
    v14 |= 0xC0000u;
    *(a5 + 132) = vmovn_s64(*v13);
  }

  v15 = v12[1];
  if (*v12 < 0)
  {
    v16 = -50;
  }

  else
  {
    v16 = 50;
  }

  v17 = *v12 / 100 + ((5243 * (v16 + *v12 % 100)) >> 19) + ((5243 * (v16 + *v12 % 100)) >> 31);
  if (v15 < 0)
  {
    v18 = -50;
  }

  else
  {
    v18 = 50;
  }

  *(a5 + 16) = v14 | 0x180;
  *(a5 + 80) = v17;
  *(a5 + 84) = v15 / 100 + ((5243 * (v18 + v15 % 100)) >> 19) + ((5243 * (v18 + v15 % 100)) >> 31);
  v19 = sub_681D38(a3);
  v20 = sub_ECB8AC(v19);
  *(a5 + 16) |= 0x800u;
  *(a5 + 100) = v20;
  v21 = *(a2 + 2008) + 360 * sub_80A4C8(a3);
  *(a5 + 16) |= 4u;
  v22 = *(a5 + 40);
  if (v22)
  {
    if (*(a1 + 13) == 1)
    {
      goto LABEL_11;
    }

LABEL_15:
    v26 = sub_68238C(a3);
    if (!sub_4D1F6C(v26))
    {
      goto LABEL_20;
    }

LABEL_16:
    v62 = a3;
    v27 = sub_6C6B88(v21);
    if (!v27)
    {
      goto LABEL_62;
    }

    goto LABEL_25;
  }

  v24 = *(a5 + 8);
  v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
  if (v24)
  {
    v22 = sub_14BB9FC(*v25);
    *(a5 + 40) = v22;
    if (*(a1 + 13) != 1)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v22 = sub_14BB9FC(v25);
    *(a5 + 40) = v22;
    if (*(a1 + 13) != 1)
    {
      goto LABEL_15;
    }
  }

LABEL_11:
  if (sub_6C7D24(v21))
  {
    v23 = *(a2 + 16);
  }

  else
  {
    LODWORD(v23) = sub_6C6B4C(v21);
  }

  *(v22 + 16) |= 1u;
  *(v22 + 96) = v23;
  v28 = sub_68238C(a3);
  if (sub_4D1F6C(v28))
  {
    goto LABEL_16;
  }

LABEL_20:
  v29 = sub_68238C(a3);
  v30 = *(v22 + 88);
  if (v30 && (v31 = *(v22 + 80), v31 < *v30))
  {
    *(v22 + 80) = v31 + 1;
    sub_64D110(v29, *&v30[2 * v31 + 2]);
    v62 = a3;
    v27 = sub_6C6B88(v21);
    if (!v27)
    {
      goto LABEL_62;
    }
  }

  else
  {
    v32 = v29;
    sub_14BAE64(*(v22 + 72));
    v34 = sub_19593CC(v22 + 72, v33);
    sub_64D110(v32, v34);
    v62 = a3;
    v27 = sub_6C6B88(v21);
    if (!v27)
    {
      goto LABEL_62;
    }
  }

LABEL_25:
  v35 = 0;
  if (a4 == 1)
  {
    v36 = 16;
  }

  else
  {
    v36 = 256;
  }

  v37 = v27;
  do
  {
    while (1)
    {
      v38 = *(v22 + 40);
      if (v38 && (v39 = *(v22 + 32), v39 < *v38))
      {
        *(v22 + 32) = v39 + 1;
        v40 = *&v38[2 * v39 + 2];
      }

      else
      {
        v41 = sub_14BB8E8(*(v22 + 24));
        v40 = sub_19593CC(v22 + 24, v41);
      }

      v42 = sub_6C784C(v21, v35);
      *(v40 + 16) |= 1u;
      *(v40 + 48) = v42;
      v43 = sub_6C9088(v21, v35);
      *(v40 + 16) |= 2u;
      *(v40 + 49) = v43;
      v44 = sub_6C8244(v21, v35);
      v45 = *v44;
      v46 = v44[1];
      while (v45 != v46)
      {
        v49 = 128;
        switch(*v45)
        {
          case 1:
          case 7:
          case 0xA:
            goto LABEL_54;
          case 2:
          case 9:
          case 0xB:
            v49 = 2;
            v50 = *(v40 + 40);
            if (!v50)
            {
              goto LABEL_36;
            }

            goto LABEL_55;
          case 3:
            v49 = 64;
            v50 = *(v40 + 40);
            if (!v50)
            {
              goto LABEL_36;
            }

            goto LABEL_55;
          case 4:
            v49 = 4;
            v50 = *(v40 + 40);
            if (!v50)
            {
              goto LABEL_36;
            }

            goto LABEL_55;
          case 5:
            v49 = 32;
LABEL_54:
            v50 = *(v40 + 40);
            if (v50)
            {
              goto LABEL_55;
            }

            goto LABEL_36;
          case 6:
            v49 = 8;
            v50 = *(v40 + 40);
            if (!v50)
            {
              goto LABEL_36;
            }

            goto LABEL_55;
          case 8:
          case 0xC:
            v49 = 1;
            v50 = *(v40 + 40);
            if (!v50)
            {
              goto LABEL_36;
            }

            goto LABEL_55;
          case 0xD:
            v49 = v36;
            v50 = *(v40 + 40);
            if (!v50)
            {
              goto LABEL_36;
            }

LABEL_55:
            v51 = *(v40 + 32);
            if (v51 >= *v50)
            {
LABEL_36:
              v47 = sub_14BB984(*(v40 + 24));
              v48 = sub_19593CC(v40 + 24, v47);
            }

            else
            {
              *(v40 + 32) = v51 + 1;
              v48 = *&v50[2 * v51 + 2];
            }

            *(v48 + 16) |= 2u;
            *(v48 + 28) = v49;
            break;
          default:
            break;
        }

        ++v45;
      }

      if (!*(v40 + 32))
      {
        break;
      }

      if (++v35 == v37)
      {
        goto LABEL_62;
      }
    }

    v52 = *(v40 + 40);
    if (v52 && *v52 >= 1)
    {
      *(v40 + 32) = 1;
      v53 = *(v52 + 8);
    }

    else
    {
      v54 = sub_14BB984(*(v40 + 24));
      v53 = sub_19593CC(v40 + 24, v54);
    }

    *(v53 + 16) |= 2u;
    *(v53 + 28) = 1;
    ++v35;
  }

  while (v35 != v37);
LABEL_62:
  v55 = sub_681D7C(v62);
  v56 = *v55;
  v57 = *(v55 + 8);
  while (v56 != v57)
  {
    v60 = *(v22 + 64);
    if (v60 && (v61 = *(v22 + 56), v61 < *v60))
    {
      *(v22 + 56) = v61 + 1;
      v59 = *&v60[2 * v61 + 2];
    }

    else
    {
      sub_14BAE64(*(v22 + 48));
      v59 = sub_19593CC(v22 + 48, v58);
    }

    sub_64D110(v56, v59);
    v56 += 20;
  }
}

void sub_EEA444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1950D4C((a3 + 16), dword_278D0E8, 11, &off_2769CA8, 0);
  v7 = *(a2 + 1912);
  v8 = *(a2 + 1920);
  if (v7 != v8)
  {
    v9 = v6;
    do
    {
      v10 = *(a3 + 144);
      if (v10 && (v11 = *(a3 + 136), v11 < *v10))
      {
        *(a3 + 136) = v11 + 1;
        v12 = *&v10[2 * v11 + 2];
        sub_EE96B0(a1, v7, v12);
        if (*(a1 + 11))
        {
          goto LABEL_19;
        }
      }

      else
      {
        sub_14BB54C(*(a3 + 128));
        v12 = sub_19593CC(a3 + 128, v13);
        sub_EE96B0(a1, v7, v12);
        if (*(a1 + 11))
        {
          goto LABEL_19;
        }
      }

      if (*(a3 + 40) >= 0)
      {
        v14 = *(a3 + 324);
      }

      else
      {
        v14 = *(a3 + 320);
      }

      if (*(a3 + 44))
      {
        v15 = *(a3 + 324);
      }

      else
      {
        v15 = *(a3 + 320);
      }

      if (sub_682B0C(v7))
      {
        v16 = v15;
      }

      else
      {
        v16 = v14;
      }

      *(v12 + 16) |= 0x400u;
      *(v12 + 96) = v16;
LABEL_19:
      v17 = sub_681DA8(v7);
      v18 = *v17;
      v19 = *(v17 + 8);
      if (*v17 != v19)
      {
        while (1)
        {
          sub_67F320(v18, __p);
          v20 = v9[5];
          if (!v20)
          {
            break;
          }

          v21 = *(v9 + 8);
          v22 = *v20;
          if (v21 >= *v20)
          {
            if (v22 == *(v9 + 9))
            {
              goto LABEL_30;
            }

LABEL_31:
            *v20 = v22 + 1;
            v25 = v9[3];
            if (!v25)
            {
              operator new();
            }

            *v27 = v26;
            v27[1] = sub_195A650;
            v28 = *__p;
            *(v26 + 16) = v32;
            *v26 = v28;
            __p[1] = 0;
            v32 = 0;
            __p[0] = 0;
            v29 = *(v9 + 8);
            v30 = v9[5] + 8 * v29;
            *(v9 + 8) = v29 + 1;
            *(v30 + 8) = v26;
            if (SHIBYTE(v32) < 0)
            {
              operator delete(__p[0]);
            }

            v18 += 13;
            if (v18 == v19)
            {
              goto LABEL_3;
            }
          }

          else
          {
            *(v9 + 8) = v21 + 1;
            v23 = *&v20[2 * v21 + 2];
            if (*(v23 + 23) < 0)
            {
              operator delete(*v23);
            }

            v24 = *__p;
            *(v23 + 16) = v32;
            *v23 = v24;
            v18 += 13;
            if (v18 == v19)
            {
              goto LABEL_3;
            }
          }
        }

        v22 = *(v9 + 9);
LABEL_30:
        sub_1959254(v9 + 6, v22 + 1);
        v20 = v9[5];
        v22 = *v20;
        goto LABEL_31;
      }

LABEL_3:
      v7 += 112;
    }

    while (v7 != v8);
  }
}

void sub_EEA6D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    v15 = a1;
    operator delete(__p);
    a1 = v15;
  }

  _Unwind_Resume(a1);
}

void *sub_EEA6F4(void *a1, int *a2)
{
  result = sub_EA8604(a1, a2);
  *result = &off_26747E8;
  return result;
}

void sub_EEA728(void (***a1)(void, uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  sub_EA7354(a1, a2, a3);
  v6 = sub_68E508(a2);
  *(a3 + 40) |= 0x40u;
  v7 = *(a3 + 8);
  v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
  if (v7)
  {
    v8 = *v8;
  }

  sub_194EA1C((a3 + 752), v6, v8);
  v9 = sub_68E634(a2);
  *(a3 + 40) |= 0x80u;
  v10 = *(a3 + 8);
  v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
  if (v10)
  {
    v11 = *v11;
  }

  sub_194EA1C((a3 + 760), v9, v11);
  v12 = sub_68EA58(a2);
  v13 = *(v12 + 23);
  if ((v13 & 0x80u) != 0)
  {
    v13 = *(v12 + 8);
  }

  if (v13)
  {
    *(a3 + 40) |= 0x8000u;
    v14 = *(a3 + 824);
    if (!v14)
    {
      v15 = *(a3 + 8);
      v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
      if (v15)
      {
        v16 = *v16;
      }

      sub_14BAE64(v16);
      v14 = v17;
      *(a3 + 824) = v17;
    }

    v18 = sub_68EA58(a2);
    sub_64E090(v14, v18);
  }

  nullsub_1();
  v20 = *v19;
  v21 = *(v19 + 8);
  if (*v19 != v21)
  {
    do
    {
      sub_EEA868(a1, v20, a3);
      v20 += 1582;
    }

    while (v20 != v21);
  }
}

void sub_EEA868(void (***a1)(void, uint64_t, uint64_t), void *a2, uint64_t a3)
{
  sub_EE83E8(a1, a2, a3);
  v6 = a2[942];
  v7 = a2[943];
  while (v6 != v7)
  {
    v10 = *(a3 + 384);
    if (v10 && (v11 = *(a3 + 376), v11 < *v10))
    {
      *(a3 + 376) = v11 + 1;
      v9 = *&v10[2 * v11 + 2];
    }

    else
    {
      sub_14BB54C(*(a3 + 368));
      v9 = sub_19593CC(a3 + 368, v8);
    }

    sub_EE96B0(a1, v6, v9);
    v6 += 112;
  }

  v12 = a2[939];
  v13 = a2[940];
  while (v12 != v13)
  {
    v16 = *(a3 + 384);
    if (v16 && (v17 = *(a3 + 376), v17 < *v16))
    {
      *(a3 + 376) = v17 + 1;
      v15 = *&v16[2 * v17 + 2];
    }

    else
    {
      sub_14BB54C(*(a3 + 368));
      v15 = sub_19593CC(a3 + 368, v14);
    }

    sub_EE913C(a1, v12, v15);
    v12 += 280;
  }

  v18 = a2[945];
  v19 = a2[946];
  while (v18 != v19)
  {
    v22 = *(a3 + 384);
    if (v22 && (v23 = *(a3 + 376), v23 < *v22))
    {
      *(a3 + 376) = v23 + 1;
      v21 = *&v22[2 * v23 + 2];
    }

    else
    {
      sub_14BB54C(*(a3 + 368));
      v21 = sub_19593CC(a3 + 368, v20);
    }

    sub_EE9D4C(a1, v18, v21);
    v18 += 214;
  }

  sub_EEAA94(a1, a2, a3);
}

void sub_EEA9F8(void (***a1)(void, uint64_t, uint64_t), void *a2, uint64_t a3)
{
  nullsub_1();
  v7 = -1189124953 * ((v6[1] - *v6) >> 4);
  if (v7)
  {
    v8 = 0;
    do
    {
      v9 = *(*(a3 + 64) + 8 * v8 + 8);
      v10 = sub_68C454(a2, v8);
      sub_EEA868(a1, v10, v9);
      ++v8;
    }

    while (v7 != v8);
  }
}

void sub_EEAA94(void (***a1)(void, uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 1112) - *(a2 + 1104);
  if (v3)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0x3795876FF3795877 * (v3 >> 3);
    do
    {
      v10 = sub_50EA30((a2 + 1104), v8);
      v11 = (v10 + 385);
      v12 = *(*(a3 + 72) + (v7 >> 29) + 8);
      if (!*(v10 + 386))
      {
        v11 = (a2 + 1097);
      }

      v13 = *v11;
      sub_EA8938(a1, v10, *(*(a3 + 72) + (v7 >> 29) + 8));
      sub_EEABE0(a1, v10, v13, v12);
      (**a1)(a1, v10, v12);
      sub_EE8AD0(a1, v10, v12);
      sub_EE8E20(a1, v10, v12);
      ++v8;
      v7 += 0x100000000;
    }

    while (v9 != v8);
  }
}

void sub_EEABE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v8 = sub_1950D4C((a4 + 16), dword_278D0E8, 11, &off_2769CA8, 0);
  v9 = *(a2 + 1888);
  v10 = *(a2 + 1896);
  if (v9 != v10)
  {
    v11 = v8;
    while (!sub_80A4D8(v9))
    {
LABEL_6:
      v9 += 280;
      if (v9 == v10)
      {
        return;
      }
    }

    v14 = *(a4 + 144);
    if (v14 && (v15 = *(a4 + 136), v15 < *v14))
    {
      *(a4 + 136) = v15 + 1;
      v16 = *&v14[2 * v15 + 2];
      if (!sub_80A518(v9))
      {
        goto LABEL_11;
      }
    }

    else
    {
      sub_14BB54C(*(a4 + 128));
      v16 = sub_19593CC(a4 + 128, v17);
      if (!sub_80A518(v9))
      {
LABEL_11:
        sub_EE913C(a1, v9, v16);
        if (*(a1 + 11))
        {
LABEL_16:
          sub_682344(v9, __p);
          v19 = v11[8];
          if (v19)
          {
            v20 = *(v11 + 14);
            v21 = *v19;
            if (v20 < *v19)
            {
              *(v11 + 14) = v20 + 1;
              v12 = *&v19[2 * v20 + 2];
              if (*(v12 + 23) < 0)
              {
                operator delete(*v12);
              }

              v13 = *__p;
              *(v12 + 16) = v29;
              *v12 = v13;
              goto LABEL_6;
            }

            if (v21 != *(v11 + 15))
            {
              *v19 = v21 + 1;
              v22 = v11[6];
              if (!v22)
              {
                goto LABEL_23;
              }

LABEL_20:
              *v24 = v23;
              v24[1] = sub_195A650;
              v25 = *__p;
              *(v23 + 16) = v29;
              *v23 = v25;
              __p[1] = 0;
              v29 = 0;
              __p[0] = 0;
              v26 = *(v11 + 14);
              v27 = v11[8] + 8 * v26;
              *(v11 + 14) = v26 + 1;
              *(v27 + 8) = v23;
              if (SHIBYTE(v29) < 0)
              {
                operator delete(__p[0]);
              }

              goto LABEL_6;
            }
          }

          else
          {
            v21 = *(v11 + 15);
          }

          sub_1959254(v11 + 12, v21 + 1);
          ++*v11[8];
          v22 = v11[6];
          if (!v22)
          {
LABEL_23:
            operator new();
          }

          goto LABEL_20;
        }

LABEL_15:
        v18 = *(a4 + 324);
        *(v16 + 16) |= 0x400u;
        *(v16 + 96) = v18;
        goto LABEL_16;
      }
    }

    sub_EEAE70(a1, a2, v9, v5, v16);
    if (*(a1 + 11))
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }
}

void sub_EEAE54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_EEAE70(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v10 = sub_4DADB4(a3);
  nullsub_1();
  v12 = v11;
  v13 = sub_58BBC(v10);
  v14 = *(a5 + 16);
  if (*(a1 + 11) == 1)
  {
    v14 |= 0xC0000u;
    *(a5 + 132) = vmovn_s64(*v13);
  }

  v15 = v12[1];
  if (*v12 < 0)
  {
    v16 = -50;
  }

  else
  {
    v16 = 50;
  }

  v17 = *v12 / 100 + ((5243 * (v16 + *v12 % 100)) >> 19) + ((5243 * (v16 + *v12 % 100)) >> 31);
  if (v15 < 0)
  {
    v18 = -50;
  }

  else
  {
    v18 = 50;
  }

  *(a5 + 16) = v14 | 0x180;
  *(a5 + 80) = v17;
  *(a5 + 84) = v15 / 100 + ((5243 * (v18 + v15 % 100)) >> 19) + ((5243 * (v18 + v15 % 100)) >> 31);
  v19 = sub_681D38(a3);
  v20 = sub_ECB8AC(v19);
  *(a5 + 16) |= 0x800u;
  *(a5 + 100) = v20;
  v21 = *(a2 + 2008) + 360 * sub_80A4C8(a3);
  *(a5 + 16) |= 4u;
  v22 = *(a5 + 40);
  if (v22)
  {
    if (*(a1 + 13) == 1)
    {
      goto LABEL_11;
    }

LABEL_15:
    v26 = sub_68238C(a3);
    if (!sub_4D1F6C(v26))
    {
      goto LABEL_20;
    }

LABEL_16:
    v62 = a3;
    v27 = sub_6C6B88(v21);
    if (!v27)
    {
      goto LABEL_62;
    }

    goto LABEL_25;
  }

  v24 = *(a5 + 8);
  v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
  if (v24)
  {
    v22 = sub_14BB9FC(*v25);
    *(a5 + 40) = v22;
    if (*(a1 + 13) != 1)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v22 = sub_14BB9FC(v25);
    *(a5 + 40) = v22;
    if (*(a1 + 13) != 1)
    {
      goto LABEL_15;
    }
  }

LABEL_11:
  if (sub_6C7D24(v21))
  {
    v23 = *(a2 + 16);
  }

  else
  {
    LODWORD(v23) = sub_6C6B4C(v21);
  }

  *(v22 + 16) |= 1u;
  *(v22 + 96) = v23;
  v28 = sub_68238C(a3);
  if (sub_4D1F6C(v28))
  {
    goto LABEL_16;
  }

LABEL_20:
  v29 = sub_68238C(a3);
  v30 = *(v22 + 88);
  if (v30 && (v31 = *(v22 + 80), v31 < *v30))
  {
    *(v22 + 80) = v31 + 1;
    sub_64D110(v29, *&v30[2 * v31 + 2]);
    v62 = a3;
    v27 = sub_6C6B88(v21);
    if (!v27)
    {
      goto LABEL_62;
    }
  }

  else
  {
    v32 = v29;
    sub_14BAE64(*(v22 + 72));
    v34 = sub_19593CC(v22 + 72, v33);
    sub_64D110(v32, v34);
    v62 = a3;
    v27 = sub_6C6B88(v21);
    if (!v27)
    {
      goto LABEL_62;
    }
  }

LABEL_25:
  v35 = 0;
  if (a4 == 1)
  {
    v36 = 16;
  }

  else
  {
    v36 = 256;
  }

  v37 = v27;
  do
  {
    while (1)
    {
      v38 = *(v22 + 40);
      if (v38 && (v39 = *(v22 + 32), v39 < *v38))
      {
        *(v22 + 32) = v39 + 1;
        v40 = *&v38[2 * v39 + 2];
      }

      else
      {
        v41 = sub_14BB8E8(*(v22 + 24));
        v40 = sub_19593CC(v22 + 24, v41);
      }

      v42 = sub_6C784C(v21, v35);
      *(v40 + 16) |= 1u;
      *(v40 + 48) = v42;
      v43 = sub_6C9088(v21, v35);
      *(v40 + 16) |= 2u;
      *(v40 + 49) = v43;
      v44 = sub_6C8244(v21, v35);
      v45 = *v44;
      v46 = v44[1];
      while (v45 != v46)
      {
        v49 = 128;
        switch(*v45)
        {
          case 1:
          case 7:
          case 0xA:
            goto LABEL_54;
          case 2:
          case 9:
          case 0xB:
            v49 = 2;
            v50 = *(v40 + 40);
            if (!v50)
            {
              goto LABEL_36;
            }

            goto LABEL_55;
          case 3:
            v49 = 64;
            v50 = *(v40 + 40);
            if (!v50)
            {
              goto LABEL_36;
            }

            goto LABEL_55;
          case 4:
            v49 = 4;
            v50 = *(v40 + 40);
            if (!v50)
            {
              goto LABEL_36;
            }

            goto LABEL_55;
          case 5:
            v49 = 32;
LABEL_54:
            v50 = *(v40 + 40);
            if (v50)
            {
              goto LABEL_55;
            }

            goto LABEL_36;
          case 6:
            v49 = 8;
            v50 = *(v40 + 40);
            if (!v50)
            {
              goto LABEL_36;
            }

            goto LABEL_55;
          case 8:
          case 0xC:
            v49 = 1;
            v50 = *(v40 + 40);
            if (!v50)
            {
              goto LABEL_36;
            }

            goto LABEL_55;
          case 0xD:
            v49 = v36;
            v50 = *(v40 + 40);
            if (!v50)
            {
              goto LABEL_36;
            }

LABEL_55:
            v51 = *(v40 + 32);
            if (v51 >= *v50)
            {
LABEL_36:
              v47 = sub_14BB984(*(v40 + 24));
              v48 = sub_19593CC(v40 + 24, v47);
            }

            else
            {
              *(v40 + 32) = v51 + 1;
              v48 = *&v50[2 * v51 + 2];
            }

            *(v48 + 16) |= 2u;
            *(v48 + 28) = v49;
            break;
          default:
            break;
        }

        ++v45;
      }

      if (!*(v40 + 32))
      {
        break;
      }

      if (++v35 == v37)
      {
        goto LABEL_62;
      }
    }

    v52 = *(v40 + 40);
    if (v52 && *v52 >= 1)
    {
      *(v40 + 32) = 1;
      v53 = *(v52 + 8);
    }

    else
    {
      v54 = sub_14BB984(*(v40 + 24));
      v53 = sub_19593CC(v40 + 24, v54);
    }

    *(v53 + 16) |= 2u;
    *(v53 + 28) = 1;
    ++v35;
  }

  while (v35 != v37);
LABEL_62:
  v55 = sub_681D7C(v62);
  v56 = *v55;
  v57 = *(v55 + 8);
  while (v56 != v57)
  {
    v60 = *(v22 + 64);
    if (v60 && (v61 = *(v22 + 56), v61 < *v60))
    {
      *(v22 + 56) = v61 + 1;
      v59 = *&v60[2 * v61 + 2];
    }

    else
    {
      sub_14BAE64(*(v22 + 48));
      v59 = sub_19593CC(v22 + 48, v58);
    }

    sub_64D110(v56, v59);
    v56 += 20;
  }
}