char **sub_102CCD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  v11 = v8;
  v13 = v12;
  sub_FBF440(v8);
  sub_10A2094(v29, v11->n128_i64[1]);
  v14 = *v10;
  v15 = *(v10 + 8);
  v16 = *(v10 + 16);
  if (*(v10 + 40))
  {
    sub_10A3584(v29, v14, v15, v16, *(v10 + 24), -1, v11[1].n128_u32[2], &v26);
  }

  else
  {
    sub_10A32FC(v29, v14, v15, v16, *(v10 + 24), -1, v11[1].n128_u32[2], &v26);
  }

  v11[3].n128_u32[1] = sub_109EC4C(v29);
  v34.n128_u64[0] = sub_109EC54(v29);
  v34.n128_u64[1] = v17;
  sub_32114(v11 + 2, &v34);
  v18 = sub_109EC60(v29);
  sub_434D48(&v11[5], v11[5].n128_i64[1], *v18, v18[1], (v18[1] - *v18) >> 5);
  v11[3].n128_u8[1] = 1;
  if (!sub_F64B34(&v26))
  {
    v34 = 0uLL;
    v35 = 0;
    v32 = &v34;
    v33 = 0;
    if (v26.__r_.__value_.__l.__size_ != v26.__r_.__value_.__r.__words[0])
    {
      if (0xF128CFC4A33F128DLL * ((v26.__r_.__value_.__l.__size_ - v26.__r_.__value_.__r.__words[0]) >> 3) < 0x76B981DAE6076CLL)
      {
        operator new();
      }

      sub_1794();
    }

    if (SHIBYTE(v28) < 0)
    {
      sub_325C(&v36, __p, *(&__p + 1));
    }

    else
    {
      v36 = __p;
      v37 = v28;
    }

    v13->n128_u64[0] = 0;
    v13->n128_u64[1] = 0;
    v13[1].n128_u64[0] = 0;
    v32 = v13;
    v33 = 0;
    operator new();
  }

  v13->n128_u64[0] = 0;
  v13->n128_u64[1] = 0;
  v13[1].n128_u64[0] = 0;
  if (SHIBYTE(v28) < 0)
  {
    operator delete(__p);
  }

  v19 = v26.__r_.__value_.__r.__words[0];
  if (v26.__r_.__value_.__r.__words[0])
  {
    size = v26.__r_.__value_.__l.__size_;
    v21 = v26.__r_.__value_.__r.__words[0];
    if (v26.__r_.__value_.__l.__size_ != v26.__r_.__value_.__r.__words[0])
    {
      do
      {
        size = sub_4547F0(size - 552);
      }

      while (size != v19);
      v21 = v26.__r_.__value_.__r.__words[0];
    }

    v26.__r_.__value_.__l.__size_ = v19;
    operator delete(v21);
  }

  v22 = v30;
  if (v30)
  {
    v23 = v31;
    v24 = v30;
    if (v31 != v30)
    {
      do
      {
        if (*(v23 - 1) < 0)
        {
          operator delete(*(v23 - 3));
        }

        v23 -= 4;
      }

      while (v23 != v22);
      v24 = v30;
    }

    v31 = v22;
    operator delete(v24);
  }

  return sub_C6579C(v29);
}

void sub_102D02C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_487EC4((v3 - 136));
  sub_454784(va);
  sub_102CC4C(va1);
  _Unwind_Resume(a1);
}

void sub_102D050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  *(v3 + 8) = v4;
  sub_DC15BC((v5 - 152));
  sub_454784(v5 - 136);
  sub_454784(va);
  sub_102CC4C(va1);
  _Unwind_Resume(a1);
}

void sub_102D088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_49D8D0((v3 - 152));
  sub_454784(va);
  sub_102CC4C(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_102D10C(uint64_t a1)
{
  v2 = *(a1 + 3984);
  if (v2)
  {
    v3 = *(a1 + 3992);
    v4 = *(a1 + 3984);
    if (v3 != v2)
    {
      do
      {
        if (*(v3 - 1) < 0)
        {
          operator delete(*(v3 - 24));
        }

        v3 -= 32;
      }

      while (v3 != v2);
      v4 = *(a1 + 3984);
    }

    *(a1 + 3992) = v2;
    operator delete(v4);
  }

  return sub_100CA00(a1);
}

uint64_t sub_102D190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  if (a2 != a3)
  {
    v6 = (a2 + 24);
    do
    {
      *v4 = 0;
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      v8 = v6 - 24;
      sub_49E958(v4, *(v6 - 3), *(v6 - 2), 0xF128CFC4A33F128DLL * ((*(v6 - 2) - *(v6 - 3)) >> 3));
      if (*(v6 + 23) < 0)
      {
        sub_325C((v4 + 24), *v6, *(v6 + 1));
      }

      else
      {
        v7 = *v6;
        *(v4 + 40) = *(v6 + 2);
        *(v4 + 24) = v7;
      }

      v4 = v10 + 48;
      v10 += 48;
      v6 += 3;
    }

    while (v8 + 48 != a3);
  }

  return v4;
}

void sub_102D270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_487EC4(v9);
  sub_DC1500(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_102D2A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  if (a2 != a3)
  {
    v6 = (a2 + 24);
    do
    {
      *v4 = 0;
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      v8 = v6 - 24;
      sub_49F664(v4, *(v6 - 3), *(v6 - 2), 0xF128CFC4A33F128DLL * ((*(v6 - 2) - *(v6 - 3)) >> 3));
      if (*(v6 + 23) < 0)
      {
        sub_325C((v4 + 24), *v6, *(v6 + 1));
      }

      else
      {
        v7 = *v6;
        *(v4 + 40) = *(v6 + 2);
        *(v4 + 24) = v7;
      }

      v4 = v10 + 48;
      v10 += 48;
      v6 += 3;
    }

    while (v8 + 48 != a3);
  }

  return v4;
}

void sub_102D380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_487EC4(v9);
  sub_DC1500(&a9);
  _Unwind_Resume(a1);
}

void sub_102D3B0()
{
  byte_27C10C7 = 3;
  LODWORD(qword_27C10B0) = 5136193;
  byte_27C10DF = 3;
  LODWORD(qword_27C10C8) = 5136194;
  byte_27C10F7 = 3;
  LODWORD(qword_27C10E0) = 5136195;
  byte_27C110F = 15;
  strcpy(&qword_27C10F8, "vehicle_mass_kg");
  byte_27C1127 = 21;
  strcpy(&xmmword_27C1110, "vehicle_cargo_mass_kg");
  byte_27C113F = 19;
  strcpy(&qword_27C1128, "vehicle_aux_power_w");
  byte_27C1157 = 15;
  strcpy(&qword_27C1140, "dcdc_efficiency");
  strcpy(&qword_27C1158, "drive_train_efficiency");
  HIBYTE(word_27C116E) = 22;
  operator new();
}

void sub_102D58C(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C116E) < 0)
  {
    sub_21E6B0C();
  }

  sub_21E6B18();
  _Unwind_Resume(a1);
}

void *sub_102D5AC(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = a2;
  result[1] = a3;
  result[2] = a4;
  result[3] = 0;
  result[4] = 0;
  result[5] = 0;
  return result;
}

BOOL sub_102D5BC(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    return 1;
  }

  if (a1[1] >= a2[1])
  {
    return a1[2] < a2[2];
  }

  return 1;
}

void sub_102D600(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  operator new();
}

void sub_102D8DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if ((*(v31 - 89) & 0x80000000) == 0)
  {
    sub_2AE54C(v30);
    _Unwind_Resume(a1);
  }

  operator delete(*(v31 - 112));
  sub_2AE54C(v30);
  _Unwind_Resume(a1);
}

