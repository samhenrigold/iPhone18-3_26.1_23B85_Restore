uint64_t sub_299384D7C(void *a1, void *a2)
{
  result = sub_299384DB4(a1, a2);
  if (result)
  {
    sub_2992AE1F4(a1, result);
    return 1;
  }

  return result;
}

void *sub_299384DB4(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  for (result = *v8; result; result = *result)
  {
    v10 = result[1];
    if (v10 == v5)
    {
      if (result[2] == *a2)
      {
        return result;
      }
    }

    else
    {
      if (v6.u32[0] > 1uLL)
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

      if (v10 != v7)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_299384EA0(uint64_t a1, char a2)
{
  v4 = sub_29924AD04(a1);
  *v4 = &unk_2A1F74FB0;
  *(v4 + 800) = 0u;
  sub_29919C3A8((v4 + 824));
  sub_29919C3A8((a1 + 832));
  *(a1 + 856) = 0;
  *(a1 + 840) = 0u;
  sub_29919C3A8((a1 + 864));
  *(a1 + 872) = 0;
  sub_29918D970((a1 + 904));
  *(a1 + 952) = 0u;
  *(a1 + 1224) = a2;
  return a1;
}

void sub_299384F34(_Unwind_Exception *a1)
{
  sub_29919C3B0((v1 + 864));
  v3 = *(v1 + 856);
  *(v1 + 856) = 0;
  if (v3)
  {
    MEMORY[0x29C29BFB0](v3, 0x1050C40717B85FCLL);
  }

  sub_29919C3B0((v1 + 832));
  sub_29919C3B0((v1 + 824));
  v4 = *(v1 + 808);
  if (v4)
  {
    sub_2991A893C(v4);
  }

  sub_29924ADA4(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_299384FA4(uint64_t a1)
{
  v2 = *(a1 + 744);
  v3 = *(a1 + 752);
  if (v2 == v3 || (v4 = *(a1 + 712), v4 >= (v3 - v2) >> 3))
  {
    v5 = 0;
  }

  else
  {
    v5 = *(v2 + 8 * v4);
  }

  v6 = sub_2992B72DC(&v12, v5);
  v7 = *(a1 + 744);
  v8 = *(a1 + 752);
  if (v7 == v8 || (v9 = *(a1 + 712), v9 >= (v8 - v7) >> 3))
  {
    v10 = 0;
  }

  else
  {
    v10 = *(v7 + 8 * v9);
  }

  sub_2992B73E8(v6, v10);
  sub_2992A5BA0(&v13);
  result = v12;
  v12 = 0;
  if (result)
  {
    return MEMORY[0x29C29BFB0](result, 0x1010C40E4C6A875);
  }

  return result;
}

uint64_t sub_2993850C8(uint64_t result, unsigned int a2, uint64_t a3, _BYTE *a4)
{
  v4 = a2;
  if (a2 && (*a4 & 1) == 0)
  {
    v6 = result;
    v7 = *(*(result + 40) + 352) + 12 * (a2 >> 8);
    v8 = 1;
    do
    {
      result = (*(*(v6 + 32) + 16))();
      if (*a4)
      {
        break;
      }

      v7 += 12;
    }

    while (v8++ < v4);
  }

  return result;
}

void sub_29938516C(uint64_t a1, UniChar *a2, unint64_t a3, int a4, int a5, unsigned __int16 *a6, unint64_t a7, unsigned int a8, uint64_t a9)
{
  v41 = *MEMORY[0x29EDCA608];
  if (*(a1 + 872) && a7 | a3 && *(a1 + 952))
  {
    if (a6)
    {
      v15 = a7 >> 1;
    }

    else
    {
      v15 = 0;
    }

    sub_2993C727C(a6, v15, 0, 0, 0, &v36);
    v16 = a3 >> 1;
    if (!a2)
    {
      v16 = 0;
    }

    if (a4)
    {
      v38 = 0u;
      v39 = 0u;
      v40 = 1065353216;
      if (a5)
      {
        v17 = 31;
      }

      else
      {
        v17 = 1;
      }

      sub_299258654(a1 + 816, &v36, a2, v16, v17, &v38, 0, 0);
      sub_29921ED28(&v38);
    }

    else
    {
      sub_2993C6D18(&v36, a2, v16, (a8 >> 6) & 8 | a8 & 0x20 | (a8 >> 4) & 0x10 | (a8 >> 7) & 6, 0, 0);
    }

    __p = 0;
    v34 = 0;
    v35 = 0;
    v19 = v37[0];
    v18 = v37[1];
    v20 = *(sub_299237120() + 98);
    v21 = *(a1 + 952);
    *&v38 = &unk_2A1F75070;
    *(&v38 + 1) = &__p;
    *(&v39 + 1) = &v38;
    (*(*v21 + 112))(v21, &v36, &v38, (((1.0 / v20) + -1.0) * (0xAAAAAAAAAAAAAAABLL * ((v18 - v19) >> 3))));
    sub_29922CF08(&v38);
    v22 = 0;
    LOBYTE(v38) = 0;
    while (1)
    {
      v23 = __p;
      v24 = (v34 - __p) >> 3;
      v25 = v24 > v22;
      v26 = v24 - v22;
      if (!v25)
      {
        break;
      }

      v27 = 8 * v22;
      v28 = ~v22;
      while (1)
      {
        v29 = *(__p + v27);
        if (*(__p + v27))
        {
          break;
        }

        v27 += 8;
        --v28;
        if (!--v26)
        {
          goto LABEL_29;
        }
      }

      v30 = *(a1 + 872) + 12 * (*(__p + v27) >> 8);
      v31 = 1;
      do
      {
        (*(a9 + 16))(a9, v30, &v38, *(__p + v27 + 4));
        if (v38)
        {
          break;
        }

        v30 += 12;
      }

      while (v31++ < v29);
      v22 = -v28;
      if (v38)
      {
        v23 = __p;
        break;
      }
    }

    if (v23)
    {
LABEL_29:
      v34 = v23;
      operator delete(v23);
    }

    v36 = &unk_2A1F74930;
    *&v38 = v37;
    sub_299259FC8(&v38);
  }
}

void sub_299385454(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t *a17)
{
  a17 = &a13;
  sub_299259FC8(&a17);
  _Unwind_Resume(a1);
}

void sub_2993854D4(uint64_t a1, UniChar *a2, unint64_t a3, int a4, int a5, unsigned __int16 *a6, unint64_t a7, unsigned int a8, uint64_t a9)
{
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2000000000;
  v11 = 0;
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 0x40000000;
  v9[2] = sub_29938558C;
  v9[3] = &unk_29EF13A48;
  v9[5] = v10;
  v9[6] = a1;
  v9[4] = a9;
  sub_29938516C(a1, a2, a3, a4, a5, a6, a7, a8, v9);
  _Block_object_dispose(v10, 8);
}

void sub_29938558C(void *a1, uint64_t a2, _BYTE *a3, float a4)
{
  v8 = a1[6];
  memset(&__len[1], 0, 10);
  *v12 = 0u;
  *__p = 0u;
  v14 = 0u;
  v15 = 0.0;
  LOWORD(__len[1]) = *a2;
  sub_29918DAD0(v8 + 904, *(a2 + 8));
  sub_29919CA14((v8 + 864), v8 + 904);
  __len[0] = *(v8 + 936);
  sub_299248CC0(&__p[1], *(v8 + 928), __len[0]);
  v9 = *(v8 + 352) + 12 * *(a2 + 4);
  v10 = sub_2993856D8(v8, *(v9 + 8), __len);
  sub_299248CC0(v12, v10, __len[0]);
  *(&__len[1] + 2) = *v9;
  v15 = a4;
  (*(a1[4] + 16))();
  if (*(*(a1[5] + 8) + 24) == 1)
  {
    *a3 = 1;
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[1]);
  }

  if (SHIBYTE(__p[0]) < 0)
  {
    operator delete(v12[0]);
  }
}

void sub_2993856C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_299386E80(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2993856D8(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  if ((a2 & 3) != 0)
  {
    return 0;
  }

  v6 = a2 >> 2;
  if (sub_29919CB34(a1 + 824) <= v6)
  {
    return 0;
  }

  sub_29918DAD0(a1 + 904, v6);
  sub_29919CA14((a1 + 824), a1 + 904);
  *a3 = *(a1 + 936);
  return *(a1 + 928);
}

uint64_t sub_299385758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29918DA48((a1 + 904), a2, a3);
  result = sub_29919C9B4((a1 + 824), a1 + 904);
  if (result)
  {
    return *(a1 + 940);
  }

  return result;
}

uint64_t sub_299385794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10[4] = *MEMORY[0x29EDCA608];
  v7 = &unk_2A1F74930;
  memset(v8, 0, sizeof(v8));
  v9 = 0;
  v10[0] = &unk_2A1F750F0;
  v10[3] = v10;
  v5 = (*(*a1 + 88))(a1, a2, a3, a4, &v7, a5);
  sub_2993872B0(v10);
  v7 = &unk_2A1F74930;
  v10[0] = v8;
  sub_299259FC8(v10);
  return v5;
}

void sub_299385898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_2993872B0(va);
  sub_299259FC8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2993858BC(uint64_t a1, int a2, UniChar *a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v55 = *MEMORY[0x29EDCA608];
  v12 = *(a1 + 744);
  v13 = *(a1 + 752);
  if (v12 != v13)
  {
    v15 = *(a1 + 712);
    if (v15 < (v13 - v12) >> 3 && ((a7 | a4) & 1) == 0 && *(v12 + 8 * v15))
    {
      v22 = a2;
      if (a2 == 2)
      {
        v23 = 1;
      }

      else
      {
        v23 = 2 * (a2 == 1);
      }

      if (a2 != 1)
      {
        goto LABEL_11;
      }

      if ((*(*a1 + 120))(a1))
      {
        v12 = *(a1 + 744);
        v13 = *(a1 + 752);
LABEL_11:
        v51 = 0;
        memset(v50, 0, sizeof(v50));
        v49 = 0u;
        v48 = 0u;
        v47 = 0u;
        v46 = 0u;
        v45 = 0u;
        if (v12 == v13 || (v24 = *(a1 + 712), v24 >= (v13 - v12) >> 3))
        {
          v25 = 0;
        }

        else
        {
          v25 = *(v12 + 8 * v24);
        }

        v43 = v25;
        v44 = a6;
        *(&v45 + 1) = a3;
        LODWORD(v46) = a4;
        *(&v46 + 1) = a9;
        *&v47 = a8;
        *(&v47 + 1) = a7;
        LOBYTE(v49) = (a2 & 0x800) == 0;
        BYTE1(v49) = (a2 & 0xF100) != 0;
        v27 = (v22 == 1) & ((a2 & 0x800) >> 11);
        LOBYTE(v50[0]) = (v22 == 1) & ((a2 & 0x800) >> 11);
        LODWORD(v48) = v23;
        BYTE1(v50[0]) = 1;
        if (a4 >= 0x80)
        {
          v27 = 0;
          LOBYTE(v50[0]) = 0;
        }

        *(&v49 + 1) = v50 + 2;
        if ((~a2 & 0x10900) == 0)
        {
          if (a3)
          {
            v28 = a4 >> 1;
          }

          else
          {
            v28 = 0;
          }

          v41 = 0;
          v42 = a8;
          __p[0] = 0;
          __p[1] = 0;
          v38 = 0;
          memset(v53, 0, sizeof(v53));
          v54 = 1065353216;
          if (v22 == 2)
          {
            v27 = 1;
          }

          if (v27)
          {
            v29 = 31;
          }

          else
          {
            v29 = 30;
          }

          sub_2992585B4(a1 + 816, a3, v28, v29, v53, __p, &v41, &v34);
          v40 = 0;
          if (v23)
          {
            if (v23 == 1)
            {
              operator new();
            }

            operator new();
          }

          operator new();
        }

        v41 = a12;
        v42 = a11;
        if (a3)
        {
          v30 = a4 >> 1;
        }

        else
        {
          v30 = 0;
        }

        v52[0] = a3;
        v52[1] = v30;
        v40 = 0;
        v34 = 0;
        v35 = 0;
        v36 = 0;
        *__p = *sub_2992FE060();
        if ((v49 & 1) == 0)
        {
          sub_299216DAC(v52, &v40, 0, 0, &v34);
          v31 = HIBYTE(v36);
          if (v36 >= 0)
          {
            v32 = &v34;
          }

          else
          {
            v32 = v34;
          }

          if (v36 < 0)
          {
            v31 = v35;
          }

          v33 = (v31 - v40);
          if (!v32)
          {
            v33 = 0;
          }

          __p[0] = v32;
          __p[1] = v33;
        }

        v39 = 0;
        if (v23)
        {
          if (v23 == 1)
          {
            operator new();
          }

          operator new();
        }

        operator new();
      }
    }
  }

  return 0;
}

void sub_299386014(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  sub_29922CF08(v25 - 176);
  *(v25 - 176) = &a13;
  sub_299259FC8((v25 - 176));
  sub_29921ED28(v25 - 144);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2993860CC(void *a1, uint64_t a2)
{
  (*(*a1 + 24))(a1);
  v4 = a1[94];
  v5 = a1[95];
  if (v4 >= v5)
  {
    v7 = a1[93];
    v8 = (v4 - v7) >> 3;
    if ((v8 + 1) >> 61)
    {
      sub_29924EED0();
    }

    v9 = v5 - v7;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      sub_29924EEE8((a1 + 93), v11);
    }

    *(8 * v8) = a2;
    v6 = 8 * v8 + 8;
    v12 = a1[93];
    v13 = a1[94] - v12;
    v14 = (8 * v8 - v13);
    memcpy(v14, v12, v13);
    v15 = a1[93];
    a1[93] = v14;
    a1[94] = v6;
    a1[95] = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v4 = a2;
    v6 = (v4 + 1);
  }

  a1[94] = v6;
  operator new();
}

void sub_299386284(_Unwind_Exception *a1)
{
  MEMORY[0x29C29BFB0](v3, 0x10A1C40079592F6);
  MEMORY[0x29C29BFB0](v1, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_2993862BC(uint64_t a1, const std::string *a2)
{
  sub_299386458(v5, a2, 24);
  sub_29919CB7C(v5, (a1 + 824));
  v5[0] = *MEMORY[0x29EDC9528];
  v3 = *(MEMORY[0x29EDC9528] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v5[2] = v3;
  v6 = MEMORY[0x29EDC9570] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C29BF00](&v9);
}

void sub_299386434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991D7BF8(va, MEMORY[0x29EDC9528]);
  MEMORY[0x29C29BF00](v3 + 128);
  _Unwind_Resume(a1);
}

uint64_t *sub_299386458(uint64_t *a1, const std::string *a2, int a3)
{
  a1[22] = 0;
  v6 = MEMORY[0x29EDC9590] + 104;
  a1[16] = MEMORY[0x29EDC9590] + 104;
  v7 = a1 + 2;
  v8 = MEMORY[0x29EDC9590] + 64;
  a1[2] = MEMORY[0x29EDC9590] + 64;
  v9 = MEMORY[0x29EDC9528];
  v10 = *(MEMORY[0x29EDC9528] + 24);
  v11 = *(MEMORY[0x29EDC9528] + 16);
  *a1 = v11;
  *(a1 + *(v11 - 24)) = v10;
  a1[1] = 0;
  v12 = (a1 + *(*a1 - 24));
  std::ios_base::init(v12, a1 + 3);
  v13 = MEMORY[0x29EDC9590] + 24;
  v12[1].__vftable = 0;
  v12[1].__fmtflags_ = -1;
  v14 = v9[5];
  v15 = v9[4];
  a1[2] = v15;
  *(v7 + *(v15 - 24)) = v14;
  v16 = v9[1];
  *a1 = v16;
  *(a1 + *(v16 - 24)) = v9[6];
  *a1 = v13;
  a1[16] = v6;
  a1[2] = v8;
  sub_2992751F0((a1 + 3), a2, a3);
  return a1;
}

void sub_2993866E8(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x29C29BF00](v1);
  _Unwind_Resume(a1);
}

void sub_299386710(uint64_t a1, char *a2, uint64_t a3)
{
  *(a1 + 376) = *a2;
  *(a1 + 380) = *(a2 + 1);
  sub_29932265C(0, 0, (a2 + 16), *(a2 + 2));
  sub_2993860CC(a1, v4);
}

void sub_2993869EC(_Unwind_Exception *a1)
{
  MEMORY[0x29C29BFB0](v3, 0x10A1C40079592F6);
  MEMORY[0x29C29BFB0](v1, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_299386A24(uint64_t a1, char *a2, uint64_t a3)
{
  sub_299248D7C((a1 + 400), a2);
  sub_2992BC434(a2, a3, 1, &v10);
  v6 = v10;
  v10 = 0uLL;
  v7 = *(a1 + 808);
  *(a1 + 800) = v6;
  if (!v7)
  {
    v8 = v6;
    if (!v6)
    {
      return 0;
    }

LABEL_7:
    sub_299386710(a1, *v8, *(v8 + 8));
  }

  sub_2991A893C(v7);
  if (*(&v10 + 1))
  {
    sub_2991A893C(*(&v10 + 1));
  }

  v8 = *(a1 + 800);
  if (v8)
  {
    goto LABEL_7;
  }

  return 0;
}

void *sub_299386AE4(void *a1)
{
  v2 = a1[120];
  a1[120] = 0;
  if (v2)
  {
    (*(*v2 + 72))(v2);
  }

  return sub_29924AF44(a1);
}

uint64_t sub_299386B5C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  sub_29918D970(v10);
  sub_29918DA48(v10, a3, a4);
  *a1 = 0;
  *(a1 + 12) = 0;
  *(a1 + 4) = 0;
  *(a1 + 20) = 0;
  if (sub_29919C9B4(a2, v10))
  {
    v8 = v11;
    *(a1 + 8) = v12;
    *(a1 + 12) = v8;
  }

  return sub_29918D980(v10);
}

unint64_t sub_299386BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  sub_29918D970(v16);
  sub_29918DA48(v16, a2, a3);
  v10 = 0;
  for (i = (a4 + 12); ; i += 12)
  {
    v12 = sub_29919CA74((a1 + 824), v16);
    v13 = v10 < a5 ? v12 : 0;
    if ((v13 & 1) == 0)
    {
      break;
    }

    v14 = v17;
    *(i - 1) = v18;
    *i = v14;
    ++v10;
  }

  sub_29918D980(v16);
  return v10;
}

uint64_t sub_299386CB0@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  sub_29918D970(&v11);
  sub_29918DAD0(&v11, *(*(a1 + 840) + 4 * a2));
  sub_29919CA14((a1 + 832), &v11);
  v6 = v13;
  v7 = v13 >> 1;
  v8 = __src;
  if (v13 >= 0x16)
  {
    if ((v7 | 3) == 0xB)
    {
      v9 = 13;
    }

    else
    {
      v9 = (v7 | 3) + 1;
    }

    sub_299212A48(a3, v9);
  }

  *(a3 + 23) = v13 >> 1;
  if (v6 >= 2)
  {
    memmove(a3, v8, 2 * v7);
  }

  *(a3 + v7) = 0;
  return sub_29918D980(&v11);
}

uint64_t sub_299386D90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_299386B5C(&v8, (a1 + 824), a2, a3);
  if (v9)
  {
    v7 = 0;
  }

  else
  {
    v7 = v10 == 0;
  }

  if (v7)
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }

  else
  {
    result = sub_2992EA57C(&v11, *(a1 + 856), v9);
    if (v12 >= v13)
    {
      *(a4 + 23) = 0;
      *a4 = 0;
    }

    else
    {
      return sub_299386CB0(a1, *(*v11 + 4 * v12), a4);
    }
  }

  return result;
}

