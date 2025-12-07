void sub_C19D9C(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  if (SHIBYTE(a11) < 0)
  {
    operator delete(a9);
  }

  std::ios::~ios();
  sub_11BD8(v21 - 128);
  _Unwind_Resume(a1);
}

uint64_t *sub_C19E38(void *a1, unsigned int *a2, _DWORD *a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_23;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (*&v4 <= v3)
    {
      v6 = v3 % v4.i32[0];
    }
  }

  else
  {
    v6 = (v4.i32[0] - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v5.u32[0] < 2uLL)
  {
    while (1)
    {
      v10 = v8[1];
      if (v10 == v3)
      {
        if (*(v8 + 4) == v3)
        {
          return v8;
        }
      }

      else if ((v10 & (*&v4 - 1)) != v6)
      {
        goto LABEL_23;
      }

      v8 = *v8;
      if (!v8)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v9 >= *&v4)
    {
      v9 %= *&v4;
    }

    if (v9 != v6)
    {
      goto LABEL_23;
    }

LABEL_12:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_23;
    }
  }

  if (*(v8 + 4) != v3)
  {
    goto LABEL_12;
  }

  return v8;
}

void sub_C1A170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  for (i = *(a2 + 16); v3 != i; v3 += 37)
  {
    v6 = *(a3 + 24);
    if (!v6)
    {
      sub_2B7420();
    }

    if ((*(*v6 + 48))(v6, v3))
    {
      v8 = v3[31];
      v7 = v3[32];
      if (v8 != v7)
      {
        while (1)
        {
          v9 = *(v8 + 8) < 1 || *(v8 + 16) < 1;
          if (v9 || *(v8 + 12) < 1)
          {
            break;
          }

          v8 += 40;
          if (v8 == v7)
          {
            goto LABEL_27;
          }
        }

        if (v8 != v7)
        {
          v10 = (v8 + 40);
          if ((v8 + 40) != v7)
          {
            do
            {
              v11 = *(v10 + 2) < 1 || *(v10 + 4) < 1;
              if (!v11 && *(v10 + 3) >= 1)
              {
                v12 = *v10;
                v13 = v10[1];
                *(v8 + 32) = *(v10 + 32);
                *v8 = v12;
                *(v8 + 16) = v13;
                v8 += 40;
              }

              v10 = (v10 + 40);
            }

            while (v10 != v7);
            v7 = v3[32];
          }
        }
      }

      if (v8 != v7)
      {
        v3[32] = v8;
      }

LABEL_27:
      v14 = v3[25];
      v15 = v3[26];
      while (v14 != v15)
      {
        if (!*(v14 + 24) && *v14 != v14[1])
        {
          v17 = v14[4];
          v16 = v14[5];
          if (v17 != v16)
          {
            while (1)
            {
              v18 = *(v17 + 8) < 1 || *(v17 + 16) < 1;
              if (v18 || *(v17 + 12) < 1)
              {
                break;
              }

              v17 += 40;
              if (v17 == v16)
              {
                goto LABEL_53;
              }
            }

            if (v17 != v16)
            {
              v19 = (v17 + 40);
              if ((v17 + 40) != v16)
              {
                do
                {
                  v20 = *(v19 + 2) < 1 || *(v19 + 4) < 1;
                  if (!v20 && *(v19 + 3) >= 1)
                  {
                    v21 = *v19;
                    v22 = v19[1];
                    *(v17 + 32) = *(v19 + 32);
                    *v17 = v21;
                    *(v17 + 16) = v22;
                    v17 += 40;
                  }

                  v19 = (v19 + 40);
                }

                while (v19 != v16);
                v16 = v14[5];
              }
            }
          }

          if (v17 != v16)
          {
            v14[5] = v17;
          }

LABEL_53:
          v23 = *v14;
          v24 = v14[1];
          while (v23 != v24)
          {
            if (*(v23 + 160))
            {
              sub_5AF20();
            }

            v26 = *(v23 + 120);
            v25 = *(v23 + 128);
            if (v26 != v25)
            {
              while (1)
              {
                v27 = *(v26 + 8) < 1 || *(v26 + 16) < 1;
                if (v27 || *(v26 + 12) < 1)
                {
                  break;
                }

                v26 += 40;
                if (v26 == v25)
                {
                  goto LABEL_54;
                }
              }

              if (v26 != v25)
              {
                v28 = (v26 + 40);
                if ((v26 + 40) != v25)
                {
                  do
                  {
                    v29 = *(v28 + 2) < 1 || *(v28 + 4) < 1;
                    if (!v29 && *(v28 + 3) >= 1)
                    {
                      v30 = *v28;
                      v31 = v28[1];
                      *(v26 + 32) = *(v28 + 32);
                      *v26 = v30;
                      *(v26 + 16) = v31;
                      v26 += 40;
                    }

                    v28 = (v28 + 40);
                  }

                  while (v28 != v25);
                  v25 = *(v23 + 128);
                }
              }
            }

            if (v26 != v25)
            {
              *(v23 + 128) = v26;
            }

LABEL_54:
            v23 += 168;
          }
        }

        v14 += 9;
      }
    }
  }
}

void sub_C1A4A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  v3 = *(a2 + 56);
  while (v2 != v3)
  {
    v5 = *(v2 + 184);
    v4 = *(v2 + 192);
    if (v5 != v4)
    {
      while (1)
      {
        v6 = *(v5 + 8) < 1 || *(v5 + 16) < 1;
        if (v6 || *(v5 + 12) < 1)
        {
          break;
        }

        v5 += 40;
        if (v5 == v4)
        {
          goto LABEL_2;
        }
      }

      if (v5 != v4)
      {
        v7 = (v5 + 40);
        if ((v5 + 40) != v4)
        {
          do
          {
            v8 = *(v7 + 2) < 1 || *(v7 + 4) < 1;
            if (!v8 && *(v7 + 3) >= 1)
            {
              v9 = *v7;
              v10 = v7[1];
              *(v5 + 32) = *(v7 + 32);
              *v5 = v9;
              *(v5 + 16) = v10;
              v5 += 40;
            }

            v7 = (v7 + 40);
          }

          while (v7 != v4);
          v4 = *(v2 + 192);
        }
      }
    }

    if (v5 != v4)
    {
      *(v2 + 192) = v5;
    }

LABEL_2:
    v2 += 248;
  }
}

void sub_C1A5AC(uint64_t a1, uint64_t a2, uint64_t a3)
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

void sub_C1A7A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_A31E68(v15);
    _Unwind_Resume(a1);
  }

  sub_A31E68(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_C1A810(void *a1, uint64_t *a2)
{
  v2 = sub_62A70(a1, a2);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    if ((v15 & 0x80u) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13;
    }

    if ((v15 & 0x80u) == 0)
    {
      v7 = v15;
    }

    else
    {
      v7 = v14;
    }

    v8 = sub_2D390(exception, v6, v7);
  }

  v3 = *(v2 + 12);
  if (v3 == 4 || v3 == 3)
  {
    return *(v2 + 10);
  }

  if (v3 != 2)
  {
    v9 = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    if ((v15 & 0x80u) == 0)
    {
      v10 = &v13;
    }

    else
    {
      v10 = v13;
    }

    if ((v15 & 0x80u) == 0)
    {
      v11 = v15;
    }

    else
    {
      v11 = v14;
    }

    v12 = sub_2D390(v9, v10, v11);
  }

  return *(v2 + 5);
}

void sub_C1A94C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_C1A988(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  for (i = *(a2 + 16); v2 != i; v2 += 296)
  {
    v5 = *(result + 24);
    if (!v5)
    {
      sub_2B7420();
    }

    if ((*(*v5 + 48))(v5, v2))
    {
      v7 = *(v2 + 200);
      v6 = *(v2 + 208);
      v8 = 0x8E38E38E38E38E39 * ((v6 - v7) >> 3);
      if (v8 <= 1)
      {
        v8 = 1;
      }

      v9 = v6 == v7;
      v10 = v6 != v7;
      if (v9)
      {
        v11 = v8 + 1;
      }

      else
      {
        v11 = v8;
      }

      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if (v9)
      {
        v13 = v12;
      }

      else
      {
        v13 = v12 + 1;
      }

      if (v13 != 1)
      {
        v14 = v12 + v10 - 1;
        v15 = 72;
        do
        {
          sub_C1AA80(result, (*(v2 + 200) + v15), (*(v2 + 200) + v15 + 72));
          v15 += 144;
          v14 -= 2;
        }

        while (v14);
      }
    }
  }
}

void sub_C1AA80(uint64_t a1, unsigned int **a2, char **a3)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 == v4)
  {
    return;
  }

  v8 = v3[40];
  if (v8 == 1)
  {
    v9 = v3[1] | (v3[1] << 32);
  }

  else
  {
    if (v8)
    {
      sub_5AF20();
    }

    v9 = *(v3 + 1);
  }

  __p[0] = 0;
  __p[1] = 0;
  v56 = 0;
  v53 = 0uLL;
  v54 = 0;
  if (v8)
  {
LABEL_60:
    sub_5AF20();
  }

  v10 = &(*a3)[168 * *v3];
  if (*(v10 + 40) != 1)
  {
LABEL_61:
    sub_5AF20();
  }

  *v3 = sub_2FEF94(0);
  v11 = __p[1];
  if (__p[1] >= v56)
  {
    v15 = sub_BC43B8(__p, v3);
  }

  else
  {
    v12 = *v3;
    v13 = *(v3 + 1);
    v14 = *(v3 + 2);
    *(__p[1] + 44) = *(v3 + 11);
    v11[1] = v13;
    v11[2] = v14;
    *v11 = v12;
    *(v11 + 9) = 0;
    *(v11 + 10) = 0;
    *(v11 + 8) = 0;
    v11[4] = *(v3 + 4);
    *(v11 + 10) = *(v3 + 10);
    *(v3 + 8) = 0;
    *(v3 + 9) = 0;
    *(v3 + 10) = 0;
    *(v11 + 11) = 0;
    *(v11 + 12) = 0;
    *(v11 + 13) = 0;
    *(v11 + 88) = *(v3 + 22);
    *(v11 + 13) = *(v3 + 13);
    *(v3 + 12) = 0;
    *(v3 + 13) = 0;
    *(v3 + 11) = 0;
    *(v11 + 28) = v3[28];
    *(v11 + 16) = 0;
    *(v11 + 17) = 0;
    *(v11 + 15) = 0;
    *(v11 + 120) = *(v3 + 30);
    *(v11 + 17) = *(v3 + 17);
    *(v3 + 16) = 0;
    *(v3 + 17) = 0;
    *(v3 + 15) = 0;
    v11[9] = *(v3 + 9);
    *(v11 + 40) = 0;
    v15 = v11 + 168;
  }

  __p[1] = v15;
  v16 = *(&v53 + 1);
  if (*(&v53 + 1) >= v54)
  {
    v18 = sub_A7C2C8(&v53, v10);
  }

  else
  {
    v17 = *v10;
    *(*(&v53 + 1) + 12) = *(v10 + 12);
    *v16 = v17;
    *(v16 + 160) = 1;
    v18 = v16 + 168;
  }

  *(&v53 + 1) = v18;
  if (v4 - v3 != 168)
  {
    v24 = 0xCF3CF3CF3CF3CF3DLL;
    v25 = HIDWORD(v9);
    v26 = 0xCF3CF3CF3CF3CF3DLL * ((v4 - v3) >> 3) - 1;
    v27 = 42;
    do
    {
      v30 = *a2;
      v31 = &(*a2)[v27];
      if (v31[40])
      {
        goto LABEL_60;
      }

      v32 = &(*a3)[168 * *v31];
      if (*(v32 + 40) != 1)
      {
        goto LABEL_61;
      }

      v33 = v30[v27 + 3];
      if ((*(a1 + 32) != 1 || (v30[v27 + 39] & 0x10000) == 0 || v33 >= v25) && (*(a1 + 33) != 1 || (v30[v27 + 39] & 0x10000) == 0 || v33 < v25))
      {
        v34 = *(a1 + 36);
        if (!v34 || ((__p[1] - __p[0]) >> 3) * v24 != v34)
        {
          v35 = v24;
          *v31 = sub_2FEF94(((__p[1] - __p[0]) >> 3) * v24);
          v36 = __p[1];
          if (__p[1] >= v56)
          {
            v41 = sub_BC43B8(__p, v31);
          }

          else
          {
            v37 = *v31;
            v38 = *(v31 + 1);
            v39 = *(v31 + 2);
            *(__p[1] + 44) = *(v31 + 11);
            v36[1] = v38;
            v36[2] = v39;
            *v36 = v37;
            v40 = &v30[v27];
            *(v36 + 9) = 0;
            *(v36 + 10) = 0;
            *(v36 + 8) = 0;
            v36[4] = *&v30[v27 + 16];
            *(v36 + 10) = *&v30[v27 + 20];
            *(v40 + 8) = 0;
            *(v40 + 9) = 0;
            *(v40 + 10) = 0;
            *(v36 + 11) = 0;
            *(v36 + 12) = 0;
            *(v36 + 13) = 0;
            *(v36 + 88) = *&v30[v27 + 22];
            *(v36 + 13) = *&v30[v27 + 26];
            *(v40 + 12) = 0;
            *(v40 + 13) = 0;
            *(v40 + 11) = 0;
            *(v36 + 28) = v30[v27 + 28];
            *(v36 + 16) = 0;
            *(v36 + 17) = 0;
            *(v36 + 15) = 0;
            *(v36 + 120) = *&v30[v27 + 30];
            *(v36 + 17) = *&v30[v27 + 34];
            *(v40 + 16) = 0;
            *(v40 + 17) = 0;
            *(v40 + 15) = 0;
            v36[9] = *&v30[v27 + 36];
            *(v36 + 40) = 0;
            v41 = v36 + 168;
          }

          __p[1] = v41;
          v42 = *(&v53 + 1);
          if (*(&v53 + 1) < v54)
          {
            v28 = *v32;
            *(*(&v53 + 1) + 12) = *(v32 + 12);
            *v42 = v28;
            *(v42 + 160) = 1;
            v29 = v42 + 168;
          }

          else
          {
            v29 = sub_A7C2C8(&v53, v32);
          }

          *(&v53 + 1) = v29;
          v24 = v35;
        }
      }

      v27 += 42;
    }

    while (--v26);
  }

  v19 = *a2;
  if (*a2)
  {
    v20 = a2[1];
    v21 = *a2;
    if (v20 != v19)
    {
      do
      {
        v22 = v20 - 42;
        v23 = *(v20 - 2);
        if (v23 != -1)
        {
          (off_2672708[v23])(&v57, v20 - 42);
        }

        *(v20 - 2) = -1;
        v20 -= 42;
      }

      while (v22 != v19);
      v21 = *a2;
    }

    a2[1] = v19;
    operator delete(v21);
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  *a2 = *__p;
  a2[2] = v56;
  __p[1] = 0;
  v56 = 0;
  __p[0] = 0;
  v43 = *a3;
  if (*a3)
  {
    v44 = a3[1];
    v45 = *a3;
    if (v44 != v43)
    {
      do
      {
        v46 = v44 - 168;
        v47 = *(v44 - 2);
        if (v47 != -1)
        {
          (off_2672708[v47])(&v57, v44 - 168);
        }

        *(v44 - 2) = -1;
        v44 -= 168;
      }

      while (v46 != v43);
      v45 = *a3;
    }

    a3[1] = v43;
    operator delete(v45);
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v48 = __p[0];
    *a3 = v53;
    a3[2] = v54;
    if (v48)
    {
      v49 = __p[1];
      v50 = v48;
      if (__p[1] != v48)
      {
        do
        {
          v51 = v49 - 168;
          v52 = *(v49 - 2);
          if (v52 != -1)
          {
            (off_2672708[v52])(&v53, v49 - 168);
          }

          *(v49 - 2) = -1;
          v49 -= 168;
        }

        while (v51 != v48);
        v50 = __p[0];
      }

      __p[1] = v48;
      operator delete(v50);
    }
  }

  else
  {
    *a3 = v53;
    a3[2] = v54;
  }
}

void sub_C1AF9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  sub_A78C90(&a9);
  sub_A78C90(&a13);
  _Unwind_Resume(a1);
}

void sub_C1AFD0(_BYTE *a1, void *a2)
{
  v7 = 17;
  strcpy(__p, "alternatives_type");
  v3 = sub_5F8FC(a2, __p);
  v4 = sub_BC89AC(v3);
  if (v7 < 0)
  {
    v5 = v4;
    operator delete(*__p);
    v4 = v5;
  }

  *a1 = v4;
  operator new();
}

void sub_C1B248(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_C1B2C8(uint64_t result, uint64_t a2, uint64_t a3)
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
        result = sub_C1B358(v6, v3);
      }

      v3 += 296;
    }

    while (v3 != v4);
  }

  return result;
}

uint64_t sub_C1B358(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 200);
  v35 = *(a2 + 208);
  if (v2 != v35)
  {
    v3 = result;
    result = 88;
    while (1)
    {
      if (!*(v2 + 24))
      {
        v5 = *v2;
        v4 = v2[1];
        if (*v2 != v4)
        {
          break;
        }
      }

LABEL_3:
      v2 += 9;
      if (v2 == v35)
      {
        return result;
      }
    }

    v36 = v2[1];
    while (1)
    {
      if (*(v5 + 160))
      {
        sub_5AF20();
      }

      if (*v3)
      {
        v6 = 88;
      }

      else
      {
        v6 = 64;
      }

      v7 = (v5 + v6);
      if (*v3)
      {
        v8 = 112;
      }

      else
      {
        v8 = 12;
      }

      v9 = *(v5 + v8);
      v10 = *v7;
      v11 = v7[1];
      if (*v7 != v11)
      {
        v12 = 0;
        do
        {
          v13 = *(v3 + 4);
          v14 = v13 / 10;
          v15 = v13 % 10;
          if (v13 < 0)
          {
            v16 = -5;
          }

          else
          {
            v16 = 5;
          }

          if (*&v10[4 * (*(v10 + 2) != 0x7FFFFFFF) + 4] > (v14 + v9 + (((103 * (v16 + v15)) >> 15) & 1) + ((103 * (v16 + v15)) >> 10)))
          {
            if (v12 >= *(v3 + 16))
            {
              *(v10 + 28) = 0xFFFFFFFFLL;
            }

            ++v12;
          }

          v10 += 60;
        }

        while (v10 != v11);
        v10 = *v7;
        v11 = v7[1];
      }

      if (v11 != v10)
      {
        v17 = 0;
        v18 = v11 - 56;
        do
        {
          v20 = *(v3 + 8);
          v21 = v20 / -10;
          v22 = v20 % 10;
          if (v20 < 0)
          {
            v23 = -5;
          }

          else
          {
            v23 = 5;
          }

          if (*&v18[4 * (*(v18 + 1) != 0x7FFFFFFF)] < (v21 + v9 + (((-103 * (v23 + v22)) >> 15) & 1) + ((-103 * (v23 + v22)) >> 10)))
          {
            if (v17 >= *(v3 + 24))
            {
              *(v18 + 3) = 0xFFFFFFFFLL;
            }

            ++v17;
          }

          v19 = v18 - 4;
          v18 -= 60;
        }

        while (v19 != v10);
        v10 = *v7;
        v11 = v7[1];
      }

      if (v10 != v11)
      {
        break;
      }

LABEL_45:
      v26 = 0xEEEEEEEEEEEEEEEFLL * ((v11 - v10) >> 2);
      v27 = *(v3 + 32);
      if (v26 > v27)
      {
        goto LABEL_60;
      }

LABEL_7:
      v5 += 168;
      if (v5 == v4)
      {
        goto LABEL_3;
      }
    }

    v24 = v10 + 60;
    while (1)
    {
      v25 = *(v24 - 8) == -1 || *(v24 - 7) == 0;
      if (v25)
      {
        break;
      }

      v25 = v24 == v11;
      v24 += 60;
      if (v25)
      {
        goto LABEL_45;
      }
    }

    v28 = v7;
    v29 = v24 - 60;
    if (v24 - 60 != v11 && v24 != v11)
    {
      do
      {
        if (*(v24 + 7) != -1 && *(v24 + 8) != 0)
        {
          v31 = *v24;
          v32 = *(v24 + 1);
          v33 = *(v24 + 2);
          *(v29 + 41) = *(v24 + 41);
          *(v29 + 1) = v32;
          *(v29 + 2) = v33;
          *v29 = v31;
          v29 += 60;
        }

        v24 += 60;
      }

      while (v24 != v11);
      v10 = *v28;
      v11 = v28[1];
    }

    if (v29 != v11)
    {
      v11 = v29;
      v28[1] = v29;
      v4 = v36;
    }

    v7 = v28;
    v34 = 0xEEEEEEEEEEEEEEEFLL * ((v11 - v10) >> 2);
    v27 = *(v3 + 32);
    if (v34 <= v27)
    {
      goto LABEL_7;
    }

LABEL_60:
    v7[1] = &v10[60 * v27];
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_C1B6C0(uint64_t result, int a2, __int128 *a3)
{
  v3 = *a3;
  v5 = *(a3 + 1);
  v4 = *a3;
  if (*a3 != v5)
  {
    v6 = 0;
    do
    {
      v7 = *(result + 4);
      v8 = v7 / 10;
      v9 = v7 % 10;
      if (v7 < 0)
      {
        v10 = -5;
      }

      else
      {
        v10 = 5;
      }

      if (*(v4 + 4 * (*(v4 + 8) != 0x7FFFFFFF) + 4) > (v8 + a2 + (((103 * (v10 + v9)) >> 15) & 1) + ((103 * (v10 + v9)) >> 10)))
      {
        if (v6 >= *(result + 16))
        {
          *(v4 + 28) = 0xFFFFFFFFLL;
        }

        ++v6;
      }

      v4 += 60;
    }

    while (v4 != v5);
    v3 = *a3;
  }

  if (*(&v3 + 1) != v3)
  {
    v11 = 0;
    v12 = *(&v3 + 1) - 56;
    do
    {
      v14 = *(result + 8);
      v15 = v14 / -10;
      v16 = v14 % 10;
      if (v14 < 0)
      {
        v17 = -5;
      }

      else
      {
        v17 = 5;
      }

      if (*(v12 + 4 * (*(v12 + 4) != 0x7FFFFFFF)) < (v15 + a2 + (((-103 * (v17 + v16)) >> 15) & 1) + ((-103 * (v17 + v16)) >> 10)))
      {
        if (v11 >= *(result + 24))
        {
          *(v12 + 24) = 0xFFFFFFFFLL;
        }

        ++v11;
      }

      v13 = v12 - 4;
      v12 -= 60;
    }

    while (v13 != v3);
    v3 = *a3;
  }

  v18 = *(&v3 + 1);
  v19 = v3;
  if (v3 != *(&v3 + 1))
  {
    v20 = (v3 + 60);
    while (1)
    {
      v21 = *(v20 - 8) == -1 || *(v20 - 7) == 0;
      if (v21)
      {
        break;
      }

      v21 = v20 == *(&v3 + 1);
      v20 = (v20 + 60);
      if (v21)
      {
        goto LABEL_44;
      }
    }

    v22 = (v20 - 60);
    if ((v20 - 60) != *(&v3 + 1) && v20 != *(&v3 + 1))
    {
      do
      {
        if (*(v20 + 7) != -1 && *(v20 + 8) != 0)
        {
          v24 = *v20;
          v25 = v20[1];
          v26 = v20[2];
          *(v22 + 41) = *(v20 + 41);
          v22[1] = v25;
          v22[2] = v26;
          *v22 = v24;
          v22 = (v22 + 60);
        }

        v20 = (v20 + 60);
      }

      while (v20 != v18);
      v19 = *a3;
      v18 = *(a3 + 1);
    }

    if (v22 != v18)
    {
      v18 = v22;
      *(a3 + 1) = v22;
    }
  }

LABEL_44:
  v27 = 0xEEEEEEEEEEEEEEEFLL * ((v18 - v19) >> 2);
  v28 = *(result + 32);
  if (v27 > v28)
  {
    *(a3 + 1) = v19 + 60 * v28;
  }

  return result;
}

_BYTE *sub_C1B970(_BYTE *result, int *a2, uint64_t a3)
{
  v3 = *(a3 + 48);
  v4 = *(a3 + 56);
  if (v3 != v4)
  {
    v6 = result;
    do
    {
      if (*v6)
      {
        v7 = 96;
      }

      else
      {
        v7 = 72;
      }

      result = sub_C1B6C0(v6, *a2, (v3 + v7));
      v3 += 248;
    }

    while (v3 != v4);
  }

  return result;
}

uint64_t sub_C1B9E0(uint64_t a1, void *a2)
{
  *(&__p.__r_.__value_.__s + 23) = 17;
  strcpy(&__p, "alternatives_type");
  v4 = sub_5F8FC(a2, &__p);
  v5 = sub_BC89AC(v4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    v6 = v5;
    operator delete(__p.__r_.__value_.__l.__data_);
    v5 = v6;
  }

  *a1 = v5;
  *(a1 + 4) = 0;
  v21 = 15;
  strcpy(v20, "domination_rule");
  v7 = sub_5F8FC(a2, v20);
  if (*(v7 + 23) < 0)
  {
    v9 = v7[1];
    if (v9 != 11)
    {
      if (v9 != 13)
      {
        goto LABEL_29;
      }

      v8 = *v7;
      goto LABEL_10;
    }

    if (**v7 != 0x745F636974617473 || *(*v7 + 3) != 0x656D69745F636974)
    {
LABEL_29:
      exception = __cxa_allocate_exception(0x40uLL);
      std::operator+<char>();
      sub_30F54(&__p, " provided in configuration", &v22);
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

      v19 = sub_2D390(exception, p_p, size);
    }
  }

  else
  {
    if (*(v7 + 23) != 11)
    {
      v8 = v7;
      if (*(v7 + 23) != 13)
      {
        goto LABEL_29;
      }

LABEL_10:
      v10 = *v8;
      v11 = *(v8 + 5);
      if (v10 != 0x6465746365707865 || v11 != 0x656D69745F646574)
      {
        goto LABEL_29;
      }

      *(a1 + 4) = 1;
      if (v21 < 0)
      {
        goto LABEL_24;
      }

      return a1;
    }

    if (*v7 != 0x745F636974617473 || *(v7 + 3) != 0x656D69745F636974)
    {
      goto LABEL_29;
    }
  }

  *(a1 + 4) = 0;
  if ((v21 & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_24:
  operator delete(v20[0]);
  return a1;
}

void sub_C1BC38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a14 & 0x80000000) == 0)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      operator delete(a9);
      goto LABEL_8;
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void *sub_C1BCE0(void *result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v3 != v4)
  {
    v5 = result;
    do
    {
      v6 = *(a3 + 24);
      if (!v6)
      {
        sub_2B7420();
      }

      result = (*(*v6 + 48))(v6, v3);
      if (result)
      {
        v8 = *(v3 + 200);
        v9 = *(v3 + 208);
        while (v8 != v9)
        {
          if (!*(v8 + 24))
          {
            v10 = *v8;
            v11 = v8[1];
            if (*v8 != v11)
            {
              do
              {
                if (*(v10 + 160))
                {
                  sub_5AF20();
                }

                if (*v5)
                {
                  v12 = 88;
                }

                else
                {
                  v12 = 64;
                }

                sub_C1BDF4(v5, (v10 + v12), v7);
                result = sub_C1C0C4(v5, (v10 + v12));
                v10 += 168;
              }

              while (v10 != v11);
            }
          }

          v8 += 9;
        }
      }

      v3 += 296;
    }

    while (v3 != v4);
  }

  return result;
}

