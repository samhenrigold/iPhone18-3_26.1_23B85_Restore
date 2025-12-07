uint64_t sub_1D0E0966C(uint64_t a1)
{
  *(a1 + 24) = 0x200000001;
  *a1 = &unk_1F4CECB50;
  *(a1 + 32) = a1 + 40;
  *(a1 + 8) = xmmword_1D0E84500;
  return sub_1D0BBBC00(a1, 0.0);
}

uint64_t sub_1D0E096D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x300000001;
  *a1 = &unk_1F4CDF248;
  *(a1 + 8) = xmmword_1D0E7F310;
  *(a1 + 32) = a1 + 40;
  return sub_1D0B89390(a2, a3, a1);
}

uint64_t *sub_1D0E0977C(uint64_t *result, uint64_t a2)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (*(a2 + 56) != a2 + 48)
  {
    operator new();
  }

  return result;
}

void sub_1D0E0981C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 192);
  *(a1 + 184) = v3;
  *(a1 + 192) = v4;
  if (v5)
  {
    sub_1D0B7CAB8(v5);
  }

  if (v4)
  {
    sub_1D0B7CAB8(v4);
  }

  *(a1 + 168) = vdupq_n_s64(0x7FF8000000000000uLL);
  if (*(a1 + 24) == 1)
  {
    *(a1 + 24) = 0;
  }

  if (*(a1 + 160) == 1)
  {
    *(a1 + 32) = &unk_1F4CD5D18;
    *(a1 + 48) = &unk_1F4CD5E28;
    *(a1 + 160) = 0;
  }
}

void *sub_1D0E098DC(void *a1)
{
  *a1 = &unk_1F4CEC6D0;
  a1[7] = &unk_1F4CEC730;
  sub_1D0E0BA98((a1 + 10));
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_1D0E09954(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 7;
        sub_1D0E0B2FC((v4 - 3), *(v4 - 2));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_1D0E099E0(uint64_t a1)
{
  v2 = *(a1 + 192);
  if (v2)
  {
    sub_1D0B7CAB8(v2);
  }

  if (*(a1 + 160) == 1)
  {
    *(a1 + 32) = &unk_1F4CD5D18;
    *(a1 + 48) = &unk_1F4CD5E28;
  }

  return a1;
}

void sub_1D0E09A7C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F4CEC508;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0E09AD8(uint64_t a1)
{
  *a1 = &unk_1F4CEC558;
  sub_1D0B99218(*(a1 + 48));

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0E09B40(uint64_t result)
{
  if (*(result + 16) == 1)
  {
    *(result + 16) = 0;
  }

  if (*(result + 32) == 1)
  {
    *(result + 32) = 0;
  }

  return result;
}

uint64_t sub_1D0E09B64(uint64_t result)
{
  if (*(result + 16) == 1)
  {
    *(result + 16) = 0;
  }

  if (*(result + 32) == 1)
  {
    *(result + 32) = 0;
  }

  return result;
}

uint64_t sub_1D0E09B88(uint64_t result)
{
  if (*(result + 16) == 1)
  {
    *(result + 16) = 0;
  }

  if (*(result + 32) == 1)
  {
    *(result + 32) = 0;
  }

  return result;
}

uint64_t sub_1D0E09BAC(uint64_t result)
{
  if (*(result + 16) == 1)
  {
    *(result + 16) = 0;
  }

  if (*(result + 32) == 1)
  {
    *(result + 32) = 0;
  }

  return result;
}

uint64_t sub_1D0E09BD0(uint64_t result, uint64_t a2)
{
  *(result + 8) = *(a2 + 88);
  *(result + 16) = 1;
  v2 = *(a2 + 96);
  if (v2)
  {
    *(result + 24) = v2;
    *(result + 32) = 1;
  }

  else if (*(result + 32) == 1)
  {
    *(result + 32) = 0;
  }

  return result;
}

void sub_1D0E09C08(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        sub_1D0BCC0B4(v2 + 8);
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void sub_1D0E09C7C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    if (a1[8] < *(a1 + 18))
    {
      operator new();
    }
  }
}

void sub_1D0E0A420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  sub_1D0BCC0B4(v26);
  v29 = *(v27 - 200);
  if (v29)
  {
    *(v27 - 192) = v29;
    operator delete(v29);
  }

  if (a26 == 1)
  {
    sub_1D0BCC0B4(&a23);
  }

  _Unwind_Resume(a1);
}

void *sub_1D0E0A498(uint64_t *a1, uint64_t *a2)
{
  result = sub_1D0BCC0B4(a1);
  v5 = a2[2];
  if (v5)
  {
    v7 = *a2;
    v6 = a2[1];
    v8 = *(*a2 + 8);
    v9 = *v6;
    *(v9 + 8) = v8;
    *v8 = v9;
    v10 = *a1;
    *(v10 + 8) = v6;
    *v6 = v10;
    *a1 = v7;
    *(v7 + 8) = a1;
    a1[2] += v5;
    a2[2] = 0;
  }

  return result;
}

uint64_t *sub_1D0E0A500(uint64_t *a1, uint64_t a2)
{
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  if (*(a2 + 8) != a2)
  {
    operator new();
  }

  return a1;
}

void sub_1D0E0A5AC(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 232) == *(a2 + 232))
  {
    if (*(a1 + 232))
    {
      v4 = *a2;
      v5 = a2[2];
      *(a1 + 16) = a2[1];
      *(a1 + 32) = v5;
      *a1 = v4;
      sub_1D0E0A498((a1 + 48), a2 + 6);
      v6 = *(a2 + 72);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 72) = v6;
      sub_1D0B894B0(a1 + 104, a2 + 104);

      sub_1D0B894B0(a1 + 168, a2 + 168);
    }
  }

  else if (*(a1 + 232))
  {
    *(a1 + 168) = &unk_1F4CD5E28;
    *(a1 + 104) = &unk_1F4CD5E28;
    sub_1D0BCC0B4((a1 + 48));
    *(a1 + 232) = 0;
  }

  else
  {
    v7 = *a2;
    v8 = a2[2];
    *(a1 + 16) = a2[1];
    *(a1 + 32) = v8;
    *a1 = v7;
    *(a1 + 48) = a1 + 48;
    *(a1 + 56) = a1 + 48;
    *(a1 + 64) = 0;
    v9 = *(a2 + 8);
    if (v9)
    {
      v11 = *(a2 + 6);
      v10 = *(a2 + 7);
      v12 = *(v11 + 8);
      v13 = *v10;
      *(v13 + 8) = v12;
      *v12 = v13;
      v14 = *(a1 + 48);
      *(v14 + 8) = v10;
      *v10 = v14;
      *(a1 + 48) = v11;
      *(v11 + 8) = a1 + 48;
      *(a1 + 64) = v9;
      *(a2 + 8) = 0;
    }

    v15 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v15;
    sub_1D0E0A760(a1 + 104, a2 + 104);
    sub_1D0E0A760(a1 + 168, a2 + 168);
    *(a1 + 232) = 1;
  }
}

void sub_1D0E0A728(_Unwind_Exception *a1)
{
  *v2 = &unk_1F4CD5E28;
  sub_1D0BCC0B4(v1);
  _Unwind_Resume(a1);
}

__n128 sub_1D0E0A760(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = 0x300000001;
  *(a1 + 24) = 0x300000001;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CDF248;
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
  if (v4 > 1)
  {
    v17 = "this->max_num_rows_ >= A.num_rows_";
    v18 = 616;
    goto LABEL_16;
  }

  if (v3 >= 4)
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

uint64_t *sub_1D0E0A8A8(uint64_t *a1)
{
  v2 = a1[10];
  if (v2)
  {
    a1[11] = v2;
    operator delete(v2);
  }

  sub_1D0BCC0B4(a1 + 6);
  sub_1D0E09C08(a1);
  return a1;
}

void sub_1D0E0A904(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 24))(&v3, a2);
  if (sub_1D0E0AB5C(&v3, (a1 + 16)))
  {
    sub_1D0E0ACDC();
  }

  *(a1 + 68) = 0;
}

void sub_1D0E0AA68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1D0B7CAB8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0E0AA88(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 112))(a2, a1 + 16, *(a1 + 64));
  *(a1 + 68) = result;
  return result;
}

uint64_t sub_1D0E0AAE0(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 112))(a2, a1 + 16, *(a1 + 64));
  *(a1 + 68) = result;
  return result;
}

BOOL sub_1D0E0AB5C(double *a1, double *a2)
{
  v2 = a2[3];
  v3 = *a2;
  if (*a2 >= a1[3] && v3 <= *a1)
  {
    v4 = a2[1];
    if (v4 >= a1[4] && v4 <= a1[1])
    {
      v5 = a2[2];
      if (v5 >= a1[5] && v5 <= a1[2])
      {
        return 1;
      }
    }
  }

  v6 = 1.0 / v2;
  if (1.0 / v2 >= 0.0)
  {
    v7 = a1[3];
  }

  else
  {
    v7 = *a1;
  }

  if (1.0 / v2 >= 0.0)
  {
    v8 = *a1;
  }

  else
  {
    v8 = a1[3];
  }

  v9 = v6 * (v8 - v3);
  v10 = v6 * (v7 - v3);
  if (v10 < 0.0 && v9 < 0.0)
  {
    return 0;
  }

  v11 = 1.0 / a2[4];
  v12 = a2[1];
  v13 = 4;
  if (v11 >= 0.0)
  {
    v14 = 4;
  }

  else
  {
    v14 = 1;
  }

  if (v11 >= 0.0)
  {
    v13 = 1;
  }

  v15 = a1[v14] - v12;
  v16 = v11 * (a1[v13] - v12);
  v17 = v11 * v15;
  if (v17 < 0.0 && v16 < 0.0)
  {
    return 0;
  }

  if (v10 > v16 || v17 > v9)
  {
    return 0;
  }

  v19 = 1.0 / a2[5];
  if (v17 <= v10)
  {
    v20 = v10;
  }

  else
  {
    v20 = v17;
  }

  if (v16 >= v9)
  {
    v16 = v9;
  }

  v21 = a2[2];
  v22 = 5;
  if (v19 >= 0.0)
  {
    v23 = 5;
  }

  else
  {
    v23 = 2;
  }

  if (v19 >= 0.0)
  {
    v22 = 2;
  }

  v24 = a1[v23] - v21;
  v25 = v19 * (a1[v22] - v21);
  v26 = v19 * v24;
  if (v26 < 0.0 && v25 < 0.0)
  {
    return 0;
  }

  if (v20 > v25 || v26 > v16)
  {
    return 0;
  }

  if (v26 > v20)
  {
    v20 = v26;
  }

  if (v25 < v16)
  {
    v16 = v25;
  }

  return fmax(v20, v16) >= 0.0;
}

void sub_1D0E0ADCC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F4CEC628;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0E0AE9C(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1D0C54BE8();
}

void sub_1D0E0AEF4(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  sub_1D0C54BE8();
}

uint64_t sub_1D0E0AF3C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 72);
    *(a1 + 16) = i - 72;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1D0E0AFA8(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 56);
    *(a1 + 16) = i - 56;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1D0E0B014(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v6;
  *a1 = v5;
  sub_1D0E0A500((a1 + 48), (a2 + 3));
  v7 = *(a3 + 16);
  *(a1 + 72) = *a3;
  *(a1 + 88) = v7;
  *(a1 + 96) = 0x7FF8000000000000;
  *(a1 + 128) = 0x300000001;
  *(a1 + 104) = &unk_1F4CDF248;
  *(a1 + 112) = xmmword_1D0E7F310;
  *(a1 + 136) = a1 + 144;
  *(a1 + 192) = 0x300000001;
  *(a1 + 168) = &unk_1F4CDF248;
  *(a1 + 176) = xmmword_1D0E7F310;
  *(a1 + 200) = a1 + 208;
  return a1;
}

