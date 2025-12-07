void *sub_1D0E1B1EC(void *result)
{
  result[16] = &unk_1F4CDEAF8;
  *result = &unk_1F4CD5E28;
  return result;
}

void *sub_1D0E1B22C(void *result)
{
  result[116] = &unk_1F4CDEAF8;
  result[106] = &unk_1F4CDEAF8;
  *result = &unk_1F4CD5E28;
  return result;
}

void sub_1D0E1B28C(uint64_t a1, uint64_t a2, double *a3)
{
  *(a1 + 24) = 0xA0000000ALL;
  *a1 = &unk_1F4CE2180;
  *(a1 + 8) = xmmword_1D0E84630;
  *(a1 + 32) = a1 + 40;
  v15 = 0x10000000ALL;
  v14 = xmmword_1D0E87BE0;
  v13 = &unk_1F4CED1E8;
  v16 = &v17;
  v10 = 0x10000000ALL;
  v9 = xmmword_1D0E87BE0;
  v8 = &unk_1F4CED1E8;
  v11 = &v12;
  v5 = 0x100000028;
  v3 = &unk_1F4CED230;
  v4 = xmmword_1D0EA1280;
  v6 = &v7;
  *a3 = sub_1D0BA5174(a2, &v13, &v8, &v3, a1);
}

void *sub_1D0E1B3E8(void *result)
{
  result[7] = &unk_1F4CDEAF8;
  *result = &unk_1F4CD5E28;
  return result;
}

void *sub_1D0E1B428(void *result)
{
  result[22] = &unk_1F4CDEAF8;
  result[16] = &unk_1F4CDEAF8;
  *result = &unk_1F4CD5E28;
  return result;
}

uint64_t sub_1D0E1B4A8(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  v12 = 0x100000040;
  v10 = &unk_1F4CED610;
  v11 = xmmword_1D0EA1300;
  v13 = &v14;
  v7 = 0x1400000014;
  v5 = &unk_1F4CEDA40;
  v6 = xmmword_1D0EA12B0;
  v8 = &v9;
  return sub_1D0BA5B14(a1, a2, &v10, &v5, a3, a4);
}

uint64_t sub_1D0E1B560(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v2 = *(a2 + 12);
  *(a1 + 24) = 0x10000002CLL;
  *a1 = &unk_1F4CECE00;
  *(a1 + 8) = v2;
  *(a1 + 12) = v3;
  *(a1 + 16) = v3 * v2;
  *(a1 + 20) = v2;
  *(a1 + 32) = a1 + 40;
  return sub_1D0D2EF0C(a2, a1);
}

uint64_t sub_1D0E1B5EC(uint64_t result, int a2, int a3)
{
  *(result + 24) = 0x2C00000001;
  *result = &unk_1F4CED658;
  *(result + 32) = result + 40;
  v3 = (a3 - a2);
  if (a3 == a2)
  {
    *&v4 = 0x100000001;
    *(&v4 + 1) = 0x100000001;
    *(result + 8) = v4;
    *(result + 40) = a2;
  }

  else if (a3 - a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
  }

  else
  {
    *(result + 8) = 1;
    *(result + 12) = v3 + 1;
    *(result + 16) = v3 + 1;
    *(result + 20) = 1;
    v5 = vdupq_n_s64(v3);
    v6 = (result + 52);
    v7 = (4 * ~(v3 >> 2)) | 0xFFFFFFFF80000000;
    v8 = xmmword_1D0E84440;
    v9 = xmmword_1D0E7DD30;
    v10 = 13;
    v11 = vdupq_n_s64(4uLL);
    do
    {
      v12 = vmovn_s64(vcgeq_u64(v5, v9));
      if (vuzp1_s16(v12, *v5.i8).u8[0])
      {
        *(v6 - 3) = a2 + v10 - 13;
      }

      if (vuzp1_s16(v12, *&v5).i8[2])
      {
        *(v6 - 2) = a2 + v10 - 12;
      }

      if (vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, *&v8))).i32[1])
      {
        *(v6 - 1) = a2 + v10 - 11;
        *v6 = a2 + v10 - 10;
      }

      v8 = vaddq_s64(v8, v11);
      v9 = vaddq_s64(v9, v11);
      v10 += 4;
      v6 += 4;
    }

    while (v7 + v10 != 13);
  }

  return result;
}

void *sub_1D0E1B738(void *result)
{
  result[50] = &unk_1F4CDEAF8;
  *result = &unk_1F4CD5E28;
  return result;
}

uint64_t sub_1D0E1B778(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v2 = *(a2 + 12);
  *a1 = &unk_1F4CED730;
  *(a1 + 8) = v2;
  *(a1 + 12) = v3;
  *(a1 + 16) = v3 * v2;
  *(a1 + 20) = v2;
  *(a1 + 24) = 0x2C0000000ALL;
  *(a1 + 32) = a1 + 40;
  return sub_1D0BD2018(a2, a1);
}

uint64_t sub_1D0E1B800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x2C0000000ALL;
  *a1 = &unk_1F4CED730;
  *(a1 + 8) = xmmword_1D0EA1310;
  *(a1 + 32) = a1 + 40;
  return sub_1D0B89390(a2, a3, a1);
}

void sub_1D0E1B8AC(uint64_t a1, uint64_t a2)
{
  v5 = 0x100000036;
  v3 = &unk_1F4CED778;
  v4 = xmmword_1D0EA1320;
  v6 = &v7;
  sub_1D0E1D28C(v2);
}

void sub_1D0E1B98C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D0E1DDB8(v3);
  sub_1D0E1D72C(va);
  _Unwind_Resume(a1);
}

double sub_1D0E1BBC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x10000002CLL;
  *a1 = &unk_1F4CECE48;
  *(a1 + 8) = xmmword_1D0EA1270;
  *(a1 + 32) = a1 + 40;
  *&result = *&sub_1D0BA5A78(a2, a3, a1);
  return result;
}

uint64_t sub_1D0E1BC18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x10000002CLL;
  *a1 = &unk_1F4CECE48;
  *(a1 + 8) = xmmword_1D0EA1270;
  *(a1 + 32) = a1 + 40;
  return sub_1D0B89390(a2, a3, a1);
}

void sub_1D0E1BCF4(uint64_t a1, uint64_t a2)
{
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v3 = *(a2 + 8);
  v4 = *(a2 + 12);
  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5 || (v4 | v3) == 0)
  {
LABEL_9:
    if ((a1 + 2320) != &v15)
    {
      sub_1D0DA3374((a1 + 2320), v15, v16, (v16 - v15) >> 5);
    }
  }

  else
  {
    v8 = 1;
    while (1)
    {
      v9 = *(*(a2 + 32) + 4 * (v8 - 1));
      v10 = *(a1 + 2320);
      if (v9 >= (*(a1 + 2328) - v10) >> 5)
      {
        break;
      }

      sub_1D0BBCC94(&v15, v10 + 32 * v9);
      v12 = *(a2 + 8);
      v11 = *(a2 + 12);
      if (v12 <= v11)
      {
        v13 = *(a2 + 12);
      }

      else
      {
        v13 = *(a2 + 8);
      }

      if (v12)
      {
        if (v11)
        {
          if (v13 > v8++)
          {
            continue;
          }
        }
      }

      goto LABEL_9;
    }
  }

  v18 = &v15;
  sub_1D0BA5F70(&v18);
}

void sub_1D0E1BDD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_1D0BA5F70(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0E1BDF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x100000040;
  *a1 = &unk_1F4CED850;
  *(a1 + 8) = xmmword_1D0EA1300;
  *(a1 + 32) = a1 + 40;
  return sub_1D0D8C29C(a2, a3, a1);
}

uint64_t sub_1D0E1BE40(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v2 = *(a2 + 12);
  *(a1 + 24) = 0x100000014;
  *a1 = &unk_1F4CED898;
  *(a1 + 8) = v2;
  *(a1 + 12) = v3;
  *(a1 + 16) = v3 * v2;
  *(a1 + 20) = v2;
  *(a1 + 32) = a1 + 40;
  return sub_1D0D2EF0C(a2, a1);
}

uint64_t sub_1D0E1BECC(uint64_t result, unsigned int a2)
{
  *(result + 24) = 0x1400000001;
  *result = &unk_1F4CED8E0;
  *(result + 32) = result + 40;
  if (a2)
  {
    if ((a2 & 0x80000000) != 0)
    {
      *(result + 8) = 0;
      *(result + 16) = 0;
    }

    else
    {
      v2 = 0;
      *(result + 8) = 1;
      *(result + 12) = a2 + 1;
      *(result + 16) = a2 + 1;
      *(result + 20) = 1;
      v3 = vdupq_n_s64(a2);
      v4 = xmmword_1D0E84440;
      v5 = xmmword_1D0E7DD30;
      v6 = (result + 52);
      v7 = vdupq_n_s64(4uLL);
      do
      {
        v8 = vmovn_s64(vcgeq_u64(v3, v5));
        if (vuzp1_s16(v8, *v3.i8).u8[0])
        {
          *(v6 - 3) = v2;
        }

        if (vuzp1_s16(v8, *&v3).i8[2])
        {
          *(v6 - 2) = v2 + 1;
        }

        if (vuzp1_s16(*&v3, vmovn_s64(vcgeq_u64(v3, *&v4))).i32[1])
        {
          *(v6 - 1) = v2 + 2;
          *v6 = v2 + 3;
        }

        v2 += 4;
        v4 = vaddq_s64(v4, v7);
        v5 = vaddq_s64(v5, v7);
        v6 += 4;
      }

      while ((a2 & 0x7FFFFFFC) + 4 != v2);
    }
  }

  else
  {
    *&v9 = 0x100000001;
    *(&v9 + 1) = 0x100000001;
    *(result + 8) = v9;
    *(result + 40) = 0;
  }

  return result;
}

uint64_t sub_1D0E1BFD4(uint64_t result, uint64_t a2, int a3)
{
  *(result + 24) = 0x10000002CLL;
  *result = &unk_1F4CECE00;
  v3 = (result + 40);
  *(result + 32) = result + 40;
  v5 = *(a2 + 8);
  v4 = *(a2 + 12);
  *(result + 8) = v5;
  *(result + 12) = v4;
  v6 = (v4 * v5);
  *(result + 16) = v6;
  *(result + 20) = v5;
  if (v6 >= 1)
  {
    v7 = *(a2 + 32);
    do
    {
      v8 = *v7++;
      *v3++ = v8 + a3;
      --v6;
    }

    while (v6);
  }

  return result;
}

void sub_1D0E1C078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 12);
  sub_1D0E1DB44(v12, *(a2 + 12));
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = vdupq_n_s64(v4 - 1);
    v7 = xmmword_1D0E84440;
    v8 = xmmword_1D0E7DD30;
    v9 = (v13 + 8);
    v10 = vdupq_n_s64(4uLL);
    do
    {
      v11 = vmovn_s64(vcgeq_u64(v6, v8));
      if (vuzp1_s16(v11, *v6.i8).u8[0])
      {
        *(v9 - 2) = v5;
      }

      if (vuzp1_s16(v11, *&v6).i8[2])
      {
        *(v9 - 1) = v5 + 1;
      }

      if (vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, *&v7))).i32[1])
      {
        *v9 = v5 + 2;
        v9[1] = v5 + 3;
      }

      v5 += 4;
      v7 = vaddq_s64(v7, v10);
      v8 = vaddq_s64(v8, v10);
      v9 += 4;
    }

    while (((v4 + 3) & 0xFFFFFFFC) != v5);
  }

  sub_1D0BEDF5C(a1);
}

void sub_1D0E1C2D8(_Unwind_Exception *a1)
{
  v1[44] = &unk_1F4CDEAF8;
  v1[7] = &unk_1F4CDEAF8;
  sub_1D0BEFE04(v1);
  _Unwind_Resume(a1);
}

void *sub_1D0E1C324(void *a1)
{
  *a1 = &unk_1F4CED928;
  a1[44] = &unk_1F4CDEAF8;
  a1[7] = &unk_1F4CDEAF8;
  return sub_1D0BEFE04(a1);
}

void *sub_1D0E1C384(void *result)
{
  result[70] = &unk_1F4CDEAF8;
  *result = &unk_1F4CD5E28;
  return result;
}

void *sub_1D0E1C3E8(void *a1)
{
  *a1 = &unk_1F4CED9B8;
  sub_1D0E1DE34(a1 + 5);
  *a1 = &unk_1F4CEDA10;
  return a1;
}

void *sub_1D0E1C468(void *result)
{
  result[421] = &unk_1F4CDEAF8;
  result[406] = &unk_1F4CDEAF8;
  *result = &unk_1F4CD5E28;
  return result;
}

void *sub_1D0E1C4C8(void *result)
{
  result[26] = &unk_1F4CDEAF8;
  *result = &unk_1F4CD5E28;
  return result;
}

void sub_1D0E1C588(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v3 = *(a1 + 12);
    if (v3 >= 2)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 20);
      bzero(v13, v4);
      if (v4 >= 3)
      {
        v6 = (v4 - 1);
        v7 = *(a1 + 32);
        v8 = 1;
        do
        {
          v9 = &v13[v8];
          if ((v13[v8] & 1) == 0)
          {
            v10 = *(v7 + 4 * v8);
            v11 = v8;
            do
            {
              v11 = (v11 * (v3 + v1 - v5)) % v6;
              v12 = *(v7 + 4 * v11);
              *(v7 + 4 * v11) = v10;
              *v9 = 1;
              v9 = &v13[v11];
              v10 = v12;
            }

            while (!*v9);
          }

          ++v8;
        }

        while (v8 != v6);
      }
    }
  }
}

void sub_1D0E1C680(void *a1)
{
  a1[16] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

void sub_1D0E1C6D0(void *a1)
{
  a1[116] = &unk_1F4CDEAF8;
  a1[106] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

void sub_1D0E1C77C(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v3 = *(a1 + 12);
    if (v3 >= 2)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 20);
      bzero(v13, v4);
      if (v4 >= 3)
      {
        v6 = (v4 - 1);
        v7 = *(a1 + 32);
        v8 = 1;
        do
        {
          v9 = &v13[v8];
          if ((v13[v8] & 1) == 0)
          {
            v10 = *(v7 + 8 * v8);
            v11 = v8;
            do
            {
              v11 = (v11 * (v3 + v1 - v5)) % v6;
              v12 = *(v7 + 8 * v11);
              *(v7 + 8 * v11) = v10;
              *v9 = 1;
              v9 = &v13[v11];
              v10 = v12;
            }

            while (!*v9);
          }

          ++v8;
        }

        while (v8 != v6);
      }
    }
  }
}

void sub_1D0E1C87C(void *a1)
{
  a1[7] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

void sub_1D0E1C8CC(void *a1)
{
  a1[22] = &unk_1F4CDEAF8;
  a1[16] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

void sub_1D0E1C93C(void *a1)
{
  sub_1D0BEFE04(a1);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0E1CAE4(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v3 = *(a1 + 12);
    if (v3 >= 2)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 20);
      bzero(v13, v4);
      if (v4 >= 3)
      {
        v6 = (v4 - 1);
        v7 = *(a1 + 32);
        v8 = 1;
        do
        {
          v9 = &v13[v8];
          if ((v13[v8] & 1) == 0)
          {
            v10 = *(v7 + 8 * v8);
            v11 = v8;
            do
            {
              v11 = (v11 * (v3 + v1 - v5)) % v6;
              v12 = *(v7 + 8 * v11);
              *(v7 + 8 * v11) = v10;
              *v9 = 1;
              v9 = &v13[v11];
              v10 = v12;
            }

            while (!*v9);
          }

          ++v8;
        }

        while (v8 != v6);
      }
    }
  }
}

void sub_1D0E1CC18(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v3 = *(a1 + 12);
    if (v3 >= 2)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 20);
      bzero(v13, v4);
      if (v4 >= 3)
      {
        v6 = (v4 - 1);
        v7 = *(a1 + 32);
        v8 = 1;
        do
        {
          v9 = &v13[v8];
          if ((v13[v8] & 1) == 0)
          {
            v10 = *(v7 + 4 * v8);
            v11 = v8;
            do
            {
              v11 = (v11 * (v3 + v1 - v5)) % v6;
              v12 = *(v7 + 4 * v11);
              *(v7 + 4 * v11) = v10;
              *v9 = 1;
              v9 = &v13[v11];
              v10 = v12;
            }

            while (!*v9);
          }

          ++v8;
        }

        while (v8 != v6);
      }
    }
  }
}

void sub_1D0E1CD10(void *a1)
{
  a1[50] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

void sub_1D0E1CD60(uint64_t a1, int a2, int a3)
{
  *(a1 + 24) = 0x2C00000036;
  *a1 = &unk_1F4CED6E8;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  *(a1 + 16) = a3 * a2;
  *(a1 + 20) = a2;
  sub_1D0E1CF7C(a1);
}

void sub_1D0E1CDC8(_Unwind_Exception *exception_object)
{
  v3 = v1[5];
  v1[5] = 0;
  if (v3)
  {
    MEMORY[0x1D387EC80](v3, 0x1000C8000313F17);
  }

  *v1 = &unk_1F4CD5E28;
  _Unwind_Resume(exception_object);
}

void sub_1D0E1CE10(void *a1)
{
  sub_1D0E1DDB8(a1);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0E1D038(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v3 = *(a1 + 12);
    if (v3 >= 2)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 20);
      bzero(v13, v4);
      if (v4 >= 3)
      {
        v6 = (v4 - 1);
        v7 = *(a1 + 32);
        v8 = 1;
        do
        {
          v9 = &v13[v8];
          if ((v13[v8] & 1) == 0)
          {
            v10 = *(v7 + 8 * v8);
            v11 = v8;
            do
            {
              v11 = (v11 * (v3 + v1 - v5)) % v6;
              v12 = *(v7 + 8 * v11);
              *(v7 + 8 * v11) = v10;
              *v9 = 1;
              v9 = &v13[v11];
              v10 = v12;
            }

            while (!*v9);
          }

          ++v8;
        }

        while (v8 != v6);
      }
    }
  }
}

void sub_1D0E1D194(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v3 = *(a1 + 12);
    if (v3 >= 2)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 20);
      bzero(v13, v4);
      if (v4 >= 3)
      {
        v6 = (v4 - 1);
        v7 = *(a1 + 32);
        v8 = 1;
        do
        {
          v9 = &v13[v8];
          if ((v13[v8] & 1) == 0)
          {
            v10 = *(v7 + 8 * v8);
            v11 = v8;
            do
            {
              v11 = (v11 * (v3 + v1 - v5)) % v6;
              v12 = *(v7 + 8 * v11);
              *(v7 + 8 * v11) = v10;
              *v9 = 1;
              v9 = &v13[v11];
              v10 = v12;
            }

            while (!*v9);
          }

          ++v8;
        }

        while (v8 != v6);
      }
    }
  }
}

void sub_1D0E1D28C(uint64_t a1)
{
  *(a1 + 24) = 0x2C0000002CLL;
  *a1 = &unk_1F4CED7C0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 8) = xmmword_1D0EA1360;
  sub_1D0E1D4A4(a1);
}

void sub_1D0E1D2F0(_Unwind_Exception *exception_object)
{
  v3 = v1[5];
  v1[5] = 0;
  if (v3)
  {
    MEMORY[0x1D387EC80](v3, 0x1000C8000313F17);
  }

  *v1 = &unk_1F4CD5E28;
  _Unwind_Resume(exception_object);
}

void sub_1D0E1D338(void *a1)
{
  sub_1D0E1D72C(a1);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0E1D580(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v3 = *(a1 + 12);
    if (v3 >= 2)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 20);
      bzero(v13, v4);
      if (v4 >= 3)
      {
        v6 = (v4 - 1);
        v7 = *(a1 + 32);
        v8 = 1;
        do
        {
          v9 = &v13[v8];
          if ((v13[v8] & 1) == 0)
          {
            v10 = *(v7 + 8 * v8);
            v11 = v8;
            do
            {
              v11 = (v11 * (v3 + v1 - v5)) % v6;
              v12 = *(v7 + 8 * v11);
              *(v7 + 8 * v11) = v10;
              *v9 = 1;
              v9 = &v13[v11];
              v10 = v12;
            }

            while (!*v9);
          }

          ++v8;
        }

        while (v8 != v6);
      }
    }
  }
}

void sub_1D0E1D680(uint64_t a1, int a2, int a3)
{
  *(a1 + 24) = 0x2C0000002CLL;
  *a1 = &unk_1F4CED7C0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  *(a1 + 16) = a3 * a2;
  *(a1 + 20) = a2;
  sub_1D0E1D4A4(a1);
}

void sub_1D0E1D6E4(_Unwind_Exception *exception_object)
{
  v3 = v1[5];
  v1[5] = 0;
  if (v3)
  {
    MEMORY[0x1D387EC80](v3, 0x1000C8000313F17);
  }

  *v1 = &unk_1F4CD5E28;
  _Unwind_Resume(exception_object);
}

void *sub_1D0E1D72C(void *a1)
{
  *a1 = &unk_1F4CED7C0;
  v2 = a1[5];
  a1[5] = 0;
  if (v2)
  {
    MEMORY[0x1D387EC80](v2, 0x1000C8000313F17);
  }

  *a1 = &unk_1F4CD5E28;
  return a1;
}

void sub_1D0E1D7E4(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v3 = *(a1 + 12);
    if (v3 >= 2)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 20);
      bzero(v13, v4);
      if (v4 >= 3)
      {
        v6 = (v4 - 1);
        v7 = *(a1 + 32);
        v8 = 1;
        do
        {
          v9 = &v13[v8];
          if ((v13[v8] & 1) == 0)
          {
            v10 = *(v7 + 4 * v8);
            v11 = v8;
            do
            {
              v11 = (v11 * (v3 + v1 - v5)) % v6;
              v12 = *(v7 + 4 * v11);
              *(v7 + 4 * v11) = v10;
              *v9 = 1;
              v9 = &v13[v11];
              v10 = v12;
            }

            while (!*v9);
          }

          ++v8;
        }

        while (v8 != v6);
      }
    }
  }
}

void sub_1D0E1D918(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v3 = *(a1 + 12);
    if (v3 >= 2)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 20);
      bzero(v13, v4);
      if (v4 >= 3)
      {
        v6 = (v4 - 1);
        v7 = *(a1 + 32);
        v8 = 1;
        do
        {
          v9 = &v13[v8];
          if ((v13[v8] & 1) == 0)
          {
            v10 = *(v7 + 4 * v8);
            v11 = v8;
            do
            {
              v11 = (v11 * (v3 + v1 - v5)) % v6;
              v12 = *(v7 + 4 * v11);
              *(v7 + 4 * v11) = v10;
              *v9 = 1;
              v9 = &v13[v11];
              v10 = v12;
            }

            while (!*v9);
          }

          ++v8;
        }

        while (v8 != v6);
      }
    }
  }
}

void sub_1D0E1DA4C(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v3 = *(a1 + 12);
    if (v3 >= 2)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 20);
      bzero(v13, v4);
      if (v4 >= 3)
      {
        v6 = (v4 - 1);
        v7 = *(a1 + 32);
        v8 = 1;
        do
        {
          v9 = &v13[v8];
          if ((v13[v8] & 1) == 0)
          {
            v10 = *(v7 + 4 * v8);
            v11 = v8;
            do
            {
              v11 = (v11 * (v3 + v1 - v5)) % v6;
              v12 = *(v7 + 4 * v11);
              *(v7 + 4 * v11) = v10;
              *v9 = 1;
              v9 = &v13[v11];
              v10 = v12;
            }

            while (!*v9);
          }

          ++v8;
        }

        while (v8 != v6);
      }
    }
  }
}

uint64_t sub_1D0E1DB44(uint64_t result, int a2)
{
  *(result + 24) = 0x100000014;
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = &unk_1F4CED898;
  if (a2 < 0)
  {
    __assert_rtn("CNMatrix", "cnmatrix.h", 419, "nr >= 0");
  }

  *(result + 8) = a2;
  *(result + 12) = 1;
  *(result + 16) = a2;
  *(result + 20) = a2;
  *(result + 32) = result + 40;
  return result;
}

void sub_1D0E1DBF4(void *a1)
{
  *a1 = &unk_1F4CED928;
  a1[44] = &unk_1F4CDEAF8;
  a1[7] = &unk_1F4CDEAF8;
  sub_1D0BEFE04(a1);

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0E1DC88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x100000040;
  *(a1 + 8) = xmmword_1D0EA1300;
  *(a1 + 32) = a1 + 40;
  *a1 = &unk_1F4CED970;
  *(a1 + 552) = a2;
  *(a1 + 584) = 0x100000040;
  *(a1 + 560) = &unk_1F4CED850;
  *(a1 + 568) = xmmword_1D0EA1300;
  *(a1 + 592) = a1 + 600;
  sub_1D0B9F5D4(a1 + 560, a3);
  v5 = *(a1 + 568);
  v6 = *(a1 + 572);
  *(a1 + 8) = v5;
  *(a1 + 12) = v6;
  v7 = (v6 * v5);
  *(a1 + 16) = v7;
  *(a1 + 20) = v5;
  if (v7 >= 1)
  {
    v8 = *(a1 + 592);
    v9 = *(a2 + 32);
    v10 = *(a1 + 32);
    do
    {
      v11 = *v8++;
      *v10++ = *(v9 + 8 * v11);
      --v7;
    }

    while (v7);
  }

  return a1;
}

void sub_1D0E1DD68(void *a1)
{
  a1[70] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

void *sub_1D0E1DDB8(void *a1)
{
  *a1 = &unk_1F4CED6E8;
  v2 = a1[5];
  a1[5] = 0;
  if (v2)
  {
    MEMORY[0x1D387EC80](v2, 0x1000C8000313F17);
  }

  *a1 = &unk_1F4CD5E28;
  return a1;
}

uint64_t *sub_1D0E1DE34(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      v5 = 392 * v4;
      v6 = v2 - 392;
      do
      {
        *(v6 + v5) = &unk_1F4CD5E28;
        v5 -= 392;
      }

      while (v5);
    }

    MEMORY[0x1D387EC80](v3, 0x1081C8090635726);
  }

  return a1;
}

void sub_1D0E1DEB8(void *a1)
{
  *a1 = &unk_1F4CED9B8;
  sub_1D0E1DE34(a1 + 5);
  *a1 = &unk_1F4CEDA10;

  JUMPOUT(0x1D387ECA0);
}

__n128 sub_1D0E1E1F8(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = 0x10000002CLL;
  *(a1 + 24) = 0x10000002CLL;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CECE48;
  if (a1 == a2)
  {
    v17 = "this != &(A)";
    v18 = 603;
    goto LABEL_16;
  }

  v4 = *(a2 + 8);
  v3 = *(a2 + 12);
  *(a1 + 8) = v4;
  *(a1 + 12) = v3;
  v5 = v3 * v4;
  *(a1 + 16) = v5;
  *(a1 + 20) = v4;
  v6 = (a1 + 40);
  *(a1 + 32) = a1 + 40;
  if (v4 > 0x2C)
  {
    v17 = "this->max_num_rows_ >= A.num_rows_";
    v18 = 616;
    goto LABEL_16;
  }

  if (v3 >= 2)
  {
    v17 = "this->max_num_cols_ >= A.num_cols_";
    v18 = 617;
LABEL_16:
    __assert_rtn("CNMatrix", "cnmatrix.h", v18, v17);
  }

  v7 = *(a2 + 16);
  if (v7 > 3)
  {
    v10 = (v7 - 2);
    v11 = *(a2 + 32);
    v12 = (v7 - 1) >> 1;
    v13 = v11;
    v14 = (a1 + 40);
    do
    {
      v15 = *v13++;
      *v14++ = v15;
      --v12;
    }

    while (v12);
    v16 = v10;
    result = *(v11 + v16 * 8);
    *&v6[v16] = result;
  }

  else if (v5 >= 1)
  {
    v8 = *(a2 + 32);
    do
    {
      v9 = *v8++;
      result.n128_u64[0] = v9;
      *v6++ = v9;
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_1D0E1E37C(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v3 = *(a1 + 12);
    if (v3 >= 2)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 20);
      bzero(v13, v4);
      if (v4 >= 3)
      {
        v6 = (v4 - 1);
        v7 = *(a1 + 32);
        v8 = 1;
        do
        {
          v9 = &v13[v8];
          if ((v13[v8] & 1) == 0)
          {
            v10 = *(v7 + 8 * v8);
            v11 = v8;
            do
            {
              v11 = (v11 * (v3 + v1 - v5)) % v6;
              v12 = *(v7 + 8 * v11);
              *(v7 + 8 * v11) = v10;
              *v9 = 1;
              v9 = &v13[v11];
              v10 = v12;
            }

            while (!*v9);
          }

          ++v8;
        }

        while (v8 != v6);
      }
    }
  }
}

void sub_1D0E1E47C(void *a1)
{
  a1[421] = &unk_1F4CDEAF8;
  a1[406] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

void sub_1D0E1E4EC(void *a1)
{
  a1[26] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

void sub_1D0E1E548(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v3 = *(a1 + 12);
    if (v3 >= 2)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 20);
      bzero(v13, v4);
      if (v4 >= 3)
      {
        v6 = (v4 - 1);
        v7 = *(a1 + 32);
        v8 = 1;
        do
        {
          v9 = &v13[v8];
          if ((v13[v8] & 1) == 0)
          {
            v10 = *(v7 + 8 * v8);
            v11 = v8;
            do
            {
              v11 = (v11 * (v3 + v1 - v5)) % v6;
              v12 = *(v7 + 8 * v11);
              *(v7 + 8 * v11) = v10;
              *v9 = 1;
              v9 = &v13[v11];
              v10 = v12;
            }

            while (!*v9);
          }

          ++v8;
        }

        while (v8 != v6);
      }
    }
  }
}

double sub_1D0E1E670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  v4 = *(a3 + 12);
  v5 = (v4 * v3);
  *&result = 0x10000000ALL;
  *(a1 + 24) = 0x10000000ALL;
  *a1 = &unk_1F4CEAE48;
  *(a1 + 8) = v3;
  *(a1 + 12) = v4;
  *(a1 + 16) = v5;
  *(a1 + 20) = v3;
  v7 = (a1 + 40);
  *(a1 + 32) = a1 + 40;
  if (v5)
  {
    v8 = *(a3 + 32);
    do
    {
      v9 = *v8++;
      result = *(a2 + 8 * v9);
      *v7++ = result;
      --v5;
    }

    while (v5);
  }

  return result;
}

void *sub_1D0E1E6F0(void *result)
{
  result[5] = &unk_1F4CD5E28;
  *result = &unk_1F4CEDC40;
  return result;
}

void *sub_1D0E1E730(void *result)
{
  result[5] = &unk_1F4CD5E28;
  *result = &unk_1F4CEDBB8;
  return result;
}

void sub_1D0E1E770(void *a1)
{
  a1[5] = &unk_1F4CD5E28;
  *a1 = &unk_1F4CEDBB8;
  JUMPOUT(0x1D387ECA0);
}

void sub_1D0E1E7CC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v3 = *(a1 + 12);
    if (v3 >= 2)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 20);
      bzero(&v11, v4);
      if (v4 >= 3)
      {
        v6 = v3 + v1 - v5;
        v7 = v4 - 1;
        v8 = v11;
        v9 = 120;
        v10 = v6;
        do
        {
          sub_1D0B94CA4(v13, *(a1 + 32) + v9);
          if (!v8)
          {
            sub_1D0B94CA4(v12, *(a1 + 32) + 120 * (v10 % v7));
            sub_1D0B894B0(*(a1 + 32) + 120 * (v10 % v7), v13);
            sub_1D0B894B0(v13, v12);
            v8 = 1;
          }

          v10 += v6;
          v9 += 120;
        }

        while (120 * v7 != v9);
      }
    }
  }
}

uint64_t sub_1D0E1E8C8(uint64_t result, int a2)
{
  *(result + 24) = 0x100000001;
  *(result + 8) = 0u;
  *result = &unk_1F4CEDBE8;
  *(result + 64) = 0xA0000000ALL;
  *(result + 32) = 0;
  *(result + 40) = &unk_1F4CE2180;
  *(result + 48) = xmmword_1D0E84630;
  *(result + 72) = result + 80;
  if (a2 < 0)
  {
    __assert_rtn("CNMatrix", "cnmatrix.h", 419, "nr >= 0");
  }

  *(result + 8) = a2;
  *(result + 12) = 1;
  *(result + 16) = a2;
  *(result + 20) = a2;
  *(result + 32) = result + 40;
  return result;
}

