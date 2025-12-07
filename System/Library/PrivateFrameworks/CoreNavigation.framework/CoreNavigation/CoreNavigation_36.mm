void sub_1D0D861FC(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x1D387ECA0);
}

void *sub_1D0D86360(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      sub_1D0D8626C(a3, a2[1]);
      return 0;
    }

    v7 = a2[1];
    (**v7)(v7, a2, a3, a4, a5);
    operator delete(v7);
    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    v9 = a2[1];
    *a3 = sub_1D0D86360;
    a3[1] = v9;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return &unk_1F4CE0AC0;
  }

  if (a4)
  {
    v6 = sub_1D0B7CA64(a4, &unk_1F4CE0AC0);
  }

  else
  {
    v6 = a5 == &std::__any_imp::__unique_typeinfo<raven::h_DeviceVelocityArgs_RavenPNT<double>>::__id;
  }

  if (v6)
  {
    return a2[1];
  }

  else
  {
    return 0;
  }
}

double sub_1D0D8644C(uint64_t a1, unsigned int a2, double *a3)
{
  if (*(a1 + 16) != a2)
  {
    __assert_rtn("operator=", "cnsubvector.h", 347, "this->num_elements_ == A.num_elements_");
  }

  if (a2 >= 1)
  {
    v3 = *(a1 + 136);
    v4 = *(*(a1 + 96) + 32);
    v5 = *(a1 + 32);
    v6 = a2;
    do
    {
      v7 = *a3++;
      result = v7;
      v9 = *v3++;
      *(v4 + 8 * v9) = result;
      *v5++ = result;
      --v6;
    }

    while (v6);
  }

  return result;
}

void *sub_1D0D864C0(void *result)
{
  result[13] = &unk_1F4CDEAF8;
  *result = &unk_1F4CD5E28;
  return result;
}

uint64_t sub_1D0D86560(uint64_t a1)
{
  *(a1 + 24) = 0x100000006;
  *a1 = &unk_1F4CE0BF8;
  *(a1 + 32) = a1 + 40;
  *(a1 + 8) = xmmword_1D0E84530;
  return sub_1D0BBBC00(a1, 0.0);
}

uint64_t sub_1D0D865A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 12);
  if (v6 <= v7)
  {
    v8 = *(a1 + 12);
  }

  else
  {
    v8 = *(a1 + 8);
  }

  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9 && v8 == 3;
  if (v10 && ((v11 = *(a2 + 8), v12 = *(a2 + 12), v11 <= v12) ? (v13 = *(a2 + 12)) : (v13 = *(a2 + 8)), v11 ? (v14 = v12 == 0) : (v14 = 1), !v14 ? (v15 = v13 == 3) : (v15 = 0), v15))
  {
    v22 = 0x100000003;
    v20 = &unk_1F4CDEB28;
    v21 = xmmword_1D0E7DCC0;
    v23 = &v24;
    sub_1D0B88838(a1, a2, &v20);
    sub_1D0B894B0(a4, &v20);
    v22 = 0x300000003;
    v20 = &unk_1F4CD5DD0;
    v21 = xmmword_1D0E76C10;
    v26 = 0;
    v25 = 0u;
    v28 = 0u;
    v23 = &v24;
    v24 = 0x3FF0000000000000;
    v27 = 0x3FF0000000000000;
    v29 = 0;
    v30 = 0x3FF0000000000000;
    sub_1D0B894B0(a5, &v20);
    v22 = 0x300000003;
    v20 = &unk_1F4CD5DD0;
    v21 = xmmword_1D0E76C10;
    v26 = 0;
    v25 = 0u;
    v28 = 0u;
    v23 = &v24;
    v24 = 0x3FF0000000000000;
    v27 = 0x3FF0000000000000;
    v29 = 0;
    v30 = 0x3FF0000000000000;
    sub_1D0B894B0(a6, &v20);
    return 0;
  }

  else
  {
    LOWORD(v20) = 12;
    v31 = 4;
    cnprint::CNPrinter::Print(&v20, &v31, "f_ThreeStateNearlyConstant called with inadequate matrices.", a4, a5, a6);
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_1D0D867B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x100000007;
  *(a1 + 8) = xmmword_1D0E84420;
  *(a1 + 32) = a1 + 40;
  *a1 = &unk_1F4CE0C40;
  *(a1 + 96) = a2;
  *(a1 + 128) = 0x100000007;
  *(a1 + 104) = &unk_1F4CE0C88;
  *(a1 + 112) = xmmword_1D0E84420;
  *(a1 + 136) = a1 + 144;
  sub_1D0B9F5D4(a1 + 104, a3);
  v6 = *(a1 + 112);
  v5 = *(a1 + 116);
  *(a1 + 8) = v6;
  *(a1 + 12) = v5;
  v7 = (v5 * v6);
  *(a1 + 16) = v7;
  *(a1 + 20) = v6;
  if (v7 >= 1)
  {
    v8 = *(a1 + 136);
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

void sub_1D0D86890(void *a1)
{
  a1[13] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

void sub_1D0D8691C(uint64_t a1)
{
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

void sub_1D0D869E8(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x1D387ECA0);
}

void *sub_1D0D86B4C(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      sub_1D0D86A58(a3, a2[1]);
      return 0;
    }

    v7 = a2[1];
    (**v7)(v7, a2, a3, a4, a5);
    operator delete(v7);
    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    v9 = a2[1];
    *a3 = sub_1D0D86B4C;
    a3[1] = v9;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return &unk_1F4CE0B68;
  }

  if (a4)
  {
    v6 = sub_1D0B7CA64(a4, &unk_1F4CE0B68);
  }

  else
  {
    v6 = a5 == &std::__any_imp::__unique_typeinfo<raven::h_UserVelocityArgs_RavenPNT<double>>::__id;
  }

  if (v6)
  {
    return a2[1];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0D86C38(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v2 = *(a2 + 12);
  *(a1 + 24) = 0x100000004;
  *a1 = &unk_1F4CDFDB8;
  *(a1 + 8) = v2;
  *(a1 + 12) = v3;
  *(a1 + 16) = v3 * v2;
  *(a1 + 20) = v2;
  *(a1 + 32) = a1 + 40;
  return sub_1D0D2EF0C(a2, a1);
}

uint64_t sub_1D0D86CE4(uint64_t a1)
{
  *(a1 + 24) = 0x100000013;
  *a1 = &unk_1F4CE40B8;
  *(a1 + 32) = a1 + 40;
  *(a1 + 8) = xmmword_1D0E844F0;
  return sub_1D0BBBC00(a1, 0.0);
}

uint64_t sub_1D0D86D28(uint64_t a1)
{
  *(a1 + 24) = 0x1300000013;
  *a1 = &unk_1F4CE4070;
  *(a1 + 32) = a1 + 40;
  *(a1 + 8) = xmmword_1D0E84640;
  return sub_1D0BBBC00(a1, 0.0);
}

uint64_t sub_1D0D86D68(uint64_t a1)
{
  *(a1 + 24) = 0xF00000013;
  *a1 = &unk_1F4CE4028;
  *(a1 + 32) = a1 + 40;
  *(a1 + 8) = xmmword_1D0E84650;
  return sub_1D0BBBC00(a1, 0.0);
}

double sub_1D0D86DAC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = 0x300000003;
  *a3 = &unk_1F4CD5DD0;
  *(a3 + 8) = xmmword_1D0E76C10;
  *(a3 + 32) = a3 + 40;
  *&result = *&sub_1D0BA5A78(a1, a2, a3);
  return result;
}

uint64_t sub_1D0D86DEC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2 != *(a2 + 8))
  {
    __assert_rtn("operator=", "cnsubmatrix.h", 376, "this->num_rows_ == A.num_rows_");
  }

  v3 = *(result + 12);
  if (v3 != *(a2 + 12))
  {
    __assert_rtn("operator=", "cnsubmatrix.h", 377, "this->num_cols_ == A.num_cols_");
  }

  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = *(a2 + 32);
    do
    {
      if (v2)
      {
        v7 = *(result + 168);
        v8 = *(result + 208);
        v9 = *(v7 + 20) * *(*(result + 264) + 4 * v5);
        v10 = *(v7 + 32);
        v11 = *(result + 32);
        v12 = *(result + 20) * v5;
        v13 = v4;
        v14 = v2;
        do
        {
          v15 = *(v6 + 8 * v13);
          v16 = *v8++;
          *(v10 + 8 * (v16 + v9)) = v15;
          *(v11 + 8 * v12++) = v15;
          ++v13;
          --v14;
        }

        while (v14);
      }

      ++v5;
      v4 += v2;
    }

    while (v5 != v3);
  }

  return result;
}

void *sub_1D0D86ED8(void *result)
{
  result[29] = &unk_1F4CDEAF8;
  result[22] = &unk_1F4CDEAF8;
  *result = &unk_1F4CD5E28;
  return result;
}

double sub_1D0D86F38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x100000004;
  *a1 = &unk_1F4CDEBB8;
  *(a1 + 8) = xmmword_1D0E7DCE0;
  *(a1 + 32) = a1 + 40;
  *&result = *&sub_1D0B88838(a2, a3, a1);
  return result;
}

uint64_t sub_1D0D86FC4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = 0x100000001;
  v6 = &unk_1F4CDF158;
  *&v4 = 0x100000001;
  *(&v4 + 1) = 0x100000001;
  v7 = v4;
  v9 = &v10;
  v10 = a4;
  return sub_1D0D8786C(a1, a2, a3, &v6);
}

uint64_t sub_1D0D87024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = 0x100000004;
  *a3 = &unk_1F4CDEBB8;
  *(a3 + 8) = xmmword_1D0E7DCE0;
  *(a3 + 32) = a3 + 40;
  return sub_1D0B89390(a1, a2, a3);
}

double sub_1D0D870A8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = 0x400000004;
  *a3 = &unk_1F4CDEB70;
  *(a3 + 8) = xmmword_1D0E7DCD0;
  *(a3 + 32) = a3 + 40;
  *&result = *&sub_1D0B88838(a1, a2, a3);
  return result;
}

double sub_1D0D87128(uint64_t a1, uint64_t a2, float64x2_t a3)
{
  *(a1 + 24) = 0x400000004;
  *a1 = &unk_1F4CDEB70;
  *(a1 + 8) = xmmword_1D0E7DCD0;
  *(a1 + 32) = a1 + 40;
  *&result = *&sub_1D0BC5ED4(a2, a1, a3);
  return result;
}

uint64_t sub_1D0D87170(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2 != *(a2 + 8))
  {
    __assert_rtn("operator=", "cnsubmatrix.h", 376, "this->num_rows_ == A.num_rows_");
  }

  v3 = *(result + 12);
  if (v3 != *(a2 + 12))
  {
    __assert_rtn("operator=", "cnsubmatrix.h", 377, "this->num_cols_ == A.num_cols_");
  }

  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = *(a2 + 32);
    do
    {
      if (v2)
      {
        v7 = *(result + 72);
        v8 = *(result + 112);
        v9 = *(v7 + 20) * *(*(result + 168) + 4 * v5);
        v10 = *(v7 + 32);
        v11 = *(result + 32);
        v12 = *(result + 20) * v5;
        v13 = v4;
        v14 = v2;
        do
        {
          v15 = *(v6 + 8 * v13);
          v16 = *v8++;
          *(v10 + 8 * (v16 + v9)) = v15;
          *(v11 + 8 * v12++) = v15;
          ++v13;
          --v14;
        }

        while (v14);
      }

      ++v5;
      v4 += v2;
    }

    while (v5 != v3);
  }

  return result;
}

void *sub_1D0D8725C(void *result)
{
  result[17] = &unk_1F4CDEAF8;
  result[10] = &unk_1F4CDEAF8;
  *result = &unk_1F4CD5E28;
  return result;
}

double sub_1D0D872BC(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 0x400000004;
  *a1 = &unk_1F4CDEB70;
  *(a1 + 8) = xmmword_1D0E7DCD0;
  *(a1 + 32) = a1 + 40;
  *&result = *&sub_1D0BA5940(a2, a1);
  return result;
}

uint64_t sub_1D0D87304(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2 != *(a2 + 8))
  {
    __assert_rtn("operator=", "cnsubmatrix.h", 436, "this->num_rows_ == A.num_rows_");
  }

  v3 = *(result + 12);
  if (v3 != *(a2 + 12))
  {
    __assert_rtn("operator=", "cnsubmatrix.h", 437, "this->num_cols_ == A.num_cols_");
  }

  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = *(a2 + 32);
    do
    {
      if (v2)
      {
        v7 = *(result + 136);
        v8 = *(result + 176);
        v9 = *(v7 + 20) * *(*(result + 232) + 4 * v5);
        v10 = *(v7 + 32);
        v11 = *(result + 32);
        v12 = *(result + 20) * v5;
        v13 = v4;
        v14 = v2;
        do
        {
          v15 = *(v6 + 8 * v13);
          v16 = *v8++;
          *(v10 + 8 * (v16 + v9)) = v15;
          *(v11 + 8 * v12++) = v15;
          ++v13;
          --v14;
        }

        while (v14);
      }

      ++v5;
      v4 += v2;
    }

    while (v5 != v3);
  }

  return result;
}

void *sub_1D0D873F0(void *result)
{
  result[25] = &unk_1F4CDEAF8;
  result[18] = &unk_1F4CDEAF8;
  *result = &unk_1F4CD5E28;
  return result;
}

uint64_t sub_1D0D87450(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2 != *(a2 + 8))
  {
    __assert_rtn("operator=", "cnsubmatrix.h", 436, "this->num_rows_ == A.num_rows_");
  }

  v3 = *(result + 12);
  if (v3 != *(a2 + 12))
  {
    __assert_rtn("operator=", "cnsubmatrix.h", 437, "this->num_cols_ == A.num_cols_");
  }

  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = *(a2 + 32);
    do
    {
      if (v2)
      {
        v7 = *(result + 112);
        v8 = *(result + 152);
        v9 = *(v7 + 20) * *(*(result + 208) + 4 * v5);
        v10 = *(v7 + 32);
        v11 = *(result + 32);
        v12 = *(result + 20) * v5;
        v13 = v4;
        v14 = v2;
        do
        {
          v15 = *(v6 + 8 * v13);
          v16 = *v8++;
          *(v10 + 8 * (v16 + v9)) = v15;
          *(v11 + 8 * v12++) = v15;
          ++v13;
          --v14;
        }

        while (v14);
      }

      ++v5;
      v4 += v2;
    }

    while (v5 != v3);
  }

  return result;
}

void sub_1D0D87578(uint64_t a1)
{
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

void sub_1D0D87644(void *a1)
{
  a1[9] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0D87694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 24) = 0x400000004;
  *(a1 + 8) = xmmword_1D0E7DCD0;
  *(a1 + 32) = a1 + 40;
  *a1 = &unk_1F4CE0D88;
  *(a1 + 168) = a2;
  *(a1 + 200) = 0x100000004;
  *(a1 + 176) = &unk_1F4CDFDB8;
  *(a1 + 184) = xmmword_1D0E7DCE0;
  *(a1 + 208) = a1 + 216;
  *(a1 + 256) = 0x100000004;
  *(a1 + 232) = &unk_1F4CDFDB8;
  *(a1 + 240) = xmmword_1D0E7DCE0;
  *(a1 + 264) = a1 + 272;
  sub_1D0B9F5D4(a1 + 176, a3);
  sub_1D0B9F5D4(a1 + 232, a4);
  v7 = *(a1 + 192);
  v8 = *(a1 + 248);
  *(a1 + 8) = v7;
  *(a1 + 12) = v8;
  *(a1 + 16) = v8 * v7;
  *(a1 + 20) = v7;
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    v11 = *(a2 + 20);
    v12 = *(a2 + 32);
    do
    {
      if (v7)
      {
        v13 = *(a1 + 208);
        v14 = *(*(a1 + 264) + 4 * v10) * v11;
        v15 = *(a1 + 32);
        v16 = v9;
        v17 = v7;
        do
        {
          v18 = *v13++;
          *(v15 + 8 * v16++) = *(v12 + 8 * (v18 + v14));
          --v17;
        }

        while (v17);
      }

      ++v10;
      v9 += v7;
    }

    while (v10 != v8);
  }

  return a1;
}

void sub_1D0D877FC(void *a1)
{
  a1[29] = &unk_1F4CDEAF8;
  a1[22] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0D8786C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 24) = 0x100000004;
  *(a1 + 8) = xmmword_1D0E7DCE0;
  *(a1 + 32) = a1 + 40;
  *a1 = &unk_1F4CE0DD0;
  *(a1 + 72) = a2;
  *(a1 + 104) = 0x100000004;
  *(a1 + 80) = &unk_1F4CDFDB8;
  *(a1 + 88) = xmmword_1D0E7DCE0;
  *(a1 + 112) = a1 + 120;
  *(a1 + 160) = 0x100000001;
  *(a1 + 136) = &unk_1F4CDF158;
  *&v7 = 0x100000001;
  *(&v7 + 1) = 0x100000001;
  *(a1 + 144) = v7;
  *(a1 + 168) = a1 + 176;
  sub_1D0B9F5D4(a1 + 80, a3);
  sub_1D0B9F5D4(a1 + 136, a4);
  v8 = *(a1 + 96);
  v9 = *(a1 + 152);
  *(a1 + 8) = v8;
  *(a1 + 12) = v9;
  *(a1 + 16) = v9 * v8;
  *(a1 + 20) = v8;
  if (v9)
  {
    v10 = 0;
    v11 = 0;
    v12 = *(a2 + 20);
    v13 = *(a2 + 32);
    do
    {
      if (v8)
      {
        v14 = *(a1 + 112);
        v15 = *(*(a1 + 168) + 4 * v11) * v12;
        v16 = *(a1 + 32);
        v17 = v10;
        v18 = v8;
        do
        {
          v19 = *v14++;
          *(v16 + 8 * v17++) = *(v13 + 8 * (v19 + v15));
          --v18;
        }

        while (v18);
      }

      ++v11;
      v10 += v8;
    }

    while (v11 != v9);
  }

  return a1;
}

void sub_1D0D879D0(void *a1)
{
  a1[17] = &unk_1F4CDEAF8;
  a1[10] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0D87A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 24) = 0x300000004;
  *(a1 + 8) = xmmword_1D0E7DCF0;
  *(a1 + 32) = a1 + 40;
  *a1 = &unk_1F4CE0E18;
  *(a1 + 136) = a2;
  *(a1 + 168) = 0x100000004;
  *(a1 + 144) = &unk_1F4CDFDB8;
  *(a1 + 152) = xmmword_1D0E7DCE0;
  *(a1 + 176) = a1 + 184;
  *(a1 + 224) = 0x100000003;
  *(a1 + 200) = &unk_1F4CDEAA0;
  *(a1 + 208) = xmmword_1D0E7DCC0;
  *(a1 + 232) = a1 + 240;
  sub_1D0B9F5D4(a1 + 144, a3);
  sub_1D0B9F5D4(a1 + 200, a4);
  v7 = *(a1 + 160);
  v8 = *(a1 + 216);
  *(a1 + 8) = v7;
  *(a1 + 12) = v8;
  *(a1 + 16) = v8 * v7;
  *(a1 + 20) = v7;
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    v11 = *(a2 + 20);
    v12 = *(a2 + 32);
    do
    {
      if (v7)
      {
        v13 = *(a1 + 176);
        v14 = *(*(a1 + 232) + 4 * v10) * v11;
        v15 = *(a1 + 32);
        v16 = v9;
        v17 = v7;
        do
        {
          v18 = *v13++;
          *(v15 + 8 * v16++) = *(v12 + 8 * (v18 + v14));
          --v17;
        }

        while (v17);
      }

      ++v10;
      v9 += v7;
    }

    while (v10 != v8);
  }

  return a1;
}

void sub_1D0D87BBC(void *a1)
{
  a1[25] = &unk_1F4CDEAF8;
  a1[18] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

void sub_1D0D87C2C(uint64_t a1, int a2, int a3)
{
  *(a1 + 24) = 0x1A0000001ALL;
  *a1 = &unk_1F4CE3CC8;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  *(a1 + 16) = a3 * a2;
  *(a1 + 20) = a2;
  sub_1D0D858E0(a1);
}

void sub_1D0D87C90(_Unwind_Exception *exception_object)
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

uint64_t sub_1D0D87CD8(uint64_t a1, double *a2)
{
  v3 = *a2;
  if (*a2 >= 0.0 && v3 <= 1.0)
  {
    result = 0;
    *a1 = v3;
    *(a1 + 8) = v3;
    *(a1 + 16) = 1;
  }

  else
  {
    if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
    {
      v8 = 2;
      v7 = 1;
      cnprint::CNPrinter::Print(&v8, &v7, "WARNING: DiscreteEventDetector::Initialize called with bad xbar %.3lf.", *a2);
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_1D0D87D70(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = 0;
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    v5 = 292;
    do
    {
      v6 = (a1 + v5);
      *(v6 - 63) = *(a2 + v5 - 252);
      *v6 = *(a2 + v5);
      v7 = (a1 + v4);
      v7[68] = *(a2 + v4 + 544);
      v7[131] = *(a2 + v4 + 1048);
      v7[194] = *(a2 + v4 + 1552);
      v7[257] = *(a2 + v4 + 2056);
      v4 += 8;
      v5 += 4;
    }

    while (v4 != 504);
    *(a1 + 2560) = *(a2 + 2560);
    cnnavigation::LinearizedGravityModel::operator=(a1 + 2568, a2 + 2568);
    *(a1 + 2720) = *(a2 + 2720);
  }

  return a1;
}

void sub_1D0D87E2C(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 0x1A0000001ALL;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CE3CC8;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (a1 != a2)
  {
    v2 = *(a2 + 8);
    v3 = *(a2 + 12);
    *(a1 + 8) = v2;
    *(a1 + 12) = v3;
    *(a1 + 16) = v3 * v2;
    *(a1 + 20) = v2;
    sub_1D0D858E0(a1);
  }

  __assert_rtn("CNMatrix", "cnmatrix.h", 603, "this != &(A)");
}

void sub_1D0D87F84(_Unwind_Exception *exception_object)
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

void sub_1D0D87FCC(uint64_t a1)
{
  *(a1 + 24) = 0x1A0000001ALL;
  *a1 = &unk_1F4CE3CC8;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 8) = xmmword_1D0E84450;
  sub_1D0D858E0(a1);
}

void sub_1D0D88030(_Unwind_Exception *exception_object)
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

void sub_1D0D881B0(uint64_t a1, int a2, int a3)
{
  *(a1 + 24) = 0x1C0000001CLL;
  *a1 = &unk_1F4CE3F20;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  *(a1 + 16) = a3 * a2;
  *(a1 + 20) = a2;
  sub_1D0D8505C(a1);
}

void sub_1D0D88214(_Unwind_Exception *exception_object)
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

uint64_t sub_1D0D8825C(uint64_t a1, uint64_t a2, int a3, char a4, int a5, uint64_t a6, uint64_t a7, BOOL *a8, double a9)
{
  v38 = 0x10000001CLL;
  v36 = &unk_1F4CE0A20;
  v39 = v40;
  v37 = xmmword_1D0E843A0;
  memset(v40, 0, sizeof(v40));
  v41 = 0u;
  v16 = v40 + 3;
  memset(v42, 0, sizeof(v42));
  sub_1D0B894B0(a6, &v36);
  v17 = xmmword_1D0E84440;
  v18 = xmmword_1D0E7DD30;
  v19 = 13;
  v20 = vdupq_n_s64(0x13uLL);
  v21 = vdupq_n_s64(4uLL);
  do
  {
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(v20, v18)), *v17.i8).u8[0])
    {
      *(v16 - 3) = v19 - 13;
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x13uLL), *&v18)), *&v17).i8[2])
    {
      *(v16 - 2) = v19 - 12;
    }

    if (vuzp1_s16(*&v17, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x13uLL), *&v17))).i32[1])
    {
      *(v16 - 1) = v19 - 11;
      *v16 = v19 - 10;
    }

    v17 = vaddq_s64(v17, v21);
    v18 = vaddq_s64(v18, v21);
    v19 += 4;
    v16 += 4;
  }

  while (v19 != 33);
  v50 = 0x100000013;
  v52[1] = v40[1];
  v52[2] = v41;
  v48 = &unk_1F4CE2378;
  v51 = v52;
  v53[0] = v42[0];
  *(v53 + 12) = *(v42 + 12);
  v49 = xmmword_1D0E844F0;
  v52[0] = v40[0];
  v45 = 0x100000013;
  v44 = xmmword_1D0E844F0;
  v43 = &unk_1F4CE40B8;
  v46 = v47;
  sub_1D0D85CD4(a1, a2, &v43, a7);
  sub_1D0D98740(&v36, a6, &v48);
  sub_1D0D8874C(&v36, DWORD2(v44), v46);
  if (a4)
  {
    *&v40[0] = 0x1400000013;
    v50 = 0x100000002;
    v48 = &unk_1F4CE0EA8;
    v49 = xmmword_1D0E83F60;
    v51 = v52;
    *&v52[0] = 0x1400000013;
    v45 = 0x100000002;
    v43 = &unk_1F4CE0220;
    v46 = v47;
    v44 = xmmword_1D0E83F60;
    v47[0] = vaddq_f64(*(*(a1 + 32) + 152), *(*(a2 + 32) + 144));
    __asm { FMOV            V0.2D, #1.0 }

    *(a7 + 216) = _Q0;
    sub_1D0D89C74(&v36, a6, &v48);
    sub_1D0D887C0(&v36, DWORD2(v44), v46);
  }

  if (a5)
  {
    v27 = xmmword_1D0E84440;
    v28 = xmmword_1D0E7DD30;
    v29 = v40 + 3;
    v30 = 13;
    v31 = vdupq_n_s64(7uLL);
    v32 = vdupq_n_s64(4uLL);
    do
    {
      if (vuzp1_s16(vmovn_s64(vcgtq_u64(v31, v28)), *v27.i8).u8[0])
      {
        *(v29 - 3) = v30 + 8;
      }

      if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(7uLL), *&v28)), *&v27).i8[2])
      {
        *(v29 - 2) = v30 + 9;
      }

      if (vuzp1_s16(*&v27, vmovn_s64(vcgtq_u64(vdupq_n_s64(7uLL), *&v27))).i32[1])
      {
        *(v29 - 1) = v30 + 10;
        *v29 = v30 + 11;
      }

      v27 = vaddq_s64(v27, v32);
      v28 = vaddq_s64(v28, v32);
      v30 += 4;
      v29 += 4;
    }

    while (v30 != 21);
    v50 = 0x100000007;
    v48 = &unk_1F4CE0C88;
    v51 = v52;
    v49 = xmmword_1D0E84420;
    v52[0] = v40[0];
    *(v52 + 12) = *(v40 + 12);
    v45 = 0x100000007;
    v44 = xmmword_1D0E84420;
    v43 = &unk_1F4CE0BB0;
    v46 = v47;
    if (sub_1D0D88874(a1, a2, a3, &v43, a7, a8, a9))
    {
      return 0xFFFFFFFFLL;
    }

    sub_1D0D867B8(&v36, a6, &v48);
    sub_1D0D8644C(&v36, DWORD2(v44), v46);
  }

  return 0;
}