void sub_299386E30(uint64_t a1)
{
  sub_299386EC4(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_299386E80(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t sub_299386EC4(uint64_t a1)
{
  *a1 = &unk_2A1F74FB0;
  v2 = *(a1 + 960);
  *(a1 + 960) = 0;
  if (v2)
  {
    (*(*v2 + 72))(v2);
  }

  v3 = *(a1 + 952);
  *(a1 + 952) = 0;
  if (v3)
  {
    (*(*v3 + 72))(v3);
  }

  sub_29918D980(a1 + 904);
  sub_29919C3B0((a1 + 864));
  v4 = *(a1 + 856);
  *(a1 + 856) = 0;
  if (v4)
  {
    MEMORY[0x29C29BFB0](v4, 0x1050C40717B85FCLL);
  }

  sub_29919C3B0((a1 + 832));
  sub_29919C3B0((a1 + 824));
  v5 = *(a1 + 808);
  if (v5)
  {
    sub_2991A893C(v5);
  }

  return sub_29924ADA4(a1);
}

uint64_t sub_299387030(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F75070;
  a2[1] = v2;
  return result;
}

void sub_29938705C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  v8 = *(a1 + 8);
  v10 = *(v8 + 8);
  v9 = *(v8 + 16);
  if (v10 >= v9)
  {
    v12 = *v8;
    v13 = v10 - *v8;
    v14 = (v13 >> 3) + 1;
    if (v14 >> 61)
    {
      sub_299212A8C();
    }

    v15 = v9 - v12;
    if (v15 >> 2 > v14)
    {
      v14 = v15 >> 2;
    }

    if (v15 >= 0x7FFFFFFFFFFFFFF8)
    {
      v16 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = v14;
    }

    if (v16)
    {
      if (!(v16 >> 61))
      {
        operator new();
      }

      sub_29919600C();
    }

    v17 = (8 * (v13 >> 3));
    *v17 = *a2;
    v11 = v17 + 1;
    memcpy(0, v12, v13);
    *v8 = 0;
    *(v8 + 8) = v11;
    *(v8 + 16) = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v10 = *a2;
    v11 = v10 + 1;
  }

  *(v8 + 8) = v11;
  if (*(*(a1 + 8) + 8) - **(a1 + 8) >= 0x1F9uLL)
  {
    *a6 = 1;
  }
}

uint64_t sub_299387188(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F750D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_299387264(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F75160))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2993872B0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

__n128 sub_2993873BC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F75180;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_299387404(uint64_t a1, _DWORD *a2, uint64_t *a3, unint64_t *a4, uint64_t *a5, _BYTE *a6)
{
  v9 = *a3;
  v10 = *a4;
  v11 = *a5;
  if (*a3)
  {
    v12 = *a4 >> 1;
  }

  else
  {
    v12 = 0;
  }

  v34[0] = *a3;
  v34[1] = v12;
  v13 = *(a1 + 24);
  if (*(v13 + 64) == 2)
  {
    result = sub_2993236B4(*(a1 + 8), v9, v12, *(a1 + 48), 0, 0);
    if (result)
    {
      return result;
    }

    v13 = *(a1 + 24);
  }

  v15 = *(a1 + 16);
  v16 = (*v15)++;
  v17 = *(a1 + 40);
  v18 = **(a1 + 32) + 24 * v16;
  v19 = *(v13 + 32);
  if (2 * v11 < v19)
  {
    LOWORD(v19) = 2 * v11;
  }

  *(v18 + 12) = v19;
  v20 = *(v17 + 8);
  if (v10 <= 2 * v20)
  {
    v21 = 0;
  }

  else
  {
    v21 = v10 - 2 * v20;
  }

  *(v18 + 14) = v21;
  *(v18 + 8) = *a2;
  *(v18 + 4) = a2[1];
  result = sub_2992FE1C4(v17, v34);
  *(v18 + 1) = result ^ 1;
  if (((result ^ 1) & 1) == 0)
  {
    v22 = *(a1 + 56);
    v33 = v12;
    result = sub_299230B70(v22, &v33);
    if (result)
    {
      v23 = *(a1 + 56);
      v24 = v23[1];
      if (!*&v24)
      {
        goto LABEL_31;
      }

      v25 = vcnt_s8(v24);
      v25.i16[0] = vaddlv_u8(v25);
      if (v25.u32[0] > 1uLL)
      {
        v26 = v12;
        if (*&v24 <= v12)
        {
          v26 = v12 % *&v24;
        }
      }

      else
      {
        v26 = (*&v24 - 1) & v12;
      }

      v27 = *(*v23 + 8 * v26);
      if (!v27 || (v28 = *v27) == 0)
      {
LABEL_31:
        operator new();
      }

      while (1)
      {
        v29 = v28[1];
        if (v29 == v12)
        {
          if (v28[2] == v12)
          {
            if (v28[3] == v11)
            {
              break;
            }

            v30 = 1;
LABEL_38:
            *(v18 + 1) = v30;
            goto LABEL_39;
          }
        }

        else
        {
          if (v25.u32[0] > 1uLL)
          {
            if (v29 >= *&v24)
            {
              v29 %= *&v24;
            }
          }

          else
          {
            v29 &= *&v24 - 1;
          }

          if (v29 != v26)
          {
            goto LABEL_31;
          }
        }

        v28 = *v28;
        if (!v28)
        {
          goto LABEL_31;
        }
      }
    }
  }

  if (*(v18 + 1))
  {
    if (2 * v11 == *(*(a1 + 24) + 32))
    {
      result = sub_299217C94(*(a1 + 40), v34);
      if (result)
      {
        v30 = 2;
        goto LABEL_38;
      }
    }
  }

LABEL_39:
  v32 = *(a1 + 16);
  v31 = *(a1 + 24);
  *v18 = *(v31 + 82);
  if (*(v31 + 40) <= *v32)
  {
    *a6 = 1;
  }

  return result;
}

uint64_t sub_299387770(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F751E0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_299387850(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F75200;
  *(a2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  return result;
}

void sub_2993878A0(uint64_t a1, uint64_t a2, unsigned __int16 **a3, unint64_t *a4, uint64_t **a5, uint64_t *a6, uint64_t *a7, _BYTE *a8)
{
  v8 = *(a1 + 8);
  v10 = *(a1 + 16);
  v9 = a1 + 8;
  v11 = *v8;
  if (*(v10 + 40) > *v8)
  {
    v14 = *a3;
    v15 = *a4;
    v16 = *a5;
    v17 = *a6;
    v18 = *a7;
    v19 = *(v10 + 64);
    if (*(v10 + 80) != 1)
    {
      if (v19 == 2)
      {
        v21 = v17;
        v22 = a8;
        v23 = *a7;
        if (sub_2993236B4(*(a1 + 32), v14, v15 >> 1, **(a1 + 40), 0, **(a1 + 48)))
        {
          return;
        }

        v17 = v21;
        v18 = v23;
        a8 = v22;
        v8 = *(a1 + 8);
        v10 = *(a1 + 16);
        v11 = *v8;
        v20 = *(v10 + 80);
      }

      else
      {
        v20 = 0;
      }

LABEL_10:
      v24 = **(a1 + 24);
      v25 = v11 + 1;
      *v8 = v11 + 1;
      v26 = v24 + 24 * v11;
      *(v26 + 8) = *a2;
      v27 = *(a2 + 4);
      *(v26 + 4) = v27;
      *v26 = *(v10 + 82);
      if (v20)
      {
        if (*(v10 + 81) == 1)
        {
          if (*(v10 + 32) >= v15)
          {
            v28 = v15;
          }

          else
          {
            v28 = *(v10 + 32);
          }

          v29 = a8;
          v30 = memcmp(v14, *(v10 + 24), v28);
          a8 = v29;
          v31 = v30 != 0;
        }

        else
        {
          v31 = 0;
        }

        *(v26 + 1) = v31;
        *(v26 + 12) = v15;
        goto LABEL_42;
      }

      v32 = 0;
      if (v14 && v15 >= 2)
      {
        v33 = *v14;
        if ((v33 - 12353) >= 0x56)
        {
          v34 = v33 == 12316 || v33 == 12540;
          v32 = !v34;
        }

        else
        {
          v32 = 0;
        }
      }

      v35 = *(a1 + 32);
      if (*(v35 + 32) == 1)
      {
        v36 = v16;
        v37 = **(a1 + 48);
        v38 = **(a1 + 80);
        if (v17)
        {
          v39 = *(*(v35 + 8) + 24 * v37) + 48 * *v36;
          v40 = *(v39 + 46) + 1;
          v41 = *(v39 + 47) + 1;
        }

        else
        {
          v41 = 0;
          v40 = 0;
        }

        v47 = *(*(v10 + 8) + 80);
        v48 = v40 | (v41 << 8);
        if (v38 && v40 | (v41 << 8) && v38[2] && v40)
        {
          v49 = *v38;
          if (*(*v38 + 26) && HIBYTE(*(*v38 + 26)) == v41)
          {
            v51 = v38 + 1;
            if (v49 == v51)
            {
LABEL_63:
              *v8 = v11;
              return;
            }

            while (*(v49 + 26) != v40)
            {
              v52 = v49[1];
              if (v52)
              {
                do
                {
                  v53 = v52;
                  v52 = *v52;
                }

                while (v52);
              }

              else
              {
                do
                {
                  v53 = v49[2];
                  v34 = *v53 == v49;
                  v49 = v53;
                }

                while (!v34);
              }

              v49 = v53;
              if (v53 == v51)
              {
                goto LABEL_63;
              }
            }
          }
        }

        v75 = v32;
        v76 = v48;
        v77 = *(a1 + 72);
        v78 = a8;
        v54 = v17;
        v55 = v18;
        sub_2993C7378(v35, v47, v37, v36, v17, &__p);
        *(v26 + 12) = 2 * v55;
        v56 = v86;
        v58 = __p;
        v57 = v85;
        v59 = sub_2993C752C(v35, v37, v36, v54);
        if ((v56 & 0x80u) == 0)
        {
          v60 = v56;
        }

        else
        {
          v60 = v57;
        }

        p_p = &__p;
        if ((v56 & 0x80u) != 0)
        {
          p_p = v58;
        }

        v79 = p_p;
        v80 = v60;
        LOWORD(v83[0]) = v76;
        LOWORD(v82) = v59;
        v62 = *(v77 + 24);
        if (!v62)
        {
          sub_2991A2240();
        }

        *(v26 + 16) = (*(*v62 + 48))(v62, &v79, v83, &v82);
        v63 = v86;
        v64 = &__p;
        if ((v86 & 0x80u) != 0)
        {
          v64 = __p;
        }

        if ((v86 & 0x80u) != 0)
        {
          v63 = v85;
        }

        v83[0] = v64;
        v83[1] = v63;
        v82 = 0;
        sub_299216DAC(v83, &v82, 0, 0, &v79);
        v65 = v81;
        v66 = v79;
        v67 = v80;
        if (v81 >= 0)
        {
          v67 = v81;
        }

        v68 = v67 - v82;
        if (v79)
        {
          v69 = 0;
        }

        else
        {
          v69 = v81 < 0;
        }

        v70 = 2 * v68;
        if (v69)
        {
          v71 = 0;
        }

        else
        {
          v71 = v70;
        }

        a8 = v78;
        if (v15 <= v71)
        {
          v72 = 0;
          v73 = *(v26 + 4) != 0.0 && v15 == v71;
        }

        else
        {
          v72 = v15 - v71;
          v73 = 1;
        }

        *(v26 + 1) = v73;
        *(v26 + 14) = v72;
        if (v65 < 0)
        {
          operator delete(v66);
          a8 = v78;
        }

        if (v86 < 0)
        {
          operator delete(__p);
          a8 = v78;
        }

        if (!v75)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v42 = 56;
        if (v32)
        {
          v42 = 48;
        }

        v43 = *(*(v9 + v42) + 8);
        v44 = v15 - 2 * v43;
        v45 = v15 > 2 * v43;
        if (!v45)
        {
          v44 = 0;
        }

        if (v27 != 0.0)
        {
          v45 = 1;
        }

        *(v26 + 1) = v45;
        LOWORD(v46) = 2 * v18;
        if (2 * v18 >= *(v10 + 32))
        {
          v46 = *(v10 + 32);
        }

        *(v26 + 12) = v46;
        *(v26 + 14) = v44;
        if (!v32)
        {
          goto LABEL_41;
        }
      }

      *v26 = 1;
LABEL_41:
      v10 = *(a1 + 16);
      v25 = **(a1 + 8);
LABEL_42:
      if (*(v10 + 40) <= v25)
      {
        *a8 = 1;
      }

      return;
    }

    if (v19 != 2 || v15 != *(v10 + 32))
    {
      v20 = 1;
      goto LABEL_10;
    }
  }
}

void sub_299387D50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_299387D70(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F75260))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_299387DBC(void *a1, uint64_t a2, unint64_t a3)
{
  v6[4] = *MEMORY[0x29EDCA608];
  *a1 = &unk_2A1F6A618;
  sub_29932265C(0, 0, a2, a3);
  v6[0] = &unk_2A1F75280;
  v6[3] = v6;
  a1[1] = v4;
  sub_2992A597C((a1 + 2), v6);
  sub_2992A59FC(v6);
  return a1;
}

uint64_t sub_299387F10(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F752E0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_299387F5C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = sub_29933BEB8(a1, a2 + 1);
  v6 = *a2;
  *v5 = *a2;
  *(v5 + *(v6 - 32)) = a2[5];
  *(v5 + 20) = *(a3 + 20);
  *(v5 + 24) = *(a3 + 24);
  result = *(a3 + 32);
  *(v5 + 32) = result;
  return result;
}

uint64_t sub_299388024(uint64_t a1)
{
  v1 = (*(*a1 + 120))(a1);
  (*(*v1 + 24))(v1);
  return v2;
}

uint64_t sub_299388084(uint64_t a1)
{
  result = (*(*a1 + 120))(a1);
  if (result)
  {
    v2 = *(*result + 16);

    return v2();
  }

  return result;
}

void sub_299388124(uint64_t a1@<X0>, const void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = (*(*a1 + 48))(a1);
  if (v4 >= 1)
  {
    for (i = 0; i != v4; ++i)
    {
      v6 = *((*(*a1 + 120))(a1, i) + 8);
      v8 = a2[1];
      v7 = a2[2];
      if (v8 >= v7)
      {
        v10 = *a2;
        v11 = v8 - *a2;
        v12 = v11 >> 2;
        v13 = (v11 >> 2) + 1;
        if (v13 >> 62)
        {
          sub_299212A8C();
        }

        v14 = v7 - v10;
        if (v14 >> 1 > v13)
        {
          v13 = v14 >> 1;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v15 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v13;
        }

        if (v15)
        {
          sub_2992F86B0(a2, v15);
        }

        *(4 * v12) = v6;
        v9 = (4 * v12 + 4);
        memcpy(0, v10, v11);
        v16 = *a2;
        *a2 = 0;
        a2[1] = v9;
        a2[2] = 0;
        if (v16)
        {
          operator delete(v16);
        }
      }

      else
      {
        *v8 = v6;
        v9 = v8 + 4;
      }

      a2[1] = v9;
    }
  }
}

void sub_299388290(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2993882B4(uint64_t a1)
{
  result = (*(*a1 + 120))(a1);
  if (result)
  {
    v2 = *(*result + 32);

    return v2();
  }

  return result;
}

uint64_t sub_29938833C(uint64_t a1)
{
  v1 = (*(*a1 + 24))(a1);

  return sub_299279FBC(v1);
}

uint64_t sub_299388384(uint64_t a1)
{
  v1 = *(*(*(*a1 + 120))(a1) + 56);

  return v1();
}

void sub_2993883FC(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = (*(*a1 + 48))(a1);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  if (v6)
  {
    v7 = v6;
    for (i = 0; i != v7; ++i)
    {
      v9 = (*(*a1 + 120))(a1, i);
      if (a2)
      {
        if (a2 == 1)
        {
          (*(*v9 + 40))(&v11);
        }

        else
        {
          (*(*v9 + 48))(&v11);
        }
      }

      else
      {
        (*(*v9 + 56))(&v11);
      }

      v10 = v11;
      sub_2992F87C8(a3, *(a3 + 8), v11, v12, (v12 - v11) >> 1);
      if (v10)
      {
        operator delete(v10);
      }
    }
  }
}

void sub_299388568(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_299388590()
{
  if (v0)
  {
    operator delete(v0);
  }

  JUMPOUT(0x299388578);
}

uint64_t sub_2993885A4(uint64_t a1, uint64_t a2, unsigned int *a3, int *a4, uint64_t *a5)
{
  v5 = a3;
  *a1 = &unk_2A1F75318;
  *(a1 + 8) = 0u;
  v8 = (a1 + 8);
  *(a1 + 56) = 0u;
  v77 = (a1 + 56);
  *(a1 + 152) = 0u;
  v76 = (a1 + 152);
  *(a1 + 200) = 0u;
  v71 = (a1 + 200);
  *(a1 + 216) = 0;
  v73 = (a1 + 216);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 224) = a4[6];
  v9 = *a4;
  if (*a4 > 4)
  {
    if (v9 != 5)
    {
      if (v9 == 13)
      {
        v10 = 2;
        goto LABEL_10;
      }

      goto LABEL_8;
    }

    v10 = 1;
  }

  else
  {
    v10 = 0;
    if (v9 != 2 && v9 != 4)
    {
LABEL_8:
      v10 = -1;
    }
  }

LABEL_10:
  *(a1 + 232) = v10;
  *(a1 + 236) = 0;
  *(a1 + 240) = a4;
  if (a2)
  {
    v11 = *(a2 + 16);
    v12 = v11 != 0;
    if (!a3 && v11)
    {
      v5 = *v11;
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  v13 = *(a5 + 25);
  v15 = *a5;
  v14 = a5[1];
  v74 = (a1 + 8);
  if (!v5)
  {
    if (v15 != v14 && *(a5 + 24) == 1 && (*(**(v14 - 8) + 48))(*(v14 - 8)) != 0 && v12)
    {
      v19 = a5[1];
      if (*a5 == v19 || *(a5 + 24) != 1)
      {
        v20 = 0;
      }

      else
      {
        v20 = (*(**(v19 - 8) + 48))(*(v19 - 8));
      }

      v79.length = *(v11 + 16);
      v79.location = 0;
      v50 = CFStringCreateWithSubstring(*MEMORY[0x29EDB8ED8], v20, v79);
      sub_299219AB4((a1 + 208), v50);
    }

    v51 = (*(*a2 + 64))(a2);
    if (v12)
    {
      v52 = CFRetain(*(v11 + 8));
    }

    else
    {
      v52 = 0;
    }

    sub_299219AB4(v71, v52);
    v53 = CFRetain(*v71);
    sub_299219AB4(v73, v53);
    *(a1 + 239) = (*(a2 + 8) - 4) < 3;
    if (!*(a1 + 208))
    {
      v54 = CFRetain(*v71);
      sub_299219AB4((a1 + 208), v54);
    }

    v55 = *v51;
    v56 = *(v51 + 8);
    LODWORD(__p[0]) = 0;
    sub_299388EB8(v76, v56, __p);
    for (i = 0; v56; --v56)
    {
      LOWORD(__p[0]) = *v55 - 48;
      sub_29922E664(v77, __p);
      v58 = *v55++;
      i = i + v58 - 48;
    }

    if (v13)
    {
      goto LABEL_85;
    }

    v59 = *a5;
    v60 = a5[1];
    if (*a5 == v60)
    {
      v61 = 0;
    }

    else
    {
      v61 = 0;
      do
      {
        v61 += (*(**v59 + 32))();
        v59 += 8;
      }

      while (v59 != v60);
    }

    if (i < v61)
    {
LABEL_85:
      *(a1 + 228) = 1;
    }

    else
    {
      *(a1 + 228) = 0;
    }

    goto LABEL_87;
  }

  v69 = *(a5 + 24);
  v70 = v15 == v14;
  v16 = *(v5 + 5);
  *(a1 + 236) = (v16 & 0x20) != 0;
  *(a1 + 237) = (v16 & 4) != 0;
  *(a1 + 238) = (v16 & 0x10) != 0;
  if ((v13 & 1) == 0)
  {
    if (v15 == v14)
    {
      v18 = a5;
    }

    else
    {
      v21 = 0;
      v18 = a5;
      do
      {
        v21 += (*(**v15 + 32))();
        v15 += 8;
      }

      while (v15 != v14);
      if (*(v5 + 6) < v21)
      {
        v17 = 1;
        goto LABEL_32;
      }

      v16 = *(v5 + 5);
    }

    v17 = (v16 >> 6) & 2;
    goto LABEL_32;
  }

  v17 = 1;
  v18 = a5;
LABEL_32:
  *(a1 + 228) = v17;
  v72 = v5;
  v22 = *(v5 + 1);
  if (v22)
  {
    v23 = *(v5 + 3);
    v24 = (*(v5 + 4) + 2);
    v25 = *(v5 + 2);
    v26 = v23;
    do
    {
      sub_29922E664(v8, v25);
      if (v23)
      {
        sub_29922E664((a1 + 32), v26);
      }

      if (*(v24 - 2))
      {
        LOWORD(__p[0]) = *v24 + *(v24 - 2);
        sub_29922E664(v77, __p);
        LOWORD(__p[0]) = *v24;
        sub_29922E664((a1 + 128), __p);
        v27 = v24[1];
        if (v27)
        {
          v28 = 2;
        }

        else
        {
          v28 = (v27 >> 1) & 1;
        }

        v30 = *(a1 + 160);
        v29 = *(a1 + 168);
        if (v30 >= v29)
        {
          v32 = *v76;
          v33 = v30 - *v76;
          v34 = v33 >> 2;
          v35 = (v33 >> 2) + 1;
          if (v35 >> 62)
          {
            sub_299212A8C();
          }

          v36 = v29 - v32;
          if (v36 >> 1 > v35)
          {
            v35 = v36 >> 1;
          }

          v37 = v36 >= 0x7FFFFFFFFFFFFFFCLL;
          v38 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v37)
          {
            v38 = v35;
          }

          if (v38)
          {
            sub_2992F86B0(v76, v38);
          }

          *(4 * v34) = v28;
          v31 = 4 * v34 + 4;
          memcpy(0, v32, v33);
          v39 = *(a1 + 152);
          *(a1 + 152) = 0;
          *(a1 + 160) = v31;
          *(a1 + 168) = 0;
          if (v39)
          {
            operator delete(v39);
          }

          v8 = v74;
          v18 = a5;
        }

        else
        {
          *v30 = v28;
          v31 = (v30 + 1);
        }

        *(a1 + 160) = v31;
      }

      v24 += 4;
      ++v26;
      ++v25;
      --v22;
    }

    while (v22);
  }

  v40 = *v18;
  v41 = v18[1];
  if (*v18 != v41)
  {
    do
    {
      if ((*(**v40 + 56))() == 1)
      {
        memset(__p, 0, sizeof(__p));
        operator new();
      }

      v40 += 8;
    }

    while (v40 != v41);
  }

  if (((v70 | v69) & 1) == 0)
  {
    v42 = sub_2992F65C0(v18, v72, 0);
    sub_299219AB4((a1 + 208), v42);
  }

  v43 = *(a1 + 208);
  if (v43)
  {
    Copy = CFRetain(v43);
    v45 = v73;
LABEL_62:
    sub_299219AB4(v45, Copy);
    goto LABEL_87;
  }

  v46 = v18[1];
  if (*v18 != v46 && *(v18 + 24) == 1 && (*(**(v46 - 8) + 48))(*(v46 - 8)))
  {
    v47 = *(v72 + 6);
    v48 = v18[1];
    if (*v18 == v48 || *(v18 + 24) != 1)
    {
      v49 = 0;
    }

    else
    {
      v49 = (*(**(v48 - 8) + 48))(*(v48 - 8));
    }

    Length = CFStringGetLength(v49);
    v64 = *MEMORY[0x29EDB8ED8];
    v66 = *v18;
    v65 = v18[1];
    if (v47 >= Length)
    {
      if (v66 == v65 || *(v18 + 24) != 1)
      {
        v68 = 0;
      }

      else
      {
        v68 = (*(**(v65 - 8) + 48))(*(v65 - 8));
      }

      Copy = CFStringCreateCopy(v64, v68);
    }

    else
    {
      if (v66 == v65 || *(v18 + 24) != 1)
      {
        v67 = 0;
      }

      else
      {
        v67 = (*(**(v65 - 8) + 48))(*(v65 - 8));
      }

      v80.length = *(v72 + 6);
      v80.location = 0;
      Copy = CFStringCreateWithSubstring(v64, v67, v80);
    }

    v45 = (a1 + 208);
    goto LABEL_62;
  }

LABEL_87:
  if (*(*(a1 + 240) + 98))
  {
    sub_299389108(a1);
  }

  return a1;
}

void sub_299388DB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, const void **a11, uint64_t a12, const void **a13, void **a14, uint64_t a15, void **a16, void **a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_299219AB4(a13, 0);
  sub_299219AB4((v19 + 208), 0);
  sub_299219AB4(a11, 0);
  v21 = *(v19 + 176);
  if (v21)
  {
    *(v19 + 184) = v21;
    operator delete(v21);
  }

  v22 = *a16;
  if (*a16)
  {
    *(v19 + 160) = v22;
    operator delete(v22);
  }

  v23 = *(v19 + 128);
  if (v23)
  {
    *(v19 + 136) = v23;
    operator delete(v23);
  }

  v24 = *(v19 + 104);
  if (v24)
  {
    *(v19 + 112) = v24;
    operator delete(v24);
  }

  v25 = *(v19 + 80);
  if (v25)
  {
    *(v19 + 88) = v25;
    operator delete(v25);
  }

  v26 = *a17;
  if (*a17)
  {
    *(v19 + 64) = v26;
    operator delete(v26);
  }

  v27 = *(v19 + 32);
  if (v27)
  {
    *(v19 + 40) = v27;
    operator delete(v27);
  }

  v28 = *a14;
  if (*a14)
  {
    *(v19 + 16) = v28;
    operator delete(v28);
  }

  _Unwind_Resume(a1);
}

void sub_299388EB8(uint64_t *a1, unint64_t a2, int *a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = v4 - *a1;
  v6 = v5 >> 2;
  if (a2 <= v5 >> 2)
  {
    if (a2 < v6)
    {
      a1[1] = v3 + 4 * a2;
    }
  }

  else
  {
    v7 = a2 - v6;
    v8 = a1[2];
    if (v7 > (v8 - v4) >> 2)
    {
      if (!(a2 >> 62))
      {
        v9 = v8 - v3;
        v10 = v9 >> 1;
        if (v9 >> 1 <= a2)
        {
          v10 = a2;
        }

        if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v11 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v10;
        }

        sub_2992F86B0(a1, v11);
      }

      sub_299212A8C();
    }

    v12 = 0;
    v13 = v4 + 4 * v7;
    v14 = *a3;
    v15 = (4 * a2 - v5 - 4) >> 2;
    v16 = vdupq_n_s64(v15);
    v17 = (v15 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v18 = (v4 + 8);
    do
    {
      v19 = vdupq_n_s64(v12);
      v20 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(v19, xmmword_2993FCC00)));
      if (vuzp1_s16(v20, 2).u8[0])
      {
        *(v18 - 2) = v14;
      }

      if (vuzp1_s16(v20, 2).i8[2])
      {
        *(v18 - 1) = v14;
      }

      if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v16, vorrq_s8(v19, xmmword_2993FCC10)))).i32[1])
      {
        *v18 = v14;
        v18[1] = v14;
      }

      v12 += 4;
      v18 += 4;
    }

    while (v17 != v12);
    a1[1] = v13;
  }
}