void *sub_C1BDF4(uint64_t a1, __int128 **a2, __n128 a3)
{
  v3 = *(a1 + 4);
  if (v3 == 1)
  {
    v17[0] = off_26727B8;
    v18 = v17;
    v4 = off_26728B8;
LABEL_8:
    v15[0] = v4;
    v5 = v15;
    goto LABEL_10;
  }

  if (v3)
  {
    v18 = 0;
  }

  else
  {
    v17[0] = off_2672728;
    v18 = v17;
  }

  if (!v3)
  {
    v4 = off_2672838;
    goto LABEL_8;
  }

  v5 = 0;
LABEL_10:
  v16 = v5;
  v6 = *a2;
  v7 = a2[1];
  v14[0] = v17;
  v14[1] = v15;
  if (v7 - v6 < 7681)
  {
    v12 = 0;
    v8 = 0;
  }

  else
  {
    v8 = 0xEEEEEEEEEEEEEEEFLL * ((v7 - v6) >> 2);
    while (1)
    {
      v9 = operator new(60 * v8, &std::nothrow);
      if (v9)
      {
        break;
      }

      v10 = v8 >> 1;
      v11 = v8 > 1;
      v8 >>= 1;
      if (!v11)
      {
        v12 = 0;
        v8 = v10;
        goto LABEL_17;
      }
    }

    v12 = v9;
  }

LABEL_17:
  sub_C1C590(v6, v7, v14, 0xEEEEEEEEEEEEEEEFLL * ((v7 - v6) >> 2), v12, v8, a3);
  if (v12)
  {
    operator delete(v12);
  }

  if (v16 != v15)
  {
    if (v16)
    {
      (*(*v16 + 40))();
    }

    result = v18;
    if (v18 != v17)
    {
      goto LABEL_23;
    }

    return (*(*result + 32))(result);
  }

  (*(*v16 + 32))(v16);
  result = v18;
  if (v18 == v17)
  {
    return (*(*result + 32))(result);
  }

LABEL_23:
  if (result)
  {
    return (*(*result + 40))(result);
  }

  return result;
}

void sub_C1C09C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  if (v15)
  {
    operator delete(v15);
  }

  sub_C1C504(&a12);
  sub_C1C504(va);
  _Unwind_Resume(a1);
}

void *sub_C1C0C4(uint64_t a1, char **a2)
{
  v3 = *(a1 + 4);
  if (v3 == 1)
  {
    v20[0] = off_26727B8;
    v21 = v20;
    v4 = off_26728B8;
    goto LABEL_8;
  }

  if (v3)
  {
    v21 = 0;
  }

  else
  {
    v20[0] = off_2672728;
    v21 = v20;
  }

  if (!v3)
  {
    v4 = off_2672838;
LABEL_8:
    v18[0] = v4;
    v19 = v18;
    v6 = *a2;
    v5 = a2[1];
    if (v5 == *a2)
    {
      goto LABEL_21;
    }

    goto LABEL_11;
  }

  v19 = 0;
  v6 = *a2;
  v5 = a2[1];
  if (v5 == *a2)
  {
    goto LABEL_21;
  }

LABEL_11:
  v7 = 2147483646;
  v8 = 2147483646;
  do
  {
    while (1)
    {
      if (!v21)
      {
        sub_2B7420();
      }

      v9 = v5 - 60;
      if ((*(*v21 + 48))(v21, v5 - 60) < v7)
      {
        if (!v19)
        {
          sub_2B7420();
        }

        if ((*(*v19 + 48))(v19, v5 - 60) < v8)
        {
          break;
        }
      }

      *(v5 - 4) = 0xFFFFFFFFLL;
      v5 -= 60;
      if (v9 == v6)
      {
        goto LABEL_20;
      }
    }

    if (!v21)
    {
      sub_2B7420();
    }

    v7 = (*(*v21 + 48))(v21, v5 - 60);
    if (!v19)
    {
      sub_2B7420();
    }

    v8 = (*(*v19 + 48))(v19, v5 - 60);
    v5 -= 60;
  }

  while (v9 != v6);
LABEL_20:
  v6 = *a2;
  v5 = a2[1];
LABEL_21:
  if (v6 != v5)
  {
    v10 = v6 + 60;
    while (1)
    {
      v11 = *(v10 - 8) == -1 || *(v10 - 7) == 0;
      if (v11)
      {
        break;
      }

      v11 = v10 == v5;
      v10 += 60;
      if (v11)
      {
        goto LABEL_42;
      }
    }

    v12 = v10 - 60;
    if (v10 - 60 != v5 && v10 != v5)
    {
      do
      {
        if (*(v10 + 7) != -1 && *(v10 + 8) != 0)
        {
          v14 = *v10;
          v15 = *(v10 + 1);
          v16 = *(v10 + 2);
          *(v12 + 41) = *(v10 + 41);
          *(v12 + 1) = v15;
          *(v12 + 2) = v16;
          *v12 = v14;
          v12 += 60;
        }

        v10 += 60;
      }

      while (v10 != v5);
      v5 = a2[1];
    }

    if (v12 != v5)
    {
      a2[1] = v12;
    }
  }

LABEL_42:
  if (v19 != v18)
  {
    if (v19)
    {
      (*(*v19 + 40))();
    }

    result = v21;
    if (v21 != v20)
    {
      goto LABEL_46;
    }

    return (*(*result + 32))(result);
  }

  (*(*v19 + 32))(v19);
  result = v21;
  if (v21 == v20)
  {
    return (*(*result + 32))(result);
  }

LABEL_46:
  if (result)
  {
    return (*(*result + 40))(result);
  }

  return result;
}

void sub_C1C4CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_C1C504(va);
  sub_C1C504(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_C1C504(uint64_t a1)
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

void sub_C1C590(__int128 *result, char *a2, void *a3, unint64_t a4, __int128 *a5, int64_t a6, __n128 a7)
{
  if (a4 < 2)
  {
    return;
  }

  v9 = result;
  if (a4 == 2)
  {
    v10 = a2 - 60;
    if (sub_C1CA2C(a3, (a2 - 60), result))
    {
      v65[0] = v9[2];
      *(v65 + 12) = *(v9 + 44);
      v12 = *v9;
      v11 = v9[1];
      v14 = *(v10 + 1);
      v13 = *(v10 + 2);
      v15 = *v10;
      *(v9 + 41) = *(v10 + 41);
      v9[1] = v14;
      v9[2] = v13;
      *v9 = v15;
      *v10 = v12;
      *(v10 + 1) = v11;
      *(v10 + 2) = v65[0];
      *(v10 + 41) = *(v65 + 9);
    }

    return;
  }

  if (a4 > 128)
  {
    v41 = a5;
    v42 = a4 >> 1;
    v43 = (result + 60 * (a4 >> 1));
    v44 = a4 - (a4 >> 1);
    if (a4 > a6)
    {
      sub_C1C590(result, v43, a3, a4 >> 1, a5, a6);
      sub_C1C590(v43, a2, a3, v44, v41, a6);

      sub_C1D058(v9, v43, a2, a3, v42, v44, v41, a6);
      return;
    }

    v47 = sub_C1CBC8(result, v43, a3, a4 >> 1, a5, a7);
    v48 = (v41 + 60 * v42);
    sub_C1CBC8(v43, a2, a3, v44, v48, v47);
    v49 = (v41 + 60 * a4);
    v50 = v48;
    while (1)
    {
      if (v50 == v49)
      {
        while (v41 != v48)
        {
          v57 = *v41;
          v58 = v41[1];
          v59 = v41[2];
          *(v9 + 41) = *(v41 + 41);
          v9[1] = v58;
          v9[2] = v59;
          *v9 = v57;
          v9 = (v9 + 60);
          v41 = (v41 + 60);
        }

        return;
      }

      if (sub_C1CA2C(a3, v50, v41))
      {
        v54 = *v50;
        v55 = v50[1];
        v56 = v50[2];
        *(v9 + 41) = *(v50 + 41);
        v9[1] = v55;
        v9[2] = v56;
        *v9 = v54;
        v9 = (v9 + 60);
        v50 = (v50 + 60);
        if (v41 == v48)
        {
LABEL_42:
          while (v50 != v49)
          {
            v60 = *v50;
            v61 = v50[1];
            v62 = v50[2];
            *(v9 + 41) = *(v50 + 41);
            v9[1] = v61;
            v9[2] = v62;
            *v9 = v60;
            v9 = (v9 + 60);
            v50 = (v50 + 60);
          }

          return;
        }
      }

      else
      {
        v51 = *v41;
        v52 = v41[1];
        v53 = v41[2];
        *(v9 + 41) = *(v41 + 41);
        v9[1] = v52;
        v9[2] = v53;
        *v9 = v51;
        v9 = (v9 + 60);
        v41 = (v41 + 60);
        if (v41 == v48)
        {
          goto LABEL_42;
        }
      }
    }
  }

  if (result == a2)
  {
    return;
  }

  v16 = result + 60;
  if (result + 60 == a2)
  {
    return;
  }

  v17 = 0;
  v18 = result;
  while (2)
  {
    v22 = v16;
    if (!sub_C1CA2C(a3, v16, v18))
    {
      goto LABEL_12;
    }

    v23 = *v22;
    v24 = v22[1];
    v25 = v22[2];
    *(v65 + 12) = *(v22 + 44);
    v64 = v24;
    v65[0] = v25;
    v63 = v23;
    v26 = *v18;
    v27 = v18[1];
    v28 = v18[2];
    *(v22 + 41) = *(v18 + 41);
    v22[1] = v27;
    v22[2] = v28;
    *v22 = v26;
    if (v18 == v9)
    {
LABEL_10:
      v18 = v9;
      goto LABEL_11;
    }

    v29 = v17;
    while (1)
    {
      v31 = *(*a3 + 24);
      if (!v31 || (v32 = (*(*v31 + 48))(v31, &v63), (v33 = *(*a3 + 24)) == 0))
      {
LABEL_44:
        sub_2B7420();
      }

      v34 = (v9 + v29);
      if (v32 == (*(*v33 + 48))(v33, v9 + v29 - 60))
      {
        break;
      }

      v38 = *(*a3 + 24);
      if (!v38)
      {
        goto LABEL_44;
      }

      v39 = (*(*v38 + 48))(v38, &v63);
      v40 = *(*a3 + 24);
      if (!v40)
      {
        goto LABEL_44;
      }

      if (v39 >= (*(*v40 + 48))(v40, v9 + v29 - 60))
      {
        goto LABEL_11;
      }

LABEL_16:
      v18 = (v18 - 60);
      v30 = *(v9 + v29 - 44);
      *v34 = *(v9 + v29 - 60);
      v34[1] = v30;
      v34[2] = *(v9 + v29 - 28);
      *(v34 + 41) = *(v9 + v29 - 19);
      v29 -= 60;
      if (!v29)
      {
        goto LABEL_10;
      }
    }

    v35 = *(a3[1] + 24);
    if (!v35)
    {
      goto LABEL_44;
    }

    v36 = (*(*v35 + 48))(v35, &v63);
    v37 = *(a3[1] + 24);
    if (!v37)
    {
      goto LABEL_44;
    }

    if (v36 > (*(*v37 + 48))(v37, v9 + v29 - 60))
    {
      goto LABEL_16;
    }

    v18 = (v9 + v29);
LABEL_11:
    v19 = v63;
    v20 = v64;
    v21 = v65[0];
    *(v18 + 41) = *(v65 + 9);
    v18[1] = v20;
    v18[2] = v21;
    *v18 = v19;
LABEL_12:
    v16 = v22 + 60;
    v17 += 60;
    v18 = v22;
    if (v22 + 60 != a2)
    {
      continue;
    }

    break;
  }
}

BOOL sub_C1CA2C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*a1 + 24);
  if (!v4)
  {
    goto LABEL_10;
  }

  v7 = (*(*v4 + 48))(v4);
  v8 = *(*a1 + 24);
  if (!v8)
  {
    goto LABEL_10;
  }

  if (v7 == (*(*v8 + 48))(v8, a3))
  {
    v9 = *(a1[1] + 24);
    if (v9)
    {
      v10 = (*(*v9 + 48))(v9, a2);
      v11 = *(a1[1] + 24);
      if (v11)
      {
        return v10 > (*(*v11 + 48))(v11, a3);
      }
    }

LABEL_10:
    sub_2B7420();
  }

  v13 = *(*a1 + 24);
  if (!v13)
  {
    goto LABEL_10;
  }

  v14 = (*(*v13 + 48))(v13, a2);
  v15 = *(*a1 + 24);
  if (!v15)
  {
    goto LABEL_10;
  }

  return v14 < (*(*v15 + 48))(v15, a3);
}

__n128 sub_C1CBC8(_OWORD *a1, _OWORD *a2, void *a3, unint64_t a4, __int128 *a5, __n128 result)
{
  if (a4)
  {
    v6 = a5;
    v8 = a2;
    v9 = a1;
    if (a4 == 2)
    {
      v12 = (a2 - 60);
      if (sub_C1CA2C(a3, a2 - 60, a1))
      {
        v13 = *v12;
        v14 = *(v8 - 44);
        v15 = *(v8 - 28);
        *(v6 + 44) = *(v8 - 1);
        v6[1] = v14;
        v6[2] = v15;
        *v6 = v13;
        result = *v9;
        v16 = v9[1];
        v17 = v9[2];
        v18 = *(v9 + 44);
      }

      else
      {
        v43 = *v9;
        v44 = v9[1];
        v45 = v9[2];
        *(v6 + 44) = *(v9 + 44);
        v6[1] = v44;
        v6[2] = v45;
        *v6 = v43;
        result = *v12;
        v16 = *(v8 - 44);
        v17 = *(v8 - 28);
        v18 = *(v8 - 1);
      }

      *(v6 + 104) = v18;
      *(v6 + 92) = v17;
      *(v6 + 76) = v16;
      *(v6 + 60) = result;
    }

    else if (a4 == 1)
    {
      result = *a1;
      v10 = a1[1];
      v11 = a1[2];
      *(a5 + 44) = *(a1 + 44);
      a5[1] = v10;
      a5[2] = v11;
      *a5 = result;
    }

    else if (a4 > 8)
    {
      v46 = a4 >> 1;
      v47 = 60 * (a4 >> 1);
      v48 = (a1 + v47);
      sub_C1C590(a1, (a1 + v47), a3, v46, a5, v46);
      sub_C1C590(v9 + v47, v8, a3, a4 - v46, (v6 + v47), a4 - v46);
      v50 = v9 + v47;
      while (v50 != v8)
      {
        if (sub_C1CA2C(a3, v50, v9))
        {
          result = *v50;
          v53 = *(v50 + 16);
          v54 = *(v50 + 32);
          *(v6 + 44) = *(v50 + 44);
          v6[1] = v53;
          v6[2] = v54;
          *v6 = result;
          v6 = (v6 + 60);
          v50 += 60;
          if (v9 == v48)
          {
LABEL_43:
            while (v50 != v8)
            {
              result = *v50;
              v57 = *(v50 + 16);
              v58 = *(v50 + 32);
              *(v6 + 44) = *(v50 + 44);
              v6[1] = v57;
              v6[2] = v58;
              *v6 = result;
              v6 = (v6 + 60);
              v50 += 60;
            }

            return result;
          }
        }

        else
        {
          result = *v9;
          v51 = v9[1];
          v52 = v9[2];
          *(v6 + 44) = *(v9 + 44);
          v6[1] = v51;
          v6[2] = v52;
          *v6 = result;
          v6 = (v6 + 60);
          v9 = (v9 + 60);
          if (v9 == v48)
          {
            goto LABEL_43;
          }
        }
      }

      while (v9 != v48)
      {
        result = *v9;
        v55 = v9[1];
        v56 = v9[2];
        *(v6 + 44) = *(v9 + 44);
        v6[1] = v55;
        v6[2] = v56;
        *v6 = result;
        v6 = (v6 + 60);
        v9 = (v9 + 60);
      }
    }

    else if (a1 != a2)
    {
      result = *a1;
      v19 = a1[1];
      v20 = a1[2];
      *(a5 + 44) = *(a1 + 44);
      a5[1] = v19;
      a5[2] = v20;
      *a5 = result;
      v21 = a1 + 60;
      if ((a1 + 60) != a2)
      {
        v22 = 0;
        v23 = a5;
        do
        {
          while (1)
          {
            v26 = (v23 + 60);
            if (sub_C1CA2C(a3, v21, v23))
            {
              break;
            }

            result = *v21;
            v24 = *(v21 + 16);
            v25 = *(v21 + 32);
            *(v23 + 104) = *(v21 + 44);
            *(v23 + 76) = v24;
            *(v23 + 92) = v25;
            *v26 = result;
            v21 += 60;
            v22 += 60;
            v23 = (v23 + 60);
            if (v21 == v8)
            {
              return result;
            }
          }

          v27 = v23[1];
          *v26 = *v23;
          *(v23 + 76) = v27;
          *(v23 + 92) = v23[2];
          *(v23 + 104) = *(v23 + 44);
          v28 = v6;
          if (v23 != v6)
          {
            v29 = v22;
            do
            {
              v31 = *(*a3 + 24);
              if (!v31 || (v32 = (*(*v31 + 48))(v31, v21), (v33 = *(*a3 + 24)) == 0))
              {
LABEL_45:
                sub_2B7420();
              }

              v34 = (v6 + v29);
              if (v32 == (*(*v33 + 48))(v33, v6 + v29 - 60))
              {
                v35 = *(a3[1] + 24);
                if (!v35)
                {
                  goto LABEL_45;
                }

                v36 = (*(*v35 + 48))(v35, v21);
                v37 = *(a3[1] + 24);
                if (!v37)
                {
                  goto LABEL_45;
                }

                if (v36 <= (*(*v37 + 48))(v37, v6 + v29 - 60))
                {
                  v28 = v23;
                  goto LABEL_28;
                }
              }

              else
              {
                v38 = *(*a3 + 24);
                if (!v38)
                {
                  goto LABEL_45;
                }

                v39 = (*(*v38 + 48))(v38, v21);
                v40 = *(*a3 + 24);
                if (!v40)
                {
                  goto LABEL_45;
                }

                if (v39 >= (*(*v40 + 48))(v40, v6 + v29 - 60))
                {
                  v28 = (v6 + v29);
                  goto LABEL_28;
                }
              }

              v23 = (v23 - 60);
              v30 = *(v6 + v29 - 44);
              *v34 = *(v6 + v29 - 60);
              v34[1] = v30;
              v34[2] = *(v6 + v29 - 28);
              *(v34 + 41) = *(v6 + v29 - 19);
              v29 -= 60;
            }

            while (v29);
            v28 = v6;
LABEL_28:
            v8 = a2;
          }

          result = *v21;
          v41 = *(v21 + 16);
          v42 = *(v21 + 32);
          *(v28 + 41) = *(v21 + 41);
          v28[1] = v41;
          v28[2] = v42;
          *v28 = result;
          v21 += 60;
          v22 += 60;
          v23 = v26;
        }

        while (v21 != v8);
      }
    }
  }

  return result;
}