double sub_1D0D8874C(uint64_t a1, unsigned int a2, double *a3)
{
  if (*(a1 + 16) != a2)
  {
    __assert_rtn("operator=", "cnsubvector.h", 347, "this->num_elements_ == A.num_elements_");
  }

  if (a2 >= 1)
  {
    v3 = *(a1 + 232);
    v4 = *(*(a1 + 192) + 32);
    v5 = *(a1 + 32);
    v6 = a2;
    do
    {
      v7 = *a3++;
      result = v7;
      v9 = *v3++;
      *(v4 + 8 * v9) = result;
      *v5++ = result;
      --v6;
    }

    while (v6);
  }

  return result;
}

double sub_1D0D887C0(uint64_t a1, unsigned int a2, double *a3)
{
  if (*(a1 + 16) != a2)
  {
    __assert_rtn("operator=", "cnsubvector.h", 347, "this->num_elements_ == A.num_elements_");
  }

  if (a2 >= 1)
  {
    v3 = *(a1 + 96);
    v4 = *(*(a1 + 56) + 32);
    v5 = *(a1 + 32);
    v6 = a2;
    do
    {
      v7 = *a3++;
      result = v7;
      v9 = *v3++;
      *(v4 + 8 * v9) = result;
      *v5++ = result;
      --v6;
    }

    while (v6);
  }

  return result;
}

void *sub_1D0D88834(void *result)
{
  result[8] = &unk_1F4CDEAF8;
  *result = &unk_1F4CD5E28;
  return result;
}

uint64_t sub_1D0D88874(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, BOOL *a6, double a7)
{
  if ((*&a7 <= -1 || ((*&a7 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&a7 - 1) >= 0xFFFFFFFFFFFFFLL && (*&a7 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  *(a4 + 8) = xmmword_1D0E84420;
  if (a3)
  {
    if (a3 == 1)
    {
      v237 = 0x100000003;
      v235 = &unk_1F4CDEAA0;
      v236 = xmmword_1D0E7DCC0;
      v240 = 2;
      v238 = &v239;
      v239 = 0x100000000;
      v231 = 0x100000003;
      v229 = &unk_1F4CDEAA0;
      v230 = xmmword_1D0E7DCC0;
      v234 = 23;
      v232 = &v233;
      v233 = 0x1600000015;
      v225 = 0x100000003;
      v223 = &unk_1F4CDEAA0;
      v226 = &v227;
      v224 = xmmword_1D0E7DCC0;
      v228 = 2;
      v227 = 0x100000000;
      v219 = 0x100000003;
      v217 = &unk_1F4CDEAA0;
      v220 = &v221;
      v218 = xmmword_1D0E7DCC0;
      v222 = 22;
      v221 = 0x1500000014;
      v213 = 0x100000003;
      v211 = &unk_1F4CDEAA0;
      v214 = &v215;
      v212 = xmmword_1D0E7DCC0;
      v216 = 2;
      v215 = 0x100000000;
      v181 = 0x500000004;
      v207 = 0x100000003;
      v205 = &unk_1F4CDEAA0;
      v208 = &v209;
      v206 = xmmword_1D0E7DCC0;
      v210 = 6;
      v209 = 0x500000004;
      v17 = *(a1 + 32);
      v18 = v17[6];
      v19 = v17[7];
      v20 = v17[8];
      v21 = v17[9];
      v22 = sqrt(v19 * v19 + v18 * v18 + v20 * v20 + v21 * v21);
      v23 = 1.0;
      v24 = 0.0;
      v25 = 0.0;
      v26 = 0.0;
      v27 = 0.0;
      v28 = 1.0;
      if (fabs(v22) >= 2.22044605e-16)
      {
        v25 = v18 / v22;
        v26 = v19 / v22;
        v27 = v20 / v22;
        v28 = v21 / v22;
      }

      v29 = sqrt(v26 * v26 + v25 * v25 + v27 * v27 + v28 * v28);
      v30 = 0.0;
      v31 = 0.0;
      if (fabs(v29) >= 2.22044605e-16)
      {
        v24 = -v25 / v29;
        v30 = -v26 / v29;
        v31 = -v27 / v29;
        v23 = v28 / v29;
      }

      v202.f64[0] = v24;
      v202.f64[1] = v30;
      v203 = v31;
      v204 = v23;
      cnrotation::CNRotation::RotationMatrix(v199, &v202);
      sub_1D0D7B740(v178, a1, &v229);
      sub_1D0D7B7A4(&v120, *(a2 + 32), &v217);
      v196 = 0x100000003;
      v195 = xmmword_1D0E7DCC0;
      v194 = &unk_1F4CDEB28;
      v197 = &v198;
      sub_1D0B88838(v178, &v120, &v194);
      sub_1D0D7B740(v188, a1, &v235);
      sub_1D0D7B7A4(v187, *(a2 + 32), &v223);
      v191 = 0x100000003;
      v190 = xmmword_1D0E7DCC0;
      v189 = &unk_1F4CDEB28;
      v192 = &v193;
      sub_1D0B88838(v188, v187, &v189);
      v184 = 0x100000003;
      v182 = &unk_1F4CDEB28;
      v183 = xmmword_1D0E7DCC0;
      v185 = &v186;
      sub_1D0B89390(v199, &v194, &v182);
      v122 = 0x100000003;
      v121 = xmmword_1D0E7DCC0;
      v120 = &unk_1F4CDEB28;
      v123 = v124;
      sub_1D0B88838(&v189, &v182, &v120);
      sub_1D0BFA8EC(v178, a4, &v211);
      sub_1D0BFB134(v178, &v120);
      cnrotation::CNRotation::dRdq1(&v202, &v189);
      cnrotation::CNRotation::dRdq2(&v202, v188);
      cnrotation::CNRotation::dRdq3(&v202, v187);
      cnrotation::CNRotation::dRdq4(&v202, &v182);
      cnrotation::CNRotation::dqddq(v178, &v202);
      v32.f64[0] = *v180;
      v165 = 0x300000003;
      v164 = xmmword_1D0E76C10;
      v163 = &unk_1F4CD5DD0;
      v166 = v167;
      v33 = sub_1D0BC5ED4(&v189, &v163, v32);
      v33.f64[0] = v180[1];
      v152 = 0x300000003;
      v151 = xmmword_1D0E76C10;
      v150 = &unk_1F4CD5DD0;
      v153 = &v154;
      sub_1D0BC5ED4(v188, &v150, v33);
      v170 = 0x300000003;
      v169 = xmmword_1D0E76C10;
      v168 = &unk_1F4CD5DD0;
      v171 = v172;
      v34 = sub_1D0B88838(&v163, &v150, &v168);
      v34.f64[0] = v180[2];
      v147 = 0x300000003;
      v146 = xmmword_1D0E76C10;
      v145 = &unk_1F4CD5DD0;
      v148 = v149;
      sub_1D0BC5ED4(v187, &v145, v34);
      v122 = 0x300000003;
      v121 = xmmword_1D0E76C10;
      v120 = &unk_1F4CD5DD0;
      v123 = v124;
      v35 = sub_1D0B88838(&v168, &v145, &v120);
      v35.f64[0] = v180[3];
      v142 = 0x300000003;
      v141 = xmmword_1D0E76C10;
      v140 = &unk_1F4CD5DD0;
      v143 = v144;
      sub_1D0BC5ED4(&v182, &v140, v35);
      v175 = 0x300000003;
      v174 = xmmword_1D0E76C10;
      v173 = &unk_1F4CD5DD0;
      v176 = &v177;
      v36 = sub_1D0B88838(&v120, &v140, &v173);
      v36.f64[0] = v180[v179];
      v152 = 0x300000003;
      v151 = xmmword_1D0E76C10;
      v150 = &unk_1F4CD5DD0;
      v153 = &v154;
      v37 = sub_1D0BC5ED4(&v189, &v150, v36);
      v37.f64[0] = v180[v179 + 1];
      v147 = 0x300000003;
      v146 = xmmword_1D0E76C10;
      v145 = &unk_1F4CD5DD0;
      v148 = v149;
      sub_1D0BC5ED4(v188, &v145, v37);
      v165 = 0x300000003;
      v164 = xmmword_1D0E76C10;
      v163 = &unk_1F4CD5DD0;
      v166 = v167;
      v38 = sub_1D0B88838(&v150, &v145, &v163);
      v38.f64[0] = v180[v179 + 2];
      v142 = 0x300000003;
      v141 = xmmword_1D0E76C10;
      v140 = &unk_1F4CD5DD0;
      v143 = v144;
      sub_1D0BC5ED4(v187, &v140, v38);
      v122 = 0x300000003;
      v121 = xmmword_1D0E76C10;
      v120 = &unk_1F4CD5DD0;
      v123 = v124;
      v39 = sub_1D0B88838(&v163, &v140, &v120);
      v39.f64[0] = v180[v179 + 3];
      v137 = 0x300000003;
      v136 = xmmword_1D0E76C10;
      v135 = &unk_1F4CD5DD0;
      v138 = v139;
      sub_1D0BC5ED4(&v182, &v135, v39);
      v170 = 0x300000003;
      v169 = xmmword_1D0E76C10;
      v168 = &unk_1F4CD5DD0;
      v171 = v172;
      v40 = sub_1D0B88838(&v120, &v135, &v168);
      v40.f64[0] = v180[2 * v179];
      v147 = 0x300000003;
      v146 = xmmword_1D0E76C10;
      v145 = &unk_1F4CD5DD0;
      v148 = v149;
      v41 = sub_1D0BC5ED4(&v189, &v145, v40);
      v41.f64[0] = v180[2 * v179 + 1];
      v142 = 0x300000003;
      v141 = xmmword_1D0E76C10;
      v140 = &unk_1F4CD5DD0;
      v143 = v144;
      sub_1D0BC5ED4(v188, &v140, v41);
      v152 = 0x300000003;
      v151 = xmmword_1D0E76C10;
      v150 = &unk_1F4CD5DD0;
      v153 = &v154;
      v42 = sub_1D0B88838(&v145, &v140, &v150);
      v42.f64[0] = v180[2 * v179 + 2];
      v137 = 0x300000003;
      v136 = xmmword_1D0E76C10;
      v135 = &unk_1F4CD5DD0;
      v138 = v139;
      sub_1D0BC5ED4(v187, &v135, v42);
      v122 = 0x300000003;
      v121 = xmmword_1D0E76C10;
      v120 = &unk_1F4CD5DD0;
      v123 = v124;
      v43 = sub_1D0B88838(&v150, &v135, &v120);
      v43.f64[0] = v180[2 * v179 + 3];
      v132 = 0x300000003;
      v131 = xmmword_1D0E76C10;
      v130 = &unk_1F4CD5DD0;
      v133 = v134;
      sub_1D0BC5ED4(&v182, &v130, v43);
      v165 = 0x300000003;
      v164 = xmmword_1D0E76C10;
      v163 = &unk_1F4CD5DD0;
      v166 = v167;
      sub_1D0B88838(&v120, &v130, &v163);
      v142 = 0x100000003;
      v141 = xmmword_1D0E7DCC0;
      v140 = &unk_1F4CDEB28;
      v143 = v144;
      sub_1D0B89390(&v173, &v194, &v140);
      v137 = 0x100000003;
      v136 = xmmword_1D0E7DCC0;
      v135 = &unk_1F4CDEB28;
      v138 = v139;
      sub_1D0B89390(&v168, &v194, &v135);
      v132 = 0x100000003;
      v131 = xmmword_1D0E7DCC0;
      v130 = &unk_1F4CDEB28;
      v133 = v134;
      sub_1D0B89390(&v163, &v194, &v130);
      *(a5 + 232) = 0x3FF0000000000000;
      v44 = v143;
      *(a5 + 240) = *v143;
      v45 = v138;
      *(a5 + 248) = *v138;
      v46 = v133;
      *(a5 + 256) = *v133;
      v47 = v201;
      *(a5 + 264) = *v201;
      v48 = v200;
      v49 = &v47[v200];
      *(a5 + 272) = *v49;
      v50 = &v47[2 * v48];
      *(a5 + 280) = *v50;
      *(a5 + 288) = 0x3FF0000000000000;
      *(a5 + 296) = v44[1];
      *(a5 + 304) = v45[1];
      *(a5 + 312) = v46[1];
      *(a5 + 320) = v47[1];
      *(a5 + 328) = v49[1];
      *(a5 + 336) = v47[((2 * v48) | 1)];
      *(a5 + 344) = 0x3FF0000000000000;
      *(a5 + 352) = v44[2];
      *(a5 + 360) = v45[2];
      *(a5 + 368) = v46[2];
      *(a5 + 376) = v47[2];
      *(a5 + 384) = v49[2];
      *(a5 + 392) = v50[2];
      v127 = 0x100000003;
      v126 = xmmword_1D0E7DCC0;
      v125 = &unk_1F4CDEB28;
      v128 = &v129;
      v51 = *(a1 + 32);
      v52.f64[0] = v51[25];
      v53 = v51[26];
      v54 = v51[27];
      v55 = sqrt(v53 * v53 + v52.f64[0] * v52.f64[0] + v54 * v54);
      if (fabs(v55) <= 0.000000015)
      {
        return 0xFFFFFFFFLL;
      }

      v56 = v51[24];
      v152 = 0x100000003;
      v151 = xmmword_1D0E7DCC0;
      v150 = &unk_1F4CDEB28;
      v153 = &v154;
      v154 = v52.f64[0];
      v155 = v53;
      v156 = v54;
      v122 = 0x100000003;
      v121 = xmmword_1D0E7DCC0;
      v120 = &unk_1F4CDEB28;
      v123 = v124;
      v52.f64[0] = 1.0 / v55;
      sub_1D0B8930C(&v150, &v120, v52);
      sub_1D0B894B0(&v125, &v120);
      *(*(a4 + 32) + 24) = v56 * v55;
      v147 = 0x100000003;
      v146 = xmmword_1D0E7DCC0;
      v145 = &unk_1F4CDEB28;
      v148 = v149;
      sub_1D0B89390(v199, &v125, &v145);
      sub_1D0BFA8EC(&v120, a4, &v205);
      sub_1D0BFB134(&v120, &v145);
      v57 = *(a1 + 32);
      v59 = v57[24];
      v58 = v57[25];
      v60 = *(a2 + 32);
      v61 = v60[23] + v59 * v58;
      v62 = v57[26];
      v63 = v57[27];
      v64 = v60[24] + v59 * v62;
      v65 = v60[25] + v59 * v63;
      v66 = sqrt(v64 * v64 + v61 * v61 + v65 * v65);
      *a6 = v66 < a7;
      if (fabs(v66) <= 0.000000015)
      {
        __asm { FMOV            V0.2D, #1.0 }

        *(a5 + 400) = _Q0;
        *(a5 + 416) = 0x3FF0000000000000;
        *(a5 + 424) = 0u;
        *(a5 + 440) = 0u;
        *(a5 + 456) = 0u;
        *(a5 + 472) = 0u;
        *(a5 + 488) = 0u;
        *(a5 + 504) = 0u;
        *(a5 + 520) = 0u;
        *(a5 + 536) = 0u;
        *(a5 + 552) = 0u;
      }

      else
      {
        v67 = 1.0 / v66;
        v68 = v61 * (1.0 / v66);
        v69 = v64 * (1.0 / v66);
        v70 = v65 * (1.0 / v66);
        _NF = v66 < a7;
        if (v66 >= a7)
        {
          v72 = v69;
        }

        else
        {
          v72 = v62;
        }

        if (_NF)
        {
          v73 = v58;
        }

        else
        {
          v73 = v68;
        }

        if (_NF)
        {
          v74 = v63;
        }

        else
        {
          v74 = v70;
        }

        v75 = v128;
        *v128 = v73;
        v75[1] = v72;
        v75[2] = v74;
        v152 = 0x300000003;
        v151 = xmmword_1D0E76C10;
        v150 = &unk_1F4CD5DD0;
        v153 = &v154;
        v154 = v67 * (1.0 - v73 * v73);
        v155 = v67 * -(v72 * v73);
        v160 = v67 * -(v73 * v74);
        v161 = v67 * -(v72 * v74);
        v157 = v67 * -(v73 * v72);
        v156 = v67 * -(v74 * v73);
        v158 = v67 * (1.0 - v72 * v72);
        v159 = v67 * -(v74 * v72);
        v162 = v67 * (1.0 - v74 * v74);
        v117 = 0x100000003;
        v116 = xmmword_1D0E7DCC0;
        v115 = &unk_1F4CDEB28;
        v118 = &v119;
        sub_1D0B89390(&v173, &v125, &v115);
        v112 = 0x100000003;
        v111 = xmmword_1D0E7DCC0;
        v110 = &unk_1F4CDEB28;
        v113 = &v114;
        sub_1D0B89390(&v168, &v125, &v110);
        v107 = 0x100000003;
        v105 = &unk_1F4CDEB28;
        v106 = xmmword_1D0E7DCC0;
        v108 = &v109;
        sub_1D0B89390(&v163, &v125, &v105);
        v147 = 0x300000003;
        v146 = xmmword_1D0E76C10;
        v145 = &unk_1F4CD5DD0;
        v148 = v149;
        sub_1D0B89390(v199, &v150, &v145);
        *(a5 + 400) = v73;
        *(a5 + 408) = v72;
        *(a5 + 416) = v74;
        v76 = v118;
        *(a5 + 424) = *v118;
        v77 = v113;
        *(a5 + 432) = *v113;
        v78 = v108;
        *(a5 + 440) = *v108;
        v79 = v148;
        *(a5 + 448) = *v148;
        v80 = SHIDWORD(v146);
        v81 = &v79[SHIDWORD(v146)];
        *(a5 + 456) = *v81;
        v82 = &v79[2 * v80];
        *(a5 + 464) = *v82;
        *(a5 + 472) = v76[1];
        *(a5 + 480) = v77[1];
        *(a5 + 488) = v78[1];
        *(a5 + 496) = v79[1];
        *(a5 + 504) = v81[1];
        *(a5 + 512) = v79[((2 * v80) | 1)];
        *(a5 + 520) = v76[2];
        *(a5 + 528) = v77[2];
        *(a5 + 536) = v78[2];
        *(a5 + 544) = v79[2];
        *(a5 + 552) = v81[2];
        *(a5 + 560) = v82[2];
        if (!*a6)
        {
          *(*(a4 + 32) + 24) = v66;
          sub_1D0D5625C(v199, &v125, v104);
          sub_1D0BFA8EC(&v120, a4, &v205);
          sub_1D0BFB134(&v120, v104);
        }
      }
    }

    else if (a3 == 2)
    {
      __assert_rtn("GetEarthFixedUserStateEstimate", "ravenpntestimatorhelper.h", 1110, "false && Unexpected case RavenPNTEstimatorStateParameterization::ParameterizationCount");
    }

    return 0;
  }

  v83 = *(a1 + 32);
  v84 = *(a2 + 32);
  v85 = *(a4 + 32);
  *v85 = v83[21] + v84[20];
  v85[1] = v83[22] + v84[21];
  v85[2] = v83[23] + v84[22];
  *(a5 + 248) = 0u;
  *(a5 + 232) = 0u;
  *(a5 + 264) = 0x3FF0000000000000;
  *(a5 + 272) = 0u;
  *(a5 + 288) = 0u;
  *(a5 + 304) = 0u;
  *(a5 + 320) = 0;
  *(a5 + 328) = 0x3FF0000000000000;
  *(a5 + 336) = 0u;
  *(a5 + 352) = 0u;
  *(a5 + 368) = 0u;
  *(a5 + 384) = 0;
  *(a5 + 392) = 0x3FF0000000000000;
  v87 = v83[25];
  v86 = v83[26];
  v88 = v83[27];
  v89 = sqrt(v86 * v86 + v87 * v87 + v88 * v88);
  if (fabs(v89) <= 0.000000015)
  {
    return 0xFFFFFFFFLL;
  }

  v90 = 1.0 / v89;
  v91 = v89 * v83[24];
  v92 = v87 * (1.0 / v89);
  v85[3] = v91;
  v85[4] = v92;
  v93 = v86 * v90;
  v94 = v88 * v90;
  v85[5] = v93;
  v85[6] = v94;
  v95 = v83[24];
  v96 = v84[23] + v95 * v83[25];
  v97 = v84[24] + v95 * v83[26];
  v98 = v84[25] + v95 * v83[27];
  v99 = sqrt(v97 * v97 + v96 * v96 + v98 * v98);
  *a6 = v99 < a7;
  if (fabs(v99) > 0.000000015)
  {
    v100 = 1.0 / v99;
    if (v99 >= a7)
    {
      v93 = v97 * (1.0 / v99);
      v92 = v96 * (1.0 / v99);
      v94 = v98 * (1.0 / v99);
    }

    *(a5 + 400) = v92;
    *(a5 + 408) = v93;
    *(a5 + 416) = v94;
    *(a5 + 432) = 0;
    *(a5 + 440) = 0;
    *(a5 + 424) = 0;
    *(a5 + 448) = v100 * (1.0 - v92 * v92);
    *(a5 + 456) = v100 * -(v92 * v93);
    *(a5 + 464) = v100 * -(v92 * v94);
    *(a5 + 480) = 0;
    *(a5 + 488) = 0;
    *(a5 + 472) = 0;
    *(a5 + 496) = v100 * -(v93 * v92);
    *(a5 + 504) = v100 * (1.0 - v93 * v93);
    *(a5 + 512) = v100 * -(v93 * v94);
    *(a5 + 520) = 0;
    *(a5 + 536) = 0;
    *(a5 + 528) = 0;
    *(a5 + 544) = v100 * -(v94 * v92);
    *(a5 + 552) = v100 * -(v94 * v93);
    *(a5 + 560) = v100 * (1.0 - v94 * v94);
    if (v99 >= a7)
    {
      result = 0;
      v85[3] = v99;
      v85[4] = v96 * (1.0 / v99);
      v85[5] = v97 * (1.0 / v99);
      v85[6] = v98 * (1.0 / v99);
      return result;
    }

    return 0;
  }

  result = 0;
  *(a5 + 416) = 0x3FF0000000000000;
  __asm { FMOV            V0.2D, #1.0 }

  *(a5 + 400) = _Q0;
  *(a5 + 424) = 0u;
  *(a5 + 440) = 0u;
  *(a5 + 456) = 0u;
  *(a5 + 472) = 0u;
  *(a5 + 488) = 0u;
  *(a5 + 504) = 0u;
  *(a5 + 520) = 0u;
  *(a5 + 536) = 0u;
  *(a5 + 552) = 0u;
  return result;
}

uint64_t sub_1D0D89C74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x100000002;
  *(a1 + 8) = xmmword_1D0E83F60;
  *(a1 + 32) = a1 + 40;
  *a1 = &unk_1F4CE0E60;
  *(a1 + 56) = a2;
  *(a1 + 88) = 0x100000002;
  *(a1 + 64) = &unk_1F4CE0EA8;
  *(a1 + 72) = xmmword_1D0E83F60;
  *(a1 + 96) = a1 + 104;
  sub_1D0B9F5D4(a1 + 64, a3);
  v6 = *(a1 + 72);
  v5 = *(a1 + 76);
  *(a1 + 8) = v6;
  *(a1 + 12) = v5;
  v7 = (v5 * v6);
  *(a1 + 16) = v7;
  *(a1 + 20) = v6;
  if (v7 >= 1)
  {
    v8 = *(a1 + 96);
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

void sub_1D0D89D4C(void *a1)
{
  a1[8] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

void *sub_1D0D89DFC(void *a1)
{
  *a1 = &unk_1F4CE0EF0;
  v2 = a1[5];
  a1[5] = 0;
  if (v2)
  {
    MEMORY[0x1D387EC80](v2, 0x1000C8000313F17);
  }

  *a1 = &unk_1F4CD5E28;
  return a1;
}

void sub_1D0D89E78(void *a1)
{
  sub_1D0D89DFC(a1);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0D8A064(uint64_t a1)
{
  *(a1 + 24) = 0x1A0000001CLL;
  *a1 = &unk_1F4CE0EF0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 8) = xmmword_1D0E844B0;
  sub_1D0D89FE4(a1);
}

void sub_1D0D8A0CC(_Unwind_Exception *exception_object)
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

void sub_1D0D8A114(uint64_t a1, int a2, int a3)
{
  *(a1 + 24) = 0x1C0000001ALL;
  *a1 = &unk_1F4CE0F38;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  *(a1 + 16) = a3 * a2;
  *(a1 + 20) = a2;
  sub_1D0D89FE4(a1);
}

void sub_1D0D8A17C(_Unwind_Exception *exception_object)
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

void sub_1D0D8A1C4(void *a1)
{
  sub_1D0D8A330(a1);

  JUMPOUT(0x1D387ECA0);
}

void *sub_1D0D8A330(void *a1)
{
  *a1 = &unk_1F4CE0F38;
  v2 = a1[5];
  a1[5] = 0;
  if (v2)
  {
    MEMORY[0x1D387EC80](v2, 0x1000C8000313F17);
  }

  *a1 = &unk_1F4CD5E28;
  return a1;
}

double sub_1D0D8A3AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 12);
  *(a3 + 8) = v3;
  *(a3 + 12) = v4;
  *(a3 + 16) = v4 * v3;
  *(a3 + 20) = v3;
  v5 = *(a1 + 32);
  v6 = *v5;
  v7 = *(a2 + 32);
  v8 = *(a3 + 32);
  v9 = *(v5 + 8);
  *&v10.f64[0] = vdupq_laneq_s64(v9, 1).u64[0];
  v10.f64[1] = *v5;
  v11 = *(v7 + 8);
  *&v12.f64[0] = vdupq_laneq_s64(v11, 1).u64[0];
  v12.f64[1] = *v7;
  *v8 = vmlaq_f64(vmulq_f64(v11, vnegq_f64(v10)), v12, v9);
  result = v6 * v11.f64[0] - v9.f64[0] * v12.f64[1];
  v8[1].f64[0] = result;
  return result;
}

uint64_t sub_1D0D8A408(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 8))
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(a1 + 16);
  v5 = *(a1 + 32);
  *(a2 + 25) = *(a1 + 41);
  *a2 = v4;
  *(a2 + 16) = v5;
  sub_1D0B894B0(a2 + 48, a1 + 64);
  sub_1D0B894B0(a2 + 240, a1 + 256);
  result = 0;
  *(a2 + 432) = *(a1 + 448);
  *(a2 + 440) = *(a1 + 5944);
  return result;
}

uint64_t sub_1D0D8A47C(uint64_t a1, int a2)
{
  *(a1 + 24) = 0x100000017;
  *a1 = &unk_1F4CE0780;
  *(a1 + 32) = a1 + 40;
  *(a1 + 8) = a2;
  *(a1 + 12) = 1;
  *(a1 + 16) = a2;
  *(a1 + 20) = a2;
  return sub_1D0BBBC00(a1, 0.0);
}

uint64_t sub_1D0D8A4C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x1C00000003;
  *a1 = &unk_1F4CE1000;
  *(a1 + 8) = xmmword_1D0E845D0;
  *(a1 + 32) = a1 + 40;
  return sub_1D0B89390(a2, a3, a1);
}

uint64_t sub_1D0D8A54C(uint64_t a1)
{
  *(a1 + 24) = 0x1C00000003;
  *a1 = &unk_1F4CE1000;
  *(a1 + 32) = a1 + 40;
  *(a1 + 8) = xmmword_1D0E84710;
  result = sub_1D0BBBC00(a1, 0.0);
  v3 = *(a1 + 20) + 1;
  v4 = *(a1 + 32);
  *v4 = 0x3FF0000000000000;
  v4[v3] = 0x3FF0000000000000;
  v4[2 * v3] = 0x3FF0000000000000;
  return result;
}

uint64_t sub_1D0D8A5D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x1A00000003;
  *a1 = &unk_1F4CE0B08;
  *(a1 + 8) = xmmword_1D0E84410;
  *(a1 + 32) = a1 + 40;
  return sub_1D0B89390(a2, a3, a1);
}

uint64_t sub_1D0D8A65C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x1A00000003;
  *a1 = &unk_1F4CE0B08;
  *(a1 + 8) = xmmword_1D0E84410;
  *(a1 + 32) = a1 + 40;
  return sub_1D0B89390(a2, a3, a1);
}

uint64_t sub_1D0D8A6E8(uint64_t a1)
{
  *(a1 + 24) = 0x1A00000003;
  *a1 = &unk_1F4CE0B08;
  *(a1 + 32) = a1 + 40;
  *(a1 + 8) = xmmword_1D0E84720;
  result = sub_1D0BBBC00(a1, 0.0);
  v3 = *(a1 + 20) + 1;
  v4 = *(a1 + 32);
  *v4 = 0x3FF0000000000000;
  v4[v3] = 0x3FF0000000000000;
  v4[2 * v3] = 0x3FF0000000000000;
  return result;
}

uint64_t sub_1D0D8A7D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x100000003;
  *a1 = &unk_1F4CDEB28;
  *(a1 + 8) = xmmword_1D0E7DCC0;
  *(a1 + 32) = a1 + 40;
  return sub_1D0B89390(a2, a3, a1);
}