void sub_299389108(uint64_t a1)
{
  chars = *(*(a1 + 240) + 98);
  if (chars)
  {
    v2 = CFStringCreateWithCharacters(0, &chars, 1);
    if (v2)
    {
      v3 = v2;
      v4 = *(a1 + 208);
      v5 = MEMORY[0x29EDB8ED8];
      if (v4)
      {
        v6 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"%@%@", v2, v4, v2);
        sub_299219AB4((a1 + 208), v6);
      }

      v7 = *(a1 + 216);
      if (v7)
      {
        v8 = CFStringCreateWithFormat(*v5, 0, @"%@%@", v3, v7);
        sub_299219AB4((a1 + 216), v8);
      }

      v11 = *(a1 + 200);
      v10 = (a1 + 200);
      v9 = v11;
      if (v11)
      {
        v12 = CFStringCreateWithFormat(*v5, 0, @"%@%@", v3, v9);
        sub_299219AB4(v10, v12);
      }

      CFRelease(v3);
    }
  }
}

void sub_299389204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_299219AB4(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_29938921C(uint64_t a1, const __CFString *cf, const void *a3, int *a4, uint64_t *a5, char a6)
{
  *a1 = &unk_2A1F75318;
  *(a1 + 8) = 0u;
  *(a1 + 56) = 0u;
  v42 = (a1 + 56);
  *(a1 + 152) = 0u;
  v12 = (a1 + 152);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  v13 = CFRetain(cf);
  *(a1 + 208) = 0;
  v14 = (a1 + 208);
  *(a1 + 200) = v13;
  if (a3)
  {
    v15 = CFRetain(a3);
  }

  else
  {
    v15 = 0;
  }

  *(a1 + 216) = v15;
  *(a1 + 224) = a4[6];
  v16 = *a4;
  if (*a4 > 4)
  {
    if (v16 == 5)
    {
      v17 = 1;
      goto LABEL_14;
    }

    if (v16 != 13)
    {
LABEL_11:
      v17 = -1;
      goto LABEL_14;
    }

    v17 = 2;
  }

  else
  {
    if (v16 == 2)
    {
      v17 = 0;
      goto LABEL_14;
    }

    v17 = 0;
    if (v16 != 4)
    {
      goto LABEL_11;
    }
  }

LABEL_14:
  *(a1 + 232) = v17;
  *(a1 + 236) = 0;
  *(a1 + 238) = 0;
  *(a1 + 239) = a6;
  *(a1 + 240) = a4;
  v18 = a5[1];
  if (*a5 != v18 && *(a5 + 24) == 1 && (*(**(v18 - 8) + 48))(*(v18 - 8)))
  {
    Length = CFStringGetLength(cf);
    v20 = a5[1];
    if (*a5 == v20 || *(a5 + 24) != 1)
    {
      v21 = 0;
    }

    else
    {
      v21 = (*(**(v20 - 8) + 48))(*(v20 - 8));
    }

    v22 = CFStringGetLength(v21);
    v23 = *MEMORY[0x29EDB8ED8];
    v25 = *a5;
    v24 = a5[1];
    if (Length >= v22)
    {
      if (v25 == v24 || *(a5 + 24) != 1)
      {
        v27 = 0;
      }

      else
      {
        v27 = (*(**(v24 - 8) + 48))(*(v24 - 8));
      }

      Copy = CFStringCreateCopy(v23, v27);
    }

    else
    {
      if (v25 == v24 || *(a5 + 24) != 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = (*(**(v24 - 8) + 48))(*(v24 - 8));
      }

      v44.length = CFStringGetLength(cf);
      v44.location = 0;
      Copy = CFStringCreateWithSubstring(v23, v26, v44);
    }

    sub_299219AB4((a1 + 208), Copy);
  }

  v29 = CFStringGetLength(cf);
  v30 = *(a5 + 25);
  v32 = *a5;
  v31 = a5[1];
  if (*a5 == v31)
  {
    v33 = 0;
    if (*(a5 + 25))
    {
LABEL_42:
      v34 = 1;
LABEL_43:
      *(a1 + 228) = v34;
      goto LABEL_44;
    }
  }

  else
  {
    v33 = 0;
    do
    {
      v33 += (*(**v32 + 32))();
      v32 += 8;
    }

    while (v32 != v31);
    if (v30)
    {
      goto LABEL_42;
    }
  }

  if (*a5 == a5[1] || (a5[3] & 1) != 0)
  {
    if (v29 < v33)
    {
      goto LABEL_42;
    }

    if (v29 > v33)
    {
      v34 = 2;
      goto LABEL_43;
    }
  }

LABEL_44:
  if (!*(a1 + 216))
  {
    if ((*(a1 + 225) & 0x40) != 0 || !*v14)
    {
      v35 = CFRetain(cf);
    }

    else
    {
      v35 = CFRetain(*v14);
    }

    sub_299219AB4((a1 + 216), v35);
  }

  v36 = a5[1];
  v37 = *a5;
  if (*a5 == v36 || (a5[3] & 1) != 0)
  {
    if (*v14)
    {
      LOWORD(v43) = CFStringGetLength(*v14);
    }

    else
    {
      LOWORD(v43) = CFStringGetLength(*(a1 + 216));
    }

    sub_29922E664(v42, &v43);
    v43 = 0;
    sub_299388EB8(v12, 1uLL, &v43);
  }

  else
  {
    v38 = 0;
    do
    {
      v38 += (*(**v37 + 32))();
      v37 += 8;
    }

    while (v37 != v36);
    LOWORD(v43) = v38;
    sub_29922E664(v42, &v43);
    v39 = *a5;
    v40 = a5[1];
    while (1)
    {
      if (v39 == v40)
      {
        v43 = 1;
        sub_299388EB8(v12, 1uLL, &v43);
        goto LABEL_64;
      }

      if ((*(**v39 + 56))() == 2)
      {
        break;
      }

      v39 += 8;
    }

    v43 = 2;
    sub_299388EB8(v12, 1uLL, &v43);
  }

LABEL_64:
  if (*(*(a1 + 240) + 98))
  {
    sub_299389108(a1);
  }

  return a1;
}

void sub_299389704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, void **a11)
{
  sub_299219AB4(v13 + 1, 0);
  sub_299219AB4(v13, 0);
  sub_299219AB4((v11 + 200), 0);
  v15 = *(v11 + 176);
  if (v15)
  {
    *(v11 + 184) = v15;
    operator delete(v15);
  }

  v16 = *v12;
  if (*v12)
  {
    *(v11 + 160) = v16;
    operator delete(v16);
  }

  v17 = *(v11 + 128);
  if (v17)
  {
    *(v11 + 136) = v17;
    operator delete(v17);
  }

  v18 = *(v11 + 104);
  if (v18)
  {
    *(v11 + 112) = v18;
    operator delete(v18);
  }

  v19 = *(v11 + 80);
  if (v19)
  {
    *(v11 + 88) = v19;
    operator delete(v19);
  }

  v20 = *a11;
  if (*a11)
  {
    *(v11 + 64) = v20;
    operator delete(v20);
  }

  v21 = *(v11 + 32);
  if (v21)
  {
    *(v11 + 40) = v21;
    operator delete(v21);
  }

  v22 = *a10;
  if (*a10)
  {
    *(v11 + 16) = v22;
    operator delete(v22);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2993897F8(uint64_t a1)
{
  *a1 = &unk_2A1F75318;
  sub_299219AB4((a1 + 216), 0);
  sub_299219AB4((a1 + 208), 0);
  sub_299219AB4((a1 + 200), 0);
  v2 = *(a1 + 176);
  if (v2)
  {
    *(a1 + 184) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 152);
  if (v3)
  {
    *(a1 + 160) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 128);
  if (v4)
  {
    *(a1 + 136) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 104);
  if (v5)
  {
    *(a1 + 112) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 80);
  if (v6)
  {
    *(a1 + 88) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 56);
  if (v7)
  {
    *(a1 + 64) = v7;
    operator delete(v7);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    *(a1 + 40) = v8;
    operator delete(v8);
  }

  v9 = *(a1 + 8);
  if (v9)
  {
    *(a1 + 16) = v9;
    operator delete(v9);
  }

  return a1;
}

void sub_2993898DC(uint64_t a1)
{
  sub_2993897F8(a1);

  JUMPOUT(0x29C29BFB0);
}

const void *sub_299389914(uint64_t a1)
{
  v3 = (a1 + 200);
  result = *(a1 + 200);
  if (!result)
  {
    if (*(a1 + 40) == *(a1 + 32))
    {
      v4 = 8;
    }

    else
    {
      v4 = 32;
    }

    if (*(a1 + 40) == *(a1 + 32))
    {
      v5 = a1 + 8;
    }

    else
    {
      v5 = a1 + 32;
    }

    Mutable = CFStringCreateMutable(*MEMORY[0x29EDB8ED8], 0);
    v7 = *(a1 + v4);
    v8 = *(v5 + 8);
    while (v7 != v8)
    {
      v9 = sub_2993A1488(*v7, *(a1 + 232));
      if (v9)
      {
        CFStringAppend(Mutable, v9);
      }

      ++v7;
    }

    sub_299219AB4(v3, Mutable);
    return *v3;
  }

  return result;
}

const void *sub_2993899D0(uint64_t a1)
{
  v3 = (a1 + 216);
  result = *(a1 + 216);
  if (!result)
  {
    if ((*(a1 + 225) & 0x40) == 0)
    {
      v4 = *(a1 + 208);
      if (!v4)
      {
        Mutable = 0;
LABEL_24:
        sub_299219AB4(v3, Mutable);
        return *v3;
      }

LABEL_23:
      Mutable = CFRetain(v4);
      goto LABEL_24;
    }

    v6 = *(a1 + 16) - *(a1 + 8);
    if (!v6)
    {
      v4 = *(a1 + 200);
      goto LABEL_23;
    }

    v7 = v6 >> 1;
    alloc = *MEMORY[0x29EDB8ED8];
    Mutable = CFStringCreateMutable(*MEMORY[0x29EDB8ED8], 0);
    v8 = *(a1 + 64) - *(a1 + 56);
    if (v7 >= v8 >> 1)
    {
      v9 = v8 >> 1;
    }

    else
    {
      v9 = v7;
    }

    if (!v9)
    {
      goto LABEL_24;
    }

    v10 = 0;
    while (1)
    {
      v11 = *(*(a1 + 128) + 2 * v10);
      v12 = 80;
      if (*(a1 + 88) == *(a1 + 80))
      {
        v12 = 56;
      }

      v13 = *(*(a1 + v12) + 2 * v10);
      v14 = sub_2993A1488(*(*(a1 + 8) + 2 * v10), *(a1 + 232));
      v15 = v14;
      if (v14 && (v16 = v13 - v11, v16 < CFStringGetLength(v14)))
      {
        v20.location = 0;
        v20.length = v16;
        v17 = CFStringCreateWithSubstring(alloc, v15, v20);
        CFStringAppend(Mutable, v17);
        CFRelease(v17);
        if (v11)
        {
          goto LABEL_18;
        }
      }

      else
      {
        CFStringAppend(Mutable, v15);
        if (v11)
        {
LABEL_18:
          v18 = 0;
          do
          {
            CFStringAppend(Mutable, @"'");
            ++v18;
          }

          while (v11 > v18);
        }
      }

      if (++v10 == v9)
      {
        goto LABEL_24;
      }
    }
  }

  return result;
}

const void **sub_299389B68(uint64_t a1)
{
  v1 = (a1 + 104);
  if (*(a1 + 112) == *(a1 + 104))
  {
    if (*(a1 + 40) == *(a1 + 32))
    {
      v3 = 8;
    }

    else
    {
      v3 = 32;
    }

    if (*(a1 + 40) == *(a1 + 32))
    {
      v4 = a1 + 8;
    }

    else
    {
      v4 = a1 + 32;
    }

    v5 = *(v4 + 8) - *(a1 + v3);
    if (v5)
    {
      v6 = 0;
      v7 = v5 >> 1;
      if (v7 <= 1)
      {
        v8 = 1;
      }

      else
      {
        v8 = v7;
      }

      do
      {
        v9 = sub_2993A1488(*(*(a1 + v3) + 2 * v6), *(a1 + 232));
        if (v9)
        {
          LOWORD(v9) = CFStringGetLength(v9);
        }

        v11 = v9;
        sub_29922E664(v1, &v11);
        ++v6;
      }

      while (v8 != v6);
    }

    else
    {
      return (a1 + 56);
    }
  }

  return v1;
}

uint64_t sub_299389C34(uint64_t a1, const __CFString *a2, CFStringRef theString, const __CFString *a4, int a5, double a6)
{
  v16 = a5;
  Length = CFStringGetLength(theString);
  v14 = 0;
  v15 = 0;
  __p = 0;
  sub_2992220D8(&__p, &Length, &__p, 1);
  *(a1 + 16) = 0;
  *a1 = &unk_2A1F75358;
  *(a1 + 8) = 0;
  *(a1 + 24) = &unk_2A1F75450;
  sub_2993CB1B4((a1 + 32), a2, theString, a4, &v16, &__p);
  *(a1 + 104) = a6;
  *(a1 + 112) = 544;
  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }

  return a1;
}

void sub_299389D28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_299389D44(void *a1)
{
  *a1 = &unk_2A1F75358;
  a1[3] = &unk_2A1F75450;
  sub_29938A094((a1 + 4));
  return a1;
}

void sub_299389DAC(void *a1)
{
  *a1 = &unk_2A1F75358;
  a1[3] = &unk_2A1F75450;
  sub_29938A094((a1 + 4));

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_299389E34(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return 0;
  }

  else
  {
    return a1 + 32;
  }
}

const __CFString *sub_299389E44(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    LOWORD(result) = 0;
  }

  else
  {
    result = *(a1 + 88);
    if (result)
    {
      LOWORD(result) = CFStringGetLength(result);
    }
  }

  return result;
}

uint64_t sub_299389F14(uint64_t a1)
{
  v1 = (*(*a1 + 24))(a1);

  return sub_299279FBC(v1);
}

uint64_t sub_29938A094(uint64_t a1)
{
  *a1 = &unk_2A1F788D8;
  v2 = (a1 + 48);
  sub_299219AB4((a1 + 64), 0);
  sub_299219AB4((a1 + 56), 0);
  sub_299219AB4(v2, 0);
  return a1;
}

void sub_29938A0FC(void *a1, uint64_t a2)
{
  v3 = sub_2993652F8(0xDu);
  v4 = os_signpost_id_make_with_pointer(v3, a1);
  v5 = sub_2993652F8(0xDu);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = v5;
    if (os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_29918C000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "MecabraKoreanInit", "KoreanEngine engine init", buf, 2u);
    }
  }

  operator new();
}

void sub_29938A644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29938AA3C(va);
  _Unwind_Resume(a1);
}

void **sub_29938AA3C(void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = sub_299291300(v2);
    MEMORY[0x29C29BFB0](v3, 0x1070C4023DCAEECLL);
  }

  return a1;
}

void sub_29938AA84(void *a1, const __CFURL *a2, int a3)
{
  if (a3)
  {
    v5 = @"hangul_trie_tenkey.dat";
  }

  else
  {
    v5 = @"hangul_trie_full.dat";
  }

  sub_2993B4938(&cf, @"ko", a2, v5, 0);
  if (cf)
  {
    sub_29939D41C(cf, a1);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    *a1 = 0;
  }
}

void sub_29938AB08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29920FE30(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_29938AB20(uint64_t a1, const __CFString *a2, uint64_t a3, uint64_t a4, const __CFArray *a5)
{
  v23 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v6 = *(a1 + 160);
    if (*(v6 + 32))
    {
      if (*(v6 + 40))
      {
        v9 = sub_2993652F8(3u);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          *&buf[4] = a2;
          _os_log_debug_impl(&dword_29918C000, v9, OS_LOG_TYPE_DEBUG, "[KoreanEngine::analyzeString] analysisStr: [%@]", buf, 0xCu);
        }

        ptr = 0;
        v10 = sub_2993652F8(0xDu);
        ptr = os_signpost_id_make_with_pointer(v10, &ptr);
        v11 = sub_2993652F8(0xDu);
        v12 = ptr;
        if (ptr - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v13 = v11;
          if (os_signpost_enabled(v11))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_29918C000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v12, "MecabraAnalyzeStringWithContext", &unk_29945DB9F, buf, 2u);
          }
        }

        (*(**(a1 + 120) + 32))(*(a1 + 120));
        sub_29932CA50(*(a1 + 120), 1);
        if (a5)
        {
          Length = CFStringGetLength(a2);
          if (Length <= CFArrayGetCount(a5))
          {
            operator new();
          }
        }

        *buf = &unk_2A1F65118;
        *&buf[8] = 0u;
        v18 = 0u;
        v19 = 1065353216;
        v21 = 0;
        v22 = 0;
        v20 = 0;
        sub_29938AEBC(a1, buf, a2, 0, 0);
      }
    }
  }

  return 0;
}

void sub_29938AE54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  MEMORY[0x29C29BFB0](v9, 0x60C40AA6EF139, a3, a4, a5, a6, a7, a8);
  sub_2992E5624(&a9, 0);
  _Unwind_Resume(a1);
}

void sub_29938AEBC(uint64_t a1, uint64_t a2, const __CFString *a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  sub_299276BDC(a3, &v11);
  if (v5)
  {
    v7 = v11;
    v8 = v12;
    if (*(a1 + 217) == 1 && v11 != v12)
    {
      v10 = sub_29939FFC0(*v11);
      if (v10)
      {
        *v7 = v10;
      }
    }
  }

  else
  {
    v7 = v11;
    v8 = v12;
  }

  sub_29922B93C(*(a1 + 160), v7, v8 - v7);
}

