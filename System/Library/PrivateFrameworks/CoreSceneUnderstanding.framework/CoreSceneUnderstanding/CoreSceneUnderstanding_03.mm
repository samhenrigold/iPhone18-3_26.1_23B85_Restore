uint64_t sub_1AC0BB3B0(unsigned __int8 **a1)
{
  if (*(a1 + 103) < 0)
  {
    *a1[10] = 0;
    a1[11] = 0;
    v2 = a1[7];
    a1[8] = v2;
    v3 = *(a1 + 5);
    v5 = a1[9];
    if (v2 < v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    operator new();
  }

  *(a1 + 80) = 0;
  *(a1 + 103) = 0;
  v2 = a1[7];
  a1[8] = v2;
  v3 = *(a1 + 5);
  v4 = a1[9];
  if (v2 >= v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  *v2 = v3;
  v6 = (a1 + 10);
  a1[8] = v2 + 1;
  v7 = *(a1 + 5);
  if ((v7 - 49) < 9)
  {
    v8 = 5;
    goto LABEL_8;
  }

  if (v7 == 48)
  {
    v41 = 5;
    LOBYTE(v31) = 48;
    goto LABEL_59;
  }

  if (v7 == 45)
  {
    std::string::push_back((a1 + 10), 45);
  }

  v28 = sub_1AC0BBA04(a1);
  if ((v28 - 49) >= 9)
  {
    if (v28 != 48)
    {
      v30 = "invalid number; expected digit after '-'";
      goto LABEL_69;
    }

    v31 = *(a1 + 5);
    v41 = 6;
LABEL_59:
    std::string::push_back((a1 + 10), v31);
    v32 = sub_1AC0BBA04(a1);
    if (v32 == 46)
    {
LABEL_43:
      std::string::push_back((a1 + 10), *(a1 + 136));
      if (sub_1AC0BBA04(a1) - 48 > 9)
      {
        v30 = "invalid number; expected digit after '.'";
LABEL_69:
        a1[13] = v30;
        return 14;
      }

      do
      {
        std::string::push_back((a1 + 10), *(a1 + 20));
        v26 = sub_1AC0BBA04(a1);
      }

      while ((v26 - 48) < 0xA);
      if (v26 != 101 && v26 != 69)
      {
        v27 = 7;
        goto LABEL_71;
      }
    }

    else if (v32 != 69 && v32 != 101)
    {
      goto LABEL_72;
    }

    v23 = *(a1 + 5);
LABEL_63:
    std::string::push_back((a1 + 10), v23);
    v33 = sub_1AC0BBA04(a1);
    if (v33 == 43 || v33 == 45)
    {
      std::string::push_back((a1 + 10), *(a1 + 20));
      if (sub_1AC0BBA04(a1) - 48 >= 0xA)
      {
        v30 = "invalid number; expected digit after exponent sign";
        goto LABEL_69;
      }
    }

    else if ((v33 - 48) >= 0xA)
    {
      v30 = "invalid number; expected '+', '-', or digit after exponent";
      goto LABEL_69;
    }

    sub_1AC1220B4(a1 + 20, (a1 + 10), a1, &v44);
    v27 = v44;
LABEL_71:
    v41 = v27;
    goto LABEL_72;
  }

  v7 = *(a1 + 5);
  v8 = 6;
LABEL_8:
  v41 = v8;
  std::string::push_back((a1 + 10), v7);
  v42 = vdupq_n_s64(1uLL);
  while (1)
  {
    *(a1 + 2) = vaddq_s64(*(a1 + 2), v42);
    if (*(a1 + 24) == 1)
    {
      *(a1 + 24) = 0;
      v12 = *(a1 + 5);
    }

    else
    {
      v13 = *a1;
      if (*a1 == a1[1])
      {
        v12 = -1;
      }

      else
      {
        v12 = *v13;
        *a1 = v13 + 1;
      }

      *(a1 + 5) = v12;
    }

    if (v12 == -1)
    {
      break;
    }

    v15 = a1[8];
    v14 = a1[9];
    if (v15 >= v14)
    {
      v17 = a1[7];
      v18 = (v15 - v17);
      v19 = v15 - v17 + 1;
      if (v19 < 0)
      {
        sub_1AC060AAC();
      }

      v20 = v14 - v17;
      if (2 * v20 > v19)
      {
        v19 = 2 * v20;
      }

      if (v20 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v21 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v21 = v19;
      }

      if (v21)
      {
        operator new();
      }

      v22 = v15 - v17;
      *v18 = v12;
      v16 = v18 + 1;
      memcpy(0, v17, v22);
      a1[7] = 0;
      a1[8] = v18 + 1;
      a1[9] = 0;
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      *v15 = v12;
      v16 = v15 + 1;
    }

    a1[8] = v16;
    v23 = *(a1 + 5);
    if ((v23 - 48) >= 0xA)
    {
      if (v23 <= 68)
      {
        if (v23 == 10)
        {
          v29 = a1[6] + 1;
          a1[5] = 0;
          a1[6] = v29;
          break;
        }

        if (v23 != 46)
        {
          break;
        }

        goto LABEL_43;
      }

      if (v23 == 69 || v23 == 101)
      {
        goto LABEL_63;
      }

      break;
    }

    v24 = *(a1 + 103);
    if (v24 < 0)
    {
      v25 = a1[12] & 0x7FFFFFFFFFFFFFFFLL;
      if (a1[11] == (v25 - 1))
      {
        if (v25 == 0x7FFFFFFFFFFFFFF8)
        {
          sub_1AC060A04();
        }

        if (v25 - 1 > 0x3FFFFFFFFFFFFFF2)
        {
          operator new();
        }

LABEL_36:
        operator new();
      }

      v10 = *v6;
      v9 = a1[11];
      a1[11] = v9 + 1;
    }

    else
    {
      if (*(a1 + 103) == 22)
      {
        goto LABEL_36;
      }

      v9 = *(a1 + 103);
      *(a1 + 103) = (v24 + 1) & 0x7F;
      v10 = a1 + 10;
    }

    v11 = &v9[v10];
    *v11 = v23;
    v11[1] = 0;
  }

LABEL_72:
  v35 = a1 + 5;
  v36 = a1[5];
  *(a1 + 24) = 1;
  --a1[4];
  if (v36 || (v35 = a1 + 6, (v36 = a1[6]) != 0))
  {
    *v35 = v36 - 1;
  }

  if (*(a1 + 5) != -1)
  {
    --a1[8];
  }

  __endptr = 0;
  *__error() = 0;
  if (v41 == 6)
  {
    v39 = (a1 + 10);
    if (*(a1 + 103) < 0)
    {
      v39 = *v6;
    }

    v40 = strtoll(v39, &__endptr, 10);
    if (!*__error())
    {
      a1[14] = v40;
      return 6;
    }
  }

  else if (v41 == 5)
  {
    v37 = (a1 + 10);
    if (*(a1 + 103) < 0)
    {
      v37 = *v6;
    }

    v38 = strtoull(v37, &__endptr, 10);
    if (!*__error())
    {
      a1[15] = v38;
      return 5;
    }
  }

  if (*(a1 + 103) < 0)
  {
    v6 = *v6;
  }

  *(a1 + 16) = strtod(v6, &__endptr);
  return 7;
}

uint64_t sub_1AC0BBA04(int64x2_t *a1)
{
  a1[2] = vaddq_s64(a1[2], vdupq_n_s64(1uLL));
  if (a1[1].i8[8] == 1)
  {
    a1[1].i8[8] = 0;
    v2 = a1[1].i32[1];
  }

  else
  {
    v3 = a1->i64[0];
    if (a1->i64[0] == a1->i64[1])
    {
      v2 = -1;
    }

    else
    {
      v2 = *v3;
      a1->i64[0] = (v3 + 1);
    }

    a1[1].i32[1] = v2;
  }

  if (v2 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = a1[4].i64[0];
  v4 = a1[4].u64[1];
  if (v5 >= v4)
  {
    v7 = a1[3].i64[1];
    v8 = (v5 - v7);
    v9 = v5 - v7 + 1;
    if (v9 < 0)
    {
      sub_1AC060AAC();
    }

    v10 = v4 - v7;
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      operator new();
    }

    v12 = v5 - v7;
    *v8 = v2;
    v6 = (v8 + 1);
    memcpy(0, v7, v12);
    a1[3].i64[1] = 0;
    a1[4].i64[0] = (v8 + 1);
    a1[4].i64[1] = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *v5 = v2;
    v6 = (v5 + 1);
  }

  a1[4].i64[0] = v6;
  result = a1[1].u32[1];
  if (result == 10)
  {
    v14 = a1[3].i64[0] + 1;
    a1[2].i64[1] = 0;
    a1[3].i64[0] = v14;
  }

  return result;
}

uint64_t sub_1AC0BBB6C(int64x2_t *a1)
{
  sub_1AC0BBA04(a1);
  v2 = a1[1].i32[1];
  v3 = v2 - 48;
  if ((v2 - 48) < 0xA)
  {
LABEL_4:
    sub_1AC0BBA04(a1);
    v4 = a1[1].i32[1];
    v5 = v4 - 48;
    if ((v4 - 48) < 0xA)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  if ((v2 - 65) <= 5)
  {
    v3 = v2 - 55;
    goto LABEL_4;
  }

  if ((v2 - 97) > 5)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = v2 - 87;
  sub_1AC0BBA04(a1);
  v4 = a1[1].i32[1];
  v5 = v4 - 48;
  if ((v4 - 48) < 0xA)
  {
LABEL_5:
    sub_1AC0BBA04(a1);
    v6 = a1[1].i32[1];
    v7 = v6 - 48;
    if ((v6 - 48) < 0xA)
    {
      goto LABEL_6;
    }

LABEL_12:
    if ((v6 - 65) < 6)
    {
      v7 = v6 - 55;
      sub_1AC0BBA04(a1);
      v8 = a1[1].i32[1];
      v9 = v8 - 48;
      if ((v8 - 48) < 0xA)
      {
        return (v9 + (v3 << 12) + (v5 << 8) + 16 * v7);
      }

      goto LABEL_20;
    }

    if ((v6 - 97) > 5)
    {
      return 0xFFFFFFFFLL;
    }

    v7 = v6 - 87;
    sub_1AC0BBA04(a1);
    v8 = a1[1].i32[1];
    v9 = v8 - 48;
    if ((v8 - 48) >= 0xA)
    {
      goto LABEL_20;
    }

    return (v9 + (v3 << 12) + (v5 << 8) + 16 * v7);
  }

LABEL_10:
  if ((v4 - 65) >= 6)
  {
    if ((v4 - 97) > 5)
    {
      return 0xFFFFFFFFLL;
    }

    v5 = v4 - 87;
    sub_1AC0BBA04(a1);
    v6 = a1[1].i32[1];
    v7 = v6 - 48;
    if ((v6 - 48) >= 0xA)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v5 = v4 - 55;
    sub_1AC0BBA04(a1);
    v6 = a1[1].i32[1];
    v7 = v6 - 48;
    if ((v6 - 48) >= 0xA)
    {
      goto LABEL_12;
    }
  }

LABEL_6:
  sub_1AC0BBA04(a1);
  v8 = a1[1].i32[1];
  v9 = v8 - 48;
  if ((v8 - 48) < 0xA)
  {
    return (v9 + (v3 << 12) + (v5 << 8) + 16 * v7);
  }

LABEL_20:
  if ((v8 - 65) < 6)
  {
    v9 = v8 - 55;
    return (v9 + (v3 << 12) + (v5 << 8) + 16 * v7);
  }

  if ((v8 - 97) <= 5)
  {
    v9 = v8 - 87;
    return (v9 + (v3 << 12) + (v5 << 8) + 16 * v7);
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1AC0BBD1C(uint64_t a1)
{
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_1AC0BBD60(uint64_t a1, void *a2)
{
  *a2 = xmmword_1AC129B30;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 24) + 1;
  do
  {
    *(a1 + 24) = v5;
    if (v3 == v4)
    {
      *(a1 + 16) = -1;
      return 1;
    }

    v7 = *v3++;
    v6 = v7;
    *a1 = v3;
    *(a1 + 16) = v7;
    ++v5;
  }

  while (v7 == 78);
  if (v6 == 35)
  {
LABEL_14:

    return sub_1AC0B9CF0(a1, a2);
  }

  if (v6 != 36)
  {
    return 1;
  }

  *(a1 + 24) = v5;
  if (v3 == v4)
  {
    v8 = -1;
  }

  else
  {
    v8 = *v3;
    *a1 = v3 + 1;
  }

  *(a1 + 16) = v8;
  v9 = a2;
  a2[1] = v8;
  result = sub_1AC0B3390(a1, 3, "type");
  if (result)
  {
    v12 = *a1;
    v11 = *(a1 + 8);
    v13 = *(a1 + 24) + 1;
    a2 = v9;
    while (1)
    {
      *(a1 + 24) = v13;
      if (v12 == v11)
      {
        break;
      }

      v15 = *v12++;
      v14 = v15;
      *a1 = v12;
      *(a1 + 16) = v15;
      if (v15 == 35)
      {
        goto LABEL_14;
      }

      ++v13;
      if (v14 != 78)
      {
        goto LABEL_21;
      }
    }

    *(a1 + 16) = -1;
LABEL_21:
    result = sub_1AC0B3390(a1, 3, "value");
    if (result)
    {
      sub_1AC0B2700(a1, &v17);
      std::operator+<char>();
      sub_1AC063200(&v16, "size");
      sub_1AC0B2BC8();
    }
  }

  return result;
}

void sub_1AC0BBFBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, std::runtime_error a28)
{
  sub_1AC0B2ED4(&a28);
  if (a27 < 0)
  {
    operator delete(__p);
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a21 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a10);
  if ((a21 & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v28 - 33) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a16);
  if ((*(v28 - 33) & 0x80000000) == 0)
  {
LABEL_5:
    _Unwind_Resume(a1);
  }

LABEL_9:
  operator delete(*(v28 - 56));
  _Unwind_Resume(a1);
}

uint64_t sub_1AC0BC068(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F20D0100;
  *(a1 + 8) = *(a2 + 8);
  MEMORY[0x1AC5ABFC0](a1 + 16, a2 + 16);
  *a1 = &unk_1F20D0150;
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

void sub_1AC0BC0E4(std::runtime_error *a1)
{
  a1->__vftable = &unk_1F20D0100;
  std::runtime_error::~runtime_error(a1 + 1);
  std::exception::~exception(a1);

  JUMPOUT(0x1AC5AC440);
}

uint64_t sub_1AC0BC14C(uint64_t result, unsigned __int8 *a2)
{
  v2 = *a2;
  *result = v2;
  *(result + 8) = 0;
  if (v2 <= 4)
  {
    if (v2 <= 2)
    {
      if (v2 == 1)
      {
        operator new();
      }

      if (v2 == 2)
      {
        operator new();
      }

      return result;
    }

    if (v2 == 3)
    {
      operator new();
    }

    v3 = a2[8];
LABEL_13:
    *(result + 8) = v3;
    return result;
  }

  if (v2 < 8)
  {
    v3 = *(a2 + 1);
    goto LABEL_13;
  }

  if (v2 == 8)
  {
    operator new();
  }

  return result;
}

void sub_1AC0BC3E4(_Unwind_Exception *a1)
{
  sub_1AC0B0F84(v1, v1[1]);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_1AC0BC404(uint64_t **a1, uint64_t *a2, const void **a3, uint64_t a4)
{
  v4 = sub_1AC0BC540(a1, a2, &v7, v6, a3);
  if (!*v4)
  {
    operator new();
  }

  return *v4;
}

void sub_1AC0BC508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC0B46BC(va);
  _Unwind_Resume(a1);
}

void sub_1AC0BC51C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (*(v3 + 55) < 0)
  {
    operator delete(*(v3 + 32));
  }

  sub_1AC0B46BC(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1AC0BC540(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t **a4, const void **a5)
{
  v8 = a1 + 1;
  if (a1 + 1 == a2)
  {
    goto LABEL_23;
  }

  v10 = *(a5 + 23);
  if (v10 >= 0)
  {
    v11 = a5;
  }

  else
  {
    v11 = *a5;
  }

  if (v10 >= 0)
  {
    v12 = *(a5 + 23);
  }

  else
  {
    v12 = a5[1];
  }

  v13 = *(a2 + 55);
  if (v13 >= 0)
  {
    v14 = a2 + 4;
  }

  else
  {
    v14 = a2[4];
  }

  if (v13 >= 0)
  {
    v15 = *(a2 + 55);
  }

  else
  {
    v15 = a2[5];
  }

  if (v15 >= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = v15;
  }

  v17 = memcmp(v11, v14, v16);
  if (!v17)
  {
    if (v12 >= v15)
    {
      goto LABEL_19;
    }

LABEL_23:
    v19 = *a2;
    if (*a1 == a2)
    {
      v21 = a2;
    }

    else
    {
      if (v19)
      {
        v20 = *a2;
        do
        {
          v21 = v20;
          v20 = v20[1];
        }

        while (v20);
      }

      else
      {
        v22 = a2;
        do
        {
          v21 = v22[2];
          v23 = *v21 == v22;
          v22 = v21;
        }

        while (v23);
      }

      v24 = *(v21 + 55);
      if (v24 >= 0)
      {
        v25 = v21 + 4;
      }

      else
      {
        v25 = v21[4];
      }

      if (v24 >= 0)
      {
        v26 = *(v21 + 55);
      }

      else
      {
        v26 = v21[5];
      }

      v27 = *(a5 + 23);
      if (v27 >= 0)
      {
        v28 = a5;
      }

      else
      {
        v28 = *a5;
      }

      if (v27 >= 0)
      {
        v29 = *(a5 + 23);
      }

      else
      {
        v29 = a5[1];
      }

      if (v29 >= v26)
      {
        v30 = v26;
      }

      else
      {
        v30 = v29;
      }

      v31 = memcmp(v25, v28, v30);
      if (v31)
      {
        if ((v31 & 0x80000000) == 0)
        {
          goto LABEL_48;
        }
      }

      else if (v26 >= v29)
      {
LABEL_48:
        v32 = *v8;
        if (!*v8)
        {
          v33 = v8;
LABEL_69:
          *a3 = v33;
          return v8;
        }

        while (1)
        {
          v33 = v32;
          v36 = v32[4];
          v34 = v32 + 4;
          v35 = v36;
          v37 = *(v34 + 23);
          if (v37 >= 0)
          {
            v38 = v34;
          }

          else
          {
            v38 = v35;
          }

          if (v37 >= 0)
          {
            v39 = *(v34 + 23);
          }

          else
          {
            v39 = v34[1];
          }

          if (v39 >= v29)
          {
            v40 = v29;
          }

          else
          {
            v40 = v39;
          }

          v41 = memcmp(v28, v38, v40);
          if (v41)
          {
            if (v41 < 0)
            {
              goto LABEL_50;
            }

LABEL_64:
            v42 = memcmp(v38, v28, v40);
            if (v42)
            {
              if ((v42 & 0x80000000) == 0)
              {
                goto LABEL_69;
              }
            }

            else if (v39 >= v29)
            {
              goto LABEL_69;
            }

            v8 = (v33 + 1);
            v32 = v33[1];
            if (!v32)
            {
              goto LABEL_69;
            }
          }

          else
          {
            if (v29 >= v39)
            {
              goto LABEL_64;
            }

LABEL_50:
            v32 = *v33;
            v8 = v33;
            if (!*v33)
            {
              goto LABEL_69;
            }
          }
        }
      }
    }

    if (v19)
    {
      *a3 = v21;
      return v21 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  if (v17 < 0)
  {
    goto LABEL_23;
  }

LABEL_19:
  v18 = memcmp(v14, v11, v16);
  if (v18)
  {
    if ((v18 & 0x80000000) == 0)
    {
LABEL_21:
      *a3 = a2;
      *a4 = a2;
      return a4;
    }
  }

  else if (v15 >= v12)
  {
    goto LABEL_21;
  }

  v43 = a2[1];
  if (v43)
  {
    v44 = a2[1];
    do
    {
      a4 = v44;
      v44 = *v44;
    }

    while (v44);
  }

  else
  {
    v45 = a2;
    do
    {
      a4 = v45[2];
      v23 = *a4 == v45;
      v45 = a4;
    }

    while (!v23);
  }

  if (a4 != v8)
  {
    v46 = *(a4 + 55);
    if (v46 >= 0)
    {
      v47 = a4 + 4;
    }

    else
    {
      v47 = a4[4];
    }

    if (v46 >= 0)
    {
      v48 = *(a4 + 55);
    }

    else
    {
      v48 = a4[5];
    }

    if (v48 >= v12)
    {
      v49 = v12;
    }

    else
    {
      v49 = v48;
    }

    v50 = memcmp(v11, v47, v49);
    if (v50)
    {
      if ((v50 & 0x80000000) == 0)
      {
        goto LABEL_95;
      }
    }

    else if (v12 >= v48)
    {
LABEL_95:
      v51 = *v8;
      if (!*v8)
      {
        v52 = v8;
LABEL_116:
        *a3 = v52;
        return v8;
      }

      while (1)
      {
        v52 = v51;
        v55 = *(v51 + 32);
        v53 = v51 + 32;
        v54 = v55;
        v56 = *(v53 + 23);
        if (v56 >= 0)
        {
          v57 = v53;
        }

        else
        {
          v57 = v54;
        }

        if (v56 >= 0)
        {
          v58 = *(v53 + 23);
        }

        else
        {
          v58 = *(v53 + 8);
        }

        if (v58 >= v12)
        {
          v59 = v12;
        }

        else
        {
          v59 = v58;
        }

        v60 = memcmp(v11, v57, v59);
        if (v60)
        {
          if (v60 < 0)
          {
            goto LABEL_97;
          }

LABEL_111:
          v61 = memcmp(v57, v11, v59);
          if (v61)
          {
            if ((v61 & 0x80000000) == 0)
            {
              goto LABEL_116;
            }
          }

          else if (v58 >= v12)
          {
            goto LABEL_116;
          }

          v8 = (v52 + 1);
          v51 = v52[1];
          if (!v51)
          {
            goto LABEL_116;
          }
        }

        else
        {
          if (v12 >= v58)
          {
            goto LABEL_111;
          }

LABEL_97:
          v51 = *v52;
          v8 = v52;
          if (!*v52)
          {
            goto LABEL_116;
          }
        }
      }
    }
  }

  if (v43)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void sub_1AC0BC8E4(uint64_t result, unsigned __int8 *a2, unsigned __int8 *a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 60))
    {
      operator new();
    }

    sub_1AC060AAC();
  }
}

void sub_1AC0BC9D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_1AC0B0DE0(va);
  *(v10 + 8) = v11;
  sub_1AC0BC9F0(&a9);
  _Unwind_Resume(a1);
}

void ***sub_1AC0BC9F0(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = **result;
      if (v4 != v2)
      {
        v6 = v4 - 1;
        do
        {
          v7 = v6 - 1;
          sub_1AC0B05DC(v6, *(v6 - 8));
          v6 -= 2;
        }

        while (v7 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

uint64_t *sub_1AC0BCA7C(uint64_t *result, int a2)
{
  if (a2 <= 3)
  {
    if (a2 > 1)
    {
      if (a2 != 2)
      {
        operator new();
      }

      operator new();
    }

    if (a2 == 1)
    {
      operator new();
    }

    goto LABEL_11;
  }

  if (a2 > 5)
  {
    if (a2 == 8)
    {
      operator new();
    }

    goto LABEL_11;
  }

  if (a2 != 4)
  {
LABEL_11:
    *result = 0;
    return result;
  }

  *result = 0;
  return result;
}

void sub_1AC0BCC00(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13 = 10;
  strcpy(__p, "type_error");
  sub_1AC0B3B5C(__p, a1, &v14);
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = *(a2 + 8);
  }

  v9 = std::string::append(&v14, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v16 = v9->__r_.__value_.__r.__words[2];
  *v15 = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }
  }

  else if ((v13 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(__p[0]);
LABEL_9:
  if (v16 >= 0)
  {
    v11 = v15;
  }

  else
  {
    v11 = v15[0];
  }

  *a3 = &unk_1F20D0100;
  *(a3 + 8) = a1;
  std::runtime_error::runtime_error((a3 + 16), v11);
  *a3 = &unk_1F20D0178;
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }
}

void sub_1AC0BCD4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  std::exception::~exception(v26);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

const char *sub_1AC0BCD9C(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 > 9)
  {
    return "number";
  }

  else
  {
    return off_1E7968200[v1];
  }
}

void sub_1AC0BCDC4(std::runtime_error *a1)
{
  a1->__vftable = &unk_1F20D0100;
  std::runtime_error::~runtime_error(a1 + 1);

  std::exception::~exception(a1);
}

uint64_t *sub_1AC0BCE18(uint64_t **a1, const void **a2, uint64_t a3, _OWORD **a4)
{
  v4 = a1[1];
  if (!v4)
  {
LABEL_27:
    operator new();
  }

  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = a2[1];
  }

  while (1)
  {
    while (1)
    {
      v8 = v4;
      v11 = v4[4];
      v9 = v4 + 4;
      v10 = v11;
      v12 = *(v9 + 23);
      v13 = v12 >= 0 ? v9 : v10;
      v14 = v12 >= 0 ? *(v9 + 23) : v9[1];
      v15 = (v14 >= v7 ? v7 : v14);
      v16 = memcmp(v6, v13, v15);
      if (v16)
      {
        break;
      }

      if (v7 >= v14)
      {
        goto LABEL_22;
      }

LABEL_8:
      v4 = *v8;
      if (!*v8)
      {
        goto LABEL_27;
      }
    }

    if (v16 < 0)
    {
      goto LABEL_8;
    }

LABEL_22:
    v17 = memcmp(v13, v6, v15);
    if (v17)
    {
      if ((v17 & 0x80000000) == 0)
      {
        return v8;
      }

      goto LABEL_26;
    }

    if (v14 >= v7)
    {
      return v8;
    }

LABEL_26:
    v4 = v8[1];
    if (!v4)
    {
      goto LABEL_27;
    }
  }
}

void sub_1AC0BCF94(std::runtime_error *a1)
{
  a1->__vftable = &unk_1F20D0100;
  std::runtime_error::~runtime_error(a1 + 1);
  std::exception::~exception(a1);

  JUMPOUT(0x1AC5AC440);
}

double sub_1AC0BCFFC(double *a1, void *a2)
{
  v2 = *a1;
  if (v2 > 5)
  {
    if (v2 != 7)
    {
      if (v2 == 6)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }

    result = a1[1];
    *a2 = result;
  }

  else
  {
    if (v2 != 4)
    {
      if (v2 == 5)
      {
LABEL_4:
        *a2 = *(a1 + 1);
        return result;
      }

LABEL_7:
      exception = __cxa_allocate_exception(0x20uLL);
      v5 = sub_1AC0BCD9C(a1);
      sub_1AC063200(&v7, v5);
      sub_1AC063E68("type must be number, but is ", &v7, &v8);
      sub_1AC0BCC00(302, &v8, exception);
      __cxa_throw(exception, &unk_1F20D0428, sub_1AC0BCDC4);
    }

    *a2 = *(a1 + 8);
  }

  return result;
}

void sub_1AC0BD10C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if (v21)
    {
LABEL_8:
      __cxa_free_exception(v20);
      _Unwind_Resume(a1);
    }
  }

  else if (v21)
  {
    goto LABEL_8;
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1AC0BD1EC(uint64_t a1, uint64_t a2, char *a3)
{

  return sub_1AC0B3390(v3, 3, a3);
}

void sub_1AC0BE694(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  __cxa_free_exception(v41);
  if (__p)
  {
    operator delete(__p);
  }

  sub_1AC068024();
  sub_1AC068024();

  _Unwind_Resume(a1);
}

uint64_t sub_1AC0BED74(_Unwind_Exception *a1, int a2)
{
  sub_1AC067008(&v9);

  if (a2 != 1)
  {
    _Unwind_Resume(a1);
  }

  v6 = __cxa_begin_catch(a1);
  v7 = sub_1AC070210(v6, v2);
  __cxa_end_catch();
  return v7;
}

void sub_1AC0BEFD8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      MEMORY[0x1AC5AC440](v21, v20, a3, a4, a5, a6, a7, a8);
      _Unwind_Resume(a1);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  MEMORY[0x1AC5AC440](v21, v20);
  _Unwind_Resume(a1);
}

void sub_1AC0BF90C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  sub_1AC066D78(&a31);
  sub_1AC068024();
  sub_1AC068024();
  sub_1AC066D78(&a50);
  sub_1AC066D78(&a55);

  _Unwind_Resume(a1);
}

uint64_t sub_1AC0BFB18(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v3 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v3;
  *(a2 + 8) = 0uLL;
  *a2 = 0;
  v4 = *(a3 + 8);
  *(a1 + 40) = 0;
  *(a1 + 24) = &unk_1F20D01C0;
  *(a1 + 32) = v4;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AC060AAC();
  }

  v7 = *(a3 + 48);
  *(a1 + 64) = *(a3 + 40);
  *(a1 + 72) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_1AC0BFC00(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v4;
    operator delete(v4);
  }

  sub_1AC1221D8(v1);
  _Unwind_Resume(a1);
}

id sub_1AC0BFC24(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_15;
  }

  v5 = v3;
  v10 = objc_msgSend_UTF8String(v5, v6, v7, v8, v9);
  v11 = strlen(v10);
  if (v11 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_1AC060A04();
  }

  v12 = v11;
  if (v11 >= 0x17)
  {
    operator new();
  }

  BYTE7(v41) = v11;
  if (v11)
  {
    memmove(&__dst, v10, v11);
  }

  *(&__dst + v12) = 0;
  v13 = sub_1AC0686D0(a1, &__dst);
  if (SBYTE7(v41) < 0)
  {
    v22 = v13;
    operator delete(__dst);
    if (v22)
    {
      goto LABEL_10;
    }

LABEL_15:
    v23 = 0;
    goto LABEL_21;
  }

  if (!v13)
  {
    goto LABEL_15;
  }

LABEL_10:
  v14 = v4;
  v19 = objc_msgSend_UTF8String(v14, v15, v16, v17, v18);
  v20 = strlen(v19);
  if (v20 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_1AC060A04();
  }

  v21 = v20;
  if (v20 >= 0x17)
  {
    operator new();
  }

  v39 = v20;
  if (v20)
  {
    memmove(&__p, v19, v20);
  }

  *(&__p + v21) = 0;
  v24 = sub_1AC0686D0(a1, &__p);
  if (!v24)
  {
    sub_1AC0672B0("unordered_map::at: key not found");
  }

  v28 = v24[10];
  v29 = *(v28 + 5);
  v30 = *(v28 + 3);
  __dst = *(v28 + 1);
  v41 = v30;
  v42 = v29;
  v31 = *(v28 + 11);
  v32 = *(v28 + 13);
  v33 = *(v28 + 9);
  v43 = *(v28 + 7);
  v44 = v33;
  v34 = *(v28 + 15);
  v35 = *(v28 + 17);
  v36 = *(v28 + 19);
  v50 = v28[21];
  v48 = v35;
  v49 = v36;
  v47 = v34;
  v45 = v31;
  v46 = v32;
  v23 = objc_msgSend_fromEspressoBuffer_(CSUEspressoBuffer, v25, &__dst, v26, v27);
  if (v39 < 0)
  {
    operator delete(__p);
  }

LABEL_21:

  return v23;
}

void sub_1AC0BFE78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1AC0C01E8(uint64_t a1, const char **a2, uint64_t a3)
{
  v5 = *a2;
  v6 = strlen(*a2);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1AC060A04();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v6;
  if (v6)
  {
    memmove(a1, v5, v6);
  }

  *(a1 + v7) = 0;
  v8 = *(a3 + 8);
  *(a1 + 40) = 0;
  *(a1 + 24) = &unk_1F20D01C0;
  *(a1 + 32) = v8;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v10 = *(a3 + 16);
  v9 = *(a3 + 24);
  if (v9 != v10)
  {
    if (((v9 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AC060AAC();
  }

  v11 = *(a3 + 48);
  *(a1 + 64) = *(a3 + 40);
  *(a1 + 72) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_1AC0C033C(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v4;
    operator delete(v4);
  }

  sub_1AC1221D8(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1AC0C077C(_Unwind_Exception *a1, int a2)
{
  sub_1AC067008(&v9);

  if (a2 != 1)
  {
    _Unwind_Resume(a1);
  }

  v6 = __cxa_begin_catch(a1);
  v7 = sub_1AC070210(v6, v3);
  __cxa_end_catch();
  return v7;
}

void sub_1AC0C0E00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12)
{
  sub_1AC068024();
  if (__p)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v16 = __cxa_begin_catch(a1);
    sub_1AC070210(v16, v12);
    __cxa_end_catch();
    if (*MEMORY[0x1E69E9840] != *(v13 - 88))
    {
      JUMPOUT(0x1AC0C0A90);
    }

    JUMPOUT(0x1AC0C08C8);
  }

  _Unwind_Resume(a1);
}

void sub_1AC0C1728(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  __cxa_free_exception(v38);
  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1AC0C1EAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, char a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1AC068024();
  if (a26)
  {
    operator delete(a26);
  }

  sub_1AC068024();

  _Unwind_Resume(a1);
}

uint64_t sub_1AC0C1F64(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "The given CSUBuffer instance is nil.");
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "The given CSUBuffer is not an instance of CSUEspressoBuffer.");
LABEL_6:
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v6 = objc_msgSend_espressoBuffer(v1, v2, v3, v4, v5);

  return v6;
}

void sub_1AC0C201C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);

  _Unwind_Resume(a1);
}

