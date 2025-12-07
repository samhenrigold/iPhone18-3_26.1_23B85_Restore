uint64_t sub_C0EC98(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 < 2)
  {
    return result;
  }

  v5 = v4 >> 1;
  v6 = result + 16 * (v4 >> 1);
  v7 = a2 - 16;
  v8 = *(v6 + 8);
  if (v8)
  {
    if (v8 == 1)
    {
      v9 = **v6;
      v10 = *(a2 - 8);
      if (v10)
      {
        goto LABEL_5;
      }

LABEL_8:
      v11 = *(*v7 + 4);
      goto LABEL_12;
    }

    v9 = 0x7FFFFFFF;
    v10 = *(a2 - 8);
    if (!v10)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = *(*v6 + 4);
    v10 = *(a2 - 8);
    if (!v10)
    {
      goto LABEL_8;
    }
  }

LABEL_5:
  if (v10 == 1)
  {
    v11 = **v7;
  }

  else
  {
    v11 = 0x7FFFFFFF;
  }

LABEL_12:
  v12 = v8 < v10;
  v13 = v9 == v11;
  v14 = v9 < v11;
  if (!v13)
  {
    v12 = v14;
  }

  if (v12)
  {
    v15 = *v7;
    if (v10 == 1)
    {
      do
      {
        v23 = v7;
        v7 = v6;
        v24 = *v6;
        *(v23 + 8) = *(v7 + 8);
        *v23 = v24;
        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = result + 16 * v5;
        v25 = *(v6 + 8);
        if (v25 == 1)
        {
          v20 = **v6;
        }

        else if (v25)
        {
          v20 = 0x7FFFFFFF;
        }

        else
        {
          v20 = *(*v6 + 4);
        }

        v21 = v25 == 0;
        v13 = v20 == *v15;
        v22 = v20 < *v15;
        if (!v13)
        {
          v21 = v22;
        }
      }

      while (v21);
    }

    else if (v10)
    {
      v16 = *v6;
      *(a2 - 8) = *(v6 + 8);
      *v7 = v16;
      if (v4 >= 2)
      {
        while (1)
        {
          v28 = v5 - 1;
          v5 = (v5 - 1) >> 1;
          v7 = result + 16 * v5;
          v29 = *(v7 + 8);
          if (v29)
          {
            if (v29 == 1)
            {
              if (**v7 == 0x7FFFFFFF && v10 <= 1)
              {
                break;
              }
            }

            else if (v29 >= v10)
            {
              break;
            }
          }

          else if (*(*v7 + 4) == 0x7FFFFFFF && v10 == 0)
          {
            break;
          }

          v27 = *v7;
          *(v6 + 8) = *(v7 + 8);
          *v6 = v27;
          v6 = result + 16 * v5;
          if (v28 <= 1)
          {
            goto LABEL_24;
          }
        }
      }

      v7 = v6;
    }

    else
    {
      while (1)
      {
        v17 = v7;
        v7 = v6;
        v18 = *v6;
        *(v17 + 8) = *(v7 + 8);
        *v17 = v18;
        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = result + 16 * v5;
        v19 = *(v6 + 8);
        if (v19 == 1)
        {
          if (**v6 >= v15[1])
          {
            break;
          }
        }

        else if (v19 || *(*v6 + 4) >= v15[1])
        {
          break;
        }
      }
    }

LABEL_24:
    *v7 = v15;
    *(v7 + 8) = v10;
  }

  return result;
}

uint64_t sub_C0EEB8@<X0>(void *a1@<X0>, void *a2@<X1>, const char *a3@<X2>, _BYTE *a4@<X8>)
{
  sub_19594F8(&v14);
  if (a1 != a2)
  {
    v8 = a1;
    do
    {
      if (v8 != a1)
      {
        v9 = strlen(a3);
        sub_4A5C(&v14, a3, v9);
      }

      std::ostream::operator<<();
      v8 = *v8;
    }

    while (v8 != a2);
  }

  if ((v24 & 0x10) != 0)
  {
    v11 = v23;
    if (v23 < v20)
    {
      v23 = v20;
      v11 = v20;
    }

    v12 = v19;
    v10 = v11 - v19;
    if (v11 - v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if ((v24 & 8) == 0)
    {
      v10 = 0;
      a4[23] = 0;
      goto LABEL_17;
    }

    v12 = v17;
    v10 = v18 - v17;
    if ((v18 - v17) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_21:
      sub_3244();
    }
  }

  if (v10 >= 0x17)
  {
    operator new();
  }

  a4[23] = v10;
  if (v10)
  {
    memmove(a4, v12, v10);
  }

LABEL_17:
  a4[v10] = 0;
  if (v22 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v16);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_C0F110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1959728(va);
  _Unwind_Resume(a1);
}

void sub_C0F124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1959728(va);
  _Unwind_Resume(a1);
}

void sub_C0F138(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = *a2;
    v6 = a2[1];
    *(v3 + 32) = *(a2 + 4);
    *v3 = v5;
    *(v3 + 16) = v6;
    v7 = v3 + 40;
LABEL_3:
    *(a1 + 8) = v7;
    return;
  }

  v8 = *a1;
  v9 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 3);
  v10 = v9 + 1;
  if (v9 + 1 > 0x666666666666666)
  {
    sub_1794();
  }

  v11 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - v8) >> 3);
  if (2 * v11 > v10)
  {
    v10 = 2 * v11;
  }

  if (v11 >= 0x333333333333333)
  {
    v12 = 0x666666666666666;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (v12 <= 0x666666666666666)
    {
      operator new();
    }

    sub_1808();
  }

  v13 = 8 * ((v3 - *a1) >> 3);
  v14 = a2[1];
  *v13 = *a2;
  *(v13 + 16) = v14;
  *(v13 + 32) = *(a2 + 4);
  v7 = 40 * v9 + 40;
  v15 = 40 * v9 - (v3 - v8);
  memcpy((v13 - (v3 - v8)), v8, v3 - v8);
  *a1 = v15;
  *(a1 + 8) = v7;
  *(a1 + 16) = 0;
  if (!v8)
  {
    goto LABEL_3;
  }

  operator delete(v8);
  *(a1 + 8) = v7;
}

void *sub_C0F284(void *a1, unint64_t *a2, void *a3)
{
  v3 = *a2;
  v4 = HIDWORD(*a2);
  v5 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFF) + 8) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_23;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v8.u32[0] < 2uLL)
  {
    while (1)
    {
      v13 = v11[1];
      if (v13 == v6)
      {
        if (v11[2] == v3)
        {
          return v11;
        }
      }

      else if ((v13 & (*&v7 - 1)) != v9)
      {
        goto LABEL_23;
      }

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v12 >= *&v7)
    {
      v12 %= *&v7;
    }

    if (v12 != v9)
    {
      goto LABEL_23;
    }

LABEL_12:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_23;
    }
  }

  if (v11[2] != v3)
  {
    goto LABEL_12;
  }

  return v11;
}