void sub_29938B0F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, const void *a19, void **a20)
{
  sub_2992E3B48((v20 + 72), 0);
  sub_2992E3B48(&a19, 0);
  sub_29939B024(&a20);
  *(v21 - 168) = &unk_2A1F65C80;
  a20 = (v21 - 160);
  sub_29922CB20(&a20);
  if (*(v21 - 113) < 0)
  {
    operator delete(*(v21 - 136));
  }

  if (*(v21 - 89) < 0)
  {
    operator delete(*(v21 - 112));
  }

  v23 = *(v21 - 88);
  if (v23)
  {
    *(v21 - 80) = v23;
    operator delete(v23);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29938B1AC(uint64_t a1, uint64_t **a2, const void *a3, uint64_t a4)
{
  v8 = sub_2992AB678(a2, 81);
  if ((v8 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v9 = a2[6][v8];
    v10 = *(v9 + 55);
    v11 = *(v9 + 40);
    if ((v10 & 0x80u) == 0)
    {
      v11 = v10;
    }

    if (v11 == 1)
    {
      sub_2992AC320(a2, v8, &v67);
      sub_2992ABB04(a2, &v67, 0);
      v12 = v67;
      v67 = 0;
      if (v12)
      {
        (*(*v12 + 16))(v12);
      }
    }
  }

  v13 = sub_2992AB678(a2, 83);
  v14 = a2[6];
  if (v14 == a2[7])
  {
    v15 = 0;
  }

  else
  {
    v15 = *v14;
  }

  v16 = *(v15 + 55);
  if (v16 >= 0)
  {
    v17 = (v15 + 32);
  }

  else
  {
    v17 = *(v15 + 32);
  }

  if (v16 >= 0)
  {
    v18 = *(v15 + 55);
  }

  else
  {
    v18 = *(v15 + 40);
  }

  result = sub_2993A0798(a3, a4, v17, v18);
  if (v13 == -1)
  {
    return result;
  }

  v20 = result;
  if (v13)
  {
    sub_2992AC320(a2, v13, &v70);
    if (v20)
    {
LABEL_21:
      sub_29922B434();
    }

    v21 = *(v15 + 55);
    if (v21 >= 0)
    {
      v22 = (v15 + 32);
    }

    else
    {
      v22 = *(v15 + 32);
    }

    if (v21 >= 0)
    {
      v23 = *(v15 + 55);
    }

    else
    {
      v23 = *(v15 + 40);
    }

    sub_29939FAF4(v22, v23, &v67);
    v24 = *(v70 + 55);
    if (v24 >= 0)
    {
      v25 = (v70 + 32);
    }

    else
    {
      v25 = *(v70 + 32);
    }

    if (v24 >= 0)
    {
      v26 = *(v70 + 55);
    }

    else
    {
      v26 = *(v70 + 40);
    }

    if (v26 == 1)
    {
      v27 = 18;
      while (*v28 != *v25)
      {
        v28 += 2;
        v27 -= 2;
        if (!v27)
        {
          v28 = "";
          break;
        }
      }

      v29 = v28 != "";
      if (v28 == "")
      {
        v28 = 0;
      }
    }

    else
    {
      v30 = 0;
    }

    sub_29939FAF4(v25, v26, &__p);
    v31 = v69;
    if ((v69 & 0x80u) != 0)
    {
      v31 = v68;
    }

    v32 = v66;
    if ((v66 & 0x80u) != 0)
    {
      v32 = v65;
    }

    v34 = v26 == 1 && v31 > v32;
    if (v26 >= 2)
    {
      v36 = v25[v26 - 1];
      v37 = 2 * v26 - 2;
      v38 = v25;
      do
      {
        v39 = *v38++;
        v35 = v36 == v39;
        v40 = v36 != v39 || v37 == 0;
        v37 -= 2;
      }

      while (!v40);
    }

    else
    {
      v35 = 0;
    }

    sub_29939F510(v25, v26);
    v42 = v41;
    if ((*(*v15 + 96))(v15) == 73 && v26 - v42 == 1)
    {
      v45 = v69;
      if ((v69 & 0x80u) != 0)
      {
        v45 = v68;
      }

      v46 = v66;
      if ((v66 & 0x80u) != 0)
      {
        v46 = v65;
      }

      if (v45 != v46)
      {
        goto LABEL_85;
      }

      if (v45)
      {
        p_p = &__p;
        if ((v66 & 0x80u) != 0)
        {
          p_p = __p;
        }

        v48 = &v67;
        if ((v69 & 0x80u) != 0)
        {
          v48 = v67;
        }

        while (*p_p == *v48)
        {
          ++v48;
          ++p_p;
          if (!--v45)
          {
            goto LABEL_67;
          }
        }

        goto LABEL_85;
      }
    }

LABEL_67:
    if (!v30 && !v34 && !v35)
    {
      v44 = 96;
      if (*(a1 + 218))
      {
        v44 = 104;
      }

      if (*(a1 + v44))
      {
LABEL_86:
        if (v66 < 0)
        {
          operator delete(__p);
        }

        if (v69 < 0)
        {
          operator delete(v67);
          if (a4)
          {
LABEL_90:
            v49 = a2[6];
            v50 = *(*v49 + 32);
            v51 = *(*v49 + 55);
            if (v51 >= 0)
            {
              v50 = (*v49 + 32);
            }

            v52 = *(*v49 + 40);
            if (v51 >= 0)
            {
              v52 = *(*v49 + 55);
            }

            if (v52)
            {
              v53 = 2 * v52;
              while ((*v50 + 10332) <= 0xD45Bu && (*v50 - 12644) < 0xFFCDu)
              {
                ++v50;
                v53 -= 2;
                if (!v53)
                {
                  goto LABEL_99;
                }
              }
            }

            else
            {
LABEL_99:
              v54 = a2[7] - v49;
              if (v54 >= 2)
              {
                v55 = 1;
                while (1)
                {
                  v56 = v49[v55];
                  v57 = *(v56 + 55);
                  v58 = v57;
                  if ((v57 & 0x80u) != 0)
                  {
                    v57 = *(v56 + 40);
                  }

                  if (v57 == a4)
                  {
                    v61 = *(v56 + 32);
                    v59 = v56 + 32;
                    v60 = v61;
                    v62 = (v58 >= 0 ? v59 : v60);
                    if (!memcmp(v62, a3, 2 * a4))
                    {
                      break;
                    }
                  }

                  if (v54 == ++v55)
                  {
                    goto LABEL_114;
                  }
                }

                sub_2992AC320(a2, v55, &v63);
                if (v63)
                {
                  (*(*v63 + 16))(v63);
                }
              }
            }
          }
        }

        else if (a4)
        {
          goto LABEL_90;
        }

LABEL_114:
        result = v70;
        v70 = 0;
        if (result)
        {
          return (*(*result + 16))(result);
        }

        return result;
      }
    }

LABEL_85:
    sub_2992ABB04(a2, &v70, 0);
    goto LABEL_86;
  }

  if (result)
  {
    sub_2992AC320(a2, 0, &v70);
    goto LABEL_21;
  }

  return result;
}

void sub_29938B75C(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22)
{
  if (a22)
  {
    (*(*a22 + 16))(a22, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29938B850(uint64_t a1, uint64_t a2)
{
  (*(**(a1 + 72) + 56))(*(a1 + 72));
  v4 = *(a2 + 48);
  v5 = *(a2 + 56);
  if (v4 != v5)
  {
    v6 = 0;
    do
    {
      v7 = *v4;
      v8 = v6 + 1;
      *(*v4 + 8) = v6 + 1;
      if (v6 <= 8)
      {
        (*(*v7 + 528))(v7, 12, "Autocorrected", 1);
        v7 = *v4;
      }

      *v4++ = 0;
      v9 = sub_29928A270(v7);
      (*(**(a1 + 72) + 16))(*(a1 + 72), v9);

      v6 = v8;
    }

    while (v4 != v5);
  }

  v10 = *(**(a1 + 72) + 64);

  return v10();
}

uint64_t sub_29938B990(uint64_t a1, const __CFString *a2, uint64_t a3, const __CFArray *a4)
{
  if (!a2)
  {
    return 0;
  }

  v5 = *(a1 + 160);
  if (!*(v5 + 32) || !*(v5 + 40))
  {
    return 0;
  }

  v6 = a4;
  sub_29938BA48(a1, a4, a3, 0);
  if (v6)
  {
    sub_2993245EC(v6);
    v6 = *(v6 + 6);
  }

  if (CFStringGetLength(a2) < 1)
  {
    sub_29938BB9C(a1);
    return 1;
  }

  else
  {

    return sub_29938AB20(a1, a2, v8, v9, v6);
  }
}

uint64_t sub_29938BA48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  if (a2)
  {
    operator new();
  }

  v7 = *(a1 + 64);
  *(a1 + 64) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
    v8 = *(a1 + 64);
  }

  else
  {
    v8 = 0;
  }

  sub_299256E88(a1, v8);
  *(*(a1 + 120) + 96) = 1;
  result = sub_2993B5454(v5, 0, v4);
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_29938BB9C(uint64_t a1)
{
  v15[4] = *MEMORY[0x29EDCA608];
  ptr = 0;
  v2 = sub_2993652F8(0xDu);
  ptr = os_signpost_id_make_with_pointer(v2, &ptr);
  v3 = sub_2993652F8(0xDu);
  v4 = ptr;
  if (ptr - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = v3;
    if (os_signpost_enabled(v3))
    {
      LOWORD(v11) = 0;
      _os_signpost_emit_with_name_impl(&dword_29918C000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v4, "MecabraPredictionAnalyzeWithContext", &unk_29945DB9F, &v11, 2u);
    }
  }

  v6 = 96;
  if (*(a1 + 218))
  {
    v6 = 104;
  }

  if (*(a1 + v6))
  {
    (*(**(a1 + 168) + 16))(&v11);
    v15[0] = &unk_2A1F65CF8;
    v15[1] = sub_2992AD148;
    v15[3] = v15;
    sub_2992AB9D4(&v11, v15);
    sub_29922D72C(v15);
    sub_2992AC684(&v11, 5, "Final", 0, 1);
    sub_29938B850(a1, &v11);
    v11 = &unk_2A1F65118;
    v15[0] = &v13;
    sub_29921EC68(v15);
    sub_29921ED28(&v12);
  }

  v7 = sub_2993652F8(0xDu);
  v8 = ptr;
  if (ptr - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v9 = v7;
    if (os_signpost_enabled(v7))
    {
      LOWORD(v11) = 0;
      _os_signpost_emit_with_name_impl(&dword_29918C000, v9, OS_SIGNPOST_INTERVAL_END, v8, "MecabraPredictionAnalyzeWithContext", &unk_29945DB9F, &v11, 2u);
    }
  }

  return 1;
}

void sub_29938BDB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_29922D72C(v9 - 72);
  sub_29921D794(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_29938BDE4(uint64_t a1, const __CFArray *a2, uint64_t a3, uint64_t a4)
{
  v68[6] = *MEMORY[0x29EDCA608];
  if (!a2)
  {
    return 0;
  }

  v5 = *(a1 + 160);
  if (!*(v5 + 32) || !*(v5 + 40))
  {
    return 0;
  }

  v9 = sub_2992C0B24(a2);
  if (!v9)
  {
    sub_29938BA48(a1, a4, a3, 0);
    v21 = sub_2992C0BE0(a2);
    ptr[1] = v21;
    if (CFStringGetLength(v21))
    {
      v22 = sub_2993652F8(3u);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v21;
        _os_log_debug_impl(&dword_29918C000, v22, OS_LOG_TYPE_DEBUG, "[KoreanEngine::analyzeGesturesWithContext] analysisStr: [%@]", &buf, 0xCu);
      }

      ptr[0] = 0;
      v23 = sub_2993652F8(0xDu);
      ptr[0] = os_signpost_id_make_with_pointer(v23, ptr);
      v24 = sub_2993652F8(0xDu);
      v25 = ptr[0];
      if ((ptr[0] - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v26 = v24;
        if (os_signpost_enabled(v24))
        {
          LOWORD(buf) = 0;
          _os_signpost_emit_with_name_impl(&dword_29918C000, v26, OS_SIGNPOST_INTERVAL_BEGIN, v25, "analyzeGesturesWithContext", &unk_29945DB9F, &buf, 2u);
        }
      }

      (*(**(a1 + 120) + 32))(*(a1 + 120));
      sub_29932CA50(*(a1 + 120), 1);
      v28 = &unk_2A1F65118;
      v29 = 0u;
      v30 = 0u;
      LODWORD(v31) = 1065353216;
      v33 = 0;
      v34 = 0;
      v32 = 0;
      sub_299276BDC(v21, &v45);
      sub_2993E36C4(v36, a2);
      sub_29922B93C(*(a1 + 160), v45, (v46 - v45) >> 1);
    }

    sub_29938BB9C(a1);
    if (v21)
    {
      CFRelease(v21);
    }

    return 1;
  }

  if (v9 != CFArrayGetCount(a2))
  {
    return 0;
  }

  v10 = *(a1 + 200);
  if (!v10)
  {
    return 0;
  }

  v11 = *(v10 + 8);
  if (!v11)
  {
    return 0;
  }

  result = sub_2992C1E9C(0);
  if (!result)
  {
    return result;
  }

  if (!*v11)
  {
    return 0;
  }

  sub_29938BA48(a1, a4, a3, 1);
  (*(**(a1 + 120) + 32))(*(a1 + 120));
  sub_29932CA50(*(a1 + 120), 1);
  v13 = *(a1 + 200);
  if (v13)
  {
    v14 = *(v13 + 8);
    if (v14)
    {
      if (sub_2992C1E9C(0) && *v14)
      {
        sub_2992CAB70(*(a1 + 200));
      }
    }
  }

  v15 = *(a1 + 208);
  if (v15)
  {
    v16 = *(v15 + 8);
    if (v16)
    {
      if (sub_2992C1E9C(0) && *v16)
      {
        sub_2992CAB70(*(a1 + 208));
      }
    }
  }

  result = sub_2992CAFEC(*(a1 + 200), a2);
  if (result)
  {
    v17 = *(a1 + 8);
    if (v17 != *a1 && *(v17 - 2) != 32)
    {
      sub_2992569E8(a1);
    }

    v45 = 0;
    v46 = &v45;
    v47 = 0x3002000000;
    v48 = sub_29938C8A4;
    v49 = sub_29938C8B4;
    cf = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9000]);
    v37 = 0;
    v38 = &v37;
    v39 = 0x4002000000;
    v40 = sub_29938C8C0;
    v41 = sub_29938C8E4;
    __p = 0;
    v43 = 0;
    v44 = 0;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v62 = 0x7002000000;
    v63 = sub_29938C8FC;
    v64 = sub_29938C96C;
    v65 = &unk_2A1F65118;
    memset(v66, 0, sizeof(v66));
    v67 = 1065353216;
    memset(v68, 0, 24);
    v36[0] = 0;
    v36[1] = v36;
    v36[2] = 0x2000000000;
    v36[3] = 0;
    v18 = *(a1 + 200);
    *v51 = MEMORY[0x29EDCA5F8];
    v52 = 0x40000000;
    v53 = sub_29938C9CC;
    v54 = &unk_29EF13A70;
    p_buf = &buf;
    v59 = a1;
    v55 = &v45;
    v56 = &v37;
    v57 = v36;
    sub_2992CB16C(v18, v51);
    v35[0] = 0;
    v35[1] = v35;
    v35[2] = 0x2000000000;
    v35[3] = 0;
    if ((*(a1 + 49) & 0x20) != 0 && sub_2992CAFEC(*(a1 + 208), a2))
    {
      v19 = *(a1 + 208);
      v28 = MEMORY[0x29EDCA5F8];
      *&v29 = 0x40000000;
      *(&v29 + 1) = sub_29938CD4C;
      *&v30 = &unk_29EF13A98;
      *(&v30 + 1) = &v45;
      v31 = &v37;
      v32 = &buf;
      v33 = v35;
      v34 = a1;
      sub_2992CB16C(v19, &v28);
    }

    v20 = sub_2993652F8(0xFu);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      sub_2993B56E0("[Input Transcoder]", v46[5], v38 + 5);
    }

    v60[0] = &unk_2A1F65CF8;
    v60[1] = sub_2992AD148;
    v60[3] = v60;
    sub_2992AB9D4((*(&buf + 1) + 40), v60);
    sub_29922D72C(v60);
    sub_29938B850(a1, *(&buf + 1) + 40);
    _Block_object_dispose(v35, 8);
    _Block_object_dispose(v36, 8);
    _Block_object_dispose(&buf, 8);
    v65 = &unk_2A1F65118;
    v36[0] = v68;
    sub_29921EC68(v36);
    sub_29921ED28(v66);
    _Block_object_dispose(&v37, 8);
    if (__p)
    {
      v43 = __p;
      operator delete(__p);
    }

    _Block_object_dispose(&v45, 8);
    if (cf)
    {
      CFRelease(cf);
    }

    return 1;
  }

  return result;
}

void sub_29938C6EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  if (a2)
  {
    sub_2991EDA10(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29938C8A4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  return result;
}

__n128 sub_29938C8C0(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void sub_29938C8E4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

__n128 sub_29938C8FC(void *a1, uint64_t a2)
{
  a1[5] = &unk_2A1F65118;
  sub_299318158((a1 + 6), (a2 + 48));
  a1[11] = 0;
  a1[12] = 0;
  a1[13] = 0;
  result = *(a2 + 88);
  *(a1 + 11) = result;
  a1[13] = *(a2 + 104);
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  return result;
}

uint64_t sub_29938C96C(uint64_t a1)
{
  *(a1 + 40) = &unk_2A1F65118;
  v3 = (a1 + 88);
  sub_29921EC68(&v3);
  return sub_29921ED28(a1 + 48);
}

void *sub_29938C9CC(void *result, CFStringRef theString, float a3)
{
  v29 = *MEMORY[0x29EDCA608];
  if (theString)
  {
    v5 = result;
    v6 = result[8];
    result = CFStringGetLength(theString);
    if (result)
    {
      CFArrayAppendValue(*(*(v5[4] + 8) + 40), theString);
      v7 = *(v5[5] + 8);
      v9 = v7[6];
      v8 = v7[7];
      if (v9 >= v8)
      {
        v11 = v7[5];
        v12 = v9 - v11;
        v13 = (v9 - v11) >> 2;
        v14 = v13 + 1;
        if ((v13 + 1) >> 62)
        {
          sub_299212A8C();
        }

        v15 = v8 - v11;
        if (v15 >> 1 > v14)
        {
          v14 = v15 >> 1;
        }

        v16 = v15 >= 0x7FFFFFFFFFFFFFFCLL;
        v17 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v16)
        {
          v17 = v14;
        }

        if (v17)
        {
          sub_2992F86B0((v7 + 5), v17);
        }

        v18 = (v9 - v11) >> 2;
        v19 = (4 * v13);
        v20 = (4 * v13 - 4 * v18);
        *v19 = a3;
        v10 = v19 + 1;
        memcpy(v20, v11, v12);
        v21 = v7[5];
        v7[5] = v20;
        v7[6] = v10;
        v7[7] = 0;
        if (v21)
        {
          operator delete(v21);
        }
      }

      else
      {
        *v9 = a3;
        v10 = v9 + 1;
      }

      v7[6] = v10;
      if ((a3 < 0.05 || *(*(v5[6] + 8) + 24) >= 20) && *(*(v5[7] + 8) + 96) - *(*(v5[7] + 8) + 88) >= 0x29uLL)
      {
        sub_2993A03A8(theString);
      }

      v22 = &unk_2A1F65118;
      v23 = 0u;
      v24 = 0u;
      v25 = 1065353216;
      v27 = 0;
      v28 = 0;
      v26 = 0;
      sub_29938AEBC(v6, &v22, theString, 0, 1);
    }
  }

  return result;
}

void sub_29938CD24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29921D794(va);
  _Unwind_Resume(a1);
}

CFIndex sub_29938CD4C(CFIndex result, CFStringRef theString, _BYTE *a3, float a4)
{
  v30 = *MEMORY[0x29EDCA608];
  if (theString)
  {
    v6 = result;
    v7 = *(result + 64);
    result = CFStringGetLength(theString);
    if (result)
    {
      CFArrayAppendValue(*(*(*(v6 + 32) + 8) + 40), theString);
      v8 = *(*(v6 + 40) + 8);
      v10 = v8[6];
      v9 = v8[7];
      if (v10 >= v9)
      {
        v12 = v8[5];
        v13 = v10 - v12;
        v14 = (v10 - v12) >> 2;
        v15 = v14 + 1;
        if ((v14 + 1) >> 62)
        {
          sub_299212A8C();
        }

        v16 = v9 - v12;
        if (v16 >> 1 > v15)
        {
          v15 = v16 >> 1;
        }

        v17 = v16 >= 0x7FFFFFFFFFFFFFFCLL;
        v18 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v17)
        {
          v18 = v15;
        }

        if (v18)
        {
          sub_2992F86B0((v8 + 5), v18);
        }

        v19 = (v10 - v12) >> 2;
        v20 = (4 * v14);
        v21 = (4 * v14 - 4 * v19);
        *v20 = a4;
        v11 = v20 + 1;
        memcpy(v21, v12, v13);
        v22 = v8[5];
        v8[5] = v21;
        v8[6] = v11;
        v8[7] = 0;
        if (v22)
        {
          operator delete(v22);
        }
      }

      else
      {
        *v10 = a4;
        v11 = v10 + 1;
      }

      v8[6] = v11;
      v23 = &unk_2A1F65118;
      v24 = 0u;
      v25 = 0u;
      v26 = 1065353216;
      v28 = 0;
      v29 = 0;
      v27 = 0;
      sub_29938AEBC(v7, &v23, theString, 0, 1);
    }
  }

  return result;
}

void sub_29938D020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29921D794(va);
  _Unwind_Resume(a1);
}

void sub_29938D048(uint64_t a1, uint64_t **a2, uint64_t *a3, char a4)
{
  v106 = *MEMORY[0x29EDCA608];
  if ((*(a1 + 49) & 0x40) != 0)
  {
    *__dst = &unk_2A1F754C8;
    *&__dst[8] = sub_29939F148;
    *&v92 = __dst;
    sub_29938F598(*(a1 + 160), a3, __dst, 1);
  }

  else
  {
    *__dst = &unk_2A1F754C8;
    *&__dst[8] = sub_29939F19C;
    *&v92 = __dst;
    sub_29938F598(*(a1 + 160), a3, __dst, 0);
  }

  sub_2992E55A4(__dst);
  v7 = *(a1 + 48);
  if ((v7 & 2) == 0)
  {
    goto LABEL_11;
  }

  if ((v7 & 0x40000) == 0)
  {
    v8 = *(a1 + 176);
    if (v8)
    {
      v9 = atomic_load((v8 + 97));
      if ((v9 & 1) == 0)
      {
        v10 = atomic_load((v8 + 96));
        if (v10)
        {
          LODWORD(v99) = 0;
          operator new();
        }
      }
    }
  }

  if (a2[6] == a2[7])
  {
LABEL_11:
    if ((a4 & 1) == 0)
    {
      sub_29922B434();
    }

    if (**(a1 + 136))
    {
      v11 = *(a3 + 1);
      *v87 = *a3;
      *v85 = v11;
      v99 = 0;
      v100 = 0uLL;
      v81 = 0;
      *&v92 = 0;
      operator new();
    }

    if (a2[6] != a2[7])
    {
      v12 = 96;
      if (*(a1 + 218))
      {
        v12 = 104;
      }

      if (*(a1 + v12))
      {
        v13 = a3[1];
        if (v13 >= 5)
        {
          v14 = a3[5];
          if (v14)
          {
            v15 = *a3;
            v16 = 2 * v14;
            v17 = a3[4];
            while (*v17 - 12593 < 0x33)
            {
              v17 += 2;
              v16 -= 2;
              if (!v16)
              {
                goto LABEL_44;
              }
            }

            sub_29939F510(a3[4], v14);
            v18 = 0;
            v20 = v13 - v19;
            v21 = &v15[2 * (v13 - v19)];
            v22 = "A1B1E1G1";
            while (*v22 != *(v21 - 1))
            {
              v18 -= 2;
              v22 += 2;
              if (v18 == -8)
              {
                v23 = 0;
                goto LABEL_39;
              }
            }

            v23 = 0;
            if (-v18 != -2)
            {
              v24 = 42;
              while (*v25 != *(v21 - 2))
              {
                v25 += 2;
                v24 -= 2;
                if (!v24)
                {
                  v25 = "";
                  break;
                }
              }

              v26 = v25 != "";
              if (v25 == "")
              {
                v25 = 0;
              }
            }

LABEL_39:
            if ((v23 | sub_29939F3E0(v21 - 1, 2 * (v15 != 0))) == 1)
            {
              *__dst = &unk_2A1F65118;
              *&__dst[8] = 0u;
              v92 = 0u;
              LODWORD(v93) = 1065353216;
              v95 = 0;
              v96 = 0;
              v94 = 0;
              if (v15)
              {
                v27 = v20 - 1;
              }

              else
              {
                v27 = 0;
              }

              sub_29922B93C(*(a1 + 160), v15, v27);
            }
          }
        }
      }
    }

LABEL_44:
    v28 = a2[6];
    v29 = a2[7];
    if (v28 != v29)
    {
      v30 = 96;
      if (*(a1 + 218))
      {
        v30 = 104;
      }

      if (*(a1 + v30) && (*(a1 + 48) & 2) != 0)
      {
        *__dst = &unk_2A1F65118;
        *&__dst[8] = 0u;
        v92 = 0u;
        LODWORD(v93) = 1065353216;
        v95 = 0;
        v96 = 0;
        v94 = 0;
        v31 = *v28;
        v32 = (*(**v28 + 96))(*v28) == 81 || (*(*v31 + 96))(v31) == 71;
        v33 = (*(*v31 + 248))(v31, 0, 0);
        v35 = *(v31 + 32);
        v36 = *(v31 + 55);
        if (v36 >= 0)
        {
          v35 = v31 + 32;
        }

        v37 = *(v31 + 40);
        if (v36 >= 0)
        {
          v37 = *(v31 + 55);
        }

        if (*(v35 + 2 * v37 - 2) - 12593 >= 0x33 && !v32 && ((v33 ^ 1) & 1) == 0)
        {
          (*(*v31 + 528))(v31, 3, "add completion", 1);
          (*(**(a1 + 168) + 24))(&v99);
          if (v103 != v104)
          {
            sub_2992AC320(&v99, 0, &__p);
            v90[0] = &unk_2A1F65308;
            v90[3] = v90;
            sub_2992AB710(__dst, &__p, 1, 0, v90);
            sub_29921F128(v90);
            v38 = __p;
            __p = 0;
            if (v38)
            {
              (*(*v38 + 16))(v38);
            }
          }

          v99 = &unk_2A1F65118;
          __p = &v103;
          sub_29921EC68(&__p);
          sub_29921ED28(&v100);
        }

        __p = 0;
        v83 = 0;
        v84 = 0;
        v39 = a2;
        v41 = a2[6];
        v40 = a2[7];
        if (v40 != v41)
        {
          v42 = 0;
          do
          {
            v43 = v41[v42];
            v44 = *(v43 + 55);
            v45 = v43 + 32;
            if (v44 < 0)
            {
              v45 = *(v43 + 32);
            }

            if (v44 < 0)
            {
              v44 = *(v43 + 40);
            }

            if (*(v45 + 2 * v44 - 2) - 12593 <= 0x32)
            {
              (*(**(a1 + 168) + 24))(&v99);
              if (v103 != v104)
              {
                sub_2992AC320(&v99, 0, &v81);
                v87[0] = &unk_2A1F65308;
                v89 = v87;
                sub_2992AB710(__dst, &v81, 1, 0, v87);
                sub_29921F128(v87);
                v46 = v81;
                v81 = 0;
                if (v46)
                {
                  (*(*v46 + 2))(v46);
                }
              }

              v47 = (*(*v43 + 96))(v43);
              if (v47 != 73 && v47 != 83)
              {
                v48 = v83;
                if (v83 >= v84)
                {
                  v50 = __p;
                  v51 = v83 - __p;
                  v52 = (v83 - __p) >> 3;
                  v53 = v52 + 1;
                  if ((v52 + 1) >> 61)
                  {
                    sub_299212A8C();
                  }

                  v54 = v84 - __p;
                  if ((v84 - __p) >> 2 > v53)
                  {
                    v53 = v54 >> 2;
                  }

                  v55 = v54 >= 0x7FFFFFFFFFFFFFF8;
                  v56 = 0x1FFFFFFFFFFFFFFFLL;
                  if (!v55)
                  {
                    v56 = v53;
                  }

                  if (v56)
                  {
                    sub_299236FB8(&__p, v56);
                  }

                  v57 = (8 * v52);
                  v58 = &v57[-((v83 - __p) >> 3)];
                  *v57 = v42;
                  v49 = (v57 + 1);
                  memcpy(v58, v50, v51);
                  v59 = __p;
                  __p = v58;
                  v83 = v49;
                  v84 = 0;
                  if (v59)
                  {
                    operator delete(v59);
                  }
                }

                else
                {
                  *v83 = v42;
                  v49 = v48 + 8;
                }

                v83 = v49;
              }

              v99 = &unk_2A1F65118;
              v81 = &v103;
              sub_29921EC68(&v81);
              sub_29921ED28(&v100);
              v39 = a2;
              v41 = a2[6];
              v40 = a2[7];
            }

            ++v42;
          }

          while (v42 < v40 - v41);
        }

        sub_2992AC390(v39, &__p, v34);
        (*(**(a1 + 160) + 24))(*(a1 + 160), __dst, a1);
        v61 = v94;
        for (i = v95; v61 != i; ++v61)
        {
          sub_2993904D0(a1, *v61, a3[6]);
          v85[0] = &unk_2A1F65308;
          v86 = v85;
          sub_2992AB710(a2, v61, 1, 0, v85);
          sub_29921F128(v85);
        }

        if (__p)
        {
          v83 = __p;
          operator delete(__p);
        }

        *__dst = &unk_2A1F65118;
        v99 = &v94;
        sub_29921EC68(&v99);
        sub_29921ED28(&__dst[8]);
        v28 = a2[6];
        v29 = a2[7];
      }

      if (v28 != v29 && (*(a1 + 48) & 2) != 0)
      {
        *__dst = &unk_2A1F65118;
        *&__dst[8] = 0u;
        v92 = 0u;
        LODWORD(v93) = 1065353216;
        v95 = 0;
        v96 = 0;
        v94 = 0;
        v87[0] = 0;
        operator new();
      }
    }

    *__dst = &unk_2A1F65118;
    *&__dst[8] = 0u;
    v92 = 0u;
    LODWORD(v93) = 1065353216;
    v95 = 0;
    v96 = 0;
    v94 = 0;
    if (*(*(a1 + 144) + 344))
    {
      *&v101 = 0;
      operator new();
    }

    *__dst = &unk_2A1F65118;
    v87[0] = &v94;
    sub_29921EC68(v87);
    sub_29921ED28(&__dst[8]);
    if ((*(a1 + 50) & 4) == 0)
    {
      v62 = *(a1 + 176);
      if (v62)
      {
        v63 = atomic_load((v62 + 97));
        if ((v63 & 1) == 0)
        {
          v64 = atomic_load((v62 + 96));
          if (v64)
          {
            LODWORD(v99) = 0;
            operator new();
          }
        }
      }
    }

    if ((*(a1 + 50) & 4) == 0)
    {
      v65 = *(a1 + 184);
      if (v65)
      {
        v66 = atomic_load((v65 + 97));
        if ((v66 & 1) == 0)
        {
          v67 = atomic_load((v65 + 96));
          if (v67)
          {
            LODWORD(v99) = 0;
            operator new();
          }
        }
      }
    }

    if ((*(a1 + 50) & 4) == 0)
    {
      v68 = *(a1 + 192);
      if (v68)
      {
        v69 = atomic_load((v68 + 97));
        if ((v69 & 1) == 0)
        {
          v70 = atomic_load((v68 + 96));
          if (v70)
          {
            LODWORD(v99) = 0;
            operator new();
          }
        }
      }
    }

    v71 = *(a1 + 48);
    if ((v71 & 0x40000) == 0)
    {
      v72 = *(a1 + 120);
      if (v72)
      {
        v73 = *(v72 + 8);
        if (v73)
        {
          v87[0] = 0;
          v87[1] = 0;
          v88 = 0;
          v74 = a3[7];
          *__dst = &unk_2A1F75A80;
          *&__dst[8] = v87;
          *&__dst[16] = a3;
          *&v92 = __dst;
          if ((v71 & 2) != 0)
          {
            sub_2992C9448(v73, v74, __dst, 0xFFFFFFFFLL);
          }

          else
          {
            sub_2992C9280(v73, v74, __dst);
          }

          sub_2992E65CC(__dst);
          if (v87[0] != v87[1])
          {
            sub_2992E3B80(v87[0], v87[1], 126 - 2 * __clz(0x2E8BA2E8BA2E8BA3 * ((v87[1] - v87[0]) >> 3)), 1);
            v99 = &unk_2A1F65118;
            v100 = 0u;
            v101 = 0u;
            v102 = 1065353216;
            v104 = 0;
            v105 = 0;
            v103 = 0;
            if (v87[1] != v87[0])
            {
              v75 = v87[0];
              if (*(v87[0] + 23) < 0)
              {
                sub_29922C89C(__dst, *v87[0], *(v87[0] + 1));
              }

              else
              {
                v76 = *v87[0];
                *&__dst[16] = *(v87[0] + 2);
                *__dst = v76;
              }

              v92 = 0uLL;
              v93 = 0;
              sub_29922C820(&v92, *(v75 + 3), *(v75 + 4), (*(v75 + 4) - *(v75 + 3)) >> 3);
              v94 = 0;
              v95 = 0;
              v96 = 0;
              sub_299215EC0(&v94, *(v75 + 6), *(v75 + 7), (*(v75 + 7) - *(v75 + 6)) >> 1);
              v77 = *(v75 + 18);
              v98 = *(v75 + 38);
              v97 = v77;
              sub_29922B434();
            }

            (*(**(a1 + 160) + 24))(*(a1 + 160), &v99, a1);
            v79 = v103;
            for (j = v104; v79 != j; ++v79)
            {
              sub_2993904D0(a1, *v79, a3[6]);
              *__dst = &unk_2A1F756C0;
              *&__dst[8] = sub_29939095C;
              *&v92 = __dst;
              sub_2992AB710(a2, v79, 1, 0, __dst);
              sub_29921F128(__dst);
            }

            v99 = &unk_2A1F65118;
            v85[0] = &v103;
            sub_29921EC68(v85);
            sub_29921ED28(&v100);
          }

          v99 = v87;
          sub_2992E53AC(&v99);
        }
      }
    }
  }
}

void sub_29938EFE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, char a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a21)
  {
    (*(*a21 + 16))(a21, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  sub_29921D794(&a49);
  _Unwind_Resume(a1);
}

uint64_t sub_29938F598(uint64_t a1, uint64_t *a2, uint64_t a3, int a4)
{
  v5[4] = *MEMORY[0x29EDCA608];
  v5[0] = &unk_2A1F75568;
  v5[1] = a2;
  v5[3] = v5;
  sub_29922BE28(a1, a2, a3, v5, a4, 0);
  return sub_29939144C(v5);
}

void sub_29938F624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29939144C(va);
  _Unwind_Resume(a1);
}