uint64_t sub_102D9DC(__int128 **a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v5 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v6 = v5 + 1;
  if (v5 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v6)
  {
    v6 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v8 = 0x555555555555555;
  }

  else
  {
    v8 = v6;
  }

  if (v8)
  {
    if (v8 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v9 = 16 * (a1[1] - *a1);
  v21 = v9;
  v10 = *a3;
  v11 = *a4;
  *v9 = *a2;
  *(v9 + 8) = v10;
  *(v9 + 16) = v11;
  if (*(a5 + 23) < 0)
  {
    sub_325C((v9 + 24), *a5, *(a5 + 8));
    v12 = 48 * v5 + 48;
    v13 = *a1;
    v14 = a1[1];
    v15 = *a1 + v21 - v14;
    if (v14 == *a1)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *&dword_18[12 * v5] = *a5;
    *&stru_20.segname[48 * v5] = *(a5 + 16);
    v12 = v9 + 48;
    v13 = *a1;
    v14 = a1[1];
    v15 = &(*a1)[v9 / 0x10] - v14;
    if (v14 == *a1)
    {
      goto LABEL_21;
    }
  }

  v16 = v13;
  v17 = v15;
  do
  {
    v18 = *v16;
    *(v17 + 16) = *(v16 + 2);
    *v17 = v18;
    v19 = *(v16 + 24);
    *(v17 + 40) = *(v16 + 5);
    *(v17 + 24) = v19;
    *(v16 + 4) = 0;
    *(v16 + 5) = 0;
    *(v16 + 3) = 0;
    v16 += 3;
    v17 += 48;
  }

  while (v16 != v14);
  do
  {
    if (*(v13 + 47) < 0)
    {
      operator delete(*(v13 + 3));
    }

    v13 += 3;
  }

  while (v13 != v14);
  v13 = *a1;
LABEL_21:
  *a1 = v15;
  a1[1] = v12;
  a1[2] = 0;
  if (v13)
  {
    operator delete(v13);
  }

  return v12;
}

void sub_102DBC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_102DBDC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_102DBDC(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v5 = v2 - 48;
      *(a1 + 16) = v2 - 48;
      if (*(v2 - 1) < 0)
      {
        operator delete(*(v2 - 24));
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_102DC50(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = a2;
  *(a1 + 8) = a2 + 4464;
  *(a1 + 16) = -1;
  sub_102DFD8(a1 + 24, a2);
  *(a1 + 944) = 0;
  *(a1 + 928) = 0u;
  operator new();
}

void sub_102DF28(_Unwind_Exception *a1)
{
  sub_360988(v1 + 2080);
  sub_584EC4((v1 + 1200));
  v5 = *(v1 + 1168);
  if (v5)
  {
    *(v1 + 1176) = v5;
    operator delete(v5);
  }

  sub_102E120((v1 + 1056));
  sub_21DB4B4(v1 + 984);
  v6 = *v3;
  if (*v3)
  {
    *(v1 + 960) = v6;
    operator delete(v6);
    v7 = *v2;
    if (!*v2)
    {
LABEL_5:
      sub_C65AF0((v1 + 24));
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v7 = *v2;
    if (!*v2)
    {
      goto LABEL_5;
    }
  }

  *(v1 + 936) = v7;
  operator delete(v7);
  sub_C65AF0((v1 + 24));
  _Unwind_Resume(a1);
}

uint64_t sub_102DFD8(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = 0;
  *a1 = 0u;
  *(a1 + 24) = &unk_2290750;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = &unk_2290750;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 120) = &unk_2290750;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0u;
  *(a1 + 160) = 0;
  *(a1 + 168) = &unk_2290750;
  *(a1 + 192) = 0;
  *(a1 + 176) = 0u;
  *(a1 + 208) = 0;
  *(a1 + 216) = &unk_2290750;
  *(a1 + 240) = 0;
  *(a1 + 224) = 0u;
  *(a1 + 256) = 0;
  *(a1 + 264) = &unk_2290750;
  *(a1 + 288) = 0;
  *(a1 + 272) = 0u;
  *(a1 + 304) = 0;
  *(a1 + 312) = &unk_2290750;
  *(a1 + 336) = 0;
  *(a1 + 320) = 0u;
  *(a1 + 352) = 0;
  *(a1 + 360) = &unk_2290750;
  *(a1 + 384) = 0;
  *(a1 + 368) = 0u;
  *(a1 + 400) = 0;
  *(a1 + 408) = &unk_2290750;
  *(a1 + 432) = 0;
  *(a1 + 416) = 0u;
  *(a1 + 448) = 0;
  *(a1 + 456) = &unk_2290750;
  *(a1 + 480) = 0;
  *(a1 + 464) = 0u;
  *(a1 + 496) = 0;
  *(a1 + 504) = &unk_2290750;
  *(a1 + 544) = 0;
  *(a1 + 528) = 0;
  *(a1 + 512) = 0u;
  *(a1 + 552) = &unk_2290750;
  *(a1 + 592) = 0;
  *(a1 + 576) = 0;
  *(a1 + 560) = 0u;
  *(a1 + 600) = &unk_2290750;
  *(a1 + 640) = 0;
  *(a1 + 624) = 0;
  *(a1 + 608) = 0u;
  *(a1 + 648) = &unk_2290750;
  *(a1 + 688) = 0;
  *(a1 + 672) = 0;
  *(a1 + 656) = 0u;
  *(a1 + 696) = &unk_2290750;
  *(a1 + 736) = 0;
  *(a1 + 720) = 0;
  *(a1 + 704) = 0u;
  *(a1 + 744) = &unk_2290750;
  *(a1 + 784) = 0;
  *(a1 + 768) = 0;
  *(a1 + 752) = 0u;
  sub_10535CC(a1 + 792, (a2 + 4464));
  return a1;
}

void sub_102E104(_Unwind_Exception *a1)
{
  sub_4821F8(v2);
  sub_39393C(v1);
  _Unwind_Resume(a1);
}

void *sub_102E120(void *a1)
{
  v2 = a1[11];
  if (v2)
  {
    v3 = a1[12];
    v4 = a1[11];
    if (v3 != v2)
    {
      v5 = a1[12];
      do
      {
        v7 = *(v5 - 24);
        v5 -= 24;
        v6 = v7;
        if (v7)
        {
          *(v3 - 16) = v6;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = a1[11];
    }

    a1[12] = v2;
    operator delete(v4);
  }

  v8 = a1[10];
  if (v8)
  {
    free(v8);
  }

  return a1;
}

unint64_t sub_102E1A8(std::chrono::duration<long long, std::ratio<1, 1000000>>::rep a1, uint64_t a2, unint64_t **a3, uint64_t a4, int *a5, char a6, int a7, int a8, unsigned int a9)
{
  v37 = a8;
  sub_102E750(a1);
  if (*a2 == *(a2 + 8))
  {
    if (!sub_7E7E4(1u))
    {
      goto LABEL_42;
    }

    sub_19594F8(&__t.__d_.__rep_);
    sub_4A5C(&__t, "p2p_query called with empty origin terminal", 43);
    if ((v36 & 0x10) != 0)
    {
      v20 = v35;
      if (v35 < v32)
      {
        v35 = v32;
        v20 = v32;
      }

      v21 = v31;
      v19 = v20 - v31;
      if (v20 - v31 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_34;
      }
    }

    else
    {
      if ((v36 & 8) == 0)
      {
        v19 = 0;
        v25 = 0;
LABEL_37:
        *(&__dst + v19) = 0;
        sub_7E854(&__dst, 1u);
        if (v25 < 0)
        {
          operator delete(__dst);
        }

        if (v34 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v28);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_42;
      }

      v21 = v29;
      v19 = v30 - v29;
      if ((v30 - v29) > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_34:
        sub_3244();
      }
    }

    if (v19 >= 0x17)
    {
      operator new();
    }

    v25 = v19;
    if (!v19)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  if (*a3 == a3[1])
  {
    if (sub_7E7E4(1u))
    {
      sub_19594F8(&__t.__d_.__rep_);
      sub_4A5C(&__t, "p2p_query called with empty destination terminal", 48);
      if ((v36 & 0x10) != 0)
      {
        v22 = v35;
        if (v35 < v32)
        {
          v35 = v32;
          v22 = v32;
        }

        v21 = v31;
        v19 = v22 - v31;
        if (v22 - v31 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_45;
        }
      }

      else
      {
        if ((v36 & 8) == 0)
        {
          v19 = 0;
          v25 = 0;
          goto LABEL_37;
        }

        v21 = v29;
        v19 = v30 - v29;
        if ((v30 - v29) > 0x7FFFFFFFFFFFFFF7)
        {
LABEL_45:
          sub_3244();
        }
      }

      if (v19 >= 0x17)
      {
        operator new();
      }

      v25 = v19;
      if (!v19)
      {
        goto LABEL_37;
      }

LABEL_36:
      memmove(&__dst, v21, v19);
      goto LABEL_37;
    }

LABEL_42:
    v17 = 0x7FFFFFFF00000000;
    v18 = 0xFFFFFFFFLL;
    return v18 | v17;
  }

  v16 = *a5;
  if (*a5 == 0x7FFFFFFF)
  {
    __t.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    v16 = std::chrono::system_clock::to_time_t(&__t);
  }

  *(a1 + 2960) = v16;
  *(a1 + 2964) = a6;
  *(a1 + 2968) = a4;
  *(a1 + 1040) = a7;
  if (a1 + 1168 != a2)
  {
    sub_C70E60((a1 + 1168), *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 5));
  }

  *(a1 + 1192) = *(a2 + 24);
  __t.__d_.__rep_ = a1;
  sub_10322E4((a1 + 24), a3, 1, &__t);
  *(a1 + 976) = a1 + 24;
  if (!(*(a1 + 112) + *(a1 + 64) + *(a1 + 160) + *(a1 + 208) + *(a1 + 256) + *(a1 + 304) + *(a1 + 352) + *(a1 + 400) + *(a1 + 448) + *(a1 + 496) + *(a1 + 544) + *(a1 + 592) + *(a1 + 640) + *(a1 + 688) + *(a1 + 736) + *(a1 + 784)))
  {
    goto LABEL_42;
  }

  sub_102EA98(a1);
  __t.__d_.__rep_ = 0;
  rep = 0;
  v28.__locale_ = 0;
  sub_102F300(a1, &__t);
  if (__t.__d_.__rep_)
  {
    rep = __t.__d_.__rep_;
    operator delete(__t.__d_.__rep_);
  }

  sub_102F8BC(a1);
  sub_102FEC0(a1, &v37, a9);
  v18 = *(*(a1 + 928) + 8);
  v17 = v18 & 0xFFFFFFFF00000000;
  v18 = v18;
  return v18 | v17;
}

void sub_102E6BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_1959728(&a16);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a16);
  _Unwind_Resume(a1);
}

double sub_102E750(uint64_t a1)
{
  v2 = a1 + 2080;
  v3 = 768;
  do
  {
    if (*(v2 + 16))
    {
      v4 = *(v2 + 24);
      if (v4 >= 0x80)
      {
        operator delete(*v2);
        *(v2 + 40) = 0;
        *v2 = &unk_2290750;
        *(v2 + 8) = 0;
        *(v2 + 16) = 0;
        *(v2 + 24) = 0;
      }

      else if (v4)
      {
        *(v2 + 16) = 0;
        memset(*v2, 128, v4 + 8);
        *(*v2 + v4) = -1;
        v5 = *(v2 + 24);
        if (v5 == 7)
        {
          v6 = 6;
        }

        else
        {
          v6 = v5 - (v5 >> 3);
        }

        *(v2 + 40) = v6 - *(v2 + 16);
      }
    }

    v2 += 48;
    v3 -= 48;
  }

  while (v3);
  v7 = a1 + 1200;
  *(a1 + 2056) = *(a1 + 2048);
  *(a1 + 2032) = *(a1 + 2024);
  *(a1 + 2072) = 0;
  *(a1 + 1976) = *(a1 + 1968);
  v8 = 768;
  do
  {
    if (*(v7 + 16))
    {
      v9 = *(v7 + 24);
      if (v9 >= 0x80)
      {
        operator delete(*v7);
        *(v7 + 40) = 0;
        *v7 = &unk_2290750;
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        *(v7 + 24) = 0;
      }

      else if (v9)
      {
        *(v7 + 16) = 0;
        memset(*v7, 128, v9 + 8);
        *(*v7 + v9) = -1;
        v10 = *(v7 + 24);
        if (v10 == 7)
        {
          v11 = 6;
        }

        else
        {
          v11 = v10 - (v10 >> 3);
        }

        *(v7 + 40) = v11 - *(v7 + 16);
      }
    }

    v7 += 48;
    v8 -= 48;
  }

  while (v8);
  *(a1 + 2000) = *(a1 + 1992);
  *(a1 + 2016) = 0;
  *(a1 + 1016) = *(a1 + 1008);
  *(a1 + 992) = *(a1 + 984);
  *(a1 + 1032) = 0;
  *(a1 + 1040) = -NAN;
  *(a1 + 20) = -1;
  *(a1 + 1048) = 0;
  sub_1053AC0(a1 + 1064);
  sub_1053AC0(a1 + 2856);
  *(a1 + 1176) = *(a1 + 1168);
  v12 = *(a1 + 952);
  v13 = *(a1 + 960);
  if (v12 != v13)
  {
    do
    {
      v14 = *v12++;
      v15 = *(a1 + 928) + 24 * v14;
      *v15 = 0;
      *(v15 + 8) = xmmword_2297C80;
    }

    while (v12 != v13);
    v12 = *(a1 + 952);
  }

  *(a1 + 960) = v12;
  v17 = *(a1 + 24);
  v16 = *(a1 + 32);
  if (v16 != v17)
  {
    v18 = *(a1 + 32);
    do
    {
      v20 = *(v18 - 32);
      v18 -= 32;
      v19 = v20;
      if (v20)
      {
        *(v16 - 24) = v19;
        operator delete(v19);
      }

      v16 = v18;
    }

    while (v18 != v17);
  }

  *(a1 + 32) = v17;
  sub_3068EC(a1 + 48);
  sub_1053AC0(a1 + 824);
  *(a1 + 2960) = 0x7FFFFFFF;
  *(a1 + 3048) = 0;
  v21 = a1 + 3088;
  v22 = 768;
  do
  {
    if (*(v21 + 16))
    {
      v23 = *(v21 + 24);
      if (v23 >= 0x80)
      {
        operator delete(*v21);
        *(v21 + 40) = 0;
        *v21 = &unk_2290750;
        *(v21 + 8) = 0;
        *(v21 + 16) = 0;
        *(v21 + 24) = 0;
      }

      else if (v23)
      {
        *(v21 + 16) = 0;
        memset(*v21, 128, v23 + 8);
        *(*v21 + v23) = -1;
        v24 = *(v21 + 24);
        if (v24 == 7)
        {
          v25 = 6;
        }

        else
        {
          v25 = v24 - (v24 >> 3);
        }

        *(v21 + 40) = v25 - *(v21 + 16);
      }
    }

    v21 += 48;
    v22 -= 48;
  }

  while (v22);
  *(a1 + 3864) = *(a1 + 3856);
  v26 = *(a1 + 3888);
  v27 = *(a1 + 3880);
  if (v26 != v27)
  {
    do
    {
      v28 = v26 - 40;
      v29 = *(v26 - 8);
      if (v29 != -1)
      {
        (off_2674F50[v29])(&v31, v26 - 40);
      }

      *(v26 - 8) = -1;
      v26 -= 40;
    }

    while (v28 != v27);
  }

  *(a1 + 3888) = v27;
  *(a1 + 3912) = 0;
  result = 0.0;
  *(a1 + 3928) = 0u;
  return result;
}

void sub_102EA98(uint64_t **a1)
{
  v64 = 0;
  __p = 0;
  v62 = 0;
  v63 = 0;
  v2 = *a1;
  v3 = (*a1 + 1024);
  v4 = (*a1)[1252];
  if (v4)
  {
    v5 = 8 * v4;
    v6 = (*a1)[1254];
    while (1)
    {
      v7 = BYTE6(*v6);
      v8 = HIDWORD(*v6);
      if ((*(v2 + 2506) != *v6 || *(*a1 + 5014) != v8 || *(*a1 + 10030) != v7) && (!v2[1250] || *(v2 + 2498) != *v6 || *(*a1 + 4998) != v8 || *(*a1 + 9998) != v7))
      {
        break;
      }

      ++v6;
      v5 -= 8;
      if (!v5)
      {
        goto LABEL_66;
      }
    }
  }

  else
  {
    v6 = (*a1)[1254];
  }

  v9 = (*a1)[1254] + 8 * v4;
  if (v6 == v9)
  {
LABEL_66:
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v58 = (a1 + 370);
    __asm { FMOV            V0.2D, #1.0 }

    v57 = _Q0;
    do
    {
      v60 = (*v6 >> 16) & 0xFFFF0000 | (*v6 << 32) | (2 * ((*v6 & 0xFF000000000000) == 0));
      if (v64 && ((v16 = *a1, v17 = a1[371], sub_F8EC88((*a1 + 1), *v6, &v65), v68 = 0u, v69 = 0u, v70 = v57, v71 = 0x3FF0000000000000, v72 = 1, sub_10A8B08((v16 + 549), &v68, &v65, 0x3B9ACA00u, v17, *&v57, v18), (v72 & 1) == 0) || (v20 = sub_F8634C(&v68, &v70, v19), v69 + v20 == -1) || DWORD1(v69) + HIDWORD(v20) == 0x7FFFFFFF || *(&v69 + 1) + v21 == 0x7FFFFFFFFFFFFFFFLL))
      {
        v22 = sub_101E508(a1[1]);
        if (v22 - 1 <= v64 || (sub_1034680(*a1, &v60, v22 - 1, a1[371], v58, *(a1 + 2964)) & 1) != 0)
        {
          sub_1053B80(a1 + 132, &v60, &v64);
          sub_1054E9C(a1 + 132);
          __src = v11;
          LODWORD(v68) = v64 - 1;
          sub_1053B80(a1 + 356, &v60, &v68);
          sub_1054E9C(a1 + 356);
          v23 = a1[1];
          LODWORD(v68) = v64;
          v24 = sub_101F854(*v23, HIDWORD(v60) & 0xFFFF0000FFFFFFFFLL | (WORD1(v60) << 32), (v60 & 2) == 0, &v68);
          v25 = v11;
          if (v11 == v10 || v10[-1].i64[1] != v24)
          {
            if (v10 >= v63)
            {
              v26 = v10 - v11;
              v27 = (v10 - v11) >> 3;
              v28 = v27 + 1;
              if ((v27 + 1) >> 61)
              {
                sub_1794();
              }

              v29 = v63 - v11;
              if ((v63 - v11) >> 2 > v28)
              {
                v28 = v29 >> 2;
              }

              if (v29 >= 0x7FFFFFFFFFFFFFF8)
              {
                v30 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v30 = v28;
              }

              if (v30)
              {
                if (!(v30 >> 61))
                {
                  operator new();
                }

                sub_1808();
              }

              v25 = 0;
              v31 = (8 * v27);
              *v31 = v24;
              v10 = (v31 + 1);
              memcpy(0, v11, v26);
              __p = 0;
              v62 = v10;
              v63 = 0;
            }

            else
            {
              v10->i64[0] = v24;
              v10 = (v10 + 8);
            }

            __src = v25;
            v62 = v10;
          }

          v32 = a1[1];
          LODWORD(v68) = v64;
          v33 = sub_101F854(*v32, HIDWORD(v60) & 0xFFFF0000FFFFFFFFLL | (WORD1(v60) << 32), (v60 >> 1) & 1, &v68);
          if (v10[-1].i64[1] == v33)
          {
            v11 = __src;
          }

          else
          {
            v11 = __src;
            if (v10 >= v63)
            {
              v34 = v10 - __src;
              v35 = (v10 - __src) >> 3;
              v36 = v35 + 1;
              if ((v35 + 1) >> 61)
              {
                sub_1794();
              }

              v37 = v63 - __src;
              if ((v63 - __src) >> 2 > v36)
              {
                v36 = v37 >> 2;
              }

              if (v37 >= 0x7FFFFFFFFFFFFFF8)
              {
                v38 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v38 = v36;
              }

              if (v38)
              {
                if (!(v38 >> 61))
                {
                  operator new();
                }

                sub_1808();
              }

              v39 = (8 * v35);
              *v39 = v33;
              v10 = (v39 + 1);
              memcpy(0, __src, v34);
              __p = 0;
              v62 = v10;
              v63 = 0;
              v11 = 0;
            }

            else
            {
              v10->i64[0] = v33;
              v10 = (v10 + 8);
            }

            v62 = v10;
          }
        }

        else
        {
          LODWORD(v68) = v22 - 2;
          sub_1053B80(a1 + 356, &v60, &v68);
          sub_1054E9C(a1 + 356);
        }
      }

      else
      {
        LODWORD(v68) = 0;
        sub_1053B80(a1 + 132, &v60, &v68);
        sub_1054E9C(a1 + 132);
      }

      for (++v6; v6 != v9; ++v6)
      {
        v40 = BYTE6(*v6);
        v41 = HIDWORD(*v6);
        if ((*(v2 + 2506) != *v6 || *(v3 + 1836) != v41 || *(v3 + 1838) != v40) && (!v2[1250] || *(v2 + 2498) != *v6 || *(v3 + 1804) != v41 || *(v3 + 1806) != v40))
        {
          break;
        }
      }
    }

    while (v6 != v9);
    v2 = *a1;
  }

  v42 = v2[1284];
  v43 = v42 + 88 * v2[1272];
  *&v68 = v2 + 1255;
  *(&v68 + 1) = v42;
  *&v69 = v43;
  sub_1007918(&v68);
  v44 = v2[1284] + 88 * v2[1272];
  v65 = (v2 + 1255);
  v66 = v44;
  v67 = v44;
  sub_1007918(&v65);
  while (1)
  {
    v45 = *(&v68 + 1);
    if (*(&v68 + 1) == v66)
    {
      break;
    }

    v60 = (((*(*(&v68 + 1) + 32) >> 16) & 0xFFFF0000 | (*(*(&v68 + 1) + 32) << 32) | (2 * ((*(*(&v68 + 1) + 32) & 0xFF000000000000) == 0))) + 4 * *(*(&v68 + 1) + 80)) & 0xFFFFFFFFFFFFFFFELL | *(*(&v68 + 1) + 84) & 1;
    v73[0] = 0;
    sub_1053B80(a1 + 132, &v60, v73);
    sub_1054E9C(a1 + 132);
    v60 = (((*(v45 + 72) >> 16) & 0xFFFF0000 | (*(v45 + 72) << 32) | (2 * ((*(v45 + 72) & 0xFF000000000000) == 0))) + 4 * *(v45 + 82)) & 0xFFFFFFFFFFFFFFFELL | (*(v45 + 84) >> 1) & 1;
    v73[0] = 0;
    sub_1053B80(a1 + 132, &v60, v73);
    sub_1054E9C(a1 + 132);
    *(&v68 + 1) += 88;
    sub_1007918(&v68);
  }

  for (i = *(sub_F8F520((*a1 + 1)) + 16); i; i = *i)
  {
    *&v68 = (i[2] >> 16) & 0xFFFF0000 | (i[2] << 32) | (2 * ((i[2] & 0xFF000000000000) == 0));
    LODWORD(v65) = 0;
    sub_1053B80(a1 + 132, &v68, &v65);
    sub_1054E9C(a1 + 132);
  }

  v47 = 126 - 2 * __clz((v10 - v11) >> 3);
  if (v10 == v11)
  {
    v48 = 0;
  }

  else
  {
    v48 = v47;
  }

  sub_2D31D4(v11, v10, &v68, v48, 1);
  v50 = __p;
  v49 = v62;
  if (__p == v62)
  {
LABEL_93:
    if (v50 != v49)
    {
      v62 = v50;
    }
  }

  else
  {
    v51 = __p - 8;
    while (v51 + 4 != v62)
    {
      v52 = v51[2];
      v51 += 2;
      LODWORD(v53) = v51[2];
      if (v52 == v53 && v51[1] == v51[3])
      {
        v55 = v51 + 4;
        if (v51 + 4 != v62)
        {
          do
          {
            if (v53 != *v55 || v51[1] != v55[1])
            {
              v53 = *v55;
              *(v51 + 1) = *v55;
              v51 += 2;
            }

            v55 += 2;
          }

          while (v55 != v49);
          v49 = v62;
        }

        v50 = v51 + 2;
        goto LABEL_93;
      }
    }
  }

  sub_105DC54((*a1 + 560), &__p, a1[371], *(a1 + 740), *(a1 + 2964), 4u);
  if (__p)
  {
    v62 = __p;
    operator delete(__p);
  }
}

void sub_102F28C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (v17)
  {
    v18 = a1;
    operator delete(v17);
    a1 = v18;
  }

  _Unwind_Resume(a1);
}

void sub_102F300(uint64_t **a1, void *a2)
{
  v2 = a1[147];
  v3 = a1[146];
  v51 = 0xAAAAAAAAAAAAAAABLL * ((v2 - v3) >> 5);
  if (v51 >> 30)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v47 = sub_2D390(exception, "The source terminal of a query cannot have more than (2^30 - 1) nodes.", 0x46uLL);
  }

  if (v2 != v3)
  {
    v5 = 0;
    __asm { FMOV            V0.2D, #1.0 }

    v53 = _Q0;
    do
    {
      v11 = &a1[146][12 * v5];
      v12 = *a1;
      v13 = **a1;
      if (*(v13 + 7774) == 1)
      {
        v14 = *v11;
        v15 = HIDWORD(*v11);
        v16 = sub_2AF704(v13 + 3896, HIDWORD(*v11), 1);
        if (!v16)
        {
          goto LABEL_4;
        }

        v17 = &v16[-*v16];
        if (*v17 < 5u)
        {
          goto LABEL_4;
        }

        v18 = *(v17 + 2);
        if (!v18 || *&v16[v18 + *&v16[v18]] <= WORD1(v14) || !sub_2B817C(v13, v15 & 0xFFFF0000FFFFFFFFLL | (WORD1(v14) << 32)))
        {
          goto LABEL_4;
        }

        v12 = *a1;
      }

      v19 = a1[371];
      v55 = 0u;
      v56 = 0u;
      v57 = v53;
      v58 = 0x3FF0000000000000;
      LOBYTE(v59) = 1;
      sub_10A5C78(v12 + 549, &v55, v11, (v11 + 1), v19);
      if (v59)
      {
        v21 = sub_F8634C(&v55, &v57, v20);
        v50 = v56 + v21;
        if (v56 + v21 != -1)
        {
          v49 = DWORD1(v56) + HIDWORD(v21);
          if (DWORD1(v56) + HIDWORD(v21) != 0x7FFFFFFF)
          {
            v22 = *(v11 + 2);
            sub_F8ED58((*a1 + 1), *v11, 0, a1 + 372, 0);
            v23 = -1171354717 * ((a1[373] - a1[372]) >> 3);
            if (v23)
            {
              v24 = 0;
              v25 = 0;
              v52 = 1000000000 - v22;
              v26 = 88 * v23;
              while (2)
              {
                v28 = a1[372];
                v29 = *(a1 + 740);
                v30 = *a1;
                v31 = a1[371];
                v32 = *(a1 + 2964);
                if (*(*a1 + 9954) == 1)
                {
                  if (sub_1007A48((v30 + 1255), &v28[v24 / 8]) != -1)
                  {
                    goto LABEL_20;
                  }

                  v33 = v28[v24 / 8 + 4];
                  v34 = (v33 >> 16) & 0xFFFF0000 | (v33 << 32);
                  v35 = (v33 & 0xFF000000000000) == 0;
                  v36 = (v34 | (2 * v35)) + 4 * LODWORD(v28[v24 / 8 + 10]);
                  WORD2(v55) = ((v34 | (2 * v35)) + 4 * LODWORD(v28[v24 / 8 + 10])) >> 16;
                  LODWORD(v55) = HIDWORD(v36);
                  BYTE6(v55) = (((v36 << 16) & 0xFFFF00000000 | HIDWORD(v36) | (v35 << 48)) ^ 0x1000000000000uLL) >> 48;
                  if (sub_100A97C((v30 + 1245), &v55) != -1)
                  {
                    goto LABEL_20;
                  }
                }

                v55 = 0u;
                v56 = 0u;
                v57 = v53;
                v58 = 0x3FF0000000000000;
                LOBYTE(v59) = 1;
                sub_10AB718((v30 + 549), &v55, &v28[v24 / 8], v52, v31, v29, v32);
                if ((v59 & 1) == 0)
                {
                  goto LABEL_20;
                }

                v38 = sub_F8634C(&v55, &v57, v37);
                if (v56 + v38 == -1 || DWORD1(v56) + HIDWORD(v38) == 0x7FFFFFFF)
                {
                  goto LABEL_20;
                }

                v39 = &v28[v24 / 8];
                v40 = (DWORD1(v56) + HIDWORD(v38) + v49);
                v41 = *(a1 + 2964);
                *&v55 = (v56 + v38 + v50) | (v40 << 32);
                DWORD2(v55) = v29;
                BYTE12(v55) = v41;
                *&v56 = (((v28[v24 / 8 + 4] >> 16) & 0xFFFF0000 | (v28[v24 / 8 + 4] << 32) | (2 * ((v28[v24 / 8 + 4] & 0xFF000000000000) == 0))) + 4 * LODWORD(v28[v24 / 8 + 10])) & 0xFFFFFFFFFFFFFFFELL | BYTE4(v28[v24 / 8 + 10]) & 1;
                *(&v56 + 1) = (((v28[v24 / 8 + 9] >> 16) & 0xFFFF0000 | (v28[v24 / 8 + 9] << 32) | (2 * ((v28[v24 / 8 + 9] & 0xFF000000000000) == 0))) + 4 * *(v39 + 41)) & 0xFFFFFFFFFFFFFFFELL | (*(v39 + 84) >> 1) & 1;
                LODWORD(v57) = HIDWORD(v28[v24 / 8 + 10]);
                v59 = v25;
                v60 = 0;
                v61 = v5 | 0x80000000;
                v54 = (((4 * *(v39 + 41)) | (v28[v24 / 8 + 9] << 32)) + ((v28[v24 / 8 + 9] >> 16) & 0xFFFF0000)) & 0xFFFFFFFFFFFFFFFELL | (*(v39 + 84) >> 1) & 1 | (2 * ((v28[v24 / 8 + 9] & 0xFF000000000000) == 0));
                v42 = *(a1 + 261);
                if (v42 == 0x7FFFFFFF)
                {
                  goto LABEL_19;
                }

                sub_F98EF8((a1 + 150), &v54, v62);
                if (v62[0])
                {
                  sub_F98EF8((a1 + 150), &v54, v62);
                  v43 = a1[246][10 * *(v63 + 8) + 1];
                  if (v55 == v43)
                  {
                    if (SDWORD1(v55) < SHIDWORD(v43))
                    {
                      goto LABEL_33;
                    }

LABEL_19:
                    sub_1034330((a1 + 150), &v54, &v55);
                    v62[0] = (((4 * *(v39 + 41)) | (v39[9] << 32)) + ((v39[9] >> 16) & 0xFFFF0000)) & 0xFFFFFFFFFFFFFFFELL | (*(v39 + 84) >> 1) & 1 | (2 * ((v39[9] & 0xFF000000000000) == 0));
                    LODWORD(v54) = 0;
                    sub_1053B80(a1 + 132, v62, &v54);
                    sub_1053EDC(a1 + 132, a2);
                    sub_1054E9C(a1 + 132);
LABEL_20:
                    ++v25;
                    v24 += 88;
                    if (v26 == v24)
                    {
                      goto LABEL_4;
                    }

                    continue;
                  }

                  if (v55 >= v43)
                  {
                    goto LABEL_19;
                  }

LABEL_33:
                  sub_F98EF8((a1 + 150), &v54, v62);
                  v44 = HIDWORD(a1[246][10 * *(v63 + 8) + 1]);
                  v45 = *(a1 + 261);
                  if (v45 < v44 || v40 <= v42)
                  {
                    if (v45 >= v44)
                    {
                      goto LABEL_19;
                    }

                    goto LABEL_36;
                  }

                  v27 = -1;
                }

                else
                {
LABEL_36:
                  if (v40 > v42)
                  {
                    goto LABEL_19;
                  }

                  v27 = 1;
                }

                break;
              }

              *(a1 + 262) += v27;
              goto LABEL_19;
            }
          }
        }
      }

LABEL_4:
      ++v5;
    }

    while (v5 != v51);
  }
}

void sub_102F8BC(uint64_t result)
{
  v52 = -1431655765 * ((*(result + 1176) - *(result + 1168)) >> 5);
  if (v52)
  {
    v2 = 0;
    __asm { FMOV            V0.2D, #1.0 }

    v60 = _Q0;
    while (1)
    {
      v56 = v2;
      v6 = *(result + 1168) + 96 * v2;
      if (*(result + 3048) == 1)
      {
        sub_10345B8(result, v6);
      }

      sub_1056F4C(*(result + 976) + 24, v6, &v62);
      if (v62)
      {
        v59 = *(v6 + 8);
        v7 = *result;
        v8 = *(result + 2968);
        v62 = 0u;
        v63 = 0u;
        v64 = v60;
        v65 = 0x3FF0000000000000;
        v66 = 1;
        sub_10A5C78((v7 + 4392), &v62, v6, v6 + 8, v8);
        if (v66)
        {
          v10 = sub_F8634C(&v62, &v64, v9);
          v54 = v63 + v10;
          if (v63 + v10 != -1)
          {
            v53 = DWORD1(v63) + HIDWORD(v10);
            if (DWORD1(v63) + HIDWORD(v10) != 0x7FFFFFFF)
            {
              break;
            }
          }
        }
      }

LABEL_3:
      v2 = v56 + 1;
      if (v56 + 1 == v52)
      {
        return;
      }
    }

    sub_1056F4C(*(result + 976) + 24, v6, &v62);
    v12 = *(*(&v63 + 1) + 8);
    v11 = *(*(&v63 + 1) + 16);
    for (i = v11; ; v11 = i)
    {
      if (v12 == v11)
      {
        goto LABEL_3;
      }

      v57 = v12;
      v13 = (**(result + 976) + 32 * *v12);
      v14 = -1431655765 * ((v13[1] - *v13) >> 5);
      if (v14)
      {
        break;
      }

LABEL_11:
      v12 = v57 + 1;
    }

    v15 = 0;
    while (1)
    {
      v16 = *v13 + 96 * v15;
      if (*v16 != *v6)
      {
        goto LABEL_16;
      }

      v17 = *(v16 + 8);
      v18 = *result;
      v19 = *(result + 2968);
      v62 = 0u;
      v63 = 0u;
      v64 = v60;
      v65 = 0x3FF0000000000000;
      v66 = 1;
      sub_10A5C78((v18 + 4392), &v62, v16, v16 + 8, v19);
      if ((v66 & 1) == 0)
      {
        goto LABEL_16;
      }

      LODWORD(v20) = v62;
      v21 = *&v64 * v20;
      if (v21 >= 0.0)
      {
        if (v21 >= 4.50359963e15)
        {
          goto LABEL_25;
        }

        v22 = (v21 + v21) + 1;
      }

      else
      {
        if (v21 <= -4.50359963e15)
        {
          goto LABEL_25;
        }

        v22 = (v21 + v21) - 1 + (((v21 + v21) - 1) >> 63);
      }

      v21 = (v22 >> 1);
LABEL_25:
      v23 = *(&v64 + 1) * SDWORD1(v62);
      if (v23 >= 0.0)
      {
        if (v23 < 4.50359963e15)
        {
          v24 = (v23 + v23) + 1;
          goto LABEL_30;
        }
      }

      else if (v23 > -4.50359963e15)
      {
        v24 = (v23 + v23) - 1 + (((v23 + v23) - 1) >> 63);
LABEL_30:
        v23 = (v24 >> 1);
      }

      v25 = v63 + v21;
      if (v25 != -1 && DWORD1(v63) + v23 != 0x7FFFFFFF && v17 >= v59)
      {
        v28 = *result;
        v29 = *(result + 2968);
        v30 = *v6;
        v31 = HIDWORD(*v6);
        v32 = (*v6 << 47) & 0x1000000000000;
        v33 = *v6 << 16;
        if (*(*result + 9954) == 1)
        {
          v34 = 0;
          v35 = v30 & 0xFFFFFFFFFFFF0000;
          v36 = (v32 ^ 0x1000000000000uLL) >> 48;
          if (!v36)
          {
            ++v35;
          }

          v37 = (0x2127599BF4325C37 * (v35 ^ (v30 >> 23))) ^ ((0x2127599BF4325C37 * (v35 ^ (v30 >> 23))) >> 47);
          while (2)
          {
            v39 = v37 & (*(v28 + 10016) - 1);
            v40 = *(*(v28 + 10032) + 8 * v39);
            if (*(v28 + 10024) == v40 && *(*result + 10028) == WORD2(v40) && *(*result + 10030) == BYTE6(v40))
            {
              goto LABEL_61;
            }

            if (*(v28 + 10000) && *(v28 + 9992) == v40 && *(*result + 9996) == WORD2(v40))
            {
              if (*(*result + 9998) == BYTE6(v40) || v31 != v40)
              {
                goto LABEL_47;
              }
            }

            else if (v31 != v40)
            {
LABEL_47:
              v37 = ++v34 + v39;
              continue;
            }

            break;
          }

          if (WORD2(v33) == WORD2(v40) && v36 == BYTE6(v40))
          {
            if (v39 == -1)
            {
              goto LABEL_61;
            }

            goto LABEL_16;
          }

          goto LABEL_47;
        }

LABEL_61:
        v58 = DWORD1(v63) + v23;
        sub_F8EC88(v28 + 8, (v33 & 0xFFFF00000000 | v31 | v32) ^ 0x1000000000000, v61);
        v62 = 0u;
        v63 = 0u;
        v64 = v60;
        v65 = 0x3FF0000000000000;
        v66 = 1;
        sub_10A8B08(v28 + 4392, &v62, v61, v17 - v59, v29, *&v60, v42);
        if (v66)
        {
          LODWORD(v43) = v62;
          v44 = *&v64 * v43;
          if (v44 >= 0.0)
          {
            v45 = v58;
            if (v44 < 4.50359963e15)
            {
              v46 = (v44 + v44) + 1;
LABEL_67:
              v44 = (v46 >> 1);
            }
          }

          else
          {
            v45 = v58;
            if (v44 > -4.50359963e15)
            {
              v46 = (v44 + v44) - 1 + (((v44 + v44) - 1) >> 63);
              goto LABEL_67;
            }
          }

          v47 = *(&v64 + 1) * SDWORD1(v62);
          if (v47 >= 0.0)
          {
            if (v47 < 4.50359963e15)
            {
              v48 = (v47 + v47) + 1;
LABEL_73:
              v47 = (v48 >> 1);
            }
          }

          else if (v47 > -4.50359963e15)
          {
            v48 = (v47 + v47) - 1 + (((v47 + v47) - 1) >> 63);
            goto LABEL_73;
          }

          v49 = v63 + v44;
          v50 = DWORD1(v63) + v47;
          if (v49 != -1 && v50 != 0x7FFFFFFF)
          {
            LODWORD(v62) = v25 + v54 + v49;
            DWORD1(v62) = v45 + v53 + v50;
            sub_1034078(result, v6, &v62, *v57, v56, v15, 1, 0);
          }
        }
      }

LABEL_16:
      if (++v15 == v14)
      {
        goto LABEL_11;
      }
    }
  }
}

void sub_102FEC0(void ***a1, unsigned int *a2, unsigned int a3)
{
  if (*(*a1 + 9952) == 1 && sub_585D8(*a1 + 8))
  {
    v6 = sub_101E508(a1[1]) - 1;
  }

  else
  {
    v6 = 0;
  }

  if (*a2 >= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = *a2;
  }

  if (*a2 != -1)
  {
    v6 = v7;
  }

  v83 = v6;
  v84 = v6;
  if (*(a1 + 518))
  {
    v8 = a1 + 375;
    v9 = -1;
    do
    {
      if (((a1[250] - a1[249]) >> 2) >= a3)
      {
        return;
      }

      v10 = &a1[246][10 * *a1[253]];
      v81[0] = *v10;
      v11 = v10[4];
      v13 = v10[1];
      v12 = v10[2];
      v81[3] = v10[3];
      v82 = v11;
      v81[1] = v13;
      v81[2] = v12;
      sub_1032874((a1 + 150));
      v14 = **a1;
      if (*(v14 + 7774) == 1)
      {
        v15 = WORD1(v81[0]);
        v16 = HIDWORD(*&v81[0]);
        if ((v17 = sub_2AF704(v14 + 3896, DWORD1(v81[0]), 1)) == 0)
        {
          continue;
        }

        v18 = &v17[-*v17];
        if (*v18 < 5u || (v19 = *(v18 + 2)) == 0 || *&v17[v19 + *&v17[v19]] <= v15 || !sub_2B817C(v14, v16 & 0xFFFF0000FFFFFFFFLL | (v15 << 32)))
        {
          continue;
        }
      }

      if (*(a1 + 1052) != 1 || sub_2B8438(**a1, HIDWORD(*&v81[0]) & 0xFFFF0000FFFFFFFFLL | (WORD1(v81[0]) << 32)))
      {
        v20 = DWORD2(v82);
        v21 = *(a1 + 260);
        if (v21 != -1 && DWORD2(v81[0]) > v21 || *(a1 + 3048) == 1 && sub_10329F4(a1, v81 + 2))
        {
          return;
        }

        v22 = *(a1 + 261);
        if (v22 != 0x7FFFFFFF && SHIDWORD(v81[0]) <= v22)
        {
          --*(a1 + 262);
        }

        if (*(a1 + 756) == -1 || (v23 = a1[1], LODWORD(v71) = *(a1 + 756), !sub_101F374(*v23, HIDWORD(*&v81[0]) & 0xFFFF0000FFFFFFFFLL | (WORD1(v81[0]) << 32), &v71)))
        {
          v24 = v20 & 0x7FFFFFFF;
          v80 = sub_1032BF8(a1, v81, v81 + 2, v24);
          v25 = *(a1 + 740);
          v26 = 0x7FFFFFFF;
          if (v25 != 0x7FFFFFFF)
          {
            if (v81[0] < 0)
            {
              v27 = -5;
            }

            else
            {
              v27 = 5;
            }

            v26 = SHIDWORD(v81[0]) / 10 + v25 + (((103 * (v27 + SHIDWORD(v81[0]) % 10)) >> 15) & 1) + ((103 * (v27 + SHIDWORD(v81[0]) % 10)) >> 10);
          }

          v79 = v26;
          v28 = sub_394BD0();
          v29 = &v84;
          if (v28)
          {
            v29 = &v83;
          }

          v30 = *v29 >= v80 ? &v80 : v29;
          v31 = sub_1032FC0(a1, v81, a1[371], &v79, *(a1 + 2964), v30);
          if (v31 != -1)
          {
            v32 = v31;
            if (v31)
            {
              v42 = a1[1];
              LODWORD(v71) = v31;
              v43 = sub_101F854(*v42, HIDWORD(*&v81[0]) & 0xFFFF0000FFFFFFFFLL | (WORD1(v81[0]) << 32), (v81[0] & 2) == 0, &v71);
              v78 = v43;
              if (!v43)
              {
                continue;
              }

              if (v43 > 0xFFFFFFFEFFFFFFFFLL)
              {
                continue;
              }

              v68 = *(a1 + 2964);
              sub_105D3DC((*a1 + 560), *&v81[0], v32, 0, a1[371], v79, v68, v8);
              if (a1[375] == a1[376])
              {
                continue;
              }

              sub_585C38((a1 + 260), &v78, &v71);
              v44 = v71;
              if (v72 == 1)
              {
                v45 = *(v71 + 8) + 12 * *(&v71 + 1);
                *v45 = v78;
                *(v45 + 8) = 0x7FFFFFFF;
              }

              v69 = v8;
              v46 = *(v44 + 8) + 12 * *(&v71 + 1);
              v49 = *(v46 + 8);
              v47 = (v46 + 8);
              v48 = v49;
              if (v49 == 0x7FFFFFFF || SHIDWORD(v81[0]) < v48)
              {
                *v47 = HIDWORD(v81[0]);
              }

              v50 = -858993459 * ((a1[376] - a1[375]) >> 3);
              if (v50)
              {
                v51 = 0;
                v52 = 0;
                v53 = 40 * v50;
                do
                {
                  v54 = (*v69 + v51);
                  v55 = *(v54 + 28);
                  v56 = v55 & 0xFFFFFFFF00000000;
                  if (v55 != -1 && v56 != 0x7FFFFFFF00000000)
                  {
                    *&v71 = (v56 + *(&v81[0] + 1)) & 0xFFFFFFFF00000000 | (v55 + DWORD2(v81[0]));
                    DWORD2(v71) = v79;
                    BYTE12(v71) = v68;
                    v72 = 0uLL;
                    LODWORD(v73) = 0;
                    v75 = v52;
                    v76 = v32;
                    v77 = v24;
                    v58 = *(v54 + 8);
                    v59 = v54[1];
                    v72 = *v54;
                    v73 = v59;
                    v74 = v58;
                    v70 = *(v54 + 1);
                    sub_1032738(a1, &v70, &v71);
                  }

                  ++v52;
                  v51 += 40;
                }

                while (v53 != v51);
              }
            }

            else
            {
              v69 = v8;
              if ((a1[381] & 1) == 0)
              {
                sub_103313C(a1, v81, v81 + 2, v24);
              }

              sub_F8ED58((*a1 + 1), *&v81[0], 0, a1 + 372, 0);
              v33 = -1171354717 * ((a1[373] - a1[372]) >> 3);
              if (v33)
              {
                v34 = 0;
                v35 = 0;
                v36 = 88 * v33;
                do
                {
                  v37 = &a1[372][v34 / 8];
                  v38 = sub_10336EC(*a1, v37, a1[371], &v79, *(a1 + 2964));
                  v39 = v38 & 0xFFFFFFFF00000000;
                  if (v38 != -1 && v39 != 0x7FFFFFFF00000000)
                  {
                    v78 = (((4 * *(v37 + 41)) | (v37[9] << 32)) + ((v37[9] >> 16) & 0xFFFF0000)) & 0xFFFFFFFFFFFFFFFELL | (*(v37 + 84) >> 1) & 1 | (2 * ((v37[9] & 0xFF000000000000) == 0));
                    v41 = *(a1 + 2964);
                    *&v71 = (*(&v81[0] + 1) + v39) & 0xFFFFFFFF00000000 | (DWORD2(v81[0]) + v38);
                    DWORD2(v71) = v79;
                    BYTE12(v71) = v41;
                    *&v72 = (((v37[4] >> 16) & 0xFFFF0000 | (v37[4] << 32) | (2 * ((v37[4] & 0xFF000000000000) == 0))) + 4 * *(v37 + 20)) & 0xFFFFFFFFFFFFFFFELL | *(v37 + 84) & 1;
                    *(&v72 + 1) = (((v37[9] >> 16) & 0xFFFF0000 | (v37[9] << 32) | (2 * ((v37[9] & 0xFF000000000000) == 0))) + 4 * *(v37 + 41)) & 0xFFFFFFFFFFFFFFFELL | (*(v37 + 84) >> 1) & 1;
                    LODWORD(v73) = *(v37 + 21);
                    v75 = v35;
                    v76 = 0;
                    v77 = v24;
                    sub_1032738(a1, &v78, &v71);
                  }

                  ++v35;
                  v34 += 88;
                }

                while (v36 != v34);
              }
            }

            v60 = *(a1 + 261);
            if (v60 == 0x7FFFFFFF)
            {
              v8 = v69;
            }

            else
            {
              v8 = v69;
              if (!*(a1 + 262) && v9 == -1)
              {
                v61 = a1[119];
                v62 = a1[120];
                if (v61 == v62)
                {
                  return;
                }

                v9 = 0;
                v63 = a1[116];
                do
                {
                  if (0xAAAAAAAAAAAAAAABLL * (a1[117] - v63) > *v61)
                  {
                    v64 = v63[3 * *v61 + 1];
                  }

                  else
                  {
                    v64 = 0x7FFFFFFFFFFFFFFFLL;
                  }

                  v65 = HIDWORD(v64);
                  if (v9 > v64)
                  {
                    LODWORD(v64) = v9;
                  }

                  if (v60 >= v65)
                  {
                    v9 = v64;
                  }

                  ++v61;
                }

                while (v61 != v62);
                v66 = *(a1 + 260);
                if (v66 == -1 || v9 < v66)
                {
                  *(a1 + 260) = v9;
                }
              }
            }
          }
        }
      }
    }

    while (*(a1 + 518));
  }
}

void sub_103061C(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, char a5, _DWORD *a6, int a7, unsigned int *a8, uint64_t *a9, void *a10, unsigned int a11, int a12, int a13)
{
  sub_102E750(a1);
  *(a1 + 2960) = *a4;
  *(a1 + 2964) = a5;
  *(a1 + 2968) = a3;
  if (a1 + 1168 != a2)
  {
    sub_C70E60((a1 + 1168), *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 5));
  }

  *(a1 + 1192) = *(a2 + 24);
  *(a1 + 1040) = *a6;
  *(a1 + 1044) = a7;
  *(a1 + 20) = a13;
  *(a1 + 976) = a1 + 24;
  sub_102EA98(a1);
  sub_102F300(a1, a10);
  v21 = *a9;
  v20 = a9[1];
  if (*a9 != v20)
  {
    do
    {
      v23 = *(v21 + 8);
      sub_1053B80((a1 + 1056), v21, &v23);
      sub_1053EDC((a1 + 1056), a10);
      sub_1054E9C((a1 + 1056));
      v21 += 16;
    }

    while (v21 != v20);
  }

  sub_102FEC0(a1, a8, a11);
}

void sub_1030754(void *a1, uint64_t a2, unint64_t ***a3, uint64_t a4, int a5, char a6, int a7, int a8, unsigned int a9, int a10, unsigned int a11)
{
  sub_102E750(a1);
  v19 = *a3;
  v18 = a3[1];
  if (*a3 == v18)
  {
    v20 = *a3;
  }

  else
  {
    do
    {
      v24 = a1;
      sub_10322E4(a1 + 3, v19, 1, &v24);
      v19 += 4;
    }

    while (v19 != v18);
    v19 = *a3;
    v20 = a3[1];
  }

  v21 = 0xAAAAAAAAAAAAAAABLL * ((a1[117] - a1[116]) >> 3);
  v22 = (v20 - v19) >> 5;
  if (v22 > v21)
  {
    sub_1052908((a1 + 116), v22 - v21);
  }

  a1[122] = a1 + 3;
  sub_1030864(a1, a2, a4, a5, a6, a7, a8, a9, a11);
}

void sub_1030864(uint64_t a1, uint64_t a2, uint64_t a3, int a4, char a5, int a6, int a7, unsigned int a8, unsigned int a9)
{
  v18 = a8;
  *(a1 + 2960) = a4;
  *(a1 + 2964) = a5;
  *(a1 + 2968) = a3;
  v13 = (a1 + 1168);
  if (v13 != a2)
  {
    sub_C70E60(v13, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 5));
  }

  *(a1 + 1192) = *(a2 + 24);
  *(a1 + 1040) = a6;
  *(a1 + 1044) = a7;
  v14 = *(a1 + 976);
  if (v14[11] + v14[5] + v14[17] + v14[23] + v14[29] + v14[35] + v14[41] + v14[47] + v14[53] + v14[59] + v14[65] + v14[71] + v14[77] + v14[83] + v14[89] + v14[95] || *(a1 + 3048) == 1)
  {
    sub_102EA98(a1);
    __p = 0;
    v16 = 0;
    v17 = 0;
    sub_102F300(a1, &__p);
    if (__p)
    {
      v16 = __p;
      operator delete(__p);
    }

    sub_102F8BC(a1);
    sub_102FEC0(a1, &v18, a9);
  }
}

void sub_10309C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10309E4(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 928);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 936) - v2) >> 3) <= a2)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return *(v2 + 24 * a2 + 8);
  }
}

uint64_t sub_1030A20(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 928);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 936) - v2) >> 3) <= a2 || (v3 = v2 + 24 * a2, !*v3))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v10, a2);
    sub_23E08("No valid data for target id ", &v10, &v11);
    if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v11;
    }

    else
    {
      v7 = v11.__r_.__value_.__r.__words[0];
    }

    if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v11.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v11.__r_.__value_.__l.__size_;
    }

    v9 = sub_2D390(exception, v7, size);
  }

  return *(v3 + 20) & 0x3FFFFFFF;
}