void sub_1AC0C2048(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 168);
  if (v4 == 65568 || v4 == 131104)
  {
    v6 = 4;
  }

  else
  {
    if (v4 != 262152)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Unsupported espresso type encountered.");
      goto LABEL_13;
    }

    v6 = 1;
  }

  v7 = *(v3 + 160) * *(v3 + 120) * v6;
  v8 = *(v3 + 120);
  v9 = *(v3 + 136);
  v10 = *(v3 + 152);
  v18 = *(v3 + 168);
  v11 = *(v3 + 8);
  v12 = *(v3 + 40);
  v17[1] = *(v3 + 24);
  v17[2] = v12;
  v17[0] = v11;
  v13 = *(v3 + 56);
  v14 = *(v3 + 72);
  v15 = *(v3 + 104);
  v17[5] = *(v3 + 88);
  v17[6] = v15;
  v17[3] = v13;
  v17[4] = v14;
  v17[8] = v9;
  v17[9] = v10;
  v17[7] = v8;
  memptr = 0;
  if (!malloc_type_posix_memalign(&memptr, 0x1000uLL, (v7 + 4095) & 0xFFFFFFFFFFFFF000, 0xA6D64935uLL))
  {
    *&v17[0] = memptr;
    memcpy(memptr, *(v3 + 8), v7);
    LOWORD(memptr) = 257;
    sub_1AC06910C(a2, v17);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Failed to allocate aligned memory.");
LABEL_13:
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void sub_1AC0C2794(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, char a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1AC068024();
  if (a26)
  {
    operator delete(a26);
  }

  sub_1AC068024();

  _Unwind_Resume(a1);
}

void sub_1AC0C2B3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  sub_1AC066D78(&a19);

  _Unwind_Resume(a1);
}

void sub_1AC0C3A04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, void *a35, uint64_t a36)
{
  sub_1AC09790C((v36 - 192));
  sub_1AC069094(&a16);
  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_1AC0C3B6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, void *a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, ...)
{
  va_start(va, a31);
  if (*(v31 - 169) < 0)
  {
    operator delete(*(v31 - 192));
  }

  sub_1AC069094(va);
  if (SHIBYTE(a25) < 0)
  {
    operator delete(a23);
  }

  sub_1AC0959BC(&a18);
  operator delete(a9);
  _Unwind_Resume(a1);
}

void sub_1AC0C4974(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (!a13)
  {
    _Unwind_Resume(a1);
  }

  operator delete(a13);
  _Unwind_Resume(a1);
}