double sub_1D0D8A860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x10000001CLL;
  *a1 = &unk_1F4CE0A20;
  *(a1 + 8) = xmmword_1D0E843A0;
  *(a1 + 32) = a1 + 40;
  *&result = *&sub_1D0BA5A78(a2, a3, a1);
  return result;
}

uint64_t sub_1D0D8A8B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x100000003;
  *a1 = &unk_1F4CDEB28;
  *(a1 + 8) = xmmword_1D0E7DCC0;
  *(a1 + 32) = a1 + 40;
  return sub_1D0B89390(a2, a3, a1);
}

uint64_t sub_1D0D8A93C(uint64_t a1)
{
  *(a1 + 24) = 0x1A00000001;
  *a1 = &unk_1F4CE1048;
  *(a1 + 32) = a1 + 40;
  *(a1 + 8) = xmmword_1D0E84580;
  return sub_1D0BBBC00(a1, 0.0);
}

uint64_t sub_1D0D8A9A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x1A00000001;
  *a1 = &unk_1F4CE1048;
  *(a1 + 8) = xmmword_1D0E84580;
  *(a1 + 32) = a1 + 40;
  return sub_1D0B89390(a2, a3, a1);
}

uint64_t sub_1D0D8AA2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  v11 = 0x100000003;
  v6 = &unk_1F4CDEAA0;
  v7 = v3;
  v8 = 1;
  v9 = v3;
  v10 = v3;
  v12 = v13;
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      v13[i] = i;
    }
  }

  return sub_1D0D8AF38(a1, a2, &v6, a3);
}

void sub_1D0D8AAB4(uint64_t a1)
{
  *(a1 + 24) = 0x170000001ALL;
  *a1 = &unk_1F4CE0FB8;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 8) = xmmword_1D0E84730;
  sub_1D0D8378C(a1);
}

void sub_1D0D8AB1C(_Unwind_Exception *exception_object)
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

void sub_1D0D8AB64(void *a1)
{
  sub_1D0D8B128(a1);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0D8AD0C(uint64_t a1)
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

void sub_1D0D8AE40(uint64_t a1)
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

uint64_t sub_1D0D8AF38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 24) = 0x1A00000003;
  *(a1 + 8) = xmmword_1D0E84410;
  *(a1 + 32) = a1 + 40;
  *a1 = &unk_1F4CE1090;
  *(a1 + 664) = a2;
  *(a1 + 696) = 0x100000003;
  *(a1 + 672) = &unk_1F4CDEAA0;
  *(a1 + 680) = xmmword_1D0E7DCC0;
  *(a1 + 704) = a1 + 712;
  *(a1 + 752) = 0x10000001ALL;
  *(a1 + 728) = &unk_1F4CE3E90;
  *(a1 + 736) = xmmword_1D0E843B0;
  *(a1 + 760) = a1 + 768;
  sub_1D0B9F5D4(a1 + 672, a3);
  sub_1D0B9F5D4(a1 + 728, a4);
  v7 = *(a1 + 688);
  v8 = *(a1 + 744);
  *(a1 + 8) = v7;
  *(a1 + 12) = v8;
  *(a1 + 16) = v8 * v7;
  *(a1 + 20) = v7;
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    v11 = *(a2 + 20);
    v12 = *(a2 + 32);
    do
    {
      if (v7)
      {
        v13 = *(a1 + 704);
        v14 = *(*(a1 + 760) + 4 * v10) * v11;
        v15 = *(a1 + 32);
        v16 = v9;
        v17 = v7;
        do
        {
          v18 = *v13++;
          *(v15 + 8 * v16++) = *(v12 + 8 * (v18 + v14));
          --v17;
        }

        while (v17);
      }

      ++v10;
      v9 += v7;
    }

    while (v10 != v8);
  }

  return a1;
}

void sub_1D0D8B0B8(void *a1)
{
  a1[91] = &unk_1F4CDEAF8;
  a1[84] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

void *sub_1D0D8B128(void *a1)
{
  *a1 = &unk_1F4CE0FB8;
  v2 = a1[5];
  a1[5] = 0;
  if (v2)
  {
    MEMORY[0x1D387EC80](v2, 0x1000C8000313F17);
  }

  *a1 = &unk_1F4CD5E28;
  return a1;
}

void sub_1D0D8B1A4(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x1D387ECA0);
}

void *sub_1D0D8B310(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      sub_1D0D8B214(a3, a2[1]);
      return 0;
    }

    v7 = a2[1];
    (**v7)(v7, a2, a3, a4, a5);
    operator delete(v7);
    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    v9 = a2[1];
    *a3 = sub_1D0D8B310;
    a3[1] = v9;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return &unk_1F4CE0F70;
  }

  if (a4)
  {
    v6 = sub_1D0B7CA64(a4, &unk_1F4CE0F70);
  }

  else
  {
    v6 = a5 == &std::__any_imp::__unique_typeinfo<raven::h_DeviceAltitudeChangeArgs_RavenPNT<double>>::__id;
  }

  if (v6)
  {
    return a2[1];
  }

  else
  {
    return 0;
  }
}

void sub_1D0D8B3FC(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x1D387ECA0);
}

void *sub_1D0D8B568(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      sub_1D0D8B46C(a3, a2[1]);
      return 0;
    }

    v7 = a2[1];
    (**v7)(v7, a2, a3, a4, a5);
    operator delete(v7);
    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    v9 = a2[1];
    *a3 = sub_1D0D8B568;
    a3[1] = v9;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return &unk_1F4CE10F0;
  }

  if (a4)
  {
    v6 = sub_1D0B7CA64(a4, &unk_1F4CE10F0);
  }

  else
  {
    v6 = a5 == &std::__any_imp::__unique_typeinfo<raven::h_UserAltitudeArgs_RavenPNT<double>>::__id;
  }

  if (v6)
  {
    return a2[1];
  }

  else
  {
    return 0;
  }
}

double sub_1D0D8B654(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 0x300000004;
  *(a1 + 8) = xmmword_1D0E7DCF0;
  v2 = *(a2 + 56);
  *(a1 + 40) = *(a2 + 48);
  v3 = *(a2 + 96);
  v4 = *(a2 + 104);
  v5 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 72);
  *(a1 + 56) = v3;
  v6 = *(a2 + 112);
  *(a1 + 64) = *(a2 + 120);
  *(a1 + 72) = v2;
  v7 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v4;
  result = *(a2 + 128);
  v9 = *(a2 + 136);
  *(a1 + 96) = result;
  *(a1 + 104) = v5;
  *(a1 + 112) = v7;
  *(a1 + 120) = v6;
  *a1 = &unk_1F4CDEC00;
  *(a1 + 32) = a1 + 40;
  *(a1 + 128) = v9;
  return result;
}

double sub_1D0D8B6C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x1200000003;
  *a1 = &unk_1F4CE1198;
  *(a1 + 8) = xmmword_1D0E84720;
  *(a1 + 32) = a1 + 40;
  *&result = *&sub_1D0B88838(a2, a3, a1);
  return result;
}

uint64_t sub_1D0D8B754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x1A00000003;
  *a1 = &unk_1F4CE0B08;
  *(a1 + 8) = xmmword_1D0E84410;
  *(a1 + 32) = a1 + 40;
  return sub_1D0B89390(a2, a3, a1);
}

double sub_1D0D8B800(uint64_t a1, uint64_t a2)
{
  *&result = 0x1200000003;
  *(a1 + 24) = 0x1200000003;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CE1198;
  v4 = *(a2 + 8);
  v3 = *(a2 + 12);
  *(a1 + 8) = v4;
  *(a1 + 12) = v3;
  v5 = v3 * v4;
  *(a1 + 16) = v5;
  *(a1 + 20) = v4;
  v6 = (a1 + 40);
  *(a1 + 32) = a1 + 40;
  if (v4 > 3)
  {
    v9 = "this->max_num_rows_ >= A.NumRows()";
    v10 = 567;
    goto LABEL_9;
  }

  if (v3 > 0x12)
  {
    v9 = "this->max_num_cols_ >= A.NumCols()";
    v10 = 568;
LABEL_9:
    __assert_rtn("CNMatrix", "cnmatrix.h", v10, v9);
  }

  if (v5 >= 1)
  {
    v7 = *(a2 + 32);
    do
    {
      v8 = *v7++;
      result = v8;
      *v6++ = v8;
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_1D0D8B924(uint64_t a1)
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

void sub_1D0D8BA1C(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x1D387ECA0);
}

void *sub_1D0D8BB88(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      sub_1D0D8BA8C(a3, a2[1]);
      return 0;
    }

    v7 = a2[1];
    (**v7)(v7, a2, a3, a4, a5);
    operator delete(v7);
    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    v9 = a2[1];
    *a3 = sub_1D0D8BB88;
    a3[1] = v9;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return &unk_1F4CE1150;
  }

  if (a4)
  {
    v6 = sub_1D0B7CA64(a4, &unk_1F4CE1150);
  }

  else
  {
    v6 = a5 == &std::__any_imp::__unique_typeinfo<raven::h_DeviceAttitudeChangeArgs_RavenPNT<double>>::__id;
  }

  if (v6)
  {
    return a2[1];
  }

  else
  {
    return 0;
  }
}

__n128 sub_1D0D8BC74(uint64_t a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    v2 = *(a2 + 24);
    *(a1 + 16) = *(a2 + 8);
    *(a1 + 32) = v2;
    v3 = *(a2 + 40);
    v4 = *(a2 + 56);
    v5 = *(a2 + 88);
    *(a1 + 80) = *(a2 + 72);
    *(a1 + 96) = v5;
    *(a1 + 48) = v3;
    *(a1 + 64) = v4;
    if (a1 + 112 != a2 + 104)
    {
      *(a1 + 112) = *(a2 + 104);
      *(a1 + 128) = *(a2 + 120);
    }

    v6 = *(a2 + 152);
    *(a1 + 144) = *(a2 + 136);
    *(a1 + 160) = v6;
    result = *(a2 + 168);
    v8 = *(a2 + 184);
    v9 = *(a2 + 200);
    *(a1 + 224) = *(a2 + 216);
    *(a1 + 192) = v8;
    *(a1 + 208) = v9;
    *(a1 + 176) = result;
  }

  else
  {
    *(a1 + 8) = &unk_1F4CEF6B8;
    v10 = *(a2 + 40);
    v11 = *(a2 + 56);
    v12 = *(a2 + 72);
    v13 = *(a2 + 88);
    v14 = *(a2 + 8);
    v15 = *(a2 + 24);
    *(a1 + 112) = 0u;
    *(a1 + 16) = v14;
    *(a1 + 32) = v15;
    *(a1 + 80) = v12;
    *(a1 + 96) = v13;
    *(a1 + 48) = v10;
    *(a1 + 64) = v11;
    *(a1 + 128) = 0u;
    if (a1 + 112 != a2 + 104)
    {
      *(a1 + 112) = *(a2 + 104);
      *(a1 + 128) = *(a2 + 120);
    }

    v16 = *(a2 + 152);
    *(a1 + 144) = *(a2 + 136);
    *(a1 + 160) = v16;
    result = *(a2 + 168);
    v17 = *(a2 + 184);
    v18 = *(a2 + 200);
    *(a1 + 224) = *(a2 + 216);
    *(a1 + 192) = v17;
    *(a1 + 208) = v18;
    *(a1 + 176) = result;
    *a1 = 1;
  }

  return result;
}

int64x2_t sub_1D0D8BD94(uint64_t a1)
{
  *(a1 + 32) = 0x100000008;
  *(a1 + 8) = &unk_1F4CE4320;
  *(a1 + 40) = a1 + 48;
  *(a1 + 136) = 0x800000008;
  *(a1 + 112) = &unk_1F4CE43B0;
  *(a1 + 144) = a1 + 152;
  *(a1 + 688) = 0x100000008;
  *(a1 + 664) = &unk_1F4CE4320;
  *(a1 + 696) = a1 + 704;
  *(a1 + 792) = 0x100000008;
  *(a1 + 768) = &unk_1F4CE4320;
  *(a1 + 800) = a1 + 808;
  *(a1 + 896) = 0x800000008;
  *(a1 + 872) = &unk_1F4CE43B0;
  *(a1 + 904) = a1 + 912;
  *(a1 + 1448) = 0x100000008;
  *(a1 + 1424) = &unk_1F4CE4320;
  *(a1 + 1456) = a1 + 1464;
  *(a1 + 1544) = 0x100000000;
  *(a1 + 1552) = 0x7FFFFFFF;
  *(a1 + 1560) = 0x3E45798EE2308C3ALL;
  *(a1 + 1568) = 0x3E45798EE2308C3ALL;
  *(a1 + 1576) = 0;
  *(a1 + 1584) = 0x3FEE666666666666;
  *(a1 + 1592) = 0u;
  *(a1 + 1608) = 0x4197D78400000000;
  *(a1 + 1528) = 0;
  *(a1 + 1536) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 880) = 0u;
  *(a1 + 1432) = 0u;
  *(a1 + 1616) = 0u;
  *(a1 + 1632) = 0u;
  *(a1 + 1648) = 0u;
  *(a1 + 1664) = 0u;
  *(a1 + 1680) = 0u;
  *(a1 + 1696) = 0u;
  *(a1 + 1712) = 0u;
  *(a1 + 1728) = 0u;
  *(a1 + 1744) = 0;
  *(a1 + 1540) = 1;
  *a1 = &unk_1F4CE07C8;
  *(a1 + 1776) = 0x800000008;
  *(a1 + 1752) = &unk_1F4CE43B0;
  *(a1 + 1784) = a1 + 1792;
  *(a1 + 2328) = 0x100000008;
  *(a1 + 2304) = &unk_1F4CE4320;
  *(a1 + 2336) = a1 + 2344;
  *(a1 + 2432) = 0x800000008;
  *(a1 + 2408) = &unk_1F4CE43B0;
  *(a1 + 2440) = a1 + 2448;
  *(a1 + 2960) = 0x100000000;
  *(a1 + 2968) = 0x7FFFFFFF;
  result = vdupq_n_s64(0x3E45798EE2308C3AuLL);
  *(a1 + 2976) = result;
  *(a1 + 2992) = 0;
  *(a1 + 3000) = 0x3FEE666666666666;
  *(a1 + 3008) = 0u;
  *(a1 + 3024) = 0x4197D78400000000;
  *(a1 + 3032) = 0u;
  *(a1 + 3048) = 1;
  *(a1 + 3056) = 0;
  *(a1 + 1760) = 0u;
  *(a1 + 2312) = 0u;
  *(a1 + 2416) = 0u;
  return result;
}

void sub_1D0D8C070(uint64_t a1)
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

void sub_1D0D8C1A4(uint64_t a1)
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

uint64_t sub_1D0D8C29C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 8);
  v4 = *(result + 12);
  v5 = *(a2 + 8);
  v6 = v5 + v3;
  *(a3 + 8) = v5 + v3;
  *(a3 + 12) = v4;
  *(a3 + 16) = (v5 + v3) * v4;
  *(a3 + 20) = v5 + v3;
  if (v4)
  {
    v7 = 0;
    v8 = 0;
    v9 = *(result + 32);
    v10 = *(a3 + 32);
    v11 = v3;
    v12 = *(a2 + 32);
    do
    {
      if (v3)
      {
        v13 = 0;
        v14 = v7;
        v15 = v3;
        do
        {
          *(v10 + 4 * v14++) = *(v9 + 4 * (v13 + v8 * *(result + 20)));
          ++v13;
          --v15;
        }

        while (v15);
      }

      if (v5)
      {
        v16 = 0;
        v17 = v11;
        v18 = v5;
        do
        {
          *(v10 + 4 * v17++) = *(v12 + 4 * (v16 + v8 * *(a2 + 20)));
          ++v16;
          --v18;
        }

        while (v18);
      }

      ++v8;
      v7 += v6;
      v11 += v6;
    }

    while (v8 != v4);
  }

  return result;
}

void sub_1D0D8C384(uint64_t a1)
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

void sub_1D0D8C4B8(uint64_t a1)
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