uint64_t sub_C1D058(uint64_t result, __int128 *a2, char *a3, void *a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8)
{
  v122 = a6;
  if (!a6)
  {
    return result;
  }

  v13 = result;
  while (v122 > a8 && a5 > a8)
  {
    if (!a5)
    {
      return result;
    }

    v14 = 0;
    v15 = -a5;
    while (1)
    {
      v16 = (v14 + v13);
      result = sub_C1CA2C(a4, a2, v14 + v13);
      if (result)
      {
        break;
      }

      v14 = (v14 + 60);
      if (__CFADD__(v15++, 1))
      {
        return result;
      }
    }

    v18 = -v15;
    v19 = v122;
    v119 = a3;
    v120 = a4;
    if (-v15 < v122)
    {
      v20 = v122 / 2;
      v21 = (a2 + 60 * (v122 / 2));
      v22 = a2;
      if ((a2 - v13) != v14)
      {
        v23 = 0xEEEEEEEEEEEEEEEFLL * ((a2 - v13 - v14) >> 2);
        v22 = (v14 + v13);
        do
        {
          if (sub_C1CA2C(v120, v21, v22 + 60 * (v23 >> 1)))
          {
            v23 >>= 1;
          }

          else
          {
            v22 = (v22 + 60 * (v23 >> 1) + 60);
            v23 += ~(v23 >> 1);
          }
        }

        while (v23);
        v19 = v122;
        v20 = v122 / 2;
      }

      v24 = 0xEEEEEEEEEEEEEEEFLL * ((v22 - v13 - v14) >> 2);
      v25 = (a2 + 60 * (v122 / 2));
      v26 = a2 - v22;
      if (a2 == v22)
      {
        goto LABEL_54;
      }

LABEL_32:
      v25 = v22;
      if (a2 != v21)
      {
        if ((v22 + 60) == a2)
        {
          v31 = *v22;
          v32 = v22[1];
          v33 = v22[2];
          *&v125[12] = *(v22 + 44);
          v124 = v32;
          *v125 = v33;
          v123 = v31;
          v34 = v21 - a2;
          v35 = v21 - a2 - 3;
          v36 = a2;
          v37 = v24;
          v38 = v20;
          memmove(v22, v36, v35);
          v20 = v38;
          v24 = v37;
          v19 = v122;
          v25 = (v22 + v34);
          v40 = v124;
          v39 = *v125;
          v41 = v123;
          *(v25 + 41) = *&v125[9];
          v25[1] = v40;
          v25[2] = v39;
          *v25 = v41;
        }

        else if ((a2 + 60) == v21)
        {
          v25 = (v22 + 60);
          v42 = *(v21 - 44);
          v123 = *(v21 - 60);
          v124 = v42;
          *v125 = *(v21 - 28);
          *&v125[12] = *(v21 - 1);
          if ((v21 - 60) != v22)
          {
            v43 = v24;
            v44 = v20;
            memmove(v22 + 60, v22, v21 - 60 - v22 - 3);
            v25 = (v22 + 60);
            v20 = v44;
            v24 = v43;
            v19 = v122;
          }

          v45 = v123;
          v46 = v124;
          v47 = *v125;
          *(v22 + 41) = *&v125[9];
          v22[1] = v46;
          v22[2] = v47;
          *v22 = v45;
        }

        else
        {
          v48 = 0xEEEEEEEEEEEEEEEFLL * ((v21 - a2) >> 2);
          if (0xEEEEEEEEEEEEEEEFLL * (v26 >> 2) == v48)
          {
            v49 = (v22 + 60);
            v50 = (a2 + 60);
            do
            {
              v51 = *(v49 - 60);
              v52 = *(v49 - 44);
              v53 = *(v49 - 28);
              *&v125[12] = *(v49 - 1);
              v124 = v52;
              *v125 = v53;
              v123 = v51;
              v54 = *(v50 - 60);
              v55 = *(v50 - 44);
              v56 = *(v50 - 28);
              *(v49 - 19) = *(v50 - 19);
              *(v49 - 28) = v56;
              *(v49 - 44) = v55;
              *(v49 - 60) = v54;
              v57 = v124;
              *(v50 - 60) = v123;
              *(v50 - 44) = v57;
              *(v50 - 28) = *v125;
              *(v50 - 19) = *&v125[9];
              if (v49 == a2)
              {
                break;
              }

              v49 = (v49 + 60);
              v58 = v50 == v21;
              v50 = (v50 + 60);
            }

            while (!v58);
            v25 = a2;
          }

          else
          {
            v59 = 0xEEEEEEEEEEEEEEEFLL * (v26 >> 2);
            do
            {
              v60 = v59;
              v59 = v48;
              v48 = v60 % v48;
            }

            while (v48);
            v61 = (v22 + 60 * v59);
            do
            {
              v62 = *(v61 - 60);
              v63 = *(v61 - 44);
              v64 = *(v61 - 28);
              v65 = *(v61 - 1);
              v61 = (v61 - 60);
              v123 = v62;
              v124 = v63;
              *v125 = v64;
              *&v125[12] = v65;
              v66 = (v61 + v26);
              v67 = v61;
              do
              {
                v68 = v66;
                v69 = *v66;
                v70 = v66[1];
                v71 = v66[2];
                *(v67 + 41) = *(v66 + 41);
                v67[1] = v70;
                v67[2] = v71;
                *v67 = v69;
                v72 = v21 - v66;
                v66 = (v66 + 4 * (v26 >> 2));
                if (v26 >= v72)
                {
                  v66 = (a2 - v72);
                }

                v67 = v68;
              }

              while (v66 != v61);
              v73 = v123;
              v74 = v124;
              v75 = *v125;
              *(v68 + 41) = *&v125[9];
              v68[1] = v74;
              v68[2] = v75;
              *v68 = v73;
            }

            while (v61 != v22);
            v25 = (v22 + v21 - a2);
          }
        }
      }

      goto LABEL_54;
    }

    if (v15 == -1)
    {
      v105 = (v14 + v13);
      v106 = *(v14 + v13);
      v107 = *(v14 + v13 + 16);
      v108 = *(v14 + v13 + 32);
      *&v125[12] = *(v14 + v13 + 44);
      v124 = v107;
      *v125 = v108;
      v123 = v106;
      v109 = *a2;
      v110 = a2[1];
      v111 = a2[2];
      *(v105 + 41) = *(a2 + 41);
      v105[1] = v110;
      v105[2] = v111;
      *v105 = v109;
      v112 = v124;
      *a2 = v123;
      a2[1] = v112;
      a2[2] = *v125;
      *(a2 + 41) = *&v125[9];
      return result;
    }

    v24 = v18 / 2;
    v27 = a3;
    v22 = (v14 + v13 + 60 * (v18 / 2));
    v123 = *a4;
    v21 = a2;
    if (a2 != v27)
    {
      v118 = v18 / 2;
      v28 = 0xEEEEEEEEEEEEEEEFLL * ((v119 - a2) >> 2);
      v21 = a2;
      do
      {
        v29 = v21 + 60 * (v28 >> 1);
        v30 = sub_C1CA2C(&v123, v29, v22);
        if (v30)
        {
          v28 += ~(v28 >> 1);
        }

        else
        {
          v28 >>= 1;
        }

        if (v30)
        {
          v21 = (v29 + 60);
        }
      }

      while (v28);
      v24 = v118;
      v19 = v122;
    }

    v20 = 0xEEEEEEEEEEEEEEEFLL * ((v21 - a2) >> 2);
    v25 = v21;
    v26 = a2 - v22;
    if (a2 != v22)
    {
      goto LABEL_32;
    }

LABEL_54:
    a5 = -v15 - v24;
    v76 = v19 - v20;
    if ((v24 + v20) >= (v19 - (v24 + v20) - v15))
    {
      v78 = v21;
      a4 = v120;
      v79 = v24;
      v80 = v20;
      v81 = v25;
      result = sub_C1D058(v25, v78, v119, v120, -v15 - v24, v19 - v20, a7, a8);
      a2 = v22;
      v82 = v80;
      a5 = v79;
      a3 = v81;
      v122 = v82;
      v13 = v16;
      if (!v82)
      {
        return result;
      }
    }

    else
    {
      v77 = v25;
      result = sub_C1D058(v14 + v13, v22, v25, v120, v24, v20, a7, a8);
      a2 = v21;
      a4 = v120;
      a3 = v119;
      v122 = v76;
      v13 = v77;
      if (!v76)
      {
        return result;
      }
    }
  }

  if (a5 <= v122)
  {
    if (a2 != v13)
    {
      v93 = 3 - a7;
      v94 = a7;
      v95 = v13;
      do
      {
        v96 = *v95;
        v97 = v95[1];
        v98 = v95[2];
        *(v94 + 44) = *(v95 + 44);
        v94[1] = v97;
        v94[2] = v98;
        *v94 = v96;
        v94 = (v94 + 60);
        v95 = (v95 + 60);
        v93 -= 60;
      }

      while (v95 != a2);
      while (a2 != a3)
      {
        result = sub_C1CA2C(a4, a2, a7);
        if (result)
        {
          v102 = *a2;
          v103 = a2[1];
          v104 = a2[2];
          *(v13 + 41) = *(a2 + 41);
          v13[1] = v103;
          v13[2] = v104;
          *v13 = v102;
          v13 = (v13 + 60);
          a2 = (a2 + 60);
          if (v94 == a7)
          {
            return result;
          }
        }

        else
        {
          v99 = *a7;
          v100 = a7[1];
          v101 = a7[2];
          *(v13 + 41) = *(a7 + 41);
          v13[1] = v100;
          v13[2] = v101;
          *v13 = v99;
          v13 = (v13 + 60);
          a7 = (a7 + 60);
          if (v94 == a7)
          {
            return result;
          }
        }
      }

      return memmove(v13, a7, -(a7 + v93));
    }
  }

  else if (a2 != a3)
  {
    v83 = 0;
    do
    {
      v84 = (a7 + v83);
      v85 = *(a2 + v83);
      v86 = *(a2 + v83 + 16);
      v87 = *(a2 + v83 + 32);
      *(v84 + 44) = *(a2 + v83 + 44);
      v84[1] = v86;
      v84[2] = v87;
      *v84 = v85;
      v83 += 60;
    }

    while (a2 + v83 != a3);
    v88 = (a7 + v83);
    while (a2 != v13)
    {
      result = sub_C1CA2C(a4, v88 - 60, a2 - 60);
      if (result)
      {
        v89 = (a2 - 60);
      }

      else
      {
        v89 = (v88 - 60);
      }

      v91 = v89[1];
      v90 = v89[2];
      v92 = *(v89 + 41);
      *(a3 - 60) = *v89;
      *(a3 - 19) = v92;
      *(a3 - 28) = v90;
      *(a3 - 44) = v91;
      a3 -= 60;
      if (result)
      {
        a2 = (a2 - 60);
      }

      else
      {
        v88 = (v88 - 60);
      }

      if (v88 == a7)
      {
        return result;
      }
    }

    if (v88 != a7)
    {
      v113 = -60;
      do
      {
        v114 = *(v88 - 60);
        v115 = *(v88 - 44);
        v116 = *(v88 - 28);
        v117 = &a3[v113];
        *(v117 + 41) = *(v88 - 19);
        *(v117 + 1) = v115;
        *(v117 + 2) = v116;
        *v117 = v114;
        v113 -= 60;
        v88 = (v88 - 60);
      }

      while (v88 != a7);
    }
  }

  return result;
}