void sub_1AC0C4F74(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (a4)
  {
    objc_msgSend_nextTokensForInputs_AndforMaskPosition_(a4, a2, a3, a5, a5);
    v7 = v12;
    if (v13 != v12)
    {
      if (((v13 - v12) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1AC060AAC();
    }
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    operator delete(v7);
  }

  v8 = *(a2 + 104);
  if (v8 != (a2 + 112))
  {
    do
    {
      *(4 * *(v8 + 7)) = 872415232;
      v9 = v8[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v8[2];
          v11 = *v10 == v8;
          v8 = v10;
        }

        while (!v11);
      }

      v8 = v10;
    }

    while (v10 != (a2 + 112));
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
}

void sub_1AC0C5388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_1AC069094(va);
  operator delete(v21);
  v24 = *(v22 - 88);
  if (v24)
  {
    *(v22 - 80) = v24;
    operator delete(v24);
  }

  _Unwind_Resume(a1);
}

void sub_1AC0C53BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  sub_1AC069094(va);
  if (v10)
  {
    operator delete(v10);
    if (!v9)
    {
LABEL_3:
      sub_1AC097890(va1);
      _Unwind_Resume(a1);
    }
  }

  else if (!v9)
  {
    goto LABEL_3;
  }

  operator delete(v9);
  sub_1AC097890(va1);
  _Unwind_Resume(a1);
}

void sub_1AC0C5410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_1AC097890(va);
  _Unwind_Resume(a1);
}

void sub_1AC0C6D88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, char *a36, uint64_t a37, uint64_t a38, char *a39, uint64_t a40, uint64_t a41, char *a42, uint64_t a43, void **a44)
{
  if (a28 < 0)
  {
    operator delete(__p);
    if ((a34 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((a34 & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  operator delete(a29);
LABEL_7:
  sub_1AC0CD838(&a35, a36);
  sub_1AC0CD838(&a38, a39);
  sub_1AC0CD838(&a41, a42);
  sub_1AC063324(&a44);
  sub_1AC069094(v44 - 152);
  if (*(v44 - 113) < 0)
  {
    operator delete(*(v44 - 136));
  }

  _Unwind_Resume(a1);
}

void sub_1AC0C9850(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, void *a23, void *a24, uint64_t a25, void *__p, _Unwind_Exception *exception_object, uint64_t a28, uint64_t a29, void *a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, void **a57, uint64_t a58)
{
  sub_1AC06ABB4(&a42);
  if (v58)
  {
    operator delete(v58);
    if (!__p)
    {
LABEL_3:
      if (!exception_object)
      {
LABEL_8:
        if (a22)
        {
          operator delete(a22);
          v60 = a23;
          if (a23)
          {
            goto LABEL_10;
          }
        }

        else
        {
          v60 = a23;
          if (a23)
          {
LABEL_10:
            operator delete(v60);
            sub_1AC063324(&a57);
            if (a30)
            {
              goto LABEL_11;
            }

            goto LABEL_15;
          }
        }

        sub_1AC063324(&a57);
        if (a30)
        {
LABEL_11:
          operator delete(a30);
          v61 = a24;
          if (a24)
          {
            goto LABEL_12;
          }

          goto LABEL_16;
        }

LABEL_15:
        v61 = a24;
        if (a24)
        {
LABEL_12:
          operator delete(v61);
          _Unwind_Resume(a1);
        }

LABEL_16:
        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(exception_object);
      goto LABEL_8;
    }
  }

  else if (!__p)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if (!exception_object)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

uint64_t sub_1AC0C9C34(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_1AC0674A0(a1, *a2, *(a2 + 1));
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    v10 = *(a2 + 3);
    v9 = *(a2 + 4);
    v7 = v9 - v10;
    if (v9 == v10)
    {
      return a1;
    }

LABEL_5:
    if ((v7 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AC060AAC();
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v6 = *(a2 + 3);
  v5 = *(a2 + 4);
  v7 = v5 - v6;
  if (v5 != v6)
  {
    goto LABEL_5;
  }

  return a1;
}

void sub_1AC0C9D0C(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  sub_1AC1221D8(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1AC0C9D30(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1AC0C9D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v12 = *MEMORY[0x1E69E9840];
  blob_shape = espresso_network_query_blob_shape();
  v8 = 21;
  strcpy(__p, "Could not query blob!");
  sub_1AC0CD0A0(&blob_shape, __p);
  if (v8 < 0)
  {
    operator delete(*__p);
  }

  espresso_buffer_pack_tensor_shape();
  v10[0] = a5;
  v11 = 65568;
  *__p = 1;
  sub_1AC06910C(a1, v10);
}

void sub_1AC0C9E88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AC0CA8E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  operator delete(v39);
  operator delete(v38);
  operator delete(v37);
  operator delete(v36);
  sub_1AC06C6C0(&a36);
  _Unwind_Resume(a1);
}

void sub_1AC0CB3C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33)
{
  sub_1AC068024();
  if (a25 < 0)
  {
    operator delete(__p);
  }

  sub_1AC0C9D30(&a26);
  sub_1AC0CB5E8(v33 - 144);
  _Unwind_Resume(a1);
}

uint64_t sub_1AC0CB4A4(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  prime = *(a2 + 8);
  if (prime == 1)
  {
    prime = 2;
LABEL_17:
    sub_1AC06A164(a1, prime);
    goto LABEL_18;
  }

  if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(*(a2 + 8));
    v5 = *(a1 + 8);
    v6 = prime >= *&v5;
    if (prime > *&v5)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v5 = 0;
    v6 = 1;
    if (prime)
    {
      goto LABEL_17;
    }
  }

  if (!v6)
  {
    v7 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v5 < 3uLL || (v8 = vcnt_s8(v5), v8.i16[0] = vaddlv_u8(v8), v8.u32[0] > 1uLL))
    {
      v7 = std::__next_prime(v7);
    }

    else
    {
      v9 = 1 << -__clz(v7 - 1);
      if (v7 >= 2)
      {
        v7 = v9;
      }
    }

    if (prime <= v7)
    {
      prime = v7;
    }

    if (prime < *&v5)
    {
      goto LABEL_17;
    }
  }

LABEL_18:
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_1AC0CFCA8(a1, i + 2, i + 1);
  }

  return a1;
}

uint64_t sub_1AC0CB5E8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = *(v2 + 5);
      if (v6)
      {
        *(v2 + 6) = v6;
        operator delete(v6);
      }

      if (v2[39] < 0)
      {
        operator delete(*(v2 + 2));
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

void sub_1AC0CB8A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12)
{
  if (v12)
  {
    operator delete(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AC0CB8EC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    espresso_network_bind_buffer();
    operator new();
  }
}

void sub_1AC0CBAE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AC0CC5D8(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  sub_1AC0CB5E8(v2 - 160);
  _Unwind_Resume(a1);
}

void sub_1AC0CC60C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if ((a36 & 0x80000000) == 0)
  {
    sub_1AC0CB5E8(v36 - 160);
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  sub_1AC0CB5E8(v36 - 160);
  _Unwind_Resume(a1);
}

void sub_1AC0CC838(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AC0CCF4C(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 2)
  {
    if (a2)
    {
      v10 = 4 * a2;
      bzero(*(a1 + 8), 4 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 2) + a2;
    if (v7 >> 62)
    {
      sub_1AC060AAC();
    }

    v8 = v3 - v5;
    if (v8 >> 1 > v7)
    {
      v7 = v8 >> 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v9 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 62))
      {
        operator new();
      }

      sub_1AC066FD4();
    }

    v11 = (4 * (v6 >> 2));
    v12 = 4 * a2;
    bzero(v11, 4 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

unsigned int *sub_1AC0CD0A0(unsigned int *result, uint64_t **a2)
{
  if (*result)
  {
    v2 = result;
    sub_1AC06A5AC(result, a2);
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    sub_1AC063FAC(&v10, " [espresso error: ", &v9);
    std::to_string(&v8, *v2);
    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v4 = &v8;
    }

    else
    {
      v4 = v8.__r_.__value_.__r.__words[0];
    }

    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v8.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v8.__r_.__value_.__l.__size_;
    }

    v6 = std::string::append(&v10, v4, size);
    v7 = *&v6->__r_.__value_.__l.__data_;
    v11.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v11.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    sub_1AC063FAC(&v12, "]", &v11);
    std::runtime_error::runtime_error(exception, &v12);
    exception->__vftable = &unk_1F20D02F8;
    __cxa_throw(exception, &unk_1F20D04F8, std::runtime_error::~runtime_error);
  }

  return result;
}

void sub_1AC0CD1C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v35 - 33) < 0)
  {
    operator delete(*(v35 - 56));
    if ((a33 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a15 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((a33 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a28);
  if ((a15 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a27 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(a10);
  if ((a27 & 0x80000000) == 0)
  {
LABEL_5:
    if (a21 < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(a22);
  if (a21 < 0)
  {
LABEL_6:
    operator delete(__p);
    if ((v34 & 1) == 0)
    {
LABEL_14:
      _Unwind_Resume(a1);
    }

LABEL_13:
    __cxa_free_exception(v33);
    goto LABEL_14;
  }

LABEL_12:
  if (!v34)
  {
    goto LABEL_14;
  }

  goto LABEL_13;
}

void *sub_1AC0CD2B0(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      v9 = v8;
      v10 = a4;
      operator delete(v9);
      a4 = v10;
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v11 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v11 = a4;
      }

      v12 = v7 >= 0x7FFFFFFFFFFFFFFCLL;
      v13 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v12)
      {
        v13 = v11;
      }

      if (!(v13 >> 62))
      {
        operator new();
      }
    }

    sub_1AC060AAC();
  }

  v14 = result[1];
  v15 = v14 - v8;
  if (a4 > (v14 - v8) >> 2)
  {
    v16 = &__src[v15];
    if (v14 == v8)
    {
      v17 = result[1];
      v18 = v17;
      if (v16 == a3)
      {
        goto LABEL_26;
      }
    }

    else
    {
      result = memmove(*result, __src, v15);
      v17 = v6[1];
      v18 = v17;
      if (v16 == a3)
      {
        goto LABEL_26;
      }
    }

    v21 = &a3[v8] - &__src[v14] - 4;
    if (v21 >= 0x1C)
    {
      v18 = v17;
      if (v8 + v17 - &__src[v14] >= 0x20)
      {
        v22 = (v21 >> 2) + 1;
        v23 = 4 * (v22 & 0x7FFFFFFFFFFFFFF8);
        v16 += v23;
        v18 = (v17 + v23);
        v24 = (v17 + 16);
        v25 = &__src[v14 - v8 + 16];
        v26 = v22 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v27 = *v25;
          *(v24 - 1) = *(v25 - 1);
          *v24 = v27;
          v24 += 2;
          v25 += 32;
          v26 -= 8;
        }

        while (v26);
        if (v22 == (v22 & 0x7FFFFFFFFFFFFFF8))
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      v18 = v17;
    }

    do
    {
      v28 = *v16;
      v16 += 4;
      *v18 = v28;
      v18 += 4;
    }

    while (v16 != a3);
LABEL_26:
    v20 = v18;
    goto LABEL_27;
  }

  v19 = a3 - __src;
  if (v19)
  {
    result = memmove(*result, __src, v19);
  }

  v20 = v8 + v19;
LABEL_27:
  v6[1] = v20;
  return result;
}

void sub_1AC0CD4D0(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (*(a3 + 23) < 0)
  {
    sub_1AC0674A0(a2, *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    *(a2 + 16) = *(a3 + 2);
    *a2 = v5;
  }

  v6 = *(a3 + 8);
  *(a2 + 40) = 0;
  *(a2 + 24) = &unk_1F20D01C0;
  *(a2 + 32) = v6;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  v8 = *(a3 + 5);
  v7 = *(a3 + 6);
  if (v7 != v8)
  {
    if (((v7 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AC060AAC();
  }

  v9 = *(a3 + 9);
  *(a2 + 64) = *(a3 + 8);
  *(a2 + 72) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 24) = &unk_1F20D0320;
}

void sub_1AC0CD5E0(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v4;
    operator delete(v4);
  }

  sub_1AC1221D8(v1);
  _Unwind_Resume(a1);
}

void sub_1AC0CD604(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    while (1)
    {
      v3 = *v2;
      v2[5] = &unk_1F20D01C0;
      v4 = v2[11];
      if (v4)
      {
        if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          break;
        }
      }

      v5 = v2[7];
      if (v5)
      {
        goto LABEL_7;
      }

LABEL_8:
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
      if (!v3)
      {
        return;
      }
    }

    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    v5 = v2[7];
    if (!v5)
    {
      goto LABEL_8;
    }

LABEL_7:
    v2[8] = v5;
    operator delete(v5);
    goto LABEL_8;
  }
}

uint64_t *sub_1AC0CD6E4(uint64_t **a1, uint64_t *a2, const void **a3, __int128 *a4)
{
  v4 = sub_1AC0BC540(a1, a2, &v7, &v6, a3);
  if (!*v4)
  {
    operator new();
  }

  return *v4;
}

void sub_1AC0CD7C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC0CD7D4(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1AC0CD7D4(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 56);
      if (v3)
      {
        *(v2 + 64) = v3;
        operator delete(v3);
      }

      if (*(v2 + 55) < 0)
      {
        operator delete(*(v2 + 32));
      }
    }

    operator delete(v2);
  }

  return a1;
}

void sub_1AC0CD838(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_1AC0CD838(a1, *a2);
    sub_1AC0CD838(a1, *(a2 + 1));
    v4 = *(a2 + 7);
    if (v4)
    {
      *(a2 + 8) = v4;
      operator delete(v4);
    }

    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
      v5 = a2;
    }

    else
    {
      v5 = a2;
    }

    operator delete(v5);
  }
}

void sub_1AC0CD9C4(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 64) = v5;
    operator delete(v5);
    if ((*(v2 + 55) & 0x80000000) == 0)
    {
LABEL_3:
      sub_1AC0CD7D4(v1);
      _Unwind_Resume(a1);
    }
  }

  else if ((*(v2 + 55) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v2 + 32));
  sub_1AC0CD7D4(v1);
  _Unwind_Resume(a1);
}

void sub_1AC0CDA30(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F20D0F88;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC5AC440);
}

void sub_1AC0CDAAC(void *a1, const char **a2, uint64_t **a3)
{
  v4 = *a2;
  v5 = strlen(*a2);
  if (v5 < 0x7FFFFFFFFFFFFFF8)
  {
    v6 = v5;
    if (v5 < 0x17)
    {
      v8 = v5;
      if (v5)
      {
        memmove(&__dst, v4, v5);
      }

      *(&__dst + v6) = 0;
      *a1 = &unk_1F20D0340;
      operator new();
    }

    operator new();
  }

  sub_1AC060A04();
}

void sub_1AC0CDBE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  std::__shared_weak_count::~__shared_weak_count(v15);
  operator delete(v17);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_1AC0CDC18(uint64_t **a1, const void **a2, uint64_t a3, __int128 **a4)
{
  v4 = a1[1];
  if (!v4)
  {
LABEL_27:
    operator new();
  }

  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = a2[1];
  }

  while (1)
  {
    while (1)
    {
      v8 = v4;
      v11 = v4[4];
      v9 = v4 + 4;
      v10 = v11;
      v12 = *(v9 + 23);
      v13 = v12 >= 0 ? v9 : v10;
      v14 = v12 >= 0 ? *(v9 + 23) : v9[1];
      v15 = (v14 >= v7 ? v7 : v14);
      v16 = memcmp(v6, v13, v15);
      if (v16)
      {
        break;
      }

      if (v7 >= v14)
      {
        goto LABEL_22;
      }

LABEL_8:
      v4 = *v8;
      if (!*v8)
      {
        goto LABEL_27;
      }
    }

    if (v16 < 0)
    {
      goto LABEL_8;
    }

LABEL_22:
    v17 = memcmp(v13, v6, v15);
    if (v17)
    {
      if ((v17 & 0x80000000) == 0)
      {
        return v8;
      }

      goto LABEL_26;
    }

    if (v14 >= v7)
    {
      return v8;
    }

LABEL_26:
    v4 = v8[1];
    if (!v4)
    {
      goto LABEL_27;
    }
  }
}

void sub_1AC0CDDB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC0CD7D4(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1AC0CDDC8(uint64_t **a1, const void **a2, uint64_t a3, __int128 **a4)
{
  v4 = a1[1];
  if (!v4)
  {
LABEL_27:
    operator new();
  }

  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = a2[1];
  }

  while (1)
  {
    while (1)
    {
      v8 = v4;
      v11 = v4[4];
      v9 = v4 + 4;
      v10 = v11;
      v12 = *(v9 + 23);
      v13 = v12 >= 0 ? v9 : v10;
      v14 = v12 >= 0 ? *(v9 + 23) : v9[1];
      v15 = (v14 >= v7 ? v7 : v14);
      v16 = memcmp(v6, v13, v15);
      if (v16)
      {
        break;
      }

      if (v7 >= v14)
      {
        goto LABEL_22;
      }

LABEL_8:
      v4 = *v8;
      if (!*v8)
      {
        goto LABEL_27;
      }
    }

    if (v16 < 0)
    {
      goto LABEL_8;
    }

LABEL_22:
    v17 = memcmp(v13, v6, v15);
    if (v17)
    {
      if ((v17 & 0x80000000) == 0)
      {
        return v8;
      }

      goto LABEL_26;
    }

    if (v14 >= v7)
    {
      return v8;
    }

LABEL_26:
    v4 = v8[1];
    if (!v4)
    {
      goto LABEL_27;
    }
  }
}

void sub_1AC0CDF64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC0CD7D4(va);
  _Unwind_Resume(a1);
}