void *sub_C0F5F0(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = HIDWORD(*a2);
  v5 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFF) + 8) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v7 = vcnt_s8(v2);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v6;
    if (v6 >= *&v2)
    {
      v8 = v6 % *&v2;
    }
  }

  else
  {
    v8 = v6 & (*&v2 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9)
  {
    return 0;
  }

  result = *v9;
  if (*v9)
  {
    if (v7.u32[0] < 2uLL)
    {
      v11 = *&v2 - 1;
      while (1)
      {
        v12 = result[1];
        if (v12 == v6)
        {
          if (result[2] == v3)
          {
            return result;
          }
        }

        else if ((v12 & v11) != v8)
        {
          return 0;
        }

        result = *result;
        if (!result)
        {
          return result;
        }
      }
    }

    do
    {
      v13 = result[1];
      if (v13 == v6)
      {
        if (result[2] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v13 >= *&v2)
        {
          v13 %= *&v2;
        }

        if (v13 != v8)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t *sub_C0F700(uint64_t *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v13 = 14;
  strcpy(v12, "rounding_rules");
  v3 = sub_5F680(a2, v12);
  v14 = 0;
  v15 = 0uLL;
  v4 = v3[1];
  if (v4 != *v3)
  {
    if (!(((v4 - *v3) >> 4) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  v16 = &v14;
  v5 = *a1;
  if (*a1)
  {
    a1[1] = v5;
    operator delete(v5);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  v6 = v14;
  *a1 = v14;
  v7 = v15;
  *(a1 + 1) = v15;
  v15 = 0uLL;
  v14 = 0;
  if (v13 < 0)
  {
    operator delete(v12[0]);
    v6 = *a1;
    v8 = a1[1];
  }

  else
  {
    v8 = v7;
  }

  v9 = 126 - 2 * __clz((v8->i64 - v6) >> 3);
  if (v8 == v6)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  sub_C103BC(v6, v8, v10, 1);
  return a1;
}

void sub_C0F93C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a15 < 0)
  {
    operator delete(__p);
    v33 = *v31;
    if (!*v31)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v33 = *v31;
    if (!*v31)
    {
      goto LABEL_3;
    }
  }

  *(v31 + 8) = v33;
  operator delete(v33);
  _Unwind_Resume(exception_object);
}

void *sub_C0F9FC(void *result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v3 != v4)
  {
    v6 = result;
    while (1)
    {
      v7 = *(a3 + 24);
      if (!v7)
      {
        sub_2B7420();
      }

      result = (*(*v7 + 48))(v7, v3);
      if (result)
      {
        break;
      }

LABEL_3:
      v3 += 37;
      if (v3 == v4)
      {
        return result;
      }
    }

    v8 = v3[31];
    v9 = v3[32];
    while (1)
    {
      if (v8 == v9)
      {
        v24 = v3[25];
        for (i = v3[26]; v24 != i; v24 += 9)
        {
          result = sub_C0FCD0(v6, v24);
        }

        goto LABEL_3;
      }

      v11 = v6[1];
      v12 = v8[4];
      if (v11 != *v6)
      {
        v13 = (v11 - *v6) >> 3;
        do
        {
          v14 = v13 >> 1;
          v15 = v11 - 8 * (v13 >> 1);
          v17 = *(v15 - 8);
          v16 = v15 - 8;
          v13 += ~(v13 >> 1);
          if (v17 <= v12)
          {
            v13 = v14;
          }

          else
          {
            v11 = v16;
          }
        }

        while (v13);
      }

      if (v11 != *v6)
      {
        v18 = *(v11 - 4);
        if (v18)
        {
          break;
        }
      }

LABEL_9:
      v8 += 10;
    }

    v19 = v18 / 600.0 * round(v8[2] / 600.0 / (v18 / 600.0)) * 60.0 * 10.0;
    if (v19 >= 0.0)
    {
      if (v19 >= 4.50359963e15)
      {
        goto LABEL_25;
      }

      v20 = (v19 + v19) + 1;
    }

    else
    {
      if (v19 <= -4.50359963e15)
      {
        goto LABEL_25;
      }

      v20 = (v19 + v19) - 1 + (((v19 + v19) - 1) >> 63);
    }

    v19 = (v20 >> 1);
LABEL_25:
    v8[2] = v19;
    v21 = *(v11 - 4) / 600.0 * round(v8[3] / 600.0 / (*(v11 - 4) / 600.0)) * 60.0 * 10.0;
    if (v21 >= 0.0)
    {
      if (v21 >= 4.50359963e15)
      {
        goto LABEL_31;
      }

      v22 = (v21 + v21) + 1;
    }

    else
    {
      if (v21 <= -4.50359963e15)
      {
        goto LABEL_31;
      }

      v22 = (v21 + v21) - 1 + (((v21 + v21) - 1) >> 63);
    }

    v21 = (v22 >> 1);
LABEL_31:
    v8[3] = v21;
    v10 = *(v11 - 4) / 600.0 * round(v12 / 600.0 / (*(v11 - 4) / 600.0)) * 60.0 * 10.0;
    if (v10 >= 0.0)
    {
      if (v10 >= 4.50359963e15)
      {
        goto LABEL_8;
      }

      v23 = (v10 + v10) + 1;
    }

    else
    {
      if (v10 <= -4.50359963e15)
      {
        goto LABEL_8;
      }

      v23 = (v10 + v10) - 1 + (((v10 + v10) - 1) >> 63);
    }

    v10 = (v23 >> 1);
LABEL_8:
    v8[4] = v10;
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_C0FCD0(uint64_t result, uint64_t *a2)
{
  if (*(a2 + 24))
  {
    return result;
  }

  v2 = *a2;
  v3 = a2[1];
  if (*a2 == v3)
  {
    return result;
  }

  v4 = result;
  v5 = a2[4];
  v6 = a2[5];
  if (v5 != v6)
  {
    do
    {
      result = sub_C10194(v4, v5);
      v5 += 10;
    }

    while (v5 != v6);
    v2 = *a2;
    v3 = a2[1];
  }

  if (v2 == v3)
  {
    return result;
  }

  while (2)
  {
    if (*(v2 + 160))
    {
      sub_5AF20();
    }

    v8 = *(v2 + 120);
    v9 = *(v2 + 128);
    while (v8 != v9)
    {
      result = *v4;
      v11 = v4[1];
      v12 = v8[4];
      if (v11 != *v4)
      {
        v13 = (v11 - *v4) >> 3;
        do
        {
          v14 = v13 >> 1;
          v15 = v11 - 8 * (v13 >> 1);
          v17 = *(v15 - 8);
          v16 = v15 - 8;
          v13 += ~(v13 >> 1);
          if (v17 <= v12)
          {
            v13 = v14;
          }

          else
          {
            v11 = v16;
          }
        }

        while (v13);
      }

      if (v11 != result)
      {
        result = *(v11 - 4);
        if (result)
        {
          v18 = result / 600.0 * round(v8[2] / 600.0 / (result / 600.0)) * 60.0 * 10.0;
          if (v18 >= 0.0)
          {
            if (v18 < 4.50359963e15)
            {
              v19 = (v18 + v18) + 1;
LABEL_29:
              v18 = (v19 >> 1);
            }
          }

          else if (v18 > -4.50359963e15)
          {
            v19 = (v18 + v18) - 1 + (((v18 + v18) - 1) >> 63);
            goto LABEL_29;
          }

          v8[2] = v18;
          v20 = *(v11 - 4) / 600.0 * round(v8[3] / 600.0 / (*(v11 - 4) / 600.0)) * 60.0 * 10.0;
          if (v20 >= 0.0)
          {
            if (v20 < 4.50359963e15)
            {
              v21 = (v20 + v20) + 1;
LABEL_35:
              v20 = (v21 >> 1);
            }
          }

          else if (v20 > -4.50359963e15)
          {
            v21 = (v20 + v20) - 1 + (((v20 + v20) - 1) >> 63);
            goto LABEL_35;
          }

          result = v20;
          v8[3] = result;
          v10 = *(v11 - 4) / 600.0 * round(v12 / 600.0 / (*(v11 - 4) / 600.0)) * 60.0 * 10.0;
          if (v10 >= 0.0)
          {
            if (v10 < 4.50359963e15)
            {
              v22 = (v10 + v10) + 1;
LABEL_12:
              v10 = (v22 >> 1);
            }
          }

          else if (v10 > -4.50359963e15)
          {
            v22 = (v10 + v10) - 1 + (((v10 + v10) - 1) >> 63);
            goto LABEL_12;
          }

          v8[4] = v10;
        }
      }

      v8 += 10;
    }

    v2 += 168;
    if (v2 != v3)
    {
      continue;
    }

    return result;
  }
}

void *sub_C0FF68(void *result, uint64_t a2)
{
  v2 = *(a2 + 48);
  v3 = *(a2 + 56);
  if (v2 == v3)
  {
    return result;
  }

  while (2)
  {
    v4 = *(v2 + 184);
    v5 = *(v2 + 192);
    while (v4 != v5)
    {
      v7 = result[1];
      v8 = v4[4];
      if (v7 != *result)
      {
        v9 = (v7 - *result) >> 3;
        do
        {
          v10 = v9 >> 1;
          v11 = v7 - 8 * (v9 >> 1);
          v13 = *(v11 - 8);
          v12 = v11 - 8;
          v9 += ~(v9 >> 1);
          if (v13 <= v8)
          {
            v9 = v10;
          }

          else
          {
            v7 = v12;
          }
        }

        while (v9);
      }

      if (v7 != *result)
      {
        v14 = *(v7 - 4);
        if (v14)
        {
          v15 = v14 / 600.0 * round(v4[2] / 600.0 / (v14 / 600.0)) * 60.0 * 10.0;
          if (v15 >= 0.0)
          {
            if (v15 < 4.50359963e15)
            {
              v16 = (v15 + v15) + 1;
LABEL_22:
              v15 = (v16 >> 1);
            }
          }

          else if (v15 > -4.50359963e15)
          {
            v16 = (v15 + v15) - 1 + (((v15 + v15) - 1) >> 63);
            goto LABEL_22;
          }

          v4[2] = v15;
          v17 = *(v7 - 4) / 600.0 * round(v4[3] / 600.0 / (*(v7 - 4) / 600.0)) * 60.0 * 10.0;
          if (v17 >= 0.0)
          {
            if (v17 < 4.50359963e15)
            {
              v18 = (v17 + v17) + 1;
LABEL_28:
              v17 = (v18 >> 1);
            }
          }

          else if (v17 > -4.50359963e15)
          {
            v18 = (v17 + v17) - 1 + (((v17 + v17) - 1) >> 63);
            goto LABEL_28;
          }

          v4[3] = v17;
          v6 = *(v7 - 4) / 600.0 * round(v8 / 600.0 / (*(v7 - 4) / 600.0)) * 60.0 * 10.0;
          if (v6 >= 0.0)
          {
            if (v6 < 4.50359963e15)
            {
              v19 = (v6 + v6) + 1;
LABEL_5:
              v6 = (v19 >> 1);
            }
          }

          else if (v6 > -4.50359963e15)
          {
            v19 = (v6 + v6) - 1 + (((v6 + v6) - 1) >> 63);
            goto LABEL_5;
          }

          v4[4] = v6;
        }
      }

      v4 += 10;
    }

    v2 += 248;
    if (v2 != v3)
    {
      continue;
    }

    return result;
  }
}

void *sub_C10194(void *result, int *a2)
{
  v2 = result[1];
  v3 = a2[4];
  if (v2 != *result)
  {
    v4 = (v2 - *result) >> 3;
    do
    {
      v5 = v4 >> 1;
      v6 = v2 - 8 * (v4 >> 1);
      v8 = *(v6 - 8);
      v7 = v6 - 8;
      v4 += ~(v4 >> 1);
      if (v8 <= v3)
      {
        v4 = v5;
      }

      else
      {
        v2 = v7;
      }
    }

    while (v4);
  }

  if (v2 != *result)
  {
    v9 = *(v2 - 4);
    if (v9)
    {
      v10 = v9 / 600.0 * round(a2[2] / 600.0 / (v9 / 600.0)) * 60.0 * 10.0;
      if (v10 >= 0.0)
      {
        if (v10 >= 4.50359963e15)
        {
          goto LABEL_15;
        }

        v11 = (v10 + v10) + 1;
      }

      else
      {
        if (v10 <= -4.50359963e15)
        {
          goto LABEL_15;
        }

        v11 = (v10 + v10) - 1 + (((v10 + v10) - 1) >> 63);
      }

      v10 = (v11 >> 1);
LABEL_15:
      a2[2] = v10;
      v12 = *(v2 - 4) / 600.0 * round(a2[3] / 600.0 / (*(v2 - 4) / 600.0)) * 60.0 * 10.0;
      if (v12 >= 0.0)
      {
        if (v12 >= 4.50359963e15)
        {
          goto LABEL_21;
        }

        v13 = (v12 + v12) + 1;
      }

      else
      {
        if (v12 <= -4.50359963e15)
        {
          goto LABEL_21;
        }

        v13 = (v12 + v12) - 1 + (((v12 + v12) - 1) >> 63);
      }

      v12 = (v13 >> 1);
LABEL_21:
      a2[3] = v12;
      v14 = *(v2 - 4) / 600.0 * round(v3 / 600.0 / (*(v2 - 4) / 600.0)) * 60.0 * 10.0;
      if (v14 >= 0.0)
      {
        if (v14 < 4.50359963e15)
        {
          v15 = (v14 + v14) + 1;
          goto LABEL_26;
        }
      }

      else if (v14 > -4.50359963e15)
      {
        v15 = (v14 + v14) - 1 + (((v14 + v14) - 1) >> 63);
LABEL_26:
        v14 = (v15 >> 1);
      }

      a2[4] = v14;
    }
  }

  return result;
}

uint64_t sub_C103BC(uint64_t result, int8x16_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = (a2 - v8) >> 3;
    if (v9 > 2)
    {
      switch(v9)
      {
        case 3:
          v68 = v8->i32[2];
          v69 = a2[-1].i32[2];
          if (v68 >= v8->i32[0])
          {
            if (v69 < v68)
            {
              v112 = v8->i64[1];
              v8->i64[1] = a2[-1].i64[1];
              a2[-1].i64[1] = v112;
              if (v8->i32[2] < v8->i32[0])
              {
                *v8 = vextq_s8(*v8, *v8, 8uLL);
              }
            }

            return result;
          }

          v67 = v8->i64[0];
          if (v69 >= v68)
          {
            v8->i64[0] = v8->i64[1];
            v8->i64[1] = v67;
            if (a2[-1].i32[2] < v67)
            {
              v8->i64[1] = a2[-1].i64[1];
              a2[-1].i64[1] = v67;
            }

            return result;
          }

LABEL_114:
          v8->i64[0] = a2[-1].i64[1];
          a2[-1].i64[1] = v67;
          return result;
        case 4:
          v70 = v8->i32[2];
          v71 = v8->i32[0];
          LODWORD(v72) = v8[1].i32[0];
          if (v70 >= v8->i32[0])
          {
            if (v72 < v70)
            {
              v72 = v8->i64[1];
              v113 = v8[1].i64[0];
              v8->i64[1] = v113;
              v8[1].i64[0] = v72;
              if (v71 > v113)
              {
                v114 = v8->i64[0];
                v8->i64[0] = v113;
                v8->i64[1] = v114;
              }
            }
          }

          else
          {
            v73 = v8->i64[0];
            if (v72 < v70)
            {
              v8->i64[0] = v8[1].i64[0];
              goto LABEL_193;
            }

            v8->i64[0] = v8->i64[1];
            v8->i64[1] = v73;
            if (v72 < v73)
            {
              v8->i64[1] = v8[1].i64[0];
LABEL_193:
              v8[1].i64[0] = v73;
              LODWORD(v72) = v73;
            }
          }

          if (a2[-1].i32[2] < v72)
          {
            v120 = v8[1].i64[0];
            v8[1].i64[0] = a2[-1].i64[1];
            a2[-1].i64[1] = v120;
            if (v8[1].i32[0] < v8->i32[2])
            {
              v122 = v8->i64[1];
              v121 = v8[1].i64[0];
              v8->i64[1] = v121;
              v8[1].i64[0] = v122;
              if (v8->i32[0] > v121)
              {
                v123 = v8->i64[0];
                v8->i64[0] = v121;
                v8->i64[1] = v123;
              }
            }
          }

          return result;
        case 5:

          return sub_C10E10(v8->i64, &v8->i32[2], v8[1].i32, &v8[1].i64[1], &a2[-1].i64[1]);
      }
    }

    else
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        if (a2[-1].i32[2] >= v8->i32[0])
        {
          return result;
        }

        v67 = v8->i64[0];
        goto LABEL_114;
      }
    }

    if (v9 <= 23)
    {
      v74 = &v8->u64[1];
      v76 = v8 == a2 || v74 == a2;
      if ((a4 & 1) == 0)
      {
        if (!v76)
        {
          do
          {
            v115 = *(v7 + 8);
            v116 = *v7;
            v7 = v74;
            if (v115 < v116)
            {
              v117 = v74->i64[0];
              do
              {
                v118 = v74;
                v119 = v74[-1].i64[1];
                v74 = (v74 - 8);
                *v118 = v119;
              }

              while (*(v118 - 4) > v117);
              v74->i64[0] = v117;
            }

            v74 = (v7 + 8);
          }

          while ((v7 + 8) != a2);
        }

        return result;
      }

      if (v76)
      {
        return result;
      }

      v77 = 0;
      v78 = v8;
      while (1)
      {
        v80 = v78->i32[2];
        v81 = v78->i32[0];
        v78 = v74;
        if (v80 < v81)
        {
          v82 = v74->i64[0];
          v83 = v77;
          do
          {
            *(&v8->i64[1] + v83) = *(v8->i64 + v83);
            if (!v83)
            {
              v79 = v8;
              goto LABEL_129;
            }

            v84 = *(&v8->i32[-2] + v83);
            v83 -= 8;
          }

          while (v84 > v82);
          v79 = (&v8->i64[1] + v83);
LABEL_129:
          *v79 = v82;
        }

        v74 = &v78->u64[1];
        v77 += 8;
        if (&v78->u64[1] == a2)
        {
          return result;
        }
      }
    }

    if (!a3)
    {
      break;
    }

    v10 = &v8->i32[2 * (v9 >> 1)];
    v11 = v10;
    v12 = a2[-1].i32[2];
    if (v9 < 0x81)
    {
      v15 = v8->i32[0];
      if (v8->i32[0] < *v11)
      {
        v16 = *v11;
        if (v12 < v15)
        {
          *v11 = a2[-1].i64[1];
          goto LABEL_37;
        }

        *v11 = v8->i64[0];
        v8->i64[0] = v16;
        if (a2[-1].i32[2] < v16)
        {
          v8->i64[0] = a2[-1].i64[1];
LABEL_37:
          a2[-1].i64[1] = v16;
        }

LABEL_38:
        --a3;
        if ((a4 & 1) == 0)
        {
          goto LABEL_63;
        }

        goto LABEL_39;
      }

      if (v12 >= v15)
      {
        goto LABEL_38;
      }

      v19 = v8->i64[0];
      v8->i64[0] = a2[-1].i64[1];
      a2[-1].i64[1] = v19;
      if (v8->i32[0] >= *v11)
      {
        goto LABEL_38;
      }

      v20 = *v11;
      *v11 = v8->i64[0];
      v8->i64[0] = v20;
      --a3;
      if ((a4 & 1) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_39;
    }

    v13 = *v10;
    if (*v10 >= v8->i32[0])
    {
      if (v12 < v13)
      {
        v17 = *v10;
        *v10 = a2[-1].i64[1];
        a2[-1].i64[1] = v17;
        if (*v10 < v8->i32[0])
        {
          v18 = v8->i64[0];
          v8->i64[0] = *v10;
          *v10 = v18;
        }
      }
    }

    else
    {
      v14 = v8->i64[0];
      if (v12 >= v13)
      {
        v8->i64[0] = *v10;
        *v10 = v14;
        if (a2[-1].i32[2] >= v14)
        {
          goto LABEL_29;
        }

        *v10 = a2[-1].i64[1];
      }

      else
      {
        v8->i64[0] = a2[-1].i64[1];
      }

      a2[-1].i64[1] = v14;
    }

LABEL_29:
    v21 = (v10 - 2);
    v22 = *(v10 - 2);
    v23 = a2[-1].i32[0];
    if (v22 >= v8->i32[2])
    {
      if (v23 < v22)
      {
        v25 = *v21;
        *v21 = a2[-1].i64[0];
        a2[-1].i64[0] = v25;
        if (*v21 < v8->i32[2])
        {
          v26 = v8->i64[1];
          v8->i64[1] = *v21;
          *v21 = v26;
        }
      }
    }

    else
    {
      v24 = v8->i64[1];
      if (v23 >= v22)
      {
        v8->i64[1] = *v21;
        *v21 = v24;
        if (a2[-1].i32[0] >= v24)
        {
          goto LABEL_43;
        }

        *v21 = a2[-1].i64[0];
      }

      else
      {
        v8->i64[1] = a2[-1].i64[0];
      }

      a2[-1].i64[0] = v24;
    }

LABEL_43:
    v30 = v10[2];
    v28 = (v10 + 2);
    v29 = v30;
    v31 = a2[-2].i32[2];
    if (v30 >= v8[1].i32[0])
    {
      if (v31 < v29)
      {
        v33 = *v28;
        *v28 = a2[-2].i64[1];
        a2[-2].i64[1] = v33;
        if (*v28 < v8[1].i32[0])
        {
          v34 = v8[1].i64[0];
          v8[1].i64[0] = *v28;
          *v28 = v34;
        }
      }

      goto LABEL_52;
    }

    v32 = v8[1].i64[0];
    if (v31 < v29)
    {
      v8[1].i64[0] = a2[-2].i64[1];
LABEL_51:
      a2[-2].i64[1] = v32;
      goto LABEL_52;
    }

    v8[1].i64[0] = *v28;
    *v28 = v32;
    if (a2[-2].i32[2] < v32)
    {
      *v28 = a2[-2].i64[1];
      goto LABEL_51;
    }

LABEL_52:
    v35 = *v11;
    v36 = *v21;
    v37 = *v28;
    if (*v11 >= *v21)
    {
      v38 = *v11;
      if (v37 >= v35)
      {
        goto LABEL_62;
      }

      v40 = *v28;
      *v11 = *v28;
      *v28 = v38;
      if (v36 <= v40)
      {
        v58 = v8->i64[0];
        v8->i64[0] = v40;
        *v11 = v58;
        --a3;
        if (a4)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v41 = *v21;
        *v21 = v40;
        *v11 = v41;
        v42 = v8->i64[0];
        v8->i64[0] = v41;
        *v11 = v42;
        --a3;
        if (a4)
        {
          goto LABEL_39;
        }
      }

LABEL_63:
      v27 = v8->i64[0];
      if (v8[-1].i32[2] < v8->i32[0])
      {
        goto LABEL_64;
      }

      if (a2[-1].i32[2] <= v27)
      {
        v60 = &v8->u64[1];
        do
        {
          v8 = v60;
          if (v60 >= a2)
          {
            break;
          }

          v60 += 8;
        }

        while (v8->i32[0] <= v27);
      }

      else
      {
        do
        {
          v59 = v8->i32[2];
          v8 = (v8 + 8);
        }

        while (v59 <= v27);
      }

      v61 = a2;
      if (v8 < a2)
      {
        v61 = a2;
        do
        {
          v62 = v61[-1].i32[2];
          v61 = (v61 - 8);
        }

        while (v62 > v27);
      }

      while (v8 < v61)
      {
        v63 = v8->i64[0];
        v8->i64[0] = v61->i64[0];
        v61->i64[0] = v63;
        do
        {
          v64 = v8->i32[2];
          v8 = (v8 + 8);
        }

        while (v64 <= v27);
        do
        {
          v65 = v61[-1].i32[2];
          v61 = (v61 - 8);
        }

        while (v65 > v27);
      }

      v66 = &v8[-1].i64[1];
      if (&v8[-1].u64[1] != v7)
      {
        *v7 = *v66;
      }

      a4 = 0;
      *v66 = v27;
    }

    else
    {
      v38 = *v21;
      if (v37 >= v35)
      {
        *v21 = *v11;
        *v11 = v38;
        if (v37 < v38)
        {
          v43 = *v28;
          *v11 = *v28;
          *v28 = v38;
          v38 = v43;
        }

LABEL_62:
        v44 = v8->i64[0];
        v8->i64[0] = v38;
        *v11 = v44;
        --a3;
        if ((a4 & 1) == 0)
        {
          goto LABEL_63;
        }

        goto LABEL_39;
      }

      *v21 = *v28;
      *v28 = v38;
      v39 = v8->i64[0];
      v8->i64[0] = *v11;
      *v11 = v39;
      --a3;
      if ((a4 & 1) == 0)
      {
        goto LABEL_63;
      }

LABEL_39:
      v27 = v8->i64[0];
LABEL_64:
      v45 = 0;
      do
      {
        v46 = v8->i32[v45 + 2];
        v45 += 2;
      }

      while (v46 < v27);
      v47 = &v8->i8[v45 * 4];
      v48 = a2;
      if (v45 == 2)
      {
        v48 = a2;
        do
        {
          if (v47 >= v48)
          {
            break;
          }

          v50 = v48[-1].i32[2];
          v48 = (v48 - 8);
        }

        while (v50 >= v27);
      }

      else
      {
        do
        {
          v49 = v48[-1].i32[2];
          v48 = (v48 - 8);
        }

        while (v49 >= v27);
      }

      if (v47 >= v48)
      {
        v56 = v47 - 8;
        if (v47 - 8 == v8)
        {
          goto LABEL_82;
        }

LABEL_81:
        v8->i64[0] = *v56;
        goto LABEL_82;
      }

      v51 = &v8->i8[v45 * 4];
      v52 = v48;
      do
      {
        v53 = *v51;
        *v51 = *v52;
        *v52 = v53;
        do
        {
          v54 = *(v51 + 2);
          v51 += 8;
        }

        while (v54 < v27);
        do
        {
          v55 = *(v52-- - 2);
        }

        while (v55 >= v27);
      }

      while (v51 < v52);
      v56 = v51 - 8;
      if (v51 - 8 != v8)
      {
        goto LABEL_81;
      }

LABEL_82:
      *v56 = v27;
      if (v47 < v48)
      {
        goto LABEL_85;
      }

      v57 = sub_C10F84(v8, v56);
      v8 = (v56 + 8);
      result = sub_C10F84((v56 + 8), a2);
      if (result)
      {
        a2 = v56;
        if (v57)
        {
          return result;
        }

        goto LABEL_2;
      }

      if (!v57)
      {
LABEL_85:
        result = sub_C103BC(v7, v56, a3, a4 & 1);
        a4 = 0;
        v8 = (v56 + 8);
      }
    }
  }

  if (v8 == a2)
  {
    return result;
  }

  v85 = (v9 - 2) >> 1;
  v86 = v85;
  while (2)
  {
    if (v85 >= v86)
    {
      v88 = (2 * (v86 & 0x1FFFFFFFFFFFFFFFLL)) | 1;
      v89 = &v8->i8[8 * v88];
      if (2 * (v86 & 0x1FFFFFFFFFFFFFFFLL) + 2 >= v9)
      {
        v92 = &v8->i64[v86];
        if (*v89 >= *v92)
        {
LABEL_149:
          v93 = *v92;
          while (1)
          {
            v95 = v92;
            v92 = v89;
            *v95 = *v89;
            if (v85 < v88)
            {
              break;
            }

            v96 = (2 * v88) | 1;
            v89 = &v8->i8[8 * v96];
            v88 = 2 * v88 + 2;
            if (v88 < v9)
            {
              v94 = *v89;
              result = *(v89 + 2);
              if (*v89 <= result)
              {
                v94 = *(v89 + 2);
              }

              if (*v89 >= result)
              {
                v88 = v96;
              }

              else
              {
                v89 += 8;
              }

              if (v94 < v93)
              {
                break;
              }
            }

            else
            {
              v88 = v96;
              if (*v89 < v93)
              {
                break;
              }
            }
          }

          *v92 = v93;
        }
      }

      else
      {
        v90 = *v89;
        v91 = *(v89 + 2);
        if (*v89 <= v91)
        {
          v90 = *(v89 + 2);
        }

        if (*v89 < v91)
        {
          v89 += 8;
          v88 = 2 * (v86 & 0x1FFFFFFFFFFFFFFFLL) + 2;
        }

        v92 = &v8->i64[v86];
        if (v90 >= *v92)
        {
          goto LABEL_149;
        }
      }
    }

    v87 = v86-- <= 0;
    if (!v87)
    {
      continue;
    }

    break;
  }

  do
  {
    v97 = 0;
    v98 = v8->i64[0];
    v99 = (v9 - 2) >> 1;
    v100 = v8;
    do
    {
      while (1)
      {
        v104 = &v100[v97];
        v103 = (v104 + 1);
        v105 = (2 * v97) | 1;
        v97 = 2 * v97 + 2;
        if (v97 < v9)
        {
          break;
        }

        v97 = v105;
        *v100 = v103->i64[0];
        v100 = v104 + 1;
        if (v105 > v99)
        {
          goto LABEL_169;
        }
      }

      v102 = *(v104 + 4);
      v101 = (v104 + 2);
      if (v101[-1].i32[2] >= v102)
      {
        v97 = v105;
      }

      else
      {
        v103 = v101;
      }

      *v100 = v103->i64[0];
      v100 = v103;
    }

    while (v97 <= v99);
LABEL_169:
    a2 = (a2 - 8);
    if (v103 == a2)
    {
      v103->i64[0] = v98;
    }

    else
    {
      v103->i64[0] = a2->i64[0];
      a2->i64[0] = v98;
      v106 = (v103 - v8 + 8) >> 3;
      v87 = v106 < 2;
      v107 = v106 - 2;
      if (!v87)
      {
        v108 = v107 >> 1;
        v109 = (v8 + 8 * v108);
        if (v109->i32[0] < v103->i32[0])
        {
          v110 = v103->i64[0];
          do
          {
            v111 = v103;
            v103 = v109;
            *v111 = v109->i64[0];
            if (!v108)
            {
              break;
            }

            v108 = (v108 - 1) >> 1;
            v109 = (v8 + 8 * v108);
          }

          while (v109->i32[0] < v110);
          v103->i64[0] = v110;
        }
      }
    }

    v87 = v9-- <= 2;
  }

  while (!v87);
  return result;
}

uint64_t *sub_C10E10(uint64_t *result, int *a2, int *a3, void *a4, void *a5)
{
  v5 = *a2;
  LODWORD(v6) = *a3;
  if (*a2 >= *result)
  {
    if (v6 < v5)
    {
      v6 = *a2;
      *a2 = *a3;
      *a3 = v6;
      if (*a2 < *result)
      {
        v6 = *result;
        *result = *a2;
        *a2 = v6;
        LODWORD(v6) = *a3;
      }
    }
  }

  else
  {
    v7 = *result;
    if (v6 < v5)
    {
      *result = *a3;
LABEL_9:
      *a3 = v7;
      LODWORD(v6) = v7;
      goto LABEL_10;
    }

    *result = *a2;
    *a2 = v7;
    LODWORD(v6) = *a3;
    if (*a3 < v7)
    {
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*a4 < v6)
  {
    v8 = *a3;
    *a3 = *a4;
    *a4 = v8;
    if (*a3 < *a2)
    {
      v9 = *a2;
      *a2 = *a3;
      *a3 = v9;
      if (*a2 < *result)
      {
        v10 = *result;
        *result = *a2;
        *a2 = v10;
      }
    }
  }

  if (*a5 < *a4)
  {
    v11 = *a4;
    *a4 = *a5;
    *a5 = v11;
    if (*a4 < *a3)
    {
      v12 = *a3;
      *a3 = *a4;
      *a4 = v12;
      if (*a3 < *a2)
      {
        v13 = *a2;
        *a2 = *a3;
        *a3 = v13;
        if (*a2 < *result)
        {
          v14 = *result;
          *result = *a2;
          *a2 = v14;
        }
      }
    }
  }

  return result;
}

BOOL sub_C10F84(int8x16_t *a1, int8x16_t *a2)
{
  v2 = (a2 - a1) >> 3;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v5 = a1->i32[2];
      v6 = a2[-1].i32[2];
      if (v5 >= a1->i32[0])
      {
        if (v6 >= v5)
        {
          return 1;
        }

        v17 = a1->i64[1];
        a1->i64[1] = a2[-1].i64[1];
        a2[-1].i64[1] = v17;
        if (a1->i32[2] >= a1->i32[0])
        {
          return 1;
        }

        *a1 = vextq_s8(*a1, *a1, 8uLL);
        return 1;
      }

      else
      {
        v7 = a1->i64[0];
        if (v6 >= v5)
        {
          a1->i64[0] = a1->i64[1];
          a1->i64[1] = v7;
          if (a2[-1].i32[2] >= v7)
          {
            return 1;
          }

          a1->i64[1] = a2[-1].i64[1];
          a2[-1].i64[1] = v7;
          return 1;
        }

        else
        {
          a1->i64[0] = a2[-1].i64[1];
          a2[-1].i64[1] = v7;
          return 1;
        }
      }
    }

    if (v2 != 4)
    {
      if (v2 == 5)
      {
        sub_C10E10(a1->i64, &a1->i32[2], a1[1].i32, &a1[1].i64[1], &a2[-1].i64[1]);
        return 1;
      }

LABEL_14:
      v8 = a1 + 1;
      v9 = a1[1].i32[0];
      v10 = a1->i32[2];
      v11 = a1->i32[0];
      if (v10 >= a1->i32[0])
      {
        if (v9 < v10)
        {
          v19 = a1->i64[1];
          v18 = a1[1].i64[0];
          a1->i64[1] = v18;
          a1[1].i64[0] = v19;
          if (v11 > v18)
          {
            v20 = a1->i64[0];
            a1->i64[0] = v18;
            a1->i64[1] = v20;
          }
        }

        goto LABEL_34;
      }

      v12 = a1->i64[0];
      if (v9 >= v10)
      {
        a1->i64[0] = a1->i64[1];
        a1->i64[1] = v12;
        if (v9 >= v12)
        {
LABEL_34:
          v23 = (a1 + 24);
          if (&a1[1].u64[1] == a2)
          {
            return 1;
          }

          v24 = 0;
          v25 = 0;
          while (v23->i32[0] >= v8->i32[0])
          {
LABEL_43:
            v8 = v23;
            v24 += 8;
            v23 = (v23 + 8);
            if (v23 == a2)
            {
              return 1;
            }
          }

          v26 = v23->i64[0];
          v27 = v24;
          do
          {
            *(&a1[1].i64[1] + v27) = *(a1[1].i64 + v27);
            if (v27 == -16)
            {
              a1->i64[0] = v26;
              if (++v25 != 8)
              {
                goto LABEL_43;
              }

              return &v23->u64[1] == a2;
            }

            v28 = *(&a1->i32[2] + v27);
            v27 -= 8;
          }

          while (v28 > v26);
          *(&a1[1].i64[1] + v27) = v26;
          if (++v25 != 8)
          {
            goto LABEL_43;
          }

          return &v23->u64[1] == a2;
        }

        a1->i64[1] = a1[1].i64[0];
      }

      else
      {
        a1->i64[0] = a1[1].i64[0];
      }

      a1[1].i64[0] = v12;
      goto LABEL_34;
    }

    v13 = a1->i32[2];
    v14 = a1->i32[0];
    LODWORD(v15) = a1[1].i32[0];
    if (v13 >= a1->i32[0])
    {
      if (v15 < v13)
      {
        v15 = a1->i64[1];
        v21 = a1[1].i64[0];
        a1->i64[1] = v21;
        a1[1].i64[0] = v15;
        if (v14 > v21)
        {
          v22 = a1->i64[0];
          a1->i64[0] = v21;
          a1->i64[1] = v22;
        }
      }

      goto LABEL_48;
    }

    v16 = a1->i64[0];
    if (v15 >= v13)
    {
      a1->i64[0] = a1->i64[1];
      a1->i64[1] = v16;
      if (v15 >= v16)
      {
        goto LABEL_48;
      }

      a1->i64[1] = a1[1].i64[0];
    }

    else
    {
      a1->i64[0] = a1[1].i64[0];
    }

    a1[1].i64[0] = v16;
    LODWORD(v15) = v16;
LABEL_48:
    if (a2[-1].i32[2] >= v15)
    {
      return 1;
    }

    v29 = a1[1].i64[0];
    a1[1].i64[0] = a2[-1].i64[1];
    a2[-1].i64[1] = v29;
    if (a1[1].i32[0] >= a1->i32[2])
    {
      return 1;
    }

    v31 = a1->i64[1];
    v30 = a1[1].i64[0];
    a1->i64[1] = v30;
    a1[1].i64[0] = v31;
    if (a1->i32[0] <= v30)
    {
      return 1;
    }

    v32 = a1->i64[0];
    a1->i64[0] = v30;
    a1->i64[1] = v32;
    return 1;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 != 2)
  {
    goto LABEL_14;
  }

  if (a2[-1].i32[2] >= a1->i32[0])
  {
    return 1;
  }

  v4 = a1->i64[0];
  a1->i64[0] = a2[-1].i64[1];
  a2[-1].i64[1] = v4;
  return 1;
}

void sub_C11638(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_C11674(int *result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v3 != v4)
  {
    v6 = result;
    do
    {
      v7 = *(a3 + 24);
      if (!v7)
      {
        sub_2B7420();
      }

      result = (*(*v7 + 48))(v7, v3);
      if (result)
      {
        v8 = *(v3 + 200);
        v9 = *(v3 + 208);
        while (v8 != v9)
        {
          if (!*(v8 + 24))
          {
            result = sub_C11728(v6, v8);
          }

          v8 += 72;
        }
      }

      v3 += 296;
    }

    while (v3 != v4);
  }

  return result;
}

uint64_t sub_C11728(int *a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*a2 != v5)
  {
    do
    {
      if (*(v4 + 40))
      {
        sub_5AF20();
      }

      sub_A332F8(v18, v4);
      v19 = 0;
      sub_C135EC(&__p, v18, 1uLL);
      *(v4 + 144) = sub_C11944(a1, &__p);
      v6 = __p;
      if (__p)
      {
        v7 = v16;
        v8 = __p;
        if (v16 != __p)
        {
          do
          {
            v9 = v7 - 168;
            v10 = *(v7 - 2);
            if (v10 != -1)
            {
              (off_26726C8[v10])(&v17, v7 - 168);
            }

            *(v7 - 2) = -1;
            v7 -= 168;
          }

          while (v9 != v6);
          v8 = __p;
        }

        v16 = v6;
        operator delete(v8);
      }

      if (v19 != -1)
      {
        (off_26726C8[v19])(&v17, v18);
      }

      v4 = (v4 + 168);
    }

    while (v4 != v5);
    v4 = *a2;
    v5 = *(a2 + 8);
  }

  if (v4 != v5)
  {
    v11 = (v4 - 168);
    while (v11 + 21 != v5)
    {
      if (*(v11 + 82))
      {
        sub_5AF20();
      }

      if (*(v11 + 124))
      {
        sub_5AF20();
      }

      v12 = *(v11 + 70);
      v13 = *(v11 + 112);
      v11 = (v11 + 168);
      if (v12 != v13)
      {
        if (v11 == v5)
        {
          break;
        }

        result = 1;
        goto LABEL_25;
      }
    }
  }

  result = sub_C11944(a1, a2);
LABEL_25:
  *(a2 + 56) = result;
  return result;
}

void sub_C118FC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_4A48(a1);
}

uint64_t sub_C11944(int *a1, void *a2)
{
  v2 = a2[1];
  v3 = *a2;
  if (*a2 == v2)
  {
    return 1;
  }

  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  v6 = v3 + 88;
  do
  {
    if (*(v6 + 72))
    {
      sub_5AF20();
    }

    sub_C12BEC(a1, v6, &v24);
    v7 = v6 + 80;
    v6 += 168;
  }

  while (v7 != v2);
  v8 = v24;
  v9 = 126 - 2 * __clz((*(&v24 + 1) - v24) >> 3);
  if (*(&v24 + 1) == v24)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  sub_C13754(v24, *(&v24 + 1), v23, v10, 1);
  v11 = *(&v25 + 1);
  v12 = 126 - 2 * __clz((v26 - *(&v25 + 1)) >> 3);
  if (v26 == *(&v25 + 1))
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  sub_C13754(*(&v25 + 1), v26, v23, v13, 1);
  if (*(*a2 + 160))
  {
    sub_5AF20();
  }

  v14 = *(*a2 + 112);
  if (v14 == 0x7FFFFFFF)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v22 = sub_2D390(exception, "Service status calculation component called on journey leg with invalid upcoming journey leg alternatives reference time", 0x78uLL);
  }

  v15 = a1[1];
  if (*a1 < 0)
  {
    v16 = -5;
  }

  else
  {
    v16 = 5;
  }

  v17 = *a1 / -10 + v14 + (((-103 * (v16 + *a1 % 10)) >> 15) & 1) + ((-103 * (v16 + *a1 % 10)) >> 10);
  if (v15 < 0)
  {
    v18 = -5;
  }

  else
  {
    v18 = 5;
  }

  sub_C12E10(a1, v17, v15 / 10 + v14 + (((103 * (v18 + v15 % 10)) >> 15) & 1) + ((103 * (v18 + v15 % 10)) >> 10), &v24, v23);
  v19 = sub_C121B8(a1, v17, v23);
  if (v11)
  {
    operator delete(v11);
  }

  if (v8)
  {
    operator delete(v8);
  }

  return v19;
}

void sub_C11B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_21DB4B4(va);
  _Unwind_Resume(a1);
}