uint64_t sub_C1D824(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK3msl7routing16journey_planning38JourneyLegAlternativesDominationFilter27get_departure_time_functionEvE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK3msl7routing16journey_planning38JourneyLegAlternativesDominationFilter27get_departure_time_functionEvE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK3msl7routing16journey_planning38JourneyLegAlternativesDominationFilter27get_departure_time_functionEvE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK3msl7routing16journey_planning38JourneyLegAlternativesDominationFilter27get_departure_time_functionEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_C1D940(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK3msl7routing16journey_planning38JourneyLegAlternativesDominationFilter27get_departure_time_functionEvE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK3msl7routing16journey_planning38JourneyLegAlternativesDominationFilter27get_departure_time_functionEvE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK3msl7routing16journey_planning38JourneyLegAlternativesDominationFilter27get_departure_time_functionEvE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK3msl7routing16journey_planning38JourneyLegAlternativesDominationFilter27get_departure_time_functionEvE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_C1DA48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK3msl7routing16journey_planning38JourneyLegAlternativesDominationFilter25get_arrival_time_functionEvE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK3msl7routing16journey_planning38JourneyLegAlternativesDominationFilter25get_arrival_time_functionEvE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK3msl7routing16journey_planning38JourneyLegAlternativesDominationFilter25get_arrival_time_functionEvE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK3msl7routing16journey_planning38JourneyLegAlternativesDominationFilter25get_arrival_time_functionEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_C1DB64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK3msl7routing16journey_planning38JourneyLegAlternativesDominationFilter25get_arrival_time_functionEvE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK3msl7routing16journey_planning38JourneyLegAlternativesDominationFilter25get_arrival_time_functionEvE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK3msl7routing16journey_planning38JourneyLegAlternativesDominationFilter25get_arrival_time_functionEvE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK3msl7routing16journey_planning38JourneyLegAlternativesDominationFilter25get_arrival_time_functionEvE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_C1DBDC(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = 17;
  strcpy(__p, "alternatives_type");
  v5 = sub_5F8FC(a3, __p);
  v6 = sub_BC89AC(v5);
  if (v10 < 0)
  {
    v7 = v6;
    operator delete(*__p);
    v6 = v7;
  }

  *a1 = v6;
  *(a1 + 8) = a2;
  return a1;
}

void sub_C1DC68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_C1DC84(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  for (i = *(a2 + 56); v2 != i; v2 += 248)
  {
    sub_C1DCD0(result, v2);
  }
}

void sub_C1DCD0(uint64_t a1, uint64_t a2)
{
  *v20 = 0u;
  *__p = 0u;
  v22 = 1065353216;
  v2 = 96;
  if (!*a1)
  {
    v2 = 72;
  }

  v3 = (a2 + v2);
  v5 = *(a2 + v2);
  v4 = *(a2 + v2 + 8);
  if (v5 != v4)
  {
    do
    {
      if (*(v5 + 40) != -1)
      {
        v7 = sub_A56F04((*(a1 + 8) + 4136), *(v5 + 28), *(v5 + 48), *(v5 + 36));
        v8 = *(v5 + 40);
        *&v19 = v7;
        *(&v19 + 1) = __PAIR64__(v8, v9);
        if (!sub_C1DEA4(v20, &v19))
        {
          sub_C1E044(v20, &v19);
        }

        *(v5 + 48) = -1;
      }

      v5 += 60;
    }

    while (v5 != v4);
    v5 = *v3;
    v4 = v3[1];
  }

  if (v5 != v4)
  {
    v10 = (v5 + 60);
    while (*(v10 - 3) != -1)
    {
      v11 = v10 == v4;
      v10 = (v10 + 60);
      if (v11)
      {
        goto LABEL_26;
      }
    }

    v12 = (v10 - 60);
    if ((v10 - 60) != v4 && v10 != v4)
    {
      do
      {
        if (*(v10 + 12) != -1)
        {
          v13 = *v10;
          v14 = v10[1];
          v15 = v10[2];
          *(v12 + 41) = *(v10 + 41);
          v12[1] = v14;
          v12[2] = v15;
          *v12 = v13;
          v12 = (v12 + 60);
        }

        v10 = (v10 + 60);
      }

      while (v10 != v4);
      v4 = v3[1];
    }

    if (v12 != v4)
    {
      v3[1] = v12;
    }
  }

LABEL_26:
  v16 = __p[0];
  if (__p[0])
  {
    do
    {
      v17 = *v16;
      operator delete(v16);
      v16 = v17;
    }

    while (v17);
  }

  v18 = v20[0];
  v20[0] = 0;
  if (v18)
  {
    operator delete(v18);
  }
}

void sub_C1DE7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_11BD8(va);
  _Unwind_Resume(a1);
}

void sub_C1DE90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_11BD8(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_C1DEA4(void *a1, unint64_t *a2)
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
  v7 = *(a2 + 3);
  v8 = (((v6 + (v5 << 6) + (v5 >> 2) + 2654435769u) ^ v5) + 0x388152A534) ^ 0xDEADBEEF;
  v9 = (v7 + (v8 << 6) + (v8 >> 2) + 2654435769u) ^ v8;
  v10 = vcnt_s8(v2);
  v10.i16[0] = vaddlv_u8(v10);
  if (v10.u32[0] > 1uLL)
  {
    v11 = v9;
    if (v9 >= *&v2)
    {
      v11 = v9 % *&v2;
    }
  }

  else
  {
    v11 = v9 & (*&v2 - 1);
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12)
  {
    return 0;
  }

  result = *v12;
  if (*v12)
  {
    if (v10.u32[0] < 2uLL)
    {
      v14 = *&v2 - 1;
      while (1)
      {
        v15 = result[1];
        if (v9 == v15)
        {
          v16 = *(result + 5) == HIDWORD(v3) && *(result + 4) == v3;
          if (v16 && result[3] == __PAIR64__(v7, v6))
          {
            return result;
          }
        }

        else if ((v15 & v14) != v11)
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
      v17 = result[1];
      if (v9 == v17)
      {
        v18 = *(result + 5) == HIDWORD(v3) && *(result + 4) == v3;
        if (v18 && result[3] == __PAIR64__(v7, v6))
        {
          return result;
        }
      }

      else
      {
        if (v17 >= *&v2)
        {
          v17 %= *&v2;
        }

        if (v17 != v11)
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

uint64_t *sub_C1E15C(uint64_t *a1, uint64_t a2)
{
  v4 = (a2 + 16);
  v5 = 0xFF51AFD7ED558CCDLL * (*(a2 + 16) ^ (*(a2 + 16) >> 33));
  v6 = (((0xC4CEB9FE1A85EC53 * (v5 ^ (v5 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v5 ^ (v5 >> 33))) >> 33)) + 0x388152A534) ^ 0xDEADBEEF;
  v7 = (((*(a2 + 24) + (v6 << 6) + (v6 >> 2) + 2654435769u) ^ v6) + 0x388152A534) ^ 0xDEADBEEF;
  v8 = (*(a2 + 28) + (v7 << 6) + (v7 >> 2) + 2654435769u) ^ v7;
  *(v4 - 1) = v8;
  result = sub_C1E2E0(a1, v8, v4);
  if (!result)
  {
    v10 = a1[1];
    v11 = *(a2 + 8);
    v12 = vcnt_s8(v10);
    v12.i16[0] = vaddlv_u8(v12);
    if (v12.u32[0] > 1uLL)
    {
      if (v11 >= *&v10)
      {
        v11 %= *&v10;
      }
    }

    else
    {
      v11 &= *&v10 - 1;
    }

    v13 = *a1;
    v14 = *(*a1 + 8 * v11);
    if (v14)
    {
      *a2 = *v14;
    }

    else
    {
      *a2 = a1[2];
      a1[2] = a2;
      *(v13 + 8 * v11) = a1 + 2;
      if (!*a2)
      {
        goto LABEL_9;
      }

      v15 = *(*a2 + 8);
      if (v12.u32[0] > 1uLL)
      {
        if (v15 >= *&v10)
        {
          v15 %= *&v10;
        }

        v14 = (v13 + 8 * v15);
      }

      else
      {
        v14 = (v13 + 8 * (v15 & (*&v10 - 1)));
      }
    }

    *v14 = a2;
LABEL_9:
    ++a1[3];
    return a2;
  }

  return result;
}

uint64_t *sub_C1E2E0(uint64_t a1, unint64_t a2, int *a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    goto LABEL_36;
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
      goto LABEL_36;
    }
  }

  else
  {
    v5 = (v3 - 1) & a2;
    v6 = *(*a1 + 8 * v5);
    if (!v6)
    {
      goto LABEL_36;
    }
  }

  v7 = *v6;
  if (v7)
  {
    v9 = *a3;
    v8 = a3[1];
    v10 = a3[2];
    v11 = a3[3];
    if (v4.u32[0] < 2uLL)
    {
      while (1)
      {
        v12 = v7[1];
        if (v12 == a2)
        {
          v13 = *(v7 + 5) == v8 && *(v7 + 4) == v9;
          if (v13 && *(v7 + 6) == v10 && *(v7 + 7) == v11)
          {
            return v7;
          }
        }

        else if ((v12 & (v3 - 1)) != v5)
        {
          goto LABEL_36;
        }

        v7 = *v7;
        if (!v7)
        {
          goto LABEL_36;
        }
      }
    }

    do
    {
      v14 = v7[1];
      if (v14 == a2)
      {
        v15 = *(v7 + 5) == v8 && *(v7 + 4) == v9;
        if (v15 && *(v7 + 6) == v10 && *(v7 + 7) == v11)
        {
          return v7;
        }
      }

      else
      {
        if (v14 >= v3)
        {
          v14 %= v3;
        }

        if (v14 != v5)
        {
          break;
        }
      }

      v7 = *v7;
    }

    while (v7);
  }

LABEL_36:
  v16 = (*(a1 + 24) + 1);
  v17 = *(a1 + 32);
  if (v3 && (v17 * v3) >= v16)
  {
    return 0;
  }

  v18 = 1;
  if (v3 >= 3)
  {
    v18 = (v3 & (v3 - 1)) != 0;
  }

  v19 = v18 | (2 * v3);
  v20 = vcvtps_u32_f32(v16 / v17);
  if (v19 <= v20)
  {
    prime = v20;
  }

  else
  {
    prime = v19;
  }

  if (prime == 1)
  {
    prime = 2;
  }

  else if ((prime & (prime - 1)) != 0)
  {
    v22 = a1;
    prime = std::__next_prime(prime);
    a1 = v22;
    v3 = *(v22 + 8);
  }

  if (prime <= v3)
  {
    if (prime >= v3)
    {
      return 0;
    }

    v23 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (v3 < 3 || (v24 = vcnt_s8(v3), v24.i16[0] = vaddlv_u8(v24), v24.u32[0] > 1uLL))
    {
      v26 = a1;
      v27 = prime;
      v28 = std::__next_prime(v23);
      a1 = v26;
      if (v27 <= v28)
      {
        prime = v28;
      }

      else
      {
        prime = v27;
      }

      if (prime >= v3)
      {
        return 0;
      }
    }

    else
    {
      v25 = 1 << -__clz(v23 - 1);
      if (v23 >= 2)
      {
        v23 = v25;
      }

      if (prime <= v23)
      {
        prime = v23;
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

uint64_t sub_C1E54C(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = 17;
  strcpy(__p, "alternatives_type");
  v5 = sub_5F8FC(a3, __p);
  v6 = sub_BC89AC(v5);
  if (v10 < 0)
  {
    v7 = v6;
    operator delete(*__p);
    v6 = v7;
  }

  *a1 = v6;
  *(a1 + 8) = a2;
  return a1;
}

void sub_C1E5D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_C1E5F4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  for (i = *(a2 + 56); v2 != i; v2 += 248)
  {
    sub_C1E640(result, v2);
  }
}

void sub_C1E640(uint64_t a1, uint64_t a2)
{
  v2 = 96;
  if (!*a1)
  {
    v2 = 72;
  }

  v3 = (a2 + v2);
  v33 = 0;
  v4 = 0uLL;
  *__p = 0u;
  v5 = *(a2 + v2);
  v6 = *(a2 + v2 + 8);
  if (v5 != v6)
  {
    do
    {
      if (*(v5 + 40) == -1)
      {
        v8 = sub_A56F04((*(a1 + 8) + 4136), *(v5 + 28), *(v5 + 48), *(v5 + 36));
        v10 = v9;
        v11 = *(v5 + 48);
        v12 = sub_A57920((*(a1 + 8) + 4136), *(v5 + 28));
        v13 = (v12 - *v12);
        if (*v13 >= 9u && (v14 = v13[4]) != 0)
        {
          v15 = (v12 + v14 + *(v12 + v14));
        }

        else
        {
          v15 = 0;
        }

        v16 = *(sub_A571D4(v15, v11) + 6);
        v17 = *(v5 + 52) - *(v5 + 48);
        *&v34 = v5;
        *(&v34 + 1) = v8;
        v35 = v10;
        v36 = v16;
        v37 = v17;
        sub_C1E8E8(__p, &v34);
      }

      v5 += 60;
    }

    while (v5 != v6);
    v4 = *__p;
  }

  v18 = 126 - 2 * __clz((*(&v4 + 1) - v4) >> 5);
  if (*(&v4 + 1) == v4)
  {
    v19 = 0;
  }

  else
  {
    v19 = v18;
  }

  sub_C1EA08(v4, *(&v4 + 1), &v34, v19, 1);
  v20 = __p[0];
  v21 = __p[1];
  if (__p[0] != __p[1])
  {
    v22 = __p[0] + 32;
    if (__p[0] + 32 != __p[1])
    {
      do
      {
        v23 = *(v22 - 5) == v22[3] && *(v22 - 6) == v22[2];
        if (v23 && *(v22 - 4) == v22[4] && *(v22 - 3) == v22[5])
        {
          *(*v22 + 28) = 0xFFFFFFFFLL;
        }

        v22 += 8;
      }

      while (v22 != v21);
    }
  }

  v25 = *v3;
  v24 = v3[1];
  if (*v3 != v24)
  {
    v26 = v25 + 60;
    while (*(v26 - 8) != -1 && *(v26 - 7) != 0)
    {
      v23 = v26 == v24;
      v26 += 60;
      if (v23)
      {
        goto LABEL_49;
      }
    }

    v25 = v26 - 60;
    if (v26 - 60 != v24 && v26 != v24)
    {
      do
      {
        if (*(v26 + 7) != -1 && *(v26 + 8) != 0)
        {
          v29 = *v26;
          v30 = *(v26 + 1);
          v31 = *(v26 + 2);
          *(v25 + 41) = *(v26 + 41);
          *(v25 + 1) = v30;
          *(v25 + 2) = v31;
          *v25 = v29;
          v25 += 60;
        }

        v26 += 60;
      }

      while (v26 != v24);
      v24 = v3[1];
    }
  }

  if (v25 != v24)
  {
    v3[1] = v25;
  }

LABEL_49:
  if (v20)
  {
    __p[1] = v20;
    operator delete(v20);
  }
}

void sub_C1E8C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_C1E8E8(uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = a2[1];
    *v3 = *a2;
    v3[1] = v5;
    v6 = (v3 + 2);
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = *a1;
  v8 = v3 - *a1;
  v9 = v8 >> 5;
  v10 = (v8 >> 5) + 1;
  if (v10 >> 59)
  {
    sub_1794();
  }

  v11 = v4 - v7;
  if (v11 >> 4 > v10)
  {
    v10 = v11 >> 4;
  }

  if (v11 >= 0x7FFFFFFFFFFFFFE0)
  {
    v12 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (!(v12 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v13 = (32 * v9);
  v14 = a2[1];
  *v13 = *a2;
  v13[1] = v14;
  v6 = 32 * v9 + 32;
  memcpy(0, v7, v8);
  *a1 = 0;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  operator delete(v7);
  *(a1 + 8) = v6;
}

void sub_C1EA08(uint64_t *result, char *a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v9 = a2 - 32;
  v10 = result;
LABEL_2:
  v11 = 1 - a4;
  while (1)
  {
    result = v10;
    v12 = v11;
    v13 = (a2 - v10) >> 5;
    if (v13 <= 2)
    {
      break;
    }

    switch(v13)
    {
      case 3uLL:

        sub_C1EEEC(v10, v10 + 2, a2 - 2);
        return;
      case 4uLL:

        sub_C1F2FC(v10, (v10 + 4), (v10 + 8), (a2 - 32));
        return;
      case 5uLL:

        sub_C1F598(v10, v10 + 2, v10 + 4, v10 + 6, a2 - 2);
        return;
    }

LABEL_10:
    if (v13 <= 23)
    {
      if (a5)
      {

        sub_C1F908(v10, a2);
      }

      else
      {

        sub_C1FAD8(v10, a2);
      }

      return;
    }

    if (v12 == 1)
    {
      if (v10 != a2)
      {

        sub_C2073C(v10, a2, a2, a3);
      }

      return;
    }

    v14 = v13 >> 1;
    v15 = &v10[4 * (v13 >> 1)];
    if (v13 < 0x81)
    {
      sub_C1EEEC(&v10[4 * (v13 >> 1)], v10, a2 - 2);
      if (a5)
      {
        goto LABEL_29;
      }
    }

    else
    {
      sub_C1EEEC(v10, &v10[4 * (v13 >> 1)], a2 - 2);
      v16 = v10 + 4;
      v17 = 4 * v14;
      v18 = &result[4 * v14 - 4];
      sub_C1EEEC(result + 2, v18, a2 - 4);
      sub_C1EEEC(result + 4, &v16[v17], a2 - 6);
      sub_C1EEEC(v18, v15, &v16[v17]);
      *v49 = *result;
      *&v49[16] = *(result + 1);
      v19 = *v15;
      *(result + 12) = *(v15 + 12);
      *result = v19;
      *(v15 + 12) = *&v49[12];
      *v15 = *v49;
      if (a5)
      {
        goto LABEL_29;
      }
    }

    v20 = result[1];
    v21 = HIDWORD(v20);
    v23 = *(result - 6);
    v22 = *(result - 5);
    if (__PAIR64__(v22, v23) == v20 && *(result - 4) == *(result + 4))
    {
      v24 = *(result - 3);
      v25 = *(result + 5);
      v26 = v24 >= v25;
      if (v24 == v25)
      {
        if (*(result - 2) <= *(result + 6))
        {
          goto LABEL_33;
        }

        goto LABEL_29;
      }
    }

    else
    {
      v27 = v23 < v20;
      v39 = v22 == HIDWORD(v20);
      v28 = v22 < HIDWORD(v20);
      if (v39)
      {
        v28 = v27;
      }

      if (v28)
      {
        goto LABEL_29;
      }

      v29 = *(result - 3);
      v30 = v20 < v29;
      v39 = v21 == HIDWORD(v29);
      v31 = v21 < HIDWORD(v29);
      if (v39)
      {
        v31 = v30;
      }

      if (v31)
      {
LABEL_33:
        v10 = sub_C1FC50(result, a2);
        goto LABEL_34;
      }

      v26 = *(result - 4) >= *(result + 4);
    }

    if (v26)
    {
      goto LABEL_33;
    }

LABEL_29:
    v32 = sub_C20018(result, a2);
    if ((v33 & 1) == 0)
    {
      goto LABEL_32;
    }

    v34 = sub_C20370(result, v32);
    v10 = v32 + 4;
    if (sub_C20370((v32 + 4), a2))
    {
      a4 = -v12;
      a2 = v32;
      if (v34)
      {
        return;
      }

      goto LABEL_1;
    }

    v11 = v12 + 1;
    if (!v34)
    {
LABEL_32:
      sub_C1EA08(result, v32, a3, -v12, a5 & 1);
      v10 = v32 + 4;
LABEL_34:
      a5 = 0;
      a4 = -v12;
      goto LABEL_2;
    }
  }

  if (v13 < 2)
  {
    return;
  }

  if (v13 != 2)
  {
    goto LABEL_10;
  }

  v35 = v10[1];
  v36 = HIDWORD(v35);
  v38 = *(a2 - 6);
  v37 = *(a2 - 5);
  v39 = v37 == HIDWORD(v35) && v38 == v35;
  if (v39 && *(a2 - 4) == *(v10 + 4))
  {
    v40 = *(a2 - 3);
    v41 = *(v10 + 5);
    v42 = v40 >= v41;
    if (v40 == v41)
    {
      if (*(a2 - 2) <= *(v10 + 6))
      {
        return;
      }

LABEL_71:
      *v50 = *v10;
      *&v50[16] = *(v10 + 1);
      v48 = *v9;
      *(v10 + 12) = *(a2 - 20);
      *v10 = v48;
      *v9 = *v50;
      *(a2 - 20) = *&v50[12];
      return;
    }

LABEL_70:
    if (!v42)
    {
      goto LABEL_71;
    }

    return;
  }

  v43 = v38 < v35;
  v39 = v37 == HIDWORD(v35);
  v44 = v37 < HIDWORD(v35);
  if (v39)
  {
    v44 = v43;
  }

  if (v44)
  {
    goto LABEL_71;
  }

  v45 = *(a2 - 3);
  v46 = v35 < v45;
  v39 = v36 == HIDWORD(v45);
  v47 = v36 < HIDWORD(v45);
  if (v39)
  {
    v47 = v46;
  }

  if (!v47)
  {
    v42 = *(a2 - 4) >= *(v10 + 4);
    goto LABEL_70;
  }
}

uint64_t sub_C1EEEC(__int128 *a1, __int128 *a2, __int128 *a3)
{
  v3 = *(a1 + 1);
  v4 = HIDWORD(v3);
  v6 = *(a2 + 2);
  v5 = *(a2 + 3);
  v7 = v5 == HIDWORD(v3) && v6 == v3;
  if (!v7 || *(a2 + 4) != *(a1 + 4))
  {
    v10 = v6 < v3;
    v7 = v5 == HIDWORD(v3);
    v11 = v5 < HIDWORD(v3);
    if (v7)
    {
      v11 = v10;
    }

    if (v11)
    {
      goto LABEL_13;
    }

    v24 = *(a2 + 1);
    v25 = v3 < v24;
    v7 = v4 == HIDWORD(v24);
    v26 = v4 < HIDWORD(v24);
    if (v7)
    {
      v26 = v25;
    }

    if (!v26 && *(a2 + 4) < *(a1 + 4))
    {
      goto LABEL_13;
    }

LABEL_37:
    v30 = *(a2 + 1);
    v31 = HIDWORD(v30);
    v33 = *(a3 + 2);
    v32 = *(a3 + 3);
    if (__PAIR64__(v32, v33) == v30 && *(a3 + 4) == *(a2 + 4))
    {
      v34 = *(a3 + 5);
      v35 = *(a2 + 5);
      if (v34 == v35)
      {
        if (*(a3 + 6) <= *(a2 + 6))
        {
          return 0;
        }

        goto LABEL_45;
      }

      if (v34 >= v35)
      {
        return 0;
      }
    }

    else
    {
      v36 = v33 < v30;
      v7 = v32 == HIDWORD(v30);
      v37 = v32 < HIDWORD(v30);
      if (v7)
      {
        v37 = v36;
      }

      if (!v37)
      {
        v50 = *(a3 + 1);
        v51 = v30 < v50;
        v7 = v31 == HIDWORD(v50);
        v52 = v31 < HIDWORD(v50);
        if (v7)
        {
          v52 = v51;
        }

        if (v52)
        {
          return 0;
        }

        if (*(a3 + 4) >= *(a2 + 4))
        {
          return 0;
        }
      }
    }

LABEL_45:
    *v72 = *a2;
    v38 = *a2;
    *&v72[16] = a2[1];
    v39 = *(a3 + 12);
    *a2 = *a3;
    *(a2 + 12) = v39;
    *a3 = v38;
    *(a3 + 12) = *&v72[12];
    v40 = *(a1 + 1);
    v41 = HIDWORD(v40);
    v43 = *(a2 + 2);
    v42 = *(a2 + 3);
    if (__PAIR64__(v42, v43) == v40 && *(a2 + 4) == *(a1 + 4))
    {
      v44 = *(a2 + 5);
      v45 = *(a1 + 5);
      if (v44 == v45)
      {
        if (*(a2 + 6) <= *(a1 + 6))
        {
          return 1;
        }
      }

      else if (v44 >= v45)
      {
        return 1;
      }
    }

    else
    {
      v46 = v43 < v40;
      v7 = v42 == HIDWORD(v40);
      v47 = v42 < HIDWORD(v40);
      if (v7)
      {
        v47 = v46;
      }

      if (!v47)
      {
        v53 = *(a2 + 1);
        v54 = v40 < v53;
        v7 = v41 == HIDWORD(v53);
        v55 = v41 < HIDWORD(v53);
        if (v7)
        {
          v55 = v54;
        }

        if (v55 || *(a2 + 4) >= *(a1 + 4))
        {
          return 1;
        }
      }
    }

    *v73 = *a1;
    v48 = *a1;
    *&v73[16] = a1[1];
    v49 = *(a2 + 12);
    *a1 = *a2;
    *(a1 + 12) = v49;
    *a2 = v48;
    *(a2 + 12) = *&v73[12];
    return 1;
  }

  v8 = *(a2 + 5);
  v9 = *(a1 + 5);
  if (v8 != v9)
  {
    if (v8 < v9)
    {
      goto LABEL_13;
    }

    goto LABEL_37;
  }

  if (*(a2 + 6) <= *(a1 + 6))
  {
    goto LABEL_37;
  }

LABEL_13:
  v12 = *(a2 + 1);
  v13 = HIDWORD(v12);
  v15 = *(a3 + 2);
  v14 = *(a3 + 3);
  v16 = v14 == HIDWORD(v12) && v15 == v12;
  if (!v16 || *(a3 + 4) != *(a2 + 4))
  {
    v19 = v15 < v12;
    v7 = v14 == HIDWORD(v12);
    v20 = v14 < HIDWORD(v12);
    if (v7)
    {
      v20 = v19;
    }

    if (!v20)
    {
      v27 = *(a3 + 1);
      v28 = v12 < v27;
      v7 = v13 == HIDWORD(v27);
      v29 = v13 < HIDWORD(v27);
      if (v7)
      {
        v29 = v28;
      }

      if (v29 || *(a3 + 4) >= *(a2 + 4))
      {
        goto LABEL_67;
      }
    }

    goto LABEL_25;
  }

  v17 = *(a3 + 5);
  v18 = *(a2 + 5);
  if (v17 != v18)
  {
    if (v17 >= v18)
    {
      goto LABEL_67;
    }

LABEL_25:
    *v71 = *a1;
    v21 = *a1;
    *&v71[16] = a1[1];
    v22 = *(a3 + 12);
    *a1 = *a3;
    *(a1 + 12) = v22;
    *a3 = v21;
    *(a3 + 12) = *&v71[12];
    return 1;
  }

  if (*(a3 + 6) > *(a2 + 6))
  {
    goto LABEL_25;
  }

LABEL_67:
  *v74 = *a1;
  v56 = *a1;
  *&v74[16] = a1[1];
  v57 = *(a2 + 12);
  *a1 = *a2;
  *(a1 + 12) = v57;
  *a2 = v56;
  *(a2 + 12) = *&v74[12];
  v58 = *(a2 + 1);
  v59 = HIDWORD(v58);
  v61 = *(a3 + 2);
  v60 = *(a3 + 3);
  if (__PAIR64__(v60, v61) == v58 && *(a3 + 4) == *(a2 + 4))
  {
    v62 = *(a3 + 5);
    v63 = *(a2 + 5);
    if (v62 == v63)
    {
      if (*(a3 + 6) <= *(a2 + 6))
      {
        return 1;
      }
    }

    else if (v62 >= v63)
    {
      return 1;
    }
  }

  else
  {
    v64 = v61 < v58;
    v7 = v60 == HIDWORD(v58);
    v65 = v60 < HIDWORD(v58);
    if (v7)
    {
      v65 = v64;
    }

    if (!v65)
    {
      v68 = *(a3 + 1);
      v69 = v58 < v68;
      v7 = v59 == HIDWORD(v68);
      v70 = v59 < HIDWORD(v68);
      if (v7)
      {
        v70 = v69;
      }

      if (v70 || *(a3 + 4) >= *(a2 + 4))
      {
        return 1;
      }
    }
  }

  *v75 = *a2;
  v66 = *a2;
  *&v75[16] = a2[1];
  v67 = *(a3 + 12);
  *a2 = *a3;
  *(a2 + 12) = v67;
  *a3 = v66;
  *(a3 + 12) = *&v75[12];
  return 1;
}

__n128 sub_C1F2FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_C1EEEC(a1, a2, a3);
  v9 = *(a3 + 8);
  v10 = HIDWORD(v9);
  v12 = *(a4 + 8);
  v11 = *(a4 + 12);
  v13 = v11 == HIDWORD(v9) && v12 == v9;
  if (v13 && *(a4 + 16) == *(a3 + 16))
  {
    v14 = *(a4 + 20);
    v15 = *(a3 + 20);
    if (v14 == v15)
    {
      if (*(a4 + 24) <= *(a3 + 24))
      {
        return result;
      }
    }

    else if (v14 >= v15)
    {
      return result;
    }
  }

  else
  {
    v16 = v12 < v9;
    v13 = v11 == HIDWORD(v9);
    v17 = v11 < HIDWORD(v9);
    if (v13)
    {
      v17 = v16;
    }

    if (!v17)
    {
      v36 = *(a4 + 8);
      v37 = v9 < v36;
      v13 = v10 == HIDWORD(v36);
      v38 = v10 < HIDWORD(v36);
      if (v13)
      {
        v38 = v37;
      }

      if (v38 || *(a4 + 16) >= *(a3 + 16))
      {
        return result;
      }
    }
  }

  *v49 = *a3;
  v18 = *a3;
  *&v49[16] = *(a3 + 16);
  v19 = *(a4 + 12);
  *a3 = *a4;
  *(a3 + 12) = v19;
  *a4 = v18;
  result = *&v49[12];
  *(a4 + 12) = *&v49[12];
  v20 = *(a2 + 8);
  v21 = HIDWORD(v20);
  v23 = *(a3 + 8);
  v22 = *(a3 + 12);
  if (__PAIR64__(v22, v23) == v20 && *(a3 + 16) == *(a2 + 16))
  {
    v24 = *(a3 + 20);
    v25 = *(a2 + 20);
    if (v24 == v25)
    {
      if (*(a3 + 24) <= *(a2 + 24))
      {
        return result;
      }
    }

    else if (v24 >= v25)
    {
      return result;
    }
  }

  else
  {
    v26 = v23 < v20;
    v13 = v22 == HIDWORD(v20);
    v27 = v22 < HIDWORD(v20);
    if (v13)
    {
      v27 = v26;
    }

    if (!v27)
    {
      v43 = *(a3 + 8);
      v44 = v20 < v43;
      v13 = v21 == HIDWORD(v43);
      v45 = v21 < HIDWORD(v43);
      if (v13)
      {
        v45 = v44;
      }

      if (v45 || *(a3 + 16) >= *(a2 + 16))
      {
        return result;
      }
    }
  }

  *v50 = *a2;
  v28 = *a2;
  *&v50[16] = *(a2 + 16);
  v29 = *(a3 + 12);
  *a2 = *a3;
  *(a2 + 12) = v29;
  *a3 = v28;
  result = *&v50[12];
  *(a3 + 12) = *&v50[12];
  v30 = *(a1 + 8);
  v31 = HIDWORD(v30);
  v33 = *(a2 + 8);
  v32 = *(a2 + 12);
  if (__PAIR64__(v32, v33) == v30 && *(a2 + 16) == *(a1 + 16))
  {
    v34 = *(a2 + 20);
    v35 = *(a1 + 20);
    if (v34 == v35)
    {
      if (*(a2 + 24) > *(a1 + 24))
      {
LABEL_34:
        *v51 = *a1;
        v41 = *a1;
        *&v51[16] = *(a1 + 16);
        v42 = *(a2 + 12);
        *a1 = *a2;
        *(a1 + 12) = v42;
        *a2 = v41;
        result = *&v51[12];
        *(a2 + 12) = *&v51[12];
      }
    }

    else if (v34 < v35)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v39 = v33 < v30;
    v13 = v32 == HIDWORD(v30);
    v40 = v32 < HIDWORD(v30);
    if (v13)
    {
      v40 = v39;
    }

    if (v40)
    {
      goto LABEL_34;
    }

    v46 = *(a2 + 8);
    v47 = v30 < v46;
    v13 = v31 == HIDWORD(v46);
    v48 = v31 < HIDWORD(v46);
    if (v13)
    {
      v48 = v47;
    }

    if (!v48 && *(a2 + 16) < *(a1 + 16))
    {
      goto LABEL_34;
    }
  }

  return result;
}

__n128 sub_C1F598(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5)
{
  result.n128_u64[0] = sub_C1F2FC(a1, a2, a3, a4).n128_u64[0];
  v11 = *(a4 + 1);
  v12 = HIDWORD(v11);
  v14 = *(a5 + 2);
  v13 = *(a5 + 3);
  v15 = v13 == HIDWORD(v11) && v14 == v11;
  if (v15 && *(a5 + 4) == *(a4 + 4))
  {
    v16 = *(a5 + 5);
    v17 = *(a4 + 5);
    if (v16 == v17)
    {
      if (*(a5 + 6) <= *(a4 + 6))
      {
        return result;
      }
    }

    else if (v16 >= v17)
    {
      return result;
    }
  }

  else
  {
    v18 = v14 < v11;
    v15 = v13 == HIDWORD(v11);
    v19 = v13 < HIDWORD(v11);
    if (v15)
    {
      v19 = v18;
    }

    if (!v19)
    {
      v38 = *(a5 + 1);
      v39 = v11 < v38;
      v15 = v12 == HIDWORD(v38);
      v40 = v12 < HIDWORD(v38);
      if (v15)
      {
        v40 = v39;
      }

      if (v40 || *(a5 + 4) >= *(a4 + 4))
      {
        return result;
      }
    }
  }

  *v64 = *a4;
  v20 = *a4;
  *&v64[16] = a4[1];
  v21 = *(a5 + 12);
  *a4 = *a5;
  *(a4 + 12) = v21;
  *a5 = v20;
  result = *&v64[12];
  *(a5 + 12) = *&v64[12];
  v22 = *(a3 + 1);
  v23 = HIDWORD(v22);
  v25 = *(a4 + 2);
  v24 = *(a4 + 3);
  if (__PAIR64__(v24, v25) == v22 && *(a4 + 4) == *(a3 + 4))
  {
    v26 = *(a4 + 5);
    v27 = *(a3 + 5);
    if (v26 == v27)
    {
      if (*(a4 + 6) <= *(a3 + 6))
      {
        return result;
      }
    }

    else if (v26 >= v27)
    {
      return result;
    }
  }

  else
  {
    v28 = v25 < v22;
    v15 = v24 == HIDWORD(v22);
    v29 = v24 < HIDWORD(v22);
    if (v15)
    {
      v29 = v28;
    }

    if (!v29)
    {
      v51 = *(a4 + 1);
      v52 = v22 < v51;
      v15 = v23 == HIDWORD(v51);
      v53 = v23 < HIDWORD(v51);
      if (v15)
      {
        v53 = v52;
      }

      if (v53 || *(a4 + 4) >= *(a3 + 4))
      {
        return result;
      }
    }
  }

  *v65 = *a3;
  v30 = *a3;
  *&v65[16] = a3[1];
  v31 = *(a4 + 12);
  *a3 = *a4;
  *(a3 + 12) = v31;
  *a4 = v30;
  result = *&v65[12];
  *(a4 + 12) = *&v65[12];
  v32 = *(a2 + 1);
  v33 = HIDWORD(v32);
  v35 = *(a3 + 2);
  v34 = *(a3 + 3);
  if (__PAIR64__(v34, v35) == v32 && *(a3 + 4) == *(a2 + 4))
  {
    v36 = *(a3 + 5);
    v37 = *(a2 + 5);
    if (v36 == v37)
    {
      if (*(a3 + 6) <= *(a2 + 6))
      {
        return result;
      }
    }

    else if (v36 >= v37)
    {
      return result;
    }
  }

  else
  {
    v41 = v35 < v32;
    v15 = v34 == HIDWORD(v32);
    v42 = v34 < HIDWORD(v32);
    if (v15)
    {
      v42 = v41;
    }

    if (!v42)
    {
      v58 = *(a3 + 1);
      v59 = v32 < v58;
      v15 = v33 == HIDWORD(v58);
      v60 = v33 < HIDWORD(v58);
      if (v15)
      {
        v60 = v59;
      }

      if (v60 || *(a3 + 4) >= *(a2 + 4))
      {
        return result;
      }
    }
  }

  *v66 = *a2;
  v43 = *a2;
  *&v66[16] = a2[1];
  v44 = *(a3 + 12);
  *a2 = *a3;
  *(a2 + 12) = v44;
  *a3 = v43;
  result = *&v66[12];
  *(a3 + 12) = *&v66[12];
  v45 = *(a1 + 1);
  v46 = HIDWORD(v45);
  v48 = *(a2 + 2);
  v47 = *(a2 + 3);
  if (__PAIR64__(v47, v48) == v45 && *(a2 + 4) == *(a1 + 4))
  {
    v49 = *(a2 + 5);
    v50 = *(a1 + 5);
    if (v49 == v50)
    {
      if (*(a2 + 6) > *(a1 + 6))
      {
LABEL_47:
        *v67 = *a1;
        v56 = *a1;
        *&v67[16] = a1[1];
        v57 = *(a2 + 12);
        *a1 = *a2;
        *(a1 + 12) = v57;
        *a2 = v56;
        result = *&v67[12];
        *(a2 + 12) = *&v67[12];
      }
    }

    else if (v49 < v50)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v54 = v48 < v45;
    v15 = v47 == HIDWORD(v45);
    v55 = v47 < HIDWORD(v45);
    if (v15)
    {
      v55 = v54;
    }

    if (v55)
    {
      goto LABEL_47;
    }

    v61 = *(a2 + 1);
    v62 = v45 < v61;
    v15 = v46 == HIDWORD(v61);
    v63 = v46 < HIDWORD(v61);
    if (v15)
    {
      v63 = v62;
    }

    if (!v63 && *(a2 + 4) < *(a1 + 4))
    {
      goto LABEL_47;
    }
  }

  return result;
}

char *sub_C1F908(char *result, char *a2)
{
  if (result != a2)
  {
    v2 = result + 32;
    if (result + 32 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v6 = v4;
        v4 = v2;
        v7 = *(v6 + 1);
        v8 = HIDWORD(v7);
        v10 = *(v6 + 10);
        v9 = *(v6 + 11);
        v11 = v9 == HIDWORD(v7) && v10 == v7;
        if (v11 && (v12 = *(v6 + 12), v12 == *(v6 + 4)))
        {
          v13 = *(v6 + 13);
          v14 = *(v6 + 5);
          v15 = v13 >= v14;
          if (v13 != v14)
          {
            goto LABEL_24;
          }

          if (*(v6 + 14) <= *(v6 + 6))
          {
            goto LABEL_6;
          }
        }

        else
        {
          v16 = v10 < v7;
          v11 = v9 == HIDWORD(v7);
          v17 = v9 < HIDWORD(v7);
          if (!v11)
          {
            v16 = v17;
          }

          if (!v16)
          {
            v18 = *(v6 + 5);
            v19 = v7 < v18;
            v11 = v8 == HIDWORD(v18);
            v20 = v8 < HIDWORD(v18);
            if (v11)
            {
              v20 = v19;
            }

            if (v20)
            {
              goto LABEL_6;
            }

            v12 = *(v6 + 12);
            v15 = v12 >= *(v6 + 4);
LABEL_24:
            if (v15)
            {
              goto LABEL_6;
            }

            goto LABEL_25;
          }

          v12 = *(v6 + 12);
        }

LABEL_25:
        v22 = *(v6 + 4);
        v21 = *(v6 + 5);
        v23 = *(v6 + 13);
        v24 = *(v6 + 14);
        *v4 = *v6;
        *(v4 + 12) = *(v6 + 12);
        v5 = result;
        if (v6 == result)
        {
          goto LABEL_5;
        }

        v25 = HIDWORD(v21);
        v26 = v3;
        while (1)
        {
          v27 = &result[v26];
          v28 = *&result[v26 - 24];
          v29 = HIDWORD(v28);
          v30 = v25 == HIDWORD(v28) && v21 == v28;
          if (v30 && v12 == *(v27 - 4))
          {
            break;
          }

          v32 = v21 < v28;
          if (v25 != v29)
          {
            v32 = v25 < v29;
          }

          if (!v32)
          {
            v33 = v28 < v21;
            v34 = v25 == v29 ? v33 : v29 < v25;
            if (v34 || v12 >= *(v27 - 4))
            {
LABEL_46:
              v5 = v6;
              goto LABEL_5;
            }
          }

LABEL_28:
          v6 -= 32;
          *v27 = *(v27 - 2);
          *(v27 + 12) = *(v27 - 20);
          v26 -= 32;
          if (!v26)
          {
            v5 = result;
            goto LABEL_5;
          }
        }

        v31 = *&result[v26 - 12];
        if (v23 != v31)
        {
          if (v23 >= v31)
          {
            goto LABEL_46;
          }

          goto LABEL_28;
        }

        if (v24 > *&result[v26 - 8])
        {
          goto LABEL_28;
        }

        v5 = &result[v26];
LABEL_5:
        *v5 = v22;
        *(v5 + 1) = v21;
        *(v5 + 4) = v12;
        *(v5 + 5) = v23;
        *(v5 + 6) = v24;
LABEL_6:
        v2 = v4 + 2;
        v3 += 32;
      }

      while (v4 + 2 != a2);
    }
  }

  return result;
}

void *sub_C1FAD8(void *result, void *a2)
{
  if (result != a2)
  {
    while (1)
    {
      while (1)
      {
LABEL_4:
        if (result + 4 == a2)
        {
          return result;
        }

        v2 = result;
        result += 4;
        v3 = v2[1];
        v4 = HIDWORD(v3);
        v6 = *(v2 + 10);
        v5 = *(v2 + 11);
        v7 = v5 == HIDWORD(v3) && v6 == v3;
        if (!v7)
        {
          break;
        }

        v8 = *(v2 + 12);
        if (v8 != *(v2 + 4))
        {
          break;
        }

        v9 = *(v2 + 13);
        v10 = *(v2 + 5);
        v11 = v9 >= v10;
        if (v9 == v10)
        {
          if (*(v2 + 14) > *(v2 + 6))
          {
            goto LABEL_23;
          }
        }

        else
        {
LABEL_22:
          if (!v11)
          {
            goto LABEL_23;
          }
        }
      }

      v12 = v6 < v3;
      v7 = v5 == HIDWORD(v3);
      v13 = v5 < HIDWORD(v3);
      if (!v7)
      {
        v12 = v13;
      }

      if (v12)
      {
        v8 = *(v2 + 12);
LABEL_23:
        v17 = *result;
        v18 = v2[5];
        v19 = HIDWORD(v18);
        v21 = *(v2 + 13);
        v20 = *(v2 + 14);
        for (i = result; ; i -= 2)
        {
          *i = *(i - 2);
          *(i + 12) = *(i - 20);
          v23 = *(i - 7);
          v24 = HIDWORD(v23);
          v25 = v19 == HIDWORD(v23) && v18 == v23;
          if (v25 && v8 == *(i - 12))
          {
            v26 = *(i - 11);
            if (v21 == v26)
            {
              if (v20 <= *(i - 10))
              {
                goto LABEL_3;
              }
            }

            else if (v21 >= v26)
            {
              goto LABEL_3;
            }
          }

          else
          {
            v27 = v18 < v23;
            if (v19 != v24)
            {
              v27 = v19 < v24;
            }

            if (!v27)
            {
              v28 = v23 < v18;
              v29 = v19 == v24 ? v28 : v24 < v19;
              if (v29 || v8 >= *(i - 12))
              {
LABEL_3:
                *(i - 4) = v17;
                *(i - 3) = v18;
                *(i - 4) = v8;
                *(i - 3) = v21;
                *(i - 2) = v20;
                goto LABEL_4;
              }
            }
          }
        }
      }

      v14 = v2[5];
      v15 = v3 < v14;
      v7 = v4 == HIDWORD(v14);
      v16 = v4 < HIDWORD(v14);
      if (v7)
      {
        v16 = v15;
      }

      if (!v16)
      {
        v8 = *(v2 + 12);
        v11 = v8 >= *(v2 + 4);
        goto LABEL_22;
      }
    }
  }

  return result;
}

uint64_t *sub_C1FC50(uint64_t *a1, unsigned int *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = HIDWORD(v2);
  v5 = *(a1 + 4);
  v6 = *(a1 + 5);
  v7 = *(a1 + 6);
  v8 = *(a2 - 3);
  v9 = HIDWORD(v8);
  v10 = HIDWORD(v2) == HIDWORD(v8) && v2 == v8;
  if (v10 && v5 == *(a2 - 4))
  {
    v11 = *(a2 - 3);
    v12 = v6 >= v11;
    if (v6 == v11)
    {
      if (v7 <= *(a2 - 2))
      {
        goto LABEL_102;
      }

LABEL_19:
      for (i = a1 + 4; ; i += 4)
      {
        v16 = i[1];
        v17 = HIDWORD(v16);
        v18 = v4 == HIDWORD(v16) && v2 == v16;
        if (v18 && v5 == *(i + 4))
        {
          v19 = *(i + 5);
          if (v6 == v19)
          {
            if (v7 > *(i + 6))
            {
              goto LABEL_39;
            }
          }

          else if (v6 < v19)
          {
            goto LABEL_39;
          }
        }

        else
        {
          v20 = v2 < v16;
          if (v4 != v17)
          {
            v20 = v4 < v17;
          }

          if (v20)
          {
            goto LABEL_39;
          }

          v21 = v16 < v2;
          v22 = v4 == v17 ? v21 : v17 < v4;
          if (!v22 && v5 < *(i + 4))
          {
            goto LABEL_39;
          }
        }
      }
    }
  }

  else
  {
    v13 = v2 < v8;
    if (v4 != v9)
    {
      v13 = v4 < v9;
    }

    if (v13)
    {
      goto LABEL_19;
    }

    if (v4 == v9)
    {
      v14 = v8 < v2;
    }

    else
    {
      v14 = v9 < v4;
    }

    if (v14)
    {
      goto LABEL_102;
    }

    v12 = v5 >= *(a2 - 4);
  }

  if (!v12)
  {
    goto LABEL_19;
  }

LABEL_102:
  for (i = a1 + 4; i < a2; i += 4)
  {
    v46 = i[1];
    v47 = HIDWORD(v46);
    v48 = v4 == HIDWORD(v46) && v2 == v46;
    if (v48 && v5 == *(i + 4))
    {
      v49 = *(i + 5);
      if (v6 == v49)
      {
        if (v7 > *(i + 6))
        {
          break;
        }
      }

      else if (v6 < v49)
      {
        break;
      }
    }

    else
    {
      v50 = v2 < v46;
      if (v4 != v47)
      {
        v50 = v4 < v47;
      }

      if (v50)
      {
        break;
      }

      v51 = v46 < v2;
      v52 = v4 == v47 ? v51 : v47 < v4;
      if (!v52 && v5 < *(i + 4))
      {
        break;
      }
    }
  }

LABEL_39:
  if (i >= a2)
  {
    goto LABEL_98;
  }

  for (j = a2 - 4; ; j -= 8)
  {
    v24 = HIDWORD(v8);
    v25 = v4 == HIDWORD(v8) && v2 == v8;
    if (!v25 || v5 != *j)
    {
      break;
    }

    v26 = j[1];
    if (v6 == v26)
    {
      if (v7 <= j[2])
      {
        goto LABEL_59;
      }
    }

    else if (v6 >= v26)
    {
      goto LABEL_59;
    }

LABEL_42:
    v8 = *(j - 5);
  }

  v27 = v2 < v8;
  if (v4 != v24)
  {
    v27 = v4 < v24;
  }

  if (v27)
  {
    goto LABEL_42;
  }

  v28 = v8 < v2;
  if (v4 != v24)
  {
    v28 = v24 < v4;
  }

  if (!v28 && v5 < *j)
  {
    goto LABEL_42;
  }

LABEL_59:
  a2 = j - 4;
LABEL_98:
  while (i < a2)
  {
    *v53 = *i;
    *&v53[16] = *(i + 1);
    v29 = *a2;
    *(i + 12) = *(a2 + 3);
    *i = v29;
    *(a2 + 3) = *&v53[12];
    *a2 = *v53;
    do
    {
      while (1)
      {
        i += 4;
        v30 = i[1];
        v31 = HIDWORD(v30);
        v32 = v4 == HIDWORD(v30) && v2 == v30;
        if (!v32 || v5 != *(i + 4))
        {
          break;
        }

        v33 = *(i + 5);
        if (v6 == v33)
        {
          if (v7 > *(i + 6))
          {
            goto LABEL_81;
          }
        }

        else if (v6 < v33)
        {
          goto LABEL_81;
        }
      }

      v34 = v2 < v30;
      if (v4 != v31)
      {
        v34 = v4 < v31;
      }

      if (v34)
      {
        break;
      }

      v35 = v30 < v2;
      v36 = v4 == v31 ? v35 : v31 < v4;
    }

    while (v36 || v5 >= *(i + 4));
    while (1)
    {
LABEL_81:
      while (1)
      {
        a2 -= 8;
        v37 = *(a2 + 1);
        v38 = HIDWORD(v37);
        v39 = v4 == HIDWORD(v37) && v2 == v37;
        if (!v39 || v5 != a2[4])
        {
          break;
        }

        v40 = a2[5];
        if (v6 == v40)
        {
          if (v7 <= a2[6])
          {
            goto LABEL_98;
          }
        }

        else if (v6 >= v40)
        {
          goto LABEL_98;
        }
      }

      v41 = v2 < v37;
      if (v4 != v38)
      {
        v41 = v4 < v38;
      }

      if (!v41)
      {
        v42 = v37 < v2;
        v43 = v4 == v38 ? v42 : v38 < v4;
        if (v43 || v5 >= a2[4])
        {
          break;
        }
      }
    }
  }

  if (i - 4 != a1)
  {
    v44 = *(i - 2);
    *(a1 + 12) = *(i - 20);
    *a1 = v44;
  }

  *(i - 4) = v3;
  *(i - 3) = v2;
  *(i - 4) = v5;
  *(i - 3) = v6;
  *(i - 2) = v7;
  return i;
}

uint64_t *sub_C20018(uint64_t *a1, _DWORD *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 4);
  v6 = *(a1 + 5);
  v7 = *(a1 + 6);
  v8 = HIDWORD(v4);
  while (1)
  {
    v9 = &a1[v2];
    v11 = a1[v2 + 5];
    v10 = HIDWORD(a1[v2 + 5]);
    v12 = v10 == HIDWORD(v4) && v11 == v4;
    if (!v12 || *(v9 + 12) != v5)
    {
      break;
    }

    v13 = HIDWORD(a1[v2 + 6]);
    if (v13 == v6)
    {
      if (LODWORD(a1[v2 + 7]) <= v7)
      {
        goto LABEL_20;
      }
    }

    else if (v13 >= v6)
    {
      goto LABEL_20;
    }

LABEL_3:
    v2 += 4;
  }

  v14 = v11 < v4;
  v12 = v10 == HIDWORD(v4);
  v15 = v10 < HIDWORD(v4);
  if (v12)
  {
    v15 = v14;
  }

  if (v15)
  {
    goto LABEL_3;
  }

  v16 = v9[5];
  v17 = v4 < v16;
  v12 = v8 == HIDWORD(v16);
  v18 = v8 < HIDWORD(v16);
  if (v12)
  {
    v18 = v17;
  }

  if (!v18 && *(v9 + 12) < v5)
  {
    goto LABEL_3;
  }

LABEL_20:
  v19 = &a1[v2 + 4];
  if (v2 * 8)
  {
    do
    {
      while (1)
      {
        a2 -= 8;
        v32 = a2[2];
        v31 = a2[3];
        v33 = v31 == HIDWORD(v4) && v32 == v4;
        if (!v33 || a2[4] != v5)
        {
          break;
        }

        v34 = a2[5];
        if (v34 == v6)
        {
          if (a2[6] > v7)
          {
            goto LABEL_67;
          }
        }

        else if (v34 < v6)
        {
          goto LABEL_67;
        }
      }

      v35 = v32 < v4;
      v12 = v31 == HIDWORD(v4);
      v36 = v31 < HIDWORD(v4);
      if (v12)
      {
        v36 = v35;
      }

      if (v36)
      {
        break;
      }

      v37 = *(a2 + 1);
      v38 = v4 < v37;
      v12 = v8 == HIDWORD(v37);
      v39 = v8 < HIDWORD(v37);
      if (v12)
      {
        v39 = v38;
      }
    }

    while (v39 || a2[4] >= v5);
  }

  else
  {
    do
    {
      if (v19 >= a2)
      {
        break;
      }

      while (1)
      {
        a2 -= 8;
        v21 = a2[2];
        v20 = a2[3];
        v22 = v20 == HIDWORD(v4) && v21 == v4;
        if (!v22 || a2[4] != v5)
        {
          break;
        }

        v23 = a2[5];
        if (v23 == v6)
        {
          if (a2[6] > v7 || v19 >= a2)
          {
            goto LABEL_67;
          }
        }

        else if (v23 < v6 || v19 >= a2)
        {
          goto LABEL_67;
        }
      }

      v26 = v21 < v4;
      v12 = v20 == HIDWORD(v4);
      v27 = v20 < HIDWORD(v4);
      if (v12)
      {
        v27 = v26;
      }

      if (v27)
      {
        break;
      }

      v28 = *(a2 + 1);
      v29 = v4 < v28;
      v12 = v8 == HIDWORD(v28);
      v30 = v8 < HIDWORD(v28);
      if (v12)
      {
        v30 = v29;
      }
    }

    while (v30 || a2[4] >= v5);
  }

LABEL_67:
  v40 = v19;
  if (v19 < a2)
  {
    v41 = a2;
    do
    {
      *v63 = *v40;
      *&v63[16] = *(v40 + 1);
      v42 = *v41;
      *(v40 + 12) = *(v41 + 3);
      *v40 = v42;
      *(v41 + 3) = *&v63[12];
      *v41 = *v63;
      while (1)
      {
        while (1)
        {
          v40 += 4;
          v43 = *(v40 + 2);
          v44 = *(v40 + 3);
          v45 = v44 == HIDWORD(v4) && v43 == v4;
          if (!v45 || *(v40 + 4) != v5)
          {
            break;
          }

          v46 = *(v40 + 5);
          if (v46 == v6)
          {
            if (*(v40 + 6) <= v7)
            {
              goto LABEL_90;
            }
          }

          else if (v46 >= v6)
          {
            goto LABEL_90;
          }
        }

        v47 = v43 < v4;
        v12 = v44 == HIDWORD(v4);
        v48 = v44 < HIDWORD(v4);
        if (v12)
        {
          v48 = v47;
        }

        if (!v48)
        {
          v49 = v40[1];
          v50 = v4 < v49;
          v12 = v8 == HIDWORD(v49);
          v51 = v8 < HIDWORD(v49);
          if (v12)
          {
            v51 = v50;
          }

          if (v51 || *(v40 + 4) >= v5)
          {
            break;
          }
        }
      }

      do
      {
LABEL_90:
        while (1)
        {
          v41 -= 8;
          v52 = v41[2];
          v53 = v41[3];
          v54 = v53 == HIDWORD(v4) && v52 == v4;
          if (!v54 || v41[4] != v5)
          {
            break;
          }

          v55 = v41[5];
          if (v55 == v6)
          {
            if (v41[6] > v7)
            {
              goto LABEL_69;
            }
          }

          else if (v55 < v6)
          {
            goto LABEL_69;
          }
        }

        v56 = v52 < v4;
        v12 = v53 == HIDWORD(v4);
        v57 = v53 < HIDWORD(v4);
        if (v12)
        {
          v57 = v56;
        }

        if (v57)
        {
          break;
        }

        v58 = *(v41 + 1);
        v59 = v4 < v58;
        v12 = v8 == HIDWORD(v58);
        v60 = v8 < HIDWORD(v58);
        if (v12)
        {
          v60 = v59;
        }
      }

      while (v60 || v41[4] >= v5);
LABEL_69:
      ;
    }

    while (v40 < v41);
  }

  if (v40 - 4 != a1)
  {
    v61 = *(v40 - 2);
    *(a1 + 12) = *(v40 - 20);
    *a1 = v61;
  }

  *(v40 - 4) = v3;
  *(v40 - 3) = v4;
  *(v40 - 4) = v5;
  *(v40 - 3) = v6;
  *(v40 - 2) = v7;
  return v40 - 4;
}

BOOL sub_C20370(uint64_t a1, uint64_t *a2)
{
  v2 = (a2 - a1) >> 5;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        sub_C1EEEC(a1, (a1 + 32), a2 - 2);
        return 1;
      case 4:
        sub_C1F2FC(a1, a1 + 32, a1 + 64, (a2 - 4));
        return 1;
      case 5:
        sub_C1F598(a1, (a1 + 32), (a1 + 64), (a1 + 96), a2 - 2);
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
      v4 = *(a1 + 8);
      v5 = HIDWORD(v4);
      v7 = *(a2 - 6);
      v6 = *(a2 - 5);
      v8 = v6 == HIDWORD(v4) && v7 == v4;
      if (v8 && *(a2 - 4) == *(a1 + 16))
      {
        v9 = *(a2 - 3);
        v10 = *(a1 + 20);
        if (v9 == v10)
        {
          if (*(a2 - 2) <= *(a1 + 24))
          {
            return 1;
          }
        }

        else if (v9 >= v10)
        {
          return 1;
        }
      }

      else
      {
        v47 = v7 < v4;
        v8 = v6 == HIDWORD(v4);
        v48 = v6 < HIDWORD(v4);
        if (v8)
        {
          v48 = v47;
        }

        if (!v48)
        {
          v52 = *(a2 - 3);
          v53 = v4 < v52;
          v8 = v5 == HIDWORD(v52);
          v54 = v5 < HIDWORD(v52);
          if (v8)
          {
            v54 = v53;
          }

          if (v54 || *(a2 - 4) >= *(a1 + 16))
          {
            return 1;
          }
        }
      }

      v49 = (a2 - 4);
      *v55 = *a1;
      v50 = *a1;
      *&v55[16] = *(a1 + 16);
      v51 = *(a2 - 20);
      *a1 = *(a2 - 2);
      *(a1 + 12) = v51;
      *v49 = v50;
      *(v49 + 12) = *&v55[12];
      return 1;
    }
  }

  v11 = (a1 + 64);
  sub_C1EEEC(a1, (a1 + 32), (a1 + 64));
  v14 = (a1 + 96);
  if ((a1 + 96) == a2)
  {
    return 1;
  }

  v15 = 0;
  v16 = 0;
  while (1)
  {
    v17 = v11[1];
    v18 = HIDWORD(v17);
    v20 = *(v14 + 2);
    v19 = *(v14 + 3);
    if (v19 != HIDWORD(v17) || v20 != v17)
    {
      break;
    }

    v22 = *(v14 + 4);
    if (v22 != *(v11 + 4))
    {
      break;
    }

    v23 = *(v14 + 5);
    v24 = *(v11 + 5);
    v25 = v23 >= v24;
    if (v23 == v24)
    {
      if (*(v14 + 6) > *(v11 + 6))
      {
        goto LABEL_41;
      }

      goto LABEL_22;
    }

LABEL_40:
    if (!v25)
    {
      goto LABEL_41;
    }

LABEL_22:
    v11 = v14;
    v15 += 32;
    v14 += 4;
    if (v14 == a2)
    {
      return 1;
    }
  }

  v26 = v20 < v17;
  v8 = v19 == HIDWORD(v17);
  v27 = v19 < HIDWORD(v17);
  if (!v8)
  {
    v26 = v27;
  }

  if (!v26)
  {
    v28 = v14[1];
    v29 = v17 < v28;
    v8 = v18 == HIDWORD(v28);
    v30 = v18 < HIDWORD(v28);
    if (v8)
    {
      v30 = v29;
    }

    if (v30)
    {
      goto LABEL_22;
    }

    v22 = *(v14 + 4);
    v25 = v22 >= *(v11 + 4);
    goto LABEL_40;
  }

  v22 = *(v14 + 4);
LABEL_41:
  v31 = *v14;
  v32 = v14[1];
  v33 = HIDWORD(v32);
  v35 = *(v14 + 5);
  v34 = *(v14 + 6);
  *v14 = *v11;
  *(v14 + 12) = *(v11 + 12);
  v36 = v15;
  while (2)
  {
    v37 = a1 + v36;
    v38 = *(a1 + v36 + 40);
    v39 = HIDWORD(v38);
    v40 = v33 == HIDWORD(v38) && v32 == v38;
    if (v40 && v22 == *(v37 + 48))
    {
      v41 = *(a1 + v36 + 52);
      if (v35 == v41)
      {
        if (v34 <= *(a1 + v36 + 56))
        {
          break;
        }
      }

      else if (v35 >= v41)
      {
        break;
      }

      goto LABEL_43;
    }

    v42 = v32 < v38;
    if (v33 != v39)
    {
      v42 = v33 < v39;
    }

    if (v42 || ((v43 = v38 < v32, v33 != v39) ? (v44 = v39 < v33) : (v44 = v43), !v44 && v22 < *(v37 + 48)))
    {
LABEL_43:
      *(v37 + 64) = *(v37 + 32);
      *(v37 + 76) = *(v37 + 44);
      v36 -= 32;
      if (v36 == -64)
      {
        *a1 = v31;
        *(a1 + 8) = v32;
        *(a1 + 16) = v22;
        *(a1 + 20) = v35;
        ++v16;
        *(a1 + 24) = v34;
        if (v16 != 8)
        {
          goto LABEL_22;
        }

        return v14 + 4 == a2;
      }

      continue;
    }

    break;
  }

  v45 = a1 + v36;
  *(v45 + 64) = v31;
  *(v45 + 72) = v32;
  v46 = (a1 + v36 + 64);
  v46[4] = v22;
  v46[5] = v35;
  ++v16;
  v46[6] = v34;
  if (v16 != 8)
  {
    goto LABEL_22;
  }

  return v14 + 4 == a2;
}

_OWORD *sub_C2073C(uint64_t a1, _OWORD *a2, _OWORD *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = (a2 - a1) >> 5;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = (a1 + 32 * v9);
      do
      {
        sub_C20A38(a1, a4, v8, v11);
        v11 -= 4;
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      while (1)
      {
        v15 = *(a1 + 8);
        v16 = HIDWORD(v15);
        v18 = *(v12 + 2);
        v17 = *(v12 + 3);
        v19 = v17 == HIDWORD(v15) && v18 == v15;
        if (v19 && *(v12 + 4) == *(a1 + 16))
        {
          break;
        }

        v23 = v18 < v15;
        v19 = v17 == HIDWORD(v15);
        v24 = v17 < HIDWORD(v15);
        if (v19)
        {
          v24 = v23;
        }

        if (!v24)
        {
          v25 = *(v12 + 1);
          v26 = v15 < v25;
          v19 = v16 == HIDWORD(v25);
          v27 = v16 < HIDWORD(v25);
          if (v19)
          {
            v27 = v26;
          }

          if (v27)
          {
            goto LABEL_8;
          }

          v22 = *(v12 + 4) >= *(a1 + 16);
LABEL_25:
          if (v22)
          {
            goto LABEL_8;
          }
        }

LABEL_7:
        *v51 = *v12;
        v13 = *v12;
        *&v51[16] = v12[1];
        v14 = *(a1 + 12);
        *v12 = *a1;
        *(v12 + 12) = v14;
        *a1 = v13;
        *(a1 + 12) = *&v51[12];
        sub_C20A38(a1, a4, v8, a1);
LABEL_8:
        v12 += 2;
        if (v12 == a3)
        {
          goto LABEL_28;
        }
      }

      v20 = *(v12 + 5);
      v21 = *(a1 + 20);
      v22 = v20 >= v21;
      if (v20 == v21)
      {
        if (*(v12 + 6) <= *(a1 + 24))
        {
          goto LABEL_8;
        }

        goto LABEL_7;
      }

      goto LABEL_25;
    }

LABEL_28:
    if (v8 < 2)
    {
      return v12;
    }

LABEL_31:
    v29 = 0;
    *v52 = *a1;
    *&v52[16] = *(a1 + 16);
    v30 = a1;
    while (1)
    {
      v32 = v30;
      v33 = &v30[2 * v29];
      v30 = v33 + 2;
      v34 = 2 * v29;
      v29 = (2 * v29) | 1;
      v35 = v34 + 2;
      if (v35 >= v8)
      {
        goto LABEL_33;
      }

      v36 = *(v33 + 9);
      v37 = HIDWORD(v36);
      v39 = *(v33 + 10);
      v38 = *(v33 + 11);
      v40 = v38 == HIDWORD(v36) && v39 == v36;
      if (v40 && *(v33 + 12) == *(v33 + 20))
      {
        break;
      }

      v44 = v39 < v36;
      v19 = v38 == HIDWORD(v36);
      v45 = v38 < HIDWORD(v36);
      if (v19)
      {
        v45 = v44;
      }

      if (!v45)
      {
        v46 = *(v33 + 5);
        v47 = v36 < v46;
        v19 = v37 == HIDWORD(v46);
        v48 = v37 < HIDWORD(v46);
        if (v19)
        {
          v48 = v47;
        }

        if (v48)
        {
          goto LABEL_33;
        }

        v43 = *(v33 + 12) >= *(v33 + 20);
LABEL_51:
        if (v43)
        {
          goto LABEL_33;
        }
      }

LABEL_32:
      v30 = v33 + 4;
      v29 = v35;
LABEL_33:
      v31 = *v30;
      *(v32 + 12) = *(v30 + 12);
      *v32 = v31;
      if (v29 > ((v8 - 2) >> 1))
      {
        v6 -= 2;
        if (v30 == v6)
        {
          *(v30 + 12) = *&v52[12];
          *v30 = *v52;
          v28 = v8-- <= 2;
          if (v28)
          {
            return v12;
          }

          goto LABEL_31;
        }

        v49 = *v6;
        *(v30 + 12) = *(v6 + 12);
        *v30 = v49;
        *v6 = *v52;
        *(v6 + 12) = *&v52[12];
        sub_C20D24(a1, (v30 + 2), a4, (v30 - a1 + 32) >> 5);
        v28 = v8-- <= 2;
        if (v28)
        {
          return v12;
        }

        goto LABEL_31;
      }
    }

    v41 = *(v33 + 13);
    v42 = *(v33 + 21);
    v43 = v41 >= v42;
    if (v41 == v42)
    {
      if (*(v33 + 14) <= *(v33 + 22))
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }

    goto LABEL_51;
  }

  return a3;
}

uint64_t sub_C20A38(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 < 2)
  {
    return result;
  }

  v4 = a4 - result;
  v5 = (a3 - 2) >> 1;
  if (v5 < (a4 - result) >> 5)
  {
    return result;
  }

  v6 = v4 >> 4;
  v7 = (v4 >> 4) + 1;
  v8 = (result + 32 * v7);
  v9 = v6 + 2;
  if (v9 < a3)
  {
    v10 = *(v8 + 5);
    v11 = HIDWORD(v10);
    v13 = *(v8 + 2);
    v12 = *(v8 + 3);
    v14 = v12 == HIDWORD(v10) && v13 == v10;
    if (v14 && *(v8 + 4) == *(v8 + 12))
    {
      v15 = *(v8 + 5);
      v16 = *(v8 + 13);
      v17 = v15 >= v16;
      if (v15 == v16)
      {
        if (*(v8 + 6) <= *(v8 + 14))
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v18 = v13 < v10;
      v14 = v12 == HIDWORD(v10);
      v19 = v12 < HIDWORD(v10);
      if (v14)
      {
        v19 = v18;
      }

      if (v19)
      {
        goto LABEL_21;
      }

      v20 = *(v8 + 1);
      v21 = v10 < v20;
      v14 = v11 == HIDWORD(v20);
      v22 = v11 < HIDWORD(v20);
      if (v14)
      {
        v22 = v21;
      }

      if (v22)
      {
        goto LABEL_22;
      }

      v17 = *(v8 + 4) >= *(v8 + 12);
    }

    if (!v17)
    {
LABEL_21:
      v8 += 2;
      v7 = v9;
    }
  }

LABEL_22:
  v23 = a4[1];
  v24 = HIDWORD(v23);
  v26 = *(v8 + 2);
  v25 = *(v8 + 3);
  if (v25 == HIDWORD(v23) && v26 == v23)
  {
    v28 = *(v8 + 4);
    if (v28 == *(a4 + 4))
    {
      v29 = *(v8 + 5);
      v30 = *(a4 + 5);
      v31 = v29 >= v30;
      if (v29 == v30)
      {
        if (*(v8 + 6) > *(a4 + 6))
        {
          return result;
        }

        goto LABEL_41;
      }

      goto LABEL_39;
    }
  }

  v32 = v26 < v23;
  v14 = v25 == HIDWORD(v23);
  v33 = v25 < HIDWORD(v23);
  if (!v14)
  {
    v32 = v33;
  }

  if (!v32)
  {
    v34 = *(v8 + 1);
    v35 = v23 < v34;
    v14 = v24 == HIDWORD(v34);
    v36 = v24 < HIDWORD(v34);
    if (v14)
    {
      v36 = v35;
    }

    if (v36)
    {
      v28 = *(a4 + 4);
      goto LABEL_41;
    }

    v28 = *(a4 + 4);
    v31 = *(v8 + 4) >= v28;
LABEL_39:
    if (!v31)
    {
      return result;
    }

LABEL_41:
    v37 = *a4;
    v38 = *(a4 + 5);
    v39 = *(a4 + 6);
    v40 = *(v8 + 12);
    *a4 = *v8;
    *(a4 + 12) = v40;
    while (1)
    {
      if (v5 < v7)
      {
LABEL_81:
        *v8 = v37;
        *(v8 + 1) = v23;
        *(v8 + 4) = v28;
        *(v8 + 5) = v38;
        *(v8 + 6) = v39;
        return result;
      }

      v42 = v8;
      v43 = 2 * v7;
      v7 = (2 * v7) | 1;
      v8 = (result + 32 * v7);
      v44 = v43 + 2;
      if (v44 < a3)
      {
        v45 = *(v8 + 5);
        v46 = HIDWORD(v45);
        v48 = *(v8 + 2);
        v47 = *(v8 + 3);
        v49 = v47 == HIDWORD(v45) && v48 == v45;
        if (v49 && *(v8 + 4) == *(v8 + 12))
        {
          v50 = *(v8 + 5);
          v51 = *(v8 + 13);
          v52 = v50 >= v51;
          if (v50 != v51)
          {
            goto LABEL_62;
          }

          if (*(v8 + 6) > *(v8 + 14))
          {
            goto LABEL_63;
          }
        }

        else
        {
          v53 = v48 < v45;
          v14 = v47 == HIDWORD(v45);
          v54 = v47 < HIDWORD(v45);
          if (v14)
          {
            v54 = v53;
          }

          if (v54)
          {
            goto LABEL_63;
          }

          v55 = *(v8 + 1);
          v56 = v45 < v55;
          v14 = v46 == HIDWORD(v55);
          v57 = v46 < HIDWORD(v55);
          if (v14)
          {
            v57 = v56;
          }

          if (!v57)
          {
            v52 = *(v8 + 4) >= *(v8 + 12);
LABEL_62:
            if (v52)
            {
              goto LABEL_64;
            }

LABEL_63:
            v8 += 2;
            v7 = v44;
          }
        }
      }

LABEL_64:
      v59 = *(v8 + 2);
      v58 = *(v8 + 3);
      v60 = v58 == HIDWORD(v23) && v59 == v23;
      if (v60 && *(v8 + 4) == v28)
      {
        v61 = *(v8 + 5);
        if (v61 == v38)
        {
          if (*(v8 + 6) > v39)
          {
            goto LABEL_80;
          }
        }

        else if (v61 < v38)
        {
          goto LABEL_80;
        }
      }

      else
      {
        v62 = v59 < v23;
        v14 = v58 == HIDWORD(v23);
        v63 = v58 < HIDWORD(v23);
        if (v14)
        {
          v63 = v62;
        }

        if (v63)
        {
          goto LABEL_80;
        }

        v64 = *(v8 + 1);
        v65 = v23 < v64;
        v14 = v24 == HIDWORD(v64);
        v66 = v24 < HIDWORD(v64);
        if (v14)
        {
          v66 = v65;
        }

        if (!v66 && *(v8 + 4) < v28)
        {
LABEL_80:
          v8 = v42;
          goto LABEL_81;
        }
      }

      v41 = *v8;
      *(v42 + 12) = *(v8 + 12);
      *v42 = v41;
    }
  }

  return result;
}

uint64_t sub_C20D24(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 < 2)
  {
    return result;
  }

  v5 = v4 >> 1;
  v6 = (result + 32 * (v4 >> 1));
  v7 = *(a2 - 24);
  v8 = HIDWORD(v7);
  v10 = *(v6 + 2);
  v9 = *(v6 + 3);
  v11 = v9 == HIDWORD(v7) && v10 == v7;
  if (v11 && (v12 = *(v6 + 4), v12 == *(a2 - 16)))
  {
    v13 = *(v6 + 5);
    v14 = *(a2 - 12);
    v15 = v13 >= v14;
    if (v13 == v14)
    {
      if (*(v6 + 6) <= *(a2 - 8))
      {
        return result;
      }

LABEL_20:
      v21 = (a2 - 32);
      v22 = *(a2 - 32);
      v23 = *(a2 - 12);
      v24 = *(a2 - 8);
      v25 = *(v6 + 12);
      *v21 = *v6;
      *(v21 + 12) = v25;
      if (v4 < 2)
      {
LABEL_21:
        *v6 = v22;
        *(v6 + 1) = v7;
        *(v6 + 4) = v12;
        *(v6 + 5) = v23;
        *(v6 + 6) = v24;
        return result;
      }

      while (1)
      {
        v27 = v6;
        v28 = v5 - 1;
        v5 = (v5 - 1) >> 1;
        v6 = (result + 32 * v5);
        v30 = *(v6 + 2);
        v29 = *(v6 + 3);
        v31 = v29 == HIDWORD(v7) && v30 == v7;
        if (v31 && *(v6 + 4) == v12)
        {
          v32 = *(v6 + 5);
          if (v32 == v23)
          {
            if (*(v6 + 6) <= v24)
            {
              goto LABEL_41;
            }
          }

          else if (v32 >= v23)
          {
            goto LABEL_41;
          }
        }

        else
        {
          v33 = v30 < v7;
          v11 = v29 == HIDWORD(v7);
          v34 = v29 < HIDWORD(v7);
          if (v11)
          {
            v34 = v33;
          }

          if (!v34)
          {
            v35 = *(v6 + 1);
            v36 = v7 < v35;
            v11 = v8 == HIDWORD(v35);
            v37 = v8 < HIDWORD(v35);
            if (v11)
            {
              v37 = v36;
            }

            if (v37 || *(v6 + 4) >= v12)
            {
LABEL_41:
              *v27 = v22;
              *(v27 + 1) = v7;
              *(v27 + 4) = v12;
              *(v27 + 5) = v23;
              *(v27 + 6) = v24;
              return result;
            }
          }
        }

        v26 = *v6;
        *(v27 + 12) = *(v6 + 12);
        *v27 = v26;
        if (v28 < 2)
        {
          goto LABEL_21;
        }
      }
    }
  }

  else
  {
    v16 = v10 < v7;
    v11 = v9 == HIDWORD(v7);
    v17 = v9 < HIDWORD(v7);
    if (!v11)
    {
      v16 = v17;
    }

    if (v16)
    {
      v12 = *(a2 - 16);
      goto LABEL_20;
    }

    v18 = *(v6 + 1);
    v19 = v7 < v18;
    v11 = v8 == HIDWORD(v18);
    v20 = v8 < HIDWORD(v18);
    if (v11)
    {
      v20 = v19;
    }

    if (v20)
    {
      return result;
    }

    v12 = *(a2 - 16);
    v15 = *(v6 + 4) >= v12;
  }

  if (!v15)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_C211B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__int128 *sub_C21230(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  sub_C21570(a1, a2);
  sub_C21B1C(a1, a2);
  sub_C22170(a1, a2);
  v7 = *(a1 + 72);
  v8 = *(a1 + 80);
  v9 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v8 - v7) >> 3));
  if (v8 == v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  sub_C24398(v7, v8, v10, 1, v6);
  result = sub_C22410(a1, a2);
  if (0x14C1BACF914C1BADLL * ((v4 - v5) >> 3) <= (0x14C1BACF914C1BADLL * ((*(a2 + 16) - *(a2 + 8)) >> 3)))
  {
    return result;
  }

  result = sub_7E7E4(2u);
  if (!result)
  {
    return result;
  }

  sub_19594F8(&v18);
  sub_4A5C(&v18, "The journey similarity filter removed ", 38);
  v12 = std::ostream::operator<<();
  sub_4A5C(v12, " journeys", 9);
  if ((v28 & 0x10) != 0)
  {
    v14 = v27;
    if (v27 < v24)
    {
      v27 = v24;
      v14 = v24;
    }

    v15 = v23;
    v13 = v14 - v23;
    if (v14 - v23 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_24:
      sub_3244();
    }

LABEL_12:
    if (v13 >= 0x17)
    {
      operator new();
    }

    v17 = v13;
    if (v13)
    {
      memmove(&__p, v15, v13);
    }

    goto LABEL_17;
  }

  if ((v28 & 8) != 0)
  {
    v15 = v21;
    v13 = v22 - v21;
    if ((v22 - v21) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_24;
    }

    goto LABEL_12;
  }

  v13 = 0;
  v17 = 0;
LABEL_17:
  *(&__p + v13) = 0;
  sub_7E854(&__p, 2u);
  if (v17 < 0)
  {
    operator delete(__p);
  }

  if (v26 < 0)
  {
    operator delete(v25);
  }

  std::locale::~locale(&v20);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_C2152C(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  if (SHIBYTE(a11) < 0)
  {
    operator delete(a9);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_C21570(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v39 = (a1 + 24);
  v5 = *(a1 + 32);
  if (v5 != v4)
  {
    v6 = *(a1 + 32);
    do
    {
      v9 = *(v6 - 3);
      v6 -= 3;
      v8 = v9;
      if (v9)
      {
        v10 = *(v5 - 2);
        v7 = v8;
        if (v10 != v8)
        {
          v11 = *(v5 - 2);
          do
          {
            v13 = *(v11 - 3);
            v11 -= 24;
            v12 = v13;
            if (v13)
            {
              *(v10 - 2) = v12;
              operator delete(v12);
            }

            v10 = v11;
          }

          while (v11 != v8);
          v7 = *v6;
        }

        *(v5 - 2) = v8;
        operator delete(v7);
      }

      v5 = v6;
    }

    while (v6 != v4);
  }

  *(a1 + 32) = v4;
  if (*(a1 + 1) == 1)
  {
    v15 = *(a2 + 8);
    v14 = *(a2 + 16);
    v40 = v14;
    while (v15 != v14)
    {
      __p[0] = 0;
      __p[1] = 0;
      v44 = 0;
      v18 = *(v15 + 200);
      v17 = *(v15 + 208);
      v41 = v15;
      for (i = v17; v18 != v17; v18 += 72)
      {
        if (*(v18 + 24))
        {
          continue;
        }

        v28 = *(v18 + 8);
        if (v28 != *v18)
        {
          if (!((0xCF3CF3CF3CF3CF3DLL * ((v28 - *v18) >> 3)) >> 61))
          {
            operator new();
          }

          sub_1794();
        }

        sub_BD71E4(0, 0, &v45, 0, 1);
        v29 = __p[1];
        if (__p[1] < v44)
        {
          *__p[1] = 0;
          v29[1] = 0;
          v27 = v29 + 3;
          v29[2] = 0;
          v17 = i;
        }

        else
        {
          v30 = __p[0];
          v31 = __p[1] - __p[0];
          v32 = 0xAAAAAAAAAAAAAAABLL * ((__p[1] - __p[0]) >> 3) + 1;
          if (v32 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_1794();
          }

          if (0x5555555555555556 * ((v44 - __p[0]) >> 3) > v32)
          {
            v32 = 0x5555555555555556 * ((v44 - __p[0]) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v44 - __p[0]) >> 3) >= 0x555555555555555)
          {
            v33 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v33 = v32;
          }

          if (v33)
          {
            if (v33 <= 0xAAAAAAAAAAAAAAALL)
            {
              operator new();
            }

            sub_1808();
          }

          v34 = (8 * ((__p[1] - __p[0]) >> 3));
          *v34 = 0;
          v34[1] = 0;
          v34[2] = 0;
          v35 = v34 - v31;
          if (v30 != v29)
          {
            v36 = v30;
            v37 = v35;
            v17 = i;
            do
            {
              *v37 = *v36;
              *(v37 + 2) = v36[2];
              *v36 = 0;
              v36[1] = 0;
              v36[2] = 0;
              v36 += 3;
              v37 += 24;
            }

            while (v36 != v29);
            do
            {
              v38 = *v30;
              if (*v30)
              {
                v30[1] = v38;
                operator delete(v38);
              }

              v30 += 3;
            }

            while (v30 != v29);
            v30 = __p[0];
            v27 = v34 + 3;
            __p[0] = v35;
            __p[1] = v27;
            v44 = 0;
            if (!v30)
            {
              goto LABEL_26;
            }

LABEL_52:
            operator delete(v30);
            goto LABEL_26;
          }

          v17 = i;
          v27 = v34 + 3;
          __p[0] = v35;
          __p[1] = v27;
          v44 = 0;
          if (v30)
          {
            goto LABEL_52;
          }
        }

LABEL_26:
        __p[1] = v27;
      }

      v19 = *(a1 + 32);
      if (v19 < *(a1 + 40))
      {
        *v19 = 0;
        v19[1] = 0;
        v19[2] = 0;
        *v19 = *__p;
        v19[2] = v44;
        *(a1 + 32) = v19 + 3;
        v16 = v41;
      }

      else
      {
        v20 = sub_52D94(v39, __p);
        v16 = v41;
        v21 = __p[0];
        *(a1 + 32) = v20;
        if (v21)
        {
          v22 = __p[1];
          v23 = v21;
          if (__p[1] != v21)
          {
            v24 = __p[1];
            do
            {
              v26 = *(v24 - 3);
              v24 -= 24;
              v25 = v26;
              if (v26)
              {
                *(v22 - 2) = v25;
                operator delete(v25);
              }

              v22 = v24;
            }

            while (v24 != v21);
            v23 = __p[0];
          }

          __p[1] = v21;
          operator delete(v23);
        }
      }

      v15 = v16 + 296;
      v14 = v40;
    }
  }
}

void sub_C21AB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_34BE0(va);
  _Unwind_Resume(a1);
}

void sub_C21AC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_34BE0(va);
  _Unwind_Resume(a1);
}

void sub_C21AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_34BE0(va);
  _Unwind_Resume(a1);
}

void sub_C21AEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  if (v13)
  {
    operator delete(v13);
  }

  sub_34BE0(&a13);
  _Unwind_Resume(a1);
}