void sub_1AC0CDF78(void *a1, char *a2, char *a3)
{
  v4 = a2;
  v5 = a1;
  if (!a1[2])
  {
    goto LABEL_79;
  }

  v6 = *a1;
  v8 = (a1 + 1);
  v7 = a1[1];
  *a1 = a1 + 1;
  *(v7 + 16) = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (*(v6 + 1))
  {
    v9 = *(v6 + 1);
  }

  else
  {
    v9 = v6;
  }

  v40 = a1;
  v42 = v9;
  if (!v9)
  {
    v13 = 0;
    goto LABEL_78;
  }

  v10 = *(v9 + 2);
  if (v10)
  {
    v11 = *v10;
    if (*v10 == v9)
    {
      *v10 = 0;
      while (1)
      {
        v39 = *(v10 + 1);
        if (!v39)
        {
          break;
        }

        do
        {
          v10 = v39;
          v39 = *v39;
        }

        while (v39);
      }
    }

    else
    {
      for (*(v10 + 1) = 0; v11; v11 = *(v10 + 1))
      {
        do
        {
          v10 = v11;
          v11 = *v11;
        }

        while (v11);
      }
    }
  }

  v41 = v10;
  if (a2 == a3)
  {
    v12 = a1;
    sub_1AC0CD838(a1, v9);
    if (v10)
    {
      goto LABEL_75;
    }

    goto LABEL_79;
  }

  v14 = a2;
  do
  {
    if (v9 != v14)
    {
      v15 = v14[55];
      if (v9[55] < 0)
      {
        if (v15 >= 0)
        {
          v17 = v14 + 32;
        }

        else
        {
          v17 = *(v14 + 4);
        }

        if (v15 >= 0)
        {
          v18 = v14[55];
        }

        else
        {
          v18 = *(v14 + 5);
        }

        sub_1AC077768(v9 + 4, v17, v18);
      }

      else if (v14[55] < 0)
      {
        sub_1AC077698(v9 + 4, *(v14 + 4), *(v14 + 5));
      }

      else
      {
        v16 = *(v14 + 2);
        *(v9 + 6) = *(v14 + 6);
        *(v9 + 2) = v16;
      }

      sub_1AC06A3B8(v9 + 7, *(v14 + 7), *(v14 + 8), (*(v14 + 8) - *(v14 + 7)) >> 3);
      v9 = v42;
    }

    v19 = *v8;
    v20 = (v5 + 1);
    v21 = (v5 + 1);
    if (*v8)
    {
      v22 = v9[55];
      if (v22 >= 0)
      {
        v23 = v9 + 32;
      }

      else
      {
        v23 = *(v9 + 4);
      }

      if (v22 >= 0)
      {
        v24 = v9[55];
      }

      else
      {
        v24 = *(v9 + 5);
      }

      while (1)
      {
        v20 = v19;
        v27 = *(v19 + 4);
        v25 = v19 + 32;
        v26 = v27;
        v28 = *(v25 + 23);
        if (v28 >= 0)
        {
          v29 = v25;
        }

        else
        {
          v29 = v26;
        }

        if (v28 >= 0)
        {
          v30 = *(v25 + 23);
        }

        else
        {
          v30 = v25[1];
        }

        if (v30 >= v24)
        {
          v31 = v24;
        }

        else
        {
          v31 = v30;
        }

        v32 = memcmp(v23, v29, v31);
        if (v32)
        {
          if (v32 < 0)
          {
            goto LABEL_36;
          }

LABEL_50:
          v19 = v20[1];
          if (!v19)
          {
            v21 = v20 + 1;
            break;
          }
        }

        else
        {
          if (v24 >= v30)
          {
            goto LABEL_50;
          }

LABEL_36:
          v19 = *v20;
          v21 = v20;
          if (!*v20)
          {
            break;
          }
        }
      }
    }

    *v9 = 0;
    *(v9 + 1) = 0;
    *(v9 + 2) = v20;
    *v21 = v9;
    v33 = **v5;
    if (v33)
    {
      *v5 = v33;
    }

    sub_1AC07B4F8(v5[1], v9);
    ++v5[2];
    v9 = v41;
    v42 = v41;
    if (v41)
    {
      v10 = *(v41 + 2);
      if (v10)
      {
        v34 = *v10;
        if (*v10 == v41)
        {
          *v10 = 0;
          while (1)
          {
            v37 = *(v10 + 1);
            if (!v37)
            {
              break;
            }

            do
            {
              v10 = v37;
              v37 = *v37;
            }

            while (v37);
          }
        }

        else
        {
          for (*(v10 + 1) = 0; v34; v34 = *(v10 + 1))
          {
            do
            {
              v10 = v34;
              v34 = *v34;
            }

            while (v34);
          }
        }
      }

      v41 = v10;
      v35 = *(v14 + 1);
      if (!v35)
      {
        do
        {
LABEL_65:
          v4 = *(v14 + 2);
          v36 = *v4 == v14;
          v14 = v4;
        }

        while (!v36);
        goto LABEL_67;
      }
    }

    else
    {
      v10 = 0;
      v35 = *(v14 + 1);
      if (!v35)
      {
        goto LABEL_65;
      }
    }

    do
    {
      v4 = v35;
      v35 = *v35;
    }

    while (v35);
LABEL_67:
    if (!v9)
    {
      break;
    }

    v14 = v4;
  }

  while (v4 != a3);
  v12 = v40;
  sub_1AC0CD838(v40, v9);
  if (v10)
  {
LABEL_75:
    for (i = *(v10 + 2); i; i = *(i + 2))
    {
      v10 = i;
    }

    a1 = v12;
    v13 = v10;
LABEL_78:
    sub_1AC0CD838(a1, v13);
  }

LABEL_79:
  if (v4 != a3)
  {
    sub_1AC0CE358(v5, (v4 + 32));
  }
}

void sub_1AC0CE2EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC0CE300(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AC0CE300(uint64_t a1)
{
  sub_1AC0CD838(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = *(v3 + 16);
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_1AC0CD838(*a1, v2);
  }

  return a1;
}

void sub_1AC0CE47C(uint64_t **a1, char *a2, char *a3)
{
  v4 = a2;
  v5 = a1;
  if (!a1[2])
  {
    goto LABEL_79;
  }

  v6 = *a1;
  v8 = a1 + 1;
  v7 = a1[1];
  *a1 = (a1 + 1);
  v7[2] = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (v6[1])
  {
    v9 = v6[1];
  }

  else
  {
    v9 = v6;
  }

  v40 = a1;
  v42 = v9;
  if (!v9)
  {
    v13 = 0;
    goto LABEL_78;
  }

  v10 = v9[2];
  if (v10)
  {
    v11 = *v10;
    if (*v10 == v9)
    {
      *v10 = 0;
      while (1)
      {
        v39 = *(v10 + 1);
        if (!v39)
        {
          break;
        }

        do
        {
          v10 = v39;
          v39 = *v39;
        }

        while (v39);
      }
    }

    else
    {
      for (*(v10 + 1) = 0; v11; v11 = *(v10 + 1))
      {
        do
        {
          v10 = v11;
          v11 = *v11;
        }

        while (v11);
      }
    }
  }

  v41 = v10;
  if (a2 == a3)
  {
    v12 = a1;
    sub_1AC0CD838(a1, v9);
    if (v10)
    {
      goto LABEL_75;
    }

    goto LABEL_79;
  }

  v14 = a2;
  do
  {
    if (v9 != v14)
    {
      v15 = v14[55];
      if (*(v9 + 55) < 0)
      {
        if (v15 >= 0)
        {
          v17 = v14 + 32;
        }

        else
        {
          v17 = *(v14 + 4);
        }

        if (v15 >= 0)
        {
          v18 = v14[55];
        }

        else
        {
          v18 = *(v14 + 5);
        }

        sub_1AC077768(v9 + 4, v17, v18);
      }

      else if (v14[55] < 0)
      {
        sub_1AC077698(v9 + 4, *(v14 + 4), *(v14 + 5));
      }

      else
      {
        v16 = *(v14 + 2);
        v9[6] = *(v14 + 6);
        *(v9 + 2) = v16;
      }

      sub_1AC098720(v9 + 7, *(v14 + 7), *(v14 + 8), (*(v14 + 8) - *(v14 + 7)) >> 2);
      v9 = v42;
    }

    v19 = *v8;
    v20 = v5 + 1;
    v21 = v5 + 1;
    if (*v8)
    {
      v22 = *(v9 + 55);
      if (v22 >= 0)
      {
        v23 = v9 + 4;
      }

      else
      {
        v23 = v9[4];
      }

      if (v22 >= 0)
      {
        v24 = *(v9 + 55);
      }

      else
      {
        v24 = v9[5];
      }

      while (1)
      {
        v20 = v19;
        v27 = v19[4];
        v25 = v19 + 4;
        v26 = v27;
        v28 = *(v25 + 23);
        if (v28 >= 0)
        {
          v29 = v25;
        }

        else
        {
          v29 = v26;
        }

        if (v28 >= 0)
        {
          v30 = *(v25 + 23);
        }

        else
        {
          v30 = v25[1];
        }

        if (v30 >= v24)
        {
          v31 = v24;
        }

        else
        {
          v31 = v30;
        }

        v32 = memcmp(v23, v29, v31);
        if (v32)
        {
          if (v32 < 0)
          {
            goto LABEL_36;
          }

LABEL_50:
          v19 = v20[1];
          if (!v19)
          {
            v21 = v20 + 1;
            break;
          }
        }

        else
        {
          if (v24 >= v30)
          {
            goto LABEL_50;
          }

LABEL_36:
          v19 = *v20;
          v21 = v20;
          if (!*v20)
          {
            break;
          }
        }
      }
    }

    *v9 = 0;
    v9[1] = 0;
    v9[2] = v20;
    *v21 = v9;
    v33 = **v5;
    if (v33)
    {
      *v5 = v33;
    }

    sub_1AC07B4F8(v5[1], v9);
    v5[2] = (v5[2] + 1);
    v9 = v41;
    v42 = v41;
    if (v41)
    {
      v10 = *(v41 + 2);
      if (v10)
      {
        v34 = *v10;
        if (*v10 == v41)
        {
          *v10 = 0;
          while (1)
          {
            v37 = *(v10 + 1);
            if (!v37)
            {
              break;
            }

            do
            {
              v10 = v37;
              v37 = *v37;
            }

            while (v37);
          }
        }

        else
        {
          for (*(v10 + 1) = 0; v34; v34 = *(v10 + 1))
          {
            do
            {
              v10 = v34;
              v34 = *v34;
            }

            while (v34);
          }
        }
      }

      v41 = v10;
      v35 = *(v14 + 1);
      if (!v35)
      {
        do
        {
LABEL_65:
          v4 = *(v14 + 2);
          v36 = *v4 == v14;
          v14 = v4;
        }

        while (!v36);
        goto LABEL_67;
      }
    }

    else
    {
      v10 = 0;
      v35 = *(v14 + 1);
      if (!v35)
      {
        goto LABEL_65;
      }
    }

    do
    {
      v4 = v35;
      v35 = *v35;
    }

    while (v35);
LABEL_67:
    if (!v9)
    {
      break;
    }

    v14 = v4;
  }

  while (v4 != a3);
  v12 = v40;
  sub_1AC0CD838(v40, v9);
  if (v10)
  {
LABEL_75:
    for (i = *(v10 + 2); i; i = *(i + 2))
    {
      v10 = i;
    }

    a1 = v12;
    v13 = v10;
LABEL_78:
    sub_1AC0CD838(a1, v13);
  }

LABEL_79:
  if (v4 != a3)
  {
    sub_1AC0CE804(v5, v4 + 2);
  }
}

void sub_1AC0CE7F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC0CE300(va);
  _Unwind_Resume(a1);
}

void sub_1AC0CE948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC0CD7D4(va);
  _Unwind_Resume(a1);
}

void sub_1AC0CE95C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 8);
  if (v6)
  {
    bzero(*a1, 8 * v6);
    v7 = *(a1 + 16);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    if (v7)
    {
      while (a2 != a3)
      {
        sub_1AC0CEB8C(v7 + 16, a2 + 16);
        v8 = *v7;
        sub_1AC0CECAC(a1, v7);
        a2 = *a2;
        v7 = v8;
        if (!v8)
        {
          goto LABEL_5;
        }
      }

      while (1)
      {
        v9 = *v7;
        *(v7 + 5) = &unk_1F20D01C0;
        v10 = *(v7 + 11);
        if (v10)
        {
          if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            break;
          }
        }

        v11 = *(v7 + 7);
        if (v11)
        {
          goto LABEL_13;
        }

LABEL_14:
        if (v7[39] < 0)
        {
          operator delete(*(v7 + 2));
        }

        operator delete(v7);
        v7 = v9;
        if (!v9)
        {
          goto LABEL_5;
        }
      }

      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
      v11 = *(v7 + 7);
      if (!v11)
      {
        goto LABEL_14;
      }

LABEL_13:
      *(v7 + 8) = v11;
      operator delete(v11);
      goto LABEL_14;
    }
  }

LABEL_5:
  if (a2 != a3)
  {
    operator new();
  }
}

void sub_1AC0CEB30(void *a1)
{
  __cxa_begin_catch(a1);
  sub_1AC0CD604(v1, v2);
  __cxa_rethrow();
}

unsigned __int8 *sub_1AC0CEB8C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a2;
  if (a1 == a2)
  {
    *(a1 + 8) = *(a2 + 8);
    v6 = *(a2 + 8);
    v5 = *(a2 + 9);
    if (!v5)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (a1[23] < 0)
  {
    if ((a2[23] & 0x80u) == 0)
    {
      v7 = a2[23];
    }

    else
    {
      a2 = *a2;
      v7 = *(v2 + 1);
    }

    sub_1AC077768(a1, a2, v7);
  }

  else if ((a2[23] & 0x80) != 0)
  {
    sub_1AC077698(a1, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(a1 + 2) = *(a2 + 2);
    *a1 = v4;
  }

  *(a1 + 8) = *(v2 + 8);
  sub_1AC06A3B8(a1 + 5, *(v2 + 5), *(v2 + 6), (*(v2 + 6) - *(v2 + 5)) >> 3);
  v6 = *(v2 + 8);
  v5 = *(v2 + 9);
  if (v5)
  {
LABEL_13:
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

LABEL_14:
  v8 = *(a1 + 9);
  *(a1 + 8) = v6;
  *(a1 + 9) = v5;
  if (!v8 || atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  return a1;
}

uint64_t sub_1AC0CECAC(uint64_t *a1, uint64_t a2)
{
  v4 = (a2 + 16);
  v5 = *(a2 + 39);
  v6 = *(a2 + 24);
  if ((v5 & 0x80u) == 0)
  {
    v7 = (a2 + 16);
  }

  else
  {
    v7 = *(a2 + 16);
  }

  if ((v5 & 0x80u) == 0)
  {
    v8 = v5;
  }

  else
  {
    v8 = v6;
  }

  v9 = sub_1AC068888(&v19, v7, v8);
  *(a2 + 8) = v9;
  v10 = sub_1AC0CEE10(a1, v9, v4);
  v11 = a1[1];
  v12 = *(a2 + 8);
  v13 = vcnt_s8(v11);
  v13.i16[0] = vaddlv_u8(v13);
  if (v13.u32[0] > 1uLL)
  {
    if (v12 >= *&v11)
    {
      v12 %= *&v11;
    }
  }

  else
  {
    v12 &= *&v11 - 1;
  }

  if (v10)
  {
    *a2 = *v10;
    *v10 = a2;
    if (*a2)
    {
      v14 = *(*a2 + 8);
      if (v13.u32[0] > 1uLL)
      {
        if (v14 >= *&v11)
        {
          v14 %= *&v11;
        }
      }

      else
      {
        v14 &= *&v11 - 1;
      }

      if (v14 != v12)
      {
        v17 = (*a1 + 8 * v14);
LABEL_25:
        *v17 = a2;
      }
    }
  }

  else
  {
    *a2 = a1[2];
    a1[2] = a2;
    v15 = *a1;
    *(*a1 + 8 * v12) = a1 + 2;
    if (*a2)
    {
      v16 = *(*a2 + 8);
      if (v13.u32[0] > 1uLL)
      {
        if (v16 >= *&v11)
        {
          v16 %= *&v11;
        }
      }

      else
      {
        v16 &= *&v11 - 1;
      }

      v17 = (v15 + 8 * v16);
      goto LABEL_25;
    }
  }

  ++a1[3];
  return a2;
}

uint64_t *sub_1AC0CEE10(uint64_t a1, unint64_t a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v12 = 1;
    if (v6 >= 3)
    {
      v12 = (v6 & (v6 - 1)) != 0;
    }

    v13 = v12 | (2 * v6);
    v14 = vcvtps_u32_f32(v7 / v8);
    if (v13 <= v14)
    {
      prime = v14;
    }

    else
    {
      prime = v13;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v6 = *(a1 + 8);
    }

    if (prime > v6)
    {
      goto LABEL_15;
    }

    if (prime < v6)
    {
      v16 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v6 < 3 || (v17 = vcnt_s8(v6), v17.i16[0] = vaddlv_u8(v17), v17.u32[0] > 1uLL))
      {
        v19 = prime;
        v20 = std::__next_prime(v16);
        if (v19 <= v20)
        {
          prime = v20;
        }

        else
        {
          prime = v19;
        }

        if (prime >= v6)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v18 = 1 << -__clz(v16 - 1);
        if (v16 >= 2)
        {
          v16 = v18;
        }

        if (prime <= v16)
        {
          prime = v16;
        }

        if (prime >= v6)
        {
          goto LABEL_29;
        }
      }

LABEL_15:
      sub_1AC0CF134(a1, prime);
    }

LABEL_29:
    v6 = *(a1 + 8);
    v21 = vcnt_s8(v6);
    v21.i16[0] = vaddlv_u8(v21);
    v10 = v21.u32[0];
    if (v21.u32[0] <= 1uLL)
    {
      goto LABEL_4;
    }

    goto LABEL_30;
  }

  v9 = vcnt_s8(v6);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] <= 1uLL)
  {
LABEL_4:
    v11 = (v6 - 1) & a2;
    goto LABEL_32;
  }

LABEL_30:
  v11 = a2;
  if (v6 <= a2)
  {
    v11 = a2 % v6;
  }

LABEL_32:
  v22 = *(*a1 + 8 * v11);
  if (!v22)
  {
    return 0;
  }

  v23 = a3[23];
  if (v23 >= 0)
  {
    v24 = a3[23];
  }

  else
  {
    v24 = *(a3 + 1);
  }

  if (v23 < 0)
  {
    a3 = *a3;
  }

  if (v10 >= 2)
  {
    v37 = 0;
    do
    {
      v29 = v22;
      v22 = *v22;
      if (!v22)
      {
        break;
      }

      v41 = v22[1];
      v42 = v41;
      if (v41 >= v6)
      {
        v42 = v41 % v6;
      }

      if (v42 != v11)
      {
        break;
      }

      if (v41 != a2)
      {
        goto LABEL_55;
      }

      v43 = *(v22 + 39);
      v44 = v43;
      if ((v43 & 0x80u) != 0)
      {
        v43 = v22[3];
      }

      if (v43 == v24)
      {
        v45 = v44 >= 0 ? v22 + 2 : v22[2];
        v38 = memcmp(v45, a3, v24) == 0;
      }

      else
      {
LABEL_55:
        v38 = 0;
      }

      v39 = v38 != (v37 & 1);
      v40 = v37 & v39;
      v37 |= v39;
    }

    while (v40 != 1);
  }

  else
  {
    v25 = 0;
    v26 = v6 - 1;
    while (1)
    {
      v29 = v22;
      v22 = *v22;
      if (!v22)
      {
        break;
      }

      v30 = v22[1];
      if ((v30 & v26) != v11)
      {
        break;
      }

      if (v30 != a2)
      {
        goto LABEL_40;
      }

      v31 = *(v22 + 39);
      v32 = v31;
      if ((v31 & 0x80u) != 0)
      {
        v31 = v22[3];
      }

      if (v31 == v24)
      {
        if (v32 >= 0)
        {
          v33 = v22 + 2;
        }

        else
        {
          v33 = v22[2];
        }

        v34 = (memcmp(v33, a3, v24) == 0) != (v25 & 1);
        v35 = v25 & v34;
        v25 |= v34;
        if (v35)
        {
          return v29;
        }
      }

      else
      {
LABEL_40:
        v27 = (v25 & 1) != 0;
        v28 = v25 & v27;
        v25 |= v27;
        if (v28)
        {
          return v29;
        }
      }
    }
  }

  return v29;
}