void sub_1030AF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1030B4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = 0;
  sub_1030CF8(a1, 0, v3, a2);
  result = v4;
  if (v4 == v3)
  {
    return (*(*v4 + 32))(v4);
  }

  if (v4)
  {
    return (*(*v4 + 40))();
  }

  return result;
}

void sub_1030C10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1030F20(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_1030C24@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = 0;
  sub_1030CF8(a1, a2, v4, a3);
  result = v5;
  if (v5 == v4)
  {
    return (*(*v5 + 32))(v5);
  }

  if (v5)
  {
    return (*(*v5 + 40))();
  }

  return result;
}

void sub_1030CE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1030F20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1030CF8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_F68960(a4);
  v9 = *(a1 + 928);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 936) - v9) >> 3) > a2)
  {
    v10 = v9 + 24 * a2;
    v11 = *v10;
    if (*v10)
    {
      if (*(a1 + 3048) != 1 || *(a1 + 3049) == 1)
      {
        if ((*(v10 + 23) & 0x40) != 0)
        {
          sub_F8EC88(*a1 + 8, (HIDWORD(v11) & 0xFFFE0000FFFFFFFFLL | (WORD1(v11) << 32) & 0xFFFEFFFFFFFFFFFFLL | (((v11 >> 1) & 1) << 48)) ^ 0x1000000000000, v12);
          sub_F69060(a4, v11, v12, 0);
          sub_F68F20(a4, *(a1 + 1168) + 96 * (*(v10 + 20) & 0x3FFFFFFF) + 8);
        }

        else
        {
          sub_1031080(a1, v10, a3, v12);
          sub_49C304(a4, v12);
          sub_4547F0(v12);
        }

        if ((*(v10 + 20) & 0x80000000) != 0)
        {
          sub_10316C8(v10, *(a1 + 3880) + 40 * a2, v12);
          sub_F6B1A0(a4, v12);
          sub_4547F0(v12);
        }

        return sub_F6901C(a4, *(**(a1 + 976) + 32 * a2) + 96 * *(v10 + 16) + 8);
      }
    }
  }

  return result;
}

void sub_1030EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_4547F0(va);
  sub_4547F0(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_1030F20(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

_BYTE *sub_1030FAC@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = 0;
  sub_1031080(a1, a2, v4, a3);
  result = v5;
  if (v5 == v4)
  {
    return (*(*v5 + 32))(v5);
  }

  if (v5)
  {
    return (*(*v5 + 40))();
  }

  return result;
}

void sub_103106C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1030F20(va);
  _Unwind_Resume(a1);
}

void sub_1031080(uint64_t *a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = sub_F68960(a4);
  v7 = *a2;
  if (!*a2)
  {
    return;
  }

  v52 = a2;
  v53 = v6;
  v8 = 0;
  v9 = 0;
  v59 = v7;
  do
  {
    sub_F98EF8((a1 + 150), &v59, &v62);
    v10 = a1[246] + 80 * *(*(&v63 + 1) + 8);
    v11 = &v9[-v8];
    v12 = 0x8E38E38E38E38E39 * (&v9[-v8] >> 3);
    v13 = v12 + 1;
    if (v12 + 1 > 0x38E38E38E38E38ELL)
    {
      sub_1794();
    }

    if (0x1C71C71C71C71C72 * (-v8 >> 3) > v13)
    {
      v13 = 0x1C71C71C71C71C72 * (-v8 >> 3);
    }

    if (0x8E38E38E38E38E39 * (-v8 >> 3) >= 0x1C71C71C71C71C7)
    {
      v14 = 0x38E38E38E38E38ELL;
    }

    else
    {
      v14 = v13;
    }

    if (v14)
    {
      if (v14 <= 0x38E38E38E38E38ELL)
      {
        operator new();
      }

      sub_1808();
    }

    v15 = 8 * (&v9[-v8] >> 3);
    *v15 = *(v10 + 8);
    v16 = *(v10 + 24);
    v17 = *(v10 + 40);
    v18 = *(v10 + 56);
    *(v15 + 64) = *(v10 + 72);
    *(v15 + 32) = v17;
    *(v15 + 48) = v18;
    *(v15 + 16) = v16;
    v9 = (v15 + 72);
    v19 = (72 * v12 + 72 * (v11 / -72));
    memcpy((v15 + 72 * (v11 / -72)), v8, v11);
    if (v8)
    {
      operator delete(v8);
    }

    v8 = v19;
    if ((*(v10 + 72) & 0x80000000) != 0)
    {
      v59 = 0;
      if (v19 == v9)
      {
        goto LABEL_49;
      }

      goto LABEL_19;
    }

    v59 = *(v10 + 24);
  }

  while (v59);
  if (v19 == v9)
  {
    goto LABEL_49;
  }

LABEL_19:
  if (!*(a3 + 24))
  {
    v20 = v9 - 72;
    if (v9 - 72 > v19)
    {
      v21 = v19 + 72;
      do
      {
        v62 = *(v21 - 72);
        v22 = *(v21 - 56);
        v23 = *(v21 - 40);
        v24 = *(v21 - 24);
        *&v66 = *(v21 - 1);
        v65 = v24;
        v63 = v22;
        v64 = v23;
        v26 = *(v20 + 2);
        v25 = *(v20 + 3);
        v27 = *(v20 + 16);
        *(v21 - 56) = *(v20 + 1);
        *(v21 - 2) = v27;
        *(v21 - 24) = v25;
        *(v21 - 40) = v26;
        *(v21 - 72) = *v20;
        v28 = v65;
        v30 = v63;
        v29 = v64;
        *(v20 + 16) = v66;
        *(v20 + 2) = v29;
        *(v20 + 3) = v28;
        *(v20 + 1) = v30;
        *v20 = v62;
        v20 -= 72;
        v31 = v21 >= v20;
        v21 += 72;
      }

      while (!v31);
    }
  }

  v32 = 0;
  v58[0] = a3;
  v58[1] = v53;
  __p = 0;
  v56 = 0;
  v57 = 0;
  while (1)
  {
    v33 = &v19[v32];
    if (*&v19[v32 + 60])
    {
      break;
    }

    if (*(a3 + 24) && !sub_F69D6C(v53))
    {
      *&v62 = *&v19[v32 + 24];
      v34 = *(a3 + 24);
      if (!v34)
      {
        sub_2B7420();
      }

      if ((*(*v34 + 48))(v34, &v62))
      {
        goto LABEL_37;
      }
    }

    v35 = *a1;
    sub_F8EC88(*a1 + 8, (HIDWORD(*(v33 + 2)) & 0xFFFE0000FFFFFFFFLL | (WORD1(*(v33 + 2)) << 32) & 0xFFFEFFFFFFFFFFFFLL | (((*(v33 + 2) >> 1) & 1) << 48)) ^ 0x1000000000000, v60);
    sub_F8EC88(v35 + 8, (HIDWORD(*&v19[v32 + 24]) & 0xFFFE0000FFFFFFFFLL | (WORD1(*&v19[v32 + 24]) << 32) & 0xFFFEFFFFFFFFFFFFLL | (((*&v19[v32 + 24] >> 1) & 1) << 48)) ^ 0x1000000000000, &v64 + 1);
    v36 = *(v33 + 4);
    v37 = *&v19[v32 + 24];
    v62 = v60[0];
    v63 = v60[1];
    *&v64 = v61;
    LODWORD(v67) = (v37 << 14) & 0x3FFF0000 | (v36 >> 2);
    HIDWORD(v67) = *&v19[v32 + 32];
    sub_F692F8(v53, &v62, 0);
LABEL_25:
    v32 += 72;
    if (&v19[v32] == v9)
    {
      v38 = 1;
      if (!*(a3 + 24))
      {
        goto LABEL_43;
      }

      goto LABEL_38;
    }
  }

  sub_10775A8(*a1 + 4616, v33 + 2, a1[371], v33 + 2, v33[12], &__p);
  if (__p == v56)
  {
    sub_F687F4(v53);
    goto LABEL_47;
  }

  if ((sub_10319EC(v58, &__p) & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_37:
  v38 = 0;
  if (!*(a3 + 24))
  {
    goto LABEL_43;
  }

LABEL_38:
  v39 = sub_5FC64(v53);
  v40 = sub_445EF4(v53);
  if (v39 != v40)
  {
    v41 = v40 - 88;
    if (v40 - 88 > v39)
    {
      v42 = v39 + 88;
      do
      {
        v64 = *(v42 - 56);
        v65 = *(v42 - 40);
        v66 = *(v42 - 24);
        v67 = *(v42 - 8);
        v62 = *(v42 - 88);
        v63 = *(v42 - 72);
        v43 = *(v41 + 16);
        *(v42 - 88) = *v41;
        *(v42 - 72) = v43;
        v45 = *(v41 + 48);
        v44 = *(v41 + 64);
        v46 = *(v41 + 80);
        *(v42 - 56) = *(v41 + 32);
        *(v42 - 8) = v46;
        *(v42 - 24) = v44;
        *(v42 - 40) = v45;
        *v41 = v62;
        *(v41 + 80) = v67;
        *(v41 + 64) = v66;
        *(v41 + 48) = v65;
        *(v41 + 32) = v64;
        *(v41 + 16) = v63;
        v41 -= 88;
        v31 = v42 >= v41;
        v42 += 88;
      }

      while (!v31);
    }
  }

LABEL_43:
  if (v38)
  {
    sub_F98EF8((a1 + 150), v52, &v62);
    sub_F68F20(v53, a1[146] + 96 * (*(a1[246] + 80 * *(*(&v63 + 1) + 8) + 72) & 0x7FFFFFFF) + 8);
  }

  else
  {
    v47 = sub_73F1C(v53);
    v48 = *(v47 + 16);
    v62 = *v47;
    v63 = v48;
    v49 = *(v47 + 32);
    v50 = *(v47 + 48);
    v51 = *(v47 + 64);
    v67 = *(v47 + 80);
    v65 = v50;
    v66 = v51;
    v64 = v49;
    LODWORD(v62) = 0;
    sub_F68F20(v53, &v62);
  }

LABEL_47:
  if (__p)
  {
    v56 = __p;
    operator delete(__p);
  }

LABEL_49:
  if (v19)
  {
    operator delete(v19);
  }
}

void sub_1031650(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
    if (!v13)
    {
LABEL_3:
      sub_4547F0(a10);
      _Unwind_Resume(a1);
    }
  }

  else if (!v13)
  {
    goto LABEL_3;
  }

  operator delete(v13);
  sub_4547F0(a10);
  _Unwind_Resume(a1);
}

void sub_10316C8(uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  sub_F68960(a5);
  if (*a2)
  {
    v7 = *a2;
    sub_10348A4(a3, &v7);
    operator new();
  }
}

void sub_103195C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
    v18 = a15;
    if (!a15)
    {
LABEL_3:
      if (!v16)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v18 = a15;
    if (!a15)
    {
      goto LABEL_3;
    }
  }

  operator delete(v18);
  if (!v16)
  {
LABEL_4:
    sub_4547F0(a9);
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(v16);
  sub_4547F0(a9);
  _Unwind_Resume(a1);
}

uint64_t sub_10319EC(uint64_t *a1, uint64_t *a2)
{
  if (*(*a1 + 24))
  {
    v4 = *a2;
    for (i = a2[1]; i != v4; sub_F692F8(a1[1], i, 0))
    {
      if (!sub_F69D6C(a1[1]))
      {
        v5 = *a1;
        v12 = (((*(i - 16) >> 16) & 0xFFFF0000 | (*(i - 16) << 32) | (2 * ((*(i - 16) & 0xFF000000000000) == 0))) + 4 * *(i - 6)) & 0xFFFFFFFFFFFFFFFELL | (*(i - 4) >> 1) & 1;
        v6 = *(v5 + 24);
        if (!v6)
        {
          goto LABEL_18;
        }

        if ((*(*v6 + 48))(v6, &v12))
        {
          return 1;
        }
      }

      i -= 88;
    }
  }

  else
  {
    v8 = *a2;
    v9 = a2[1];
    while (v8 != v9)
    {
      if (*(*a1 + 24) && !sub_F69D6C(a1[1]))
      {
        v10 = *a1;
        v12 = (((*(v8 + 72) >> 16) & 0xFFFF0000 | (*(v8 + 72) << 32) | (2 * ((*(v8 + 72) & 0xFF000000000000) == 0))) + 4 * *(v8 + 82)) & 0xFFFFFFFFFFFFFFFELL | (*(v8 + 84) >> 1) & 1;
        v11 = *(v10 + 24);
        if (!v11)
        {
LABEL_18:
          sub_2B7420();
        }

        if ((*(*v11 + 48))(v11, &v12))
        {
          return 1;
        }
      }

      sub_F692F8(a1[1], v8, 0);
      v8 += 88;
    }
  }

  return 0;
}

uint64_t sub_1031BD0@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 1992);
  v3 = *(result + 2000);
  *a2 = result + 1968;
  a2[1] = v2;
  a2[2] = result + 1968;
  a2[3] = v3;
  return result;
}