void sub_C11BA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_21DB4B4(va);
  _Unwind_Resume(a1);
}

void sub_C11BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_21DB4B4(va);
  _Unwind_Resume(a1);
}

void sub_C11BCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_21DB4B4(va);
  _Unwind_Resume(a1);
}

void sub_C11BE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_21DB4B4(va);
  _Unwind_Resume(a1);
}

void sub_C11BF4(int *result, _DWORD *a2, uint64_t a3)
{
  v3 = *(a3 + 48);
  for (i = *(a3 + 56); v3 != i; v3 += 248)
  {
    sub_C11C48(result, a2, v3);
  }
}

void sub_C11C48(int *a1, _DWORD *a2, uint64_t a3)
{
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  sub_C11F64(a1, a3, &v26);
  v5 = 126 - 2 * __clz((*(&v26 + 1) - v26) >> 3);
  if (*(&v26 + 1) == v26)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  v24 = v26;
  sub_C13754(v26, *(&v26 + 1), v29, v6, 1);
  v7 = *(&v27 + 1);
  v8 = 126 - 2 * __clz((v28 - *(&v27 + 1)) >> 3);
  if (v28 == *(&v27 + 1))
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  sub_C13754(*(&v27 + 1), v28, v29, v9, 1);
  v10 = *(a3 + 96);
  for (i = *(a3 + 104); v10 != i; v10 += 60)
  {
    if (*(v10 + 12) == 1)
    {
      v13 = a1[1];
      v14 = *(v10 + 4 * (*(v10 + 8) != 0x7FFFFFFF) + 4);
      if (*a1 < 0)
      {
        v15 = -5;
      }

      else
      {
        v15 = 5;
      }

      v16 = *a1 / -10 + v14 + (((-103 * (v15 + *a1 % 10)) >> 15) & 1) + ((-103 * (v15 + *a1 % 10)) >> 10);
      v17 = v13 / 10;
      v18 = v13 % 10;
      if (v13 < 0)
      {
        v19 = -5;
      }

      else
      {
        v19 = 5;
      }

      sub_C12E10(a1, v16, v17 + v14 + (((103 * (v19 + v18)) >> 15) & 1) + ((103 * (v19 + v18)) >> 10), &v26, v29);
      v12 = sub_C121B8(a1, v16, v29);
    }

    else
    {
      v12 = 0;
    }

    *(v10 + 56) = v12;
  }

  v20 = a1[1];
  if (*a1 < 0)
  {
    v21 = -5;
  }

  else
  {
    v21 = 5;
  }

  v22 = *a1 / -10 + *a2 + (((-103 * (v21 + *a1 % 10)) >> 15) & 1) + ((-103 * (v21 + *a1 % 10)) >> 10);
  if (v20 < 0)
  {
    v23 = -5;
  }

  else
  {
    v23 = 5;
  }

  sub_C12E10(a1, v22, v20 / 10 + *a2 + (((103 * (v23 + v20 % 10)) >> 15) & 1) + ((103 * (v23 + v20 % 10)) >> 10), &v26, v29);
  *(a3 + 208) = sub_C121B8(a1, v22, v29);
  if (v7)
  {
    operator delete(v7);
  }

  if (v24)
  {
    operator delete(v24);
  }
}

void sub_C11F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_21DB4B4(va);
  _Unwind_Resume(a1);
}

void sub_C11F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_21DB4B4(va);
  _Unwind_Resume(a1);
}

void sub_C11F50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_21DB4B4(va);
  _Unwind_Resume(a1);
}

void sub_C11F64(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2[9];
  v6 = a2[10];
  if (v5 != v6)
  {
    v7 = *(a3 + 8);
    do
    {
      v9 = *(a3 + 16);
      if (v7 < v9)
      {
        v8 = *(v5 + 12);
        *v7 = *(v5 + 4);
        *(v7 + 4) = v8;
        v7 += 8;
      }

      else
      {
        v10 = *a3;
        v11 = v7 - *a3;
        v12 = v11 >> 3;
        v13 = (v11 >> 3) + 1;
        if (v13 >> 61)
        {
LABEL_34:
          sub_1794();
        }

        v14 = v9 - v10;
        if (v14 >> 2 > v13)
        {
          v13 = v14 >> 2;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFF8)
        {
          v15 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v13;
        }

        if (v15)
        {
          if (!(v15 >> 61))
          {
            operator new();
          }

          goto LABEL_35;
        }

        v16 = 8 * v12;
        v17 = *(v5 + 12);
        *v16 = *(v5 + 4);
        *(v16 + 4) = v17;
        v7 = 8 * v12 + 8;
        memcpy(0, v10, v11);
        *a3 = 0;
        *(a3 + 8) = v7;
        *(a3 + 16) = 0;
        if (v10)
        {
          operator delete(v10);
        }
      }

      *(a3 + 8) = v7;
      v5 += 60;
    }

    while (v5 != v6);
  }

  v18 = a2[12];
  v19 = a2[13];
  if (v18 != v19)
  {
    v20 = *(a3 + 32);
    do
    {
      v22 = *(v18 + 4 * (*(v18 + 8) != 0x7FFFFFFF) + 4);
      v23 = *(a3 + 40);
      if (v20 < v23)
      {
        v21 = *(v18 + 12);
        *v20 = v22;
        *(v20 + 4) = v21;
        v20 += 8;
      }

      else
      {
        v24 = *(a3 + 24);
        v25 = v20 - v24;
        v26 = (v20 - v24) >> 3;
        v27 = v26 + 1;
        if ((v26 + 1) >> 61)
        {
          goto LABEL_34;
        }

        v28 = v23 - v24;
        if (v28 >> 2 > v27)
        {
          v27 = v28 >> 2;
        }

        if (v28 >= 0x7FFFFFFFFFFFFFF8)
        {
          v29 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v29 = v27;
        }

        if (v29)
        {
          if (!(v29 >> 61))
          {
            operator new();
          }

LABEL_35:
          sub_1808();
        }

        v30 = v26;
        v31 = 8 * v26;
        v32 = *(v18 + 12);
        *v31 = v22;
        *(v31 + 4) = v32;
        v20 = 8 * v26 + 8;
        v33 = (v31 - 8 * v30);
        memcpy(v33, v24, v25);
        *(a3 + 24) = v33;
        *(a3 + 32) = v20;
        *(a3 + 40) = 0;
        if (v24)
        {
          operator delete(v24);
        }
      }

      *(a3 + 32) = v20;
      v18 += 60;
    }

    while (v18 != v19);
  }
}

uint64_t sub_C121B8(uint64_t a1, int a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  if (v4 - *a3 < 8)
  {
    return 1;
  }

  v6 = a3[2];
  v7 = a3[3];
  if (v6 == v7)
  {
    return 4;
  }

  v8 = v7 - v6 - 8;
  if (v8 < 0x40)
  {
    v9 = 0;
    v10 = a3[2];
    goto LABEL_20;
  }

  v11 = v8 >> 3;
  v12 = (v8 >> 3) + 1;
  if (v8 >= 0x100)
  {
    v14 = 0uLL;
    v15.i64[0] = 0xFDFDFDFDFDFDFDFDLL;
    v15.i64[1] = 0xFDFDFDFDFDFDFDFDLL;
    v16.i64[0] = 0xFEFEFEFEFEFEFEFELL;
    v16.i64[1] = 0xFEFEFEFEFEFEFEFELL;
    v17 = vdupq_n_s64(1uLL);
    v18 = 32;
    v19 = 0uLL;
    if ((v12 & 0x1F) != 0)
    {
      v18 = v12 & 0x1F;
    }

    v20 = 0uLL;
    v13 = v12 - v18;
    v21 = 0uLL;
    v22 = (v6 + 133);
    v23 = 0uLL;
    v24 = v12;
    v25 = 0uLL;
    v26 = 0uLL;
    v27 = 0uLL;
    v28 = 0uLL;
    v29 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
    v32 = 0uLL;
    v33 = 0uLL;
    v34 = 0uLL;
    v35 = 0uLL;
    do
    {
      v36.i8[0] = *(v22 - 128);
      v36.i8[1] = *(v22 - 120);
      v36.i8[2] = *(v22 - 112);
      v36.i8[3] = *(v22 - 104);
      v36.i8[4] = *(v22 - 96);
      v36.i8[5] = *(v22 - 88);
      v36.i8[6] = *(v22 - 80);
      v36.i8[7] = *(v22 - 72);
      v36.i8[8] = *(v22 - 64);
      v36.i8[9] = *(v22 - 56);
      v36.i8[10] = *(v22 - 48);
      v36.i8[11] = *(v22 - 40);
      v36.i8[12] = *(v22 - 32);
      v36.i8[13] = *(v22 - 24);
      v36.i8[14] = *(v22 - 16);
      v36.i8[15] = *(v22 - 8);
      v37.i8[0] = *v22;
      v37.i8[1] = v22[8];
      v37.i8[2] = v22[16];
      v37.i8[3] = v22[24];
      v37.i8[4] = v22[32];
      v37.i8[5] = v22[40];
      v37.i8[6] = v22[48];
      v37.i8[7] = v22[56];
      v37.i8[8] = v22[64];
      v37.i8[9] = v22[72];
      v37.i8[10] = v22[80];
      v37.i8[11] = v22[88];
      v37.i8[12] = v22[96];
      v37.i8[13] = v22[104];
      v37.i8[14] = v22[112];
      v37.i8[15] = v22[120];
      v38 = vcgtq_u8(v16, vaddq_s8(v36, v15));
      v39 = vmovl_u8(*v38.i8);
      v40 = vmovl_high_u8(v38);
      v41 = vmovl_high_u16(v40);
      v42.i64[0] = v41.u32[2];
      v42.i64[1] = v41.u32[3];
      v27 = vaddq_s64(v27, vandq_s8(v42, v17));
      v43 = vmovl_high_u16(v39);
      v44 = vmovl_u16(*v40.i8);
      v42.i64[0] = v41.u32[0];
      v42.i64[1] = v41.u32[1];
      v26 = vaddq_s64(v26, vandq_s8(v42, v17));
      v42.i64[0] = v44.u32[2];
      v42.i64[1] = v44.u32[3];
      v25 = vaddq_s64(v25, vandq_s8(v42, v17));
      v42.i64[0] = v43.u32[0];
      v42.i64[1] = v43.u32[1];
      v45 = vandq_s8(v42, v17);
      v42.i64[0] = v44.u32[0];
      v42.i64[1] = v44.u32[1];
      v46 = vandq_s8(v42, v17);
      v42.i64[0] = v43.u32[2];
      v42.i64[1] = v43.u32[3];
      v47 = vcgtq_u8(v16, vaddq_s8(v37, v15));
      v21 = vaddq_s64(v21, vandq_s8(v42, v17));
      v48 = vmovl_u8(*v47.i8);
      v49 = vmovl_high_u8(v47);
      v23 = vaddq_s64(v23, v46);
      v50 = vmovl_high_u16(v49);
      v20 = vaddq_s64(v20, v45);
      v42.i64[0] = v50.u32[2];
      v42.i64[1] = v50.u32[3];
      v35 = vaddq_s64(v35, vandq_s8(v42, v17));
      v51 = vmovl_high_u16(v48);
      v52 = vmovl_u16(*v49.i8);
      v42.i64[0] = v50.u32[0];
      v42.i64[1] = v50.u32[1];
      v34 = vaddq_s64(v34, vandq_s8(v42, v17));
      v42.i64[0] = v52.u32[2];
      v42.i64[1] = v52.u32[3];
      v33 = vaddq_s64(v33, vandq_s8(v42, v17));
      v42.i64[0] = v51.u32[2];
      v42.i64[1] = v51.u32[3];
      v31 = vaddq_s64(v31, vandq_s8(v42, v17));
      v42.i64[0] = v52.u32[0];
      v42.i64[1] = v52.u32[1];
      v32 = vaddq_s64(v32, vandq_s8(v42, v17));
      v42.i64[0] = v51.u32[0];
      v42.i64[1] = v51.u32[1];
      v53 = vmovl_u16(*v39.i8);
      v30 = vaddq_s64(v30, vandq_s8(v42, v17));
      v42.i64[0] = v53.u32[2];
      v42.i64[1] = v53.u32[3];
      v54 = vmovl_u16(*v48.i8);
      v19 = vaddq_s64(v19, vandq_s8(v42, v17));
      v42.i64[0] = v54.u32[2];
      v42.i64[1] = v54.u32[3];
      v29 = vaddq_s64(v29, vandq_s8(v42, v17));
      v42.i64[0] = v53.u32[0];
      v42.i64[1] = v53.u32[1];
      v14 = vaddq_s64(v14, vandq_s8(v42, v17));
      v42.i64[0] = v54.u32[0];
      v42.i64[1] = v54.u32[1];
      v28 = vaddq_s64(v28, vandq_s8(v42, v17));
      v24 -= 32;
      v22 += 256;
    }

    while (v18 != v24);
    v9 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v28, v14), vaddq_s64(v32, v23)), vaddq_s64(vaddq_s64(v30, v20), vaddq_s64(v34, v26))), vaddq_s64(vaddq_s64(vaddq_s64(v29, v19), vaddq_s64(v33, v25)), vaddq_s64(vaddq_s64(v31, v21), vaddq_s64(v35, v27)))));
    if (v18 < 9)
    {
      v10 = v6 + 8 * v13;
      goto LABEL_20;
    }
  }

  else
  {
    v9 = 0;
    v13 = 0;
  }

  v55 = v12 & 7;
  if ((v12 & 7) == 0)
  {
    v55 = 8;
  }

  v10 = v6 + 8 * (v12 - v55);
  v56 = 0uLL;
  v57 = v9;
  v58 = ~v11 + v13 + v55;
  v59 = (v6 + 8 * v13 + 37);
  v60 = vdupq_n_s64(1uLL);
  v61 = 0uLL;
  v62 = 0uLL;
  do
  {
    v63.i8[0] = *(v59 - 32);
    v63.i8[1] = *(v59 - 24);
    v63.i8[2] = *(v59 - 16);
    v63.i8[3] = *(v59 - 8);
    v63.i8[4] = *v59;
    v63.i8[5] = v59[8];
    v63.i8[6] = v59[16];
    v63.i8[7] = v59[24];
    v64 = vmovl_u8(vcgt_u8(0xFEFEFEFEFEFEFEFELL, vadd_s8(v63, 0xFDFDFDFDFDFDFDFDLL)));
    v65 = vmovl_u16(*v64.i8);
    v66.i64[0] = v65.u32[0];
    v66.i64[1] = v65.u32[1];
    v67 = vandq_s8(v66, v60);
    v66.i64[0] = v65.u32[2];
    v66.i64[1] = v65.u32[3];
    v68 = vandq_s8(v66, v60);
    v69 = vmovl_high_u16(v64);
    v66.i64[0] = v69.u32[0];
    v66.i64[1] = v69.u32[1];
    v70 = vandq_s8(v66, v60);
    v66.i64[0] = v69.u32[2];
    v66.i64[1] = v69.u32[3];
    v62 = vaddq_s64(v62, vandq_s8(v66, v60));
    v61 = vaddq_s64(v61, v70);
    v56 = vaddq_s64(v56, v68);
    v57 = vaddq_s64(v57, v67);
    v59 += 64;
    v58 += 8;
  }

  while (v58);
  v9 = vaddvq_s64(vaddq_s64(vaddq_s64(v57, v61), vaddq_s64(v56, v62)));
  do
  {
LABEL_20:
    if (*(v10 + 5) - 3 < 0xFFFFFFFE)
    {
      ++v9;
    }

    v10 += 8;
  }

  while (v10 != v7);
  if (!v9)
  {
    return 4;
  }

  if (v3 == v4)
  {
    goto LABEL_29;
  }

  while (!*(v3 + 4))
  {
    v3 += 8;
    if (v3 == v4)
    {
LABEL_29:
      while (!*(v6 + 4))
      {
        v6 += 8;
        if (v6 == v7)
        {
          return 0;
        }
      }

      break;
    }
  }

  v72 = sub_C12718(a1, a2, a3);
  v74 = *(a1 + 56);
  v73 = a1 + 56;
  v75 = v74;
  v76 = *(v73 - 32);
  v77 = v73 - 24;
  if (*(v73 - 24) > v76 && v72 >= *(v73 - 24))
  {
    v76 = *(v73 - 24);
  }

  else
  {
    v77 = v73 - 32;
  }

  if (*(v73 - 16) > v76 && v72 >= *(v73 - 16))
  {
    v76 = *(v73 - 16);
    v77 = v73 - 16;
  }

  if (*(v73 - 8) > v76 && v72 >= *(v73 - 8))
  {
    v76 = *(v73 - 8);
    v77 = v73 - 8;
  }

  if (v72 >= v75 && v75 > v76)
  {
    v77 = v73;
  }

  return ((v77 - (v73 - 32)) >> 3);
}

double sub_C12718(uint64_t a1, int a2, uint64_t *a3)
{
  if (a3[1] - *a3 < 8 || a3[3] - a3[2] <= 7)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v10 = sub_2D390(exception, "Empty input supplied to service status scoring algorithm", 0x38uLL);
  }

  sub_C12848(a1, a2, a3, 1, v12);
  sub_C12848(a1, a2, a3 + 2, 0, __p);
  v7 = sub_C12A98(v6, v12, __p);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (v12[0])
  {
    operator delete(v12[0]);
  }

  return v7;
}

void sub_C12804(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12)
{
  if (__p)
  {
    operator delete(__p);
    v13 = a12;
    if (!a12)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v13 = a12;
    if (!a12)
    {
      goto LABEL_3;
    }
  }

  operator delete(v13);
  _Unwind_Resume(exception_object);
}

void sub_C12848(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v6 = *a3;
  v7 = a3[1];
  if (*a3 != v7)
  {
    v9 = a2;
    v11 = 0;
    do
    {
      if ((a4 & 1) != 0 || *(v6 + 5) - 1 >= 2)
      {
        v12 = (*v6 - v9);
        v13 = 1.0;
        if (*(a1 + 64) == 1)
        {
          v14 = *(a1 + 80);
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

          v18 = (v15 + (((103 * (v17 + v16)) >> 15) & 1) + ((103 * (v17 + v16)) >> 10));
          v19 = *(a1 + 72);
          v20 = (1.0 - exp(-(v19 * v12))) * v18;
          v13 = (1.0 - exp(-(v19 * (v12 + 1.0)))) * v18 / (v12 + 1.0);
          v12 = v20;
        }

        v21 = a5[2];
        if (v11 < v21)
        {
          *v11 = v12;
          *(v11 + 8) = v13;
          v11 += 16;
        }

        else
        {
          v22 = v11;
          v23 = v11 >> 4;
          v24 = v23 + 1;
          if ((v23 + 1) >> 60)
          {
            *a5 = 0;
            sub_1794();
          }

          if (v21 >> 3 > v24)
          {
            v24 = v21 >> 3;
          }

          if (v21 >= 0x7FFFFFFFFFFFFFF0)
          {
            v25 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v25 = v24;
          }

          if (v25)
          {
            if (!(v25 >> 60))
            {
              operator new();
            }

            *a5 = 0;
            sub_1808();
          }

          v26 = (16 * v23);
          *v26 = v12;
          v26[1] = v13;
          v11 = 16 * v23 + 16;
          memcpy(0, 0, v22);
          a5[1] = v11;
          a5[2] = 0;
          v9 = a2;
        }

        a5[1] = v11;
      }

      v6 += 8;
    }

    while (v6 != v7);
  }

  *a5 = 0;
}

void sub_C12A70(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  if (v2)
  {
    v1[1] = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

double sub_C12A98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*a2 == v4 || (v5 = *a3, v6 = *(a3 + 8), *a3 == v6))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v23 = sub_2D390(exception, "Empty input supplied to EMD algorithm", 0x25uLL);
  }

  v7 = 0;
  v8 = 0;
  v9 = (v6 - v5) >> 4;
  v10 = (v4 - v3) >> 4;
  v11 = *v5;
  v12 = *v3;
  v13 = 0.0;
  v14 = 0.0;
  v15 = 0.0;
  v16 = 0.0;
  do
  {
    v17 = v16;
    v18 = v15;
    v19 = v14;
    if (v12 >= v11)
    {
      v15 = v15 + v5[2 * v7++ + 1];
      v14 = v11;
      if (v7 >= v9)
      {
        v11 = 1.79769313e308;
      }

      else
      {
        v11 = v5[2 * v7];
      }
    }

    else
    {
      v16 = v16 + v3[2 * v8++ + 1];
      v14 = v12;
      if (v8 >= v10)
      {
        v12 = 1.79769313e308;
      }

      else
      {
        v12 = v3[2 * v8];
      }
    }

    v13 = v13 + vabdd_f64(v17, v18) * (v14 - v19);
  }

  while (v8 < v10 || v7 < v9);
  if (v15 >= v16)
  {
    v20 = v16;
  }

  else
  {
    v20 = v15;
  }

  result = v13 / v20;
  if (v20 == 0.0)
  {
    return 0.0;
  }

  return result;
}

void sub_C12BEC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    do
    {
      v8 = *(a3 + 8);
      v9 = *(a3 + 16);
      if (v8 >= v9)
      {
        v12 = *a3;
        v13 = v8 - *a3;
        v14 = v13 >> 3;
        v15 = (v13 >> 3) + 1;
        if (v15 >> 61)
        {
          goto LABEL_31;
        }

        v16 = v9 - v12;
        if (v16 >> 2 > v15)
        {
          v15 = v16 >> 2;
        }

        if (v16 >= 0x7FFFFFFFFFFFFFF8)
        {
          v17 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v15;
        }

        if (v17)
        {
          if (!(v17 >> 61))
          {
            operator new();
          }

LABEL_32:
          sub_1808();
        }

        v18 = 8 * v14;
        v19 = *(v3 + 12);
        *v18 = *(v3 + 4);
        *(v18 + 4) = v19;
        v11 = 8 * v14 + 8;
        memcpy(0, v12, v13);
        *a3 = 0;
        *(a3 + 8) = v11;
        *(a3 + 16) = 0;
        if (v12)
        {
          operator delete(v12);
        }
      }

      else
      {
        v10 = *(v3 + 12);
        *v8 = *(v3 + 4);
        *(v8 + 4) = v10;
        v11 = v8 + 8;
      }

      *(a3 + 8) = v11;
      v20 = *(v3 + 4 * (*(v3 + 8) != 0x7FFFFFFF) + 4);
      v22 = *(a3 + 32);
      v21 = *(a3 + 40);
      if (v22 < v21)
      {
        v6 = *(v3 + 12);
        *v22 = v20;
        *(v22 + 4) = v6;
        v7 = v22 + 8;
      }

      else
      {
        v23 = *(a3 + 24);
        v24 = v22 - v23;
        v25 = (v22 - v23) >> 3;
        v26 = v25 + 1;
        if ((v25 + 1) >> 61)
        {
LABEL_31:
          sub_1794();
        }

        v27 = v21 - v23;
        if (v27 >> 2 > v26)
        {
          v26 = v27 >> 2;
        }

        if (v27 >= 0x7FFFFFFFFFFFFFF8)
        {
          v28 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v28 = v26;
        }

        if (v28)
        {
          if (!(v28 >> 61))
          {
            operator new();
          }

          goto LABEL_32;
        }

        v29 = 8 * v25;
        v30 = *(v3 + 12);
        *v29 = v20;
        *(v29 + 4) = v30;
        v7 = 8 * v25 + 8;
        memcpy(0, v23, v24);
        *(a3 + 24) = 0;
        *(a3 + 32) = v7;
        *(a3 + 40) = 0;
        if (v23)
        {
          operator delete(v23);
        }
      }

      *(a3 + 32) = v7;
      v3 += 60;
    }

    while (v3 != v4);
  }
}