void sub_29938F638(uint64_t a1, const __CFString *a2)
{
  sub_299276BDC(a2, v3);
  sub_29939FAF4(v3[0], (v3[1] - v3[0]) >> 1, &__p);
  sub_29922B434();
}

void sub_29938F734(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (a16)
  {
    (*(*a16 + 16))(a16, a2, a3, a4, a5, a6, a7, a8);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29938F7A0(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  if (!a3)
  {
    return 0;
  }

  v5 = *(*(a1 + 120) + 104);
  if (!v5)
  {
    return 0;
  }

  Surface = MecabraCandidateGetSurface(a3, a2, a3, a4);
  v10 = MecabraCandidateGetSurface(v5, v7, v8, v9);
  if (CFStringCompare(Surface, v10, 0))
  {
    return 0;
  }

  v12 = *(a1 + 120);

  return sub_29932D3E4(v12);
}

uint64_t sub_29938F828(uint64_t a1)
{
  (*(**(a1 + 120) + 80))(*(a1 + 120));
  result = **(a1 + 112);
  if (result)
  {

    return MEMORY[0x2A1C680D0]();
  }

  return result;
}

void sub_29938F89C(uint64_t a1)
{
  v29 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 56);
  v3 = *(v2 + 112);
  if ((v3 & 0x10) != 0)
  {
    v4 = *(v2 + 144);
    if (v4)
    {
      v5 = CFURLCreateWithFileSystemPath(0, *(v2 + 144), kCFURLPOSIXPathStyle, 1u);
      theDict = v5;
      sub_2993B4AE4(v5, @"ko.rnnlm", @"ko", &v25);
      v6 = v25;
      if (v25)
      {
        v25 = 0;
        v7 = *(a1 + 96);
        *(a1 + 96) = v6;
        if (v7)
        {
          (*(*v7 + 8))(v7);
          v6 = *(a1 + 96);
        }

        *(*(*(a1 + 160) + 16) + 8) = v6;
        v8 = *(a1 + 168);
        *(v8 + 16) = v6;
        *(*(v8 + 24) + 16) = v6;
      }

      else
      {
        v9 = sub_2993652F8(9u);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *__p = 138412290;
          *&__p[4] = v4;
          _os_log_debug_impl(&dword_29918C000, v9, OS_LOG_TYPE_DEBUG, "Cannot load LM at path [%@]", __p, 0xCu);
        }
      }

      v10 = v25;
      v25 = 0;
      if (v10)
      {
        (*(*v10 + 8))(v10);
      }

      if (v5)
      {
        CFRelease(v5);
      }

      v2 = *(a1 + 56);
      v3 = *(v2 + 112);
    }

    v3 &= ~0x10uLL;
    *(v2 + 112) = v3;
  }

  if ((v3 & 0x800) != 0)
  {
    v11 = *(v2 + 168);
    if (!v11)
    {
LABEL_24:
      v3 &= ~0x800uLL;
      *(v2 + 112) = v3;
      goto LABEL_25;
    }

    theDict = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    CFDictionaryAddValue(theDict, *MEMORY[0x29EDC57F0], @"ko_KR");
    CFDictionaryAddValue(theDict, *MEMORY[0x29EDC57D0], v11);
    v12 = CFArrayCreate(0, &theDict, 1, MEMORY[0x29EDB9000]);
    v25 = v12;
    if ((sub_299308C88(*(a1 + 136), v12) & 1) == 0 && (v13 = sub_2993652F8(9u), os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG)))
    {
      *__p = 138412290;
      *&__p[4] = v11;
      _os_log_debug_impl(&dword_29918C000, v13, OS_LOG_TYPE_DEBUG, "Cannot load Siri lexicon at path [%@]", __p, 0xCu);
      if (!v12)
      {
        goto LABEL_21;
      }
    }

    else if (!v12)
    {
LABEL_21:
      if (theDict)
      {
        CFRelease(theDict);
      }

      v2 = *(a1 + 56);
      v3 = *(v2 + 112);
      goto LABEL_24;
    }

    CFRelease(v12);
    goto LABEL_21;
  }

LABEL_25:
  if ((v3 & 0x2000) != 0)
  {
    operator new();
  }

  if ((v3 & 0x4000) != 0)
  {
    operator new();
  }

  v14 = *(v2 + 184);
  if (v14)
  {
    v15 = *(a1 + 152);
    sub_299278568(v14, __p);
    v16 = sub_299397A38(v15, __p);
    v17 = v16;
    if (v28 < 0)
    {
      operator delete(*__p);
      if (v17)
      {
        goto LABEL_32;
      }
    }

    else if (v16)
    {
LABEL_32:
      v18 = *(a1 + 152);
      *(*(a1 + 160) + 24) = v18;
      *(*(a1 + 168) + 40) = v18;
      goto LABEL_36;
    }

    v19 = sub_2993652F8(9u);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *__p = 138412290;
      *&__p[4] = v14;
      _os_log_debug_impl(&dword_29918C000, v19, OS_LOG_TYPE_DEBUG, "Cannot load blocklist at path [%@]", __p, 0xCu);
    }
  }

LABEL_36:
  v20 = *(*(a1 + 56) + 176);
  if (!v20)
  {
    return;
  }

  v21 = *(a1 + 144);
  sub_299278568(v20, __p);
  v22 = sub_299397A38(v21, __p);
  v23 = v22;
  if (v28 < 0)
  {
    operator delete(*__p);
    if (v23)
    {
      return;
    }
  }

  else if (v22)
  {
    return;
  }

  v24 = sub_2993652F8(9u);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    *__p = 138412290;
    *&__p[4] = v20;
    _os_log_debug_impl(&dword_29918C000, v24, OS_LOG_TYPE_DEBUG, "Cannot load customized lexicon at path [%@]", __p, 0xCu);
  }
}

void sub_29938FD34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a9)
  {
    (*(*a9 + 8))(a9, a2, a3, a4, a5, a6, a7, a8);
  }

  sub_29920FE30(&a10, 0);
  _Unwind_Resume(a1);
}

void sub_29938FE08(uint64_t a1, const void *a2)
{
  if (a2)
  {
    operator new();
  }
}

void sub_29938FEEC(uint64_t a1, const void *a2)
{
  if (a2)
  {
    operator new();
  }
}

void sub_29938FFD0(uint64_t a1, const void *a2)
{
  if (a2)
  {
    operator new();
  }
}

uint64_t sub_2993900B4(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x7002000000;
  v14 = sub_29938C8FC;
  v15 = sub_29938C96C;
  v16 = &unk_2A1F65118;
  memset(v17, 0, sizeof(v17));
  v18 = 1065353216;
  memset(v19, 0, sizeof(v19));
  v3 = *(a1 + 176);
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 0x40000000;
  v10[2] = sub_2993902D8;
  v10[3] = &unk_29EF13AC0;
  v10[4] = &v11;
  sub_2993736D8(v3, a2, v10);
  (*(**(a1 + 72) + 56))(*(a1 + 72));
  v4 = v12[11];
  v5 = v12[12];
  while (v4 != v5)
  {
    v6 = *v4;
    *v4 = 0;
    v7 = sub_29928A270(v6);
    (*(**(a1 + 72) + 16))(*(a1 + 72), v7);

    ++v4;
  }

  (*(**(a1 + 72) + 32))(*(a1 + 72), sub_2992E99C8, 1);
  v8 = *(*(a1 + 72) + 8);
  _Block_object_dispose(&v11, 8);
  v16 = &unk_2A1F65118;
  v20 = v19;
  sub_29921EC68(&v20);
  sub_29921ED28(v17);
  return v8;
}

void sub_2993902B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  sub_29921D794(v11);
  _Unwind_Resume(a1);
}

void sub_29939044C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29921F128(va);
  if (a7)
  {
    (*(*a7 + 16))(a7);
  }

  if (a6)
  {
    (*(*a6 + 16))(a6);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2993904D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = *(a1 + 48);
  v7 = (a2 + 32);
  v8 = *(a2 + 55);
  if (v8 >= 0)
  {
    v9 = (a2 + 32);
  }

  else
  {
    v9 = *(a2 + 32);
  }

  if (v8 >= 0)
  {
    v10 = *(a2 + 55);
  }

  else
  {
    v10 = *(a2 + 40);
  }

  if (!v10)
  {
    goto LABEL_24;
  }

  v11 = 0;
  v12 = 2 * v10;
  v13 = 2 * v10;
  v14 = v9;
  do
  {
    v15 = *v14;
    if (v15 == 39)
    {
      v16 = L"'-";
      goto LABEL_13;
    }

    if (v15 == 45)
    {
      v16 = L"-";
LABEL_13:
      v17 = 0;
      goto LABEL_15;
    }

    v16 = 0;
    v17 = 1;
LABEL_15:
    if (v16 - L"'-" == -2)
    {
      v18 = 1;
    }

    else
    {
      v18 = v17;
    }

    v11 += v18;
    ++v14;
    v13 -= 2;
  }

  while (v13);
  v19 = v9;
  while ((*v19 & 0xFFDFu) - 65 > 0x19)
  {
    ++v19;
    v12 -= 2;
    if (!v12)
    {
      goto LABEL_24;
    }
  }

  v20 = a3;
  if (v11 != a3)
  {
LABEL_24:
    sub_29939FAF4(v9, v10, &__p);
    if (v45 >= 0)
    {
      v20 = v45;
    }

    else
    {
      v20 = v44;
    }

    if ((v45 & 0x8000000000000000) != 0)
    {
      operator delete(__p);
    }
  }

  v21 = v20 - v3;
  v22 = (*(*a2 + 112))(a2);
  v23 = (*(*a2 + 96))(a2);
  if (v23 <= 78)
  {
    if (v23 > 75)
    {
      if (v23 == 76)
      {
        v41 = 96;
        if (*(a1 + 218))
        {
          v41 = 104;
        }

        if (*(a1 + v41) && (((*(*a2 + 200))(a2) & 1) != 0 || (v6 & 0x2000) != 0))
        {
          if (v21 >= 1)
          {
            v22 = (v22 + 3000 * v21);
          }

          else
          {
            v22 = (v22 - 3000 * v10);
          }
        }

        else
        {
          v22 = 5000;
        }
      }

      else if (v23 == 77)
      {
        v27 = 96;
        if (*(a1 + 218))
        {
          v27 = 104;
        }

        if (*(a1 + v27))
        {
          if ((*(*a2 + 200))(a2))
          {
            v22 = v22;
          }

          else
          {
            v22 = (v22 - 16500 * v10);
          }
        }

        else
        {
          v22 = 11000;
        }
      }

      goto LABEL_99;
    }

    if (v23 != 65)
    {
      if (v23 != 71)
      {
        goto LABEL_99;
      }

      goto LABEL_62;
    }

    if (v10 <= 2)
    {
      v36 = 25000;
    }

    else
    {
      v36 = 20000;
    }

    v37 = (*(a2 + 96) * -4400.0);
    if (v10 <= 2)
    {
      v38 = 5000;
    }

    else
    {
      v38 = 3000;
    }

    v39 = v38 * v21;
    if (v21 <= 0)
    {
      v39 = 0;
    }

    v40 = v39 + v36;
LABEL_89:
    v22 = (v40 + v37);
    goto LABEL_99;
  }

  if (v23 <= 84)
  {
    if (v23 != 79)
    {
      if (v23 == 83)
      {
        v28 = *(a2 + 55);
        if (v28 >= 0)
        {
          v29 = v7;
        }

        else
        {
          v29 = *(a2 + 32);
        }

        if (v28 >= 0)
        {
          v30 = *(a2 + 55);
        }

        else
        {
          v30 = *(a2 + 40);
        }

        v31 = sub_29939F248(v29, v30);
        v32 = v22 - 9500 * v10;
        if ((v6 & 0x2000) != 0)
        {
          v32 = v22 - 4000;
        }

        if (v31)
        {
          v22 = v32;
        }

        else
        {
          v22 = v22;
        }
      }

      goto LABEL_99;
    }

    goto LABEL_62;
  }

  if (v23 == 85)
  {
    v40 = (*(a2 + 96) * -4400.0);
    v37 = 7000;
    goto LABEL_89;
  }

  if (v23 != 86)
  {
    if (v23 == 88)
    {
      v24 = 3600 * v21;
      if (v21 <= 0)
      {
        v24 = 0;
      }

      LODWORD(v22) = v22 + v24;
      v25 = sub_2993A00C8(v9, v10);
      v26 = v22 + 16000;
      goto LABEL_96;
    }

    goto LABEL_99;
  }

LABEL_62:
  v33 = 96;
  if (*(a1 + 218))
  {
    v33 = 104;
  }

  if (*(a1 + v33))
  {
    if (v21 >= 1)
    {
      LODWORD(v22) = v22 + 3600 * v21;
      if (v10)
      {
        if (v23 == 71)
        {
          v34 = 2 * v10;
          v35 = v9;
          while ((*v35 & 0xFFDFu) - 65 > 0x19)
          {
            ++v35;
            v34 -= 2;
            if (!v34)
            {
              goto LABEL_95;
            }
          }

          LODWORD(v22) = v22 + 2000;
        }
      }
    }

LABEL_95:
    v25 = sub_2993A00C8(v9, v10);
    v26 = v22 + 2000;
LABEL_96:
    if (v25)
    {
      v22 = v26;
    }

    else
    {
      v22 = v22;
    }
  }

  else
  {
    v22 = 15000;
  }

LABEL_99:
  if (((*(*a2 + 200))(a2) & 1) == 0)
  {
    *(a2 + 136) = 83;
  }

  return (*(*a2 + 480))(a2, v22);
}

BOOL sub_29939095C(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 112))(a1);
  v5 = (*(*a2 + 112))(a2);
  if (v4 > v5)
  {
    v6 = (*(*a1 + 304))(a1);
    v9 = 0;
    v10 = 0;
    __p = 0;
    sub_29921E8E0(&__p, *v6, *(v6 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(v6 + 8) - *v6) >> 3));
    (*(*a2 + 520))(a2, &__p);
    if (__p)
    {
      v9 = __p;
      operator delete(__p);
    }
  }

  return v4 > v5;
}

void sub_299390A9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_299390AB8(uint64_t a1, const __CFArray *a2)
{
  v4 = *(a1 + 200);
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      if (sub_2992C1E9C(0) && *v5)
      {
        sub_2992CAD08(*(a1 + 200), a2);
      }
    }
  }

  v6 = *(a1 + 208);
  if (v6)
  {
    v7 = *(v6 + 8);
    if (v7)
    {
      if (sub_2992C1E9C(0) && *v7)
      {
        sub_2992CAD08(*(a1 + 208), a2);
      }
    }
  }

  result = sub_2993A072C(a2);
  *(a1 + 217) = result;
  return result;
}

void sub_299390B50(uint64_t a1, int a2)
{
  if (*(a1 + 218) == a2)
  {
    return;
  }

  *(a1 + 218) = a2;
  if ((a2 & 1) == 0)
  {
    v9 = *(a1 + 96);
    if (!v9)
    {
      return;
    }

    goto LABEL_11;
  }

  v3 = *(a1 + 56);
  if ((*(v3 + 113) & 2) != 0)
  {
    v4 = CFURLCreateWithFileSystemPath(0, *(v3 + 160), kCFURLPOSIXPathStyle, 1u);
    v11[1] = v4;
    if (v4)
    {
      v5 = v4;
      sub_2993B4AE4(v4, @"Siri-ko.rnnlm", @"ko", v11);
      v6 = v11[0];
      if (v11[0])
      {
        v11[0] = 0;
        v7 = *(a1 + 104);
        *(a1 + 104) = v6;
        if (v7)
        {
          (*(*v7 + 8))(v7);
          v8 = v11[0];
          v11[0] = 0;
          if (v8)
          {
            (*(*v8 + 8))(v8);
          }
        }
      }

      *(*(a1 + 56) + 112) &= ~0x200uLL;
      CFRelease(v5);
    }

    else
    {
      *(*(a1 + 56) + 112) &= ~0x200uLL;
    }
  }

  v9 = *(a1 + 104);
  if (v9)
  {
LABEL_11:
    v10 = *(a1 + 168);
    *(*(*(a1 + 160) + 16) + 8) = v9;
    *(v10 + 16) = v9;
    *(*(v10 + 24) + 16) = v9;
  }
}