void sub_1D0E0B0D8(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 9;
      v7 = v4 - 9;
      v8 = v4 - 9;
      do
      {
        v9 = *v8;
        v8 -= 9;
        (*v9)(v7);
        v6 -= 9;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_1D0E0B198(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 7;
      v7 = v4 - 7;
      v8 = v4 - 7;
      do
      {
        v9 = *v8;
        v8 -= 7;
        (*v9)(v7);
        v6 -= 7;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t *sub_1D0E0B258(uint64_t *a1, uint64_t a2)
{
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  if (*(a2 + 8) != a2)
  {
    operator new();
  }

  return a1;
}

void sub_1D0E0B2FC(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_1D0E0B2FC(a1, *a2);
    sub_1D0E0B2FC(a1, *(a2 + 1));
    *(a2 + 29) = &unk_1F4CD5E28;
    *(a2 + 21) = &unk_1F4CD5E28;
    sub_1D0BCC0B4(a2 + 14);
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void sub_1D0E0B3A8(void *a1)
{
  *a1 = &unk_1F4CEC6D0;
  a1[7] = &unk_1F4CEC730;
  sub_1D0E0BA98((a1 + 10));
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0E0B440(uint64_t a1, void *a2, __n128 a3)
{
  sub_1D0E0C46C(a1, a3);
  if ((*(a1 + 48) & 1) == 0)
  {
    (*(*a2 + 24))(v9, a2);
    v6 = *(a1 + 8);
    v5 = *(a1 + 16);
    v8 = v6 < v9[3] || v6 > v9[0] || v5 < v9[4];
    if (v8 || v5 > v9[1])
    {
      sub_1D0E0C398((a1 + 56));
    }

    else
    {
      sub_1D0E0C6A4((a1 + 24), ((a2[3] - a2[2]) >> 3) + 1);
    }
  }
}

void sub_1D0E0B4F4(void *a1, uint64_t a2)
{
  v3 = **(a2 + 16);
  v5 = a1[4];
  v4 = a1[5];
  if (v5 >= v4)
  {
    v7 = a1[3];
    v8 = (v5 - v7) >> 4;
    if ((v8 + 1) >> 60)
    {
      sub_1D0C5663C();
    }

    v9 = v4 - v7;
    v10 = v9 >> 3;
    if (v9 >> 3 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      sub_1D0BC40DC((a1 + 3), v11);
    }

    *(16 * v8) = v3;
    v6 = 16 * v8 + 16;
    v12 = a1[3];
    v13 = a1[4] - v12;
    v14 = (16 * v8 - v13);
    memcpy(v14, v12, v13);
    v15 = a1[3];
    a1[3] = v14;
    a1[4] = v6;
    a1[5] = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v5 = v3;
    v6 = (v5 + 1);
  }

  a1[4] = v6;
}

void sub_1D0E0B5D4(void *a1, uint64_t a2)
{
  v3 = **(a2 + 16);
  v5 = a1[4];
  v4 = a1[5];
  if (v5 >= v4)
  {
    v7 = a1[3];
    v8 = (v5 - v7) >> 4;
    if ((v8 + 1) >> 60)
    {
      sub_1D0C5663C();
    }

    v9 = v4 - v7;
    v10 = v9 >> 3;
    if (v9 >> 3 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      sub_1D0BC40DC((a1 + 3), v11);
    }

    *(16 * v8) = v3;
    v6 = 16 * v8 + 16;
    v12 = a1[3];
    v13 = a1[4] - v12;
    v14 = (16 * v8 - v13);
    memcpy(v14, v12, v13);
    v15 = a1[3];
    a1[3] = v14;
    a1[4] = v6;
    a1[5] = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v5 = v3;
    v6 = (v5 + 1);
  }

  a1[4] = v6;
}

void *sub_1D0E0B6D8(void *a1)
{
  *a1 = &unk_1F4CEC730;
  sub_1D0E0BA98((a1 + 3));
  return a1;
}

void sub_1D0E0B71C(void *a1)
{
  *a1 = &unk_1F4CEC730;
  sub_1D0E0BA98((a1 + 3));

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0E0B780(void *a1)
{
  a1[2] = a1[1];
  memset(&v5, 0, 48);
  sub_1D0E0BBF4(a1 + 3, &v5);
  sub_1D0E0BA98(&v5);
  result = a1[2];
  if (result && a1[9])
  {
    (*(*(result + 8) + 16))(&v5);
    v3 = sub_1D0E0BF10(a1 + 3, &v5);
    if (v5.n128_u64[1])
    {
      sub_1D0B7CAB8(v5.n128_u64[1]);
    }

    v4 = *(*(a1[4] + (((a1[8] + a1[7] - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 64) + *(a1 + 56) - 1));
    return (*(*v4 + 16))(v4, v3);
  }

  return result;
}

void sub_1D0E0B86C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1D0B7CAB8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0E0B884(void *result)
{
  v1 = result[8];
  if (v1)
  {
    while (1)
    {
      v3 = *(*(result[4] + (((v1 + result[7] - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v1 + *(result + 56) - 1));
      if (!(*(*v3 + 32))(v3))
      {
        break;
      }

      sub_1D0E0C398(result);
      v1 = result[8];
      if (!v1)
      {
        return;
      }
    }

    v4 = *(*(result[4] + (((result[8] + result[7] - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(result + 64) + *(result + 56) - 1));
    v5 = (*(*v4 + 40))(v4);
    result[2] = v5;
    v6 = result[8];
    if (v6 >= result[9])
    {
      v9 = *(**(*(result[4] + (((v6 + result[7] - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v6 + *(result + 56) - 1)) + 24);

      v9();
    }

    else
    {
      (*(*(v5 + 8) + 16))(&v10);
      v7 = sub_1D0E0BF10(result + 3, &v10);
      if (v10.n128_u64[1])
      {
        sub_1D0B7CAB8(v10.n128_u64[1]);
      }

      v8 = *(*(result[4] + (((result[8] + result[7] - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(result + 64) + *(result + 56) - 1));
      (*(*v8 + 16))(v8, v7);
    }
  }
}

void sub_1D0E0BA68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1D0B7CAB8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0E0BA98(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = (a1 + 40);
    v12 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v3[v5 >> 8];
    v7 = *v6;
    v8 = *v6 + 16 * v5;
    v9 = *(v3 + (((*(a1 + 40) + v5) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 40) + v5);
    if (v8 != v9)
    {
      do
      {
        v10 = *(v8 + 8);
        if (v10)
        {
          sub_1D0B7CAB8(v10);
          v7 = *v6;
        }

        v8 += 16;
        if (v8 - v7 == 4096)
        {
          v11 = v6[1];
          ++v6;
          v7 = v11;
          v8 = v11;
        }
      }

      while (v8 != v9);
      v3 = *(a1 + 8);
      v2 = *(a1 + 16);
    }

    v12 = v2;
  }

  *v4 = 0;
  v13 = v12 - v3;
  if (v13 >= 3)
  {
    do
    {
      operator delete(*v3);
      v2 = *(a1 + 16);
      v3 = (*(a1 + 8) + 8);
      *(a1 + 8) = v3;
      v13 = v2 - v3;
    }

    while (v13 > 2);
    v12 = v2;
  }

  if (v13 == 1)
  {
    v14 = 128;
  }

  else
  {
    if (v13 != 2)
    {
      goto LABEL_19;
    }

    v14 = 256;
  }

  *(a1 + 32) = v14;
LABEL_19:
  if (v3 != v12)
  {
    do
    {
      v15 = *v3++;
      operator delete(v15);
    }

    while (v3 != v12);
    v12 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  if (v2 != v12)
  {
    *(a1 + 16) = v2 + ((v12 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

double sub_1D0E0BBF4(void *a1, uint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 == v5)
  {
    v6 = a1 + 5;
    v14 = a1[1];
  }

  else
  {
    v6 = a1 + 5;
    v7 = a1[4];
    v8 = &v5[v7 >> 8];
    v9 = *v8;
    v10 = *v8 + 16 * v7;
    v11 = *(v5 + (((a1[5] + v7) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 40) + v7);
    if (v10 != v11)
    {
      do
      {
        v12 = *(v10 + 8);
        if (v12)
        {
          sub_1D0B7CAB8(v12);
          v9 = *v8;
        }

        v10 += 16;
        if (v10 - v9 == 4096)
        {
          v13 = v8[1];
          ++v8;
          v9 = v13;
          v10 = v13;
        }
      }

      while (v10 != v11);
      v5 = a1[1];
      v4 = a1[2];
    }

    v14 = v4;
  }

  *v6 = 0;
  v15 = (v14 - v5) >> 3;
  if (v15 >= 3)
  {
    do
    {
      operator delete(*v5);
      v4 = a1[2];
      v5 = (a1[1] + 8);
      a1[1] = v5;
      v15 = (v4 - v5) >> 3;
    }

    while (v15 > 2);
  }

  if (v15 == 1)
  {
    v16 = 128;
  }

  else
  {
    if (v15 != 2)
    {
      goto LABEL_18;
    }

    v16 = 256;
  }

  a1[4] = v16;
LABEL_18:
  if (a1[5])
  {
    if (a1[4] >= 0x100uLL)
    {
      operator delete(*v5);
      a1[1] += 8;
      a1[4] -= 256;
    }

    sub_1D0E0BDC8(a1, 0);
  }

  else
  {
    while (v4 != v5)
    {
      operator delete(*(v4 - 8));
      v5 = a1[1];
      v4 = a1[2] - 8;
      a1[2] = v4;
    }

    a1[4] = 0;
  }

  sub_1D0E0BE34(a1);
  v18 = a1[1];
  v17 = a1[2];
  if (v17 != v18)
  {
    a1[2] = v17 + ((v18 - v17 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  sub_1D0E0BE34(a1);
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 16);
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  a1[4] = *(a2 + 32);
  a1[5] = *(a2 + 40);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return result;
}

void sub_1D0E0BDC8(void *a1, char a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v3 == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = 32 * (v3 - v4) - 1;
  }

  v6 = v5 - (a1[5] + a1[4]);
  if (v6 < 0x100)
  {
    a2 = 1;
  }

  if (v6 > 0x1FF || (a2 & 1) == 0)
  {
    operator delete(*(v3 - 8));
    a1[2] -= 8;
  }
}

void sub_1D0E0BE34(void **a1)
{
  v1 = a1[2];
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[3] - *a1;
  if (v4 > (v1 - v3))
  {
    if (v1 != v3)
    {
      sub_1D0C4E87C((v1 - v3) >> 3);
    }

    v6 = 0;
    if (v4 >> 3)
    {
      v7 = a1[1];
      v8 = (a1[2] - v7);
      if (v8)
      {
        v9 = 0;
        do
        {
          v10 = *v7++;
          *v9++ = v10;
          v8 -= 8;
        }

        while (v8);
        v7 = a1[1];
        v11 = a1[2];
        v2 = *a1;
      }

      else
      {
        v11 = a1[1];
      }

      *a1 = 0;
      a1[1] = 0;
      a1[2] = (v11 - v7);
      a1[3] = 0;
      v6 = v2;
    }

    if (v6)
    {

      operator delete(v6);
    }
  }
}

__n128 sub_1D0E0BF10(unint64_t *a1, __n128 *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v5 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = 32 * (v5 - v4) - 1;
  }

  v7 = a1[4];
  v8 = a1[5] + v7;
  if (v6 == v8)
  {
    if (v7 < 0x100)
    {
      v9 = a1[3];
      v10 = v9 - *a1;
      if (v5 - v4 < v10)
      {
        operator new();
      }

      v11 = v10 >> 2;
      if (v9 == *a1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11;
      }

      sub_1D0C4E87C(v12);
    }

    a1[4] = v7 - 256;
    v14 = *v4;
    a1[1] = (v4 + 1);
    sub_1D0C149C4(a1, &v14);
    v4 = a1[1];
    v8 = a1[5] + a1[4];
  }

  result = *a2;
  *(*(v4 + ((v8 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v8) = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  ++a1[5];
  return result;
}

void sub_1D0E0C36C(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void sub_1D0E0C398(void *a1)
{
  v2 = a1[8] - 1;
  v3 = *(*(a1[4] + (((v2 + a1[7]) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v2 + *(a1 + 56)) + 8);
  if (v3)
  {
    sub_1D0B7CAB8(v3);
    v2 = a1[8] - 1;
  }

  a1[8] = v2;
  sub_1D0E0BDC8(a1 + 3, 1);
  v4 = a1[8];
  if (v4)
  {
    v5 = *(**(*(a1[4] + (((v4 + a1[7] - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v4 + *(a1 + 56) - 1)) + 24);

    v5();
  }

  else
  {
    a1[2] = 0;
  }
}

void sub_1D0E0C46C(uint64_t a1, __n128 a2)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v2 = (a1 + 24);
  if (v3 != v4)
  {
    v6 = *v3;
    a2.n128_f64[0] = *(v4 - 2);
    if (*v3 != a2.n128_f64[0])
    {
      if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (a2.n128_u64[0] & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_20;
      }

      v26 = fabs(v6);
      v27 = fabs(a2.n128_f64[0]);
      a2.n128_f64[0] = vabdd_f64(v6, a2.n128_f64[0]);
      if (v26 < v27)
      {
        v26 = v27;
      }

      if (v26 < 1.0)
      {
        v26 = 1.0;
      }

      if (a2.n128_f64[0] > v26 * 2.22044605e-16)
      {
        goto LABEL_20;
      }
    }

    a2.n128_u64[0] = *(v3 + 8);
    v7 = *(v4 - 1);
    if (a2.n128_f64[0] != v7)
    {
      if ((a2.n128_u64[0] & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_20;
      }

      v9 = fabs(a2.n128_f64[0]);
      v10 = fabs(v7);
      a2.n128_f64[0] = vabdd_f64(a2.n128_f64[0], v7);
      if (v9 >= v10)
      {
        v11 = v9;
      }

      else
      {
        v11 = v10;
      }

      if (v11 < 1.0)
      {
        v11 = 1.0;
      }

      if (a2.n128_f64[0] > v11 * 2.22044605e-16)
      {
LABEL_20:
        v13 = *(v3 + 8);
        v14 = *(a1 + 40);
        if (v4 >= v14)
        {
          v15 = (v4 - v3) >> 4;
          v16 = v15 + 1;
          if ((v15 + 1) >> 60)
          {
            sub_1D0C5663C();
          }

          v17 = v14 - v3;
          if (v17 >> 3 > v16)
          {
            v16 = v17 >> 3;
          }

          if (v17 >= 0x7FFFFFFFFFFFFFF0)
          {
            v18 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v18 = v16;
          }

          if (v18)
          {
            sub_1D0BC40DC(a1 + 24, v18);
          }

          v19 = (16 * v15);
          *v19 = v6;
          *(v19 + 1) = v13;
          v4 = (16 * v15 + 16);
          v20 = *(a1 + 24);
          v21 = *(a1 + 32) - v20;
          v22 = (16 * v15 - v21);
          memcpy(v22, v20, v21);
          v23 = *(a1 + 24);
          *(a1 + 24) = v22;
          *(a1 + 32) = v4;
          *(a1 + 40) = 0;
          if (v23)
          {
            operator delete(v23);
          }
        }

        else
        {
          *v4 = v6;
          *(v4 + 1) = v13;
          v4 += 2;
        }

        *(a1 + 32) = v4;
        v3 = *(a1 + 24);
      }
    }

    if (v4 - v3 < 0x40 || (v28 = 0, v29 = 0, (v3 + 16) == v4))
    {
      v25 = 0;
    }

    else
    {
      do
      {
        if (!sub_1D0B85B94((a1 + 8), v3, (v3 + 16), &v28, a2))
        {
          break;
        }

        v24 = (v3 + 32);
        v3 += 16;
      }

      while (v24 != v4);
      v25 = (v28 != 0) & ~v29;
      v3 = *v2;
    }

    *(a1 + 48) = v25;
    *(a1 + 32) = v3;
  }
}

void sub_1D0E0C6A4(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 4)
  {
    if (!(a2 >> 60))
    {
      sub_1D0BC40DC(a1, a2);
    }

    sub_1D0C5663C();
  }
}

double sub_1D0E0C744(double *a1, double *a2, double *a3, double *a4, double *a5, double *a6, double *a7, double *a8, double *a9, double *a10)
{
  v14 = 0;
  a8[1] = -(*a8 - *a4 * *a5);
  v15 = *a9;
  v16 = -(*a9 - *a6 * *a7);
  a9[1] = v16;
  v17 = a8[1];
  v18 = v17 - v16;
  v19 = v17 - (v17 - v16) - v16 + v17 - (v17 - v16 + v17 - (v17 - v16));
  v20 = *a8 + v18;
  v21 = v18 - (v20 - *a8) + *a8 - (v20 - (v20 - *a8));
  v67[0] = v19;
  v67[1] = v21 - (v21 - v15) - v15 + v21 - (v21 - v15 + v21 - (v21 - v15));
  v67[2] = v21 - v15 - (v20 + v21 - v15 - v20) + v20 - (v20 + v21 - v15 - (v20 + v21 - v15 - v20));
  v67[3] = v20 + v21 - v15;
  result = 0.0;
  do
  {
    result = result + v67[v14] + v67[v14 + 1];
    v14 += 2;
  }

  while (v14 != 4);
  v23 = fabs(result);
  if (v23 < *a10 * 2.22044605e-16)
  {
    a4[1] = *a1 - *a4 - *a3 + *a1 - (*a4 + *a1 - *a4);
    a5[1] = a2[1] - *a5 - a3[1] + a2[1] - (*a5 + a2[1] - *a5);
    a6[1] = a1[1] - *a6 - a3[1] + a1[1] - (*a6 + a1[1] - *a6);
    v24 = *a7;
    v25 = *a2 - *a7 - *a3 + *a2 - (*a7 + *a2 - *a7);
    a7[1] = v25;
    v26 = a4[1];
    v27 = a6[1];
    v28 = a5[1];
    if (v26 != 0.0 || v27 != 0.0 || v28 != 0.0 || v25 != 0.0)
    {
      v29 = v23 * 3.33066907e-16 + *a10 * 1.10933565e-31;
      v30 = v26 * *a5;
      v31 = v24 * v27;
      result = result + v30 + *a4 * v28 - (v24 * v27 + *a6 * v25);
      if (fabs(result) < v29)
      {
        v32 = -(v30 - v26 * *a5);
        v33 = -(v31 - v27 * v24);
        v34 = v32 - v33;
        v35 = v32 - (v32 - v33) - v33 + v32 - (v32 - v33 + v32 - (v32 - v33));
        v36 = v30 + v34;
        v37 = v34 - (v30 + v34 - v30) + v30 - (v30 + v34 - (v30 + v34 - v30));
        v60 = v35;
        v61 = v37 - (v37 - v31) - v31 + v37 - (v37 - v31 + v37 - (v37 - v31));
        v62 = v37 - v31 - (v36 + v37 - v31 - v36) + v36 - (v36 + v37 - v31 - (v36 + v37 - v31 - v36));
        v63 = v36 + v37 - v31;
        v38 = sub_1D0E0CB34(v67, &v60, v66, 4, 4);
        v39 = a5[1];
        v40 = a4[1];
        v41 = *a4 * v39;
        v42 = -(v41 - v41);
        v43 = a7[1];
        v44 = a6[1];
        v45 = *a6 * v43;
        v46 = -(v45 - v45);
        v47 = v42 - v46;
        v48 = v42 - (v42 - v46) - v46 + v42 - (v42 - v46 + v42 - (v42 - v46));
        v49 = v41 + v47;
        v50 = v47 - (v41 + v47 - v41) + v41 - (v41 + v47 - (v41 + v47 - v41));
        v60 = v48;
        v61 = v50 - (v50 - v45) - v45 + v50 - (v50 - v45 + v50 - (v50 - v45));
        v62 = v50 - v45 - (v49 + v50 - v45 - v49) + v49 - (v49 + v50 - v45 - (v49 + v50 - v45 - v49));
        v63 = v49 + v50 - v45;
        v51 = v39 * v40;
        v52 = -(v39 * v40 - v40 * v39);
        v53 = v43 * v44;
        v54 = -(v43 * v44 - v44 * v43);
        v55 = v52 - v54;
        v56 = v52 - (v52 - v54) - v54 + v52 - (v52 - v54 + v52 - (v52 - v54));
        v57 = v51 + v55;
        v58 = v55 - (v51 + v55 - v51) + v51 - (v51 + v55 - (v51 + v55 - v51));
        v64[0] = v56;
        v64[1] = v58 - (v58 - v53) - v53 + v58 - (v58 - v53 + v58 - (v58 - v53));
        v64[2] = v58 - v53 - (v57 + v58 - v53 - v57) + v57 - (v57 + v58 - v53 - (v57 + v58 - v53 - v57));
        v64[3] = v57 + v58 - v53;
        v59 = sub_1D0E0CB34(&v60, v64, v65, 4, 4);
        return *(&v60 + sub_1D0E0CB34(v66, v65, &v60, v38, v59) - 1);
      }
    }
  }

  return result;
}

uint64_t sub_1D0E0CB34(double *a1, double *a2, double *a3, int a4, int a5)
{
  v6 = *a2;
  v7 = fabs(*a2);
  v8 = fabs(*a1);
  v9 = v7 <= v8;
  v10 = v7 > v8;
  if (v7 > v8)
  {
    v6 = *a1;
  }

  if (v10 < a4 && v9 < a5)
  {
    v13 = v7 <= v8;
    v14 = a2[v7 <= v8];
    v15 = fabs(v14);
    v16 = fabs(a1[v10]);
    if (v13)
    {
      v17 = 2;
    }

    else
    {
      v17 = 1;
    }

    if (v13)
    {
      v18 = 1;
    }

    else
    {
      v18 = 2;
    }

    v19 = v15 <= v16;
    if (v15 <= v16)
    {
      v20 = v14;
    }

    else
    {
      v20 = a1[v10];
    }

    if (v19)
    {
      v9 = v17;
    }

    if (!v19)
    {
      v10 = v18;
    }

    v21 = v6 + v20;
    v22 = v6 - (v6 + v20 - v20);
    if (v22 == 0.0)
    {
      result = 0;
    }

    else
    {
      *a3 = v22;
      result = 1;
    }

    v6 = v21;
    if (v10 < a4 && v9 < a5)
    {
      do
      {
        v24 = v6;
        v25 = fabs(a2[v9]);
        v26 = fabs(a1[v10]);
        v27 = v25 <= v26;
        if (v25 > v26)
        {
          v28 = a1[v10];
        }

        else
        {
          v28 = a2[v9];
        }

        if (v27)
        {
          ++v9;
        }

        else
        {
          ++v10;
        }

        v6 = v6 + v28;
        v29 = v28 - (v24 + v28 - v24) + v24 - (v24 + v28 - (v24 + v28 - v24));
        if (v29 != 0.0)
        {
          a3[result] = v29;
          result = (result + 1);
        }
      }

      while (v10 < a4 && v9 < a5);
    }
  }

  else
  {
    result = 0;
  }

  if (v10 < a4)
  {
    v31 = &a1[v10];
    v32 = a4 - v10;
    do
    {
      v33 = v6;
      v6 = v6 + *v31;
      v34 = *v31 - (v6 - v33) + v33 - (v6 - (v6 - v33));
      if (v34 != 0.0)
      {
        a3[result] = v34;
        result = (result + 1);
      }

      ++v31;
      --v32;
    }

    while (v32);
  }

  if (v9 < a5)
  {
    v35 = &a2[v9];
    v36 = a5 - v9;
    do
    {
      v37 = v6;
      v6 = v6 + *v35;
      v38 = *v35 - (v6 - v37) + v37 - (v6 - (v6 - v37));
      if (v38 != 0.0)
      {
        a3[result] = v38;
        result = (result + 1);
      }

      ++v35;
      --v36;
    }

    while (v36);
  }

  if (v6 != 0.0 || result == 0)
  {
    a3[result] = v6;
    return (result + 1);
  }

  return result;
}

void sub_1D0E0CCF4(unint64_t a1)
{
  if (a1 < 0x492492492492493)
  {
    operator new();
  }

  sub_1D0C54BE8();
}

void sub_1D0E0CD50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = 0;
    do
    {
      v5 = a3 + v4;
      v6 = *(a1 + v4 + 16);
      *v5 = *(a1 + v4);
      *(v5 + 16) = v6;
      *(v5 + 32) = *(a1 + v4 + 32);
      v7 = (a1 + v4 + 40);
      v8 = *v7;
      *(a3 + v4 + 40) = *v7;
      v9 = a3 + v4 + 40;
      v10 = *(a1 + v4 + 48);
      *(v5 + 48) = v10;
      if (v10)
      {
        *(v8 + 16) = v9;
        *(a1 + v4 + 32) = v7;
        *v7 = 0;
        *(a1 + v4 + 48) = 0;
      }

      else
      {
        *(v5 + 32) = v9;
      }

      v4 += 56;
    }

    while (a1 + v4 != a2);
    v11 = a1 + 32;
    do
    {
      sub_1D0E0B2FC(v11, *(v11 + 8));
      v12 = v11 + 24;
      v11 += 56;
    }

    while (v12 != a2);
  }
}

uint64_t sub_1D0E0CDF8(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 56;
    sub_1D0E0B2FC(i - 24, *(i - 16));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_1D0E0CE50(void *a1)
{
  *a1 = &unk_1F4CEC6D0;
  a1[7] = &unk_1F4CEC730;
  sub_1D0E0BA98((a1 + 10));
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_1D0E0CF5C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F4CEC788;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1D387ECA0);
}

uint64_t *sub_1D0E0CFF8(uint64_t **a1, unint64_t *a2, _OWORD **a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_19:
    operator new();
  }

  v4 = *a2;
  v5 = *(a2 + 4);
  v6 = *(a2 + 5);
  while (1)
  {
    while (1)
    {
      v7 = v3;
      v8 = v3[4];
      if (v4 == v8)
      {
        break;
      }

      if (v4 <= v8)
      {
        goto LABEL_15;
      }

LABEL_18:
      v3 = v7[1];
      if (!v3)
      {
        goto LABEL_19;
      }
    }

    v9 = *(v7 + 20);
    v10 = *(v7 + 21);
    if (v5 == v9 && v6 == v10)
    {
      return v7;
    }

    v12 = v5 <= v9;
    if (v6 != v10)
    {
      v12 = v6 <= v10;
    }

    if (!v12)
    {
      if (v6 == v10)
      {
        if (v9 > v5)
        {
          return v7;
        }
      }

      else if (v10 > v6)
      {
        return v7;
      }

      goto LABEL_18;
    }

LABEL_15:
    v3 = *v7;
    if (!*v7)
    {
      goto LABEL_19;
    }
  }
}

void *sub_1D0E0D12C(void *a1)
{
  *a1 = &unk_1F4CEC828;
  a1[1] = &unk_1F4CEC868;
  v3 = (a1 + 2);
  sub_1D0E0D3F0(&v3);
  return a1;
}

void sub_1D0E0D1A4(void *a1)
{
  *a1 = &unk_1F4CEC828;
  a1[1] = &unk_1F4CEC868;
  v1 = (a1 + 2);
  sub_1D0E0D3F0(&v1);

  JUMPOUT(0x1D387ECA0);
}

__n128 sub_1D0E0D26C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 56);
  *a2 = *(a1 + 40);
  *(a2 + 16) = v2;
  result = *(a1 + 72);
  *(a2 + 32) = result;
  return result;
}

uint64_t sub_1D0E0D284(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 16);
  for (i = *(result + 24); v3 != i; result = (*(*v7 + 32))(v7, a2, a3))
  {
    v7 = *v3++;
  }

  return result;
}

void sub_1D0E0D2F4(void *a1)
{
  *(a1 - 1) = &unk_1F4CEC828;
  *a1 = &unk_1F4CEC868;
  v1 = (a1 + 1);
  sub_1D0E0D3F0(&v1);
}

void sub_1D0E0D35C(void *a1)
{
  *(a1 - 1) = &unk_1F4CEC828;
  *a1 = &unk_1F4CEC868;
  v1 = (a1 + 1);
  sub_1D0E0D3F0(&v1);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0E0D3F0(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          (*(*v6 + 8))(v6);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_1D0E0D49C(void *a1)
{
  sub_1D0E0E3B4(a1);

  JUMPOUT(0x1D387ECA0);
}

double *sub_1D0E0D504@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = vdupq_n_s64(0xFFF0000000000000);
  *(a2 + 16) = xmmword_1D0EA0B90;
  *(a2 + 32) = vdupq_n_s64(0x7FF0000000000000uLL);
  v4 = a1[6];
  v7 = *a1[2];
  v8 = v4;
  sub_1D0E0E1C4(a2, &v7);
  v5 = a1[7];
  v7 = *a1[4];
  v8 = v5;
  return sub_1D0E0E1C4(a2, &v7);
}

void *sub_1D0E0D590(uint64_t a1, uint64_t *a2, int a3)
{
  v5 = *a2;
  v6 = a2 + *(*a2 - 24);
  v7 = *(v6 + 2);
  v8 = *(v6 + 2);
  *(v6 + 2) = v8 & 0xFFFFFEFB | 4;
  *(a2 + *(v5 - 24) + 8) |= 0x400u;
  *(a2 + *(v5 - 24) + 16) = a3;
  v9 = a3 + 6;
  *(a2 + *(v5 - 24) + 24) = v9;
  v10 = MEMORY[0x1D387E990](a2, **(a1 + 16));
  v11 = sub_1D0BCD7C4(v10, " ", 1);
  *(v11 + *(*v11 - 24) + 24) = v9;
  v12 = MEMORY[0x1D387E990](*(*(a1 + 16) + 8));
  v13 = sub_1D0BCD7C4(v12, " ", 1);
  *(v13 + *(*v13 - 24) + 24) = v9;
  v14 = MEMORY[0x1D387E990](*(a1 + 48));
  sub_1D0BCD7C4(v14, " ", 1);
  *(a2 + *(*a2 - 24) + 24) = v9;
  v15 = MEMORY[0x1D387E990](a2, **(a1 + 32));
  v16 = sub_1D0BCD7C4(v15, " ", 1);
  *(v16 + *(*v16 - 24) + 24) = v9;
  v17 = MEMORY[0x1D387E990](*(*(a1 + 32) + 8));
  v18 = sub_1D0BCD7C4(v17, " ", 1);
  *(v18 + *(*v18 - 24) + 24) = v9;
  v19 = MEMORY[0x1D387E990](*(a1 + 48));
  sub_1D0BCD7C4(v19, " ", 1);
  *(a2 + *(*a2 - 24) + 24) = v9;
  v20 = MEMORY[0x1D387E990](a2, **(a1 + 32));
  v21 = sub_1D0BCD7C4(v20, " ", 1);
  *(v21 + *(*v21 - 24) + 24) = v9;
  v22 = MEMORY[0x1D387E990](*(*(a1 + 32) + 8));
  v23 = sub_1D0BCD7C4(v22, " ", 1);
  *(v23 + *(*v23 - 24) + 24) = v9;
  v24 = MEMORY[0x1D387E990](*(a1 + 56));
  sub_1D0BCD7C4(v24, " ", 1);
  *(a2 + *(*a2 - 24) + 24) = v9;
  v25 = MEMORY[0x1D387E990](a2, **(a1 + 16));
  v26 = sub_1D0BCD7C4(v25, " ", 1);
  *(v26 + *(*v26 - 24) + 24) = v9;
  v27 = MEMORY[0x1D387E990](*(*(a1 + 16) + 8));
  v28 = sub_1D0BCD7C4(v27, " ", 1);
  *(v28 + *(*v28 - 24) + 24) = v9;
  v29 = MEMORY[0x1D387E990](*(a1 + 56));
  sub_1D0BCD7C4(v29, " ", 1);
  *(a2 + *(*a2 - 24) + 24) = v9;
  v30 = MEMORY[0x1D387E990](a2, *(a1 + 64));
  v31 = sub_1D0BCD7C4(v30, " ", 1);
  *(v31 + *(*v31 - 24) + 24) = v9;
  v32 = MEMORY[0x1D387E990](*(a1 + 72));
  v33 = sub_1D0BCD7C4(v32, " ", 1);
  *(v33 + *(*v33 - 24) + 24) = v9;
  v34 = MEMORY[0x1D387E990](*(a1 + 80));
  result = sub_1D0BCD7C4(v34, "\n", 1);
  v36 = *a2;
  *(a2 + *(*a2 - 24) + 16) = v7;
  *(a2 + *(v36 - 24) + 8) = v8;
  return result;
}

BOOL sub_1D0E0D99C(uint64_t a1, double *a2)
{
  if (*a2 < 0.0)
  {
    return 0;
  }

  v2 = a2[1];
  if (v2 < 0.0 || v2 > *(a1 + 56) - *(a1 + 48))
  {
    return 0;
  }

  v4 = *(a1 + 16);
  return *a2 <= sqrt((*(*(a1 + 32) + 8) - v4[1]) * (*(*(a1 + 32) + 8) - v4[1]) + (**(a1 + 32) - *v4) * (**(a1 + 32) - *v4));
}

double sub_1D0E0DA0C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 16);
  v3 = v1[1] - v2[1];
  return (*v1 - *v2) * (1.0 / sqrt(v3 * v3 + (*v1 - *v2) * (*v1 - *v2)));
}

void sub_1D0E0DA68(void *a1@<X0>, void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_1D0E090D8(a2, 4uLL);
  v4 = a1[2];
  v5 = a2[1];
  v6 = a2[2];
  if (v5 >= v6)
  {
    v9 = *a2;
    v10 = v5 - *a2;
    v11 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 3) + 1;
    if (v11 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_50;
    }

    if (0x5555555555555556 * ((v6 - v9) >> 3) > v11)
    {
      v11 = 0x5555555555555556 * ((v6 - v9) >> 3);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((v6 - v9) >> 3) >= 0x555555555555555)
    {
      v12 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      sub_1D0E0AE9C(v12);
    }

    v13 = (8 * (v10 >> 3));
    v14 = a1[6];
    *v13 = *v4;
    v6 = 0;
    v13[1] = v4[1];
    v13[2] = v14;
    v8 = (v13 + 3);
    v15 = v13 - v10;
    memcpy(v13 - v10, v9, v10);
    *a2 = v15;
    a2[1] = v8;
    a2[2] = 0;
    if (v9)
    {
      operator delete(v9);
      v6 = a2[2];
    }
  }

  else
  {
    v7 = a1[6];
    *v5 = *v4;
    *(v5 + 1) = v4[1];
    *(v5 + 2) = v7;
    v8 = v5 + 24;
  }

  a2[1] = v8;
  v16 = a1[4];
  if (v8 >= v6)
  {
    v19 = *a2;
    v20 = v8 - *a2;
    v21 = 0xAAAAAAAAAAAAAAABLL * (v20 >> 3) + 1;
    if (v21 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_50;
    }

    if (0x5555555555555556 * ((v6 - v19) >> 3) > v21)
    {
      v21 = 0x5555555555555556 * ((v6 - v19) >> 3);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((v6 - v19) >> 3) >= 0x555555555555555)
    {
      v22 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      sub_1D0E0AE9C(v22);
    }

    v23 = (8 * (v20 >> 3));
    v24 = a1[6];
    *v23 = *v16;
    v6 = 0;
    v23[1] = v16[1];
    v23[2] = v24;
    v18 = (v23 + 3);
    v25 = v23 - v20;
    memcpy(v23 - v20, v19, v20);
    *a2 = v25;
    a2[1] = v18;
    a2[2] = 0;
    if (v19)
    {
      operator delete(v19);
      v6 = a2[2];
    }
  }

  else
  {
    v17 = a1[6];
    *v8 = *v16;
    *(v8 + 1) = v16[1];
    *(v8 + 2) = v17;
    v18 = v8 + 24;
  }

  a2[1] = v18;
  v26 = a1[4];
  if (v18 >= v6)
  {
    v29 = *a2;
    v30 = v18 - *a2;
    v31 = 0xAAAAAAAAAAAAAAABLL * (v30 >> 3) + 1;
    if (v31 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_50;
    }

    if (0x5555555555555556 * ((v6 - v29) >> 3) > v31)
    {
      v31 = 0x5555555555555556 * ((v6 - v29) >> 3);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((v6 - v29) >> 3) >= 0x555555555555555)
    {
      v32 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v32 = v31;
    }

    if (v32)
    {
      sub_1D0E0AE9C(v32);
    }

    v33 = (8 * (v30 >> 3));
    v34 = a1[7];
    *v33 = *v26;
    v6 = 0;
    v33[1] = v26[1];
    v33[2] = v34;
    v28 = (v33 + 3);
    v35 = v33 - v30;
    memcpy(v33 - v30, v29, v30);
    *a2 = v35;
    a2[1] = v28;
    a2[2] = 0;
    if (v29)
    {
      operator delete(v29);
      v6 = a2[2];
    }
  }

  else
  {
    v27 = a1[7];
    *v18 = *v26;
    *(v18 + 1) = v26[1];
    *(v18 + 2) = v27;
    v28 = v18 + 24;
  }

  a2[1] = v28;
  v36 = a1[2];
  if (v28 < v6)
  {
    v37 = a1[7];
    *v28 = *v36;
    *(v28 + 1) = v36[1];
    *(v28 + 2) = v37;
    v38 = v28 + 24;
    goto LABEL_49;
  }

  v39 = *a2;
  v40 = v28 - *a2;
  v41 = 0xAAAAAAAAAAAAAAABLL * (v40 >> 3) + 1;
  if (v41 > 0xAAAAAAAAAAAAAAALL)
  {
LABEL_50:
    sub_1D0C5663C();
  }

  if (0x5555555555555556 * ((v6 - v39) >> 3) > v41)
  {
    v41 = 0x5555555555555556 * ((v6 - v39) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((v6 - v39) >> 3) >= 0x555555555555555)
  {
    v42 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v42 = v41;
  }

  if (v42)
  {
    sub_1D0E0AE9C(v42);
  }

  v43 = (8 * (v40 >> 3));
  v44 = a1[7];
  *v43 = *v36;
  v43[1] = v36[1];
  v43[2] = v44;
  v38 = v43 + 3;
  v45 = v43 - v40;
  memcpy(v43 - v40, v39, v40);
  *a2 = v45;
  a2[1] = v38;
  a2[2] = 0;
  if (v39)
  {
    operator delete(v39);
  }

LABEL_49:
  a2[1] = v38;
}

void sub_1D0E0DE18(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_1D0E0DE34(uint64_t a1, double *a2, int a3)
{
  v6 = (*(*a1 + 88))(a1);
  v7 = a2[3];
  v8 = a2[4];
  v10 = v8 * v9 + v7 * v6;
  v11 = a2[5];
  v13 = v10 + v11 * v12;
  if (a3)
  {
    if (a3 == 2)
    {
      if (fabs(v13) < 2.22044605e-16)
      {
        goto LABEL_20;
      }
    }

    else if (a3 == 1 && v13 <= 0.0)
    {
      goto LABEL_20;
    }
  }

  else if (v13 >= 0.0)
  {
    goto LABEL_20;
  }

  v14 = *(a1 + 16);
  v15 = *(a1 + 32);
  v16 = v14[1];
  v17 = *v15 - *v14;
  v18 = v15[1] - v16;
  v19 = v7 * v18 - v8 * v17;
  if (fabs(v19) >= 2.22044605e-16)
  {
    v20 = *v14 - *a2;
    v21 = v16 - a2[1];
    v22 = (v20 * v8 - v21 * v7) / v19;
    if (v22 >= 0.0 && v22 <= 1.0)
    {
      v24 = (v17 * -v21 + v20 * v18) / v19;
      if (v24 >= 0.0)
      {
        v25 = a2[2] + v24 * v11;
        if (v25 >= *(a1 + 48) && v25 <= *(a1 + 56))
        {
          v28 = *&v24 & 0xFFFFFFFFFFFFFF00;
          v27 = LOBYTE(v24);
          return v28 | v27;
        }
      }
    }
  }

LABEL_20:
  v27 = 0;
  v28 = 0;
  return v28 | v27;
}

double sub_1D0E0DFC8(uint64_t a1, double *a2)
{
  v2 = *(a1 + 16);
  v3 = *v2;
  v4 = v2[1];
  v5 = *a2 - *v2;
  v6 = a2[1] - v4;
  v7 = *(a1 + 32);
  v8 = *v7 - v3;
  v9 = v7[1] - v4;
  v10 = 1.0 / sqrt(v9 * v9 + v8 * v8);
  return v6 * (v9 * v10) + v5 * (v8 * v10) + (a2[2] - *(a1 + 48)) * (v10 * 0.0);
}

void sub_1D0E0E0E4(uint64_t a1)
{
  sub_1D0E0E3B4((a1 - 8));

  JUMPOUT(0x1D387ECA0);
}

double *sub_1D0E0E1C4(double *result, double *a2)
{
  v2 = result[3];
  if (v2 >= *a2)
  {
    v2 = *a2;
  }

  result[3] = v2;
  v3 = result[4];
  if (v3 >= a2[1])
  {
    v3 = a2[1];
  }

  result[4] = v3;
  v4 = result[5];
  if (v4 >= a2[2])
  {
    v4 = a2[2];
  }

  result[5] = v4;
  v5 = *a2;
  v6 = result[1];
  if (*result > *a2)
  {
    v5 = *result;
  }

  *result = v5;
  v7 = a2[1];
  if (v6 > v7)
  {
    v7 = v6;
  }

  result[1] = v7;
  v8 = result[2];
  if (v8 <= a2[2])
  {
    v8 = a2[2];
  }

  result[2] = v8;
  return result;
}

void sub_1D0E0E30C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F4CEC980;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1D387ECA0);
}

void *sub_1D0E0E3B4(void *a1)
{
  *a1 = &unk_1F4CEC8A8;
  a1[1] = &unk_1F4CEC940;
  v2 = a1[5];
  if (v2)
  {
    sub_1D0B7CAB8(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    sub_1D0B7CAB8(v3);
  }

  return a1;
}

uint64_t sub_1D0E0E42C(uint64_t a1)
{
  *a1 = &unk_1F4CEC828;
  *(a1 + 8) = &unk_1F4CEC868;
  v3 = (a1 + 16);
  sub_1D0E0D3F0(&v3);
  return a1;
}

void sub_1D0E0E4A4(uint64_t a1)
{
  *a1 = &unk_1F4CEC828;
  *(a1 + 8) = &unk_1F4CEC868;
  v1 = (a1 + 16);
  sub_1D0E0D3F0(&v1);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0E0E56C(uint64_t a1)
{
  *(a1 - 8) = &unk_1F4CEC828;
  *a1 = &unk_1F4CEC868;
  v1 = (a1 + 8);
  sub_1D0E0D3F0(&v1);
}

void sub_1D0E0E5DC(uint64_t **a1, unint64_t a2)
{
  v4 = a1 + 1;
  v3 = a1[1];
  if (v3)
  {
    v5 = v4;
    v6 = v3;
    do
    {
      v7 = v6[4];
      v8 = v7 >= a2;
      v9 = v7 < a2;
      if (v8)
      {
        v5 = v6;
      }

      v6 = v6[v9];
    }

    while (v6);
    if (v5 != v4 && v5[4] <= a2)
    {
      v10 = v5[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        v12 = v5;
        do
        {
          v11 = v12[2];
          v13 = *v11 == v12;
          v12 = v11;
        }

        while (!v13);
      }

      if (*a1 == v5)
      {
        *a1 = v11;
      }

      a1[2] = (a1[2] - 1);
      sub_1D0D4B3C4(v3, v5);

      operator delete(v5);
    }
  }
}

void *sub_1D0E0E6B0(void *a1)
{
  *a1 = &unk_1F4CECAA8;
  a1[12] = &unk_1F4CEC730;
  sub_1D0E0BA98((a1 + 15));
  return a1;
}

void sub_1D0E0E718(void *a1)
{
  *a1 = &unk_1F4CECAA8;
  a1[12] = &unk_1F4CEC730;
  sub_1D0E0BA98((a1 + 15));

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0E0E7A0(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 24))(v3, a2);
  if (!sub_1D0E0AB5C(v3, (a1 + 16)))
  {
    sub_1D0E0C398((a1 + 96));
  }
}

uint64_t sub_1D0E0E810(uint64_t a1, uint64_t a2)
{
  *&result = COERCE_DOUBLE((*(*a2 + 104))(a2, a1 + 16, *(a1 + 64)));
  if ((v5 & 1) != 0 && *(a1 + 72) > *&result && *(a1 + 88) != a2)
  {
    *(a1 + 72) = *&result;
    *(a1 + 80) = a2;
  }

  return result;
}

uint64_t sub_1D0E0E888(uint64_t a1, uint64_t a2)
{
  *&result = COERCE_DOUBLE((*(*a2 + 104))(a2, a1 + 16, *(a1 + 64)));
  if ((v5 & 1) != 0 && *(a1 + 72) > *&result && *(a1 + 88) != a2)
  {
    *(a1 + 72) = *&result;
    *(a1 + 80) = a2;
  }

  return result;
}

__n128 sub_1D0E0E924(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = 0x200000002;
  *(a1 + 24) = 0x200000002;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CE0268;
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
  if (v4 > 2)
  {
    v17 = "this->max_num_rows_ >= A.num_rows_";
    v18 = 616;
    goto LABEL_16;
  }

  if (v3 >= 3)
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

void sub_1D0E0EAA4(uint64_t a1)
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

__n128 sub_1D0E0EBD0(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = 0x200000001;
  *(a1 + 24) = 0x200000001;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CECB50;
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
  if (v4 > 1)
  {
    v17 = "this->max_num_rows_ >= A.num_rows_";
    v18 = 616;
    goto LABEL_16;
  }

  if (v3 >= 3)
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

void sub_1D0E0ED18(void *a1)
{
  if (a1)
  {
    sub_1D0E0ED18(*a1);
    sub_1D0E0ED18(a1[1]);
    sub_1D0BCC0B4(a1 + 4);

    operator delete(a1);
  }
}

uint64_t sub_1D0E0ED6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  for (i = *(a2 + 8); v2 != a1 && i != a2; i = *(i + 8))
  {
    v5 = *(v2 + 16);
    v6 = *(i + 16);
    if (v5 != v6)
    {
      if (v5 < v6)
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return 1;
      }
    }

    v2 = *(v2 + 8);
  }

  if (v2 == a1)
  {
    return (i == a2) - 1;
  }

  else
  {
    return 1;
  }
}

void sub_1D0E0EDE4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F4CECB98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0E0EE38(uint64_t result)
{
  *(result + 96) = &unk_1F4CD5E28;
  *(result + 32) = &unk_1F4CD5E28;
  return result;
}

uint64_t raven::GnssMeasurementPreprocessor::Configure(uint64_t a1, uint64_t *a2)
{
  if (*a1 == 1)
  {
    v19 = 12;
    v18 = 3;
    cnprint::CNPrinter::Print(&v19, &v18, "#gmp,configured more than once");
  }

  *a1 = 0;
  v4 = *a2;
  if (!*a2)
  {
    v17 = 12;
    v16 = 4;
    cnprint::CNPrinter::Print(&v17, &v16, "#gmp,configured with null raven parameters");
    return 0xFFFFFFFFLL;
  }

  if ((*(v4 + 33) & 1) == 0)
  {
    v15 = 12;
    v14 = 4;
    cnprint::CNPrinter::Print(&v15, &v14, "#gmp,configured with uninitialized raven parameters");
    return 0xFFFFFFFFLL;
  }

  v5 = *(v4 + 3128);
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v5 <= 90.0 ? (v6 = v5 < -10.0) : (v6 = 1), v6))
  {
    v13 = 12;
    v12 = 4;
    cnprint::CNPrinter::Print(&v13, &v12, "#gmp,Configure() failed. Invalid local ionosphere model minimum satellite elevation threshold,thresh,%.2lf");
    return 0xFFFFFFFFLL;
  }

  *(a1 + 2328) = v5;
  v8 = raven::GnssReceiverBandCorrectionsManager::Configure((a1 + 1280), v4);
  v9 = *a2;
  if (*(*a2 + 578) == 1)
  {
    if (*(a1 + 2600) == 1)
    {
      v8 = sub_1D0BCB594(a1 + 2560);
      v9 = *a2;
    }

    *(a1 + 2552) = v9;
    *(a1 + 2560) = 0u;
    *(a1 + 2576) = 0u;
    *(a1 + 2592) = 1065353216;
    *(a1 + 2600) = 1;
    v9 = *a2;
  }

  v10 = *(v9 + 552);
  if (v10 <= 2)
  {
    switch(v10)
    {
      case 0:
        v11 = 0;
        goto LABEL_35;
      case 1:
        v11 = raven::GNSSUncertaintyScaling::KarooGNSSUncertaintyWrapper::Instance(v8);
        goto LABEL_35;
      case 2:
        v11 = raven::GNSSUncertaintyScaling::EurekaGNSSUncertaintyWrapper::Instance(v8);
        goto LABEL_35;
    }

LABEL_31:
    *(a1 + 8) = v9;
LABEL_36:
    *(a1 + 1056) = *(v9 + 588);
    *(a1 + 1057) = *(v9 + 597);
    goto LABEL_37;
  }

  if (v10 > 4)
  {
    if (v10 == 5)
    {
      v11 = raven::GNSSUncertaintyScaling::Fire7orNewerWatchGNSSUncertaintyWrapper::Instance(v8);
      goto LABEL_35;
    }

    if (v10 == 6)
    {
      v11 = raven::GNSSUncertaintyScaling::Indus25GNSSUncertaintyWrapper::Instance(v8);
      goto LABEL_35;
    }

    goto LABEL_31;
  }

  if (v10 == 3)
  {
    v11 = raven::GNSSUncertaintyScaling::Fire6orOlderGNSSUncertaintyWrapper::Instance(v8);
  }

  else
  {
    v11 = raven::GNSSUncertaintyScaling::Fire7orNewerPhoneGNSSUncertaintyWrapper::Instance(v8);
  }

LABEL_35:
  *(a1 + 2608) = v11;
  v9 = *a2;
  *(a1 + 8) = *a2;
  if (v9)
  {
    goto LABEL_36;
  }

LABEL_37:
  result = 0;
  *a1 = 1;
  return result;
}

uint64_t raven::GnssMeasurementPreprocessor::GetTimeEstimateNoBitSync@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (*(result + 8) == *result)
  {
    v3 = 0;
    v2 = a2;
  }

  else
  {
    *a2 = **result;
    v2 = a2 + 16;
    v3 = 1;
  }

  *v2 = 0;
  a2[24] = v3;
  return result;
}

BOOL raven::GnssMeasurementPreprocessor::IsSvIdPermitted(uint64_t a1)
{
  if (*(a1 + 24) != 4)
  {
    return 1;
  }

  v1 = *(a1 + 28) - 1;
  return (v1 >= 0x3F || ((0x7C0000000000001FuLL >> v1) & 1) == 0) && v1 < 0x3F;
}

void raven::GnssMeasurementPreprocessor::UpdateMeasurementPropagationTimeUsingDwellEndTimes(raven::GnssMeasurementPreprocessor *this, const raven::GnssMeasurementDataEvent *a2)
{
  if ((*this & 1) == 0 || (v31 = (*(*a2 + 16))(a2), v32 = v4, v7 = CNTimeSpan::operator-(this + 274, &v31, v5, v6), v9 = v8 + v7, v9 <= 0.0))
  {
    *(this + 288) = 0;
    return;
  }

  __p = 0;
  v35 = 0;
  v36 = 0;
  LOBYTE(v31) = 0;
  v32 = 0.0;
  v33 = 1;
  sub_1D0BC3E34(&__p);
  v37 = 1;
  v11 = *(a2 + 23);
  v12 = *(a2 + 24);
  if (v11 == v12)
  {
    goto LABEL_27;
  }

  v13 = -1;
  do
  {
    v14 = *(v11 + 8);
    v15 = v14 > 9;
    v16 = (1 << v14) & 0x2BB;
    if (v15 || v16 == 0)
    {
      if ((*(*(this + 1) + 3808) & 1) != 0 || !*(v11 + 197))
      {
        if (!*(v11 + 197))
        {
          goto LABEL_22;
        }
      }

      else if (*(v11 + 196) == 1)
      {
        goto LABEL_22;
      }
    }

    else if ((*(v11 + 197) & 1) == 0)
    {
      goto LABEL_22;
    }

    v18 = *(v11 + 24) - *(v11 + 32);
    if (v18 >= 0)
    {
      v29[0] = (*(*a2 + 16))(a2);
      v29[1] = v19;
      *v20.i64 = v18 * 0.000000001;
      v28[0] = 0;
      v28[1] = 0;
      *v22.i64 = CNTimeSpan::SetTimeSpan(v28, 0, v20, v21);
      *&v30[0] = CNTimeSpan::operator+(v29, v28, v22, v23);
      v30[1] = v24;
      if (!sub_1D0B7C8AC(this + 274, v30))
      {
        if (*(*(this + 1) + 841) == 1)
        {
          if (v13 <= v18)
          {
            v13 = v18;
          }
        }

        else
        {
          *v29 = v18;
          sub_1D0BC3F08(&v31, v29, 1.0);
        }
      }
    }

LABEL_22:
    v11 += 200;
  }

  while (v11 != v12);
  if (v13 > 0)
  {
    v25 = (v13 * 0x431BDE82D7B634DBuLL) >> 64;
    goto LABEL_32;
  }

LABEL_27:
  if (v32 <= 0.0)
  {
    LOWORD(v30[0]) = 12;
    LOBYTE(v29[0]) = 3;
    cnprint::CNPrinter::Print(v30, v29, "#gmp,Measurement propagation time offset is not based off dwell end-times", v32);
    v27 = (v9 * 1000.0);
  }

  else
  {
    v10.n128_u64[0] = 0x4049000000000000;
    sub_1D0BC4124(&v31, v10);
    if (v26 >= 0.0)
    {
      v25 = (v26 * 0x431BDE82D7B634DBuLL) >> 64;
LABEL_32:
      v27 = v25 >> 18;
    }

    else
    {
      v27 = 0;
    }
  }

  *(this + 288) = 1000000 * v27;
  if (__p)
  {
    v35 = __p;
    operator delete(__p);
  }
}

void sub_1D0E0F3D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t raven::GnssMeasurementPreprocessor::HandleEvent(cnnavigation::SphericalHarmonicsIonosphereModel **this, const raven::RavenGnssAssistanceFileEvent *a2)
{
  if ((*this & 1) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
    {
      LOWORD(v19) = 12;
      LOBYTE(v18) = 1;
      cnprint::CNPrinter::Print(&v19, &v18, "#gmp,#rof,GNSS pre-processor not configured,failed to handle RavenGnssAssistanceFileEvent");
    }

    return 0;
  }

  v3 = this[318];
  if (!v3)
  {
    if (cnprint::CNPrinter::GetLogLevel(0) <= 1)
    {
      LOWORD(v19) = 12;
      LOBYTE(v18) = 1;
      cnprint::CNPrinter::Print(&v19, &v18, "#gmp,#rof,ionosphere model not configured,failed to handle RavenGnssAssistanceFileEvent");
    }

    return 0;
  }

  if (*(a2 + 16) == *(a2 + 15))
  {
    LOWORD(v19) = 12;
    LOBYTE(v18) = 4;
    cnprint::CNPrinter::Print(&v19, &v18, "#gmp,#rof,Handle RavenGnssAssistanceFileEvent,iono parameters empty");
    return 0;
  }

  v5 = (*(*v3 + 32))(v3);
  v6 = *(a2 + 15);
  v7 = *(a2 + 16);
  if (v5)
  {
    v8 = *(this[318] + 4);
    if (v8 != 0x80FE03F80FE03F81 * ((v7 - v6) >> 6))
    {
      LOWORD(v19) = 12;
      LOBYTE(v18) = 2;
      cnprint::CNPrinter::Print(&v19, &v18, "#gmp,#rof,Handle RavenGnssAssistanceFileEvent,received number of iono layers %zu mismatch %zu,resetting", 0x80FE03F80FE03F81 * ((v7 - v6) >> 6), v8);
      v9 = this[318];
      if (*(v9 + 4))
      {
        sub_1D0C672C8(v9 + 8, *(v9 + 3));
        *(v9 + 3) = 0;
        v10 = *(v9 + 2);
        if (v10)
        {
          for (i = 0; i != v10; ++i)
          {
            *(*(v9 + 1) + 8 * i) = 0;
          }
        }

        *(v9 + 4) = 0;
      }

      v6 = *(a2 + 15);
      v7 = *(a2 + 16);
    }
  }

  if (v6 != v7)
  {
    while (!cnnavigation::SphericalHarmonicsIonosphereModel::UpdateParameters(this[318], v6))
    {
      v6 = (v6 + 8256);
      if (v6 == v7)
      {
        goto LABEL_15;
      }
    }

    return 0;
  }

LABEL_15:
  if (*(this + 2296) == 1)
  {
    v19 = *(this + 139);
  }

  else
  {
    *&v19 = 0;
    *(&v19 + 1) = 0x7FF8000000000000;
  }

  ApplicabilityTime = cnnavigation::SphericalHarmonicsIonosphereModel::GetApplicabilityTime(this[318]);
  v15 = v14;
  v18 = 12;
  v17 = 3;
  IsValid = cnnavigation::SphericalHarmonicsIonosphereModel::IsValid(this[318], &v19);
  cnprint::CNPrinter::Print(&v18, &v17, "#gmp,#rof,Updated SH ionosphere model parameters,is_valid,%d,num_layers,%zu,iono_applicability_time,%.3lf,iono_age_sec,%.3lf,age_thld_sec,%.1f", IsValid, *(this[318] + 4), v15 + ApplicabilityTime, *(&v19 + 1) + v19 - (v15 + ApplicabilityTime), *(this[318] + 7) + *(this[318] + 6));
  return 1;
}

double raven::GnssMeasurementPreprocessor::Reset(raven::GnssMeasurementPreprocessor *this)
{
  LOWORD(v36) = 12;
  LOBYTE(v41) = 3;
  cnprint::CNPrinter::Print(&v36, &v41, "#gmp,Reset invoked");
  *(this + 16) = 0;
  memset(v37, 0, 112);
  v36 = &unk_1F4CEF598;
  *(this + 2) = 0uLL;
  *(this + 3) = 0u;
  v2 = *&v37[32];
  v3 = *&v37[48];
  v4 = *&v37[64];
  *(this + 14) = *&v37[80];
  *(this + 5) = v3;
  *(this + 6) = v4;
  *(this + 4) = v2;
  if ((this + 24) != &v36)
  {
    sub_1D0BBD668(this + 15, 0, 0, 0);
  }

  v36 = &unk_1F4CEF598;
  v41 = &v37[88];
  sub_1D0BBBD80(&v41);
  memset(&v37[96], 0, 64);
  memset(&v37[48], 0, 40);
  *&v37[88] = 0x7FF8000000000000;
  *(this + 184) = 0uLL;
  *(this + 168) = 0uLL;
  *(this + 152) = 0uLL;
  v5 = *&v37[48];
  v6 = *&v37[64];
  v7 = *&v37[80];
  *(this + 248) = *&v37[96];
  *(this + 232) = v7;
  *(this + 216) = v6;
  *(this + 200) = v5;
  v8 = *&v37[112];
  v9 = *&v37[128];
  v10 = *&v37[144];
  *(this + 78) = 0;
  *(this + 280) = v9;
  *(this + 296) = v10;
  *(this + 264) = v8;
  *&v37[272] = 0;
  *&v37[192] = 0;
  memset(v37, 0, 88);
  v36 = &unk_1F4CEF748;
  memset(&v37[96], 0, 88);
  *&v37[88] = 0x7FF8000000000000;
  *&v37[184] = 0x7FF8000000000000;
  *&v37[200] = vdupq_n_s64(0x7FF8000000000000uLL);
  *&v37[216] = *&v37[200];
  *&v37[232] = *&v37[200];
  *&v37[248] = *&v37[200];
  *&v37[264] = 0x7FF8000000000000;
  *&v37[280] = *&v37[200];
  *&v37[296] = *&v37[200];
  *&v37[312] = *&v37[200];
  *&v37[328] = *&v37[200];
  *&v37[344] = 0x7FF8000000000000;
  memcpy(this + 536, v37, 0x160uLL);
  *(this + 111) = 0;
  *(this + 112) = 0x3FF0000000000000;
  *(this + 904) = 0u;
  *(this + 920) = 0u;
  *(this + 936) = 0u;
  *(this + 952) = 0u;
  *(this + 121) = 0;
  *(this + 977) = 0;
  v11 = *(this + 1);
  v36 = v37;
  *v37 = 0uLL;
  *&v37[32] = 0;
  *&v37[16] = &v37[24];
  memset(&v37[48], 0, 18);
  *&v37[40] = &v37[48];
  v37[72] = 0;
  v37[104] = 0;
  v37[112] = 0;
  v37[136] = 0;
  v37[144] = 0;
  v37[160] = 0;
  v37[168] = 0;
  v37[184] = 0;
  v37[192] = 0;
  v37[216] = 0;
  v37[224] = 0;
  v37[248] = 0;
  v37[256] = 0;
  v37[280] = 0;
  if (v11)
  {
    v37[64] = *(v11 + 588);
    v37[65] = *(v11 + 597);
  }

  v12 = this + 992;
  sub_1D0DC5F04(this + 984, *(this + 124));
  v13 = *v37;
  *(this + 123) = v36;
  *(this + 124) = v13;
  v14 = *&v37[8];
  *(this + 125) = *&v37[8];
  if (v14)
  {
    *(v13 + 16) = v12;
    v36 = v37;
    *v37 = 0uLL;
  }

  else
  {
    *(this + 123) = v12;
  }

  v15 = this + 1016;
  sub_1D0BCB540(this + 1008, *(this + 127));
  v16 = *&v37[24];
  *(this + 126) = *&v37[16];
  *(this + 127) = v16;
  v17 = *&v37[32];
  *(this + 128) = *&v37[32];
  if (v17)
  {
    *(v16 + 16) = v15;
    *&v37[16] = &v37[24];
    *&v37[24] = 0;
    *&v37[32] = 0;
  }

  else
  {
    *(this + 126) = v15;
  }

  v18 = this + 1040;
  sub_1D0BCB540(this + 1032, *(this + 130));
  v19 = *&v37[48];
  *(this + 129) = *&v37[40];
  *(this + 130) = v19;
  v20 = *&v37[56];
  *(this + 131) = *&v37[56];
  if (v20)
  {
    v19[2] = v18;
    v19 = 0;
    *&v37[40] = &v37[48];
    *&v37[48] = 0uLL;
  }

  else
  {
    *(this + 129) = v18;
  }

  v21 = *&v37[240];
  *(this + 76) = *&v37[224];
  *(this + 77) = v21;
  *(this + 78) = *&v37[256];
  *(this + 1257) = *&v37[265];
  v22 = *&v37[176];
  *(this + 72) = *&v37[160];
  *(this + 73) = v22;
  v23 = *&v37[208];
  *(this + 74) = *&v37[192];
  *(this + 75) = v23;
  v24 = *&v37[112];
  *(this + 68) = *&v37[96];
  *(this + 69) = v24;
  v25 = *&v37[144];
  *(this + 70) = *&v37[128];
  *(this + 71) = v25;
  v26 = *&v37[80];
  *(this + 66) = *&v37[64];
  *(this + 67) = v26;
  sub_1D0BCB540(&v37[40], v19);
  sub_1D0BCB540(&v37[16], *&v37[24]);
  sub_1D0DC5F04(&v36, *v37);
  *(this + 2208) = 0;
  *(this + 553) = -1;
  *(this + 2216) = 0;
  *(this + 555) = -1;
  *(this + 137) = 0u;
  if (*(this + 520) == 1)
  {
    *(this + 40) = &unk_1F4CEE030;
    *(this + 520) = 0;
  }

  *(this + 288) = 0;
  if (*(this + 2296) == 1)
  {
    *(this + 2296) = 0;
  }

  *(this + 2312) = 0uLL;
  *(this + 2336) = 1;
  raven::GnssReceiverBandCorrectionsManager::GnssReceiverBandCorrectionsManager(&v36, *(this + 1));
  *(this + 160) = v36;
  v27 = this + 1296;
  sub_1D0BCB540(this + 1288, *(this + 162));
  v28 = *&v37[8];
  *(this + 161) = *v37;
  *(this + 162) = v28;
  v29 = *&v37[16];
  *(this + 163) = *&v37[16];
  if (v29)
  {
    *(v28 + 16) = v27;
    *v37 = &v37[8];
    *&v37[8] = 0;
    *&v37[16] = 0;
  }

  else
  {
    *(this + 161) = v27;
  }

  v30 = *&v37[24];
  *&v37[24] = 0;
  sub_1D0DE2F74(this + 164, v30);
  v31 = *&v37[32];
  *&v37[32] = 0;
  sub_1D0DE2FC0(this + 165, v31);
  if (*(this + 2160) == v38)
  {
    if (*(this + 2160))
    {
      memcpy(this + 1336, &v37[48], 0x334uLL);
    }
  }

  else if (*(this + 2160))
  {
    *(this + 2160) = 0;
  }

  else
  {
    *(this + 166) = &unk_1F4CEE948;
    memcpy(this + 1336, &v37[48], 0x334uLL);
    *(this + 2160) = 1;
  }

  *(this + 273) = v40;
  *(this + 2168) = v39;
  sub_1D0DE2FC0(&v37[32], 0);
  v32 = *&v37[24];
  *&v37[24] = 0;
  if (v32)
  {
    v33 = sub_1D0BCB594(v32);
    MEMORY[0x1D387ECA0](v33, 0x10E0C401B4558CBLL);
  }

  sub_1D0BCB540(v37, *&v37[8]);
  v35 = *(this + 1);
  if (v35)
  {
    if (*(v35 + 578) == 1)
    {
      if (*(this + 2600))
      {
        sub_1D0BCB594(this + 2560);
        v35 = *(this + 1);
        *(this + 319) = v35;
        result = 0.0;
        *(this + 160) = 0u;
        *(this + 161) = 0u;
        *(this + 648) = 1065353216;
        *(this + 2600) = 1;
        if (!v35)
        {
          return result;
        }
      }

      else
      {
        *(this + 319) = v35;
        result = 0.0;
        *(this + 160) = 0u;
        *(this + 161) = 0u;
        *(this + 648) = 1065353216;
        *(this + 2600) = 1;
      }
    }

    if (*(v35 + 2544) == 1)
    {
      operator new();
    }
  }

  return result;
}

void sub_1D0E0FDEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  *(v22 - 88) = &a22;
  sub_1D0BBBD80((v22 - 88));
  _Unwind_Resume(a1);
}

uint64_t *sub_1D0E0FE10(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t **a5)
{
  result = sub_1D0C5112C(a1, a2, a3, **a5);
  v11 = **a5;
  v12 = *a3;
  v13 = *(v11 + 16 * *a4);
  if (v13)
  {
    v14 = *(v13 + 328);
    v15 = v14 == *(v13 + 336) || *(v14 + 189) != 1;
  }

  else
  {
    v15 = -1;
  }

  v16 = *(v11 + 16 * *a3);
  if (v16)
  {
    v17 = *(v16 + 328);
    v18 = v17 == *(v16 + 336) || *(v17 + 189) != 1;
  }

  else
  {
    v18 = -1;
  }

  v19 = v15 <= v18;
  if (v15 == v18)
  {
    if (v13)
    {
      v20 = v16 == 0;
    }

    else
    {
      v20 = 1;
    }

    if (v20)
    {
      return result;
    }

    v19 = *(v13 + 264) <= *(v16 + 264);
  }

  if (v19)
  {
    return result;
  }

  *a3 = *a4;
  *a4 = v12;
  v21 = *a2;
  v22 = *(v11 + 16 * *a3);
  if (v22)
  {
    v23 = *(v22 + 328);
    v24 = v23 == *(v22 + 336) || *(v23 + 189) != 1;
  }

  else
  {
    v24 = -1;
  }

  v25 = *(v11 + 16 * *a2);
  if (v25)
  {
    v26 = *(v25 + 328);
    v27 = v26 == *(v25 + 336) || *(v26 + 189) != 1;
  }

  else
  {
    v27 = -1;
  }

  v28 = v24 <= v27;
  if (v24 == v27)
  {
    if (v22)
    {
      v29 = v25 == 0;
    }

    else
    {
      v29 = 1;
    }

    if (v29)
    {
      return result;
    }

    v28 = *(v22 + 264) <= *(v25 + 264);
  }

  if (v28)
  {
    return result;
  }

  *a2 = *a3;
  *a3 = v21;
  v30 = *a1;
  v31 = (v11 + 16 * *a1);
  v32 = *(v11 + 16 * *a2);
  if (v32)
  {
    v33 = *(v32 + 328);
    v34 = v33 == *(v32 + 336) || *(v33 + 189) != 1;
  }

  else
  {
    v34 = -1;
  }

  v35 = *v31;
  if (v35)
  {
    v36 = *(v35 + 328);
    v37 = v36 == *(v35 + 336) || *(v36 + 189) != 1;
  }

  else
  {
    v37 = -1;
  }

  v38 = v34 <= v37;
  if (v34 != v37)
  {
    goto LABEL_49;
  }

  if (v32 && v35)
  {
    v38 = *(v32 + 264) <= *(v35 + 264);
LABEL_49:
    if (!v38)
    {
      *a1 = *a2;
      *a2 = v30;
    }
  }

  return result;
}

uint64_t *sub_1D0E10034(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t **a6)
{
  result = sub_1D0E0FE10(a1, a2, a3, a4, a6);
  v13 = **a6;
  v14 = *a4;
  v15 = *(v13 + 16 * *a5);
  if (v15)
  {
    v16 = *(v15 + 328);
    v17 = v16 == *(v15 + 336) || *(v16 + 189) != 1;
  }

  else
  {
    v17 = -1;
  }

  v18 = *(v13 + 16 * *a4);
  if (v18)
  {
    v19 = *(v18 + 328);
    v20 = v19 == *(v18 + 336) || *(v19 + 189) != 1;
  }

  else
  {
    v20 = -1;
  }

  v21 = v17 <= v20;
  if (v17 == v20)
  {
    if (v15)
    {
      v22 = v18 == 0;
    }

    else
    {
      v22 = 1;
    }

    if (v22)
    {
      return result;
    }

    v21 = *(v15 + 264) <= *(v18 + 264);
  }

  if (v21)
  {
    return result;
  }

  *a4 = *a5;
  *a5 = v14;
  v23 = *a3;
  v24 = *(v13 + 16 * *a4);
  if (v24)
  {
    v25 = *(v24 + 328);
    v26 = v25 == *(v24 + 336) || *(v25 + 189) != 1;
  }

  else
  {
    v26 = -1;
  }

  v27 = *(v13 + 16 * *a3);
  if (v27)
  {
    v28 = *(v27 + 328);
    v29 = v28 == *(v27 + 336) || *(v28 + 189) != 1;
  }

  else
  {
    v29 = -1;
  }

  v30 = v26 <= v29;
  if (v26 == v29)
  {
    if (v24)
    {
      v31 = v27 == 0;
    }

    else
    {
      v31 = 1;
    }

    if (v31)
    {
      return result;
    }

    v30 = *(v24 + 264) <= *(v27 + 264);
  }

  if (v30)
  {
    return result;
  }

  *a3 = *a4;
  *a4 = v23;
  v32 = *a2;
  v33 = *(v13 + 16 * *a3);
  if (v33)
  {
    v34 = *(v33 + 328);
    v35 = v34 == *(v33 + 336) || *(v34 + 189) != 1;
  }

  else
  {
    v35 = -1;
  }

  v36 = *(v13 + 16 * *a2);
  if (v36)
  {
    v37 = *(v36 + 328);
    v38 = v37 == *(v36 + 336) || *(v37 + 189) != 1;
  }

  else
  {
    v38 = -1;
  }

  v39 = v35 <= v38;
  if (v35 == v38)
  {
    if (!v33 || !v36)
    {
      return result;
    }

    v39 = *(v33 + 264) <= *(v36 + 264);
  }

  if (v39)
  {
    return result;
  }

  *a2 = *a3;
  *a3 = v32;
  v40 = *a1;
  v41 = (v13 + 16 * *a1);
  v42 = *(v13 + 16 * *a2);
  if (v42)
  {
    v43 = *(v42 + 328);
    v44 = v43 == *(v42 + 336) || *(v43 + 189) != 1;
  }

  else
  {
    v44 = -1;
  }

  v45 = *v41;
  if (v45)
  {
    v46 = *(v45 + 328);
    v47 = v46 == *(v45 + 336) || *(v46 + 189) != 1;
  }

  else
  {
    v47 = -1;
  }

  v48 = v44 <= v47;
  if (v44 != v47)
  {
    goto LABEL_64;
  }

  if (v42 && v45)
  {
    v48 = *(v42 + 264) <= *(v45 + 264);
LABEL_64:
    if (!v48)
    {
      *a1 = *a2;
      *a2 = v40;
    }
  }

  return result;
}

BOOL sub_1D0E102F0(uint64_t *a1, uint64_t *a2, uint64_t **a3)
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        sub_1D0C5112C(a1, a1 + 1, a2 - 1, **a3);
        return 1;
      case 4:
        sub_1D0E0FE10(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        sub_1D0E10034(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        return 1;
    }
  }

  else
  {
    if (v6 < 2)
    {
      return 1;
    }

    if (v6 == 2)
    {
      v7 = *(a2 - 1);
      v8 = **a3;
      v9 = *a1;
      v10 = (v8 + 16 * *a1);
      v11 = *(v8 + 16 * v7);
      if (v11)
      {
        v12 = *(v11 + 328);
        v13 = v12 == *(v11 + 336) || *(v12 + 189) != 1;
      }

      else
      {
        v13 = -1;
      }

      v36 = *v10;
      if (v36)
      {
        v37 = *(v36 + 328);
        v38 = v37 == *(v36 + 336) || *(v37 + 189) != 1;
      }

      else
      {
        v38 = -1;
      }

      v39 = v13 <= v38;
      if (v13 == v38)
      {
        if (v11)
        {
          v40 = v36 == 0;
        }

        else
        {
          v40 = 1;
        }

        if (v40)
        {
          return 1;
        }

        v39 = *(v11 + 264) <= *(v36 + 264);
      }

      if (!v39)
      {
        *a1 = v7;
        *(a2 - 1) = v9;
      }

      return 1;
    }
  }

  v14 = a1 + 2;
  sub_1D0C5112C(a1, a1 + 1, a1 + 2, **a3);
  v15 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v16 = 0;
  v17 = 0;
  v18 = **a3;
  while (2)
  {
    v19 = *v15;
    v20 = *(v18 + 16 * *v15);
    if (v20)
    {
      v21 = *(v20 + 328);
      v22 = v21 == *(v20 + 336) || *(v21 + 189) != 1;
    }

    else
    {
      v22 = -1;
    }

    v23 = *(v18 + 16 * *v14);
    if (v23)
    {
      v24 = *(v23 + 328);
      v25 = v24 == *(v23 + 336) || *(v24 + 189) != 1;
    }

    else
    {
      v25 = -1;
    }

    v26 = v22 <= v25;
    if (v22 == v25)
    {
      if (v20)
      {
        v27 = v23 == 0;
      }

      else
      {
        v27 = 1;
      }

      if (v27)
      {
        goto LABEL_51;
      }

      v26 = *(v20 + 264) <= *(v23 + 264);
    }

    if (v26)
    {
      goto LABEL_51;
    }

    *v15 = *v14;
    v28 = v16;
    while (1)
    {
      v29 = *(a1 + v28 + 8);
      if (v20)
      {
        v30 = *(v20 + 328);
        v31 = v30 == *(v20 + 336) || *(v30 + 189) != 1;
      }

      else
      {
        v31 = -1;
      }

      v32 = *(v18 + 16 * v29);
      if (v32)
      {
        v33 = *(v32 + 328);
        v34 = v33 == *(v32 + 336) || *(v33 + 189) != 1;
      }

      else
      {
        v34 = -1;
      }

      v35 = v31 <= v34;
      if (v31 != v34)
      {
        goto LABEL_46;
      }

      if (!v20 || !v32)
      {
        break;
      }

      v35 = *(v20 + 264) <= *(v32 + 264);
LABEL_46:
      if (v35)
      {
        goto LABEL_50;
      }

      --v14;
      *(a1 + v28 + 16) = v29;
      v28 -= 8;
      if (v28 == -16)
      {
        v14 = a1;
        goto LABEL_50;
      }
    }

    v14 = (a1 + v28 + 16);
LABEL_50:
    *v14 = v19;
    if (++v17 != 8)
    {
LABEL_51:
      v14 = v15;
      v16 += 8;
      if (++v15 == a2)
      {
        return 1;
      }

      continue;
    }

    return v15 + 1 == a2;
  }
}

uint64_t raven::RavenIntegrityEstimator::Configure(uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  v2 = *a2;
  if (*a2 && (*(v2 + 33) & 1) != 0)
  {
    *(a1 + 8) = v2;
    operator new();
  }

  LOWORD(v5) = 12;
  LOBYTE(v4) = 4;
  cnprint::CNPrinter::Print(&v5, &v4, "RavenIntegrityEstimator could not be configured.");
  return 0xFFFFFFFFLL;
}

uint64_t raven::RavenIntegrityEstimator::HandleEvent(raven::RavenIntegrityEstimator *this, const raven::ARSessionStatusEvent *a2)
{
  v3 = this;
  if (*(this + 288) != 1)
  {
    goto LABEL_31;
  }

  v4 = this + 296;
  v5 = (*(*(this + 37) + 16))(this + 296);
  v7 = v6;
  v8 = v6;
  this = (*(*a2 + 16))(a2);
  v10.n128_f64[0] = v9;
  if (v5)
  {
    v11 = 1;
  }

  else
  {
    v11 = (*&v7 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
  }

  if (!v11 || (!this ? (v12 = (*&v9 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) : (v12 = 1), !v12 || (v13 = v5 <= this, v5 == this)))
  {
    v13 = v8 <= v9;
  }

  if (v13)
  {
    goto LABEL_31;
  }

  if ((*(v3 + 288) & 1) == 0)
  {
    __assert_rtn("operator->", "optional.hpp", 1222, "this->is_initialized()");
  }

  if (*(v3 + 400) == *(a2 + 104))
  {
    LOWORD(__p[0]) = 12;
    LOBYTE(v37) = 2;
    v14 = (*(*v4 + 16))(v3 + 296, v10);
    v16 = v15 + v14;
    v17 = (*(*a2 + 16))(a2);
    cnprint::CNPrinter::Print(__p, &v37, "RavenIntegrityEstimator: Warning, AR Session Status out of order,t_curr,%.3lf,t_new,%.3lf", v16, v18 + v17);
  }

  else
  {
LABEL_31:
    if (!cnprint::CNPrinter::GetLogLevel(this))
    {
      v37 = 12;
      v36 = 0;
      v19 = (*(*a2 + 16))(a2);
      v21 = v20 + v19;
      sub_1D0E115B4(a2, __p);
      if (v35 >= 0)
      {
        v22 = __p;
      }

      else
      {
        v22 = __p[0];
      }

      cnprint::CNPrinter::Print(&v37, &v36, "RavenIntegrityEstimator: t,%.3lf Latest AR Session Status %s", v21, v22);
      if (v35 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (*(v3 + 288) == 1)
    {
      v23 = *(a2 + 8);
      v24 = *(a2 + 40);
      *(v3 + 20) = *(a2 + 24);
      *(v3 + 21) = v24;
      *(v3 + 19) = v23;
      v25 = *(a2 + 56);
      v26 = *(a2 + 72);
      v27 = *(a2 + 88);
      *(v3 + 400) = *(a2 + 104);
      *(v3 + 23) = v26;
      *(v3 + 24) = v27;
      *(v3 + 22) = v25;
    }

    else
    {
      *(v3 + 37) = &unk_1F4CEEF40;
      v28 = *(a2 + 8);
      v29 = *(a2 + 40);
      *(v3 + 20) = *(a2 + 24);
      *(v3 + 21) = v29;
      *(v3 + 19) = v28;
      v30 = *(a2 + 56);
      v31 = *(a2 + 72);
      v32 = *(a2 + 88);
      *(v3 + 400) = *(a2 + 104);
      *(v3 + 23) = v31;
      *(v3 + 24) = v32;
      *(v3 + 22) = v30;
      *(v3 + 288) = 1;
    }
  }

  return 0;
}

void sub_1D0E11598(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 raven::RavenIntegrityEstimator::HandleEvent(raven::RavenIntegrityEstimator *this, const raven::ActivityStateEvent *a2, raven::ActivityStateEvent *a3)
{
  if (!raven::ActivityStateChecker::HandleEvent(*(this + 199), a2, a3))
  {
    v6 = *(a3 + 104);
    *(this + 88) = *(a3 + 120);
    *(this + 72) = v6;
    result = *(a3 + 136);
    v7 = *(a3 + 152);
    v8 = *(a3 + 168);
    *(this + 19) = *(a3 + 23);
    *(this + 136) = v8;
    *(this + 120) = v7;
    *(this + 104) = result;
  }

  return result;
}

__n128 raven::RavenIntegrityEstimator::HandleEvent(raven::RavenIntegrityEstimator *this, const raven::AltitudeEvent *a2, raven::AltitudeEvent *a3)
{
  if (!raven::AltitudeChecker::HandleEvent(*(this + 202), a2, a3))
  {
    if (*(this + 160) == 1)
    {
      v6 = *(a3 + 8);
      v7 = *(a3 + 40);
      *(this + 12) = *(a3 + 24);
      *(this + 13) = v7;
      *(this + 11) = v6;
      result = *(a3 + 56);
      v8 = *(a3 + 72);
      v9 = *(a3 + 104);
      *(this + 16) = *(a3 + 88);
      *(this + 17) = v9;
      *(this + 14) = result;
      *(this + 15) = v8;
    }

    else
    {
      *(this + 21) = &unk_1F4CEEAB0;
      v10 = *(a3 + 8);
      v11 = *(a3 + 40);
      *(this + 12) = *(a3 + 24);
      *(this + 13) = v11;
      *(this + 11) = v10;
      result = *(a3 + 56);
      v12 = *(a3 + 72);
      v13 = *(a3 + 104);
      *(this + 16) = *(a3 + 88);
      *(this + 17) = v13;
      *(this + 14) = result;
      *(this + 15) = v12;
      *(this + 160) = 1;
    }
  }

  return result;
}

uint64_t raven::RavenIntegrityEstimator::HandleEvent(raven::GNSSPreprocessedMeasurementsChecker **this, const raven::GnssPreprocessedMeasurementsEvent *a2, uint64_t **a3)
{
  v5 = raven::GNSSPreprocessedMeasurementsChecker::HandleEvent(this[204], a2, a3);
  if (!v5)
  {
    v6 = a3[12];
    v7 = a3[13];
    if (v6 == v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = 0;
      do
      {
        if (*v6)
        {
          v8 += sub_1D0E117CC(*v6);
        }

        v6 += 2;
      }

      while (v6 != v7);
    }

    v9 = ((*a3)[2])(a3);
    v10 = *(this + 1584);
    this[195] = v9;
    this[196] = v11;
    *(this + 394) = v8;
    if ((v10 & 1) == 0)
    {
      *(this + 1584) = 1;
    }
  }

  return v5;
}

uint64_t sub_1D0E117CC(uint64_t a1)
{
  v1 = *(a1 + 328);
  v2 = *(a1 + 336);
  if (v1 != v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v7 = *(v1 + 100);
      if (v7 <= 0xA)
      {
        if (((1 << v7) & 0x544) != 0)
        {
          v8 = *(v1 + 96);
          if ((v8 - 2) < 4 || v8 == 0)
          {
            if ((v8 - 2) <= 2)
            {
              v4 = 1;
              if (v5)
              {
                return v4 & 1;
              }

              v5 = 0;
            }
          }

          else
          {
            v5 = 1;
            if (v4)
            {
              goto LABEL_30;
            }

            v4 = 0;
          }

          goto LABEL_24;
        }

        if (!*(v1 + 100))
        {
          goto LABEL_24;
        }
      }

      v10 = *(v1 + 96);
      if ((v10 - 2) < 4 || v10 == 0)
      {
        if ((v10 - 2) <= 2)
        {
          v6 = 1;
          if (v3)
          {
            goto LABEL_30;
          }

          v3 = 0;
        }
      }

      else
      {
        v3 = 1;
        if (v6)
        {
LABEL_30:
          v4 = 1;
          return v4 & 1;
        }

        v6 = 0;
      }

LABEL_24:
      v1 += 208;
      if (v1 == v2)
      {
        v4 = v3 & v6 | v5 & v4;
        return v4 & 1;
      }
    }
  }

  v4 = 0;
  return v4 & 1;
}

__n128 raven::RavenIntegrityEstimator::HandleEvent(raven::RavenIntegrityEstimator *this, const raven::TunnelBridgeNotificationEvent *a2, raven::TunnelBridgeNotificationEvent *a3, __n128 a4)
{
  result = raven::TunnelBridgeNotificationChecker::HandleEvent(*(this + 215), a2, a3, a4);
  if (!v7)
  {
    v23[0] = (*(*a3 + 16))(a3, result);
    v23[1] = v8;
    v22 = *(this + 456);
    v10 = CNTimeSpan::operator-(v23, &v22, v22, v9);
    if (*(this + 674) == 1 && (*(a3 + 226) & 1) == 0 && v11 + v10 <= 600.0)
    {
      v12 = *(this + 1536);
      *(this + 1544) = *(a3 + 8);
      if ((v12 & 1) == 0)
      {
        *(this + 1536) = 1;
      }
    }

    v13 = *(a3 + 24);
    *(this + 456) = *(a3 + 8);
    *(this + 472) = v13;
    v14 = *(a3 + 40);
    v15 = *(a3 + 56);
    v16 = *(a3 + 88);
    *(this + 520) = *(a3 + 72);
    *(this + 536) = v16;
    *(this + 488) = v14;
    *(this + 504) = v15;
    v17 = *(a3 + 104);
    v18 = *(a3 + 120);
    v19 = *(a3 + 152);
    *(this + 584) = *(a3 + 136);
    *(this + 600) = v19;
    *(this + 552) = v17;
    *(this + 568) = v18;
    result = *(a3 + 168);
    v20 = *(a3 + 184);
    v21 = *(a3 + 200);
    *(this + 660) = *(a3 + 212);
    *(this + 632) = v20;
    *(this + 648) = v21;
    *(this + 616) = result;
  }

  return result;
}

uint64_t raven::RavenIntegrityEstimator::HandleEvent(raven::TunnelEndPointAssistanceChecker **this, const raven::TunnelEndPointAssistanceEvent *a2, raven::TunnelEndPointAssistanceEvent *a3)
{
  if (raven::TunnelEndPointAssistanceChecker::HandleEvent(this[216], a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t raven::RavenIntegrityEstimator::Reset(uint64_t this)
{
  v108 = *MEMORY[0x1E69E9840];
  if (*this != 1)
  {
    return this;
  }

  v1 = this;
  v99 = 0;
  if (*(this + 288) == 1)
  {
    v100 = &unk_1F4CEEF40;
    v2 = *(this + 384);
    v105 = *(this + 368);
    v106 = v2;
    v107 = *(this + 400);
    v3 = *(this + 320);
    v101 = *(this + 304);
    v102 = v3;
    v4 = *(this + 352);
    v103 = *(this + 336);
    v104 = v4;
    v99 = 1;
  }

  bzero(&v47, 0x628uLL);
  v52 = 1065353216;
  *(&v53 + 1) = 0x3FF0000000000000;
  LOBYTE(v73) = 0;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  memset(v57, 0, 25);
  *(&v73 + 1) = 0x3FF0000000000000;
  memset(v74, 0, sizeof(v74));
  v75 = &unk_1F4CEF7D8;
  v76 = 0u;
  v77[0] = 0;
  memset(&v77[8], 0, 17);
  v78 = 0u;
  v79[0] = 0;
  *&v79[8] = 0u;
  *&v79[24] = 0x7FF8000000000000;
  v80 = 0u;
  v81[0] = 0;
  memset(&v81[8], 0, 17);
  v82 = 0u;
  LOBYTE(v83[0]) = 0;
  *(v83 + 8) = 0u;
  *(&v83[1] + 8) = vdupq_n_s64(0x7FF8000000000000uLL);
  *(&v83[2] + 8) = *(&v83[1] + 8);
  v84 = 0;
  v94 = 0;
  LOBYTE(v98[0]) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  sub_1D0D30898((v1 + 32));
  v5 = v48;
  v48 = 0;
  v6 = *(v1 + 32);
  *(v1 + 32) = v5;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = v49;
  v8 = v50;
  *(v1 + 48) = v50;
  *(v1 + 40) = v7;
  v49 = 0;
  v9 = v51;
  *(v1 + 56) = v51;
  *(v1 + 64) = v52;
  if (v9)
  {
    v10 = *(v8 + 8);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v10 >= v7)
      {
        v10 %= v7;
      }
    }

    else
    {
      v10 &= v7 - 1;
    }

    *(*(v1 + 32) + 8 * v10) = v1 + 48;
    v50 = 0;
    v51 = 0;
  }

  *(v1 + 104) = v55;
  *(v1 + 120) = v56;
  *(v1 + 136) = v57[0];
  *(v1 + 152) = *&v57[1];
  *(v1 + 72) = v53;
  *(v1 + 88) = v54;
  v11 = BYTE8(v57[1]);
  if (*(v1 + 160) == 1)
  {
    if (BYTE8(v57[1]))
    {
      v12 = v63;
      *(v1 + 240) = v62;
      *(v1 + 256) = v12;
      *(v1 + 272) = v64;
      v13 = v59;
      *(v1 + 176) = v58;
      *(v1 + 192) = v13;
      v14 = v61;
      *(v1 + 208) = v60;
      *(v1 + 224) = v14;
    }

    else
    {
      *(v1 + 160) = 0;
    }
  }

  else if (BYTE8(v57[1]))
  {
    *(v1 + 168) = &unk_1F4CEEAB0;
    v15 = v63;
    *(v1 + 240) = v62;
    *(v1 + 256) = v15;
    *(v1 + 272) = v64;
    v16 = v59;
    *(v1 + 176) = v58;
    *(v1 + 192) = v16;
    v17 = v61;
    *(v1 + 208) = v60;
    *(v1 + 224) = v17;
    *(v1 + 160) = 1;
  }

  v18 = v65;
  if (*(v1 + 288) == 1)
  {
    if (v65)
    {
      v19 = v71;
      *(v1 + 368) = v70;
      *(v1 + 384) = v19;
      *(v1 + 400) = v72;
      v20 = v67;
      *(v1 + 304) = v66;
      *(v1 + 320) = v20;
      v21 = v69;
      *(v1 + 336) = v68;
      *(v1 + 352) = v21;
    }

    else
    {
      *(v1 + 288) = 0;
    }
  }

  else if (v65)
  {
    *(v1 + 296) = &unk_1F4CEEF40;
    v22 = v71;
    *(v1 + 368) = v70;
    *(v1 + 384) = v22;
    *(v1 + 400) = v72;
    v23 = v67;
    *(v1 + 304) = v66;
    *(v1 + 320) = v23;
    v24 = v69;
    *(v1 + 336) = v68;
    *(v1 + 352) = v24;
    *(v1 + 288) = 1;
  }

  v25 = *v74;
  *(v1 + 408) = v73;
  *(v1 + 424) = v25;
  *(v1 + 440) = *&v74[16];
  v26 = v83[1];
  *(v1 + 616) = v83[0];
  *(v1 + 632) = v26;
  *(v1 + 648) = v83[2];
  *(v1 + 660) = *(&v83[2] + 12);
  v27 = *v81;
  *(v1 + 552) = v80;
  *(v1 + 568) = v27;
  v28 = v82;
  *(v1 + 584) = *&v81[16];
  *(v1 + 600) = v28;
  v29 = v78;
  *(v1 + 488) = *&v77[16];
  *(v1 + 504) = v29;
  v30 = *&v79[16];
  *(v1 + 520) = *v79;
  *(v1 + 536) = v30;
  v31 = *v77;
  *(v1 + 456) = v76;
  *(v1 + 472) = v31;
  v32 = v84;
  if (*(v1 + 680) == 1)
  {
    if (v84)
    {
      *(v1 + 792) = v91;
      v33 = v90;
      *(v1 + 760) = v89;
      *(v1 + 776) = v33;
      v34 = v86;
      *(v1 + 696) = v85;
      *(v1 + 712) = v34;
      v35 = v88;
      *(v1 + 728) = v87;
      *(v1 + 744) = v35;
    }

    else
    {
      *(v1 + 680) = 0;
    }
  }

  else if (v84)
  {
    *(v1 + 688) = &unk_1F4CEF5C8;
    *(v1 + 792) = v91;
    v36 = v90;
    *(v1 + 760) = v89;
    *(v1 + 776) = v36;
    v37 = v86;
    *(v1 + 696) = v85;
    *(v1 + 712) = v37;
    v38 = v88;
    *(v1 + 728) = v87;
    *(v1 + 744) = v38;
    *(v1 + 680) = 1;
  }

  v39 = v92;
  if (*(v1 + 800) == 1)
  {
    if (v92)
    {
      memcpy((v1 + 816), v93, 0x160uLL);
    }

    else
    {
      *(v1 + 800) = 0;
    }
  }

  else if (v92)
  {
    *(v1 + 808) = &unk_1F4CEF748;
    memcpy((v1 + 816), v93, 0x160uLL);
    *(v1 + 800) = 1;
  }

  v40 = v94;
  if (*(v1 + 1168) == 1)
  {
    if (v94)
    {
      memcpy((v1 + 1184), v95, 0x160uLL);
    }

    else
    {
      *(v1 + 1168) = 0;
    }
  }

  else if (v94)
  {
    *(v1 + 1176) = &unk_1F4CEF748;
    memcpy((v1 + 1184), v95, 0x160uLL);
    *(v1 + 1168) = 1;
  }

  if (*(v1 + 1536) == 1)
  {
    if (v96)
    {
      *(v1 + 1544) = v97;
      goto LABEL_47;
    }

    *(v1 + 1536) = 0;
LABEL_50:
    *(v1 + 1560) = v98[0];
    *(v1 + 1569) = *(v98 + 9);
    if (!v40)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

  if (!v96)
  {
    goto LABEL_50;
  }

  *(v1 + 1544) = v97;
  *(v1 + 1536) = 1;
LABEL_47:
  *(v1 + 1560) = v98[0];
  *(v1 + 1569) = *(v98 + 9);
  v96 = 0;
  if (v40)
  {
LABEL_51:
    v94 = 0;
  }

LABEL_52:
  if (v39)
  {
    v92 = 0;
    if (!v32)
    {
LABEL_54:
      if (!v18)
      {
        goto LABEL_55;
      }

LABEL_62:
      v65 = 0;
      if (!v11)
      {
        goto LABEL_57;
      }

      goto LABEL_56;
    }
  }

  else if (!v32)
  {
    goto LABEL_54;
  }

  v84 = 0;
  if (v18)
  {
    goto LABEL_62;
  }

LABEL_55:
  if (v11)
  {
LABEL_56:
    BYTE8(v57[1]) = 0;
  }

LABEL_57:
  sub_1D0BCB594(&v48);
  if (*(v1 + 288) == 1)
  {
    if (v99)
    {
      v41 = v106;
      *(v1 + 368) = v105;
      *(v1 + 384) = v41;
      *(v1 + 400) = v107;
      v42 = v102;
      *(v1 + 304) = v101;
      *(v1 + 320) = v42;
      v43 = v104;
      *(v1 + 336) = v103;
      *(v1 + 352) = v43;
    }

    else
    {
      *(v1 + 288) = 0;
    }
  }

  else if (v99)
  {
    *(v1 + 296) = &unk_1F4CEEF40;
    v44 = v106;
    *(v1 + 368) = v105;
    *(v1 + 384) = v44;
    *(v1 + 400) = v107;
    v45 = v102;
    *(v1 + 304) = v101;
    *(v1 + 320) = v45;
    v46 = v104;
    *(v1 + 336) = v103;
    *(v1 + 352) = v46;
    *(v1 + 288) = 1;
  }

  (*(**(v1 + 1592) + 32))(*(v1 + 1592));
  (*(**(v1 + 1608) + 32))(*(v1 + 1608));
  (*(**(v1 + 1616) + 32))(*(v1 + 1616));
  (*(**(v1 + 1624) + 32))(*(v1 + 1624));
  (*(**(v1 + 1632) + 32))(*(v1 + 1632));
  (*(**(v1 + 1640) + 32))(*(v1 + 1640));
  (*(**(v1 + 1648) + 32))(*(v1 + 1648));
  (*(**(v1 + 1656) + 32))(*(v1 + 1656));
  (*(**(v1 + 1664) + 32))(*(v1 + 1664));
  (*(**(v1 + 1672) + 32))(*(v1 + 1672));
  (*(**(v1 + 1680) + 32))(*(v1 + 1680));
  (*(**(v1 + 1688) + 32))(*(v1 + 1688));
  (*(**(v1 + 1720) + 32))(*(v1 + 1720));
  (*(**(v1 + 1728) + 32))(*(v1 + 1728));
  return (*(**(v1 + 1712) + 32))(*(v1 + 1712));
}

__n128 raven::RavenIntegrityEstimator::UpdateCurrentTime(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1] = *a2;
  return result;
}

uint64_t raven::MapVectorChecker::Configure(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = a3;
  v5 = *a3;
  v6 = *(a3 + 8);
  v7 = *(*a2 + 2512);
  *(a1 + 24) = v7;
  if ((*&v7 <= -1 || ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&v7 - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    v14 = v3;
    v15 = v4;
    v13 = 12;
    v12 = 4;
    cnprint::CNPrinter::Print(&v13, &v12, "t,%.3lf,Map vector checker, Cannot configure. Invalid estimator_sigma_tolerance: %.2lf", v6 + v5, v7);
    return 0xFFFFFFFFLL;
  }

  else
  {
    v10 = 0;
    *(a1 + 8) = 1;
  }

  return v10;
}

BOOL raven::MapVectorChecker::isCoordinateValid(raven::MapVectorChecker *this, double a2, double a3)
{
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v5 = a2 <= 90.0 && (*&a3 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && a2 >= -90.0;
  if (a3 > 180.0)
  {
    v5 = 0;
  }

  return a3 >= -180.0 && v5;
}

uint64_t raven::MapVectorChecker::HandleEvent(raven::MapVectorChecker *this, const raven::MapVectorEvent *a2, raven::MapVectorEvent *a3)
{
  v107 = *MEMORY[0x1E69E9840];
  if ((*(this + 8) & 1) == 0)
  {
    LOWORD(v95) = 12;
    LOBYTE(v89) = 4;
    v7 = (*(*a2 + 16))(a2, a2, a3);
    cnprint::CNPrinter::Print(&v95, &v89, "t,%.3lf,MapVectorChecker, not configured", v8 + v7);
    return 0xFFFFFFFFLL;
  }

  v4 = *(a2 + 25);
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v10 = *(a2 + 26), v10 < -180.0) || v10 > 180.0 || v4 < -90.0 || v4 > 90.0 || (*(a2 + 26) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
    {
      LOWORD(v95) = 12;
      LOBYTE(v89) = 1;
      v5 = (*(*a2 + 16))(a2);
      cnprint::CNPrinter::Print(&v95, &v89, "t,%.3lf,WARNING: Map vector checker, map vector has invalid predicted point coordinates, do not use map vector", v6 + v5);
    }

    return 0xFFFFFFFFLL;
  }

  v11 = *(a2 + 28);
  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v14 = *(a2 + 29), v14 < -180.0) || v14 > 180.0 || v11 < -90.0 || v11 > 90.0 || (*(a2 + 29) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
    {
      LOWORD(v95) = 12;
      LOBYTE(v89) = 1;
      v12 = (*(*a2 + 16))(a2);
      cnprint::CNPrinter::Print(&v95, &v89, "t,%.3lf,WARNING: Map vector checker, map vector has invalid start point coordinates, do not use map vector", v13 + v12);
    }

    return 0xFFFFFFFFLL;
  }

  v15 = *(a2 + 32);
  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v15 < 0.0 || v15 >= 360.0)
  {
    if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
    {
      LOWORD(v95) = 12;
      LOBYTE(v89) = 1;
      v16 = (*(*a2 + 16))(a2);
      cnprint::CNPrinter::Print(&v95, &v89, "t,%.3lf,WARNING: Map vector checker, map vector course is not set, too large, or negative, do not use map vector", v17 + v16);
    }

    return 0xFFFFFFFFLL;
  }

  v18 = *(a2 + 33);
  v19 = (v18 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v20 = ((v18 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (v18 >= 0)
  {
    v20 = 0;
    v19 = 0;
  }

  v21 = (v18 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v19;
  if ((v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
  {
    v21 = 1;
  }

  if ((v21 | v20) == 1)
  {
    if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
    {
      LOWORD(v95) = 12;
      LOBYTE(v89) = 1;
      v22 = (*(*a2 + 16))(a2);
      cnprint::CNPrinter::Print(&v95, &v89, "t,%.3lf,WARNING: Map vector checker, map vector course uncertainty is not set, or negative, do not use map vector", v23 + v22);
    }

    return 0xFFFFFFFFLL;
  }

  v24 = *(a2 + 30);
  v25 = (v24 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v26 = ((v24 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (v24 >= 0)
  {
    v26 = 0;
    v25 = 0;
  }

  if ((v24 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000)
  {
    v25 = 1;
  }

  if ((v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
  {
    v25 = 1;
  }

  if (v25 || v26)
  {
    if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
    {
      LOWORD(v95) = 12;
      LOBYTE(v89) = 1;
      v27 = (*(*a2 + 16))(a2);
      cnprint::CNPrinter::Print(&v95, &v89, "t,%.3lf,WARNING: Map vector checker, road width is not set or negative, do not use map vector", v28 + v27);
    }

    return 0xFFFFFFFFLL;
  }

  v29 = *(a2 + 31);
  v30 = v29 & 0x7FFFFFFFFFFFFFFFLL;
  v31 = (v29 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v32 = v29 < 0;
  v33 = v29 < 0 && ((v29 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (!v32)
  {
    v31 = 0;
  }

  v34 = v30 <= 0x7FF0000000000000;
  v35 = v30 == 0x7FF0000000000000 || v31;
  if (!v34)
  {
    v35 = 1;
  }

  if ((v35 | v33) == 1)
  {
    if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
    {
      LOWORD(v95) = 12;
      LOBYTE(v89) = 1;
      v36 = (*(*a2 + 16))(a2);
      cnprint::CNPrinter::Print(&v95, &v89, "t,%.3lf,WARNING: Map vector checker, road length is not set or negative, do not use map vector", v37 + v36);
    }

    return 0xFFFFFFFFLL;
  }

  memcpy(a3 + 8, a2 + 8, 0x10CuLL);
  if (*(this + 9) == 1)
  {
    if (!sub_1D0B9AF58((*(this + 2) + 16), &unk_1D0EA1170))
    {
      if (cnprint::CNPrinter::GetLogLevel(0) <= 1)
      {
        LOWORD(v95) = 12;
        LOBYTE(v89) = 1;
        v43 = (*(*a2 + 16))(a2);
        cnprint::CNPrinter::Print(&v95, &v89, "t,%.3lf,WARNING: Map vector checker, no valid fix, thus cannot conduct further check, to be safe, do not use map vector", v44 + v43);
      }

      return 0xFFFFFFFFLL;
    }

    v39 = sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0EA1170);
    if ((v39[183] & 1) == 0)
    {
      if (cnprint::CNPrinter::GetLogLevel(v39) <= 1)
      {
        LOWORD(v95) = 12;
        LOBYTE(v89) = 1;
        v45 = (*(*a2 + 16))(a2);
        cnprint::CNPrinter::Print(&v95, &v89, "t,%.3lf,WARNING: Map vector checker, no valid raven position fix, cannot conduct further check, to be safe, do not use map vector", v46 + v45);
      }

      return 0xFFFFFFFFLL;
    }

    v104 = *(sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0EA1170) + 92);
    v105 = sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0EA1170)[186];
    v40 = cnnavigation::ECEFToLLA(&v104, 1, &v106, 0, &v95);
    if (v40)
    {
      if (cnprint::CNPrinter::GetLogLevel(v40) <= 1)
      {
        LOWORD(v95) = 12;
        LOBYTE(v89) = 1;
        v41 = (*(*a2 + 16))(a2);
        cnprint::CNPrinter::Print(&v95, &v89, "t,%.3lf,WARNING: Map vector checker, cannot derive receiver lla position, do not use map vector", v42 + v41);
      }

      return 0xFFFFFFFFLL;
    }

    v82 = vdupq_n_s64(0x3F91DF46A2529D39uLL);
    v106 = vmulq_f64(*(a2 + 14), v82);
    v96 = 0;
    v99 = 0x300000003;
    v97 = &unk_1F4CD5DD0;
    v98 = xmmword_1D0E76C10;
    v100 = &v101;
    v95 = &unk_1F4CD5D50;
    cnnavigation::ECEFToENU(&v104, 1, 1, &v106, 0, &v102, &v95, COERCE_DOUBLE(0x300000003));
    if (v47)
    {
      if (cnprint::CNPrinter::GetLogLevel(v47) <= 1)
      {
        LOWORD(v89) = 12;
        LOBYTE(v84) = 1;
        v48 = (*(*a2 + 16))(a2);
        cnprint::CNPrinter::Print(&v89, &v84, "t,%.3lf,WARNING: Map vector checker, cannot derive ENU of user position wrt segment start point, do not use map vector", v49 + v48);
      }

      return 0xFFFFFFFFLL;
    }

    v50 = __sincos_stret(*(a2 + 32) * 0.0174532925);
    v51 = v103 * v50.__cosval + v102 * v50.__sinval;
    v52 = *(a2 + 31);
    if (v51 > v52 * 1.5 || v51 < v52 * -0.5)
    {
      v56 = *(this + 2);
      v84 = (*(*a2 + 16))(a2);
      *&v85 = v57;
      v94[0] = (*(*(v56 + 432) + 16))(v56 + 432);
      v94[1] = v58;
      v61 = CNTimeSpan::operator-(&v84, v94, v59, v60);
      v89 = v61;
      *&v90 = v62;
      if (*(v56 + 658) != 1)
      {
        goto LABEL_80;
      }

      if (v61 < 0 || (*v63.i64 = v62, v62 < 0.0))
      {
        v61 = CNTimeSpan::operator-(&v89, v63, v64);
        v63.i64[0] = v65;
      }

      if (*v63.i64 + v61 > 5.0)
      {
LABEL_80:
        if (cnprint::CNPrinter::GetLogLevel(v61) <= 1)
        {
          LOWORD(v84) = 12;
          LOBYTE(v94[0]) = 1;
          v66 = (*(*a2 + 16))(a2);
          cnprint::CNPrinter::Print(&v84, v94, "t,%.3lf,WARNING: Map vector checker, along road component of current solution is far away from the given road segment, do not use map vector", v67 + v66);
        }

        return 0xFFFFFFFFLL;
      }

      if (cnprint::CNPrinter::GetLogLevel(v61) <= 1)
      {
        LOWORD(v84) = 12;
        LOBYTE(v94[0]) = 1;
        v76 = (*(*a2 + 16))(a2);
        cnprint::CNPrinter::Print(&v84, v94, "t,%.3lf,WARNING: Map vector checker, along road component of current solution is far away from the given road segment. However, position is currently inside tunnel. So do not fail the map vector.", v77 + v76);
      }
    }

    v106 = vmulq_f64(*(a2 + 200), v82);
    cnnavigation::ECEFToENU(&v104, 1, 1, &v106, 0, &v102, &v95, v106.f64[0]);
    if (v53)
    {
      if (cnprint::CNPrinter::GetLogLevel(v53) <= 1)
      {
        LOWORD(v89) = 12;
        LOBYTE(v84) = 1;
        v54 = (*(*a2 + 16))(a2);
        cnprint::CNPrinter::Print(&v89, &v84, "t,%.3lf,WARNING: Map vector checker, cannot derive ENU of user position wrt expected position, do not use map vector", v55 + v54);
      }

      return 0xFFFFFFFFLL;
    }

    v68 = v102;
    v69 = v103;
    v91 = 0x300000003;
    v89 = &unk_1F4CD5DD0;
    v90 = xmmword_1D0E76C10;
    v92 = &v93;
    v86 = 0x300000003;
    v84 = &unk_1F4CD5DD0;
    v85 = xmmword_1D0E76C10;
    v87 = &v88;
    v70 = sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0EA1170);
    v71 = sub_1D0DF5384((v70 + 146), &v84);
    if (v72)
    {
      v73 = sub_1D0BFE654(&v95, &v84, &v89);
      if (fabs(fabs(v50.__sinval * v69 - v68 * v50.__cosval) / sqrt(*v92 + v92[SHIDWORD(v90) + 1])) > *(this + 3) || (*(this + 8) & 1) == 0)
      {
        if (cnprint::CNPrinter::GetLogLevel(v73) <= 1)
        {
          LOWORD(v94[0]) = 12;
          v83 = 1;
          v80 = (*(*a2 + 16))(a2);
          cnprint::CNPrinter::Print(v94, &v83, "t,%.3lf,WARNING: Map vector checker, IsSigmaSane check failed, do not use map vector", v81 + v80);
        }

        return 0xFFFFFFFFLL;
      }

      if (!cnprint::CNPrinter::GetLogLevel(v73))
      {
        LOWORD(v94[0]) = 12;
        v83 = 0;
        v74 = (*(*a2 + 16))(a2);
        cnprint::CNPrinter::Print(v94, &v83, "t,%.3lf,Map vector checker, passed", v75 + v74);
      }
    }

    else
    {
      LOWORD(v94[0]) = 12;
      v83 = 2;
      v78 = (*(*a2 + 16))(a2, v71);
      cnprint::CNPrinter::Print(v94, &v83, "t,%.3lf,WARNING: Map vector checker, difference with current solution not checked, can't get position covariance", v79 + v78);
    }
  }

  return 0;
}

uint64_t raven::AltitudeChecker::Configure(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = a3;
  *(a1 + 24) = *(*a2 + 2512);
  *(a1 + 8) = 1;
  return 0;
}

uint64_t raven::AltitudeChecker::HandleEvent(raven::AltitudeChecker *this, const raven::AltitudeEvent *a2, raven::AltitudeEvent *a3)
{
  v48 = *MEMORY[0x1E69E9840];
  if ((*(this + 8) & 1) == 0)
  {
    LOWORD(v38) = 12;
    LOBYTE(v33) = 4;
    v21 = (*(*a2 + 16))(a2, a2, a3);
    cnprint::CNPrinter::Print(&v38, &v33, "t,%.3lf,AltitudeChecker, not configured", v22 + v21);
    return 0xFFFFFFFFLL;
  }

  if ((*(a2 + 13) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(a2 + 14);
  v5 = v4 < 0 || ((v4 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE;
  if (v5 && (v4 - 1) > 0xFFFFFFFFFFFFELL)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(a2 + 8);
  v9 = *(a2 + 24);
  *(a3 + 40) = *(a2 + 40);
  *(a3 + 24) = v9;
  *(a3 + 8) = v8;
  v10 = *(a2 + 56);
  v11 = *(a2 + 72);
  v12 = *(a2 + 88);
  *(a3 + 104) = *(a2 + 104);
  *(a3 + 88) = v12;
  *(a3 + 72) = v11;
  *(a3 + 56) = v10;
  if (*(this + 9) != 1)
  {
    return 0;
  }

  result = sub_1D0B9AF58((*(this + 2) + 16), &unk_1D0EA11E6);
  if (!result)
  {
    return result;
  }

  v14 = sub_1D0B9AF58((*(this + 2) + 16), &unk_1D0EA11E6);
  if (!v14)
  {
LABEL_26:
    sub_1D0C543A8("unordered_map::at: key not found");
  }

  if (!*(v14 + 1488))
  {
    return 0;
  }

  v15 = *(a2 + 14);
  v16 = sub_1D0B9AF58((*(this + 2) + 16), &unk_1D0EA11E6);
  if (!v16)
  {
    goto LABEL_26;
  }

  *&v46.f64[0] = v16[187];
  v17 = sub_1D0B9AF58((*(this + 2) + 16), &unk_1D0EA11E6);
  if (!v17)
  {
    goto LABEL_26;
  }

  *&v46.f64[1] = v17[188];
  v18 = sub_1D0B9AF58((*(this + 2) + 16), &unk_1D0EA11E6);
  if (!v18)
  {
    goto LABEL_26;
  }

  v47 = v18[189];
  v44[0] = 0;
  v44[1] = 0;
  v45 = 0.0;
  if (!cnnavigation::ECEFToLLA(&v46, 1, v44, 1, v43))
  {
    v40 = 0x300000003;
    v42[0] = v43[0];
    v42[1] = v43[3];
    v42[6] = v43[2];
    v42[7] = v43[5];
    v42[3] = v43[1];
    v42[2] = v43[6];
    v39 = xmmword_1D0E76C10;
    v38 = &unk_1F4CD5DD0;
    v41 = v42;
    v42[4] = v43[4];
    v42[5] = v43[7];
    v42[8] = v43[8];
    v35 = 0x300000003;
    v34 = xmmword_1D0E76C10;
    v33 = &unk_1F4CD5DD0;
    v36 = &v37;
    v23 = sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0EA11E6);
    v24 = sub_1D0DF5384((v23 + 146), &v33);
    if (v25)
    {
      sub_1D0C1B688(&v38, &v33, v29);
      sub_1D0C1B708(&v38, v28);
      sub_1D0C1B688(v29, v28, v30);
      return (((fabs(sqrt((*(a2 + 13) - v45) * (*(a2 + 13) - v45) / (v15 * v15 + *(v32 + 16 * v31 + 16)))) > *(this + 3)) | ~*(this + 8)) << 31 >> 31);
    }

    v30[0] = 12;
    v29[0] = 2;
    v26 = (*(*a2 + 16))(a2, v24);
    cnprint::CNPrinter::Print(v30, v29, "t,%.3lf,WARNING: Altitude checker, difference with current solution not checked, can't get position covariance", v27 + v26);
    return 0;
  }

  LOWORD(v38) = 12;
  LOBYTE(v33) = 4;
  v19 = (*(*a2 + 16))(a2);
  cnprint::CNPrinter::Print(&v38, &v33, "t,%.3lf,WARNING: Altitude checker, conversion of current position from ECEF to LLA failed", v20 + v19);
  return 0xFFFFFFFFLL;
}

double raven::RavenIonosphereEstimatorInitArgs::Fill(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, float64_t a19)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a5;
  *(a1 + 24) = a6;
  *(a1 + 32) = a7;
  *(a1 + 40) = a8;
  *(a1 + 48) = a9;
  *(a1 + 56) = a11;
  *(a1 + 64) = a10;
  *(a1 + 72) = a12;
  *(a1 + 80) = a17;
  *(a1 + 88) = a18;
  v24 = 0xA0000000ALL;
  v22 = &unk_1F4CE2180;
  *&v20.f64[1] = 0xA00000064;
  v23 = xmmword_1D0E84630;
  v25 = &v26;
  v20.f64[0] = a19;
  sub_1D0B8930C(a4, &v22, v20);
  *&result = sub_1D0B894B0(a1 + 96, &v22).n128_u64[0];
  return result;
}

void raven::RavenIonosphereEstimator::RavenIonosphereEstimator(raven::RavenIonosphereEstimator *this)
{
  *this = 0x3FF0000000000000;
  *(this + 2) = 0u;
  *(this + 4) = 0;
  *(this + 80) = 0;
  *(this + 248) = 0;
  *(this + 448) = 0;
  *(this + 1) = 0u;
  *(this + 3) = 0u;
  *(this + 64) = 0;
  *(this + 57) = &unk_1F4CEF4D8;
  *(this + 29) = 0u;
  *(this + 480) = 0;
  *(this + 504) = 0;
  *(this + 488) = 0u;
  *(this + 528) = 0;
  *(this + 32) = 0u;
  *(this + 536) = 0u;
  *(this + 69) = 0x7FF8000000000000;
  sub_1D0BAD0C8(this + 560);
  *(this + 404) = 0;
  *(this + 201) = 0u;
  *(this + 252) = 0u;
  *(this + 253) = 0u;
  *(this + 254) = 0u;
  *(this + 510) = 0;
  *(this + 515) = 0x10000000ALL;
  *(this + 512) = &unk_1F4CEAE48;
  *(this + 516) = this + 4136;
  *(this + 530) = 0xA0000000ALL;
  *(this + 527) = &unk_1F4CE2180;
  *(this + 531) = this + 4256;
  *(this + 635) = 0x10000000ALL;
  *(this + 632) = &unk_1F4CEAE48;
  *(this + 636) = this + 5096;
  *(this + 650) = 0x10000000ALL;
  *(this + 647) = &unk_1F4CEAE48;
  *(this + 651) = this + 5216;
  *(this + 665) = 0xA0000000ALL;
  *(this + 662) = &unk_1F4CE2180;
  *(this + 666) = this + 5336;
  *(this + 770) = 0x10000000ALL;
  *(this + 767) = &unk_1F4CEAE48;
  *(this + 771) = this + 6176;
  *(this + 784) = 0x100000000;
  *(this + 1570) = 0x7FFFFFFF;
  *(this + 393) = vdupq_n_s64(0x3E45798EE2308C3AuLL);
  *(this + 3152) = 0;
  *(this + 789) = 0x3FEE666666666666;
  *(this + 395) = 0u;
  *(this + 792) = 0x4197D78400000000;
  *(this + 782) = 0;
  *(this + 4104) = 0u;
  *(this + 6264) = 0;
  *(this + 264) = 0u;
  *(this + 5064) = 0u;
  *(this + 324) = 0u;
  *(this + 5304) = 0u;
  *(this + 384) = 0u;
  *(this + 809) = 0;
  *(this + 6440) = 0u;
  *(this + 6456) = 0u;
  *(this + 6408) = 0u;
  *(this + 6424) = 0u;
  *(this + 6376) = 0u;
  *(this + 6392) = 0u;
  *(this + 6344) = 0u;
  *(this + 6360) = 0u;
  *(this + 1567) = 1;
  *(this + 511) = &unk_1F4CED088;
  *(this + 813) = 0xA0000000ALL;
  *(this + 810) = &unk_1F4CE2180;
  *(this + 814) = this + 6520;
  *(this + 918) = 0x10000000ALL;
  *(this + 915) = &unk_1F4CEAE48;
  *(this + 919) = this + 7360;
  *(this + 933) = 0xA0000000ALL;
  *(this + 930) = &unk_1F4CE2180;
  *(this + 934) = this + 7480;
  *(this + 1035) = 0x100000000;
  *(this + 2072) = 0x7FFFFFFF;
  *(this + 1037) = 0x3E45798EE2308C3ALL;
  *(this + 1038) = 0x3E45798EE2308C3ALL;
  *(this + 4156) = 0;
  *(this + 1040) = 0x3FEE666666666666;
  *(this + 8328) = 0u;
  *(this + 1043) = 0x4197D78400000000;
  *(this + 522) = 0u;
  *(this + 4184) = 1;
  *(this + 6488) = 0u;
  *(this + 1047) = 0;
  *(this + 458) = 0u;
  *(this + 7448) = 0u;
  *(this + 1049) = 0x3FE0000000000000;
  *(this + 1050) = 0x3FE0000000000000;
  *(this + 2102) = 0;
  *(this + 1048) = &unk_1F4CE3930;
  __asm { FMOV            V0.2D, #0.5 }

  *(this + 526) = _Q0;
  *(this + 527) = xmmword_1D0E843D0;
  *(this + 1056) = 0x3FE0000000000000;
  *(this + 4228) = 0;
  *(this + 530) = 0u;
  *(this + 529) = 0u;
  *(this + 1062) = this + 8496;
  *(this + 1063) = this + 8496;
  *(this + 1064) = 0;
  sub_1D0BF162C(this + 8520);
  *(this + 1249) = 0x100000058;
  *(this + 1246) = &unk_1F4CECFB0;
  *(this + 9976) = xmmword_1D0EA1260;
  *(this + 1250) = this + 10008;
  *(this + 1298) = 0x100000058;
  *(this + 1295) = &unk_1F4CECFF8;
  *(this + 648) = xmmword_1D0EA1260;
  *(this + 1299) = this + 10400;
  sub_1D0BF1B4C(this + 11104);
}

void sub_1D0E13F34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, _Unwind_Exception *exception_object)
{
  sub_1D0E18B14((v26 + 2192));
  *a21 = a20;
  sub_1D0E1A0D8(a22);
  sub_1D0D41E0C(a24);
  if (*(v25 + 448) == 1)
  {
    *a18 = &unk_1F4CEE030;
  }

  _Unwind_Resume(a1);
}

void raven::RavenIonosphereEstimator::Reset(raven::RavenIonosphereEstimator *this)
{
  LOWORD(v7) = 12;
  v9 = 2;
  v2 = cnprint::CNLogFormatter::FormatGeneral(this + 4040, this + 32, "Resetting estimator");
  if (*(this + 4063) >= 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = *(this + 505);
  }

  cnprint::CNPrinter::Print(&v7, &v9, "%s", v3);
  v7 = 0x3FE0000000000000;
  sub_1D0D87CD8(this + 8392, &v7);
  sub_1D0E15A54(this + 8456);
  *(this + 9) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  if (*(this + 448) == 1)
  {
    *(this + 31) = &unk_1F4CEE030;
    *(this + 448) = 0;
  }

  if (*(this + 80) == 1)
  {
    *(this + 80) = 0;
  }

  memset(v8, 0, 88);
  v7 = &unk_1F4CEF4D8;
  *&v8[88] = 0x7FF8000000000000;
  *(this + 29) = 0uLL;
  *(this + 30) = 0uLL;
  v4 = *&v8[32];
  v5 = *&v8[48];
  v6 = *&v8[80];
  *(this + 33) = *&v8[64];
  *(this + 34) = v6;
  *(this + 31) = v4;
  *(this + 32) = v5;
  sub_1D0BAD0C8(&v7);
  memcpy(this + 568, v8, 0xA51uLL);
  bzero(this + 3216, 0x330uLL);
}

uint64_t sub_1D0E143F8(uint64_t a1)
{
  *a1 = &unk_1F4CED088;
  *(a1 + 3352) = &unk_1F4CD5E28;
  *(a1 + 3232) = &unk_1F4CD5E28;
  *(a1 + 2392) = &unk_1F4CD5E28;
  return sub_1D0E1A158(a1);
}

uint64_t raven::RavenIonosphereEstimator::Configure(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    LOWORD(v39) = 12;
    LOBYTE(v34) = 2;
    v3 = cnprint::CNLogFormatter::FormatWarning((a1 + 4040), "Configure() called more than once");
  }

  else
  {
    v5 = *a2;
    if (*a2)
    {
      if (*(v5 + 33))
      {
        v6 = *(v5 + 114);
        v7 = *(v5 + 115);
        *(a1 + 8280) = 0x100000000;
        *(a1 + 8288) = 0x7FFFFFFF;
        *(a1 + 8296) = 0x3E45798EE2308C3ALL;
        *(a1 + 8304) = 0x3E45798EE2308C3ALL;
        *(a1 + 8312) = 257;
        *(a1 + 8328) = 0u;
        *(a1 + 8320) = v6;
        *(a1 + 8344) = v7;
        *(a1 + 8352) = 0u;
        *(a1 + 8368) = 1;
        *(a1 + 8376) = 0;
        *(a1 + 6272) = 0x100000000;
        *(a1 + 6280) = 0x7FFFFFFF;
        *(a1 + 6288) = vdupq_n_s64(0x3E45798EE2308C3AuLL);
        *(a1 + 6304) = 257;
        *(a1 + 6312) = v6;
        *(a1 + 6320) = 0u;
        *(a1 + 6336) = v7;
        *(a1 + 6344) = 0u;
        *(a1 + 6264) = 0;
        v36 = 0x10000000ALL;
        v34 = &unk_1F4CEAE48;
        v37 = v38;
        v35 = xmmword_1D0E87BE0;
        memset(v38, 0, sizeof(v38));
        sub_1D0B94CA4(&v39, &v34);
        v40 = xmmword_1D0E87BE0;
        sub_1D0B894B0(a1 + 4096, &v39);
        v41 = 0xA0000000ALL;
        v39 = &unk_1F4CE2180;
        v42 = v43;
        v40 = xmmword_1D0E84630;
        bzero(v43, 0x320uLL);
        sub_1D0B894B0(a1 + 4216, &v39);
        v41 = 0x10000000ALL;
        v40 = xmmword_1D0E87BE0;
        v39 = &unk_1F4CEAE48;
        v42 = v43;
        sub_1D0B89390(a1 + 4216, a1 + 4096, &v39);
        sub_1D0B894B0(a1 + 5056, &v39);
        sub_1D0B894B0(a1 + 5176, a1 + 4096);
        sub_1D0B894B0(a1 + 5296, a1 + 4216);
        sub_1D0B894B0(a1 + 6136, a1 + 5056);
        *(a1 + 6256) = 0x3FF0000000000000;
        *(a1 + 6264) = 0;
        *(a1 + 6268) = 1;
        v39 = 0x3FE0000000000000;
        v8 = sub_1D0D87CD8(a1 + 8392, &v39);
        v9 = *(v5 + 385);
        if (v9 >= 0.0 && v9 <= 1.0 && (v10 = *(v5 + 386), v10 >= 0.0) && v10 <= 1.0 && (v11 = *(v5 + 384), v11 >= 0.0))
        {
          *(a1 + 8432) = v11;
          *(a1 + 8416) = *(v5 + 385);
          *(a1 + 8424) = *(v5 + 386);
          v14 = 1.0 - fabs(cnstatistics::InverseNormal(v8, (1.0 - *(v5 + 114)) * 0.5, 0.0, 1.0)) / *(v5 + 387);
          v15 = v14 >= 0.0 && v14 <= 1.0;
          if (v15 && (v16 = 1.0 - *(v5 + 114), v16 >= 0.0) && v16 <= 1.0)
          {
            v17 = 0;
            *(a1 + 8440) = v14;
            *(a1 + 8448) = v16;
            do
            {
              v18 = *(v5 + v17 + 2824);
              v19 = (v18 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
              v20 = ((v18 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
              if (v18 >= 0)
              {
                v20 = 0;
                v19 = 0;
              }

              v21 = v18 & 0x7FFFFFFFFFFFFFFFLL;
              if (!v21)
              {
                v19 = 1;
              }

              v22 = v21 <= 0x7FF0000000000000;
              v23 = v21 == 0x7FF0000000000000 || v19;
              if (!v22)
              {
                v23 = 1;
              }

              if ((v23 | v20) == 1)
              {
                LOWORD(v39) = 12;
                LOBYTE(v34) = 4;
                v3 = cnprint::CNLogFormatter::FormatGeneral((a1 + 4040), "Configure() failed, non-positive correlation time constant specified.");
                goto LABEL_13;
              }

              v17 += 8;
            }

            while (v17 != 80);
            v24 = *a2;
            v25 = *(*a2 + 3104);
            if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && v25 <= 90.0 && v25 >= -10.0)
            {
              result = 0;
              *a1 = v25;
              *(a1 + 88) = v24[161];
              v27 = v24[162];
              v28 = v24[163];
              v29 = v24[164];
              *(a1 + 152) = v24[165];
              *(a1 + 136) = v29;
              *(a1 + 120) = v28;
              *(a1 + 104) = v27;
              v30 = (*a2 + 2904);
              v31 = *(*a2 + 2920);
              v32 = *(*a2 + 2936);
              v33 = *(*a2 + 2952);
              *(a1 + 232) = *(*a2 + 2968);
              *(a1 + 216) = v33;
              *(a1 + 200) = v32;
              *(a1 + 184) = v31;
              *(a1 + 168) = *v30;
              *(a1 + 4032) = *a2;
              *(a1 + 8) = 1;
              return result;
            }

            LOWORD(v39) = 12;
            LOBYTE(v34) = 4;
            v3 = cnprint::CNLogFormatter::FormatGeneral((a1 + 4040), "Configure() failed, invalid satellite elevation mask specified,.%.2lf");
          }

          else
          {
            LOWORD(v39) = 12;
            LOBYTE(v34) = 4;
            v3 = cnprint::CNLogFormatter::FormatGeneral((a1 + 4040), "Configure() failed to set consistency monitor update parameters");
          }
        }

        else
        {
          LOWORD(v39) = 12;
          LOBYTE(v34) = 4;
          v3 = cnprint::CNLogFormatter::FormatGeneral((a1 + 4040), "Configure() failed to set consistency monitor prediction parameters");
        }
      }

      else
      {
        LOWORD(v39) = 12;
        LOBYTE(v34) = 4;
        v3 = cnprint::CNLogFormatter::FormatGeneral((a1 + 4040), "Configure() called with uninitialized raven parameters");
      }
    }

    else
    {
      LOWORD(v39) = 12;
      LOBYTE(v34) = 4;
      v3 = cnprint::CNLogFormatter::FormatGeneral((a1 + 4040), "Configure() called with null raven parameters");
    }
  }

LABEL_13:
  if (*(a1 + 4063) >= 0)
  {
    v12 = v3;
  }

  else
  {
    v12 = *(a1 + 4040);
  }

  cnprint::CNPrinter::Print(&v39, &v34, "%s", v12);
  return 0xFFFFFFFFLL;
}

uint64_t raven::RavenIonosphereEstimator::UpdateEstimatorParametersViaPolyfitToKlobucharModel(raven::RavenIonosphereEstimator *this)
{
  v80 = *MEMORY[0x1E69E9840];
  if (!*(this + 2024) || *(this + 448) != 1 || !*(this + 440))
  {
    return 0xFFFFFFFFLL;
  }

  v72 = 0uLL;
  if (*(this + 632))
  {
    v2 = 640;
  }

  else
  {
    if (*(this + 608) != 1)
    {
      goto LABEL_9;
    }

    v2 = 616;
  }

  v72 = *(this + v2);
LABEL_9:
  v65 = 0;
  v66 = 0u;
  v67 = 0u;
  v68 = 0;
  v69 = 0;
  v70 = 0;
  v71 = 0;
  v3 = cnnavigation::TAITime::ToGPSTime(&v72, &v65);
  v5 = v4;
  v6 = v4;
  if (!cnprint::CNPrinter::GetLogLevel(v3))
  {
    v65 = 12;
    LOBYTE(v73[0]) = 0;
    v7 = cnprint::CNLogFormatter::FormatGeneral(this + 4040, this + 464, "#iono,klob,RavenIonosphereEstimator::HandleEvent(RavenSolutionEvent),gps_week, gps_secofweek,%d,%.3lf", v3, v5);
    if (*(this + 4063) >= 0)
    {
      v8 = v7;
    }

    else
    {
      v8 = *v7;
    }

    cnprint::CNPrinter::Print(&v65, v73, "%s", v8);
  }

  cnnavigation::KlobucharIonosphereModel::KlobucharIonosphereModel(&v65, (this + 368));
  v78 = *(this + 127);
  v79 = *(this + 256);
  if (cnnavigation::ECEFToLLA(&v78, 1, v77, 0, v73))
  {
    LOWORD(v73[0]) = 12;
    LOBYTE(__src) = 4;
    v9 = cnprint::CNLogFormatter::FormatGeneral(this + 4040, this + 464, "#iono,klob,RavenIonosphereEstimator::HandleEvent(RavenSolutionEvent),conversion of receiver position from ECEF to LLA failed");
    if (*(this + 4063) >= 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = *v9;
    }

    cnprint::CNPrinter::Print(v73, &__src, "%s", v10);
    return 0xFFFFFFFFLL;
  }

  __src = 0;
  v63 = 0;
  v64 = 0;
  __p = 0;
  v60 = 0;
  v61 = 0;
  if ((atomic_load_explicit(&qword_1EE054C28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE054C28))
  {
    dword_1EE054C20 = 7;
    __cxa_guard_release(&qword_1EE054C28);
  }

  if ((atomic_load_explicit(&qword_1EE054C30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE054C30))
  {
    dword_1EE054C24 = (dword_1EE054C20 - 1) / 2;
    __cxa_guard_release(&qword_1EE054C30);
  }

  v13 = dword_1EE054C24;
  if (dword_1EE054C24 < 0)
  {
LABEL_59:
    v47 = sub_1D0DEA260(v73, 6uLL);
    raven::RavenIonosphereEstimator::FitAnchorPointsToPoly(v47);
    if (cnprint::CNPrinter::GetLogLevel(v48) <= 1)
    {
      LOWORD(v76[0]) = 12;
      LOBYTE(v75[0]) = 1;
      v49 = cnprint::CNLogFormatter::FormatGeneral(this + 4040, this + 464, "#iono,klob,RavenIonosphereEstimator,poly[0],%.3lf,poly[1],%.3lf,poly[2],%.3lf,poly[3],%.3lf,poly[4],%.3lf,poly[5],%.3lf", *v73[0], *(v73[0] + 8), *(v73[0] + 16), *(v73[0] + 24), *(v73[0] + 32), *(v73[0] + 40));
      if (*(this + 4063) >= 0)
      {
        v50 = v49;
      }

      else
      {
        v50 = *(this + 505);
      }

      cnprint::CNPrinter::Print(v76, v75, "%s", v50);
    }

    v51 = v73[0];
    *(this + 12) = *v73[0];
    *(this + 13) = v51[1];
    *(this + 14) = v51[2];
    *(this + 15) = v51[3];
    *(this + 16) = v51[4];
    *(this + 17) = v51[5];
    *(this + 22) = *v51;
    *(this + 23) = v51[1];
    *(this + 24) = v51[2];
    *(this + 25) = v51[3];
    *(this + 26) = v51[4];
    *(this + 27) = v51[5];
    v52 = *(this + 80);
    *(this + 4) = *(this + 29);
    if ((v52 & 1) == 0)
    {
      *(this + 80) = 1;
    }

    v73[1] = v51;
    operator delete(v51);
    v11 = 0;
  }

  else
  {
    v14 = -dword_1EE054C24;
    v15 = v77[1];
    v56 = v77[0];
    v16 = v77[2];
    while (v13 < 0)
    {
LABEL_58:
      v46 = v14++ < v13;
      if (!v46)
      {
        goto LABEL_59;
      }
    }

    v17 = -v13;
    while (1)
    {
      v18 = v14 * 0.261799388 / v13;
      v19 = v17 * 0.261799388 / v13;
      v76[0] = v18 + v56;
      v76[1] = v19 + v15;
      v76[2] = v16;
      v20 = v63;
      if (v63 >= v64)
      {
        v22 = __src;
        v23 = v63 - __src;
        v24 = (v63 - __src) >> 4;
        v25 = v24 + 1;
        if ((v24 + 1) >> 60)
        {
          sub_1D0C5663C();
        }

        v26 = v64 - __src;
        if ((v64 - __src) >> 3 > v25)
        {
          v25 = v26 >> 3;
        }

        v27 = v26 >= 0x7FFFFFFFFFFFFFF0;
        v28 = 0xFFFFFFFFFFFFFFFLL;
        if (!v27)
        {
          v28 = v25;
        }

        if (v28)
        {
          sub_1D0BC40DC(&__src, v28);
        }

        v29 = (v63 - __src) >> 4;
        v30 = (16 * v24);
        *v30 = v18;
        v30[1] = v19;
        v21 = 16 * v24 + 16;
        v31 = (16 * v24 - 16 * v29);
        memcpy(&v30[-2 * v29], v22, v23);
        v32 = __src;
        __src = v31;
        v63 = v21;
        v64 = 0;
        if (v32)
        {
          operator delete(v32);
        }
      }

      else
      {
        *v63 = v18;
        v20[1] = v19;
        v21 = (v20 + 2);
      }

      v63 = v21;
      if (cnnavigation::LLAToECEF(v76, 1, v75, 0, v73))
      {
        LOWORD(v73[0]) = 12;
        LOBYTE(v74.f64[0]) = 4;
        cnprint::CNLogFormatter::FormatGeneral(this + 4040, this + 464, "#iono,klob,RavenIonosphereEstimator::HandleEvent(RavenSolutionEvent),LLAToECEF failed");
        if (*(this + 4063) >= 0)
        {
          v53 = this + 4040;
        }

        else
        {
          v53 = *(this + 505);
        }

        cnprint::CNPrinter::Print(v73, &v74, "%s", v53);
        goto LABEL_80;
      }

      if (cnnavigation::ENUToECEF(xmmword_1D0EA1410, 1, 0, v75, 0, &v74))
      {
        LOWORD(v73[0]) = 12;
        LOBYTE(v58) = 4;
        cnprint::CNLogFormatter::FormatGeneral(this + 4040, this + 464, "#iono,klob,RavenIonosphereEstimator::HandleEvent(RavenSolutionEvent),ENUToECEF failed");
        if (*(this + 4063) >= 0)
        {
          v54 = this + 4040;
        }

        else
        {
          v54 = *(this + 505);
        }

        cnprint::CNPrinter::Print(v73, &v58, "%s", v54);
        goto LABEL_80;
      }

      v58 = 0.0;
      IonosphericDelay = cnnavigation::KlobucharIonosphereModel::GetIonosphericDelay(&v65, v6, 1575420000.0, v33, v75, &v74, &v58, 0, v73);
      if (IonosphericDelay)
      {
        break;
      }

      v35 = v58 * 1845950630.0;
      if (cnprint::CNPrinter::GetLogLevel(IonosphericDelay) <= 1)
      {
        LOWORD(v73[0]) = 12;
        v57 = 1;
        cnprint::CNLogFormatter::FormatGeneral(this + 4040, this + 464, "#iono,klob,RavenIonosphereEstimator, delta_lat_rad,%.3lf,delta_on_rad,%.3lf,vtec_tecu_anchor,%.3lf", v18, v19, v35);
        if (*(this + 4063) >= 0)
        {
          v36 = this + 4040;
        }

        else
        {
          v36 = *(this + 505);
        }

        cnprint::CNPrinter::Print(v73, &v57, "%s", v36);
      }

      v37 = v60;
      if (v60 >= v61)
      {
        v39 = __p;
        v40 = v60 - __p;
        v41 = (v60 - __p) >> 3;
        v42 = v41 + 1;
        if ((v41 + 1) >> 61)
        {
          sub_1D0C5663C();
        }

        v43 = v61 - __p;
        if ((v61 - __p) >> 2 > v42)
        {
          v42 = v43 >> 2;
        }

        v27 = v43 >= 0x7FFFFFFFFFFFFFF8;
        v44 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v27)
        {
          v44 = v42;
        }

        if (v44)
        {
          sub_1D0C3994C(&__p, v44);
        }

        *(8 * v41) = v35;
        v38 = 8 * v41 + 8;
        memcpy(0, v39, v40);
        v45 = __p;
        __p = 0;
        v60 = v38;
        v61 = 0;
        if (v45)
        {
          operator delete(v45);
        }
      }

      else
      {
        *v60 = v35;
        v38 = (v37 + 1);
      }

      v60 = v38;
      v13 = dword_1EE054C24;
      v46 = v17++ < dword_1EE054C24;
      if (!v46)
      {
        goto LABEL_58;
      }
    }

    LOWORD(v73[0]) = 12;
    v57 = 4;
    cnprint::CNLogFormatter::FormatGeneral(this + 4040, this + 464, "#iono,klob,RavenIonosphereEstimator::HandleEvent(RavenSolutionEvent),GetIonosphericDelay failed");
    if (*(this + 4063) >= 0)
    {
      v55 = this + 4040;
    }

    else
    {
      v55 = *(this + 505);
    }

    cnprint::CNPrinter::Print(v73, &v57, "%s", v55);
    if (*(this + 448) == 1)
    {
      *(this + 31) = &unk_1F4CEE030;
      *(this + 448) = 0;
    }

LABEL_80:
    v11 = 0xFFFFFFFFLL;
  }

  if (__p)
  {
    v60 = __p;
    operator delete(__p);
  }

  if (__src)
  {
    v63 = __src;
    operator delete(__src);
  }

  return v11;
}

void sub_1D0E151C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, void *a25, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a25)
  {
    operator delete(a25);
  }

  _Unwind_Resume(exception_object);
}

void raven::RavenIonosphereEstimator::FitAnchorPointsToPoly(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = *v5;
  v7 = v5[1] - *v5;
  v8 = v7 >> 3;
  v62 = 0x100000031;
  v57 = &unk_1F4CE30B0;
  v63 = v64;
  v58 = v7 >> 3;
  v59 = 1;
  v60 = v58;
  v61 = v58;
  if (v58 > 3)
  {
    v9 = &v64[v7 & 0x3FFFFFFF8];
    bzero(v64, (v7 + 0x7FFFFFFF8) & 0x7FFFFFFF0);
    *(v9 - 2) = 0;
    *(v9 - 1) = 0;
  }

  else if (v8 >= 1)
  {
    bzero(v64, v7 & 0x3FFFFFFF8);
  }

  v54 = 0x600000031;
  v49 = &unk_1F4CEDEB0;
  v10 = v56;
  v55 = v56;
  v11 = 6 * v8;
  v50 = v7 >> 3;
  v51 = 6;
  v52 = 6 * v8;
  v53 = v50;
  if (6 * v8 > 3)
  {
    v17 = &v56[v11];
    bzero(v56, 16 * ((v11 - 1) >> 1));
    *(v17 - 2) = 0;
    *(v17 - 1) = 0;
    v10 = v55;
    if (v8)
    {
LABEL_9:
      v12 = 0;
      v13 = v63;
      v14 = (*v4 + 8);
      do
      {
        *&v13[8 * v12] = *(v6 + 8 * v12);
        v10[v12] = 0x3FF0000000000000;
        v10[v8 + v12] = *(v14 - 1);
        v10[(2 * (v7 >> 3) + v12)] = *v14;
        *&v10[3 * v8 + v12] = *(v14 - 1) * *(v14 - 1);
        *&v10[(4 * (v7 >> 3) + v12)] = *(v14 - 1) * 0.5 * *v14;
        v15 = *v14;
        v14 += 2;
        *&v10[5 * v8 + v12++] = v15 * v15;
      }

      while (v8 != v12);
      v16 = v53;
      v10 = v55;
      goto LABEL_14;
    }
  }

  else
  {
    if (v11 >= 1)
    {
      bzero(v56, 8 * (6 * v8));
    }

    if (v8)
    {
      goto LABEL_9;
    }
  }

  v16 = 0;
LABEL_14:
  v18 = 0;
  v19 = 0;
  v46 = 49;
  v41 = &unk_1F4CEDEF8;
  v47 = v48;
  v42 = 6;
  v43 = v7 >> 3;
  v44 = 6 * v8;
  v45 = 0x600000006;
  do
  {
    v20 = v18;
    v21 = v19;
    v22 = v7 >> 3;
    if (v8)
    {
      do
      {
        v48[v21] = v10[v20];
        v21 += 6;
        ++v20;
        LODWORD(v22) = v22 - 1;
      }

      while (v22);
    }

    ++v19;
    v18 += v16;
  }

  while (v19 != 6);
  v33 = 0x600000006;
  v31 = &unk_1F4CDF278;
  v32 = xmmword_1D0E7F320;
  v34 = &v35;
  sub_1D0B89390(&v41, &v49, &v31);
  v38 = 0x600000006;
  v36 = &unk_1F4CDF278;
  v37 = xmmword_1D0E7F320;
  v39 = &v40;
  v28 = 0x100000006;
  v26 = &unk_1F4CE1400;
  v27 = xmmword_1D0E84530;
  v29 = v30;
  v67 = 0x100000018;
  v66 = xmmword_1D0E84770;
  v65 = &unk_1F4CE2408;
  v68 = v69;
  sub_1D0B9F868(&v31, &v26, &v65, &v36);
  v28 = 0x100000006;
  v26 = &unk_1F4CE0BF8;
  v27 = xmmword_1D0E84530;
  v29 = v30;
  sub_1D0B89390(&v41, &v57, &v26);
  v67 = 0x100000006;
  v66 = xmmword_1D0E84530;
  v65 = &unk_1F4CE0BF8;
  v68 = v69;
  sub_1D0B89390(&v36, &v26, &v65);
  v2[1] = *v2;
  sub_1D0C4D030(v2, 6uLL);
  v23 = 0;
  v24 = v68;
  v25 = *v2;
  do
  {
    *(v25 + v23) = *&v24[v23];
    v23 += 8;
  }

  while (v23 != 48);
}

uint64_t sub_1D0E156DC(uint64_t a1)
{
  *(a1 + 24) = 0xA0000000ALL;
  *a1 = &unk_1F4CE2180;
  *(a1 + 32) = a1 + 40;
  *(a1 + 8) = xmmword_1D0E84630;
  return sub_1D0BBBC00(a1, 0.0);
}

uint64_t raven::RavenIonosphereEstimator::Initialize(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v34 = v5;
  v35 = v4;
  v36 = v2;
  v37 = v3;
  if (*(a1 + 9) == 1)
  {
    v19[0] = 12;
    LOBYTE(v29) = 4;
    v8 = cnprint::CNLogFormatter::FormatGeneral(a1 + 4040, a1 + 32, "Attempting to initialize an already initialized estimator");
    if (*(a1 + 4063) >= 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = *(a1 + 4040);
    }

    cnprint::CNPrinter::Print(v19, &v29, "%s", v9);
  }

  *(a1 + 16) = *a2;
  *(a1 + 32) = *a2;
  *(a1 + 48) = *a2;
  sub_1D0E15A54(a1 + 8456);
  sub_1D0BADC18(a1 + 8456, a2);
  bzero((a1 + 3216), 0x330uLL);
  v22 = 0x10000000ALL;
  v20 = &unk_1F4CEAE48;
  v23 = v24;
  v21 = xmmword_1D0E87BE0;
  v10 = *(a2 + 32);
  v24[0] = *(a2 + 16);
  v24[1] = v10;
  v25 = *(a2 + 48);
  v11 = *(a2 + 72);
  v26 = vextq_s8(*(a2 + 56), *(a2 + 56), 8uLL);
  v27 = v11;
  v28 = *(a2 + 88);
  sub_1D0E1A968(v19, a2 + 96);
  v16 = 0x10000000ALL;
  v14 = &unk_1F4CEAE48;
  v15 = xmmword_1D0E87BE0;
  v17 = &v18;
  sub_1D0B89390(v19, &v20, &v14);
  v12 = DWORD2(v21);
  sub_1D0B94CA4(&v29, &v20);
  v30 = v12;
  v31 = 1;
  v32 = v12;
  v33 = v12;
  sub_1D0B894B0(a1 + 4096, &v29);
  sub_1D0B894B0(a1 + 4216, v19);
  sub_1D0B94CA4(&v29, &v14);
  v30 = v12;
  v31 = 1;
  v32 = v12;
  v33 = v12;
  sub_1D0B894B0(a1 + 5056, &v29);
  sub_1D0B894B0(a1 + 5176, a1 + 4096);
  sub_1D0B894B0(a1 + 5296, a1 + 4216);
  sub_1D0B894B0(a1 + 6136, a1 + 5056);
  *(a1 + 6256) = 0x3FF0000000000000;
  *(a1 + 6264) = 0;
  *(a1 + 6268) = 1;
  v29 = 0.5;
  result = sub_1D0D87CD8(a1 + 8392, &v29);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 9) = 1;
  return result;
}

double raven::RavenIonosphereEstimator::ResetMeasurementCounts(raven::RavenIonosphereEstimator *this)
{
  result = 0.0;
  *(this + 3620) = 0u;
  *(this + 3592) = 0u;
  *(this + 3608) = 0u;
  *(this + 3560) = 0u;
  *(this + 3576) = 0u;
  *(this + 3528) = 0u;
  *(this + 3544) = 0u;
  *(this + 3496) = 0u;
  *(this + 3512) = 0u;
  *(this + 3464) = 0u;
  *(this + 3480) = 0u;
  *(this + 3432) = 0u;
  *(this + 3448) = 0u;
  *(this + 3400) = 0u;
  *(this + 3416) = 0u;
  *(this + 3368) = 0u;
  *(this + 3384) = 0u;
  *(this + 3336) = 0u;
  *(this + 3352) = 0u;
  *(this + 3304) = 0u;
  *(this + 3320) = 0u;
  *(this + 3272) = 0u;
  *(this + 3288) = 0u;
  *(this + 3240) = 0u;
  *(this + 3256) = 0u;
  return result;
}

uint64_t raven::RavenIonosphereEstimator::IsObservable(raven::RavenIonosphereEstimator *this)
{
  if (*(this + 9))
  {
    return sub_1D0BF656C(this + 4088);
  }

  else
  {
    return 0;
  }
}

double sub_1D0E159F8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = 0x10000000ALL;
  *a2 = &unk_1F4CEAE48;
  *(a2 + 8) = xmmword_1D0E87BE0;
  *(a2 + 32) = a2 + 40;
  v2 = 1088;
  if (!*(a1 + 2180))
  {
    v2 = 8;
  }

  *&result = sub_1D0B894B0(a2, a1 + v2).n128_u64[0];
  return result;
}

double sub_1D0E15A54(uint64_t a1)
{
  *a1 = 0;
  sub_1D0BAAF58((a1 + 40));
  *(a1 + 3184) = 0;
  *(a1 + 12704) = 0;
  result = 0.0;
  *(a1 + 72) = 0u;
  *(a1 + 1520) = 0u;
  *(a1 + 1912) = 0u;
  *(a1 + 2656) = 0u;
  *(a1 + 2704) = 0u;
  *(a1 + 3096) = 0u;
  *(a1 + 3144) = 0u;
  *(a1 + 3200) = 0u;
  *(a1 + 3944) = 0u;
  *(a1 + 4688) = 0u;
  *(a1 + 5432) = 0u;
  *(a1 + 5648) = 0u;
  *(a1 + 6040) = 0u;
  *(a1 + 8408) = 0u;
  *(a1 + 0x2000) = 0u;
  *(a1 + 10560) = 0u;
  *(a1 + 12720) = 0u;
  *(a1 + 13112) = 0u;
  return result;
}

uint64_t sub_1D0E15AF0(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v256 = v3;
  v258 = v2;
  v263 = v4;
  v6 = v5;
  v7 = v1;
  if (!*(v1 + 2180))
  {
    sub_1D0B894B0(v1 + 1088, v1 + 8);
    sub_1D0B894B0(v7 + 1208, v7 + 128);
    sub_1D0B894B0(v7 + 2048, v7 + 968);
  }

  v8 = *(v6 + 8);
  if ((v8 & 0x80000000) != 0)
  {
    __assert_rtn("Zeros", "cnmatrix.h", 3098, "nr >= 0");
  }

  v9 = *(v7 + 1096);
  v10 = *(v7 + 1100);
  v269 = 0x10000000ALL;
  v264 = &unk_1F4CEAE48;
  v270 = v271;
  v265 = v8;
  v266 = 1;
  v267 = v8;
  v268 = v8;
  if (v8 > 3)
  {
    v11 = &v271[v8];
    bzero(v271, 16 * ((v8 - 1) >> 1));
    *(v11 - 2) = 0;
    *(v11 - 1) = 0;
  }

  else if (v8)
  {
    bzero(v271, 8 * v8);
  }

  if (v9)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = v12;
  if (v9 <= v10)
  {
    LODWORD(v14) = v10;
  }

  else
  {
    LODWORD(v14) = v9;
  }

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v14;
  }

  v262 = v14;
  v15 = *(v258 + 8);
  v16 = *(v258 + 12);
  if (v15 <= v16)
  {
    v17 = *(v258 + 12);
  }

  else
  {
    v17 = *(v258 + 8);
  }

  if (v16)
  {
    v18 = v15 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (v18)
  {
    v19 = 0;
  }

  else
  {
    v19 = v17;
  }

  v20 = *(v7 + 4256);
  v253 = *(v7 + 4281);
  sub_1D0BEB970(&v308, v263, 0);
  *&v369[20] = 1;
  v370 = v371;
  v21 = DWORD1(v309);
  *v369 = 1;
  *&v369[4] = DWORD1(v309);
  *&v369[8] = DWORD1(v309);
  *&v369[12] = 0x100000001;
  if (DWORD1(v309))
  {
    v22 = 0;
    v23 = v311;
    v24 = v309;
    v25 = v309 - 1;
    v26 = 1;
    do
    {
      v27 = v23[v24 * v22];
      v28 = v26;
      v29 = v25;
      if (v24 >= 2)
      {
        do
        {
          v27 += v23[v28++];
          --v29;
        }

        while (v29);
      }

      v371[v22++] = v27;
      v26 += v24;
    }

    while (v22 != v21);
  }

  sub_1D0BEB970(&v308, v263, 1);
  *&v369[20] = 1;
  v370 = v371;
  v30 = DWORD1(v309);
  *v369 = 1;
  *&v369[4] = DWORD1(v309);
  *&v369[8] = DWORD1(v309);
  *&v369[12] = 0x100000001;
  if (DWORD1(v309))
  {
    v31 = 0;
    v32 = v311;
    v33 = v309;
    v34 = v309 - 1;
    v35 = 1;
    do
    {
      v36 = v32[v33 * v31];
      v37 = v35;
      v38 = v34;
      if (v33 >= 2)
      {
        do
        {
          v36 += v32[v37++];
          --v38;
        }

        while (v38);
      }

      v371[v31++] = v36;
      v35 += v33;
    }

    while (v31 != v30);
  }

  if (v13)
  {
    *&v369[16] = 0x10000000ALL;
    v368 = &unk_1F4CEAE48;
    v370 = v371;
    *v369 = xmmword_1D0E7F490;
    sub_1D0B894B0(v7 + 1088, &v368);
  }

  v39 = v262;
  if (!*(v7 + 1216) || !*(v7 + 1220))
  {
    if ((v262 & 0x80000000) != 0)
    {
      __assert_rtn("Zeros", "cnmatrix.h", 3056, "n >= 0");
    }

    *&v369[16] = 0xA0000000ALL;
    v368 = &unk_1F4CE2180;
    v370 = v371;
    v40 = v262 * v262;
    *v369 = v262;
    *&v369[4] = v262;
    *&v369[8] = v262 * v262;
    *&v369[12] = v262;
    if (v262 * v262 > 3)
    {
      v41 = &v371[2 * v40];
      bzero(v371, 16 * ((v40 - 1) >> 1));
      *(v41 - 2) = 0;
      *(v41 - 1) = 0;
    }

    else if (v40 >= 1)
    {
      bzero(v371, 8 * (v262 * v262));
    }

    sub_1D0B894B0(v7 + 1208, &v368);
    v39 = v262;
  }

  if (!*(v7 + 2056) || !*(v7 + 2060))
  {
    *&v369[16] = 0x10000000ALL;
    *v369 = xmmword_1D0E87BE0;
    v368 = &unk_1F4CEAE48;
    v370 = v371;
    sub_1D0B89390(v7 + 1208, v7 + 1088, &v368);
    sub_1D0B894B0(v7 + 2048, &v368);
    v39 = v262;
  }

  if (v39 < 0)
  {
    __assert_rtn("Zeros", "cnmatrix.h", 3099, "nc >= 0");
  }

  *&v369[16] = 0xA0000000ALL;
  v368 = &unk_1F4CE2180;
  v370 = v371;
  v42 = v262 * v8;
  *v369 = v8;
  *&v369[4] = v262;
  *&v369[8] = v262 * v8;
  *&v369[12] = v8;
  v252 = v262 * v8;
  if (v262 * v8 > 3)
  {
    v43 = &v371[2 * v42];
    bzero(v371, 16 * ((v42 - 1) >> 1));
    *(v43 - 2) = 0;
    *(v43 - 1) = 0;
  }

  else if (v42 >= 1)
  {
    bzero(v371, 8 * (v262 * v8));
  }

  sub_1D0B894B0(v7 + 2392, &v368);
  *&v369[16] = 0x10000000ALL;
  v368 = &unk_1F4CEAE48;
  v370 = v371;
  *v369 = v8;
  *&v369[4] = 1;
  *&v369[8] = v8;
  *&v369[12] = v8;
  if (v8 > 3)
  {
    v44 = &v371[2 * v8];
    bzero(v371, 16 * ((v8 - 1) >> 1));
    *(v44 - 2) = 0;
    *(v44 - 1) = 0;
  }

  else if (v8)
  {
    bzero(v371, 8 * v8);
  }

  sub_1D0B894B0(v7 + 3232, &v368);
  sub_1D0B894B0(v7 + 3352, v6);
  v361 = 0x100000001;
  *(v7 + 2180) = 1;
  *(v7 + 16) = v262;
  *(v7 + 20) = 1;
  *(v7 + 24) = v262;
  *(v7 + 28) = v262;
  v362 = 0;
  v360 = 0u;
  v359 = &unk_1F4CEDB60;
  v365 = 0x10000000ALL;
  v364 = xmmword_1D0E87BE0;
  v363 = &unk_1F4CEAE48;
  v366 = &v367;
  if ((v19 & 0x80000000) != 0)
  {
    __assert_rtn("CNMatrix", "cnmatrix.h", 419, "nr >= 0");
  }

  *&v360 = v19 | 0x100000000;
  DWORD2(v360) = v19;
  HIDWORD(v360) = v19;
  v362 = &v363;
  sub_1D0E1E8C8(&v357, v19);
  sub_1D0E1E8C8(&v355, v19);
  v352 = 0x10000000ALL;
  v351 = xmmword_1D0E87BE0;
  v350 = &unk_1F4CED1E8;
  v353 = &v354;
  v347 = 0x10000000ALL;
  v346 = xmmword_1D0E87BE0;
  v345 = &unk_1F4CED1E8;
  v348 = &v349;
  v254 = v7;
  v261 = v19;
  if (v19)
  {
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = *(v263 + 32);
    v49 = 1;
    v249 = vdupq_n_s64(4uLL);
    do
    {
      v50 = *(v48 + 4 * v45);
      v274 = 0xA00000001;
      v272 = &unk_1F4CED418;
      v275 = v276;
      if (v50 == 1)
      {
        v51 = 0;
        *&v52 = 0x100000001;
        *(&v52 + 1) = 0x100000001;
        v273 = v52;
        v276[0] = 0;
        v53 = 1;
        LODWORD(v50) = 1;
      }

      else if (v50 <= 0)
      {
        v53 = 0;
        LODWORD(v50) = 0;
        v273 = 0uLL;
        v51 = 1;
      }

      else
      {
        v54 = 0;
        LODWORD(v273) = 1;
        DWORD1(v273) = v50;
        *(&v273 + 1) = v50 | 0x100000000;
        v55 = v277;
        v56 = xmmword_1D0E7DD30;
        v57 = xmmword_1D0E84440;
        v58 = vdupq_n_s64(v50 - 1);
        do
        {
          v59 = vmovn_s64(vcgeq_u64(v58, v56));
          if (vuzp1_s16(v59, *v56.i8).u8[0])
          {
            *(v55 - 3) = v54;
          }

          if (vuzp1_s16(v59, *&v56).i8[2])
          {
            *(v55 - 2) = v54 + 1;
          }

          if (vuzp1_s16(*&v56, vmovn_s64(vcgeq_u64(v58, *&v57))).i32[1])
          {
            *(v55 - 1) = v54 + 2;
            *v55 = v54 + 3;
          }

          v54 += 4;
          v60 = vdupq_n_s64(4uLL);
          v57 = vaddq_s64(v57, v60);
          v56 = vaddq_s64(v56, v60);
          v55 += 4;
        }

        while (((v50 + 3) & 0xFFFFFFFC) != v54);
        v51 = 0;
        v53 = 1;
      }

      v310 = 0x10000000ALL;
      v308 = &unk_1F4CED1E8;
      v311 = v312;
      *&v309 = __PAIR64__(v53, v50);
      DWORD2(v309) = v50 * v53;
      HIDWORD(v309) = v50;
      if (v50)
      {
        v61 = 0;
        v62 = 0;
        do
        {
          if ((v51 & 1) == 0)
          {
            v63 = 0;
            do
            {
              v312[v62 + HIDWORD(v309) * v63] = v276[v61 + v63];
              ++v63;
            }

            while (v53 != v63);
          }

          ++v62;
          v61 += v53;
        }

        while (v62 != v50);
        v64 = v309;
        v53 = DWORD1(v309);
      }

      else
      {
        v64 = 0;
      }

      *&v369[16] = 0x10000000ALL;
      v368 = &unk_1F4CED1E8;
      v370 = v371;
      *v369 = v64;
      *&v369[4] = v53;
      v65 = (v64 * v53);
      *&v369[8] = v65;
      *&v369[12] = v64;
      if (v65 >= 1)
      {
        v66 = v312;
        v67 = v371;
        do
        {
          v68 = *v66++;
          *v67++ = v68 + v47;
          --v65;
        }

        while (v65);
      }

      sub_1D0B9F5D4(&v350, &v368);
      v69 = *(*(v263 + 32) + 4 * (*(v263 + 20) + v45));
      v274 = 0xA00000001;
      v272 = &unk_1F4CED418;
      v275 = v276;
      if (v69 == 1)
      {
        v70 = 0;
        *&v71 = 0x100000001;
        *(&v71 + 1) = 0x100000001;
        v273 = v71;
        v276[0] = 0;
        v72 = 1;
        LODWORD(v69) = 1;
      }

      else if (v69 <= 0)
      {
        v72 = 0;
        LODWORD(v69) = 0;
        v273 = 0uLL;
        v70 = 1;
      }

      else
      {
        v73 = 0;
        LODWORD(v273) = 1;
        DWORD1(v273) = v69;
        *(&v273 + 1) = v69 | 0x100000000;
        v74 = v277;
        v75 = xmmword_1D0E7DD30;
        v76 = xmmword_1D0E84440;
        v77 = vdupq_n_s64(v69 - 1);
        do
        {
          v78 = vmovn_s64(vcgeq_u64(v77, v75));
          if (vuzp1_s16(v78, *v75.i8).u8[0])
          {
            *(v74 - 3) = v73;
          }

          if (vuzp1_s16(v78, *&v75).i8[2])
          {
            *(v74 - 2) = v73 + 1;
          }

          if (vuzp1_s16(*&v75, vmovn_s64(vcgeq_u64(v77, *&v76))).i32[1])
          {
            *(v74 - 1) = v73 + 2;
            *v74 = v73 + 3;
          }

          v73 += 4;
          v76 = vaddq_s64(v76, v249);
          v75 = vaddq_s64(v75, v249);
          v74 += 4;
        }

        while (((v69 + 3) & 0xFFFFFFFC) != v73);
        v70 = 0;
        v72 = 1;
      }

      v310 = 0x10000000ALL;
      v308 = &unk_1F4CED1E8;
      v311 = v312;
      *&v309 = __PAIR64__(v72, v69);
      DWORD2(v309) = v69 * v72;
      HIDWORD(v309) = v69;
      if (v69)
      {
        v79 = 0;
        v80 = 0;
        do
        {
          if ((v70 & 1) == 0)
          {
            v81 = 0;
            do
            {
              v312[v80 + HIDWORD(v309) * v81] = v276[v79 + v81];
              ++v81;
            }

            while (v72 != v81);
          }

          ++v80;
          v79 += v72;
        }

        while (v80 != v69);
        v82 = v309;
        v72 = DWORD1(v309);
      }

      else
      {
        v82 = 0;
      }

      *&v369[16] = 0x10000000ALL;
      v368 = &unk_1F4CED1E8;
      v370 = v371;
      *v369 = v82;
      *&v369[4] = v72;
      v83 = (v82 * v72);
      *&v369[8] = v83;
      *&v369[12] = v82;
      if (v83 >= 1)
      {
        v84 = v312;
        v85 = v371;
        do
        {
          v86 = *v84++;
          *v85++ = v86 + v46;
          --v83;
        }

        while (v83);
      }

      sub_1D0B9F5D4(&v345, &v368);
      v335 = 0x10000000ALL;
      v334 = xmmword_1D0E87BE0;
      v333 = &unk_1F4CEAE48;
      v336 = v337;
      *&v369[16] = 0xA0000000ALL;
      *v369 = xmmword_1D0E84630;
      v368 = &unk_1F4CE2180;
      v370 = v371;
      v310 = 0xA0000000ALL;
      v309 = xmmword_1D0E84630;
      v308 = &unk_1F4CE2180;
      v311 = v312;
      v87 = *(*(v258 + 32) + 8 * v45);
      sub_1D0BEB9D4(&v272, v254 + 1088, &v350);
      v88 = sub_1D0E1E670(&v339, v270, &v345);
      if (v87(&v272, &v339, *(*(v256 + 32) + 8 * v45), &v333, &v368, &v308, v88))
      {
        *(v254 + 2176) = 0;
        return 20;
      }

      sub_1D0BEB9D4(&v272, v254 + 8, &v350);
      sub_1D0BEC078(&v272, DWORD2(v334), v336);
      sub_1D0B894B0(&v362[15 * v45], &v333);
      v274 = 0xA0000000ALL;
      v273 = xmmword_1D0E84630;
      v272 = &unk_1F4CE2180;
      v275 = v276;
      v330 = 0x10000000ALL;
      v328 = &unk_1F4CED1E8;
      v329 = xmmword_1D0E87BE0;
      v331 = v332;
      v325 = 0x10000000ALL;
      v324 = xmmword_1D0E87BE0;
      v323 = &unk_1F4CED1E8;
      v326 = v327;
      v341 = 0x100000028;
      v339 = &unk_1F4CED230;
      v340 = xmmword_1D0EA1280;
      v342 = &v343;
      v89 = sub_1D0BA5174(&v368, &v328, &v323, &v339, &v272);
      sub_1D0B894B0(v358 + 840 * v45, &v272);
      *&v90 = sub_1D0B894B0(v356 + 840 * v45, &v308).n128_u64[0];
      v49 &= v89 <= v20;
      v48 = *(v263 + 32);
      v47 += *(v48 + 4 * v45);
      v46 += *(v48 + 4 * (*(v263 + 20) + v45++));
    }

    while (v45 != v19);
    v7 = v254;
    if (v49)
    {
      goto LABEL_115;
    }

    LOWORD(v368) = 2;
    LOBYTE(v308) = 2;
    v242 = cnprint::CNLogFormatter::FormatWarning((v254 + 2344), "Predict state Jacobian matrix is not invertible.", v90);
    if (*(v254 + 2367) >= 0)
    {
      v243 = v242;
    }

    else
    {
      v243 = *(v254 + 2344);
    }

    cnprint::CNPrinter::Print(&v368, &v308, "%s", v243);
    sub_1D0B894B0(v254 + 128, v254 + 1208);
    *&v369[16] = 0x10000000ALL;
    *v369 = xmmword_1D0E87BE0;
    v368 = &unk_1F4CEAE48;
    v370 = v371;
    sub_1D0B89390(v254 + 128, v254 + 8, &v368);
    sub_1D0B894B0(v254 + 968, &v368);
    *&v369[16] = 0xA0000000ALL;
    v368 = &unk_1F4CE2180;
    v370 = v371;
    *v369 = v8;
    *&v369[4] = v262;
    *&v369[8] = v262 * v8;
    *&v369[12] = v8;
    if (v252 > 3)
    {
      v244 = &v371[2 * v252];
      bzero(v371, 16 * ((v252 - 1) >> 1));
      *(v244 - 2) = 0;
      *(v244 - 1) = 0;
    }

    else if (v252 >= 1)
    {
      bzero(v371, 8 * (v262 * v8));
    }

    sub_1D0B894B0(v254 + 2392, &v368);
    *&v369[16] = 0x10000000ALL;
    v368 = &unk_1F4CEAE48;
    v370 = v371;
    *v369 = v8;
    *&v369[4] = 1;
    *&v369[8] = v8;
    *&v369[12] = v8;
    if (v8 > 3)
    {
      v245 = &v371[2 * v8];
      bzero(v371, 16 * ((v8 - 1) >> 1));
      *(v245 - 2) = 0;
      *(v245 - 1) = 0;
    }

    else if (v8)
    {
      bzero(v371, 8 * v8);
    }

    sub_1D0B894B0(v254 + 3232, &v368);
    sub_1D0B894B0(v254 + 3352, v6);
    *(v254 + 2180) = 0;
    *(v254 + 2176) = 0;
    return 21;
  }

  else
  {
LABEL_115:
    if (v253)
    {
      v91 = v19;
    }

    else
    {
      v91 = 1;
    }

    v251 = v91;
    sub_1D0B94CA4(v344, v7 + 1088);
    sub_1D0E1A968(&v339, v7 + 1208);
    sub_1D0B94CA4(v338, v7 + 2048);
    *(v7 + 2400) = 0u;
    *(v7 + 3240) = 0u;
    *(v7 + 3360) = 0u;
    v335 = 0xA0000000ALL;
    v92 = xmmword_1D0E84630;
    v334 = xmmword_1D0E84630;
    v333 = &unk_1F4CE2180;
    v336 = v337;
    v330 = 0xA0000000ALL;
    v328 = &unk_1F4CE2180;
    v93 = v262;
    v94 = v93 * v93;
    v331 = v332;
    LODWORD(v329) = v262;
    DWORD1(v329) = v262;
    DWORD2(v329) = v93 * v93;
    HIDWORD(v329) = v262;
    if (v93 * v93 > 3)
    {
      v96 = &v332[v94];
      bzero(v332, 16 * ((v94 - 1) >> 1));
      v92 = xmmword_1D0E84630;
      v93 = v262;
      *(v96 - 2) = 0;
      *(v96 - 1) = 0;
    }

    else if (v94 >= 1)
    {
      bzero(v332, 8 * (v262 * v262));
      v92 = xmmword_1D0E84630;
      v93 = v262;
    }

    if (v93)
    {
      v97 = 0;
      v98 = v93 + 1;
      v99 = v331;
      do
      {
        v99[v97] = 0x3FF0000000000000;
        v97 += v98;
        --v93;
      }

      while (v93);
    }

    v325 = 0xA0000000ALL;
    v324 = v92;
    v323 = &unk_1F4CE2180;
    v326 = v327;
    v320 = 0x10000000ALL;
    v319 = xmmword_1D0E87BE0;
    v318 = &unk_1F4CEAE48;
    v321 = &v322;
    v315 = 0x10000000ALL;
    v100 = v262;
    v314 = xmmword_1D0E87BE0;
    v313 = &unk_1F4CEAE48;
    v316 = &v317;
    if (v251 >= 1)
    {
      v101 = 0;
      v102 = 0;
      v103 = 0;
      v250 = vdupq_n_s64(v262 - 1);
      v247 = vdupq_n_s64(v8 - 1);
      v248 = vdupq_n_s64(4uLL);
      v257 = v262;
      v246 = &v371[2 * v252];
      do
      {
        v255 = v101;
        if (v253)
        {
          if (v101)
          {
            v104 = v257;
            if (v257 < 0)
            {
              __assert_rtn("Eye", "cnmatrix.h", 2094, "n >= 0");
            }

            v310 = 0xA0000000ALL;
            v308 = &unk_1F4CE2180;
            v105 = v257 * v257;
            v311 = v312;
            LODWORD(v309) = v257;
            DWORD1(v309) = v257;
            DWORD2(v309) = v257 * v257;
            HIDWORD(v309) = v257;
            if (v257 * v257 > 3)
            {
              bzero(v312, 16 * ((v105 - 1) >> 1));
              v104 = v257;
              v152 = &v310 + v105;
              *v152 = 0;
              v152[1] = 0;
            }

            else if (v105 >= 1)
            {
              bzero(v312, 8 * (v257 * v257));
              v104 = v257;
            }

            if (v104)
            {
              v153 = 0;
              LODWORD(v156) = v104;
              v154 = v104 + 1;
              v155 = v311;
              v156 = v156;
              do
              {
                *&v155[2 * v153] = 0x3FF0000000000000;
                v153 += v154;
                --v156;
              }

              while (v156);
            }

            sub_1D0BEBF0C(&v368, &v328, &v350, &v350);
            sub_1D0BEC0EC(&v368, &v308);
            v101 = v255;
          }

          v157 = *(*(v263 + 32) + 4 * v101);
          v274 = 0xA00000001;
          v272 = &unk_1F4CED418;
          v275 = v276;
          if (v157 == 1)
          {
            v158 = 0;
            *&v159 = 0x100000001;
            *(&v159 + 1) = 0x100000001;
            v273 = v159;
            v276[0] = 0;
            v160 = 1;
            LODWORD(v157) = 1;
          }

          else if (v157 <= 0)
          {
            v160 = 0;
            LODWORD(v157) = 0;
            v273 = 0uLL;
            v158 = 1;
          }

          else
          {
            v161 = 0;
            LODWORD(v273) = 1;
            DWORD1(v273) = v157;
            *(&v273 + 1) = v157 | 0x100000000;
            v162 = v277;
            v163 = xmmword_1D0E7DD30;
            v164 = xmmword_1D0E84440;
            v165 = vdupq_n_s64(v157 - 1);
            do
            {
              v166 = vmovn_s64(vcgeq_u64(v165, v163));
              if (vuzp1_s16(v166, *v163.i8).u8[0])
              {
                *(v162 - 3) = v161;
              }

              if (vuzp1_s16(v166, *&v163).i8[2])
              {
                *(v162 - 2) = v161 + 1;
              }

              if (vuzp1_s16(*&v163, vmovn_s64(vcgeq_u64(v165, *&v164))).i32[1])
              {
                *(v162 - 1) = v161 + 2;
                *v162 = v161 + 3;
              }

              v161 += 4;
              v167 = vdupq_n_s64(4uLL);
              v164 = vaddq_s64(v164, v167);
              v163 = vaddq_s64(v163, v167);
              v162 += 4;
            }

            while (((v157 + 3) & 0xFFFFFFFC) != v161);
            v158 = 0;
            v160 = 1;
          }

          v310 = 0x10000000ALL;
          v308 = &unk_1F4CED1E8;
          v311 = v312;
          *&v309 = __PAIR64__(v160, v157);
          DWORD2(v309) = v157 * v160;
          HIDWORD(v309) = v157;
          if (v157)
          {
            v168 = 0;
            v169 = 0;
            do
            {
              if ((v158 & 1) == 0)
              {
                v170 = 0;
                do
                {
                  v312[v169 + HIDWORD(v309) * v170] = v276[v168 + v170];
                  ++v170;
                }

                while (v160 != v170);
              }

              ++v169;
              v168 += v160;
            }

            while (v169 != v157);
            v171 = v309;
            v160 = DWORD1(v309);
          }

          else
          {
            v171 = 0;
          }

          *&v369[16] = 0x10000000ALL;
          v368 = &unk_1F4CED1E8;
          v370 = v371;
          *v369 = v171;
          *&v369[4] = v160;
          v172 = (v171 * v160);
          *&v369[8] = v172;
          *&v369[12] = v171;
          if (v172 >= 1)
          {
            v173 = v312;
            v174 = v371;
            do
            {
              v175 = *v173++;
              *v174++ = v175 + v103;
              --v172;
            }

            while (v172);
          }

          sub_1D0B9F5D4(&v350, &v368);
          v176 = *(*(v263 + 32) + 4 * (*(v263 + 20) + v101));
          v274 = 0xA00000001;
          v272 = &unk_1F4CED418;
          v275 = v276;
          if (v176 == 1)
          {
            v177 = 0;
            *&v178 = 0x100000001;
            *(&v178 + 1) = 0x100000001;
            v273 = v178;
            v276[0] = 0;
            v179 = 1;
            LODWORD(v176) = 1;
          }

          else if (v176 <= 0)
          {
            v179 = 0;
            LODWORD(v176) = 0;
            v273 = 0uLL;
            v177 = 1;
          }

          else
          {
            v180 = 0;
            LODWORD(v273) = 1;
            DWORD1(v273) = v176;
            *(&v273 + 1) = v176 | 0x100000000;
            v181 = v277;
            v182 = xmmword_1D0E7DD30;
            v183 = xmmword_1D0E84440;
            v184 = vdupq_n_s64(v176 - 1);
            do
            {
              v185 = vmovn_s64(vcgeq_u64(v184, v182));
              if (vuzp1_s16(v185, *v182.i8).u8[0])
              {
                *(v181 - 3) = v180;
              }

              if (vuzp1_s16(v185, *&v182).i8[2])
              {
                *(v181 - 2) = v180 + 1;
              }

              if (vuzp1_s16(*&v182, vmovn_s64(vcgeq_u64(v184, *&v183))).i32[1])
              {
                *(v181 - 1) = v180 + 2;
                *v181 = v180 + 3;
              }

              v180 += 4;
              v186 = vdupq_n_s64(4uLL);
              v183 = vaddq_s64(v183, v186);
              v182 = vaddq_s64(v182, v186);
              v181 += 4;
            }

            while (((v176 + 3) & 0xFFFFFFFC) != v180);
            v177 = 0;
            v179 = 1;
          }

          v310 = 0x10000000ALL;
          v308 = &unk_1F4CED1E8;
          v311 = v312;
          *&v309 = __PAIR64__(v179, v176);
          DWORD2(v309) = v176 * v179;
          HIDWORD(v309) = v176;
          if (v176)
          {
            v187 = 0;
            v188 = 0;
            do
            {
              if ((v177 & 1) == 0)
              {
                v189 = 0;
                do
                {
                  v312[v188 + HIDWORD(v309) * v189] = v276[v187 + v189];
                  ++v189;
                }

                while (v179 != v189);
              }

              ++v188;
              v187 += v179;
            }

            while (v188 != v176);
            v190 = v309;
            v179 = DWORD1(v309);
          }

          else
          {
            v190 = 0;
          }

          *&v369[16] = 0x10000000ALL;
          v368 = &unk_1F4CED1E8;
          v370 = v371;
          *v369 = v190;
          *&v369[4] = v179;
          v191 = (v190 * v179);
          *&v369[8] = v191;
          *&v369[12] = v190;
          if (v191 >= 1)
          {
            v192 = v312;
            v193 = v371;
            do
            {
              v194 = *v192++;
              *v193++ = v194 + v102;
              --v191;
            }

            while (v191);
          }

          sub_1D0B9F5D4(&v345, &v368);
          v195 = *(v6 + 20);
          v196 = *(v6 + 32);
          v197 = DWORD2(v346);
          v198 = v348;
          *&v369[16] = 0xA0000000ALL;
          *v369 = DWORD2(v346);
          *&v369[4] = DWORD2(v346);
          *&v369[8] = *&v369[4] * *&v369[4];
          *&v369[12] = DWORD2(v346);
          v368 = &unk_1F4CE2180;
          v370 = v371;
          if (DWORD2(v346))
          {
            v199 = 0;
            v200 = 0;
            do
            {
              v201 = 0;
              v202 = *(v198 + v200) * v195;
              do
              {
                *&v371[2 * (v199 + v201)] = *(v196 + 8 * (*(v198 + v201) + v202));
                ++v201;
              }

              while (v197 != v201);
              ++v200;
              v199 += v197;
            }

            while (v200 != v197);
          }

          sub_1D0B894B0(&v333, &v368);
          v203 = *(v263 + 32);
          v150 = *(v203 + 4 * (*(v263 + 20) + v101));
          v257 = *(v203 + 4 * v101);
          v204 = v358;
          sub_1D0BEBF0C(&v368, &v328, &v350, &v350);
          sub_1D0BEC0EC(&v368, v204 + 840 * v255);
          if ((v150 & 0x80000000) != 0)
          {
            __assert_rtn("Zeros", "cnmatrix.h", 3099, "nc >= 0");
          }

          *&v369[16] = 0xA0000000ALL;
          v205 = v150 * v262;
          v368 = &unk_1F4CE2180;
          v370 = v371;
          *v369 = v262;
          *&v369[4] = v150;
          *&v369[8] = v150 * v262;
          *&v369[12] = v262;
          if ((v150 * v262) > 3)
          {
            bzero(v371, 16 * ((v205 - 1) >> 1));
            v206 = &v369[8 * v150 * v262 + 16];
            *v206 = 0;
            v206[1] = 0;
          }

          else if (v205 >= 1)
          {
            bzero(v371, 8 * v150 * v262);
          }

          sub_1D0B894B0(&v323, &v368);
          v259 = v356;
          v207 = DWORD1(v324);
          sub_1D0BEDD40(&v308, SDWORD1(v324));
          if (v207 >= 1)
          {
            v208 = 0;
            v209 = vdupq_n_s64(v207 - 1);
            v210 = v311 + 2;
            v211 = xmmword_1D0E7DD30;
            v212 = xmmword_1D0E84440;
            do
            {
              v213 = vmovn_s64(vcgeq_u64(v209, v211));
              if (vuzp1_s16(v213, *v209.i8).u8[0])
              {
                *(v210 - 2) = v208;
              }

              if (vuzp1_s16(v213, *&v209).i8[2])
              {
                *(v210 - 1) = v208 + 1;
              }

              if (vuzp1_s16(*&v209, vmovn_s64(vcgeq_u64(v209, *&v212))).i32[1])
              {
                *v210 = v208 + 2;
                v210[1] = v208 + 3;
              }

              v208 += 4;
              v212 = vaddq_s64(v212, v248);
              v211 = vaddq_s64(v211, v248);
              v210 += 4;
            }

            while (((v207 + 3) & 0xFFFFFFFC) != v208);
          }

          sub_1D0BEBF0C(&v368, &v323, &v350, &v308);
          sub_1D0BEC0EC(&v368, v259 + 840 * v255);
          sub_1D0B894B0(&v318, v344);
          v260 = v362;
          sub_1D0BEB9D4(&v368, &v318, &v350);
          sub_1D0BEC078(&v368, v260[15 * v255 + 2], v260[15 * v255 + 4]);
          sub_1D0E1E670(&v368, v270, &v345);
          sub_1D0B894B0(&v313, &v368);
          v214 = *(v263 + 32);
          v103 += *(v214 + 4 * v255);
          v102 += *(v214 + 4 * (*(v263 + 20) + v255));
          v151 = v262;
          v149 = v150 * v262;
        }

        else
        {
          v106 = v100;
          sub_1D0B894B0(&v333, v6);
          *&v369[16] = 0xA0000000ALL;
          v368 = &unk_1F4CE2180;
          v370 = v371;
          *v369 = v106;
          *&v369[4] = v8;
          *&v369[8] = v262 * v8;
          *&v369[12] = v106;
          if (v252 >= 4)
          {
            bzero(v371, 16 * ((v252 - 1) >> 1));
            *(v246 - 2) = 0;
            *(v246 - 1) = 0;
          }

          else if (v252 >= 1)
          {
            bzero(v371, 8 * (v262 * v8));
          }

          sub_1D0B894B0(&v323, &v368);
          sub_1D0B894B0(&v318, v254 + 8);
          sub_1D0B894B0(&v313, &v264);
          if (v261)
          {
            v107 = 0;
            v108 = *(v263 + 32);
            do
            {
              v109 = *(v108 + 4 * v107);
              v274 = 0xA00000001;
              v272 = &unk_1F4CED418;
              v275 = v276;
              if (v109 == 1)
              {
                v110 = 0;
                *&v111 = 0x100000001;
                *(&v111 + 1) = 0x100000001;
                v273 = v111;
                v276[0] = 0;
                v112 = 1;
                LODWORD(v109) = 1;
              }

              else if (v109 <= 0)
              {
                v112 = 0;
                LODWORD(v109) = 0;
                v273 = 0uLL;
                v110 = 1;
              }

              else
              {
                v113 = 0;
                LODWORD(v273) = 1;
                DWORD1(v273) = v109;
                *(&v273 + 1) = v109 | 0x100000000;
                v114 = xmmword_1D0E84440;
                v115 = xmmword_1D0E7DD30;
                v116 = v277;
                v117 = vdupq_n_s64(v109 - 1);
                do
                {
                  v118 = vmovn_s64(vcgeq_u64(v117, v115));
                  if (vuzp1_s16(v118, *v114.i8).u8[0])
                  {
                    *(v116 - 3) = v113;
                  }

                  if (vuzp1_s16(v118, *&v114).i8[2])
                  {
                    *(v116 - 2) = v113 + 1;
                  }

                  if (vuzp1_s16(*&v114, vmovn_s64(vcgeq_u64(v117, *&v114))).i32[1])
                  {
                    *(v116 - 1) = v113 + 2;
                    *v116 = v113 + 3;
                  }

                  v113 += 4;
                  v119 = vdupq_n_s64(4uLL);
                  v114 = vaddq_s64(v114, v119);
                  v115 = vaddq_s64(v115, v119);
                  v116 += 4;
                }

                while (((v109 + 3) & 0xFFFFFFFC) != v113);
                v110 = 0;
                v112 = 1;
              }

              v310 = 0x10000000ALL;
              v308 = &unk_1F4CED1E8;
              v311 = v312;
              *&v309 = __PAIR64__(v112, v109);
              DWORD2(v309) = v109 * v112;
              HIDWORD(v309) = v109;
              if (v109)
              {
                v120 = 0;
                v121 = 0;
                do
                {
                  if ((v110 & 1) == 0)
                  {
                    v122 = 0;
                    do
                    {
                      v312[v121 + HIDWORD(v309) * v122] = v276[v120 + v122];
                      ++v122;
                    }

                    while (v112 != v122);
                  }

                  ++v121;
                  v120 += v112;
                }

                while (v121 != v109);
                v123 = v309;
                v112 = DWORD1(v309);
              }

              else
              {
                v123 = 0;
              }

              *&v369[16] = 0x10000000ALL;
              v368 = &unk_1F4CED1E8;
              v370 = v371;
              *v369 = v123;
              *&v369[4] = v112;
              v124 = (v123 * v112);
              *&v369[8] = v124;
              *&v369[12] = v123;
              if (v124 >= 1)
              {
                v125 = v312;
                v126 = v371;
                do
                {
                  v127 = *v125++;
                  *v126++ = v127 + v103;
                  --v124;
                }

                while (v124);
              }

              sub_1D0B9F5D4(&v350, &v368);
              v128 = *(*(v263 + 32) + 4 * (*(v263 + 20) + v107));
              v274 = 0xA00000001;
              v272 = &unk_1F4CED418;
              v275 = v276;
              if (v128 == 1)
              {
                v129 = 0;
                *&v130 = 0x100000001;
                *(&v130 + 1) = 0x100000001;
                v273 = v130;
                v276[0] = 0;
                v131 = 1;
                LODWORD(v128) = 1;
              }

              else if (v128 <= 0)
              {
                v131 = 0;
                LODWORD(v128) = 0;
                v273 = 0uLL;
                v129 = 1;
              }

              else
              {
                v132 = 0;
                LODWORD(v273) = 1;
                DWORD1(v273) = v128;
                *(&v273 + 1) = v128 | 0x100000000;
                v133 = xmmword_1D0E84440;
                v134 = xmmword_1D0E7DD30;
                v135 = v277;
                v136 = vdupq_n_s64(v128 - 1);
                do
                {
                  v137 = vmovn_s64(vcgeq_u64(v136, v134));
                  if (vuzp1_s16(v137, *v133.i8).u8[0])
                  {
                    *(v135 - 3) = v132;
                  }

                  if (vuzp1_s16(v137, *&v133).i8[2])
                  {
                    *(v135 - 2) = v132 + 1;
                  }

                  if (vuzp1_s16(*&v133, vmovn_s64(vcgeq_u64(v136, *&v133))).i32[1])
                  {
                    *(v135 - 1) = v132 + 2;
                    *v135 = v132 + 3;
                  }

                  v132 += 4;
                  v138 = vdupq_n_s64(4uLL);
                  v133 = vaddq_s64(v133, v138);
                  v134 = vaddq_s64(v134, v138);
                  v135 += 4;
                }

                while (((v128 + 3) & 0xFFFFFFFC) != v132);
                v129 = 0;
                v131 = 1;
              }

              v310 = 0x10000000ALL;
              v308 = &unk_1F4CED1E8;
              v311 = v312;
              *&v309 = __PAIR64__(v131, v128);
              DWORD2(v309) = v128 * v131;
              HIDWORD(v309) = v128;
              if (v128)
              {
                v139 = 0;
                v140 = 0;
                do
                {
                  if ((v129 & 1) == 0)
                  {
                    v141 = 0;
                    do
                    {
                      v312[v140 + HIDWORD(v309) * v141] = v276[v139 + v141];
                      ++v141;
                    }

                    while (v131 != v141);
                  }

                  ++v140;
                  v139 += v131;
                }

                while (v140 != v128);
                v142 = v309;
                v131 = DWORD1(v309);
              }

              else
              {
                v142 = 0;
              }

              *&v369[16] = 0x10000000ALL;
              v368 = &unk_1F4CED1E8;
              v370 = v371;
              *v369 = v142;
              *&v369[4] = v131;
              v143 = (v142 * v131);
              *&v369[8] = v143;
              *&v369[12] = v142;
              if (v143 >= 1)
              {
                v144 = v312;
                v145 = v371;
                do
                {
                  v146 = *v144++;
                  *v145++ = v146 + v102;
                  --v143;
                }

                while (v143);
              }

              sub_1D0B9F5D4(&v345, &v368);
              v147 = v358;
              sub_1D0BEBF0C(&v368, &v328, &v350, &v350);
              sub_1D0BEC0EC(&v368, v147 + 840 * v107);
              v148 = v356;
              sub_1D0BEBF0C(&v368, &v323, &v350, &v345);
              sub_1D0BEC0EC(&v368, v148 + 840 * v107);
              v108 = *(v263 + 32);
              v103 += *(v108 + 4 * v107);
              v102 += *(v108 + 4 * (*(v263 + 20) + v107++));
            }

            while (v107 != v261);
            v149 = v262 * v8;
            v150 = v8;
            v257 = v262;
            v151 = v262;
          }

          else
          {
            v149 = v262 * v8;
            v150 = v8;
            v151 = v262;
            v257 = v262;
          }
        }

        v305 = 0xA0000000ALL;
        v303 = &unk_1F4CE2180;
        v306 = v307;
        *&v304 = __PAIR64__(v151, v150);
        *(&v304 + 1) = __PAIR64__(v150, v149);
        if (v149 > 3)
        {
          v215 = v149;
          bzero(v307, 16 * ((v149 - 1) >> 1));
          v216 = &v305 + v215;
          *v216 = 0;
          v216[1] = 0;
        }

        else if (v149 >= 1)
        {
          bzero(v307, 8 * v149);
        }

        *&v369[16] = 0x140000000ALL;
        *v369 = xmmword_1D0EA12A0;
        v368 = &unk_1F4CEDC70;
        v370 = v371;
        sub_1D0B8876C(&v333, &v303, &v368);
        v295 = 0xA0000000ALL;
        v294 = xmmword_1D0E84630;
        v293 = &unk_1F4CE2180;
        v296 = v297;
        sub_1D0BA5940(&v339, &v293);
        v290 = 0xA0000000ALL;
        v289 = xmmword_1D0E84630;
        v288 = &unk_1F4CE2180;
        v291 = v292;
        sub_1D0B89390(&v328, &v323, &v288);
        v300 = 0xA0000000ALL;
        v299 = xmmword_1D0E84630;
        v298 = &unk_1F4CE2180;
        v301 = v302;
        sub_1D0B89390(&v293, &v288, &v298);
        v285 = 0xA0000000ALL;
        v284 = xmmword_1D0E84630;
        v283 = &unk_1F4CE2180;
        v286 = v287;
        sub_1D0B89390(&v339, &v328, &v283);
        v274 = 0x140000000ALL;
        v273 = xmmword_1D0EA12A0;
        v272 = &unk_1F4CEDC70;
        v275 = v276;
        sub_1D0B8876C(&v298, &v283, &v272);
        v310 = 0x1400000014;
        v309 = xmmword_1D0EA12B0;
        v308 = &unk_1F4CEDA40;
        v311 = v312;
        sub_1D0BA59C4(&v368, &v272, &v308);
        *&v369[16] = 0x10000000ALL;
        *v369 = xmmword_1D0E87BE0;
        v368 = &unk_1F4CEAE48;
        v370 = v371;
        sub_1D0B89390(&v333, &v313, &v368);
        v280 = 0x10000000ALL;
        v279 = xmmword_1D0E87BE0;
        v278 = &unk_1F4CEAE48;
        v281 = &v282;
        sub_1D0B89390(&v323, &v313, &v278);
        v285 = 0x10000000ALL;
        v284 = xmmword_1D0E87BE0;
        v283 = &unk_1F4CEAE48;
        v286 = v287;
        sub_1D0BA5A78(&v318, &v278, &v283);
        v290 = 0x10000000ALL;
        v289 = xmmword_1D0E87BE0;
        v288 = &unk_1F4CEAE48;
        v291 = v292;
        sub_1D0B89390(&v328, &v283, &v288);
        v295 = 0x10000000ALL;
        v294 = xmmword_1D0E87BE0;
        v293 = &unk_1F4CEAE48;
        v296 = v297;
        sub_1D0BA5A78(&v288, v344, &v293);
        v305 = 0x10000000ALL;
        v304 = xmmword_1D0E87BE0;
        v303 = &unk_1F4CEAE48;
        v306 = v307;
        sub_1D0B89390(&v339, &v293, &v303);
        v274 = 0x10000000ALL;
        v273 = xmmword_1D0E87BE0;
        v272 = &unk_1F4CEAE48;
        v275 = v276;
        sub_1D0B88838(&v303, v338, &v272);
        v300 = 0x100000014;
        v299 = xmmword_1D0EA12C0;
        v298 = &unk_1F4CEDB30;
        v301 = v302;
        sub_1D0BA59C4(&v368, &v272, &v298);
        v274 = 0x1400000014;
        v273 = xmmword_1D0EA12B0;
        v272 = &unk_1F4CEDA40;
        v275 = v276;
        v295 = 0x100000014;
        v294 = xmmword_1D0EA12C0;
        v293 = &unk_1F4CEDB30;
        v296 = v297;
        v305 = 0x100000014;
        v304 = xmmword_1D0EA12C0;
        v303 = &unk_1F4CEDB30;
        v306 = v307;
        *&v369[16] = 0x1400000014;
        *v369 = xmmword_1D0EA12B0;
        v368 = &unk_1F4CEDA40;
        v370 = v371;
        sub_1D0BA5B14(&v308, &v298, &v303, &v368, &v293, &v272);
        *&v369[16] = 0xA00000001;
        v368 = &unk_1F4CED418;
        v370 = v371;
        v217 = v255;
        if (v262 == 1)
        {
          v218 = 0;
          *&v219 = 0x100000001;
          *(&v219 + 1) = 0x100000001;
          *v369 = v219;
          v371[0] = v150;
          v220 = 1;
        }

        else if (v262)
        {
          *v369 = 1;
          *&v369[4] = v262;
          *&v369[8] = v262;
          *&v369[12] = 1;
          v221 = xmmword_1D0E84440;
          v222 = (v262 + 3) & 0xFFFFFFFC;
          v223 = v372;
          v224 = xmmword_1D0E7DD30;
          do
          {
            v225 = vmovn_s64(vcgeq_u64(v250, v224));
            if (vuzp1_s16(v225, *v221.i8).u8[0])
            {
              *(v223 - 3) = v150;
            }

            if (vuzp1_s16(v225, *&v221).i8[2])
            {
              *(v223 - 2) = v150 + 1;
            }

            if (vuzp1_s16(*&v221, vmovn_s64(vcgeq_u64(v250, *&v221))).i32[1])
            {
              *(v223 - 1) = v150 + 2;
              *v223 = v150 + 3;
            }

            v226 = vdupq_n_s64(4uLL);
            v221 = vaddq_s64(v221, v226);
            v224 = vaddq_s64(v224, v226);
            v150 += 4;
            v223 += 4;
            v222 -= 4;
          }

          while (v222);
          v218 = 0;
          v220 = 1;
        }

        else
        {
          v220 = 0;
          *v369 = 0;
          *&v369[8] = 0;
          v218 = 1;
        }

        v305 = 0x10000000ALL;
        v303 = &unk_1F4CED1E8;
        v306 = v307;
        *&v304 = __PAIR64__(v220, v262);
        DWORD2(v304) = v220 * v262;
        HIDWORD(v304) = v262;
        if (v262)
        {
          v227 = 0;
          v228 = 0;
          do
          {
            if ((v218 & 1) == 0)
            {
              v229 = 0;
              do
              {
                v307[v228 + HIDWORD(v304) * v229] = v371[v227 + v229];
                ++v229;
              }

              while (v220 != v229);
            }

            ++v228;
            v227 += v220;
          }

          while (v228 != v262);
        }

        sub_1D0B894B0(v344, &v318);
        sub_1D0BEBF0C(&v368, &v272, &v303, &v303);
        sub_1D0B894B0(&v339, &v368);
        sub_1D0BEB9D4(&v368, &v293, &v303);
        sub_1D0B894B0(v338, &v368);
        if (!v253)
        {
          *&v369[16] = 0xA00000001;
          v368 = &unk_1F4CED418;
          v370 = v371;
          if (v8)
          {
            if (v8 == 1)
            {
              v230 = 0;
              *&v231 = 0x100000001;
              *(&v231 + 1) = 0x100000001;
              *v369 = v231;
              v371[0] = 0;
            }

            else
            {
              v233 = 0;
              *v369 = 1;
              *&v369[4] = v8;
              *&v369[8] = v8;
              *&v369[12] = 1;
              v234 = xmmword_1D0E84440;
              v235 = v372;
              v236 = xmmword_1D0E7DD30;
              do
              {
                v237 = vmovn_s64(vcgeq_u64(v247, v236));
                if (vuzp1_s16(v237, *v234.i8).u8[0])
                {
                  *(v235 - 3) = v233;
                }

                if (vuzp1_s16(v237, *&v234).i8[2])
                {
                  *(v235 - 2) = v233 + 1;
                }

                if (vuzp1_s16(*&v234, vmovn_s64(vcgeq_u64(v247, *&v234))).i32[1])
                {
                  *(v235 - 1) = v233 + 2;
                  *v235 = v233 + 3;
                }

                v233 += 4;
                v238 = vdupq_n_s64(4uLL);
                v234 = vaddq_s64(v234, v238);
                v236 = vaddq_s64(v236, v238);
                v235 += 4;
              }

              while (((v8 + 3) & 0xFFFFFFFC) != v233);
              v230 = 0;
            }

            v232 = 1;
          }

          else
          {
            v232 = 0;
            *v369 = 0;
            *&v369[8] = 0;
            v230 = 1;
          }

          v290 = 0x10000000ALL;
          v288 = &unk_1F4CED1E8;
          v291 = v292;
          *&v289 = __PAIR64__(v232, v8);
          DWORD2(v289) = v232 * v8;
          HIDWORD(v289) = v8;
          if (v8)
          {
            v239 = 0;
            v240 = 0;
            do
            {
              if ((v230 & 1) == 0)
              {
                v241 = 0;
                do
                {
                  v292[v240 + HIDWORD(v289) * v241] = v371[v239 + v241];
                  ++v241;
                }

                while (v232 != v241);
              }

              ++v240;
              v239 += v232;
            }

            while (v240 != v8);
          }

          sub_1D0BEBF0C(&v368, &v272, &v288, &v303);
          sub_1D0B894B0(v254 + 2392, &v368);
          sub_1D0BEB9D4(&v368, &v293, &v288);
          sub_1D0B894B0(v254 + 3232, &v368);
          sub_1D0BEBF0C(&v368, &v272, &v288, &v288);
          sub_1D0B894B0(v254 + 3352, &v368);
          v217 = v255;
        }

        v101 = v217 + 1;
        v100 = v262;
      }

      while (v101 != v251);
    }

    sub_1D0B894B0(v254 + 128, &v339);
    sub_1D0B894B0(v254 + 968, v338);
    result = 0;
    *(v254 + 2180) = 0;
  }

  return result;
}

std::string *raven::RavenIonosphereEstimator::SetLogPrefix(uint64_t a1, const std::string *a2)
{
  std::string::operator=((a1 + 4064), a2);

  return std::string::operator=((a1 + 6456), a2);
}

uint64_t *sub_1D0E18B14(uint64_t *a1)
{
  v2 = 0;
  a1[1638] = &unk_1F4CE3720;
  a1[1589] = &unk_1F4CECD48;
  do
  {
    a1[v2 + 1582] = &unk_1F4CD5E28;
    v2 -= 6;
  }

  while (v2 != -264);
  v3 = 0;
  a1[1319] = &unk_1F4CECDD0;
  do
  {
    a1[v3 + 1313] = &unk_1F4CD5E28;
    v3 -= 6;
  }

  while (v3 != -264);
  v4 = 0;
  a1[1050] = &unk_1F4CECDD0;
  a1[1023] = &unk_1F4CDEAF8;
  do
  {
    a1[v4 + 1017] = &unk_1F4CD5E28;
    v4 -= 6;
  }

  while (v4 != -264);
  a1[754] = &unk_1F4CECDD0;
  a1[705] = &unk_1F4CD5E28;
  a1[678] = &unk_1F4CDEAF8;
  a1[585] = &unk_1F4CE3870;
  a1[492] = &unk_1F4CE3720;
  a1[399] = &unk_1F4CECD48;
  a1[392] = &unk_1F4CECF68;
  sub_1D0BF1BF8(a1 + 397);
  a1[392] = &unk_1F4CECDD0;
  a1[386] = &unk_1F4CECF68;
  sub_1D0BF1BF8(a1 + 391);
  a1[386] = &unk_1F4CECDD0;
  a1[337] = &unk_1F4CDEAF8;
  a1[331] = &unk_1F4CECF68;
  sub_1D0BF1BF8(a1 + 336);
  a1[331] = &unk_1F4CECDD0;
  a1[238] = &unk_1F4CD5E28;
  a1[189] = &unk_1F4CDEAF8;
  a1[8] = &unk_1F4CE3870;
  sub_1D0BAAF58(a1 + 5);
  return a1;
}

void *sub_1D0E18F04(void *result)
{
  for (i = 263; i != -1; i -= 6)
  {
    result[i] = &unk_1F4CD5E28;
  }

  *result = &unk_1F4CECDD0;
  return result;
}

void *sub_1D0E18FF4(void *a1)
{
  *a1 = &unk_1F4CECF68;
  sub_1D0BF1BF8(a1 + 5);
  *a1 = &unk_1F4CECDD0;
  return a1;
}

void sub_1D0E190F0(uint64_t a1)
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

void sub_1D0E19228(uint64_t a1)
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

void sub_1D0E1932C(void *a1)
{
  for (i = 263; i != -1; i -= 6)
  {
    a1[i] = &unk_1F4CD5E28;
  }

  *a1 = &unk_1F4CECDD0;
  JUMPOUT(0x1D387ECA0);
}

void sub_1D0E1938C(uint64_t a1)
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
        v6 = v3 + v1 - v5;
        v7 = (v4 - 1);
        v8 = 1;
        do
        {
          sub_1D0BE520C(v12, *(a1 + 32) + 48 * v8);
          v9 = &v13[v8];
          if ((v13[v8] & 1) == 0)
          {
            v10 = v8;
            do
            {
              v10 = v10 * v6 % v7;
              sub_1D0BE520C(v11, *(a1 + 32) + 48 * v10);
              sub_1D0B894B0(*(a1 + 32) + 48 * v10, v12);
              *v9 = 1;
              sub_1D0B894B0(v12, v11);
              v9 = &v13[v10];
            }

            while (!*v9);
          }

          ++v8;
        }

        while (v8 != v7);
      }
    }
  }
}

void sub_1D0E19514(uint64_t a1)
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

void sub_1D0E19648(uint64_t a1)
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

void sub_1D0E19770(uint64_t a1)
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
        v7 = 1;
        do
        {
          v12 = *(*(a1 + 32) + 16 * v7);
          v8 = &v13[v7];
          if ((v13[v7] & 1) == 0)
          {
            v9 = v7;
            do
            {
              v9 = (v9 * (v3 + v1 - v5)) % v6;
              v10 = *(a1 + 32);
              v11 = *(v10 + 16 * v9);
              *(v10 + 16 * v9) = v12;
              *v8 = 1;
              v12 = v11;
              v8 = &v13[v9];
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

void sub_1D0E198B0(uint64_t a1)
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

void sub_1D0E199E8(uint64_t a1)
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

void sub_1D0E19AE4(void *a1)
{
  *a1 = &unk_1F4CECF68;
  sub_1D0BF1BF8(a1 + 5);
  *a1 = &unk_1F4CECDD0;

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0E19C2C(uint64_t a1, char *a2)
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
          sub_1D0BE520C(v14, *(a1 + 32) + 48 * v10);
          v11 = &a2[v10];
          if ((a2[v10] & 1) == 0)
          {
            v12 = v10;
            do
            {
              v12 = v12 * v8 % v9;
              sub_1D0BE520C(v13, *(a1 + 32) + 48 * v12);
              sub_1D0B894B0(*(a1 + 32) + 48 * v12, v14);
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

void sub_1D0E19D78(uint64_t a1)
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

void sub_1D0E19EAC(uint64_t a1)
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

void sub_1D0E19FD4(uint64_t a1)
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
        v7 = 1;
        do
        {
          v12 = *(*(a1 + 32) + 16 * v7);
          v8 = &v13[v7];
          if ((v13[v7] & 1) == 0)
          {
            v9 = v7;
            do
            {
              v9 = (v9 * (v3 + v1 - v5)) % v6;
              v10 = *(a1 + 32);
              v11 = *(v10 + 16 * v9);
              *(v10 + 16 * v9) = v12;
              *v8 = 1;
              v12 = v11;
              v8 = &v13[v9];
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

uint64_t sub_1D0E1A0D8(uint64_t a1)
{
  *a1 = &unk_1F4CED088;
  *(a1 + 3352) = &unk_1F4CD5E28;
  *(a1 + 3232) = &unk_1F4CD5E28;
  *(a1 + 2392) = &unk_1F4CD5E28;
  return sub_1D0E1A158(a1);
}

uint64_t sub_1D0E1A158(uint64_t a1)
{
  *a1 = &unk_1F4CED0F0;
  if (*(a1 + 2391) < 0)
  {
    operator delete(*(a1 + 2368));
  }

  if (*(a1 + 2367) < 0)
  {
    operator delete(*(a1 + 2344));
  }

  v3 = (a1 + 2320);
  sub_1D0BA5F70(&v3);
  v3 = (a1 + 2296);
  sub_1D0BA5F70(&v3);
  v3 = (a1 + 2272);
  sub_1D0BA5F70(&v3);
  *(a1 + 2048) = &unk_1F4CD5E28;
  *(a1 + 1208) = &unk_1F4CD5E28;
  *(a1 + 1088) = &unk_1F4CD5E28;
  *(a1 + 968) = &unk_1F4CD5E28;
  *(a1 + 128) = &unk_1F4CD5E28;
  *(a1 + 8) = &unk_1F4CD5E28;
  return a1;
}

void sub_1D0E1A2B0(void *a1)
{
  *a1 = &unk_1F4CED088;
  a1[419] = &unk_1F4CD5E28;
  a1[404] = &unk_1F4CD5E28;
  a1[299] = &unk_1F4CD5E28;
  sub_1D0E1A158(a1);

  JUMPOUT(0x1D387ECA0);
}

double sub_1D0E1A364@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = 0x10000000ALL;
  *a2 = &unk_1F4CEAE48;
  *(a2 + 8) = xmmword_1D0E87BE0;
  *(a2 + 32) = a2 + 40;
  v2 = 2048;
  if (!*(a1 + 2180))
  {
    v2 = 968;
  }

  *&result = sub_1D0B894B0(a2, a1 + v2).n128_u64[0];
  return result;
}

double sub_1D0E1A3C0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = 0xA0000000ALL;
  *a2 = &unk_1F4CE2180;
  *(a2 + 8) = xmmword_1D0E84630;
  *(a2 + 32) = a2 + 40;
  v2 = 1208;
  if (!*(a1 + 2180))
  {
    v2 = 128;
  }

  *&result = sub_1D0B894B0(a2, a1 + v2).n128_u64[0];
  return result;
}

void sub_1D0E1A41C(uint64_t a1)
{
  sub_1D0E1A158(a1);

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0E1A454(uint64_t a1)
{
  *(a1 + 448) = &unk_1F4CDFE98;
  if (*(a1 + 479) < 0)
  {
    operator delete(*(a1 + 456));
  }

  *(a1 + 448) = &unk_1F4CD5F70;
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1D0E1A4D4(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  *(a1 + 504) = &unk_1F4CDFE98;
  if (*(a1 + 535) < 0)
  {
    operator delete(*(a1 + 512));
  }

  *(a1 + 504) = &unk_1F4CD5F70;
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0E1A5A0(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  *(a1 + 504) = &unk_1F4CDFE98;
  if (*(a1 + 535) < 0)
  {
    operator delete(*(a1 + 512));
  }

  *(a1 + 504) = &unk_1F4CD5F70;
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  return a1;
}

__n128 sub_1D0E1A64C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4CEE030;
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v3;
  *(a1 + 8) = v2;
  v4 = *(a2 + 56);
  v5 = *(a2 + 72);
  v6 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v6;
  *(a1 + 72) = v5;
  *(a1 + 56) = v4;
  *(a1 + 120) = &unk_1F4CD5A50;
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  result = *(a2 + 176);
  *(a1 + 176) = result;
  *(a1 + 192) = *(a2 + 192);
  return result;
}

void *sub_1D0E1A6EC(void *a1)
{
  v2 = 0;
  a1[3] = 0x10000002CLL;
  a1[4] = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F4CECD78;
  *&v3 = 0x100000001;
  *(&v3 + 1) = 0x100000001;
  do
  {
    v4 = &a1[v2];
    v4[8] = 0x100000001;
    v4[5] = &unk_1F4CDF418;
    *(v4 + 3) = v3;
    v4[9] = &a1[v2 + 10];
    v2 += 6;
  }

  while (v2 != 264);
  *(a1 + 1) = xmmword_1D0EA1270;
  (*(*a1 + 16))(a1);
  return a1;
}

void sub_1D0E1A7C4(_Unwind_Exception *a1)
{
  for (i = 263; i != -1; i -= 6)
  {
    v1[i] = &unk_1F4CD5E28;
  }

  *v1 = &unk_1F4CECDD0;
  _Unwind_Resume(a1);
}

void sub_1D0E1A870(uint64_t a1)
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

__n128 sub_1D0E1A968(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = 0xA0000000ALL;
  *(a1 + 24) = 0xA0000000ALL;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CE2180;
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
  if (v4 > 0xA)
  {
    v17 = "this->max_num_rows_ >= A.num_rows_";
    v18 = 616;
    goto LABEL_16;
  }

  if (v3 >= 0xB)
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

uint64_t sub_1D0E1AAAC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v2 = *(a2 + 12);
  *(a1 + 24) = 0xA0000000ALL;
  *a1 = &unk_1F4CE2180;
  *(a1 + 8) = v2;
  *(a1 + 12) = v3;
  *(a1 + 16) = v3 * v2;
  *(a1 + 20) = v2;
  *(a1 + 32) = a1 + 40;
  return sub_1D0BD2018(a2, a1);
}

void sub_1D0E1AC90(void *a1)
{
  sub_1D0E1AE7C(a1);

  JUMPOUT(0x1D387ECA0);
}

void *sub_1D0E1AE7C(void *a1)
{
  *a1 = &unk_1F4CED278;
  v2 = a1[5];
  a1[5] = 0;
  if (v2)
  {
    MEMORY[0x1D387EC80](v2, 0x1000C8000313F17);
  }

  *a1 = &unk_1F4CD5E28;
  return a1;
}

void sub_1D0E1AF34(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v3 = *(a1 + 12);
    if (v3 >= 2)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 20);
      bzero(&v9, v4);
      if (v4 >= 3)
      {
        v6 = v9;
        v7 = 8;
        v8 = v3 + v1 - v5;
        do
        {
          if (!v6)
          {
            *(*(a1 + 32) + 8 * (v8 % (v4 - 1))) = *(*(a1 + 32) + v7);
            v6 = 1;
          }

          v8 += v3 + v1 - v5;
          v7 += 8;
        }

        while (8 * (v4 - 1) != v7);
      }
    }
  }
}

void sub_1D0E1B028(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v3 = *(a1 + 12);
    if (v3 >= 2)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 20);
      bzero(&v9, v4);
      if (v4 >= 3)
      {
        v6 = v9;
        v7 = 8;
        v8 = v3 + v1 - v5;
        do
        {
          if (!v6)
          {
            *(*(a1 + 32) + 8 * (v8 % (v4 - 1))) = *(*(a1 + 32) + v7);
            v6 = 1;
          }

          v8 += v3 + v1 - v5;
          v7 += 8;
        }

        while (8 * (v4 - 1) != v7);
      }
    }
  }
}

void sub_1D0E1B114(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v3 = *(a1 + 12);
    if (v3 >= 2)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 20);
      bzero(&v9, v4);
      if (v4 >= 3)
      {
        v6 = v9;
        v7 = 8;
        v8 = v3 + v1 - v5;
        do
        {
          if (!v6)
          {
            *(*(a1 + 32) + 8 * (v8 % (v4 - 1))) = *(*(a1 + 32) + v7);
            v6 = 1;
          }

          v8 += v3 + v1 - v5;
          v7 += 8;
        }

        while (8 * (v4 - 1) != v7);
      }
    }
  }
}