_DWORD *sub_C12E10@<X0>(_DWORD *result@<X0>, int a2@<W1>, int a3@<W2>, void *a4@<X3>, void *a5@<X8>)
{
  v5 = a4[3];
  v6 = a4[4];
  v7 = (v6 - v5) >> 3;
  if (v7 >= 1)
  {
    if (v6 - v5 != 8)
    {
      do
      {
        v8 = (2 * v7) & 0xFFFFFFFFFFFFFFF8;
        _X14 = v5 + v8;
        __asm { PRFM            #0, [X14] }

        v15 = &v5[2 * (v7 >> 1)];
        _X13 = v15 + v8;
        __asm { PRFM            #0, [X13] }

        if (*v15 >= a2)
        {
          v18 = 0;
        }

        else
        {
          v18 = v7 >> 1;
        }

        v5 += 2 * v18;
        v7 -= v7 >> 1;
      }

      while (v7 > 1);
    }

    v5 += 2 * (*v5 < a2);
  }

  v19 = 2 * *(result + 2);
  v20 = &v5[v19];
  if (v6 < &v5[v19])
  {
    v20 = a4[4];
  }

  v21 = v5;
  if (v5 != v20)
  {
    v21 = v5;
    while (*v21 <= a3)
    {
      v21 += 2;
      if (v21 == v20)
      {
        v21 = v20;
        break;
      }
    }
  }

  if (v5 == v21)
  {
    v22 = 0x7FFFFFFF;
    v24 = *a4;
    v23 = a4[1];
    v25 = v23 - *a4;
    v26 = v25 >> 3;
    if (v25 >> 3 >= 1)
    {
LABEL_17:
      if (v25 == 8)
      {
        v27 = v24;
      }

      else
      {
        v27 = v24;
        do
        {
          v29 = (2 * v26) & 0xFFFFFFFFFFFFFFF8;
          _X4 = v27 + v29;
          __asm { PRFM            #0, [X4] }

          v32 = &v27[2 * (v26 >> 1)];
          _X3 = v32 + v29;
          __asm { PRFM            #0, [X3] }

          if (*v32 >= a2)
          {
            v35 = 0;
          }

          else
          {
            v35 = v26 >> 1;
          }

          v27 += 2 * v35;
          v26 -= v26 >> 1;
        }

        while (v26 > 1);
      }

      v28 = &v27[2 * (*v27 < a2)];
      if (v22 == 0x7FFFFFFF)
      {
        goto LABEL_39;
      }

      goto LABEL_28;
    }
  }

  else
  {
    v22 = *v5;
    v24 = *a4;
    v23 = a4[1];
    v25 = v23 - *a4;
    v26 = v25 >> 3;
    if (v25 >> 3 >= 1)
    {
      goto LABEL_17;
    }
  }

  v28 = v24;
  if (v22 == 0x7FFFFFFF)
  {
    goto LABEL_39;
  }

LABEL_28:
  if (v28 < v23)
  {
    v36 = *v28 - v22;
    if (v36 < 0)
    {
      v36 = v22 - *v28;
    }

    v37 = *(result + 1);
    if (v37)
    {
      result = &v28[-2 * v37];
      v38 = v28 - 2;
      while (v28 > v24)
      {
        v39 = *v38 - v22;
        if (v39 < 0)
        {
          v39 = v22 - *v38;
        }

        if (v39 >= v36)
        {
          break;
        }

        v28 -= 2;
        v38 -= 2;
        if (!--v37)
        {
          v28 = result;
          break;
        }
      }
    }
  }

LABEL_39:
  v40 = &v28[v19];
  if (v23 >= v40)
  {
    v23 = v40;
  }

  v41 = v28;
  if (v28 != v23)
  {
    while (*v41 <= a3)
    {
      v41 += 2;
      if (v41 == v23)
      {
        v41 = v23;
        break;
      }
    }
  }

  *a5 = v28;
  a5[1] = v41;
  a5[2] = v5;
  a5[3] = v21;
  return result;
}

uint64_t **sub_C13004(void *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2;
  v5 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  v7 = sub_AAD8(&v25, a2, v6);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_43;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  if (v10.u32[0] > 1uLL)
  {
    v11 = v7;
    if (v7 >= *&v9)
    {
      v11 = v7 % *&v9;
    }
  }

  else
  {
    v11 = (*&v9 - 1) & v7;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_43:
    operator new();
  }

  v14 = *(v3 + 23);
  if (v14 >= 0)
  {
    v15 = *(v3 + 23);
  }

  else
  {
    v15 = v3[1];
  }

  if (v14 < 0)
  {
    v3 = *v3;
  }

  if (v10.u32[0] < 2uLL)
  {
    while (1)
    {
      v20 = v13[1];
      if (v20 == v8)
      {
        v21 = *(v13 + 39);
        v22 = v21;
        if (v21 < 0)
        {
          v21 = v13[3];
        }

        if (v21 == v15)
        {
          v23 = v22 >= 0 ? (v13 + 2) : v13[2];
          if (!memcmp(v23, v3, v15))
          {
            return v13;
          }
        }
      }

      else if ((v20 & (*&v9 - 1)) != v11)
      {
        goto LABEL_43;
      }

      v13 = *v13;
      if (!v13)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v16 = v13[1];
    if (v16 == v8)
    {
      break;
    }

    if (v16 >= *&v9)
    {
      v16 %= *&v9;
    }

    if (v16 != v11)
    {
      goto LABEL_43;
    }

LABEL_20:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_43;
    }
  }

  v17 = *(v13 + 39);
  v18 = v17;
  if (v17 < 0)
  {
    v17 = v13[3];
  }

  if (v17 != v15)
  {
    goto LABEL_20;
  }

  v19 = v18 >= 0 ? (v13 + 2) : v13[2];
  if (memcmp(v19, v3, v15))
  {
    goto LABEL_20;
  }

  return v13;
}

void sub_C13408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

void sub_C1341C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_C13434(void *a1, uint64_t *a2)
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

uint64_t *sub_C135EC(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3)
  {
    if (a3 < 0x186186186186187)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_C13718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_A335C8(va);
  _Unwind_Resume(a1);
}

void sub_C1372C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v7 = va_arg(va1, void **);
  v9 = va_arg(va1, void);
  sub_A3238C(v5);
  sub_A33528(va1);
  *(v3 + 8) = v4;
  sub_A335C8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_C13754(uint64_t result, char *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = a2 - 8;
  v10 = a2 - 16;
  v11 = a2 - 24;
  v12 = v8;
  while (1)
  {
    v8 = v12;
    v13 = &a2[-v12] >> 3;
    if (v13 > 2)
    {
      break;
    }

    if (v13 < 2)
    {
      return result;
    }

    if (v13 == 2)
    {
      v163 = *(a2 - 2);
      v162 = a2 - 8;
      v164 = v163 == *v12;
      v165 = v163 < *v12;
      if (v164)
      {
        v165 = v162[4] < *(v12 + 4);
      }

      if (v165)
      {
        v166 = *v12;
        v167 = *v162;
        *(v12 + 4) = *(v162 + 2);
        *v12 = v167;
        *v162 = v166;
        *(v162 + 2) = WORD2(v166);
      }

      return result;
    }

LABEL_10:
    if (v13 <= 23)
    {
      v179 = (v12 + 8);
      v181 = v12 == a2 || v179 == a2;
      if (a5)
      {
        if (!v181)
        {
          v182 = 0;
          v183 = v12;
          do
          {
            v185 = *(v183 + 8);
            v186 = *(v183 + 12);
            v187 = *v183;
            v188 = *(v183 + 4);
            v183 = v179;
            v189 = v186 < v188;
            v164 = v185 == v187;
            v190 = v185 < v187;
            if (!v164)
            {
              v189 = v190;
            }

            if (v189)
            {
              v191 = *v183;
              v192 = HIDWORD(*v183);
              v193 = v182;
              do
              {
                v194 = v12 + v193;
                *(v194 + 8) = *(v12 + v193);
                *(v194 + 12) = *(v12 + v193 + 4);
                if (!v193)
                {
                  v184 = v12;
                  goto LABEL_173;
                }

                v195 = *(v194 - 8);
                v196 = *(v194 - 4) > v192;
                v164 = v195 == v191;
                v197 = v195 > v191;
                if (!v164)
                {
                  v196 = v197;
                }

                v193 -= 8;
              }

              while (v196);
              v184 = v12 + v193 + 8;
LABEL_173:
              *v184 = v191;
              *(v184 + 4) = v192;
              *(v184 + 5) = BYTE5(v191);
            }

            v179 = (v183 + 8);
            v182 += 8;
          }

          while ((v183 + 8) != a2);
        }
      }

      else if (!v181)
      {
        do
        {
          v203 = *(v8 + 8);
          v204 = *(v8 + 12);
          v205 = *v8;
          v206 = *(v8 + 4);
          v8 = v179;
          v207 = v204 < v206;
          v164 = v203 == v205;
          v208 = v203 < v205;
          if (v164)
          {
            v208 = v207;
          }

          if (v208)
          {
            v209 = *v179;
            v210 = HIDWORD(*v179);
            do
            {
              v211 = v179;
              v212 = *(v179 - 2);
              v179 -= 8;
              *v211 = v212;
              *(v211 + 2) = *(v211 - 2);
              v213 = *(v211 - 4);
              v214 = *(v211 - 12) > v210;
              v164 = v213 == v209;
              v215 = v213 > v209;
              if (!v164)
              {
                v214 = v215;
              }
            }

            while (v214);
            *v179 = v209;
            v179[4] = v210;
            v179[5] = BYTE5(v209);
          }

          v179 = (v8 + 8);
        }

        while ((v8 + 8) != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v12 != a2)
      {

        return sub_C14E98(v12, a2, a2, a3);
      }

      return result;
    }

    v14 = v12 + 8 * (v13 >> 1);
    v15 = *(a2 - 2);
    v16 = *(a2 - 4);
    if (v13 < 0x81)
    {
      v25 = *v12;
      v26 = *(v12 + 4);
      v27 = *v12 < *v14;
      if (*v12 == *v14)
      {
        v27 = v26 < *(v14 + 4);
      }

      v28 = v16 < v26;
      v164 = v15 == v25;
      v29 = v15 < v25;
      if (!v164)
      {
        v28 = v29;
      }

      if (v27)
      {
        v30 = *v14;
        v31 = HIDWORD(*v14);
        if (!v28)
        {
          v67 = *v12;
          *(v14 + 4) = *(v12 + 4);
          *v14 = v67;
          *(v12 + 4) = v31;
          *v12 = v30;
          v68 = *(a2 - 2);
          v69 = *(a2 - 4) < v31;
          v164 = v68 == v30;
          v70 = v68 < v30;
          if (v164)
          {
            v70 = v69;
          }

          if (v70)
          {
            v71 = *v12;
            v72 = *v9;
            *(v12 + 4) = *(a2 - 2);
            *v12 = v72;
            *v9 = v71;
            *(a2 - 2) = WORD2(v71);
          }

LABEL_59:
          --a4;
          if (a5)
          {
            goto LABEL_102;
          }

          goto LABEL_99;
        }

        v32 = *v9;
        *(v14 + 4) = *(a2 - 2);
        *v14 = v32;
        *(a2 - 2) = v31;
        *v9 = v30;
        --a4;
        if (a5)
        {
          goto LABEL_102;
        }
      }

      else
      {
        if (!v28)
        {
          goto LABEL_59;
        }

        v38 = *v12;
        v39 = *v9;
        *(v12 + 4) = *(a2 - 2);
        *v12 = v39;
        *v9 = v38;
        *(a2 - 2) = WORD2(v38);
        v40 = *v12 < *v14;
        if (*v12 == *v14)
        {
          v40 = *(v12 + 4) < *(v14 + 4);
        }

        if (!v40)
        {
          goto LABEL_59;
        }

        v41 = *v14;
        v42 = *v12;
        *(v14 + 4) = *(v12 + 4);
        *v14 = v42;
        *v12 = v41;
        *(v12 + 4) = WORD2(v41);
        --a4;
        if (a5)
        {
          goto LABEL_102;
        }
      }

LABEL_99:
      v124 = *(v12 - 8);
      v164 = v124 == *v12;
      v125 = v124 < *v12;
      if (v164)
      {
        v125 = *(v12 - 4) < *(v12 + 4);
      }

      if (v125)
      {
        goto LABEL_102;
      }

      result = sub_C14780(v12, a2);
      v12 = result;
      a5 = 0;
    }

    else
    {
      v17 = *v14;
      v18 = *(v14 + 4);
      v19 = *v14 < *v12;
      if (*v14 == *v12)
      {
        v19 = v18 < *(v12 + 4);
      }

      v20 = v16 < v18;
      v164 = v15 == v17;
      v21 = v15 < v17;
      if (!v164)
      {
        v20 = v21;
      }

      if (v19)
      {
        v22 = *v12;
        v23 = HIDWORD(*v12);
        if (v20)
        {
          v24 = *v9;
          *(v12 + 4) = *(a2 - 2);
          *v12 = v24;
          *(a2 - 2) = v23;
          *v9 = v22;
        }

        else
        {
          v43 = *v14;
          *(v12 + 4) = *(v14 + 4);
          *v12 = v43;
          *(v14 + 4) = v23;
          *v14 = v22;
          v44 = *(a2 - 2);
          v45 = *(a2 - 4) < v23;
          v164 = v44 == v22;
          v46 = v44 < v22;
          if (v164)
          {
            v46 = v45;
          }

          if (v46)
          {
            v47 = *v14;
            v48 = *v9;
            *(v14 + 4) = *(a2 - 2);
            *v14 = v48;
            *v9 = v47;
            *(a2 - 2) = WORD2(v47);
          }
        }
      }

      else if (v20)
      {
        v33 = *v14;
        v34 = *v9;
        *(v14 + 4) = *(a2 - 2);
        *v14 = v34;
        *v9 = v33;
        *(a2 - 2) = WORD2(v33);
        v35 = *v14 < *v12;
        if (*v14 == *v12)
        {
          v35 = *(v14 + 4) < *(v12 + 4);
        }

        if (v35)
        {
          v36 = *v12;
          v37 = *v14;
          *(v12 + 4) = *(v14 + 4);
          *v12 = v37;
          *v14 = v36;
          *(v14 + 4) = WORD2(v36);
        }
      }

      v49 = (v12 + 8);
      v50 = *(v12 + 8);
      v51 = (v14 - 8);
      v52 = *(v14 - 8);
      v53 = *(v14 - 4);
      v164 = v52 == v50;
      v54 = v52 < v50;
      if (v164)
      {
        v54 = v53 < *(v12 + 12);
      }

      v55 = *(a2 - 4);
      v56 = *(a2 - 12) < v53;
      v164 = v55 == v52;
      v57 = v55 < v52;
      if (!v164)
      {
        v56 = v57;
      }

      if (v54)
      {
        v58 = *v49;
        v59 = HIDWORD(*v49);
        if (v56)
        {
          v60 = *v10;
          *(v12 + 12) = *(a2 - 6);
          *v49 = v60;
          *(a2 - 6) = v59;
          *v10 = v58;
        }

        else
        {
          v73 = *v51;
          *(v12 + 12) = *(v14 - 4);
          *v49 = v73;
          *(v14 - 4) = v59;
          *v51 = v58;
          v74 = *(a2 - 4);
          v75 = *(a2 - 12) < v59;
          v164 = v74 == v58;
          v76 = v74 < v58;
          if (v164)
          {
            v76 = v75;
          }

          if (v76)
          {
            v77 = *v51;
            v78 = *v10;
            *(v14 - 4) = *(a2 - 6);
            *v51 = v78;
            *v10 = v77;
            *(a2 - 6) = WORD2(v77);
          }
        }
      }

      else if (v56)
      {
        v61 = *v51;
        v62 = *v10;
        *(v14 - 4) = *(a2 - 6);
        *v51 = v62;
        *v10 = v61;
        *(a2 - 6) = WORD2(v61);
        v63 = *(v12 + 8);
        v64 = *v51 < v63;
        if (*v51 == v63)
        {
          v64 = *(v14 - 4) < *(v12 + 12);
        }

        if (v64)
        {
          v65 = *v49;
          v66 = *v51;
          *(v12 + 12) = *(v14 - 4);
          *v49 = v66;
          *v51 = v65;
          *(v14 - 4) = WORD2(v65);
        }
      }

      v79 = (v12 + 16);
      v80 = *(v12 + 16);
      v81 = (v14 + 8);
      v82 = *(v14 + 8);
      v83 = *(v14 + 12);
      v164 = v82 == v80;
      v84 = v82 < v80;
      if (v164)
      {
        v84 = v83 < *(v12 + 20);
      }

      v85 = *(a2 - 6);
      v86 = *(a2 - 20) < v83;
      v164 = v85 == v82;
      v87 = v85 < v82;
      if (!v164)
      {
        v86 = v87;
      }

      if (v84)
      {
        v88 = *v79;
        v89 = HIDWORD(*v79);
        if (v86)
        {
          v90 = *v11;
          *(v12 + 20) = *(a2 - 10);
          *v79 = v90;
          *(a2 - 10) = v89;
          *v11 = v88;
        }

        else
        {
          v97 = *v81;
          *(v12 + 20) = *(v14 + 12);
          *v79 = v97;
          *(v14 + 12) = v89;
          *v81 = v88;
          v98 = *(a2 - 6);
          v99 = *(a2 - 20) < v89;
          v164 = v98 == v88;
          v100 = v98 < v88;
          if (v164)
          {
            v100 = v99;
          }

          if (v100)
          {
            v101 = *v81;
            v102 = *v11;
            *(v14 + 12) = *(a2 - 10);
            *v81 = v102;
            *v11 = v101;
            *(a2 - 10) = WORD2(v101);
          }
        }
      }

      else if (v86)
      {
        v91 = *v81;
        v92 = *v11;
        *(v14 + 12) = *(a2 - 10);
        *v81 = v92;
        *v11 = v91;
        *(a2 - 10) = WORD2(v91);
        v93 = *(v12 + 16);
        v94 = *v81 < v93;
        if (*v81 == v93)
        {
          v94 = *(v14 + 12) < *(v12 + 20);
        }

        if (v94)
        {
          v95 = *v79;
          v96 = *v81;
          *(v12 + 20) = *(v14 + 12);
          *v79 = v96;
          *v81 = v95;
          *(v14 + 12) = WORD2(v95);
        }
      }

      v103 = *v14;
      v104 = *(v14 + 4);
      v105 = *v51;
      v106 = *(v14 - 4);
      if (*v14 == *v51)
      {
        v107 = v104 < v106;
      }

      else
      {
        v107 = *v14 < *v51;
      }

      v108 = *v81;
      v109 = *(v14 + 12);
      v110 = v109 < v104;
      v164 = *v81 == v103;
      v111 = *v81 < v103;
      if (v164)
      {
        v111 = v110;
      }

      if (v107)
      {
        v112 = *v51;
        v113 = HIDWORD(*v51);
        if (v111)
        {
          *v51 = *v81;
          *(v14 - 4) = *(v14 + 12);
          *v81 = v112;
          *(v14 + 12) = v113;
        }

        else
        {
          *v51 = *v14;
          *(v14 - 4) = *(v14 + 4);
          *v14 = v112;
          *(v14 + 4) = v113;
          v119 = v109 < v113;
          v164 = v108 == v112;
          v120 = v108 < v112;
          if (!v164)
          {
            v119 = v120;
          }

          if (v119)
          {
            v121 = *v14;
            *v14 = *v81;
            *(v14 + 4) = *(v14 + 12);
            *v81 = v121;
            *(v14 + 12) = WORD2(v121);
          }
        }
      }

      else if (v111)
      {
        v114 = *v14;
        *(v14 + 4) = *(v14 + 12);
        v115 = *v81;
        *v14 = *v81;
        *v81 = v114;
        *(v14 + 12) = WORD2(v114);
        v116 = *(v14 + 4) < v106;
        v164 = v115 == v105;
        v117 = v115 < v105;
        if (!v164)
        {
          v116 = v117;
        }

        if (v116)
        {
          v118 = *v51;
          *v51 = *v14;
          *(v14 - 4) = *(v14 + 4);
          *v14 = v118;
          *(v14 + 4) = WORD2(v118);
        }
      }

      v122 = *v12;
      v123 = *v14;
      *(v12 + 4) = *(v14 + 4);
      *v12 = v123;
      *v14 = v122;
      *(v14 + 4) = WORD2(v122);
      --a4;
      if ((a5 & 1) == 0)
      {
        goto LABEL_99;
      }

LABEL_102:
      v126 = 0;
      v127 = *v12;
      v128 = BYTE4(*v12);
      do
      {
        v129 = *(v12 + v126 + 8);
        v130 = *(v12 + v126 + 12) < v128;
        v164 = v129 == v127;
        v131 = v129 < v127;
        if (!v164)
        {
          v130 = v131;
        }

        v126 += 8;
      }

      while (v130);
      v132 = v12 + v126;
      v133 = a2;
      if (v126 == 8)
      {
        v133 = a2;
        do
        {
          if (v132 >= v133)
          {
            break;
          }

          v136 = *(v133 - 2);
          v133 -= 8;
          v137 = v136 < v127;
          if (v136 == v127)
          {
            v137 = v133[4] < v128;
          }
        }

        while (!v137);
      }

      else
      {
        do
        {
          v134 = *(v133 - 2);
          v133 -= 8;
          v135 = v134 < v127;
          if (v134 == v127)
          {
            v135 = v133[4] < v128;
          }
        }

        while (!v135);
      }

      v12 = v132;
      if (v132 < v133)
      {
        v138 = v133;
        do
        {
          v139 = *v12;
          v140 = *v138;
          *(v12 + 4) = *(v138 + 2);
          *v12 = v140;
          *v138 = v139;
          *(v138 + 2) = WORD2(v139);
          do
          {
            v141 = *(v12 + 8);
            v12 += 8;
            v142 = v141 < v127;
            if (v141 == v127)
            {
              v142 = *(v12 + 4) < v128;
            }
          }

          while (v142);
          do
          {
            v143 = *(v138 - 2);
            v138 -= 8;
            v144 = v143 < v127;
            if (v143 == v127)
            {
              v144 = v138[4] < v128;
            }
          }

          while (!v144);
        }

        while (v12 < v138);
      }

      if (v12 - 8 != v8)
      {
        v145 = *(v12 - 8);
        *(v8 + 4) = *(v12 - 4);
        *v8 = v145;
      }

      *(v12 - 8) = v127;
      *(v12 - 4) = v128;
      *(v12 - 3) = BYTE5(v127);
      if (v132 < v133)
      {
        goto LABEL_131;
      }

      v146 = sub_C148D4(v8, (v12 - 8));
      result = sub_C148D4(v12, a2);
      if (result)
      {
        a2 = (v12 - 8);
        if (!v146)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v146)
      {
LABEL_131:
        result = sub_C13754(v8, v12 - 8, a3, a4, a5 & 1);
        a5 = 0;
      }
    }
  }

  if (v13 != 3)
  {
    if (v13 == 4)
    {

      return sub_C14544(v12, (v12 + 8), (v12 + 16), a2 - 2);
    }

    if (v13 == 5)
    {
      result = sub_C14544(v12, (v12 + 8), (v12 + 16), (v12 + 24));
      v148 = *(a2 - 2);
      v147 = a2 - 8;
      v149 = *(v12 + 24);
      v150 = v148 < v149;
      if (v148 == v149)
      {
        v150 = v147[4] < *(v12 + 28);
      }

      if (!v150)
      {
        return result;
      }

      v151 = *(v12 + 24);
      v152 = *v147;
      *(v12 + 28) = *(v147 + 2);
      *(v12 + 24) = v152;
      *v147 = v151;
      *(v147 + 2) = WORD2(v151);
      LODWORD(v151) = *(v12 + 24);
      v153 = *(v12 + 16);
      v164 = v151 == v153;
      v154 = v151 < v153;
      if (v164)
      {
        v154 = *(v12 + 28) < *(v12 + 20);
      }

      if (!v154)
      {
        return result;
      }

      v155 = *(v12 + 16);
      *(v12 + 20) = *(v12 + 28);
      *(v12 + 16) = *(v12 + 24);
      *(v12 + 24) = v155;
      *(v12 + 28) = WORD2(v155);
      LODWORD(v155) = *(v12 + 16);
      v156 = *(v12 + 8);
      v164 = v155 == v156;
      v157 = v155 < v156;
      if (v164)
      {
        v157 = *(v12 + 20) < *(v12 + 12);
      }

      if (!v157)
      {
        return result;
      }

      v158 = *(v12 + 8);
      *(v12 + 12) = *(v12 + 20);
      *(v12 + 8) = *(v12 + 16);
      *(v12 + 16) = v158;
      *(v12 + 20) = WORD2(v158);
      LODWORD(v158) = *(v12 + 8);
      v164 = v158 == *v12;
      v159 = v158 < *v12;
      if (v164)
      {
        v159 = *(v12 + 12) < *(v12 + 4);
      }

      if (!v159)
      {
        return result;
      }

      v160 = *v12;
      *v12 = *(v12 + 8);
      *(v12 + 4) = *(v12 + 12);
      *(v12 + 8) = v160;
      v161 = HIDWORD(v160);
LABEL_193:
      *(v12 + 12) = v161;
      return result;
    }

    goto LABEL_10;
  }

  v168 = (v12 + 8);
  v169 = *(v12 + 8);
  v170 = a2 - 8;
  v171 = *(a2 - 2);
  v172 = *(v12 + 12);
  v173 = v169 < *v12;
  if (v169 == *v12)
  {
    v173 = v172 < *(v12 + 4);
  }

  v174 = *(a2 - 4) < v172;
  v164 = v171 == v169;
  v175 = v171 < v169;
  if (v164)
  {
    v176 = v174;
  }

  else
  {
    v176 = v175;
  }

  if (v173)
  {
    v177 = *v12;
    if (v176)
    {
      v178 = *v170;
      *(v12 + 4) = *(a2 - 2);
      *v12 = v178;
      *(a2 - 2) = WORD2(v177);
      *v170 = v177;
    }

    else
    {
      *v12 = *v168;
      *(v12 + 4) = *(v12 + 12);
      *(v12 + 8) = v177;
      *(v12 + 12) = WORD2(v177);
      v216 = *(a2 - 2);
      v164 = v216 == v177;
      v217 = v216 < v177;
      if (v164)
      {
        v217 = *(a2 - 4) < BYTE4(v177);
      }

      if (v217)
      {
        v218 = *v168;
        v219 = *v170;
        *(v12 + 12) = *(a2 - 2);
        *v168 = v219;
        *v170 = v218;
        *(a2 - 2) = WORD2(v218);
      }
    }
  }

  else if (v176)
  {
    v198 = *(v12 + 8);
    v199 = *v170;
    *(v12 + 12) = *(a2 - 2);
    *v168 = v199;
    *v170 = v198;
    *(a2 - 2) = WORD2(v198);
    v200 = *(v12 + 8);
    v164 = v200 == *v12;
    v201 = v200 < *v12;
    if (v164)
    {
      v201 = *(v12 + 12) < *(v12 + 4);
    }

    if (v201)
    {
      v202 = *v12;
      *v12 = *v168;
      *(v12 + 4) = *(v12 + 12);
      *(v12 + 8) = v202;
      v161 = HIDWORD(v202);
      goto LABEL_193;
    }
  }

  return result;
}

uint64_t *sub_C14544(uint64_t *result, int *a2, int *a3, int *a4)
{
  v4 = *a2;
  v5 = *(a2 + 4);
  if (*a2 == *result)
  {
    v6 = v5 < *(result + 4);
  }

  else
  {
    v6 = *a2 < *result;
  }

  LODWORD(v7) = *a3;
  v8 = *(a3 + 4);
  v9 = v8 < v5;
  v10 = *a3 == v4;
  v11 = *a3 < v4;
  if (!v10)
  {
    v9 = v11;
  }

  if (v6)
  {
    v12 = *result;
    if (v9)
    {
      v13 = *a3;
      *(result + 2) = *(a3 + 2);
      *result = v13;
      *(a3 + 2) = WORD2(v12);
      *a3 = v12;
      v8 = BYTE4(v12);
      LODWORD(v7) = v12;
    }

    else
    {
      v17 = *a2;
      *(result + 2) = *(a2 + 2);
      *result = v17;
      *(a2 + 2) = WORD2(v12);
      *a2 = v12;
      LODWORD(v7) = *a3;
      v8 = *(a3 + 4);
      v10 = *a3 == v12;
      v18 = *a3 < v12;
      if (v10)
      {
        v18 = v8 < BYTE4(v12);
      }

      if (v18)
      {
        v7 = *a2;
        v19 = *a3;
        *(a2 + 2) = *(a3 + 2);
        *a2 = v19;
        *a3 = v7;
        *(a3 + 2) = WORD2(v7);
        v8 = BYTE4(v7);
      }
    }
  }

  else if (v9)
  {
    v7 = *a2;
    v14 = *a3;
    *(a2 + 2) = *(a3 + 2);
    *a2 = v14;
    *a3 = v7;
    *(a3 + 2) = WORD2(v7);
    v15 = *a2 < *result;
    if (*a2 == *result)
    {
      v15 = *(a2 + 4) < *(result + 4);
    }

    if (v15)
    {
      v7 = *result;
      v16 = *a2;
      *(result + 2) = *(a2 + 2);
      *result = v16;
      *a2 = v7;
      *(a2 + 2) = WORD2(v7);
      LODWORD(v7) = *a3;
      v8 = *(a3 + 4);
    }

    else
    {
      v8 = BYTE4(v7);
    }
  }

  v20 = *(a4 + 4) < v8;
  v10 = *a4 == v7;
  v21 = *a4 < v7;
  if (v10)
  {
    v21 = v20;
  }

  if (v21)
  {
    v22 = *a3;
    v23 = *a4;
    *(a3 + 2) = *(a4 + 2);
    *a3 = v23;
    *a4 = v22;
    *(a4 + 2) = WORD2(v22);
    v24 = *a3 < *a2;
    if (*a3 == *a2)
    {
      v24 = *(a3 + 4) < *(a2 + 4);
    }

    if (v24)
    {
      v25 = *a2;
      v26 = *a3;
      *(a2 + 2) = *(a3 + 2);
      *a2 = v26;
      *a3 = v25;
      *(a3 + 2) = WORD2(v25);
      v27 = *a2 < *result;
      if (*a2 == *result)
      {
        v27 = *(a2 + 4) < *(result + 4);
      }

      if (v27)
      {
        v28 = *result;
        v29 = *a2;
        *(result + 2) = *(a2 + 2);
        *result = v29;
        *a2 = v28;
        *(a2 + 2) = WORD2(v28);
      }
    }
  }

  return result;
}

int *sub_C14780(int *a1, unint64_t a2)
{
  v2 = *a1;
  v3 = BYTE4(*a1);
  v4 = *(a2 - 8);
  v5 = v4 == *a1;
  v6 = v4 > *a1;
  if (v5)
  {
    v6 = *(a2 - 4) > v3;
  }

  if (v6)
  {
    v7 = a1;
    do
    {
      v8 = v7[2];
      v7 += 2;
      v9 = v8 > v2;
      if (v8 == v2)
      {
        v9 = *(v7 + 4) > v3;
      }
    }

    while (!v9);
  }

  else
  {
    v10 = a1 + 2;
    do
    {
      v7 = v10;
      if (v10 >= a2)
      {
        break;
      }

      v11 = *v10;
      v12 = *(v7 + 4) > v3;
      v5 = v11 == v2;
      v13 = v11 > v2;
      if (!v5)
      {
        v12 = v13;
      }

      v10 = v7 + 2;
    }

    while (!v12);
  }

  if (v7 < a2)
  {
    do
    {
      v14 = *(a2 - 8);
      a2 -= 8;
      v15 = v14 > v2;
      if (v14 == v2)
      {
        v15 = *(a2 + 4) > v3;
      }
    }

    while (v15);
  }

  while (v7 < a2)
  {
    v16 = *v7;
    v17 = *a2;
    *(v7 + 2) = *(a2 + 4);
    *v7 = v17;
    *a2 = v16;
    *(a2 + 4) = WORD2(v16);
    do
    {
      v18 = v7[2];
      v7 += 2;
      v19 = v18 > v2;
      if (v18 == v2)
      {
        v19 = *(v7 + 4) > v3;
      }
    }

    while (!v19);
    do
    {
      v20 = *(a2 - 8);
      a2 -= 8;
      v21 = v20 > v2;
      if (v20 == v2)
      {
        v21 = *(a2 + 4) > v3;
      }
    }

    while (v21);
  }

  if (v7 - 2 != a1)
  {
    v22 = *(v7 - 2);
    *(a1 + 2) = *(v7 - 2);
    *a1 = v22;
  }

  *(v7 - 2) = v2;
  *(v7 - 4) = v3;
  *(v7 - 3) = BYTE5(v2);
  return v7;
}

BOOL sub_C148D4(uint64_t *a1, uint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v27 = a1 + 1;
        v28 = *(a1 + 2);
        v29 = (a2 - 1);
        v30 = *(a2 - 2);
        v31 = *(a1 + 12);
        v32 = v28 < *a1;
        if (v28 == *a1)
        {
          v32 = v31 < *(a1 + 4);
        }

        v33 = *(a2 - 4) < v31;
        v14 = v30 == v28;
        v34 = v30 < v28;
        if (v14)
        {
          v35 = v33;
        }

        else
        {
          v35 = v34;
        }

        if (v32)
        {
          v36 = *a1;
          if (v35)
          {
            v37 = *v29;
            *(a1 + 2) = *(a2 - 2);
            *a1 = v37;
            *(a2 - 2) = WORD2(v36);
            *v29 = v36;
            return 1;
          }

          *a1 = *v27;
          *(a1 + 2) = *(a1 + 6);
          *(a1 + 2) = v36;
          *(a1 + 6) = WORD2(v36);
          v59 = *(a2 - 2);
          v14 = v59 == v36;
          v60 = v59 < v36;
          if (v14)
          {
            v60 = *(a2 - 4) < BYTE4(v36);
          }

          if (v60)
          {
            v61 = *v27;
            v62 = *v29;
            *(a1 + 6) = *(a2 - 2);
            *v27 = v62;
            *v29 = v61;
            *(a2 - 2) = WORD2(v61);
            return 1;
          }
        }

        else if (v35)
        {
          v50 = a1[1];
          v51 = *v29;
          *(a1 + 6) = *(a2 - 2);
          *v27 = v51;
          *v29 = v50;
          *(a2 - 2) = WORD2(v50);
          v52 = *(a1 + 2);
          v14 = v52 == *a1;
          v53 = v52 < *a1;
          if (v14)
          {
            v53 = *(a1 + 12) < *(a1 + 4);
          }

          if (v53)
          {
            v54 = *a1;
            *a1 = *v27;
            *(a1 + 2) = *(a1 + 6);
            *(a1 + 2) = v54;
            *(a1 + 6) = WORD2(v54);
            return 1;
          }
        }

        return 1;
      case 4:
        sub_C14544(a1, a1 + 2, a1 + 4, a2 - 2);
        return 1;
      case 5:
        sub_C14544(a1, a1 + 2, a1 + 4, a1 + 6);
        v11 = (a2 - 1);
        v12 = *(a2 - 2);
        v13 = *(a1 + 6);
        v14 = v12 == v13;
        v15 = v12 < v13;
        if (v14)
        {
          v15 = *(a2 - 4) < *(a1 + 28);
        }

        if (v15)
        {
          v16 = a1[3];
          v17 = *v11;
          *(a1 + 14) = *(a2 - 2);
          *(a1 + 6) = v17;
          *v11 = v16;
          *(a2 - 2) = WORD2(v16);
          v18 = *(a1 + 6);
          v19 = *(a1 + 4);
          v14 = v18 == v19;
          v20 = v18 < v19;
          if (v14)
          {
            v20 = *(a1 + 28) < *(a1 + 20);
          }

          if (v20)
          {
            v21 = a1[2];
            *(a1 + 10) = *(a1 + 14);
            *(a1 + 4) = *(a1 + 6);
            *(a1 + 6) = v21;
            *(a1 + 14) = WORD2(v21);
            LODWORD(v21) = *(a1 + 4);
            v22 = *(a1 + 2);
            v14 = v21 == v22;
            v23 = v21 < v22;
            if (v14)
            {
              v23 = *(a1 + 20) < *(a1 + 12);
            }

            if (v23)
            {
              v24 = a1[1];
              *(a1 + 6) = *(a1 + 10);
              *(a1 + 2) = *(a1 + 4);
              *(a1 + 4) = v24;
              *(a1 + 10) = WORD2(v24);
              LODWORD(v24) = *(a1 + 2);
              v14 = v24 == *a1;
              v25 = v24 < *a1;
              if (v14)
              {
                v25 = *(a1 + 12) < *(a1 + 4);
              }

              if (v25)
              {
                v26 = *a1;
                *a1 = *(a1 + 2);
                *(a1 + 2) = *(a1 + 6);
                *(a1 + 2) = v26;
                *(a1 + 6) = WORD2(v26);
                return 1;
              }
            }
          }
        }

        return 1;
    }
  }

  else
  {
    if (v2 < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      v4 = *(a2 - 2);
      v3 = a2 - 1;
      v5 = v4 < *a1;
      if (v4 == *a1)
      {
        v5 = *(v3 + 4) < *(a1 + 4);
      }

      if (v5)
      {
        v6 = *a1;
        v7 = *v3;
        *(a1 + 2) = *(v3 + 2);
        *a1 = v7;
        *v3 = v6;
        *(v3 + 2) = WORD2(v6);
        return 1;
      }

      return 1;
    }
  }

  v38 = (a1 + 2);
  v39 = *(a1 + 4);
  v40 = a1 + 1;
  v41 = *(a1 + 2);
  v42 = *(a1 + 12);
  v43 = *a1;
  v44 = *(a1 + 4);
  v45 = v41 < *a1;
  if (v41 == *a1)
  {
    v45 = v42 < v44;
  }

  v46 = *(a1 + 20);
  v47 = v46 < v42;
  v14 = v39 == v41;
  v48 = v39 < v41;
  if (v14)
  {
    v48 = v47;
  }

  if (v45)
  {
    v49 = *a1;
    if (v48)
    {
      *a1 = *v38;
      *(a1 + 2) = *(a1 + 10);
      *(a1 + 4) = v49;
      *(a1 + 10) = WORD2(v49);
    }

    else
    {
      *a1 = *v40;
      *(a1 + 2) = *(a1 + 6);
      *(a1 + 2) = v49;
      *(a1 + 6) = WORD2(v49);
      v14 = v39 == v49;
      v63 = v39 < v49;
      if (v14)
      {
        v63 = v46 < BYTE4(v49);
      }

      if (v63)
      {
        v64 = *v40;
        *v40 = *v38;
        *(a1 + 6) = *(a1 + 10);
        *v38 = v64;
        *(a1 + 10) = WORD2(v64);
      }
    }
  }

  else if (v48)
  {
    v55 = a1[1];
    *(a1 + 6) = *(a1 + 10);
    *v40 = *v38;
    *(a1 + 4) = v55;
    *(a1 + 10) = WORD2(v55);
    LODWORD(v55) = *(a1 + 2);
    v56 = *(a1 + 12) < v44;
    v14 = v55 == v43;
    v57 = v55 < v43;
    if (v14)
    {
      v57 = v56;
    }

    if (v57)
    {
      v58 = *a1;
      *a1 = *v40;
      *(a1 + 2) = *(a1 + 6);
      *(a1 + 2) = v58;
      *(a1 + 6) = WORD2(v58);
    }
  }

  v65 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v66 = 0;
  v67 = 0;
  while (1)
  {
    v69 = *v38;
    v70 = *(v65 + 4) < *(v38 + 4);
    if (*v65 != v69)
    {
      v70 = *v65 < v69;
    }

    if (v70)
    {
      v71 = *v65;
      v72 = HIDWORD(*v65);
      v73 = v66;
      do
      {
        v74 = a1 + v73;
        *(v74 + 24) = *(a1 + v73 + 16);
        *(v74 + 28) = *(a1 + v73 + 20);
        if (v73 == -16)
        {
          v68 = a1;
          goto LABEL_61;
        }

        v75 = *(v74 + 8);
        v76 = *(v74 + 12) > v72;
        v14 = v75 == v71;
        v77 = v75 > v71;
        if (!v14)
        {
          v76 = v77;
        }

        v73 -= 8;
      }

      while (v76);
      v68 = a1 + v73 + 24;
LABEL_61:
      *v68 = v71;
      *(v68 + 4) = v72;
      *(v68 + 5) = BYTE5(v71);
      if (++v67 == 8)
      {
        return v65 + 1 == a2;
      }
    }

    v38 = v65;
    v66 += 8;
    if (++v65 == a2)
    {
      return 1;
    }
  }
}

char *sub_C14E98(char *a1, char *a2, char *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = (a2 - a1) >> 3;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[8 * v9];
      do
      {
        sub_C1512C(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        v13 = *v12 < *a1;
        if (*v12 == *a1)
        {
          v13 = v12[4] < a1[4];
        }

        if (v13)
        {
          v14 = *v12;
          v15 = *a1;
          *(v12 + 2) = *(a1 + 2);
          *v12 = v15;
          *a1 = v14;
          *(a1 + 2) = WORD2(v14);
          sub_C1512C(a1, a4, v8, a1);
        }

        v12 += 8;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v18 = 0;
        v19 = *a1;
        v20 = a1;
        do
        {
          v27 = &v20[8 * v18];
          v25 = v27 + 8;
          v28 = (2 * v18) | 1;
          v18 = 2 * v18 + 2;
          if (v18 < v8)
          {
            v22 = *(v27 + 4);
            v21 = v27 + 16;
            v23 = *(v21 - 2);
            v24 = v23 < v22;
            if (v23 == v22)
            {
              v24 = *(v21 - 4) < v21[4];
            }

            if (v24)
            {
              v25 = v21;
            }

            else
            {
              v18 = v28;
            }
          }

          else
          {
            v18 = v28;
          }

          v26 = *v25;
          *(v20 + 2) = *(v25 + 2);
          *v20 = v26;
          v20 = v25;
        }

        while (v18 <= ((v8 - 2) >> 1));
        v6 -= 8;
        if (v25 == v6)
        {
          *v25 = v19;
          *(v25 + 2) = WORD2(v19);
        }

        else
        {
          v29 = *v6;
          *(v25 + 2) = *(v6 + 2);
          *v25 = v29;
          *(v6 + 2) = WORD2(v19);
          *v6 = v19;
          v30 = (v25 - a1 + 8) >> 3;
          v17 = v30 < 2;
          v31 = v30 - 2;
          if (!v17)
          {
            v32 = v31 >> 1;
            v33 = &a1[8 * v32];
            v34 = *v33 < *v25;
            if (*v33 == *v25)
            {
              v34 = v33[4] < v25[4];
            }

            if (v34)
            {
              v35 = *v25;
              do
              {
                v36 = v25;
                v25 = v33;
                v37 = *v33;
                *(v36 + 2) = *(v25 + 2);
                *v36 = v37;
                if (!v32)
                {
                  break;
                }

                v32 = (v32 - 1) >> 1;
                v33 = &a1[8 * v32];
                v38 = *v33 < v35;
                if (*v33 == v35)
                {
                  v38 = v33[4] < BYTE4(v35);
                }
              }

              while (v38);
              *v25 = v35;
              v25[4] = BYTE4(v35);
              v25[5] = BYTE5(v35);
            }
          }
        }

        v17 = v8-- <= 2;
      }

      while (!v17);
    }

    return v12;
  }

  return a3;
}

uint64_t sub_C1512C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 3)
    {
      v6 = v4 >> 2;
      v7 = (v4 >> 2) + 1;
      v8 = (result + 8 * v7);
      v9 = v6 + 2;
      if (v6 + 2 >= a3)
      {
        v10 = *v8;
      }

      else
      {
        v10 = *v8;
        v11 = *(v8 + 2);
        v12 = *(v8 + 4) < *(v8 + 12);
        if (*v8 != v11)
        {
          v12 = *v8 < v11;
        }

        if (v12)
        {
          v10 = *(v8++ + 2);
          v7 = v9;
        }
      }

      v13 = v10 == *a4;
      v14 = v10 < *a4;
      if (v13)
      {
        v14 = *(v8 + 4) < *(a4 + 4);
      }

      if (!v14)
      {
        v15 = *a4;
        v16 = BYTE4(*a4);
        do
        {
          v22 = a4;
          a4 = v8;
          v23 = *v8;
          *(v22 + 2) = *(a4 + 2);
          *v22 = v23;
          if (v5 < v7)
          {
            break;
          }

          v24 = (2 * v7) | 1;
          v8 = (result + 8 * v24);
          v7 = 2 * v7 + 2;
          if (v7 < a3)
          {
            v17 = *v8;
            v18 = *(v8 + 2);
            v19 = *(v8 + 4) < *(v8 + 12);
            if (*v8 != v18)
            {
              v19 = *v8 < v18;
            }

            if (v19)
            {
              v17 = *(v8++ + 2);
            }

            else
            {
              v7 = v24;
            }
          }

          else
          {
            v17 = *v8;
            v7 = v24;
          }

          v20 = *(v8 + 4) < v16;
          v13 = v17 == v15;
          v21 = v17 < v15;
          if (!v13)
          {
            v20 = v21;
          }
        }

        while (!v20);
        *a4 = v15;
        *(a4 + 4) = v16;
        *(a4 + 5) = BYTE5(v15);
      }
    }
  }

  return result;
}