void sub_299390C98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29920FE30(va, 0);
  _Unwind_Resume(a1);
}

void sub_299390CB0(const void **a1, CFTypeRef cf)
{
  if (*a1 != cf)
  {
    CFRetain(cf);

    sub_2992E3B48(a1, cf);
  }
}

const void ***sub_299390D10(const void ***result, const void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    sub_2992916A4(v2, 0);

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

uint64_t sub_299390D74(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_299274B8C(result);

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

uint64_t sub_299390E30(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F754C8;
  a2[1] = v2;
  return result;
}

uint64_t sub_299390E68(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F75538))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_299390F24(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F75568;
  a2[1] = v2;
  return result;
}

void sub_299390F50(uint64_t a1, uint64_t *a2, UniChar **a3, CFIndex *a4, double *a5, uint64_t *a6)
{
  v7 = *a2;
  v8 = *a3;
  v9 = *a4;
  v10 = *a5;
  v11 = *a6;
  v12 = CFStringCreateWithCharacters(0, *a3, *a4);
  LXLatticeAddNode();
  v13 = *(*(a1 + 8) + 56);
  v19 = v9;
  v20 = v8;
  v18 = v10;
  v17 = v11;
  v14 = (*(v13 + 8) + 24 * v7);
  v15 = v14[1];
  if (v15 >= v14[2])
  {
    v16 = sub_2993910C4(v14, &v20, &v19, &v18, &v17);
  }

  else
  {
    sub_29925851C(v14[1], v8, v9);
    *(v15 + 24) = v10;
    *(v15 + 32) = v11;
    v16 = v15 + 40;
    v14[1] = v15 + 40;
  }

  v14[1] = v16;
  if (v12)
  {
    CFRelease(v12);
  }
}

void sub_299391050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *(v3 + 8) = v4;
  sub_299219AB4(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_299391078(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F755D8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2993910C4(uint64_t *a1, void **a2, unint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v6 = v5 + 1;
  if (v5 + 1 > 0x666666666666666)
  {
    sub_299212A8C();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v6)
  {
    v6 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v9 = 0x666666666666666;
  }

  else
  {
    v9 = v6;
  }

  v22 = a1;
  if (v9)
  {
    sub_299391224(a1, v9);
  }

  v19 = 0;
  v20 = 40 * v5;
  v21 = 40 * v5;
  v10 = *a4;
  v11 = *a5;
  v12 = sub_29925851C((40 * v5), *a2, *a3);
  v12[3] = v10;
  v12[4] = v11;
  *&v21 = v21 + 40;
  v13 = a1[1];
  v14 = v20 + *a1 - v13;
  sub_29939127C(a1, *a1, v13, v14);
  v15 = *a1;
  *a1 = v14;
  v16 = a1[2];
  v18 = v21;
  *(a1 + 1) = v21;
  *&v21 = v15;
  *(&v21 + 1) = v16;
  v19 = v15;
  v20 = v15;
  sub_2993913B8(&v19);
  return v18;
}

void sub_299391210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2993913B8(va);
  _Unwind_Resume(a1);
}

void sub_299391224(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_29919600C();
}

uint64_t sub_29939127C(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v12 = a4;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      *(a4 + 24) = *(v6 + 24);
      v6 = (v6 + 40);
      a4 += 40;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    do
    {
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 = (v5 + 40);
    }

    while (v5 != a3);
  }

  return sub_299391338(v9);
}

uint64_t sub_299391338(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_299391370(a1);
  }

  return a1;
}

void sub_299391370(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 17);
    v1 -= 5;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