void sub_1AC0CF134(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_1AC066FD4();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t **sub_1AC0CF398(void *a1, uint64_t *a2, uint64_t a3, __int128 **a4)
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

  v8 = sub_1AC068888(&v26, a2, v7);
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

void sub_1AC0CF7B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC06C66C(va);
  _Unwind_Resume(a1);
}

void sub_1AC0CF7C8(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 8);
  if (v6)
  {
    bzero(*a1, 8 * v6);
    v7 = *(a1 + 16);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    if (v7)
    {
      while (a2 != a3)
      {
        sub_1AC0CEB8C(v7 + 16, a2 + 16);
        v8 = *v7;
        sub_1AC0CF980(a1, v7);
        a2 = *a2;
        v7 = v8;
        if (!v8)
        {
          goto LABEL_17;
        }
      }

      while (1)
      {
        v9 = *v7;
        *(v7 + 5) = &unk_1F20D01C0;
        v10 = *(v7 + 11);
        if (v10)
        {
          if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            break;
          }
        }

        v11 = *(v7 + 7);
        if (v11)
        {
          goto LABEL_11;
        }

LABEL_12:
        if (v7[39] < 0)
        {
          operator delete(*(v7 + 2));
        }

        operator delete(v7);
        v7 = v9;
        if (!v9)
        {
          goto LABEL_17;
        }
      }

      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
      v11 = *(v7 + 7);
      if (!v11)
      {
        goto LABEL_12;
      }

LABEL_11:
      *(v7 + 8) = v11;
      operator delete(v11);
      goto LABEL_12;
    }
  }

LABEL_17:
  if (a2 != a3)
  {
    sub_1AC0CFAE4();
  }
}

void sub_1AC0CF93C(void *a1)
{
  __cxa_begin_catch(a1);
  sub_1AC0CD604(v1, v2);
  __cxa_rethrow();
}

void sub_1AC0CF96C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC06C66C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AC0CF980(uint64_t *a1, uint64_t a2)
{
  v4 = (a2 + 16);
  v5 = *(a2 + 39);
  v6 = *(a2 + 24);
  if ((v5 & 0x80u) == 0)
  {
    v7 = (a2 + 16);
  }

  else
  {
    v7 = *(a2 + 16);
  }

  if ((v5 & 0x80u) == 0)
  {
    v8 = v5;
  }

  else
  {
    v8 = v6;
  }

  v9 = sub_1AC068888(&v19, v7, v8);
  *(a2 + 8) = v9;
  v10 = sub_1AC0CEE10(a1, v9, v4);
  v11 = a1[1];
  v12 = *(a2 + 8);
  v13 = vcnt_s8(v11);
  v13.i16[0] = vaddlv_u8(v13);
  if (v13.u32[0] > 1uLL)
  {
    if (v12 >= *&v11)
    {
      v12 %= *&v11;
    }
  }

  else
  {
    v12 &= *&v11 - 1;
  }

  if (v10)
  {
    *a2 = *v10;
    *v10 = a2;
    if (*a2)
    {
      v14 = *(*a2 + 8);
      if (v13.u32[0] > 1uLL)
      {
        if (v14 >= *&v11)
        {
          v14 %= *&v11;
        }
      }

      else
      {
        v14 &= *&v11 - 1;
      }

      if (v14 != v12)
      {
        v17 = (*a1 + 8 * v14);
LABEL_25:
        *v17 = a2;
      }
    }
  }

  else
  {
    *a2 = a1[2];
    a1[2] = a2;
    v15 = *a1;
    *(*a1 + 8 * v12) = a1 + 2;
    if (*a2)
    {
      v16 = *(*a2 + 8);
      if (v13.u32[0] > 1uLL)
      {
        if (v16 >= *&v11)
        {
          v16 %= *&v11;
        }
      }

      else
      {
        v16 &= *&v11 - 1;
      }

      v17 = (v15 + 8 * v16);
      goto LABEL_25;
    }
  }

  ++a1[3];
  return a2;
}

void sub_1AC0CFC5C(_Unwind_Exception *a1)
{
  v6 = *v4;
  if (*v4)
  {
    *(v2 + 64) = v6;
    operator delete(v6);
    if ((*(v2 + 39) & 0x80000000) == 0)
    {
LABEL_3:
      sub_1AC06C66C(v1);
      _Unwind_Resume(a1);
    }
  }

  else if ((*(v2 + 39) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v3);
  sub_1AC06C66C(v1);
  _Unwind_Resume(a1);
}

uint64_t **sub_1AC0CFCA8(void *a1, uint64_t *a2, __int128 *a3)
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

  v7 = sub_1AC068888(&v25, a2, v6);
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

void sub_1AC0D007C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC0D00A8(va);
  _Unwind_Resume(a1);
}

void sub_1AC0D0090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC0D00A8(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1AC0D00A8(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 40);
      if (v3)
      {
        *(v2 + 48) = v3;
        operator delete(v3);
      }

      if (*(v2 + 39) < 0)
      {
        operator delete(*(v2 + 16));
      }
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t **sub_1AC0D010C(void *a1, uint64_t *a2, uint64_t a3, __int128 **a4)
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

  v8 = sub_1AC068888(&v26, a2, v7);
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

void sub_1AC0D0544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC06C66C(va);
  _Unwind_Resume(a1);
}

void sub_1AC0D0558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC06C66C(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_1AC0D0570(void *a1, uint64_t *a2, uint64_t a3, __int128 **a4)
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

  v8 = sub_1AC068888(&v26, a2, v7);
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

void sub_1AC0D0978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC0D00A8(va);
  _Unwind_Resume(a1);
}

void sub_1AC0D098C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC0D00A8(va);
  _Unwind_Resume(a1);
}

void sub_1AC0D09C4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F20D0FD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC5AC440);
}

void sub_1AC0D0A18(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    do
    {
      v4 = *v2;
      v5 = *(v2 + 5);
      if (v5)
      {
        *(v2 + 6) = v5;
        operator delete(v5);
      }

      if (v2[39] < 0)
      {
        operator delete(*(v2 + 2));
      }

      operator delete(v2);
      v2 = v4;
    }

    while (v4);
  }

  v3 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v3)
  {

    operator delete(v3);
  }
}

void sub_1AC0D2C48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
    if ((v27 & 1) == 0)
    {
LABEL_8:
      sub_1AC067644((v28 - 48));
      _Unwind_Resume(a1);
    }
  }

  else if (!v27)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v26);
  sub_1AC067644((v28 - 48));
  _Unwind_Resume(a1);
}

void sub_1AC0D3014(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1AC0D42CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20)
{
  if (v20)
  {
    operator delete(v20);
  }

  if (__p)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1AC0D485C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
    sub_1AC068024();
    _Unwind_Resume(a1);
  }

  sub_1AC068024();
  _Unwind_Resume(a1);
}

void sub_1AC0D493C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p)
{
  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1AC0D4BE4(_Unwind_Exception *a1, int a2)
{
  sub_1AC067008(&v9);

  if (a2 != 1)
  {
    _Unwind_Resume(a1);
  }

  v6 = __cxa_begin_catch(a1);
  v7 = sub_1AC070210(v6, v2);
  __cxa_end_catch();
  return v7;
}

void sub_1AC0D4E24(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      MEMORY[0x1AC5AC440](v21, v20, a3, a4, a5, a6, a7, a8);
      _Unwind_Resume(a1);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  MEMORY[0x1AC5AC440](v21, v20);
  _Unwind_Resume(a1);
}

void sub_1AC0D5778(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a50)
  {
    operator delete(a50);
    v53 = *(v52 - 256);
    if (!v53)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v53 = *(v52 - 256);
    if (!v53)
    {
LABEL_9:

      _Unwind_Resume(a1);
    }
  }

  *(v52 - 248) = v53;
  operator delete(v53);
  goto LABEL_9;
}

uint64_t sub_1AC0D5D08(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
  }

  return result;
}

uint64_t sub_1AC0D5D20()
{
  v1 = *v0;
  sub_1AC0D5D08(*v0, *(v0 + 8), *(v0 + 16));
  return v1;
}

double sub_1AC0D5D9C@<D0>(uint64_t a1@<X8>)
{
  sub_1AC0D89B0(MEMORY[0x1E69E7CC0]);
  if (qword_1EB54A430 != -1)
  {
    swift_once();
  }

  v3 = sub_1AC123F5C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AC0D8208(qword_1EB54A438, qword_1EB54A450);
  sub_1AC123F0C();
  sub_1AC123F4C();
  if (!v1)
  {
    sub_1AC123EFC();
    swift_allocObject();
    *&v8[0] = sub_1AC123EEC();
    sub_1AC123EDC();

    (*(v4 + 8))(v6, v3);
    v8[0] = v10;
    v8[1] = v11;
    v9 = v12;
    if (*(&v11 + 1))
    {
      sub_1AC0D6078(&qword_1EB54A360, &qword_1AC129FF0);
      sub_1AC0D6078(&qword_1EB54A368, &qword_1AC129FF8);
      if (swift_dynamicCast())
      {
        return result;
      }
    }

    else
    {
      sub_1AC0D8AC4(v8, &qword_1EB54A358, &qword_1AC129FE8);
    }

    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1AC0D6010@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___CSUModelCatalogVisualGenerationBaseLock_modelLock;
  swift_beginAccess();
  return sub_1AC0D83C0(v1 + v3, a1, &qword_1EB54A328, &qword_1AC129DB0);
}

uint64_t sub_1AC0D6078(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1AC0D60C0(uint64_t a1)
{
  v3 = OBJC_IVAR___CSUModelCatalogVisualGenerationBaseLock_modelLock;
  swift_beginAccess();
  sub_1AC0D6120(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1AC0D6120(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AC0D6078(&qword_1EB54A328, &qword_1AC129DB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_1AC0D61F0()
{
  v1 = v0;
  v2 = OBJC_IVAR___CSUModelCatalogVisualGenerationBaseLock_logger;
  sub_1AC123FEC();
  v3 = OBJC_IVAR___CSUModelCatalogVisualGenerationBaseLock_modelLock;
  v4 = sub_1AC123FCC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 56);
  v6(&v1[v3], 1, 1, v4);
  if (!MEMORY[0x1E69B20C8] || !MEMORY[0x1E69B20D0] || !MEMORY[0x1E69B20D8])
  {
    v18 = sub_1AC123FFC();
    v19 = *(v18 - 8);
    MEMORY[0x1EEE9AC00](v18);
    v21 = v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v19 + 16))(v21, &v1[v2], v18);
    v22 = sub_1AC123FDC();
    v23 = sub_1AC12406C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      v25 = "Model Catalog not supported on device / os variant";
LABEL_18:
      _os_log_impl(&dword_1AC05D000, v22, v23, v25, v24, 2u);
      MEMORY[0x1AC5ACFC0](v24, -1, -1);
    }

LABEL_19:

    (*(v19 + 8))(v21, v18);
    goto LABEL_20;
  }

  sub_1AC0D5D9C(&v42);
  v41 = v3;
  if (*(&v43 + 1))
  {
    sub_1AC0D824C(&v42, v44);
    v27 = sub_1AC0D6078(&qword_1EB54A328, &qword_1AC129DB0);
    MEMORY[0x1EEE9AC00](v27 - 8);
    v29 = v38 - v28;
    sub_1AC0D6078(&qword_1EB54A338, &qword_1AC129DC0);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1AC129D90;
    sub_1AC0D8264(v44, v30 + 32);
    sub_1AC123FBC();
    sub_1AC0D82C8(v44);
    v6(v29, 0, 1, v4);
    v26 = v41;
    swift_beginAccess();
    sub_1AC0D6120(v29, &v1[v26]);
    swift_endAccess();
  }

  else
  {
    v40 = v5;
    sub_1AC0D8AC4(&v42, &qword_1EB54A330, &qword_1AC129DB8);
    v7 = sub_1AC123FFC();
    v8 = *(v7 - 8);
    MEMORY[0x1EEE9AC00](v7);
    v10 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v10, &v1[v2], v7);
    v11 = sub_1AC123FDC();
    v12 = sub_1AC12406C();
    if (os_log_type_enabled(v11, v12))
    {
      v38[0] = v7;
      v38[1] = v38;
      v39 = v2;
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v44[0] = v14;
      *v13 = 136315138;
      if (qword_1EB54A430 != -1)
      {
        swift_once();
      }

      sub_1AC0D8208(qword_1EB54A438, qword_1EB54A450);
      v15 = sub_1AC123F0C();
      v17 = sub_1AC0D7C60(v15, v16, v44);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_1AC05D000, v11, v12, "Could not lookup asset variant for encoder model %s!", v13, 0xCu);
      sub_1AC0D82C8(v14);
      MEMORY[0x1AC5ACFC0](v14, -1, -1);
      MEMORY[0x1AC5ACFC0](v13, -1, -1);

      (*(v8 + 8))(v10, v38[0]);
      v2 = v39;
    }

    else
    {

      (*(v8 + 8))(v10, v7);
    }

    v5 = v40;
    v26 = v41;
  }

  swift_beginAccess();
  v31 = sub_1AC0D6078(&qword_1EB54A328, &qword_1AC129DB0);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v33 = v38 - v32;
  sub_1AC0D83C0(&v1[v26], v38 - v32, &qword_1EB54A328, &qword_1AC129DB0);
  v34 = (*(v5 + 48))(v33, 1, v4);
  sub_1AC0D8AC4(v33, &qword_1EB54A328, &qword_1AC129DB0);
  if (v34 == 1)
  {
    v18 = sub_1AC123FFC();
    v19 = *(v18 - 8);
    MEMORY[0x1EEE9AC00](v18);
    v21 = v38 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v19 + 16))(v21, &v1[v2], v18);
    v22 = sub_1AC123FDC();
    v23 = sub_1AC12405C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      v25 = "Could not aquire lock for model catalog resource!";
      goto LABEL_18;
    }

    goto LABEL_19;
  }

LABEL_20:
  v36 = type metadata accessor for CSUModelCatalogVisualGenerationBaseLock(0);
  v45.receiver = v1;
  v45.super_class = v36;
  return objc_msgSendSuper2(&v45, sel_init);
}