void sub_C15280()
{
  v1 = 263;
  strcpy(v0, "unknown");
  v3 = 524;
  strcpy(v2, "good_service");
  v5 = 774;
  strcpy(__p, "delays");
  xmmword_27B3F18 = 0u;
  unk_27B3F28 = 0u;
  dword_27B3F38 = 1065353216;
  sub_C13004(&xmmword_27B3F18, v0, v0);
  sub_C13004(&xmmword_27B3F18, v2, v2);
  sub_C13004(&xmmword_27B3F18, __p, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
    if ((v3 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v1 & 0x80000000) == 0)
      {
        return;
      }

LABEL_7:
      operator delete(v0[0]);
      return;
    }
  }

  else if ((v3 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v2[0]);
  if (v1 < 0)
  {
    goto LABEL_7;
  }
}

void sub_C153E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  sub_23D9C(&xmmword_27B3F18);
  if (a29 < 0)
  {
    operator delete(__p);
    if ((a22 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a15 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a22 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a17);
  if ((a15 & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(a10);
  _Unwind_Resume(a1);
}

uint64_t sub_C15444(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 16);
  if (v2 == v3)
  {
    return result;
  }

  v4 = result;
  v5 = 0;
  do
  {
    result = sub_C15724(v4, v2);
    v5 += result;
    v2 += 296;
  }

  while (v2 != v3);
  if (!v5)
  {
    return result;
  }

  result = sub_7E7E4(2u);
  if (!result)
  {
    return result;
  }

  sub_19594F8(&v12);
  sub_4A5C(&v12, "The transfer preferences algorithm modified ", 44);
  v6 = std::ostream::operator<<();
  sub_4A5C(v6, " trip pairs", 11);
  if ((v22 & 0x10) != 0)
  {
    v8 = v21;
    if (v21 < v18)
    {
      v21 = v18;
      v8 = v18;
    }

    v9 = v17;
    v7 = v8 - v17;
    if (v8 - v17 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_24:
      sub_3244();
    }

LABEL_12:
    if (v7 >= 0x17)
    {
      operator new();
    }

    v11 = v7;
    if (v7)
    {
      memmove(&__p, v9, v7);
    }

    goto LABEL_17;
  }

  if ((v22 & 8) != 0)
  {
    v9 = v15;
    v7 = v16 - v15;
    if ((v16 - v15) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_24;
    }

    goto LABEL_12;
  }

  v7 = 0;
  v11 = 0;
LABEL_17:
  *(&__p + v7) = 0;
  sub_7E854(&__p, 2u);
  if (v11 < 0)
  {
    operator delete(__p);
  }

  if (v20 < 0)
  {
    operator delete(v19);
  }

  std::locale::~locale(&v14);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_C156D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

uint64_t sub_C15724(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = *(a2 + 200);
  v5 = *(a2 + 208);
  if (v4 != v5)
  {
    v6 = *(a2 + 200);
    do
    {
      if (0xCF3CF3CF3CF3CF3DLL * ((v6[1] - *v6) >> 3) >= 2)
      {
        exception = __cxa_allocate_exception(0x40uLL);
        v71 = sub_2D390(exception, "Transfer preferences algorithm called on bundled journey", 0x38uLL);
      }

      v6 += 9;
    }

    while (v6 != v5);
  }

  v7 = 0x8E38E38E38E38E39 * (v5 - v4);
  if (v7 >= 3)
  {
    v8 = 3;
  }

  else
  {
    v8 = v7;
  }

  if (v7 <= 3)
  {
    v7 = 3;
  }

  v9 = (v7 - v8 + 1) & 0xFFFFFFFFFFFFFFFELL;
  if (v9 + v8 != 3)
  {
    v11 = 0;
    v74 = 0;
    v12 = v8 + v9 - 3;
    while (1)
    {
      v13 = *(v2 + 200) + v11;
      v14 = *(v13 + 216);
      if (*(v14 + 160) || (v15 = *(v13 + 72), *(v15 + 160)))
      {
LABEL_72:
        sub_5AF20();
      }

      v16 = sub_A57920((*v3 + 4136), *(v15 + 32));
      v17 = (v16 - *v16);
      if (*v17 >= 0x13u)
      {
        v18 = v17[9];
        if (v18)
        {
          if (*(v16 + v18))
          {
            goto LABEL_15;
          }
        }
      }

      v19 = sub_A57920((*v3 + 4136), *(v14 + 32));
      v20 = (v19 - *v19);
      if (*v20 >= 0x13u)
      {
        v21 = v20[9];
        if (v21)
        {
          if (*(v19 + v21))
          {
            goto LABEL_15;
          }
        }
      }

      sub_C16010(v3, v15, v14, &v93);
      if (vmaxv_u16(vmovn_s32(vceqq_s32(v93, xmmword_22AB730))))
      {
        goto LABEL_15;
      }

      if (v94 == -1)
      {
        goto LABEL_15;
      }

      if (!HIDWORD(v94))
      {
        goto LABEL_15;
      }

      v22 = v93.i32[0];
      v23 = v93.u32[3];
      if (v93.i32[0] == *(v15 + 56) && v93.i32[3] == *(v14 + 52))
      {
        goto LABEL_15;
      }

      v24 = *v3;
      v25 = *(v15 + 32);
      v83 = sub_A56F04((*v3 + 4136), v25, v93.u32[0], *(v15 + 40));
      LODWORD(v84) = v26;
      v27 = sub_A57920((v24 + 4136), v25);
      v28 = (v27 - *v27);
      if (*v28 >= 9u && (v29 = v28[4]) != 0)
      {
        v30 = *(sub_A571D4((v27 + v29 + *(v27 + v29)), v22) + 6);
        if (*(v15 + 44) != -1)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v30 = *(sub_A571D4(0, v22) + 6);
        if (*(v15 + 44) != -1)
        {
LABEL_34:
          v32 = *(v15 + 48);
          v31 = (v24 + 4184);
          goto LABEL_35;
        }
      }

      v31 = (v24 + 4184);
      v32 = 0x7FFFFFFF;
LABEL_35:
      v80 = sub_A56A5C(v31, &v83, v30, v32);
      v78 = v33;
      v34 = *v3;
      v35 = *(v14 + 32);
      v83 = sub_A56F04((*v3 + 4136), v35, v23, *(v14 + 40));
      LODWORD(v84) = v36;
      v37 = sub_A57920((v34 + 4136), v35);
      v38 = (v37 - *v37);
      if (*v38 >= 9u && (v39 = v38[4]) != 0)
      {
        v40 = *(sub_A571D4((v37 + v39 + *(v37 + v39)), v23) + 6);
        if (*(v14 + 44) == -1)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v40 = *(sub_A571D4(0, v23) + 6);
        if (*(v14 + 44) == -1)
        {
LABEL_38:
          v41 = (v34 + 4184);
          v42 = 0x7FFFFFFF;
          goto LABEL_41;
        }
      }

      v42 = *(v14 + 48);
      v41 = (v34 + 4184);
LABEL_41:
      v43 = sub_A56700(v41, &v83, v40, v42);
      v45 = v44;
      v46 = sub_A57920((*v3 + 4136), *(v15 + 32));
      v47 = (v46 - *v46);
      v76 = v45;
      if (*v47 >= 9u && (v48 = v47[4]) != 0)
      {
        v49 = (v46 + v48 + *(v46 + v48));
      }

      else
      {
        v49 = 0;
      }

      v77 = v43;
      v50 = HIDWORD(v43);
      v51 = sub_A571D4(v49, v22)[2];
      v52 = *(v93.u64 + 4);
      v53 = v94;
      v54 = sub_C16234(a1, *(v93.u64 + 4), v94);
      if (v54 == 0x7FFFFFFF || (v54 < 0 ? (v55 = -5) : (v55 = 5), v56 = v54 / 10 + HIDWORD(v80) + (((103 * (v55 + v54 % 10)) >> 15) & 1) + ((103 * (v55 + v54 % 10)) >> 10), v56 > (v50 - v51)))
      {
        if (sub_7E7E4(1u))
        {
          sub_19594F8(&v83);
          v3 = a1;
          v57 = sub_4A5C(&v83, "Timed transfer from from stop ", 30);
          sub_A4FC74((*a1 + 4120), v52);
          v59 = std::ostream::operator<<(v57, v58);
          v60 = sub_4A5C(v59, " to stop ", 9);
          sub_A4FC74((*a1 + 4120), v53);
          v62 = std::ostream::operator<<(v60, v61);
          sub_4A5C(v62, " is claimed to be possible in ", 30);
          v63 = std::ostream::operator<<();
          sub_4A5C(v63, " seconds (using expected times, including buffer durations), but actually requires ", 83);
          v65 = std::ostream::operator<<();
          sub_4A5C(v65, " seconds; dropping it.", 22);
          if ((v92 & 0x10) != 0)
          {
            v67 = v91;
            v68 = &v87;
            if (v91 < v88)
            {
              v91 = v88;
              v67 = v88;
              v68 = &v87;
            }
          }

          else
          {
            if ((v92 & 8) == 0)
            {
              v66 = 0;
              v82 = 0;
LABEL_68:
              *(&__dst + v66) = 0;
              sub_7E854(&__dst, 1u);
              v2 = a2;
              if (v82 < 0)
              {
                operator delete(__dst);
              }

              v83 = *&v73;
              *(&v83 + *(*&v73 - 24)) = v72;
              if (v90 < 0)
              {
                operator delete(__p);
              }

              std::locale::~locale(&v85);
              std::ostream::~ostream();
              std::ios::~ios();
              goto LABEL_15;
            }

            v67 = v86[2];
            v68 = v86;
          }

          v69 = *v68;
          v66 = v67 - *v68;
          if (v66 >= 0x7FFFFFFFFFFFFFF8)
          {
            sub_3244();
          }

          if (v66 >= 0x17)
          {
            operator new();
          }

          v82 = v67 - *v68;
          if (v66)
          {
            memmove(&__dst, v69, v66);
          }

          goto LABEL_68;
        }

        v2 = a2;
      }

      else
      {
        *(v15 + 20) = v80;
        *(v15 + 28) = v78;
        *(v15 + 56) = v22;
        *(v14 + 4) = 10 * v51;
        *(v14 + 8) = v77;
        *(v14 + 16) = v76;
        *(v14 + 52) = v23;
        v2 = a2;
        v64 = *(*(a2 + 200) + v11 + 144);
        if (*(v64 + 160) != 1)
        {
          goto LABEL_72;
        }

        *(v64 + 12) = v52;
        *(v64 + 20) = v53;
        ++v74;
        *(v64 + 4) = HIDWORD(v80);
        *(v64 + 8) = v56;
      }

      v3 = a1;
LABEL_15:
      v11 += 144;
      v12 -= 2;
      if (!v12)
      {
        return v74;
      }
    }
  }

  return 0;
}

void sub_C15F9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  sub_1959728(va);
  _Unwind_Resume(a1);
}

void sub_C15FB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  sub_1959728(va);
  _Unwind_Resume(a1);
}

void sub_C15FC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31)
{
  if (a30 < 0)
  {
    operator delete(__p);
    sub_1959728(&a31);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a31);
  _Unwind_Resume(a1);
}