uint64_t sub_1D0D8C5B0(uint64_t result, uint64_t a2)
{
  *(result + 24) = 0x10000001CLL;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = &unk_1F4CE1250;
  v3 = *(a2 + 8);
  v2 = *(a2 + 12);
  *(result + 8) = v3;
  *(result + 12) = v2;
  v4 = v2 * v3;
  *(result + 16) = v4;
  *(result + 20) = v3;
  v5 = (result + 40);
  *(result + 32) = result + 40;
  if (v3 > 0x1C)
  {
    v8 = "this->max_num_rows_ >= A.NumRows()";
    v9 = 567;
    goto LABEL_9;
  }

  if (v2 > 1)
  {
    v8 = "this->max_num_cols_ >= A.NumCols()";
    v9 = 568;
LABEL_9:
    __assert_rtn("CNMatrix", "cnmatrix.h", v9, v8);
  }

  if (v4 >= 1)
  {
    v6 = *(a2 + 32);
    do
    {
      v7 = *v6++;
      *v5++ = v7;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_1D0D8C698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x10000001CLL;
  *(a1 + 8) = xmmword_1D0E843A0;
  *(a1 + 32) = a1 + 40;
  *a1 = &unk_1F4CE1328;
  *(a1 + 264) = a2;
  *(a1 + 296) = 0x10000001CLL;
  *(a1 + 272) = &unk_1F4CE1250;
  *(a1 + 280) = xmmword_1D0E843A0;
  *(a1 + 304) = a1 + 312;
  sub_1D0B9F5D4(a1 + 272, a3);
  v5 = *(a1 + 280);
  v6 = *(a1 + 284);
  *(a1 + 8) = v5;
  *(a1 + 12) = v6;
  v7 = (v6 * v5);
  *(a1 + 16) = v7;
  *(a1 + 20) = v5;
  if (v7 >= 1)
  {
    v8 = *(a1 + 304);
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

void sub_1D0D8C778(void *a1)
{
  a1[34] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

double sub_1D0D8C7C8(uint64_t a1, uint64_t a2)
{
  *&result = 0x100000008;
  *(a1 + 24) = 0x100000008;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CE4320;
  v4 = *(a2 + 8);
  v3 = *(a2 + 12);
  *(a1 + 8) = v4;
  *(a1 + 12) = v3;
  v5 = v3 * v4;
  *(a1 + 16) = v5;
  *(a1 + 20) = v4;
  v6 = (a1 + 40);
  *(a1 + 32) = a1 + 40;
  if (v4 > 8)
  {
    v9 = "this->max_num_rows_ >= A.NumRows()";
    v10 = 567;
    goto LABEL_9;
  }

  if (v3 > 1)
  {
    v9 = "this->max_num_cols_ >= A.NumCols()";
    v10 = 568;
LABEL_9:
    __assert_rtn("CNMatrix", "cnmatrix.h", v10, v9);
  }

  if (v5 >= 1)
  {
    v7 = *(a2 + 32);
    do
    {
      v8 = *v7++;
      result = v8;
      *v6++ = v8;
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_1D0D8CA38(_Unwind_Exception *a1)
{
  v1[26] = &unk_1F4CDEAF8;
  v1[7] = &unk_1F4CDEAF8;
  sub_1D0D855A8(v1);
  _Unwind_Resume(a1);
}

void sub_1D0D8CA84(void *a1)
{
  *a1 = &unk_1F4CE1370;
  a1[26] = &unk_1F4CDEAF8;
  a1[7] = &unk_1F4CDEAF8;
  sub_1D0D855A8(a1);

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0D8CC70(uint64_t a1)
{
  *(a1 + 24) = 0x600000006;
  *a1 = &unk_1F4CDF278;
  *(a1 + 32) = a1 + 40;
  *(a1 + 8) = xmmword_1D0E7F320;
  return sub_1D0BBBC00(a1, 0.0);
}

uint64_t sub_1D0D8CCB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 12);
  *(a2 + 24) = 0x600000006;
  *a2 = &unk_1F4CDF278;
  *(a2 + 8) = v3;
  *(a2 + 12) = v4;
  *(a2 + 16) = v4 * v3;
  *(a2 + 20) = v3;
  *(a2 + 32) = a2 + 40;
  return sub_1D0BD2018(a1, a2);
}

uint64_t sub_1D0D8CD54(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2 != *(a2 + 8))
  {
    __assert_rtn("operator=", "cnsubmatrix.h", 376, "this->num_rows_ == A.num_rows_");
  }

  v3 = *(result + 12);
  if (v3 != *(a2 + 12))
  {
    __assert_rtn("operator=", "cnsubmatrix.h", 377, "this->num_cols_ == A.num_cols_");
  }

  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = *(a2 + 32);
    do
    {
      if (v2)
      {
        v7 = *(result + 328);
        v8 = *(result + 368);
        v9 = *(v7 + 20) * *(*(result + 432) + 4 * v5);
        v10 = *(v7 + 32);
        v11 = *(result + 32);
        v12 = *(result + 20) * v5;
        v13 = v4;
        v14 = v2;
        do
        {
          v15 = *(v6 + 8 * v13);
          v16 = *v8++;
          *(v10 + 8 * (v16 + v9)) = v15;
          *(v11 + 8 * v12++) = v15;
          ++v13;
          --v14;
        }

        while (v14);
      }

      ++v5;
      v4 += v2;
    }

    while (v5 != v3);
  }

  return result;
}

void *sub_1D0D8CE40(void *result)
{
  result[50] = &unk_1F4CDEAF8;
  result[42] = &unk_1F4CDEAF8;
  *result = &unk_1F4CD5E28;
  return result;
}

uint64_t sub_1D0D8CEA0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2 != *(a2 + 8))
  {
    __assert_rtn("operator=", "cnsubmatrix.h", 376, "this->num_rows_ == A.num_rows_");
  }

  v3 = *(result + 12);
  if (v3 != *(a2 + 12))
  {
    __assert_rtn("operator=", "cnsubmatrix.h", 377, "this->num_cols_ == A.num_cols_");
  }

  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = *(a2 + 32);
    do
    {
      if (v2)
      {
        v7 = *(result + 72);
        v8 = *(result + 112);
        v9 = *(v7 + 20) * *(*(result + 160) + 4 * v5);
        v10 = *(v7 + 32);
        v11 = *(result + 32);
        v12 = *(result + 20) * v5;
        v13 = v4;
        v14 = v2;
        do
        {
          v15 = *(v6 + 8 * v13);
          v16 = *v8++;
          *(v10 + 8 * (v16 + v9)) = v15;
          *(v11 + 8 * v12++) = v15;
          ++v13;
          --v14;
        }

        while (v14);
      }

      ++v5;
      v4 += v2;
    }

    while (v5 != v3);
  }

  return result;
}

void *sub_1D0D8CF8C(void *result)
{
  result[16] = &unk_1F4CDEAF8;
  result[10] = &unk_1F4CDEAF8;
  *result = &unk_1F4CD5E28;
  return result;
}

uint64_t sub_1D0D8D0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 24) = 0x600000006;
  *(a1 + 8) = xmmword_1D0E7F320;
  *(a1 + 32) = a1 + 40;
  *a1 = &unk_1F4CE1448;
  *(a1 + 328) = a2;
  *(a1 + 360) = 0x100000006;
  *(a1 + 336) = &unk_1F4CE1400;
  *(a1 + 344) = xmmword_1D0E84530;
  *(a1 + 368) = a1 + 376;
  *(a1 + 424) = 0x100000006;
  *(a1 + 400) = &unk_1F4CE1400;
  *(a1 + 408) = xmmword_1D0E84530;
  *(a1 + 432) = a1 + 440;
  sub_1D0B9F5D4(a1 + 336, a3);
  sub_1D0B9F5D4(a1 + 400, a4);
  v7 = *(a1 + 352);
  v8 = *(a1 + 416);
  *(a1 + 8) = v7;
  *(a1 + 12) = v8;
  *(a1 + 16) = v8 * v7;
  *(a1 + 20) = v7;
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    v11 = *(a2 + 20);
    v12 = *(a2 + 32);
    do
    {
      if (v7)
      {
        v13 = *(a1 + 368);
        v14 = *(*(a1 + 432) + 4 * v10) * v11;
        v15 = *(a1 + 32);
        v16 = v9;
        v17 = v7;
        do
        {
          v18 = *v13++;
          *(v15 + 8 * v16++) = *(v12 + 8 * (v18 + v14));
          --v17;
        }

        while (v17);
      }

      ++v10;
      v9 += v7;
    }

    while (v10 != v8);
  }

  return a1;
}

void sub_1D0D8D244(void *a1)
{
  a1[50] = &unk_1F4CDEAF8;
  a1[42] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0D8D2B4(uint64_t result, uint64_t a2)
{
  *(result + 24) = 0x100000002;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = &unk_1F4CE0EA8;
  v3 = *(a2 + 8);
  v2 = *(a2 + 12);
  *(result + 8) = v3;
  *(result + 12) = v2;
  v4 = v2 * v3;
  *(result + 16) = v4;
  *(result + 20) = v3;
  v5 = (result + 40);
  *(result + 32) = result + 40;
  if (v3 > 2)
  {
    v8 = "this->max_num_rows_ >= A.NumRows()";
    v9 = 567;
    goto LABEL_9;
  }

  if (v2 > 1)
  {
    v8 = "this->max_num_cols_ >= A.NumCols()";
    v9 = 568;
LABEL_9:
    __assert_rtn("CNMatrix", "cnmatrix.h", v9, v8);
  }

  if (v4 >= 1)
  {
    v6 = *(a2 + 32);
    do
    {
      v7 = *v6++;
      *v5++ = v7;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_1D0D8D39C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 24) = 0x200000002;
  *(a1 + 8) = xmmword_1D0E83F70;
  *(a1 + 32) = a1 + 40;
  *a1 = &unk_1F4CE1490;
  *(a1 + 72) = a2;
  *(a1 + 104) = 0x100000002;
  *(a1 + 80) = &unk_1F4CE0EA8;
  *(a1 + 88) = xmmword_1D0E83F60;
  *(a1 + 112) = a1 + 120;
  *(a1 + 152) = 0x100000002;
  *(a1 + 128) = &unk_1F4CE0EA8;
  *(a1 + 136) = xmmword_1D0E83F60;
  *(a1 + 160) = a1 + 168;
  sub_1D0B9F5D4(a1 + 80, a3);
  sub_1D0B9F5D4(a1 + 128, a4);
  v7 = *(a1 + 96);
  v8 = *(a1 + 144);
  *(a1 + 8) = v7;
  *(a1 + 12) = v8;
  *(a1 + 16) = v8 * v7;
  *(a1 + 20) = v7;
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    v11 = *(a2 + 20);
    v12 = *(a2 + 32);
    do
    {
      if (v7)
      {
        v13 = *(a1 + 112);
        v14 = *(*(a1 + 160) + 4 * v10) * v11;
        v15 = *(a1 + 32);
        v16 = v9;
        v17 = v7;
        do
        {
          v18 = *v13++;
          *(v15 + 8 * v16++) = *(v12 + 8 * (v18 + v14));
          --v17;
        }

        while (v17);
      }

      ++v10;
      v9 += v7;
    }

    while (v10 != v8);
  }

  return a1;
}

void sub_1D0D8D504(void *a1)
{
  a1[16] = &unk_1F4CDEAF8;
  a1[10] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

void *sub_1D0D8D6A4(void *result)
{
  result[14] = &unk_1F4CDEAF8;
  *result = &unk_1F4CD5E28;
  return result;
}

void *sub_1D0D8D6E4(void *result)
{
  result[79] = &unk_1F4CDEAF8;
  result[70] = &unk_1F4CDEAF8;
  *result = &unk_1F4CD5E28;
  return result;
}

uint64_t sub_1D0D8D744@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a2 + 16);
  v5 = *(a3 + 16);
  *(a4 + 24) = 0x800000008;
  *a4 = &unk_1F4CE43B0;
  *(a4 + 8) = v4;
  *(a4 + 12) = v5;
  *(a4 + 16) = v5 * v4;
  *(a4 + 20) = v4;
  v6 = a4 + 40;
  *(a4 + 32) = a4 + 40;
  if (v5)
  {
    v7 = 0;
    v8 = 0;
    v9 = *(a2 + 32);
    v10 = *(a3 + 32);
    do
    {
      if (v4)
      {
        v11 = 0;
        v12 = *(result + 20) * *(v10 + 4 * v8);
        v13 = *(result + 32);
        v14 = v7;
        v15 = v4;
        do
        {
          *(v6 + 8 * v14++) = *(v13 + 8 * (*(v9 + 4 * v11++) + v12));
          --v15;
        }

        while (v15);
      }

      ++v8;
      v7 += v4;
    }

    while (v8 != v5);
  }

  return result;
}

uint64_t sub_1D0D8D7EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a3 != 58 || a3[1])
  {
    __assert_rtn("operator()", "cnmatrix.h", 1194, "strcmp(c, :) == 0");
  }

  v7 = *(a1 + 12);
  sub_1D0BFC4C8(v16, v7, 1);
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = vdupq_n_s64(v7 - 1);
    v10 = xmmword_1D0E84440;
    v11 = xmmword_1D0E7DD30;
    v12 = (v17 + 8);
    v13 = vdupq_n_s64(4uLL);
    do
    {
      v14 = vmovn_s64(vcgeq_u64(v9, v11));
      if (vuzp1_s16(v14, *v9.i8).u8[0])
      {
        *(v12 - 2) = v8;
      }

      if (vuzp1_s16(v14, *&v9).i8[2])
      {
        *(v12 - 1) = v8 + 1;
      }

      if (vuzp1_s16(*&v9, vmovn_s64(vcgeq_u64(v9, *&v10))).i32[1])
      {
        *v12 = v8 + 2;
        v12[1] = v8 + 3;
      }

      v8 += 4;
      v10 = vaddq_s64(v10, v13);
      v11 = vaddq_s64(v11, v13);
      v12 += 4;
    }

    while (((v7 + 3) & 0xFFFFFFFC) != v8);
  }

  return sub_1D0BA16B8(a4, a1, a2, v16);
}

void *sub_1D0D8D970(void *result)
{
  result[74] = &unk_1F4CD5E28;
  result[5] = &unk_1F4CD5E28;
  *result = &unk_1F4CE1710;
  return result;
}

void *sub_1D0D8D9D0(void *result)
{
  result[18] = &unk_1F4CD5E28;
  result[5] = &unk_1F4CD5E28;
  *result = &unk_1F4CE1688;
  return result;
}

void sub_1D0D8DA30(void *a1)
{
  a1[18] = &unk_1F4CD5E28;
  a1[5] = &unk_1F4CD5E28;
  *a1 = &unk_1F4CE1688;
  JUMPOUT(0x1D387ECA0);
}

void sub_1D0D8DACC(uint64_t a1, char *a2)
{
  v2 = *(a1 + 8);
  if (v2 >= 2)
  {
    v4 = *(a1 + 12);
    if (v4 >= 2)
    {
      v6 = *(a1 + 20);
      bzero(a2, *(a1 + 16));
      v7 = *(a1 + 16);
      if (v7 >= 3)
      {
        v8 = v4 + v2 - v6;
        v9 = (v7 - 1);
        v10 = 1;
        do
        {
          sub_1D0BA1824(v14, *(a1 + 32) + 104 * v10);
          v11 = &a2[v10];
          if ((a2[v10] & 1) == 0)
          {
            v12 = v10;
            do
            {
              v12 = v12 * v8 % v9;
              sub_1D0BA1824(v13, *(a1 + 32) + 104 * v12);
              sub_1D0B894B0(*(a1 + 32) + 104 * v12, v14);
              *v11 = 1;
              sub_1D0B894B0(v14, v13);
              v11 = &a2[v12];
            }

            while (!*v11);
          }

          ++v10;
        }

        while (v10 != v9);
      }
    }
  }
}

void sub_1D0D8DBD4(void *a1)
{
  a1[74] = &unk_1F4CD5E28;
  a1[5] = &unk_1F4CD5E28;
  *a1 = &unk_1F4CE1710;
  JUMPOUT(0x1D387ECA0);
}

void sub_1D0D8DC70(uint64_t a1, char *a2)
{
  v2 = *(a1 + 8);
  if (v2 >= 2)
  {
    v4 = *(a1 + 12);
    if (v4 >= 2)
    {
      v6 = *(a1 + 20);
      bzero(a2, *(a1 + 16));
      v7 = *(a1 + 16);
      if (v7 >= 3)
      {
        v8 = v4 + v2 - v6;
        v9 = (v7 - 1);
        v10 = 1;
        do
        {
          sub_1D0BA57FC(v14, *(a1 + 32) + 552 * v10);
          v11 = &a2[v10];
          if ((a2[v10] & 1) == 0)
          {
            v12 = v10;
            do
            {
              v12 = v12 * v8 % v9;
              sub_1D0BA57FC(v13, *(a1 + 32) + 552 * v12);
              sub_1D0B894B0(*(a1 + 32) + 552 * v12, v14);
              *v11 = 1;
              sub_1D0B894B0(v14, v13);
              v11 = &a2[v12];
            }

            while (!*v11);
          }

          ++v10;
        }

        while (v10 != v9);
      }
    }
  }
}