void sub_C21B1C(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = *(a1 + 48);
  v70 = (a1 + 48);
  v5 = *(a1 + 56);
  if (v5 != v4)
  {
    v6 = *(a1 + 56);
    do
    {
      v9 = *(v6 - 3);
      v6 -= 3;
      v8 = v9;
      if (v9)
      {
        v10 = *(v5 - 2);
        v7 = v8;
        if (v10 != v8)
        {
          v11 = *(v5 - 2);
          do
          {
            v13 = *(v11 - 3);
            v11 -= 24;
            v12 = v13;
            if (v13)
            {
              *(v10 - 2) = v12;
              operator delete(v12);
            }

            v10 = v11;
          }

          while (v11 != v8);
          v7 = *v6;
        }

        *(v5 - 2) = v8;
        operator delete(v7);
      }

      v5 = v6;
    }

    while (v6 != v4);
  }

  *(v3 + 56) = v4;
  if (*(v3 + 2) == 1)
  {
    v14 = *(a2 + 8);
    v71 = *(a2 + 16);
    if (v14 != v71)
    {
      v74 = v3;
      while (1)
      {
        __p[0] = 0;
        __p[1] = 0;
        v76 = 0;
        v16 = v14;
        v17 = *(v14 + 200);
        v18 = *(v16 + 208);
        v72 = v16;
        v73 = v18;
        if (v17 != v18)
        {
          break;
        }

LABEL_18:
        v19 = *(v3 + 56);
        if (v19 < *(v3 + 64))
        {
          *v19 = 0;
          v19[1] = 0;
          v19[2] = 0;
          *v19 = *__p;
          v19[2] = v76;
          *(v3 + 56) = v19 + 3;
          v15 = v72;
        }

        else
        {
          v20 = sub_52D94(v70, __p);
          v15 = v72;
          v21 = __p[0];
          *(v3 + 56) = v20;
          if (v21)
          {
            v22 = __p[1];
            v23 = v21;
            if (__p[1] != v21)
            {
              v24 = __p[1];
              do
              {
                v26 = *(v24 - 3);
                v24 -= 24;
                v25 = v26;
                if (v26)
                {
                  *(v22 - 2) = v25;
                  operator delete(v25);
                }

                v22 = v24;
              }

              while (v24 != v21);
              v23 = __p[0];
            }

            __p[1] = v21;
            operator delete(v23);
          }
        }

        v14 = v15 + 296;
        if (v14 == v71)
        {
          return;
        }
      }

      while (1)
      {
        if (!*(v17 + 24))
        {
          v28 = *(v17 + 8);
          if (*v17 != v28)
          {
            v29 = 0;
            v30 = 0;
            v31 = *v17 + 168;
            while (2)
            {
              if (*(v31 - 8))
              {
                sub_5AF20();
              }

              if (*(v31 - 10) != 1)
              {
                goto LABEL_64;
              }

              v32 = *(v31 - 136);
              v33 = *(v31 - 116);
              v34 = *(v31 - 128);
              v35 = sub_A5706C((*(v3 + 16) + 4136), v32);
              v36 = v35;
              v37 = &v35[-*v35];
              if (*v37 < 5u)
              {
                v38 = 0;
              }

              else
              {
                v38 = *(v37 + 2);
                if (v38)
                {
                  v38 += &v35[*&v35[v38]];
                }
              }

              v39 = (v38 + 4 * v32 + 4 + *(v38 + 4 * v32 + 4));
              v40 = (v39 - *v39);
              if (*v40 >= 9u && (v41 = v40[4]) != 0)
              {
                v42 = (v39 + v41 + *(v39 + v41));
              }

              else
              {
                v42 = 0;
              }

              v43 = sub_A571D4(v42, v33);
              v44 = (v36 - *v36);
              if (*v44 < 0xBu)
              {
                v45 = 0;
                v46 = (v39 - *v39);
                if (*v46 >= 0x11u)
                {
                  goto LABEL_45;
                }
              }

              else
              {
                v45 = v44[5];
                if (v45)
                {
                  v45 = (v45 + v36 + *(v45 + v36));
                }

                v46 = (v39 - *v39);
                if (*v46 >= 0x11u)
                {
LABEL_45:
                  v47 = v46[8];
                  if (v46[8])
                  {
                    LODWORD(v47) = *(v39 + v47);
                  }

LABEL_49:
                  v48 = sub_A57320(v45, v47 + *(v39 + v46[2] + *(v39 + v46[2])) * v34 + *(v43 + 14));
                  if (v48)
                  {
                    v49 = __ROR8__(*v48, 32);
                    v50 = v48[2];
                  }

                  else
                  {
                    v50 = 0;
                    v49 = 0xFFFFFFFFLL;
                  }

                  v51 = &v30[-v29];
                  v52 = 0xAAAAAAAAAAAAAAABLL * (&v30[-v29] >> 2);
                  v53 = v52 + 1;
                  if (v52 + 1 > 0x1555555555555555)
                  {
                    sub_1794();
                  }

                  if (0x5555555555555556 * (-v29 >> 2) > v53)
                  {
                    v53 = 0x5555555555555556 * (-v29 >> 2);
                  }

                  if (0xAAAAAAAAAAAAAAABLL * (-v29 >> 2) >= 0xAAAAAAAAAAAAAAALL)
                  {
                    v54 = 0x1555555555555555;
                  }

                  else
                  {
                    v54 = v53;
                  }

                  if (v54)
                  {
                    if (v54 <= 0x1555555555555555)
                    {
                      operator new();
                    }

                    sub_1808();
                  }

                  v55 = 12 * v52;
                  *v55 = v49;
                  *(v55 + 8) = v50;
                  v30 = (12 * v52 + 12);
                  v56 = (v55 + 12 * (v51 / -12));
                  memcpy(v56, v29, v51);
                  if (v29)
                  {
                    operator delete(v29);
                  }

                  v29 = v56;
                  v3 = v74;
LABEL_64:
                  if (*(v3 + 3))
                  {
                    goto LABEL_69;
                  }

                  v57 = v31 == v28;
                  v31 += 168;
                  if (v57)
                  {
                    goto LABEL_69;
                  }

                  continue;
                }
              }

              break;
            }

            LODWORD(v47) = 0;
            goto LABEL_49;
          }

          v30 = 0;
          v29 = 0;
LABEL_69:
          v58 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * (&v30[-v29] >> 2));
          if (v30 == v29)
          {
            v59 = 0;
          }

          else
          {
            v59 = v58;
          }

          sub_C22A9C(v29, v30, &v77, v59, 1);
          v60 = __p[1];
          if (__p[1] < v76)
          {
            *__p[1] = v29;
            v60[1] = v30;
            v27 = v60 + 3;
            v60[2] = 0;
          }

          else
          {
            v61 = __p[0];
            v62 = __p[1] - __p[0];
            v63 = 0xAAAAAAAAAAAAAAABLL * ((__p[1] - __p[0]) >> 3) + 1;
            if (v63 > 0xAAAAAAAAAAAAAAALL)
            {
              sub_1794();
            }

            if (0x5555555555555556 * ((v76 - __p[0]) >> 3) > v63)
            {
              v63 = 0x5555555555555556 * ((v76 - __p[0]) >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v76 - __p[0]) >> 3) >= 0x555555555555555)
            {
              v64 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v64 = v63;
            }

            if (v64)
            {
              if (v64 <= 0xAAAAAAAAAAAAAAALL)
              {
                operator new();
              }

              sub_1808();
            }

            v65 = (8 * ((__p[1] - __p[0]) >> 3));
            *v65 = v29;
            v65[1] = v30;
            v65[2] = 0;
            v66 = v65 - v62;
            if (v61 != v60)
            {
              v67 = v61;
              v68 = v66;
              do
              {
                *v68 = *v67;
                *(v68 + 2) = v67[2];
                *v67 = 0;
                v67[1] = 0;
                v67[2] = 0;
                v67 += 3;
                v68 += 24;
              }

              while (v67 != v60);
              do
              {
                v69 = *v61;
                if (*v61)
                {
                  v61[1] = v69;
                  operator delete(v69);
                }

                v61 += 3;
              }

              while (v61 != v60);
              v61 = __p[0];
            }

            v27 = v65 + 3;
            __p[0] = v66;
            __p[1] = v65 + 3;
            v76 = 0;
            if (v61)
            {
              operator delete(v61);
            }

            v3 = v74;
          }

          v18 = v73;
          __p[1] = v27;
        }

        v17 += 72;
        if (v17 == v18)
        {
          goto LABEL_18;
        }
      }
    }
  }
}