unint64_t sub_C16010@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_A56F04((*a1 + 4136), *(a2 + 32), *(a2 + 56), *(a2 + 40));
  v9 = sub_A56F04((*a1 + 4136), *(a3 + 32), *(a3 + 52), *(a3 + 40));
  result = sub_C164C4((*a1 + 4152), v8, v9);
  v12 = result;
  v13 = v11;
  if (HIDWORD(result))
  {
    v14 = result == 0xFFFFFFFFLL;
  }

  else
  {
    v14 = 1;
  }

  if (v14 || HIDWORD(v11) == 0 || v11 == 0xFFFFFFFFLL)
  {
    *a4 = xmmword_22AB730;
    *(a4 + 16) = 0xFFFFFFFFLL;
  }

  else
  {
    v17 = *a1;
    v18 = *(a2 + 32);
    v19 = *(a2 + 52);
    v38 = result;
    sub_A79708(v29, v17, v18, v19, 0, 0);
    v35 = v34 + 12 * *(a2 + 40);
    if (v36 == 1)
    {
      v37 = *(a2 + 44);
    }

    if (v33)
    {
      v20 = *(v33 + 4 * ((v31 - v30) >> 4));
    }

    else
    {
      v20 = 0;
    }

    sub_AA98A0(v29, &v38, v20);
    if (v31 < v32 && v31 >= v30)
    {
      v22 = (v31 - v30) >> 4;
    }

    else
    {
      v22 = -1;
    }

    v23 = *a1;
    v24 = *(a3 + 32);
    v25 = *(a3 + 56);
    v38 = v13;
    sub_A79708(v29, v23, v24, v25, 0, 0);
    v35 = v34 + 12 * *(a3 + 40);
    if (v36 == 1)
    {
      v37 = *(a3 + 44);
    }

    if (v33)
    {
      v26 = *(v33 + 4 * ((v31 - v30) >> 4));
    }

    else
    {
      v26 = 0;
    }

    result = sub_AB3DEC(v29, &v38, v26);
    v27 = v31 < v32 && v31 >= v30;
    v28 = (v31 - v30) >> 4;
    if (!v27)
    {
      LODWORD(v28) = -1;
    }

    *a4 = v22;
    *(a4 + 4) = v12;
    *(a4 + 12) = v28;
    *(a4 + 16) = v13;
  }

  return result;
}

uint64_t sub_C16234(uint64_t *a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v4 = HIDWORD(a3);
  if (HIDWORD(a3) == HIDWORD(a2) && a2 == a3)
  {
    if (HIDWORD(a2) == 1 && (a2 + 3) < 2)
    {
      return 0;
    }

    v20 = *(*a1 + 4120);
    if (*(v20 + 17) == 1)
    {
      v21 = sub_A74944(v20 + 24, a2, 0, "transfers at stop");
      v22 = (v21 - *v21);
      if (*v22 < 5u)
      {
        return 0;
      }

      v23 = v22[2];
      if (!v23)
      {
        return 0;
      }
    }

    else
    {
      v21 = sub_502FF8(v20 + 24, __ROR8__(a2, 32), 0, "stop");
      v24 = (v21 - *v21);
      if (*v24 < 0x15u)
      {
        return 300;
      }

      v23 = v24[10];
      if (!v23)
      {
        return 300;
      }
    }

    return (10 * *(v21 + v23));
  }

  sub_A74644(&v25, *a1, a2);
  v6 = v30;
  v7 = v29;
  v8 = v26;
  v9 = v27;
  if (v30)
  {
    v10 = v29;
  }

  else
  {
    v10 = v27;
  }

  if (v26 >= v10)
  {
    return 0x7FFFFFFFLL;
  }

  while (1)
  {
    v13 = __ROR8__(*v8, 32);
    if (v4 == HIDWORD(v13) && v13 == v3)
    {
      return *(v8 + 2);
    }

    v8 = (v8 + 12);
    v26 = v8;
    if (v8 == v9)
    {
      v8 = v28;
      v26 = v28;
      v6 = 1;
      v30 = 1;
    }

    if (v6)
    {
      v15 = v7;
    }

    else
    {
      v15 = v9;
    }

    if (*(v25 + 16) == 1 && v8 < v15)
    {
      while (1)
      {
        v17 = __ROR8__(*v8, 32);
        if (HIDWORD(v17) == 1 && (v17 + 3) < 2)
        {
          break;
        }

        if (sub_2D5204(**(v25 + 4120)))
        {
          v8 = v26;
          v9 = v27;
          v6 = v30;
          break;
        }

        v9 = v27;
        v8 = (v26 + 12);
        v26 = v8;
        if (v8 == v27)
        {
          v8 = v28;
          v26 = v28;
          v6 = 1;
          v30 = 1;
          if (v28 >= v29)
          {
            break;
          }
        }

        else
        {
          v6 = v30;
          if (v30)
          {
            v19 = 32;
          }

          else
          {
            v19 = 16;
          }

          if (v8 >= *(&v25 + v19))
          {
            break;
          }
        }
      }

      v7 = v29;
    }

    if (v6)
    {
      v12 = v7;
    }

    else
    {
      v12 = v9;
    }

    if (v8 >= v12)
    {
      return 0x7FFFFFFFLL;
    }
  }
}

unint64_t sub_C164C4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2C939C(*a1 + 24, HIDWORD(a2), 1);
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = &v5[-*v5];
  if (*v6 < 0x21u)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = *(v6 + 16);
  if (!v7)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *&v5[v7];
  v9 = &v5[v7 + v8];
  v10 = *v9;
  if (!v10)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = 0;
  v12 = 4 * v10;
  v13 = v5;
  v14 = &v5[v7 + v8];
  result = 0xFFFFFFFFLL;
  while (1)
  {
    v16 = *&v9[v11 + 4];
    v17 = v16 - *&v9[v11 + 4 + v16];
    v18 = &v14[v11 + v17];
    v19 = *(v18 + 2);
    if (v19 >= 5 && (v20 = *(v18 + 4)) != 0)
    {
      if ((*&v14[v11 + 8 + v16 + v20] | (*&v14[v11 + 4 + v16 + v20] << 32)) != a2)
      {
        goto LABEL_16;
      }
    }

    else if (a2 != 0xFFFFFFFFLL)
    {
      goto LABEL_16;
    }

    if (v19 >= 7 && *&v14[v11 + 10 + v17])
    {
      break;
    }

    if (a3 == 0xFFFFFFFFLL)
    {
      goto LABEL_18;
    }

LABEL_16:
    v11 += 4;
    if (v12 == v11)
    {
      return result;
    }
  }

  if ((*&v14[v11 + 8 + v16 + *&v14[v11 + 10 + v17]] | (*&v14[v11 + 4 + v16 + *&v14[v11 + 10 + v17]] << 32)) != a3)
  {
    goto LABEL_16;
  }

LABEL_18:
  if (v19 < 9)
  {
    return 0xFFFFFFFFLL;
  }

  v21 = &v13[v7 + v8 + v11];
  if (*&v21[v17 + 12])
  {
    return *&v21[*&v21[v17 + 12] + 8 + v16] | (*&v21[*&v21[v17 + 12] + 4 + v16] << 32);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void sub_C16698(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  if (v4)
  {
    if (v4 == a3)
    {
      *(a1 + 24) = a1;
      (*(**(a3 + 24) + 24))(*(a3 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v4 + 16))(v4, a2);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  operator new();
}

void sub_C1687C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_A31E68(v14);
    _Unwind_Resume(a1);
  }

  sub_A31E68(v14);
  _Unwind_Resume(a1);
}

uint64_t sub_C16900(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 16);
  if (v2 != v3)
  {
    v4 = result;
    do
    {
      result = sub_C1694C(v4, v2);
      v2 += 296;
    }

    while (v2 != v3);
  }

  return result;
}

uint64_t sub_C1694C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_2B7420();
  }

  result = (*(*v3 + 48))(v3);
  if (result)
  {
    v6 = *(a2 + 200);
    v7 = *(a2 + 208);
    while (v6 != v7)
    {
      if (!*(v6 + 24))
      {
        v9 = *v6;
        v10 = *(v6 + 8);
        if (*v6 != v10)
        {
          do
          {
            if (*(v9 + 160))
            {
              goto LABEL_21;
            }

            result = sub_C16A44(a1, v9);
            *(v9 + 159) = result;
            v9 += 168;
          }

          while (v9 != v10);
          v9 = *v6;
          v10 = *(v6 + 8);
        }

        if (v9 != v10)
        {
          v11 = v9 + 168;
          while (!*(v11 - 8))
          {
            v8 = *(v11 - 9);
            if (v8)
            {
              v12 = v11 == v10;
              v11 += 168;
              if (!v12)
              {
                continue;
              }
            }

            goto LABEL_5;
          }

LABEL_21:
          sub_5AF20();
        }

        v8 = 1;
LABEL_5:
        *(v6 + 70) = v8 & 1;
      }

      v6 += 72;
    }
  }

  return result;
}

uint64_t sub_C16A44(uint64_t a1, uint64_t a2)
{
  v60 = *(a2 + 4 * (*(a2 + 12) != 0x7FFFFFFF) + 8);
  v59 = *(a1 + 36);
  if (v59 < 0)
  {
    v3 = -5;
  }

  else
  {
    v3 = 5;
  }

  v57 = v3;
  v58 = *(a1 + 32);
  if (v58 < 0)
  {
    v4 = -5;
  }

  else
  {
    v4 = 5;
  }

  v56 = v4;
  v5 = *(a2 + 52);
  v6 = sub_A57920((*(a1 + 48) + 4136), *(a2 + 32));
  v7 = (v6 - *v6);
  if (*v7 >= 9u && (v8 = v7[4]) != 0)
  {
    v9 = (v6 + v8 + *(v6 + v8));
  }

  else
  {
    v9 = 0;
  }

  v10 = *sub_A571D4(v9, v5);
  v11 = *(a2 + 52);
  v12 = sub_A57920((*(a1 + 48) + 4136), *(a2 + 32));
  v13 = (v12 - *v12);
  v14 = *v13;
  v62 = v10;
  if (v14 < 5)
  {
    v15 = 0;
    goto LABEL_16;
  }

  if (!v13[2])
  {
    v15 = 0;
    if (v14 >= 9)
    {
      goto LABEL_93;
    }

LABEL_16:
    v16 = 0;
    goto LABEL_17;
  }

  v15 = v12 + v13[2] + *(v12 + v13[2]);
  if (v14 < 9)
  {
    goto LABEL_16;
  }

LABEL_93:
  v55 = v13[4];
  if (!v55)
  {
    goto LABEL_16;
  }

  v16 = (v12 + v55 + *(v12 + v55));
LABEL_17:
  v61 = *&v15[8 * *(sub_A571D4(v16, v11) + 14) + 4];
  v63 = sub_BD5F34((*(a1 + 48) + 4136), *(a2 + 32), *(a2 + 52));
  v81 = 0u;
  v82 = 0u;
  v83 = 1065353216;
  v17 = *(a2 + 64);
  if (v17 == *(a2 + 72))
  {
    sub_A7905C(v76, *(a1 + 48), __ROR8__(v10, 32), 0, 0, 0);
    v18 = v79;
    if (v79 >= v80)
    {
      goto LABEL_85;
    }

    v19 = -103 * (v57 + v59 - 10 * (((1717986919 * v59) >> 34) + (1717986919 * v59 < 0)));
    v20 = 103 * (v56 + v58 % 10);
    v21 = v59 / -10 + v60 + ((v19 >> 15) & 1) + (v19 >> 10);
    v22 = v58 / 10 + v60 + ((v20 >> 15) & 1) + (v20 >> 10);
    while (1)
    {
      sub_A79708(&v67, *(a1 + 48), __ROR8__(*v18, 32), *(v18 + 8), 0, 0);
      v24 = v70;
      v23 = v71;
      if (v71 >= v70 && v71 < v72)
      {
        break;
      }

LABEL_28:
      v26 = v80;
      v18 = v79 + 16;
      v79 = v18;
      if (v18 == v80)
      {
        v27 = i + 2;
        for (i = v27; v27 < v78; i = v27)
        {
          v18 = *v27;
          v26 = v27[1];
          if (*v27 != v26)
          {
            v79 = *v27;
            v80 = v26;
            goto LABEL_78;
          }

          v27 += 2;
        }

LABEL_85:
        v50 = 1;
        v51 = v82;
        if (!v82)
        {
          goto LABEL_87;
        }

        goto LABEL_86;
      }

LABEL_78:
      while (v18 < v26)
      {
        v46 = sub_A795E8(v76);
        v18 = v79;
        v26 = v80;
        if (!v46)
        {
          break;
        }

        v18 = v79 + 16;
        v79 = v18;
        if (v18 == v80)
        {
          v47 = i;
          while (1)
          {
            v47 += 2;
            i = v47;
            if (v47 >= v78)
            {
              goto LABEL_22;
            }

            v48 = *v47;
            v49 = v47[1];
            if (*v47 != v49)
            {
              v79 = *v47;
              v80 = v49;
              v26 = v49;
              v18 = v48;
              goto LABEL_78;
            }
          }
        }
      }

LABEL_22:
      if (v18 >= v26)
      {
        goto LABEL_85;
      }
    }

    while (1)
    {
      v28 = v23 - v24;
      v29 = (v23 - v24) >> 4;
      if (v29 > *(v79 + 10))
      {
        goto LABEL_28;
      }

      if (*v23 == v62 && (*(v23 + 15) & 2) != 0)
      {
        break;
      }

LABEL_57:
      v24 = v70;
      v23 = v71 + 16;
      v71 += 16;
      if (*(v67 + 16) == 1 && (v68 & 1) == 0 && v23 >= v70 && v23 < v72)
      {
        do
        {
          v42 = __ROR8__(*v23, 32);
          if (HIDWORD(v42) == 1 && (v42 + 3) < 2)
          {
            break;
          }

          v44 = sub_2D5204(**(v67 + 4120));
          v24 = v70;
          v23 = v71;
          if (v44)
          {
            break;
          }

          v23 = v71 + 16;
          v71 = v23;
        }

        while (v23 >= v70 && v23 < v72);
      }

      if (v23 < v24 || v23 >= v72)
      {
        goto LABEL_28;
      }
    }

    v30 = __ROR8__(*v79, 32);
    v31 = sub_A57920((*(a1 + 48) + 4136), v30);
    v32 = (v31 - *v31);
    v33 = *v32;
    if (v33 < 5)
    {
      v34 = 0;
      goto LABEL_41;
    }

    if (v32[2])
    {
      v34 = v31 + v32[2] + *(v31 + v32[2]);
      if (v33 < 9)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v34 = 0;
      if (v33 < 9)
      {
        goto LABEL_41;
      }
    }

    v37 = v32[4];
    if (v37)
    {
      v35 = (v31 + v37 + *(v31 + v37));
LABEL_42:
      if (*&v34[8 * *(sub_A571D4(v35, v29) + 14) + 4] == v61 && ((*(a1 + 40) & 1) != 0 || sub_BD5F34((*(a1 + 48) + 4136), v30, v28 >> 4) == v63))
      {
        if (v74 == 1 ? sub_A7A1E8(*(a1 + 48), &v67, v21, 2u) : sub_A7A710(&v67, v21, 1))
        {
          v38 = (v69 + *(v69 - *v69 + 6));
          v39 = v38 + *v38;
          v40 = v74 ? &v75 : v73;
          if (*&v39[8 * *(v73 + 1) + 8 + 8 * ((v71 - v70) >> 4)] + *v40 <= v22)
          {
            v65 = v30;
            v66 = v29;
            if (!sub_C175B0(&v81, &v65))
            {
              goto LABEL_90;
            }
          }
        }
      }

      goto LABEL_57;
    }

LABEL_41:
    v35 = 0;
    goto LABEL_42;
  }

  if (sub_BD5F34((*(a1 + 48) + 4136), *(v17 + 28), *(v17 + 48)) == v63)
  {
    operator new();
  }

LABEL_90:
  v50 = 0;
  v51 = v82;
  if (v82)
  {
    do
    {
LABEL_86:
      v52 = *v51;
      operator delete(v51);
      v51 = v52;
    }

    while (v52);
  }

LABEL_87:
  v53 = v81;
  *&v81 = 0;
  if (v53)
  {
    operator delete(v53);
  }

  return v50;
}