void sub_1D0D8DD78(void *a1)
{
  a1[14] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

void sub_1D0D8DDC8(void *a1)
{
  a1[79] = &unk_1F4CDEAF8;
  a1[70] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

void sub_1D0D8DF58(void *a1)
{
  sub_1D0B751F4(&__p, "\n");
  v2 = sub_1D0BCD7C4(a1, "                                 Innovation Test Code Information", 65);
  if ((v97 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v97 & 0x80u) == 0)
  {
    v4 = v97;
  }

  else
  {
    v4 = v96;
  }

  sub_1D0BCD7C4(v2, p_p, v4);
  v5 = sub_1D0BCD7C4(a1, "            Format: Result-Reason, {low-P(LOS) reason -> lower case}, {high-P(LOS) reason -> upper case}", 104);
  if ((v97 & 0x80u) == 0)
  {
    v6 = &__p;
  }

  else
  {
    v6 = __p;
  }

  if ((v97 & 0x80u) == 0)
  {
    v7 = v97;
  }

  else
  {
    v7 = v96;
  }

  v8 = sub_1D0BCD7C4(v5, v6, v7);
  v9 = sub_1D0BCD7C4(v8, "------------------------------------------------------------------------------------------------------------------------------", 126);
  if ((v97 & 0x80u) == 0)
  {
    v10 = &__p;
  }

  else
  {
    v10 = __p;
  }

  if ((v97 & 0x80u) == 0)
  {
    v11 = v97;
  }

  else
  {
    v11 = v96;
  }

  v12 = sub_1D0BCD7C4(v9, v10, v11);
  v13 = sub_1D0BCD7C4(v12, "| Innovation Test Code  |                          Reason                                                                    |", 126);
  if ((v97 & 0x80u) == 0)
  {
    v14 = &__p;
  }

  else
  {
    v14 = __p;
  }

  if ((v97 & 0x80u) == 0)
  {
    v15 = v97;
  }

  else
  {
    v15 = v96;
  }

  v16 = sub_1D0BCD7C4(v13, v14, v15);
  v17 = sub_1D0BCD7C4(v16, "------------------------------------------------------------------------------------------------------------------------------", 126);
  if ((v97 & 0x80u) == 0)
  {
    v18 = &__p;
  }

  else
  {
    v18 = __p;
  }

  if ((v97 & 0x80u) == 0)
  {
    v19 = v97;
  }

  else
  {
    v19 = v96;
  }

  v20 = sub_1D0BCD7C4(v17, v18, v19);
  v21 = sub_1D0BCD7C4(v20, "|        Unk            |  Unknown test result                                                                               |", 126);
  if ((v97 & 0x80u) == 0)
  {
    v22 = &__p;
  }

  else
  {
    v22 = __p;
  }

  if ((v97 & 0x80u) == 0)
  {
    v23 = v97;
  }

  else
  {
    v23 = v96;
  }

  v24 = sub_1D0BCD7C4(v21, v22, v23);
  v25 = sub_1D0BCD7C4(v24, "------------------------------------------------------------------------------------------------------------------------------", 126);
  if ((v97 & 0x80u) == 0)
  {
    v26 = &__p;
  }

  else
  {
    v26 = __p;
  }

  if ((v97 & 0x80u) == 0)
  {
    v27 = v97;
  }

  else
  {
    v27 = v96;
  }

  v28 = sub_1D0BCD7C4(v25, v26, v27);
  v29 = sub_1D0BCD7C4(v28, "|        Err            |  Error in innovation test                                                                          |", 126);
  if ((v97 & 0x80u) == 0)
  {
    v30 = &__p;
  }

  else
  {
    v30 = __p;
  }

  if ((v97 & 0x80u) == 0)
  {
    v31 = v97;
  }

  else
  {
    v31 = v96;
  }

  v32 = sub_1D0BCD7C4(v29, v30, v31);
  v33 = sub_1D0BCD7C4(v32, "------------------------------------------------------------------------------------------------------------------------------", 126);
  if ((v97 & 0x80u) == 0)
  {
    v34 = &__p;
  }

  else
  {
    v34 = __p;
  }

  if ((v97 & 0x80u) == 0)
  {
    v35 = v97;
  }

  else
  {
    v35 = v96;
  }

  v36 = sub_1D0BCD7C4(v33, v34, v35);
  v37 = sub_1D0BCD7C4(v36, "|        I-P            |  Ignored measurement due to low [P]robability of being LOS                                         |", 126);
  if ((v97 & 0x80u) == 0)
  {
    v38 = &__p;
  }

  else
  {
    v38 = __p;
  }

  if ((v97 & 0x80u) == 0)
  {
    v39 = v97;
  }

  else
  {
    v39 = v96;
  }

  v40 = sub_1D0BCD7C4(v37, v38, v39);
  v41 = sub_1D0BCD7C4(v40, "|        I-D            |  Ignored measurement due to [D]ependency check                                                     |", 126);
  if ((v97 & 0x80u) == 0)
  {
    v42 = &__p;
  }

  else
  {
    v42 = __p;
  }

  if ((v97 & 0x80u) == 0)
  {
    v43 = v97;
  }

  else
  {
    v43 = v96;
  }

  v44 = sub_1D0BCD7C4(v41, v42, v43);
  v45 = sub_1D0BCD7C4(v44, "|        I-5            |  Ignored measurement by L1 vs L[5] post filter logic                                               |", 126);
  if ((v97 & 0x80u) == 0)
  {
    v46 = &__p;
  }

  else
  {
    v46 = __p;
  }

  if ((v97 & 0x80u) == 0)
  {
    v47 = v97;
  }

  else
  {
    v47 = v96;
  }

  v48 = sub_1D0BCD7C4(v45, v46, v47);
  v49 = sub_1D0BCD7C4(v48, "|        I-i            |  Ignored because the low-P(LOS) measurement had a high [i]nnovation magnitude                      |", 126);
  if ((v97 & 0x80u) == 0)
  {
    v50 = &__p;
  }

  else
  {
    v50 = __p;
  }

  if ((v97 & 0x80u) == 0)
  {
    v51 = v97;
  }

  else
  {
    v51 = v96;
  }

  v52 = sub_1D0BCD7C4(v49, v50, v51);
  v53 = sub_1D0BCD7C4(v52, "|        I-r            |  Ignored because the low-P(LOS) measurement had a normalized innovation test result of [r]eject    |", 126);
  if ((v97 & 0x80u) == 0)
  {
    v54 = &__p;
  }

  else
  {
    v54 = __p;
  }

  if ((v97 & 0x80u) == 0)
  {
    v55 = v97;
  }

  else
  {
    v55 = v96;
  }

  v56 = sub_1D0BCD7C4(v53, v54, v55);
  v57 = sub_1D0BCD7C4(v56, "------------------------------------------------------------------------------------------------------------------------------", 126);
  if ((v97 & 0x80u) == 0)
  {
    v58 = &__p;
  }

  else
  {
    v58 = __p;
  }

  if ((v97 & 0x80u) == 0)
  {
    v59 = v97;
  }

  else
  {
    v59 = v96;
  }

  v60 = sub_1D0BCD7C4(v57, v58, v59);
  v61 = sub_1D0BCD7C4(v60, "|        R-I            |  Rejected measurement because the [I]nnovation test result was a Reject                            |", 126);
  if ((v97 & 0x80u) == 0)
  {
    v62 = &__p;
  }

  else
  {
    v62 = __p;
  }

  if ((v97 & 0x80u) == 0)
  {
    v63 = v97;
  }

  else
  {
    v63 = v96;
  }

  v64 = sub_1D0BCD7C4(v61, v62, v63);
  v65 = sub_1D0BCD7C4(v64, "|        R-5            |  Rejected measurement by L1 vs L[5] post filter logic                                              |", 126);
  if ((v97 & 0x80u) == 0)
  {
    v66 = &__p;
  }

  else
  {
    v66 = __p;
  }

  if ((v97 & 0x80u) == 0)
  {
    v67 = v97;
  }

  else
  {
    v67 = v96;
  }

  v68 = sub_1D0BCD7C4(v65, v66, v67);
  v69 = sub_1D0BCD7C4(v68, "------------------------------------------------------------------------------------------------------------------------------", 126);
  if ((v97 & 0x80u) == 0)
  {
    v70 = &__p;
  }

  else
  {
    v70 = __p;
  }

  if ((v97 & 0x80u) == 0)
  {
    v71 = v97;
  }

  else
  {
    v71 = v96;
  }

  v72 = sub_1D0BCD7C4(v69, v70, v71);
  v73 = sub_1D0BCD7C4(v72, "|        W-I            |  Reweighted measurement because the [I]nnovation test result was a Reweight                        |", 126);
  if ((v97 & 0x80u) == 0)
  {
    v74 = &__p;
  }

  else
  {
    v74 = __p;
  }

  if ((v97 & 0x80u) == 0)
  {
    v75 = v97;
  }

  else
  {
    v75 = v96;
  }

  v76 = sub_1D0BCD7C4(v73, v74, v75);
  v77 = sub_1D0BCD7C4(v76, "|        W-u            |  Reweighted low-P(LOS) measurement because the innovation test result was [u]se as is              |", 126);
  if ((v97 & 0x80u) == 0)
  {
    v78 = &__p;
  }

  else
  {
    v78 = __p;
  }

  if ((v97 & 0x80u) == 0)
  {
    v79 = v97;
  }

  else
  {
    v79 = v96;
  }

  v80 = sub_1D0BCD7C4(v77, v78, v79);
  v81 = sub_1D0BCD7C4(v80, "------------------------------------------------------------------------------------------------------------------------------", 126);
  if ((v97 & 0x80u) == 0)
  {
    v82 = &__p;
  }

  else
  {
    v82 = __p;
  }

  if ((v97 & 0x80u) == 0)
  {
    v83 = v97;
  }

  else
  {
    v83 = v96;
  }

  v84 = sub_1D0BCD7C4(v81, v82, v83);
  v85 = sub_1D0BCD7C4(v84, "|         *             |  Use the measurement as is with the given measurement uncertainty                                  |", 126);
  if ((v97 & 0x80u) == 0)
  {
    v86 = &__p;
  }

  else
  {
    v86 = __p;
  }

  if ((v97 & 0x80u) == 0)
  {
    v87 = v97;
  }

  else
  {
    v87 = v96;
  }

  v88 = sub_1D0BCD7C4(v85, v86, v87);
  v89 = sub_1D0BCD7C4(v88, "----------------------------------------------------------------------------------------------------------------------------- ", 126);
  if ((v97 & 0x80u) == 0)
  {
    v90 = &__p;
  }

  else
  {
    v90 = __p;
  }

  if ((v97 & 0x80u) == 0)
  {
    v91 = v97;
  }

  else
  {
    v91 = v96;
  }

  v92 = sub_1D0BCD7C4(v89, v90, v91);
  if ((v97 & 0x80u) == 0)
  {
    v93 = &__p;
  }

  else
  {
    v93 = __p;
  }

  if ((v97 & 0x80u) == 0)
  {
    v94 = v97;
  }

  else
  {
    v94 = v96;
  }

  sub_1D0BCD7C4(v92, v93, v94);
  if (v97 < 0)
  {
    operator delete(__p);
  }
}

void sub_1D0D8E414(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_1D0D8E430(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = 0x100000013;
  *(a1 + 24) = 0x100000013;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CE40B8;
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
  if (v4 > 0x13)
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

uint64_t sub_1D0D8E578(uint64_t a1, __int128 *a2, __int128 *a3)
{
  sub_1D0BA002C(a1, 18);
  if (*(a2 + 23) < 0)
  {
    sub_1D0BC39B4((a1 + 56), *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    *(a1 + 72) = *(a2 + 2);
    *(a1 + 56) = v6;
  }

  *(a1 + 80) = *(a2 + 3);
  *(a1 + 88) = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  *(a1 + 152) = a2[6];
  *(a1 + 136) = v9;
  *(a1 + 120) = v8;
  *(a1 + 104) = v7;
  v10 = a2[7];
  v11 = a2[8];
  v12 = a2[9];
  *(a1 + 216) = a2[10];
  *(a1 + 200) = v12;
  *(a1 + 184) = v11;
  *(a1 + 168) = v10;
  v13 = a2[11];
  v14 = a2[12];
  v15 = a2[14];
  *(a1 + 264) = a2[13];
  *(a1 + 280) = v15;
  *(a1 + 248) = v14;
  *(a1 + 232) = v13;
  *(a1 + 296) = &unk_1F4CDFE98;
  if (*(a2 + 271) < 0)
  {
    sub_1D0BC39B4((a1 + 304), *(a2 + 31), *(a2 + 32));
  }

  else
  {
    v16 = *(a2 + 248);
    *(a1 + 320) = *(a2 + 33);
    *(a1 + 304) = v16;
  }

  *(a1 + 328) = *(a2 + 34);
  v17 = *(a2 + 280);
  v18 = *(a2 + 312);
  *(a1 + 352) = *(a2 + 296);
  *(a1 + 368) = v18;
  *(a1 + 336) = v17;
  v19 = *(a2 + 328);
  v20 = *(a2 + 344);
  v21 = *(a2 + 376);
  *(a1 + 416) = *(a2 + 360);
  *(a1 + 432) = v21;
  *(a1 + 384) = v19;
  *(a1 + 400) = v20;
  v22 = *(a2 + 392);
  v23 = *(a2 + 408);
  v24 = *(a2 + 440);
  *(a1 + 480) = *(a2 + 424);
  *(a1 + 496) = v24;
  *(a1 + 448) = v22;
  *(a1 + 464) = v23;
  v25 = *a3;
  v26 = a3[1];
  *(a1 + 544) = *(a3 + 4);
  *(a1 + 512) = v25;
  *(a1 + 528) = v26;
  *a1 = &unk_1F4CE0870;
  *(a1 + 552) = 0u;
  return a1;
}

void sub_1D0D8E6F0(_Unwind_Exception *exception_object)
{
  *(v1 + 296) = &unk_1F4CD5F70;
  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  *v1 = &unk_1F4CE4300;
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0D8E994(_Unwind_Exception *a1)
{
  *(v1 + 37) = &unk_1F4CD5F70;
  if (v1[79] < 0)
  {
    operator delete(*(v1 + 7));
  }

  *v1 = v2;
  if (v1[39] < 0)
  {
    operator delete(*(v1 + 2));
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void *sub_1D0D8E9F8(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      sub_1D0D8E75C(a3, a2[1]);
      return 0;
    }

    v7 = a2[1];
    (**v7)(v7, a2, a3, a4, a5);
    operator delete(v7);
    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    v9 = a2[1];
    *a3 = sub_1D0D8E9F8;
    a3[1] = v9;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return &unk_1F4CE0898;
  }

  if (a4)
  {
    v6 = sub_1D0B7CA64(a4, &unk_1F4CE0898);
  }

  else
  {
    v6 = a5 == &std::__any_imp::__unique_typeinfo<raven::h_GnssPsrArgs_RavenPNT<double>>::__id;
  }

  if (v6)
  {
    return a2[1];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0D8EAE4(uint64_t a1, __int128 *a2, __int128 *a3)
{
  sub_1D0BA002C(a1, 17);
  if (*(a2 + 23) < 0)
  {
    sub_1D0BC39B4((a1 + 56), *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    *(a1 + 72) = *(a2 + 2);
    *(a1 + 56) = v6;
  }

  *(a1 + 80) = *(a2 + 3);
  *(a1 + 88) = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  *(a1 + 152) = a2[6];
  *(a1 + 136) = v9;
  *(a1 + 120) = v8;
  *(a1 + 104) = v7;
  v10 = a2[7];
  v11 = a2[8];
  v12 = a2[9];
  *(a1 + 216) = a2[10];
  *(a1 + 200) = v12;
  *(a1 + 184) = v11;
  *(a1 + 168) = v10;
  v13 = a2[11];
  v14 = a2[12];
  v15 = a2[14];
  *(a1 + 264) = a2[13];
  *(a1 + 280) = v15;
  *(a1 + 248) = v14;
  *(a1 + 232) = v13;
  *(a1 + 296) = &unk_1F4CDFE98;
  if (*(a2 + 271) < 0)
  {
    sub_1D0BC39B4((a1 + 304), *(a2 + 31), *(a2 + 32));
  }

  else
  {
    v16 = *(a2 + 248);
    *(a1 + 320) = *(a2 + 33);
    *(a1 + 304) = v16;
  }

  *(a1 + 328) = *(a2 + 34);
  v17 = *(a2 + 280);
  v18 = *(a2 + 312);
  *(a1 + 352) = *(a2 + 296);
  *(a1 + 368) = v18;
  *(a1 + 336) = v17;
  v19 = *(a2 + 328);
  v20 = *(a2 + 344);
  v21 = *(a2 + 376);
  *(a1 + 416) = *(a2 + 360);
  *(a1 + 432) = v21;
  *(a1 + 384) = v19;
  *(a1 + 400) = v20;
  v22 = *(a2 + 392);
  v23 = *(a2 + 408);
  v24 = *(a2 + 440);
  *(a1 + 480) = *(a2 + 424);
  *(a1 + 496) = v24;
  *(a1 + 448) = v22;
  *(a1 + 464) = v23;
  v25 = *a3;
  v26 = a3[1];
  *(a1 + 544) = *(a3 + 4);
  *(a1 + 512) = v25;
  *(a1 + 528) = v26;
  *a1 = &unk_1F4CE1818;
  return a1;
}

void sub_1D0D8EC50(_Unwind_Exception *exception_object)
{
  *(v1 + 296) = &unk_1F4CD5F70;
  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  *v1 = &unk_1F4CE4300;
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0D8ECBC(uint64_t a1)
{
  *(a1 + 296) = &unk_1F4CDFE98;
  if (*(a1 + 327) < 0)
  {
    operator delete(*(a1 + 304));
  }

  *(a1 + 296) = &unk_1F4CD5F70;
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0D8EFA0(_Unwind_Exception *a1)
{
  *(v1 + 37) = &unk_1F4CD5F70;
  if (v1[79] < 0)
  {
    operator delete(*(v1 + 7));
  }

  *v1 = v2;
  if (v1[39] < 0)
  {
    operator delete(*(v1 + 2));
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void *sub_1D0D8F004(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      sub_1D0D8ED88(a3, a2[1]);
      return 0;
    }

    v7 = a2[1];
    (**v7)(v7, a2, a3, a4, a5);
    operator delete(v7);
    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    v9 = a2[1];
    *a3 = sub_1D0D8F004;
    a3[1] = v9;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return &unk_1F4CE1830;
  }

  if (a4)
  {
    v6 = sub_1D0B7CA64(a4, &unk_1F4CE1830);
  }

  else
  {
    v6 = a5 == &std::__any_imp::__unique_typeinfo<raven::h_GnssDopplerArgs_RavenPNT<double>>::__id;
  }

  if (v6)
  {
    return a2[1];
  }

  else
  {
    return 0;
  }
}

void sub_1D0D8F0F0(uint64_t a1)
{
  *(a1 + 296) = &unk_1F4CDFE98;
  if (*(a1 + 327) < 0)
  {
    operator delete(*(a1 + 304));
  }

  *(a1 + 296) = &unk_1F4CD5F70;
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x1D387ECA0);
}

uint64_t *sub_1D0D8F1BC(void *a1, double *a2, int a3, int8x16_t a4, int8x16_t a5)
{
  v6 = *a1;
  if (!a3)
  {
    goto LABEL_32;
  }

  v8 = v6 + 1;
  v7 = *v6;
  if (*v6 == v6 + 1)
  {
    goto LABEL_32;
  }

  v9 = *v6;
  while (1)
  {
    v10 = v9[1];
    v11 = v9;
    if (v10)
    {
      do
      {
        v9 = v10;
        v10 = *v10;
      }

      while (v10);
    }

    else
    {
      do
      {
        v9 = v11[2];
        v12 = *v9 == v11;
        v11 = v9;
      }

      while (!v12);
    }

    if (v9 == v8)
    {
      break;
    }

    v13 = CNTimeSpan::operator-(v9 + 4, a2, a4, a5);
    v29 = v13;
    v30 = v14;
    if (v13 < 0 || (v17 = v14, v14 < 0.0))
    {
      v18 = CNTimeSpan::operator-(&v29, v15, v16);
      v17 = v19;
    }

    else
    {
      v18 = v13;
    }

    v20 = CNTimeSpan::operator-(v7 + 4, a2, v15, v16);
    v73 = v20;
    v74 = v21;
    if (v20 < 0 || (*a4.i64 = v21, v21 < 0.0))
    {
      v20 = CNTimeSpan::operator-(&v73, a4, a5);
      a4.i64[0] = v22;
    }

    if ((v18 || (*&v17 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) && (v20 || (a4.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL))
    {
      v23 = v18 < v20;
      if (v18 == v20)
      {
        v23 = v17 < *a4.i64;
      }
    }

    else
    {
      v23 = v17 < *a4.i64;
    }

    if (v23)
    {
      v7 = v9;
    }
  }

  if (v7 == v8)
  {
    goto LABEL_32;
  }

  v24 = CNTimeSpan::operator-(v7 + 4, a2, a4, a5);
  v73 = v24;
  v74 = v25;
  if (v24 < 0 || (*v26.i64 = v25, v25 < 0.0))
  {
    v24 = CNTimeSpan::operator-(&v73, v26, v27);
  }

  v29 = v24;
  v30 = v25;
  if (!sub_1D0B7C8AC(&v29, &qword_1EE053C28))
  {
LABEL_32:
    bzero(&v29, 0x398uLL);
    v33 = 0x10000001CLL;
    v31 = &unk_1F4CE0A20;
    v32 = xmmword_1D0E843A0;
    v34 = v35;
    v35[28] = 0x7FF8000000000000;
    v36 = vdupq_n_s64(0x7FF8000000000000uLL);
    v37 = v36;
    v38 = v36;
    v39 = v36;
    v40 = v36;
    v41 = v36;
    v42 = v36;
    v43 = v36;
    v44 = v36;
    v45 = v36;
    v46 = v36;
    v47 = v36;
    v48 = v36;
    v49 = v36;
    v50 = v36;
    v51 = v36;
    v52 = v36;
    v53 = v36;
    v54 = v36;
    v55 = v36;
    v56 = v36;
    v57 = v36;
    v58 = v36;
    v59 = v36;
    v60 = v36;
    v61 = v36;
    v62 = v36;
    v63 = v36;
    v64 = v36;
    v65 = v36;
    v66 = v36;
    v67 = v36;
    v68 = v36;
    v69 = v36;
    v70 = v36;
    v71 = 0u;
    sub_1D0D87FCC(&v72);
  }

  return v7;
}

void sub_1D0D8F54C(_Unwind_Exception *a1)
{
  *v1 = &unk_1F4CD5E28;
  sub_1D0D90420(v3 - 120);
  sub_1D0D857FC((v2 + 864));
  _Unwind_Resume(a1);
}

uint64_t sub_1D0D8F594(uint64_t *a1, void *a2, double *a3, float64x2_t *a4, uint64_t a5, double a6, int8x16_t a7)
{
  v8 = a4;
  v9 = a3;
  v10 = a2;
  if (*(a5 + 912))
  {
    goto LABEL_2;
  }

  v24 = a1[1];
  v40 = **(v24 + 520);
  sub_1D0D96A9C(v39, *(v24 + 528));
  v26 = *a1;
  v25 = a1[1];
  v27 = *(v25 + 512);
  v28 = **(v25 + 536);
  v29 = (v25 + 88);
  v30 = *(v25 + 544);
  *(&__src[1] + 1) = 0x10000001CLL;
  *&__src[0] = &unk_1F4CE0A20;
  *&__src[2] = &__src[2] + 8;
  *(__src + 8) = xmmword_1D0E843A0;
  *(&__src[2] + 8) = 0u;
  *(&__src[3] + 8) = 0u;
  *(&__src[4] + 8) = 0u;
  *(&__src[5] + 8) = 0u;
  *(&__src[6] + 8) = 0u;
  *(&__src[7] + 8) = 0u;
  *(&__src[8] + 8) = 0u;
  *(&__src[9] + 8) = 0u;
  *(&__src[10] + 8) = 0u;
  *(&__src[11] + 8) = 0u;
  *(&__src[12] + 8) = 0u;
  *(&__src[13] + 8) = 0u;
  *(&__src[14] + 8) = 0u;
  *(&__src[15] + 8) = 0u;
  sub_1D0B894B0(a5 + 16, __src);
  v59 = 0x10000001CLL;
  v57 = &unk_1F4CE0A20;
  v60 = v61;
  v58 = xmmword_1D0E843A0;
  memset(v61, 0, 224);
  v31 = v29;
  if (sub_1D0D9046C(v29, &v40, v39, v27, v30, v28, 1, 0, &v57) || (v54 = 0x10000001CLL, v52 = &unk_1F4CE0A20, v55 = v56, v53 = xmmword_1D0E843A0, memset(v56, 0, sizeof(v56)), __src[0] = vdupq_n_s64(0x7FF8000000000000uLL), __src[1] = __src[0], __src[2] = __src[0], __src[3] = __src[0], __src[4] = __src[0], __src[5] = __src[0], __src[6] = __src[0], __src[7] = __src[0], __src[8] = __src[0], __src[9] = __src[0], __src[10] = __src[0], __src[11] = __src[0], __src[12] = __src[0], __src[13] = __src[0], __src[14] = __src[0], __src[15] = __src[0], __src[16] = __src[0], __src[17] = __src[0], __src[18] = __src[0], __src[19] = __src[0], __src[20] = __src[0], __src[21] = __src[0], __src[22] = __src[0], __src[23] = __src[0], __src[24] = __src[0], __src[25] = __src[0], __src[26] = __src[0], __src[27] = __src[0], __src[28] = __src[0], __src[29] = __src[0], __src[30] = __src[0], __src[31] = __src[0], __src[32] = __src[0], __src[33] = __src[0], __src[34] = __src[0], *&__src[35] = 0x7FF8000000000000, v50 = 0, sub_1D0D8825C(&v57, v26, 0, 1, 0, &v52, __src, &v50, 0.000000015)))
  {
LABEL_6:
    LOWORD(__src[0]) = 12;
    LOBYTE(v41) = 4;
    cnprint::CNPrinter::Print(__src, &v41, "time,%.3lf,h-function failure on line %d: %s() %s");
    return 0xFFFFFFFFLL;
  }

  v10 = a2;
  v34 = CNTimeSpan::operator-(a2, v29, v32, v33);
  if (fabs(v35 + v34) > 0.000000015)
  {
    v47 = 0x10000001CLL;
    v45 = &unk_1F4CE0A20;
    v48 = v49;
    v46 = xmmword_1D0E843A0;
    memset(v49, 0, 224);
    if (!sub_1D0D9046C(a2, &v40, v39, v27, v30, v28, 1, 0, &v45))
    {
      sub_1D0D96660(v44, v26);
      sub_1D0D87C2C(&v41, 26, 26);
    }

    goto LABEL_6;
  }

  sub_1D0B894B0(a5 + 16, &v52);
  memcpy((a5 + 280), __src, 0x238uLL);
  v8 = a4;
  v9 = a3;
  *a5 = *a2;
  *(a5 + 848) = *v31;
  *(a5 + 912) = 1;
LABEL_2:
  v12 = *(a5 + 48);
  v41 = *v12;
  v13.i64[1] = *(&v41 + 1);
  v42 = *(v12 + 2);
  v13.i64[0] = *(v12 + 19);
  a7.i64[0] = 0x3EB0C6F7A0B5ED8DLL;
  *&v14 = *v13.i64 * 0.000001;
  v15 = a1[1];
  *v16.i64 = CNTimeSpan::operator-(v10, v15 + 11, v13, a7);
  *v18.i64 = v17 + *v16.i64;
  *&v53 = 0;
  v52 = 0;
  *v19.i64 = CNTimeSpan::SetTimeSpan(&v52, 0, v18, v16);
  v57 = CNTimeSpan::operator+(v15 + 17, &v52, v19, v20);
  *&v58 = v21;
  v22.i64[0] = v15[24];
  v45 = &unk_1F4CD5F20;
  v43 = &unk_1F4CD5BC8;
  LOWORD(__src[0]) = 0;
  *(__src + 8) = 0u;
  *(&__src[1] + 8) = 0u;
  DWORD2(__src[2]) = 0;
  memset(&__src[3], 0, 20);
  result = cnnavigation::GNSSCarrierPhase(&v57, __src, &v41, (v15 + 37), &v45, &v43, v9, 1, v22, v14, 0.0, v8);
  if (!result)
  {
    return result;
  }

  LOWORD(__src[0]) = 12;
  LOBYTE(v57) = 4;
  cnprint::CNPrinter::Print(__src, &v57, "time,%.3lf,h-function failure on line %d: %s() %s");
  return 0xFFFFFFFFLL;
}

void sub_1D0D90284(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_1EE053B78);
  sub_1D0D8B128(&STACK[0x550]);
  sub_1D0D857FC(&STACK[0x470]);
  _Unwind_Resume(a1);
}

double sub_1D0D90344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x1A00000001;
  *a1 = &unk_1F4CE1048;
  *(a1 + 8) = xmmword_1D0E84580;
  *(a1 + 32) = a1 + 40;
  *&result = *&sub_1D0BA5A78(a2, a3, a1);
  return result;
}

uint64_t sub_1D0D90394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x1A00000001;
  *a1 = &unk_1F4CE1048;
  *(a1 + 8) = xmmword_1D0E84580;
  *(a1 + 32) = a1 + 40;
  return sub_1D0B89390(a2, a3, a1);
}

uint64_t sub_1D0D90420(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1D0D857FC(v2 + 114);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_1D0D9046C(void *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, char a7, int a8, uint64_t a9)
{
  v32 = 0x10000001CLL;
  v30 = &unk_1F4CE0A20;
  v33 = v34;
  v31 = xmmword_1D0E843A0;
  memset(v34, 0, sizeof(v34));
  v15 = v34 + 3;
  v35 = 0u;
  memset(v36, 0, sizeof(v36));
  sub_1D0B894B0(a9, &v30);
  v16 = xmmword_1D0E84440;
  v17 = xmmword_1D0E7DD30;
  v18 = 13;
  v19 = vdupq_n_s64(0x13uLL);
  v20 = vdupq_n_s64(4uLL);
  do
  {
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(v19, v17)), *v16.i8).u8[0])
    {
      *(v15 - 3) = v18 - 13;
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x13uLL), *&v17)), *&v16).i8[2])
    {
      *(v15 - 2) = v18 - 12;
    }

    if (vuzp1_s16(*&v16, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x13uLL), *&v16))).i32[1])
    {
      *(v15 - 1) = v18 - 11;
      *v15 = v18 - 10;
    }

    v16 = vaddq_s64(v16, v20);
    v17 = vaddq_s64(v17, v20);
    v18 += 4;
    v15 += 4;
  }

  while (v18 != 33);
  v44 = 0x100000013;
  v46[1] = v34[1];
  v46[2] = v35;
  v42 = &unk_1F4CE2378;
  v45 = v46;
  v47[0] = v36[0];
  *(v47 + 12) = *(v36 + 12);
  v43 = xmmword_1D0E844F0;
  v46[0] = v34[0];
  v39 = 0x100000013;
  v38 = xmmword_1D0E844F0;
  v37 = &unk_1F4CE40B8;
  v40 = v41;
  if (sub_1D0D85A88(a1, a2, *(a3 + 32), a4, a5, &v37))
  {
    return 0xFFFFFFFFLL;
  }

  sub_1D0D98740(&v30, a9, &v42);
  sub_1D0D8874C(&v30, DWORD2(v38), v40);
  if (a7)
  {
    *&v34[0] = 0x1400000013;
    v44 = 0x100000002;
    v42 = &unk_1F4CE0EA8;
    v43 = xmmword_1D0E83F60;
    v45 = v46;
    *&v46[0] = 0x1400000013;
    v39 = 0x100000002;
    v38 = xmmword_1D0E83F60;
    v37 = &unk_1F4CE0220;
    v40 = v41;
    if (sub_1D0C16DB8(a1, a2, a3, &v37))
    {
      return 0xFFFFFFFFLL;
    }

    sub_1D0D89C74(&v30, a9, &v42);
    sub_1D0D887C0(&v30, DWORD2(v38), v40);
  }

  if (a8)
  {
    v22 = xmmword_1D0E84440;
    v23 = xmmword_1D0E7DD30;
    v24 = v34 + 3;
    v25 = 13;
    v26 = vdupq_n_s64(7uLL);
    v27 = vdupq_n_s64(4uLL);
    do
    {
      if (vuzp1_s16(vmovn_s64(vcgtq_u64(v26, v23)), *v22.i8).u8[0])
      {
        *(v24 - 3) = v25 + 8;
      }

      if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(7uLL), *&v23)), *&v22).i8[2])
      {
        *(v24 - 2) = v25 + 9;
      }

      if (vuzp1_s16(*&v22, vmovn_s64(vcgtq_u64(vdupq_n_s64(7uLL), *&v22))).i32[1])
      {
        *(v24 - 1) = v25 + 10;
        *v24 = v25 + 11;
      }

      v22 = vaddq_s64(v22, v27);
      v23 = vaddq_s64(v23, v27);
      v25 += 4;
      v24 += 4;
    }

    while (v25 != 21);
    v44 = 0x100000007;
    v42 = &unk_1F4CE0C88;
    v45 = v46;
    v43 = xmmword_1D0E84420;
    v46[0] = v34[0];
    *(v46 + 12) = *(v34 + 12);
    v39 = 0x100000007;
    v38 = xmmword_1D0E84420;
    v37 = &unk_1F4CE0BB0;
    v40 = v41;
    if (!sub_1D0C50CB8(a1, a2, a3, a6, &v37))
    {
      sub_1D0D867B8(&v30, a9, &v42);
      sub_1D0D8644C(&v30, DWORD2(v38), v40);
      return 0;
    }

    return 0xFFFFFFFFLL;
  }

  return 0;
}

double sub_1D0D90960(uint64_t a1, unsigned int a2, double *a3)
{
  if (*(a1 + 16) != a2)
  {
    __assert_rtn("operator=", "cnsubvector.h", 347, "this->num_elements_ == A.num_elements_");
  }

  if (a2 >= 1)
  {
    v3 = *(a1 + 288);
    v4 = *(*(a1 + 248) + 32);
    v5 = *(a1 + 32);
    v6 = a2;
    do
    {
      v7 = *a3++;
      result = v7;
      v9 = *v3++;
      *(v4 + 8 * v9) = result;
      *v5++ = result;
      --v6;
    }

    while (v6);
  }

  return result;
}

void *sub_1D0D909D4(void *result)
{
  result[32] = &unk_1F4CDEAF8;
  *result = &unk_1F4CD5E28;
  return result;
}

uint64_t sub_1D0D90A14(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2 != *(a2 + 8))
  {
    __assert_rtn("operator=", "cnsubmatrix.h", 376, "this->num_rows_ == A.num_rows_");
  }

  v3 = *(result + 12);
  if (v3 != *(a2 + 12))
  {
    __assert_rtn("operator=", "cnsubmatrix.h", 377, "this->num_cols_ == A.num_cols_");
  }

  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = *(a2 + 32);
    do
    {
      if (v2)
      {
        v7 = *(result + 48);
        v8 = *(result + 88);
        v9 = *(v7 + 20) * *(*(result + 232) + 4 * v5);
        v10 = *(v7 + 32);
        v11 = *(result + 32);
        v12 = *(result + 20) * v5;
        v13 = v4;
        v14 = v2;
        do
        {
          v15 = *(v6 + 8 * v13);
          v16 = *v8++;
          *(v10 + 8 * (v16 + v9)) = v15;
          *(v11 + 8 * v12++) = v15;
          ++v13;
          --v14;
        }

        while (v14);
      }

      ++v5;
      v4 += v2;
    }

    while (v5 != v3);
  }

  return result;
}