void sub_1D0E1E990(_Unwind_Exception *a1)
{
  v1[5] = &unk_1F4CD5E28;
  *v1 = &unk_1F4CEDC40;
  _Unwind_Resume(a1);
}

void sub_1D0E1E9D0(void *a1)
{
  a1[5] = &unk_1F4CD5E28;
  *a1 = &unk_1F4CEDC40;
  JUMPOUT(0x1D387ECA0);
}

void sub_1D0E1EA2C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v3 = *(a1 + 12);
    if (v3 >= 2)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 20);
      bzero(&v11, v4);
      if (v4 >= 3)
      {
        v6 = v3 + v1 - v5;
        v7 = v4 - 1;
        v8 = v11;
        v9 = 840;
        v10 = v6;
        do
        {
          sub_1D0E1A968(v13, *(a1 + 32) + v9);
          if (!v8)
          {
            sub_1D0E1A968(v12, *(a1 + 32) + 840 * (v10 % v7));
            sub_1D0B894B0(*(a1 + 32) + 840 * (v10 % v7), v13);
            sub_1D0B894B0(v13, v12);
            v8 = 1;
          }

          v10 += v6;
          v9 += 840;
        }

        while (840 * v7 != v9);
      }
    }
  }
}

void sub_1D0E1EB64(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v3 = *(a1 + 12);
    if (v3 >= 2)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 20);
      bzero(v13, v4);
      if (v4 >= 3)
      {
        v6 = (v4 - 1);
        v7 = *(a1 + 32);
        v8 = 1;
        do
        {
          v9 = &v13[v8];
          if ((v13[v8] & 1) == 0)
          {
            v10 = *(v7 + 8 * v8);
            v11 = v8;
            do
            {
              v11 = (v11 * (v3 + v1 - v5)) % v6;
              v12 = *(v7 + 8 * v11);
              *(v7 + 8 * v11) = v10;
              *v9 = 1;
              v9 = &v13[v11];
              v10 = v12;
            }

            while (!*v9);
          }

          ++v8;
        }

        while (v8 != v6);
      }
    }
  }
}

void sub_1D0E1ECC0(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v3 = *(a1 + 12);
    if (v3 >= 2)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 20);
      bzero(v13, v4);
      if (v4 >= 3)
      {
        v6 = (v4 - 1);
        v7 = *(a1 + 32);
        v8 = 1;
        do
        {
          v9 = &v13[v8];
          if ((v13[v8] & 1) == 0)
          {
            v10 = *(v7 + 4 * v8);
            v11 = v8;
            do
            {
              v11 = (v11 * (v3 + v1 - v5)) % v6;
              v12 = *(v7 + 4 * v11);
              *(v7 + 4 * v11) = v10;
              *v9 = 1;
              v9 = &v13[v11];
              v10 = v12;
            }

            while (!*v9);
          }

          ++v8;
        }

        while (v8 != v6);
      }
    }
  }
}

void *sub_1D0E1EDB8(void *result)
{
  result[182] = &unk_1F4CDEAF8;
  *result = &unk_1F4CE3870;
  return result;
}

void *sub_1D0E1EDF8(void *result)
{
  result[50] = &unk_1F4CDEAF8;
  *result = &unk_1F4CDEAF8;
  return result;
}

void *sub_1D0E1EE38(void *result)
{
  result[94] = &unk_1F4CDEAF8;
  *result = &unk_1F4CD5E28;
  return result;
}

void *sub_1D0E1EE78(void *a1)
{
  a1[7] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CECF68;
  sub_1D0BF1BF8(a1 + 5);
  *a1 = &unk_1F4CECDD0;
  return a1;
}

void *sub_1D0E1EEF8(void *result)
{
  result[94] = &unk_1F4CDEAF8;
  *result = &unk_1F4CECD48;
  return result;
}

void *sub_1D0E1EF38(void *result)
{
  result[94] = &unk_1F4CDEAF8;
  *result = &unk_1F4CE3720;
  return result;
}

void sub_1D0E1EF78(void *a1)
{
  a1[182] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CE3870;
  JUMPOUT(0x1D387ECA0);
}

void sub_1D0E1EFC8(void *a1)
{
  a1[50] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CDEAF8;
  JUMPOUT(0x1D387ECA0);
}

void sub_1D0E1F018(void *a1)
{
  a1[94] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

void sub_1D0E1F068(void *a1)
{
  a1[7] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CECF68;
  sub_1D0BF1BF8(a1 + 5);
  *a1 = &unk_1F4CECDD0;

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0E1F108(void *a1)
{
  a1[94] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CECD48;
  JUMPOUT(0x1D387ECA0);
}

void sub_1D0E1F158(void *a1)
{
  a1[94] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CE3720;
  JUMPOUT(0x1D387ECA0);
}

void sub_1D0E1F1E4(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v3 = *(a1 + 12);
    if (v3 >= 2)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 20);
      bzero(v13, v4);
      if (v4 >= 3)
      {
        v6 = (v4 - 1);
        v7 = *(a1 + 32);
        v8 = 1;
        do
        {
          v9 = &v13[v8];
          if ((v13[v8] & 1) == 0)
          {
            v10 = *(v7 + 8 * v8);
            v11 = v8;
            do
            {
              v11 = (v11 * (v3 + v1 - v5)) % v6;
              v12 = *(v7 + 8 * v11);
              *(v7 + 8 * v11) = v10;
              *v9 = 1;
              v9 = &v13[v11];
              v10 = v12;
            }

            while (!*v9);
          }

          ++v8;
        }

        while (v8 != v6);
      }
    }
  }
}

void sub_1D0E1F320(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v3 = *(a1 + 12);
    if (v3 >= 2)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 20);
      bzero(v13, v4);
      if (v4 >= 3)
      {
        v6 = (v4 - 1);
        v7 = *(a1 + 32);
        v8 = 1;
        do
        {
          v9 = &v13[v8];
          if ((v13[v8] & 1) == 0)
          {
            v10 = *(v7 + 8 * v8);
            v11 = v8;
            do
            {
              v11 = (v11 * (v3 + v1 - v5)) % v6;
              v12 = *(v7 + 8 * v11);
              *(v7 + 8 * v11) = v10;
              *v9 = 1;
              v9 = &v13[v11];
              v10 = v12;
            }

            while (!*v9);
          }

          ++v8;
        }

        while (v8 != v6);
      }
    }
  }
}