void sub_C2212C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_34BE0(va);
  _Unwind_Resume(a1);
}

void sub_C22140(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  if (v15)
  {
    operator delete(v15);
  }

  sub_34BE0(&a15);
  _Unwind_Resume(a1);
}

void sub_C22170(uint64_t a1, uint64_t a2)
{
  *(a1 + 80) = *(a1 + 72);
  v2 = *(a2 + 16) - *(a2 + 8);
  if (v2)
  {
    v5 = 0;
    v21 = 0x14C1BACF914C1BADLL * (v2 >> 3);
    v24 = 504;
    v23 = 1;
    do
    {
      v6 = 0x14C1BACF914C1BADLL * ((*(a2 + 16) - *(a2 + 8)) >> 3);
      v22 = v5 + 1;
      if (v5 + 1 < v6)
      {
        v7 = v24;
        if (v6 <= v23)
        {
          v8 = v23;
        }

        else
        {
          v8 = 0x14C1BACF914C1BADLL * ((*(a2 + 16) - *(a2 + 8)) >> 3);
        }

        v9 = v5 + 1;
        do
        {
          sub_C226EC(a1, a2, v5, v9);
          if ((*a1 & 1) != 0 || (v18 = *(a2 + 8), 0x8E38E38E38E38E39 * ((*(v18 + 296 * v5 + 208) - *(v18 + 296 * v5 + 200)) >> 3) >= 3) && 0x8E38E38E38E38E39 * ((*(v18 + v7) - *(v18 + v7 - 8)) >> 3) >= 3)
          {
            if (v11 >= *(a1 + 8))
            {
              v12 = *(a1 + 80);
              v13 = *(a1 + 88);
              if (v12 < v13)
              {
                *v12 = v5;
                *(v12 + 8) = v9;
                v10 = v12 + 24;
                *(v12 + 16) = v11;
              }

              else
              {
                v14 = *(a1 + 72);
                v15 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v14) >> 3) + 1;
                if (v15 > 0xAAAAAAAAAAAAAAALL)
                {
                  sub_1794();
                }

                v16 = 0xAAAAAAAAAAAAAAABLL * ((v13 - v14) >> 3);
                if (2 * v16 > v15)
                {
                  v15 = 2 * v16;
                }

                if (v16 >= 0x555555555555555)
                {
                  v17 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v17 = v15;
                }

                if (v17)
                {
                  if (v17 <= 0xAAAAAAAAAAAAAAALL)
                  {
                    operator new();
                  }

                  sub_1808();
                }

                v19 = 8 * ((v12 - v14) >> 3);
                *v19 = v5;
                *(v19 + 8) = v9;
                *(v19 + 16) = v11;
                v10 = v19 + 24;
                v20 = (v19 - (v12 - v14));
                memcpy(v20, v14, v12 - v14);
                *(a1 + 72) = v20;
                *(a1 + 80) = v10;
                *(a1 + 88) = 0;
                if (v14)
                {
                  operator delete(v14);
                }
              }

              *(a1 + 80) = v10;
            }
          }

          ++v9;
          v7 += 296;
        }

        while (v8 != v9);
      }

      ++v5;
      ++v23;
      v24 += 296;
    }

    while (v22 != v21);
  }
}