void *sub_1D0D90B00(void *a1)
{
  *a1 = &unk_1F4CE1940;
  a1[25] = &unk_1F4CDEAF8;
  a1[7] = &unk_1F4CDEAF8;
  return sub_1D0D857FC(a1);
}

uint64_t sub_1D0D90B60(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v2 = *(a2 + 12);
  *(a1 + 24) = 0x100000006;
  *a1 = &unk_1F4CE1400;
  *(a1 + 8) = v2;
  *(a1 + 12) = v3;
  *(a1 + 16) = v3 * v2;
  *(a1 + 20) = v2;
  *(a1 + 32) = a1 + 40;
  return sub_1D0D2EF0C(a2, a1);
}

uint64_t sub_1D0D90C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x10000001ALL;
  *(a1 + 8) = xmmword_1D0E843B0;
  *(a1 + 32) = a1 + 40;
  *a1 = &unk_1F4CE18F8;
  *(a1 + 248) = a2;
  *(a1 + 280) = 0x10000001ALL;
  *(a1 + 256) = &unk_1F4CE3E90;
  *(a1 + 264) = xmmword_1D0E843B0;
  *(a1 + 288) = a1 + 296;
  sub_1D0B9F5D4(a1 + 256, a3);
  v5 = *(a1 + 264);
  v6 = *(a1 + 268);
  *(a1 + 8) = v5;
  *(a1 + 12) = v6;
  v7 = (v6 * v5);
  *(a1 + 16) = v7;
  *(a1 + 20) = v5;
  if (v7 >= 1)
  {
    v8 = *(a1 + 288);
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

void sub_1D0D90CEC(void *a1)
{
  a1[32] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

void sub_1D0D90EC4(_Unwind_Exception *a1)
{
  v1[25] = &unk_1F4CDEAF8;
  v1[7] = &unk_1F4CDEAF8;
  sub_1D0D857FC(v1);
  _Unwind_Resume(a1);
}

void sub_1D0D90F10(void *a1)
{
  *a1 = &unk_1F4CE1940;
  a1[25] = &unk_1F4CDEAF8;
  a1[7] = &unk_1F4CDEAF8;
  sub_1D0D857FC(a1);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0D90FE0(uint64_t a1)
{
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

void sub_1D0D912D4(_Unwind_Exception *a1)
{
  *(v1 + 37) = &unk_1F4CD5F70;
  if (v1[79] < 0)
  {
    operator delete(*(v1 + 7));
  }

  *v1 = v2;
  if (v1[39] < 0)
  {
    operator delete(*(v1 + 2));
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void *sub_1D0D91338(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      sub_1D0D910AC(a3, a2[1]);
      return 0;
    }

    v7 = a2[1];
    (**v7)(v7, a2, a3, a4, a5);
    operator delete(v7);
    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    v9 = a2[1];
    *a3 = sub_1D0D91338;
    a3[1] = v9;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return &unk_1F4CE18A0;
  }

  if (a4)
  {
    v6 = sub_1D0B7CA64(a4, &unk_1F4CE18A0);
  }

  else
  {
    v6 = a5 == &std::__any_imp::__unique_typeinfo<raven::h_GnssAverageDopplerArgs_RavenPNT<double>>::__id;
  }

  if (v6)
  {
    return a2[1];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0D91424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x100000003;
  *a1 = &unk_1F4CDEB28;
  *(a1 + 8) = xmmword_1D0E7DCC0;
  *(a1 + 32) = a1 + 40;
  return sub_1D0B89390(a2, a3, a1);
}

double sub_1D0D914B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x300000003;
  *a1 = &unk_1F4CD5DD0;
  *(a1 + 8) = xmmword_1D0E76C10;
  *(a1 + 32) = a1 + 40;
  *&result = *&sub_1D0B88838(a2, a3, a1);
  return result;
}

uint64_t sub_1D0D91538(uint64_t a1, uint64_t a2, int a3)
{
  v7 = 0x100000001;
  v5 = &unk_1F4CDF158;
  *&v3 = 0x100000001;
  *(&v3 + 1) = 0x100000001;
  v6 = v3;
  v8 = &v9;
  v9 = a3;
  return sub_1D0C51DC8(a1, a2, &unk_1EE053EF8, &v5);
}

double sub_1D0D915A0(void *a1)
{
  v1 = sub_1D0BA002C(a1, 20);
  *(v1 + 9) = 0u;
  *(v1 + 7) = 0u;
  *v1 = &unk_1F4CE08F0;
  v1[15] = 0x100000003;
  v1[11] = 0;
  v1[12] = &unk_1F4CDEB28;
  *&result = 0x100000003;
  *(v1 + 13) = xmmword_1D0E7DCC0;
  v1[16] = v1 + 17;
  v1[20] = 0;
  v1[21] = 0;
  v1[22] = 0;
  v1[23] = 0x3FF0000000000000;
  return result;
}

void *sub_1D0D91768(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      sub_1D0D91630(a3, a2[1]);
      return 0;
    }

    v7 = a2[1];
    (**v7)(v7, a2, a3, a4, a5);
    operator delete(v7);
    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    v9 = a2[1];
    *a3 = sub_1D0D91768;
    a3[1] = v9;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return &unk_1F4CE0908;
  }

  if (a4)
  {
    v6 = sub_1D0B7CA64(a4, &unk_1F4CE0908);
  }

  else
  {
    v6 = a5 == &std::__any_imp::__unique_typeinfo<raven::h_HorizontalVelocityInIMUFrameArgs_RavenPNT<double>>::__id;
  }

  if (v6)
  {
    return a2[1];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0D91854(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4CE4100;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  sub_1D0D8E430(a1 + 64, a2 + 64);
  sub_1D0D8E430(a1 + 256, a2 + 256);
  *(a1 + 448) = *(a2 + 448);
  v6 = *(a2 + 456);
  *(a1 + 472) = *(a2 + 472);
  *(a1 + 456) = v6;
  sub_1D0D8E430(a1 + 480, a2 + 480);
  sub_1D0D8069C(a1 + 672, a2 + 672);
  sub_1D0D807E0(a1 + 3600, a2 + 3600);
  *a1 = &unk_1F4CE3F68;
  *(a1 + 5920) = 0;
  *(a1 + 5936) = 0;
  *(a1 + 5928) = 0;
  v7 = *(a2 + 5920);
  v8 = *(a2 + 5928);
  if (v8 != v7)
  {
    sub_1D0D83F60((a1 + 5920), 0xCFF3FCFF3FCFF3FDLL * ((v8 - v7) >> 4));
  }

  *(a1 + 5944) = *(a2 + 5944);
  return a1;
}

void sub_1D0D919C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  v9[741] = v10;
  sub_1D0D83948(&a9);
  sub_1D0D801C8(v9);
  _Unwind_Resume(a1);
}

void sub_1D0D91A78(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x1D387ECA0);
}

void *sub_1D0D91BE4(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      sub_1D0D91AE8(a3, a2[1]);
      return 0;
    }

    v7 = a2[1];
    (**v7)(v7, a2, a3, a4, a5);
    operator delete(v7);
    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    v9 = a2[1];
    *a3 = sub_1D0D91BE4;
    a3[1] = v9;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return &unk_1F4CE19C0;
  }

  if (a4)
  {
    v6 = sub_1D0B7CA64(a4, &unk_1F4CE19C0);
  }

  else
  {
    v6 = a5 == &std::__any_imp::__unique_typeinfo<raven::h_DeviceZeroAngularRateArgs_RavenPNT<double>>::__id;
  }

  if (v6)
  {
    return a2[1];
  }

  else
  {
    return 0;
  }
}

void sub_1D0D91CD0(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x1D387ECA0);
}

void *sub_1D0D91E6C(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      sub_1D0D91D40(a3, a2[1]);
      return 0;
    }

    v7 = a2[1];
    (**v7)(v7, a2, a3, a4, a5);
    operator delete(v7);
    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    v9 = a2[1];
    *a3 = sub_1D0D91E6C;
    a3[1] = v9;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return &unk_1F4CE1A48;
  }

  if (a4)
  {
    v6 = sub_1D0B7CA64(a4, &unk_1F4CE1A48);
  }

  else
  {
    v6 = a5 == &std::__any_imp::__unique_typeinfo<raven::h_MapVectorPositionConstraintArgs_RavenPNT<double>>::__id;
  }

  if (v6)
  {
    return a2[1];
  }

  else
  {
    return 0;
  }
}

void sub_1D0D91F58(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x1D387ECA0);
}

void *sub_1D0D920EC(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      sub_1D0D91FC8(a3, a2[1]);
      return 0;
    }

    v7 = a2[1];
    (**v7)(v7, a2, a3, a4, a5);
    operator delete(v7);
    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    v9 = a2[1];
    *a3 = sub_1D0D920EC;
    a3[1] = v9;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return &unk_1F4CE1AA8;
  }

  if (a4)
  {
    v6 = sub_1D0B7CA64(a4, &unk_1F4CE1AA8);
  }

  else
  {
    v6 = a5 == &std::__any_imp::__unique_typeinfo<raven::h_MapVectorVelocityConstraintArgs_RavenPNT<double>>::__id;
  }

  if (v6)
  {
    return a2[1];
  }

  else
  {
    return 0;
  }
}

double sub_1D0D921D8(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 0x300000003;
  *a1 = &unk_1F4CD5DD0;
  *(a1 + 32) = a1 + 40;
  *(a1 + 8) = xmmword_1D0E76C10;
  sub_1D0BBBC00(a1, 0.0);
  v4 = *(a1 + 32);
  *v4 = *(a2 + 24);
  v5 = *(a1 + 20);
  v4[v5 + 1] = *(a2 + 32);
  result = *(a2 + 40);
  *&v4[2 * v5 + 2] = result;
  return result;
}

uint64_t sub_1D0D92264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0x100000001;
  v5 = &unk_1F4CDF158;
  *&v3 = 0x100000001;
  *(&v3 + 1) = 0x100000001;
  v6 = v3;
  v8 = &v9;
  v9 = 0;
  return sub_1D0D925B4(a1, a2, &v5, a3);
}

uint64_t sub_1D0D922C8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2 != *(a2 + 8))
  {
    __assert_rtn("operator=", "cnsubmatrix.h", 376, "this->num_rows_ == A.num_rows_");
  }

  v3 = *(result + 12);
  if (v3 != *(a2 + 12))
  {
    __assert_rtn("operator=", "cnsubmatrix.h", 377, "this->num_cols_ == A.num_cols_");
  }

  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = *(a2 + 32);
    do
    {
      if (v2)
      {
        v7 = *(result + 248);
        v8 = *(result + 288);
        v9 = *(v7 + 20) * *(*(result + 336) + 4 * v5);
        v10 = *(v7 + 32);
        v11 = *(result + 32);
        v12 = *(result + 20) * v5;
        v13 = v4;
        v14 = v2;
        do
        {
          v15 = *(v6 + 8 * v13);
          v16 = *v8++;
          *(v10 + 8 * (v16 + v9)) = v15;
          *(v11 + 8 * v12++) = v15;
          ++v13;
          --v14;
        }

        while (v14);
      }

      ++v5;
      v4 += v2;
    }

    while (v5 != v3);
  }

  return result;
}

void *sub_1D0D923B4(void *result)
{
  result[38] = &unk_1F4CDEAF8;
  result[32] = &unk_1F4CDEAF8;
  *result = &unk_1F4CD5E28;
  return result;
}

uint64_t sub_1D0D92414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x300000001;
  *a1 = &unk_1F4CDF248;
  *(a1 + 8) = xmmword_1D0E7F310;
  *(a1 + 32) = a1 + 40;
  return sub_1D0B89390(a2, a3, a1);
}

uint64_t sub_1D0D924A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x400000001;
  *a1 = &unk_1F4CE4368;
  *(a1 + 8) = xmmword_1D0E84480;
  *(a1 + 32) = a1 + 40;
  return sub_1D0B89390(a2, a3, a1);
}

uint64_t sub_1D0D9254C(uint64_t a1)
{
  *(a1 + 24) = 0x100000001;
  *a1 = &unk_1F4CDF418;
  *(a1 + 32) = a1 + 40;
  *&v2 = 0x100000001;
  *(&v2 + 1) = 0x100000001;
  *(a1 + 8) = v2;
  result = sub_1D0BBBC00(a1, 0.0);
  **(a1 + 32) = 0x3FF0000000000000;
  return result;
}

uint64_t sub_1D0D925B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 24) = 0x1A00000001;
  *(a1 + 8) = xmmword_1D0E84580;
  *(a1 + 32) = a1 + 40;
  *a1 = &unk_1F4CE1AF0;
  *(a1 + 248) = a2;
  *(a1 + 280) = 0x100000001;
  *(a1 + 256) = &unk_1F4CDF158;
  *&v7 = 0x100000001;
  *(&v7 + 1) = 0x100000001;
  *(a1 + 264) = v7;
  *(a1 + 288) = a1 + 296;
  *(a1 + 328) = 0x10000001ALL;
  *(a1 + 304) = &unk_1F4CE3E90;
  *(a1 + 312) = xmmword_1D0E843B0;
  *(a1 + 336) = a1 + 344;
  sub_1D0B9F5D4(a1 + 256, a3);
  sub_1D0B9F5D4(a1 + 304, a4);
  v8 = *(a1 + 272);
  v9 = *(a1 + 320);
  *(a1 + 8) = v8;
  *(a1 + 12) = v9;
  *(a1 + 16) = v9 * v8;
  *(a1 + 20) = v8;
  if (v9)
  {
    v10 = 0;
    v11 = 0;
    v12 = *(a2 + 20);
    v13 = *(a2 + 32);
    do
    {
      if (v8)
      {
        v14 = *(a1 + 288);
        v15 = *(*(a1 + 336) + 4 * v11) * v12;
        v16 = *(a1 + 32);
        v17 = v10;
        v18 = v8;
        do
        {
          v19 = *v14++;
          *(v16 + 8 * v17++) = *(v13 + 8 * (v19 + v15));
          --v18;
        }

        while (v18);
      }

      ++v11;
      v10 += v8;
    }

    while (v11 != v9);
  }

  return a1;
}

void sub_1D0D9272C(void *a1)
{
  a1[38] = &unk_1F4CDEAF8;
  a1[32] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

void sub_1D0D927FC(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x1D387ECA0);
}

void *sub_1D0D92970(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      sub_1D0D9286C(a3, a2[1]);
      return 0;
    }

    v7 = a2[1];
    (**v7)(v7, a2, a3, a4, a5);
    operator delete(v7);
    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    v9 = a2[1];
    *a3 = sub_1D0D92970;
    a3[1] = v9;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return &unk_1F4CE1B50;
  }

  if (a4)
  {
    v6 = sub_1D0B7CA64(a4, &unk_1F4CE1B50);
  }

  else
  {
    v6 = a5 == &std::__any_imp::__unique_typeinfo<raven::h_NonHolonomicVelocityConstraintArgs_RavenPNT<double>>::__id;
  }

  if (v6)
  {
    return a2[1];
  }

  else
  {
    return 0;
  }
}

double sub_1D0D92A5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x100000003;
  *a1 = &unk_1F4CDEB28;
  *(a1 + 8) = xmmword_1D0E7DCC0;
  *(a1 + 32) = a1 + 40;
  *&result = *&sub_1D0B88838(a2, a3, a1);
  return result;
}

uint64_t sub_1D0D92AE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x100000003;
  *a1 = &unk_1F4CDEB28;
  *(a1 + 8) = xmmword_1D0E7DCC0;
  *(a1 + 32) = a1 + 40;
  return sub_1D0B89390(a2, a3, a1);
}

double sub_1D0D92B74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x10000001ALL;
  *a1 = &unk_1F4CE3E48;
  *(a1 + 8) = xmmword_1D0E843B0;
  *(a1 + 32) = a1 + 40;
  *&result = *&sub_1D0BA5A78(a2, a3, a1);
  return result;
}

double sub_1D0D92BC4(uint64_t a1, uint64_t a2)
{
  v2 = dword_1EC5FB568;
  v3 = *algn_1EC5FB56C;
  *&result = 0x10000001ALL;
  v5 = (*algn_1EC5FB56C * dword_1EC5FB568);
  *(a1 + 24) = 0x10000001ALL;
  *a1 = &unk_1F4CE3E48;
  *(a1 + 8) = v2;
  *(a1 + 12) = v3;
  *(a1 + 16) = v5;
  *(a1 + 20) = v2;
  v6 = (a1 + 40);
  *(a1 + 32) = a1 + 40;
  if (v5)
  {
    v7 = qword_1EC5FB580;
    do
    {
      v8 = *v7++;
      result = *(a2 + 8 * v8);
      *v6++ = result;
      --v5;
    }

    while (v5);
  }

  return result;
}

double sub_1D0D92C30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x1A00000003;
  *a1 = &unk_1F4CE0B08;
  *(a1 + 8) = xmmword_1D0E84410;
  *(a1 + 32) = a1 + 40;
  *&result = *&sub_1D0B88838(a2, a3, a1);
  return result;
}

void sub_1D0D92CBC(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x1D387ECA0);
}

void *sub_1D0D92E28(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      sub_1D0D92D2C(a3, a2[1]);
      return 0;
    }

    v7 = a2[1];
    (**v7)(v7, a2, a3, a4, a5);
    operator delete(v7);
    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    v9 = a2[1];
    *a3 = sub_1D0D92E28;
    a3[1] = v9;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return &unk_1F4CE1B88;
  }

  if (a4)
  {
    v6 = sub_1D0B7CA64(a4, &unk_1F4CE1B88);
  }

  else
  {
    v6 = a5 == &std::__any_imp::__unique_typeinfo<raven::h_DevicePositionChangeArgs_RavenPNT<double>>::__id;
  }

  if (v6)
  {
    return a2[1];
  }

  else
  {
    return 0;
  }
}

void sub_1D0D92F14(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0D92F84(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0D92FF4(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x1D387ECA0);
}

void *sub_1D0D93158(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      sub_1D0D93064(a3, a2[1]);
      return 0;
    }

    v7 = a2[1];
    (**v7)(v7, a2, a3, a4, a5);
    operator delete(v7);
    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    v9 = a2[1];
    *a3 = sub_1D0D93158;
    a3[1] = v9;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return &unk_1F4CE1BE8;
  }

  if (a4)
  {
    v6 = sub_1D0B7CA64(a4, &unk_1F4CE1BE8);
  }

  else
  {
    v6 = a5 == &std::__any_imp::__unique_typeinfo<raven::h_DevicePositionArgs_RavenPNT<double>>::__id;
  }

  if (v6)
  {
    return a2[1];
  }

  else
  {
    return 0;
  }
}

void *sub_1D0D93338(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      sub_1D0D93244(a3, a2[1]);
      return 0;
    }

    v7 = a2[1];
    (**v7)(v7, a2, a3, a4, a5);
    operator delete(v7);
    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    v9 = a2[1];
    *a3 = sub_1D0D93338;
    a3[1] = v9;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return &unk_1F4CE09D8;
  }

  if (a4)
  {
    v6 = sub_1D0B7CA64(a4, &unk_1F4CE09D8);
  }

  else
  {
    v6 = a5 == &std::__any_imp::__unique_typeinfo<raven::h_UserSpeedArgs_RavenPNT<double>>::__id;
  }

  if (v6)
  {
    return a2[1];
  }

  else
  {
    return 0;
  }
}

void sub_1D0D93424(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x1D387ECA0);
}

void *sub_1D0D93588(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      sub_1D0D93494(a3, a2[1]);
      return 0;
    }

    v7 = a2[1];
    (**v7)(v7, a2, a3, a4, a5);
    operator delete(v7);
    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    v9 = a2[1];
    *a3 = sub_1D0D93588;
    a3[1] = v9;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return &unk_1F4CE1CC8;
  }

  if (a4)
  {
    v6 = sub_1D0B7CA64(a4, &unk_1F4CE1CC8);
  }

  else
  {
    v6 = a5 == &std::__any_imp::__unique_typeinfo<raven::h_DeviceUserPositionDifferenceArgs_RavenPNT<double>>::__id;
  }

  if (v6)
  {
    return a2[1];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0D93674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 12);
  if (v6 <= v7)
  {
    v8 = *(a1 + 12);
  }

  else
  {
    v8 = *(a1 + 8);
  }

  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9 && v8 == 6)
  {
    v11 = *(a2 + 8);
    v12 = *(a2 + 12);
    if (v11 <= v12)
    {
      v13 = *(a2 + 12);
    }

    else
    {
      v13 = *(a2 + 8);
    }

    if (v11)
    {
      v14 = v12 == 0;
    }

    else
    {
      v14 = 1;
    }

    if (!v14 && v13 == 6)
    {
      v20 = 0x600000006;
      v18 = &unk_1F4CDF278;
      v19 = xmmword_1D0E7F320;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v21 = &v22;
      v22 = 0x3FF0000000000000;
      *&v26 = 0x3FF0000000000000;
      v30 = 0x3FF0000000000000;
      *&v34 = 0x3FF0000000000000;
      v38 = 0x3FF0000000000000;
      v42 = 0x3FF0000000000000;
      sub_1D0D96C6C(v43, &v18);
    }
  }

  LOWORD(v18) = 12;
  LOBYTE(v17) = 4;
  cnprint::CNPrinter::Print(&v18, &v17, "f_SixStateNearlyConstantVelocity called with inadequate matrices.", a4, a5, a6);
  return 0xFFFFFFFFLL;
}

uint64_t sub_1D0D93940(void *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v52 = *a2;
  v49 = 0x100000006;
  v48 = xmmword_1D0E84530;
  v47 = &unk_1F4CE0BF8;
  v50 = &v51;
  v40 = 0x100000006;
  v6 = *(a3 + 32);
  v42 = *(v6 + 168);
  v7.i64[1] = *(&v42 + 1);
  v8 = *(v6 + 192);
  v9 = *(v6 + 208);
  v10 = v8 * *(v6 + 200);
  v43 = *(v6 + 184);
  v44 = v10;
  v11 = *(v6 + 216);
  v39 = xmmword_1D0E84530;
  v38 = &unk_1F4CE0BF8;
  v41 = &v42;
  v45 = v8 * v9;
  v46 = v8 * v11;
  v7.i64[0] = 0x600000006;
  v35 = 0x600000006;
  v33 = &unk_1F4CDF278;
  v34 = xmmword_1D0E7F320;
  v36 = &v37;
  v30 = 0x600000006;
  v28 = &unk_1F4CDF278;
  v29 = xmmword_1D0E7F320;
  v31 = &v32;
  v12 = CNTimeSpan::operator-(a1, &v52, v7, xmmword_1D0E7F320);
  v27 = v13 + v12;
  v24 = 0x100000006;
  v22 = &unk_1F4CE0BF8;
  v25 = v26;
  v23 = xmmword_1D0E84530;
  memset(v26, 0, sizeof(v26));
  if (sub_1D0BFCF2C(&v38, &v22, &v27, &v47, &v33, &v28))
  {
    return 0xFFFFFFFFLL;
  }

  v15 = v50;
  *(a4 + 8) = xmmword_1D0E84420;
  v16 = *(a4 + 32);
  *v16 = *v15;
  *(v16 + 8) = v15[1];
  *(v16 + 16) = v15[2];
  v17 = *(v15 + 3);
  v18 = *(v15 + 5);
  v19 = sqrt(COERCE_DOUBLE(*&vmulq_f64(v17, v17).f64[1]) + v17.f64[0] * v17.f64[0] + v18 * v18);
  *(v16 + 24) = v19;
  if (fabs(v19) <= 0.000000015)
  {
    v21 = *(a3 + 32);
    *(v16 + 32) = *(v21 + 200);
    *(v16 + 40) = *(v21 + 208);
    v20 = *(v21 + 216);
  }

  else
  {
    *(v16 + 32) = vdivq_f64(v17, vdupq_lane_s64(*&v19, 0));
    v20 = v18 / v19;
  }

  result = 0;
  *(v16 + 48) = v20;
  return result;
}

uint64_t sub_1D0D93BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x10000001ALL;
  *a1 = &unk_1F4CE3E48;
  *(a1 + 8) = xmmword_1D0E843B0;
  *(a1 + 32) = a1 + 40;
  return sub_1D0B89390(a2, a3, a1);
}

uint64_t sub_1D0D93C3C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v2 = *(a2 + 12);
  *(a1 + 24) = 0x30000001ALL;
  *a1 = &unk_1F4CE1DB8;
  *(a1 + 8) = v2;
  *(a1 + 12) = v3;
  *(a1 + 16) = v3 * v2;
  *(a1 + 20) = v2;
  *(a1 + 32) = a1 + 40;
  return sub_1D0BD2018(a2, a1);
}