uint64_t sub_2993913B8(uint64_t a1)
{
  sub_2993913F0(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2993913F0(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 5;
      *(a1 + 16) = v2 - 5;
      if (*(v2 - 17) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t sub_29939144C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

__n128 sub_299391568(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F755F8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  result = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = *(a1 + 72);
  *(a2 + 88) = *(a1 + 88);
  *(a2 + 72) = v5;
  *(a2 + 56) = v4;
  *(a2 + 40) = result;
  return result;
}

void sub_2993915C0(uint64_t a1, CFTypeRef *a2, _BYTE *a3)
{
  v45 = *MEMORY[0x29EDCA608];
  v11[0] = 0;
  sub_299308E28(v11, *a2);
  v4 = *(a1 + 48);
  v37 = 0;
  v38 = &v37;
  v39 = 0x4002000000;
  v40 = sub_299391E24;
  v41 = sub_299391E40;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x4002000000;
  v33[3] = sub_299391E54;
  v33[4] = sub_299391E78;
  __p = 0;
  v36 = 0;
  v35 = 0;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x2000000000;
  v32 = 0;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2000000000;
  v30 = 0;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2000000000;
  v28 = 1;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2000000000;
  v26 = 1;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = 0;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2000000000;
  v20 = 0;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2000000000;
  v18 = 86;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2000000000;
  v16 = 0;
  v11[3] = MEMORY[0x29EDCA5F8];
  v11[4] = 1174405120;
  v11[5] = sub_299391E90;
  v11[6] = &unk_2A1F75670;
  v5 = *(a1 + 8);
  v11[7] = v15;
  v11[8] = &v21;
  v11[17] = v4;
  v11[18] = v5;
  v11[9] = v33;
  cf = 0;
  sub_299308E28(&cf, v11[0]);
  v6 = *(a1 + 32);
  v13 = vextq_s8(*(a1 + 16), *(a1 + 16), 8uLL);
  v14 = v6;
  v11[10] = v17;
  v11[11] = v19;
  v11[12] = &v37;
  v11[13] = v31;
  v11[14] = v29;
  v11[15] = v27;
  v11[16] = v25;
  LXAnalyzerCandidateEnumerateMorphemeLexiconEntriesAndLengths();
  if ((v22[3] & 1) == 0)
  {
    v7 = *(v38 + 63);
    v8 = v7;
    if ((v7 & 0x80u) != 0)
    {
      v7 = v38[6];
    }

    v9 = *(a1 + 56);
    if (v7 == *(v9 + 40))
    {
      if (v8 >= 0)
      {
        v10 = v38 + 5;
      }

      else
      {
        v10 = v38[5];
      }

      memcmp(v10, *(v9 + 32), 2 * v7);
    }

    sub_299308970();
  }

  if (cf)
  {
    CFRelease(cf);
  }

  cf = 0;
  _Block_object_dispose(v15, 8);
  _Block_object_dispose(v17, 8);
  _Block_object_dispose(v19, 8);
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(v25, 8);
  _Block_object_dispose(v27, 8);
  _Block_object_dispose(v29, 8);
  _Block_object_dispose(v31, 8);
  _Block_object_dispose(v33, 8);
  if (__p)
  {
    v35 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&v37, 8);
  if (SHIBYTE(v44) < 0)
  {
    operator delete(v42);
  }

  if (v11[0])
  {
    CFRelease(v11[0]);
  }
}

void sub_299391C7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, const void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v69 = a13;
  a13 = 0;
  if (v69)
  {
    (*(*v69 + 16))(v69, a2, a3, a4, a5, a6, a7, a8);
  }

  sub_299308E88((v66 + 128), 0);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a55, 8);
  _Block_object_dispose(&a59, 8);
  _Block_object_dispose(&a63, 8);
  _Block_object_dispose(&a65, 8);
  v70 = __p;
  if (__p)
  {
    STACK[0x200] = __p;
    operator delete(v70);
  }

  _Block_object_dispose((v67 - 208), 8);
  if (*(v67 - 145) < 0)
  {
    operator delete(*(v67 - 168));
  }

  sub_299308E88(&a11, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_299391DD8(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F756A0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_299391E24(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  return result;
}

void sub_299391E40(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

__n128 sub_299391E54(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void sub_299391E78(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void sub_29939248C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, const void *a26)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  sub_299219AB4(&a26, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_299392510(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_299392600(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F756C0;
  a2[1] = v2;
  return result;
}

uint64_t sub_29939263C(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F75730))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_299392704(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F75760;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_29939273C(void *a1, uint64_t *a2, double *a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v7 = *a2;
  v8 = a2[1];
  v9 = a1[1];
  v10 = a1[3];
  if (sub_29939F5D4(*v10, v10[1], *a2, v8) && v8 > v10[6])
  {
    sub_29922B93C(*(v9 + 160), v7, v8);
  }
}

void sub_299392998(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  sub_29921F128(&a17);
  if (a9)
  {
    (*(*a9 + 16))(a9);
  }

  if (a10)
  {
    (*(*a10 + 16))(a10);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_299392A30(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F757D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_299392A7C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

__n128 sub_299392B78(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F757F0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_299392BB0(uint64_t result, uint64_t a2, uint64_t a3, float *a4)
{
  if (!*(a2 + 32))
  {
    v5 = result;
    v6 = *a4;
    v7 = *(a2 + 8);
    if (v7 == *(a2 + 24))
    {
      result = memcmp(*a2, *(a2 + 16), 2 * v7);
      v8 = result != 0;
    }

    else
    {
      v8 = 1;
    }

    if (v6 >= 0.0 || !v8)
    {
      v9 = *(v5 + 24);
      if (v7 == *(v9 + 40))
      {
        memcmp(*a2, *(v9 + 32), 2 * v7);
      }

      sub_29922B434();
    }
  }

  return result;
}

void sub_299392D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29921F128(va);
  if (a6)
  {
    (*(*a6 + 16))(a6);
  }

  if (a7)
  {
    (*(*a7 + 16))(a7);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_299392DE4(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F75860))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_299392E30(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

__n128 sub_299392F2C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F75880;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_299392F64(void *a1, uint64_t a2, float *a3)
{
  v3 = a1[2];
  v4 = *(v3 + 32);
  v5 = *(v3 + 40) - 1;
  if (!v4)
  {
    v5 = 0;
  }

  if (*(a2 + 24) == v5)
  {
    memcmp(*(a2 + 16), (v4 + 2), 2 * v5);
  }

  sub_29922B434();
}

void sub_299393170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29921F128(va);
  if (a6)
  {
    (*(*a6 + 16))(a6);
  }

  if (a7)
  {
    (*(*a7 + 16))(a7);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2993931F4(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F758E0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2993932BC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F75900;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_2993932F4(void *a1, uint64_t a2, float *a3)
{
  v3 = a1[2];
  v4 = *(a2 + 24);
  if (v4 == *(v3 + 40))
  {
    memcmp(*(a2 + 16), *(v3 + 32), 2 * v4);
  }

  sub_29922B434();
}

void sub_2993934F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29921F128(va);
  if (a6)
  {
    (*(*a6 + 16))(a6);
  }

  if (a7)
  {
    (*(*a7 + 16))(a7);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_299393578(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F75960))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_299393640(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F75980;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_299393678(uint64_t a1, uint64_t a2, float *a3, _BYTE *a4)
{
  if (**(a1 + 32) >= 2)
  {
    *a4 = 1;
  }

  v4 = *(a1 + 24);
  v5 = *(a2 + 24);
  if (v5 == *(v4 + 40))
  {
    memcmp(*(a2 + 16), *(v4 + 32), 2 * v5);
  }

  sub_29922B434();
}

void sub_2993938A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29921F128(va);
  if (a6)
  {
    (*(*a6 + 16))(a6);
  }

  if (a7)
  {
    (*(*a7 + 16))(a7);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_299393928(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F759E0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2993939F0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F75A00;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_299393A28(uint64_t result, uint64_t a2, float *a3, _BYTE *a4)
{
  v4 = *a3;
  if (**(result + 32) >= 2)
  {
    *a4 = 1;
  }

  if (v4 >= 0.0)
  {
    v5 = *(result + 24);
    v6 = *(a2 + 24);
    if (v6 == *(v5 + 40))
    {
      memcmp(*(a2 + 16), *(v5 + 32), 2 * v6);
    }

    sub_29922B434();
  }

  return result;
}

void sub_299393C5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29921F128(va);
  if (a6)
  {
    (*(*a6 + 16))(a6);
  }

  if (a7)
  {
    (*(*a7 + 16))(a7);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_299393CE0(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F75A60))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_299393DA0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F75A80;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_299393DD0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v24 = *a4;
  v6 = sub_2992B8D0C(a3, off_2A145F3B8);
  sub_2992E6078(&v22, *v6, v6[1], v6[1] - *v6);
  v7 = HIBYTE(v23);
  if (v23 < 0)
  {
    v7 = *(&v22 + 1);
  }

  v8 = *(a1 + 16);
  if (v7 == *(v8 + 40))
  {
    if (v23 >= 0)
    {
      v9 = &v22;
    }

    else
    {
      v9 = v22;
    }

    v10 = memcmp(v9, *(v8 + 32), 2 * v7) != 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = *(a2 + 4);
  v16 = v23;
  *v15 = v22;
  v23 = 0;
  v22 = 0uLL;
  *v17 = 0u;
  *__p = 0u;
  v19 = 0u;
  v20 = v11;
  v21 = v10;
  v12 = *(a1 + 8);
  v13 = *(v12 + 8);
  if (v13 >= *(v12 + 16))
  {
    v14 = sub_2992E610C(v12, v15, &v24);
  }

  else
  {
    sub_2992E6260(v12, *(v12 + 8), v15, &v24);
    v14 = v13 + 88;
    *(v12 + 8) = v13 + 88;
  }

  *(v12 + 8) = v14;
  if (__p[1])
  {
    *&v19 = __p[1];
    operator delete(__p[1]);
  }

  if (v17[0])
  {
    v17[1] = v17[0];
    operator delete(v17[0]);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22);
  }
}

void sub_299393F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_29922C934(&a9);
  if (*(v9 - 41) < 0)
  {
    operator delete(*(v9 - 64));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_299393F6C(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F75AE0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_299393FB8(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void sub_299393FDC(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

__n128 sub_299393FF4(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void sub_299394018(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

__n128 sub_299394030(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void sub_299394054(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void sub_29939406C(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      sub_299212A8C();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_29927F5A0(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

const void **sub_299394144(const void **result, uint64_t a2)
{
  v2 = result;
  v4 = result[1];
  v3 = result[2];
  if (v4 >= v3)
  {
    v6 = (v4 - *result) >> 4;
    if ((v6 + 1) >> 60)
    {
      sub_299212A8C();
    }

    v7 = v3 - *result;
    v8 = v7 >> 3;
    if (v7 >> 3 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    v15[4] = v2;
    if (v9)
    {
      sub_2992F86F8(v9);
    }

    v10 = (16 * v6);
    *v10 = *a2;
    v5 = 16 * v6 + 16;
    *a2 = 0;
    *(a2 + 8) = 0;
    v11 = v2[1] - *v2;
    v12 = v10 - v11;
    memcpy(v10 - v11, *v2, v11);
    v13 = *v2;
    *v2 = v12;
    v2[1] = v5;
    v14 = v2[2];
    v2[2] = 0;
    v15[2] = v13;
    v15[3] = v14;
    v15[0] = v13;
    v15[1] = v13;
    result = sub_2992B4DC4(v15);
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  v2[1] = v5;
  return result;
}

uint64_t *sub_299394234(uint64_t a1, uint64_t a2)
{
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  v2 = (a1 + 120);
  v2[2] = 0;
  return sub_299215EC0(v2, *(a2 + 120), *(a2 + 128), (*(a2 + 128) - *(a2 + 120)) >> 1);
}

void sub_299394250(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2)
  {
    *(a1 + 128) = v2;
    operator delete(v2);
  }
}

uint64_t sub_299394268(uint64_t a1, int a2, uint64_t **a3, uint64_t a4, uint64_t a5, double a6)
{
  *a1 = &unk_2A1F66DC0;
  v12 = sub_29933BEB8(a1, &off_2A1F75D90);
  *(v12 + 20) = a2;
  *(v12 + 24) = 0;
  *(v12 + 32) = a6;
  *v12 = &unk_2A1F75B10;
  *(v12 + 40) = &unk_2A1F75D78;
  *(v12 + 48) = 0;
  v13 = *(a4 + 24);
  *(v12 + 52) = v13;
  *(v12 + 64) = 0u;
  *(v12 + 80) = 0u;
  v76 = (v12 + 80);
  *(v12 + 96) = 0u;
  v74 = (v12 + 96);
  *(v12 + 128) = 0u;
  v72 = (v12 + 128);
  *(v12 + 140) = 0u;
  *(v12 + 112) = 0u;
  *(v12 + 156) = *a4;
  *(v12 + 160) = 0;
  *(v12 + 168) = 0;
  v81 = (v12 + 168);
  *(v12 + 200) = 0u;
  *(v12 + 176) = 0;
  *(v12 + 184) = 0;
  *(v12 + 192) = 0;
  *(v12 + 216) = 0u;
  v14 = *a5 != *(a5 + 8);
  v79 = a5;
  v15 = *(a5 + 24);
  v86 = a4;
  v16 = *(a4 + 64);
  if (v16 && *(v16 + 104) == 1)
  {
    v17 = *(v16 + 105) ^ 1;
  }

  else
  {
    v17 = 0;
  }

  allocator = *MEMORY[0x29EDB8ED8];
  capacity = a3[1] - *a3;
  v75 = (v12 + 64);
  Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], capacity, MEMORY[0x29EDB9000]);
  theArray = 0;
  v126 = 0;
  v127 = &v126;
  v128 = 0x4002000000;
  v129 = sub_299393FB8;
  v130 = sub_299393FDC;
  v131 = 0;
  v78 = v14 & (v15 ^ 1);
  v132 = 0;
  v133 = 0;
  v123 = 0;
  v124 = 0;
  v125 = 0;
  v84 = v78 | ((v13 & 0x4000) >> 14);
  if (v78 & 1 | ((v13 & 0x4000) != 0))
  {
    theArray = CFArrayCreateMutable(allocator, capacity, MEMORY[0x29EDB9000]);
  }

  v119 = 0;
  v120 = &v119;
  v121 = 0x2000000000;
  v122 = 0;
  v115[0] = 0;
  v115[1] = v115;
  v115[2] = 0x4002000000;
  v115[3] = sub_299393FF4;
  v115[4] = sub_299394018;
  v116 = 0;
  v118 = 0;
  v117 = 0;
  v113[0] = 0;
  v113[1] = v113;
  v113[2] = 0x2000000000;
  v114 = 0;
  v111[0] = 0;
  v111[1] = v111;
  v111[2] = 0x2000000000;
  v112 = 0;
  v18 = *a3;
  v73 = a3;
  v88 = a3[1];
  if (*a3 == v88)
  {
    v19 = 0;
    v22 = v79;
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v82 = v17 & 1;
    v83 = (v13 >> 17) & 1;
    v22 = v79;
    do
    {
      v23 = *v18;
      v24 = *(*v18 + 16);
      if (v24)
      {
        v91 = v19;
        v92 = v21;
        v25 = *v24;
        v90 = *(v24 + 16);
        *(a1 + 48) |= *(v24 + 32);
        *(a1 + 155) |= (*(v23 + 2) - 4) < 3;
        v26 = (*(*v23 + 56))(v23);
        sub_299218EBC(&v123, v124, *v26, (*v26 + 2 * *(v26 + 8)), *(v26 + 8));
        v103 = 0;
        v104 = &v103;
        v105 = 0x4002000000;
        v106 = sub_299394030;
        v107 = sub_299394054;
        v109 = 0;
        v110 = 0;
        v108 = 0;
        if (v25)
        {
          v27 = *(v25 + 5);
          *(a1 + 152) |= (v27 & 0x20) != 0;
          *(a1 + 153) |= (v27 & 0x10) != 0;
          *(a1 + 154) |= (v27 & 4) != 0;
          if (v20 == capacity - 1 && (v27 & 0x80) != 0)
          {
            *(a1 + 56) = 2;
          }

          if (v84)
          {
            if (!v78 || (v28 = sub_2992F65C0(v22, v25, v92)) == 0)
            {
              v28 = sub_2993977E0(v25);
            }

            CFArrayAppendValue(theArray, v28);
            CFRelease(v28);
          }

          CFArrayAppendValue(Mutable, *(v24 + 8));
        }

        else
        {
          v29 = *(v24 + 8);
          CFArrayAppendValue(Mutable, v29);
          if (v84)
          {
            CFArrayAppendValue(theArray, v29);
          }
        }

        v89 = v20;
        v30 = *((*(*v23 + 56))(v23) + 8);
        v32 = *(a1 + 176);
        v31 = *(a1 + 184);
        if (v32 >= v31)
        {
          v34 = *v81;
          v35 = v32 - *v81;
          v36 = v35 >> 3;
          v37 = (v35 >> 3) + 1;
          if (v37 >> 61)
          {
            sub_299212A8C();
          }

          v38 = v31 - v34;
          if (v38 >> 2 > v37)
          {
            v37 = v38 >> 2;
          }

          v39 = v38 >= 0x7FFFFFFFFFFFFFF8;
          v40 = 0x1FFFFFFFFFFFFFFFLL;
          if (!v39)
          {
            v40 = v37;
          }

          if (v40)
          {
            sub_299236FB8(v81, v40);
          }

          *(8 * v36) = v30;
          v33 = 8 * v36 + 8;
          memcpy(0, v34, v35);
          v41 = *(a1 + 168);
          *(a1 + 168) = 0;
          *(a1 + 176) = v33;
          *(a1 + 184) = 0;
          if (v41)
          {
            operator delete(v41);
          }

          v22 = v79;
        }

        else
        {
          *v32 = v30;
          v33 = (v32 + 8);
        }

        *(a1 + 176) = v33;
        v42 = v120;
        v93[0] = MEMORY[0x29EDCA5F8];
        v93[1] = 1174405120;
        v93[2] = sub_299394EA4;
        v93[3] = &unk_2A1F75DE0;
        v93[4] = &v103;
        v93[5] = v115;
        v93[10] = a1;
        v93[11] = v25;
        v93[6] = &v119;
        v93[12] = v23;
        v93[13] = v26;
        v93[14] = v24;
        v95 = 0;
        v96 = 0;
        __p = 0;
        sub_299215EC0(&__p, v123, v124, (v124 - v123) >> 1);
        v100 = 0;
        v93[7] = v113;
        v93[8] = v111;
        v101 = v83;
        v102 = v82;
        v93[9] = &v126;
        v97 = v86;
        v98 = v89;
        v99 = capacity;
        sub_29939D78C(v23, v86, v22, v92, v42 + 3, v93);
        v43 = *(v23[2] + 16);
        if (__p)
        {
          v95 = __p;
          operator delete(__p);
        }

        _Block_object_dispose(&v103, 8);
        if (v108)
        {
          v109 = v108;
          operator delete(v108);
        }

        v19 = v90 + v91;
        v20 = v89 + 1;
        v21 = v43 + v92;
      }

      ++v18;
    }

    while (v18 != v88);
  }

  if ((v78 & 1) == 0)
  {
    v44 = *(v22 + 8);
    if (*v22 == v44 || *(v22 + 24) != 1)
    {
      v45 = 0;
    }

    else
    {
      v45 = (*(**(v44 - 8) + 48))(*(v44 - 8));
    }

    Length = CFStringGetLength(v45);
    v48 = *v22;
    v47 = *(v22 + 8);
    if (v19 >= Length)
    {
      if (v48 == v47 || *(v22 + 24) != 1)
      {
        v50 = 0;
      }

      else
      {
        v50 = (*(**(v47 - 8) + 48))(*(v47 - 8));
      }

      Copy = CFStringCreateCopy(allocator, v50);
    }

    else
    {
      if (v48 == v47 || *(v22 + 24) != 1)
      {
        v49 = 0;
      }

      else
      {
        v49 = (*(**(v47 - 8) + 48))(*(v47 - 8));
      }

      v134.location = 0;
      v134.length = v19;
      Copy = CFStringCreateWithSubstring(allocator, v49, v134);
    }

    sub_299219AB4(v76, Copy);
  }

  if (v84)
  {
    v52 = CFStringCreateByCombiningStrings(allocator, theArray, &stru_2A1F7E6E8);
    sub_299219AB4((a1 + 88), v52);
    CFRelease(theArray);
  }

  else
  {
    v53 = CFStringCreateCopy(allocator, *v76);
    sub_299219AB4((a1 + 88), v53);
  }

  v54 = *v22;
  v55 = *(v22 + 8);
  while (v54 != v55)
  {
    if ((*(**v54 + 56))() == 1)
    {
      v56 = *v73;
      v57 = v73[1];
      v103 = 0;
      v104 = 0;
      v105 = 0;
      if (v56 == v57)
      {
LABEL_83:
        v60 = sub_2992F62B0(v79, &v103, v72);
      }

      else
      {
        v58 = 0;
        while (1)
        {
          v59 = *(*v56 + 16);
          if (!v59)
          {
            break;
          }

          v60 = *v59;
          if (!*v59)
          {
            goto LABEL_85;
          }

          if (v58 >= v105)
          {
            v61 = (v58 - v103) >> 3;
            if ((v61 + 1) >> 61)
            {
              sub_299212A8C();
            }

            v62 = (v105 - v103) >> 2;
            if (v62 <= v61 + 1)
            {
              v62 = v61 + 1;
            }

            if (v105 - v103 >= 0x7FFFFFFFFFFFFFF8)
            {
              v63 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v63 = v62;
            }

            if (v63)
            {
              sub_299229E2C(&v103, v63);
            }

            v64 = (8 * v61);
            *v64 = v60;
            v58 = (8 * v61 + 8);
            v65 = v64 - (v104 - v103);
            memcpy(v65, v103, v104 - v103);
            v66 = v103;
            v103 = v65;
            v104 = v58;
            v105 = 0;
            if (v66)
            {
              operator delete(v66);
            }
          }

          else
          {
            *v58++ = v60;
          }

          v104 = v58;
          if (++v56 == v57)
          {
            goto LABEL_83;
          }
        }

        v60 = 0;
      }

LABEL_85:
      if (v103)
      {
        v104 = v103;
        operator delete(v103);
      }

      if (v60)
      {
        sub_299219AB4((a1 + 88), v60);
      }

      break;
    }

    v54 += 8;
  }

  if (v78)
  {
    sub_299229BC0(v76, *(a1 + 88));
  }

  v67 = CFStringCreateByCombiningStrings(allocator, Mutable, &stru_2A1F7E6E8);
  sub_299219AB4(v74, v67);
  v68 = sub_29922EBB4(*(v86 + 40));
  sub_299219AB4((a1 + 72), v68);
  if (v127[6] == v127[5])
  {
    v70 = *(a1 + 72);
    if (v70)
    {
      sub_299229BC0(v75, v70);
    }
  }

  else
  {
    v69 = sub_29922EBB4(*(v86 + 40));
    sub_299219AB4(v75, v69);
  }

  *(a1 + 160) = sub_299279FBC(*v75);
  CFRelease(Mutable);
  _Block_object_dispose(v111, 8);
  _Block_object_dispose(v113, 8);
  _Block_object_dispose(v115, 8);
  if (v116)
  {
    v117 = v116;
    operator delete(v116);
  }

  _Block_object_dispose(&v119, 8);
  if (v123)
  {
    v124 = v123;
    operator delete(v123);
  }

  _Block_object_dispose(&v126, 8);
  if (v131)
  {
    v132 = v131;
    operator delete(v131);
  }

  return a1;
}

void sub_299394D10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, void **a11, uint64_t a12, const void **a13, const void **a14, const void **a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *__p, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&a66, 8);
  _Block_object_dispose(&STACK[0x200], 8);
  v69 = STACK[0x228];
  if (STACK[0x228])
  {
    STACK[0x230] = v69;
    operator delete(v69);
  }

  _Block_object_dispose((v67 - 224), 8);
  v70 = *(v67 - 192);
  if (v70)
  {
    *(v67 - 184) = v70;
    operator delete(v70);
  }

  _Block_object_dispose((v67 - 168), 8);
  v71 = *(v67 - 128);
  if (v71)
  {
    *(v67 - 120) = v71;
    operator delete(v71);
  }

  sub_299219AB4((v66 + 224), 0);
  v72 = *a10;
  if (*a10)
  {
    *(v66 + 208) = v72;
    operator delete(v72);
  }

  v73 = *a21;
  if (*a21)
  {
    *(v66 + 176) = v73;
    operator delete(v73);
  }

  v74 = *a11;
  if (*a11)
  {
    *(v66 + 136) = v74;
    operator delete(v74);
  }

  *(v67 - 168) = v66 + 104;
  sub_2992F8740((v67 - 168));
  sub_299219AB4(a13, 0);
  sub_299219AB4((v66 + 88), 0);
  sub_299219AB4(a15, 0);
  sub_299219AB4((v66 + 72), 0);
  sub_299219AB4(a14, 0);
  _Unwind_Resume(a1);
}

void sub_299394EA4(uint64_t a1, uint64_t a2, uint64_t a3, char **a4, char **a5, char **a6, int **a7)
{
  *&v39 = a2;
  *(&v39 + 1) = a3;
  v9 = *(a1 + 80);
  sub_29939406C(*(*(a1 + 32) + 8) + 40, &v39);
  v10 = *(*(a1 + 40) + 8);
  v38[0] = *(*(*(a1 + 48) + 8) + 24);
  sub_299266D00((v10 + 40), v38);
  v12 = *a7;
  v11 = a7[1];
  v13 = v11 - *a7;
  if (v13 >> 2 >= 1)
  {
    v14 = v9[25];
    v15 = v9[26];
    v16 = v9[27];
    if (v16 - v15 >= v13)
    {
      if (v12 == v11)
      {
        v22 = v9[26];
      }

      else
      {
        v22 = v9[26];
        do
        {
          v23 = *v12++;
          *v15++ = v23;
          v22 += 4;
        }

        while (v12 != v11);
      }

      v9[26] = v22;
    }

    else
    {
      v17 = (v13 >> 2) + ((v15 - v14) >> 2);
      if (v17 >> 62)
      {
        sub_299212A8C();
      }

      v18 = (v15 - v14) >> 2;
      v19 = v16 - v14;
      v20 = (v16 - v14) >> 1;
      if (v20 > v17)
      {
        v17 = v20;
      }

      if (v19 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v21 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v21 = v17;
      }

      if (v21)
      {
        sub_2992F86B0((v9 + 25), v21);
      }

      v24 = 4 * v18;
      v25 = (4 * v18 + v13);
      v26 = v24;
      do
      {
        v27 = *v12++;
        *v26++ = v27;
        v13 -= 4;
      }

      while (v13);
      memcpy(v25, v15, v9[26] - v15);
      v28 = v9[25];
      v29 = &v25[v9[26] - v15];
      v9[26] = v15;
      v30 = (v24 - (v15 - v28));
      memcpy(v30, v28, v15 - v28);
      v31 = v9[25];
      v9[25] = v30;
      v9[26] = v29;
      v9[27] = 0;
      if (v31)
      {
        operator delete(v31);
      }
    }
  }

  v32 = *(a1 + 88);
  if (v32)
  {
    Copy = sub_299397588(v32, v39, *(&v39 + 1));
  }

  else
  {
    if (*(&v39 + 1) < *(*(a1 + 104) + 8) || (v35 = *(*(a1 + 112) + 8)) == 0)
    {
      v34 = 0;
LABEL_28:
      v36 = *(a1 + 120);
      if (v36)
      {
        v37 = *(&v39 + 1);
      }

      else
      {
        v37 = 0;
      }

      v38[0] = (v36 + 2 * v39);
      v38[1] = v37;
      if ((*(a1 + 168) & 1) != 0 || *(&v39 + 1) != *(*(a1 + 104) + 8))
      {
        sub_299371B6C(*(a1 + 144), v38, v34);
      }

      else
      {
        (*(**(a1 + 96) + 24))(*(a1 + 96));
      }

      operator new();
    }

    Copy = CFStringCreateCopy(*MEMORY[0x29EDB8ED8], v35);
  }

  v34 = Copy;
  goto LABEL_28;
}

void sub_299395398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_299219AB4(va, 0);
  _Unwind_Resume(a1);
}

const void **sub_2993953D8(const void **result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      sub_2992F86F8(a2);
    }

    sub_299212A8C();
  }

  return result;
}

uint64_t sub_299395478(uint64_t a1, uint64_t a2, const __CFString *a3, const __CFString *a4, uint64_t *a5, int a6, int a7)
{
  *a1 = &unk_2A1F66DC0;
  v14 = *(a2 + 32);
  v15 = sub_29933BEB8(a1, &off_2A1F75D90);
  *(v15 + 20) = a6;
  *(v15 + 24) = 0;
  *(v15 + 32) = v14;
  *v15 = &unk_2A1F75B10;
  *(v15 + 40) = &unk_2A1F75D78;
  *(v15 + 48) = a7;
  *(v15 + 52) = *(a2 + 52);
  v16 = *MEMORY[0x29EDB8ED8];
  *(a1 + 64) = CFStringCreateCopy(*MEMORY[0x29EDB8ED8], a4);
  Copy = CFStringCreateCopy(v16, a3);
  *(a1 + 80) = 0u;
  *(a1 + 72) = Copy;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0;
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 156) = *(a2 + 156);
  v18 = sub_299279FBC(a4);
  *(a1 + 168) = 0;
  *(a1 + 160) = v18;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  sub_2993526BC((a1 + 168), *(a2 + 168), *(a2 + 176), (*(a2 + 176) - *(a2 + 168)) >> 3);
  v19 = *(a2 + 192);
  *(a1 + 200) = 0;
  *(a1 + 192) = v19;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  sub_2992F85F8((a1 + 200), *(a2 + 200), *(a2 + 208), (*(a2 + 208) - *(a2 + 200)) >> 2);
  *(a1 + 224) = 0;
  sub_2993953D8((a1 + 104), (*(a2 + 112) - *(a2 + 104)) >> 4);
  (*(*a2 + 432))(v39, a2, 1);
  (*(*a2 + 432))(v38, a2, 2);
  (*(*a2 + 432))(v37, a2, 0);
  v36 = a2;
  if ((a7 & 0x40) != 0)
  {
    if (*a5 != a5[1])
    {
      v20 = 0;
      v21 = 0;
      v22 = 0;
      do
      {
        v23 = *(*(v36 + 104) + v20);
        (*(*v23 + 16))(v23);
        v21 |= v23[8];
        ++v22;
        v20 += 16;
      }

      while (v22 < (a5[1] - *a5) >> 2);
      CFStringGetLength(a4);
      operator new();
    }

    v24 = CFStringCreateCopy(v16, *(a2 + 64));
    sub_299219AB4((a1 + 224), v24);
  }

  else if (a5[1] != *a5)
  {
    operator new();
  }

  Length = CFStringGetLength(*(a2 + 80));
  v26 = *(a2 + 80);
  if (Length >= 0)
  {
    v40.location = 0;
    v40.length = 0;
    v27 = CFStringCreateWithSubstring(v16, v26, v40);
  }

  else
  {
    v27 = CFStringCreateCopy(v16, v26);
  }

  sub_299219AB4((a1 + 80), v27);
  v28 = CFStringGetLength(*(a2 + 88));
  v29 = *(a2 + 88);
  if (v28 >= 0)
  {
    v41.location = 0;
    v41.length = 0;
    v30 = CFStringCreateWithSubstring(v16, v29, v41);
  }

  else
  {
    v30 = CFStringCreateCopy(v16, v29);
  }

  sub_299219AB4((a1 + 88), v30);
  v31 = CFStringGetLength(*(a2 + 96));
  v32 = *(a2 + 96);
  v33.length = 0;
  if (v31 <= 0)
  {
    v34 = CFStringCreateCopy(v16, v32);
  }

  else
  {
    v33.location = 0;
    v34 = CFStringCreateWithSubstring(v16, v32, v33);
  }

  sub_299219AB4((a1 + 96), v34);
  if (v37[0])
  {
    v37[1] = v37[0];
    operator delete(v37[0]);
  }

  if (v38[0])
  {
    v38[1] = v38[0];
    operator delete(v38[0]);
  }

  if (v39[0])
  {
    v39[1] = v39[0];
    operator delete(v39[0]);
  }

  return a1;
}

void sub_299395D38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, void **a13, const void **a14, const void **a15, const void **a16, const void **a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, uint64_t a30, void *a31, uint64_t a32)
{
  std::__shared_weak_count::~__shared_weak_count(v33);
  operator delete(v36);
  if (__p)
  {
    operator delete(__p);
  }

  if (a31)
  {
    operator delete(a31);
  }

  v37 = *(v34 - 168);
  if (v37)
  {
    *(v34 - 160) = v37;
    operator delete(v37);
  }

  sub_299219AB4(a15, 0);
  v38 = *a12;
  if (*a12)
  {
    v32[26] = v38;
    operator delete(v38);
  }

  v39 = *a13;
  if (*a13)
  {
    v32[22] = v39;
    operator delete(v39);
  }

  v40 = v32[16];
  if (v40)
  {
    v32[17] = v40;
    operator delete(v40);
  }

  *(v34 - 168) = a19;
  sub_2992F8740((v34 - 168));
  sub_299219AB4(a16, 0);
  sub_299219AB4(a17 + 1, 0);
  sub_299219AB4(a17, 0);
  sub_299219AB4(a14 + 1, 0);
  sub_299219AB4(a14, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_299395EB4(uint64_t a1)
{
  v1 = (*(*a1 + 120))(a1);
  if (v1)
  {
    (*(*v1 + 24))(v1);
  }

  else
  {
    return 0;
  }

  return v2;
}

uint64_t sub_299395F20(uint64_t a1)
{
  result = (*(*a1 + 120))(a1);
  if (result)
  {
    v2 = *(*result + 16);

    return v2();
  }

  return result;
}

CFStringRef sub_299395FC0(uint64_t a1)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v1 = *(a1 + 104);
  v2 = *(a1 + 112);
  do
  {
    (*(**v1 + 56))(&__p);
    v3 = __p;
    if (v10 != __p)
    {
      v4 = 0;
      if (((v10 - __p) >> 1) <= 1)
      {
        v5 = 1;
      }

      else
      {
        v5 = (v10 - __p) >> 1;
      }

      do
      {
        v8 = *(__p + v4) + 48;
        sub_29922E664(&v11, &v8);
        ++v4;
      }

      while (v5 != v4);
      v3 = __p;
    }

    if (v3)
    {
      v10 = v3;
      operator delete(v3);
    }

    v1 += 16;
  }

  while (v1 != v2);
  v6 = CFStringCreateWithCharacters(*MEMORY[0x29EDB8ED8], v11, (v12 - v11) >> 1);
  if (v11)
  {
    v12 = v11;
    operator delete(v11);
  }

  return v6;
}

void sub_2993960B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__CFString *sub_2993960F0(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x29EDB8ED8], 0);
  v3 = *(a1 + 104);
  v4 = *(a1 + 112);
  while (v3 != v4)
  {
    v5 = *v3;
    v3 += 2;
    v6 = (*(*v5 + 72))(v5);
    CFStringAppend(Mutable, v6);
    CFRelease(v6);
  }

  return Mutable;
}

uint64_t sub_299396184(void *a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  if ((*(*a1 + 48))(a1) <= a2)
  {
    return 0;
  }

  return *(a1[13] + 16 * a2);
}

CFIndex sub_2993961F8(const __CFString *a1, const __CFString *a2, uint64_t a3)
{
  Length = CFStringGetLength(a1);
  v7 = CFStringGetLength(a2);
  if (Length < v7)
  {
    return 0;
  }

  v9 = 0;
  if (a3 < 1 || Length < 1)
  {
    v11 = 0;
  }

  else
  {
    v10 = v7;
    v11 = 0;
    if (v7 >= 1)
    {
      v12 = 0;
      v11 = 0;
      v9 = 0;
      do
      {
        CharacterAtIndex = CFStringGetCharacterAtIndex(a1, v11);
        if (CharacterAtIndex == CFStringGetCharacterAtIndex(a2, v12))
        {
          ++v9;
          ++v12;
        }

        else if (CharacterAtIndex != 32)
        {
          return 0;
        }

        ++v11;
      }

      while (v9 < a3 && v11 < Length && v12 < v10);
    }
  }

  if (v9 == a3)
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2993962F4(int *a1, CFStringRef theString, const __CFString *a3, uint64_t *a4, int a5, int a6, uint64_t a7)
{
  Length = CFStringGetLength(theString);
  if (Length > a6)
  {
    Length = 0;
    if ((a7 & 0x8000000000000000) == 0)
    {
      v14 = 0;
      do
      {
        v15 = (*(*a1 + 120))(a1, v14);
        (*(*v15 + 24))(v15);
        Length += v16;
        ++v14;
      }

      while (a7 + 1 != v14);
    }

    v17 = *a4 + 4 * a7 + 4;
    if (v17 != a4[1])
    {
      a4[1] = v17;
    }
  }

  v18 = sub_2993961F8(a3, theString, Length);
  if (v18 >= 1)
  {
    v19 = v18;
    v20 = *MEMORY[0x29EDB8ED8];
    v22.location = 0;
    v22.length = Length;
    CFStringCreateWithSubstring(*MEMORY[0x29EDB8ED8], theString, v22);
    v23.location = 0;
    v23.length = v19;
    CFStringCreateWithSubstring(v20, a3, v23);
    operator new();
  }

  return 0;
}

void sub_299396564(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C29BFB0](v11, v12, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

CFIndex sub_299396594(uint64_t a1)
{
  v1 = *(a1 + 104);
  v2 = *(a1 + 112);
  if (v1 == v2)
  {
    return 0;
  }

  Length = 0;
  do
  {
    v5 = *v1;
    v4 = *(v1 + 8);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if ((v5[32] & 8) != 0)
    {
      v6 = (*(*v5 + 64))(v5);
      if (CFStringGetLength(v6) > Length)
      {
        v7 = (*(*v5 + 64))(v5);
        Length = CFStringGetLength(v7);
      }
    }

    if (v4)
    {
      sub_2991A893C(v4);
    }

    v1 += 16;
  }

  while (v1 != v2);
  return Length;
}

void sub_299396674(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_2991A893C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_299396904(_Unwind_Exception *a1, uint64_t a2, void **a3, uint64_t a4, void **a5, ...)
{
  va_start(va, a5);
  sub_299219AB4(v7, 0);
  v9 = *v6;
  if (*v6)
  {
    *(v5 + 208) = v9;
    operator delete(v9);
  }

  v10 = *a5;
  if (*a5)
  {
    *(v5 + 176) = v10;
    operator delete(v10);
  }

  v11 = *(v5 + 128);
  if (v11)
  {
    *(v5 + 136) = v11;
    operator delete(v11);
  }

  sub_2992F8740(va);
  sub_299219AB4((v5 + 96), 0);
  sub_299219AB4((v5 + 88), 0);
  sub_299219AB4((v5 + 80), 0);
  sub_299219AB4((v5 + 72), 0);
  sub_299219AB4((v5 + 64), 0);
  MEMORY[0x29C29BFB0](v5, 0x10F1C40A64E6D2FLL);
  _Unwind_Resume(a1);
}

void sub_299396A70(uint64_t a1)
{
  sub_299396B68(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_299396B68(uint64_t a1)
{
  *a1 = &unk_2A1F75B10;
  *(a1 + 40) = &unk_2A1F75D78;
  sub_299219AB4((a1 + 224), 0);
  v2 = *(a1 + 200);
  if (v2)
  {
    *(a1 + 208) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 168);
  if (v3)
  {
    *(a1 + 176) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 128);
  if (v4)
  {
    *(a1 + 136) = v4;
    operator delete(v4);
  }

  v6 = (a1 + 104);
  sub_2992F8740(&v6);
  sub_299219AB4((a1 + 96), 0);
  sub_299219AB4((a1 + 88), 0);
  sub_299219AB4((a1 + 80), 0);
  sub_299219AB4((a1 + 72), 0);
  sub_299219AB4((a1 + 64), 0);
  return a1;
}

void sub_299396C78(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1F76440;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_299396CF8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_299396D30(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_299396D60(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F764D0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_299396DA0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, void *a6)
{
  v6 = a3;
  *a1 = a4;
  *(a1 + 16) = 0u;
  v9 = a3 - 1;
  *(a1 + 8) = a3 - 1;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1065353216;
  v40 = (a1 + 16);
  *(a1 + 16) = sub_2993B7AC8(a6, 2 * (a3 - 1));
  v10 = sub_2993B7AC8(a6, 4 * *(a1 + 8));
  v11 = *(a2 + 56 * v6 - 28);
  v12 = *(a1 + 40) & 0xFFFFFFFFFFFFFFF1 | (v11 >> 2) & 2 | (4 * ((v11 >> 1) & 3));
  *(a1 + 32) = v10;
  *(a1 + 40) = v12;
  v13 = (*(**(a2 + 56) + 96))(*(a2 + 56));
  v14 = 128;
  if (v13)
  {
    v14 = 0;
  }

  v15 = *(a1 + 40) & 0xFFFFFFFFFFFFFF7FLL | v14;
  *(a1 + 40) = v15;
  if (v9 < 1)
  {
LABEL_37:
    *(a1 + 40) = v15 | 1;
    return a1;
  }

  v16 = 0;
  v17 = (a2 + 56 * v6 - 56);
  v18 = 3;
  LOBYTE(v6) = 1;
  do
  {
    v19 = *v17;
    v20 = (*(**v17 + 56))(*v17, v17[12]);
    v21 = (*(*v19 + 40))(v19);
    *(*(a1 + 32) + v18) = 0;
    v22 = v19[16];
    v23 = *(a1 + 56);
    if (v23 >= (*(*v19 + 80))(v19))
    {
      v24 = (*(*v19 + 80))(v19);
    }

    else
    {
      v24 = *(a1 + 56);
    }

    *(a1 + 56) = v24;
    if ((*(*v19 + 64))(v19) == 9 || (*(*v19 + 64))(v19) == 10)
    {
      *(*(a1 + 32) + v18 - 3) = (*(*v19 + 32))(v19);
      v25 = (*(*v19 + 64))(v19);
      v26 = *(a1 + 32);
      v27 = *(a1 + 40);
      if (v25 == 9)
      {
        v28 = 1;
      }

      else
      {
        v28 = 2;
      }

      *(v26 + v18) |= v28;
      v29 = v27 | 0x100;
    }

    else
    {
      v26 = *(a1 + 32);
      v30 = *(a1 + 40);
      *(v26 + v18 - 3) = v21 - v22;
      v29 = v30 | 0x200;
    }

    v31 = v26 + v18;
    *(v31 - 2) = v21;
    *(v31 - 1) = v22;
    v32 = *(a1 + 48) + v21;
    *(a1 + 40) = v29;
    *(a1 + 48) = v32;
    if (v6)
    {
      LODWORD(v6) = (*(*v19 + 96))(v19);
    }

    else
    {
      LODWORD(v6) = 0;
    }

    v33 = (*(*v19 + 64))(v19);
    if (v33 == 4)
    {
      v35 = *(a1 + 40);
      if ((v35 & 0x40) == 0 && (*(v19 + 15) || *(v19 + 16)))
      {
        v35 |= 0x40uLL;
      }

      *(*(a1 + 32) + v18) |= 4u;
      *(a1 + 40) = v35 | 0x10;
    }

    else if (v33 == 2)
    {
      if (a5)
      {
        v34 = *(a1 + 24);
        if (!v34)
        {
          v34 = sub_2993B7AC8(a6, 2 * *(a1 + 8));
          *(a1 + 24) = v34;
          if (v18 != 3)
          {
            memcpy(v34, *(a1 + 16), v16);
            v34 = *(a1 + 24);
          }
        }

        *&(*v40)[v16] = *(v19 + 56);
      }

      else
      {
        v34 = *v40;
      }

      *&v34[v16] = v20;
      v37 = *(a1 + 40);
      *(*(a1 + 32) + v18) |= 8u;
      *(a1 + 40) = v37 | 0x20;
      goto LABEL_34;
    }

    v36 = *(a1 + 24);
    *(*(a1 + 16) + v16) = v20;
    if (v36)
    {
      *(v36 + v16) = v20;
    }

LABEL_34:
    v17 -= 28;
    v16 += 2;
    v18 += 4;
    --v9;
  }

  while (v9);
  if (v6)
  {
    v15 = *(a1 + 40);
    goto LABEL_37;
  }

  return a1;
}

uint64_t sub_299397210(uint64_t a1, _WORD *a2, uint64_t a3, uint64_t a4, int a5, int a6, void *a7)
{
  *a1 = a5;
  v11 = *(a4 + 8);
  *(a1 + 16) = 0u;
  v12 = (a1 + 16);
  v13 = v11 + a3;
  *(a1 + 8) = v13;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 56) = 1065353216;
  *(a1 + 16) = sub_2993B7AC8(a7, 2 * v13);
  v36 = a7;
  v14 = sub_2993B7AC8(a7, 4 * *(a1 + 8));
  v15 = *(a1 + 40) | 0x83;
  *(a1 + 32) = v14;
  *(a1 + 40) = v15;
  if (a3)
  {
    v37 = v12;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    while (1)
    {
      v19 = *a2;
      v20 = a2[13];
      v21 = (*(**a2 + 40))(*a2);
      v22 = *(v19 + 16);
      v23 = *(a1 + 56);
      if (v23 >= (*(*v19 + 80))(v19))
      {
        (*(*v19 + 80))(v19);
        v24 = *(a1 + 56);
      }

      else
      {
        v24 = *(a1 + 56);
        v25 = v24;
      }

      *(a1 + 56) = v24 * v25;
      v26 = (*(a1 + 32) + v16);
      *v26 = v21 - v22;
      v26[1] = v21 - v22;
      v26[2] = v22;
      v26[3] = 0;
      *(a1 + 48) += v21;
      v27 = (*(*v19 + 64))(v19);
      if (v27 == 4)
      {
        break;
      }

      if (v27 != 2)
      {
        goto LABEL_14;
      }

      if (a6)
      {
        v28 = *(a1 + 24);
        if (!v28)
        {
          v28 = sub_2993B7AC8(v36, 2 * *(a1 + 8));
          *(a1 + 24) = v28;
          if (v18)
          {
            memcpy(v28, *(a1 + 16), v17);
            v28 = *(a1 + 24);
          }
        }

        v29 = *v37;
        *(*v37 + 2 * v18) = v19[56];
      }

      else
      {
        v28 = *v37;
        v29 = *v37;
      }

      v28[v18] = v20;
      v32 = *(a1 + 40);
      *(*(a1 + 32) + v16 + 3) |= 8u;
      *(a1 + 40) = v32 | 0x20;
LABEL_18:
      ++v18;
      v17 += 2;
      v16 += 4;
      a2 += 28;
      if (a3 == v18)
      {
        goto LABEL_21;
      }
    }

    v30 = *(a1 + 40);
    *(*(a1 + 32) + v16 + 3) |= 4u;
    *(a1 + 40) = v30 | 0x10;
LABEL_14:
    v29 = *(a1 + 16);
    v31 = *(a1 + 24);
    v29[v18] = v20;
    if (v31)
    {
      *(v31 + 2 * v18) = v20;
    }

    goto LABEL_18;
  }

  v29 = *v12;
LABEL_21:
  memcpy(&v29[a3], *a4, 2 * *(a4 + 8));
  v33 = *(a1 + 24);
  if (v33)
  {
    memcpy((v33 + 2 * a3), *a4, 2 * *(a4 + 8));
  }

  bzero((*(a1 + 32) + 4 * a3), 4 * *(a4 + 8));
  return a1;
}

__CFString *sub_299397500(void *a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x29EDB8ED8], 0);
  if (a1[1])
  {
    v3 = 0;
    do
    {
      v4 = a1[3];
      if (!v4)
      {
        v4 = a1[2];
      }

      v5 = sub_2993A1488(*(v4 + 2 * v3), *a1);
      if (v5)
      {
        CFStringAppend(Mutable, v5);
      }

      ++v3;
    }

    while (v3 < a1[1]);
  }

  return Mutable;
}

__CFString *sub_299397588(void *a1, unint64_t a2, uint64_t a3)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v3 = a3;
  v6 = a2 + a3;
  if (a2 + a3 > a1[1])
  {
    return 0;
  }

  Mutable = CFStringCreateMutable(*MEMORY[0x29EDB8ED8], 0);
  if (a2 < v6)
  {
    v9 = 2 * a2;
    do
    {
      v10 = a1[3];
      if (!v10)
      {
        v10 = a1[2];
      }

      v11 = sub_2993A1488(*(v10 + v9), *a1);
      if (v11)
      {
        CFStringAppend(Mutable, v11);
      }

      v9 += 2;
      --v3;
    }

    while (v3);
  }

  return Mutable;
}

const __CFString *sub_299397638@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2991A650C(a2, a1[1]);
  if (a1[1])
  {
    v5 = 0;
    do
    {
      v6 = a1[3];
      if (!v6)
      {
        v6 = a1[2];
      }

      result = sub_2993A1488(*(v6 + 2 * v5), *a1);
      if (result)
      {
        result = CFStringGetLength(result);
      }

      *(*a2 + 2 * v5++) = result;
    }

    while (v5 < a1[1]);
  }

  return result;
}

void sub_2993976B4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

__CFString *sub_2993976D0(void *a1, unint64_t a2)
{
  if (a1[1] <= a2)
  {
    return 0;
  }

  v4 = *MEMORY[0x29EDB8ED8];
  Mutable = CFStringCreateMutable(*MEMORY[0x29EDB8ED8], 0);
  v6 = Mutable;
  v7 = (a1[4] + 4 * a2);
  v8 = *v7;
  if (!*v7)
  {
    if (!Mutable)
    {
      return v6;
    }

    CFRelease(Mutable);
    return 0;
  }

  v9 = v7[2];
  v10 = sub_2993A1488(*(a1[2] + 2 * a2), *a1);
  v11 = v10;
  if (v10 && CFStringGetLength(v10) > v8)
  {
    v14.location = 0;
    v14.length = v8;
    v12 = CFStringCreateWithSubstring(v4, v11, v14);
    CFStringAppend(v6, v12);
    CFRelease(v12);
    if (!v9)
    {
      return v6;
    }
  }

  else
  {
    CFStringAppend(v6, v11);
    if (!v9)
    {
      return v6;
    }
  }

  do
  {
    CFStringAppend(v6, @"'");
    --v9;
  }

  while (v9);
  return v6;
}

__CFString *sub_2993977E0(void *a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x29EDB8ED8], 0);
  if (a1[1])
  {
    v3 = 0;
    do
    {
      v4 = sub_2993976D0(a1, v3);
      if (!v4)
      {
        break;
      }

      v5 = v4;
      CFStringAppend(Mutable, v4);
      CFRelease(v5);
      ++v3;
    }

    while (v3 < a1[1]);
  }

  return Mutable;
}

BOOL sub_299397868(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  return v2 <= (*(a2 + 8) - v3) >> 1 && memcmp(*(a1 + 16), v3, 2 * v2) == 0;
}

void *sub_2993978B0(void *a1, const __CFURL *a2)
{
  v13 = *MEMORY[0x29EDCA608];
  v4 = sub_299213890(a1);
  *(v4 + 360) = 0u;
  *(v4 + 376) = 0u;
  *(v4 + 344) = 0u;
  error = 0;
  if (!a2)
  {
LABEL_9:
    sub_2991C6CA8(__p, "");
    goto LABEL_10;
  }

  if (!CFURLResourceIsReachable(a2, &error))
  {
    if (error)
    {
      CFRelease(error);
    }

    goto LABEL_9;
  }

  if (CFURLGetFileSystemRepresentation(a2, 1u, buffer, 1024))
  {
    v5 = buffer;
  }

  else
  {
    v5 = "";
  }

  sub_2991C6CA8(__p, v5);
LABEL_10:
  v6 = v10;
  v7 = v10;
  if ((v10 & 0x80u) != 0)
  {
    v6 = __p[1];
  }

  if (v6)
  {
    sub_299397A38(a1, __p);
    v7 = v10;
  }

  if ((v7 & 0x80) != 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_2993979CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  v18 = *(v15 + 352);
  if (v18)
  {
    *(v15 + 360) = v18;
    operator delete(v18);
  }

  v19 = *v16;
  *v16 = 0;
  if (v19)
  {
    (*(*v19 + 72))(v19, a2, a3, a4, a5, a6, a7, a8);
  }

  sub_299213950(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_299397A38(void *a1, uint64_t a2)
{
  sub_2991BF614(&v12);
  __p = 0;
  v18 = 0;
  v19 = 0;
  if (*(a2 + 23) >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (sub_299211244(a1, v4, "r"))
  {
    v5 = a1[1];
    if (v5 && a1[2] && *v5 == 1)
    {
      operator new();
    }
  }

  else
  {
    std::ios_base::clear((&v12 + *(v12 - 24)), 0);
    v6 = sub_2991C0E9C(&v12, "/Library/Caches/com.apple.xbs/Sources/Mecabra/mecabra/Korean/CustomizedLexicon.cpp", 82);
    v7 = sub_2991C0E9C(v6, "(", 1);
    v8 = MEMORY[0x29C29BD30](v7, 357);
    v9 = sub_2991C0E9C(v8, ") [", 3);
    v10 = sub_2991C0E9C(v9, "m_mmap.open(filePath.c_str(), r)", 34);
    sub_2991C0E9C(v10, "] ", 2);
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p);
  }

  v12 = *MEMORY[0x29EDC9538];
  *(&v12 + *(v12 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  v13 = MEMORY[0x29EDC9570] + 16;
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  v13 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v14);
  std::ostream::~ostream();
  MEMORY[0x29C29BF00](&v16);
  return 0;
}

void sub_299397D18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  MEMORY[0x29C29BFB0](v9, 0x10A1C40079592F6, a3, a4, a5, a6, a7, a8);
  sub_299242174(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_299397D54(void *a1)
{
  sub_299397DD0(a1);
  v2 = a1[44];
  if (v2)
  {
    a1[45] = v2;
    operator delete(v2);
  }

  v3 = a1[43];
  a1[43] = 0;
  if (v3)
  {
    (*(*v3 + 72))(v3);
  }

  return sub_299213950(a1);
}

uint64_t sub_299397DD0(uint64_t a1)
{
  sub_299213AB8(a1);
  result = *(a1 + 344);
  *(a1 + 344) = 0;
  if (result)
  {
    v3 = *(*result + 72);

    return v3();
  }

  return result;
}

void sub_299397E3C(unint64_t *a1, uint64_t a2, int a3, unsigned __int16 *a4, uint64_t a5)
{
  if (a3)
  {
    v5 = *(*(a2 + 376) + 2 * a3);
    a1[1] = 0;
    a1[2] = 0;
    *a1 = 0;
    if (v5)
    {
      sub_299398284(v5);
    }
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_299397FE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    *(a10 + 8) = v10;
    operator delete(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_299398008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[4] = *MEMORY[0x29EDCA608];
  result = (*(*a2 + 24))(a2);
  if (result)
  {
    result = *(a1 + 344);
    if (result)
    {
      v7[0] = &unk_2A1F764F0;
      v7[1] = a1;
      v7[2] = a3;
      v7[3] = v7;
      (*(*result + 80))(result, a2, v7);
      return sub_29922CF08(v7);
    }
  }

  return result;
}

void sub_2993980F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29922CF08(va);
  _Unwind_Resume(a1);
}

void *sub_29939810C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = *MEMORY[0x29EDCA608];
  if (a3)
  {
    v4 = result;
    result = result[43];
    if (result)
    {
      v5[0] = &unk_2A1F76570;
      v5[1] = v4;
      v5[2] = a4;
      v5[3] = v5;
      (*(*result + 8))(result, a2, 2 * a3, v5);
      return sub_29922D43C(v5);
    }
  }

  return result;
}

void sub_2993981C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29922D43C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2993981D8(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v7[4] = *MEMORY[0x29EDCA608];
  v6 = a4;
  v5 = 0;
  v7[0] = &unk_2A1F765F0;
  v7[1] = &v6;
  v7[2] = &v5;
  v7[3] = v7;
  sub_29939810C(a1, a2, a3, v7);
  sub_29939884C(v7);
  return v5;
}

void sub_299398270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29939884C(va);
  _Unwind_Resume(a1);
}

void sub_299398284(unint64_t a1)
{
  if (a1 < 0x666666666666667)
  {
    operator new();
  }

  sub_29919600C();
}

__n128 sub_299398350(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F764F0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_299398380(uint64_t a1, uint64_t a2, unsigned __int16 **a3, void *a4, uint64_t *a5, _BYTE *a6)
{
  v9 = *a5;
  if (*a3)
  {
    v10 = *a4 >> 1;
  }

  else
  {
    v10 = 0;
  }

  sub_299397E3C(&v14, *(a1 + 8), *a2, *a3, v10);
  v11 = v14;
  v12 = v15;
  if (v14 != v15)
  {
    v13 = v14;
    do
    {
      sub_2993984CC(*(*(a1 + 16) + 24), v13, v9, a6, *(a2 + 4));
      if (*a6)
      {
        break;
      }

      v13 += 40;
    }

    while (v13 != v12);
  }

  if (v11)
  {

    operator delete(v11);
  }
}

void sub_299398468(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_299398480(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F76550))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2993984CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  v7 = a3;
  v6 = a5;
  if (!a1)
  {
    sub_2991A2240();
  }

  return (*(*a1 + 48))(a1, a2, &v7, &v6, a4);
}

__n128 sub_29939859C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F76570;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2993985CC(uint64_t a1, int *a2, unsigned __int16 **a3, void *a4, _BYTE *a5)
{
  if (*a3)
  {
    v7 = *a4 >> 1;
  }

  else
  {
    v7 = 0;
  }

  sub_299397E3C(&v12, *(a1 + 8), *a2, *a3, v7);
  v8 = v12;
  v9 = v13;
  if (v12 != v13)
  {
    v10 = v12;
    do
    {
      v11 = *(*(a1 + 16) + 24);
      if (!v11)
      {
        sub_2991A2240();
      }

      (*(*v11 + 48))(v11, v10, a5);
      if (*a5)
      {
        break;
      }

      v10 += 40;
    }

    while (v10 != v9);
  }

  if (v8)
  {

    operator delete(v8);
  }
}

void sub_2993986C8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2993986E4(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F765D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2993987A4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F765F0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2993987D4(uint64_t result, uint64_t a2, _BYTE *a3)
{
  v3 = *(a2 + 32);
  if (v3 & 1) != 0 || (v3 & 2) != 0 && (**(result + 8))
  {
    **(result + 16) = 1;
    *a3 = 1;
  }

  return result;
}

uint64_t sub_299398800(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F76660))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29939884C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void sub_2993988CC(uint64_t a1, uint64_t **a2, int64x2_t a3)
{
  __p = 0;
  v13 = 0;
  v14 = 0;
  v11 = 0;
  v4 = a2[6];
  if (a2[7] != v4)
  {
    v6 = 0;
    do
    {
      v7 = v4[v6];
      v8 = *(v7 + 55);
      if (v8 >= 0)
      {
        v9 = v7 + 32;
      }

      else
      {
        v9 = *(v7 + 32);
      }

      if (v8 >= 0)
      {
        v10 = *(v7 + 55);
      }

      else
      {
        v10 = *(v7 + 40);
      }

      if (sub_2993989E8(a1, v9, v10))
      {
        if ((*(*v7 + 96))(v7) == 83)
        {
          *(v7 + 152) = 0;
        }

        else
        {
          sub_299266D00(&__p, &v11);
        }
      }

      v6 = v11 + 1;
      v11 = v6;
      v4 = a2[6];
    }

    while (v6 < a2[7] - v4);
  }

  sub_2992AC390(a2, &__p, a3);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }
}

void sub_2993989C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2993989E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 24);
  if (v6 && (sub_2993981D8(v6, a2, a3, 0) & 1) != 0)
  {
    return 1;
  }

  result = *(a1 + 8);
  if (!result)
  {
    return result;
  }

  LODWORD(v8[0]) = 0;
  return sub_2993E6B4C(result, a2, a3, v8) && (v8[0] & 2) != 0;
}

void sub_299398A70(uint64_t a1, uint64_t **a2, double *a3, uint64_t a4)
{
  v43 = *MEMORY[0x29EDCA608];
  v4 = a2[6];
  if ((a2[7] - v4) >= 9)
  {
    if (*a3)
    {
      v8 = 0;
      v9 = -1.79769313e308;
      do
      {
        v10 = (*(*v4[v8] + 392))(v4[v8]);
        if (v9 < v10)
        {
          v9 = v10;
        }

        ++v8;
        v4 = a2[6];
        if (*a3 >= (a2[7] - v4))
        {
          *&v11 = a2[7] - v4;
        }

        else
        {
          v11 = *a3;
        }
      }

      while (v8 < *&v11);
    }

    else
    {
      v9 = -1.79769313e308;
    }

    v12 = sub_2993652F8(0xBu);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v31 = *(a3 + 1);
      v30 = *(a3 + 2);
      *buf = 134218496;
      *&buf[4] = v9;
      v37 = 2048;
      v38 = v30;
      v39 = 2048;
      v40 = *&v31;
      _os_log_debug_impl(&dword_29918C000, v12, OS_LOG_TYPE_DEBUG, "[Prune] highestLMScore=%lf maxLMDiff=%lf LMThreshold=%lf", buf, 0x20u);
    }

    __p = 0;
    v34 = 0;
    v35 = 0;
    v32 = 0;
    v14 = a2[6];
    if (a2[7] != v14)
    {
      v15 = 0;
      do
      {
        v16 = v14[v15];
        v17 = *(a4 + 24);
        *buf = v16;
        if (!v17)
        {
          sub_2991A2240();
        }

        if ((*(*v17 + 48))(v17, buf))
        {
          goto LABEL_24;
        }

        if (v9 - (*(*v16 + 392))(v16) > a3[2] || v32 && (*(*v16 + 392))(v16) < a3[1])
        {
          sub_299266D00(&__p, &v32);
          v18 = sub_2993652F8(0xBu);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            v19 = v32;
            v20 = (*(*v16 + 24))(v16);
            v21 = (*(*v16 + 392))(v16);
            v22 = (*(*v16 + 112))(v16);
            *buf = 134218754;
            *&buf[4] = v19;
            v37 = 2112;
            v38 = v20;
            v39 = 2048;
            v40 = v21;
            v41 = 1024;
            v42 = v22;
            v23 = v18;
            v24 = "[Prune] rejecting %lu: %@ (LM:%lf Weight:%u), ";
LABEL_27:
            _os_log_debug_impl(&dword_29918C000, v23, OS_LOG_TYPE_DEBUG, v24, buf, 0x26u);
          }
        }

        else
        {
          v25 = sub_2993652F8(0xBu);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            v26 = v32;
            v27 = (*(*v16 + 24))(v16);
            v28 = (*(*v16 + 392))(v16);
            v29 = (*(*v16 + 112))(v16);
            *buf = 134218754;
            *&buf[4] = v26;
            v37 = 2112;
            v38 = v27;
            v39 = 2048;
            v40 = v28;
            v41 = 1024;
            v42 = v29;
            v23 = v25;
            v24 = "[Prune] keeping   %lu: %@ (LM:%lf Weight:%u), ";
            goto LABEL_27;
          }
        }

LABEL_24:
        v15 = v32 + 1;
        v32 = v15;
        v14 = a2[6];
      }

      while (v15 < a2[7] - v14);
    }

    sub_2992AC390(a2, &__p, v13);
    if (__p)
    {
      v34 = __p;
      operator delete(__p);
    }
  }
}

void sub_299398F08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_299398F3C(uint64_t a1)
{
  sub_29932C330(a1);
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(*a1 + 32))(a1);
  }

  return v2 != 0;
}

uint64_t sub_299398F98(uint64_t result)
{
  if (*(result + 96) == 1 && !*(result + 8))
  {
    if (*(result + 40))
    {
      return (*(*result + 16))();
    }
  }

  return result;
}

uint64_t sub_299398FEC(uint64_t a1)
{
  sub_2993D894C(*(a1 + 128));

  return sub_29932D4B8(a1);
}

void sub_299399028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[0] = 0;
  v6[1] = 0;
  v5 = v6;
  v3 = *(a3 + 8);
  sub_2991C6CA8(&__p, off_2A145F3B0[0]);
  sub_2992B7C70(&v5, v3);
}

BOOL sub_299399134(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v10[4] = *MEMORY[0x29EDCA608];
  if (*(a1 + 128) && *(a1 + 96) == 1)
  {
    v8 = objc_msgSend_rawCandidate(a2, a2, a3, a4);
    v10[0] = &unk_2A1F767F0;
    v10[1] = a1;
    v10[3] = v10;
    sub_29931161C(v8, v10);
    sub_29939995C(v10);
  }

  return sub_29932CC58(a1, a2, a3, a4);
}

void sub_299399200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29939995C(va);
  _Unwind_Resume(a1);
}