void *sub_1D0E1F420(void *result, unsigned __int8 a2)
{
  v2 = result[1];
  if (v2)
  {
    v3 = a2;
    v4 = vcnt_s8(v2);
    v4.i16[0] = vaddlv_u8(v4);
    if (v4.u32[0] > 1uLL)
    {
      v5 = a2;
      if (v2 <= a2)
      {
        v5 = a2 % result[1];
      }
    }

    else
    {
      v5 = (v2 - 1) & a2;
    }

    v6 = *(*result + 8 * v5);
    if (v6)
    {
      for (i = *v6; i; i = *i)
      {
        v8 = *(i + 8);
        if (v8 == v3)
        {
          if (*(i + 16) == v3)
          {
            return sub_1D0E1F4D4(result, i);
          }
        }

        else
        {
          if (v4.u32[0] > 1uLL)
          {
            if (v8 >= v2)
            {
              v8 %= v2;
            }
          }

          else
          {
            v8 &= v2 - 1;
          }

          if (v8 != v5)
          {
            return result;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D0E1F4D4(void *a1, uint64_t *__p)
{
  v2 = a1[1];
  v4 = *__p;
  v3 = __p[1];
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v3 >= *&v2)
    {
      v3 %= *&v2;
    }
  }

  else
  {
    v3 &= *&v2 - 1;
  }

  v6 = *(*a1 + 8 * v3);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != __p);
  if (v7 != a1 + 2)
  {
    v8 = v7[1];
    if (v5.u32[0] > 1uLL)
    {
      if (v8 >= *&v2)
      {
        v8 %= *&v2;
      }
    }

    else
    {
      v8 &= *&v2 - 1;
    }

    v9 = *__p;
    if (v8 == v3)
    {
LABEL_20:
      if (!v9)
      {
        goto LABEL_27;
      }

      goto LABEL_21;
    }
  }

  if (!v4)
  {
    goto LABEL_19;
  }

  v10 = *(v4 + 8);
  if (v5.u32[0] > 1uLL)
  {
    if (v10 >= *&v2)
    {
      v10 %= *&v2;
    }
  }

  else
  {
    v10 &= *&v2 - 1;
  }

  v9 = *__p;
  if (v10 != v3)
  {
LABEL_19:
    *(*a1 + 8 * v3) = 0;
    v9 = *__p;
    goto LABEL_20;
  }

LABEL_21:
  v11 = *(v9 + 8);
  if (v5.u32[0] > 1uLL)
  {
    if (v11 >= *&v2)
    {
      v11 %= *&v2;
    }
  }

  else
  {
    v11 &= *&v2 - 1;
  }

  if (v11 != v3)
  {
    *(*a1 + 8 * v11) = v7;
    v9 = *__p;
  }

LABEL_27:
  *v7 = v9;
  *__p = 0;
  --a1[3];
  operator delete(__p);
  return v4;
}

void raven::AccelerometerMeasurement::~AccelerometerMeasurement(raven::AccelerometerMeasurement *this)
{
  *this = &unk_1F4CE3C98;
}

{
  *this = &unk_1F4CE3C98;
}

{
  *this = &unk_1F4CE3C98;
  JUMPOUT(0x1D387ECA0);
}

void raven::AccessoryVehicleSpeedEvent::~AccessoryVehicleSpeedEvent(raven::AccessoryVehicleSpeedEvent *this)
{
  *this = &unk_1F4CEDF40;
  v2 = *(this + 29);
  if (v2)
  {
    *(this + 30) = v2;
    operator delete(v2);
  }

  v3 = *(this + 26);
  if (v3)
  {
    *(this + 27) = v3;
    operator delete(v3);
  }
}

{
  raven::AccessoryVehicleSpeedEvent::~AccessoryVehicleSpeedEvent(this);

  JUMPOUT(0x1D387ECA0);
}

void raven::AttitudeChangeEvent::~AttitudeChangeEvent(raven::AttitudeChangeEvent *this)
{
  *this = &unk_1F4CEDF70;
  *(this + 29) = &unk_1F4CD5E28;
}

{
  *this = &unk_1F4CEDF70;
  *(this + 29) = &unk_1F4CD5E28;
}

{
  *this = &unk_1F4CEDF70;
  *(this + 29) = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

void raven::GEOMapBuildingDataEvent::~GEOMapBuildingDataEvent(raven::GEOMapBuildingDataEvent *this)
{
  *this = &unk_1F4CEDFA0;
  sub_1D0BCB540(this + 144, *(this + 19));
  v2 = (this + 104);
  sub_1D0DDD154(&v2);
}

{
  *this = &unk_1F4CEDFA0;
  sub_1D0BCB540(this + 144, *(this + 19));
  v2 = (this + 104);
  sub_1D0DDD154(&v2);
}

{
  *this = &unk_1F4CEDFA0;
  sub_1D0BCB540(this + 144, *(this + 19));
  v2 = (this + 104);
  sub_1D0DDD154(&v2);

  JUMPOUT(0x1D387ECA0);
}

void raven::GnssPreprocessedMeasurementsEvent::~GnssPreprocessedMeasurementsEvent(raven::GnssPreprocessedMeasurementsEvent *this)
{
  *this = &unk_1F4CEF598;
  v1 = (this + 96);
  sub_1D0BBBD80(&v1);
}

{
  *this = &unk_1F4CEF598;
  v1 = (this + 96);
  sub_1D0BBBD80(&v1);
}

{
  *this = &unk_1F4CEF598;
  v2 = (this + 96);
  sub_1D0BBBD80(&v2);
  MEMORY[0x1D387ECA0](this, 0x10A1C40DFD4140ELL);
}

void raven::HorizontalDOTInIMUFrameEvent::~HorizontalDOTInIMUFrameEvent(raven::HorizontalDOTInIMUFrameEvent *this)
{
  *this = &unk_1F4CEE000;
  *(this + 27) = &unk_1F4CD5E28;
  *(this + 1) = &unk_1F4CD5E28;
}

{
  *this = &unk_1F4CEE000;
  *(this + 27) = &unk_1F4CD5E28;
  *(this + 1) = &unk_1F4CD5E28;
}

{
  *this = &unk_1F4CEE000;
  *(this + 27) = &unk_1F4CD5E28;
  *(this + 1) = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

void raven::KlobucharParametersEvent::~KlobucharParametersEvent(raven::KlobucharParametersEvent *this)
{
  *this = &unk_1F4CEE030;
}

{
  *this = &unk_1F4CEE030;
}

{
  *this = &unk_1F4CEE030;
  JUMPOUT(0x1D387ECA0);
}

void raven::MapsRouteHintEvent::~MapsRouteHintEvent(raven::MapsRouteHintEvent *this)
{
  *this = &unk_1F4CEE060;
  v2 = *(this + 26);
  if (v2)
  {
    *(this + 27) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_1F4CEE060;
  v2 = *(this + 26);
  if (v2)
  {
    *(this + 27) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_1F4CEE060;
  v2 = *(this + 26);
  if (v2)
  {
    *(this + 27) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1D387ECA0);
}

void raven::PositionChangeEvent::~PositionChangeEvent(raven::PositionChangeEvent *this)
{
  *this = &unk_1F4CEE090;
  *(this + 33) = &unk_1F4CD5E28;
  *(this + 25) = &unk_1F4CD5E28;
}

{
  *this = &unk_1F4CEE090;
  *(this + 33) = &unk_1F4CD5E28;
  *(this + 25) = &unk_1F4CD5E28;
}

{
  *this = &unk_1F4CEE090;
  *(this + 33) = &unk_1F4CD5E28;
  *(this + 25) = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

void raven::RateGyroMeasurement::~RateGyroMeasurement(raven::RateGyroMeasurement *this)
{
  *this = &unk_1F4CE36E0;
}

{
  *this = &unk_1F4CE36E0;
}

{
  *this = &unk_1F4CE36E0;
  JUMPOUT(0x1D387ECA0);
}

void raven::RavenGnssAssistanceFileEvent::~RavenGnssAssistanceFileEvent(raven::RavenGnssAssistanceFileEvent *this)
{
  *this = &unk_1F4CEE0C0;
  v2 = *(this + 15);
  if (v2)
  {
    *(this + 16) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_1F4CEE0C0;
  v2 = *(this + 15);
  if (v2)
  {
    *(this + 16) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_1F4CEE0C0;
  v2 = *(this + 15);
  if (v2)
  {
    *(this + 16) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1D387ECA0);
}

void raven::RayTracingTileEvent::~RayTracingTileEvent(void **this)
{
  *this = &unk_1F4CEE0F0;
  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }
}

{
  *this = &unk_1F4CEE0F0;
  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }
}

{
  *this = &unk_1F4CEE0F0;
  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  JUMPOUT(0x1D387ECA0);
}

void raven::VIOEstimateEvent::~VIOEstimateEvent(raven::VIOEstimateEvent *this)
{
  *this = &unk_1F4CEE120;
  *(this + 133) = &unk_1F4CD5E28;
  *(this + 119) = &unk_1F4CD5E28;
  *(this + 105) = &unk_1F4CD5E28;
  *(this + 97) = &unk_1F4CD5E28;
  *(this + 78) = &unk_1F4CD5E28;
  *(this + 64) = &unk_1F4CD5E28;
  *(this + 50) = &unk_1F4CD5E28;
  *(this + 42) = &unk_1F4CD5E28;
}

{
  raven::VIOEstimateEvent::~VIOEstimateEvent(this);

  JUMPOUT(0x1D387ECA0);
}

void raven::VLLocalizationEvent::~VLLocalizationEvent(raven::VLLocalizationEvent *this)
{
  *this = &unk_1F4CEE150;
  *(this + 120) = &unk_1F4CD5E28;
  *(this + 106) = &unk_1F4CD5E28;
  *(this + 92) = &unk_1F4CD5E28;
  *(this + 84) = &unk_1F4CD5E28;
  *(this + 65) = &unk_1F4CD5E28;
  *(this + 51) = &unk_1F4CD5E28;
  *(this + 37) = &unk_1F4CD5E28;
  *(this + 29) = &unk_1F4CD5E28;
}

{
  raven::VLLocalizationEvent::~VLLocalizationEvent(this);

  JUMPOUT(0x1D387ECA0);
}

void raven::RavenAccelerationDecompositionActiveObject::~RavenAccelerationDecompositionActiveObject(raven::RavenAccelerationDecompositionActiveObject *this)
{
  *this = &unk_1F4CEE180;
  sub_1D0D3546C(this + 2228);
  *(this + 2149) = &unk_1F4CE4530;
  *(this + 2209) = &unk_1F4CD5E28;
  *(this + 2188) = &unk_1F4CD5E28;
  *(this + 2179) = &unk_1F4CD5E28;
  *(this + 2166) = &unk_1F4CD5E28;
  *(this + 2157) = &unk_1F4CD5E28;
  v2 = this + 17040;
  v3 = 16800;
  do
  {
    *(this + v3 + 240) = &unk_1F4CE36E0;
    v2 -= 48;
    v3 -= 48;
  }

  while (v3);
  *(this + 30) = &unk_1F4CE3698;

  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(this);
}

{
  raven::RavenAccelerationDecompositionActiveObject::~RavenAccelerationDecompositionActiveObject(this);

  JUMPOUT(0x1D387ECA0);
}

void raven::RavenConvergenceEstimatorActiveObject::~RavenConvergenceEstimatorActiveObject(raven::RavenConvergenceEstimatorActiveObject *this)
{
  *this = &unk_1F4CEE1E0;
  v2 = this + 2968;
  *(this + 371) = &unk_1F4CEC098;
  sub_1D0DC5674(this + 1441);
  *(this + 1432) = &unk_1F4CE3930;
  sub_1D0D83110(this + 8896);
  *(this + 729) = &unk_1F4CEAAF8;
  *(this + 1030) = &unk_1F4CD5E28;
  *(this + 1017) = &unk_1F4CD5E28;
  *(this + 948) = &unk_1F4CD5E28;
  sub_1D0BC27EC(this + 5832);
  sub_1D0D4FA90(v2);
  *this = &unk_1F4CEABA0;
  if (*(this + 287) < 0)
  {
    operator delete(*(this + 33));
  }

  if (*(this + 263) < 0)
  {
    operator delete(*(this + 30));
  }

  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(this);
}

{
  raven::RavenConvergenceEstimatorActiveObject::~RavenConvergenceEstimatorActiveObject(this);

  JUMPOUT(0x1D387ECA0);
}

void raven::RavenDeltaAltitudeActiveObject::~RavenDeltaAltitudeActiveObject(raven::RavenDeltaAltitudeActiveObject *this)
{
  *this = &unk_1F4CEE258;
  sub_1D0E22B94(this + 280);

  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(this);
}

{
  *this = &unk_1F4CEE258;
  sub_1D0E22B94(this + 280);

  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(this);
}

{
  *this = &unk_1F4CEE258;
  sub_1D0E22B94(this + 280);
  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(this);

  JUMPOUT(0x1D387ECA0);
}

void raven::RavenGnssPreprocessorActiveObject::~RavenGnssPreprocessorActiveObject(raven::RavenGnssPreprocessorActiveObject *this)
{
  *this = &unk_1F4CEE2B8;
  sub_1D0E2290C(this + 232);

  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(this);
}

{
  *this = &unk_1F4CEE2B8;
  sub_1D0E2290C(this + 232);

  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(this);
}

{
  *this = &unk_1F4CEE2B8;
  sub_1D0E2290C(this + 232);
  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(this);

  JUMPOUT(0x1D387ECA0);
}

void raven::RavenIMUPreprocessorActiveObject::~RavenIMUPreprocessorActiveObject(raven::RavenIMUPreprocessorActiveObject *this)
{
  *this = &unk_1F4CEE318;
  sub_1D0D3546C(this + 54);
  sub_1D0C56D94(this + 48);
  sub_1D0D3546C(this + 39);
  sub_1D0C56D94(this + 33);

  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(this);
}

{
  raven::RavenIMUPreprocessorActiveObject::~RavenIMUPreprocessorActiveObject(this);

  JUMPOUT(0x1D387ECA0);
}

void raven::RavenIntegrityEstimatorActiveObject::~RavenIntegrityEstimatorActiveObject(raven::RavenIntegrityEstimatorActiveObject *this)
{
  *this = &unk_1F4CEE378;
  sub_1D0DC5F94(this + 240);

  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(this);
}

{
  *this = &unk_1F4CEE378;
  sub_1D0DC5F94(this + 240);

  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(this);
}

{
  *this = &unk_1F4CEE378;
  sub_1D0DC5F94(this + 240);
  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(this);

  JUMPOUT(0x1D387ECA0);
}

void raven::RavenMountStateEstimatorActiveObject::~RavenMountStateEstimatorActiveObject(raven::RavenMountStateEstimatorActiveObject *this)
{
  *this = &unk_1F4CEE3D8;
  sub_1D0DC6380(this + 30);

  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(this);
}

{
  *this = &unk_1F4CEE3D8;
  sub_1D0DC6380(this + 30);

  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(this);
}

{
  *this = &unk_1F4CEE3D8;
  sub_1D0DC6380(this + 30);
  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(this);

  JUMPOUT(0x1D387ECA0);
}

void raven::RavenPassThroughEstimatorActiveObject::~RavenPassThroughEstimatorActiveObject(raven::RavenPassThroughEstimatorActiveObject *this)
{
  *this = &unk_1F4CEE438;
  *(this + 36) = &unk_1F4CEB1D8;
  sub_1D0D4FA90(this + 288);
  *this = &unk_1F4CEAC18;
  if (*(this + 287) < 0)
  {
    operator delete(*(this + 33));
  }

  if (*(this + 263) < 0)
  {
    operator delete(*(this + 30));
  }

  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(this);
}

{
  raven::RavenPassThroughEstimatorActiveObject::~RavenPassThroughEstimatorActiveObject(this);

  JUMPOUT(0x1D387ECA0);
}

void raven::RavenPeriodicityTrackerActiveObject::~RavenPeriodicityTrackerActiveObject(raven::RavenPeriodicityTrackerActiveObject *this)
{
  *this = &unk_1F4CEF468;
  sub_1D0C56E40(this + 48);
  sub_1D0C56D94(this + 42);

  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(this);
}

{
  raven::RavenPeriodicityTrackerActiveObject::~RavenPeriodicityTrackerActiveObject(this);

  JUMPOUT(0x1D387ECA0);
}

void raven::RavenPNTEstimatorActiveObject::~RavenPNTEstimatorActiveObject(void **this)
{
  *this = &unk_1F4CEE4B0;
  sub_1D0D84A3C((this + 36));
  *this = &unk_1F4CEAC90;
  if (*(this + 287) < 0)
  {
    operator delete(this[33]);
  }

  if (*(this + 263) < 0)
  {
    operator delete(this[30]);
  }

  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(this);
}

{
  raven::RavenPNTEstimatorActiveObject::~RavenPNTEstimatorActiveObject(this);

  JUMPOUT(0x1D387ECA0);
}

void raven::RavenSolutionPostprocessorActiveObject::~RavenSolutionPostprocessorActiveObject(raven::RavenSolutionPostprocessorActiveObject *this)
{
  *this = &unk_1F4CEE528;
  if (*(this + 1600) == 1)
  {
    *(this + 1600) = 0;
  }

  sub_1D0D4D068(this + 30);

  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(this);
}

{
  raven::RavenSolutionPostprocessorActiveObject::~RavenSolutionPostprocessorActiveObject(this);

  JUMPOUT(0x1D387ECA0);
}

void raven::RavenSolutionSelectorActiveObject::~RavenSolutionSelectorActiveObject(raven::RavenSolutionSelectorActiveObject *this)
{
  *this = &unk_1F4CEE588;
  if (*(this + 736) == 1)
  {
    *(this + 736) = 0;
  }

  sub_1D0BCB594(this + 672);
  if (*(this + 432) == 1)
  {
    *(this + 432) = 0;
  }

  sub_1D0BCB594(this + 360);
  sub_1D0BCB594(this + 320);
  sub_1D0BCB594(this + 280);
  sub_1D0BCB594(this + 240);

  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(this);
}

{
  raven::RavenSolutionSelectorActiveObject::~RavenSolutionSelectorActiveObject(this);

  JUMPOUT(0x1D387ECA0);
}

void raven::RavenTimerActiveObject::~RavenTimerActiveObject(raven::RavenTimerActiveObject *this)
{
  *this = &unk_1F4CEE5E8;
  if (*(this + 400) == 1)
  {
    *(this + 400) = 0;
  }

  if (*(this + 224) == 1)
  {
    *(this + 224) = 0;
  }

  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(this);
}

{
  *this = &unk_1F4CEE5E8;
  if (*(this + 400) == 1)
  {
    *(this + 400) = 0;
  }

  if (*(this + 224) == 1)
  {
    *(this + 224) = 0;
  }

  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(this);
}

{
  *this = &unk_1F4CEE5E8;
  if (*(this + 400) == 1)
  {
    *(this + 400) = 0;
  }

  if (*(this + 224) == 1)
  {
    *(this + 224) = 0;
  }

  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(this);

  JUMPOUT(0x1D387ECA0);
}

void raven::RavenUserSpeedActiveObject::~RavenUserSpeedActiveObject(raven::RavenUserSpeedActiveObject *this)
{
  *this = &unk_1F4CEE648;
  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(this);
}

{
  *this = &unk_1F4CEE648;
  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(this);
}

{
  *this = &unk_1F4CEE648;
  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(this);

  JUMPOUT(0x1D387ECA0);
}

void raven::RavenRayTracingActiveObject::~RavenRayTracingActiveObject(raven::RavenRayTracingActiveObject *this)
{
  *this = &unk_1F4CEE6A8;
  sub_1D0E22AC0(this + 240);

  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(this);
}

{
  *this = &unk_1F4CEE6A8;
  sub_1D0E22AC0(this + 240);

  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(this);
}

{
  *this = &unk_1F4CEE6A8;
  sub_1D0E22AC0(this + 240);
  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0E21724(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v24[0] = (*(*a3 + 16))(a3);
  v24[1] = v8;
  v23[0] = (*(*a4 + 16))(a4);
  v23[1] = v9;
  v12 = CNTimeSpan::operator-(a2, v24, v10, v11);
  *v14.i64 = v13;
  *v15.i64 = v12;
  v16 = v13 + v12;
  v17 = CNTimeSpan::operator-(v23, v24, v14, v15);
  v19 = v18 + v17;
  v20 = fabs(v19);
  v21 = v16 / v19;
  if (v20 < 2.22044605e-16)
  {
    v21 = 0.0;
  }

  *(a1 + 8) = *a2;
  *(a1 + 24) = vmlaq_n_f64(*(a3 + 24), vsubq_f64(*(a4 + 24), *(a3 + 24)), v21);
  *(a1 + 40) = *(a3 + 40) + (*(a4 + 40) - *(a3 + 40)) * v21;
  return 0;
}

void sub_1D0E21850(cnframework::ActiveObjectBase *this)
{
  if (*(this + 224) == 1)
  {
    *(this + 62) = 0;
    *(this + 34) = 0;
    *(this + 35) = 0;
    *(this + 17089) = 0;
    v2 = *(this + 2229);
    v3 = *(this + 2230);
    if (v3 == v2)
    {
      v6 = (this + 17864);
      v3 = *(this + 2229);
    }

    else
    {
      v4 = *(this + 2232);
      v5 = &v2[v4 / 0x1A];
      v6 = (this + 17864);
      v7 = v2[(*(this + 2233) + v4) / 0x1A] + 152 * ((*(this + 2233) + v4) % 0x1A);
      if (*v5 + 152 * (v4 % 0x1A) != v7)
      {
        v8 = (*v5 + 152 * (v4 % 0x1A));
        do
        {
          v9 = *v8;
          v8 += 19;
          (*v9)();
          if (v8 - *v5 == 3952)
          {
            v10 = v5[1];
            ++v5;
            v8 = v10;
          }
        }

        while (v8 != v7);
        v3 = *(this + 2230);
        v2 = *(this + 2229);
      }
    }

    *v6 = 0;
    v11 = v3 - v2;
    if (v11 >= 3)
    {
      do
      {
        operator delete(*v2);
        v2 = (*(this + 2229) + 8);
        *(this + 2229) = v2;
        v11 = (*(this + 2230) - v2) >> 3;
      }

      while (v11 > 2);
    }

    if (v11 == 1)
    {
      v12 = 13;
    }

    else
    {
      if (v11 != 2)
      {
        goto LABEL_17;
      }

      v12 = 26;
    }

    *(this + 2232) = v12;
  }

LABEL_17:
  *(this + 128) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0x7FF8000000000000;
  *(this + 19) = 0;
  *(this + 105) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0x7FF8000000000000;

  cnframework::ActiveObjectBase::ResetEventQueue(this);
}

void sub_1D0E21A04(cnframework::ActiveObjectBase *this)
{
  *(this + 128) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0x7FF8000000000000;
  *(this + 19) = 0;
  *(this + 105) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0x7FF8000000000000;
  cnframework::ActiveObjectBase::ResetEventQueue(this);
}

void sub_1D0E21A4C(const void **a1)
{
  if ((*(*a1 + 11))(a1))
  {
    v5 = 12;
    v4 = 2;
    v2 = cnprint::CNLogFormatter::FormatGeneral(a1 + 30, "Resetting");
    if (*(a1 + 263) >= 0)
    {
      v3 = v2;
    }

    else
    {
      v3 = a1[30];
    }

    cnprint::CNPrinter::Print(&v5, &v4, "%s", v3);
    raven::RavenConvergenceEstimator::Reset((a1 + 371));
  }

  *(a1 + 288) = 0;
  a1[37] = 0;
  a1[38] = 0xFFF0000000000000;
  sub_1D0BAD0C8(&v5);
  memcpy(a1 + 40, v6, 0xA51uLL);
  *(a1 + 128) = 0;
  a1[17] = 0;
  a1[18] = 0x7FF8000000000000;
  a1[19] = 0;
  *(a1 + 105) = 0;
  a1[14] = 0;
  a1[15] = 0x7FF8000000000000;
  cnframework::ActiveObjectBase::ResetEventQueue(a1);
}

std::string *sub_1D0E21B3C(uint64_t a1, const std::string *a2)
{
  std::string::operator=((a1 + 264), a2);
  std::string::operator=((a1 + 5704), a2);

  return std::string::operator=((a1 + 7560), a2);
}

void sub_1D0E21BA4(int64x2_t *this)
{
  this[15] = 0uLL;
  this[16] = vdupq_n_s64(0x7FF8000000000000uLL);
  this[17].i8[0] = 0;
  v2 = this[18].i64[0];
  v3 = this[18].i64[1];
  if (v3 == v2)
  {
    v6 = this + 20;
    v3 = this[18].i64[0];
  }

  else
  {
    v4 = this[19].u64[1];
    v5 = &v2[v4 / 0x1C];
    v6 = this + 20;
    v7 = v2[(this[20].i64[0] + v4) / 0x1C] + 144 * ((this[20].i64[0] + v4) % 0x1C);
    if (*v5 + 144 * (v4 % 0x1C) != v7)
    {
      v8 = (*v5 + 144 * (v4 % 0x1C));
      do
      {
        v9 = *v8;
        v8 += 18;
        (*v9)();
        if (v8 - *v5 == 4032)
        {
          v10 = v5[1];
          ++v5;
          v8 = v10;
        }
      }

      while (v8 != v7);
      v2 = this[18].i64[0];
      v3 = this[18].i64[1];
    }
  }

  v6->i64[0] = 0;
  v11 = (v3 - v2) >> 3;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v2);
      v12 = this[18].i64[1];
      v2 = (this[18].i64[0] + 8);
      this[18].i64[0] = v2;
      v11 = (v12 - v2) >> 3;
    }

    while (v11 > 2);
  }

  if (v11 == 1)
  {
    v13 = 14;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_16;
    }

    v13 = 28;
  }

  this[19].i64[1] = v13;
LABEL_16:
  this[8].i8[0] = 0;
  this[8].i64[1] = 0;
  this[9].i64[0] = 0x7FF8000000000000;
  this[9].i64[1] = 0;
  this[6].i8[9] = 0;
  this[7].i64[0] = 0;
  this[7].i64[1] = 0x7FF8000000000000;

  cnframework::ActiveObjectBase::ResetEventQueue(this);
}

void sub_1D0E21D40(uint64_t a1)
{
  raven::GnssMeasurementPreprocessor::Reset((a1 + 232));
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0x7FF8000000000000;
  *(a1 + 152) = 0;
  *(a1 + 105) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0x7FF8000000000000;

  cnframework::ActiveObjectBase::ResetEventQueue(a1);
}

void sub_1D0E21DDC(uint64_t a1)
{
  raven::RavenIntegrityEstimator::Reset(a1 + 240);
  if (*(a1 + 2408) == 1)
  {
    *(a1 + 2408) = 0;
  }

  if (*(a1 + 2848) == 1)
  {
    *(a1 + 2848) = 0;
  }

  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0x7FF8000000000000;
  *(a1 + 152) = 0;
  *(a1 + 105) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0x7FF8000000000000;

  cnframework::ActiveObjectBase::ResetEventQueue(a1);
}

void sub_1D0E21F40(cnframework::ActiveObjectBase *this)
{
  if (*(this + 224) == 1)
  {
    v2 = *(this + 31);
    v3 = *(this + 32);
    if (v3 == v2)
    {
      v6 = (this + 280);
      v3 = *(this + 31);
    }

    else
    {
      v4 = *(this + 34);
      v5 = &v2[v4 / 0x14];
      v6 = (this + 280);
      v7 = v2[(*(this + 35) + v4) / 0x14] + 200 * ((*(this + 35) + v4) % 0x14);
      if (*v5 + 200 * (v4 % 0x14) != v7)
      {
        v8 = (*v5 + 200 * (v4 % 0x14));
        do
        {
          v9 = *v8;
          v8 += 25;
          (*v9)();
          if (v8 - *v5 == 4000)
          {
            v10 = v5[1];
            ++v5;
            v8 = v10;
          }
        }

        while (v8 != v7);
        v2 = *(this + 31);
        v3 = *(this + 32);
      }
    }

    *v6 = 0;
    v11 = v3 - v2;
    if (v11 >= 3)
    {
      do
      {
        operator delete(*v2);
        v12 = *(this + 32);
        v2 = (*(this + 31) + 8);
        *(this + 31) = v2;
        v11 = (v12 - v2) >> 3;
      }

      while (v11 > 2);
    }

    if (v11 == 1)
    {
      v13 = 10;
    }

    else
    {
      if (v11 != 2)
      {
LABEL_17:
        *(this + 21) = 0u;
        *(this + 22) = 0u;
        *(this + 19) = 0u;
        *(this + 20) = 0u;
        *(this + 18) = 0u;
        *(this + 46) = 0;
        *(this + 47) = 0x7FF8000000000000;
        *(this + 48) = 0;
        *(this + 49) = 0x7FF8000000000000;
        v14 = vdupq_n_s64(0x7FF8000000000000uLL);
        *(this + 25) = v14;
        *(this + 26) = v14;
        *(this + 27) = v14;
        *(this + 28) = v14;
        *(this + 58) = 0;
        *(this + 59) = 0x7FF8000000000000;
        *(this + 30) = v14;
        *(this + 31) = v14;
        *(this + 32) = v14;
        *(this + 33) = v14;
        *(this + 34) = v14;
        *(this + 35) = v14;
        *(this + 72) = 0x7FF8000000000000;
        *(this + 73) = 0;
        *(this + 37) = v14;
        *(this + 38) = v14;
        *(this + 39) = v14;
        *(this + 40) = v14;
        *(this + 82) = 0x7FF8000000000000;
        *(this + 83) = 0;
        *(this + 42) = v14;
        *(this + 43) = v14;
        *(this + 44) = v14;
        *(this + 45) = v14;
        *(this + 92) = 0x7FF8000000000000;
        *(this + 93) = 0;
        *(this + 47) = v14;
        *(this + 48) = v14;
        *(this + 49) = v14;
        *(this + 50) = v14;
        *(this + 51) = v14;
        *(this + 52) = v14;
        *(this + 53) = v14;
        *(this + 108) = 0;
        *(this + 109) = 0x7FF8000000000000;
        *(this + 55) = v14;
        *(this + 56) = v14;
        *(this + 57) = v14;
        *(this + 58) = v14;
        *(this + 118) = 0;
        *(this + 119) = 0x7FF8000000000000;
        *(this + 60) = v14;
        *(this + 61) = v14;
        *(this + 62) = v14;
        *(this + 63) = v14;
        *(this + 128) = 0;
        *(this + 129) = 0x7FF8000000000000;
        *(this + 65) = v14;
        *(this + 66) = v14;
        *(this + 67) = v14;
        *(this + 68) = v14;
        *(this + 138) = 0;
        *(this + 139) = 0x7FF8000000000000;
        *(this + 70) = v14;
        *(this + 71) = v14;
        *(this + 144) = 0;
        *(this + 145) = 0xFFF0000000000000;
        *(&v15 + 1) = 0x7FF8000000000000;
        *&v16 = 0;
        *&v15 = 0;
        *(&v16 + 1) = 0x3FF0000000000000;
        *(this + 1208) = 0uLL;
        *(this + 1224) = 0uLL;
        *(this + 1176) = 0uLL;
        *(this + 1192) = 0uLL;
        *(this + 163) = 0;
        *(this + 1272) = v16;
        *(this + 1288) = 0uLL;
        *(this + 1240) = 0uLL;
        *(this + 1256) = v15;
        goto LABEL_18;
      }

      v13 = 20;
    }

    *(this + 34) = v13;
    goto LABEL_17;
  }

LABEL_18:
  *(this + 128) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0x7FF8000000000000;
  *(this + 19) = 0;
  *(this + 105) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0x7FF8000000000000;
  cnframework::ActiveObjectBase::ResetEventQueue(this);
}

void sub_1D0E2221C(const void **a1)
{
  if ((*(*a1 + 11))(a1))
  {
    v5 = 12;
    v4 = 2;
    v2 = cnprint::CNLogFormatter::FormatGeneral(a1 + 30, "Resetting");
    if (*(a1 + 263) >= 0)
    {
      v3 = v2;
    }

    else
    {
      v3 = a1[30];
    }

    cnprint::CNPrinter::Print(&v5, &v4, "%s", v3);
    raven::RavenPassThroughEstimator::Reset((a1 + 36));
  }

  *(a1 + 128) = 0;
  a1[17] = 0;
  a1[18] = 0x7FF8000000000000;
  a1[19] = 0;
  *(a1 + 105) = 0;
  a1[14] = 0;
  a1[15] = 0x7FF8000000000000;

  cnframework::ActiveObjectBase::ResetEventQueue(a1);
}

std::string *sub_1D0E222E8(std::string *a1, const std::string *a2)
{
  std::string::operator=(a1 + 11, a2);

  return std::string::operator=(a1 + 126, a2);
}

void sub_1D0E22358(uint64_t a1)
{
  if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
  {
    v6 = 12;
    v5 = 1;
    (*(*a1 + 16))(__p, a1);
    if (v4 >= 0)
    {
      v2 = __p;
    }

    else
    {
      v2 = __p[0];
    }

    cnprint::CNPrinter::Print(&v6, &v5, "Resetting %s", v2);
    if (v4 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0x7FF8000000000000;
  *(a1 + 152) = 0;
  *(a1 + 105) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0x7FF8000000000000;
  cnframework::ActiveObjectBase::ResetEventQueue(a1);
}

void sub_1D0E22424(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0E22444(uint64_t a1)
{
  if (*(a1 + 240) == 1)
  {
    LODWORD(v1) = vcvtpd_u64_f64(*(a1 + 256) / *(a1 + 248));
    if (v1 <= 1)
    {
      v1 = 1;
    }

    else
    {
      v1 = v1;
    }

    if (*(a1 + 376) >= v1 && *(a1 + 313) == 1 && *(a1 + 312) == 1)
    {
      sub_1D0DEBC48(a1);
    }
  }
}

void sub_1D0E22528(const void **a1)
{
  if ((*(*a1 + 11))(a1))
  {
    v5 = 12;
    v4 = 2;
    v2 = cnprint::CNLogFormatter::FormatGeneral(a1 + 30, "Resetting");
    if (*(a1 + 263) >= 0)
    {
      v3 = v2;
    }

    else
    {
      v3 = a1[30];
    }

    cnprint::CNPrinter::Print(&v5, &v4, "%s", v3);
    raven::RavenPNTEstimator::Reset((a1 + 36));
  }

  *(a1 + 128) = 0;
  a1[17] = 0;
  a1[18] = 0x7FF8000000000000;
  a1[19] = 0;
  *(a1 + 105) = 0;
  a1[14] = 0;
  a1[15] = 0x7FF8000000000000;

  cnframework::ActiveObjectBase::ResetEventQueue(a1);
}

std::string *sub_1D0E225F4(uint64_t a1, const std::string *a2)
{
  std::string::operator=((a1 + 264), a2);
  std::string::operator=((a1 + 3024), a2);

  return std::string::operator=((a1 + 16840), a2);
}

void sub_1D0E22658(uint64_t a1)
{
  v2 = *(a1 + 112);
  raven::RavenSolutionPostprocessor::Reset(a1 + 224, &v2);
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0x7FF8000000000000;
  *(a1 + 152) = 0;
  *(a1 + 105) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0x7FF8000000000000;

  cnframework::ActiveObjectBase::ResetEventQueue(a1);
}

void sub_1D0E226D0(uint64_t a1)
{
  raven::RavenSolutionSelector::Reset((a1 + 224));
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0x7FF8000000000000;
  *(a1 + 152) = 0;
  *(a1 + 105) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0x7FF8000000000000;

  cnframework::ActiveObjectBase::ResetEventQueue(a1);
}

void sub_1D0E22734(cnframework::ActiveObjectBase *this)
{
  if (*(this + 224) == 1)
  {
    *(this + 224) = 0;
  }

  *(this + 98) = 0;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  if (*(this + 400) == 1)
  {
    *(this + 400) = 0;
  }

  *(this + 128) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0x7FF8000000000000;
  *(this + 19) = 0;
  *(this + 105) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0x7FF8000000000000;
  cnframework::ActiveObjectBase::ResetEventQueue(this);
}

uint64_t sub_1D0E2290C(uint64_t a1)
{
  if (*(a1 + 2600) == 1)
  {
    sub_1D0BCB594(a1 + 2560);
  }

  v2 = *(a1 + 2544);
  *(a1 + 2544) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(a1 + 2344) = &unk_1F4CD58A8;
  v3 = *(a1 + 1320);
  *(a1 + 1320) = 0;
  if (v3)
  {
    sub_1D0BCB594(v3 + 24);
    sub_1D0BCB540(v3, *(v3 + 8));
    MEMORY[0x1D387ECA0](v3, 0x10E0C40B21B6DE5);
  }

  v4 = *(a1 + 1312);
  *(a1 + 1312) = 0;
  if (v4)
  {
    v5 = sub_1D0BCB594(v4);
    MEMORY[0x1D387ECA0](v5, 0x10E0C401B4558CBLL);
  }

  sub_1D0BCB540(a1 + 1288, *(a1 + 1296));
  sub_1D0BCB540(a1 + 1032, *(a1 + 1040));
  sub_1D0BCB540(a1 + 1008, *(a1 + 1016));
  sub_1D0DC5F04(a1 + 984, *(a1 + 992));
  if (*(a1 + 520) == 1)
  {
    *(a1 + 320) = &unk_1F4CEE030;
  }

  *(a1 + 24) = &unk_1F4CEF598;
  v7 = (a1 + 120);
  sub_1D0BBBD80(&v7);
  return a1;
}

void sub_1D0E22A88(raven::RavenPeriodicityTrackerActiveObject *a1)
{
  raven::RavenPeriodicityTrackerActiveObject::~RavenPeriodicityTrackerActiveObject(a1);

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0E22AC0(uint64_t a1)
{
  sub_1D0BCB540(a1 + 3440, *(a1 + 3448));
  v5 = (a1 + 3408);
  sub_1D0D46C24(&v5);
  sub_1D0BCB540(a1 + 3352, *(a1 + 3360));
  v5 = (a1 + 3328);
  sub_1D0D46C78(&v5);
  v5 = (a1 + 3304);
  sub_1D0D46CFC(&v5);
  sub_1D0BCB540(a1 + 3280, *(a1 + 3288));
  v5 = (a1 + 3256);
  sub_1D0E09954(&v5);
  sub_1D0E099E0(a1 + 40);
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    sub_1D0B7CAB8(v3);
  }

  return a1;
}

uint64_t sub_1D0E22B94(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = (a1 + 40);
    v11 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v3[v5 / 0x1C];
    v7 = v3[(*(a1 + 40) + v5) / 0x1C] + 144 * ((*(a1 + 40) + v5) % 0x1C);
    if (*v6 + 144 * (v5 % 0x1C) != v7)
    {
      v8 = (*v6 + 144 * (v5 % 0x1C));
      do
      {
        v9 = *v8;
        v8 += 18;
        (*v9)();
        if (v8 - *v6 == 4032)
        {
          v10 = v6[1];
          ++v6;
          v8 = v10;
        }
      }

      while (v8 != v7);
      v3 = *(a1 + 8);
      v2 = *(a1 + 16);
    }

    v11 = v2;
  }

  *v4 = 0;
  v12 = v11 - v3;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v3);
      v2 = *(a1 + 16);
      v3 = (*(a1 + 8) + 8);
      *(a1 + 8) = v3;
      v12 = v2 - v3;
    }

    while (v12 > 2);
    v11 = v2;
  }

  if (v12 == 1)
  {
    v13 = 14;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_18;
    }

    v13 = 28;
  }

  *(a1 + 32) = v13;
LABEL_18:
  if (v3 != v11)
  {
    do
    {
      v14 = *v3++;
      operator delete(v14);
    }

    while (v3 != v11);
    v11 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  if (v2 != v11)
  {
    *(a1 + 16) = v2 + ((v11 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t raven::RavenPressurePrefilterActiveObject::Configure(_BYTE *a1, uint64_t *a2, int8x16_t a3, int8x16_t a4)
{
  if (a1[224] == 1)
  {
    v44 = 12;
    v43 = 2;
    (*(*a1 + 16))(__p, a1, a3, a4);
    v6 = v42 >= 0 ? __p : __p[0];
    cnprint::CNPrinter::Print(&v44, &v43, "WARNING: %s configured more than once", v6);
    if (v42 < 0)
    {
      operator delete(__p[0]);
    }
  }

  a1[224] = 0;
  v7 = *a2;
  if (!*a2 || (*(v7 + 33) & 1) == 0)
  {
    v44 = 12;
    v43 = 4;
    (*(*a1 + 16))(__p, a1);
    if (v42 >= 0)
    {
      v19 = __p;
    }

    else
    {
      v19 = __p[0];
    }

    cnprint::CNPrinter::Print(&v44, &v43, "%s could not be configured - invalid RavenParameters", v19);
    goto LABEL_32;
  }

  v8 = *(v7 + 1320);
  if ((v8 <= -1 || ((v8 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (v8 - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    v44 = 12;
    v43 = 4;
    (*(*a1 + 16))(__p, a1);
    if (v42 >= 0)
    {
      v21 = __p;
    }

    else
    {
      v21 = __p[0];
    }

    cnprint::CNPrinter::Print(&v44, &v43, "%s could not be configured - invalid kernal halfwidth sigma,%.3lf", v21, *(v7 + 1320));
    goto LABEL_32;
  }

  v11 = *(v7 + 1328);
  if ((v11 <= -1 || ((v11 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (v11 - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    v44 = 12;
    v43 = 4;
    (*(*a1 + 16))(__p, a1);
    if (v42 >= 0)
    {
      v22 = __p;
    }

    else
    {
      v22 = __p[0];
    }

    cnprint::CNPrinter::Print(&v44, &v43, "%s could not be configured - invalid maximum pressure age,%.3lf", v22, *(v7 + 1328));
    goto LABEL_32;
  }

  *(a1 + 30) = 0;
  *(a1 + 29) = v7;
  *(a1 + 31) = 0;
  v14 = *(a1 + 33);
  v15 = *(a1 + 34);
  *(a1 + 37) = 0;
  v16 = (v15 - v14) >> 3;
  if (v16 >= 3)
  {
    do
    {
      operator delete(*v14);
      v17 = *(a1 + 34);
      v14 = (*(a1 + 33) + 8);
      *(a1 + 33) = v14;
      v16 = (v17 - v14) >> 3;
    }

    while (v16 > 2);
  }

  if (v16 == 1)
  {
    v18 = 256;
  }

  else
  {
    if (v16 != 2)
    {
      goto LABEL_45;
    }

    v18 = 512;
  }

  *(a1 + 36) = v18;
LABEL_45:
  v23 = *(a1 + 29);
  v24 = *(v23 + 1312);
  if ((v24 & 0x80000000) != 0)
  {
    v28 = 0.0;
  }

  else
  {
    v25 = v24 / *(v23 + 1320) * (v24 / *(v23 + 1320));
    v26 = -v24;
    v27 = (2 * v24) | 1;
    v28 = 0.0;
    do
    {
      __p[0] = COERCE_VOID_(exp(v26 * -0.5 * v26 / v25));
      v28 = v28 + *__p;
      *a3.i64 = sub_1D0B90B68(a1 + 32, __p);
      ++v26;
      --v27;
    }

    while (v27);
  }

  v29 = *(a1 + 37);
  if (v29 != ((2 * v24) | 1))
  {
    v44 = 12;
    v43 = 4;
    (*(*a1 + 16))(__p, a1, a3);
    if (v42 >= 0)
    {
      v31 = __p;
    }

    else
    {
      v31 = __p[0];
    }

    cnprint::CNPrinter::Print(&v44, &v43, "%s could not be configured - incorrect barometer kernel size,%zu", v31, *(a1 + 37));
    goto LABEL_32;
  }

  a4.i64[0] = 0x3CB0000000000000;
  if (fabs(v28) < 2.22044605e-16)
  {
    v44 = 12;
    v43 = 4;
    (*(*a1 + 16))(__p, a1);
    if (v42 >= 0)
    {
      v30 = __p;
    }

    else
    {
      v30 = __p[0];
    }

    cnprint::CNPrinter::Print(&v44, &v43, "%s could not be configured - kernel norm is zero", v30);
LABEL_32:
    if (v42 < 0)
    {
      operator delete(__p[0]);
    }

    return 0xFFFFFFFFLL;
  }

  v32 = *(a1 + 33);
  if (*(a1 + 34) != v32)
  {
    v33 = *(a1 + 36);
    v34 = (v32 + 8 * (v33 >> 9));
    v35 = *v34;
    v36 = &(*v34)[v33 & 0x1FF];
    v37 = *(v32 + (((v33 + v29) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v33 + v29) & 0x1FF);
    while (v36 != v37)
    {
      *v36 = *v36 / v28;
      if (++v36 - v35 == 4096)
      {
        v38 = v34[1];
        ++v34;
        v35 = v38;
        v36 = v38;
      }
    }
  }

  a3.i64[0] = *(*(a1 + 29) + 1328);
  __p[0] = 0;
  __p[1] = 0;
  CNTimeSpan::SetTimeSpan(__p, 0, a3, a4);
  *(a1 + 15) = *__p;
  cnframework::ActiveObjectBase::SetEventQueueDelay(a1, 0.0);
  a1[224] = 1;
  v39 = (*(*a1 + 40))(a1);
  if (cnprint::CNPrinter::GetLogLevel(v39) < 2)
  {
    v44 = 12;
    v43 = 1;
    (*(*a1 + 16))(__p, a1);
    v40 = v42 >= 0 ? __p : __p[0];
    cnprint::CNPrinter::Print(&v44, &v43, "%s configured successfully", v40);
    if (v42 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return 0;
}

void sub_1D0E232FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void raven::RavenPressurePrefilterActiveObject::Reset(raven::RavenPressurePrefilterActiveObject *this)
{
  v2 = *(this + 39);
  v3 = *(this + 40);
  if (v3 == v2)
  {
    v6 = (this + 344);
    v3 = *(this + 39);
  }

  else
  {
    v4 = *(this + 42);
    v5 = &v2[v4 / 0x1E];
    v6 = (this + 344);
    v7 = v2[(*(this + 43) + v4) / 0x1E] + 136 * ((*(this + 43) + v4) % 0x1E);
    if (*v5 + 136 * (v4 % 0x1E) != v7)
    {
      v8 = (*v5 + 136 * (v4 % 0x1E));
      do
      {
        v9 = *v8;
        v8 += 17;
        (*v9)();
        if (v8 - *v5 == 4080)
        {
          v10 = v5[1];
          ++v5;
          v8 = v10;
        }
      }

      while (v8 != v7);
      v2 = *(this + 39);
      v3 = *(this + 40);
    }
  }

  *v6 = 0;
  v11 = v3 - v2;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v2);
      v12 = *(this + 40);
      v2 = (*(this + 39) + 8);
      *(this + 39) = v2;
      v11 = (v12 - v2) >> 3;
    }

    while (v11 > 2);
  }

  if (v11 == 1)
  {
    v13 = 15;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_16;
    }

    v13 = 30;
  }

  *(this + 42) = v13;
LABEL_16:
  *(this + 128) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0x7FF8000000000000;
  *(this + 19) = 0;
  *(this + 105) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0x7FF8000000000000;

  cnframework::ActiveObjectBase::ResetEventQueue(this);
}

void sub_1D0E23498(raven::RavenCoarseOdometerActiveObject *a1)
{
  *a1 = &unk_1F4CEF808;
  sub_1D0DC6DF4(a1 + 38);
  sub_1D0C56D94(a1 + 32);

  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(a1);
}

void sub_1D0E234F8(raven::RavenCoarseOdometerActiveObject *a1)
{
  *a1 = &unk_1F4CEF808;
  sub_1D0DC6DF4(a1 + 38);
  sub_1D0C56D94(a1 + 32);
  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(a1);

  JUMPOUT(0x1D387ECA0);
}

uint64_t raven::TunnelEndPointAssistanceChecker::Configure(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = a3;
  *(a1 + 8) = 1;
  return 0;
}

uint64_t raven::TunnelEndPointAssistanceChecker::HandleEvent(raven::TunnelEndPointAssistanceChecker *this, const raven::TunnelEndPointAssistanceEvent *a2, raven::TunnelEndPointAssistanceEvent *a3)
{
  if (*(this + 8))
  {
    v4 = *(a2 + 8);
    v5 = *(a2 + 24);
    *(a3 + 40) = *(a2 + 40);
    *(a3 + 24) = v5;
    *(a3 + 8) = v4;
    v6 = *(a2 + 56);
    v7 = *(a2 + 72);
    v8 = *(a2 + 88);
    *(a3 + 104) = *(a2 + 104);
    *(a3 + 88) = v8;
    *(a3 + 72) = v7;
    *(a3 + 56) = v6;
    v9 = *(a2 + 120);
    v10 = *(a2 + 136);
    v11 = *(a2 + 152);
    *(a3 + 168) = *(a2 + 168);
    *(a3 + 152) = v11;
    *(a3 + 136) = v10;
    *(a3 + 120) = v9;
    v12 = *(a2 + 184);
    v13 = *(a2 + 200);
    v14 = *(a2 + 216);
    *(a3 + 225) = *(a2 + 225);
    *(a3 + 216) = v14;
    *(a3 + 200) = v13;
    *(a3 + 184) = v12;
    if (*(a2 + 240) == 1)
    {
      if ((*(a2 + 25) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || fabs(*(a2 + 25)) > 90.0)
      {
        if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
        {
          v25 = 12;
          v24 = 1;
          (*(*a2 + 16))(a2);
          cnprint::CNPrinter::Print(&v25, &v24, "t,%.3lf,TunnelEndPointAssistanceChecker: Assistance rejected due to invalid latitude, %.3lf");
        }
      }

      else
      {
        v15 = *(a2 + 26);
        if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v15 > 180.0 || v15 <= -180.0)
        {
          if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
          {
            v25 = 12;
            v24 = 1;
            (*(*a2 + 16))(a2);
            cnprint::CNPrinter::Print(&v25, &v24, "t,%.3lf,TunnelEndPointAssistanceChecker: Assistance rejected due to invalid longitude, %.3lf");
          }
        }

        else
        {
          v17 = *(a2 + 27);
          if ((v17 <= -1 || ((v17 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (v17 - 1) >= 0xFFFFFFFFFFFFFLL)
          {
            if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
            {
              v25 = 12;
              v24 = 1;
              (*(*a2 + 16))(a2);
              cnprint::CNPrinter::Print(&v25, &v24, "t,%.3lf,TunnelEndPointAssistanceChecker: Assistance rejected due to invalid horizontal uncertainty, %.3lf");
            }
          }

          else
          {
            v20 = *(a2 + 28);
            if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v20 < -423.0 || v20 > 8848.0)
            {
              if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
              {
                v25 = 12;
                v24 = 1;
                (*(*a2 + 16))(a2);
                cnprint::CNPrinter::Print(&v25, &v24, "t,%.3lf,TunnelEndPointAssistanceChecker: Assistance rejected due to invalid altitude, %.3lf");
              }
            }

            else
            {
              v21 = *(a2 + 29);
              if (v21 > -1 && ((v21 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (v21 - 1) < 0xFFFFFFFFFFFFFLL)
              {
                return 0;
              }

              if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
              {
                v25 = 12;
                v24 = 1;
                (*(*a2 + 16))(a2);
                cnprint::CNPrinter::Print(&v25, &v24, "t,%.3lf,TunnelEndPointAssistanceChecker: Assistance rejected due to invalid vertical uncertainty, %.3lf");
              }
            }
          }
        }
      }
    }

    else if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
    {
      v25 = 12;
      v24 = 1;
      (*(*a2 + 16))(a2);
      cnprint::CNPrinter::Print(&v25, &v24, "t,%.3lf,TunnelEndPointAssistanceChecker: Assistance rejected due to invalid reference frame, %u");
    }
  }

  else
  {
    v25 = 12;
    v24 = 4;
    (*(*a2 + 16))(a2, a2, a3);
    cnprint::CNPrinter::Print(&v25, &v24, "t,%.3lf,TunnelEndPointAssistanceChecker, not configured");
  }

  return 0xFFFFFFFFLL;
}

uint64_t raven::ActivityStateChecker::Configure(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = a3;
  *(a1 + 8) = 1;
  return 0;
}

BOOL raven::RavenDeviceAttitudeActiveObject::AttitudeViaTwoVectors(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = v1;
  v14 = v13;
  v16 = v15;
  if ((atomic_load_explicit(&qword_1EE054C40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE054C40))
  {
    qword_1EE054C38 = 0x3FDFFFFFFFFFFFFFLL;
    __cxa_guard_release(&qword_1EE054C40);
  }

  v94 = 0x100000003;
  v93 = xmmword_1D0E7DCC0;
  v92 = &unk_1F4CDEB28;
  v95 = v96;
  v133 = 0x100000134;
  v132 = xmmword_1D0E7DD20;
  v131 = &unk_1F4CDEC90;
  v134 = v135;
  v89 = 0x100000003;
  v88 = xmmword_1D0E7DCC0;
  v87 = &unk_1F4CDEB28;
  v90 = v91;
  sub_1D0BFB1AC(v16, &v92, &v131, &v87, "2");
  if (v18.f64[0] < v12 || fabs(v18.f64[0]) <= 0.000000015)
  {
    if (cnprint::CNPrinter::GetLogLevel(v17) <= 1)
    {
      LOWORD(v131) = 12;
      LOBYTE(v92) = 1;
      cnprint::CNPrinter::Print(&v131, &v92, "DevAtt,Uncertainty of first vector is too large,unc,%.3lf,norm,%.3lf");
    }

    return 0;
  }

  v128 = 0x100000003;
  v127 = xmmword_1D0E7DCC0;
  v126 = &unk_1F4CDEB28;
  v129 = &v130;
  v18.f64[0] = 1.0 / v18.f64[0];
  sub_1D0B8930C(v16, &v126, v18);
  v94 = 0x100000003;
  v93 = xmmword_1D0E7DCC0;
  v92 = &unk_1F4CDEB28;
  v95 = v96;
  v133 = 0x100000134;
  v132 = xmmword_1D0E7DD20;
  v131 = &unk_1F4CDEC90;
  v134 = v135;
  v89 = 0x100000003;
  v88 = xmmword_1D0E7DCC0;
  v87 = &unk_1F4CDEB28;
  v90 = v91;
  sub_1D0BFB1AC(v11, &v92, &v131, &v87, "2");
  if (fabs(v20) <= 0.000000015 || v20 < v7)
  {
    if (cnprint::CNPrinter::GetLogLevel(v19) <= 1)
    {
      LOWORD(v131) = 12;
      LOBYTE(v92) = 1;
      cnprint::CNPrinter::Print(&v131, &v92, "DevAtt,Uncertainty of second vector is too large,unc,%.3lf,norm,%.3lf");
    }

    return 0;
  }

  v123 = 0x100000003;
  *&v21.f64[1] = 0x300000003;
  v122 = xmmword_1D0E7DCC0;
  v121 = &unk_1F4CDEB28;
  v124 = &v125;
  v21.f64[0] = 1.0 / v20;
  sub_1D0B8930C(v11, &v121, v21);
  v117 = 0x100000003;
  v114[0] = &unk_1F4CDEB28;
  v118 = &v119;
  v114[1] = v127;
  v115 = DWORD1(v127) * v127;
  v116 = v127;
  v22 = *v129;
  v23 = *(v129 + 1);
  *&v24.f64[0] = vdupq_laneq_s64(v23, 1).u64[0];
  v24.f64[1] = *v129;
  v25 = *(v124 + 1);
  *&v26.f64[0] = vdupq_laneq_s64(v25, 1).u64[0];
  v26.f64[1] = *v124;
  v119 = vmlaq_f64(vmulq_f64(v25, vnegq_f64(v24)), v26, v23);
  v120 = v22 * v25.f64[0] - v23.f64[0] * v26.f64[1];
  v94 = 0x100000003;
  v93 = xmmword_1D0E7DCC0;
  v92 = &unk_1F4CDEB28;
  v95 = v96;
  v133 = 0x100000134;
  v132 = xmmword_1D0E7DD20;
  v131 = &unk_1F4CDEC90;
  v134 = v135;
  v89 = 0x100000003;
  v88 = xmmword_1D0E7DCC0;
  v87 = &unk_1F4CDEB28;
  v90 = v91;
  sub_1D0BFB1AC(v114, &v92, &v131, &v87, "2");
  if (v28.f64[0] < *&qword_1EE054C38)
  {
    if (cnprint::CNPrinter::GetLogLevel(v27) <= 1)
    {
      LOWORD(v131) = 12;
      LOBYTE(v92) = 1;
      cnprint::CNPrinter::Print(&v131, &v92, "DevAtt,Vector 1 and 2 are too close < 30deg");
    }

    return 0;
  }

  v133 = 0x100000003;
  v132 = xmmword_1D0E7DCC0;
  v131 = &unk_1F4CDEB28;
  v134 = v135;
  v28.f64[0] = 1.0 / v28.f64[0];
  sub_1D0B8930C(v114, &v131, v28);
  sub_1D0B894B0(v114, &v131);
  v94 = 0x100000003;
  v93 = xmmword_1D0E7DCC0;
  v92 = &unk_1F4CDEB28;
  v95 = v96;
  v133 = 0x100000134;
  v132 = xmmword_1D0E7DD20;
  v131 = &unk_1F4CDEC90;
  v134 = v135;
  v89 = 0x100000003;
  v88 = xmmword_1D0E7DCC0;
  v87 = &unk_1F4CDEB28;
  v90 = v91;
  sub_1D0BFB1AC(v14, &v92, &v131, &v87, "2");
  if (fabs(v29.f64[0]) <= 0.000000015)
  {
    LOWORD(v131) = 12;
    LOBYTE(v92) = 4;
    cnprint::CNPrinter::Print(&v131, &v92, "DevAtt,Error,Reference vector 1 is zero vector,norm,%.3lf");
    return 0;
  }

  v111 = 0x100000003;
  v110 = xmmword_1D0E7DCC0;
  v109 = &unk_1F4CDEB28;
  v112 = &v113;
  v29.f64[0] = 1.0 / v29.f64[0];
  sub_1D0B8930C(v14, &v109, v29);
  v94 = 0x100000003;
  v93 = xmmword_1D0E7DCC0;
  v92 = &unk_1F4CDEB28;
  v95 = v96;
  v133 = 0x100000134;
  v132 = xmmword_1D0E7DD20;
  v131 = &unk_1F4CDEC90;
  v134 = v135;
  v89 = 0x100000003;
  v88 = xmmword_1D0E7DCC0;
  v87 = &unk_1F4CDEB28;
  v90 = v91;
  sub_1D0BFB1AC(v9, &v92, &v131, &v87, "2");
  if (fabs(v30.f64[0]) <= 0.000000015)
  {
    LOWORD(v131) = 12;
    LOBYTE(v92) = 4;
    cnprint::CNPrinter::Print(&v131, &v92, "DevAtt,Error,Reference vector 2 is zero vector,norm,%.3lf");
    return 0;
  }

  v106 = 0x100000003;
  v105 = xmmword_1D0E7DCC0;
  v104 = &unk_1F4CDEB28;
  v107 = &v108;
  v30.f64[0] = 1.0 / v30.f64[0];
  sub_1D0B8930C(v9, &v104, v30);
  v100 = 0x100000003;
  v97[0] = &unk_1F4CDEB28;
  v101 = &v102;
  v97[1] = v110;
  v98 = DWORD1(v110) * v110;
  v99 = v110;
  v31 = *v112;
  v32 = *(v112 + 1);
  *&v33.f64[0] = vdupq_laneq_s64(v32, 1).u64[0];
  v33.f64[1] = *v112;
  v34 = *(v107 + 1);
  *&v35.f64[0] = vdupq_laneq_s64(v34, 1).u64[0];
  v35.f64[1] = *v107;
  v102 = vmlaq_f64(vmulq_f64(v34, vnegq_f64(v33)), v35, v32);
  v103 = v31 * v34.f64[0] - v32.f64[0] * v35.f64[1];
  v94 = 0x100000003;
  v93 = xmmword_1D0E7DCC0;
  v92 = &unk_1F4CDEB28;
  v95 = v96;
  v133 = 0x100000134;
  v132 = xmmword_1D0E7DD20;
  v131 = &unk_1F4CDEC90;
  v134 = v135;
  v89 = 0x100000003;
  v88 = xmmword_1D0E7DCC0;
  v87 = &unk_1F4CDEB28;
  v90 = v91;
  sub_1D0BFB1AC(v97, &v92, &v131, &v87, "2");
  if (v37.f64[0] < *&qword_1EE054C38)
  {
    if (cnprint::CNPrinter::GetLogLevel(v36) <= 1)
    {
      LOWORD(v131) = 12;
      LOBYTE(v92) = 1;
      cnprint::CNPrinter::Print(&v131, &v92, "DevAtt,Reference Vector 1 and 2 are too close < 30deg");
    }

    return 0;
  }

  v37.f64[0] = 1.0 / v37.f64[0];
  sub_1D0C51FB4(v97, &v131, v37);
  sub_1D0B894B0(v97, &v131);
  if (fabs(v12) <= 0.000000015)
  {
    if (cnprint::CNPrinter::GetLogLevel(v40) <= 1)
    {
      LOWORD(v131) = 12;
      LOBYTE(v92) = 1;
      cnprint::CNPrinter::Print(&v131, &v92, "DevAtt,angular/direction uncertainty of first vector is zero,%.3lf");
    }

    return 0;
  }

  if (fabs(v7) <= 0.000000015)
  {
    if (cnprint::CNPrinter::GetLogLevel(v40) <= 1)
    {
      LOWORD(v131) = 12;
      LOBYTE(v92) = 1;
      cnprint::CNPrinter::Print(&v131, &v92, "DevAtt,angular/direction uncertainty of second vector is zero,%.3lf");
    }

    return 0;
  }

  v41 = 1.0 / v12 / v12;
  v42 = 1.0 / v7 / v7;
  v43 = v41 + v42;
  if (fabs(v41 + v42) <= 0.000000015)
  {
    if (cnprint::CNPrinter::GetLogLevel(v40) <= 1)
    {
      LOWORD(v131) = 12;
      LOBYTE(v92) = 1;
      cnprint::CNPrinter::Print(&v131, &v92, "DevAtt,Sum of two weight is zero,%.3lf");
    }

    return 0;
  }

  v44 = DWORD2(v127);
  v45 = 0.0;
  v46 = 0.0;
  if (SDWORD2(v127) >= 1)
  {
    v47 = v129;
    v48 = v124;
    do
    {
      v49 = *v47++;
      v50 = v49;
      v51 = *v48++;
      v46 = v46 + v50 * v51;
      --v44;
    }

    while (v44);
  }

  v52 = DWORD2(v110);
  if (SDWORD2(v110) >= 1)
  {
    v53 = v112;
    v45 = 0.0;
    v54 = v107;
    do
    {
      v55 = *v53++;
      v56 = v55;
      v57 = *v54++;
      v45 = v45 + v56 * v57;
      --v52;
    }

    while (v52);
  }

  sub_1D0D562E0(&v131, &v126, &v121);
  sub_1D0BFA800(&v131);
  v72 = v58;
  sub_1D0D562E0(&v92, &v109, &v104);
  sub_1D0BFA800(&v92);
  v71 = v59;
  sub_1D0D4BC50(&v109, &v92);
  sub_1D0D946D8(&v126, &v92, &v131);
  sub_1D0D4BC50(&v104, &v87);
  sub_1D0D946D8(&v121, &v87, &v92);
  sub_1D0D4BC50(v97, v86);
  sub_1D0D946D8(v114, v86, &v87);
  sub_1D0E24888(v80, *v129, v129[1], v129[2]);
  sub_1D0C1B688(v80, &v87, v81);
  sub_1D0E24888(v79, *v112, v112[1], v112[2]);
  sub_1D0C1B688(v81, v79, v82);
  sub_1D0D86DAC(&v131, v82, v83);
  v60 = sqrt(v42 / v43 * (v42 / v43) + v41 / v43 * (v41 / v43) + v42 / v43 * (v41 / v43 + v41 / v43) * (v72 * v71 + v46 * v45));
  v61.f64[0] = v41 / v43 / v60;
  sub_1D0C51778(v83, v84, v61);
  sub_1D0E24888(v74, *v124, v124[1], v124[2]);
  sub_1D0C1B688(v74, &v87, v75);
  sub_1D0E24888(v73, *v107, v107[1], v107[2]);
  sub_1D0C1B688(v75, v73, v76);
  sub_1D0D86DAC(&v92, v76, v77);
  v62.f64[0] = v42 / v43 / v60;
  sub_1D0C51778(v77, v78, v62);
  sub_1D0D4C358(v84, v78, v85);
  sub_1D0D4C358(v85, &v87, v86);
  sub_1D0D260A4(v85, v86);
  if (v85 != v5)
  {
    v63 = v85[1];
    *v5 = v85[0];
    v5[1] = v63;
  }

  sub_1D0D4BC50(&v126, v84);
  sub_1D0D946D8(&v126, v84, v85);
  sub_1D0D4BC50(&v121, v83);
  sub_1D0D946D8(&v121, v83, v84);
  sub_1D0D4BC50(v114, v82);
  sub_1D0D946D8(v114, v82, v83);
  sub_1D0BFA800(v114);
  v65 = v66.f64[0];
  v66.f64[0] = fabs(v66.f64[0]);
  v38 = v66.f64[0] > 0.000000015;
  if (v66.f64[0] > 0.000000015)
  {
    v66.f64[0] = v7 * v7;
    sub_1D0C51778(v85, v79, v66);
    v67.f64[0] = v12 * v12;
    sub_1D0C51778(v84, v78, v67);
    sub_1D0D4C358(v79, v78, v80);
    v68.f64[0] = 1.0 / v43;
    sub_1D0C51778(v83, v77, v68);
    sub_1D0D4C358(v80, v77, v81);
    v69.f64[0] = 1.0 / v65 / v65;
    sub_1D0C51778(v81, v82, v69);
    sub_1D0B894B0(v3, v82);
  }

  else
  {
    LogLevel = cnprint::CNPrinter::GetLogLevel(v64);
    if (LogLevel <= 1)
    {
      v82[0] = 12;
      v81[0] = 1;
      cnprint::CNPrinter::Print(v82, v81, "DevAtt,Cross product of two input body vectors is zero,%.3lf", v65);
    }
  }

  return v38;
}

double sub_1D0E24888(uint64_t a1, double a2, double a3, double a4)
{
  *(a1 + 24) = 0x300000003;
  *a1 = &unk_1F4CD5DD0;
  *(a1 + 32) = a1 + 40;
  *(a1 + 8) = xmmword_1D0E76C10;
  sub_1D0BBBC00(a1, 0.0);
  v8 = *(a1 + 32);
  *(v8 + 8) = a4;
  *(v8 + 16) = -a3;
  v9 = *(a1 + 20);
  v10 = (v8 + 8 * v9);
  v10[2] = a2;
  *v10 = -*(v8 + 8);
  *(v8 + 16 * v9) = -*(v8 + 16);
  result = -v10[2];
  *(v8 + 8 * ((2 * v9) | 1)) = result;
  return result;
}

void raven::RavenDeviceAttitudeActiveObject::biermanObservationalUpdate3X3(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = 0;
  v48[3] = *MEMORY[0x1E69E9840];
  v44 = 0x100000003;
  v42 = &unk_1F4CDEB28;
  v43 = xmmword_1D0E7DCC0;
  v45 = v46;
  memset(v46, 0, sizeof(v46));
  v7 = *(a2 + 20);
  v8 = *(a2 + 32);
  v9 = *(a1 + 556) + 1;
  v10 = *(a1 + 568);
  v11 = *(a3 + 32);
  v12 = *(a4 + 32);
  v13 = (v8 - 8 * v7);
LABEL_2:
  v14 = 0;
  v15 = 0;
  v16 = -8;
  v17 = v13;
  v18 = 1;
  do
  {
    v19 = *(v8 + 8 * v6 + 8 * v15 * v7);
    if (v15)
    {
      v20 = (*(a1 + 824) + v16 + v14 * *(a1 + 812));
      v21 = v17;
      v22 = v18;
      do
      {
        v23 = *v20--;
        v19 = v19 + *v21 * v23;
        --v22;
        v21 -= v7;
      }

      while (v22 > 1);
    }

    v48[v15] = v19;
    v47[v15] = v19 * v10[v9 * v15];
    ++v15;
    ++v18;
    v16 += 8;
    v14 += 8;
    v17 += v7;
  }

  while (v15 != 3);
  v24 = *(v11 + 8 * v6);
  v25 = v24 + v48[0] * v47[0];
  if (v25 <= 0.0)
  {
    if (cnprint::CNPrinter::GetLogLevel(a1) > 1)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v26 = 0;
    v27 = 1.0 / v25;
    *v10 = v24 * (1.0 / v25) * *v10;
    v28 = &v47[1];
    v29 = &v48[1];
    v30 = 1;
    while (1)
    {
      v31 = v25 + *v29 * *v28;
      if (v31 <= 0.0)
      {
        break;
      }

      v32 = v26;
      v33 = 0;
      v34 = -(*v29 * v27);
      v27 = 1.0 / v31;
      v10[v9 * v30] = v25 * (1.0 / v31) * v10[v9 * v30];
      v35 = *(a1 + 824) + 8 * *(a1 + 812) * v30;
      v36 = 8 * v30;
      do
      {
        v37 = *(v35 + v33);
        v38 = v47[v33 / 8];
        *(v35 + v33) = v37 + v38 * v34;
        v47[v33 / 8] = v38 + *v28 * v37;
        v33 += 8;
      }

      while (v36 != v33);
      v26 = 1;
      v28 = &v47[2];
      v29 = &v48[2];
      v30 = 2;
      v25 = v31;
      if (v32)
      {
        for (i = 0; i != 3; ++i)
        {
          *&v46[i] = *&v46[i] + v27 * *(v12 + 8 * v6) * v47[i];
        }

        ++v6;
        ++v13;
        if (v6 == 3)
        {
          sub_1D0BBA094(a5, &v42);
          return;
        }

        goto LABEL_2;
      }
    }

    if (cnprint::CNPrinter::GetLogLevel(a1) > 1)
    {
      goto LABEL_19;
    }
  }

  v41 = 12;
  v40 = 1;
  cnprint::CNPrinter::Print(&v41, &v40, "DevAtt,%uz: alpha <= 0, matrix ! positive definite", v6);
LABEL_19:
  *(a5 + 24) = 0x100000003;
  *a5 = &unk_1F4CDEB28;
  *(a5 + 32) = a5 + 40;
  *(a5 + 8) = xmmword_1D0E7DCC0;
  sub_1D0BBBC00(a5, 0.0);
}

void raven::RavenDeviceAttitudeActiveObject::ComputePCABasedHorizontalDirectionOfTravelInIMUFrame(raven::RavenDeviceAttitudeActiveObject *this, const raven::TimeMarkEvent *a2, int8x16_t a3, int8x16_t a4)
{
  if (*(this + 7072) == 1 && *(this + 7032) - 1 <= 1)
  {
    *(this + 458) = xmmword_1D0E87B90;
    return;
  }

  if (*(this + 957))
  {
    v6 = *(this + 1010);
    if (v6)
    {
      v7 = *(this + 1009) + v6;
      v8 = *(this + 1006);
      v9 = (v8 + 8 * (v7 / 0x14));
      v10 = *v9 + 200 * (v7 % 0x14);
      if (*(this + 1007) == v8)
      {
        v11 = 0;
      }

      else
      {
        v11 = v10;
      }

      if (v11 == *v9)
      {
        v11 = *(v9 - 1) + 4000;
      }

      v12 = CNTimeSpan::operator-(this + 900, this + 885, a3, a4);
      *v14.i64 = v13;
      *v15.i64 = v12;
      v16 = v13 + v12;
      v17 = CNTimeSpan::operator-(this + 900, this + 902, v14, v15);
      if (v16 >= (v18 + v17) * 0.5)
      {
        v19 = v11 - 200;
        v119 = (*(*a2 + 16))(a2);
        v120[0] = v20;
        v150 = (*(*(v11 - 200) + 16))(v11 - 200);
        v151 = v21;
        v24 = CNTimeSpan::operator-(&v119, &v150, v22, v23);
        if (v25 + v24 <= *(*(this + 29) + 832))
        {
          v26 = *(this + 953);
          v27 = (v26 + 8 * (*(this + 956) >> 4));
          v28 = *(this + 954);
          if (v28 == v26)
          {
            v29 = 0;
          }

          else
          {
            v29 = *v27 + 2656 * (*(this + 956) & 0xFLL);
          }

          v100 = 0;
          v30 = 1.79769313e308;
          v31 = v29;
          while (1)
          {
            v32 = v29;
            if (v28 == v26)
            {
              v34 = 0;
            }

            else
            {
              v33 = *(this + 957) + *(this + 956);
              v34 = *(v26 + ((v33 >> 1) & 0x7FFFFFFFFFFFFFF8)) + 2656 * (v33 & 0xF);
            }

            if (v29 == v34)
            {
              break;
            }

            v29 += 2656;
            if (v32 + 2656 - *v27 == 42496)
            {
              v35 = v27[1];
              ++v27;
              v29 = v35;
            }

            v119 = (*(*v19 + 16))(v11 - 200);
            v120[0] = v36;
            v150 = (*(*v32 + 16))(v32);
            v151 = v37;
            v24 = CNTimeSpan::operator-(&v119, &v150, v38, v39);
            *v42.i64 = v41 + v24;
            if (*v42.i64 >= 0.0 && *(v32 + 209) == 2 && *(v32 + 1464) == 1 && *(v32 + 1624) == 1 && *(v32 + 1824) == 1 && *(v32 + 1345) == 1 && *(v32 + 1904) == 1)
            {
              *v40.i64 = v24;
              v24 = CNTimeSpan::operator-(this + 900, (v32 + 1168), v42, v40);
              v44 = v43 + v24;
              v45 = fabs(v30);
              if (v45 < fabs(v44) && (v45 < 1.0 || v30 >= v44))
              {
                break;
              }

              v100 = 1;
            }

            else
            {
              v32 = v31;
              v44 = v30;
            }

            v26 = *(this + 953);
            v28 = *(this + 954);
            v31 = v32;
            v30 = v44;
          }

          if (v100)
          {
            v171 = 0x100000003;
            v168 = 0.0;
            v169 = &unk_1F4CDEB28;
            v170 = xmmword_1D0E7DCC0;
            v172 = &v173;
            v165 = 0x100000003;
            v164 = xmmword_1D0E7DCC0;
            v163 = &unk_1F4CDEB28;
            v166 = &v167;
            if (raven::RavenDeviceAttitudeActiveObject::PCAForHorizontalDOTInIMUFrame(this))
            {
              sub_1D0BD2CA4(v161, *(v31 + 1272), *(v31 + 1280), *(v31 + 1288));
              if (v161[8] == 1)
              {
                v158 = 0x300000003;
                v157 = xmmword_1D0E76C10;
                v156 = &unk_1F4CD5DD0;
                v159 = &v160;
                sub_1D0B894B0(&v156, &v162);
                sub_1D0E26A00(&v150);
                sub_1D0E26A00(v147);
                if (raven::RavenDeviceAttitudeActiveObject::GetDAEFromQueueForInputTime(this, (v31 + 1168), &v150))
                {
                  if (raven::RavenDeviceAttitudeActiveObject::GetDAEFromQueueForInputTime(this, this + 900, v147))
                  {
                    v145 = v148;
                    *v146 = v149;
                    v46 = sqrt(v153 * v153 + v152 * v152 + v154 * v154 + v155 * v155);
                    if (fabs(v46) >= 2.22044605e-16)
                    {
                      v48 = -v152 / v46;
                      v49 = -v153 / v46;
                      v50 = -v154 / v46;
                      v47 = v155 / v46;
                    }

                    else
                    {
                      v47 = 1.0;
                      v48 = 0.0;
                      v49 = 0.0;
                      v50 = 0.0;
                    }

                    v119 = *&v48;
                    *v120 = v49;
                    *&v120[1] = v50;
                    *&v120[2] = v47;
                    cnrotation::Cat(&v145, &v119, v144);
                    v140 = 0x100000003;
                    v139 = xmmword_1D0E7DCC0;
                    v138 = &unk_1F4CDEB28;
                    v141 = &v142;
                    v142 = *(v31 + 1360);
                    v143 = *(v31 + 1376);
                    sub_1D0D5625C(&v156, &v138, v135);
                    _Q1 = *(v31 + 1648);
                    _D3 = _Q1.f64[1];
                    __asm { FMLA            D2, D3, V1.D[1] }

                    v60 = sqrt(_D2);
                    if (fabs(v60) >= 2.22044605e-16)
                    {
                      v63 = vdupq_lane_s64(*&v60, 0);
                      v61 = vdivq_f64(_Q1, v63);
                      v62 = vdivq_f64(*(v31 + 1632), v63);
                    }

                    else
                    {
                      v61 = xmmword_1D0E7DCB0;
                      v62 = 0uLL;
                    }

                    v134[0] = v62;
                    v134[1] = v61;
                    cnrotation::Cat(v144, v134, &v130);
                    v64 = sqrt(v131 * v131 + v130 * v130 + v132 * v132 + v133 * v133);
                    if (fabs(v64) >= 2.22044605e-16)
                    {
                      v66 = -v130 / v64;
                      v67 = -v131 / v64;
                      v68 = -v132 / v64;
                      v65 = v133 / v64;
                    }

                    else
                    {
                      v65 = 1.0;
                      v66 = 0.0;
                      v67 = 0.0;
                      v68 = 0.0;
                    }

                    *v117 = v66;
                    *&v117[1] = v67;
                    *&v117[2] = v68;
                    *&v117[3] = v65;
                    sub_1D0B88A54(v117, &v169, v103);
                    sub_1D0C1B688(&v156, v103, &v119);
                    sub_1D0C51690(v128, &v119);
                    v71 = v136;
                    if (v136 >= 1)
                    {
                      v72 = v137;
                      v73 = 0.0;
                      v74 = v129;
                      do
                      {
                        v75 = *v72++;
                        v76 = v75;
                        v77 = *v74++;
                        v73 = v73 + v76 * v77;
                        --v71;
                      }

                      while (v71);
                      if (v73 < 0.0)
                      {
                        sub_1D0E27100(&v119, &v169);
                        sub_1D0B894B0(&v169, &v119);
                        sub_1D0E27100(&v119, v128);
                        v69 = sub_1D0B894B0(v128, &v119);
                      }
                    }

                    v69.n128_f64[0] = v168;
                    v70.i64[0] = 1.0;
                    v78 = 1.0 - v168;
                    v79 = *(v31 + 224);
                    if (v79 < 0 || (v69.n128_u64[0] = *(v31 + 232), v69.n128_f64[0] < 0.0))
                    {
                      v79 = CNTimeSpan::operator-((v31 + 224), v69, v70);
                      v69.n128_u64[0] = v80;
                    }

                    v81 = v78 * 40.0 + 10.0;
                    if (v69.n128_f64[0] + v79 <= 30.0)
                    {
                      goto LABEL_65;
                    }

                    v82 = atan2(*v137, v137[1]) * 57.2957795;
                    v83 = v129;
                    v84 = atan2(*v129, v129[1]) * 57.2957795;
                    v85 = v84 - v82 - round((v84 - v82) / 360.0) * 360.0;
                    if (fabs(v85) <= 45.0 && v81 > 0.0)
                    {
                      v86 = *(this + 917);
                      v87 = v86 / (v81 * v81 + v86);
                      v88 = fmod(*(this + 916) + v87 * (v85 - *(this + 916)), 360.0);
                      *(this + 916) = v88;
                      v89 = v86 * (1.0 - v87);
                      *(this + 917) = v89;
                      if (v89 <= 30.0)
                      {
                        *(this + 917) = 0x403E000000000000;
                        *v83 = __sincos_stret((v84 - v88) * 0.0174532925);
                        sub_1D0C1B708(&v156, v103);
                        sub_1D0D5625C(v103, v128, v117);
                        sub_1D0B88A54(&v130, v117, &v119);
                        sub_1D0B894B0(&v169, &v119);
                        v90 = 1;
LABEL_66:
                        *(this + 7080) = *(this + 450);
                        sub_1D0E2B744(&v119);
                        v91 = sqrt(*(&v145 + 1) * *(&v145 + 1) + *&v145 * *&v145 + v146[0] * v146[0] + v146[1] * v146[1]);
                        if (fabs(v91) >= 2.22044605e-16)
                        {
                          v93 = -*&v145 / v91;
                          v94 = -*(&v145 + 1) / v91;
                          v95 = -v146[0] / v91;
                          v92 = v146[1] / v91;
                        }

                        else
                        {
                          v92 = 1.0;
                          v93 = 0.0;
                          v94 = 0.0;
                          v95 = 0.0;
                        }

                        *v103 = v93;
                        *&v103[8] = v94;
                        *&v103[16] = v95;
                        *&v103[24] = v92;
                        cnrotation::Cat((v11 - 32), v103, v118);
                        v96 = (*(*v19 + 16))(v11 - 200);
                        v124 = 0u;
                        v123 = 0u;
                        v122 = 0u;
                        v121 = 0u;
                        v120[14] = v96;
                        v120[15] = v97;
                        v125 = 0;
                        v126 = 0x7FF8000000000000;
                        sub_1D0B88A54(v118, &v169, v103);
                        sub_1D0B894B0(v127, v103);
                        sub_1D0B88A54(v118, &v163, v117);
                        cnrotation::Cat(v118, &v130, v103);
                        v127[4] = *v103;
                        v127[5] = *&v103[16];
                        if (!v90)
                        {
                          v81 = v81 + 40.0;
                        }

                        sub_1D0D7B9D8(v117, v103);
                        sub_1D0C51690(v116, v103);
                        sub_1D0D562E0(v115, v116, v127);
                        sub_1D0BFA9C4(3, 3, v112);
                        v98 = v114;
                        *v114 = 0x4028000000000000;
                        v99 = v113;
                        v98[2 * v113 + 2] = 0x4028000000000000;
                        *&v98[v99 + 1] = v81 * 0.0174532925 * (v81 * 0.0174532925);
                        if ((atomic_load_explicit(&qword_1EE054C48, memory_order_acquire) & 1) == 0)
                        {
                          if (__cxa_guard_acquire(&qword_1EE054C48))
                          {
                            *&v103[24] = 0x300000001;
                            *v103 = &unk_1F4CDF0C8;
                            v104 = &v105;
                            *&v103[8] = xmmword_1D0E7F310;
                            v105 = 0x100000000;
                            v106 = 2;
                            sub_1D0D2CF48(v103, &unk_1EE054C98);
                            __cxa_atexit(sub_1D0D26840, &unk_1EE054C98, &dword_1D0B71000);
                            __cxa_guard_release(&qword_1EE054C48);
                          }
                        }

                        v109 = 0x300000003;
                        v108 = xmmword_1D0E76C10;
                        v107 = &unk_1F4CD5DD0;
                        v110 = &v111;
                        sub_1D0D4BC50(v127, v102);
                        sub_1D0E27188(v103, &v107, 0);
                        sub_1D0D2D288(v103, v102);
                        sub_1D0D4BC50(v115, v102);
                        sub_1D0E27188(v103, &v107, 1);
                        sub_1D0D2D288(v103, v102);
                        sub_1D0D4BC50(v116, v102);
                        sub_1D0E27188(v103, &v107, 2);
                        sub_1D0D2D288(v103, v102);
                        sub_1D0C1B688(&v107, v112, v102);
                        sub_1D0C1B708(&v107, v101);
                        sub_1D0C1B688(v102, v101, v103);
                        sub_1D0B894B0(v120, v103);
                        sub_1D0E271F0(this, &v119);
                      }

LABEL_65:
                      v90 = 0;
                      goto LABEL_66;
                    }
                  }
                }
              }
            }
          }

          else if (!cnprint::CNPrinter::GetLogLevel(v24))
          {
            LOWORD(v119) = 12;
            LOBYTE(v150) = 0;
            v51 = (*(*a2 + 16))(a2);
            cnprint::CNPrinter::Print(&v119, &v150, "t,%.3lf No applicable PNT solution found for PCA HDOT", v52 + v51);
          }
        }
      }
    }
  }
}

uint64_t raven::RavenDeviceAttitudeActiveObject::PCAForHorizontalDOTInIMUFrame(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v190[2] = 0;
  v190[0] = &unk_1F4CEE768;
  v190[1] = 0;
  v191 = 0;
  v193 = 0;
  v192 = 0;
  v194 = 0;
  v196 = 0;
  v195 = 0;
  v197 = 0;
  v199 = 0;
  v198 = 0;
  v200 = vdupq_n_s64(0x7FF8000000000000uLL);
  v201 = v200;
  v202 = v200;
  v203 = 0x7FF8000000000000;
  *&v206 = 0;
  v205 = 0u;
  v204 = 0u;
  *(&v206 + 1) = 0x3FF0000000000000;
  DAEFromQueueForInputTime = raven::RavenDeviceAttitudeActiveObject::GetDAEFromQueueForInputTime(v13, v9, v190);
  result = 0;
  if (!DAEFromQueueForInputTime)
  {
    return result;
  }

  v17 = v8 + 464;
  v189[0] = v205;
  v189[1] = v206;
  v186 = 0x100000003;
  v185 = xmmword_1D0E7DCC0;
  v184 = &unk_1F4CDEB28;
  v187 = &v188;
  _Q1 = *(v8 + 480);
  _D3 = _Q1.f64[1];
  __asm { FMLA            D2, D3, V1.D[1] }

  v25 = sqrt(_D2);
  if (fabs(v25) >= 2.22044605e-16)
  {
    v28 = vdupq_lane_s64(*&v25, 0);
    v26 = vdivq_f64(_Q1, v28);
    v27 = vdivq_f64(*(v8 + 464), v28);
  }

  else
  {
    v26 = xmmword_1D0E7DCB0;
    v27 = 0uLL;
  }

  v183[0] = v27;
  v183[1] = v26;
  v165[2] = 0;
  v165[0] = &unk_1F4CEE768;
  v165[1] = 0;
  v166 = 0;
  v168 = 0;
  v167 = 0;
  v169 = 0;
  v171 = 0;
  v170 = 0;
  v172 = 0;
  v174 = 0;
  v173 = 0;
  v175 = vdupq_n_s64(0x7FF8000000000000uLL);
  v176 = v175;
  v177 = v175;
  v178 = 0x7FF8000000000000;
  v181 = 0.0;
  v180 = 0u;
  v179 = 0u;
  v182 = 1.0;
  v29 = raven::RavenDeviceAttitudeActiveObject::GetDAEFromQueueForInputTime(v14, v8, v165);
  result = 0;
  if (!v29)
  {
    return result;
  }

  v30 = sqrt(*(&v180 + 1) * *(&v180 + 1) + *&v180 * *&v180 + v181 * v181 + v182 * v182);
  if (fabs(v30) >= 2.22044605e-16)
  {
    v32 = -*&v180 / v30;
    v33 = -*(&v180 + 1) / v30;
    v34 = -v181 / v30;
    v31 = v182 / v30;
  }

  else
  {
    v31 = 1.0;
    v32 = 0.0;
    v33 = 0.0;
    v34 = 0.0;
  }

  v207 = v32;
  *&v208 = v33;
  *(&v208 + 1) = v34;
  v209 = *&v31;
  cnrotation::Cat(v189, &v207, v164);
  v161 = 0x100000003;
  v159 = &unk_1F4CDEB28;
  v160 = xmmword_1D0E7DCC0;
  v162 = v163;
  v163[0] = 0;
  v163[1] = 0;
  v163[2] = 0xC0239D013A92A305;
  sub_1D0B9F3C4(v158, *(v8 + 104), *(v8 + 112), *(v8 + 120));
  if (v158[8] != 1)
  {
    return 0;
  }

  v93 = v2;
  v91 = v4;
  v155 = 0x100000003;
  v154 = xmmword_1D0E7DCC0;
  v153 = &unk_1F4CDEB28;
  v156 = &v157;
  sub_1D0E296D4(v158, &v159, &v153);
  cnrotation::Cat(v164, v183[0].f64, v152);
  sub_1D0B88A54(v152, &v153, &v207);
  sub_1D0B894B0(&v184, &v207);
  v214 = 0x100000003;
  v213 = xmmword_1D0E7DCC0;
  v212 = COERCE_DOUBLE(&unk_1F4CDEB28);
  v215 = v216;
  v209 = 0x100000134;
  v208 = xmmword_1D0E7DD20;
  v207 = COERCE_DOUBLE(&unk_1F4CDEC90);
  v210 = v211;
  v143 = 0x100000003;
  v142 = xmmword_1D0E7DCC0;
  v141 = &unk_1F4CDEB28;
  v144 = v145;
  sub_1D0BFB1AC(&v184, &v212, &v207, &v141, "2");
  if (v35 <= 0.000000015)
  {
    return 0;
  }

  v90 = v6;
  v37 = 1.0 / v35;
  v38 = v187;
  v39 = *(v2 + 32);
  *v39 = v37 * *v187;
  v39[1] = v37 * v38[1];
  v36.i64[0] = v38[2];
  v39[2] = v37 * *v36.i64;
  v149 = 0x100000003;
  v147 = &unk_1F4CDEB28;
  v150 = v151;
  v148 = xmmword_1D0E7DCC0;
  memset(v151, 0, sizeof(v151));
  v143 = 0x300000003;
  v141 = &unk_1F4CD5DD0;
  v144 = v145;
  v142 = xmmword_1D0E76C10;
  v40 = 0uLL;
  memset(v145, 0, sizeof(v145));
  v146 = 0;
  v41 = v14[1006];
  v42 = 0.0;
  if (v14[1007] != v41)
  {
    v43 = v14[1009];
    v44 = *(v41 + 8 * (v43 / 0x14)) + 200 * (v43 % 0x14);
    v45 = *(v41 + 8 * ((v14[1010] + v43) / 0x14)) + 200 * ((v14[1010] + v43) % 0x14);
    if (v44 != v45)
    {
      v92 = v8;
      v46 = 0;
      v47 = (v41 + 8 * (v43 / 0x14));
      do
      {
        v207 = COERCE_DOUBLE((*(*v44 + 16))(v44));
        *&v208 = v48;
        if (!sub_1D0B7C8AC(&v207, v12))
        {
          v207 = COERCE_DOUBLE((*(*v44 + 16))(v44));
          *&v208 = v49;
          if (sub_1D0B7CF88(&v207, v10))
          {
            break;
          }

          v110 = 0x100000003;
          v109 = xmmword_1D0E7DCC0;
          v108 = &unk_1F4CDEB28;
          v111 = &v112;
          v112 = *(v44 + 128);
          v113 = *(v44 + 144);
          cnrotation::Inv(&v207, (v44 + 168));
          cnrotation::Cat(v189, &v207, &v137);
          v101 = 0x100000003;
          v99 = &unk_1F4CDEB28;
          v100 = xmmword_1D0E7DCC0;
          v102 = &v103;
          v103 = vmlaq_f64(vnegq_f64(*(v17 + 200)), vaddq_f64(*(v44 + 128), *(v44 + 104)), *(v17 + 280));
          *&v104 = -(*(v92 + 680) - *(v92 + 760) * (*(v44 + 144) + *(v44 + 120)));
          v50 = sqrt(v138 * v138 + v137 * v137 + v139 * v139 + v140 * v140);
          if (fabs(v50) >= 2.22044605e-16)
          {
            v52 = -v137 / v50;
            v53 = -v138 / v50;
            v54 = -v139 / v50;
            v51 = v140 / v50;
          }

          else
          {
            v51 = 1.0;
            v52 = 0.0;
            v53 = 0.0;
            v54 = 0.0;
          }

          v212 = v52;
          *&v213 = v53;
          *(&v213 + 1) = v54;
          v214 = *&v51;
          sub_1D0B88A54(&v212, v93, &v207);
          v56 = DWORD2(v100);
          if (SDWORD2(v100) < 1)
          {
            v55.f64[0] = 0.0;
          }

          else
          {
            v57 = v102;
            v55.f64[0] = 0.0;
            v58 = v210;
            do
            {
              v59 = *v57++;
              v60 = v59;
              v61 = *v58++;
              v55.f64[0] = v55.f64[0] + v60 * v61;
              --v56;
            }

            while (v56);
          }

          v214 = 0x300000003;
          v213 = xmmword_1D0E76C10;
          v212 = COERCE_DOUBLE(&unk_1F4CD5DD0);
          v215 = v216;
          sub_1D0B8930C(&v207, &v212, v55);
          v96 = 0x100000003;
          v94 = &unk_1F4CDEB28;
          v95 = xmmword_1D0E7DCC0;
          v97 = v98;
          sub_1D0BA5A78(&v99, &v212, &v94);
          sub_1D0B88A54(&v137, &v94, &v212);
          sub_1D0C51690(&v217, &v212);
          v134 = 0x100000003;
          v133 = xmmword_1D0E7DCC0;
          v132 = &unk_1F4CDEB28;
          v135 = &v136;
          v63 = sub_1D0BA5A78(v62, &v147, &v132);
          v63.f64[0] = 1.0 / (v46 + 1);
          v129 = 0x100000003;
          v128 = xmmword_1D0E7DCC0;
          v127 = &unk_1F4CDEB28;
          v130 = v131;
          sub_1D0B8930C(&v132, &v127, v63);
          v214 = 0x100000003;
          v213 = xmmword_1D0E7DCC0;
          v212 = COERCE_DOUBLE(&unk_1F4CDEB28);
          v215 = v216;
          sub_1D0B88838(&v147, &v127, &v212);
          sub_1D0B894B0(&v147, &v212);
          v116 = 0x100000003;
          v115 = xmmword_1D0E7DCC0;
          v114 = &unk_1F4CDEB28;
          v117 = &v118;
          sub_1D0BA5A78(&v217, &v147, &v114);
          v64 = DWORD1(v115);
          v65 = v115;
          v124 = 0x300000001;
          v119 = &unk_1F4CDF248;
          v125 = v126;
          v120 = DWORD1(v115);
          v121 = v115;
          v122 = v115 * DWORD1(v115);
          v123 = DWORD1(v115);
          if (DWORD1(v115))
          {
            v66 = 0;
            v67 = 0;
            v68 = HIDWORD(v115);
            v69 = v117;
            do
            {
              v70 = v66;
              v71 = v67;
              for (i = v65; i; --i)
              {
                v126[v71] = v69[v70];
                v71 += v64;
                ++v70;
              }

              ++v67;
              v66 += v68;
            }

            while (v67 != v64);
          }

          v129 = 0x300000003;
          v128 = xmmword_1D0E76C10;
          v127 = &unk_1F4CD5DD0;
          v130 = v131;
          sub_1D0B89390(&v132, &v119, &v127);
          v214 = 0x300000003;
          v213 = xmmword_1D0E76C10;
          v212 = COERCE_DOUBLE(&unk_1F4CD5DD0);
          v215 = v216;
          sub_1D0B88838(&v141, &v127, &v212);
          ++v46;
          v40 = sub_1D0B894B0(&v141, &v212);
        }

        v44 += 200;
        if (v44 - *v47 == 4000)
        {
          v73 = v47[1];
          ++v47;
          v44 = v73;
        }
      }

      while (v44 != v45);
      v42 = v46;
    }
  }

  v74 = CNTimeSpan::operator-(v14 + 900, v14 + 902, v40, v36);
  v76.f64[0] = (v75 + v74) * 0.7 / *(v14[29] + 648);
  if (v76.f64[0] < 4.0)
  {
    v76.f64[0] = 4.0;
  }

  if (v76.f64[0] > v42)
  {
    return 0;
  }

  v129 = 0x300000003;
  v128 = xmmword_1D0E76C10;
  v127 = &unk_1F4CD5DD0;
  v130 = v131;
  v76.f64[0] = 1.0 / (v42 + -1.0);
  sub_1D0B8930C(&v141, &v127, v76);
  v110 = 0x300000003;
  v109 = xmmword_1D0E76C10;
  v107 = 0;
  v108 = &unk_1F4CD5DD0;
  v111 = &v112;
  v101 = 0x300000003;
  v99 = &unk_1F4CD5DD0;
  v100 = xmmword_1D0E76C10;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v102 = &v103;
  v96 = 0x300000003;
  v94 = &unk_1F4CD5DD0;
  v95 = xmmword_1D0E76C10;
  v97 = v98;
  v214 = 0x300000003;
  v212 = COERCE_DOUBLE(&unk_1F4CD5DD0);
  *&v213 = v128;
  DWORD2(v213) = DWORD1(v128) * v128;
  HIDWORD(v213) = v128;
  v215 = v216;
  v209 = 0x1000001E6;
  v208 = xmmword_1D0E83DC0;
  v207 = COERCE_DOUBLE(&unk_1F4CDFFB0);
  v210 = v211;
  sub_1D0C51878(&v127, &v212, &v207, &v108, &v99, &v94);
  v77 = v102->f64[0];
  v78 = v102->f64[SHIDWORD(v100) + 1];
  v214 = 0x100000003;
  v213 = xmmword_1D0E7DCC0;
  v212 = COERCE_DOUBLE(&unk_1F4CDEB28);
  v215 = v216;
  v209 = 0x100000134;
  v208 = xmmword_1D0E7DD20;
  v207 = COERCE_DOUBLE(&unk_1F4CDEC90);
  v210 = v211;
  v219 = 0x100000003;
  v218 = xmmword_1D0E7DCC0;
  v217 = &unk_1F4CDEB28;
  v220 = &v221;
  sub_1D0BFB1AC(&v147, &v212, &v207, &v217, "2");
  v79 = v14[29];
  if (v80 >= *(v79 + 992))
  {
    if (fabs(v77) < 2.22044605e-16)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (sqrt(v77) < *(v79 + 1000) || fabs(v77) < 2.22044605e-16)
    {
      return result;
    }
  }

  v81 = v77 / (v77 + v78);
  *v91 = v81;
  if (v81 < 0.7)
  {
    return 0;
  }

  sub_1D0C51CC8(&v94, ":", 0, &v207);
  v82 = DWORD2(v148);
  if (SDWORD2(v148) < 1)
  {
    goto LABEL_50;
  }

  v83 = v150;
  v84 = 0.0;
  v85 = v210;
  do
  {
    v86 = *v83++;
    v87 = v86;
    v88 = *v85++;
    v84 = v84 + v87 * v88;
    --v82;
  }

  while (v82);
  if (v84 >= 0.0)
  {
LABEL_50:
    sub_1D0C51CC8(&v94, ":", 0, &v207);
    v89 = &v207;
  }

  else
  {
    sub_1D0C51CC8(&v94, ":", 0, &v207);
    sub_1D0E27100(&v212, &v207);
    v89 = &v212;
  }

  sub_1D0B894B0(v90, v89);
  return 1;
}

double sub_1D0E26A00(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CEE768;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v1 = vdupq_n_s64(0x7FF8000000000000uLL);
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = v1;
  *(a1 + 112) = v1;
  *(a1 + 128) = v1;
  *(a1 + 144) = 0x7FF8000000000000;
  result = 0.0;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0x3FF0000000000000;
  return result;
}

uint64_t raven::RavenDeviceAttitudeActiveObject::GetDAEFromQueueForInputTime(void *a1, void *a2, uint64_t a3)
{
  v6 = a1[1009] + a1[1010];
  v7 = a1[1006];
  v8 = (v7 + 8 * (v6 / 0x14));
  v9 = *v8;
  v10 = *v8 + 200 * (v6 % 0x14);
  if (a1[1007] == v7)
  {
    v10 = 0;
  }

  v11 = v10 - v9;
  v12 = 0x8F5C28F5C28F5C29 * ((v10 - v9) >> 3);
  if (v11 < 201)
  {
    v16 = 20 - v12;
    v14 = &v8[-(v16 / 0x14)];
    v15 = *v14 + 200 * (20 * (v16 / 0x14) - v16) + 3800;
  }

  else
  {
    v13 = v12 - 1;
    v14 = &v8[v13 / 0x14];
    v15 = *v14 + 200 * (v13 % 0x14);
  }

  v101 = (*(*v15 + 16))(v15);
  v102 = v17;
  v20 = CNTimeSpan::operator-(&v101, a2, v18, v19);
  v22 = llround((v21 + v20) / *(a1[29] + 648));
  if ((v22 & 0x80000000) != 0 || v22 >= *(a1 + 2020))
  {
    return 0;
  }

  if (v22)
  {
    v23 = 0x8F5C28F5C28F5C29 * ((v15 - *v14) >> 3) - v22;
    if (v23 < 1)
    {
      v25 = 19 - v23;
      v14 -= v25 / 0x14;
      v15 = *v14 + 200 * (20 * (v25 / 0x14) - v25) + 3800;
    }

    else
    {
      v14 += v23 / 0x14;
      v15 = *v14 + 200 * (v23 % 0x14);
    }
  }

  v26 = 0;
  while (1)
  {
    v27 = v26;
    v28 = v15;
    v29 = v14;
    v30 = a1[1006];
    v31 = a1[1009];
    v32 = (v30 + 8 * (v31 / 0x14));
    v33 = *v32;
    v34 = *v32 + 200 * (v31 % 0x14);
    v35 = a1[1007] == v30 ? 0 : v34;
    v36 = v35 - v33;
    v37 = 0x8F5C28F5C28F5C29 * ((v35 - v33) >> 3);
    if (v36 < -199)
    {
      v41 = 18 - v37;
      v39 = &v32[-(v41 / 0x14)];
      v40 = *v39 + 200 * (20 * (v41 / 0x14) - v41) + 3800;
    }

    else
    {
      v38 = v37 + 1;
      v39 = &v32[v38 / 0x14];
      v40 = *v39 + 200 * (v38 % 0x14);
    }

    if (v14 < v39 || v14 == v39 && (v15 == v40 || v15 < v40))
    {
      break;
    }

    if (*v14 == v15)
    {
      --v14;
      v15 = *(v29 - 1) + 4000;
    }

    v99 = (*(*v28 + 16))(v28);
    v100 = v42;
    *v45.i64 = CNTimeSpan::operator-(&v99, a2, v43, v44);
    *v47.i64 = fabs(v46 + *v45.i64);
    v101 = 0;
    v102 = 0.0;
    v48 = CNTimeSpan::SetTimeSpan(&v101, 0, v47, v45);
    v49 = v101;
    v50 = v102;
    v51 = *(v15 - 200);
    v15 -= 200;
    v52 = v102;
    v97 = (*(v51 + 16))(v15, v48);
    v98 = v53;
    *v56.i64 = CNTimeSpan::operator-(&v97, a2, v54, v55);
    *v58.i64 = fabs(v57 + *v56.i64);
    v101 = 0;
    v102 = 0.0;
    CNTimeSpan::SetTimeSpan(&v101, 0, v58, v56);
    if (v49 || (*&v52 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if ((v101 || (*&v102 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) && v49 != v101)
      {
        v26 = 1;
        if (v49 <= v101)
        {
          break;
        }
      }

      else
      {
        v26 = 1;
        if (v50 <= v102)
        {
          break;
        }
      }
    }

    else
    {
      v26 = 1;
      if (v50 <= v102)
      {
        break;
      }
    }
  }

  if (v27)
  {
    v59 = v28;
  }

  else
  {
    do
    {
      v59 = v28;
      v60 = a1[1009] + a1[1010];
      v61 = a1[1006];
      v62 = (v61 + 8 * (v60 / 0x14));
      v63 = *v62;
      v64 = *v62 + 200 * (v60 % 0x14);
      if (a1[1007] == v61)
      {
        v64 = 0;
      }

      v65 = v64 - v63;
      v66 = 0x8F5C28F5C28F5C29 * ((v64 - v63) >> 3);
      if (v65 < 201)
      {
        v70 = 20 - v66;
        v68 = &v62[-(v70 / 0x14)];
        v69 = *v68 + 200 * (20 * (v70 / 0x14) - v70) + 3800;
      }

      else
      {
        v67 = v66 - 1;
        v68 = &v62[v67 / 0x14];
        v69 = *v68 + 200 * (v67 % 0x14);
      }

      if (v29 >= v68 && (v29 != v68 || v28 >= v69))
      {
        break;
      }

      v28 += 200;
      if (v59 + 200 - *v29 == 4000)
      {
        v72 = v29[1];
        ++v29;
        v28 = v72;
      }

      v99 = (*(*v59 + 16))(v59);
      v100 = v73;
      *v76.i64 = CNTimeSpan::operator-(&v99, a2, v74, v75);
      *v78.i64 = fabs(v77 + *v76.i64);
      v101 = 0;
      v102 = 0.0;
      v79 = CNTimeSpan::SetTimeSpan(&v101, 0, v78, v76);
      v80 = v101;
      v81 = v102;
      v82 = v102;
      v97 = (*(*v28 + 16))(v28, v79);
      v98 = v83;
      *v86.i64 = CNTimeSpan::operator-(&v97, a2, v84, v85);
      *v88.i64 = fabs(v87 + *v86.i64);
      v101 = 0;
      v102 = 0.0;
      CNTimeSpan::SetTimeSpan(&v101, 0, v88, v86);
      if ((v80 || (*&v82 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) && (v101 || (*&v102 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL))
      {
        v89 = v80 <= v101;
        if (v80 != v101)
        {
          continue;
        }
      }

      v89 = v81 <= v102;
    }

    while (!v89);
  }

  v90 = *(v59 + 8);
  *(a3 + 24) = *(v59 + 24);
  *(a3 + 8) = v90;
  v91 = *(v59 + 40);
  v92 = *(v59 + 56);
  v93 = *(v59 + 72);
  *(a3 + 88) = *(v59 + 88);
  *(a3 + 72) = v93;
  *(a3 + 56) = v92;
  *(a3 + 40) = v91;
  v94 = *(v59 + 104);
  v95 = *(v59 + 120);
  v96 = *(v59 + 136);
  *(a3 + 152) = *(v59 + 152);
  *(a3 + 136) = v96;
  *(a3 + 120) = v95;
  *(a3 + 104) = v94;
  if (v59 != a3)
  {
    *(a3 + 168) = *(v59 + 168);
    *(a3 + 184) = *(v59 + 184);
  }

  return 1;
}

double sub_1D0E27100(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 0x100000003;
  *a1 = &unk_1F4CDEB28;
  *(a1 + 8) = xmmword_1D0E7DCC0;
  *(a1 + 32) = a1 + 40;
  *&result = *&sub_1D0BA5940(a2, a1);
  return result;
}

uint64_t sub_1D0E27188(uint64_t a1, uint64_t a2, int a3)
{
  v7 = 0x100000001;
  v5 = &unk_1F4CDF158;
  *&v3 = 0x100000001;
  *(&v3 + 1) = 0x100000001;
  v6 = v3;
  v8 = &v9;
  v9 = a3;
  return sub_1D0C4DC98(a1, a2, &v5, &unk_1EE054C98);
}

void sub_1D0E27404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_1D0B7CAB8(a11);
  }

  sub_1D0B7CAB8(v11);
  _Unwind_Resume(a1);
}

uint64_t raven::RavenDeviceAttitudeActiveObject::convertRvVarToQuaternionVar(raven::RavenDeviceAttitudeActiveObject *a1, const cnquaternion::CNQuaternion *a2, uint64_t a3, uint64_t a4)
{
  raven::RavenDeviceAttitudeActiveObject::RotationVectorFromQuaternion(&v97, a2);
  v94 = 0x100000003;
  v93 = xmmword_1D0E7DCC0;
  v92 = &unk_1F4CDEB28;
  v95 = v96;
  v104 = 0x100000134;
  v103 = xmmword_1D0E7DD20;
  v102 = &unk_1F4CDEC90;
  v105 = v106;
  v52 = 0x100000003;
  v51 = xmmword_1D0E7DCC0;
  v50 = &unk_1F4CDEB28;
  v53 = v54;
  sub_1D0BFB1AC(&v97, &v92, &v102, &v50, "2");
  v8 = v7;
  v9 = v7 * 0.5;
  v10 = fabs(v7 * 0.5);
  if (v10 == INFINITY || (v10 <= 0.01 ? (v13 = v9 * v9 / -6.0 + 1.0, v14 = v9 / -3.0) : (v12 = __sincos_stret(v9), v13 = v12.__sinval / v9, v14 = (v12.__cosval - v12.__sinval / v9) / v9), (*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL))
  {
    if (cnprint::CNPrinter::GetLogLevel(v6) <= 1)
    {
      LOWORD(v102) = 12;
      LOBYTE(v92) = 1;
      cnprint::CNPrinter::Print(&v102, &v92, "DevAtt,Invalid Quaternion Variance");
    }

    return 0;
  }

  else
  {
    if (v8 >= 0.05)
    {
      v15 = v14 * 0.25 / v8;
    }

    else
    {
      v15 = -0.0416666667;
    }

    v16 = v99;
    v17 = v98;
    v89 = 0x300000001;
    v84 = &unk_1F4CDF248;
    v90 = v91;
    v85 = v99;
    v86 = v98;
    v87 = v98 * v99;
    v88 = v99;
    if (v99)
    {
      v18 = 0;
      v19 = 0;
      v20 = v100;
      v21 = v101;
      do
      {
        v22 = v18;
        v23 = v19;
        for (i = v17; i; --i)
        {
          v91[v23] = *(v21 + 8 * v22);
          v23 += v16;
          ++v22;
        }

        ++v19;
        v18 += v20;
      }

      while (v19 != v16);
    }

    v47 = 0x300000003;
    v45 = &unk_1F4CD5DD0;
    v46 = xmmword_1D0E76C10;
    v48 = v49;
    sub_1D0B89390(&v97, &v84, &v45);
    v52 = 0x300000003;
    *&v25.f64[1] = 0x300000009;
    v51 = xmmword_1D0E76C10;
    v50 = &unk_1F4CD5DD0;
    v53 = v54;
    v25.f64[0] = v15;
    sub_1D0B8930C(&v45, &v50, v25);
    v70 = 0x300000003;
    v68 = &unk_1F4CD5DD0;
    v69 = xmmword_1D0E76C10;
    v73 = 0u;
    v74 = 0;
    v76 = 0u;
    v71 = &v72;
    v72 = 0x3FF0000000000000;
    v75 = 0x3FF0000000000000;
    v77 = 0;
    v78 = 0x3FF0000000000000;
    v81 = 0x300000003;
    v80 = xmmword_1D0E76C10;
    v79 = &unk_1F4CD5DD0;
    v82 = &v83;
    sub_1D0B8930C(&v68, &v79, COERCE_UNSIGNED_INT64(v13 * 0.5));
    v104 = 0x300000003;
    v103 = xmmword_1D0E76C10;
    v102 = &unk_1F4CD5DD0;
    v105 = v106;
    v26 = sub_1D0B88838(&v50, &v79, &v102);
    v27 = v99;
    v28 = v98;
    v60 = 0x300000001;
    v55 = &unk_1F4CDF248;
    v61 = v62;
    v56 = v99;
    v57 = v98;
    v58 = v98 * v99;
    v59 = v99;
    if (v99)
    {
      v29 = 0;
      v30 = 0;
      v31 = v100;
      v32 = v101;
      do
      {
        v33 = v29;
        v34 = v30;
        for (j = v28; j; --j)
        {
          v62[v34] = *(v32 + 8 * v33);
          v34 += v27;
          ++v33;
        }

        ++v30;
        v29 += v31;
      }

      while (v30 != v27);
    }

    v26.f64[0] = v13 * -0.25;
    v65 = 0x300000001;
    v64 = xmmword_1D0E7F310;
    v63 = &unk_1F4CDF248;
    v66 = &v67;
    sub_1D0B8930C(&v55, &v63, v26);
    v94 = 0x300000004;
    v93 = xmmword_1D0E7DCF0;
    v92 = &unk_1F4CDEC00;
    v95 = v96;
    sub_1D0BA59C4(&v102, &v63, &v92);
    v52 = 0x300000004;
    v51 = xmmword_1D0E7DCF0;
    v50 = &unk_1F4CDEC00;
    v53 = v54;
    sub_1D0B89390(&v92, a3, &v50);
    v36 = DWORD1(v93);
    v37 = v93;
    v47 = 0x400000003;
    v45 = &unk_1F4CDEC48;
    v48 = v49;
    *&v46 = __PAIR64__(v93, DWORD1(v93));
    DWORD2(v46) = v93 * DWORD1(v93);
    HIDWORD(v46) = DWORD1(v93);
    if (DWORD1(v93))
    {
      v38 = 0;
      v39 = 0;
      v40 = HIDWORD(v93);
      v41 = v95;
      do
      {
        v42 = v38;
        v43 = v39;
        for (k = v37; k; --k)
        {
          v49[v43] = *&v41[8 * v42];
          v43 += v36;
          ++v42;
        }

        ++v39;
        v38 += v40;
      }

      while (v39 != v36);
    }

    v104 = 0x400000004;
    v103 = xmmword_1D0E7DCD0;
    v102 = &unk_1F4CDEB70;
    v105 = v106;
    sub_1D0B89390(&v50, &v45, &v102);
    sub_1D0B894B0(a4, &v102);
    return 1;
  }
}

void raven::RavenDeviceAttitudeActiveObject::RotationVectorFromQuaternion(uint64_t *__return_ptr a1@<X8>, const cnquaternion::CNQuaternion *a2@<X1>)
{
  v9 = 0x100000003;
  v7 = &unk_1F4CDEB28;
  v10 = &v11;
  v8 = xmmword_1D0E7DCC0;
  v11 = *a2;
  v12 = *(a2 + 2);
  v25 = 0x100000003;
  v23 = &unk_1F4CDEB28;
  v24 = xmmword_1D0E7DCC0;
  v26 = &v27;
  v20 = 0x100000134;
  v18 = &unk_1F4CDEC90;
  v19 = xmmword_1D0E7DD20;
  v21 = &v22;
  v15 = 0x100000003;
  v13 = &unk_1F4CDEB28;
  v14 = xmmword_1D0E7DCC0;
  v16 = &v17;
  sub_1D0BFB1AC(&v7, &v23, &v18, &v13, "2");
  v4 = v5.f64[0];
  v5.f64[0] = 2.0;
  if (v4 > 0.01)
  {
    v6 = atan(v4 / *(a2 + 3));
    v5.f64[0] = 1.0 / (sin(v6) / v6 * 0.5);
  }

  a1[3] = 0x100000003;
  *a1 = &unk_1F4CDEB28;
  *(a1 + 1) = xmmword_1D0E7DCC0;
  a1[4] = (a1 + 5);
  sub_1D0B8930C(&v7, a1, v5);
}

uint64_t raven::RavenDeviceAttitudeActiveObject::DeriveGravityVectorInEcefAndBody(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double *a5)
{
  v34 = *MEMORY[0x1E69E9840];
  if (*(a1 + 8144) != 1)
  {
    return 0;
  }

  v27 = 0x100000003;
  v26 = xmmword_1D0E7DCC0;
  v25 = &unk_1F4CDEB28;
  v28 = v29;
  v22 = 0x100000134;
  v20 = &unk_1F4CDEC90;
  v21 = xmmword_1D0E7DD20;
  v23 = v24;
  v17 = 0x100000003;
  v15 = &unk_1F4CDEB28;
  v16 = xmmword_1D0E7DCC0;
  v18 = v19;
  sub_1D0BFB1AC(a1 + 7824, &v25, &v20, &v15, "2");
  if (fabs(v10) <= 0.000000015)
  {
    return 0;
  }

  v11 = *(a2 + 32);
  *&v29[24] = *v11;
  v30 = *(v11 + 16);
  v25 = 0;
  if (sub_1D0BF9390(a1 + 3912))
  {
    return 0;
  }

  v12 = *(a3 + 32);
  *v12 = -v31;
  v12[1] = -v32;
  v12[2] = -v33;
  v27 = 0x100000003;
  v26 = xmmword_1D0E7DCC0;
  v25 = &unk_1F4CDEB28;
  v28 = v29;
  v22 = 0x100000134;
  v20 = &unk_1F4CDEC90;
  v21 = xmmword_1D0E7DD20;
  v23 = v24;
  v17 = 0x100000003;
  v15 = &unk_1F4CDEB28;
  v16 = xmmword_1D0E7DCC0;
  v18 = v19;
  sub_1D0BFB1AC(a3, &v25, &v20, &v15, "2");
  if (fabs(v13) <= 0.000000015)
  {
    return 0;
  }

  sub_1D0B894B0(a4, a1 + 7824);
  *a5 = sqrt(*(a1 + 296) * *(a1 + 296) + *(a1 + 288) * *(a1 + 288) + *(a1 + 304) * *(a1 + 304)) / 9.80665;
  return 1;
}

uint64_t raven::RavenDeviceAttitudeActiveObject::UpdateDeviceVehicleAttitude(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, double a6)
{
  if ((atomic_load_explicit(&qword_1EE054C78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE054C78))
  {
    qword_1EE054C70 = 0x3FE6A09E667F3BCDLL;
    __cxa_guard_release(&qword_1EE054C78);
  }

  if ((atomic_load_explicit(&qword_1EE054C80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE054C80))
  {
    sub_1D0D76BD4(3, 1, &unk_1EE054D10);
    __cxa_atexit(sub_1D0D24D20, &unk_1EE054D10, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE054C80);
  }

  v116 = 0x100000003;
  v115 = xmmword_1D0E7DCC0;
  v114 = &unk_1F4CDEB28;
  v117 = &v118;
  v139 = 0x100000134;
  v138 = xmmword_1D0E7DD20;
  v137 = &unk_1F4CDEC90;
  v140 = v141;
  v111 = 0x100000003;
  v110 = xmmword_1D0E7DCC0;
  v109 = COERCE_DOUBLE(&unk_1F4CDEB28);
  v112 = v113;
  sub_1D0BFB1AC(a2, &v114, &v137, &v109, "2");
  if (fabs(v9) <= 0.000000015)
  {
    return 0;
  }

  sub_1D0BBA094(v134, a3);
  v116 = 0x100000003;
  v115 = xmmword_1D0E7DCC0;
  v114 = &unk_1F4CDEB28;
  v117 = &v118;
  v139 = 0x100000134;
  v138 = xmmword_1D0E7DD20;
  v137 = &unk_1F4CDEC90;
  v140 = v141;
  v111 = 0x100000003;
  v110 = xmmword_1D0E7DCC0;
  v109 = COERCE_DOUBLE(&unk_1F4CDEB28);
  v112 = v113;
  sub_1D0BFB1AC(v134, &v114, &v137, &v109, "2");
  if (fabs(v10.f64[0]) <= 0.000000015)
  {
    return 0;
  }

  v139 = 0x100000003;
  v138 = xmmword_1D0E7DCC0;
  v137 = &unk_1F4CDEB28;
  v140 = v141;
  v10.f64[0] = 1.0 / v10.f64[0];
  sub_1D0B8930C(v134, &v137, v10);
  sub_1D0B894B0(v134, &v137);
  v131 = 0x100000003;
  v12 = v133;
  v129[3] = &unk_1F4CDEB28;
  v132 = v133;
  v14.i64[1] = 0x300000003;
  v130 = xmmword_1D0E7DCC0;
  v133[1] = 0;
  v133[0] = 0;
  v133[2] = 0x3FF0000000000000;
  v13 = v135;
  v14.i64[0] = 0;
  if (v135 >= 1)
  {
    v15 = v136;
    do
    {
      v16 = *v15++;
      v11.i64[0] = v16;
      v17 = *v12++;
      *v14.i64 = *v14.i64 + *v11.i64 * v17;
      --v13;
    }

    while (v13);
  }

  if ((*(a1 + 6721) & 1) == 0)
  {
    *v14.i64 = fabs(*v14.i64);
    v11.i64[0] = qword_1EE054C70;
    if (*v14.i64 < *&qword_1EE054C70)
    {
      v106 = 0x100000003;
      v104 = &unk_1F4CDEB28;
      v107 = v108;
      v105 = xmmword_1D0E7DCC0;
      memset(v108, 0, 24);
      if (*(a1 + 8144) == 1)
      {
        sub_1D0B894B0(&v104, a1 + 7824);
        v18 = *(*(a1 + 232) + 1160);
        v19 = *(a1 + 288);
        v20 = *(a1 + 296);
        v21 = *(a1 + 304);
        v116 = 0x100000003;
        v115 = xmmword_1D0E7DCC0;
        v114 = &unk_1F4CDEB28;
        v117 = &v118;
        v139 = 0x100000134;
        v138 = xmmword_1D0E7DD20;
        v137 = &unk_1F4CDEC90;
        v140 = v141;
        v111 = 0x100000003;
        v110 = xmmword_1D0E7DCC0;
        v109 = COERCE_DOUBLE(&unk_1F4CDEB28);
        v112 = v113;
        sub_1D0BFB1AC(&v104, &v114, &v137, &v109, "2");
        if (fabs(v22.f64[0]) > 0.000000015)
        {
          v139 = 0x100000003;
          v138 = xmmword_1D0E7DCC0;
          v137 = &unk_1F4CDEB28;
          v140 = v141;
          v22.f64[0] = 1.0 / v22.f64[0];
          sub_1D0B8930C(&v104, &v137, v22);
          v23 = sqrt((v20 * v20 + v19 * v19 + v21 * v21) / 9.80665 / 9.80665 + v18 * 0.0174532925 * (v18 * 0.0174532925));
          sub_1D0B894B0(&v104, &v137);
          if (raven::RavenDeviceAttitudeActiveObject::AttitudeViaTwoVectors(v24))
          {
            sub_1D0BFA9C4(3, 3, &v137);
            sub_1D0B894B0(a1 + 792, &v137);
            sub_1D0BFA9C4(3, 3, &v137);
            sub_1D0B894B0(a1 + 536, &v137);
            raven::RavenDeviceAttitudeActiveObject::UDFactor3x3(v25, a1 + 648, a1 + 792, a1 + 536);
            *(a1 + 904) = *a4;
            *(a1 + 6721) = 1;
            *(a1 + 7320) = 0;
            cnrotation::CNRotation::RotationMatrix(&v137, (a1 + 760));
            if (cnprint::CNPrinter::GetLogLevel(v26) <= 1)
            {
              LOWORD(v114) = 12;
              LOBYTE(v109) = 1;
              v27 = &v140[SHIDWORD(v138)];
              v28 = *v27;
              v29 = v27[1];
              v30 = v27[2];
              v31 = *(a1 + 680);
              v32 = *(a1 + 668);
              v33 = &v31[v32];
              v34 = *(a3 + 32);
              v35 = *v34;
              v36 = v34[2];
              v37 = *(a2 + 32);
              cnprint::CNPrinter::Print(&v114, &v109, "DevAtt,Device-Vehicle Attitude Initialization,t,%lf,type,%hu,Rb2v,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,Pb2v,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,aVx,%.3lf,aVy,%.3lf,aVz,%.3lf,aBx,%.3lf,aBy,%.3lf,aBz,%.3lf,aUnc,%.3lf,rVx,%.3lf,rVy,%.3lf,rVz,%.3lf,rBx,%.3lf,rBy,%.3lf,rBz,%.3lf,rUnc,%.3lf", *(a4 + 8) + *a4, a5, *v140, v28, v140[2 * SHIDWORD(v138)], v140[1], v29, v140[(2 * HIDWORD(v138)) | 1], v140[2], v30, v140[2 * SHIDWORD(v138) + 2], *v31, *v33, v31[2 * v32], v31[1], v33[1], v31[((2 * v32) | 1)], v31[2], v33[2], v31[2 * v32 + 2], *&v35, *(&v35 + 1), v36, *v37, v37[1], v37[2], a6, *v132, v132[1], v132[2], *v107, v107[1], v107[2], v23);
            }

            return 1;
          }
        }
      }

      return 0;
    }
  }

  if (!*(a1 + 6721))
  {
    return 0;
  }

  v39 = CNTimeSpan::operator-(a4, (a1 + 904), v14, v11);
  v41.f64[0] = (v40 + v39) * (*(*(a1 + 232) + 1168) * *(*(a1 + 232) + 1168) * 0.0174532925 * 0.0174532925);
  v127 = 0x100000003;
  v126 = xmmword_1D0E7DCC0;
  v125 = &unk_1F4CDEB28;
  v128 = v129;
  sub_1D0B8930C(&unk_1EE054D10, &v125, v41);
  v116 = 0x300000003;
  v114 = &unk_1F4CD5DD0;
  v117 = &v118;
  v115 = xmmword_1D0E76C10;
  v119 = 0u;
  v120 = 0;
  v122 = 0u;
  v118 = 0x3FF0000000000000;
  v121 = 0x3FF0000000000000;
  v123 = 0;
  v124 = 0x3FF0000000000000;
  v42 = raven::RavenDeviceAttitudeActiveObject::ThorntonTemporalUpdate(a1, &v114, &v125);
  if (!v42)
  {
    if (cnprint::CNPrinter::GetLogLevel(v42) <= 1)
    {
      LOWORD(v137) = 12;
      LOBYTE(v109) = 1;
      cnprint::CNPrinter::Print(&v137, &v109, "DevAtt, reset Device-Vehicle filter for invalid propagation,time,%lf,type,%hu", *(a4 + 8) + *a4, a5);
    }

    v38 = 0;
    goto LABEL_39;
  }

  v111 = 0x300000003;
  v110 = xmmword_1D0E76C10;
  v109 = COERCE_DOUBLE(&unk_1F4CD5DD0);
  v112 = v113;
  sub_1D0B89390(a1 + 792, a1 + 536, &v109);
  v43 = *(a1 + 804);
  v44 = *(a1 + 800);
  v106 = 0x300000003;
  v104 = &unk_1F4CD5DD0;
  *&v105 = __PAIR64__(v44, v43);
  DWORD2(v105) = v44 * v43;
  HIDWORD(v105) = v43;
  v107 = v108;
  sub_1D0BD2018(a1 + 792, &v104);
  v139 = 0x300000003;
  v138 = xmmword_1D0E76C10;
  v137 = &unk_1F4CD5DD0;
  v140 = v141;
  sub_1D0B89390(&v109, &v104, &v137);
  sub_1D0B894B0(a1 + 648, &v137);
  *(a1 + 904) = *a4;
  cnrotation::Inv(v103, (a1 + 760));
  sub_1D0B88A54(v103, a3, &v137);
  sub_1D0C51690(v101, &v137);
  v111 = 0x100000003;
  v110 = xmmword_1D0E7DCC0;
  v109 = COERCE_DOUBLE(&unk_1F4CDEB28);
  v112 = v113;
  v139 = 0x100000134;
  v138 = xmmword_1D0E7DD20;
  v137 = &unk_1F4CDEC90;
  v140 = v141;
  v106 = 0x100000003;
  v105 = xmmword_1D0E7DCC0;
  v104 = &unk_1F4CDEB28;
  v107 = v108;
  sub_1D0BFB1AC(a2, &v109, &v137, &v104, "2");
  v98 = 0x100000003;
  v97 = xmmword_1D0E7DCC0;
  v96 = &unk_1F4CDEB28;
  v99 = &v100;
  v46.f64[0] = 1.0 / v45;
  sub_1D0B8930C(a2, &v96, v46);
  v93 = 0x100000003;
  v92 = xmmword_1D0E7DCC0;
  v91 = &unk_1F4CDEB28;
  v94 = &v95;
  sub_1D0BA5A78(&v96, v101, &v91);
  v47 = DWORD2(v97);
  v48 = 0.0;
  v49 = 0.0;
  if (SDWORD2(v97) >= 1)
  {
    v50 = v99;
    v51 = v102;
    do
    {
      v52 = *v50++;
      v53 = v52;
      v54 = *v51++;
      v49 = v49 + v53 * v54;
      --v47;
    }

    while (v47);
  }

  v56 = fabs(acos(v49));
  v57 = *(a1 + 656);
  if (v57 >= 1)
  {
    v58 = 0;
    v48 = 0.0;
    do
    {
      v48 = v48 + *(*(a1 + 680) + 8 * v58);
      v58 += *(a1 + 668) + 1;
      --v57;
    }

    while (v57);
  }

  v59 = sqrt(v48) * *(*(a1 + 232) + 1184);
  if (v59 > 0.523598776)
  {
    v59 = 0.523598776;
  }

  v38 = v56 <= v59;
  if (v56 <= v59)
  {
    *(a1 + 7320) = 0;
    sub_1D0E24888(&v137, *v102, v102[1], v102[2]);
    v60.f64[0] = a6 * a6;
    sub_1D0C51FB4(&unk_1EE054D10, v90, v60);
    raven::RavenDeviceAttitudeActiveObject::biermanObservationalUpdate3X3(a1, &v137, v90, &v91, v89);
    raven::RavenDeviceAttitudeActiveObject::QuaternionFromRotationVector(&v104, v89);
    v88[0] = v103[0];
    v88[1] = v103[1];
    cnquaternion::CNQuaternion::operator*(&v104, v88, &v109);
    v61 = sqrt(*&v110 * *&v110 + v109 * v109 + *(&v110 + 1) * *(&v110 + 1) + *&v111 * *&v111);
    v62 = 1.0;
    v63 = 0.0;
    v64 = 0.0;
    v65 = 0.0;
    v66 = 0.0;
    v67 = 1.0;
    if (fabs(v61) >= 2.22044605e-16)
    {
      v64 = v109 / v61;
      v65 = *&v110 / v61;
      v66 = *(&v110 + 1) / v61;
      v67 = *&v111 / v61;
    }

    v68 = sqrt(v65 * v65 + v64 * v64 + v66 * v66 + v67 * v67);
    v69 = 0.0;
    v70 = 0.0;
    if (fabs(v68) >= 2.22044605e-16)
    {
      v63 = -v64 / v68;
      v69 = -v65 / v68;
      v70 = -v66 / v68;
      v62 = v67 / v68;
    }

    *(a1 + 760) = v63;
    *(a1 + 768) = v69;
    *(a1 + 776) = v70;
    *(a1 + 784) = v62;
    sub_1D0C1B688(a1 + 792, a1 + 536, &v104);
    sub_1D0C1B708(a1 + 792, v88);
    sub_1D0C1B688(&v104, v88, &v109);
    sub_1D0B894B0(a1 + 648, &v109);
    cnrotation::CNRotation::RotationMatrix(&v109, (a1 + 760));
    if (cnprint::CNPrinter::GetLogLevel(v71) <= 1)
    {
      LOWORD(v104) = 12;
      LOBYTE(v88[0]) = 1;
      v72 = &v112[SHIDWORD(v110)];
      v73 = *v72;
      v74 = v72[1];
      v75 = v72[2];
      v76 = *(a1 + 680);
      v77 = *(a1 + 668);
      v78 = &v76[v77];
      v79 = *(a3 + 32);
      v80 = *v79;
      v81 = v79[2];
      v82 = *(a2 + 32);
      cnprint::CNPrinter::Print(&v104, v88, "DevAtt,Device-Vehicle Attitude Updated,t,%lf,type,%hu,Rb2v,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,Pb2v,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,aVx,%.3lf,aVy,%.3lf,aVz,%.3lf,aBx,%.3lf,aBy,%.3lf,aBz,%.3lf,aUnc,%.3lf", *(a4 + 8) + *a4, a5, *v112, v73, v112[2 * SHIDWORD(v110)], v112[1], v74, v112[(2 * HIDWORD(v110)) | 1], v112[2], v75, v112[2 * SHIDWORD(v110) + 2], *v76, *v78, v76[2 * v77], v76[1], v78[1], v76[((2 * v77) | 1)], v76[2], v78[2], v76[2 * v77 + 2], *&v80, *(&v80 + 1), v81, *v82, v82[1], v82[2], a6);
    }
  }

  else
  {
    ++*(a1 + 7320);
    LogLevel = cnprint::CNPrinter::GetLogLevel(v55);
    if (LogLevel <= 1)
    {
      LOWORD(v137) = 12;
      LOBYTE(v109) = 1;
      cnprint::CNPrinter::Print(&v137, &v109, "DevAtt, Too large Estimated-Observed Attitude Innovation,time,%lf,type,%hu,outRangeCount,%u", *(a4 + 8) + *a4, a5, *(a1 + 7320));
    }

    if (*(a1 + 7320) >= *(*(a1 + 232) + 1192))
    {
      if (cnprint::CNPrinter::GetLogLevel(LogLevel) <= 1)
      {
        LOWORD(v137) = 12;
        LOBYTE(v109) = 1;
        cnprint::CNPrinter::Print(&v137, &v109, "DevAtt,t,%lf,reset Device-Vehicle filter for consecutive %u out of range measurements", *(a4 + 8) + *a4, *(a1 + 7320));
      }

LABEL_39:
      *(a1 + 7320) = 0;
      *(a1 + 6721) = 0;
    }
  }

  return v38;
}

BOOL raven::RavenDeviceAttitudeActiveObject::DualDirSmooth(uint64_t a1, char **a2, double a3)
{
  v3 = a2[1];
  v4 = *a2;
  if (*a2 != v3)
  {
    v5 = a3 < 0.0 || ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE;
    if (!v5 || (*&a3 - 1) <= 0xFFFFFFFFFFFFELL)
    {
      v8 = 1.0 / *(*(a1 + 232) + 1144);
      v9 = (COERCE__INT64(fabs(v8)) - 0x10000000000000) >> 53;
      v10 = v8 < 0.0 || v9 > 0x3FE;
      if (!v10 || (*&v8 - 1) <= 0xFFFFFFFFFFFFELL)
      {
        v13 = 0;
        v7 = 1.0 / *(*(a1 + 232) + 1144);
        v14 = 1.0 / v7 / (1.0 / (a3 * 6.28318531) + 1.0 / v7);
        v43 = 0u;
        v44 = 0u;
        v42 = 0u;
        v15 = 1.0 - v14;
        v16 = 0.0;
        do
        {
          v17 = *(v3 - 1);
          v3 -= 8;
          v18 = v17;
          v19 = v15 * v16 + v14 * v17;
          if (v13)
          {
            v16 = v19;
          }

          else
          {
            v16 = v18;
          }

          v41 = v16;
          sub_1D0C56108(&v42, &v41);
          v13 = 1;
        }

        while (v3 != v4);
        v20 = *a2;
        v21 = (a2[1] - *a2) >> 3;
        v22 = v21 == *(&v44 + 1);
        if (v21 != *(&v44 + 1))
        {
          goto LABEL_45;
        }

        v23 = v44 >> 9;
        v24 = (*(&v42 + 1) + 8 * (v44 >> 9));
        if (v43 == *(&v42 + 1))
        {
          if (v23 != (v44 + *(&v44 + 1)) >> 9)
          {
            v29 = 0;
            v26 = 0;
            v28 = (*(&v42 + 1) + 8 * ((v44 + *(&v44 + 1)) >> 9));
            v25 = *v24;
            goto LABEL_37;
          }
        }

        else
        {
          v25 = *v24;
          v26 = (*v24 + 8 * (v44 & 0x1FF));
          v27 = (v44 + *(&v44 + 1)) >> 9;
          v28 = (*(&v42 + 1) + 8 * v27);
          v29 = *v28 + 8 * ((v44 + *(&v44 + 1)) & 0x1FF);
          if (v26 != v29)
          {
            v30 = 0;
            v31 = 0.0;
            v32 = *v24;
            v33 = *(&v42 + 1) + 8 * (v44 >> 9);
            v34 = (*v24 + 8 * (v44 & 0x1FF));
            do
            {
              v31 = v15 * v31 + v14 * *v34;
              if ((v30 & 1) == 0)
              {
                v31 = *v34;
              }

              *v34++ = v31;
              if (v34 - v32 == 4096)
              {
                v35 = *(v33 + 8);
                v33 += 8;
                v32 = v35;
                v34 = v35;
              }

              v30 = 1;
            }

            while (v34 != v29);
            if (v23 == v27)
            {
              goto LABEL_43;
            }

            goto LABEL_37;
          }

          if (v23 != v27)
          {
LABEL_37:
            v37 = v25 + 512;
            v38 = v37 - v26;
            if (v37 != v26)
            {
              memmove(v20, v26, v37 - v26);
            }

            v20 += v38;
            for (i = (v24 + 1); i != v28; ++i)
            {
              v40 = *i;
              memmove(v20, v40, 0x1000uLL);
              v20 += 4096;
            }

            v26 = *v28;
LABEL_43:
            if (v26 != v29)
            {
              memmove(v20, v26, v29 - v26);
            }
          }
        }

LABEL_45:
        sub_1D0C56D94(&v42);
        return v22;
      }
    }
  }

  return 0;
}

void sub_1D0E291C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1D0C56D94(va);
  _Unwind_Resume(a1);
}

BOOL raven::RavenDeviceAttitudeActiveObject::IsDecelerationToStop(raven::RavenDeviceAttitudeActiveObject *this)
{
  v5 = *(this + 951);
  if (v5 < 2)
  {
    return 0;
  }

  v42[331] = v4;
  v42[332] = v3;
  v42[343] = v1;
  v42[344] = v2;
  v8 = (*(*(this + 947) + (((v5 + *(this + 950) - 1) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 2656 * ((v5 + *(this + 1900) - 1) & 0xF));
  v9 = sqrt(v8[195] * v8[195] + v8[194] * v8[194] + v8[196] * v8[196]);
  if (v9 > 1.0)
  {
    return 0;
  }

  v10 = (*(*v8 + 16))(v8);
  v12 = v11;
  v13 = v11;
  sub_1D0BAD0C8(v41);
  v14 = *(this + 950) + *(this + 951);
  v15 = *(this + 947);
  v16 = (v15 + 8 * (v14 >> 4));
  v17 = *(this + 948);
  v18 = v17 == v15 ? 0 : *v16 + 2656 * (v14 & 0xF);
  v19 = v10 || (*&v12 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
  v20 = !v19;
  while (1)
  {
    v21 = v17 == v15 ? 0 : *(v15 + ((*(this + 950) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 2656 * (*(this + 950) & 0xFLL);
    if (v21 == v18)
    {
      break;
    }

    v22 = v18;
    if (v18 == *v16)
    {
      v22 = *(v16 - 1) + 42496;
    }

    v40[0] = (*(*(v22 - 2656) + 16))();
    v40[1] = v23;
    v39[0] = 0;
    v39[1] = 0x3FECCCCCCCCCCCCDLL;
    v26 = CNTimeSpan::operator+(v40, v39, v24, v25);
    if (v20 || !v26 && (*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v28 = v10 <= v26, v10 == v26))
    {
      v28 = v13 <= v27;
    }

    if (!v28)
    {
      if (v18 == *v16)
      {
        v18 = *(v16 - 1) + 42496;
      }

      memcpy(v42, (v18 - 2648), 0xA51uLL);
      break;
    }

    if (v18 == *v16)
    {
      v29 = *--v16;
      v18 = v29 + 42496;
    }

    v18 -= 2656;
    v15 = *(this + 947);
    v17 = *(this + 948);
  }

  if (LOBYTE(v42[192]) != 1 || sqrt(v42[194] * v42[194] + v42[193] * v42[193] + v42[195] * v42[195]) > 1.0)
  {
    return 0;
  }

  v30 = *(this + 947);
  if (*(this + 948) == v30 || (v31 = *(this + 950), v32 = (v30 + 8 * (v31 >> 4)), v33 = *v32, v34 = &(*v32)[332 * (v31 & 0xF)], v35 = *(v30 + (((*(this + 951) + v31) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 2656 * ((*(this + 1902) + v31) & 0xF), v34 == v35))
  {
    v36 = -INFINITY;
  }

  else
  {
    v36 = -INFINITY;
    do
    {
      v37 = sqrt(v34[195] * v34[195] + v34[194] * v34[194] + v34[196] * v34[196]);
      if (v36 < v37)
      {
        v36 = v37;
      }

      v34 += 332;
      if (v34 - v33 == 42496)
      {
        v38 = v32[1];
        ++v32;
        v33 = v38;
        v34 = v38;
      }
    }

    while (v34 != v35);
  }

  return vabdd_f64(v36, v9) >= *(*(this + 29) + 1056);
}

BOOL raven::RavenDeviceAttitudeActiveObject::IsMovementStraight(raven::RavenDeviceAttitudeActiveObject *this)
{
  v23[0] = 0;
  v24 = 0u;
  memset(v25, 0, sizeof(v25));
  v20[0] = 0;
  v21 = 0u;
  memset(v22, 0, sizeof(v22));
  v17[0] = 0;
  v18 = 0u;
  memset(v19, 0, sizeof(v19));
  v2 = *(this + 832);
  v3 = 0.0;
  if (*(this + 833) == v2)
  {
    v8 = 0.0;
    v9 = 0.0;
  }

  else
  {
    v4 = *(this + 835);
    v5 = (v2 + 8 * (v4 / 0x1A));
    v6 = (*v5 + 152 * (v4 % 0x1A));
    v7 = *(v2 + 8 * ((*(this + 836) + v4) / 0x1A)) + 152 * ((*(this + 836) + v4) % 0x1A);
    v8 = 0.0;
    v9 = 0.0;
    if (v6 != v7)
    {
      do
      {
        sub_1D0B8954C(v23, v6 + 13, 1.0);
        sub_1D0B8954C(v20, v6 + 14, 1.0);
        sub_1D0B8954C(v17, v6 + 15, 1.0);
        v6 += 19;
        if ((v6 - *v5) == 3952)
        {
          v10 = v5[1];
          ++v5;
          v6 = v10;
        }
      }

      while (v6 != v7);
      v9 = *&v25[20];
      v8 = *&v22[20];
      v3 = *&v19[20];
    }
  }

  v11 = *(this + 29);
  v12 = *(v11 + 1104) * 0.0174532925 * 0.0174532925;
  v14 = v9 < v12 && v8 < v12 && v3 < v12;
  if (v14 && (v15 = *(v11 + 1096) * 0.0174532925, fabs(*&v25[4]) < v15) && fabs(*&v22[4]) < v15)
  {
    return fabs(*&v19[4]) < v15;
  }

  else
  {
    return 0;
  }
}

double sub_1D0E296D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 8) == 1 && *(a2 + 8) == 3 && *(a2 + 12) == 1)
  {
    v16 = v3;
    v17 = v4;
    v8 = *(a2 + 32);
    v14 = *v8;
    v15 = *(v8 + 2);
    result = sub_1D0BED7A0(a1, &v14, v13);
    if (v10)
    {
      v11 = 0;
      *(a3 + 8) = xmmword_1D0E7DCC0;
      v12 = *(a3 + 32);
      do
      {
        result = v13[v11];
        *(v12 + v11 * 8) = result;
        ++v11;
      }

      while (v11 != 3);
    }
  }

  return result;
}

void raven::RavenDeviceAttitudeActiveObject::QuaternionFromRotationVector(float64x2_t *__return_ptr a1@<X8>, uint64_t a2@<X1>)
{
  v24 = 0x100000003;
  v22 = &unk_1F4CDEB28;
  v23 = xmmword_1D0E7DCC0;
  v25 = &v26;
  v19 = 0x100000134;
  v17 = &unk_1F4CDEC90;
  v18 = xmmword_1D0E7DD20;
  v20 = &v21;
  v14 = 0x100000003;
  v12 = &unk_1F4CDEB28;
  v13 = xmmword_1D0E7DCC0;
  v15 = &v16;
  sub_1D0BFB1AC(a2, &v22, &v17, &v12, "2");
  v5 = v4 * 0.5;
  v6 = fabs(v4 * 0.5);
  if (v6 == INFINITY)
  {
    v7 = NAN;
  }

  else if (v6 <= 0.01)
  {
    v7 = v5 * v5 / -6.0 + 1.0;
  }

  else
  {
    v7 = sin(v5) / v5;
  }

  v11 = v7 * 0.5;
  v8 = *(a2 + 32);
  v9 = v7 * 0.5 * v8[1].f64[0];
  v10 = cos(v5);
  *a1 = vmulq_n_f64(*v8, v11);
  a1[1].f64[0] = v9;
  a1[1].f64[1] = v10;
}

void raven::RavenDeviceAttitudeActiveObject::ResetWahbaSolver(raven::RavenDeviceAttitudeActiveObject *this)
{
  *(this + 453) = 0u;
  v2 = *(this + 1006);
  v3 = *(this + 1007);
  if (v3 == v2)
  {
    v6 = (this + 8080);
    v3 = *(this + 1006);
  }

  else
  {
    v4 = *(this + 1009);
    v5 = &v2[v4 / 0x14];
    v6 = (this + 8080);
    v7 = v2[(*(this + 1010) + v4) / 0x14] + 200 * ((*(this + 1010) + v4) % 0x14);
    if (*v5 + 200 * (v4 % 0x14) != v7)
    {
      v8 = (*v5 + 200 * (v4 % 0x14));
      do
      {
        v9 = *v8;
        v8 += 25;
        (*v9)();
        if (v8 - *v5 == 4000)
        {
          v10 = v5[1];
          ++v5;
          v8 = v10;
        }
      }

      while (v8 != v7);
      v3 = *(this + 1007);
      v2 = *(this + 1006);
    }
  }

  *v6 = 0;
  v11 = v3 - v2;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v2);
      v2 = (*(this + 1006) + 8);
      *(this + 1006) = v2;
      v11 = (*(this + 1007) - v2) >> 3;
    }

    while (v11 > 2);
  }

  if (v11 == 1)
  {
    v12 = 10;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_16;
    }

    v12 = 20;
  }

  *(this + 1009) = v12;
LABEL_16:
  *(this + 4044) = 1;
  v13 = *(this + 1013);
  v14 = *(this + 1014);
  *(this + 1017) = 0;
  v15 = (v14 - v13) >> 3;
  if (v15 >= 3)
  {
    do
    {
      operator delete(*v13);
      v13 = (*(this + 1013) + 8);
      *(this + 1013) = v13;
      v15 = (*(this + 1014) - v13) >> 3;
    }

    while (v15 > 2);
  }

  if (v15 == 1)
  {
    v16 = 64;
  }

  else
  {
    if (v15 != 2)
    {
      return;
    }

    v16 = 128;
  }

  *(this + 1016) = v16;
}

BOOL raven::RavenDeviceAttitudeActiveObject::ThorntonTemporalUpdate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = 0;
  v50 = 0x300000003;
  v48 = &unk_1F4CD5DD0;
  v49 = xmmword_1D0E76C10;
  v51 = v52;
  do
  {
    v5 = 0;
    v6 = *(a2 + 20);
    v7 = *(a2 + 32);
    do
    {
      if (v5)
      {
        v8 = 0;
        v9 = v4 + v6 * v5;
        v10 = *(v7 + 8 * v9);
        v11 = *(a1 + 824) + 8 * *(a1 + 812) * v5;
        v12 = (v7 + v3);
        do
        {
          v10 = v10 + *v12 * *(v11 + 8 * v8);
          *(v7 + 8 * v9) = v10;
          ++v8;
          v12 += v6;
        }

        while (v5 != v8);
      }

      v52[3 * v5++ + v4] = 0;
    }

    while (v5 != 3);
    v52[4 * v4++] = 0x3FF0000000000000;
    v3 += 8;
  }

  while (v4 != 3);
  v45 = 0x100000003;
  v43 = &unk_1F4CDEB28;
  v44 = xmmword_1D0E7DCC0;
  v46 = v47;
  v13 = *(a1 + 556) + 1;
  v14 = *(a1 + 568);
  v15 = *(a3 + 32);
  v16 = *(a2 + 20);
  v17 = *(a2 + 32);
  v18 = 2;
  for (i = 7; ; --i)
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    *&v47[8 * v18] = 0;
    v23 = 0.0;
    v24 = i * 8;
    do
    {
      v25 = v23 + *(v7 + 8 * v18 + 8 * v20) * *(v7 + 8 * v18 + 8 * v20) * *(v14 + 8 * v21);
      *&v47[8 * v18] = v25;
      v23 = v25 + *(&v48 + v24) * *(&v48 + v24) * *(v15 + v22);
      *&v47[8 * v18] = v23;
      v24 += 24;
      v22 += 8;
      v21 += v13;
      v20 += v6;
    }

    while (v22 != 24);
    if (v23 <= 0.0)
    {
      break;
    }

    if (!v18)
    {
      v38 = 0;
      for (j = 0; j != 24; j += 8)
      {
        *(v14 + 8 * v38) = *&v47[j];
        v38 += v13;
      }

      return v23 > 0.0;
    }

    v26 = 0;
    v27 = *(a1 + 824) + 8 * v18 * *(a1 + 812);
    v28 = 5;
    do
    {
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0.0;
      v33 = &v48;
      do
      {
        v34 = *&v33[v28] * *(v15 + v31);
        v31 += 8;
        v32 = v32 + *(v17 + 8 * v26 + 8 * v29) * *(v14 + 8 * v30) * *(v17 + 8 * v18 + 8 * v29) + v34 * *&v33[i];
        v33 += 3;
        v30 += v13;
        v29 += v16;
      }

      while (v31 != 24);
      *(v27 + 8 * v26) = v32 / *&v47[8 * v18];
      v35 = &v48;
      v36 = v17;
      v37 = 3;
      do
      {
        *(v36 + v28 * 8 - 40) = *(v36 + v28 * 8 - 40) - *(v27 + 8 * v26) * *(v36 + i * 8 - 40);
        *&v35[v28] = *&v35[v28] - *(v27 + 8 * v26) * *&v35[i];
        v35 += 3;
        v36 += 8 * v16;
        --v37;
      }

      while (v37);
      ++v26;
      ++v28;
    }

    while (v26 != v18);
    --v18;
  }

  if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
  {
    v42 = 12;
    v41 = 1;
    cnprint::CNPrinter::Print(&v42, &v41, "D(%d) <= 0, matrix ! positive definite", v18);
  }

  return v23 > 0.0;
}

uint64_t raven::RavenDeviceAttitudeActiveObject::UDFactor3x3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = *(a2 + 20);
  v6 = *(a2 + 32);
  v7 = 3;
  v8 = 2;
  v9 = 16;
  v10 = 24;
  do
  {
    v11 = 0;
    v12 = v8;
    v13 = *(a3 + 20);
    v14 = *(a3 + 32);
    v15 = *(a4 + 20) + 1;
    v16 = *(a4 + 32);
    v17 = v15 * v8;
    v18 = v12 + v12 * v13;
    v19 = v6 + 8 * v8 * v5;
    v20 = v14 + 8 * v8 * v13;
    v21 = (v14 + v9 + v10 * v13);
    v22 = 8 * v13;
    v23 = v8;
    do
    {
      v24 = *(v19 + 8 * v23);
      v25 = v21;
      v26 = v7 * v15;
      v27 = v4;
      v8 = v12 - 1;
      if (v12 <= 1)
      {
        do
        {
          v24 = v24 + -(v25[v11] * *(v16 + 8 * v26)) * *v25;
          v26 += v15;
          v25 = (v25 + v22);
          --v27;
        }

        while (v27);
      }

      if (v23 == v12)
      {
        *(v16 + 8 * v17) = v24;
        *(v14 + 8 * v18) = 0x3FF0000000000000;
      }

      else
      {
        *(v20 + 8 * v23) = v24 / *(v16 + 8 * v17);
      }

      --v11;
    }

    while (v23-- > 0);
    ++v4;
    --v7;
    v9 -= 8;
    v10 -= 8;
  }

  while (v12);
  return 1;
}

double sub_1D0E29F10(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CEF6B8;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0x7FF8000000000000;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  result = 1.0;
  v2 = vdupq_n_s64(0x7FF8000000000000uLL);
  *(a1 + 128) = xmmword_1D0E87BC0;
  *(a1 + 144) = v2;
  *(a1 + 160) = v2;
  *(a1 + 176) = v2;
  *(a1 + 192) = v2;
  *(a1 + 208) = 0x7FF8000000000000;
  *(a1 + 216) = 1;
  return result;
}

void sub_1D0E29F7C(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 / 0x1A];
    v7 = v2[(a1[5] + v5) / 0x1A] + 152 * ((a1[5] + v5) % 0x1A);
    if (*v6 + 152 * (v5 % 0x1A) != v7)
    {
      v8 = (*v6 + 152 * (v5 % 0x1A));
      do
      {
        v9 = *v8;
        v8 += 19;
        (*v9)();
        if (v8 - *v6 == 3952)
        {
          v10 = v6[1];
          ++v6;
          v8 = v10;
        }
      }

      while (v8 != v7);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v11 = v3 - v2;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v2);
      v12 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v11 = (v12 - v2) >> 3;
    }

    while (v11 > 2);
  }

  if (v11 == 1)
  {
    v13 = 13;
  }

  else
  {
    if (v11 != 2)
    {
      return;
    }

    v13 = 26;
  }

  a1[4] = v13;
}

uint64_t raven::RavenDeviceAttitudeActiveObject::Configure(uint64x2_t *a1, uint64_t *a2, double a3, int8x16_t a4)
{
  if (a1[14].i8[0] == 1)
  {
    v24 = 12;
    v23 = 3;
    (*(a1->i64[0] + 16))(__p, a1, a3, a4);
    v6 = v22 >= 0 ? __p : __p[0];
    cnprint::CNPrinter::Print(&v24, &v23, "Warning: %s configured more than once.", v6);
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }
  }

  a1[14].i8[0] = 0;
  v7 = *a2;
  if (!v7 || (*(v7 + 33) & 1) == 0)
  {
    v24 = 12;
    v23 = 4;
    (*(a1->i64[0] + 16))(__p, a1);
    if (v22 >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    cnprint::CNPrinter::Print(&v24, &v23, "Error: %s could not be configured.", v13);
LABEL_30:
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }

    return 0xFFFFFFFFLL;
  }

  a1[14].i64[1] = v7;
  v8 = *(v7 + 648);
  v9 = v8 <= 0.000000015 || (*(v7 + 648) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000;
  if (v9 || ((a4.i64[0] = *(v7 + 656), *a4.i64 > 0.000000015) ? (v10 = (*(v7 + 656) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000) : (v10 = 1), v10 || (*(v7 + 792) > 0.000000015 ? (v11 = (*(v7 + 792) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000) : (v11 = 1), v11)))
  {
    v24 = 12;
    v23 = 4;
    (*(a1->i64[0] + 16))(__p, a1);
    if (v22 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    cnprint::CNPrinter::Print(&v24, &v23, "Error: %s could not be configured because of invalid sensor sample period or input solution rate, accel sample period, %.3lf, gyro sample period, %.3lf, solution output rate, %.3lf", v12, *(a1[14].i64[1] + 648), *(a1[14].i64[1] + 656), *(a1[14].i64[1] + 792));
    goto LABEL_30;
  }

  a1[454] = vcvtq_u64_f64(vmulq_n_f64(xmmword_1D0EA3190, 1.0 / v8));
  v15 = vcvtq_u64_f64(vmulq_n_f64(xmmword_1D0EA3190, 1.0 / *a4.i64));
  a1[455] = v15;
  a4.i64[0] = 3.0;
  *v15.i64 = *(v7 + 1048) * 3.0;
  __p[0] = 0;
  __p[1] = 0;
  CNTimeSpan::SetTimeSpan(__p, 0, v15, a4);
  a1[456] = *__p;
  a1[457].i64[0] = 3 * (*(v7 + 792) * (*&a1[456].i64[1] + a1[456].i64[0]));
  if (*(v7 + 3672))
  {
    v16 = (v7 + 3680);
    if (*(v7 + 3703) < 0)
    {
      v16 = *v16;
    }

    if (sub_1D0D53E44(a1[74].i64, v16))
    {
      LOWORD(__p[0]) = 12;
      LOBYTE(v24) = 4;
      cnprint::CNPrinter::Print(__p, &v24, "Error: RavenDeviceAttitudeActiveObject::Configure() failed to load gravity parameters.");
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    if (*(v7 + 3668))
    {
      LOWORD(__p[0]) = 12;
      LOBYTE(v24) = 4;
      cnprint::CNPrinter::Print(__p, &v24, "Error: RavenDeviceAttitudeActiveObject::Configure() failed to load gravity parameters becasue of invalid model type.");
      return 0xFFFFFFFFLL;
    }

    if (sub_1D0D53F20(a1[74].i64, &unk_1D0EA31C0, &unk_1D0EA32BC, &unk_1D0EA33B8, &unk_1D0EA35B0, &unk_1D0EA37A8, &unk_1D0EA39A0))
    {
      LOWORD(__p[0]) = 12;
      LOBYTE(v24) = 4;
      cnprint::CNPrinter::Print(__p, &v24, "Error: RavenDeviceAttitudeActiveObject::Configure() failed to load EGM96 gravity parameters.");
      return 0xFFFFFFFFLL;
    }
  }

  a1[234].i32[0] = 1;
  v17 = a1[14].i64[1];
  if (*(v17 + 3668))
  {
    LOWORD(__p[0]) = 12;
    LOBYTE(v24) = 4;
    cnprint::CNPrinter::Print(__p, &v24, "Error: RavenDeviceAttitudeActiveObject::Configure() failed to set EGM96 model constants.");
    return 0xFFFFFFFFLL;
  }

  a1[75] = xmmword_1D0E843E0;
  a1[76].i64[0] = 0x40E86A0000000000;
  v18 = *(v17 + 3704);
  if ((v18 - 11) <= 0xFFFFFFF6)
  {
    __assert_rtn("SetTruncationDegree", "sphericalharmonicsgravitymodel.h", 471, "trunc >= 2 && trunc <= max_degree");
  }

  a1[244].i32[0] = v18;
  if ((a1[74].i8[8] & 1) == 0)
  {
    LOWORD(__p[0]) = 12;
    LOBYTE(v24) = 4;
    cnprint::CNPrinter::Print(__p, &v24, "Error: RavenDeviceAttitudeActiveObject::Configure() gravity parameters are invalid.");
    return 0xFFFFFFFFLL;
  }

  sub_1D0D87D70(a1[245].i64, a1[74].i64);
  a1[505].i16[4] = 1;
  cnframework::ActiveObjectBase::SetEventQueueDelay(a1, 0.0);
  a1[14].i8[0] = 1;
  v19 = (*(a1->i64[0] + 40))(a1);
  if (cnprint::CNPrinter::GetLogLevel(v19) <= 1)
  {
    v24 = 12;
    v23 = 1;
    (*(a1->i64[0] + 16))(__p, a1);
    if (v22 >= 0)
    {
      v20 = __p;
    }

    else
    {
      v20 = __p[0];
    }

    cnprint::CNPrinter::Print(&v24, &v23, "%s configured successfully.", v20);
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return 0;
}

void sub_1D0E2A5B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void raven::RavenDeviceAttitudeActiveObject::HandleEvent(raven::RavenDeviceAttitudeActiveObject *this, const raven::AttitudeEvent *a2)
{
  if (*(this + 224))
  {
    if (*(a2 + 217) == 2)
    {
      v4 = *(this + 951);
      if (v4)
      {
        v5 = *(*(this + 947) + (((v4 + *(this + 950) - 1) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 2656 * ((v4 + *(this + 1900) - 1) & 0xF);
        if (*(v5 + 209) == 2 && *(v5 + 1464) == 1 && *(v5 + 1544) == 1 && *(a2 + 216) == 1)
        {
          v60 = 0x300000003;
          v58 = &unk_1F4CD5DD0;
          v59 = xmmword_1D0E76C10;
          v61 = &v62;
          sub_1D0BD2CA4(&v55, *(v5 + 1472), *(v5 + 1480), *(v5 + 1488));
          if (v56)
          {
            sub_1D0B894B0(&v58, &v57);
            v53 = 0u;
            v54 = 0u;
            if (&v53 != (a2 + 104))
            {
              v6 = *(a2 + 120);
              v53 = *(a2 + 104);
              v54 = v6;
            }

            *(this + 6722) = 1;
            sub_1D0D260A4(v52, &v58);
            cnrotation::Cat(&v53, v52, &__p);
            if ((this + 920) == &__p)
            {
              v7 = *(this + 115);
              v8 = *(this + 116);
              v9 = *(this + 117);
              v10 = *(this + 118);
            }

            else
            {
              v7 = *&__p;
              v8 = *&v35;
              *(this + 115) = *&__p;
              *(this + 116) = v8;
              v9 = *(&v35 + 1);
              v10 = *&v36;
              *(this + 117) = *(&v35 + 1);
              *(this + 118) = v10;
            }

            sub_1D0E29F10(&__p);
            v37 = *(a2 + 40);
            v38 = *(a2 + 56);
            v39 = *(a2 + 72);
            v40 = *(a2 + 88);
            v35 = *(a2 + 8);
            v36 = *(a2 + 24);
            v29 = sqrt(v8 * v8 + v7 * v7 + v9 * v9 + v10 * v10);
            if (fabs(v29) >= 2.22044605e-16)
            {
              v31 = v7 / v29;
              v32 = v8 / v29;
              v33 = v9 / v29;
              v30 = v10 / v29;
            }

            else
            {
              v30 = 1.0;
              v31 = 0.0;
              v32 = 0.0;
              v33 = 0.0;
            }

            v41 = v31;
            v42 = v32;
            v43 = v33;
            v44 = v30;
            v45 = *(a2 + 136);
            v46 = *(a2 + 152);
            v47 = *(a2 + 168);
            v48 = *(a2 + 184);
            v49 = *(a2 + 200);
            v50 = *(a2 + 216);
            v51 = 1;
            sub_1D0E2AA5C(this + 952, &__p);
          }

          else
          {
            LOWORD(__p) = 12;
            LOBYTE(v53) = 4;
            cnprint::CNPrinter::Print(&__p, &v53, "DevAtt, Rotation, cannot derive ecef to enu Jacobian");
          }
        }
      }
    }

    else
    {
      v12 = (this + 952);
      if (*(this + 1176) == 1)
      {
        v13 = *(a2 + 24);
        *(this + 60) = *(a2 + 8);
        *(this + 61) = v13;
        v14 = *(a2 + 40);
        v15 = *(a2 + 56);
        v16 = *(a2 + 72);
        *(this + 65) = *(a2 + 88);
        *(this + 63) = v15;
        *(this + 64) = v16;
        *(this + 62) = v14;
        if (v12 != a2)
        {
          *(this + 66) = *(a2 + 104);
          *(this + 67) = *(a2 + 120);
        }

        v17 = *(a2 + 136);
        *(this + 69) = *(a2 + 152);
        *(this + 68) = v17;
        v18 = *(a2 + 168);
        v19 = *(a2 + 184);
        v20 = *(a2 + 200);
        *(this + 584) = *(a2 + 108);
        *(this + 72) = v20;
        *(this + 71) = v19;
        *(this + 70) = v18;
      }

      else
      {
        *(this + 119) = &unk_1F4CEF6B8;
        v21 = *(a2 + 24);
        *(this + 60) = *(a2 + 8);
        *(this + 61) = v21;
        v22 = *(a2 + 40);
        v23 = *(a2 + 56);
        v24 = *(a2 + 72);
        *(this + 65) = *(a2 + 88);
        *(this + 63) = v23;
        *(this + 64) = v24;
        *(this + 62) = v22;
        *(this + 66) = 0u;
        *(this + 67) = 0u;
        if (v12 != a2)
        {
          *(this + 66) = *(a2 + 104);
          *(this + 67) = *(a2 + 120);
        }

        v25 = *(a2 + 136);
        *(this + 69) = *(a2 + 152);
        *(this + 68) = v25;
        v26 = *(a2 + 168);
        v27 = *(a2 + 184);
        v28 = *(a2 + 200);
        *(this + 584) = *(a2 + 108);
        *(this + 72) = v28;
        *(this + 71) = v27;
        *(this + 70) = v26;
        *(this + 1176) = 1;
      }
    }
  }

  else
  {
    v55 = 12;
    LOBYTE(v58) = 3;
    (*(*this + 16))(&__p, this, a2);
    if (v35 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    cnprint::CNPrinter::Print(&v55, &v58, "Warning: %s is not configured yet.", p_p);
    if (SHIBYTE(v35) < 0)
    {
      operator delete(__p);
    }
  }
}

__n128 sub_1D0E2AA5C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 224) == 1)
  {
    v2 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v2;
    v3 = *(a2 + 40);
    v4 = *(a2 + 56);
    v5 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v5;
    *(a1 + 56) = v4;
    *(a1 + 40) = v3;
    if (a1 != a2)
    {
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 120) = *(a2 + 120);
    }

    v6 = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 136) = v6;
    result = *(a2 + 168);
    v8 = *(a2 + 184);
    v9 = *(a2 + 200);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 200) = v9;
    *(a1 + 184) = v8;
    *(a1 + 168) = result;
  }

  else
  {
    *a1 = &unk_1F4CEF6B8;
    v10 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v10;
    v11 = *(a2 + 40);
    v12 = *(a2 + 56);
    v13 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v13;
    *(a1 + 56) = v12;
    *(a1 + 40) = v11;
    *(a1 + 104) = 0u;
    *(a1 + 120) = 0u;
    if (a1 != a2)
    {
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 120) = *(a2 + 120);
    }

    v14 = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 136) = v14;
    result = *(a2 + 168);
    v15 = *(a2 + 184);
    v16 = *(a2 + 200);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 200) = v16;
    *(a1 + 184) = v15;
    *(a1 + 168) = result;
    *(a1 + 224) = 1;
  }

  return result;
}

__n128 raven::RavenDeviceAttitudeActiveObject::HandleEvent(raven::RavenDeviceAttitudeActiveObject *this, const raven::UserGaitEvent *a2)
{
  if (*(this + 224))
  {
    if (*(this + 7240) == 1)
    {
      *(this + 444) = *(a2 + 8);
      v2 = *(a2 + 24);
      v3 = *(a2 + 40);
      v4 = *(a2 + 56);
      *(this + 448) = *(a2 + 72);
      *(this + 447) = v4;
      *(this + 446) = v3;
      *(this + 445) = v2;
      result = *(a2 + 88);
      v6 = *(a2 + 104);
      v7 = *(a2 + 120);
      *(this + 904) = *(a2 + 17);
      *(this + 451) = v7;
      *(this + 450) = v6;
      *(this + 449) = result;
    }

    else
    {
      *(this + 887) = &unk_1F4CEF360;
      *(this + 444) = *(a2 + 8);
      v9 = *(a2 + 24);
      v10 = *(a2 + 40);
      v11 = *(a2 + 56);
      *(this + 448) = *(a2 + 72);
      *(this + 447) = v11;
      *(this + 446) = v10;
      *(this + 445) = v9;
      result = *(a2 + 88);
      v12 = *(a2 + 104);
      v13 = *(a2 + 120);
      *(this + 904) = *(a2 + 17);
      *(this + 451) = v13;
      *(this + 450) = v12;
      *(this + 449) = result;
      *(this + 7240) = 1;
    }
  }

  else
  {
    v17 = 12;
    v16 = 3;
    (*(*this + 16))(__p);
    if (v15 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    cnprint::CNPrinter::Print(&v17, &v16, "Warning: %s is not configured yet.", v8);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return result;
}

void sub_1D0E2AD04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void raven::RavenDeviceAttitudeActiveObject::Reset(raven::RavenDeviceAttitudeActiveObject *this)
{
  v2 = *(this + 31);
  v3 = *(this + 32);
  if (v3 == v2)
  {
    v6 = (this + 280);
    v3 = *(this + 31);
  }

  else
  {
    v4 = *(this + 34);
    v5 = &v2[v4 / 0x1A];
    v6 = (this + 280);
    v7 = v2[(*(this + 35) + v4) / 0x1A] + 152 * ((*(this + 35) + v4) % 0x1A);
    if (*v5 + 152 * (v4 % 0x1A) != v7)
    {
      v8 = (*v5 + 152 * (v4 % 0x1A));
      do
      {
        v9 = *v8;
        v8 += 19;
        (*v9)();
        if (v8 - *v5 == 3952)
        {
          v10 = v5[1];
          ++v5;
          v8 = v10;
        }
      }

      while (v8 != v7);
      v2 = *(this + 31);
      v3 = *(this + 32);
    }
  }

  *v6 = 0;
  v11 = v3 - v2;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v2);
      v12 = *(this + 32);
      v2 = (*(this + 31) + 8);
      *(this + 31) = v2;
      v11 = (v12 - v2) >> 3;
    }

    while (v11 > 2);
  }

  if (v11 == 1)
  {
    v13 = 13;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_16;
    }

    v13 = 26;
  }

  *(this + 34) = v13;
LABEL_16:
  *(this + 18) = vdupq_n_s64(0x3FB999999999999AuLL);
  *(this + 38) = 0x3FB999999999999ALL;
  *(this + 520) = 0u;
  *(this + 904) = 0u;
  v14 = *(this + 832);
  v15 = *(this + 833);
  if (v15 == v14)
  {
    v18 = (this + 6688);
    v15 = *(this + 832);
  }

  else
  {
    v16 = *(this + 835);
    v17 = &v14[v16 / 0x1A];
    v18 = (this + 6688);
    v19 = v14[(*(this + 836) + v16) / 0x1A] + 152 * ((*(this + 836) + v16) % 0x1A);
    if (*v17 + 152 * (v16 % 0x1A) != v19)
    {
      v20 = (*v17 + 152 * (v16 % 0x1A));
      do
      {
        v21 = *v20;
        v20 += 19;
        (*v21)();
        if (v20 - *v17 == 3952)
        {
          v22 = v17[1];
          ++v17;
          v20 = v22;
        }
      }

      while (v20 != v19);
      v15 = *(this + 833);
      v14 = *(this + 832);
    }
  }

  *v18 = 0;
  v23 = v15 - v14;
  if (v23 >= 3)
  {
    do
    {
      operator delete(*v14);
      v14 = (*(this + 832) + 8);
      *(this + 832) = v14;
      v23 = (*(this + 833) - v14) >> 3;
    }

    while (v23 > 2);
  }

  if (v23 == 1)
  {
    v24 = 13;
  }

  else
  {
    if (v23 != 2)
    {
      goto LABEL_31;
    }

    v24 = 26;
  }

  *(this + 835) = v24;
LABEL_31:
  *(this + 837) = 0x3FF0000000000000;
  __asm { FMOV            V0.2D, #1.0 }

  *(this + 419) = _Q0;
  if (*(this + 1176) == 1)
  {
    *(this + 1176) = 0;
  }

  *(this + 3360) = 0;
  *(this + 6723) = 0;
  *(this + 7080) = 0u;
  if (*(this + 7240) == 1)
  {
    *(this + 7240) = 0;
  }

  *(this + 1830) = 0;
  *(this + 458) = xmmword_1D0E87B90;
  *(this + 459) = 0uLL;
  *(this + 460) = 0uLL;
  *(this + 461) = 0uLL;
  *(this + 462) = 0uLL;
  *(this + 463) = 0uLL;
  *(this + 464) = 0uLL;
  *(this + 465) = 0uLL;
  *(this + 466) = 0uLL;
  v30 = *(this + 935);
  v31 = *(this + 936);
  if (v31 == v30)
  {
    v34 = (this + 7512);
    v31 = *(this + 935);
  }

  else
  {
    v32 = *(this + 938);
    v33 = &v30[v32 / 0x1A];
    v34 = (this + 7512);
    v35 = v30[(*(this + 939) + v32) / 0x1A] + 152 * ((*(this + 939) + v32) % 0x1A);
    if (*v33 + 152 * (v32 % 0x1A) != v35)
    {
      v36 = (*v33 + 152 * (v32 % 0x1A));
      do
      {
        v37 = *v36;
        v36 += 19;
        (*v37)();
        if (v36 - *v33 == 3952)
        {
          v38 = v33[1];
          ++v33;
          v36 = v38;
        }
      }

      while (v36 != v35);
      v31 = *(this + 936);
      v30 = *(this + 935);
    }
  }

  *v34 = 0;
  v39 = v31 - v30;
  if (v39 >= 3)
  {
    do
    {
      operator delete(*v30);
      v30 = (*(this + 935) + 8);
      *(this + 935) = v30;
      v39 = (*(this + 936) - v30) >> 3;
    }

    while (v39 > 2);
  }

  if (v39 == 1)
  {
    v40 = 13;
  }

  else
  {
    if (v39 != 2)
    {
      goto LABEL_50;
    }

    v40 = 26;
  }

  *(this + 938) = v40;
LABEL_50:
  v41 = *(this + 941);
  v42 = *(this + 942);
  if (v42 == v41)
  {
    v45 = (this + 7560);
    v42 = *(this + 941);
  }

  else
  {
    v43 = *(this + 944);
    v44 = &v41[v43 / 0x1A];
    v45 = (this + 7560);
    v46 = v41[(*(this + 945) + v43) / 0x1A] + 152 * ((*(this + 945) + v43) % 0x1A);
    if (*v44 + 152 * (v43 % 0x1A) != v46)
    {
      v47 = (*v44 + 152 * (v43 % 0x1A));
      do
      {
        v48 = *v47;
        v47 += 19;
        (*v48)();
        if (v47 - *v44 == 3952)
        {
          v49 = v44[1];
          ++v44;
          v47 = v49;
        }
      }

      while (v47 != v46);
      v42 = *(this + 942);
      v41 = *(this + 941);
    }
  }

  *v45 = 0;
  v50 = v42 - v41;
  if (v50 >= 3)
  {
    do
    {
      operator delete(*v41);
      v41 = (*(this + 941) + 8);
      *(this + 941) = v41;
      v50 = (*(this + 942) - v41) >> 3;
    }

    while (v50 > 2);
  }

  if (v50 == 1)
  {
    v51 = 13;
  }

  else
  {
    if (v50 != 2)
    {
      goto LABEL_65;
    }

    v51 = 26;
  }

  *(this + 944) = v51;
LABEL_65:
  v52 = *(this + 947);
  v53 = *(this + 948);
  if (v53 == v52)
  {
    v57 = (this + 7608);
    v53 = *(this + 947);
  }

  else
  {
    v54 = *(this + 950);
    v55 = &v52[v54 >> 4];
    v56 = *v55 + 2656 * (v54 & 0xF);
    v57 = (this + 7608);
    v58 = *(v52 + (((*(this + 951) + v54) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 2656 * ((*(this + 1902) + v54) & 0xF);
    if (v56 != v58)
    {
      do
      {
        (**v56)(v56);
        v56 += 2656;
        if (v56 - *v55 == 42496)
        {
          v59 = v55[1];
          ++v55;
          v56 = v59;
        }
      }

      while (v56 != v58);
      v53 = *(this + 948);
      v52 = *(this + 947);
    }
  }

  *v57 = 0;
  v60 = v53 - v52;
  if (v60 >= 3)
  {
    do
    {
      operator delete(*v52);
      v52 = (*(this + 947) + 8);
      *(this + 947) = v52;
      v60 = (*(this + 948) - v52) >> 3;
    }

    while (v60 > 2);
  }

  if (v60 == 1)
  {
    v61 = 8;
  }

  else
  {
    if (v60 != 2)
    {
      goto LABEL_79;
    }

    v61 = 16;
  }

  *(this + 950) = v61;
LABEL_79:
  v62 = *(this + 953);
  v63 = *(this + 954);
  if (v63 == v62)
  {
    v67 = (this + 7656);
    v63 = *(this + 953);
  }

  else
  {
    v64 = *(this + 956);
    v65 = &v62[v64 >> 4];
    v66 = *v65 + 2656 * (v64 & 0xF);
    v67 = (this + 7656);
    v68 = *(v62 + (((*(this + 957) + v64) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 2656 * ((*(this + 1914) + v64) & 0xF);
    if (v66 != v68)
    {
      do
      {
        (**v66)(v66);
        v66 += 2656;
        if (v66 - *v65 == 42496)
        {
          v69 = v65[1];
          ++v65;
          v66 = v69;
        }
      }

      while (v66 != v68);
      v63 = *(this + 954);
      v62 = *(this + 953);
    }
  }

  *v67 = 0;
  v70 = v63 - v62;
  if (v70 >= 3)
  {
    do
    {
      operator delete(*v62);
      v62 = (*(this + 953) + 8);
      *(this + 953) = v62;
      v70 = (*(this + 954) - v62) >> 3;
    }

    while (v70 > 2);
  }

  if (v70 == 1)
  {
    v71 = 8;
  }

  else
  {
    if (v70 != 2)
    {
      goto LABEL_93;
    }

    v71 = 16;
  }

  *(this + 956) = v71;
LABEL_93:
  raven::RavenDeviceAttitudeActiveObject::ResetWahbaSolver(this);
  *(this + 128) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0x7FF8000000000000;
  *(this + 19) = 0;
  *(this + 105) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0x7FF8000000000000;
  cnframework::ActiveObjectBase::ResetEventQueue(this);
  v72 = *(this + 965);
  v73 = *(this + 966);
  if (v73 == v72)
  {
    v76 = (this + 7752);
    v73 = *(this + 965);
  }

  else
  {
    v74 = *(this + 968);
    v75 = &v72[v74 / 0x1A];
    v76 = (this + 7752);
    v77 = v72[(*(this + 969) + v74) / 0x1A] + 152 * ((*(this + 969) + v74) % 0x1A);
    if (*v75 + 152 * (v74 % 0x1A) != v77)
    {
      v78 = (*v75 + 152 * (v74 % 0x1A));
      do
      {
        v79 = *v78;
        v78 += 19;
        (*v79)();
        if (v78 - *v75 == 3952)
        {
          v80 = v75[1];
          ++v75;
          v78 = v80;
        }
      }

      while (v78 != v77);
      v73 = *(this + 966);
      v72 = *(this + 965);
    }
  }

  *v76 = 0;
  v81 = v73 - v72;
  if (v81 >= 3)
  {
    do
    {
      operator delete(*v72);
      v72 = (*(this + 965) + 8);
      *(this + 965) = v72;
      v81 = (*(this + 966) - v72) >> 3;
    }

    while (v81 > 2);
  }

  if (v81 == 1)
  {
    v82 = 13;
  }

  else
  {
    if (v81 != 2)
    {
      goto LABEL_108;
    }

    v82 = 26;
  }

  *(this + 968) = v82;
LABEL_108:
  v83 = *(this + 959);
  v84 = *(this + 960);
  if (v84 == v83)
  {
    v87 = (this + 7704);
    v84 = *(this + 959);
  }

  else
  {
    v85 = *(this + 962);
    v86 = &v83[v85 / 0x1A];
    v87 = (this + 7704);
    v88 = v83[(*(this + 963) + v85) / 0x1A] + 152 * ((*(this + 963) + v85) % 0x1A);
    if (*v86 + 152 * (v85 % 0x1A) != v88)
    {
      v89 = (*v86 + 152 * (v85 % 0x1A));
      do
      {
        v90 = *v89;
        v89 += 19;
        (*v90)();
        if (v89 - *v86 == 3952)
        {
          v91 = v86[1];
          ++v86;
          v89 = v91;
        }
      }

      while (v89 != v88);
      v84 = *(this + 960);
      v83 = *(this + 959);
    }
  }

  *v87 = 0;
  v92 = v84 - v83;
  if (v92 >= 3)
  {
    do
    {
      operator delete(*v83);
      v83 = (*(this + 959) + 8);
      *(this + 959) = v83;
      v92 = (*(this + 960) - v83) >> 3;
    }

    while (v92 > 2);
  }

  if (v92 == 1)
  {
    v93 = 13;
    goto LABEL_122;
  }

  if (v92 == 2)
  {
    v93 = 26;
LABEL_122:
    *(this + 962) = v93;
  }

  *(this + 8144) = 0;
}

void sub_1D0E2B6FC(raven::RavenCoarseOdometerActiveObject *a1)
{
  sub_1D0DC7128(a1);

  JUMPOUT(0x1D387ECA0);
}

double sub_1D0E2B744(uint64_t a1)
{
  *a1 = &unk_1F4CEE000;
  *(a1 + 32) = 0x300000003;
  *(a1 + 8) = &unk_1F4CD5DD0;
  *(a1 + 16) = xmmword_1D0E76C10;
  *(a1 + 40) = a1 + 48;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 240) = 0x100000003;
  *(a1 + 208) = 0x7FF8000000000000;
  *(a1 + 216) = &unk_1F4CDEB28;
  *&result = 0x100000003;
  *(a1 + 224) = xmmword_1D0E7DCC0;
  *(a1 + 248) = a1 + 256;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0x3FF0000000000000;
  return result;
}

uint64_t sub_1D0E2B80C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4CEFA30;
  *(a1 + 8) = &unk_1F4CEE000;
  sub_1D0BE0DE8(a1 + 16, a2 + 8);
  v4 = *(a2 + 136);
  *(a1 + 128) = *(a2 + 120);
  *(a1 + 144) = v4;
  v5 = *(a2 + 152);
  v6 = *(a2 + 168);
  v7 = *(a2 + 200);
  *(a1 + 192) = *(a2 + 184);
  *(a1 + 208) = v7;
  *(a1 + 160) = v5;
  *(a1 + 176) = v6;
  sub_1D0BBA094(a1 + 224, a2 + 216);
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  if (a1 + 288 != a2 + 280)
  {
    *(a1 + 288) = *(a2 + 280);
    *(a1 + 304) = *(a2 + 296);
  }

  return a1;
}

void *sub_1D0E2B900(void *result)
{
  result[1] = &unk_1F4CEE000;
  result[28] = &unk_1F4CD5E28;
  result[2] = &unk_1F4CD5E28;
  return result;
}

void sub_1D0E2B964(void *a1)
{
  a1[1] = &unk_1F4CEE000;
  a1[28] = &unk_1F4CD5E28;
  a1[2] = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0E2BA50(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v130 = v4;
  v131 = v3;
  v132 = v5;
  v198 = 0x400000004;
  v196 = &unk_1F4CDEB70;
  v199 = v200;
  v197 = xmmword_1D0E7DCD0;
  memset(v200, 0, sizeof(v200));
  *&v205.f64[0] = 0x100000000;
  v192 = 0x100000003;
  v190 = &unk_1F4CDEAA0;
  v193 = &v194;
  v191 = xmmword_1D0E7DCC0;
  v195 = 2;
  v194 = 0x100000000;
  if (v2 < 1)
  {
    return 25;
  }

  v128 = v1;
  v6 = 0;
  v7 = 0;
  v129 = v2;
  do
  {
    sub_1D0E2D13C(&v185, v132, v6);
    v230 = 0x100000003;
    v229 = xmmword_1D0E7DCC0;
    v228 = &unk_1F4CDEB28;
    v231 = v232;
    v203 = 0x100000134;
    v202 = xmmword_1D0E7DD20;
    v201 = &unk_1F4CDEC90;
    v204 = &v205;
    v225 = 0x100000003;
    v224 = xmmword_1D0E7DCC0;
    v223 = &unk_1F4CDEB28;
    v226 = v227;
    sub_1D0BFB1AC(&v185, &v228, &v201, &v223, "2");
    v9 = fabs(v8.f64[0]);
    if (v9 >= 2.22044605e-16)
    {
      v203 = 0x100000003;
      v202 = xmmword_1D0E7DCC0;
      v201 = &unk_1F4CDEB28;
      v204 = &v205;
      v8.f64[0] = 1.0 / v8.f64[0];
      sub_1D0B8930C(&v185, &v201, v8);
      sub_1D0B894B0(&v185, &v201);
    }

    sub_1D0E2D13C(&v180, v131, v6);
    v230 = 0x100000003;
    v229 = xmmword_1D0E7DCC0;
    v228 = &unk_1F4CDEB28;
    v231 = v232;
    v203 = 0x100000134;
    v202 = xmmword_1D0E7DD20;
    v201 = &unk_1F4CDEC90;
    v204 = &v205;
    v225 = 0x100000003;
    v224 = xmmword_1D0E7DCC0;
    v223 = &unk_1F4CDEB28;
    v226 = v227;
    sub_1D0BFB1AC(&v180, &v228, &v201, &v223, "2");
    v11 = v7;
    if (fabs(v10.f64[0]) >= 2.22044605e-16)
    {
      v203 = 0x100000003;
      v202 = xmmword_1D0E7DCC0;
      v201 = &unk_1F4CDEB28;
      v204 = &v205;
      v10.f64[0] = 1.0 / v10.f64[0];
      sub_1D0B8930C(&v180, &v201, v10);
      sub_1D0B894B0(&v180, &v201);
      v11 = v7 + 1;
    }

    if (v9 >= 2.22044605e-16)
    {
      v7 = v11;
    }

    v12 = v182;
    v13 = 0.0;
    if (v182 >= 1)
    {
      v14 = v184;
      v15 = v189;
      do
      {
        v16 = *v14++;
        v17 = v16;
        v18 = *v15++;
        v13 = v13 + v17 * v18;
        --v12;
      }

      while (v12);
    }

    v203 = 0x100000003;
    v201 = &unk_1F4CDEB28;
    v204 = &v205;
    *&v202 = v181;
    DWORD2(v202) = HIDWORD(v181) * v181;
    HIDWORD(v202) = v181;
    v19 = *v184;
    v20 = *(v184 + 8);
    *&v21.f64[0] = vdupq_laneq_s64(v20, 1).u64[0];
    v21.f64[1] = *v184;
    v22 = *(v189 + 8);
    *&v23.f64[0] = vdupq_laneq_s64(v22, 1).u64[0];
    v23.f64[1] = *v189;
    v205 = vmlaq_f64(vmulq_f64(v22, vnegq_f64(v21)), v23, v20);
    v206 = v19 * v22.f64[0] - v20.f64[0] * v23.f64[1];
    sub_1D0E27100(&v175, &v201);
    v230 = 0x400000004;
    v229 = xmmword_1D0E7DCD0;
    v228 = &unk_1F4CDEB70;
    v231 = v232;
    v135 = 0x300000003;
    v133 = &unk_1F4CD5DD0;
    v134 = xmmword_1D0E76C10;
    v139 = 0;
    v141 = 0u;
    v142 = 0;
    v138 = 0u;
    v136 = &v137;
    v137 = 0x3FF0000000000000;
    v140 = 0x3FF0000000000000;
    v143 = 0x3FF0000000000000;
    v146 = 0x300000003;
    v145 = xmmword_1D0E76C10;
    v144 = &unk_1F4CD5DD0;
    v147 = v148;
    sub_1D0B8930C(&v133, &v144, *&v13);
    v24 = HIDWORD(v181);
    v25 = v181;
    v167 = 0x300000001;
    v162 = &unk_1F4CDF248;
    v168 = v169;
    v163 = HIDWORD(v181);
    v164 = v181;
    v165 = v181 * HIDWORD(v181);
    v166 = HIDWORD(v181);
    if (HIDWORD(v181))
    {
      v26 = 0;
      v27 = 0;
      v28 = v183;
      v29 = v184;
      do
      {
        v30 = v26;
        v31 = v27;
        for (i = v25; i; --i)
        {
          v169[v31] = *(v29 + 8 * v30);
          v31 += v24;
          ++v30;
        }

        ++v27;
        v26 += v28;
      }

      while (v27 != v24);
    }

    v172 = 0x300000003;
    v171 = xmmword_1D0E76C10;
    v170 = &unk_1F4CD5DD0;
    v173 = v174;
    sub_1D0B89390(&v185, &v162, &v170);
    v220 = 0x300000003;
    v219 = xmmword_1D0E76C10;
    v218 = &unk_1F4CD5DD0;
    v221 = v222;
    sub_1D0BA5A78(&v144, &v170, &v218);
    v33 = v187;
    v34 = v186;
    v154 = 0x300000001;
    v149 = &unk_1F4CDF248;
    v155 = v156;
    v150 = v187;
    v151 = v186;
    v152 = v186 * v187;
    v153 = v187;
    if (v187)
    {
      v35 = 0;
      v36 = 0;
      v37 = v188;
      v38 = v189;
      do
      {
        v39 = v35;
        v40 = v36;
        for (j = v34; j; --j)
        {
          v156[v40] = *(v38 + 8 * v39);
          v40 += v33;
          ++v39;
        }

        ++v36;
        v35 += v37;
      }

      while (v36 != v33);
    }

    v159 = 0x300000003;
    v158 = xmmword_1D0E76C10;
    v157 = &unk_1F4CD5DD0;
    v160 = v161;
    sub_1D0B89390(&v180, &v149, &v157);
    v225 = 0x300000003;
    v224 = xmmword_1D0E76C10;
    v223 = &unk_1F4CD5DD0;
    v226 = v227;
    sub_1D0BA5A78(&v218, &v157, &v223);
    sub_1D0BADC74(&v201, &v228, &v190, &v190);
    sub_1D0D2CFF0(&v201, &v223);
    v225 = 0x100000001;
    *&v42 = 0x100000001;
    *(&v42 + 1) = 0x100000001;
    v224 = v42;
    v223 = &unk_1F4CDF158;
    v226 = v227;
    LODWORD(v227[0]) = 3;
    sub_1D0C51DC8(&v201, &v228, &v190, &v223);
    sub_1D0D2D13C(&v201, &v175);
    v43 = v177;
    v44 = v176;
    v225 = 0x300000001;
    v223 = &unk_1F4CDF248;
    v226 = v227;
    *&v224 = __PAIR64__(v176, v177);
    DWORD2(v224) = v176 * v177;
    HIDWORD(v224) = v177;
    if (v177)
    {
      v45 = 0;
      v46 = 0;
      v47 = v178;
      v48 = v179;
      do
      {
        v49 = v45;
        v50 = v46;
        for (k = v44; k; --k)
        {
          v227[v50] = *(v48 + 8 * v49);
          v50 += v43;
          ++v49;
        }

        ++v46;
        v45 += v47;
      }

      while (v46 != v43);
    }

    v52 = DWORD1(v191);
    v53 = v191;
    v220 = 0x300000001;
    v218 = &unk_1F4CDF0C8;
    v221 = v222;
    *&v219 = __PAIR64__(v191, DWORD1(v191));
    DWORD2(v219) = v191 * DWORD1(v191);
    HIDWORD(v219) = DWORD1(v191);
    if (DWORD1(v191))
    {
      v54 = 0;
      v55 = 0;
      v56 = v193;
      v57 = HIDWORD(v191);
      do
      {
        if (v53)
        {
          for (m = 0; m != v53; ++m)
          {
            v222[v55 + HIDWORD(v219) * m] = *(v56 + v54 + m);
          }
        }

        ++v55;
        v54 += v57;
      }

      while (v55 != v52);
    }

    v146 = 0x100000001;
    *&v59 = 0x100000001;
    *(&v59 + 1) = 0x100000001;
    v145 = v59;
    v144 = &unk_1F4CDF158;
    v147 = v148;
    v148[0] = 3;
    v203 = 0x300000001;
    v202 = xmmword_1D0E7F310;
    v204 = &v205;
    v201 = &unk_1F4CEFA78;
    v207 = &v228;
    v210 = 0x100000001;
    v208 = &unk_1F4CDF158;
    v209 = v59;
    v211 = &v212;
    v215 = 0x300000001;
    v213 = &unk_1F4CDF0C8;
    v214 = xmmword_1D0E7F310;
    v216 = &v217;
    sub_1D0B9F5D4(&v208, &v144);
    sub_1D0B9F5D4(&v213, &v218);
    v61 = DWORD2(v209);
    v62 = DWORD2(v214);
    *&v202 = __PAIR64__(DWORD2(v214), DWORD2(v209));
    DWORD2(v202) = DWORD2(v214) * DWORD2(v209);
    HIDWORD(v202) = DWORD2(v209);
    if (DWORD2(v214))
    {
      v63 = 0;
      v64 = 0;
      v65 = HIDWORD(v229);
      v66 = v231;
      v67 = v216;
      v68 = v211;
      v69 = v204;
      do
      {
        if (v61)
        {
          v70 = *(v67 + v64) * v65;
          v71 = v68;
          v72 = v63;
          v73 = v61;
          do
          {
            v74 = *v71++;
            v69->f64[v72++] = *&v66[2 * v74 + 2 * v70];
            --v73;
          }

          while (v73);
        }

        ++v64;
        v63 += v61;
      }

      while (v64 != v62);
    }

    if (v61 != v224)
    {
      v120 = 376;
      v121 = "this->num_rows_ == A.num_rows_";
      goto LABEL_90;
    }

    if (v62 != DWORD1(v224))
    {
      v120 = 377;
      v121 = "this->num_cols_ == A.num_cols_";
LABEL_90:
      __assert_rtn("operator=", "cnsubmatrix.h", v120, v121);
    }

    if (v62)
    {
      v75 = 0;
      v76 = 0;
      v77 = v226;
      v78 = v211;
      v79 = v216;
      v80 = v207;
      v81 = v204;
      do
      {
        if (v61)
        {
          v82 = *(v80 + 5) * *(v79 + v76);
          v83 = v80[4];
          v84 = v75;
          v85 = v78;
          v86 = v61;
          do
          {
            v87 = *&v77[v84];
            v88 = *v85++;
            v83[v88 + v82] = v87;
            v81->f64[v84++] = v87;
            --v86;
          }

          while (v86);
        }

        ++v76;
        v75 += v61;
      }

      while (v76 != v62);
    }

    *&v231[6 * SHIDWORD(v229) + 6] = -v13;
    v60.f64[0] = 2.0 / (*(*(v130 + 32) + 8 * v6) * *(*(v130 + 32) + 8 * v6));
    v225 = 0x400000004;
    v224 = xmmword_1D0E7DCD0;
    v223 = &unk_1F4CDEB70;
    v226 = v227;
    sub_1D0B8930C(&v228, &v223, v60);
    v203 = 0x400000004;
    v202 = xmmword_1D0E7DCD0;
    v201 = &unk_1F4CDEB70;
    v204 = &v205;
    sub_1D0B88838(&v196, &v223, &v201);
    sub_1D0B894B0(&v196, &v201);
    ++v6;
  }

  while (v6 != v129);
  if (v7 < 2)
  {
    return 25;
  }

  v146 = 0x400000004;
  v145 = xmmword_1D0E7DCD0;
  v144 = &unk_1F4CDEB70;
  v147 = v148;
  v135 = 0x400000004;
  v133 = &unk_1F4CDEB70;
  v134 = xmmword_1D0E7DCD0;
  v136 = &v137;
  v230 = 0x400000004;
  v229 = xmmword_1D0E7DCD0;
  v228 = &unk_1F4CDEB70;
  v231 = v232;
  v225 = 0x400000004;
  v224 = xmmword_1D0E7DCD0;
  v223 = &unk_1F4CDEB70;
  v226 = v227;
  v220 = 0x400000004;
  v219 = xmmword_1D0E7DCD0;
  v218 = &unk_1F4CDEB70;
  v221 = v222;
  v159 = 0x100000004;
  v158 = xmmword_1D0E7DCE0;
  v157 = &unk_1F4CDEBB8;
  v160 = v161;
  v172 = 0x200000004;
  v171 = xmmword_1D0E87A60;
  v170 = &unk_1F4CE45F8;
  v173 = v174;
  v203 = 0x100000170;
  v202 = xmmword_1D0EA31A0;
  v201 = &unk_1F4CEFAC0;
  v204 = &v205;
  v90 = v197;
  v91 = v197;
  sub_1D0B894B0(&v228, &v196);
  LODWORD(v145) = v90;
  DWORD1(v145) = v90;
  v92 = v90 * v90;
  DWORD2(v145) = v90 * v90;
  HIDWORD(v145) = v90;
  v93 = v147;
  if (v90 * v90 > 3)
  {
    bzero(v147, 16 * ((v92 - 1) >> 1));
    *&v93[8 * v92 - 16] = 0u;
    LODWORD(v224) = v90;
    DWORD1(v224) = v90;
    DWORD2(v224) = v90 * v90;
    HIDWORD(v224) = v90;
    v94 = v226;
    bzero(v226, 16 * ((v92 - 1) >> 1));
    *&v94[8 * v92 - 16] = 0u;
    LODWORD(v134) = v90;
    DWORD1(v134) = v90;
    DWORD2(v134) = v90 * v90;
    HIDWORD(v134) = v90;
    v95 = v136;
    bzero(v136, 16 * ((v92 - 1) >> 1));
    *&v95[8 * v92 - 16] = 0u;
    LODWORD(v219) = v90;
    DWORD1(v219) = v90;
    DWORD2(v219) = v90 * v90;
    HIDWORD(v219) = v90;
    v96 = v221;
    bzero(v221, 16 * ((v92 - 1) >> 1));
    *&v96[8 * v92 - 16] = 0u;
  }

  else if (v92 <= 0)
  {
    LODWORD(v224) = v90;
    DWORD1(v224) = v90;
    DWORD2(v224) = v90 * v90;
    HIDWORD(v224) = v90;
    LODWORD(v134) = v90;
    DWORD1(v134) = v90;
    DWORD2(v134) = v90 * v90;
    HIDWORD(v134) = v90;
    LODWORD(v219) = v90;
    DWORD1(v219) = v90;
    DWORD2(v219) = v90 * v90;
    HIDWORD(v219) = v90;
  }

  else
  {
    bzero(v147, 8 * (v90 * v90));
    LODWORD(v224) = v90;
    DWORD1(v224) = v90;
    DWORD2(v224) = v90 * v90;
    HIDWORD(v224) = v90;
    bzero(v226, 8 * (v90 * v90));
    LODWORD(v134) = v90;
    DWORD1(v134) = v90;
    DWORD2(v134) = v90 * v90;
    HIDWORD(v134) = v90;
    bzero(v136, 8 * (v90 * v90));
    LODWORD(v219) = v90;
    DWORD1(v219) = v90;
    DWORD2(v219) = v90 * v90;
    HIDWORD(v219) = v90;
    bzero(v221, 8 * (v90 * v90));
  }

  v185 = 0;
  qmemcpy(v236, "NVNB", sizeof(v236));
  v180 = v90;
  v175 = v229;
  LODWORD(v162) = 1;
  LODWORD(v149) = v134;
  v235 = 0;
  v233 = 0;
  v234 = 368;
  v127 = v204;
  v125 = v173;
  v126 = &v173[2 * v91];
  v124 = v160;
  v123 = v136;
  v122 = v226;
  v97 = dgeevx_NEWLAPACK();
  if (v233)
  {
    LOWORD(v180) = 4;
    if (v233 < 0)
    {
      LOBYTE(v175) = 5;
      cnprint::CNPrinter::Print(&v180, &v175, "Error using Eig: input argument %d invalid in geevx.", -v233);
    }

    else
    {
      LOBYTE(v175) = 4;
      cnprint::CNPrinter::Print(&v180, &v175, "Error using Eig: geevx failed to converge for some eigenvalues.", v122, 0, &v162, v123, &v149, &v235 + 4, &v235, v124, &v185, v125, v126, v127, &v234, 0, &v233);
    }
  }

  v98 = v204->f64[0];
  if (v98 >= 0x171 && cnprint::CNPrinter::GetLogLevel(v97) <= 1)
  {
    LOWORD(v180) = 4;
    LOBYTE(v175) = 1;
    cnprint::CNPrinter::Print(&v180, &v175, "Warning: Eig optimal workspace size %u is greater than provided workspace size %u; performance may suffer.", v98, 368);
  }

  *&v202 = v203;
  DWORD2(v202) = HIDWORD(v203) * v203;
  HIDWORD(v202) = v203;
  *&v171 = v90 | 0x200000000;
  DWORD2(v171) = 2 * v90;
  HIDWORD(v171) = v90;
  *&v158 = v90 | 0x100000000;
  DWORD2(v158) = v90;
  HIDWORD(v158) = v90;
  if (v90)
  {
    v99 = 0;
    v100 = v226;
    v101 = v136;
    v102 = v221;
    do
    {
      if (*&v100[8 * v99] != 0.0)
      {
        v103 = v99 * v90;
        v104 = v90 + v99;
        v105 = v90;
        do
        {
          v106 = v101[v104];
          v102[v103] = v106;
          v102[v104] = -v106;
          v101[v104++] = v101[v103++];
          --v105;
        }

        while (v105);
        ++v99;
      }

      ++v99;
    }

    while (v99 < v90);
    v107 = v90 - 1;
    if (v90 != 1)
    {
      v108 = v147;
      v109 = v100 + 8;
      v110 = v147 + 8;
      v111 = v90 + 1;
      do
      {
        v108[v111] = *v110;
        *&v100[8 * v111] = *v109;
        *v110++ = 0;
        *v109++ = 0;
        v111 += v90 + 1;
        --v107;
      }

      while (v107);
    }
  }

  if (DWORD2(v224))
  {
    v112 = 0;
    while (*(v226 + v112) == 0.0)
    {
      if (DWORD2(v224) == ++v112)
      {
        goto LABEL_77;
      }
    }

    LOWORD(v185) = 4;
    LOBYTE(v180) = 2;
    cnprint::CNPrinter::Print(&v185, &v180, "Warning: Imaginary parts of complex eigenvalues are being ignored.");
  }

LABEL_77:
  if (DWORD2(v219))
  {
    v113 = 0;
    while (*(v221 + v113) == 0.0)
    {
      if (DWORD2(v219) == ++v113)
      {
        goto LABEL_82;
      }
    }

    LOWORD(v185) = 4;
    LOBYTE(v180) = 2;
    cnprint::CNPrinter::Print(&v185, &v180, "Warning: Imaginary parts of complex eigenvectors are being ignored.");
  }

LABEL_82:
  v172 = 0x100000001;
  *&v114 = 0x100000001;
  *(&v114 + 1) = 0x100000001;
  v171 = v114;
  v170 = &unk_1F4CDF460;
  v173 = v174;
  v159 = 0x100000001;
  v158 = v114;
  v157 = &unk_1F4CDF418;
  v160 = v161;
  v203 = 0x800000008;
  v202 = xmmword_1D0E84510;
  v201 = &unk_1F4CE43B0;
  v204 = &v205;
  sub_1D0BED87C(&v144, 0, &v201);
  sub_1D0D7FDEC(&v201, &v157, &v170);
  v115 = *v173;
  v116 = v134;
  v230 = 0x100000004;
  v228 = &unk_1F4CDFDB8;
  *&v229 = v134 | 0x100000000;
  DWORD2(v229) = v134;
  HIDWORD(v229) = v134;
  v231 = v232;
  if (v134)
  {
    v117 = 0;
    do
    {
      v232[v117] = v117;
      ++v117;
    }

    while (v116 != v117);
  }

  v225 = 0x100000001;
  *&v118 = 0x100000001;
  *(&v118 + 1) = 0x100000001;
  v224 = v118;
  v223 = &unk_1F4CDF158;
  v226 = v227;
  LODWORD(v227[0]) = v115;
  sub_1D0D8786C(&v201, &v133, &v228, &v223);
  sub_1D0B87544(&v218, &v201);
  v230 = 0x100000004;
  v229 = xmmword_1D0E7DCE0;
  v228 = &unk_1F4CDEBB8;
  v231 = v232;
  v203 = 0x10000018BLL;
  v202 = xmmword_1D0EA31B0;
  v201 = &unk_1F4CEFB08;
  v204 = &v205;
  v225 = 0x100000004;
  v224 = xmmword_1D0E7DCE0;
  v223 = &unk_1F4CDEBB8;
  v226 = v227;
  sub_1D0BFB1AC(&v218, &v228, &v201, &v223, "2");
  if (fabs(v119.f64[0]) < 2.22044605e-16)
  {
    return 26;
  }

  v203 = 0x100000004;
  v202 = xmmword_1D0E7DCE0;
  v201 = &unk_1F4CDEBB8;
  v204 = &v205;
  v119.f64[0] = 1.0 / v119.f64[0];
  sub_1D0B8930C(&v218, &v201, v119);
  sub_1D0B894B0(&v218, &v201);
  sub_1D0B894B0(v128 + 8, &v218);
  return 0;
}

double sub_1D0E2D13C(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 8);
  *&result = 0x100000003;
  *(a1 + 24) = 0x100000003;
  *a1 = &unk_1F4CDEB28;
  *(a1 + 8) = v3;
  *(a1 + 12) = 1;
  *(a1 + 16) = v3;
  *(a1 + 20) = v3;
  v5 = (a1 + 40);
  *(a1 + 32) = a1 + 40;
  if (v3)
  {
    v6 = *(a2 + 20) * a3;
    v7 = *(a2 + 32);
    do
    {
      result = *(v7 + 8 * v6);
      *v5++ = result;
      ++v6;
      --v3;
    }

    while (v3);
  }

  return result;
}

void *sub_1D0E2D1A4(void *result)
{
  result[15] = &unk_1F4CDEAF8;
  result[9] = &unk_1F4CDEAF8;
  *result = &unk_1F4CD5E28;
  return result;
}

void sub_1D0E2D204(void *a1)
{
  a1[15] = &unk_1F4CDEAF8;
  a1[9] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

void sub_1D0E2D2D0(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v3 = *(a1 + 12);
    if (v3 >= 2)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 20);
      bzero(v13, v4);
      if (v4 >= 3)
      {
        v6 = (v4 - 1);
        v7 = *(a1 + 32);
        v8 = 1;
        do
        {
          v9 = &v13[v8];
          if ((v13[v8] & 1) == 0)
          {
            v10 = *(v7 + 8 * v8);
            v11 = v8;
            do
            {
              v11 = (v11 * (v3 + v1 - v5)) % v6;
              v12 = *(v7 + 8 * v11);
              *(v7 + 8 * v11) = v10;
              *v9 = 1;
              v9 = &v13[v11];
              v10 = v12;
            }

            while (!*v9);
          }

          ++v8;
        }

        while (v8 != v6);
      }
    }
  }
}

void sub_1D0E2D42C(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v3 = *(a1 + 12);
    if (v3 >= 2)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 20);
      bzero(v13, v4);
      if (v4 >= 3)
      {
        v6 = (v4 - 1);
        v7 = *(a1 + 32);
        v8 = 1;
        do
        {
          v9 = &v13[v8];
          if ((v13[v8] & 1) == 0)
          {
            v10 = *(v7 + 8 * v8);
            v11 = v8;
            do
            {
              v11 = (v11 * (v3 + v1 - v5)) % v6;
              v12 = *(v7 + 8 * v11);
              *(v7 + 8 * v11) = v10;
              *v9 = 1;
              v9 = &v13[v11];
              v10 = v12;
            }

            while (!*v9);
          }

          ++v8;
        }

        while (v8 != v6);
      }
    }
  }
}

void *sub_1D0E2D52C(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = *result;
    v3 = a2 - 0x79435E50D79435E5 * ((result[1] - **result) >> 3);
    if (v3 < 1)
    {
      v5 = 25 - v3;
      v6 = &v2[-(v5 / 0x1A)];
      *result = v6;
      v4 = *v6 + 152 * (26 * (v5 / 0x1A) - v5) + 3800;
    }

    else
    {
      *result = &v2[v3 / 0x1A];
      v4 = v2[v3 / 0x1A] + 152 * (v3 % 0x1A);
    }

    result[1] = v4;
  }

  return result;
}

uint64_t raven::RavenActivityStateEstimatorActiveObject::Configure(cnframework::ActiveObjectBase *this, uint64_t *a2)
{
  if (*(this + 224) == 1)
  {
    v12 = 12;
    v11 = 3;
    (*(*this + 16))(__p, this);
    v4 = v10 >= 0 ? __p : __p[0];
    cnprint::CNPrinter::Print(&v12, &v11, "Warning: %s configured more than once", v4);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *(this + 224) = 0;
  v5 = *a2;
  if (*a2 && (*(v5 + 33) & 1) != 0)
  {
    *(this + 29) = v5;
    cnframework::ActiveObjectBase::SetEventQueueDelay(this, 0.0);
    *(this + 224) = 1;
    (*(*this + 40))(this);
    v12 = 12;
    v11 = 3;
    (*(*this + 16))(__p, this);
    if (v10 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    cnprint::CNPrinter::Print(&v12, &v11, "%s configured successfully", v6);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

  else
  {
    v12 = 12;
    v11 = 4;
    (*(*this + 16))(__p, this);
    if (v10 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    cnprint::CNPrinter::Print(&v12, &v11, "%s could not be configured", v8);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    return 0xFFFFFFFFLL;
  }
}

void sub_1D0E2D7E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 raven::RavenActivityStateEstimatorActiveObject::HandleEvent(raven::RavenActivityStateEstimatorActiveObject *this, const raven::ActivityInputEvent *a2)
{
  if (*(this + 352) == 1)
  {
    v2 = *(a2 + 8);
    v3 = *(a2 + 40);
    *(this + 264) = *(a2 + 24);
    *(this + 280) = v3;
    *(this + 248) = v2;
    result = *(a2 + 56);
    v5 = *(a2 + 72);
    v6 = *(a2 + 88);
    *(this + 172) = *(a2 + 52);
    *(this + 312) = v5;
    *(this + 328) = v6;
    *(this + 296) = result;
  }

  else
  {
    *(this + 30) = &unk_1F4CEEEF8;
    v7 = *(a2 + 8);
    v8 = *(a2 + 40);
    *(this + 264) = *(a2 + 24);
    *(this + 280) = v8;
    *(this + 248) = v7;
    result = *(a2 + 56);
    v9 = *(a2 + 72);
    v10 = *(a2 + 88);
    *(this + 172) = *(a2 + 52);
    *(this + 312) = v9;
    *(this + 328) = v10;
    *(this + 296) = result;
    *(this + 352) = 1;
  }

  return result;
}

void *raven::RavenActivityStateEstimatorActiveObject::HandleEvent(raven::RavenActivityStateEstimatorActiveObject *this, const raven::FitnessSessionEvent *a2)
{
  if (*(this + 792) == 1)
  {
    v3 = this + 368;
    v4 = a2 + 8;

    return memcpy(v3, v4, 0x1A1uLL);
  }

  else
  {
    *(this + 45) = &unk_1F4CEF508;
    result = memcpy(this + 368, a2 + 8, 0x1A1uLL);
    *(this + 792) = 1;
  }

  return result;
}

uint64_t raven::RavenActivityStateEstimatorActiveObject::HandleEvent(uint64_t this, const raven::RavenSystemEvent *a2)
{
  if (!*(a2 + 26))
  {
    return (*(*this + 40))();
  }

  return this;
}

__n128 raven::RavenActivityStateEstimatorActiveObject::HandleEvent(raven::RavenActivityStateEstimatorActiveObject *this, const raven::StepCountEvent *a2)
{
  v2 = *(this + 1200);
  if (v2 == 1 && *(a2 + 38) == *(this + 298) + 1)
  {
    if (*(this + 1368) == 1)
    {
      v3 = *(this + 1160);
      *(this + 82) = *(this + 1144);
      *(this + 83) = v3;
      *(this + 84) = *(this + 1176);
      v4 = *(this + 1096);
      *(this + 78) = *(this + 1080);
      *(this + 79) = v4;
      v5 = *(this + 1128);
      *(this + 80) = *(this + 1112);
      *(this + 81) = v5;
      v6 = *(this + 1064);
      *(this + 76) = *(this + 1048);
      *(this + 170) = *(this + 149);
      *(this + 77) = v6;
    }

    else if (*(this + 1368))
    {
      *(this + 1368) = 0;
    }

    else
    {
      v20 = *(this + 1160);
      *(this + 82) = *(this + 1144);
      *(this + 83) = v20;
      *(this + 84) = *(this + 1176);
      v21 = *(this + 1096);
      *(this + 78) = *(this + 1080);
      *(this + 79) = v21;
      v22 = *(this + 1128);
      *(this + 80) = *(this + 1112);
      *(this + 81) = v22;
      v23 = *(this + 1064);
      *(this + 76) = *(this + 1048);
      *(this + 151) = &unk_1F4CEEBE8;
      *(this + 170) = *(this + 149);
      *(this + 77) = v23;
      *(this + 1368) = 1;
    }

LABEL_8:
    v7 = *(a2 + 24);
    *(this + 1048) = *(a2 + 8);
    *(this + 1064) = v7;
    v8 = *(a2 + 40);
    v9 = *(a2 + 56);
    v10 = *(a2 + 88);
    *(this + 1112) = *(a2 + 72);
    *(this + 1128) = v10;
    *(this + 1080) = v8;
    *(this + 1096) = v9;
    result = *(a2 + 104);
    v12 = *(a2 + 120);
    v13 = *(a2 + 136);
    *(this + 149) = *(a2 + 19);
    *(this + 1160) = v12;
    *(this + 1176) = v13;
    *(this + 1144) = result;
    return result;
  }

  if (*(this + 1368) == 1)
  {
    *(this + 1368) = 0;
  }

  if (v2)
  {
    goto LABEL_8;
  }

  *(this + 130) = &unk_1F4CEEBE8;
  v14 = *(a2 + 24);
  *(this + 1048) = *(a2 + 8);
  *(this + 1064) = v14;
  v15 = *(a2 + 40);
  v16 = *(a2 + 56);
  v17 = *(a2 + 88);
  *(this + 1112) = *(a2 + 72);
  *(this + 1128) = v17;
  *(this + 1080) = v15;
  *(this + 1096) = v16;
  result = *(a2 + 104);
  v18 = *(a2 + 120);
  v19 = *(a2 + 136);
  *(this + 149) = *(a2 + 19);
  *(this + 1160) = v18;
  *(this + 1176) = v19;
  *(this + 1144) = result;
  *(this + 1200) = 1;
  return result;
}

void raven::RavenActivityStateEstimatorActiveObject::Reset(raven::RavenActivityStateEstimatorActiveObject *this)
{
  if (*(this + 224) == 1)
  {
    if (*(this + 352) == 1)
    {
      *(this + 352) = 0;
    }

    if (*(this + 792) == 1)
    {
      *(this + 792) = 0;
    }

    if (*(this + 1032) == 1)
    {
      *(this + 100) = &unk_1F4CEE060;
      v2 = *(this + 126);
      if (v2)
      {
        *(this + 127) = v2;
        operator delete(v2);
      }

      *(this + 1032) = 0;
    }

    if (*(this + 1200) == 1)
    {
      *(this + 1200) = 0;
    }

    if (*(this + 1368) == 1)
    {
      *(this + 1368) = 0;
    }

    *(this + 1376) = 0;
    *(this + 207) = 0;
    *(this + 208) = 0x7FF8000000000000;
  }

  *(this + 128) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0x7FF8000000000000;
  *(this + 19) = 0;
  *(this + 105) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0x7FF8000000000000;

  cnframework::ActiveObjectBase::ResetEventQueue(this);
}

void sub_1D0E2DC4C(raven::RavenCoarseOdometerActiveObject *a1)
{
  sub_1D0DC7B20(a1);

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0E2DC84(uint64_t a1)
{
  if (*(a1 + 768) == 1)
  {
    *(a1 + 536) = &unk_1F4CEE060;
    v2 = *(a1 + 744);
    if (v2)
    {
      *(a1 + 752) = v2;
      operator delete(v2);
    }
  }

  return a1;
}

void *raven::RavenSequentialGNSSMeasurementSelector::LogClockOffsetCorrection(void *this, double a2)
{
  if (*(this + 1) && *(this + 1506))
  {
    v3 = sub_1D0BCD7C4(this + 189, "NOTE: Clock offset corrected by ", 32);
    v4 = MEMORY[0x1D387E990](v3, a2 * 299.792458);

    return sub_1D0BCD7C4(v4, " meters\n\n", 9);
  }

  return this;
}

uint64_t raven::RavenSequentialGNSSMeasurementSelector::CheckGnssInnovationThresholds(uint64_t a1, double *a2, double a3)
{
  if (*a2 >= 0.0)
  {
    v12 = 12;
    v11 = 4;
    v8 = cnprint::CNLogFormatter::FormatGeneral((a1 + 208), "#MSR negative rejection threshold invalid,%.3f", a3);
  }

  else
  {
    v4 = a2[1];
    if (v4 >= 0.0)
    {
      v12 = 12;
      v11 = 4;
      v8 = cnprint::CNLogFormatter::FormatGeneral((a1 + 208), "#MSR negative re-weight threshold invalid,%.3f", a3);
    }

    else
    {
      v5 = a2[2];
      if (v5 <= 0.0)
      {
        v12 = 12;
        v11 = 4;
        v8 = cnprint::CNLogFormatter::FormatGeneral((a1 + 208), "#MSR positive re-weight threshold invalid,%.3f", a3);
      }

      else
      {
        v6 = a2[3];
        if (v6 <= 0.0)
        {
          v12 = 12;
          v11 = 4;
          v8 = cnprint::CNLogFormatter::FormatGeneral((a1 + 208), "#MSR positive rejection threshold invalid,%.3f", a3);
        }

        else
        {
          v7 = fabs(v4);
          if (fabs(*a2) >= v7)
          {
            if (v7 >= a3)
            {
              if (v6 >= v5)
              {
                if (v5 >= a3)
                {
                  return 1;
                }

                v12 = 12;
                v11 = 4;
                v8 = cnprint::CNLogFormatter::FormatGeneral((a1 + 208), "#MSR positive re-weight threshold should be outside target sigma count,reweight,%.3f,target,%.3lf", a3);
              }

              else
              {
                v12 = 12;
                v11 = 4;
                v8 = cnprint::CNLogFormatter::FormatGeneral((a1 + 208), "#MSR positive rejection threshold should be outside negative re-weight threshold,reject,%.3lf,reweight,%.3lf", a3);
              }
            }

            else
            {
              v12 = 12;
              v11 = 4;
              v8 = cnprint::CNLogFormatter::FormatGeneral((a1 + 208), "#MSR negative re-weight threshold should be outside target sigma count,reweight_abs,%.3f,target,%.3lf", a3);
            }
          }

          else
          {
            v12 = 12;
            v11 = 4;
            v8 = cnprint::CNLogFormatter::FormatGeneral((a1 + 208), "#MSR negative rejection threshold should be outside negative re-weight threshold,reject,%.3lf,reweight,%.3lf", a3);
          }
        }
      }
    }
  }

  if (*(a1 + 231) >= 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = *(a1 + 208);
  }

  cnprint::CNPrinter::Print(&v12, &v11, "%s", v9);
  return 0;
}

uint64_t sub_1D0E2DF2C()
{
  qword_1EE054D80 = 0x100000001;
  qword_1EE054D68 = &unk_1F4CDF418;
  qword_1EE054D88 = &unk_1EE054D90;
  *&v0 = 0x100000001;
  *(&v0 + 1) = 0x100000001;
  *&dword_1EE054D70 = v0;
  return sub_1D0BBBC00(&qword_1EE054D68, 0.0);
}

double raven::RavenSequentialGNSSMeasurementSelector::ComputeReweightedMeasurementVariance(uint64_t a1, uint64_t a2)
{
  TargetSigmaCount = raven::RavenSequentialGNSSMeasurementSelector::GetTargetSigmaCount(a1, a2);
  v5 = COERCE_DOUBLE(raven::RavenSequentialGNSSMeasurementSelector::ComputeReweightedMeasurementVariance(a1, a2, TargetSigmaCount));
  if (*(a2 + 184) == 1)
  {
    v8 = *(a2 + 8);
    v9 = *(v8 + 96) - 1;
    v10 = 0.0;
    if (v9 <= 2)
    {
      v10 = *(*(a1 + 192) + qword_1D0EA3E28[v9]);
    }

    v11 = fabs(*(a2 + 152));
    if (v10 <= v11)
    {
      v10 = v11;
    }

    if (v10 <= *(v8 + 168))
    {
      v10 = *(v8 + 168);
    }

    result = v10 * v10;
    if ((v6 & 1) != 0 && result <= v5)
    {
      return v5;
    }
  }

  return result;
}