uint64_t sub_1D0D93CC8(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 8);
  v17 = 0x100000003;
  v12 = &unk_1F4CDEAA0;
  v13 = v3;
  v14 = 1;
  v15 = v3;
  v16 = v3;
  v18 = v19;
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      v19[i] = i;
    }
  }

  v9 = 0x100000001;
  v7 = &unk_1F4CDF158;
  *&v5 = 0x100000001;
  *(&v5 + 1) = 0x100000001;
  v8 = v5;
  v10 = &v11;
  v11 = a3;
  return sub_1D0C51DC8(a1, a2, &v12, &v7);
}

uint64_t sub_1D0D93DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x100000003;
  *a1 = &unk_1F4CDEB28;
  *(a1 + 8) = xmmword_1D0E7DCC0;
  *(a1 + 32) = a1 + 40;
  return sub_1D0B89390(a2, a3, a1);
}

uint64_t sub_1D0D93E34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  v11 = 0x100000003;
  v6 = &unk_1F4CDEAA0;
  v7 = v3;
  v8 = 1;
  v9 = v3;
  v10 = v3;
  v12 = v13;
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      v13[i] = i;
    }
  }

  return sub_1D0BADC74(a1, a2, &v6, a3);
}

double sub_1D0D93EB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x1A00000003;
  *a1 = &unk_1F4CE0B08;
  *(a1 + 8) = xmmword_1D0E84410;
  *(a1 + 32) = a1 + 40;
  *&result = *&sub_1D0B88838(a2, a3, a1);
  return result;
}

double sub_1D0D93F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x1A00000003;
  *a1 = &unk_1F4CE0B08;
  *(a1 + 8) = xmmword_1D0E84410;
  *(a1 + 32) = a1 + 40;
  *&result = *&sub_1D0BA5A78(a2, a3, a1);
  return result;
}

void sub_1D0D93FF0(uint64_t a1)
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

double sub_1D0D940E8(uint64_t a1, uint64_t a2)
{
  *&result = 0x1A00000003;
  *(a1 + 24) = 0x1A00000003;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CE0B08;
  v4 = *(a2 + 8);
  v3 = *(a2 + 12);
  *(a1 + 8) = v4;
  *(a1 + 12) = v3;
  v5 = v3 * v4;
  *(a1 + 16) = v5;
  *(a1 + 20) = v4;
  v6 = (a1 + 40);
  *(a1 + 32) = a1 + 40;
  if (v4 > 3)
  {
    v9 = "this->max_num_rows_ >= A.NumRows()";
    v10 = 567;
    goto LABEL_9;
  }

  if (v3 > 0x1A)
  {
    v9 = "this->max_num_cols_ >= A.NumCols()";
    v10 = 568;
LABEL_9:
    __assert_rtn("CNMatrix", "cnmatrix.h", v10, v9);
  }

  if (v5 >= 1)
  {
    v7 = *(a2 + 32);
    do
    {
      v8 = *v7++;
      result = v8;
      *v6++ = v8;
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_1D0D9420C(uint64_t a1)
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

void sub_1D0D94304(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x1D387ECA0);
}

void *sub_1D0D94470(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      sub_1D0D94374(a3, a2[1]);
      return 0;
    }

    v7 = a2[1];
    (**v7)(v7, a2, a3, a4, a5);
    operator delete(v7);
    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    v9 = a2[1];
    *a3 = sub_1D0D94470;
    a3[1] = v9;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return &unk_1F4CE1D28;
  }

  if (a4)
  {
    v6 = sub_1D0B7CA64(a4, &unk_1F4CE1D28);
  }

  else
  {
    v6 = a5 == &std::__any_imp::__unique_typeinfo<raven::h_DeviceUserVelocityDifferenceMountedWithNHCArgs_RavenPNT<double>>::__id;
  }

  if (v6)
  {
    return a2[1];
  }

  else
  {
    return 0;
  }
}

double sub_1D0D9455C(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 0x400000004;
  *a1 = &unk_1F4CDEB70;
  *(a1 + 8) = xmmword_1D0E7DCD0;
  *(a1 + 32) = a1 + 40;
  return sub_1D0BED87C(a2, 0, a1);
}

uint64_t sub_1D0D945A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x300000003;
  *a1 = &unk_1F4CD5DD0;
  *(a1 + 8) = xmmword_1D0E76C10;
  *(a1 + 32) = a1 + 40;
  return sub_1D0B8876C(a2, a3, a1);
}

uint64_t sub_1D0D9462C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x200000003;
  *a1 = &unk_1F4CE1E28;
  *(a1 + 8) = xmmword_1D0E84740;
  *(a1 + 32) = a1 + 40;
  return sub_1D0B8876C(a2, a3, a1);
}

uint64_t sub_1D0D946D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = 0x300000003;
  *a3 = &unk_1F4CD5DD0;
  *(a3 + 8) = xmmword_1D0E76C10;
  *(a3 + 32) = a3 + 40;
  return sub_1D0B89390(a1, a2, a3);
}

int64x2_t sub_1D0D947B8(void *a1)
{
  v1 = sub_1D0BA002C(a1, 10);
  *(v1 + 9) = 0u;
  *(v1 + 7) = 0u;
  *v1 = &unk_1F4CE0960;
  v1[13] = 0;
  v1[14] = 0;
  v1[11] = 0;
  v1[12] = &unk_1F4CEF658;
  result = vdupq_n_s64(0x7FF8000000000000uLL);
  *(v1 + 15) = result;
  v1[17] = 0x7FF8000000000000;
  return result;
}

void *sub_1D0D94958(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      sub_1D0D94830(a3, a2[1]);
      return 0;
    }

    v7 = a2[1];
    (**v7)(v7, a2, a3, a4, a5);
    operator delete(v7);
    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    v9 = a2[1];
    *a3 = sub_1D0D94958;
    a3[1] = v9;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return &unk_1F4CE0978;
  }

  if (a4)
  {
    v6 = sub_1D0B7CA64(a4, &unk_1F4CE0978);
  }

  else
  {
    v6 = a5 == &std::__any_imp::__unique_typeinfo<raven::h_DeviceUserVelocityDifferenceArgs_RavenPNT<double>>::__id;
  }

  if (v6)
  {
    return a2[1];
  }

  else
  {
    return 0;
  }
}

__n128 sub_1D0D94A44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D0D94C38(a1, 1, a2, a3);
  if (*(a1 + 8) == 1 || *(a1 + 12) == 1)
  {
    v8 = *(a2 + 16);
    if (v8 >= 2)
    {
      v9 = *(a2 + 32);
      v10 = *(a3 + 32);
      for (i = 1; i < v8; ++i)
      {
        v12 = v9[i];
        if (v12 < *v9)
        {
          *v9 = v12;
          *v10 = v10[i];
          v8 = *(a2 + 16);
        }
      }
    }

    result.n128_u64[0] = 0x100000001;
    result.n128_u64[1] = 0x100000001;
    *(a2 + 8) = result;
    *(a3 + 8) = result;
  }

  return result;
}

void sub_1D0D94B40(uint64_t a1)
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

uint64_t sub_1D0D94C38(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 1)
  {
    v4 = *(result + 12);
    *(a3 + 8) = 1;
    *(a3 + 12) = v4;
    *(a3 + 16) = v4;
    *(a3 + 20) = 1;
    *(a4 + 8) = 1;
    *(a4 + 12) = v4;
    *(a4 + 16) = v4;
    *(a4 + 20) = 1;
    if (v4)
    {
      v5 = 0;
      v6 = *(result + 32);
      v7 = *(a3 + 32);
      v8 = *(a4 + 32);
      do
      {
        v9 = *(result + 8);
        v10 = *(v6 + 4 * (v9 * v5));
        if (v9 < 2)
        {
          v11 = 0;
        }

        else
        {
          v11 = 0;
          for (i = 1; i != v9; ++i)
          {
            if (*(v6 + 4 * (v9 * v5 + i)) < v10)
            {
              v11 = i;
              v10 = *(v6 + 4 * (v9 * v5 + i));
            }
          }
        }

        *(v7 + 4 * v5) = v10;
        *(v8 + 4 * v5++) = v11;
      }

      while (v5 < *(result + 12));
    }
  }

  else
  {
    v13 = *(result + 8);
    *(a3 + 8) = v13;
    *(a3 + 12) = 1;
    *(a3 + 16) = v13;
    *(a3 + 20) = v13;
    *(a4 + 8) = v13;
    *(a4 + 12) = 1;
    *(a4 + 16) = v13;
    *(a4 + 20) = v13;
    if (v13)
    {
      v14 = 0;
      v15 = *(result + 32);
      v16 = *(a3 + 32);
      v17 = *(a4 + 32);
      do
      {
        *(v16 + 4 * v14) = *(v15 + 4 * v14);
        *(v17 + 4 * v14++) = 0;
      }

      while (v14 < *(result + 8));
    }

    v18 = *(result + 12);
    if (v18 >= 2)
    {
      v19 = *(result + 32);
      v20 = *(a3 + 32);
      v21 = *(result + 8);
      v22 = 1;
      v23 = v21;
      do
      {
        if (v23)
        {
          v24 = 0;
          v25 = *(a4 + 32);
          v26 = v23 * v22;
          do
          {
            v27 = *(v19 + 4 * (v26 + v24));
            if (v27 < *(v20 + 4 * v24))
            {
              *(v20 + 4 * v24) = v27;
              *(v25 + 4 * v24) = v22;
              v21 = *(result + 8);
            }

            ++v24;
          }

          while (v24 < v21);
          v18 = *(result + 12);
          v23 = v21;
        }

        ++v22;
      }

      while (v22 < v18);
    }
  }

  return result;
}

__n128 sub_1D0D94D8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D0D94E2C(a1, 1, a2, a3);
  if (*(a1 + 8) == 1 || *(a1 + 12) == 1)
  {
    v8 = *(a2 + 16);
    if (v8 >= 2)
    {
      v9 = *(a2 + 32);
      v10 = *(a3 + 32);
      for (i = 1; i < v8; ++i)
      {
        v12 = v9[i];
        if (v12 > *v9)
        {
          *v9 = v12;
          *v10 = v10[i];
          v8 = *(a2 + 16);
        }
      }
    }

    result.n128_u64[0] = 0x100000001;
    result.n128_u64[1] = 0x100000001;
    *(a2 + 8) = result;
    *(a3 + 8) = result;
  }

  return result;
}

uint64_t sub_1D0D94E2C(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 1)
  {
    v4 = *(result + 12);
    *(a3 + 8) = 1;
    *(a3 + 12) = v4;
    *(a3 + 16) = v4;
    *(a3 + 20) = 1;
    *(a4 + 8) = 1;
    *(a4 + 12) = v4;
    *(a4 + 16) = v4;
    *(a4 + 20) = 1;
    if (v4)
    {
      v5 = 0;
      v6 = *(result + 32);
      v7 = *(a3 + 32);
      v8 = *(a4 + 32);
      do
      {
        v9 = *(result + 8);
        v10 = *(v6 + 4 * (v9 * v5));
        if (v9 < 2)
        {
          v11 = 0;
        }

        else
        {
          v11 = 0;
          for (i = 1; i != v9; ++i)
          {
            if (*(v6 + 4 * (v9 * v5 + i)) > v10)
            {
              v11 = i;
              v10 = *(v6 + 4 * (v9 * v5 + i));
            }
          }
        }

        *(v7 + 4 * v5) = v10;
        *(v8 + 4 * v5++) = v11;
      }

      while (v5 < *(result + 12));
    }
  }

  else
  {
    v13 = *(result + 8);
    *(a3 + 8) = v13;
    *(a3 + 12) = 1;
    *(a3 + 16) = v13;
    *(a3 + 20) = v13;
    *(a4 + 8) = v13;
    *(a4 + 12) = 1;
    *(a4 + 16) = v13;
    *(a4 + 20) = v13;
    if (v13)
    {
      v14 = 0;
      v15 = *(result + 32);
      v16 = *(a3 + 32);
      v17 = *(a4 + 32);
      do
      {
        *(v16 + 4 * v14) = *(v15 + 4 * v14);
        *(v17 + 4 * v14++) = 0;
      }

      while (v14 < *(result + 8));
    }

    v18 = *(result + 12);
    if (v18 >= 2)
    {
      v19 = *(result + 32);
      v20 = *(a3 + 32);
      v21 = *(result + 8);
      v22 = 1;
      v23 = v21;
      do
      {
        if (v23)
        {
          v24 = 0;
          v25 = *(a4 + 32);
          v26 = v23 * v22;
          do
          {
            v27 = *(v19 + 4 * (v26 + v24));
            if (v27 > *(v20 + 4 * v24))
            {
              *(v20 + 4 * v24) = v27;
              *(v25 + 4 * v24) = v22;
              v21 = *(result + 8);
            }

            ++v24;
          }

          while (v24 < v21);
          v18 = *(result + 12);
          v23 = v21;
        }

        ++v22;
      }

      while (v22 < v18);
    }
  }

  return result;
}

uint64_t sub_1D0D94F80(uint64_t result, unsigned int a2, int *a3)
{
  if (*(result + 16) != a2)
  {
    __assert_rtn("operator=", "cnsubvector.h", 347, "this->num_elements_ == A.num_elements_");
  }

  if (a2 >= 1)
  {
    v3 = *(result + 184);
    v4 = *(*(result + 144) + 32);
    v5 = *(result + 32);
    v6 = a2;
    do
    {
      v8 = *a3++;
      v7 = v8;
      v9 = *v3++;
      *(v4 + 4 * v9) = v7;
      *v5++ = v7;
      --v6;
    }

    while (v6);
  }

  return result;
}

void *sub_1D0D94FF4(void *result)
{
  result[19] = &unk_1F4CDEAF8;
  *result = &unk_1F4CDEAF8;
  return result;
}

void sub_1D0D95034(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v87 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 1108))
  {
    sub_1D0B894B0(a1 + 552, a1 + 8);
    sub_1D0B894B0(a1 + 800, a1 + 256);
    sub_1D0B894B0(a1 + 848, a1 + 304);
  }

  v6 = *(a1 + 560);
  v7 = *(a1 + 564);
  if (v6 <= v7)
  {
    v8 = *(a1 + 564);
  }

  else
  {
    v8 = *(a1 + 560);
  }

  if (v7)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = v8;
  }

  if (v10 != a2)
  {
    LOWORD(v77) = 2;
    LOBYTE(v68) = 4;
    v11 = cnprint::CNLogFormatter::FormatGeneral((a1 + 1272), "ReorderStates(): Length(order) != Length(x).");
    if (*(a1 + 1295) >= 0)
    {
      v12 = v11;
    }

    else
    {
      v12 = *(a1 + 1272);
    }

    cnprint::CNPrinter::Print(&v77, &v68, "%s", v12);
  }

  v84 = 0x10000001ALL;
  v85 = 0;
  v82 = 0;
  v83 = 0;
  v81 = &unk_1F4CE1F00;
  if ((a2 & 0x80000000) != 0)
  {
    __assert_rtn("CNMatrix", "cnmatrix.h", 419, "nr >= 0");
  }

  v82 = a2 | 0x100000000;
  LODWORD(v83) = a2;
  HIDWORD(v83) = a2;
  v13 = v86;
  v85 = v86;
  if (a2 > 3)
  {
    bzero(v86, a2 - 1);
    v86[a2 - 1] = 0;
    v66 = a2;
    v14 = a2;
  }

  else
  {
    if (!a2)
    {
      v17 = 0;
LABEL_30:
      sub_1D0B894B0(a1 + 8, a1 + 552);
      sub_1D0B894B0(a1 + 256, a1 + 800);
      sub_1D0B894B0(a1 + 304, a1 + 848);
      if ((v17 & 1) == 0)
      {
        sub_1D0B894B0(a1 + 256, a1 + 800);
LABEL_53:
        sub_1D0D87FCC(v67);
      }

      v20 = 0;
      v21 = a2;
      v22 = "this->num_rows_ == A.num_rows_";
      while (1)
      {
        v23 = *(*(a3 + 32) + 4 * v20);
        *(*(a1 + 584) + 8 * v20) = *(*(a1 + 40) + 8 * v23);
        sub_1D0D9581C(&v77, a1 + 256, v23);
        sub_1D0D9581C(&v68, a1 + 800, v20);
        v24 = v69;
        if (v69 != v78)
        {
          break;
        }

        v25 = v70;
        if (v70 != v79)
        {
          v64 = 437;
          v22 = "this->num_cols_ == A.num_cols_";
LABEL_57:
          __assert_rtn("operator=", "cnsubmatrix.h", v64, v22);
        }

        if (v70)
        {
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = v80;
          v30 = v74;
          v31 = v75;
          v32 = v71;
          v33 = v73;
          v34 = v72;
          do
          {
            if (v24)
            {
              v35 = *(v33 + 20) * *(v31 + 4 * v28);
              v36 = *(v33 + 32);
              v37 = v26;
              v38 = v30;
              v39 = v27;
              v40 = v24;
              do
              {
                v41 = *(v29 + 8 * v37);
                v42 = *v38++;
                *(v36 + 8 * (v42 + v35)) = v41;
                *(v34 + 8 * v39++) = v41;
                ++v37;
                --v40;
              }

              while (v40);
            }

            ++v28;
            v27 += v32;
            v26 += v24;
          }

          while (v28 != v25);
        }

        *(*(a1 + 880) + 8 * v20++) = *(*(a1 + 336) + 8 * v23);
        if (v20 == v21)
        {
          sub_1D0B894B0(a1 + 256, a1 + 800);
          v43 = 0;
          v44 = "this->num_rows_ == A.num_rows_";
          while (1)
          {
            sub_1D0D958DC(&v77, a1 + 256, *(*(a3 + 32) + 4 * v43));
            sub_1D0D958DC(&v68, a1 + 800, v43);
            v45 = v69;
            if (v69 != v78)
            {
              break;
            }

            v46 = v70;
            if (v70 != v79)
            {
              v65 = 437;
              v44 = "this->num_cols_ == A.num_cols_";
LABEL_60:
              __assert_rtn("operator=", "cnsubmatrix.h", v65, v44);
            }

            if (v70)
            {
              v47 = 0;
              v48 = 0;
              v49 = 0;
              v50 = v80;
              v51 = v74;
              v52 = v76;
              v53 = v71;
              v54 = v73;
              v55 = v72;
              do
              {
                if (v45)
                {
                  v56 = *(v54 + 20) * *(v52 + 4 * v49);
                  v57 = *(v54 + 32);
                  v58 = v47;
                  v59 = v51;
                  v60 = v48;
                  v61 = v45;
                  do
                  {
                    v62 = *(v50 + 8 * v58);
                    v63 = *v59++;
                    *(v57 + 8 * (v63 + v56)) = v62;
                    *(v55 + 8 * v60++) = v62;
                    ++v58;
                    --v61;
                  }

                  while (v61);
                }

                ++v49;
                v48 += v53;
                v47 += v45;
              }

              while (v49 != v46);
            }

            if (++v43 == v21)
            {
              goto LABEL_53;
            }
          }

          v65 = 436;
          goto LABEL_60;
        }
      }

      v64 = 436;
      goto LABEL_57;
    }

    v66 = a2;
    v14 = a2;
    bzero(v86, a2);
  }

  v15 = 0;
  v16 = *(a3 + 32);
  v17 = 1;
  do
  {
    v18 = *(v16 + 4 * v15);
    if (v13[v18] == 1)
    {
      LOWORD(v77) = 2;
      LOBYTE(v68) = 4;
      cnprint::CNLogFormatter::FormatGeneral((a1 + 1272), "ReorderStates(): order must reference each state once and only once.");
      if (*(a1 + 1295) >= 0)
      {
        v19 = (a1 + 1272);
      }

      else
      {
        v19 = *(a1 + 1272);
      }

      cnprint::CNPrinter::Print(&v77, &v68, "%s", v19);
      v16 = *(a3 + 32);
      v13 = v85;
      v18 = *(v16 + 4 * v15);
    }

    v13[v18] = 1;
    ++v15;
  }

  while (v14 != v15);
  a2 = v66;
  goto LABEL_30;
}

void sub_1D0D95618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1D0D857FC((v7 - 232));
  sub_1D0D857FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0D95644(uint64_t result, int a2)
{
  *(result + 24) = 0x10000001ALL;
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = &unk_1F4CE3E90;
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

uint64_t sub_1D0D956F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x10000001ALL;
  *(a1 + 8) = xmmword_1D0E843B0;
  *(a1 + 32) = a1 + 40;
  *a1 = &unk_1F4CE1EB8;
  *(a1 + 144) = a2;
  *(a1 + 176) = 0x10000001ALL;
  *(a1 + 152) = &unk_1F4CE3E90;
  *(a1 + 160) = xmmword_1D0E843B0;
  *(a1 + 184) = a1 + 192;
  sub_1D0B9F5D4(a1 + 152, a3);
  v6 = *(a1 + 160);
  v5 = *(a1 + 164);
  *(a1 + 8) = v6;
  *(a1 + 12) = v5;
  v7 = (v5 * v6);
  *(a1 + 16) = v7;
  *(a1 + 20) = v6;
  if (v7 >= 1)
  {
    v8 = *(a1 + 184);
    v9 = *(a2 + 32);
    v10 = *(a1 + 32);
    do
    {
      v11 = *v8++;
      *v10++ = *(v9 + 4 * v11);
      --v7;
    }

    while (v7);
  }

  return a1;
}

void sub_1D0D957CC(void *a1)
{
  a1[19] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CDEAF8;
  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0D9581C(uint64_t a1, uint64_t a2, int a3)
{
  v17 = 0x100000001;
  v15 = &unk_1F4CDF158;
  *&v3 = 0x100000001;
  *(&v3 + 1) = 0x100000001;
  v16 = v3;
  v18 = &v19;
  v19 = a3;
  v4 = *(a2 + 12);
  v12 = 0x10000001ALL;
  v7 = &unk_1F4CE3E90;
  v8 = v4;
  v9 = 1;
  v10 = v4;
  v11 = v4;
  v13 = v14;
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v14[i] = i;
    }
  }

  return sub_1D0D925B4(a1, a2, &v15, &v7);
}

uint64_t sub_1D0D958DC(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(a2 + 8);
  v30 = 0x10000001ALL;
  v25 = &unk_1F4CE3E90;
  v26 = v5;
  v27 = 1;
  v28 = v5;
  v29 = v5;
  v31 = v32;
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v32[i] = i;
    }
  }

  v22 = 0x100000001;
  v20 = &unk_1F4CDF158;
  *&v7 = 0x100000001;
  *(&v7 + 1) = 0x100000001;
  v21 = v7;
  v23 = &v24;
  v24 = a3;
  *(a1 + 24) = 0x10000001ALL;
  *(a1 + 8) = xmmword_1D0E843B0;
  *(a1 + 32) = a1 + 40;
  *a1 = &unk_1F4CE1F88;
  *(a1 + 280) = 0x10000001ALL;
  *(a1 + 248) = a2;
  *(a1 + 256) = &unk_1F4CE3E90;
  *(a1 + 264) = xmmword_1D0E843B0;
  *(a1 + 288) = a1 + 296;
  *(a1 + 424) = 0x100000001;
  *(a1 + 400) = &unk_1F4CDF158;
  *(a1 + 408) = v7;
  *(a1 + 432) = a1 + 440;
  sub_1D0B9F5D4(a1 + 256, &v25);
  result = sub_1D0B9F5D4(a1 + 400, &v20);
  v9 = *(a1 + 272);
  v10 = *(a1 + 416);
  *(a1 + 8) = v9;
  *(a1 + 12) = v10;
  *(a1 + 16) = v10 * v9;
  *(a1 + 20) = v9;
  if (v10)
  {
    v11 = 0;
    v12 = 0;
    v13 = *(a2 + 20);
    v14 = *(a2 + 32);
    do
    {
      if (v9)
      {
        v15 = *(a1 + 288);
        v16 = *(*(a1 + 432) + 4 * v12) * v13;
        v17 = *(a1 + 32);
        v18 = v11;
        result = v9;
        do
        {
          v19 = *v15++;
          *(v17 + 8 * v18++) = *(v14 + 8 * (v19 + v16));
          --result;
        }

        while (result);
      }

      ++v12;
      v11 += v9;
    }

    while (v12 != v10);
  }

  return result;
}

void *sub_1D0D95AC8(void *result)
{
  result[50] = &unk_1F4CDEAF8;
  result[32] = &unk_1F4CDEAF8;
  *result = &unk_1F4CD5E28;
  return result;
}