void sub_C171AC(_Unwind_Exception *a1)
{
  operator delete(v1);
  sub_11BD8(v2 - 128);
  _Unwind_Resume(a1);
}

uint64_t *sub_C171F0(uint64_t *a1, uint64_t a2)
{
  v4 = (a2 + 16);
  v5 = 0xFF51AFD7ED558CCDLL * (*(a2 + 16) ^ (*(a2 + 16) >> 33));
  v6 = (((0xC4CEB9FE1A85EC53 * (v5 ^ (v5 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v5 ^ (v5 >> 33))) >> 33)) + 0x388152A534) ^ 0xDEADBEEF;
  v7 = (*(a2 + 24) + (v6 << 6) + (v6 >> 2) + 2654435769u) ^ v6;
  *(v4 - 1) = v7;
  result = sub_C1735C(a1, v7, v4);
  if (!result)
  {
    v9 = a1[1];
    v10 = *(a2 + 8);
    v11 = vcnt_s8(v9);
    v11.i16[0] = vaddlv_u8(v11);
    if (v11.u32[0] > 1uLL)
    {
      if (v10 >= *&v9)
      {
        v10 %= *&v9;
      }
    }

    else
    {
      v10 &= *&v9 - 1;
    }

    v12 = *a1;
    v13 = *(*a1 + 8 * v10);
    if (v13)
    {
      *a2 = *v13;
    }

    else
    {
      *a2 = a1[2];
      a1[2] = a2;
      *(v12 + 8 * v10) = a1 + 2;
      if (!*a2)
      {
        goto LABEL_9;
      }

      v14 = *(*a2 + 8);
      if (v11.u32[0] > 1uLL)
      {
        if (v14 >= *&v9)
        {
          v14 %= *&v9;
        }

        v13 = (v12 + 8 * v14);
      }

      else
      {
        v13 = (v12 + 8 * (v14 & (*&v9 - 1)));
      }
    }

    *v13 = a2;
LABEL_9:
    ++a1[3];
    return a2;
  }

  return result;
}

uint64_t *sub_C1735C(uint64_t a1, unint64_t a2, int *a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    goto LABEL_34;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    if (v3 <= a2)
    {
      v5 = a2 % v3;
    }

    else
    {
      v5 = a2;
    }

    v6 = *(*a1 + 8 * v5);
    if (!v6)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = (v3 - 1) & a2;
    v6 = *(*a1 + 8 * v5);
    if (!v6)
    {
      goto LABEL_34;
    }
  }

  v7 = *v6;
  if (v7)
  {
    v9 = *a3;
    v8 = a3[1];
    v10 = a3[2];
    if (v4.u32[0] < 2uLL)
    {
      while (1)
      {
        v11 = v7[1];
        if (v11 == a2)
        {
          v12 = *(v7 + 5) == v8 && *(v7 + 4) == v9;
          if (v12 && *(v7 + 6) == v10)
          {
            return v7;
          }
        }

        else if ((v11 & (v3 - 1)) != v5)
        {
          goto LABEL_34;
        }

        v7 = *v7;
        if (!v7)
        {
          goto LABEL_34;
        }
      }
    }

    do
    {
      v13 = v7[1];
      if (v13 == a2)
      {
        v14 = *(v7 + 5) == v8 && *(v7 + 4) == v9;
        if (v14 && *(v7 + 6) == v10)
        {
          return v7;
        }
      }

      else
      {
        if (v13 >= v3)
        {
          v13 %= v3;
        }

        if (v13 != v5)
        {
          break;
        }
      }

      v7 = *v7;
    }

    while (v7);
  }

LABEL_34:
  v15 = (*(a1 + 24) + 1);
  v16 = *(a1 + 32);
  if (v3 && (v16 * v3) >= v15)
  {
    return 0;
  }

  v17 = 1;
  if (v3 >= 3)
  {
    v17 = (v3 & (v3 - 1)) != 0;
  }

  v18 = v17 | (2 * v3);
  v19 = vcvtps_u32_f32(v15 / v16);
  if (v18 <= v19)
  {
    prime = v19;
  }

  else
  {
    prime = v18;
  }

  if (prime == 1)
  {
    prime = 2;
  }

  else if ((prime & (prime - 1)) != 0)
  {
    v21 = a1;
    prime = std::__next_prime(prime);
    a1 = v21;
    v3 = *(v21 + 8);
  }

  if (prime <= v3)
  {
    if (prime >= v3)
    {
      return 0;
    }

    v22 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (v3 < 3 || (v23 = vcnt_s8(v3), v23.i16[0] = vaddlv_u8(v23), v23.u32[0] > 1uLL))
    {
      v25 = a1;
      v26 = prime;
      v27 = std::__next_prime(v22);
      a1 = v25;
      if (v26 <= v27)
      {
        prime = v27;
      }

      else
      {
        prime = v26;
      }

      if (prime >= v3)
      {
        return 0;
      }
    }

    else
    {
      v24 = 1 << -__clz(v22 - 1);
      if (v22 >= 2)
      {
        v22 = v24;
      }

      if (prime <= v22)
      {
        prime = v22;
      }

      if (prime >= v3)
      {
        return 0;
      }
    }
  }

  sub_B07C(a1, prime);
  return 0;
}