__int128 *sub_C22410(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 72);
  v2 = *(a1 + 80);
  if (v3 != v2)
  {
    v42 = *(a1 + 80);
    do
    {
      v4 = *(a2 + 8);
      v5 = v4 + 296 * *v3;
      v7 = *(v5 + 200);
      v6 = *(v5 + 208);
      if (v7 == v6)
      {
        goto LABEL_5;
      }

      v8 = v4 + 296 * v3[1];
      v10 = *(v8 + 200);
      v9 = *(v8 + 208);
      if (v10 == v9)
      {
        goto LABEL_5;
      }

      v11 = *(v5 + 13);
      v12 = *(v8 + 13);
      v13 = v11 == v12;
      v14 = v11 < v12;
      if (v13 && (v15 = *(v8 + 2), v16 = *(v5 + 2), v13 = v16 == v15, v14 = v16 < v15, v13) && (v17 = *(v5 + 4), v18 = *(v8 + 4), v13 = v18 == v17, v14 = v18 < v17, v13) && (v19 = *(v5 + 8), v20 = *(v8 + 8), v13 = v20 == v19, v14 = v20 < v19, v13))
      {
        v21 = *(v5 + 1);
        v22 = *(v8 + 1);
        if (v21 != v22)
        {
          v23 = v21 & (v22 ^ 1);
        }

        else
        {
          v23 = *(v5 + 192) > *(v8 + 192);
        }

        if ((v23 & 1) == 0)
        {
          do
          {
LABEL_37:
            v32 = *(v6 - 5);
            if (v32)
            {
              *(v6 - 4) = v32;
              operator delete(v32);
            }

            v33 = v6 - 9;
            v34 = *(v6 - 9);
            if (v34)
            {
              v35 = *(v6 - 8);
              v31 = *(v6 - 9);
              if (v35 != v34)
              {
                do
                {
                  v36 = v35 - 168;
                  v37 = *(v35 - 2);
                  if (v37 != -1)
                  {
                    (off_2672928[v37])(&v45, v35 - 168);
                  }

                  *(v35 - 2) = -1;
                  v35 -= 168;
                }

                while (v36 != v34);
                v31 = *v33;
              }

              *(v6 - 8) = v34;
              operator delete(v31);
            }

            v6 -= 9;
          }

          while (v33 != v7);
          *(v5 + 208) = v7;
          goto LABEL_4;
        }
      }

      else if (!v14)
      {
        goto LABEL_37;
      }

      do
      {
        v25 = *(v9 - 5);
        if (v25)
        {
          *(v9 - 4) = v25;
          operator delete(v25);
        }

        v26 = v9 - 9;
        v27 = *(v9 - 9);
        if (v27)
        {
          v28 = *(v9 - 8);
          v24 = *(v9 - 9);
          if (v28 != v27)
          {
            do
            {
              v29 = v28 - 168;
              v30 = *(v28 - 2);
              if (v30 != -1)
              {
                (off_2672928[v30])(&v44, v28 - 168);
              }

              *(v28 - 2) = -1;
              v28 -= 168;
            }

            while (v29 != v27);
            v24 = *v26;
          }

          *(v9 - 8) = v27;
          operator delete(v24);
        }

        v9 -= 9;
      }

      while (v26 != v10);
      *(v8 + 208) = v10;
LABEL_4:
      v2 = v42;
LABEL_5:
      v3 += 3;
    }

    while (v3 != v2);
  }

  v39 = *(a2 + 8);
  v38 = *(a2 + 16);
  if (v39 != v38)
  {
    for (i = (v39 + 296); *(i - 12) != *(i - 11); i = (i + 296))
    {
      v13 = i == v38;
      if (v13)
      {
        v39 = *(a2 + 16);
        return sub_C18160(a2 + 8, v39, v38);
      }
    }

    v39 = (i - 296);
    if ((i - 296) != v38 && i != v38)
    {
      do
      {
        if (*(i + 25) != *(i + 26))
        {
          sub_BA9EF8(v39, i);
          v39 = (v39 + 296);
        }

        i = (i + 296);
      }

      while (i != v38);
      v38 = *(a2 + 16);
    }
  }

  return sub_C18160(a2 + 8, v39, v38);
}

void sub_C226EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 8);
  v5 = v4 + 296 * a3;
  v6 = *(v5 + 200);
  v7 = *(v5 + 208);
  if (v6 == v7)
  {
    return;
  }

  v8 = v4 + 296 * a4;
  if (v7 - v6 != *(v8 + 208) - *(v8 + 200))
  {
    return;
  }

  if (*(a1 + 4) == 1 && ((*(v5 + 15) & 1) != 0 || *(v8 + 15) == 1) && *(v5 + 20) != *(v8 + 20) && *(v5 + 32) != *(v8 + 32))
  {
    return;
  }

  if (*(a1 + 5) == 1)
  {
    v9 = *(v5 + 13) == 1 || *(v8 + 13) == 1;
    if (v9 && *(v5 + 20) != *(v8 + 20) && *(v5 + 32) != *(v8 + 32))
    {
      return;
    }
  }

  if (*(a1 + 1) != 1)
  {
    goto LABEL_39;
  }

  v10 = *(a1 + 24);
  v11 = *(v10 + 24 * a3);
  v12 = *(v10 + 24 * a3 + 8);
  v13 = 1.0;
  v14 = v12 - v11;
  if (v12 == v11)
  {
    goto LABEL_39;
  }

  v15 = 0;
  v16 = 0xAAAAAAAAAAAAAAABLL * (v14 >> 3);
  v17 = *(v10 + 24 * a4);
  while (2)
  {
    v19 = (v11 + 24 * v15);
    v20 = *v19;
    v21 = v19[1];
    if (v20 == v21)
    {
      goto LABEL_23;
    }

    v22 = (v17 + 24 * v15);
    v23 = *v22;
    v24 = v22[1];
    if (v23 == v24)
    {
      goto LABEL_23;
    }

    v25 = 0;
    v26 = v20;
    v27 = v23;
    do
    {
      v28 = *(v26 + 1);
      v29 = HIDWORD(*v27);
      v9 = v28 == v29;
      v30 = v28 < v29;
      if (v9)
      {
        v30 = *v26 < *v27;
      }

      if (v30)
      {
        v26 += 8;
        if (v26 == v21)
        {
          break;
        }

        continue;
      }

      v31 = *v27 < *v26;
      v9 = v29 == HIDWORD(*v26);
      v32 = v29 < HIDWORD(*v26);
      if (!v9)
      {
        v31 = v32;
      }

      if (!v31)
      {
        ++v25;
        v26 += 8;
      }

      ++v27;
      if (v26 == v21)
      {
        break;
      }
    }

    while (v27 != v24);
    v18 = v25 / (v24 - v23);
    if (v25 / ((v21 - v20) >> 3) >= v18)
    {
      v18 = v25 / ((v21 - v20) >> 3);
    }

    if (v18 < v13)
    {
      v13 = v18;
    }

LABEL_23:
    if (++v15 != v16)
    {
      continue;
    }

    break;
  }

LABEL_39:
  if (*(a1 + 2) == 1)
  {
    sub_C22928(a1, (*(a1 + 48) + 24 * a3), (*(a1 + 48) + 24 * a4));
  }
}

double sub_C22928(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = v4 - *a2;
  if (v4 == *a2)
  {
    return 1.0;
  }

  v6 = 0;
  v7 = *a3;
  result = 1.0;
  while (2)
  {
    v10 = *(v3 + 24 * v6 + 8);
    v11 = *(v3 + 24 * v6);
    if (v11 == v10)
    {
      goto LABEL_7;
    }

    v12 = *(v7 + 24 * v6 + 8);
    v13 = *(v7 + 24 * v6);
    if (v13 == v12)
    {
      goto LABEL_7;
    }

    v14 = 0;
    v15 = *(v3 + 24 * v6);
    v16 = *(v7 + 24 * v6);
    do
    {
      v17 = *v16;
      v18 = v15[1];
      v19 = HIDWORD(*v16);
      v20 = v18 == v19;
      v21 = v18 < v19;
      if (v20)
      {
        v21 = *v15 < *v16;
      }

      if (v21)
      {
LABEL_14:
        v15 += 3;
        if (v15 == v10)
        {
          break;
        }

        continue;
      }

      v22 = HIDWORD(*v15);
      v23 = v17 < *v15;
      if (v19 != v22)
      {
        v23 = v19 < v22;
      }

      if (!v23)
      {
        v24 = v15[2];
        v25 = *(v16 + 2);
        if (v24 < v25)
        {
          goto LABEL_14;
        }

        v26 = *v15 >= v17;
        if (v19 != v22)
        {
          v26 = v22 >= v19;
        }

        if (!v26 || v25 >= v24)
        {
          ++v14;
          v15 += 3;
        }
      }

      v16 = (v16 + 12);
      if (v15 == v10)
      {
        break;
      }
    }

    while (v16 != v12);
    v9 = v14 / (0xAAAAAAAAAAAAAAABLL * ((v12 - v13) >> 2));
    if (v14 / (0xAAAAAAAAAAAAAAABLL * (v10 - v11)) >= v9)
    {
      v9 = v14 / (0xAAAAAAAAAAAAAAABLL * (v10 - v11));
    }

    if (v9 < result)
    {
      result = v9;
    }

LABEL_7:
    if (++v6 != 0xAAAAAAAAAAAAAAABLL * (v5 >> 3))
    {
      continue;
    }

    return result;
  }
}

unint64_t sub_C22A9C(unint64_t result, char *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = &a2[-v9];
    v13 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 2);
    if (v13 > 2)
    {
      switch(v13)
      {
        case 3uLL:

          return sub_C23118(v8, (v8 + 12), a2 - 3);
        case 4uLL:

          return sub_C23384(v8, (v8 + 12), (v8 + 24), a2 - 3);
        case 5uLL:

          return sub_C23534(v8, (v8 + 12), (v8 + 24), (v8 + 36), a2 - 3);
      }
    }

    else
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v29 = *(a2 - 2);
        v28 = (a2 - 12);
        v30 = HIDWORD(*v8);
        v31 = *(a2 - 3) < *v8;
        v32 = v29 == v30;
        v33 = v29 < v30;
        if (!v32)
        {
          v31 = v33;
        }

        if (v31)
        {
          goto LABEL_35;
        }

        v61 = *v8 < *v28;
        v32 = v30 == HIDWORD(*v28);
        v62 = v30 < HIDWORD(*v28);
        if (!v32)
        {
          v61 = v62;
        }

        if (!v61 && *(a2 - 1) < *(v8 + 8))
        {
LABEL_35:
          v83 = *(v8 + 8);
          v81 = *v8;
          v34 = *v28;
          *(v8 + 8) = *(a2 - 1);
          *v8 = v34;
          *v28 = v81;
          *(a2 - 1) = v83;
        }

        return result;
      }
    }

    if (v12 <= 287)
    {
      break;
    }

    if (v10 == 1)
    {
      if (v8 != a2)
      {
        v56 = (v13 - 2) >> 1;
        v57 = v56 + 1;
        v58 = (v8 + 12 * v56);
        do
        {
          sub_C23F50(v8, a3, 0xAAAAAAAAAAAAAAABLL * (v12 >> 2), v58);
          v58 = (v58 - 12);
          --v57;
        }

        while (v57);
        v59 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 2);
        do
        {
          result = sub_C2415C(v8, a2, a3, v59);
          a2 -= 12;
        }

        while (v59-- > 2);
      }

      return result;
    }

    v14 = v13 >> 1;
    v15 = v8 + 12 * (v13 >> 1);
    if (v12 < 0x601)
    {
      sub_C23118(v15, v8, a2 - 3);
      if (a5)
      {
        goto LABEL_24;
      }
    }

    else
    {
      sub_C23118(v8, v15, a2 - 3);
      v16 = 12 * v14;
      v17 = (12 * v14 + v8 - 12);
      sub_C23118((v8 + 12), v17, a2 - 6);
      sub_C23118((v8 + 24), (v8 + 12 + v16), a2 - 9);
      sub_C23118(v17, v15, (v8 + 12 + v16));
      v82 = *(v8 + 8);
      v80 = *v8;
      v18 = *v15;
      *(v8 + 8) = *(v15 + 8);
      *v8 = v18;
      *(v15 + 8) = v82;
      *v15 = v80;
      if (a5)
      {
        goto LABEL_24;
      }
    }

    v19 = *(v8 - 8);
    v20 = HIDWORD(*v8);
    v32 = v19 == v20;
    v21 = v19 < v20;
    if (v32)
    {
      v21 = *(v8 - 12) < *v8;
    }

    if (!v21)
    {
      v22 = *(v8 - 12);
      v23 = *v8 < v22;
      v32 = v20 == HIDWORD(v22);
      v24 = v20 < HIDWORD(v22);
      if (!v32)
      {
        v23 = v24;
      }

      if (v23 || *(v8 - 4) >= *(v8 + 8))
      {
        result = sub_C23768(v8, a2);
        v9 = result;
        goto LABEL_29;
      }
    }

LABEL_24:
    v25 = sub_C239F0(v8, a2);
    if ((v26 & 1) == 0)
    {
      goto LABEL_27;
    }

    v27 = sub_C23C64(v8, v25);
    v9 = (v25 + 12);
    result = sub_C23C64((v25 + 12), a2);
    if (result)
    {
      a4 = -v11;
      a2 = v25;
      if (v27)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v27)
    {
LABEL_27:
      result = sub_C22A9C(v8, v25, a3, -v11, a5 & 1);
      v9 = (v25 + 12);
LABEL_29:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  v35 = (v8 + 12);
  v37 = v8 == a2 || v35 == a2;
  if (a5)
  {
    if (v37)
    {
      return result;
    }

    v38 = 0;
    v39 = v8;
LABEL_57:
    v41 = v39;
    v39 = v35;
    v42 = *(v41 + 16);
    v43 = HIDWORD(*v41);
    v32 = v42 == v43;
    v44 = v42 < v43;
    if (v32)
    {
      v45 = *(v41 + 12) < *v41;
    }

    else
    {
      v45 = v44;
    }

    v46 = *(v41 + 12);
    v47 = HIDWORD(v46);
    if (v45)
    {
      v48 = *(v41 + 20);
    }

    else
    {
      v54 = *v41 < v46;
      v32 = v43 == v47;
      v55 = v43 < v47;
      if (!v32)
      {
        v54 = v55;
      }

      if (v54)
      {
        goto LABEL_56;
      }

      v48 = *(v41 + 20);
      if (v48 >= *(v41 + 8))
      {
        goto LABEL_56;
      }
    }

    *v39 = *v41;
    *(v39 + 8) = *(v41 + 8);
    v40 = v8;
    if (v41 == v8)
    {
      goto LABEL_55;
    }

    v49 = v38;
    while (1)
    {
      v50 = v8 + v49;
      v51 = *(v8 + v49 - 12);
      result = HIDWORD(v51);
      v52 = v46 < v51;
      if (v47 != HIDWORD(v51))
      {
        v52 = v47 < HIDWORD(v51);
      }

      if (!v52)
      {
        v53 = v46 > v51;
        if (v47 != result)
        {
          v53 = result < v47;
        }

        if (v53)
        {
          v40 = v8 + v49;
LABEL_55:
          *v40 = v46;
          *(v40 + 8) = v48;
LABEL_56:
          v35 = (v39 + 12);
          v38 += 12;
          if ((v39 + 12) == a2)
          {
            return result;
          }

          goto LABEL_57;
        }

        if (v48 >= *(v50 - 4))
        {
          v40 = v41;
          goto LABEL_55;
        }
      }

      v41 -= 12;
      *v50 = *(v8 + v49 - 12);
      *(v50 + 8) = *(v8 + v49 - 4);
      v49 -= 12;
      if (!v49)
      {
        v40 = v8;
        goto LABEL_55;
      }
    }
  }

  if (!v37)
  {
    do
    {
      v63 = v8;
      v8 = v35;
      v64 = *(v63 + 16);
      v65 = HIDWORD(*v63);
      v32 = v64 == v65;
      v66 = v64 < v65;
      if (v32)
      {
        v67 = *(v63 + 12) < *v63;
      }

      else
      {
        v67 = v66;
      }

      v68 = *(v63 + 12);
      v69 = HIDWORD(v68);
      if (v67)
      {
        v70 = *(v63 + 20);
      }

      else
      {
        v78 = *v63 < v68;
        v32 = v65 == v69;
        v79 = v65 < v69;
        if (!v32)
        {
          v78 = v79;
        }

        if (v78)
        {
          goto LABEL_93;
        }

        v70 = *(v63 + 20);
        if (v70 >= *(v63 + 8))
        {
          goto LABEL_93;
        }
      }

      while (1)
      {
        v71 = v63;
        *(v63 + 12) = *v63;
        *(v63 + 20) = *(v63 + 8);
        v73 = *(v63 - 12);
        v63 -= 12;
        v72 = v73;
        v74 = HIDWORD(v73);
        v75 = v68 < v73;
        v76 = v69 < HIDWORD(v73);
        if (v69 != HIDWORD(v73))
        {
          v75 = v76;
        }

        if (!v75)
        {
          v77 = v68 > v72;
          if (v69 != v74)
          {
            v77 = v74 < v69;
          }

          if (v77 || v70 >= *(v71 - 4))
          {
            break;
          }
        }
      }

      *v71 = v68;
      *(v71 + 8) = v70;
LABEL_93:
      v35 = (v8 + 12);
    }

    while ((v8 + 12) != a2);
  }

  return result;
}