uint64_t sub_1AC0D6A0C()
{
  v1 = (v0 + OBJC_IVAR___CSUModelCatalogVisualGenerationBase_assetVersionNumber);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1AC0D6A64(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___CSUModelCatalogVisualGenerationBase_assetVersionNumber);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

id sub_1AC0D6B28()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1AC0D6B5C()
{
  sub_1AC123FEC();
  v1 = &v0[OBJC_IVAR___CSUModelCatalogVisualGenerationBase_assetVersionNumber];
  *v1 = 7104878;
  *(v1 + 1) = 0xE300000000000000;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for CSUModelCatalogVisualGenerationBase(0);
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_1AC0D6C88@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  if (MEMORY[0x1E69B20C8])
  {
    v4 = MEMORY[0x1E69B20D0] == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4 || MEMORY[0x1E69B20D8] == 0)
  {
    sub_1AC0D836C();
    swift_allocError();
    *v6 = 0xD000000000000032;
    *(v6 + 8) = 0x80000001AC13F110;
    *(v6 + 16) = 1;
    return swift_willThrow();
  }

  v88 = a2;
  sub_1AC0D5D9C(&v82);
  v9 = v3;
  if (v3)
  {
    goto LABEL_11;
  }

  sub_1AC0D83C0(&v82, &v79, &qword_1EB54A330, &qword_1AC129DB8);
  v78 = v2;
  if (!v80)
  {
    sub_1AC0D8AC4(&v79, &qword_1EB54A330, &qword_1AC129DB8);
    if (qword_1EB54A430 != -1)
    {
      swift_once();
    }

    sub_1AC0D8208(qword_1EB54A438, qword_1EB54A450);
    v34 = sub_1AC123F0C();
    v36 = v35;
    sub_1AC0D836C();
    v9 = swift_allocError();
    *v37 = v34;
    *(v37 + 8) = v36;
    *(v37 + 16) = 1;
    swift_willThrow();
    sub_1AC0D8AC4(&v82, &qword_1EB54A330, &qword_1AC129DB8);
LABEL_11:
    v10 = v9;
    v11 = sub_1AC123FDC();
    v12 = sub_1AC12406C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v82 = v15;
      *v13 = 136446466;
      if (qword_1EB54A430 != -1)
      {
        swift_once();
      }

      sub_1AC0D8208(qword_1EB54A438, qword_1EB54A450);
      v16 = sub_1AC123F0C();
      v18 = sub_1AC0D7C60(v16, v17, &v82);

      *(v13 + 4) = v18;
      *(v13 + 12) = 2112;
      v19 = v9;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 14) = v20;
      *v14 = v20;
      _os_log_impl(&dword_1AC05D000, v11, v12, "Failed to lookup catalog asset variant for %{public}s. %@", v13, 0x16u);
      sub_1AC0D8AC4(v14, &qword_1EB54A348, qword_1AC129DC8);
      MEMORY[0x1AC5ACFC0](v14, -1, -1);
      sub_1AC0D82C8(v15);
      MEMORY[0x1AC5ACFC0](v15, -1, -1);
      MEMORY[0x1AC5ACFC0](v13, -1, -1);
    }

    return swift_willThrow();
  }

  sub_1AC0D8AC4(&v82, &qword_1EB54A330, &qword_1AC129DB8);
  sub_1AC0D824C(&v79, v81);
  sub_1AC0D824C(v81, v86);
  v21 = sub_1AC123FCC();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1AC0D6078(&qword_1EB54A328, &qword_1AC129DB0);
  v26 = MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = &v74 - v27;
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x60))(v26);
  if ((*(v22 + 48))(v28, 1, v21) == 1)
  {
    sub_1AC0D8AC4(v28, &qword_1EB54A328, &qword_1AC129DB0);
    v29 = sub_1AC123FDC();
    v30 = sub_1AC12405C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1AC05D000, v29, v30, "Tried to obtain an asset with a missing lock!", v31, 2u);
      MEMORY[0x1AC5ACFC0](v31, -1, -1);
    }

    sub_1AC0D836C();
    v32 = swift_allocError();
    *v33 = 0xD00000000000002DLL;
    *(v33 + 8) = 0x80000001AC13F150;
    *(v33 + 16) = 0;
    v88 = v32;
    swift_willThrow();
    v77 = sub_1AC123FAC();
    v78 = &v74;
    v76 = *(v77 - 1);
    v38 = *(v76 + 64);
    MEMORY[0x1EEE9AC00](v77);
    v75 = (v38 + 15) & 0xFFFFFFFFFFFFFFF0;
    v39 = &v74 - v75;
    sub_1AC0D8208(v86, v87);
    v40 = sub_1AC123F7C();
    v41 = *(v40 - 8);
    MEMORY[0x1EEE9AC00](v40);
    v43 = &v74 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1AC123F9C();
    sub_1AC123F6C();
    (*(v41 + 8))(v43, v40);
    v82 = 0;
    v83 = 0xE000000000000000;
    sub_1AC12409C();

    v82 = 0xD00000000000001ALL;
    v83 = 0x80000001AC13F180;
    sub_1AC0D8208(v86, v87);
    v44 = sub_1AC123F0C();
    MEMORY[0x1AC5ABC90](v44);

    v45 = MEMORY[0x1AC5ABC90](0x737574617453202ELL, 0xE90000000000003DLL);
    MEMORY[0x1EEE9AC00](v45);
    v46 = v76;
    v47 = v77;
    (*(v76 + 16))(&v74 - v75, v39, v77);
    v48 = sub_1AC12401C();
    MEMORY[0x1AC5ABC90](v48);

    v49 = v82;
    v50 = v83;
    sub_1AC0D836C();
    swift_allocError();
    *v51 = v49;
    *(v51 + 8) = v50;
    *(v51 + 16) = 1;
    swift_willThrow();

    (*(v46 + 8))(v39, v47);
    return sub_1AC0D82C8(v86);
  }

  else
  {
    v77 = &v74;
    (*(v22 + 32))(v24, v28, v21);
    v76 = v21;
    sub_1AC0D8208(v86, v87);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_1AC0D8428(&v82);
    sub_1AC123F8C();
    v75 = v22;
    v52 = sub_1AC123F2C();
    v74 = &v74;
    v53 = *(v52 - 8);
    MEMORY[0x1EEE9AC00](v52);
    v55 = &v74 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1AC123EBC();
    v56 = sub_1AC123F1C();
    v58 = v57;
    (*(v53 + 8))(v55, v52);
    v59 = v78;
    v60 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *v78) + 0x68))(v56, v58);
    v61 = v59;
    v62 = sub_1AC123FDC();
    v63 = sub_1AC12405C();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *&v81[0] = v65;
      *v64 = 136315138;
      v66 = (*((*v60 & *v61) + 0x60))(v65);
      v68 = sub_1AC0D7C60(v66, v67, v81);

      *(v64 + 4) = v68;
      _os_log_impl(&dword_1AC05D000, v62, v63, "Model Catalog version for text and token encoders is %s", v64, 0xCu);
      sub_1AC0D82C8(v65);
      MEMORY[0x1AC5ACFC0](v65, -1, -1);
      MEMORY[0x1AC5ACFC0](v64, -1, -1);
    }

    v69 = v75;
    sub_1AC0D8208(&v82, AssociatedTypeWitness);
    v70 = swift_getAssociatedTypeWitness();
    v78 = &v74;
    v71 = *(v70 - 8);
    MEMORY[0x1EEE9AC00](v70);
    v73 = &v74 - v72;
    sub_1AC123ECC();
    swift_getAssociatedConformanceWitness();
    sub_1AC123F3C();
    (*(v71 + 8))(v73, v70);
    (*(v69 + 8))(v24, v76);
    sub_1AC0D82C8(v86);
    return sub_1AC0D82C8(&v82);
  }
}