uint64_t *sub_C175B0(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = 0xFF51AFD7ED558CCDLL * (*a2 ^ (*a2 >> 33));
  v5 = (((0xC4CEB9FE1A85EC53 * (v4 ^ (v4 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v4 ^ (v4 >> 33))) >> 33)) + 0x388152A534) ^ 0xDEADBEEF;
  v6 = *(a2 + 2);
  v7 = (v6 + (v5 << 6) + (v5 >> 2) + 2654435769u) ^ v5;
  v8 = vcnt_s8(v2);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = v7;
    if (v7 >= *&v2)
    {
      v9 = v7 % *&v2;
    }
  }

  else
  {
    v9 = v7 & (*&v2 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  result = *v10;
  if (*v10)
  {
    if (v8.u32[0] < 2uLL)
    {
      v12 = *&v2 - 1;
      while (1)
      {
        v13 = result[1];
        if (v7 == v13)
        {
          v14 = *(result + 5) == HIDWORD(v3) && *(result + 4) == v3;
          if (v14 && *(result + 6) == v6)
          {
            return result;
          }
        }

        else if ((v13 & v12) != v9)
        {
          return 0;
        }

        result = *result;
        if (!result)
        {
          return result;
        }
      }
    }

    do
    {
      v15 = result[1];
      if (v7 == v15)
      {
        v16 = *(result + 5) == HIDWORD(v3) && *(result + 4) == v3;
        if (v16 && *(result + 6) == v6)
        {
          return result;
        }
      }

      else
      {
        if (v15 >= *&v2)
        {
          v15 %= *&v2;
        }

        if (v15 != v9)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

_DWORD *sub_C17720(_DWORD *a1, void *a2)
{
  v19 = 9;
  strcpy(__p, "algorithm");
  v3 = sub_5F8FC(a2, __p);
  if (*(v3 + 23) < 0)
  {
    v5 = v3[1];
    if (v5 != 12)
    {
      if (v5 != 13)
      {
        goto LABEL_27;
      }

      v4 = *v3;
      goto LABEL_8;
    }

    if (**v3 != 0x756F6A5F706F7264 || *(*v3 + 8) != 2036690546)
    {
LABEL_27:
      exception = __cxa_allocate_exception(0x40uLL);
      std::operator+<char>();
      v13 = std::string::append(&v20, " provided in configuration", 0x1BuLL);
      v14 = *&v13->__r_.__value_.__l.__data_;
      v22 = v13->__r_.__value_.__r.__words[2];
      v21 = v14;
      v13->__r_.__value_.__l.__size_ = 0;
      v13->__r_.__value_.__r.__words[2] = 0;
      v13->__r_.__value_.__r.__words[0] = 0;
      if (v22 >= 0)
      {
        v15 = &v21;
      }

      else
      {
        v15 = v21;
      }

      if (v22 >= 0)
      {
        v16 = HIBYTE(v22);
      }

      else
      {
        v16 = *(&v21 + 1);
      }

      v17 = sub_2D390(exception, v15, v16);
    }
  }

  else
  {
    if (*(v3 + 23) != 12)
    {
      v4 = v3;
      if (*(v3 + 23) != 13)
      {
        goto LABEL_27;
      }

LABEL_8:
      v6 = *v4;
      v7 = *(v4 + 5);
      if (v6 != 0x7365725F706F7264 || v7 != 0x65736E6F70736572)
      {
        goto LABEL_27;
      }

      *a1 = 1;
      if (v19 < 0)
      {
        goto LABEL_22;
      }

      return a1;
    }

    if (*v3 != 0x756F6A5F706F7264 || *(v3 + 2) != 2036690546)
    {
      goto LABEL_27;
    }
  }

  *a1 = 0;
  if ((v19 & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_22:
  operator delete(__p[0]);
  return a1;
}

void sub_C1791C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a14 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  if ((a14 & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(a9);
  _Unwind_Resume(exception_object);
}

void sub_C179B4(_DWORD *a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    v6 = *(a2 + 8);
    v7 = *(a2 + 16);
    v8 = a2 + 8;
    if (v6 == v7)
    {
      return;
    }

    v9 = &v7[-v6 - 296];
    if (v9 >= 0x128)
    {
      v13 = 0;
      v14 = 0;
      v15 = v9 / 0x128 + 1;
      v11 = (v6 + 296 * (v15 & 0x1FFFFFFFFFFFFFELL));
      v16 = v6;
      v17 = v15 & 0x1FFFFFFFFFFFFFELL;
      do
      {
        v13 += *v16;
        v14 += v16[296];
        v16 += 592;
        v17 -= 2;
      }

      while (v17);
      v10 = v14 + v13;
      if (v15 == (v15 & 0x1FFFFFFFFFFFFFELL))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v10 = 0;
      v11 = v6;
    }

    do
    {
      v10 += *v11;
      v11 += 296;
    }

    while (v11 != v7);
LABEL_20:
    if (!v10)
    {
      return;
    }

    v18 = v8;

    goto LABEL_23;
  }

  if (!*a1)
  {
    v3 = *(a2 + 8);
    v5 = *(a2 + 16);
    v4 = a2 + 8;
    if (v3 != v5)
    {
      while ((*v3 & 1) == 0)
      {
        v3 = (v3 + 296);
        if (v3 == v5)
        {
          return;
        }
      }

      if (v3 != v5)
      {
        v12 = (v3 + 296);
        if ((v3 + 296) != v5)
        {
          do
          {
            if ((*v12 & 1) == 0)
            {
              sub_BA9EF8(v3, v12);
              v3 = (v3 + 296);
            }

            v12 = (v12 + 296);
          }

          while (v12 != v5);
          v5 = *(a2 + 16);
        }
      }
    }

    if (v3 != v5)
    {
      v18 = v4;
      v6 = v3;

LABEL_23:
      sub_A32000(v18, v6);
    }
  }
}

uint64_t sub_C17BB4(uint64_t result, int *a2, uint64_t a3)
{
  v3 = *(a3 + 48);
  for (i = *(a3 + 56); v3 != i; v3 += 248)
  {
    v6 = *(v3 + 224);
    v5 = *(v3 + 232);
    if (v6 != v5)
    {
      v7 = *(*result + 11688);
      v8 = *a2;
      while (1)
      {
        v9 = *v6;
        if (*(v6 + 4) == 1)
        {
          v10 = v7[1];
          v11 = v7[2];
        }

        else
        {
          v10 = v7[4];
          v11 = v7[5];
        }

        if (0x823EE08FB823EE09 * ((v11 - v10) >> 3) <= v9)
        {
LABEL_43:
          sub_6FAB4();
        }

        v12 = v10 + 456 * v9;
        v13 = *(v12 + 404);
        if (v13 != 0x7FFFFFFF && v13 > v8)
        {
          break;
        }

        v15 = *(v12 + 408);
        if (v15 != 0x7FFFFFFF && v15 < v8)
        {
          break;
        }

        v6 += 2;
        if (v6 == v5)
        {
          goto LABEL_3;
        }
      }

      if (v6 != v5)
      {
        v17 = v6 + 2;
        if (v6 + 2 != v5)
        {
          do
          {
            v18 = *v17;
            v19 = *(*result + 11688);
            if (*(v17 + 4) == 1)
            {
              v22 = v19 + 8;
              v20 = *(v19 + 8);
              v21 = *(v22 + 8);
            }

            else
            {
              v23 = v19 + 32;
              v20 = *(v19 + 32);
              v21 = *(v23 + 8);
            }

            if (0x823EE08FB823EE09 * ((v21 - v20) >> 3) <= v18)
            {
              goto LABEL_43;
            }

            v24 = v20 + 456 * v18;
            v25 = *(v24 + 404);
            v26 = *a2;
            if (v25 == 0x7FFFFFFF || v25 <= v26)
            {
              v28 = *(v24 + 408);
              if (v28 == 0x7FFFFFFF || v28 >= v26)
              {
                v30 = *v17;
                *(v6 + 4) = *(v17 + 4);
                *v6 = v30;
                v6 += 2;
              }
            }

            v17 += 2;
          }

          while (v17 != v5);
          v5 = *(v3 + 232);
        }
      }
    }

    if (v6 != v5)
    {
      *(v3 + 232) = v6;
    }

LABEL_3:
    ;
  }

  return result;
}

__int128 *sub_C17D78(double *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v5 = *(a2 + 16);
  v4 = a2 + 8;
  v6 = 0x14C1BACF914C1BADLL * ((v5 - v3) >> 3);
  if (v5 == v3)
  {
LABEL_9:
    v10 = *(a2 + 16);
  }

  else
  {
    v8 = (v3 + 296);
    while (*(v8 - 18) <= *a1 && *(v8 - 16) <= a1[1] && *(v8 - 15) <= a1[2] && *(v8 - 14) <= a1[3])
    {
      v9 = v8 == v5;
      v8 = (v8 + 296);
      if (v9)
      {
        goto LABEL_9;
      }
    }

    v11 = v8 - 296;
    if ((v8 - 296) == v5 || v8 == v5)
    {
      v10 = *(a2 + 16);
    }

    else
    {
      do
      {
        if (*(v8 + 19) <= *a1 && *(v8 + 21) <= a1[1] && *(v8 + 22) <= a1[2] && *(v8 + 23) <= a1[3])
        {
          sub_BA9EF8(v11, v8);
          v11 += 296;
        }

        v8 = (v8 + 296);
      }

      while (v8 != v5);
      v10 = *(a2 + 16);
    }

    v5 = v11;
  }

  result = sub_C18160(v4, v5, v10);
  if (v6 > 0x14C1BACF914C1BADLL * ((*(a2 + 16) - *(a2 + 8)) >> 3))
  {
    result = sub_7E7E4(2u);
    if (result)
    {
      sub_19594F8(&v19);
      sub_4A5C(&v19, "The criteria threshold filter removed ", 38);
      v13 = std::ostream::operator<<();
      sub_4A5C(v13, " journeys", 9);
      if ((v29 & 0x10) != 0)
      {
        v15 = v28;
        if (v28 < v25)
        {
          v28 = v25;
          v15 = v25;
        }

        v16 = v24;
        v14 = v15 - v24;
        if (v15 - v24 >= 0x7FFFFFFFFFFFFFF8)
        {
          goto LABEL_41;
        }
      }

      else
      {
        if ((v29 & 8) == 0)
        {
          v14 = 0;
          v18 = 0;
LABEL_34:
          *(&__p + v14) = 0;
          sub_7E854(&__p, 2u);
          if (v18 < 0)
          {
            operator delete(__p);
          }

          if (v27 < 0)
          {
            operator delete(v26);
          }

          std::locale::~locale(&v21);
          std::ostream::~ostream();
          return std::ios::~ios();
        }

        v16 = v22;
        v14 = v23 - v22;
        if ((v23 - v22) >= 0x7FFFFFFFFFFFFFF8)
        {
LABEL_41:
          sub_3244();
        }
      }

      if (v14 >= 0x17)
      {
        operator new();
      }

      v18 = v14;
      if (v14)
      {
        memmove(&__p, v16, v14);
      }

      goto LABEL_34;
    }
  }

  return result;
}

void sub_C1811C(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  if (SHIBYTE(a11) < 0)
  {
    operator delete(a9);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

__int128 *sub_C18160(uint64_t a1, __int128 *a2, __int128 *a3)
{
  if (a3 != a2)
  {
    v3 = a3;
    v4 = *(a1 + 8);
    v22 = a2;
    if (a3 == v4)
    {
      v6 = a2;
      if (v4 == a2)
      {
LABEL_34:
        a2 = v22;
        *(a1 + 8) = v6;
        return a2;
      }
    }

    else
    {
      v6 = a2;
      do
      {
        sub_BA9EF8(v6, v3);
        v3 = (v3 + 296);
        v6 += 296;
      }

      while (v3 != v4);
      v4 = *(a1 + 8);
      if (v4 == v6)
      {
        goto LABEL_34;
      }
    }

    do
    {
      v7 = *(v4 - 3);
      if (v7)
      {
        *(v4 - 2) = v7;
        operator delete(v7);
      }

      v8 = *(v4 - 6);
      if (v8)
      {
        *(v4 - 5) = v8;
        operator delete(v8);
      }

      v9 = *(v4 - 9);
      if (v9)
      {
        *(v4 - 8) = v9;
        operator delete(v9);
      }

      v10 = *(v4 - 12);
      if (v10)
      {
        v11 = *(v4 - 11);
        v12 = *(v4 - 12);
        if (v11 != v10)
        {
          do
          {
            v14 = *(v11 - 5);
            if (v14)
            {
              *(v11 - 4) = v14;
              operator delete(v14);
            }

            v15 = v11 - 9;
            v16 = *(v11 - 9);
            if (v16)
            {
              v17 = *(v11 - 8);
              v13 = *(v11 - 9);
              if (v17 != v16)
              {
                do
                {
                  v18 = v17 - 168;
                  v19 = *(v17 - 2);
                  if (v19 != -1)
                  {
                    (off_26726E8[v19])(&v23, v17 - 168);
                  }

                  *(v17 - 2) = -1;
                  v17 -= 168;
                }

                while (v18 != v16);
                v13 = *v15;
              }

              *(v11 - 8) = v16;
              operator delete(v13);
            }

            v11 -= 9;
          }

          while (v15 != v10);
          v12 = *(v4 - 12);
        }

        *(v4 - 11) = v10;
        operator delete(v12);
      }

      if (*(v4 - 161) < 0)
      {
        operator delete(*(v4 - 23));
      }

      v4 = (v4 - 296);
    }

    while (v4 != v6);
    goto LABEL_34;
  }

  return a2;
}

double sub_C18314(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 1065353216;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 1065353216;
  return result;
}

__int128 *sub_C18338(void *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v73 = a2 + 8;
  v3 = *(a2 + 16);
  v4 = v3 - v2;
  if (v3 != v2)
  {
    v72 = v3 - v2;
    v75 = *(a2 + 16);
    do
    {
      if (a1[9])
      {
        v6 = a1[8];
        if (v6)
        {
          do
          {
            v7 = *v6;
            operator delete(v6);
            v6 = v7;
          }

          while (v7);
        }

        a1[8] = 0;
        v8 = a1[7];
        if (v8)
        {
          bzero(a1[6], 8 * v8);
        }

        a1[9] = 0;
      }

      if (a1[4])
      {
        v9 = a1[3];
        if (v9)
        {
          do
          {
            v10 = *v9;
            operator delete(v9);
            v9 = v10;
          }

          while (v10);
        }

        a1[3] = 0;
        v11 = a1[2];
        if (v11)
        {
          bzero(a1[1], 8 * v11);
        }

        a1[4] = 0;
      }

      v13 = *(v2 + 200);
      v12 = *(v2 + 208);
      if (v13 != v12)
      {
        for (i = *(v2 + 200); i != v12; i += 9)
        {
          if (!*(i + 24))
          {
            v15 = *i;
            if (*(*i + 160))
            {
              sub_5AF20();
            }

            v16 = *(v15 + 52);
            v17 = sub_A57920((*a1 + 4136), *(v15 + 32));
            v18 = (v17 - *v17);
            if (*v18 >= 9u && (v19 = v18[4]) != 0)
            {
              v20 = (v17 + v19 + *(v17 + v19));
            }

            else
            {
              v20 = 0;
            }

            v90 = __ROR8__(*sub_A571D4(v20, v16), 32);
            sub_BC460C(a1 + 1, &v90, &v90);
            v21 = *(*a1 + 4120);
            v22 = __ROR8__(v90, 32);
            v91 = "stop";
            v92[0] = &v93;
            v93 = 0;
            v94 = v22;
            v92[1] = &v94;
            v23 = *(v21 + 3880) + 1;
            *(v21 + 3880) = v23;
            v24 = *(v21 + 24);
            if (!v24)
            {
              exception = __cxa_allocate_exception(0x40uLL);
              v95 = v94;
              __dst = sub_7FCF0(6u);
              v77 = v58;
              sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &__dst, &v79);
              if (SHIBYTE(v81.__locale_) >= 0)
              {
                v59 = &v79;
              }

              else
              {
                v59 = *&v79;
              }

              if (SHIBYTE(v81.__locale_) >= 0)
              {
                locale_high = HIBYTE(v81.__locale_);
              }

              else
              {
                locale_high = v80;
              }

              v61 = sub_2D390(exception, v59, locale_high);
            }

            if (*(v21 + 616) == v22)
            {
              ++*(v21 + 3888);
              *(v21 + 624) = v23;
              v25 = *(v21 + 632);
              if (!v25)
              {
                goto LABEL_112;
              }
            }

            else if (*(v21 + 640) == v22)
            {
              ++*(v21 + 3888);
              *(v21 + 648) = v23;
              v25 = *(v21 + 656);
              if (!v25)
              {
                goto LABEL_112;
              }
            }

            else if (*(v21 + 664) == v22)
            {
              ++*(v21 + 3888);
              *(v21 + 672) = v23;
              v25 = *(v21 + 680);
              if (!v25)
              {
                goto LABEL_112;
              }
            }

            else if (*(v21 + 688) == v22)
            {
              ++*(v21 + 3888);
              *(v21 + 696) = v23;
              v25 = *(v21 + 704);
              if (!v25)
              {
LABEL_112:
                v62 = __cxa_allocate_exception(0x40uLL);
                v95 = v94;
                __dst = sub_7FCF0(6u);
                v77 = v63;
                sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &__dst, &v79);
                if (SHIBYTE(v81.__locale_) >= 0)
                {
                  v64 = &v79;
                }

                else
                {
                  v64 = *&v79;
                }

                if (SHIBYTE(v81.__locale_) >= 0)
                {
                  v65 = HIBYTE(v81.__locale_);
                }

                else
                {
                  v65 = v80;
                }

                v66 = sub_2D390(v62, v64, v65);
              }
            }

            else
            {
              v26 = *(v21 + 672);
              v27 = *(v21 + 648);
              v28 = *(v21 + 624);
              v29 = v28 >= v23;
              if (v28 < v23)
              {
                v23 = *(v21 + 624);
              }

              v30 = 24;
              if (v29)
              {
                v30 = 0;
              }

              v31 = v27 >= v23;
              if (v27 < v23)
              {
                v23 = *(v21 + 648);
              }

              v32 = 25;
              if (v31)
              {
                v32 = v30;
              }

              if (v26 >= v23)
              {
                v33 = v23;
              }

              else
              {
                v33 = *(v21 + 672);
              }

              v34 = *(v21 + 696);
              if (v26 >= v23)
              {
                v35 = v32;
              }

              else
              {
                v35 = 26;
              }

              v25 = sub_2D52A4(v24, 6, v22, 1);
              v29 = v34 >= v33;
              v3 = v75;
              v36 = 27;
              if (v29)
              {
                v36 = v35;
              }

              v37 = v21 + 40 + 24 * v36;
              *v37 = v94;
              *(v37 + 8) = *(v21 + 3880);
              *(v37 + 16) = v25;
              if (!v25)
              {
                sub_2C9894(v92);
LABEL_120:
                v67 = __cxa_allocate_exception(0x40uLL);
                v95 = HIDWORD(v22);
                LODWORD(v92[0]) = v22;
                __dst = sub_7FCF0(6u);
                v77 = v68;
                sub_2C956C("Failed to acquire entity ", &v91, " in quad node ", " at position ", " on layer ", &__dst, &v79);
                if (SHIBYTE(v81.__locale_) >= 0)
                {
                  v69 = &v79;
                }

                else
                {
                  v69 = *&v79;
                }

                if (SHIBYTE(v81.__locale_) >= 0)
                {
                  v70 = HIBYTE(v81.__locale_);
                }

                else
                {
                  v70 = v80;
                }

                v71 = sub_2D390(v67, v69, v70);
              }
            }

            v38 = (v25 + *v25);
            v39 = (v38 - *v38);
            if (*v39 < 0x1Du)
            {
              goto LABEL_120;
            }

            v40 = v39[14];
            if (!v40)
            {
              goto LABEL_120;
            }

            v41 = (v38 + v40 + *(v38 + v40));
            if (*v41 <= HIDWORD(v22))
            {
              goto LABEL_120;
            }

            v42 = (&v41[HIDWORD(v22) + 1] + v41[HIDWORD(v22) + 1]);
            v43 = (v42 - *v42);
            if (*v43 >= 0xDu)
            {
              v44 = v43[6];
              if (v44)
              {
                v47 = (v42 + v44);
                v45 = *v47;
                v46 = v47[1];
                *&v79 = v46 | (v45 << 32);
                v48 = v46 == -1 || v45 == 0;
                if (!v48)
                {
                  sub_BC460C(a1 + 6, &v79, &v79);
                }
              }
            }

            sub_C18C34(a1, v2, v13);
            v12 = *(v2 + 208);
          }

          v13 += 9;
        }
      }

      v2 += 296;
    }

    while (v2 != v3);
    v2 = *(a2 + 8);
    v3 = *(a2 + 16);
    v4 = v72;
  }

  v49 = 0x14C1BACF914C1BADLL * (v4 >> 3);
  if (v2 == v3)
  {
LABEL_75:
    v51 = v3;
  }

  else
  {
    v50 = (v2 + 296);
    while (*(v50 - 13) != -1.0)
    {
      v48 = v50 == v3;
      v50 = (v50 + 296);
      if (v48)
      {
        goto LABEL_75;
      }
    }

    v51 = (v50 - 296);
    if ((v50 - 296) != v3 && v50 != v3)
    {
      do
      {
        if (*(v50 + 24) != -1.0)
        {
          sub_BA9EF8(v51, v50);
          v51 = (v51 + 296);
        }

        v50 = (v50 + 296);
      }

      while (v50 != v3);
      v3 = *(a2 + 16);
    }
  }

  result = sub_C18160(v73, v51, v3);
  if (v49 > 0x14C1BACF914C1BADLL * ((*(a2 + 16) - *(a2 + 8)) >> 3))
  {
    result = sub_7E7E4(2u);
    if (result)
    {
      sub_19594F8(&v79);
      sub_4A5C(&v79, "The double station filter removed ", 34);
      v53 = std::ostream::operator<<();
      sub_4A5C(v53, " journeys", 9);
      if ((v89 & 0x10) != 0)
      {
        v55 = v88;
        if (v88 < v85)
        {
          v88 = v85;
          v55 = v85;
        }

        v56 = v84;
        v54 = v55 - v84;
        if (v55 - v84 >= 0x7FFFFFFFFFFFFFF8)
        {
          goto LABEL_103;
        }
      }

      else
      {
        if ((v89 & 8) == 0)
        {
          v54 = 0;
          v78 = 0;
LABEL_96:
          *(&__dst + v54) = 0;
          sub_7E854(&__dst, 2u);
          if (v78 < 0)
          {
            operator delete(__dst);
          }

          if (v87 < 0)
          {
            operator delete(__p);
          }

          std::locale::~locale(&v81);
          std::ostream::~ostream();
          return std::ios::~ios();
        }

        v56 = v82;
        v54 = v83 - v82;
        if ((v83 - v82) >= 0x7FFFFFFFFFFFFFF8)
        {
LABEL_103:
          sub_3244();
        }
      }

      if (v54 >= 0x17)
      {
        operator new();
      }

      v78 = v54;
      if (v54)
      {
        memmove(&__dst, v56, v54);
      }

      goto LABEL_96;
    }
  }

  return result;
}

void sub_C18BB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *__p, uint64_t a8, int a9, __int16 a10, char a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  if (SHIBYTE(a19) < 0)
  {
    operator delete(a17);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_C18BF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_C18C34(void *result, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  if (a3[1] != *a3)
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    do
    {
      v9 = v3 + 168 * v6;
      if (*(v9 + 160))
      {
LABEL_28:
        sub_5AF20();
      }

      v10 = *(v9 + 56);
      v11 = sub_A57920((*v5 + 4136), *(v9 + 32));
      v12 = (v11 - *v11);
      if (*v12 >= 9u && (v13 = v12[4]) != 0)
      {
        v14 = (v11 + v13 + *(v11 + v13));
      }

      else
      {
        v14 = 0;
      }

      v15 = *sub_A571D4(v14, v10);
      v26 = __ROR8__(v15, 32);
      v16 = sub_502FF8(*(*v5 + 4120) + 24, v15, 0, "stop");
      v17 = (v16 - *v16);
      if (*v17 >= 0xDu && (v18 = v17[6]) != 0)
      {
        v25 = *(v16 + v18 + 4) | (*(v16 + v18) << 32);
        result = sub_A794D0(v5 + 1, &v26);
        if (result)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v25 = 0xFFFFFFFFLL;
        result = sub_A794D0(v5 + 1, &v26);
        if (result)
        {
          goto LABEL_18;
        }
      }

      if (v25 == -1 || !HIDWORD(v25) || (result = sub_A794D0(v5 + 6, &v25)) == 0)
      {
        ++v7;
        v3 = *a3;
        v8 = a3[1];
        goto LABEL_4;
      }

LABEL_18:
      if (!v7)
      {
        *(a2 + 192) = 0xBFF0000000000000;
        return result;
      }

      v19 = a3[1];
      if (*(v19 - 8))
      {
        goto LABEL_28;
      }

      *(v19 - 168) = v7;
      sub_BC07E0(*a3 + 168 * v6, v19 - 168);
      result = sub_BC07E0(a3[9] + 168 * v6, a3[10] - 168);
      v20 = a3[1];
      v21 = *(v20 - 8);
      if (v21 != -1)
      {
        result = (off_26726F8[v21])(&v27, v20 - 168);
      }

      *(v20 - 8) = -1;
      a3[1] = v20 - 168;
      v22 = a3[10];
      v23 = *(v22 - 8);
      if (v23 != -1)
      {
        result = (off_26726F8[v23])(&v27, v22 - 168);
      }

      *(v22 - 8) = -1;
      a3[10] = v22 - 168;
      v3 = *a3;
      v8 = a3[1];
      if (*a3 == v8)
      {
        *(a2 + 192) = 0xBFF0000000000000;
        v8 = v3;
      }

LABEL_4:
      v6 = v7;
    }

    while (0xCF3CF3CF3CF3CF3DLL * ((v8 - v3) >> 3) > v7);
  }

  return result;
}

__int128 *sub_C18EB4(char **a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v3 = a2 + 8;
  v6 = 0x14C1BACF914C1BADLL * ((v5 - v4) >> 3);
  if (v5 == v4)
  {
LABEL_4:
    v4 = v5;
  }

  else
  {
    while ((sub_C19220(a1, v4) & 1) == 0)
    {
      v4 = (v4 + 296);
      if (v4 == v5)
      {
        goto LABEL_4;
      }
    }

    if (v4 != v5)
    {
      for (i = (v4 + 296); i != v5; i = (i + 296))
      {
        if ((sub_C19220(a1, i) & 1) == 0)
        {
          sub_BA9EF8(v4, i);
          v4 = (v4 + 296);
        }
      }
    }
  }

  result = sub_C18160(v3, v4, *(a2 + 16));
  if (v6 > 0x14C1BACF914C1BADLL * ((*(a2 + 16) - *(a2 + 8)) >> 3))
  {
    result = sub_7E7E4(2u);
    if (result)
    {
      sub_19594F8(&v16);
      sub_4A5C(&v16, "The double trip filter removed ", 31);
      v9 = std::ostream::operator<<();
      sub_4A5C(v9, " journeys", 9);
      if ((v26 & 0x10) != 0)
      {
        v12 = v25;
        if (v25 < v22)
        {
          v25 = v22;
          v12 = v22;
        }

        v13 = v21;
        v10 = v12 - v21;
        if (v12 - v21 >= 0x7FFFFFFFFFFFFFF8)
        {
          goto LABEL_31;
        }
      }

      else
      {
        if ((v26 & 8) == 0)
        {
          v10 = 0;
          v15 = 0;
LABEL_24:
          *(&__p + v10) = 0;
          sub_7E854(&__p, 2u);
          if (v15 < 0)
          {
            operator delete(__p);
          }

          if (v24 < 0)
          {
            operator delete(v23);
          }

          std::locale::~locale(&v18);
          std::ostream::~ostream();
          return std::ios::~ios();
        }

        v13 = v19;
        v10 = v20 - v19;
        if ((v20 - v19) >= 0x7FFFFFFFFFFFFFF8)
        {
LABEL_31:
          sub_3244();
        }
      }

      if (v10 >= 0x17)
      {
        operator new();
      }

      v15 = v10;
      if (v10)
      {
        memmove(&__p, v13, v10);
      }

      goto LABEL_24;
    }
  }

  return result;
}

void sub_C191DC(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  if (SHIBYTE(a11) < 0)
  {
    operator delete(a9);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_C19220(char **a1, uint64_t a2)
{
  v2 = *a1;
  a1[1] = *a1;
  v3 = *(a2 + 200);
  v4 = *(a2 + 208);
  if (v3 == v4)
  {
    return 0;
  }

  while (v3[24])
  {
LABEL_5:
    v3 += 72;
    if (v3 == v4)
    {
      return 0;
    }
  }

  v7 = *v3;
  if (*(*v3 + 160))
  {
    sub_5AF20();
  }

  v8 = (v7 + 40);
  v9 = *(v7 + 32);
  v10 = *a1;
  if (*a1 == v2)
  {
    goto LABEL_22;
  }

  v11 = 0;
  v12 = *a1;
  do
  {
    v13 = *(v12 + 1) == HIDWORD(v9) && *v12 == v9;
    if (v13 && *(v12 + 2) == *(v7 + 40) && *(v12 + 3) == *(v7 + 44) && *(v12 + 4) == *(v7 + 48))
    {
      ++v11;
    }

    v12 += 20;
  }

  while (v12 != v2);
  if (!v11)
  {
LABEL_22:
    v14 = a1[2];
    if (v2 < v14)
    {
      *v2 = v9;
      v6 = *v8;
      *(v2 + 4) = *(v7 + 48);
      *(v2 + 1) = v6;
      v2 += 20;
    }

    else
    {
      v15 = 0xCCCCCCCCCCCCCCCDLL * ((v2 - v10) >> 2);
      v16 = v15 + 1;
      if (v15 + 1 > 0xCCCCCCCCCCCCCCCLL)
      {
        sub_1794();
      }

      v17 = 0xCCCCCCCCCCCCCCCDLL * ((v14 - v10) >> 2);
      if (2 * v17 > v16)
      {
        v16 = 2 * v17;
      }

      if (v17 >= 0x666666666666666)
      {
        v18 = 0xCCCCCCCCCCCCCCCLL;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        if (v18 <= 0xCCCCCCCCCCCCCCCLL)
        {
          operator new();
        }

        sub_1808();
      }

      v19 = v2;
      v20 = 4 * ((v2 - v10) >> 2);
      *v20 = v9;
      v21 = *v8;
      *(v20 + 16) = *(v7 + 48);
      *(v20 + 8) = v21;
      v2 = (v20 + 20);
      v22 = (20 * v15 - (v19 - v10));
      memcpy(v22, v10, v19 - v10);
      *a1 = v22;
      a1[1] = v2;
      a1[2] = 0;
      if (v10)
      {
        operator delete(v10);
      }
    }

    a1[1] = v2;
    goto LABEL_5;
  }

  return 1;
}

void sub_C19540(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_C19564(_BYTE *a1, void *a2)
{
  if (*a2 != a2[1])
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v10 = sub_2D390(exception, "Empty schedule filter called on a response that contains schedule categories", 0x4CuLL);
  }

  v6 = a2[6];
  v5 = a2[7];
  v4 = a2 + 6;
  if (v6 != v5)
  {
    if (*a1 == 1)
    {
      while (v6[9] != v6[10] || a1[1] == 1 && v6[12] != v6[13])
      {
        v6 += 31;
        if (v6 == v5)
        {
          goto LABEL_22;
        }
      }
    }

    else if (a1[1] == 1)
    {
      while (v6[12] != v6[13])
      {
        v6 += 31;
        if (v6 == v5)
        {
          goto LABEL_22;
        }
      }
    }
  }

  if (v6 == v5)
  {
LABEL_22:
    v6 = a2[7];
  }

  else
  {
    v7 = v6 + 31;
    if (v6 + 31 != v5)
    {
      do
      {
        if (*a1 == 1 && v7[9] != v7[10] || a1[1] == 1 && v7[12] != v7[13])
        {
          sub_C197A8(v6, v7);
          v6 += 31;
        }

        v7 += 31;
      }

      while (v7 != v5);
      v5 = a2[7];
    }
  }

  return sub_C196DC(v4, v6, v5);
}

uint64_t sub_C196DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *(a1 + 8);
    v7 = a2;
    if (a3 != v6)
    {
      do
      {
        sub_C197A8(v7, v4);
        v4 += 248;
        v7 += 248;
      }

      while (v4 != v6);
      v6 = *(a1 + 8);
    }

    while (v6 != v7)
    {
      v8 = *(v6 - 24);
      if (v8)
      {
        *(v6 - 16) = v8;
        operator delete(v8);
      }

      v9 = *(v6 - 64);
      if (v9)
      {
        *(v6 - 56) = v9;
        operator delete(v9);
      }

      v10 = *(v6 - 152);
      if (v10)
      {
        *(v6 - 144) = v10;
        operator delete(v10);
      }

      v11 = *(v6 - 176);
      if (v11)
      {
        *(v6 - 168) = v11;
        operator delete(v11);
      }

      v6 -= 248;
    }

    *(a1 + 8) = v7;
  }

  return a2;
}

uint64_t sub_C197A8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 16) = v4;
  v8 = (a1 + 72);
  v7 = *(a1 + 72);
  if (v7)
  {
    *(a1 + 80) = v7;
    operator delete(v7);
    *v8 = 0;
    v8[1] = 0;
    v8[2] = 0;
  }

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  v9 = *(a1 + 96);
  if (v9)
  {
    *(a1 + 104) = v9;
    operator delete(v9);
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
  }

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  v10 = *(a2 + 120);
  v11 = *(a2 + 165);
  v12 = *(a2 + 152);
  v13 = *(a1 + 184);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = v12;
  *(a1 + 165) = v11;
  *(a1 + 120) = v10;
  if (v13)
  {
    *(a1 + 192) = v13;
    operator delete(v13);
    *(a1 + 184) = 0;
    *(a1 + 192) = 0;
    *(a1 + 200) = 0;
  }

  *(a1 + 184) = *(a2 + 184);
  *(a1 + 200) = *(a2 + 200);
  *(a2 + 184) = 0;
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  v14 = *(a2 + 208);
  v15 = *(a1 + 224);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 208) = v14;
  if (v15)
  {
    *(a1 + 232) = v15;
    operator delete(v15);
    *(a1 + 224) = 0;
    *(a1 + 232) = 0;
    *(a1 + 240) = 0;
  }

  *(a1 + 224) = *(a2 + 224);
  *(a1 + 240) = *(a2 + 240);
  *(a2 + 224) = 0;
  *(a2 + 232) = 0;
  *(a2 + 240) = 0;
  return a1;
}

void sub_C198F4(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  v3 = a2 + 8;
  v37 = 0u;
  v38 = 0u;
  v39 = 1065353216;
  v6 = v4 - v5;
  if (v4 != v5)
  {
    while (1)
    {
      v7 = *(v5 + 16);
      if (v7 == -1)
      {
        goto LABEL_4;
      }

      if (!*(&v37 + 1))
      {
        goto LABEL_26;
      }

      v8 = vcnt_s8(*(&v37 + 8));
      v8.i16[0] = vaddlv_u8(v8);
      if (v8.u32[0] > 1uLL)
      {
        v9 = *(v5 + 16);
        if (*(&v37 + 1) <= v7)
        {
          v9 = v7 % DWORD2(v37);
        }
      }

      else
      {
        v9 = (DWORD2(v37) - 1) & v7;
      }

      v10 = *(v37 + 8 * v9);
      if (!v10 || (v11 = *v10) == 0)
      {
LABEL_26:
        if (*(v5 + 13) == 1)
        {
          if (*(v5 + 15))
          {
            goto LABEL_4;
          }

          *(v5 + 192) = 0xBFF0000000000000;
        }

        else if (*(v5 + 15))
        {
          goto LABEL_4;
        }

        sub_C19E38(&v37, (v5 + 16), (v5 + 16));
        goto LABEL_4;
      }

      if (v8.u32[0] < 2uLL)
      {
        while (1)
        {
          v12 = v11[1];
          if (v12 == v7)
          {
            if (*(v11 + 4) == v7)
            {
              goto LABEL_31;
            }
          }

          else if ((v12 & (*(&v37 + 1) - 1)) != v9)
          {
            goto LABEL_26;
          }

          v11 = *v11;
          if (!v11)
          {
            goto LABEL_26;
          }
        }
      }

      while (1)
      {
        v13 = v11[1];
        if (v13 == v7)
        {
          break;
        }

        if (v13 >= *(&v37 + 1))
        {
          v13 %= *(&v37 + 1);
        }

        if (v13 != v9)
        {
          goto LABEL_26;
        }

LABEL_21:
        v11 = *v11;
        if (!v11)
        {
          goto LABEL_26;
        }
      }

      if (*(v11 + 4) != v7)
      {
        goto LABEL_21;
      }

LABEL_31:
      *(v5 + 192) = 0xBFF0000000000000;
LABEL_4:
      v5 += 296;
      if (v5 == v4)
      {
        v5 = *(a2 + 8);
        v4 = *(a2 + 16);
        break;
      }
    }
  }

  if (v5 == v4)
  {
LABEL_38:
    v16 = v4;
  }

  else
  {
    v14 = (v5 + 296);
    while (*(v14 - 13) != -1.0)
    {
      v15 = v14 == v4;
      v14 = (v14 + 296);
      if (v15)
      {
        goto LABEL_38;
      }
    }

    v16 = (v14 - 296);
    if ((v14 - 296) != v4 && v14 != v4)
    {
      do
      {
        if (*(v14 + 24) != -1.0)
        {
          sub_BA9EF8(v16, v14);
          v16 = (v16 + 296);
        }

        v14 = (v14 + 296);
      }

      while (v14 != v4);
      v4 = *(a2 + 16);
    }
  }

  sub_C18160(v3, v16, v4);
  if (0x14C1BACF914C1BADLL * (v6 >> 3) > (0x14C1BACF914C1BADLL * ((*(a2 + 16) - *(a2 + 8)) >> 3)) && sub_7E7E4(2u))
  {
    sub_19594F8(&v26);
    sub_4A5C(&v26, "The frequent fill-in filter removed ", 36);
    v17 = std::ostream::operator<<();
    sub_4A5C(v17, " journeys", 9);
    if ((v36 & 0x10) != 0)
    {
      v19 = v35;
      if (v35 < v32)
      {
        v35 = v32;
        v19 = v32;
      }

      v20 = v31;
      v18 = v19 - v31;
      if (v19 - v31 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_70;
      }
    }

    else
    {
      if ((v36 & 8) == 0)
      {
        v18 = 0;
        v25 = 0;
LABEL_59:
        *(&__p + v18) = 0;
        sub_7E854(&__p, 2u);
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
        std::ios::~ios();
        goto LABEL_64;
      }

      v20 = v29;
      v18 = v30 - v29;
      if ((v30 - v29) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_70:
        sub_3244();
      }
    }

    if (v18 >= 0x17)
    {
      operator new();
    }

    v25 = v18;
    if (v18)
    {
      memmove(&__p, v20, v18);
    }

    goto LABEL_59;
  }

LABEL_64:
  v21 = v38;
  if (v38)
  {
    do
    {
      v22 = *v21;
      operator delete(v21);
      v21 = v22;
    }

    while (v22);
  }

  v23 = v37;
  *&v37 = 0;
  if (v23)
  {
    operator delete(v23);
  }
}