void sub_1D0D95B84(uint64_t a1)
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
            v10 = *(v7 + v8);
            v11 = v8;
            do
            {
              v11 = (v11 * (v3 + v1 - v5)) % v6;
              v12 = *(v7 + v11);
              *(v7 + v11) = v10 & 1;
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

void sub_1D0D95C88(void *a1)
{
  a1[50] = &unk_1F4CDEAF8;
  a1[32] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0D95CF8(uint64_t result, uint64_t a2)
{
  *(result + 24) = 0x10000001ALL;
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = &unk_1F4CE3E90;
  if (result == a2)
  {
    v15 = "this != &(A)";
    v16 = 603;
    goto LABEL_16;
  }

  v3 = *(a2 + 8);
  v2 = *(a2 + 12);
  *(result + 8) = v3;
  *(result + 12) = v2;
  v4 = v2 * v3;
  *(result + 16) = v4;
  *(result + 20) = v3;
  v5 = (result + 40);
  *(result + 32) = result + 40;
  if (v3 > 0x1A)
  {
    v15 = "this->max_num_rows_ >= A.num_rows_";
    v16 = 616;
    goto LABEL_16;
  }

  if (v2 >= 2)
  {
    v15 = "this->max_num_cols_ >= A.num_cols_";
    v16 = 617;
LABEL_16:
    __assert_rtn("CNMatrix", "cnmatrix.h", v16, v15);
  }

  v6 = *(a2 + 16);
  if (v6 > 3)
  {
    v9 = (v6 - 1);
    v10 = *(a2 + 32);
    v11 = v10;
    v12 = (result + 40);
    v13 = v9;
    do
    {
      v14 = *v11++;
      *v12++ = v14;
      --v13;
    }

    while (v13);
    v5[v9] = v10[v9];
  }

  else if (v4 >= 1)
  {
    v7 = *(a2 + 32);
    do
    {
      v8 = *v7++;
      *v5++ = v8;
      --v4;
    }

    while (v4);
  }

  return result;
}

void sub_1D0D95E74(uint64_t a1)
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

uint64_t sub_1D0D95F6C(uint64_t result, uint64_t a2)
{
  *(result + 24) = 0x10000001ALL;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = &unk_1F4CE3E90;
  v3 = *(a2 + 8);
  v2 = *(a2 + 12);
  *(result + 8) = v3;
  *(result + 12) = v2;
  v4 = v2 * v3;
  *(result + 16) = v4;
  *(result + 20) = v3;
  v5 = (result + 40);
  *(result + 32) = result + 40;
  if (v3 > 0x1A)
  {
    v8 = "this->max_num_rows_ >= A.NumRows()";
    v9 = 567;
    goto LABEL_9;
  }

  if (v2 > 1)
  {
    v8 = "this->max_num_cols_ >= A.NumCols()";
    v9 = 568;
LABEL_9:
    __assert_rtn("CNMatrix", "cnmatrix.h", v9, v8);
  }

  if (v4 >= 1)
  {
    v6 = *(a2 + 32);
    do
    {
      v7 = *v6++;
      *v5++ = v7;
      --v4;
    }

    while (v4);
  }

  return result;
}

void sub_1D0D96090(uint64_t a1)
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

void sub_1D0D961EC(uint64_t a1)
{
  *(a1 + 24) = 0x100002324;
  *a1 = &unk_1F4CE20A8;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 8) = xmmword_1D0E84750;
  sub_1D0D96408(a1);
}

void sub_1D0D96254(_Unwind_Exception *exception_object)
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

void sub_1D0D9629C(void *a1)
{
  sub_1D0D96490(a1);

  JUMPOUT(0x1D387ECA0);
}

void *sub_1D0D96490(void *a1)
{
  *a1 = &unk_1F4CE20A8;
  v2 = a1[5];
  a1[5] = 0;
  if (v2)
  {
    MEMORY[0x1D387EC80](v2, 0x1000C8000313F17);
  }

  *a1 = &unk_1F4CD5E28;
  return a1;
}

void sub_1D0D96568(uint64_t a1)
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

__n128 sub_1D0D96660(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = 0x10000001ALL;
  *(a1 + 24) = 0x10000001ALL;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CE3E48;
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
  if (v4 > 0x1A)
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

void sub_1D0D967E4(uint64_t a1)
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

void sub_1D0D969A4(uint64_t a1)
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

double sub_1D0D96A9C(uint64_t a1, uint64_t a2)
{
  *&result = 0x10000001CLL;
  *(a1 + 24) = 0x10000001CLL;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CE0A20;
  v4 = *(a2 + 8);
  v3 = *(a2 + 12);
  *(a1 + 8) = v4;
  *(a1 + 12) = v3;
  v5 = v3 * v4;
  *(a1 + 16) = v5;
  *(a1 + 20) = v4;
  v6 = (a1 + 40);
  *(a1 + 32) = a1 + 40;
  if (v4 > 0x1C)
  {
    v9 = "this->max_num_rows_ >= A.NumRows()";
    v10 = 567;
    goto LABEL_9;
  }

  if (v3 > 1)
  {
    v9 = "this->max_num_cols_ >= A.NumCols()";
    v10 = 568;
LABEL_9:
    __assert_rtn("CNMatrix", "cnmatrix.h", v10, v9);
  }

  if (v5 >= 1)
  {
    v7 = *(a2 + 32);
    do
    {
      v8 = *v7++;
      result = v8;
      *v6++ = v8;
      --v5;
    }

    while (v5);
  }

  return result;
}

double sub_1D0D96B84(uint64_t a1, uint64_t a2)
{
  *&result = 0x10000001ALL;
  *(a1 + 24) = 0x10000001ALL;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CE3E48;
  v4 = *(a2 + 8);
  v3 = *(a2 + 12);
  *(a1 + 8) = v4;
  *(a1 + 12) = v3;
  v5 = v3 * v4;
  *(a1 + 16) = v5;
  *(a1 + 20) = v4;
  v6 = (a1 + 40);
  *(a1 + 32) = a1 + 40;
  if (v4 > 0x1A)
  {
    v9 = "this->max_num_rows_ >= A.NumRows()";
    v10 = 567;
    goto LABEL_9;
  }

  if (v3 > 1)
  {
    v9 = "this->max_num_cols_ >= A.NumCols()";
    v10 = 568;
LABEL_9:
    __assert_rtn("CNMatrix", "cnmatrix.h", v10, v9);
  }

  if (v5 >= 1)
  {
    v7 = *(a2 + 32);
    do
    {
      v8 = *v7++;
      result = v8;
      *v6++ = v8;
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_1D0D96C6C(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 0x1A0000001ALL;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CE3CC8;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v2 = *(a2 + 8);
  v3 = *(a2 + 12);
  *(a1 + 8) = v2;
  *(a1 + 12) = v3;
  *(a1 + 16) = v3 * v2;
  *(a1 + 20) = v2;
  sub_1D0D858E0(a1);
}

void sub_1D0D96D64(_Unwind_Exception *exception_object)
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

void sub_1D0D96DAC(void *a1)
{
  a1[64] = &unk_1F4CDEAF8;
  a1[58] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

void sub_1D0D96E28(uint64_t a1)
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

void sub_1D0D96F50(void *a1)
{
  a1[76] = &unk_1F4CDEAF8;
  a1[58] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

void sub_1D0D96FCC(uint64_t a1)
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

void sub_1D0D97130(uint64_t a1)
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

void sub_1D0D97264(uint64_t a1)
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

void sub_1D0D97398(uint64_t a1)
{
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

void sub_1D0D97464(uint64_t a1)
{
  *(a1 + 24) = 0x1700000017;
  *a1 = &unk_1F4CE3D78;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 8) = xmmword_1D0E84760;
  sub_1D0D85708(a1);
}

void sub_1D0D974C8(_Unwind_Exception *exception_object)
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

uint64_t sub_1D0D97510(uint64_t a1)
{
  *(a1 + 24) = 0x200000002;
  *a1 = &unk_1F4CE0268;
  *(a1 + 32) = a1 + 40;
  *(a1 + 8) = xmmword_1D0E83F70;
  return sub_1D0BBBC00(a1, 0.0);
}

uint64_t sub_1D0D97550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x200000002;
  *a1 = &unk_1F4CE0268;
  *(a1 + 8) = xmmword_1D0E83F70;
  *(a1 + 32) = a1 + 40;
  return sub_1D0B89390(a2, a3, a1);
}

void sub_1D0D97618(uint64_t a1, uint64_t a2)
{
  v9 = 0x100000006;
  v7 = &unk_1F4CE0BF8;
  v8 = xmmword_1D0E84530;
  v10 = &v11;
  v4 = 0x600000006;
  v2 = &unk_1F4CDF278;
  v3 = xmmword_1D0E7F320;
  v5 = &v6;
  *(a1 + 24) = 0x600000006;
  *a1 = &unk_1F4CDF278;
  *(a1 + 8) = xmmword_1D0E7F320;
  *(a1 + 32) = a1 + 40;
  sub_1D0B9FACC(a2, &v7, &v2, a1);
}

void sub_1D0D97720(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 0x600000006;
  *a1 = &unk_1F4CDF278;
  *(a1 + 8) = xmmword_1D0E7F320;
  *(a1 + 32) = a1 + 40;
  v9 = 0x100000006;
  v7 = &unk_1F4CE1400;
  v8 = xmmword_1D0E84530;
  v10 = &v11;
  v4 = 0x100000018;
  v2 = &unk_1F4CE2408;
  v3 = xmmword_1D0E84770;
  v5 = &v6;
  sub_1D0B9F868(a2, &v7, &v2, a1);
}

void sub_1D0D97838(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 0x600000006;
  *a1 = &unk_1F4CDF278;
  *(a1 + 8) = xmmword_1D0E7F320;
  *(a1 + 32) = a1 + 40;
  v2 = 0;
  sub_1D0B9F748(a2, a1, &v2);
}

void sub_1D0D978CC(uint64_t a1, int a2, int a3)
{
  *(a1 + 24) = 0x1700000017;
  *a1 = &unk_1F4CE3D78;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  *(a1 + 16) = a3 * a2;
  *(a1 + 20) = a2;
  sub_1D0D85708(a1);
}

void sub_1D0D97930(_Unwind_Exception *exception_object)
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

void sub_1D0D97A60(uint64_t a1)
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

void sub_1D0D97B94(uint64_t a1)
{
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
        v7 = 1;
        do
        {
          v8 = &v13[v7];
          if ((v13[v7] & 1) == 0)
          {
            v9 = *(*(a1 + 32) + 8 * v7);
            v10 = v7;
            do
            {
              v10 = (v10 * (v3 + v1 - v5)) % v6;
              v11 = *(a1 + 32);
              v12 = *(v11 + 8 * v10);
              *(v11 + 8 * v10) = v9;
              *v8 = 1;
              v8 = &v13[v10];
              v9 = v12;
            }

            while (!*v8);
          }

          ++v7;
        }

        while (v7 != v6);
      }
    }
  }
}

uint64_t sub_1D0D97C6C(uint64_t a1)
{
  *(a1 + 24) = 0x100000012;
  *a1 = &unk_1F4CE2520;
  *(a1 + 32) = a1 + 40;
  *(a1 + 8) = xmmword_1D0E84660;
  return sub_1D0BBBC00(a1, 0.0);
}

uint64_t sub_1D0D97CD0(uint64_t a1)
{
  *(a1 + 24) = 0x1200000013;
  *a1 = &unk_1F4CE2568;
  *(a1 + 32) = a1 + 40;
  *(a1 + 8) = xmmword_1D0E84780;
  return sub_1D0BBBC00(a1, 0.0);
}

uint64_t sub_1D0D97D14(uint64_t a1)
{
  *(a1 + 24) = 0x1300000012;
  *a1 = &unk_1F4CE25B0;
  *(a1 + 32) = a1 + 40;
  *(a1 + 8) = xmmword_1D0E84790;
  return sub_1D0BBBC00(a1, 0.0);
}

uint64_t sub_1D0D97D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x1200000012;
  *a1 = &unk_1F4CE25F8;
  *(a1 + 8) = xmmword_1D0E84680;
  *(a1 + 32) = a1 + 40;
  return sub_1D0B89390(a2, a3, a1);
}

uint64_t sub_1D0D97DE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x1300000012;
  *a1 = &unk_1F4CE25B0;
  *(a1 + 8) = xmmword_1D0E84790;
  *(a1 + 32) = a1 + 40;
  return sub_1D0B89390(a2, a3, a1);
}

uint64_t sub_1D0D97E8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0xF00000012;
  *a1 = &unk_1F4CE2640;
  *(a1 + 8) = xmmword_1D0E84670;
  *(a1 + 32) = a1 + 40;
  return sub_1D0B89390(a2, a3, a1);
}

double sub_1D0D97F18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x100000012;
  *a1 = &unk_1F4CE2520;
  *(a1 + 8) = xmmword_1D0E84660;
  *(a1 + 32) = a1 + 40;
  *&result = *&sub_1D0B88838(a2, a3, a1);
  return result;
}

uint64_t sub_1D0D97FA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x100000012;
  *a1 = &unk_1F4CE2520;
  *(a1 + 8) = xmmword_1D0E84660;
  *(a1 + 32) = a1 + 40;
  return sub_1D0B89390(a2, a3, a1);
}

uint64_t sub_1D0D98030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x100000012;
  *a1 = &unk_1F4CE2520;
  *(a1 + 8) = xmmword_1D0E84660;
  *(a1 + 32) = a1 + 40;
  return sub_1D0B89390(a2, a3, a1);
}

void sub_1D0D98158(uint64_t a1)
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

void sub_1D0D9828C(uint64_t a1)
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

void sub_1D0D983C8(uint64_t a1)
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

void sub_1D0D98504(uint64_t a1)
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

void sub_1D0D98640(uint64_t a1)
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

uint64_t sub_1D0D98740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x100000013;
  *(a1 + 8) = xmmword_1D0E844F0;
  *(a1 + 32) = a1 + 40;
  *a1 = &unk_1F4CE2688;
  *(a1 + 192) = a2;
  *(a1 + 224) = 0x100000013;
  *(a1 + 200) = &unk_1F4CE2378;
  *(a1 + 208) = xmmword_1D0E844F0;
  *(a1 + 232) = a1 + 240;
  sub_1D0B9F5D4(a1 + 200, a3);
  v6 = *(a1 + 208);
  v5 = *(a1 + 212);
  *(a1 + 8) = v6;
  *(a1 + 12) = v5;
  v7 = (v5 * v6);
  *(a1 + 16) = v7;
  *(a1 + 20) = v6;
  if (v7 >= 1)
  {
    v8 = *(a1 + 232);
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

void sub_1D0D98818(void *a1)
{
  a1[25] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

void sub_1D0D988A4(uint64_t a1)
{
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
        v7 = 1;
        do
        {
          v8 = &v13[v7];
          if ((v13[v7] & 1) == 0)
          {
            v9 = *(*(a1 + 32) + 8 * v7);
            v10 = v7;
            do
            {
              v10 = (v10 * (v3 + v1 - v5)) % v6;
              v11 = *(a1 + 32);
              v12 = *(v11 + 8 * v10);
              *(v11 + 8 * v10) = v9;
              *v8 = 1;
              v8 = &v13[v10];
              v9 = v12;
            }

            while (!*v8);
          }

          ++v7;
        }

        while (v7 != v6);
      }
    }
  }
}

void sub_1D0D989B0(uint64_t a1)
{
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
        v7 = 1;
        do
        {
          v8 = &v13[v7];
          if ((v13[v7] & 1) == 0)
          {
            v9 = *(*(a1 + 32) + 8 * v7);
            v10 = v7;
            do
            {
              v10 = (v10 * (v3 + v1 - v5)) % v6;
              v11 = *(a1 + 32);
              v12 = *(v11 + 8 * v10);
              *(v11 + 8 * v10) = v9;
              *v8 = 1;
              v8 = &v13[v10];
              v9 = v12;
            }

            while (!*v8);
          }

          ++v7;
        }

        while (v7 != v6);
      }
    }
  }
}

void sub_1D0D98AA8(uint64_t a1, int a2, int a3)
{
  *(a1 + 24) = 0x1A0000001ALL;
  *a1 = &unk_1F4CE3CC8;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  *(a1 + 16) = a3 * a2;
  *(a1 + 20) = a2;
  sub_1D0D858E0(a1);
}

void sub_1D0D98B0C(_Unwind_Exception *exception_object)
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

void sub_1D0D98B90(uint64_t a1)
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

uint64_t sub_1D0D98C90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x100000012;
  *a1 = &unk_1F4CE2520;
  *(a1 + 8) = xmmword_1D0E84660;
  *(a1 + 32) = a1 + 40;
  return sub_1D0B89390(a2, a3, a1);
}

__n128 sub_1D0D98D1C(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = 0x10000001CLL;
  *(a1 + 24) = 0x10000001CLL;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CE0A20;
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
  if (v4 > 0x1C)
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

void sub_1D0D98E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned int a19, uint64_t a20, uint64_t a21, int a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  MEMORY[0x1EEE9AC00](a1);
  v78 = v26;
  v28 = v27;
  v30 = v29;
  v79 = v31;
  v80 = v32;
  v34 = v33;
  if (a19 >= 1)
  {
    v35 = 0;
    do
    {
      sub_1D0BBA094(&v81, *(a11 + 32) + v35);
      v35 += 64;
    }

    while (a19 << 6 != v35);
    v36 = 0;
    v37 = 0;
    do
    {
      sub_1D0BBA094(&v81, *(a13 + 32) + v37);
      sub_1D0BE0DE8(&v81, *(a14 + 32) + v36);
      sub_1D0BE0DE8(&v81, *(a14 + 32) + v36);
      v37 += 64;
      v36 += 112;
    }

    while (a19 << 6 != v37);
  }

  sub_1D0D9FA60(&__p, a16, 0);
  v83 = &v84;
  v38 = v87;
  *v82 = 1;
  *&v82[4] = v87;
  *&v82[20] = 1;
  *&v82[8] = v87;
  *&v82[12] = 0x400000001;
  if (v87)
  {
    v39 = 0;
    v40 = v88;
    v41 = v86;
    v42 = v86 - 1;
    v43 = 1;
    do
    {
      v44 = *(v40 + 4 * v41 * v39);
      v45 = v43;
      v46 = v42;
      if (v41 >= 2)
      {
        do
        {
          v44 += *(v40 + 4 * v45++);
          --v46;
        }

        while (v46);
      }

      *(&v84 + v39++) = v44;
      v43 += v41;
    }

    while (v39 != v38);
  }

  sub_1D0D9FA60(&__p, a16, 1);
  v83 = &v84;
  v47 = v87;
  *v82 = 1;
  *&v82[4] = v87;
  *&v82[20] = 1;
  *&v82[8] = v87;
  *&v82[12] = 0x400000001;
  if (v87)
  {
    v48 = 0;
    v49 = v88;
    v50 = v86;
    v51 = v86 - 1;
    v52 = 1;
    do
    {
      v53 = *(v49 + 4 * v50 * v48);
      v54 = v52;
      v55 = v51;
      if (v50 >= 2)
      {
        do
        {
          v53 += *(v49 + 4 * v54++);
          --v55;
        }

        while (v55);
      }

      *(&v84 + v48++) = v53;
      v52 += v50;
    }

    while (v48 != v47);
  }

  *&v82[16] = 0x100000004;
  *v82 = xmmword_1D0E7DCE0;
  v81 = &unk_1F4CDFDB8;
  v83 = &v84;
  LogLevel = sub_1D0BBCB88(a23, 1, &v81);
  v57 = *(a26 + 32);
  v77 = *(a26 + 33);
  if (a19 >= 1)
  {
    v58 = 0;
    do
    {
      v59 = *(*(a9 + 32) + 4 * v58);
      v60 = *(*(a12 + 32) + 4 * v58);
      if (v59 <= v60)
      {
        ++v58;
      }

      else
      {
        LOWORD(v81) = 2;
        LOBYTE(__p) = 2;
        cnprint::CNLogFormatter::FormatWarning((v34 + 1272), "%d measurements > %d noise sources in measurement function %d.", v59, v60, ++v58);
        if (*(v34 + 1295) >= 0)
        {
          v61 = (v34 + 1272);
        }

        else
        {
          v61 = *(v34 + 1272);
        }

        cnprint::CNPrinter::Print(&v81, &__p, "%s", v61);
      }
    }

    while (v58 != a19);
  }

  if (*a26)
  {
    LogLevel = cnprint::CNPrinter::GetLogLevel(LogLevel);
    if (LogLevel <= 1)
    {
      LOWORD(v81) = 2;
      LOBYTE(__p) = 1;
      v62 = cnprint::CNLogFormatter::FormatWarning((v34 + 1272), "PredictAndUpdate is only compatible with NewtonRaphson solver.");
      if (*(v34 + 1295) >= 0)
      {
        v63 = v62;
      }

      else
      {
        v63 = *(v34 + 1272);
      }

      cnprint::CNPrinter::Print(&v81, &__p, "%s", v63);
    }
  }

  if (*(a26 + 4) >= 2 && cnprint::CNPrinter::GetLogLevel(LogLevel) <= 1)
  {
    LOWORD(v81) = 2;
    LOBYTE(__p) = 1;
    v64 = cnprint::CNLogFormatter::FormatWarning((v34 + 1272), "PredictAndUpdate is only compatible with single-iteration least squares solutions.");
    if (*(v34 + 1295) >= 0)
    {
      v65 = v64;
    }

    else
    {
      v65 = *(v34 + 1272);
    }

    cnprint::CNPrinter::Print(&v81, &__p, "%s", v65);
  }

  v66 = *(a26 + 8);
  *&v82[16] = 0x100000057;
  *v82 = xmmword_1D0E84400;
  v81 = &unk_1F4CE0470;
  v83 = &v84;
  v67 = sub_1D0BBCB88(a9, 1, &v81);
  if (v66 < *v83)
  {
    v67 = cnprint::CNPrinter::GetLogLevel(v67);
    if (v67 <= 1)
    {
      LOWORD(v81) = 2;
      LOBYTE(__p) = 1;
      v68 = cnprint::CNLogFormatter::FormatWarning((v34 + 1272), "PredictAndUpdate is only compatible with QR factorizations of unconstrained size.");
      if (*(v34 + 1295) >= 0)
      {
        v69 = v68;
      }

      else
      {
        v69 = *(v34 + 1272);
      }

      cnprint::CNPrinter::Print(&v81, &__p, "%s", v69);
    }
  }

  if (*(a26 + 89) == 1)
  {
    v67 = cnprint::CNPrinter::GetLogLevel(v67);
    if (v67 <= 1)
    {
      LOWORD(v81) = 2;
      LOBYTE(__p) = 1;
      v70 = cnprint::CNLogFormatter::FormatWarning((v34 + 1272), "PredictAndUpdate is only compatible with dense prediction.");
      if (*(v34 + 1295) >= 0)
      {
        v71 = v70;
      }

      else
      {
        v71 = *(v34 + 1272);
      }

      cnprint::CNPrinter::Print(&v81, &__p, "%s", v71);
    }
  }

  if ((v57 & 1) == 0 && v77 && cnprint::CNPrinter::GetLogLevel(v67) <= 1)
  {
    LOWORD(v81) = 2;
    LOBYTE(__p) = 1;
    v72 = cnprint::CNLogFormatter::FormatWarning((v34 + 1272), "Local hypothesis testing implies global hypothesis testing.  Global hypothesis testing will be enabled.");
    if (*(v34 + 1295) >= 0)
    {
      v73 = v72;
    }

    else
    {
      v73 = *(v34 + 1272);
    }

    cnprint::CNPrinter::Print(&v81, &__p, "%s", v73);
  }

  if (*(v79 + 8) && *(v79 + 12))
  {
    v74 = v34 + 8;
    v75 = v79;
  }

  else
  {
    if ((v80 & 0x80000000) != 0)
    {
      __assert_rtn("Zeros", "cnmatrix.h", 3098, "nr >= 0");
    }

    *&v82[16] = 0x10000001ALL;
    v81 = &unk_1F4CE3E48;
    v83 = &v84;
    *v82 = v80;
    *&v82[4] = 1;
    *&v82[8] = v80;
    *&v82[12] = v80;
    if (v80 > 3)
    {
      v76 = &v84 + v80;
      bzero(&v84, 16 * ((v80 - 1) >> 1));
      *(v76 - 2) = 0;
      *(v76 - 1) = 0;
    }

    else if (v80)
    {
      bzero(&v84, 8 * v80);
    }

    v74 = v34 + 8;
    v75 = &v81;
  }

  sub_1D0B894B0(v74, v75);
  if (*(v78 + 8) && *(v78 + 12))
  {
    sub_1D0B894B0(v34 + 256, v78);
    if (!*(v30 + 8) || !*(v30 + 12))
    {
      *&v82[16] = 0x10000001ALL;
      *v82 = xmmword_1D0E843B0;
      v81 = &unk_1F4CE3E48;
      v83 = &v84;
      sub_1D0B89390(v34 + 256, v34 + 8, &v81);
      sub_1D0B894B0(v34 + 304, &v81);
    }

    if ((v80 & 0x80000000) == 0)
    {
      sub_1D0DA0E30(&v81, v28, v80);
    }

    __assert_rtn("Zeros", "cnmatrix.h", 3099, "nc >= 0");
  }

  if ((v80 & 0x80000000) == 0)
  {
    sub_1D0D87C2C(&v81, v80, v80);
  }

  __assert_rtn("Zeros", "cnmatrix.h", 3056, "n >= 0");
}