uint64_t sub_C23118(uint64_t *a1, _DWORD *a2, unsigned int *a3)
{
  v3 = a2[1];
  v4 = HIDWORD(*a1);
  v5 = v3 == v4;
  v6 = v3 < v4;
  if (v5)
  {
    v7 = *a2 < *a1;
  }

  else
  {
    v7 = v6;
  }

  v8 = *a2;
  v9 = HIDWORD(*a2);
  if (v7)
  {
    goto LABEL_5;
  }

  v16 = *a1 < v8;
  v5 = v4 == v9;
  v17 = v4 < v9;
  if (!v5)
  {
    v16 = v17;
  }

  if (!v16 && a2[2] < *(a1 + 2))
  {
LABEL_5:
    v10 = a3[1];
    v5 = v10 == v9;
    v11 = v10 < v9;
    if (v5)
    {
      v11 = *a3 < v8;
    }

    if (v11)
    {
      goto LABEL_8;
    }

    v29 = v8 < *a3;
    v5 = v9 == HIDWORD(*a3);
    v30 = v9 < HIDWORD(*a3);
    if (v5)
    {
      v30 = v29;
    }

    if (!v30 && a3[2] < a2[2])
    {
LABEL_8:
      v12 = *(a1 + 2);
      v13 = *a1;
      v14 = a3[2];
      *a1 = *a3;
      *(a1 + 2) = v14;
      *a3 = v13;
      a3[2] = v12;
      return 1;
    }

    v31 = *(a1 + 2);
    v32 = *a1;
    v33 = a2[2];
    *a1 = *a2;
    *(a1 + 2) = v33;
    *a2 = v32;
    a2[2] = v31;
    v34 = v32;
    v35 = a3[1];
    v36 = HIDWORD(v32);
    v5 = v35 == v36;
    v37 = v35 < v36;
    if (v5)
    {
      v37 = *a3 < v34;
    }

    if (!v37)
    {
      v45 = v34 < *a3;
      v5 = v36 == HIDWORD(*a3);
      v46 = v36 < HIDWORD(*a3);
      if (!v5)
      {
        v45 = v46;
      }

      if (v45 || a3[2] >= a2[2])
      {
        return 1;
      }
    }

    v38 = a2[2];
    v39 = *a2;
    v40 = a3[2];
    *a2 = *a3;
    a2[2] = v40;
    *a3 = v39;
    a3[2] = v38;
    return 1;
  }

  else
  {
    v18 = a3[1];
    v5 = v18 == v9;
    v19 = v18 < v9;
    if (v5)
    {
      v19 = *a3 < v8;
    }

    if (v19)
    {
      goto LABEL_16;
    }

    v41 = v8 < *a3;
    v5 = v9 == HIDWORD(*a3);
    v42 = v9 < HIDWORD(*a3);
    if (v5)
    {
      v42 = v41;
    }

    if (v42)
    {
      return 0;
    }

    else
    {
      if (a3[2] < a2[2])
      {
LABEL_16:
        v20 = a2[2];
        v21 = *a2;
        v22 = a3[2];
        *a2 = *a3;
        a2[2] = v22;
        *a3 = v21;
        a3[2] = v20;
        v23 = a2[1];
        v24 = HIDWORD(*a1);
        v5 = v23 == v24;
        v25 = v23 < v24;
        if (v5)
        {
          v25 = *a2 < *a1;
        }

        if (v25)
        {
          goto LABEL_19;
        }

        v43 = *a1 < *a2;
        v5 = v24 == HIDWORD(*a2);
        v44 = v24 < HIDWORD(*a2);
        if (!v5)
        {
          v43 = v44;
        }

        if (!v43 && a2[2] < *(a1 + 2))
        {
LABEL_19:
          v26 = *(a1 + 2);
          v27 = *a1;
          v28 = a2[2];
          *a1 = *a2;
          *(a1 + 2) = v28;
          *a2 = v27;
          a2[2] = v26;
        }

        return 1;
      }

      return 0;
    }
  }
}

uint64_t sub_C23384(uint64_t a1, _DWORD *a2, unsigned int *a3, _DWORD *a4)
{
  result = sub_C23118(a1, a2, a3);
  v9 = a4[1];
  v10 = HIDWORD(*a3);
  v11 = v9 == v10;
  v12 = v9 < v10;
  if (v11)
  {
    v12 = *a4 < *a3;
  }

  if (v12)
  {
    goto LABEL_4;
  }

  v28 = *a3 < *a4;
  v11 = v10 == HIDWORD(*a4);
  v29 = v10 < HIDWORD(*a4);
  if (!v11)
  {
    v28 = v29;
  }

  if (!v28 && a4[2] < a3[2])
  {
LABEL_4:
    v13 = a3[2];
    v14 = *a3;
    v15 = a4[2];
    *a3 = *a4;
    a3[2] = v15;
    *a4 = v14;
    a4[2] = v13;
    v16 = a3[1];
    v17 = HIDWORD(*a2);
    v11 = v16 == v17;
    v18 = v16 < v17;
    if (v11)
    {
      v18 = *a3 < *a2;
    }

    if (v18)
    {
      goto LABEL_7;
    }

    v30 = *a2 < *a3;
    v11 = v17 == HIDWORD(*a3);
    v31 = v17 < HIDWORD(*a3);
    if (!v11)
    {
      v30 = v31;
    }

    if (!v30 && a3[2] < a2[2])
    {
LABEL_7:
      v19 = a2[2];
      v20 = *a2;
      v21 = a3[2];
      *a2 = *a3;
      a2[2] = v21;
      *a3 = v20;
      a3[2] = v19;
      v22 = a2[1];
      v23 = HIDWORD(*a1);
      v11 = v22 == v23;
      v24 = v22 < v23;
      if (v11)
      {
        v24 = *a2 < *a1;
      }

      if (v24)
      {
        goto LABEL_10;
      }

      v32 = *a1 < *a2;
      v11 = v23 == HIDWORD(*a2);
      v33 = v23 < HIDWORD(*a2);
      if (!v11)
      {
        v32 = v33;
      }

      if (!v32 && a2[2] < *(a1 + 8))
      {
LABEL_10:
        v25 = *(a1 + 8);
        v26 = *a1;
        v27 = a2[2];
        *a1 = *a2;
        *(a1 + 8) = v27;
        *a2 = v26;
        a2[2] = v25;
      }
    }
  }

  return result;
}

uint64_t sub_C23534(uint64_t *a1, _DWORD *a2, unsigned int *a3, _DWORD *a4, _DWORD *a5)
{
  result = sub_C23384(a1, a2, a3, a4);
  v11 = a5[1];
  v12 = HIDWORD(*a4);
  v13 = v11 == v12;
  v14 = v11 < v12;
  if (v13)
  {
    v14 = *a5 < *a4;
  }

  if (v14)
  {
    goto LABEL_4;
  }

  v36 = *a4 < *a5;
  v13 = v12 == HIDWORD(*a5);
  v37 = v12 < HIDWORD(*a5);
  if (!v13)
  {
    v36 = v37;
  }

  if (!v36 && a5[2] < a4[2])
  {
LABEL_4:
    v15 = a4[2];
    v16 = *a4;
    v17 = a5[2];
    *a4 = *a5;
    a4[2] = v17;
    *a5 = v16;
    a5[2] = v15;
    v18 = a4[1];
    v19 = HIDWORD(*a3);
    v13 = v18 == v19;
    v20 = v18 < v19;
    if (v13)
    {
      v20 = *a4 < *a3;
    }

    if (v20)
    {
      goto LABEL_7;
    }

    v38 = *a3 < *a4;
    v13 = v19 == HIDWORD(*a4);
    v39 = v19 < HIDWORD(*a4);
    if (!v13)
    {
      v38 = v39;
    }

    if (!v38 && a4[2] < a3[2])
    {
LABEL_7:
      v21 = a3[2];
      v22 = *a3;
      v23 = a4[2];
      *a3 = *a4;
      a3[2] = v23;
      *a4 = v22;
      a4[2] = v21;
      v24 = a3[1];
      v25 = HIDWORD(*a2);
      v13 = v24 == v25;
      v26 = v24 < v25;
      if (v13)
      {
        v26 = *a3 < *a2;
      }

      if (v26)
      {
        goto LABEL_10;
      }

      v40 = *a2 < *a3;
      v13 = v25 == HIDWORD(*a3);
      v41 = v25 < HIDWORD(*a3);
      if (!v13)
      {
        v40 = v41;
      }

      if (!v40 && a3[2] < a2[2])
      {
LABEL_10:
        v27 = a2[2];
        v28 = *a2;
        v29 = a3[2];
        *a2 = *a3;
        a2[2] = v29;
        *a3 = v28;
        a3[2] = v27;
        v30 = a2[1];
        v31 = HIDWORD(*a1);
        v13 = v30 == v31;
        v32 = v30 < v31;
        if (v13)
        {
          v32 = *a2 < *a1;
        }

        if (v32)
        {
          goto LABEL_13;
        }

        v42 = *a1 < *a2;
        v13 = v31 == HIDWORD(*a2);
        v43 = v31 < HIDWORD(*a2);
        if (!v13)
        {
          v42 = v43;
        }

        if (!v42 && a2[2] < *(a1 + 2))
        {
LABEL_13:
          v33 = *(a1 + 2);
          v34 = *a1;
          v35 = a2[2];
          *a1 = *a2;
          *(a1 + 2) = v35;
          *a2 = v34;
          a2[2] = v33;
        }
      }
    }
  }

  return result;
}

char *sub_C23768(uint64_t *a1, char *k)
{
  v2 = *a1;
  v3 = HIDWORD(*a1);
  v4 = *(a1 + 2);
  v5 = *(k - 12);
  v6 = HIDWORD(v5);
  v7 = *a1 < v5;
  if (v3 != HIDWORD(v5))
  {
    v7 = v3 < HIDWORD(v5);
  }

  if (v7 || (v3 != v6 ? (v16 = v6 < v3) : (v16 = v5 < v2), !v16 && v4 < *(k - 1)))
  {
    j = a1 + 12;
    v9 = *(a1 + 12);
    for (i = HIDWORD(v9); ; i = HIDWORD(v11))
    {
      v12 = v2 < v9;
      if (v3 != i)
      {
        v12 = v3 < i;
      }

      if (v12)
      {
        break;
      }

      v13 = v9 < v2;
      v14 = i == v3;
      v15 = i < v3;
      if (!v14)
      {
        v13 = v15;
      }

      if (!v13 && v4 < *(j + 2))
      {
        break;
      }

      v11 = *(j + 12);
      j += 12;
      LODWORD(v9) = v11;
    }
  }

  else
  {
    for (j = a1 + 12; j < k; j += 12)
    {
      v17 = HIDWORD(*j);
      v18 = v2 < *j;
      if (v3 != v17)
      {
        v18 = v3 < v17;
      }

      if (v18)
      {
        break;
      }

      v19 = *j < v2;
      if (v3 != v17)
      {
        v19 = v17 < v3;
      }

      if (!v19 && v4 < *(j + 2))
      {
        break;
      }
    }
  }

  if (j < k)
  {
    for (k -= 12; ; k -= 12)
    {
      v21 = HIDWORD(v5);
      v22 = v2 < v5;
      if (v3 != HIDWORD(v5))
      {
        v22 = v3 < HIDWORD(v5);
      }

      if (!v22)
      {
        v23 = v5 < v2;
        if (v3 != v21)
        {
          v23 = v21 < v3;
        }

        if (v23 || v4 >= *(k + 2))
        {
          break;
        }
      }

      v20 = *(k - 12);
      v5 = v20;
    }
  }

  while (j < k)
  {
    v44 = *(j + 2);
    v43 = *j;
    v24 = *k;
    *(j + 2) = *(k + 2);
    *j = v24;
    *(k + 2) = v44;
    *k = v43;
    v26 = *(j + 12);
    j += 12;
    v25 = v26;
    v27 = HIDWORD(v26);
    v28 = v2 < v26;
    v29 = v3 < HIDWORD(v26);
    if (v3 != HIDWORD(v26))
    {
      v28 = v29;
    }

    if (!v28)
    {
      do
      {
        v33 = v25 < v2;
        v14 = v27 == v3;
        v34 = v27 < v3;
        if (!v14)
        {
          v33 = v34;
        }

        if (!v33 && v4 < *(j + 2))
        {
          break;
        }

        v30 = *(j + 12);
        j += 12;
        v25 = v30;
        v27 = HIDWORD(v30);
        v31 = v2 < v30;
        v32 = v3 < HIDWORD(v30);
        if (v3 != HIDWORD(v30))
        {
          v31 = v32;
        }
      }

      while (!v31);
    }

    while (1)
    {
      v36 = *(k - 12);
      k -= 12;
      v35 = v36;
      v37 = HIDWORD(v36);
      v38 = v2 < v36;
      v39 = v3 < HIDWORD(v36);
      if (v3 != HIDWORD(v36))
      {
        v38 = v39;
      }

      if (!v38)
      {
        v40 = v35 < v2;
        if (v3 != v37)
        {
          v40 = v37 < v3;
        }

        if (v40 || v4 >= *(k + 2))
        {
          break;
        }
      }
    }
  }

  if (j - 12 != a1)
  {
    v41 = *(j - 12);
    *(a1 + 2) = *(j - 1);
    *a1 = v41;
  }

  *(j - 12) = v2;
  *(j - 1) = v4;
  return j;
}

char *sub_C239F0(uint64_t *a1, unint64_t a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *(a1 + 2);
  v5 = HIDWORD(*a1);
  while (1)
  {
    v6 = a1 + v2;
    v7 = *(a1 + v2 + 16);
    v8 = v7 == v5;
    v9 = v7 < v5;
    if (v8)
    {
      v9 = *(a1 + v2 + 12) < v3;
    }

    if (!v9)
    {
      v10 = *(v6 + 12);
      v11 = v3 < v10;
      v8 = v5 == HIDWORD(v10);
      v12 = v5 < HIDWORD(v10);
      if (v8)
      {
        v12 = v11;
      }

      if (v12 || *(v6 + 5) >= v4)
      {
        break;
      }
    }

    v2 += 12;
  }

  v13 = a1 + v2 + 12;
  if (v2)
  {
    v14 = *(a2 - 12);
    v15 = *(a2 - 8);
    a2 -= 12;
    v16 = v14 < v3;
    v8 = v15 == v5;
    v17 = v15 < v5;
    if (!v8)
    {
      v16 = v17;
    }

    if (!v16)
    {
      do
      {
        v22 = v5 < HIDWORD(*a2);
        if (v5 == HIDWORD(*a2))
        {
          v22 = v3 < *a2;
        }

        if (!v22 && *(a2 + 8) < v4)
        {
          break;
        }

        v18 = *(a2 - 12);
        v19 = *(a2 - 8);
        a2 -= 12;
        v20 = v18 < v3;
        v8 = v19 == v5;
        v21 = v19 < v5;
        if (!v8)
        {
          v20 = v21;
        }
      }

      while (!v20);
    }
  }

  else
  {
LABEL_35:
    if (v13 < a2)
    {
      do
      {
        v23 = *(a2 - 12);
        v24 = *(a2 - 8);
        a2 -= 12;
        v25 = v23 < v3;
        v8 = v24 == v5;
        v26 = v24 < v5;
        if (!v8)
        {
          v25 = v26;
        }

        if (v25)
        {
          break;
        }

        v27 = v5 < HIDWORD(*a2);
        if (v5 == HIDWORD(*a2))
        {
          v27 = v3 < *a2;
        }

        if (v27)
        {
          goto LABEL_35;
        }
      }

      while (*(a2 + 8) >= v4 && v13 < a2);
    }
  }

  v29 = v13;
  if (v13 < a2)
  {
    v30 = a2;
    do
    {
      v49 = *(v29 + 2);
      v48 = *v29;
      v31 = *v30;
      *(v29 + 2) = *(v30 + 8);
      *v29 = v31;
      *(v30 + 8) = v49;
      *v30 = v48;
      v32 = v29 + 12;
      while (1)
      {
        v29 = v32;
        v33 = *(v32 + 1);
        v34 = *v29 < v3;
        v8 = v33 == v5;
        v35 = v33 < v5;
        if (!v8)
        {
          v34 = v35;
        }

        v32 = v29 + 12;
        if (!v34)
        {
          v36 = v5 < HIDWORD(*v29);
          if (v5 == HIDWORD(*v29))
          {
            v36 = v3 < *v29;
          }

          if (v36 || *(v29 + 2) >= v4)
          {
            break;
          }
        }
      }

      v37 = *(v30 - 12);
      v38 = *(v30 - 8);
      v30 -= 12;
      v39 = v37 < v3;
      v8 = v38 == v5;
      v40 = v38 < v5;
      if (!v8)
      {
        v39 = v40;
      }

      if (!v39)
      {
        do
        {
          v45 = v5 < HIDWORD(*v30);
          if (v5 == HIDWORD(*v30))
          {
            v45 = v3 < *v30;
          }

          if (!v45 && *(v30 + 8) < v4)
          {
            break;
          }

          v41 = *(v30 - 12);
          v42 = *(v30 - 8);
          v30 -= 12;
          v43 = v41 < v3;
          v8 = v42 == v5;
          v44 = v42 < v5;
          if (!v8)
          {
            v43 = v44;
          }
        }

        while (!v43);
      }
    }

    while (v29 < v30);
  }

  if (v29 - 12 != a1)
  {
    v46 = *(v29 - 12);
    *(a1 + 2) = *(v29 - 1);
    *a1 = v46;
  }

  *(v29 - 12) = v3;
  *(v29 - 1) = v4;
  return v29 - 12;
}

BOOL sub_C23C64(uint64_t a1, _DWORD *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 2);
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        sub_C23118(a1, (a1 + 12), a2 - 3);
        return 1;
      case 4:
        sub_C23384(a1, (a1 + 12), (a1 + 24), a2 - 3);
        return 1;
      case 5:
        sub_C23534(a1, (a1 + 12), (a1 + 24), (a1 + 36), a2 - 3);
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
      v3 = (a2 - 3);
      v5 = HIDWORD(*a1);
      v6 = *(a2 - 3) < *a1;
      v7 = v4 == v5;
      v8 = v4 < v5;
      if (!v7)
      {
        v6 = v8;
      }

      if (v6)
      {
        goto LABEL_7;
      }

      v34 = *a1 < *v3;
      v7 = v5 == HIDWORD(*v3);
      v35 = v5 < HIDWORD(*v3);
      if (!v7)
      {
        v34 = v35;
      }

      if (!v34 && *(a2 - 1) < *(a1 + 8))
      {
LABEL_7:
        v9 = *(a1 + 8);
        v10 = *a1;
        v11 = *(a2 - 1);
        *a1 = *v3;
        *(a1 + 8) = v11;
        *v3 = v10;
        *(a2 - 1) = v9;
        return 1;
      }

      return 1;
    }
  }

  v13 = a1 + 24;
  sub_C23118(a1, (a1 + 12), (a1 + 24));
  v16 = (a1 + 36);
  if ((a1 + 36) == a2)
  {
    return 1;
  }

  v17 = 0;
  v18 = 0;
  while (2)
  {
    v19 = v16[1];
    v20 = HIDWORD(*v13);
    v7 = v19 == v20;
    v21 = v19 < v20;
    if (v7)
    {
      v22 = *v16 < *v13;
    }

    else
    {
      v22 = v21;
    }

    v23 = *v16;
    v24 = HIDWORD(*v16);
    if (v22)
    {
      v25 = v16[2];
    }

    else
    {
      v32 = *v13 < v23;
      v7 = v20 == v24;
      v33 = v20 < v24;
      if (!v7)
      {
        v32 = v33;
      }

      if (v32)
      {
        goto LABEL_17;
      }

      v25 = v16[2];
      if (v25 >= *(v13 + 8))
      {
        goto LABEL_17;
      }
    }

    *v16 = *v13;
    v16[2] = *(v13 + 8);
    v26 = v17;
    while (1)
    {
      v27 = a1 + v26;
      v28 = *(a1 + v26 + 12);
      v29 = HIDWORD(v28);
      v30 = v23 < v28;
      if (v24 != HIDWORD(v28))
      {
        v30 = v24 < HIDWORD(v28);
      }

      if (!v30)
      {
        break;
      }

LABEL_24:
      v13 -= 12;
      *(v27 + 24) = *(a1 + v26 + 12);
      *(v27 + 32) = *(a1 + v26 + 20);
      v26 -= 12;
      if (v26 == -24)
      {
        v13 = a1;
        goto LABEL_16;
      }
    }

    v31 = v23 > v28;
    if (v24 != v29)
    {
      v31 = v29 < v24;
    }

    if (!v31)
    {
      if (v25 >= *(v27 + 20))
      {
        goto LABEL_16;
      }

      goto LABEL_24;
    }

    v13 = a1 + v26 + 24;
LABEL_16:
    *v13 = v23;
    *(v13 + 8) = v25;
    if (++v18 != 8)
    {
LABEL_17:
      v13 = v16;
      v17 += 12;
      v16 += 3;
      if (v16 == a2)
      {
        return 1;
      }

      continue;
    }

    return v16 + 3 == a2;
  }
}

uint64_t sub_C23F50(uint64_t result, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = (a3 - 2) >> 1;
    if (v4 >= (0xAAAAAAAAAAAAAAABLL * ((a4 - result) >> 2)))
    {
      v5 = (0x5555555555555556 * ((a4 - result) >> 2)) | 1;
      v6 = (result + 12 * v5);
      if (0x5555555555555556 * ((a4 - result) >> 2) + 2 < a3)
      {
        v7 = *(v6 + 12);
        v8 = *(v6 + 1);
        v9 = HIDWORD(v7);
        v10 = v8 == HIDWORD(v7);
        v11 = v8 < HIDWORD(v7);
        if (v10)
        {
          v11 = *v6 < v7;
        }

        if (v11)
        {
          goto LABEL_7;
        }

        v12 = v7 < *v6;
        v10 = v9 == HIDWORD(*v6);
        v13 = v9 < HIDWORD(*v6);
        if (!v10)
        {
          v12 = v13;
        }

        if (!v12 && *(v6 + 2) < *(v6 + 5))
        {
LABEL_7:
          v6 = (v6 + 12);
          v5 = 0x5555555555555556 * ((a4 - result) >> 2) + 2;
        }
      }

      v14 = *a4;
      v15 = *(v6 + 1);
      v16 = HIDWORD(*a4);
      v10 = v15 == v16;
      v17 = v15 < v16;
      if (v10)
      {
        v17 = *v6 < *a4;
      }

      if (!v17)
      {
        v18 = v14 < *v6;
        if (v16 != HIDWORD(*v6))
        {
          v18 = v16 < HIDWORD(*v6);
        }

        v19 = *(a4 + 2);
        if (v18 || *(v6 + 2) >= v19)
        {
          v20 = *v6;
          *(a4 + 2) = *(v6 + 2);
          *a4 = v20;
          if (v4 >= v5)
          {
            while (1)
            {
              v23 = 2 * v5;
              v5 = (2 * v5) | 1;
              v21 = (result + 12 * v5);
              v24 = v23 + 2;
              if (v24 < a3)
              {
                v25 = *(v21 + 12);
                v26 = *(v21 + 1);
                v27 = HIDWORD(v25);
                v10 = v26 == HIDWORD(v25);
                v28 = v26 < HIDWORD(v25);
                if (v10)
                {
                  v28 = *v21 < v25;
                }

                if (v28)
                {
                  goto LABEL_29;
                }

                v29 = v25 < *v21;
                v10 = v27 == HIDWORD(*v21);
                v30 = v27 < HIDWORD(*v21);
                if (!v10)
                {
                  v29 = v30;
                }

                if (!v29 && *(v21 + 2) < *(v21 + 5))
                {
LABEL_29:
                  v21 = (v21 + 12);
                  v5 = v24;
                }
              }

              v31 = *(v21 + 1);
              v10 = v31 == v16;
              v32 = v31 < v16;
              if (v10)
              {
                v32 = *v21 < v14;
              }

              if (v32)
              {
                break;
              }

              v33 = v16 < HIDWORD(*v21);
              if (v16 == HIDWORD(*v21))
              {
                v33 = v14 < *v21;
              }

              if (!v33 && *(v21 + 2) < v19)
              {
                break;
              }

              v22 = *v21;
              *(v6 + 2) = *(v21 + 2);
              *v6 = v22;
              v6 = v21;
              if (v4 < v5)
              {
                goto LABEL_21;
              }
            }
          }

          v21 = v6;
LABEL_21:
          *v21 = v14;
          *(v21 + 2) = v19;
        }
      }
    }
  }

  return result;
}