unint64_t sub_1031BFC(void *a1)
{
  v32.n128_u64[0] = -1;
  v32.n128_u64[1] = -1;
  v2 = a1 + 260;
  v3 = a1[260];
  v4 = a1[261];
  if (*v3 > -2)
  {
    v5 = a1[260];
    v18 = a1[263];
    v7 = &v3[v18];
    if (v3 != &v3[v18])
    {
LABEL_5:
      v8 = (a1 + 260);
      goto LABEL_6;
    }
  }

  else
  {
    v5 = a1[260];
    do
    {
      v6 = (__clz(__rbit64(((*v5 >> 7) & ~*v5 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
      v5 = (v5 + v6);
      v4 = (v4 + 12 * v6);
    }

    while (*v5 < -1);
    v7 = &v3[a1[263]];
    if (v5 != v7)
    {
      goto LABEL_5;
    }
  }

  v8 = (a1 + 266);
  v19 = 6;
  v20 = a1 + 260;
  while (1)
  {
    v4 = v20[7];
    v5 = *v8;
    if (**v8 <= -2)
    {
      do
      {
        v21 = (__clz(__rbit64(((*v5 >> 7) & ~*v5 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
        v5 = (v5 + v21);
        v4 = (v4 + 12 * v21);
      }

      while (*v5 < -1);
    }

    v7 = &(*v8)[v20[9]];
    if (v5 != v7)
    {
      break;
    }

    v20 = &v2[v19];
    v19 += 6;
    v8 = &v2[v19];
    if (v19 == 96)
    {
      goto LABEL_26;
    }
  }

LABEL_6:
  v9 = (a1 + 356);
  do
  {
    while (1)
    {
      v10 = a1[1];
      v11 = *v4;
      v4 = (v4 + 12);
      v31.n128_u64[0] = v11;
      v31.n128_u64[0] = sub_10539D0(*v10, &v31);
      v31.n128_u64[1] = v12;
      sub_32114(&v32, &v31);
      LODWORD(v11) = *(v5 + 1);
      v5 = (v5 + 1);
      if (v11 <= -2)
      {
        do
        {
          v13 = (__clz(__rbit64(((*v5 >> 7) & ~*v5 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
          v5 = (v5 + v13);
          v4 = (v4 + 12 * v13);
        }

        while (*v5 < -1);
      }

      if (v5 == v7)
      {
        break;
      }

      if (!v8)
      {
        goto LABEL_26;
      }
    }

    v14 = v8 + 6;
    if (v8 + 6 == v9)
    {
      break;
    }

    while (1)
    {
      v15 = v14;
      v16 = v8[6];
      v4 = v8[7];
      v5 = v16;
      if (*v16 <= -2)
      {
        do
        {
          v17 = (__clz(__rbit64(((*v5 >> 7) & ~*v5 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
          v5 = (v5 + v17);
          v4 = (v4 + 12 * v17);
        }

        while (*v5 < -1);
      }

      v7 = &v8[9][v16];
      if (v5 != v7)
      {
        break;
      }

      v14 = v15 + 6;
      v8 = v15;
      if (v15 + 6 == v9)
      {
        goto LABEL_26;
      }
    }

    v8 = v15;
  }

  while (v15);
LABEL_26:
  if (!sub_329BC(&v32))
  {
    v22 = a1[249];
    for (i = a1[250]; v22 != i; ++v22)
    {
      v24 = a1[1];
      v25 = *(a1[246] + 80 * *v22);
      v31.n128_u32[0] = 1;
      v26 = sub_101F854(*v24, HIDWORD(v25) & 0xFFFF0000FFFFFFFFLL | (WORD1(v25) << 32), (v25 >> 1) & 1, &v31);
      if (v26)
      {
        v27 = HIDWORD(v26) == 0xFFFFFFFF;
      }

      else
      {
        v27 = 1;
      }

      if (!v27)
      {
        v28 = a1[1];
        v33 = v26;
        v31.n128_u64[0] = sub_10539D0(*v28, &v33);
        v31.n128_u64[1] = v29;
        sub_32114(&v32, &v31);
        operator new();
      }
    }
  }

  return v32.n128_u64[0];
}

void sub_1032018(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1032038(uint64_t a1, unint64_t a2)
{
  v5 = a2;
  sub_F98EF8(a1 + 1200, &v5, v6);
  if (!v6[0])
  {
    return 0;
  }

  sub_F98EF8(a1 + 1200, &v5, v6);
  v3 = *(a1 + 1968) + 80 * *(v6[3] + 8);
  if ((*(v3 + 72) & 0x80000000) != 0)
  {
    return 0;
  }

  else
  {
    return *(v3 + 24);
  }
}

uint64_t sub_10320C0(uint64_t a1, unint64_t a2)
{
  v4 = a2;
  sub_F98EF8(a1 + 1200, &v4, v5);
  if (!v5[0])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  sub_F98EF8(a1 + 1200, &v4, v5);
  return *(*(a1 + 1968) + 80 * *(v5[3] + 8) + 8);
}

uint64_t sub_1032140(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v11 = a3;
  v12 = a2;
  sub_F98EF8(a1 + 1200, &v12, v13);
  if (!v13[0])
  {
    return 0;
  }

  sub_F98EF8(a1 + 1200, &v11, v13);
  if (!v13[0])
  {
    return 0;
  }

  v9 = v11;
  v10 = v12;
  sub_F98EF8(a1 + 1200, &v10, v13);
  v4 = *(v14 + 8);
  v5 = *(a1 + 1968);
  sub_F98EF8(a1 + 1200, &v9, v13);
  result = v10;
  if (v10)
  {
    v7 = *(a1 + 1968) + 80 * *(v14 + 8) + 8;
    v8 = v5 + 80 * v4 + 8;
    do
    {
      if (!v9)
      {
        return 0;
      }

      if (result == v9)
      {
        return result;
      }

      if (*v7 == *v8)
      {
        if (*(v7 + 4) >= *(v8 + 4))
        {
          goto LABEL_17;
        }
      }

      else if (*v7 >= *v8)
      {
LABEL_17:
        if ((*(v7 + 64) & 0x80000000) != 0)
        {
          v9 = 0;
        }

        else
        {
          v9 = *(v7 + 16);
          if (v9)
          {
            sub_F98EF8(a1 + 1200, &v9, v13);
            v7 = *(a1 + 1968) + 80 * *(v14 + 8) + 8;
          }
        }

        goto LABEL_8;
      }

      if ((*(v8 + 64) & 0x80000000) != 0)
      {
        return 0;
      }

      v10 = *(v8 + 16);
      if (!v10)
      {
        return 0;
      }

      sub_F98EF8(a1 + 1200, &v10, v13);
      v8 = *(a1 + 1968) + 80 * *(v14 + 8) + 8;
LABEL_8:
      result = v10;
    }

    while (v10);
  }

  return result;
}

uint64_t *sub_10322E4(uint64_t **a1, unint64_t **a2, uint64_t a3, uint64_t **a4)
{
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  if (*a2 != v7)
  {
    v32 = a2;
    v33 = ((v5 - *a1) >> 5);
    do
    {
      v11 = *v6 >> 1;
      v12 = *v6 >> 16;
      v13 = **a4;
      v14 = HIDWORD(*v6);
      LODWORD(v34) = HIDWORD(*v6);
      WORD2(v34) = v12;
      BYTE6(v34) = ((v14 & 0xFFFE0000FFFFFFFFLL | (v12 << 32) & 0xFFFEFFFFFFFFFFFFLL | ((v11 & 1) << 48)) ^ 0x1000000000000) >> 48;
      if (sub_100A97C(v13 + 9960, &v34) == -1)
      {
        if (a3)
        {
          LODWORD(v34) = 0;
          sub_1053B80(a1 + 99, v6, &v34);
          sub_1054E9C(a1 + 99);
        }

        sub_1055328((a1 + 3), v6, &v34);
        v15 = v34;
        if (v36 == 1)
        {
          v16 = (*(v34 + 8) + 32 * v35);
          *v16 = *v6;
          v16[1] = 0;
          v16[2] = 0;
          v16[3] = 0;
        }

        v17 = (*(v15 + 8) + 32 * v35);
        v19 = v17[2];
        v18 = v17[3];
        if (v19 < v18)
        {
          *v19 = v33;
          v10 = v19 + 8;
        }

        else
        {
          v20 = v17[1];
          v21 = v19 - v20;
          v22 = (v19 - v20) >> 3;
          v23 = v22 + 1;
          if ((v22 + 1) >> 61)
          {
            sub_1794();
          }

          v24 = a3;
          v25 = v18 - v20;
          if (v25 >> 2 > v23)
          {
            v23 = v25 >> 2;
          }

          if (v25 >= 0x7FFFFFFFFFFFFFF8)
          {
            v26 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v26 = v23;
          }

          if (v26)
          {
            if (!(v26 >> 61))
            {
              operator new();
            }

            sub_1808();
          }

          v27 = (v19 - v20) >> 3;
          v28 = (8 * v22);
          v29 = (8 * v22 - 8 * v27);
          *v28 = v33;
          v10 = v28 + 1;
          memcpy(v29, v20, v21);
          v17[1] = v29;
          v17[2] = v10;
          v17[3] = 0;
          if (v20)
          {
            operator delete(v20);
          }

          a3 = v24;
        }

        v17[2] = v10;
      }

      v6 += 12;
    }

    while (v6 != v7);
    v5 = a1[1];
    a2 = v32;
  }

  if (v5 >= a1[2])
  {
    result = sub_1055A68(a1, a2);
  }

  else
  {
    *v5 = 0;
    v5[1] = 0;
    v5[2] = 0;
    v30 = a2[1];
    if (v30 != *a2)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v30 - *a2) >> 5) < 0x2AAAAAAAAAAAAABLL)
      {
        operator new();
      }

      sub_1794();
    }

    v5[3] = a2[3];
    result = v5 + 4;
    a1[1] = v5 + 4;
  }

  a1[1] = result;
  return result;
}

void sub_10325C8(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

unint64_t sub_10325E8(uint64_t a1, void *a2, unsigned int a3, uint64_t a4, unsigned int *a5, uint64_t a6)
{
  if (*(a1 + 9954) == 1)
  {
    v10 = HIDWORD(*a2);
    v11 = ~(*a2 << 47);
    WORD2(v22) = WORD1(*a2);
    LODWORD(v22) = v10;
    BYTE6(v22) = BYTE6(v11) & 1;
    if (sub_100A97C(a1 + 9960, &v22) != -1)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  sub_F8EC88(a1 + 8, (HIDWORD(*a2) & 0xFFFE0000FFFFFFFFLL | (WORD1(*a2) << 32) & 0xFFFEFFFFFFFFFFFFLL | (((*a2 >> 1) & 1) << 48)) ^ 0x1000000000000, v21);
  v22 = 0u;
  v23 = 0u;
  __asm { FMOV            V0.2D, #1.0 }

  v24 = _Q0;
  v25 = 0x3FF0000000000000;
  v26 = 1;
  sub_10A8B08(a1 + 4392, &v22, v21, a3, a4, *&_Q0, v17);
  if (v26 != 1)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v19 = sub_F8634C(&v22, &v24, v18);
  return (v23 + v19) | ((DWORD1(v23) + HIDWORD(v19)) << 32);
}

uint64_t sub_1032738(uint64_t a1, unint64_t *a2, __int128 *a3)
{
  v5 = *(a1 + 1044);
  if (v5 == 0x7FFFFFFF)
  {
    return sub_1034330(a1 + 1200, a2, a3);
  }

  v6 = a3;
  v7 = *(a3 + 1);
  sub_F98EF8(a1 + 1200, a2, v15);
  if (!v15[0])
  {
    a3 = v6;
    if (v7 > v5)
    {
      return sub_1034330(a1 + 1200, a2, a3);
    }

    goto LABEL_19;
  }

  sub_F98EF8(a1 + 1200, a2, v15);
  v8 = *(*(a1 + 1968) + 80 * *(v16 + 8) + 8);
  a3 = v6;
  if (*v6 == v8)
  {
    if (*(v6 + 1) >= SHIDWORD(v8))
    {
      return sub_1034330(a1 + 1200, a2, a3);
    }
  }

  else if (*v6 >= v8)
  {
    return sub_1034330(a1 + 1200, a2, a3);
  }

  sub_F98EF8(a1 + 1200, a2, v15);
  v9 = *(*(a1 + 1968) + 80 * *(v16 + 8) + 12);
  v10 = *(a1 + 1044);
  if (v10 >= v9 && v7 > v5)
  {
    v13 = -1;
    a3 = v6;
LABEL_20:
    *(a1 + 1048) += v13;
    return sub_1034330(a1 + 1200, a2, a3);
  }

  v12 = v10 < v9 && v7 <= v5;
  a3 = v6;
  if (v12)
  {
LABEL_19:
    v13 = 1;
    goto LABEL_20;
  }

  return sub_1034330(a1 + 1200, a2, a3);
}

void sub_1032874(uint64_t a1)
{
  sub_DD38(a1 + 792, *(a1 + 824));
  v2 = *(a1 + 824);
  *(*(a1 + 848) + 4 * *v2) = -1;
  v3 = *(a1 + 872);
  *(a1 + 872) = v3 - 1;
  if (v3 != 1)
  {
    v4 = &v2[3 * (v3 - 1)];
    *v2 = *v4;
    *(v2 + 1) = *(v4 + 1);
    v5 = *(a1 + 824);
    *(*(a1 + 848) + 4 * *v5) = 0;
    v6 = *(a1 + 872);
    if (v6 >= 2)
    {
      v7 = 0;
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = v7 + 5;
        if (v10 >= v6)
        {
          v11 = v6;
        }

        else
        {
          v11 = v10;
        }

        if (v10 <= v9)
        {
          break;
        }

        v12 = v8;
        v13 = *&v5[3 * v8 + 1];
        v14 = HIDWORD(v13);
        v15 = &v5[3 * v9 + 1];
        v8 = -1;
        v16 = v13;
        do
        {
          v17 = *v15 < v16;
          if (*v15 == v16)
          {
            v17 = v15[1] < v14;
          }

          if (v17)
          {
            v16 = *v15;
            LODWORD(v14) = v15[1];
            v8 = v9;
          }

          v15 += 3;
          ++v9;
        }

        while (v9 < v11);
        if (v8 >= v6)
        {
          break;
        }

        v18 = &v5[3 * v8];
        v19 = 12 * v12;
        v20 = v5 + v19;
        v21 = *v18;
        *v18 = *v20;
        *v20 = v21;
        v22 = *(v18 + 1);
        *(v18 + 1) = v13;
        *(v20 + 4) = v22;
        v5 = *(a1 + 824);
        v23 = v5[3 * v8];
        v24 = *(a1 + 848);
        v25 = *(v5 + v19);
        LODWORD(v19) = *(v24 + 4 * v23);
        *(v24 + 4 * v23) = *(v24 + 4 * v25);
        *(v24 + 4 * v25) = v19;
        v7 = 4 * v8;
        v9 = (4 * v8) | 1;
        v6 = *(a1 + 872);
      }

      while (v9 < v6);
    }
  }

  *(a1 + 832) -= 12;
}

BOOL sub_10329F4(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 3056);
  v3 = *(a1 + 3072);
  v4 = *(a1 + 3064);
  v5 = *(a1 + 3052);
  if (v2 + v3 - v4 < v5)
  {
    return 0;
  }

  if (v4 == v3)
  {
    *(a1 + 3064) = 0;
    *(a1 + 3072) = 0;
    *(a1 + 3080) = 0;
    result = v2 >= v5;
    if (!v4)
    {
      return result;
    }

    goto LABEL_12;
  }

  do
  {
    v7 = *(a1 + 928) + 24 * *v4;
    v9 = *(v7 + 8);
    v8 = v7 + 8;
    v10 = *a2 >= v9;
    if (*a2 == v9)
    {
      if (a2[1] < *(v8 + 4))
      {
        goto LABEL_10;
      }
    }

    else if (!v10)
    {
LABEL_10:
      operator new();
    }

    ++*(a1 + 3056);
    ++v4;
  }

  while (v4 != v3);
  v4 = *(a1 + 3064);
  v11 = *(a1 + 3056);
  v12 = *(a1 + 3052);
  *(a1 + 3064) = 0;
  *(a1 + 3072) = 0;
  *(a1 + 3080) = 0;
  result = v11 >= v12;
  if (v4)
  {
LABEL_12:
    v13 = result;
    operator delete(v4);
    return v13;
  }

  return result;
}

void sub_1032BDC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1032BF8(uint64_t a1, uint64_t *a2, int *a3, uint64_t a4)
{
  if (*(a1 + 3048) != 1)
  {
    return 4294967294;
  }

  v4 = a4;
  sub_103313C(a1, a2, a3, a4);
  result = sub_103385C(*(a1 + 3032), *a2);
  if (result)
  {
    v36 = v4;
    v9 = *result;
    v10 = *(result + 8);
    if (*result != v10)
    {
      do
      {
        v15 = *(a1 + 1040);
        if (v15 != -1)
        {
          v16 = *(v9 + 16);
          if (v16 != -1 && *(v9 + 20) != 0x7FFFFFFF && *(v9 + 24) != 0x7FFFFFFFFFFFFFFFLL && v16 + *a3 > v15)
          {
            goto LABEL_7;
          }
        }

        v17 = sub_1033A08(a1, v9);
        v18 = *(v9 + 16);
        if (v18 == -1 || (v19 = *(v9 + 20), v19 == 0x7FFFFFFF) || *(v9 + 24) == 0x7FFFFFFFFFFFFFFFLL)
        {
          v11 = *(a1 + 3904);
          v12 = v17 >> 6;
          v13 = 1 << v17;
          v14 = *(v11 + 8 * (v17 >> 6));
          if ((v14 & (1 << v17)) == 0)
          {
            v22 = *(a1 + 24) + 32 * v17;
            v23 = *v22;
            v24 = *(v22 + 8);
            if (*v22 != v24)
            {
              do
              {
                v38[0] = 0;
                sub_1053B80((a1 + 816), v23, v38);
                sub_1054E9C((a1 + 816));
                v23 += 12;
              }

              while (v23 != v24);
              v11 = *(a1 + 3904);
              v14 = *(v11 + 8 * v12);
            }

            *(v11 + 8 * v12) = v14 | v13;
          }

          ++*(a1 + 3936);
          goto LABEL_7;
        }

        if (*(a1 + 3049) == 1 && ((v20 = *(a1 + 1044), v20 == 0x7FFFFFFF) || v19 + a3[1] <= v20))
        {
          v21 = v17;
          if (!*(*(a1 + 3880) + 40 * v17 + 32))
          {
            v25.n128_f64[0] = sub_1033DE0(*(a1 + 3032), *v9, v38);
            v26 = v39;
            if (!v39)
            {
              v29 = *(a1 + 3904);
              v30 = v21 >> 6;
              v31 = 1 << v21;
              v32 = *(v29 + 8 * (v21 >> 6));
              if ((v32 & (1 << v21)) == 0)
              {
                v33 = *(a1 + 24) + 32 * v21;
                v35 = *v33;
                v34 = *(v33 + 8);
                if (*v33 != v34)
                {
                  do
                  {
                    LODWORD(v37) = 0;
                    sub_1053B80((a1 + 816), v35, &v37);
                    sub_1054E9C((a1 + 816));
                    v35 += 12;
                  }

                  while (v35 != v34);
                  v29 = *(a1 + 3904);
                  v31 = 1 << v21;
                  v30 = v21 >> 6;
                  v32 = *(v29 + 8 * (v21 >> 6));
                }

                *(v29 + 8 * v30) = v32 | v31;
              }

              ++*(a1 + 3928);
              goto LABEL_37;
            }

            v27 = *(*(a1 + 3880) + 40 * v21 + 32);
            if (v27 == -1)
            {
              if (v39 == -1)
              {
                goto LABEL_37;
              }
            }

            else if (v39 == -1)
            {
              v28 = *(a1 + 3880) + 40 * v21;
              (off_2674F50[v27])(&v37, v25.n128_f64[0]);
              *(v28 + 32) = -1;
LABEL_37:
              if (v39 != -1)
              {
                (off_2674F50[v39])(&v37, v38);
              }

              if (!v26)
              {
                goto LABEL_7;
              }

              v18 = *(v9 + 16);
              v19 = *(v9 + 20);
              goto LABEL_41;
            }

            v37 = *(a1 + 3880) + 40 * v21;
            (off_2674F68[v39])(&v37, v25);
            goto LABEL_37;
          }
        }

        else
        {
          v21 = v17;
        }

LABEL_41:
        *v38 = (v18 + *a3) | ((v19 + a3[1]) << 32);
        sub_1034078(a1, a2, v38, v21, v36, *(v9 + 8), 0, 1);
LABEL_7:
        v9 += 32;
      }

      while (v9 != v10);
    }

    return *(*(a1 + 3032) + 4364);
  }

  return result;
}

void sub_1032F84(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_4A48(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1032FC0(uint64_t a1, unint64_t *a2, unsigned int *a3, unsigned int *a4, uint64_t a5, unsigned int *a6)
{
  v6 = *a6;
  if (v6)
  {
    v7 = a5;
    do
    {
      v12 = *(a1 + 8);
      v13 = *a2;
      v14 = *a2 >> 16;
      LODWORD(v22) = v6;
      if (sub_101F374(*v12, HIDWORD(v13) & 0xFFFF0000FFFFFFFFLL | (v14 << 32), &v22))
      {
        v15 = *(a1 + 8);
        v16 = *a2;
        v17 = *a2 >> 16;
        v23 = v6;
        v18 = sub_101F854(*v15, HIDWORD(v16) & 0xFFFF0000FFFFFFFFLL | (v17 << 32), (v16 & 2) == 0, &v23);
        v22 = v18;
        if (v18)
        {
          v19 = v18 >= 0xFFFFFFFF00000000;
        }

        else
        {
          v19 = 1;
        }

        if (v19)
        {
          v20 = *(a1 + 20);
          if (v20 != -1 && v6 == v20)
          {
            return 0xFFFFFFFFLL;
          }
        }

        else if (sub_10550EC(a1 + 1064, &v22) == -1 && sub_10550EC(*(a1 + 976) + 800, &v22) == -1)
        {
          if (*(a1 + 3048) == 1 && v6 < *(*(a1 + 3032) + 4360))
          {
            return 0;
          }

          if (*(*a1 + 9953) != 1 || !sub_105F33C(*a1 + 4480, v22, a3, *a4, v7))
          {
            return v6;
          }
        }
      }

      v6 = (v6 - 1);
    }

    while (v6);
  }

  return v6;
}

void sub_103313C(uint64_t *a1, uint64_t *a2, int *a3, int a4)
{
  v54 = a2;
  if (*(a1 + 3048) == 1)
  {
    sub_10345B8(a1, a2);
    a2 = v54;
  }

  sub_1056F4C(a1[122] + 24, a2, &v56);
  if (v56)
  {
    sub_1056F4C(a1[122] + 24, v54, &v56);
    v5 = *(*(&v57 + 1) + 8);
    v50 = *(*(&v57 + 1) + 16);
    v6 = v54;
    if (v5 != v50)
    {
      __asm { FMOV            V0.2D, #1.0 }

      v53 = _Q0;
      while (1)
      {
        v52 = v5;
        v11 = (*a1[122] + 32 * *v5);
        v12 = -1431655765 * ((v11[1] - *v11) >> 5);
        if (v12)
        {
          break;
        }

LABEL_6:
        v5 = v52 + 1;
        if (v52 + 1 == v50)
        {
          return;
        }
      }

      v13 = 0;
      while (1)
      {
        v14 = *v11 + 96 * v13;
        v15 = *v14;
        if (*v14 != *v6)
        {
          goto LABEL_10;
        }

        v16 = *a1;
        v17 = *(v14 + 8);
        v18 = a1[371];
        v19 = (v15 << 47) & 0x1000000000000;
        v20 = v15 << 16;
        if (*(*a1 + 9954) == 1)
        {
          v21 = 0;
          v22 = v15 & 0xFFFFFFFFFFFF0000;
          v23 = (v19 ^ 0x1000000000000uLL) >> 48;
          if (!v23)
          {
            ++v22;
          }

          v24 = (0x2127599BF4325C37 * (v22 ^ (v15 >> 23))) ^ ((0x2127599BF4325C37 * (v22 ^ (v15 >> 23))) >> 47);
          while (2)
          {
            v26 = v24 & (*(v16 + 10016) - 1);
            v27 = *(*(v16 + 10032) + 8 * v26);
            if (*(v16 + 10024) == v27 && *(*a1 + 10028) == WORD2(v27) && *(*a1 + 10030) == BYTE6(v27))
            {
              goto LABEL_35;
            }

            if (*(v16 + 10000) && *(v16 + 9992) == v27 && *(*a1 + 9996) == WORD2(v27))
            {
              if (*(*a1 + 9998) == BYTE6(v27) || HIDWORD(v15) != v27)
              {
                goto LABEL_20;
              }
            }

            else if (HIDWORD(v15) != v27)
            {
LABEL_20:
              v24 = ++v21 + v26;
              continue;
            }

            break;
          }

          if (WORD2(v20) == WORD2(v27) && v23 == BYTE6(v27))
          {
            if (v26 != -1)
            {
              goto LABEL_10;
            }

            goto LABEL_35;
          }

          goto LABEL_20;
        }

LABEL_35:
        sub_F8EC88(v16 + 8, (v20 & 0xFFFF00000000 | HIDWORD(v15) | v19) ^ 0x1000000000000, v55);
        v56 = 0u;
        v57 = 0u;
        v58 = v53;
        v59 = 0x3FF0000000000000;
        v60 = 1;
        sub_10A8B08(v16 + 4392, &v56, v55, v17, v18, *&v53, v29);
        if ((v60 & 1) == 0)
        {
          goto LABEL_9;
        }

        LODWORD(v30) = v56;
        v31 = *&v58 * v30;
        if (v31 >= 0.0)
        {
          v6 = v54;
          if (v31 >= 4.50359963e15)
          {
            goto LABEL_42;
          }

          v32 = (v31 + v31) + 1;
        }

        else
        {
          v6 = v54;
          if (v31 <= -4.50359963e15)
          {
            goto LABEL_42;
          }

          v32 = (v31 + v31) - 1 + (((v31 + v31) - 1) >> 63);
        }

        v31 = (v32 >> 1);
LABEL_42:
        v33 = *(&v58 + 1) * SDWORD1(v56);
        if (v33 >= 0.0)
        {
          if (v33 >= 4.50359963e15)
          {
            goto LABEL_48;
          }

          v34 = (v33 + v33) + 1;
        }

        else
        {
          if (v33 <= -4.50359963e15)
          {
            goto LABEL_48;
          }

          v34 = (v33 + v33) - 1 + (((v33 + v33) - 1) >> 63);
        }

        v33 = (v34 >> 1);
LABEL_48:
        v35 = v57 + v31;
        v36 = DWORD1(v57) + v33;
        if (v35 == -1 || v36 == 0x7FFFFFFF)
        {
          goto LABEL_10;
        }

        v39 = *a3;
        v38 = a3[1];
        v40 = *a1;
        v41 = a1[371];
        v56 = 0u;
        v57 = 0u;
        v58 = v53;
        v59 = 0x3FF0000000000000;
        v60 = 1;
        sub_10A5C78((v40 + 4392), &v56, v14, v14 + 8, v41);
        if (v60)
        {
          LODWORD(v42) = v56;
          v43 = *&v58 * v42;
          if (v43 >= 0.0)
          {
            v6 = v54;
            if (v43 < 4.50359963e15)
            {
              v44 = (v43 + v43) + 1;
LABEL_58:
              v43 = (v44 >> 1);
            }
          }

          else
          {
            v6 = v54;
            if (v43 > -4.50359963e15)
            {
              v44 = (v43 + v43) - 1 + (((v43 + v43) - 1) >> 63);
              goto LABEL_58;
            }
          }

          v45 = *(&v58 + 1) * SDWORD1(v56);
          if (v45 >= 0.0)
          {
            if (v45 < 4.50359963e15)
            {
              v46 = (v45 + v45) + 1;
LABEL_64:
              v45 = (v46 >> 1);
            }
          }

          else if (v45 > -4.50359963e15)
          {
            v46 = (v45 + v45) - 1 + (((v45 + v45) - 1) >> 63);
            goto LABEL_64;
          }

          v47 = v57 + v43;
          if (v47 == -1)
          {
            goto LABEL_10;
          }

          v48 = DWORD1(v57) + v45;
          if (v48 == 0x7FFFFFFF)
          {
            goto LABEL_10;
          }

          *&v56 = (v35 + v39 + v47) | ((v36 + v38 + v48) << 32);
          sub_1034078(a1, v6, &v56, *v52, a4, v13, 0, 0);
        }

LABEL_9:
        v6 = v54;
LABEL_10:
        if (++v13 == v12)
        {
          goto LABEL_6;
        }
      }
    }
  }
}

unint64_t sub_10336EC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5)
{
  if (*(a1 + 9954) != 1 || (v9 = a4, sub_1007A48(a1 + 10040, a2) == -1) && (v10 = *(a2 + 32), v11 = (v10 >> 16) & 0xFFFF0000 | (v10 << 32), v12 = (v10 & 0xFF000000000000) == 0, v13 = (v11 | (2 * v12)) + 4 * *(a2 + 80), BYTE6(v26) = !v12, WORD2(v26) = WORD1(v13), LODWORD(v26) = HIDWORD(v13), v14 = sub_100A97C(a1 + 9960, &v26), a4 = v9, v14 == -1))
  {
    v17 = *a4;
    v26 = 0u;
    v27 = 0u;
    __asm { FMOV            V0.2D, #1.0 }

    v28 = _Q0;
    v29 = 0x3FF0000000000000;
    v30 = 1;
    sub_10AB718(a1 + 4392, &v26, a2, 0x3B9ACA00u, a3, v17, a5);
    if (v30 == 1)
    {
      v24 = sub_F8634C(&v26, &v28, v23);
      v16 = (v27 + v24) | ((DWORD1(v27) + HIDWORD(v24)) << 32);
    }

    else
    {
      v16 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v15 = v16 & 0xFFFFFFFF00000000;
    v16 = v16;
  }

  else
  {
    v15 = 0x7FFFFFFF00000000;
    v16 = 0xFFFFFFFFLL;
  }

  return v15 | v16;
}

void *sub_103385C(uint64_t a1, unint64_t a2)
{
  LODWORD(v26[0]) = *(a1 + 4360);
  v28 = sub_101F854(*(a1 + 24), HIDWORD(a2) & 0xFFFF0000FFFFFFFFLL | (WORD1(a2) << 32), (a2 & 2) == 0, v26);
  v4 = HIDWORD(v28);
  if (v28)
  {
    v5 = v4 == 0xFFFFFFFF;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  v26[0] = 0;
  v26[1] = 0;
  v6 = sub_1055EF8(*(a1 + 32), v28, 1);
  if (!v6)
  {
    return 0;
  }

  v7 = &v6[-*v6];
  if (*v7 < 5u)
  {
    return 0;
  }

  v8 = *(v7 + 2);
  if (!v8)
  {
    return 0;
  }

  v9 = &v6[v8 + *&v6[v8]];
  if (*v9 <= v4)
  {
    return 0;
  }

  v10 = &v9[4 * v4 + 4 + *&v9[4 * v4 + 4]];
  v11 = &v10[-*v10];
  if (*v11 < 9u)
  {
    return 0;
  }

  v12 = *(v11 + 4);
  if (!v12)
  {
    return 0;
  }

  v13 = &v10[v12 + *&v10[v12]];
  v16 = *v13;
  v14 = v13 + 4;
  v15 = v16;
  v17 = &v14[v16];
  v18 = v14;
  if (v16)
  {
    v18 = v14;
    do
    {
      v19 = (v18 + ((4 * v15) & 0x7FFFFFFF8));
      v21 = *v19;
      v20 = v19 + 1;
      v22 = v15 >> 1;
      v15 += ~(v15 >> 1);
      if (v21 >= a2)
      {
        v15 = v22;
      }

      else
      {
        v18 = v20;
      }
    }

    while (v15);
  }

  if (v18 == v17)
  {
    return 0;
  }

  if (*v18 != a2)
  {
    return 0;
  }

  v27 = (v18 - v14) >> 3;
  if (v27 == 0xFFFF)
  {
    return 0;
  }

  v23 = *(a1 + 8);
  v24 = (a1 + 4440);
  sub_1055C88(v23, &v28, &v27, v24);
  return v24;
}

uint64_t sub_1033A08(uint64_t *a1, uint64_t **a2)
{
  sub_1034760((a1 + 386), a2, v43);
  if (v43[0])
  {
    return v43[3][1];
  }

  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[379];
  v44 = *a2;
  sub_105733C(*(v7 + 8), &v44, (v7 + 4392));
  sub_10153E4(v7 + 40, (v7 + 4392), *(v7 + 4368), 0, &__p);
  v44 = a1;
  sub_10322E4(a1 + 3, &__p, 0, &v44);
  v4 = (v6 - v5) >> 5;
  if (__p)
  {
    v41 = __p;
    operator delete(__p);
  }

  sub_105772C((a1 + 386), a2, &__p);
  v8 = __p;
  if (v42 == 1)
  {
    v9 = (*(__p + 1) + 16 * v41);
    *v9 = *a2;
    v9[1] = -1;
  }

  *(v8[1] + 16 * v41 + 8) = v4;
  v10 = a1[483];
  v11 = a1[484];
  if (v10 >= v11)
  {
    v13 = a1[482];
    v14 = v10 - v13;
    v15 = (v10 - v13) >> 3;
    v16 = v15 + 1;
    if ((v15 + 1) >> 61)
    {
      sub_1794();
    }

    v17 = v11 - v13;
    if (v17 >> 2 > v16)
    {
      v16 = v17 >> 2;
    }

    if (v17 >= 0x7FFFFFFFFFFFFFF8)
    {
      v18 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v18 = v16;
    }

    if (v18)
    {
      if (!(v18 >> 61))
      {
        operator new();
      }

      goto LABEL_49;
    }

    v19 = v15;
    v20 = (8 * v15);
    v21 = *a2;
    v22 = &v20[-v19];
    *v20 = v21;
    v12 = (v20 + 1);
    memcpy(v22, v13, v14);
    a1[482] = v22;
    a1[483] = v12;
    a1[484] = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v10 = *a2;
    v12 = (v10 + 8);
  }

  a1[483] = v12;
  v23 = a1[489];
  v24 = a1[490];
  if (v23 == v24 << 6)
  {
    if ((v23 + 1) < 0)
    {
      sub_1794();
    }

    v25 = v24 << 7;
    if (v25 <= (v23 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v25 = (v23 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v23 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v26 = v25;
    }

    else
    {
      v26 = 0x7FFFFFFFFFFFFFFFLL;
    }

    sub_3D41C((a1 + 488), v26);
    v23 = a1[489];
  }

  a1[489] = v23 + 1;
  *(a1[488] + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v23);
  v27 = a1[486];
  if (v27 >= a1[487])
  {
    v28 = sub_1052CA0((a1 + 485));
  }

  else
  {
    *(v27 + 32) = 0;
    *v27 = 0u;
    *(v27 + 16) = 0u;
    v28 = v27 + 40;
  }

  a1[486] = v28;
  v29 = a1[117];
  v30 = a1[116];
  v31 = 0xAAAAAAAAAAAAAAABLL * ((v29 - v30) >> 3);
  if (v4 >= v31)
  {
    v32 = a1[118];
    if (v29 < v32)
    {
      *v29 = 0;
      *(v29 + 8) = xmmword_2297C80;
      v33 = v29 + 24;
LABEL_45:
      a1[117] = v33;
      return v4;
    }

    v34 = v31 + 1;
    if (v31 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1794();
    }

    v35 = 0xAAAAAAAAAAAAAAABLL * ((v32 - v30) >> 3);
    if (2 * v35 > v34)
    {
      v34 = 2 * v35;
    }

    if (v35 >= 0x555555555555555)
    {
      v36 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v36 = v34;
    }

    if (!v36)
    {
      v37 = 8 * ((v29 - v30) >> 3);
      *v37 = 0;
      *(v37 + 8) = xmmword_2297C80;
      v33 = v37 + 24;
      v38 = (v37 - (v29 - v30));
      memcpy(v38, v30, v29 - v30);
      a1[116] = v38;
      a1[117] = v33;
      a1[118] = 0;
      if (v30)
      {
        operator delete(v30);
      }

      goto LABEL_45;
    }

    if (v36 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

LABEL_49:
    sub_1808();
  }

  return v4;
}

void sub_1033DC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_1033DE0@<D0>(uint64_t a1@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 4385) != 1)
  {
    goto LABEL_17;
  }

  v4 = *(a1 + 8);
  if (*(v4 + 3880))
  {
    goto LABEL_3;
  }

  v16 = a1;
  v17 = a2;
  v18 = sub_3BF72C(v4 + 8, a2, 1);
  v5 = v18;
  if (v18)
  {
    v19 = &v18[-*v18];
    a1 = v16;
    if (*v19 < 7u)
    {
      v5 = 0;
      a2 = v17;
    }

    else
    {
      a2 = v17;
      if (!*(v19 + 3) || (v20 = (v5 + *(v19 + 3) + *(v5 + *(v19 + 3))), *v20 <= HIDWORD(v17)))
      {
LABEL_3:
        v5 = 0;
        goto LABEL_4;
      }

      v5 = (&v20[(v17 >> 32) + 1] + v20[(v17 >> 32) + 1]);
    }
  }

  else
  {
    a2 = v17;
    a1 = v16;
  }

LABEL_4:
  v6 = (v5 - *v5);
  if (*v6 >= 9u && (v7 = v6[4]) != 0)
  {
    v8 = (v5 + v7 + *(v5 + v7));
    v9 = (v8 - *v8);
    v10 = *v9;
    if (v10 < 5)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v8 = 0;
    v9 = (&loc_1120530 + 1);
    v10 = *(&loc_1120530 + 1);
    if (*(&loc_1120530 + 1) < 5u)
    {
      goto LABEL_17;
    }
  }

  v11 = v9[2];
  if (v9[2])
  {
    v11 += v8 + *(v8 + v11);
  }

  if (v10 >= 9)
  {
    v12 = v9[4];
    if (v12 && v11 != 0)
    {
      v21 = (v8 + v12);
      v22 = *v21;
      *a3 = v11;
      *(a3 + 8) = v21 + v22;
      *&result = 0xFFFFFFFFLL;
      *(a3 + 16) = 0xFFFFFFFFLL;
      *(a3 + 24) = -1;
      *(a3 + 32) = 2;
      return result;
    }
  }

LABEL_17:
  sub_1056338(a1, a2, &v24);
  if (!v24)
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    v15 = v25;
    if (!v25)
    {
      return result;
    }

    goto LABEL_23;
  }

  v14 = v25;
  *a3 = v24;
  *(a3 + 8) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a3 + 32) = 1;
  v15 = v25;
  if (v25)
  {
LABEL_23:
    if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }
  }

  return result;
}

uint64_t sub_103401C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 != -1)
  {
    (off_2674F50[v2])(&v4, a1);
  }

  *(a1 + 32) = -1;
  return a1;
}

void sub_1034078(uint64_t a1, void *a2, unsigned int *a3, uint64_t a4, int a5, int a6, int a7, int a8)
{
  v41 = a4;
  v8 = *(a1 + 1040);
  v9 = *a3;
  if (v8 != -1 && v9 > v8)
  {
    return;
  }

  v12 = *(a1 + 928) + 24 * a4;
  if (*v12)
  {
    v13 = *(v12 + 8);
    v14 = v9 >= v13;
    if (v9 == v13)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

  v39 = a3;
  v15 = a2;
  v16 = a6;
  v17 = a8;
  v18 = a5;
  v19 = a7;
  sub_2512DC(a1 + 952, &v41);
  a2 = v15;
  a7 = v19;
  a5 = v18;
  a8 = v17;
  a6 = v16;
  if (*(a1 + 3048) == 1)
  {
    v20 = *(a1 + 3072);
    v21 = *(a1 + 3080);
    if (v20 >= v21)
    {
      v23 = *(a1 + 3064);
      v24 = v20 - v23;
      v25 = (v20 - v23) >> 2;
      v26 = v25 + 1;
      if ((v25 + 1) >> 62)
      {
        sub_1794();
      }

      v27 = v21 - v23;
      if (v27 >> 1 > v26)
      {
        v26 = v27 >> 1;
      }

      if (v27 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v28 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v28 = v26;
      }

      if (v28)
      {
        if (!(v28 >> 62))
        {
          operator new();
        }

        sub_1808();
      }

      v29 = v25;
      v30 = (4 * v25);
      v31 = &v30[-v29];
      *v30 = v41;
      v22 = v30 + 1;
      memcpy(v31, v23, v24);
      *(a1 + 3064) = v31;
      *(a1 + 3072) = v22;
      *(a1 + 3080) = 0;
      if (v23)
      {
        operator delete(v23);
      }

      a6 = v16;
      a8 = v17;
      a5 = v18;
      a7 = v19;
      a2 = v15;
    }

    else
    {
      *v20 = v41;
      v22 = v20 + 4;
    }

    *(a1 + 3072) = v22;
  }

  a3 = v39;
  if (*v12)
  {
    v32 = *(v12 + 8);
    v14 = *v39 >= v32;
    if (*v39 == v32)
    {
LABEL_7:
      if (a3[1] >= *(v12 + 12))
      {
        return;
      }

      goto LABEL_28;
    }

LABEL_27:
    if (v14)
    {
      return;
    }
  }

LABEL_28:
  *(v12 + 8) = *a3;
  *v12 = *a2;
  if (a7)
  {
    v33 = 0x40000000;
  }

  else
  {
    v33 = 0;
  }

  v34 = v33 & 0xC0000000 | a5 & 0x3FFFFFFF;
  if (a8)
  {
    v35 = 0x80000000;
  }

  else
  {
    v35 = 0;
  }

  *(v12 + 16) = a6;
  *(v12 + 20) = v34 | v35;
  if ((*(a1 + 3048) & 1) == 0)
  {
    v40 = *a3;
    v36 = *(a1 + 1008);
    if (v41 >= ((*(a1 + 1016) - v36) >> 2) || *(v36 + 4 * v41) == -1)
    {
      sub_1057090((a1 + 984), v41, &v40);
    }

    else
    {
      sub_1057208((a1 + 984), v41, &v40);
    }

    if ((*(*(a1 + 976) + 8) - **(a1 + 976)) >> 5 == (*(a1 + 960) - *(a1 + 952)) >> 3)
    {
      v37 = *(a1 + 1040);
      v38 = *(*(a1 + 984) + 4);
      if (v37 == -1 || v38 < v37)
      {
        *(a1 + 1040) = v38;
      }
    }
  }
}

uint64_t sub_1034330(uint64_t a1, unint64_t *a2, __int128 *a3)
{
  sub_40D8D4(a1, a2, &v34);
  if (v34)
  {
    v6 = v35;
    v7 = *(a1 + 768) + 80 * *(v35 + 8);
    v9 = *(v7 + 8);
    v8 = v7 + 8;
    v10 = *a3 >= v9;
    if (*a3 == v9)
    {
      if (*(a3 + 1) >= *(v8 + 4))
      {
        return 0;
      }
    }

    else if (v10)
    {
      return 0;
    }

    ++*(a1 + 816);
    *v8 = *a3;
    v21 = a3[1];
    v22 = a3[2];
    v23 = a3[3];
    *(v8 + 64) = *(a3 + 16);
    *(v8 + 32) = v22;
    *(v8 + 48) = v23;
    *(v8 + 16) = v21;
    v24 = *(v6 + 8);
    v25 = a1 + 824;
  }

  else
  {
    ++*(a1 + 816);
    v12 = -858993459 * ((*(a1 + 776) - *(a1 + 768)) >> 4);
    sub_40D9F8(a1, a2, &v36);
    v13 = v37;
    v14 = *(v36 + 8);
    if (v38 == 1)
    {
      *(v14 + 16 * v37) = *a2;
    }

    *(v14 + 16 * v13 + 8) = v12;
    v15 = *(a1 + 776);
    v16 = *(a1 + 784);
    if (v15 >= v16)
    {
      v26 = *(a1 + 768);
      v27 = 0xCCCCCCCCCCCCCCCDLL * ((v15 - v26) >> 4) + 1;
      if (v27 > 0x333333333333333)
      {
        sub_1794();
      }

      v28 = 0xCCCCCCCCCCCCCCCDLL * ((v16 - v26) >> 4);
      if (2 * v28 > v27)
      {
        v27 = 2 * v28;
      }

      if (v28 >= 0x199999999999999)
      {
        v29 = 0x333333333333333;
      }

      else
      {
        v29 = v27;
      }

      if (v29)
      {
        if (v29 <= 0x333333333333333)
        {
          operator new();
        }

        sub_1808();
      }

      v30 = *a3;
      v31 = 16 * ((v15 - v26) >> 4);
      *(v31 + 24) = a3[1];
      v32 = a3[3];
      *(v31 + 40) = a3[2];
      *(v31 + 56) = v32;
      *v31 = *a2;
      *(v31 + 72) = *(a3 + 8);
      *(v31 + 8) = v30;
      v20 = v31 + 80;
      v33 = (v31 - (v15 - v26));
      memcpy(v33, v26, v15 - v26);
      *(a1 + 768) = v33;
      *(a1 + 776) = v20;
      *(a1 + 784) = 0;
      if (v26)
      {
        operator delete(v26);
      }
    }

    else
    {
      *v15 = *a2;
      *(v15 + 8) = *a3;
      v17 = a3[1];
      v18 = a3[2];
      v19 = a3[3];
      *(v15 + 72) = *(a3 + 8);
      *(v15 + 56) = v19;
      *(v15 + 40) = v18;
      *(v15 + 24) = v17;
      v20 = v15 + 80;
    }

    *(a1 + 776) = v20;
    v25 = a1 + 824;
    v24 = v12;
  }

  sub_1056B88(v25, v24, a3);
  return 1;
}

void sub_10345B8(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[379];
  v5 = *a2;
  sub_1057E78(v2[1], &v5, v2 + 552);
  v3 = v2[552];
  v4 = v2[553];
  if (v4 != v3)
  {
    if (((v4 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }
}

uint64_t sub_1034680(uint64_t a1, unint64_t *a2, int a3, unsigned int *a4, unsigned int *a5, uint64_t a6)
{
  v6 = a6;
  v12 = *a2;
  v13 = *a2 >> 16;
  v19 = a3;
  v14 = sub_101F854(*(a1 + 4464), HIDWORD(v12) & 0xFFFF0000FFFFFFFFLL | (v13 << 32), (v12 & 2) == 0, &v19);
  if (sub_105F33C(a1 + 4480, v14, a4, *a5, v6))
  {
    return 1;
  }

  v16 = *a2;
  v17 = *a2 >> 16;
  v20 = a3;
  v18 = sub_101F854(*(a1 + 4464), HIDWORD(v16) & 0xFFFF0000FFFFFFFFLL | (v17 << 32), (v16 >> 1) & 1, &v20);
  return sub_105F33C(a1 + 4480, v18, a4, *a5, v6);
}

uint64_t sub_1034760@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t **a3@<X8>)
{
  v3 = 0;
  v4 = *a2;
  v5 = __ROR8__(*a2, 32);
  v6 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) >> 33));
  v7 = (v6 ^ ~(v6 >> 33)) + ((v6 ^ (v6 >> 33)) << 21);
  v8 = 21 * ((265 * (v7 ^ (v7 >> 24))) ^ ((265 * (v7 ^ (v7 >> 24))) >> 14));
  v9 = 2147483649u * (v8 ^ (v8 >> 28));
  v10 = (result + 48 * (((((v8 ^ (v8 >> 28)) >> 8) ^ ((-2147483647 * (v8 ^ (v8 >> 28))) >> 16)) ^ ((-2147483647 * (v8 ^ (v8 >> 28))) >> 24)) & 0xF));
  v11 = v9 >> 7;
  v12 = v10[3];
  v13 = *v10;
  v14 = 0x101010101010101 * (v9 & 0x7F);
  v15 = HIDWORD(*a2);
  while (1)
  {
    v16 = v11 & v12;
    v17 = *(v13 + v16);
    v18 = ((v17 ^ v14) - 0x101010101010101) & ~(v17 ^ v14) & 0x8080808080808080;
    if (v18)
    {
      break;
    }

LABEL_8:
    if ((v17 & (~v17 << 6) & 0x8080808080808080) != 0)
    {
      goto LABEL_11;
    }

    v3 += 8;
    v11 = v3 + v16;
  }

  while (1)
  {
    v19 = (v16 + (__clz(__rbit64(v18)) >> 3)) & v12;
    v20 = v10[1] + 16 * v19;
    if (*v20 == v4 && *(v20 + 4) == v15)
    {
      break;
    }

    v18 &= v18 - 1;
    if (!v18)
    {
      goto LABEL_8;
    }
  }

  if (v12 == v19)
  {
LABEL_11:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    a3[4] = 0;
    return result;
  }

  *a3 = v10;
  a3[1] = (result + 768);
  a3[2] = (v13 + v19);
  a3[3] = v20;
  a3[4] = (v13 + v12);
  return result;
}

unint64_t sub_10348A4(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 32);
  if (v2 == 2)
  {
    return sub_105811C(a1, a2);
  }

  if (v2 != 1)
  {
    sub_5AF20();
  }

  v3 = *a1;
  v15 = *a2;
  v4 = sub_1058270(v3, &v15);
  v6 = v3[3];
  v5 = v3[4];
  v7 = (v6 + 8 * v5);
  if (v4 == v7 || *v4 != v15)
  {
    v8 = v3[6];
    v9 = v8 + 16 * v5;
    v4 = v7;
  }

  else
  {
    v8 = v3[6];
    v9 = v8 + 2 * (v4 - v6);
  }

  v11 = v8 + 16 * v5;
  if (v4 == v7 && v9 == v11)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v14 = sub_2D390(exception, "Key not found.", 0xEuLL);
  }

  return *v9;
}

void sub_1034990(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = a2;
  *(a1 + 8) = a2 + 4464;
  *(a1 + 16) = -1;
  sub_102DFD8(a1 + 24, a2);
  *(a1 + 944) = 0;
  *(a1 + 928) = 0u;
  operator new();
}

void sub_1034C68(_Unwind_Exception *a1)
{
  sub_360988(v1 + 2080);
  sub_584EC4((v1 + 1200));
  v5 = *(v1 + 1168);
  if (v5)
  {
    *(v1 + 1176) = v5;
    operator delete(v5);
  }

  sub_102E120((v1 + 1056));
  sub_21DB4B4(v1 + 984);
  v6 = *v3;
  if (*v3)
  {
    *(v1 + 960) = v6;
    operator delete(v6);
    v7 = *v2;
    if (!*v2)
    {
LABEL_5:
      sub_C65AF0((v1 + 24));
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v7 = *v2;
    if (!*v2)
    {
      goto LABEL_5;
    }
  }

  *(v1 + 936) = v7;
  operator delete(v7);
  sub_C65AF0((v1 + 24));
  _Unwind_Resume(a1);
}

double sub_1034D1C(uint64_t a1)
{
  v2 = a1 + 2080;
  v3 = 768;
  do
  {
    if (*(v2 + 16))
    {
      v4 = *(v2 + 24);
      if (v4 >= 0x80)
      {
        operator delete(*v2);
        *(v2 + 40) = 0;
        *v2 = &unk_2290750;
        *(v2 + 8) = 0;
        *(v2 + 16) = 0;
        *(v2 + 24) = 0;
      }

      else if (v4)
      {
        *(v2 + 16) = 0;
        memset(*v2, 128, v4 + 8);
        *(*v2 + v4) = -1;
        v5 = *(v2 + 24);
        if (v5 == 7)
        {
          v6 = 6;
        }

        else
        {
          v6 = v5 - (v5 >> 3);
        }

        *(v2 + 40) = v6 - *(v2 + 16);
      }
    }

    v2 += 48;
    v3 -= 48;
  }

  while (v3);
  v7 = a1 + 1200;
  *(a1 + 2056) = *(a1 + 2048);
  *(a1 + 2032) = *(a1 + 2024);
  *(a1 + 2072) = 0;
  *(a1 + 1976) = *(a1 + 1968);
  v8 = 768;
  do
  {
    if (*(v7 + 16))
    {
      v9 = *(v7 + 24);
      if (v9 >= 0x80)
      {
        operator delete(*v7);
        *(v7 + 40) = 0;
        *v7 = &unk_2290750;
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        *(v7 + 24) = 0;
      }

      else if (v9)
      {
        *(v7 + 16) = 0;
        memset(*v7, 128, v9 + 8);
        *(*v7 + v9) = -1;
        v10 = *(v7 + 24);
        if (v10 == 7)
        {
          v11 = 6;
        }

        else
        {
          v11 = v10 - (v10 >> 3);
        }

        *(v7 + 40) = v11 - *(v7 + 16);
      }
    }

    v7 += 48;
    v8 -= 48;
  }

  while (v8);
  *(a1 + 2000) = *(a1 + 1992);
  *(a1 + 2016) = 0;
  *(a1 + 1016) = *(a1 + 1008);
  *(a1 + 992) = *(a1 + 984);
  *(a1 + 1032) = 0;
  *(a1 + 1040) = -NAN;
  *(a1 + 20) = -1;
  *(a1 + 1048) = 0;
  sub_1053AC0(a1 + 1064);
  sub_1053AC0(a1 + 2856);
  *(a1 + 1176) = *(a1 + 1168);
  v12 = *(a1 + 952);
  v13 = *(a1 + 960);
  if (v12 != v13)
  {
    do
    {
      v14 = *v12++;
      v15 = *(a1 + 928) + 24 * v14;
      *v15 = 0;
      *(v15 + 8) = xmmword_2297C80;
    }

    while (v12 != v13);
    v12 = *(a1 + 952);
  }

  *(a1 + 960) = v12;
  v17 = *(a1 + 24);
  v16 = *(a1 + 32);
  if (v16 != v17)
  {
    v18 = *(a1 + 32);
    do
    {
      v20 = *(v18 - 32);
      v18 -= 32;
      v19 = v20;
      if (v20)
      {
        *(v16 - 24) = v19;
        operator delete(v19);
      }

      v16 = v18;
    }

    while (v18 != v17);
  }

  *(a1 + 32) = v17;
  sub_3068EC(a1 + 48);
  sub_1053AC0(a1 + 824);
  *(a1 + 2960) = 0x7FFFFFFF;
  *(a1 + 3048) = 0;
  v21 = a1 + 3088;
  v22 = 768;
  do
  {
    if (*(v21 + 16))
    {
      v23 = *(v21 + 24);
      if (v23 >= 0x80)
      {
        operator delete(*v21);
        *(v21 + 40) = 0;
        *v21 = &unk_2290750;
        *(v21 + 8) = 0;
        *(v21 + 16) = 0;
        *(v21 + 24) = 0;
      }

      else if (v23)
      {
        *(v21 + 16) = 0;
        memset(*v21, 128, v23 + 8);
        *(*v21 + v23) = -1;
        v24 = *(v21 + 24);
        if (v24 == 7)
        {
          v25 = 6;
        }

        else
        {
          v25 = v24 - (v24 >> 3);
        }

        *(v21 + 40) = v25 - *(v21 + 16);
      }
    }

    v21 += 48;
    v22 -= 48;
  }

  while (v22);
  *(a1 + 3864) = *(a1 + 3856);
  v26 = *(a1 + 3888);
  v27 = *(a1 + 3880);
  if (v26 != v27)
  {
    do
    {
      v28 = v26 - 40;
      v29 = *(v26 - 8);
      if (v29 != -1)
      {
        (off_2674F50[v29])(&v31, v26 - 40);
      }

      *(v26 - 8) = -1;
      v26 -= 40;
    }

    while (v28 != v27);
  }

  *(a1 + 3888) = v27;
  *(a1 + 3912) = 0;
  result = 0.0;
  *(a1 + 3928) = 0u;
  return result;
}

void sub_1035064(void **a1)
{
  v64 = 0;
  __p = 0;
  v62 = 0;
  v63 = 0;
  v2 = *a1;
  v3 = *a1 + 1024;
  v4 = (*a1)[1252];
  if (v4)
  {
    v5 = 8 * v4;
    v6 = (*a1)[1254];
    while (1)
    {
      v7 = BYTE6(*v6);
      v8 = HIDWORD(*v6);
      if ((*(*&v2 + 10024) != *v6 || *(*a1 + 5014) != v8 || *(*a1 + 10030) != v7) && (!*(*&v2 + 10000) || *(*&v2 + 9992) != *v6 || *(*a1 + 4998) != v8 || *(*a1 + 9998) != v7))
      {
        break;
      }

      ++v6;
      v5 -= 8;
      if (!v5)
      {
        goto LABEL_66;
      }
    }
  }

  else
  {
    v6 = (*a1)[1254];
  }

  v9 = (*a1)[1254] + 8 * v4;
  if (v6 == v9)
  {
LABEL_66:
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v58 = (a1 + 370);
    __asm { FMOV            V0.2D, #1.0 }

    v57 = _Q0;
    do
    {
      v60 = (*v6 >> 16) & 0xFFFF0000 | (*v6 << 32) | (2 * ((*v6 & 0xFF000000000000) == 0));
      if (v64 && ((v16 = *a1, v17 = a1[371], sub_F8EC88((*a1 + 1), *v6, &v65), v68 = 0u, v69 = 0u, v70 = v57, v71 = 0x3FF0000000000000, v72 = 1, sub_10A8B08(*&v16 + 4392, &v68, &v65, 0x3B9ACA00u, v17, *&v57, v18), (v72 & 1) == 0) || (v20 = sub_F8634C(&v68, &v70, v19), v69 + v20 == -1) || DWORD1(v69) + HIDWORD(v20) == 0x7FFFFFFF || *(&v69 + 1) + v21 == 0x7FFFFFFFFFFFFFFFLL))
      {
        v22 = sub_101E508(a1[1]);
        if (v22 - 1 <= v64 || (sub_1034680(*a1, &v60, v22 - 1, a1[371], v58, *(a1 + 2964)) & 1) != 0)
        {
          sub_1053B80(a1 + 132, &v60, &v64);
          sub_1054E9C(a1 + 132);
          __src = v11;
          LODWORD(v68) = v64 - 1;
          sub_1053B80(a1 + 356, &v60, &v68);
          sub_1054E9C(a1 + 356);
          v23 = a1[1];
          LODWORD(v68) = v64;
          v24 = sub_101F854(*v23, HIDWORD(v60) & 0xFFFF0000FFFFFFFFLL | (WORD1(v60) << 32), (v60 & 2) == 0, &v68);
          v25 = v11;
          if (v11 == v10 || v10[-1].i64[1] != v24)
          {
            if (v10 >= v63)
            {
              v26 = v10 - v11;
              v27 = (v10 - v11) >> 3;
              v28 = v27 + 1;
              if ((v27 + 1) >> 61)
              {
                sub_1794();
              }

              v29 = v63 - v11;
              if ((v63 - v11) >> 2 > v28)
              {
                v28 = v29 >> 2;
              }

              if (v29 >= 0x7FFFFFFFFFFFFFF8)
              {
                v30 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v30 = v28;
              }

              if (v30)
              {
                if (!(v30 >> 61))
                {
                  operator new();
                }

                sub_1808();
              }

              v25 = 0;
              v31 = (8 * v27);
              *v31 = v24;
              v10 = (v31 + 1);
              memcpy(0, v11, v26);
              __p = 0;
              v62 = v10;
              v63 = 0;
            }

            else
            {
              v10->i64[0] = v24;
              v10 = (v10 + 8);
            }

            __src = v25;
            v62 = v10;
          }

          v32 = a1[1];
          LODWORD(v68) = v64;
          v33 = sub_101F854(*v32, HIDWORD(v60) & 0xFFFF0000FFFFFFFFLL | (WORD1(v60) << 32), (v60 >> 1) & 1, &v68);
          if (v10[-1].i64[1] == v33)
          {
            v11 = __src;
          }

          else
          {
            v11 = __src;
            if (v10 >= v63)
            {
              v34 = v10 - __src;
              v35 = (v10 - __src) >> 3;
              v36 = v35 + 1;
              if ((v35 + 1) >> 61)
              {
                sub_1794();
              }

              v37 = v63 - __src;
              if ((v63 - __src) >> 2 > v36)
              {
                v36 = v37 >> 2;
              }

              if (v37 >= 0x7FFFFFFFFFFFFFF8)
              {
                v38 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v38 = v36;
              }

              if (v38)
              {
                if (!(v38 >> 61))
                {
                  operator new();
                }

                sub_1808();
              }

              v39 = (8 * v35);
              *v39 = v33;
              v10 = (v39 + 1);
              memcpy(0, __src, v34);
              __p = 0;
              v62 = v10;
              v63 = 0;
              v11 = 0;
            }

            else
            {
              v10->i64[0] = v33;
              v10 = (v10 + 8);
            }

            v62 = v10;
          }
        }

        else
        {
          LODWORD(v68) = v22 - 2;
          sub_1053B80(a1 + 356, &v60, &v68);
          sub_1054E9C(a1 + 356);
        }
      }

      else
      {
        LODWORD(v68) = 0;
        sub_1053B80(a1 + 132, &v60, &v68);
        sub_1054E9C(a1 + 132);
      }

      for (++v6; v6 != v9; ++v6)
      {
        v40 = BYTE6(*v6);
        v41 = HIDWORD(*v6);
        if ((*(*&v2 + 10024) != *v6 || *(v3 + 918) != v41 || *(v3 + 1838) != v40) && (!*(*&v2 + 10000) || *(*&v2 + 9992) != *v6 || *(v3 + 902) != v41 || *(v3 + 1806) != v40))
        {
          break;
        }
      }
    }

    while (v6 != v9);
    v2 = *a1;
  }

  v42 = *(*&v2 + 10272);
  v43 = v42 + 88 * *(*&v2 + 10176);
  *&v68 = *&v2 + 10040;
  *(&v68 + 1) = v42;
  *&v69 = v43;
  sub_1007918(&v68);
  v44 = *(*&v2 + 10272) + 88 * *(*&v2 + 10176);
  v65 = (*&v2 + 10040);
  v66 = v44;
  v67 = v44;
  sub_1007918(&v65);
  while (1)
  {
    v45 = *(&v68 + 1);
    if (*(&v68 + 1) == v66)
    {
      break;
    }

    v60 = (((*(*(&v68 + 1) + 32) >> 16) & 0xFFFF0000 | (*(*(&v68 + 1) + 32) << 32) | (2 * ((*(*(&v68 + 1) + 32) & 0xFF000000000000) == 0))) + 4 * *(*(&v68 + 1) + 80)) & 0xFFFFFFFFFFFFFFFELL | *(*(&v68 + 1) + 84) & 1;
    v73[0] = 0;
    sub_1053B80(a1 + 132, &v60, v73);
    sub_1054E9C(a1 + 132);
    v60 = (((*(v45 + 72) >> 16) & 0xFFFF0000 | (*(v45 + 72) << 32) | (2 * ((*(v45 + 72) & 0xFF000000000000) == 0))) + 4 * *(v45 + 82)) & 0xFFFFFFFFFFFFFFFELL | (*(v45 + 84) >> 1) & 1;
    v73[0] = 0;
    sub_1053B80(a1 + 132, &v60, v73);
    sub_1054E9C(a1 + 132);
    *(&v68 + 1) += 88;
    sub_1007918(&v68);
  }

  for (i = *(sub_F8F520((*a1 + 1)) + 16); i; i = *i)
  {
    *&v68 = (i[2] >> 16) & 0xFFFF0000 | (i[2] << 32) | (2 * ((i[2] & 0xFF000000000000) == 0));
    LODWORD(v65) = 0;
    sub_1053B80(a1 + 132, &v68, &v65);
    sub_1054E9C(a1 + 132);
  }

  v47 = 126 - 2 * __clz((v10 - v11) >> 3);
  if (v10 == v11)
  {
    v48 = 0;
  }

  else
  {
    v48 = v47;
  }

  sub_2D31D4(v11, v10, &v68, v48, 1);
  v50 = __p;
  v49 = v62;
  if (__p == v62)
  {
LABEL_93:
    if (v50 != v49)
    {
      v62 = v50;
    }
  }

  else
  {
    v51 = __p - 8;
    while (v51 + 4 != v62)
    {
      v52 = v51[2];
      v51 += 2;
      LODWORD(v53) = v51[2];
      if (v52 == v53 && v51[1] == v51[3])
      {
        v55 = v51 + 4;
        if (v51 + 4 != v62)
        {
          do
          {
            if (v53 != *v55 || v51[1] != v55[1])
            {
              v53 = *v55;
              *(v51 + 1) = *v55;
              v51 += 2;
            }

            v55 += 2;
          }

          while (v55 != v49);
          v49 = v62;
        }

        v50 = v51 + 2;
        goto LABEL_93;
      }
    }
  }

  sub_105DC54((*a1 + 560), &__p, a1[371], *(a1 + 740), *(a1 + 2964), 4u);
  if (__p)
  {
    v62 = __p;
    operator delete(__p);
  }
}

void sub_1035858(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (v17)
  {
    v18 = a1;
    operator delete(v17);
    a1 = v18;
  }

  _Unwind_Resume(a1);
}

void sub_10358CC(uint64_t **a1, void *a2)
{
  v2 = a1[147];
  v3 = a1[146];
  v55 = 0xAAAAAAAAAAAAAAABLL * ((v2 - v3) >> 5);
  if (v55 >> 30)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v51 = sub_2D390(exception, "The source terminal of a query cannot have more than (2^30 - 1) nodes.", 0x46uLL);
  }

  if (v2 != v3)
  {
    v5 = 0;
    __asm { FMOV            V0.2D, #1.0 }

    v56 = _Q0;
    do
    {
      v10 = &a1[146][12 * v5];
      v11 = *a1;
      v12 = **a1;
      if (*(v12 + 7774) == 1)
      {
        v13 = *v10;
        v14 = HIDWORD(*v10);
        v15 = sub_2AF704(v12 + 3896, HIDWORD(*v10), 1);
        if (!v15)
        {
          goto LABEL_4;
        }

        v16 = &v15[-*v15];
        if (*v16 < 5u)
        {
          goto LABEL_4;
        }

        v17 = *(v16 + 2);
        if (!v17 || *&v15[v17 + *&v15[v17]] <= WORD1(v13) || !sub_2B817C(v12, v14 & 0xFFFF0000FFFFFFFFLL | (WORD1(v13) << 32)))
        {
          goto LABEL_4;
        }

        v11 = *a1;
      }

      v18 = a1[371];
      v59 = 0u;
      v60 = 0u;
      v61 = v56;
      v62 = 0x3FF0000000000000;
      LOBYTE(v63) = 1;
      sub_10A5C78(v11 + 549, &v59, v10, (v10 + 1), v18);
      if (v63)
      {
        v20 = sub_F8634C(&v59, &v61, v19);
        v21 = v60 + v20;
        if (v60 + v20 != -1)
        {
          v22 = DWORD1(v60) + HIDWORD(v20);
          if (DWORD1(v60) + HIDWORD(v20) != 0x7FFFFFFF)
          {
            v23 = sub_10325E8(*a1, v10, *(v10 + 2), a1[371], a1 + 740, *(a1 + 2964));
            if (v23 != -1 && HIDWORD(v23) != 0x7FFFFFFF)
            {
              sub_F8ED58((*a1 + 1), *v10, 1, a1 + 372, 0);
              v25 = -1171354717 * ((a1[373] - a1[372]) >> 3);
              if (v25)
              {
                v26 = 0;
                v27 = 0;
                if (v23 < 0)
                {
                  v28 = -5;
                }

                else
                {
                  v28 = 5;
                }

                v57 = SHIDWORD(v23) / 10 + (((103 * (SHIDWORD(v23) % 10 + v28)) >> 15) & 1) + ((103 * (SHIDWORD(v23) % 10 + v28)) >> 10);
                v53 = v21 + v23;
                v52 = v22 + HIDWORD(v23);
                v29 = 88 * v25;
                while (2)
                {
                  v31 = a1[372];
                  v32 = *(a1 + 740);
                  if (v32 == 0x7FFFFFFF)
                  {
                    v33 = 0x7FFFFFFF;
                  }

                  else
                  {
                    v33 = v57 + v32;
                  }

                  v34 = *a1;
                  v35 = a1[371];
                  v36 = *(a1 + 2964);
                  if (*(*a1 + 9954) == 1)
                  {
                    if (sub_1007A48((v34 + 1255), &v31[v26 / 8]) != -1)
                    {
                      goto LABEL_27;
                    }

                    v37 = v31[v26 / 8 + 4];
                    v38 = (v37 >> 16) & 0xFFFF0000 | (v37 << 32);
                    v39 = (v37 & 0xFF000000000000) == 0;
                    v40 = (v38 | (2 * v39)) + 4 * LODWORD(v31[v26 / 8 + 10]);
                    WORD2(v59) = ((v38 | (2 * v39)) + 4 * LODWORD(v31[v26 / 8 + 10])) >> 16;
                    LODWORD(v59) = HIDWORD(v40);
                    BYTE6(v59) = (((v40 << 16) & 0xFFFF00000000 | HIDWORD(v40) | (v39 << 48)) ^ 0x1000000000000uLL) >> 48;
                    if (sub_100A97C((v34 + 1245), &v59) != -1)
                    {
                      goto LABEL_27;
                    }
                  }

                  v59 = 0u;
                  v60 = 0u;
                  v61 = v56;
                  v62 = 0x3FF0000000000000;
                  LOBYTE(v63) = 1;
                  sub_10AB718((v34 + 549), &v59, &v31[v26 / 8], 0x3B9ACA00u, v35, v33, v36);
                  if ((v63 & 1) == 0)
                  {
                    goto LABEL_27;
                  }

                  v42 = sub_F8634C(&v59, &v61, v41);
                  if (v60 + v42 == -1 || DWORD1(v60) + HIDWORD(v42) == 0x7FFFFFFF)
                  {
                    goto LABEL_27;
                  }

                  v43 = &v31[v26 / 8];
                  v67 = (((4 * LODWORD(v31[v26 / 8 + 10])) | (v31[v26 / 8 + 4] << 32) | BYTE4(v31[v26 / 8 + 10]) & 1) + ((v31[v26 / 8 + 4] >> 16) & 0xFFFF0000)) | (2 * ((v31[v26 / 8 + 4] & 0xFF000000000000) == 0));
                  v44 = (v52 + DWORD1(v60) + HIDWORD(v42));
                  v66 = (v53 + v60 + v42) | (v44 << 32);
                  v45 = *(a1 + 2964);
                  *&v59 = v66;
                  DWORD2(v59) = v33;
                  BYTE12(v59) = v45;
                  *&v60 = (((v31[v26 / 8 + 4] >> 16) & 0xFFFF0000 | (v31[v26 / 8 + 4] << 32) | (2 * ((v31[v26 / 8 + 4] & 0xFF000000000000) == 0))) + 4 * LODWORD(v31[v26 / 8 + 10])) & 0xFFFFFFFFFFFFFFFELL | BYTE4(v31[v26 / 8 + 10]) & 1;
                  *(&v60 + 1) = (((v31[v26 / 8 + 9] >> 16) & 0xFFFF0000 | (v31[v26 / 8 + 9] << 32) | (2 * ((v31[v26 / 8 + 9] & 0xFF000000000000) == 0))) + 4 * *(v43 + 41)) & 0xFFFFFFFFFFFFFFFELL | (*(v43 + 84) >> 1) & 1;
                  LODWORD(v61) = HIDWORD(v31[v26 / 8 + 10]);
                  v63 = v27;
                  v64 = 0;
                  v65 = v5 | 0x80000000;
                  v58 = (((4 * LODWORD(v31[v26 / 8 + 10])) | (v31[v26 / 8 + 4] << 32) | BYTE4(v31[v26 / 8 + 10]) & 1) + ((v31[v26 / 8 + 4] >> 16) & 0xFFFF0000)) | (2 * ((v31[v26 / 8 + 4] & 0xFF000000000000) == 0));
                  v46 = *(a1 + 261);
                  if (v46 == 0x7FFFFFFF)
                  {
                    goto LABEL_26;
                  }

                  sub_F98EF8((a1 + 150), &v58, v68);
                  if (v68[0])
                  {
                    sub_F98EF8((a1 + 150), &v58, v68);
                    v47 = a1[246][10 * *(v69 + 8) + 1];
                    if (v59 == v47)
                    {
                      if (SDWORD1(v59) < SHIDWORD(v47))
                      {
                        goto LABEL_43;
                      }

LABEL_26:
                      sub_1034330((a1 + 150), &v58, &v59);
                      v68[0] = (((4 * *(v43 + 20)) | (v43[4] << 32) | *(v43 + 84) & 1) + ((v43[4] >> 16) & 0xFFFF0000)) | (2 * ((v43[4] & 0xFF000000000000) == 0));
                      LODWORD(v58) = 0;
                      sub_1053B80(a1 + 132, v68, &v58);
                      sub_1053EDC(a1 + 132, a2);
                      sub_1054E9C(a1 + 132);
                      sub_1038684(a1, &v67, &v66, v5);
LABEL_27:
                      ++v27;
                      v26 += 88;
                      if (v29 == v26)
                      {
                        goto LABEL_4;
                      }

                      continue;
                    }

                    if (v59 >= v47)
                    {
                      goto LABEL_26;
                    }

LABEL_43:
                    sub_F98EF8((a1 + 150), &v58, v68);
                    v48 = HIDWORD(a1[246][10 * *(v69 + 8) + 1]);
                    v49 = *(a1 + 261);
                    if (v49 < v48 || v44 <= v46)
                    {
                      if (v49 >= v48)
                      {
                        goto LABEL_26;
                      }

                      goto LABEL_46;
                    }

                    v30 = -1;
                  }

                  else
                  {
LABEL_46:
                    if (v44 > v46)
                    {
                      goto LABEL_26;
                    }

                    v30 = 1;
                  }

                  break;
                }

                *(a1 + 262) += v30;
                goto LABEL_26;
              }
            }
          }
        }
      }

LABEL_4:
      ++v5;
    }

    while (v5 != v55);
  }
}

void sub_1035F60(unsigned int *a1)
{
  v52 = -1431655765 * ((*(a1 + 147) - *(a1 + 146)) >> 5);
  if (v52)
  {
    v2 = 0;
    __asm { FMOV            V0.2D, #1.0 }

    v60 = _Q0;
    while (1)
    {
      v56 = v2;
      v6 = *(a1 + 146) + 96 * v2;
      if (*(a1 + 3048) == 1)
      {
        sub_1039C8C(a1, v6);
      }

      sub_1056F4C(*(a1 + 122) + 24, v6, &v62);
      if (v62)
      {
        v59 = *(v6 + 8);
        v7 = *a1;
        v8 = *(a1 + 371);
        v62 = 0u;
        v63 = 0u;
        v64 = v60;
        v65 = 0x3FF0000000000000;
        v66 = 1;
        sub_10A5C78((v7 + 4392), &v62, v6, v6 + 8, v8);
        if (v66)
        {
          v10 = sub_F8634C(&v62, &v64, v9);
          v54 = v63 + v10;
          if (v63 + v10 != -1)
          {
            v53 = DWORD1(v63) + HIDWORD(v10);
            if (DWORD1(v63) + HIDWORD(v10) != 0x7FFFFFFF)
            {
              break;
            }
          }
        }
      }

LABEL_3:
      v2 = v56 + 1;
      if (v56 + 1 == v52)
      {
        return;
      }
    }

    sub_1056F4C(*(a1 + 122) + 24, v6, &v62);
    v12 = *(*(&v63 + 1) + 8);
    v11 = *(*(&v63 + 1) + 16);
    for (i = v11; ; v11 = i)
    {
      if (v12 == v11)
      {
        goto LABEL_3;
      }

      v57 = v12;
      v13 = (**(a1 + 122) + 32 * *v12);
      v14 = -1431655765 * ((v13[1] - *v13) >> 5);
      if (v14)
      {
        break;
      }

LABEL_11:
      v12 = v57 + 1;
    }

    v15 = 0;
    while (1)
    {
      v16 = *v13 + 96 * v15;
      if (*v16 != *v6)
      {
        goto LABEL_16;
      }

      v17 = *(v16 + 8);
      v18 = *a1;
      v19 = *(a1 + 371);
      v62 = 0u;
      v63 = 0u;
      v64 = v60;
      v65 = 0x3FF0000000000000;
      v66 = 1;
      sub_10A5C78((v18 + 4392), &v62, v16, v16 + 8, v19);
      if ((v66 & 1) == 0)
      {
        goto LABEL_16;
      }

      LODWORD(v20) = v62;
      v21 = *&v64 * v20;
      if (v21 >= 0.0)
      {
        if (v21 >= 4.50359963e15)
        {
          goto LABEL_25;
        }

        v22 = (v21 + v21) + 1;
      }

      else
      {
        if (v21 <= -4.50359963e15)
        {
          goto LABEL_25;
        }

        v22 = (v21 + v21) - 1 + (((v21 + v21) - 1) >> 63);
      }

      v21 = (v22 >> 1);
LABEL_25:
      v23 = *(&v64 + 1) * SDWORD1(v62);
      if (v23 >= 0.0)
      {
        if (v23 < 4.50359963e15)
        {
          v24 = (v23 + v23) + 1;
          goto LABEL_30;
        }
      }

      else if (v23 > -4.50359963e15)
      {
        v24 = (v23 + v23) - 1 + (((v23 + v23) - 1) >> 63);
LABEL_30:
        v23 = (v24 >> 1);
      }

      v25 = v63 + v21;
      if (v25 != -1 && DWORD1(v63) + v23 != 0x7FFFFFFF && v59 >= v17)
      {
        v28 = *a1;
        v29 = *(a1 + 371);
        v30 = *v6;
        v31 = HIDWORD(*v6);
        v32 = (*v6 << 47) & 0x1000000000000;
        v33 = *v6 << 16;
        if (*(*a1 + 9954) == 1)
        {
          v34 = 0;
          v35 = v30 & 0xFFFFFFFFFFFF0000;
          v36 = (v32 ^ 0x1000000000000uLL) >> 48;
          if (!v36)
          {
            ++v35;
          }

          v37 = (0x2127599BF4325C37 * (v35 ^ (v30 >> 23))) ^ ((0x2127599BF4325C37 * (v35 ^ (v30 >> 23))) >> 47);
          while (2)
          {
            v39 = v37 & (*(v28 + 10016) - 1);
            v40 = *(*(v28 + 10032) + 8 * v39);
            if (*(v28 + 10024) == v40 && *(*a1 + 10028) == WORD2(v40) && *(*a1 + 10030) == BYTE6(v40))
            {
              goto LABEL_61;
            }

            if (*(v28 + 10000) && *(v28 + 9992) == v40 && *(*a1 + 9996) == WORD2(v40))
            {
              if (*(*a1 + 9998) == BYTE6(v40) || v31 != v40)
              {
                goto LABEL_47;
              }
            }

            else if (v31 != v40)
            {
LABEL_47:
              v37 = ++v34 + v39;
              continue;
            }

            break;
          }

          if (WORD2(v33) == WORD2(v40) && v36 == BYTE6(v40))
          {
            if (v39 == -1)
            {
              goto LABEL_61;
            }

            goto LABEL_16;
          }

          goto LABEL_47;
        }

LABEL_61:
        v58 = DWORD1(v63) + v23;
        sub_F8EC88(v28 + 8, (v33 & 0xFFFF00000000 | v31 | v32) ^ 0x1000000000000, v61);
        v62 = 0u;
        v63 = 0u;
        v64 = v60;
        v65 = 0x3FF0000000000000;
        v66 = 1;
        sub_10A8B08(v28 + 4392, &v62, v61, v59 - v17, v29, *&v60, v42);
        if (v66)
        {
          LODWORD(v43) = v62;
          v44 = *&v64 * v43;
          if (v44 >= 0.0)
          {
            v45 = v58;
            if (v44 < 4.50359963e15)
            {
              v46 = (v44 + v44) + 1;
LABEL_67:
              v44 = (v46 >> 1);
            }
          }

          else
          {
            v45 = v58;
            if (v44 > -4.50359963e15)
            {
              v46 = (v44 + v44) - 1 + (((v44 + v44) - 1) >> 63);
              goto LABEL_67;
            }
          }

          v47 = *(&v64 + 1) * SDWORD1(v62);
          if (v47 >= 0.0)
          {
            if (v47 < 4.50359963e15)
            {
              v48 = (v47 + v47) + 1;
LABEL_73:
              v47 = (v48 >> 1);
            }
          }

          else if (v47 > -4.50359963e15)
          {
            v48 = (v47 + v47) - 1 + (((v47 + v47) - 1) >> 63);
            goto LABEL_73;
          }

          v49 = v63 + v44;
          v50 = DWORD1(v63) + v47;
          if (v49 != -1 && v50 != 0x7FFFFFFF)
          {
            LODWORD(v62) = v25 + v54 + v49;
            DWORD1(v62) = v45 + v53 + v50;
            sub_1034078(a1, v6, &v62, *v57, v56, v15, 1, 0);
          }
        }
      }

LABEL_16:
      if (++v15 == v14)
      {
        goto LABEL_11;
      }
    }
  }
}

void sub_1036564(void ***a1, unsigned int *a2, unsigned int a3)
{
  if (*(*a1 + 9952) == 1 && sub_585D8(*a1 + 8))
  {
    v6 = sub_101E508(a1[1]) - 1;
  }

  else
  {
    v6 = 0;
  }

  if (*a2 >= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = *a2;
  }

  if (*a2 != -1)
  {
    v6 = v7;
  }

  v83 = v6;
  v84 = v6;
  if (*(a1 + 518))
  {
    v8 = a1 + 375;
    v9 = -1;
    do
    {
      if (((a1[250] - a1[249]) >> 2) >= a3)
      {
        return;
      }

      v10 = &a1[246][10 * *a1[253]];
      v81[0] = *v10;
      v11 = v10[4];
      v13 = v10[1];
      v12 = v10[2];
      v81[3] = v10[3];
      v82 = v11;
      v81[1] = v13;
      v81[2] = v12;
      sub_1032874((a1 + 150));
      v14 = **a1;
      if (*(v14 + 7774) == 1)
      {
        v15 = WORD1(v81[0]);
        v16 = HIDWORD(*&v81[0]);
        if ((v17 = sub_2AF704(v14 + 3896, DWORD1(v81[0]), 1)) == 0)
        {
          continue;
        }

        v18 = &v17[-*v17];
        if (*v18 < 5u || (v19 = *(v18 + 2)) == 0 || *&v17[v19 + *&v17[v19]] <= v15 || !sub_2B817C(v14, v16 & 0xFFFF0000FFFFFFFFLL | (v15 << 32)))
        {
          continue;
        }
      }

      if (*(a1 + 1052) != 1 || sub_2B8438(**a1, HIDWORD(*&v81[0]) & 0xFFFF0000FFFFFFFFLL | (WORD1(v81[0]) << 32)))
      {
        v20 = DWORD2(v82);
        v21 = *(a1 + 260);
        if (v21 != -1 && DWORD2(v81[0]) > v21 || *(a1 + 3048) == 1 && sub_1038D8C(a1, v81 + 2))
        {
          return;
        }

        v22 = *(a1 + 261);
        if (v22 != 0x7FFFFFFF && SHIDWORD(v81[0]) <= v22)
        {
          --*(a1 + 262);
        }

        if (*(a1 + 756) == -1 || (v23 = a1[1], LODWORD(v71) = *(a1 + 756), !sub_101F374(*v23, HIDWORD(*&v81[0]) & 0xFFFF0000FFFFFFFFLL | (WORD1(v81[0]) << 32), &v71)))
        {
          v24 = v20 & 0x7FFFFFFF;
          v80 = sub_1038F90(a1, v81, v81 + 2, v24);
          v25 = *(a1 + 740);
          v26 = 0x7FFFFFFF;
          if (v25 != 0x7FFFFFFF)
          {
            if (v81[0] < 0)
            {
              v27 = -5;
            }

            else
            {
              v27 = 5;
            }

            v26 = SHIDWORD(v81[0]) / -10 + v25 + (((-103 * (v27 + SHIDWORD(v81[0]) % 10)) >> 15) & 1) + ((-103 * (v27 + SHIDWORD(v81[0]) % 10)) >> 10);
          }

          v79 = v26;
          v28 = sub_394BD0();
          v29 = &v84;
          if (v28)
          {
            v29 = &v83;
          }

          v30 = *v29 >= v80 ? &v80 : v29;
          v31 = sub_1039358(a1, v81, a1[371], &v79, *(a1 + 2964), v30);
          if (v31 != -1)
          {
            v32 = v31;
            if (v31)
            {
              v42 = a1[1];
              LODWORD(v71) = v31;
              v43 = sub_101F854(*v42, HIDWORD(*&v81[0]) & 0xFFFF0000FFFFFFFFLL | (WORD1(v81[0]) << 32), (*&v81[0] >> 1) & 1, &v71);
              v78 = v43;
              if (!v43)
              {
                continue;
              }

              if (v43 > 0xFFFFFFFEFFFFFFFFLL)
              {
                continue;
              }

              v68 = *(a1 + 2964);
              sub_105D3DC((*a1 + 560), *&v81[0], v32, 1, a1[371], v79, v68, v8);
              if (a1[375] == a1[376])
              {
                continue;
              }

              sub_585C38((a1 + 260), &v78, &v71);
              v44 = v71;
              if (v72 == 1)
              {
                v45 = *(v71 + 8) + 12 * *(&v71 + 1);
                *v45 = v78;
                *(v45 + 8) = 0x7FFFFFFF;
              }

              v69 = v8;
              v46 = *(v44 + 8) + 12 * *(&v71 + 1);
              v49 = *(v46 + 8);
              v47 = (v46 + 8);
              v48 = v49;
              if (v49 == 0x7FFFFFFF || SHIDWORD(v81[0]) < v48)
              {
                *v47 = HIDWORD(v81[0]);
              }

              v50 = -858993459 * ((a1[376] - a1[375]) >> 3);
              if (v50)
              {
                v51 = 0;
                v52 = 0;
                v53 = 40 * v50;
                do
                {
                  v54 = (*v69 + v51);
                  v55 = *(v54 + 28);
                  v56 = v55 & 0xFFFFFFFF00000000;
                  if (v55 != -1 && v56 != 0x7FFFFFFF00000000)
                  {
                    *&v71 = (v56 + *(&v81[0] + 1)) & 0xFFFFFFFF00000000 | (v55 + DWORD2(v81[0]));
                    DWORD2(v71) = v79;
                    BYTE12(v71) = v68;
                    v72 = 0uLL;
                    LODWORD(v73) = 0;
                    v75 = v52;
                    v76 = v32;
                    v77 = v24;
                    v58 = *(v54 + 8);
                    v59 = v54[1];
                    v72 = *v54;
                    v73 = v59;
                    v74 = v58;
                    v70 = *v54;
                    sub_1032738(a1, &v70, &v71);
                  }

                  ++v52;
                  v51 += 40;
                }

                while (v53 != v51);
              }
            }

            else
            {
              v69 = v8;
              if ((a1[381] & 1) == 0)
              {
                sub_1038684(a1, v81, v81 + 2, v24);
              }

              sub_F8ED58((*a1 + 1), *&v81[0], 1, a1 + 372, 0);
              v33 = -1171354717 * ((a1[373] - a1[372]) >> 3);
              if (v33)
              {
                v34 = 0;
                v35 = 0;
                v36 = 88 * v33;
                do
                {
                  v37 = &a1[372][v34 / 8];
                  v38 = sub_10336EC(*a1, v37, a1[371], &v79, *(a1 + 2964));
                  v39 = v38 & 0xFFFFFFFF00000000;
                  if (v38 != -1 && v39 != 0x7FFFFFFF00000000)
                  {
                    v78 = (((4 * *(v37 + 20)) | (v37[4] << 32) | *(v37 + 84) & 1) + ((v37[4] >> 16) & 0xFFFF0000)) | (2 * ((v37[4] & 0xFF000000000000) == 0));
                    v70 = (*(&v81[0] + 1) + v39) & 0xFFFFFFFF00000000 | (DWORD2(v81[0]) + v38);
                    *&v71 = v70;
                    v41 = *(a1 + 2964);
                    DWORD2(v71) = v79;
                    BYTE12(v71) = v41;
                    *&v72 = (((v37[4] >> 16) & 0xFFFF0000 | (v37[4] << 32) | (2 * ((v37[4] & 0xFF000000000000) == 0))) + 4 * *(v37 + 20)) & 0xFFFFFFFFFFFFFFFELL | *(v37 + 84) & 1;
                    *(&v72 + 1) = (((v37[9] >> 16) & 0xFFFF0000 | (v37[9] << 32) | (2 * ((v37[9] & 0xFF000000000000) == 0))) + 4 * *(v37 + 41)) & 0xFFFFFFFFFFFFFFFELL | (*(v37 + 84) >> 1) & 1;
                    LODWORD(v73) = *(v37 + 21);
                    v75 = v35;
                    v76 = 0;
                    v77 = v24;
                    sub_1032738(a1, &v78, &v71);
                    sub_1038684(a1, &v78, &v70, v24);
                  }

                  ++v35;
                  v34 += 88;
                }

                while (v36 != v34);
              }
            }

            v60 = *(a1 + 261);
            if (v60 == 0x7FFFFFFF)
            {
              v8 = v69;
            }

            else
            {
              v8 = v69;
              if (!*(a1 + 262) && v9 == -1)
              {
                v61 = a1[119];
                v62 = a1[120];
                if (v61 == v62)
                {
                  return;
                }

                v9 = 0;
                v63 = a1[116];
                do
                {
                  if (0xAAAAAAAAAAAAAAABLL * (a1[117] - v63) > *v61)
                  {
                    v64 = v63[3 * *v61 + 1];
                  }

                  else
                  {
                    v64 = 0x7FFFFFFFFFFFFFFFLL;
                  }

                  v65 = HIDWORD(v64);
                  if (v9 > v64)
                  {
                    LODWORD(v64) = v9;
                  }

                  if (v60 >= v65)
                  {
                    v9 = v64;
                  }

                  ++v61;
                }

                while (v61 != v62);
                v66 = *(a1 + 260);
                if (v66 == -1 || v9 < v66)
                {
                  *(a1 + 260) = v9;
                }
              }
            }
          }
        }
      }
    }

    while (*(a1 + 518));
  }
}

void sub_1036CE8(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, char a5, _DWORD *a6, int a7, unsigned int *a8, uint64_t *a9, void *a10, unsigned int a11, int a12, int a13)
{
  sub_1034D1C(a1);
  *(a1 + 2960) = *a4;
  *(a1 + 2964) = a5;
  *(a1 + 2968) = a3;
  if (a1 + 1168 != a2)
  {
    sub_C70E60((a1 + 1168), *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 5));
  }

  *(a1 + 1192) = *(a2 + 24);
  *(a1 + 1040) = *a6;
  *(a1 + 1044) = a7;
  *(a1 + 20) = a13;
  *(a1 + 976) = a1 + 24;
  sub_1035064(a1);
  sub_10358CC(a1, a10);
  v21 = *a9;
  v20 = a9[1];
  if (*a9 != v20)
  {
    do
    {
      v23 = *(v21 + 8);
      sub_1053B80((a1 + 1056), v21, &v23);
      sub_1053EDC((a1 + 1056), a10);
      sub_1054E9C((a1 + 1056));
      v21 += 16;
    }

    while (v21 != v20);
  }

  sub_1036564(a1, a8, a11);
}

void sub_1036E20(void *a1, uint64_t a2, unint64_t ***a3, uint64_t a4, int a5, char a6, int a7, int a8, unsigned int a9, int a10, unsigned int a11)
{
  sub_1034D1C(a1);
  v19 = *a3;
  v18 = a3[1];
  if (*a3 == v18)
  {
    v20 = *a3;
  }

  else
  {
    do
    {
      v24 = a1;
      sub_1038380(a1 + 3, v19, 1, &v24);
      v19 += 4;
    }

    while (v19 != v18);
    v19 = *a3;
    v20 = a3[1];
  }

  v21 = 0xAAAAAAAAAAAAAAABLL * ((a1[117] - a1[116]) >> 3);
  v22 = (v20 - v19) >> 5;
  if (v22 > v21)
  {
    sub_1052908((a1 + 116), v22 - v21);
  }

  a1[122] = a1 + 3;
  sub_1036F30(a1, a2, a4, a5, a6, a7, a8, a9, a11);
}

void sub_1036F30(uint64_t a1, uint64_t a2, uint64_t a3, int a4, char a5, int a6, int a7, unsigned int a8, unsigned int a9)
{
  v18 = a8;
  *(a1 + 2960) = a4;
  *(a1 + 2964) = a5;
  *(a1 + 2968) = a3;
  v13 = (a1 + 1168);
  if (v13 != a2)
  {
    sub_C70E60(v13, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 5));
  }

  *(a1 + 1192) = *(a2 + 24);
  *(a1 + 1040) = a6;
  *(a1 + 1044) = a7;
  v14 = *(a1 + 976);
  if (v14[11] + v14[5] + v14[17] + v14[23] + v14[29] + v14[35] + v14[41] + v14[47] + v14[53] + v14[59] + v14[65] + v14[71] + v14[77] + v14[83] + v14[89] + v14[95] || *(a1 + 3048) == 1)
  {
    sub_1035064(a1);
    __p = 0;
    v16 = 0;
    v17 = 0;
    sub_10358CC(a1, &__p);
    if (__p)
    {
      v16 = __p;
      operator delete(__p);
    }

    sub_1035F60(a1);
    sub_1036564(a1, &v18, a9);
  }
}

void sub_103708C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_10370A8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = 0;
  sub_103717C(a1, a2, v4, a3);
  result = v5;
  if (v5 == v4)
  {
    return (*(*v5 + 32))(v5);
  }

  if (v5)
  {
    return (*(*v5 + 40))();
  }

  return result;
}

void sub_1037168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1030F20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_103717C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  result = sub_F68960(a4);
  v9 = *(a1 + 928);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 936) - v9) >> 3) > a2)
  {
    v10 = v9 + 24 * a2;
    v11 = *v10;
    if (*v10)
    {
      if (*(a1 + 3048) != 1 || *(a1 + 3049) == 1)
      {
        if ((*(v10 + 23) & 0x40) != 0)
        {
          sub_F8EC88(*a1 + 8, (HIDWORD(v11) & 0xFFFE0000FFFFFFFFLL | (WORD1(v11) << 32) & 0xFFFEFFFFFFFFFFFFLL | (((v11 >> 1) & 1) << 48)) ^ 0x1000000000000, v12);
          sub_F69060(a4, v11, v12, 0);
          sub_F6901C(a4, *(a1 + 1168) + 96 * (*(v10 + 20) & 0x3FFFFFFF) + 8);
        }

        else
        {
          sub_1037478(a1, v10, a3, v12);
          sub_49C304(a4, v12);
          sub_4547F0(v12);
        }

        if ((*(v10 + 20) & 0x80000000) != 0)
        {
          sub_10379B8(v10, *(a1 + 3880) + 40 * a2, v12);
          sub_F6B51C(a4, v12);
          sub_4547F0(v12);
        }

        return sub_F68F20(a4, *(**(a1 + 976) + 32 * a2) + 96 * *(v10 + 16) + 8);
      }
    }
  }

  return result;
}

void sub_1037324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_4547F0(va);
  sub_4547F0(v3);
  _Unwind_Resume(a1);
}

_BYTE *sub_10373A4@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = 0;
  sub_1037478(a1, a2, v4, a3);
  result = v5;
  if (v5 == v4)
  {
    return (*(*v5 + 32))(v5);
  }

  if (v5)
  {
    return (*(*v5 + 40))();
  }

  return result;
}

void sub_1037464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1030F20(va);
  _Unwind_Resume(a1);
}

void sub_1037478(uint64_t *a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_F68960(a4);
  if (*a2)
  {
    v33 = a2;
    v8 = 0;
    v9 = 0;
    v40 = *a2;
    do
    {
      sub_F98EF8((a1 + 150), &v40, &v34);
      v10 = a1[246] + 80 * *(*(&v35 + 1) + 8);
      v11 = &v9[-v8];
      v12 = 0x8E38E38E38E38E39 * (&v9[-v8] >> 3);
      v13 = v12 + 1;
      if (v12 + 1 > 0x38E38E38E38E38ELL)
      {
        sub_1794();
      }

      if (0x1C71C71C71C71C72 * (-v8 >> 3) > v13)
      {
        v13 = 0x1C71C71C71C71C72 * (-v8 >> 3);
      }

      if (0x8E38E38E38E38E39 * (-v8 >> 3) >= 0x1C71C71C71C71C7)
      {
        v14 = 0x38E38E38E38E38ELL;
      }

      else
      {
        v14 = v13;
      }

      if (v14)
      {
        if (v14 <= 0x38E38E38E38E38ELL)
        {
          operator new();
        }

        sub_1808();
      }

      v15 = 8 * (&v9[-v8] >> 3);
      *v15 = *(v10 + 8);
      v16 = *(v10 + 24);
      v17 = *(v10 + 40);
      v18 = *(v10 + 56);
      *(v15 + 64) = *(v10 + 72);
      *(v15 + 32) = v17;
      *(v15 + 48) = v18;
      *(v15 + 16) = v16;
      v9 = (v15 + 72);
      v19 = (72 * v12 + 72 * (v11 / -72));
      memcpy((v15 + 72 * (v11 / -72)), v8, v11);
      if (v8)
      {
        operator delete(v8);
      }

      v8 = v19;
      if ((*(v10 + 72) & 0x80000000) != 0)
      {
        v40 = 0;
        if (v19 == v9)
        {
          goto LABEL_37;
        }

        goto LABEL_19;
      }

      v40 = *(v10 + 32);
    }

    while (v40);
    if (v19 == v9)
    {
      goto LABEL_37;
    }

LABEL_19:
    __p[0] = 0;
    __p[1] = 0;
    v20 = v19;
    v39 = 0;
    while (!*(v20 + 15))
    {
      if (*(a3 + 24) && !sub_F69D6C(a4))
      {
        *&v34 = *(v20 + 2);
        v24 = *(a3 + 24);
        if (!v24)
        {
          sub_2B7420();
        }

        if ((*(*v24 + 48))(v24, &v34))
        {
          goto LABEL_34;
        }
      }

      v25 = *a1;
      sub_F8EC88(*a1 + 8, (HIDWORD(*(v20 + 2)) & 0xFFFE0000FFFFFFFFLL | (WORD1(*(v20 + 2)) << 32) & 0xFFFEFFFFFFFFFFFFLL | (((*(v20 + 2) >> 1) & 1) << 48)) ^ 0x1000000000000, v41);
      sub_F8EC88(v25 + 8, (HIDWORD(*(v20 + 3)) & 0xFFFE0000FFFFFFFFLL | (WORD1(*(v20 + 3)) << 32) & 0xFFFEFFFFFFFFFFFFLL | (((*(v20 + 3) >> 1) & 1) << 48)) ^ 0x1000000000000, v36 + 1);
      v26 = *(v20 + 4);
      v27 = *(v20 + 6);
      *&v36[0] = v42;
      v34 = v41[0];
      v35 = v41[1];
      LODWORD(v37) = (v27 << 14) & 0x3FFF0000 | (v26 >> 2);
      HIDWORD(v37) = *(v20 + 8);
      sub_F692F8(a4, &v34, 0);
LABEL_20:
      v20 += 72;
      if (v20 == v9)
      {
        sub_F98EF8((a1 + 150), v33, &v34);
        sub_F6901C(a4, a1[146] + 96 * (*(a1[246] + 80 * *(*(&v35 + 1) + 8) + 72) & 0x7FFFFFFF) + 8);
        goto LABEL_35;
      }
    }

    sub_10775A8(*a1 + 4616, v20 + 2, a1[371], v20 + 2, v20[12], __p);
    v21 = __p[1];
    v22 = __p[0];
    if (__p[0] != __p[1])
    {
      while (1)
      {
        if (*(a3 + 24) && !sub_F69D6C(a4))
        {
          *&v34 = (((v22[4] >> 16) & 0xFFFF0000 | (v22[4] << 32) | (2 * ((v22[4] & 0xFF000000000000) == 0))) + 4 * *(v22 + 20)) & 0xFFFFFFFFFFFFFFFELL | *(v22 + 84) & 1;
          v23 = *(a3 + 24);
          if (!v23)
          {
            sub_2B7420();
          }

          if ((*(*v23 + 48))(v23, &v34))
          {
            break;
          }
        }

        sub_F692F8(a4, v22, 0);
        v22 += 11;
        if (v22 == v21)
        {
          goto LABEL_20;
        }
      }

LABEL_34:
      v28 = sub_F69058(a4);
      v29 = *(v28 + 16);
      v34 = *v28;
      v35 = v29;
      v30 = *(v28 + 32);
      v31 = *(v28 + 48);
      v32 = *(v28 + 64);
      v37 = *(v28 + 80);
      v36[1] = v31;
      v36[2] = v32;
      v36[0] = v30;
      LODWORD(v34) = 1000000000;
      sub_F6901C(a4, &v34);
      goto LABEL_35;
    }

    sub_F687F4(a4);
LABEL_35:
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

LABEL_37:
    if (v19)
    {
      operator delete(v19);
    }
  }
}

void sub_1037940(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
    if (!v25)
    {
LABEL_3:
      sub_4547F0(v24);
      _Unwind_Resume(a1);
    }
  }

  else if (!v25)
  {
    goto LABEL_3;
  }

  operator delete(v25);
  sub_4547F0(v24);
  _Unwind_Resume(a1);
}

void sub_10379B8(uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  sub_F68960(a5);
  if (*a2)
  {
    v7 = *a2;
    sub_10348A4(a3, &v7);
    operator new();
  }
}

void sub_1037C88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
    v18 = a15;
    if (!a15)
    {
LABEL_3:
      if (!v16)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v18 = a15;
    if (!a15)
    {
      goto LABEL_3;
    }
  }

  operator delete(v18);
  if (!v16)
  {
LABEL_4:
    sub_4547F0(a9);
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(v16);
  sub_4547F0(a9);
  _Unwind_Resume(a1);
}

unint64_t sub_1037D18(void *a1)
{
  v32.n128_u64[0] = -1;
  v32.n128_u64[1] = -1;
  v2 = a1 + 260;
  v3 = a1[260];
  v4 = a1[261];
  if (*v3 > -2)
  {
    v5 = a1[260];
    v18 = a1[263];
    v7 = &v3[v18];
    if (v3 != &v3[v18])
    {
LABEL_5:
      v8 = (a1 + 260);
      goto LABEL_6;
    }
  }

  else
  {
    v5 = a1[260];
    do
    {
      v6 = (__clz(__rbit64(((*v5 >> 7) & ~*v5 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
      v5 = (v5 + v6);
      v4 = (v4 + 12 * v6);
    }

    while (*v5 < -1);
    v7 = &v3[a1[263]];
    if (v5 != v7)
    {
      goto LABEL_5;
    }
  }

  v8 = (a1 + 266);
  v19 = 6;
  v20 = a1 + 260;
  while (1)
  {
    v4 = v20[7];
    v5 = *v8;
    if (**v8 <= -2)
    {
      do
      {
        v21 = (__clz(__rbit64(((*v5 >> 7) & ~*v5 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
        v5 = (v5 + v21);
        v4 = (v4 + 12 * v21);
      }

      while (*v5 < -1);
    }

    v7 = &(*v8)[v20[9]];
    if (v5 != v7)
    {
      break;
    }

    v20 = &v2[v19];
    v19 += 6;
    v8 = &v2[v19];
    if (v19 == 96)
    {
      goto LABEL_26;
    }
  }

LABEL_6:
  v9 = (a1 + 356);
  do
  {
    while (1)
    {
      v10 = a1[1];
      v11 = *v4;
      v4 = (v4 + 12);
      v31.n128_u64[0] = v11;
      v31.n128_u64[0] = sub_10539D0(*v10, &v31);
      v31.n128_u64[1] = v12;
      sub_32114(&v32, &v31);
      LODWORD(v11) = *(v5 + 1);
      v5 = (v5 + 1);
      if (v11 <= -2)
      {
        do
        {
          v13 = (__clz(__rbit64(((*v5 >> 7) & ~*v5 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
          v5 = (v5 + v13);
          v4 = (v4 + 12 * v13);
        }

        while (*v5 < -1);
      }

      if (v5 == v7)
      {
        break;
      }

      if (!v8)
      {
        goto LABEL_26;
      }
    }

    v14 = v8 + 6;
    if (v8 + 6 == v9)
    {
      break;
    }

    while (1)
    {
      v15 = v14;
      v16 = v8[6];
      v4 = v8[7];
      v5 = v16;
      if (*v16 <= -2)
      {
        do
        {
          v17 = (__clz(__rbit64(((*v5 >> 7) & ~*v5 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
          v5 = (v5 + v17);
          v4 = (v4 + 12 * v17);
        }

        while (*v5 < -1);
      }

      v7 = &v8[9][v16];
      if (v5 != v7)
      {
        break;
      }

      v14 = v15 + 6;
      v8 = v15;
      if (v15 + 6 == v9)
      {
        goto LABEL_26;
      }
    }

    v8 = v15;
  }

  while (v15);
LABEL_26:
  if (!sub_329BC(&v32))
  {
    v22 = a1[249];
    for (i = a1[250]; v22 != i; ++v22)
    {
      v24 = a1[1];
      v25 = *(a1[246] + 80 * *v22);
      v31.n128_u32[0] = 1;
      v26 = sub_101F854(*v24, HIDWORD(v25) & 0xFFFF0000FFFFFFFFLL | (WORD1(v25) << 32), (v25 >> 1) & 1, &v31);
      if (v26)
      {
        v27 = HIDWORD(v26) == 0xFFFFFFFF;
      }

      else
      {
        v27 = 1;
      }

      if (!v27)
      {
        v28 = a1[1];
        v33 = v26;
        v31.n128_u64[0] = sub_10539D0(*v28, &v33);
        v31.n128_u64[1] = v29;
        sub_32114(&v32, &v31);
        operator new();
      }
    }
  }

  return v32.n128_u64[0];
}

void sub_1038134(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1038154(uint64_t a1, unint64_t a2)
{
  v5 = a2;
  sub_F98EF8(a1 + 1200, &v5, v6);
  if (!v6[0])
  {
    return 0;
  }

  sub_F98EF8(a1 + 1200, &v5, v6);
  v3 = *(a1 + 1968) + 80 * *(v6[3] + 8);
  if ((*(v3 + 72) & 0x80000000) != 0)
  {
    return 0;
  }

  else
  {
    return *(v3 + 32);
  }
}

uint64_t sub_10381DC(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v11 = a3;
  v12 = a2;
  sub_F98EF8(a1 + 1200, &v12, v13);
  if (!v13[0])
  {
    return 0;
  }

  sub_F98EF8(a1 + 1200, &v11, v13);
  if (!v13[0])
  {
    return 0;
  }

  v9 = v11;
  v10 = v12;
  sub_F98EF8(a1 + 1200, &v10, v13);
  v4 = *(v14 + 8);
  v5 = *(a1 + 1968);
  sub_F98EF8(a1 + 1200, &v9, v13);
  result = v10;
  if (v10)
  {
    v7 = *(a1 + 1968) + 80 * *(v14 + 8) + 8;
    v8 = v5 + 80 * v4 + 8;
    do
    {
      if (!v9)
      {
        return 0;
      }

      if (result == v9)
      {
        return result;
      }

      if (*v7 == *v8)
      {
        if (*(v7 + 4) >= *(v8 + 4))
        {
          goto LABEL_17;
        }
      }

      else if (*v7 >= *v8)
      {
LABEL_17:
        if ((*(v7 + 64) & 0x80000000) != 0)
        {
          v9 = 0;
        }

        else
        {
          v9 = *(v7 + 24);
          if (v9)
          {
            sub_F98EF8(a1 + 1200, &v9, v13);
            v7 = *(a1 + 1968) + 80 * *(v14 + 8) + 8;
          }
        }

        goto LABEL_8;
      }

      if ((*(v8 + 64) & 0x80000000) != 0)
      {
        return 0;
      }

      v10 = *(v8 + 24);
      if (!v10)
      {
        return 0;
      }

      sub_F98EF8(a1 + 1200, &v10, v13);
      v8 = *(a1 + 1968) + 80 * *(v14 + 8) + 8;
LABEL_8:
      result = v10;
    }

    while (v10);
  }

  return result;
}

uint64_t *sub_1038380(uint64_t **a1, unint64_t **a2, uint64_t a3, uint64_t **a4)
{
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  if (*a2 != v7)
  {
    v32 = a2;
    v33 = ((v5 - *a1) >> 5);
    do
    {
      v11 = *v6 >> 1;
      v12 = *v6 >> 16;
      v13 = **a4;
      v14 = HIDWORD(*v6);
      LODWORD(v34) = HIDWORD(*v6);
      WORD2(v34) = v12;
      BYTE6(v34) = ((v14 & 0xFFFE0000FFFFFFFFLL | (v12 << 32) & 0xFFFEFFFFFFFFFFFFLL | ((v11 & 1) << 48)) ^ 0x1000000000000) >> 48;
      if (sub_100A97C(v13 + 9960, &v34) == -1)
      {
        if (a3)
        {
          LODWORD(v34) = 0;
          sub_1053B80(a1 + 99, v6, &v34);
          sub_1054E9C(a1 + 99);
        }

        sub_1055328((a1 + 3), v6, &v34);
        v15 = v34;
        if (v36 == 1)
        {
          v16 = (*(v34 + 8) + 32 * v35);
          *v16 = *v6;
          v16[1] = 0;
          v16[2] = 0;
          v16[3] = 0;
        }

        v17 = (*(v15 + 8) + 32 * v35);
        v19 = v17[2];
        v18 = v17[3];
        if (v19 < v18)
        {
          *v19 = v33;
          v10 = v19 + 8;
        }

        else
        {
          v20 = v17[1];
          v21 = v19 - v20;
          v22 = (v19 - v20) >> 3;
          v23 = v22 + 1;
          if ((v22 + 1) >> 61)
          {
            sub_1794();
          }

          v24 = a3;
          v25 = v18 - v20;
          if (v25 >> 2 > v23)
          {
            v23 = v25 >> 2;
          }

          if (v25 >= 0x7FFFFFFFFFFFFFF8)
          {
            v26 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v26 = v23;
          }

          if (v26)
          {
            if (!(v26 >> 61))
            {
              operator new();
            }

            sub_1808();
          }

          v27 = (v19 - v20) >> 3;
          v28 = (8 * v22);
          v29 = (8 * v22 - 8 * v27);
          *v28 = v33;
          v10 = v28 + 1;
          memcpy(v29, v20, v21);
          v17[1] = v29;
          v17[2] = v10;
          v17[3] = 0;
          if (v20)
          {
            operator delete(v20);
          }

          a3 = v24;
        }

        v17[2] = v10;
      }

      v6 += 12;
    }

    while (v6 != v7);
    v5 = a1[1];
    a2 = v32;
  }

  if (v5 >= a1[2])
  {
    result = sub_1055A68(a1, a2);
  }

  else
  {
    *v5 = 0;
    v5[1] = 0;
    v5[2] = 0;
    v30 = a2[1];
    if (v30 != *a2)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v30 - *a2) >> 5) < 0x2AAAAAAAAAAAAABLL)
      {
        operator new();
      }

      sub_1794();
    }

    v5[3] = a2[3];
    result = v5 + 4;
    a1[1] = v5 + 4;
  }

  a1[1] = result;
  return result;
}

void sub_1038664(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

void sub_1038684(uint64_t a1, uint64_t *a2, unsigned int *a3, int a4)
{
  v4 = a2;
  if (*(a1 + 3048) == 1)
  {
    sub_1039C8C(a1, a2);
  }

  sub_1056F4C(*(a1 + 976) + 24, v4, &v73);
  if (!v73)
  {
    return;
  }

  sub_1056F4C(*(a1 + 976) + 24, v4, &v73);
  v6 = *(*(&v74 + 1) + 8);
  v66 = *(*(&v74 + 1) + 16);
  if (v6 == v66)
  {
    return;
  }

  __asm { FMOV            V0.2D, #1.0 }

  v71 = _Q0;
  v67 = v4;
  while (2)
  {
    v68 = v6;
    v11 = (**(a1 + 976) + 32 * *v6);
    v12 = (v11[1] - *v11) >> 5;
    v13 = (-1431655765 * v12);
    if (!v13)
    {
      goto LABEL_6;
    }

    v14 = 0;
    v69 = (-1431655765 * v12);
    while (2)
    {
      v15 = *v11 + 96 * v14;
      v16 = *v15;
      if (*v15 != *v4)
      {
        goto LABEL_10;
      }

      v17 = *a1;
      v18 = *(a1 + 2968);
      v19 = (v16 << 47) & 0x1000000000000;
      v20 = v16 << 16;
      if (*(*a1 + 9954) != 1)
      {
        goto LABEL_34;
      }

      v21 = 0;
      v22 = v16 & 0xFFFFFFFFFFFF0000;
      v23 = (v19 ^ 0x1000000000000uLL) >> 48;
      if (!v23)
      {
        ++v22;
      }

      for (i = (0x2127599BF4325C37 * (v22 ^ (v16 >> 23))) ^ ((0x2127599BF4325C37 * (v22 ^ (v16 >> 23))) >> 47); ; i = v21 + v26)
      {
        v26 = i & (*(v17 + 10016) - 1);
        v27 = *(*(v17 + 10032) + 8 * v26);
        if (*(v17 + 10024) == v27 && *(*a1 + 10028) == WORD2(v27) && *(*a1 + 10030) == BYTE6(v27))
        {
          goto LABEL_34;
        }

        if (!*(v17 + 10000) || *(v17 + 9992) != v27 || *(*a1 + 9996) != WORD2(v27))
        {
          break;
        }

        if (*(*a1 + 9998) != BYTE6(v27) && HIDWORD(v16) == v27)
        {
          goto LABEL_16;
        }

LABEL_20:
        ++v21;
      }

      if (HIDWORD(v16) != v27)
      {
        goto LABEL_20;
      }

LABEL_16:
      if (WORD2(v20) != WORD2(v27) || v23 != BYTE6(v27))
      {
        goto LABEL_20;
      }

      if (v26 != -1)
      {
        goto LABEL_10;
      }

LABEL_34:
      sub_F8EC88(v17 + 8, (v20 & 0xFFFF00000000 | HIDWORD(v16) | v19) ^ 0x1000000000000, v72);
      v73 = 0u;
      v74 = 0u;
      v75 = v71;
      v76 = 0x3FF0000000000000;
      v77 = 1;
      sub_10A8B08(v17 + 4392, &v73, v72, 0x3B9ACA00u, v18, *&v71, v29);
      if (v77)
      {
        LODWORD(v30) = v73;
        v31 = *&v75 * v30;
        if (v31 >= 0.0)
        {
          if (v31 < 4.50359963e15)
          {
            v32 = (v31 + v31) + 1;
LABEL_40:
            v31 = (v32 >> 1);
          }
        }

        else if (v31 > -4.50359963e15)
        {
          v32 = (v31 + v31) - 1 + (((v31 + v31) - 1) >> 63);
          goto LABEL_40;
        }

        v33 = *(&v75 + 1) * SDWORD1(v73);
        if (v33 >= 0.0)
        {
          if (v33 < 4.50359963e15)
          {
            v34 = (v33 + v33) + 1;
LABEL_46:
            v33 = (v34 >> 1);
          }
        }

        else if (v33 > -4.50359963e15)
        {
          v34 = (v33 + v33) - 1 + (((v33 + v33) - 1) >> 63);
          goto LABEL_46;
        }

        v35 = v74 + v31;
        v36 = DWORD1(v74) + v33;
        if (v35 != -1 && v36 != 0x7FFFFFFF)
        {
          v38 = *a1;
          v39 = *(a1 + 2968);
          v40 = *v4;
          v41 = HIDWORD(*v4);
          v42 = (*v4 << 47) & 0x1000000000000;
          v43 = *v4 << 16;
          if (*(*a1 + 9954) == 1)
          {
            v44 = 0;
            v45 = v40 & 0xFFFFFFFFFFFF0000;
            v46 = (v42 ^ 0x1000000000000uLL) >> 48;
            if (!v46)
            {
              ++v45;
            }

            v47 = (0x2127599BF4325C37 * (v45 ^ (v40 >> 23))) ^ ((0x2127599BF4325C37 * (v45 ^ (v40 >> 23))) >> 47);
            while (2)
            {
              v49 = v47 & (*(v38 + 10016) - 1);
              v50 = *(*(v38 + 10032) + 8 * v49);
              if (*(v38 + 10024) == v50 && *(*a1 + 10028) == WORD2(v50) && *(*a1 + 10030) == BYTE6(v50))
              {
                goto LABEL_74;
              }

              if (*(v38 + 10000) && *(v38 + 9992) == v50 && *(*a1 + 9996) == WORD2(v50))
              {
                if (*(*a1 + 9998) == BYTE6(v50) || v41 != v50)
                {
                  goto LABEL_59;
                }
              }

              else if (v41 != v50)
              {
LABEL_59:
                v47 = ++v44 + v49;
                continue;
              }

              break;
            }

            if (WORD2(v43) == WORD2(v50) && v46 == BYTE6(v50))
            {
              if (v49 != -1)
              {
                goto LABEL_76;
              }

              goto LABEL_74;
            }

            goto LABEL_59;
          }

LABEL_74:
          v52 = 1000000000 - *(v15 + 8);
          sub_F8EC88(v38 + 8, (v43 & 0xFFFF00000000 | v41 | v42) ^ 0x1000000000000, v72);
          v73 = 0u;
          v74 = 0u;
          v75 = v71;
          v76 = 0x3FF0000000000000;
          v77 = 1;
          sub_10A8B08(v38 + 4392, &v73, v72, v52, v39, *&v71, v53);
          if (v77 == 1)
          {
            v55 = sub_F8634C(&v73, &v75, v54);
            v56 = (v74 + v55) | ((DWORD1(v74) + HIDWORD(v55)) << 32);
          }

          else
          {
LABEL_76:
            v56 = 0x7FFFFFFFFFFFFFFFLL;
          }

          v4 = v67;
          v13 = v69;
          v57 = v35 - v56;
          v58 = v36 - HIDWORD(v56);
          if (*a3 == v35 - v56)
          {
            if (a3[1] >= v58)
            {
LABEL_81:
              v60 = *a3;
              v59 = a3[1];
              v61 = *a1;
              v62 = *(a1 + 2968);
              v73 = 0u;
              v74 = 0u;
              v75 = v71;
              v76 = 0x3FF0000000000000;
              v77 = 1;
              sub_10A5C78((v61 + 4392), &v73, v15, v15 + 8, v62);
              if (v77)
              {
                v64 = sub_F8634C(&v73, &v75, v63);
                if (v74 + v64 != -1 && DWORD1(v74) + HIDWORD(v64) != 0x7FFFFFFF)
                {
                  *&v73 = (v60 - v57 + v74 + v64) | ((v59 - v58 + DWORD1(v74) + HIDWORD(v64)) << 32);
                  sub_1034078(a1, v67, &v73, *v68, a4, v14, 0, 0);
                }
              }
            }
          }

          else if (*a3 >= v57)
          {
            goto LABEL_81;
          }
        }
      }

LABEL_10:
      if (++v14 != v13)
      {
        continue;
      }

      break;
    }

LABEL_6:
    v6 = v68 + 1;
    if (v68 + 1 != v66)
    {
      continue;
    }

    break;
  }
}

BOOL sub_1038D8C(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 3056);
  v3 = *(a1 + 3072);
  v4 = *(a1 + 3064);
  v5 = *(a1 + 3052);
  if (v2 + v3 - v4 < v5)
  {
    return 0;
  }

  if (v4 == v3)
  {
    *(a1 + 3064) = 0;
    *(a1 + 3072) = 0;
    *(a1 + 3080) = 0;
    result = v2 >= v5;
    if (!v4)
    {
      return result;
    }

    goto LABEL_12;
  }

  do
  {
    v7 = *(a1 + 928) + 24 * *v4;
    v9 = *(v7 + 8);
    v8 = v7 + 8;
    v10 = *a2 >= v9;
    if (*a2 == v9)
    {
      if (a2[1] < *(v8 + 4))
      {
        goto LABEL_10;
      }
    }

    else if (!v10)
    {
LABEL_10:
      operator new();
    }

    ++*(a1 + 3056);
    ++v4;
  }

  while (v4 != v3);
  v4 = *(a1 + 3064);
  v11 = *(a1 + 3056);
  v12 = *(a1 + 3052);
  *(a1 + 3064) = 0;
  *(a1 + 3072) = 0;
  *(a1 + 3080) = 0;
  result = v11 >= v12;
  if (v4)
  {
LABEL_12:
    v13 = result;
    operator delete(v4);
    return v13;
  }

  return result;
}

void sub_1038F74(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1038F90(uint64_t a1, uint64_t *a2, unsigned int *a3, int a4)
{
  if (*(a1 + 3048) != 1)
  {
    return 4294967294;
  }

  sub_1038684(a1, a2, a3, a4);
  result = sub_10394D0(*(a1 + 3032), *a2);
  if (result)
  {
    v36 = a4;
    v9 = *result;
    v10 = *(result + 8);
    if (*result != v10)
    {
      do
      {
        v15 = *(a1 + 1040);
        if (v15 != -1)
        {
          v16 = *(v9 + 16);
          if (v16 != -1 && *(v9 + 20) != 0x7FFFFFFF && *(v9 + 24) != 0x7FFFFFFFFFFFFFFFLL && v16 + *a3 > v15)
          {
            goto LABEL_7;
          }
        }

        v17 = sub_1039678(a1, v9);
        v18 = *(v9 + 16);
        if (v18 == -1 || (v19 = *(v9 + 20), v19 == 0x7FFFFFFF) || *(v9 + 24) == 0x7FFFFFFFFFFFFFFFLL)
        {
          v11 = *(a1 + 3904);
          v12 = v17 >> 6;
          v13 = 1 << v17;
          v14 = *(v11 + 8 * (v17 >> 6));
          if ((v14 & (1 << v17)) == 0)
          {
            v22 = *(a1 + 24) + 32 * v17;
            v23 = *v22;
            v24 = *(v22 + 8);
            if (*v22 != v24)
            {
              do
              {
                v38[0] = 0;
                sub_1053B80((a1 + 816), v23, v38);
                sub_1054E9C((a1 + 816));
                v23 += 12;
              }

              while (v23 != v24);
              v11 = *(a1 + 3904);
              v14 = *(v11 + 8 * v12);
            }

            *(v11 + 8 * v12) = v14 | v13;
          }

          ++*(a1 + 3936);
          goto LABEL_7;
        }

        if (*(a1 + 3049) == 1 && ((v20 = *(a1 + 1044), v20 == 0x7FFFFFFF) || (v19 + a3[1]) <= v20))
        {
          v21 = v17;
          if (!*(*(a1 + 3880) + 40 * v17 + 32))
          {
            v25.n128_f64[0] = sub_1039A50(*(a1 + 3032), *v9, v38);
            v26 = v39;
            if (!v39)
            {
              v29 = *(a1 + 3904);
              v30 = v21 >> 6;
              v31 = 1 << v21;
              v32 = *(v29 + 8 * (v21 >> 6));
              if ((v32 & (1 << v21)) == 0)
              {
                v33 = *(a1 + 24) + 32 * v21;
                v35 = *v33;
                v34 = *(v33 + 8);
                if (*v33 != v34)
                {
                  do
                  {
                    LODWORD(v37) = 0;
                    sub_1053B80((a1 + 816), v35, &v37);
                    sub_1054E9C((a1 + 816));
                    v35 += 12;
                  }

                  while (v35 != v34);
                  v29 = *(a1 + 3904);
                  v31 = 1 << v21;
                  v30 = v21 >> 6;
                  v32 = *(v29 + 8 * (v21 >> 6));
                }

                *(v29 + 8 * v30) = v32 | v31;
              }

              ++*(a1 + 3928);
              goto LABEL_37;
            }

            v27 = *(*(a1 + 3880) + 40 * v21 + 32);
            if (v27 == -1)
            {
              if (v39 == -1)
              {
                goto LABEL_37;
              }
            }

            else if (v39 == -1)
            {
              v28 = *(a1 + 3880) + 40 * v21;
              (off_2674F50[v27])(&v37, v25.n128_f64[0]);
              *(v28 + 32) = -1;
LABEL_37:
              if (v39 != -1)
              {
                (off_2674F50[v39])(&v37, v38);
              }

              if (!v26)
              {
                goto LABEL_7;
              }

              v18 = *(v9 + 16);
              v19 = *(v9 + 20);
              goto LABEL_41;
            }

            v37 = *(a1 + 3880) + 40 * v21;
            (off_2674F68[v39])(&v37, v25);
            goto LABEL_37;
          }
        }

        else
        {
          v21 = v17;
        }

LABEL_41:
        *v38 = (v18 + *a3) | ((v19 + a3[1]) << 32);
        sub_1034078(a1, a2, v38, v21, v36, *(v9 + 8), 0, 1);
LABEL_7:
        v9 += 32;
      }

      while (v9 != v10);
    }

    return *(*(a1 + 3032) + 4364);
  }

  return result;
}

void sub_103931C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_4A48(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1039358(uint64_t a1, unint64_t *a2, unsigned int *a3, unsigned int *a4, uint64_t a5, unsigned int *a6)
{
  v6 = *a6;
  if (v6)
  {
    v7 = a5;
    do
    {
      v12 = *(a1 + 8);
      v13 = *a2;
      v14 = *a2 >> 16;
      LODWORD(v22) = v6;
      if (sub_101F374(*v12, HIDWORD(v13) & 0xFFFF0000FFFFFFFFLL | (v14 << 32), &v22))
      {
        v15 = *(a1 + 8);
        v16 = *a2;
        v17 = *a2 >> 16;
        v23 = v6;
        v18 = sub_101F854(*v15, HIDWORD(v16) & 0xFFFF0000FFFFFFFFLL | (v17 << 32), (v16 >> 1) & 1, &v23);
        v22 = v18;
        if (v18)
        {
          v19 = v18 >= 0xFFFFFFFF00000000;
        }

        else
        {
          v19 = 1;
        }

        if (v19)
        {
          v20 = *(a1 + 20);
          if (v20 != -1 && v6 == v20)
          {
            return 0xFFFFFFFFLL;
          }
        }

        else if (sub_10550EC(a1 + 1064, &v22) == -1 && sub_10550EC(*(a1 + 976) + 800, &v22) == -1)
        {
          if (*(a1 + 3048) == 1 && v6 < *(*(a1 + 3032) + 4360))
          {
            return 0;
          }

          if (*(*a1 + 9953) != 1 || !sub_105F33C(*a1 + 4480, v22, a3, *a4, v7))
          {
            return v6;
          }
        }
      }

      v6 = (v6 - 1);
    }

    while (v6);
  }

  return v6;
}

void *sub_10394D0(uint64_t a1, unint64_t a2)
{
  LODWORD(v26[0]) = *(a1 + 4360);
  v28 = sub_101F854(*(a1 + 24), HIDWORD(a2) & 0xFFFF0000FFFFFFFFLL | (WORD1(a2) << 32), (a2 >> 1) & 1, v26);
  v4 = HIDWORD(v28);
  if (v28)
  {
    v5 = v4 == 0xFFFFFFFF;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  v26[0] = 0;
  v26[1] = 0;
  v6 = sub_1055EF8(*(a1 + 32), v28, 1);
  if (!v6)
  {
    return 0;
  }

  v7 = &v6[-*v6];
  if (*v7 < 5u)
  {
    return 0;
  }

  v8 = *(v7 + 2);
  if (!v8)
  {
    return 0;
  }

  v9 = &v6[v8 + *&v6[v8]];
  if (*v9 <= v4)
  {
    return 0;
  }

  v10 = &v9[4 * v4 + 4 + *&v9[4 * v4 + 4]];
  v11 = &v10[-*v10];
  if (*v11 < 0xBu)
  {
    return 0;
  }

  v12 = *(v11 + 5);
  if (!v12)
  {
    return 0;
  }

  v13 = &v10[v12 + *&v10[v12]];
  v16 = *v13;
  v14 = v13 + 4;
  v15 = v16;
  v17 = &v14[v16];
  v18 = v14;
  if (v16)
  {
    v18 = v14;
    do
    {
      v19 = (v18 + ((4 * v15) & 0x7FFFFFFF8));
      v21 = *v19;
      v20 = v19 + 1;
      v22 = v15 >> 1;
      v15 += ~(v15 >> 1);
      if (v21 >= a2)
      {
        v15 = v22;
      }

      else
      {
        v18 = v20;
      }
    }

    while (v15);
  }

  if (v18 == v17)
  {
    return 0;
  }

  if (*v18 != a2)
  {
    return 0;
  }

  v27 = (v18 - v14) >> 3;
  if (v27 == 0xFFFF)
  {
    return 0;
  }

  v23 = *(a1 + 8);
  v24 = (a1 + 4440);
  sub_1058664(v23, &v28, &v27, v24);
  return v24;
}

uint64_t sub_1039678(uint64_t *a1, uint64_t **a2)
{
  sub_1034760((a1 + 386), a2, v43);
  if (v43[0])
  {
    return v43[3][1];
  }

  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[379];
  v44 = *a2;
  sub_105733C(*(v7 + 8), &v44, (v7 + 4392));
  sub_10153E4(v7 + 40, (v7 + 4392), *(v7 + 4368), 0, &__p);
  v44 = a1;
  sub_1038380(a1 + 3, &__p, 0, &v44);
  v4 = (v6 - v5) >> 5;
  if (__p)
  {
    v41 = __p;
    operator delete(__p);
  }

  sub_105772C((a1 + 386), a2, &__p);
  v8 = __p;
  if (v42 == 1)
  {
    v9 = (*(__p + 1) + 16 * v41);
    *v9 = *a2;
    v9[1] = -1;
  }

  *(v8[1] + 16 * v41 + 8) = v4;
  v10 = a1[483];
  v11 = a1[484];
  if (v10 >= v11)
  {
    v13 = a1[482];
    v14 = v10 - v13;
    v15 = (v10 - v13) >> 3;
    v16 = v15 + 1;
    if ((v15 + 1) >> 61)
    {
      sub_1794();
    }

    v17 = v11 - v13;
    if (v17 >> 2 > v16)
    {
      v16 = v17 >> 2;
    }

    if (v17 >= 0x7FFFFFFFFFFFFFF8)
    {
      v18 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v18 = v16;
    }

    if (v18)
    {
      if (!(v18 >> 61))
      {
        operator new();
      }

      goto LABEL_49;
    }

    v19 = v15;
    v20 = (8 * v15);
    v21 = *a2;
    v22 = &v20[-v19];
    *v20 = v21;
    v12 = (v20 + 1);
    memcpy(v22, v13, v14);
    a1[482] = v22;
    a1[483] = v12;
    a1[484] = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v10 = *a2;
    v12 = (v10 + 8);
  }

  a1[483] = v12;
  v23 = a1[489];
  v24 = a1[490];
  if (v23 == v24 << 6)
  {
    if ((v23 + 1) < 0)
    {
      sub_1794();
    }

    v25 = v24 << 7;
    if (v25 <= (v23 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v25 = (v23 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v23 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v26 = v25;
    }

    else
    {
      v26 = 0x7FFFFFFFFFFFFFFFLL;
    }

    sub_3D41C((a1 + 488), v26);
    v23 = a1[489];
  }

  a1[489] = v23 + 1;
  *(a1[488] + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v23);
  v27 = a1[486];
  if (v27 >= a1[487])
  {
    v28 = sub_1052CA0((a1 + 485));
  }

  else
  {
    *(v27 + 32) = 0;
    *v27 = 0u;
    *(v27 + 16) = 0u;
    v28 = v27 + 40;
  }

  a1[486] = v28;
  v29 = a1[117];
  v30 = a1[116];
  v31 = 0xAAAAAAAAAAAAAAABLL * ((v29 - v30) >> 3);
  if (v4 >= v31)
  {
    v32 = a1[118];
    if (v29 < v32)
    {
      *v29 = 0;
      *(v29 + 8) = xmmword_2297C80;
      v33 = v29 + 24;
LABEL_45:
      a1[117] = v33;
      return v4;
    }

    v34 = v31 + 1;
    if (v31 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1794();
    }

    v35 = 0xAAAAAAAAAAAAAAABLL * ((v32 - v30) >> 3);
    if (2 * v35 > v34)
    {
      v34 = 2 * v35;
    }

    if (v35 >= 0x555555555555555)
    {
      v36 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v36 = v34;
    }

    if (!v36)
    {
      v37 = 8 * ((v29 - v30) >> 3);
      *v37 = 0;
      *(v37 + 8) = xmmword_2297C80;
      v33 = v37 + 24;
      v38 = (v37 - (v29 - v30));
      memcpy(v38, v30, v29 - v30);
      a1[116] = v38;
      a1[117] = v33;
      a1[118] = 0;
      if (v30)
      {
        operator delete(v30);
      }

      goto LABEL_45;
    }

    if (v36 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

LABEL_49:
    sub_1808();
  }

  return v4;
}

void sub_1039A34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_1039A50@<D0>(uint64_t a1@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 4385) != 1)
  {
    goto LABEL_17;
  }

  v4 = *(a1 + 8);
  if (*(v4 + 3880))
  {
    goto LABEL_3;
  }

  v16 = a1;
  v17 = a2;
  v18 = sub_3BF72C(v4 + 8, a2, 1);
  v5 = v18;
  if (v18)
  {
    v19 = &v18[-*v18];
    a1 = v16;
    if (*v19 < 7u)
    {
      v5 = 0;
      a2 = v17;
    }

    else
    {
      a2 = v17;
      if (!*(v19 + 3) || (v20 = (v5 + *(v19 + 3) + *(v5 + *(v19 + 3))), *v20 <= HIDWORD(v17)))
      {
LABEL_3:
        v5 = 0;
        goto LABEL_4;
      }

      v5 = (&v20[(v17 >> 32) + 1] + v20[(v17 >> 32) + 1]);
    }
  }

  else
  {
    a2 = v17;
    a1 = v16;
  }

LABEL_4:
  v6 = (v5 - *v5);
  if (*v6 >= 9u && (v7 = v6[4]) != 0)
  {
    v8 = (v5 + v7 + *(v5 + v7));
    v9 = (v8 - *v8);
    v10 = *v9;
    if (v10 < 5)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v8 = 0;
    v9 = (&loc_1120530 + 1);
    v10 = *(&loc_1120530 + 1);
    if (*(&loc_1120530 + 1) < 5u)
    {
      goto LABEL_17;
    }
  }

  v11 = v9[2];
  if (v9[2])
  {
    v11 += v8 + *(v8 + v11);
  }

  if (v10 >= 7)
  {
    v12 = v9[3];
    if (v12 && v11 != 0)
    {
      v21 = (v8 + v12);
      v22 = *v21;
      *a3 = v11;
      *(a3 + 8) = v21 + v22;
      *&result = 0xFFFFFFFFLL;
      *(a3 + 16) = 0xFFFFFFFFLL;
      *(a3 + 24) = -1;
      *(a3 + 32) = 2;
      return result;
    }
  }

LABEL_17:
  sub_10588D4(a1, a2, &v24);
  if (!v24)
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    v15 = v25;
    if (!v25)
    {
      return result;
    }

    goto LABEL_23;
  }

  v14 = v25;
  *a3 = v24;
  *(a3 + 8) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a3 + 32) = 1;
  v15 = v25;
  if (v25)
  {
LABEL_23:
    if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }
  }

  return result;
}

void sub_1039C8C(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[379];
  v5 = *a2;
  sub_1057E78(v2[1], &v5, v2 + 552);
  v3 = v2[552];
  v4 = v2[553];
  if (v4 != v3)
  {
    if (((v4 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_1039D54(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = a2;
  *(a1 + 8) = a2 + 15152;
  *(a1 + 16) = -1;
  sub_103A0DC(a1 + 24, a2);
  *(a1 + 944) = 0;
  *(a1 + 928) = 0u;
  operator new();
}

void sub_103A02C(_Unwind_Exception *a1)
{
  sub_360988(v1 + 2080);
  sub_584EC4((v1 + 1200));
  v5 = *(v1 + 1168);
  if (v5)
  {
    *(v1 + 1176) = v5;
    operator delete(v5);
  }

  sub_102E120((v1 + 1056));
  sub_21DB4B4(v1 + 984);
  v6 = *v3;
  if (*v3)
  {
    *(v1 + 960) = v6;
    operator delete(v6);
    v7 = *v2;
    if (!*v2)
    {
LABEL_5:
      sub_C65AF0((v1 + 24));
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v7 = *v2;
    if (!*v2)
    {
      goto LABEL_5;
    }
  }

  *(v1 + 936) = v7;
  operator delete(v7);
  sub_C65AF0((v1 + 24));
  _Unwind_Resume(a1);
}

uint64_t sub_103A0DC(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = 0;
  *a1 = 0u;
  *(a1 + 24) = &unk_2290750;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = &unk_2290750;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 120) = &unk_2290750;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0u;
  *(a1 + 160) = 0;
  *(a1 + 168) = &unk_2290750;
  *(a1 + 192) = 0;
  *(a1 + 176) = 0u;
  *(a1 + 208) = 0;
  *(a1 + 216) = &unk_2290750;
  *(a1 + 240) = 0;
  *(a1 + 224) = 0u;
  *(a1 + 256) = 0;
  *(a1 + 264) = &unk_2290750;
  *(a1 + 288) = 0;
  *(a1 + 272) = 0u;
  *(a1 + 304) = 0;
  *(a1 + 312) = &unk_2290750;
  *(a1 + 336) = 0;
  *(a1 + 320) = 0u;
  *(a1 + 352) = 0;
  *(a1 + 360) = &unk_2290750;
  *(a1 + 384) = 0;
  *(a1 + 368) = 0u;
  *(a1 + 400) = 0;
  *(a1 + 408) = &unk_2290750;
  *(a1 + 432) = 0;
  *(a1 + 416) = 0u;
  *(a1 + 448) = 0;
  *(a1 + 456) = &unk_2290750;
  *(a1 + 480) = 0;
  *(a1 + 464) = 0u;
  *(a1 + 496) = 0;
  *(a1 + 504) = &unk_2290750;
  *(a1 + 544) = 0;
  *(a1 + 528) = 0;
  *(a1 + 512) = 0u;
  *(a1 + 552) = &unk_2290750;
  *(a1 + 592) = 0;
  *(a1 + 576) = 0;
  *(a1 + 560) = 0u;
  *(a1 + 600) = &unk_2290750;
  *(a1 + 640) = 0;
  *(a1 + 624) = 0;
  *(a1 + 608) = 0u;
  *(a1 + 648) = &unk_2290750;
  *(a1 + 688) = 0;
  *(a1 + 672) = 0;
  *(a1 + 656) = 0u;
  *(a1 + 696) = &unk_2290750;
  *(a1 + 736) = 0;
  *(a1 + 720) = 0;
  *(a1 + 704) = 0u;
  *(a1 + 744) = &unk_2290750;
  *(a1 + 784) = 0;
  *(a1 + 768) = 0;
  *(a1 + 752) = 0u;
  sub_1058A58(a1 + 792, (a2 + 15152));
  return a1;
}

void sub_103A208(_Unwind_Exception *a1)
{
  sub_4821F8(v2);
  sub_39393C(v1);
  _Unwind_Resume(a1);
}

unint64_t sub_103A228(std::chrono::duration<long long, std::ratio<1, 1000000>>::rep a1, uint64_t a2, unint64_t **a3, uint64_t a4, int *a5, char a6, int a7, int a8, unsigned int a9)
{
  v37 = a8;
  sub_103A7D0(a1);
  if (*a2 == *(a2 + 8))
  {
    if (!sub_7E7E4(1u))
    {
      goto LABEL_42;
    }

    sub_19594F8(&__t.__d_.__rep_);
    sub_4A5C(&__t, "p2p_query called with empty origin terminal", 43);
    if ((v36 & 0x10) != 0)
    {
      v20 = v35;
      if (v35 < v32)
      {
        v35 = v32;
        v20 = v32;
      }

      v21 = v31;
      v19 = v20 - v31;
      if (v20 - v31 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_34;
      }
    }

    else
    {
      if ((v36 & 8) == 0)
      {
        v19 = 0;
        v25 = 0;
LABEL_37:
        *(&__dst + v19) = 0;
        sub_7E854(&__dst, 1u);
        if (v25 < 0)
        {
          operator delete(__dst);
        }

        if (v34 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v28);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_42;
      }

      v21 = v29;
      v19 = v30 - v29;
      if ((v30 - v29) > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_34:
        sub_3244();
      }
    }

    if (v19 >= 0x17)
    {
      operator new();
    }

    v25 = v19;
    if (!v19)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  if (*a3 == a3[1])
  {
    if (sub_7E7E4(1u))
    {
      sub_19594F8(&__t.__d_.__rep_);
      sub_4A5C(&__t, "p2p_query called with empty destination terminal", 48);
      if ((v36 & 0x10) != 0)
      {
        v22 = v35;
        if (v35 < v32)
        {
          v35 = v32;
          v22 = v32;
        }

        v21 = v31;
        v19 = v22 - v31;
        if (v22 - v31 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_45;
        }
      }

      else
      {
        if ((v36 & 8) == 0)
        {
          v19 = 0;
          v25 = 0;
          goto LABEL_37;
        }

        v21 = v29;
        v19 = v30 - v29;
        if ((v30 - v29) > 0x7FFFFFFFFFFFFFF7)
        {
LABEL_45:
          sub_3244();
        }
      }

      if (v19 >= 0x17)
      {
        operator new();
      }

      v25 = v19;
      if (!v19)
      {
        goto LABEL_37;
      }

LABEL_36:
      memmove(&__dst, v21, v19);
      goto LABEL_37;
    }

LABEL_42:
    v17 = 0x7FFFFFFF00000000;
    v18 = 0xFFFFFFFFLL;
    return v18 | v17;
  }

  v16 = *a5;
  if (*a5 == 0x7FFFFFFF)
  {
    __t.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    v16 = std::chrono::system_clock::to_time_t(&__t);
  }

  *(a1 + 2960) = v16;
  *(a1 + 2964) = a6;
  *(a1 + 2968) = a4;
  *(a1 + 1040) = a7;
  if (a1 + 1168 != a2)
  {
    sub_C70E60((a1 + 1168), *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 5));
  }

  *(a1 + 1192) = *(a2 + 24);
  __t.__d_.__rep_ = a1;
  sub_103E178((a1 + 24), a3, 1, &__t);
  *(a1 + 976) = a1 + 24;
  if (!(*(a1 + 112) + *(a1 + 64) + *(a1 + 160) + *(a1 + 208) + *(a1 + 256) + *(a1 + 304) + *(a1 + 352) + *(a1 + 400) + *(a1 + 448) + *(a1 + 496) + *(a1 + 544) + *(a1 + 592) + *(a1 + 640) + *(a1 + 688) + *(a1 + 736) + *(a1 + 784)))
  {
    goto LABEL_42;
  }

  sub_103AB18(a1);
  __t.__d_.__rep_ = 0;
  rep = 0;
  v28.__locale_ = 0;
  sub_103B424(a1, &__t);
  if (__t.__d_.__rep_)
  {
    rep = __t.__d_.__rep_;
    operator delete(__t.__d_.__rep_);
  }

  sub_103BA20(a1);
  sub_103C024(a1, &v37, a9);
  v18 = *(*(a1 + 928) + 8);
  v17 = v18 & 0xFFFFFFFF00000000;
  v18 = v18;
  return v18 | v17;
}

void sub_103A73C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_1959728(&a16);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a16);
  _Unwind_Resume(a1);
}

double sub_103A7D0(uint64_t a1)
{
  v2 = a1 + 2080;
  v3 = 768;
  do
  {
    if (*(v2 + 16))
    {
      v4 = *(v2 + 24);
      if (v4 >= 0x80)
      {
        operator delete(*v2);
        *(v2 + 40) = 0;
        *v2 = &unk_2290750;
        *(v2 + 8) = 0;
        *(v2 + 16) = 0;
        *(v2 + 24) = 0;
      }

      else if (v4)
      {
        *(v2 + 16) = 0;
        memset(*v2, 128, v4 + 8);
        *(*v2 + v4) = -1;
        v5 = *(v2 + 24);
        if (v5 == 7)
        {
          v6 = 6;
        }

        else
        {
          v6 = v5 - (v5 >> 3);
        }

        *(v2 + 40) = v6 - *(v2 + 16);
      }
    }

    v2 += 48;
    v3 -= 48;
  }

  while (v3);
  v7 = a1 + 1200;
  *(a1 + 2056) = *(a1 + 2048);
  *(a1 + 2032) = *(a1 + 2024);
  *(a1 + 2072) = 0;
  *(a1 + 1976) = *(a1 + 1968);
  v8 = 768;
  do
  {
    if (*(v7 + 16))
    {
      v9 = *(v7 + 24);
      if (v9 >= 0x80)
      {
        operator delete(*v7);
        *(v7 + 40) = 0;
        *v7 = &unk_2290750;
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        *(v7 + 24) = 0;
      }

      else if (v9)
      {
        *(v7 + 16) = 0;
        memset(*v7, 128, v9 + 8);
        *(*v7 + v9) = -1;
        v10 = *(v7 + 24);
        if (v10 == 7)
        {
          v11 = 6;
        }

        else
        {
          v11 = v10 - (v10 >> 3);
        }

        *(v7 + 40) = v11 - *(v7 + 16);
      }
    }

    v7 += 48;
    v8 -= 48;
  }

  while (v8);
  *(a1 + 2000) = *(a1 + 1992);
  *(a1 + 2016) = 0;
  *(a1 + 1016) = *(a1 + 1008);
  *(a1 + 992) = *(a1 + 984);
  *(a1 + 1032) = 0;
  *(a1 + 1040) = -NAN;
  *(a1 + 20) = -1;
  *(a1 + 1048) = 0;
  sub_1053AC0(a1 + 1064);
  sub_1053AC0(a1 + 2856);
  *(a1 + 1176) = *(a1 + 1168);
  v12 = *(a1 + 952);
  v13 = *(a1 + 960);
  if (v12 != v13)
  {
    do
    {
      v14 = *v12++;
      v15 = *(a1 + 928) + 24 * v14;
      *v15 = 0;
      *(v15 + 8) = xmmword_2297C80;
    }

    while (v12 != v13);
    v12 = *(a1 + 952);
  }

  *(a1 + 960) = v12;
  v17 = *(a1 + 24);
  v16 = *(a1 + 32);
  if (v16 != v17)
  {
    v18 = *(a1 + 32);
    do
    {
      v20 = *(v18 - 32);
      v18 -= 32;
      v19 = v20;
      if (v20)
      {
        *(v16 - 24) = v19;
        operator delete(v19);
      }

      v16 = v18;
    }

    while (v18 != v17);
  }

  *(a1 + 32) = v17;
  sub_3068EC(a1 + 48);
  sub_1053AC0(a1 + 824);
  *(a1 + 2960) = 0x7FFFFFFF;
  *(a1 + 3048) = 0;
  v21 = a1 + 3088;
  v22 = 768;
  do
  {
    if (*(v21 + 16))
    {
      v23 = *(v21 + 24);
      if (v23 >= 0x80)
      {
        operator delete(*v21);
        *(v21 + 40) = 0;
        *v21 = &unk_2290750;
        *(v21 + 8) = 0;
        *(v21 + 16) = 0;
        *(v21 + 24) = 0;
      }

      else if (v23)
      {
        *(v21 + 16) = 0;
        memset(*v21, 128, v23 + 8);
        *(*v21 + v23) = -1;
        v24 = *(v21 + 24);
        if (v24 == 7)
        {
          v25 = 6;
        }

        else
        {
          v25 = v24 - (v24 >> 3);
        }

        *(v21 + 40) = v25 - *(v21 + 16);
      }
    }

    v21 += 48;
    v22 -= 48;
  }

  while (v22);
  *(a1 + 3864) = *(a1 + 3856);
  v26 = *(a1 + 3888);
  v27 = *(a1 + 3880);
  if (v26 != v27)
  {
    do
    {
      v28 = v26 - 40;
      v29 = *(v26 - 8);
      if (v29 != -1)
      {
        (off_2674F50[v29])(&v31, v26 - 40);
      }

      *(v26 - 8) = -1;
      v26 -= 40;
    }

    while (v28 != v27);
  }

  *(a1 + 3888) = v27;
  *(a1 + 3912) = 0;
  result = 0.0;
  *(a1 + 3928) = 0u;
  return result;
}

void sub_103AB18(void *a1)
{
  if (*(a1 + 2964) == 2 && (v2 = a1[371], *(v2 + 204) == 1) && *(v2 + 177) == 1 && *(*a1 + 31328) == 1 && sub_585D8((*a1 + 8)) && (v3 = *(a1[371] + 200), v3 != -1))
  {
    v4 = sub_101E508(a1[1]) - 1;
    if (v4 >= v3)
    {
      v4 = v3;
    }
  }

  else
  {
    v4 = 0;
  }

  v71 = v4;
  __p = 0;
  v69 = 0;
  v70 = 0;
  v5 = *a1;
  v6 = *a1 + 28672;
  v7 = *(*a1 + 31392);
  if (v7)
  {
    v8 = 8 * v7;
    v9 = *(*a1 + 31408);
    while (1)
    {
      v10 = BYTE6(*v9);
      v11 = HIDWORD(*v9);
      if ((*(*a1 + 31400) != *v9 || *(*a1 + 31404) != v11 || *(*a1 + 31406) != v10) && (!*(*&v5 + 31376) || __PAIR64__(*(*a1 + 31372), *(*a1 + 31368)) != __PAIR64__(v11, *v9) || *(*a1 + 31374) != v10))
      {
        break;
      }

      ++v9;
      v8 -= 8;
      if (!v8)
      {
        goto LABEL_79;
      }
    }
  }

  else
  {
    v9 = *(*a1 + 31408);
  }

  v12 = *(*a1 + 31408) + 8 * v7;
  if (v9 == v12)
  {
LABEL_79:
    v13 = 0;
    v14 = 0;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v66 = (a1 + 370);
    __asm { FMOV            V0.2D, #1.0 }

    v65 = _Q0;
    v64 = *a1;
    do
    {
      v67 = (*v9 >> 16) & 0xFFFF0000 | (*v9 << 32) | (2 * ((*v9 & 0xFF000000000000) == 0));
      if (v71 && ((v19 = *a1, v20 = a1[371], v21 = *(a1 + 2964), sub_F8EC88(*a1 + 8, *v9, &v72), v80[0] = *v66, v75 = 0u, v76 = 0u, v77 = v65, v78 = 0x3FF0000000000000, v79 = 1, sub_10AFF14(*&v19 + 9736, &v75, &v72, 0x3B9ACA00u, v20, v80, v21), (v79 & 1) == 0) || (v23 = sub_F8634C(&v75, &v77, v22), v76 + v23 == -1) || DWORD1(v76) + HIDWORD(v23) == 0x7FFFFFFF || *(&v76 + 1) + v24 == 0x7FFFFFFFFFFFFFFFLL))
      {
        v25 = a1[371];
        if (*(v25 + 177) == 1)
        {
          v26 = *(v25 + 196);
        }

        else
        {
          v26 = -1;
        }

        v27 = sub_101E508(a1[1]) - 1;
        if (v27 >= v26)
        {
          v28 = v26;
        }

        else
        {
          v28 = v27;
        }

        if (v28 <= v71 || (sub_103FDF0(*a1, &v67, v28, a1[371], v66, *(a1 + 2964)) & 1) != 0)
        {
          sub_1053B80(a1 + 132, &v67, &v71);
          sub_1059D34(a1 + 132);
          v29 = v14;
          LODWORD(v75) = v71 - 1;
          sub_1053B80(a1 + 356, &v67, &v75);
          sub_1059D34(a1 + 356);
          v30 = a1[1];
          LODWORD(v75) = v71;
          v31 = sub_101F854(*v30, HIDWORD(v67) & 0xFFFF0000FFFFFFFFLL | (WORD1(v67) << 32), (v67 & 2) == 0, &v75);
          v32 = v14;
          if (v14 == v13 || v13[-1].i64[1] != v31)
          {
            if (v13 >= v70)
            {
              v33 = v13 - v14;
              v34 = (v13 - v14) >> 3;
              v35 = v34 + 1;
              if ((v34 + 1) >> 61)
              {
                sub_1794();
              }

              v36 = v70 - v14;
              if ((v70 - v14) >> 2 > v35)
              {
                v35 = v36 >> 2;
              }

              if (v36 >= 0x7FFFFFFFFFFFFFF8)
              {
                v37 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v37 = v35;
              }

              if (v37)
              {
                if (!(v37 >> 61))
                {
                  operator new();
                }

                sub_1808();
              }

              v32 = 0;
              v38 = (8 * v34);
              *v38 = v31;
              v13 = (v38 + 1);
              memcpy(0, v14, v33);
              __p = 0;
              v69 = v13;
              v70 = 0;
            }

            else
            {
              v13->i64[0] = v31;
              v13 = (v13 + 8);
            }

            v29 = v32;
            v69 = v13;
          }

          v39 = a1[1];
          LODWORD(v75) = v71;
          v40 = sub_101F854(*v39, HIDWORD(v67) & 0xFFFF0000FFFFFFFFLL | (WORD1(v67) << 32), (v67 >> 1) & 1, &v75);
          if (v13[-1].i64[1] == v40)
          {
            v14 = v29;
            v5 = v64;
          }

          else
          {
            v14 = v29;
            if (v13 >= v70)
            {
              v41 = v13 - v29;
              v42 = (v13 - v29) >> 3;
              v43 = v42 + 1;
              if ((v42 + 1) >> 61)
              {
                sub_1794();
              }

              v44 = v70 - v29;
              if ((v70 - v29) >> 2 > v43)
              {
                v43 = v44 >> 2;
              }

              if (v44 >= 0x7FFFFFFFFFFFFFF8)
              {
                v45 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v45 = v43;
              }

              if (v45)
              {
                if (!(v45 >> 61))
                {
                  operator new();
                }

                sub_1808();
              }

              v46 = (8 * v42);
              *v46 = v40;
              v13 = (v46 + 1);
              memcpy(0, v29, v41);
              __p = 0;
              v69 = v13;
              v70 = 0;
              v14 = 0;
            }

            else
            {
              v13->i64[0] = v40;
              v13 = (v13 + 8);
            }

            v5 = v64;
            v69 = v13;
          }
        }

        else
        {
          LODWORD(v75) = v28 - 1;
          sub_1053B80(a1 + 356, &v67, &v75);
          sub_1059D34(a1 + 356);
        }
      }

      else
      {
        LODWORD(v75) = 0;
        sub_1053B80(a1 + 132, &v67, &v75);
        sub_1059D34(a1 + 132);
      }

      for (++v9; v9 != v12; ++v9)
      {
        v47 = BYTE6(*v9);
        v48 = HIDWORD(*v9);
        if ((*(v6 + 2728) != *v9 || *(v6 + 2732) != v48 || *(v6 + 2734) != v47) && (!*(*&v5 + 31376) || __PAIR64__(*(v6 + 2700), *(v6 + 2696)) != __PAIR64__(v48, *v9) || *(v6 + 2702) != v47))
        {
          break;
        }
      }
    }

    while (v9 != v12);
    v5 = *a1;
  }

  v49 = *(*&v5 + 31664);
  v50 = v49 + 96 * *(*&v5 + 31560);
  *&v75 = *&v5 + 31416;
  *(&v75 + 1) = v49;
  *&v76 = v50;
  sub_1008D5C(&v75);
  v51 = *(*&v5 + 31664) + 96 * *(*&v5 + 31560);
  v72 = (*&v5 + 31416);
  v73 = v51;
  v74 = v51;
  sub_1008D5C(&v72);
  while (1)
  {
    v52 = *(&v75 + 1);
    if (*(&v75 + 1) == v73)
    {
      break;
    }

    v67 = (((*(*(&v75 + 1) + 32) >> 16) & 0xFFFF0000 | (*(*(&v75 + 1) + 32) << 32) | (2 * ((*(*(&v75 + 1) + 32) & 0xFF000000000000) == 0))) + 4 * *(*(&v75 + 1) + 80)) & 0xFFFFFFFFFFFFFFFELL | *(*(&v75 + 1) + 88) & 1;
    v80[0] = 0;
    sub_1053B80(a1 + 132, &v67, v80);
    sub_1059D34(a1 + 132);
    v67 = (((*(v52 + 72) >> 16) & 0xFFFF0000 | (*(v52 + 72) << 32) | (2 * ((*(v52 + 72) & 0xFF000000000000) == 0))) + 4 * *(v52 + 82)) & 0xFFFFFFFFFFFFFFFELL | (*(v52 + 88) >> 1) & 1;
    v80[0] = 0;
    sub_1053B80(a1 + 132, &v67, v80);
    sub_1059D34(a1 + 132);
    *(&v75 + 1) += 96;
    sub_1008D5C(&v75);
  }

  for (i = *(sub_F8F520(*a1 + 8) + 16); i; i = *i)
  {
    *&v75 = (i[2] >> 16) & 0xFFFF0000 | (i[2] << 32) | (2 * ((i[2] & 0xFF000000000000) == 0));
    LODWORD(v72) = 0;
    sub_1053B80(a1 + 132, &v75, &v72);
    sub_1059D34(a1 + 132);
  }

  v54 = 126 - 2 * __clz((v13 - v14) >> 3);
  if (v13 == v14)
  {
    v55 = 0;
  }

  else
  {
    v55 = v54;
  }

  sub_2D31D4(v14, v13, &v75, v55, 1);
  v57 = __p;
  v56 = v69;
  if (__p == v69)
  {
LABEL_106:
    if (v57 != v56)
    {
      v69 = v57;
    }
  }

  else
  {
    v58 = __p - 8;
    while (v58 + 4 != v69)
    {
      v59 = v58[2];
      v58 += 2;
      LODWORD(v60) = v58[2];
      if (v59 == v60 && v58[1] == v58[3])
      {
        v62 = v58 + 4;
        if (v58 + 4 != v69)
        {
          do
          {
            if (v60 != *v62 || v58[1] != v62[1])
            {
              v60 = *v62;
              *(v58 + 1) = *v62;
              v58 += 2;
            }

            v62 += 2;
          }

          while (v62 != v56);
          v56 = v69;
        }

        v57 = v58 + 2;
        goto LABEL_106;
      }
    }
  }

  sub_1060274(*a1 + 15168, &__p, a1[371], *(a1 + 740), *(a1 + 2964), 4u);
  if (__p)
  {
    v69 = __p;
    operator delete(__p);
  }
}

void sub_103B3B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (v16)
  {
    v17 = a1;
    operator delete(v16);
    a1 = v17;
  }

  _Unwind_Resume(a1);
}

void sub_103B424(uint64_t **a1, void *a2)
{
  v2 = a1[147];
  v3 = a1[146];
  v51 = 0xAAAAAAAAAAAAAAABLL * ((v2 - v3) >> 5);
  if (v51 >> 30)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v47 = sub_2D390(exception, "The source terminal of a query cannot have more than (2^30 - 1) nodes.", 0x46uLL);
  }

  if (v2 != v3)
  {
    v5 = 0;
    __asm { FMOV            V0.2D, #1.0 }

    v52 = _Q0;
    do
    {
      v11 = &a1[146][12 * v5];
      v12 = *a1;
      v13 = **a1;
      if (*(v13 + 7774) == 1)
      {
        v14 = *v11;
        v15 = HIDWORD(*v11);
        v16 = sub_2AF704(v13 + 3896, HIDWORD(*v11), 1);
        if (!v16)
        {
          goto LABEL_4;
        }

        v17 = &v16[-*v16];
        if (*v17 < 5u)
        {
          goto LABEL_4;
        }

        v18 = *(v17 + 2);
        if (!v18 || *&v16[v18 + *&v16[v18]] <= WORD1(v14) || !sub_2B817C(v13, v15 & 0xFFFF0000FFFFFFFFLL | (WORD1(v14) << 32)))
        {
          goto LABEL_4;
        }

        v12 = *a1;
      }

      v19 = a1[371];
      v57 = 0u;
      v58 = 0u;
      v59 = v52;
      v60 = 0x3FF0000000000000;
      LOBYTE(v61) = 1;
      sub_10AFB6C((v12 + 1217), &v57, v11, (v11 + 1), v19, 1);
      if (v61)
      {
        v21 = sub_F8634C(&v57, &v59, v20);
        v50 = v58 + v21;
        if (v58 + v21 != -1)
        {
          v49 = DWORD1(v58) + HIDWORD(v21);
          if (DWORD1(v58) + HIDWORD(v21) != 0x7FFFFFFF)
          {
            v22 = *(v11 + 2);
            sub_F90350((*a1 + 1), *v11, 0, a1 + 372, 0);
            v23 = -1431655765 * ((a1[373] - a1[372]) >> 5);
            if (v23)
            {
              v24 = 0;
              v25 = 0;
              v26 = 1000000000 - v22;
              v27 = 96 * v23;
              while (2)
              {
                v28 = a1[372];
                v54 = *(a1 + 740);
                v29 = *a1;
                v30 = a1[371];
                v31 = *(a1 + 2964);
                if (*(*a1 + 31330) == 1)
                {
                  if (sub_1008EEC(&v29[3927], &v28[v24 / 8]) != -1)
                  {
                    goto LABEL_17;
                  }

                  v32 = v28[v24 / 8 + 4];
                  v33 = (v32 >> 16) & 0xFFFF0000 | (v32 << 32);
                  v34 = (v32 & 0xFF000000000000) == 0;
                  v35 = (v33 | (2 * v34)) + 4 * LODWORD(v28[v24 / 8 + 10]);
                  WORD2(v57) = ((v33 | (2 * v34)) + 4 * LODWORD(v28[v24 / 8 + 10])) >> 16;
                  LODWORD(v57) = HIDWORD(v35);
                  BYTE6(v57) = (((v35 << 16) & 0xFFFF00000000 | HIDWORD(v35) | (v34 << 48)) ^ 0x1000000000000uLL) >> 48;
                  if (sub_100A97C(&v29[3917], &v57) != -1)
                  {
                    goto LABEL_17;
                  }
                }

                v57 = 0u;
                v58 = 0u;
                v59 = v52;
                v60 = 0x3FF0000000000000;
                LOBYTE(v61) = 1;
                sub_10B54B8(v29 + 1217, &v57, &v28[v24 / 8], v26, v30, &v54, v31);
                if ((v61 & 1) == 0)
                {
                  goto LABEL_17;
                }

                v37 = sub_F8634C(&v57, &v59, v36);
                if (v58 + v37 == -1 || DWORD1(v58) + HIDWORD(v37) == 0x7FFFFFFF)
                {
                  goto LABEL_17;
                }

                v38 = &v28[v24 / 8];
                v39 = (DWORD1(v58) + HIDWORD(v37) + v49);
                v40 = *(a1 + 2964);
                *&v57 = (v58 + v37 + v50) | (v39 << 32);
                DWORD2(v57) = v54;
                BYTE12(v57) = v40;
                *&v58 = (((v28[v24 / 8 + 4] >> 16) & 0xFFFF0000 | (v28[v24 / 8 + 4] << 32) | (2 * ((v28[v24 / 8 + 4] & 0xFF000000000000) == 0))) + 4 * LODWORD(v28[v24 / 8 + 10])) & 0xFFFFFFFFFFFFFFFELL | v28[v24 / 8 + 11] & 1;
                *(&v58 + 1) = (((v28[v24 / 8 + 9] >> 16) & 0xFFFF0000 | (v28[v24 / 8 + 9] << 32) | (2 * ((v28[v24 / 8 + 9] & 0xFF000000000000) == 0))) + 4 * *(v38 + 41)) & 0xFFFFFFFFFFFFFFFELL | (*(v38 + 88) >> 1) & 1;
                *&v59 = *(&v28[v24 / 8 + 10] + 4);
                v61 = v25;
                v62 = 0;
                v63 = v5 | 0x80000000;
                v53 = (((4 * *(v38 + 41)) | (v28[v24 / 8 + 9] << 32)) + ((v28[v24 / 8 + 9] >> 16) & 0xFFFF0000)) & 0xFFFFFFFFFFFFFFFELL | (*(v38 + 88) >> 1) & 1 | (2 * ((v28[v24 / 8 + 9] & 0xFF000000000000) == 0));
                v41 = *(a1 + 261);
                if (v41 == 0x7FFFFFFF)
                {
LABEL_36:
                  sub_1034330((a1 + 150), &v53, &v57);
                  v55[0] = (((4 * *(v38 + 41)) | (v38[9] << 32)) + ((v38[9] >> 16) & 0xFFFF0000)) & 0xFFFFFFFFFFFFFFFELL | (*(v38 + 88) >> 1) & 1 | (2 * ((v38[9] & 0xFF000000000000) == 0));
                  LODWORD(v53) = 0;
                  sub_1053B80(a1 + 132, v55, &v53);
                  sub_1058D74(a1 + 132, a2);
                  sub_1059D34(a1 + 132);
LABEL_17:
                  ++v25;
                  v24 += 96;
                  if (v27 == v24)
                  {
                    goto LABEL_4;
                  }

                  continue;
                }

                break;
              }

              sub_F98EF8((a1 + 150), &v53, v55);
              if (v55[0])
              {
                sub_F98EF8((a1 + 150), &v53, v55);
                v42 = a1[246][10 * *(v56 + 8) + 1];
                if (v57 == v42)
                {
                  if (SDWORD1(v57) >= SHIDWORD(v42))
                  {
                    goto LABEL_36;
                  }
                }

                else if (v57 >= v42)
                {
                  goto LABEL_36;
                }

                sub_F98EF8((a1 + 150), &v53, v55);
                v43 = HIDWORD(a1[246][10 * *(v56 + 8) + 1]);
                v44 = *(a1 + 261);
                if (v44 >= v43 && v39 > v41)
                {
                  v45 = -1;
LABEL_35:
                  *(a1 + 262) += v45;
                  goto LABEL_36;
                }

                if (v44 >= v43)
                {
                  goto LABEL_36;
                }
              }

              if (v39 > v41)
              {
                goto LABEL_36;
              }

              v45 = 1;
              goto LABEL_35;
            }
          }
        }
      }

LABEL_4:
      ++v5;
    }

    while (v5 != v51);
  }
}