id sub_1AC0D7BA0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_1AC0D7C60(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1AC0D7D2C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1AC0D8820(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1AC0D82C8(v11);
  return v7;
}

unint64_t sub_1AC0D7D2C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1AC0D7E38(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1AC1240AC();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_1AC0D7E38(uint64_t a1, unint64_t a2)
{
  v3 = sub_1AC0D7E84(a1, a2);
  sub_1AC0D7FB4(&unk_1F20D1018);
  return v3;
}

void *sub_1AC0D7E84(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1AC0D80A0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1AC1240AC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1AC12404C();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1AC0D80A0(v10, 0);
        result = sub_1AC12408C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1AC0D7FB4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1AC0D8114(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1AC0D80A0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1AC0D6078(&qword_1EB54A350, &qword_1AC129FE0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1AC0D8114(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1AC0D6078(&qword_1EB54A350, &qword_1AC129FE0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_1AC0D8208(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1AC0D824C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1AC0D8264(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1AC0D82C8(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_1AC0D8334(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1AC0D836C()
{
  result = qword_1EB54A340;
  if (!qword_1EB54A340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB54A340);
  }

  return result;
}

uint64_t sub_1AC0D83C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1AC0D6078(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t *sub_1AC0D8428(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1AC0D848C(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x1AC5ACFC0);
  }

  return result;
}

__n128 sub_1AC0D84EC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1AC0D8500(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1AC0D8548(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

void sub_1AC0D85B0(uint64_t a1)
{
  sub_1AC123FFC();
  if (v1 <= 0x3F)
  {
    sub_1AC0D8694(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1AC0D8694(uint64_t a1)
{
  if (!qword_1EB54A008)
  {
    sub_1AC123FCC();
    v1 = sub_1AC12407C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB54A008);
    }
  }
}

uint64_t sub_1AC0D86F4(uint64_t a1)
{
  result = sub_1AC123FFC();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AC0D8820(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1AC0D8880(uint64_t a1, uint64_t a2)
{
  sub_1AC12411C();
  sub_1AC12402C();
  v4 = sub_1AC12412C();

  return sub_1AC0D88F8(a1, a2, v4);
}

unint64_t sub_1AC0D88F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1AC1240CC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1AC0D89B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1AC0D6078(&qword_1EB54A370, &unk_1AC12A000);
    v3 = sub_1AC1240BC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1AC0D8880(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1AC0D8AC4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1AC0D6078(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *sub_1AC0D8B2C(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F20D1200;
  v2 = a1[3];
  if (v2)
  {
    MEMORY[0x1AC5AC410](v2, 0x1000C8052888210);
    a1[3] = 0;
  }

  return a1;
}

uint64_t sub_1AC0D8B90(uint64_t a1, uint64_t a2, _DWORD *a3, unint64_t a4)
{
  *a1 = &unk_1F20D10E0;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = &unk_1F20D1200;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = &unk_1F20D1200;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  sub_1AC10AB68((a1 + 96));
  sub_1AC0D8CC4(a1, a3, a4, &v8);
  sub_1AC10AD88((a1 + 96), &v8);
  sub_1AC10AB70(&v8);
  return a1;
}

void sub_1AC0D8C74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10AB70(va);
  sub_1AC10AB70((v5 + 96));
  sub_1AC0D8B2C(v6);
  sub_1AC0D8B2C(v4);
  v8 = *v3;
  *v3 = 0;
  if (v8)
  {
    sub_1AC0DE620(v3, v8);
  }

  _Unwind_Resume(a1);
}

void *sub_1AC0D8CC4@<X0>(void *a1@<X0>, _DWORD *a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = a2;
  v9 = a3;
  result = sub_1AC0D936C(a2, a3, a1 + 22, a4);
  if (!*a4)
  {
    sub_1AC10AB70(a4);
    result = sub_1AC109048(&v8, 4uLL, a4);
    if (!*a4)
    {
      sub_1AC10AB70(a4);
      result = sub_1AC0D936C(v8, v9, a1 + 23, a4);
      if (!*a4)
      {
        sub_1AC10AB70(a4);
        result = sub_1AC109048(&v8, 4uLL, a4);
        if (!*a4)
        {
          sub_1AC10AB70(a4);
          v7 = 0;
          result = sub_1AC0D9578(v8, v9, &v7, a4);
          if (!*a4)
          {
            sub_1AC10AB70(a4);
            result = sub_1AC109048(&v8, 4uLL, a4);
            if (!*a4)
            {
              sub_1AC10AB70(a4);
              sub_1AC0D9784();
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_1AC0D932C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1AC0D9884(va);
  _Unwind_Resume(a1);
}

void *sub_1AC0D936C@<X0>(_DWORD *a1@<X0>, unint64_t a2@<X1>, _DWORD *a3@<X2>, uint64_t *a4@<X8>)
{
  if (a2 <= 3)
  {
    v7 = 13;
    v6 = sub_1AC0DCA0C(&v8);
    sub_1AC084190(v6, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/util.h", 62);
    sub_1AC084190(&v8, "(", 1);
    MEMORY[0x1AC5AC210](&v8, 448);
    sub_1AC084190(&v8, ") [", 3);
    sub_1AC084190(&v8, "string.size() >= sizeof(T)", 26);
    sub_1AC084190(&v8, "] ", 2);
    sub_1AC0D97F4(&v7, a4);
    v8 = *MEMORY[0x1E69E54E8];
    *(&v8 + *(v8 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
    v9 = MEMORY[0x1E69E5548] + 16;
    if (v11 < 0)
    {
      operator delete(v10[7].__locale_);
    }

    v9 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v10);
    std::ostream::~ostream();
    return MEMORY[0x1AC5AC380](&v12);
  }

  else
  {
    *a3 = *a1;

    return sub_1AC10AB68(a4);
  }
}

void *sub_1AC0D9578@<X0>(_DWORD *a1@<X0>, unint64_t a2@<X1>, _DWORD *a3@<X2>, uint64_t *a4@<X8>)
{
  if (a2 <= 3)
  {
    v7 = 13;
    v6 = sub_1AC0DCA0C(&v8);
    sub_1AC084190(v6, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/util.h", 62);
    sub_1AC084190(&v8, "(", 1);
    MEMORY[0x1AC5AC210](&v8, 448);
    sub_1AC084190(&v8, ") [", 3);
    sub_1AC084190(&v8, "string.size() >= sizeof(T)", 26);
    sub_1AC084190(&v8, "] ", 2);
    sub_1AC0D97F4(&v7, a4);
    v8 = *MEMORY[0x1E69E54E8];
    *(&v8 + *(v8 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
    v9 = MEMORY[0x1E69E5548] + 16;
    if (v11 < 0)
    {
      operator delete(v10[7].__locale_);
    }

    v9 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v10);
    std::ostream::~ostream();
    return MEMORY[0x1AC5AC380](&v12);
  }

  else
  {
    *a3 = *a1;

    return sub_1AC10AB68(a4);
  }
}

void sub_1AC0D97F4(unsigned int *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  std::stringbuf::str();
  if ((v7 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v7 & 0x80u) == 0)
  {
    v5 = v7;
  }

  else
  {
    v5 = __p[1];
  }

  sub_1AC10ACD4(a2, v3, v4, v5);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1AC0D9868(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AC0D9884(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54E8];
  v3 = *MEMORY[0x1E69E54E8];
  *(a1 + 8) = *MEMORY[0x1E69E54E8];
  *(a1 + 8 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 16) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 16) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 24));
  std::ostream::~ostream();
  MEMORY[0x1AC5AC380](a1 + 120);
  return a1;
}

void *sub_1AC0D99A8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1 || (result = __dynamic_cast(v1, &unk_1F20D11D0, &unk_1F20D21B0, 16)) == 0)
  {
    v8 = 1;
    v3 = sub_1AC084190(MEMORY[0x1E69E5300], "model_interface.cc", 18);
    v4 = sub_1AC084190(v3, "(", 1);
    v5 = MEMORY[0x1AC5AC210](v4, 103);
    v6 = sub_1AC084190(v5, ") [", 3);
    v7 = sub_1AC084190(v6, "(model_proto = dynamic_cast<const ModelProto *>(model_proto_))", 62);
    sub_1AC084190(v7, "] ", 2);
    result = sub_1AC0DCD3C(&v8);
    __break(1u);
  }

  return result;
}

void *sub_1AC0D9AA0(void *a1)
{
  *a1 = &unk_1F20D10E0;
  sub_1AC10AB70(a1 + 12);
  a1[8] = 0;
  a1[9] = 0;
  a1[7] = &unk_1F20D1200;
  v2 = a1[10];
  if (v2)
  {
    MEMORY[0x1AC5AC410](v2, 0x1000C8052888210);
    a1[10] = 0;
  }

  a1[4] = 0;
  a1[5] = 0;
  a1[3] = &unk_1F20D1200;
  v3 = a1[6];
  if (v3)
  {
    MEMORY[0x1AC5AC410](v3, 0x1000C8052888210);
    a1[6] = 0;
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4)
  {
    sub_1AC0DE620((a1 + 2), v4);
  }

  return a1;
}

const char *sub_1AC0D9B80(uint64_t a1)
{
  (*(**(a1 + 8) + 32))(*(a1 + 8));
  if (v2)
  {
    return (*(**(a1 + 8) + 32))(*(a1 + 8));
  }

  else
  {
    return "<unk>";
  }
}

const char *sub_1AC0D9C04(uint64_t a1)
{
  (*(**(a1 + 8) + 40))(*(a1 + 8));
  if (v2)
  {
    return (*(**(a1 + 8) + 40))(*(a1 + 8));
  }

  else
  {
    return "<s>";
  }
}

const char *sub_1AC0D9C88(uint64_t a1)
{
  (*(**(a1 + 8) + 48))(*(a1 + 8));
  if (v2)
  {
    return (*(**(a1 + 8) + 48))(*(a1 + 8));
  }

  else
  {
    return "</s>";
  }
}

const char *sub_1AC0D9D0C(uint64_t a1)
{
  (*(**(a1 + 8) + 56))(*(a1 + 8));
  if (v2)
  {
    return (*(**(a1 + 8) + 56))(*(a1 + 8));
  }

  else
  {
    return "<pad>";
  }
}

uint64_t sub_1AC0D9D90(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *(a1 + 72);
  v4 = *v3;
  if (a3)
  {
    v5 = 0;
    v6 = a2;
    v7 = a3;
    while (1)
    {
      v8 = *v6++;
      v5 ^= (v4 >> 10 << ((v4 >> 6) & 8)) ^ v8;
      v4 = v3[v5];
      if ((v4 & 0x800000FF) != v8)
      {
        break;
      }

      if (!--v7)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    v9 = *a2;
    if (*a2)
    {
      v5 = 0;
      v10 = a2 + 1;
      while (1)
      {
        v5 ^= (v4 >> 10 << ((v4 >> 6) & 8)) ^ v9;
        v4 = v3[v5];
        if ((v4 & 0x800000FF) != v9)
        {
          break;
        }

        v11 = *v10++;
        v9 = v11;
        if (!v11)
        {
LABEL_10:
          if ((v4 & 0x100) != 0)
          {
            goto LABEL_23;
          }

          break;
        }
      }
    }

    else
    {
      v5 = 0;
      if ((v4 & 0x100) != 0)
      {
LABEL_23:
        v19 = v5 ^ (v4 >> 10 << ((v4 >> 6) & 8));
        return v3[v19] & 0x7FFFFFFF;
      }
    }
  }

  v3 = *(a1 + 40);
  v12 = *v3;
  if (a3)
  {
    v13 = 0;
    while (1)
    {
      v14 = *a2++;
      v13 ^= (v12 >> 10 << ((v12 >> 6) & 8)) ^ v14;
      v12 = v3[v13];
      if ((v12 & 0x800000FF) != v14)
      {
        return *(a1 + 88);
      }

      if (!--a3)
      {
        goto LABEL_20;
      }
    }
  }

  v15 = *a2;
  if (*a2)
  {
    v13 = 0;
    v16 = a2 + 1;
    while (1)
    {
      v13 ^= (v12 >> 10 << ((v12 >> 6) & 8)) ^ v15;
      v12 = v3[v13];
      if ((v12 & 0x800000FF) != v15)
      {
        return *(a1 + 88);
      }

      v17 = *v16++;
      v15 = v17;
      if (!v17)
      {
LABEL_20:
        if ((v12 & 0x100) != 0)
        {
          goto LABEL_25;
        }

        return *(a1 + 88);
      }
    }
  }

  v13 = 0;
  if ((v12 & 0x100) == 0)
  {
    return *(a1 + 88);
  }

LABEL_25:
  v19 = v13 ^ (v12 >> 10 << ((v12 >> 6) & 8));
  return v3[v19] & 0x7FFFFFFF;
}

void sub_1AC0D9F00(void (***a1)(void **__return_ptr)@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v7 = a4;
  (*a1)[2](&__p);
  v12 = __p;
  sub_1AC10AB70(&__p);
  if (v12)
  {
    sub_1AC10AD84(a6, a1 + 12);
  }

  else
  {
    v13 = ((*a1)[16])(a1);
    sub_1AC0DA0FC((a1 + 3), a2, v7, v13, &__p, a3);
    v14 = __p;
    v15 = v22;
    while (v14 != v15)
    {
      v16 = *v14;
      if ((((*a1)[18])(a1, v16) & 1) == 0 && (((*a1)[19])(a1, v16) & 1) == 0)
      {
        v20[0] = ((*a1)[15])(a1, v16);
        v20[1] = v17;
        v18 = *(a5 + 8);
        if (v18 >= *(a5 + 16))
        {
          v19 = sub_1AC0DE814(a5, v20);
        }

        else
        {
          sub_1AC0DE750(a5, v20);
          v19 = (v18 + 24);
        }

        *(a5 + 8) = v19;
      }

      v14 += 4;
    }

    sub_1AC10AD84(a6, a1 + 12);
    if (__p)
    {
      v22 = __p;
      operator delete(__p);
    }
  }
}

void sub_1AC0DA0D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AC0DA0FC(uint64_t a1@<X0>, _BYTE *a2@<X1>, int a3@<W3>, int a4@<W4>, uint64_t *a5@<X8>, uint64_t a6@<X2>)
{
  if (a3 != -1)
  {
    a4 = a3;
  }

  sub_1AC0DE69C(a5, a4);
  v12 = sub_1AC0DCE1C(a1, a2, *a5, (a5[1] - *a5) >> 4, a6, a3);
  sub_1AC0DD124(a5, v12);
}

void sub_1AC0DA17C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AC0DA198(void (***a1)(void **__return_ptr)@<X0>, _BYTE *a2@<X1>, int a3@<W3>, const void **a4@<X4>, uint64_t *a5@<X8>, uint64_t a6@<X2>)
{
  (*a1)[2](&__p);
  v12 = __p;
  sub_1AC10AB70(&__p);
  if (v12)
  {
    sub_1AC10AD84(a5, a1 + 12);
  }

  else
  {
    v13 = ((*a1)[16])(a1);
    sub_1AC0DA0FC((a1 + 3), a2, a3, v13, &__p, a6);
    v14 = __p;
    v15 = v28;
    if (__p != v28)
    {
      do
      {
        v16 = *v14;
        if ((((*a1)[18])(a1, v16) & 1) == 0 && (((*a1)[19])(a1, v16) & 1) == 0)
        {
          v18 = a4[1];
          v17 = a4[2];
          if (v18 >= v17)
          {
            v20 = *a4;
            v21 = v18 - *a4;
            v22 = v21 >> 2;
            v23 = (v21 >> 2) + 1;
            if (v23 >> 62)
            {
              sub_1AC060AAC();
            }

            v24 = v17 - v20;
            if (v24 >> 1 > v23)
            {
              v23 = v24 >> 1;
            }

            if (v24 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v25 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v25 = v23;
            }

            if (v25)
            {
              sub_1AC0DEA04(a4, v25);
            }

            *(4 * v22) = v16;
            v19 = 4 * v22 + 4;
            memcpy(0, v20, v21);
            v26 = *a4;
            *a4 = 0;
            a4[1] = v19;
            a4[2] = 0;
            if (v26)
            {
              operator delete(v26);
            }
          }

          else
          {
            *v18 = v16;
            v19 = (v18 + 4);
          }

          a4[1] = v19;
        }

        v14 += 4;
      }

      while (v14 != v15);
    }

    sub_1AC10AD84(a5, a1 + 12);
    if (__p)
    {
      v28 = __p;
      operator delete(__p);
    }
  }
}

void sub_1AC0DA3CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AC0DA3F0(void (***a1)(void **__return_ptr)@<X0>, char *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  (*a1)[2](&v22);
  v10 = v22;
  sub_1AC10AB70(&v22);
  if (v10)
  {
    sub_1AC10AD84(a5, a1 + 12);
  }

  else
  {
    sub_1AC0DA6AC((a1 + 3), a2, a3, &v22);
    v11 = v22;
    v12 = v23;
    while (v11 != v12)
    {
      v13 = *v11;
      if ((((*a1)[18])(a1, v13) & 1) == 0 && (((*a1)[19])(a1, v13) & 1) == 0)
      {
        __p.__r_.__value_.__r.__words[0] = ((*a1)[15])(a1, v13);
        __p.__r_.__value_.__l.__size_ = v14;
        v15 = *(a4 + 8);
        if (v15 >= *(a4 + 16))
        {
          v16 = sub_1AC0DE814(a4, &__p);
        }

        else
        {
          sub_1AC0DE750(a4, &__p);
          v16 = (v15 + 24);
        }

        *(a4 + 8) = v16;
      }

      v11 += 4;
    }

    if (a3 && ((*a1)[23])(a1))
    {
      if (a3 < 3 || (*a2 == 38626 ? (v17 = a2[2] == 129) : (v17 = 0), !v17))
      {
        v24 = *a2;
        sub_1AC0DC180(&__p, "<0x%02X>", &v24);
        v18 = *(a4 + 8);
        if (v18 >= *(a4 + 16))
        {
          v20 = sub_1AC0DEA4C(a4, &__p);
        }

        else
        {
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            sub_1AC0674A0(*(a4 + 8), __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
          }

          else
          {
            v19 = *&__p.__r_.__value_.__l.__data_;
            *(v18 + 16) = *(&__p.__r_.__value_.__l + 2);
            *v18 = v19;
          }

          v20 = v18 + 24;
          *(a4 + 8) = v18 + 24;
        }

        *(a4 + 8) = v20;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }

    sub_1AC10AD84(a5, a1 + 12);
    if (v22)
    {
      v23 = v22;
      operator delete(v22);
    }
  }
}

void sub_1AC0DA660(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17)
{
  *(v17 + 8) = v18;
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AC0DA6AC(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_1AC0DE69C(a4, a3 + 1);
  v8 = *a4;
  v9 = (a4[1] - *a4) >> 4;
  v10 = *(a1 + 16);
  v11 = (*v10 >> 10 << ((*v10 >> 6) & 8));
  if (a3)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = a2[v12];
      v15 = v11 ^ v14;
      v16 = v10[v15];
      if ((v16 & 0x800000FF) != v14)
      {
        break;
      }

      v11 = v15 ^ (v16 >> 10 << ((v16 >> 6) & 8));
      if ((v16 & 0x100) != 0)
      {
        if (v13 < v9)
        {
          v17 = v8 + 16 * v13;
          *v17 = v10[v11] & 0x7FFFFFFF;
          *(v17 + 8) = v12 + 1;
        }

        ++v13;
      }

      ++v12;
    }

    while (a3 != v12);
  }

  else
  {
    v18 = *a2;
    if (*a2)
    {
      v13 = 0;
      v19 = 1;
      do
      {
        v20 = v11 ^ v18;
        v21 = v10[v20];
        if ((v21 & 0x800000FF) != v18)
        {
          break;
        }

        v11 = v20 ^ (v21 >> 10 << ((v21 >> 6) & 8));
        if ((v21 & 0x100) != 0)
        {
          if (v13 < v9)
          {
            v22 = v8 + 16 * v13;
            *v22 = v10[v11] & 0x7FFFFFFF;
            *(v22 + 8) = v19;
          }

          ++v13;
        }

        v18 = a2[v19++];
      }

      while (v18);
    }

    else
    {
      v13 = 0;
    }
  }

  sub_1AC0DD124(a4, v13);
}

void sub_1AC0DA7FC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AC0DA848(void (***a1)(void **__return_ptr)@<X0>, char *a2@<X1>, unint64_t a3@<X2>, const void **a4@<X3>, uint64_t *a5@<X8>)
{
  (*a1)[2](&v40);
  v10 = v40;
  sub_1AC10AB70(&v40);
  if (v10)
  {
    sub_1AC10AD84(a5, a1 + 12);
  }

  else
  {
    sub_1AC0DA6AC((a1 + 3), a2, a3, &v40);
    v11 = v40;
    v12 = v41;
    while (v11 != v12)
    {
      v13 = *v11;
      if ((((*a1)[18])(a1, v13) & 1) == 0 && (((*a1)[19])(a1, v13) & 1) == 0)
      {
        v15 = a4[1];
        v14 = a4[2];
        if (v15 >= v14)
        {
          v17 = *a4;
          v18 = v15 - *a4;
          v19 = v18 >> 2;
          v20 = (v18 >> 2) + 1;
          if (v20 >> 62)
          {
            sub_1AC060AAC();
          }

          v21 = v14 - v17;
          if (v21 >> 1 > v20)
          {
            v20 = v21 >> 1;
          }

          v22 = v21 >= 0x7FFFFFFFFFFFFFFCLL;
          v23 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v22)
          {
            v23 = v20;
          }

          if (v23)
          {
            sub_1AC0DEA04(a4, v23);
          }

          *(4 * v19) = v13;
          v16 = 4 * v19 + 4;
          memcpy(0, v17, v18);
          v24 = *a4;
          *a4 = 0;
          a4[1] = v16;
          a4[2] = 0;
          if (v24)
          {
            operator delete(v24);
          }
        }

        else
        {
          *v15 = v13;
          v16 = (v15 + 4);
        }

        a4[1] = v16;
      }

      v11 += 4;
    }

    if (a3 && ((*a1)[23])(a1))
    {
      if (a3 < 3 || (*a2 == 38626 ? (v25 = a2[2] == 129) : (v25 = 0), !v25))
      {
        v42 = *a2;
        sub_1AC0DC180(&__p, "<0x%02X>", &v42);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __p.__r_.__value_.__l.__size_;
        }

        v28 = ((*a1)[14])(a1, p_p, size);
        v30 = a4[1];
        v29 = a4[2];
        if (v30 >= v29)
        {
          v32 = *a4;
          v33 = v30 - *a4;
          v34 = v33 >> 2;
          v35 = (v33 >> 2) + 1;
          if (v35 >> 62)
          {
            sub_1AC060AAC();
          }

          v36 = v29 - v32;
          if (v36 >> 1 > v35)
          {
            v35 = v36 >> 1;
          }

          v22 = v36 >= 0x7FFFFFFFFFFFFFFCLL;
          v37 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v22)
          {
            v37 = v35;
          }

          if (v37)
          {
            sub_1AC0DEA04(a4, v37);
          }

          *(4 * v34) = v28;
          v31 = 4 * v34 + 4;
          memcpy(0, v32, v33);
          v38 = *a4;
          *a4 = 0;
          a4[1] = v31;
          a4[2] = 0;
          if (v38)
          {
            operator delete(v38);
          }
        }

        else
        {
          *v30 = v28;
          v31 = (v30 + 4);
        }

        a4[1] = v31;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }

    sub_1AC10AD84(a5, a1 + 12);
    if (v40)
    {
      v41 = v40;
      operator delete(v40);
    }
  }
}

void sub_1AC0DABC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AC0DAC00(uint64_t a1)
{
  v50 = 0;
  v51 = 0;
  v48 = 0;
  v49 = &v50;
  v46 = &v47;
  v47 = 0;
  *(a1 + 88) = -1;
  v45[0] = 0;
  v45[1] = 0;
  v44 = v45;
  LOBYTE(v52) = 0;
  sub_1AC0DEBE0(&__p, 256, &v52);
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2 - 16;
  }

  else
  {
    v3 = 0;
  }

  if (*(v3 + 64) < 1)
  {
LABEL_35:
    if (*(a1 + 88) == -1)
    {
      sub_1AC10ACD4(&v52, 13, "unk is not defined.", 0x13uLL);
      sub_1AC10AD88((a1 + 96), &v52);
    }

    else
    {
      v24 = *(v3 + 80);
      if (!v24)
      {
        v24 = &unk_1EB54A780;
      }

      if (v24[248] != 1 || (*&v52 = __p, DWORD2(v52) = 0, sub_1AC0DF1A0(&v52, v43, &v40), v40.__r_.__value_.__l.__data_ == __p + 8 * (v43 >> 6)) && LODWORD(v40.__r_.__value_.__r.__words[1]) == (v43 & 0x3F))
      {
        if (!v51 || (sub_1AC0DB4B0((a1 + 24), &v49, &v52), sub_1AC10AD88((a1 + 96), &v52), sub_1AC10AB70(&v52), (*(*a1 + 16))(&v52, a1), v25 = v52, sub_1AC10AB70(&v52), !v25))
        {
          if (!v48 || (sub_1AC0DB4B0((a1 + 56), &v46, &v52), sub_1AC10AD88((a1 + 96), &v52), sub_1AC10AB70(&v52), (*(*a1 + 16))(&v52, a1), v26 = v52, sub_1AC10AB70(&v52), !v26))
          {
            sub_1AC0DB978();
          }
        }

        goto LABEL_69;
      }

      sub_1AC10AD88((a1 + 96), &v52);
    }

LABEL_68:
    sub_1AC10AB70(&v52);
    goto LABEL_69;
  }

  v4 = 0;
  while (1)
  {
    v5 = sub_1AC0DDAA0(v3 + 56, v4);
    v6 = v5;
    v7 = *(v5 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v8 = *(v7 + 23);
    if (v8 < 0)
    {
      if (!*(v7 + 8))
      {
LABEL_47:
        sub_1AC10ACD4(&v52, 13, "piece must not be empty.", 0x18uLL);
        sub_1AC10AD88((a1 + 96), &v52);
        goto LABEL_68;
      }
    }

    else if (!*(v7 + 23))
    {
      goto LABEL_47;
    }

    v9 = *(v5 + 60);
    v10 = v9 > 5;
    v11 = (1 << v9) & 0x32;
    if (v10 || v11 == 0)
    {
      v13 = &v46;
    }

    else
    {
      v13 = &v49;
    }

    if ((v8 & 0x80000000) != 0)
    {
      v14 = v7;
      v7 = *v7;
      v8 = *(v14 + 8);
    }

    *&v52 = v7;
    *(&v52 + 1) = v8;
    LODWORD(v53) = v4;
    sub_1AC0DEEA4(v13, &v52, &v52);
    if ((v15 & 1) == 0)
    {
      break;
    }

    v16 = *(v6 + 60);
    if (v16 == 4)
    {
      v17 = *(v6 + 48) & 0xFFFFFFFFFFFFFFFELL;
      v18 = *(v17 + 23);
      if (v18 < 0)
      {
        v17 = *v17;
        v18 = *((*(v6 + 48) & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      *&v52 = v17;
      *(&v52 + 1) = v18;
      sub_1AC0DF10C(&v44, &v52, &v52);
      v16 = *(v6 + 60);
    }

    if (v16 == 6)
    {
      v19 = *(v3 + 80);
      if (!v19)
      {
        v19 = &unk_1EB54A780;
      }

      if ((v19[248] & 1) == 0)
      {
        std::operator+<char>();
        v35 = *&v34->__r_.__value_.__l.__data_;
        v53 = v34->__r_.__value_.__r.__words[2];
        v52 = v35;
        v34->__r_.__value_.__l.__size_ = 0;
        v34->__r_.__value_.__r.__words[2] = 0;
        v34->__r_.__value_.__r.__words[0] = 0;
        if (v53 >= 0)
        {
          v36 = &v52;
        }

        else
        {
          v36 = v52;
        }

LABEL_75:
        v39 = strlen(v36);
        sub_1AC10ACD4(&v41, 13, v36, v39);
        sub_1AC10AD88((a1 + 96), &v41);
        sub_1AC10AB70(&v41);
        if (SHIBYTE(v53) < 0)
        {
          operator delete(v52);
        }

        if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
        {
          v33 = v40.__r_.__value_.__r.__words[0];
          goto LABEL_79;
        }

        goto LABEL_69;
      }

      v20 = *(v6 + 48);
      v21 = (v20 & 0xFFFFFFFFFFFFFFFELL);
      v22 = *((v20 & 0xFFFFFFFFFFFFFFFELL) + 23);
      if ((v22 & 0x8000000000000000) != 0)
      {
        v21 = *v21;
        v22 = *((v20 & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      v23 = sub_1AC0DB35C(v21, v22);
      if ((v23 & 0x80000000) != 0)
      {
        std::operator+<char>();
        v37 = std::string::append(&v40, " is invalid.");
        v38 = *&v37->__r_.__value_.__l.__data_;
        v53 = v37->__r_.__value_.__r.__words[2];
        v52 = v38;
        v37->__r_.__value_.__l.__size_ = 0;
        v37->__r_.__value_.__r.__words[2] = 0;
        v37->__r_.__value_.__r.__words[0] = 0;
        if (v53 >= 0)
        {
          v36 = &v52;
        }

        else
        {
          v36 = v52;
        }

        goto LABEL_75;
      }

      *(__p + ((v23 >> 3) & 0x1FFFFFF8)) |= 1 << v23;
    }

    else if (v16 == 2)
    {
      if ((*(a1 + 88) & 0x80000000) == 0)
      {
        sub_1AC10ACD4(&v52, 13, "unk is already defined.", 0x17uLL);
        sub_1AC10AD88((a1 + 96), &v52);
        goto LABEL_68;
      }

      *(a1 + 88) = v4;
    }

    if (++v4 >= *(v3 + 64))
    {
      goto LABEL_35;
    }
  }

  v27 = *(v6 + 48) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v27 + 23) >= 0)
  {
    v28 = *(v27 + 23);
  }

  else
  {
    v28 = *(v27 + 8);
  }

  v29 = &v52;
  sub_1AC0DF080(&v52, v28 + 20);
  if (v53 < 0)
  {
    v29 = v52;
  }

  if (v28)
  {
    if (*(v27 + 23) >= 0)
    {
      v30 = v27;
    }

    else
    {
      v30 = *v27;
    }

    memmove(v29, v30, v28);
  }

  strcpy(v29 + v28, " is already defined.");
  if (v53 >= 0)
  {
    v31 = &v52;
  }

  else
  {
    v31 = v52;
  }

  v32 = strlen(v31);
  sub_1AC10ACD4(&v40, 13, v31, v32);
  sub_1AC10AD88((a1 + 96), &v40);
  sub_1AC10AB70(&v40);
  if (SHIBYTE(v53) < 0)
  {
    v33 = v52;
LABEL_79:
    operator delete(v33);
  }

LABEL_69:
  if (__p)
  {
    operator delete(__p);
  }

  sub_1AC0DEB8C(&v44, v45[0]);
  sub_1AC0DEB8C(&v46, v47);
  sub_1AC0DEB8C(&v49, v50);
}

void sub_1AC0DB244(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26)
{
  sub_1AC10AB70(&a15);
  if (*(v26 - 89) < 0)
  {
    operator delete(*(v26 - 112));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  sub_1AC0DEB8C(&a19, a20);
  sub_1AC0DEB8C(&a22, a23);
  sub_1AC0DEB8C(&a25, a26);
  _Unwind_Resume(a1);
}

uint64_t sub_1AC0DB35C(void *__src, size_t __len)
{
  if ((atomic_load_explicit(&qword_1EB54A3E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EB54A3E8))
  {
    sub_1AC0DC230();
  }

  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1AC060A04();
  }

  v4 = qword_1EB54A3E0;
  if (__len >= 0x17)
  {
    operator new();
  }

  v9 = __len;
  if (__len)
  {
    memmove(&__dst, __src, __len);
  }

  *(&__dst + __len) = 0;
  v5 = sub_1AC0DF2C8(v4, &__dst);
  v6 = v5;
  if (v9 < 0)
  {
    operator delete(__dst);
    if (v6)
    {
      return *(v6 + 40);
    }
  }

  else if (v5)
  {
    return *(v6 + 40);
  }

  return 0xFFFFFFFFLL;
}

void sub_1AC0DB4B0(void *a1@<X0>, void *a2@<X1>, uint64_t *a4@<X8>)
{
  if (a2[2])
  {
    __p = 0;
    v32 = 0;
    v33 = 0;
    __src = 0;
    v29 = 0;
    v30 = 0;
    v5 = a2 + 1;
    v4 = *a2;
    while (1)
    {
      v6 = v4[4];
      v7 = v32;
      if (v32 >= v33)
      {
        v9 = (v32 - __p) >> 3;
        if ((v9 + 1) >> 61)
        {
          sub_1AC060AAC();
        }

        v10 = (v33 - __p) >> 2;
        if (v10 <= v9 + 1)
        {
          v10 = v9 + 1;
        }

        if (v33 - __p >= 0x7FFFFFFFFFFFFFF8)
        {
          v11 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v10;
        }

        if (v11)
        {
          sub_1AC0DF3C4(&__p, v11);
        }

        v12 = (8 * v9);
        *v12 = v6;
        v8 = 8 * v9 + 8;
        v13 = v12 - (v32 - __p);
        memcpy(v13, __p, v32 - __p);
        v14 = __p;
        __p = v13;
        v32 = v8;
        v33 = 0;
        if (v14)
        {
          operator delete(v14);
        }
      }

      else
      {
        *v32 = v6;
        v8 = (v7 + 8);
      }

      v32 = v8;
      v15 = v29;
      if (v29 >= v30)
      {
        v17 = __src;
        v18 = v29 - __src;
        v19 = (v29 - __src) >> 2;
        v20 = v19 + 1;
        if ((v19 + 1) >> 62)
        {
          sub_1AC060AAC();
        }

        v21 = v30 - __src;
        if ((v30 - __src) >> 1 > v20)
        {
          v20 = v21 >> 1;
        }

        if (v21 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v22 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v22 = v20;
        }

        if (v22)
        {
          sub_1AC0DEA04(&__src, v22);
        }

        *(4 * v19) = *(v4 + 12);
        v16 = 4 * v19 + 4;
        memcpy(0, v17, v18);
        v23 = __src;
        __src = 0;
        v29 = v16;
        v30 = 0;
        if (v23)
        {
          operator delete(v23);
        }
      }

      else
      {
        *v29 = *(v4 + 12);
        v16 = (v15 + 4);
      }

      v29 = v16;
      v24 = v4[1];
      if (v24)
      {
        do
        {
          v25 = v24;
          v24 = *v24;
        }

        while (v24);
      }

      else
      {
        do
        {
          v25 = v4[2];
          v26 = *v25 == v4;
          v4 = v25;
        }

        while (!v26);
      }

      v4 = v25;
      if (v25 == v5)
      {
        sub_1AC0DC318(a1, (v32 - __p) >> 3, __p, 0, __src, 0);
      }
    }
  }

  sub_1AC10ACD4(a4, 13, "no pieces are loaded.", 0x15uLL);
}

void sub_1AC0DB920(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AC0DB9E8(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  *&a2->__r_.__value_.__l.__data_ = 0uLL;
  a2->__r_.__value_.__r.__words[2] = 0;
  memset(&v32, 0, sizeof(v32));
  std::string::resize(&v32, 4uLL, 0);
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = &v32;
  }

  else
  {
    v4 = v32.__r_.__value_.__r.__words[0];
  }

  LODWORD(v4->__r_.__value_.__l.__data_) = *(a1 + 88);
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v32;
  }

  else
  {
    v5 = v32.__r_.__value_.__r.__words[0];
  }

  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v32.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v32.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v5, size);
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  memset(&v32, 0, sizeof(v32));
  std::string::resize(&v32, 4uLL, 0);
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &v32;
  }

  else
  {
    v7 = v32.__r_.__value_.__r.__words[0];
  }

  LODWORD(v7->__r_.__value_.__l.__data_) = *(a1 + 92);
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v32;
  }

  else
  {
    v8 = v32.__r_.__value_.__r.__words[0];
  }

  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v9 = v32.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v8, v9);
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  sub_1AC0E3958(*(a1 + 16), &v32);
  v10 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
  v11 = v32.__r_.__value_.__r.__words[1];
  memset(&__p, 0, sizeof(__p));
  std::string::resize(&__p, 4uLL, 0);
  if ((v10 & 0x80u) == 0)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  LODWORD(p_p->__r_.__value_.__l.__data_) = v12;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &__p;
  }

  else
  {
    v14 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v15 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v14, v15);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v32;
  }

  else
  {
    v16 = v32.__r_.__value_.__r.__words[0];
  }

  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = v32.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v16, v17);
  sub_1AC108FE0(a2);
  v19 = *(a1 + 32);
  v18 = *(a1 + 40);
  memset(&__p, 0, sizeof(__p));
  std::string::resize(&__p, 4uLL, 0);
  v20 = 4 * v19;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &__p;
  }

  else
  {
    v21 = __p.__r_.__value_.__r.__words[0];
  }

  LODWORD(v21->__r_.__value_.__l.__data_) = v20;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &__p;
  }

  else
  {
    v22 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v23 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v22, v23);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::append(a2, v18, v20);
  sub_1AC108FE0(a2);
  v26 = a1 + 64;
  v24 = *(a1 + 64);
  v25 = *(v26 + 8);
  memset(&__p, 0, sizeof(__p));
  std::string::resize(&__p, 4uLL, 0);
  v27 = 4 * v24;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v28 = &__p;
  }

  else
  {
    v28 = __p.__r_.__value_.__r.__words[0];
  }

  LODWORD(v28->__r_.__value_.__l.__data_) = v27;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = &__p;
  }

  else
  {
    v29 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v30 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v30 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v29, v30);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::append(a2, v25, v27);
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }
}

void sub_1AC0DBCB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (*(v20 + 23) < 0)
  {
    operator delete(*v20);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AC0DBD28(unsigned __int8 *__s1@<X0>, uint64_t a2@<X1>, char a3@<W2>, int a4@<W3>, const void **a5@<X8>)
{
  v8 = &__s1[a2];
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  if ((a3 & 1) == 0)
  {
    if (a2 < 1)
    {
      return;
    }

    v9 = 0;
    v10 = 0;
    v11 = __s1;
    while (1)
    {
      v12 = asc_1AC13F582[*v11 >> 4];
      if (v8 - v11 < v12)
      {
        v12 = v8 - v11;
      }

      v13 = v12;
      if (v12 == 3)
      {
        v14 = memcmp(v11, "▁", 3uLL);
        v15 = v14 == 0;
        if (v11 == __s1)
        {
          goto LABEL_16;
        }

        if ((v10 & a4 & 1) == 0 && !v14)
        {
          v15 = 1;
LABEL_16:
          v16 = a5[2];
          if (v9 >= v16)
          {
            v17 = *a5;
            v18 = v9 - *a5;
            v19 = v18 >> 4;
            v20 = (v18 >> 4) + 1;
            if (v20 >> 60)
            {
              sub_1AC060AAC();
            }

            v21 = v16 - v17;
            if (v21 >> 3 > v20)
            {
              v20 = v21 >> 3;
            }

            v22 = v21 >= 0x7FFFFFFFFFFFFFF0;
            v23 = 0xFFFFFFFFFFFFFFFLL;
            if (!v22)
            {
              v23 = v20;
            }

            if (v23)
            {
              sub_1AC0DF280(a5, v23);
            }

            v24 = (16 * v19);
            *v24 = v11;
            v24[1] = 0;
            v9 = (16 * v19 + 16);
            memcpy(0, v17, v18);
            v25 = *a5;
            *a5 = 0;
            a5[1] = v9;
            a5[2] = 0;
            if (v25)
            {
              operator delete(v25);
            }
          }

          else
          {
            *v9 = v11;
            *(v9 + 1) = 0;
            v9 += 16;
          }

          a5[1] = v9;
          goto LABEL_30;
        }

        if (v10)
        {
          v15 = v10 & (v14 == 0);
          goto LABEL_30;
        }
      }

      else if (v11 == __s1)
      {
        v15 = 0;
        goto LABEL_16;
      }

      v15 = 0;
LABEL_30:
      *(v9 - 1) += v13;
      v11 += v13;
      v10 = v15;
      if (v11 >= v8)
      {
        return;
      }
    }
  }

  if (a2 >= 1)
  {
    sub_1AC0DF280(a5, 1uLL);
  }
}

void sub_1AC0DC14C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1AC0DC180@<X0>(std::string *__return_ptr a1@<X8>, char *__format@<X0>, unsigned __int8 *a3@<X1>)
{
  v6 = snprintf(0, 0, __format, *a3);
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = 0;
  std::string::resize(a1, v6, 0);
  size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = a1->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  return snprintf(v8, size + 1, __format, *a3);
}

void sub_1AC0DC214(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AC0DC2FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AC0DC318(void *a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, void (*a6)(unint64_t, uint64_t))
{
  v12[0] = a2;
  v12[1] = a3;
  v12[2] = a4;
  v12[3] = a5;
  v6 = a6;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0;
  sub_1AC0DF40C(&v6, v12);
}

uint64_t sub_1AC0DC458@<X0>(void *a1@<X8>)
{
  result = sub_1AC108C30();
  if (result <= 2)
  {
    v10 = 0;
    v3 = sub_1AC084190(MEMORY[0x1E69E5300], "model_interface.h", 17);
    v4 = sub_1AC084190(v3, "(", 1);
    v5 = MEMORY[0x1AC5AC210](v4, 96);
    v6 = sub_1AC084190(v5, ") ", 2);
    v7 = sub_1AC084190(v6, "LOG(", 4);
    v8 = sub_1AC084190(v7, "ERROR", 5);
    v9 = sub_1AC084190(v8, ") ", 2);
    sub_1AC084190(v9, "Not implemented.", 16);
    result = sub_1AC0DCD3C(&v10);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  return result;
}

uint64_t sub_1AC0DC534@<X0>(void *a1@<X8>)
{
  result = sub_1AC108C30();
  if (result <= 2)
  {
    v10 = 0;
    v3 = sub_1AC084190(MEMORY[0x1E69E5300], "model_interface.h", 17);
    v4 = sub_1AC084190(v3, "(", 1);
    v5 = MEMORY[0x1AC5AC210](v4, 102);
    v6 = sub_1AC084190(v5, ") ", 2);
    v7 = sub_1AC084190(v6, "LOG(", 4);
    v8 = sub_1AC084190(v7, "ERROR", 5);
    v9 = sub_1AC084190(v8, ") ", 2);
    sub_1AC084190(v9, "Not implemented.", 16);
    result = sub_1AC0DCD3C(&v10);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  return result;
}

void sub_1AC0DC610(uint64_t *a1@<X8>)
{
  v13 = *MEMORY[0x1E69E9840];
  if (sub_1AC108C30() <= 2)
  {
    LOBYTE(__p) = 0;
    v2 = sub_1AC084190(MEMORY[0x1E69E5300], "model_interface.h", 17);
    v3 = sub_1AC084190(v2, "(", 1);
    v4 = MEMORY[0x1AC5AC210](v3, 117);
    v5 = sub_1AC084190(v4, ") ", 2);
    v6 = sub_1AC084190(v5, "LOG(", 4);
    v7 = sub_1AC084190(v6, "ERROR", 5);
    v8 = sub_1AC084190(v7, ") ", 2);
    sub_1AC084190(v8, "Not implemented.", 16);
    sub_1AC0DCD3C(&__p);
  }

  __p = 0;
  v10 = 0;
  v12 = 0;
  v11 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  sub_1AC0DE170(a1, &__p, &v13, 1uLL);
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }
}

void sub_1AC0DC738(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_1AC0DC764()
{
  if (sub_1AC108C30() <= 2)
  {
    v8 = 0;
    v0 = sub_1AC084190(MEMORY[0x1E69E5300], "model_interface.h", 17);
    v1 = sub_1AC084190(v0, "(", 1);
    v2 = MEMORY[0x1AC5AC210](v1, 125);
    v3 = sub_1AC084190(v2, ") ", 2);
    v4 = sub_1AC084190(v3, "LOG(", 4);
    v5 = sub_1AC084190(v4, "ERROR", 5);
    v6 = sub_1AC084190(v5, ") ", 2);
    sub_1AC084190(v6, "Not implemented.", 16);
    sub_1AC0DCD3C(&v8);
  }

  return 0.0;
}

uint64_t sub_1AC0DC880(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t sub_1AC0DC9A0(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 64))();
  }

  return result;
}

uint64_t *sub_1AC0DCA0C(uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x1E69E5570] + 64;
  a1[14] = MEMORY[0x1E69E5570] + 64;
  v3 = *(MEMORY[0x1E69E54E8] + 16);
  v4 = *(MEMORY[0x1E69E54E8] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x1E69E5570] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  sub_1AC0DCB78((a1 + 1), 16);
  return a1;
}

void sub_1AC0DCB50(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x1AC5AC380](v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1AC0DCB78(uint64_t a1, int a2)
{
  *a1 = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1AC5AC330](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x1E69E5548] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  sub_1AC0DCC34(a1);
  return a1;
}

void sub_1AC0DCC0C(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_1AC0DCC34(uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

_BYTE *sub_1AC0DCD3C(_BYTE *a1)
{
  std::ios_base::getloc((MEMORY[0x1E69E5300] + *(*MEMORY[0x1E69E5300] - 24)));
  v2 = std::locale::use_facet(&v4, MEMORY[0x1E69E5318]);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v4);
  std::ostream::put();
  std::ostream::flush();
  if (*a1 == 1)
  {
    sub_1AC10AA1C();
  }

  return a1;
}

unint64_t sub_1AC0DCE1C(uint64_t a1, _BYTE *a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6)
{
  v9 = *(a1 + 16);
  v10 = *v9;
  if (a5)
  {
    v11 = *a2;
    v12 = (v10 >> 10 << ((v10 >> 6) & 8)) ^ v11;
    v10 = v9[v12];
    if ((v10 & 0x800000FF) == v11)
    {
      v13 = a5 - 1;
      v14 = a2 + 1;
      while (1)
      {
        v15 = v12;
        if (!v13)
        {
          goto LABEL_16;
        }

        v16 = *v14++;
        v12 = (v10 >> 10 << ((v10 >> 6) & 8)) ^ v12 ^ v16;
        v10 = v9[v12];
        --v13;
        if ((v10 & 0x800000FF) != v16)
        {
          goto LABEL_14;
        }
      }
    }
  }

  else
  {
    v17 = *a2;
    if (!*a2)
    {
      v15 = 0;
      LODWORD(v12) = 0;
LABEL_16:
      if ((v10 & 0x100) != 0)
      {
        v22 = v9[(v10 >> 10 << ((v10 >> 6) & 8)) ^ v12] & 0x7FFFFFFF;
      }

      else
      {
        v22 = -1;
      }

      goto LABEL_19;
    }

    v18 = (v10 >> 10 << ((v10 >> 6) & 8)) ^ v17;
    v10 = v9[v18];
    if ((v10 & 0x800000FF) == v17)
    {
      v19 = a2 + 1;
      LODWORD(v12) = v18;
      while (1)
      {
        v15 = v18;
        v21 = *v19++;
        v20 = v21;
        if (!v21)
        {
          goto LABEL_16;
        }

        v18 = (v10 >> 10 << ((v10 >> 6) & 8)) ^ v12 ^ v20;
        v10 = v9[v18];
        LODWORD(v12) = v18;
        if ((v10 & 0x800000FF) != v20)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v15 = 0;
LABEL_14:
  v22 = -2;
LABEL_19:
  v44 = 0u;
  memset(v43, 0, sizeof(v43));
  v41.n128_u32[0] = 0;
  v41.n128_u64[1] = v15;
  v42 = v22;
  sub_1AC0DD154(v43, &v41);
  v23 = *(&v44 + 1);
  if (*(&v44 + 1))
  {
    v24 = 0;
    do
    {
      v25 = (*(*(&v43[0] + 1) + 8 * (v44 / 0xAA)) + 24 * (v44 % 0xAA));
      v26 = *v25;
      v27 = v25[2];
      v28 = v25[4];
      *&v44 = v44 + 1;
      *(&v44 + 1) = v23 - 1;
      if (v44 >= 0x154)
      {
        operator delete(**(&v43[0] + 1));
        *(&v43[0] + 1) += 8;
        *&v44 = v44 - 170;
      }

      if ((v28 & 0x80000000) == 0)
      {
        v29 = a3 + 16 * v24;
        *v29 = v28;
        *(v29 + 8) = a5;
        ++v24;
      }

      v31 = a6 >= 0 && v26 > a6;
      if (v24 >= a4 || v31)
      {
        break;
      }

      if (v28 != -2)
      {
        v32 = v26 + 1;
        for (i = 1; i != 256; ++i)
        {
          v34 = *(a1 + 16);
          v35 = (*(v34 + 4 * v27) >> 10 << ((*(v34 + 4 * v27) >> 6) & 8)) ^ v27 ^ i;
          v36 = *(v34 + 4 * v35);
          if (i == (v36 & 0x800000FF))
          {
            if ((v36 & 0x100) != 0)
            {
              v37 = *(v34 + 4 * ((v36 >> 10 << ((v36 >> 6) & 8)) ^ v35)) & 0x7FFFFFFF;
            }

            else
            {
              v37 = -1;
            }

            v41.n128_u32[0] = v32;
            v41.n128_u64[1] = v35;
            v42 = v37;
            sub_1AC0DD154(v43, &v41);
          }
        }
      }

      v23 = *(&v44 + 1);
    }

    while (*(&v44 + 1));
  }

  else
  {
    v24 = 0;
  }

  sub_1AC0DD848(v43);
  return v24;
}

void sub_1AC0DD10C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_1AC0DD848(va);
  _Unwind_Resume(a1);
}

void sub_1AC0DD124(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 16 * a2;
    }
  }

  else
  {
    sub_1AC0DD944(result, a2 - v2);
  }
}

__n128 sub_1AC0DD154(unint64_t *a1, __n128 *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 170 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_1AC0DD204(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = (*(v5 + 8 * (v7 / 0xAA)) + 24 * (v7 % 0xAA));
  result = *a2;
  v8[1].n128_u64[0] = a2[1].n128_u64[0];
  *v8 = result;
  ++a1[5];
  return result;
}

void sub_1AC0DD204(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0xAA;
  v3 = v1 - 170;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    sub_1AC0DD800(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_1AC0DD3D8(a1, &v9);
}

void sub_1AC0DD38C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1AC0DD3D8(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      sub_1AC0DD800(a1, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void sub_1AC0DD4E0(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_1AC0DD800(a1, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

void sub_1AC0DD5EC(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      sub_1AC0DD800(a1[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}