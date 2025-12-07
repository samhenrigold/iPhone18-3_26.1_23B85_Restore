void sub_A1DB78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23)
{
  if (*(v23 - 73) < 0)
  {
    operator delete(*(v23 - 96));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A1DC30(uint64_t a1)
{
  if ((*(a1 + 151) & 0x80000000) == 0)
  {
    if ((*(a1 + 119) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(*(a1 + 96));
    v2 = *(a1 + 80);
    if (v2 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  operator delete(*(a1 + 128));
  if (*(a1 + 119) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v2 = *(a1 + 80);
  if (v2 != -1)
  {
LABEL_7:
    (off_266FAE8[v2])(&v4, a1 + 48);
  }

LABEL_8:
  *(a1 + 80) = -1;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*a1);
  return a1;
}

BOOL sub_A1DD00(uint64_t a1, uint64_t *a2)
{
  if (*(*(a1 + 112) + 8))
  {
    v2 = *a2;
    if (*(*(a1 + 88) + 1177) >= 0xBu)
    {
      v3 = a2[1];
      if (v2 != v3)
      {
        v4 = *a2;
        while (1)
        {
          v6 = *(v4 + 80);
          if (v6 > 2)
          {
            if (v6 != 3 && v6 != 4)
            {
              goto LABEL_25;
            }

            v5 = *(v4 + 71);
            if ((v5 & 0x80u) != 0)
            {
              v5 = *(v4 + 56);
            }

            if (!v5)
            {
              goto LABEL_25;
            }
          }

          else if (v6 == 1)
          {
            if (*(v4 + 48) == -1)
            {
              goto LABEL_25;
            }
          }

          else
          {
            if (v6 != 2)
            {
              goto LABEL_25;
            }

            v7 = *(v4 + 52) == -1 && *(v4 + 48) == -1;
            if (v7 && *(v4 + 56) == *(v4 + 64))
            {
              goto LABEL_25;
            }
          }

          v4 += 160;
          if (v4 == v3)
          {
            return 0;
          }
        }
      }

      return 0;
    }
  }

  else
  {
    v2 = *a2;
  }

LABEL_25:
  v8 = a2[1];
  if (v2 == v8)
  {
    return 0;
  }

  v9 = v2 + 160;
  do
  {
    v10 = *(v9 - 128);
    if (*(v9 - 113) >= 0)
    {
      v10 = *(v9 - 113);
    }

    result = v10 == 0;
    if (v10)
    {
      v12 = v9 == v8;
    }

    else
    {
      v12 = 1;
    }

    v9 += 160;
  }

  while (!v12);
  return result;
}

BOOL sub_A1DE00(uint64_t a1, void *a2)
{
  v2 = a2[1];
  if (*a2 == v2)
  {
    return 0;
  }

  v3 = *a2 + 160;
  do
  {
    v4 = *(v3 - 128);
    if (*(v3 - 113) >= 0)
    {
      v4 = *(v3 - 113);
    }

    result = v4 == 0;
    if (v4)
    {
      v6 = v3 == v2;
    }

    else
    {
      v6 = 1;
    }

    v3 += 160;
  }

  while (!v6);
  return result;
}

void sub_A1DE44(uint64_t a1@<X0>, const void **a2@<X1>, uint64_t *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t *a7@<X8>)
{
  sub_64B9C4(a7, (*(a1 + 88) + 1177));
  sub_9CBE3C(a5, v73);
  v14 = sub_A1DD00(a1, a3);
  if (*(a4 + 23) >= 0)
  {
    v15 = *(a4 + 23);
  }

  else
  {
    v15 = *(a4 + 1);
  }

  if (v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = v14;
  }

  v60 = v14;
  if (!a6 || v16)
  {
    if ((v74 & 0x80u) == 0)
    {
      v20 = v74;
    }

    else
    {
      v20 = v73[1];
    }

    if (v20 + 1 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v20 + 1 >= 0x17)
    {
      operator new();
    }

    v71 = 0;
    v72 = 0;
    HIBYTE(v72) = v20 + 1;
    v70 = &stru_20;
    if (v20)
    {
      if ((v74 & 0x80u) == 0)
      {
        v46 = v73;
      }

      else
      {
        v46 = v73[0];
      }

      memmove(&v70 + 1, v46, v20);
    }

    *(&v70 + v20 + 1) = 0;
    v17 = v60;
    if (v15)
    {
      v47 = 9;
    }

    else
    {
      v47 = 0;
    }

    v69 = v47;
    v19 = &v67;
    if (v15)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v17 = v14;
    HIBYTE(v72) = 0;
    LOBYTE(v70) = 0;
    if (v15)
    {
      v18 = 9;
    }

    else
    {
      v18 = 0;
    }

    v69 = v18;
    v19 = &v67;
    if (v15)
    {
LABEL_13:
      v19 = (&v68 + 1);
      LOBYTE(v68) = 125;
      v67 = *" {System}";
    }
  }

  *v19 = 0;
  if (v17)
  {
    HIBYTE(v66) = 0;
    LOBYTE(v65[0]) = 0;
    goto LABEL_24;
  }

  std::to_string(v61, 0xCCCCCCCCCCCCCCCDLL * ((a3[1] - *a3) >> 5));
  v21 = std::string::insert(v61, 0, " {MultipleLine", 0xEuLL);
  v22 = *&v21->__r_.__value_.__l.__data_;
  v75.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
  *&v75.__r_.__value_.__l.__data_ = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  v23 = std::string::append(&v75, "}", 1uLL);
  v24 = *&v23->__r_.__value_.__l.__data_;
  v66 = v23->__r_.__value_.__r.__words[2];
  *v65 = v24;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
    if ((v61[23] & 0x80000000) == 0)
    {
      goto LABEL_24;
    }
  }

  else if ((v61[23] & 0x80000000) == 0)
  {
    goto LABEL_24;
  }

  operator delete(*v61);
LABEL_24:
  if (*(a2 + 23) >= 0)
  {
    v25 = *(a2 + 23);
  }

  else
  {
    v25 = a2[1];
  }

  v26 = v69;
  if (v69 >= 0)
  {
    v27 = v69;
  }

  else
  {
    v27 = v68;
  }

  if (v27 + v25 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v27 + v25 > 0x16)
  {
    operator new();
  }

  memset(v61, 0, 24);
  v61[23] = v27 + v25;
  if (v25)
  {
    if (*(a2 + 23) >= 0)
    {
      v28 = a2;
    }

    else
    {
      v28 = *a2;
    }

    memmove(v61, v28, v25);
  }

  if (v27)
  {
    if (v26 >= 0)
    {
      v29 = &v67;
    }

    else
    {
      v29 = v67;
    }

    memmove(&v61[v25], v29, v27);
  }

  v61[v25 + v27] = 0;
  if (v66 >= 0)
  {
    v30 = v65;
  }

  else
  {
    v30 = v65[0];
  }

  if (v66 >= 0)
  {
    v31 = HIBYTE(v66);
  }

  else
  {
    v31 = v65[1];
  }

  v32 = std::string::append(v61, v30, v31);
  v33 = *&v32->__r_.__value_.__l.__data_;
  v75.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
  *&v75.__r_.__value_.__l.__data_ = v33;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  if (v72 >= 0)
  {
    v34 = &v70;
  }

  else
  {
    v34 = v70;
  }

  if (v72 >= 0)
  {
    v35 = HIBYTE(v72);
  }

  else
  {
    v35 = v71;
  }

  v36 = std::string::append(&v75, v34, v35);
  v37 = *&v36->__r_.__value_.__l.__data_;
  v64 = v36->__r_.__value_.__r.__words[2];
  *__p = v37;
  v36->__r_.__value_.__l.__size_ = 0;
  v36->__r_.__value_.__r.__words[2] = 0;
  v36->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
    if ((v61[23] & 0x80000000) == 0)
    {
      goto LABEL_57;
    }
  }

  else if ((v61[23] & 0x80000000) == 0)
  {
    goto LABEL_57;
  }

  operator delete(*v61);
LABEL_57:
  *&v75.__r_.__value_.__l.__data_ = *"{System}";
  v75.__r_.__value_.__r.__words[2] = 0x800000000000000;
  if (*(a4 + 23) < 0)
  {
    sub_325C(&v76, *a4, *(a4 + 1));
  }

  else
  {
    v76 = *a4;
    v77 = *(a4 + 2);
  }

  memset(v61, 0, sizeof(v61));
  v62 = 1065353216;
  sub_2C7D4(v61, &v75, &v75);
  if (SHIBYTE(v77) < 0)
  {
    operator delete(v76);
    if ((SHIBYTE(v75.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_64:
      if (*(*(a1 + 112) + 8))
      {
        goto LABEL_65;
      }

LABEL_90:
      v44 = 0;
      v38 = *a3;
      v45 = a3[1];
      if (*a3 == v45)
      {
        goto LABEL_108;
      }

      goto LABEL_105;
    }
  }

  else if ((SHIBYTE(v75.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_64;
  }

  operator delete(v75.__r_.__value_.__l.__data_);
  if ((*(*(a1 + 112) + 8) & 1) == 0)
  {
    goto LABEL_90;
  }

LABEL_65:
  v38 = *a3;
  if (*(*(a1 + 88) + 1177) < 0xBu)
  {
LABEL_86:
    v44 = 0;
    v45 = a3[1];
    if (v38 == v45)
    {
      goto LABEL_108;
    }

    goto LABEL_105;
  }

  v39 = a3[1];
  if (v38 != v39)
  {
    for (i = *a3; i != v39; i += 160)
    {
      v42 = *(i + 80);
      if (v42 > 2)
      {
        if (v42 != 3 && v42 != 4)
        {
          goto LABEL_86;
        }

        v41 = *(i + 71);
        if ((v41 & 0x80u) != 0)
        {
          v41 = *(i + 56);
        }

        if (!v41)
        {
          goto LABEL_86;
        }
      }

      else if (v42 == 1)
      {
        if (*(i + 48) == -1)
        {
          goto LABEL_86;
        }
      }

      else
      {
        if (v42 != 2)
        {
          goto LABEL_86;
        }

        v43 = *(i + 52) == -1 && *(i + 48) == -1;
        if (v43 && *(i + 56) == *(i + 64))
        {
          goto LABEL_86;
        }
      }
    }
  }

  v44 = 1;
  v45 = a3[1];
  if (v38 != v45)
  {
LABEL_105:
    if (v44)
    {
      sub_64BF94(a7, v38, (v38 + 3));
    }

    if (!v60)
    {
      v51 = v38 + 3;
      do
      {
        v75.__r_.__value_.__r.__words[0] = (v51 - 3);
        v55 = sub_353894(v61, v51 - 3, &unk_229EB70, &v75);
        v56 = v55 + 5;
        if (v51 != (v55 + 5))
        {
          v57 = *(v55 + 63);
          v58 = *(v51 + 23);
          if (v57 < 0)
          {
            if (v58 >= 0)
            {
              v52 = v51;
            }

            else
            {
              v52 = *v51;
            }

            if (v58 >= 0)
            {
              v53 = *(v51 + 23);
            }

            else
            {
              v53 = v51[1];
            }

            sub_13B38(v56, v52, v53);
          }

          else if ((*(v51 + 23) & 0x80) != 0)
          {
            sub_13A68(v56, *v51, v51[1]);
          }

          else
          {
            v59 = *v51;
            v56[2] = v51[2];
            *v56 = v59;
          }
        }

        v54 = v51 + 17;
        v51 += 20;
      }

      while (v54 != v45);
    }
  }

LABEL_108:
  sub_6A5584(__p, v61, *(a1 + 96), 0, &v75);
  sub_64C184(a7, &v75);
  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }

  v48 = *&v61[16];
  if (*&v61[16])
  {
    while (1)
    {
      v49 = *v48;
      if (v48[63] < 0)
      {
        operator delete(*(v48 + 5));
        if ((v48[39] & 0x80000000) == 0)
        {
          goto LABEL_113;
        }

LABEL_116:
        operator delete(*(v48 + 2));
        operator delete(v48);
        v48 = v49;
        if (!v49)
        {
          break;
        }
      }

      else
      {
        if (v48[39] < 0)
        {
          goto LABEL_116;
        }

LABEL_113:
        operator delete(v48);
        v48 = v49;
        if (!v49)
        {
          break;
        }
      }
    }
  }

  v50 = *v61;
  *v61 = 0;
  if (v50)
  {
    operator delete(v50);
  }

  if (SHIBYTE(v64) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v66) & 0x80000000) == 0)
    {
LABEL_121:
      if ((v69 & 0x80000000) == 0)
      {
        goto LABEL_122;
      }

      goto LABEL_127;
    }
  }

  else if ((SHIBYTE(v66) & 0x80000000) == 0)
  {
    goto LABEL_121;
  }

  operator delete(v65[0]);
  if ((v69 & 0x80000000) == 0)
  {
LABEL_122:
    if ((SHIBYTE(v72) & 0x80000000) == 0)
    {
      goto LABEL_123;
    }

    goto LABEL_128;
  }

LABEL_127:
  operator delete(v67);
  if ((SHIBYTE(v72) & 0x80000000) == 0)
  {
LABEL_123:
    if ((v74 & 0x80000000) == 0)
    {
      return;
    }

LABEL_129:
    operator delete(v73[0]);
    return;
  }

LABEL_128:
  operator delete(v70);
  if (v74 < 0)
  {
    goto LABEL_129;
  }
}

void sub_A1E618(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  if (*(v52 - 121) < 0)
  {
    operator delete(*(v52 - 144));
  }

  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a39 < 0)
  {
    operator delete(a34);
    if ((a45 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }
  }

  else if ((a45 & 0x80000000) == 0)
  {
LABEL_9:
    if (a51 < 0)
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  operator delete(a40);
  if (a51 < 0)
  {
LABEL_10:
    operator delete(a46);
    sub_53A868(v51);
    _Unwind_Resume(a1);
  }

LABEL_13:
  sub_53A868(v51);
  _Unwind_Resume(a1);
}

void sub_A1E784(uint64_t a1)
{
  sub_96BE24(a1);

  operator delete();
}

double sub_A1E7BC@<D0>(_OWORD *a1@<X8>)
{
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  a1[5] = 0u;
  return sub_64B998((a1 + 5));
}

void sub_A1E80C(_Unwind_Exception *a1)
{
  sub_1A104((v1 + 48));
  sub_4B98C4((v1 + 24));
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_A1E838(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_325C(a1, *a2, *(a2 + 1));
    if ((*(a2 + 47) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_325C((a1 + 24), *(a2 + 3), *(a2 + 4));
    goto LABEL_6;
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  if (*(a2 + 47) < 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = v5;
LABEL_6:
  sub_55F1E8(a1 + 48, (a2 + 3));
  return a1;
}

void sub_A1E8C0(_Unwind_Exception *exception_object)
{
  if ((*(v1 + 23) & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(*v1);
  _Unwind_Resume(exception_object);
}

uint64_t sub_A1E90C(uint64_t *a1, __int128 *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x199999999999999)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 5);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 5) >= 0xCCCCCCCCCCCCCCLL)
  {
    v5 = 0x199999999999999;
  }

  else
  {
    v5 = v3;
  }

  v14 = a1;
  if (v5)
  {
    if (v5 <= 0x199999999999999)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v11 = 160 * v2;
  v13 = 0;
  sub_A1E838(160 * v2, a2);
  v12 = 160 * v2 + 160;
  sub_A1EA58(a1, &__p);
  v6 = a1[1];
  v8 = v11;
  for (i = v12; v12 != v8; i = v12)
  {
    v12 = i - 160;
    sub_97EDE0(i - 160);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v6;
}

void sub_A1EA44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_A1EBE4(va);
  _Unwind_Resume(a1);
}

void sub_A1EA58(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = 0;
    do
    {
      v10 = v4 + v7;
      v11 = v6 + v7;
      v12 = *(v4 + v7);
      *(v11 + 16) = *(v4 + v7 + 16);
      *v11 = v12;
      *(v10 + 8) = 0;
      *(v10 + 16) = 0;
      *v10 = 0;
      v13 = *(v4 + v7 + 24);
      *(v11 + 40) = *(v4 + v7 + 40);
      *(v11 + 24) = v13;
      *(v10 + 32) = 0;
      *(v10 + 40) = 0;
      *(v10 + 24) = 0;
      *(v6 + v7 + 48) = 0;
      *(v11 + 80) = -1;
      v14 = *(v4 + v7 + 80);
      if (v14 != -1)
      {
        v18 = v6 + v7 + 48;
        (off_266FB10[v14])(&v18, v10 + 48);
        *(v11 + 80) = v14;
      }

      *(v11 + 88) = *(v10 + 88);
      v8 = *(v10 + 96);
      *(v11 + 112) = *(v10 + 112);
      *(v11 + 96) = v8;
      *(v10 + 104) = 0;
      *(v10 + 112) = 0;
      *(v10 + 96) = 0;
      *(v11 + 120) = *(v10 + 120);
      v9 = *(v10 + 128);
      *(v11 + 144) = *(v10 + 144);
      *(v11 + 128) = v9;
      *(v10 + 136) = 0;
      *(v10 + 144) = 0;
      *(v10 + 128) = 0;
      *(v11 + 152) = *(v10 + 152);
      v7 += 160;
    }

    while (v10 + 160 != v5);
    do
    {
      sub_97EDE0(v4);
      v4 += 160;
    }

    while (v4 != v5);
  }

  a2[1] = v6;
  v15 = *a1;
  *a1 = v6;
  a1[1] = v15;
  a2[1] = v15;
  v16 = a1[1];
  a1[1] = a2[2];
  a2[2] = v16;
  v17 = a1[2];
  a1[2] = a2[3];
  a2[3] = v17;
  *a2 = a2[1];
}

uint64_t sub_A1EBE4(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 160;
    sub_97EDE0(i - 160);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_A1ED94(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_A1EDCC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_266FB48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_A1EF90(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_A1EFC8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_266FB98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_A1F18C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_A1F1C4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_266FBE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_A1F388(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_A1F3C0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_266FC38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_A1F584(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_A1F5BC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_266FC88;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_A1F780(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_A1F7B8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_266FCD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_A1F97C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_A1F9B4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_266FD28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_A1FB78(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_A1FBB0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_266FD78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_A1FD74(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_A1FDAC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_266FDC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_A1FF70(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_A1FFA8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_266FE18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_A2016C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_A201A4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_266FE68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_A20368(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_A203A0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_266FEB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_A20564(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_A2059C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_266FF08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_A20760(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_A20798(std::__shared_weak_count *a1)
{
  a1->__vftable = off_266FF58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_A20970(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_A209A8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_266FFA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_A20A24(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_325C(v4, *v6, *(v6 + 1));
      }

      else
      {
        v8 = *v6;
        *(v4 + 16) = *(v6 + 2);
        *v4 = v8;
      }

      if (*(v6 + 47) < 0)
      {
        sub_325C((v4 + 24), *(v6 + 3), *(v6 + 4));
      }

      else
      {
        v7 = *(v6 + 24);
        *(v4 + 40) = *(v6 + 5);
        *(v4 + 24) = v7;
      }

      v6 += 3;
      v4 = v10 + 48;
      v10 += 48;
    }

    while (v6 != a3);
  }

  return v4;
}

void sub_A20B00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 + 23) < 0)
  {
    operator delete(*v9);
  }

  sub_2C19CC(&a9);
  _Unwind_Resume(a1);
}

void sub_A20B24()
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
  xmmword_27B3B28 = 0u;
  unk_27B3B38 = 0u;
  dword_27B3B48 = 1065353216;
  sub_3A9A34(&xmmword_27B3B28, v0, v0);
  sub_3A9A34(&xmmword_27B3B28, v3, v3);
  sub_3A9A34(&xmmword_27B3B28, __p, __p);
  sub_3A9A34(&xmmword_27B3B28, v9, v9);
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
    qword_27B3AD0 = 0;
    qword_27B3AD8 = 0;
    qword_27B3AC8 = 0;
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

void sub_A20DFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B3AE0)
  {
    qword_27B3AE8 = qword_27B3AE0;
    operator delete(qword_27B3AE0);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A20EC0(uint64_t result, void *a2)
{
  v2 = result;
  *result = a2;
  *(result + 56) = 0u;
  v3 = (result + 56);
  *(result + 72) = 0u;
  *(result + 40) = 0u;
  *(result + 24) = 0u;
  *(result + 8) = 0u;
  *(result + 96) = 0u;
  v4 = (result + 96);
  *(result + 88) = 1065353216;
  *(result + 112) = 0u;
  *(result + 128) = 0u;
  if (*a2 == a2[1])
  {
    sub_A20EC0(&v16, a2);
    *&v17 = -1;
    *(&v17 + 1) = -1;
    *(&v16 + 1) = -1;
    v5 = v17;
    *v2 = v16;
    *(v2 + 16) = v5;
    v6 = *(v2 + 32);
    if (v6)
    {
      *(v2 + 40) = v6;
      operator delete(v6);
      *(v2 + 32) = 0;
      *(v2 + 40) = 0;
      *(v2 + 48) = 0;
    }

    *(v2 + 32) = v18;
    *(v2 + 48) = v19;
    v19 = 0;
    v18 = 0uLL;
    if (*(v2 + 80))
    {
      v7 = *(v2 + 72);
      if (v7)
      {
        do
        {
          v8 = *v7;
          operator delete(v7);
          v7 = v8;
        }

        while (v8);
      }

      *(v2 + 72) = 0;
      v9 = *(v2 + 64);
      if (v9)
      {
        bzero(*v3, 8 * v9);
      }

      *(v2 + 80) = 0;
    }

    v10 = v20;
    v20 = 0;
    v11 = *v3;
    *v3 = v10;
    if (v11)
    {
      operator delete(v11);
    }

    v12 = v21;
    v13 = v22;
    *(v2 + 72) = v22;
    *(v2 + 64) = v12;
    v21 = 0;
    v14 = v23;
    *(v2 + 80) = v23;
    *(v2 + 88) = v24;
    if (v14)
    {
      v15 = *(v13 + 8);
      if ((v12 & (v12 - 1)) != 0)
      {
        if (v15 >= v12)
        {
          v15 %= v12;
        }
      }

      else
      {
        v15 &= v12 - 1;
      }

      *(*v3 + v15) = v2 + 72;
      v22 = 0;
      v23 = 0;
    }

    sub_A21D64(v4, &v25);
    sub_98ED24(&v16);
    return v2;
  }

  return result;
}

void sub_A21060(_Unwind_Exception *a1)
{
  sub_A22284(v3);
  sub_11BD8(v2);
  v5 = *(v1 + 32);
  if (v5)
  {
    *(v1 + 40) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

void sub_A2108C(char **a1)
{
  sub_A20EC0(__p, *a1);
  *&v64 = -1;
  *(&v64 + 1) = -1;
  __p[1] = -1;
  if (*a1 == __PAIR128__(-1, __p[0]) && a1[2] == -1)
  {
    v59 = a1[3];
    sub_98ED24(__p);
    if (v59 == -1)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v61 = sub_2D390(exception, "Iterated past end", 0x11uLL);
    }
  }

  else
  {
    sub_98ED24(__p);
  }

  v2 = (a1 + 3);
  v3 = (**a1 + 32 * a1[3]);
  v4 = a1[2];
  v5 = *v3;
  v6 = (*v3 + 104 * v4);
  v8 = a1 + 1;
  v7 = a1[1];
  if (v7 < 0xBC7FD20AC579B779 * ((v6[2] - v6[1]) >> 3) - 1)
  {
    *v8 = v7 + 1;
    return;
  }

  if (v6[7] != -1)
  {
    __p[0] = 0;
    __p[1] = 0;
    *&v64 = 0;
    v10 = a1[4];
    v9 = a1[5];
    if (v9 != v10)
    {
      if (((v9 - v10) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v11 = 0;
    v13 = v6[1];
    for (i = v6[2]; v13 != i; v13 += 5704)
    {
      if (v11 < v64)
      {
        *v11 = v13;
        v11 += 8;
      }

      else
      {
        v14 = __p[0];
        v15 = v11 - __p[0];
        v16 = (v11 - __p[0]) >> 3;
        v17 = v16 + 1;
        if ((v16 + 1) >> 61)
        {
          sub_1794();
        }

        v18 = v64 - __p[0];
        if ((v64 - __p[0]) >> 2 > v17)
        {
          v17 = v18 >> 2;
        }

        if (v18 >= 0x7FFFFFFFFFFFFFF8)
        {
          v19 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v17;
        }

        if (v19)
        {
          if (!(v19 >> 61))
          {
            operator new();
          }

          sub_1808();
        }

        v20 = (v11 - __p[0]) >> 3;
        v21 = (8 * v16);
        v22 = (8 * v16 - 8 * v20);
        *v21 = v13;
        v11 = (v21 + 1);
        memcpy(v22, v14, v15);
        __p[0] = v22;
        __p[1] = v11;
        *&v64 = 0;
        if (v14)
        {
          operator delete(v14);
        }
      }

      __p[1] = v11;
    }

    v62 = v6[7];
    sub_A222FC(a1 + 12, __p, &v62);
    v8 = a1 + 1;
    v2 = (a1 + 3);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v4 = a1[2];
    v5 = *v3;
  }

  if (v4 < 0x4EC4EC4EC4EC4EC5 * ((v3[1] - v5) >> 3) - 1)
  {
    a1[1] = 0;
    a1[2] = (v4 + 1);
    return;
  }

  v23 = a1[17];
  if (!v23)
  {
    goto LABEL_61;
  }

  do
  {
    v24 = a1[16];
    v25 = v23 - 1;
    v26 = &v23[v24 - 1];
    v27 = a1[13];
    v28 = v26 >> 7;
    v29 = v26 & 0x7F;
    v30 = *&v27[8 * (v26 >> 7)] + 32 * v29;
    v31 = *(v30 + 24);
    v32 = a1[8];
    if (!*&v32)
    {
      goto LABEL_74;
    }

    v33 = vcnt_s8(v32);
    v33.i16[0] = vaddlv_u8(v33);
    if (v33.u32[0] > 1uLL)
    {
      v34 = *(v30 + 24);
      if (v31 >= *&v32)
      {
        v34 = v31 % *&v32;
      }
    }

    else
    {
      v34 = (*&v32 - 1) & v31;
    }

    v35 = *&a1[7][8 * v34];
    if (!v35 || (v36 = *v35) == 0)
    {
LABEL_74:
      if (a1 + 4 != v30)
      {
        sub_61532C(a1 + 4, *v30, *(v30 + 8), (*(v30 + 8) - *v30) >> 3);
        v31 = *(v30 + 24);
        v24 = a1[16];
        v23 = a1[17];
        v27 = a1[13];
        v25 = v23 - 1;
        v54 = &v24[(v23 - 1)];
        v28 = v54 >> 7;
        v29 = v54 & 0x7F;
      }

      *v2 = v31;
      v55 = *&v27[8 * v28] + 32 * v29;
      v56 = *v55;
      if (*v55)
      {
        *(v55 + 8) = v56;
        operator delete(v56);
        v27 = a1[13];
        v24 = a1[16];
        v23 = a1[17];
        v25 = v23 - 1;
      }

      v57 = a1[14];
      a1[17] = v25;
      if (v57 == v27)
      {
        v58 = 0;
      }

      else
      {
        v58 = 16 * (v57 - v27) - 1;
      }

      if (v58 - &v23[v24] + 1 >= 0x100)
      {
        operator delete(*(v57 - 1));
        a1[14] -= 8;
      }

      sub_7E6F6C(a1 + 7, v2, v2);
      *v8 = 0;
      v8[1] = 0;
      return;
    }

    if (v33.u32[0] < 2uLL)
    {
      v37 = *&v32 - 1;
      while (1)
      {
        v39 = v36[1];
        if (v31 == v39)
        {
          if (v36[2] == v31)
          {
            goto LABEL_53;
          }
        }

        else if ((v39 & v37) != v34)
        {
          goto LABEL_74;
        }

        v36 = *v36;
        if (!v36)
        {
          goto LABEL_74;
        }
      }
    }

    while (1)
    {
      v38 = v36[1];
      if (v31 == v38)
      {
        break;
      }

      if (v38 >= *&v32)
      {
        v38 %= *&v32;
      }

      if (v38 != v34)
      {
        goto LABEL_74;
      }

LABEL_42:
      v36 = *v36;
      if (!v36)
      {
        goto LABEL_74;
      }
    }

    if (v36[2] != v31)
    {
      goto LABEL_42;
    }

LABEL_53:
    v40 = *v30;
    if (*v30)
    {
      *(v30 + 8) = v40;
      operator delete(v40);
      v27 = a1[13];
      v24 = a1[16];
      v23 = a1[17];
      v25 = v23 - 1;
    }

    v41 = a1[14];
    a1[17] = v25;
    if (v41 == v27)
    {
      v42 = 0;
    }

    else
    {
      v42 = 16 * (v41 - v27) - 1;
    }

    if (v42 - &v23[v24] + 1 >= 0x100)
    {
      operator delete(*(v41 - 1));
      a1[14] -= 8;
      v25 = a1[17];
    }

    v23 = v25;
  }

  while (v25);
LABEL_61:
  sub_A20EC0(__p, *a1);
  *&v64 = -1;
  *(&v64 + 1) = -1;
  __p[1] = -1;
  v43 = v64;
  *a1 = *__p;
  *(a1 + 1) = v43;
  v44 = a1[4];
  if (v44)
  {
    a1[5] = v44;
    operator delete(v44);
    a1[4] = 0;
    a1[5] = 0;
    a1[6] = 0;
  }

  *(a1 + 2) = v65;
  a1[6] = v66;
  v66 = 0;
  v65 = 0uLL;
  if (a1[10])
  {
    v45 = a1[9];
    if (v45)
    {
      do
      {
        v46 = *v45;
        operator delete(v45);
        v45 = v46;
      }

      while (v46);
    }

    a1[9] = 0;
    v47 = a1[8];
    if (v47)
    {
      bzero(a1[7], 8 * v47);
    }

    a1[10] = 0;
  }

  v48 = v67;
  v67 = 0;
  v49 = a1[7];
  a1[7] = v48;
  if (v49)
  {
    operator delete(v49);
  }

  v50 = v68;
  v51 = v69;
  a1[9] = v69;
  a1[8] = v50;
  v68 = 0;
  v52 = v70;
  a1[10] = v70;
  *(a1 + 22) = v71;
  if (v52)
  {
    v53 = *(v51 + 1);
    if ((v50 & (v50 - 1)) != 0)
    {
      if (v53 >= v50)
      {
        v53 %= v50;
      }
    }

    else
    {
      v53 &= (v50 - 1);
    }

    *&a1[7][8 * v53] = a1 + 9;
    v69 = 0;
    v70 = 0;
  }

  sub_A21D64(a1 + 12, &v72);
  sub_98ED24(__p);
}

void sub_A216E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A21730(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v4 != v5)
  {
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (*(a1 + 8))
  {
    v6 = 0;
    v7 = 0;
    v8 = *(**a1 + 32 * *(a1 + 24)) + 104 * *(a1 + 16);
    do
    {
      v9 = *(v8 + 8) + v6;
      sub_4C7358(a2, &v9);
      ++v7;
      v6 += 5704;
    }

    while (v7 < *(a1 + 8));
  }
}

void sub_A21818(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_A21834(uint64_t a1@<X0>, unint64_t a2@<X1>, char **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = *(a1 + 8);
  v6 = (*(**a1 + 32 * *(a1 + 24)) + 104 * *(a1 + 16));
  v7 = v5 + 1;
  v8 = v6[1];
  if (v5 + 1 < 0xBC7FD20AC579B779 * ((v6[2] - v8) >> 3))
  {
    v9 = 5704 * v5 + 5704;
    do
    {
      if (a2 <= (a3[1] - *a3) >> 3)
      {
        break;
      }

      v34 = v8 + v9;
      sub_4C7358(a3, &v34);
      ++v7;
      v8 = v6[1];
      v9 += 5704;
    }

    while (v7 < 0xBC7FD20AC579B779 * ((v6[2] - v8) >> 3));
  }

  v10 = v6[7];
  if (v10 != -1)
  {
    v11 = *a3;
    v12 = a3[1];
    v13 = *a3;
    do
    {
      if (a2 <= (v12 - v13) >> 3)
      {
        break;
      }

      v14 = (**a1 + 32 * v10);
      v15 = *v14;
      v16 = v14[1];
      if (*v14 == v16)
      {
        goto LABEL_40;
      }

      v17 = v16 - v15;
      if (v16 - v15 == 104)
      {
        v18 = 0;
      }

      else
      {
        v19 = 0;
        v20 = v15;
        while (*v20)
        {
          v20 += 104;
          v19 -= 104;
          if (v20 == v16)
          {
            v21 = v16 - v15;
            goto LABEL_18;
          }
        }

        v21 = -v19;
LABEL_18:
        v18 = 0x4EC4EC4EC4EC4EC5 * (v21 >> 3);
      }

      if (0x4EC4EC4EC4EC4EC5 * (v17 >> 3) <= v18)
      {
LABEL_40:
        sub_6FAB4();
      }

      v22 = &v15[104 * v18];
      v23 = *(v22 + 1);
      v24 = *(v22 + 2);
      if (v23 != v24)
      {
        while (1)
        {
          v25 = a3[2];
          if (v12 >= v25)
          {
            v26 = v12 - v13;
            v27 = (v12 - v13) >> 3;
            v28 = v27 + 1;
            if ((v27 + 1) >> 61)
            {
              sub_1794();
            }

            v29 = v25 - v13;
            if (v29 >> 2 > v28)
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

            v31 = (v12 - v13) >> 3;
            v32 = (8 * v27);
            v11 = (8 * v27 - 8 * v31);
            *v32 = v23;
            v12 = (v32 + 1);
            memcpy(v11, v13, v26);
            *a3 = v11;
            a3[1] = v12;
            a3[2] = 0;
            if (v13)
            {
              operator delete(v13);
              v11 = *a3;
            }
          }

          else
          {
            *v12 = v23;
            v12 += 8;
          }

          a3[1] = v12;
          if (a2 <= (v12 - v11) >> 3)
          {
            break;
          }

          v23 += 5704;
          v13 = v11;
          if (v23 == v24)
          {
            goto LABEL_8;
          }
        }

        v13 = v11;
      }

LABEL_8:
      v10 = *(v22 + 7);
    }

    while (v10 != -1);
  }
}

void sub_A21AF4(_Unwind_Exception *a1)
{
  v2 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
  }

  _Unwind_Resume(a1);
}

void *sub_A21B98(char **a1, int a2)
{
  sub_A2108C(a1);
  while (1)
  {
    sub_A20EC0(v8, *a1);
    memset(&v8[1], 255, 24);
    if (*a1 != v8[0])
    {
      v4 = a1[1];
      v5 = a1[2];
      goto LABEL_9;
    }

    v4 = a1[1];
    v5 = a1[2];
    if (v4 == -1)
    {
      break;
    }

LABEL_9:
    v6 = *(*(*(**a1 + 32 * a1[3]) + 104 * v5 + 8) + 5704 * v4);
    result = sub_98ED24(v8);
    if (v6 == a2)
    {
      return result;
    }

    sub_A2108C(a1);
  }

  if (v5 != -1)
  {
    v4 = -1;
    goto LABEL_9;
  }

  if (a1[3] != -1)
  {
    v4 = -1;
    v5 = -1;
    goto LABEL_9;
  }

  return sub_98ED24(v8);
}

uint64_t sub_A21C90(uint64_t a1, void *a2)
{
  result = sub_A20EC0(a1, a2);
  *(result + 144) = a2;
  return result;
}

uint64_t sub_A21CE8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 144);
  result = sub_A20EC0(a2, v3);
  a2[18] = v3;
  a2[1] = -1;
  a2[2] = -1;
  a2[3] = -1;
  return result;
}

uint64_t sub_A21D2C@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = sub_A20EC0(a2, *a1);
  a2[2] = -1;
  a2[3] = -1;
  a2[1] = -1;
  return result;
}

double sub_A21D64(void *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v5 == v4)
  {
    a1[5] = 0;
    v13 = 0;
  }

  else
  {
    v6 = a1[4];
    v7 = &v4[v6 >> 7];
    v8 = *v7;
    v9 = *v7 + 32 * (v6 & 0x7F);
    v10 = *(v4 + (((a1[5] + v6) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((a1[5] + v6) & 0x7F);
    if (v9 != v10)
    {
      do
      {
        v11 = *v9;
        if (*v9)
        {
          *(v9 + 8) = v11;
          operator delete(v11);
          v8 = *v7;
        }

        v9 += 32;
        if (v9 - v8 == 4096)
        {
          v12 = v7[1];
          ++v7;
          v8 = v12;
          v9 = v12;
        }
      }

      while (v9 != v10);
      v4 = a1[1];
      v5 = a1[2];
    }

    a1[5] = 0;
    v13 = v5 - v4;
    if (v13 >= 3)
    {
      do
      {
        operator delete(*v4);
        v14 = a1[2];
        v4 = (a1[1] + 8);
        a1[1] = v4;
        v13 = (v14 - v4) >> 3;
      }

      while (v13 > 2);
    }
  }

  if (v13 == 1)
  {
    v15 = 64;
  }

  else
  {
    if (v13 != 2)
    {
      goto LABEL_18;
    }

    v15 = 128;
  }

  a1[4] = v15;
LABEL_18:
  sub_A22020(a1);
  v17 = a1[1];
  v16 = a1[2];
  if (v16 != v17)
  {
    a1[2] = v16 + ((v17 - v16 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  sub_A22114(a1);
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

void sub_A21EF4(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    a1[5] = 0;
    v10 = v3 - v2;
    if (v10 < 3)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v4 = a1[4];
  v5 = &v2[v4 >> 7];
  v6 = *v5 + 32 * (v4 & 0x7F);
  v7 = *(v2 + (((a1[5] + v4) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((a1[5] + v4) & 0x7F);
  if (v6 != v7)
  {
    do
    {
      v8 = *v6;
      if (*v6)
      {
        *(v6 + 8) = v8;
        operator delete(v8);
      }

      v6 += 32;
      if (v6 - *v5 == 4096)
      {
        v9 = v5[1];
        ++v5;
        v6 = v9;
      }
    }

    while (v6 != v7);
    v2 = a1[1];
    v3 = a1[2];
  }

  a1[5] = 0;
  v10 = v3 - v2;
  if (v10 >= 3)
  {
    do
    {
LABEL_11:
      operator delete(*v2);
      v11 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v10 = (v11 - v2) >> 3;
    }

    while (v10 > 2);
  }

LABEL_12:
  if (v10 == 1)
  {
    v12 = 64;
  }

  else
  {
    if (v10 != 2)
    {
      return;
    }

    v12 = 128;
  }

  a1[4] = v12;
}

void sub_A22020(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    v3 = a1[4];
    v4 = a1[1];
    if (v3 >= 0x80)
    {
      operator delete(*v4);
      v4 = (a1[1] + 8);
      a1[1] = v4;
      v2 = a1[5];
      v3 = a1[4] - 128;
      a1[4] = v3;
    }

    v5 = a1[2];
    if (v5 == v4)
    {
      v6 = 0;
    }

    else
    {
      v6 = 16 * (v5 - v4) - 1;
    }

    if (v6 - (v2 + v3) >= 0x80)
    {
      operator delete(*(v5 - 1));
      a1[2] -= 8;
    }

    v7 = a1;
  }

  else
  {
    v8 = a1[2];
    if (v8 != a1[1])
    {
      do
      {
        operator delete(*(v8 - 8));
        v9 = a1[1];
        v8 = a1[2] - 8;
        a1[2] = v8;
      }

      while (v8 != v9);
    }

    a1[4] = 0;
    v7 = a1;
  }

  sub_A22114(v7);
}

void sub_A22114(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = v3 - v4;
  v7 = v2 - v5;
  if (v6 > v2 - v5)
  {
    v8 = v7 >> 3;
    if (v2 != v5)
    {
      if (!(v8 >> 61))
      {
        operator new();
      }

      sub_1808();
    }

    if (v7 < v6)
    {
      v9 = *(a1 + 8);
      v10 = (*(a1 + 16) - v9);
      v11 = v10;
      if (!v10)
      {
        goto LABEL_16;
      }

      v12 = (v10 - 1);
      if ((v10 - 1) < 0x18)
      {
        v13 = 0;
      }

      else
      {
        v13 = 0;
        if (-v9 >= 0x20)
        {
          v14 = (v12 >> 3) + 1;
          v13 = (8 * (v14 & 0x3FFFFFFFFFFFFFFCLL));
          v15 = (v13 + v9);
          v16 = (v9 + 16);
          v17 = dword_10;
          v18 = v14 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v19 = *v16;
            *(v17 - 1) = *(v16 - 1);
            *v17 = v19;
            v16 += 2;
            v17 += 2;
            v18 -= 4;
          }

          while (v18);
          v9 = v15;
          if (v14 == (v14 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_16:
            *a1 = 0;
            *(a1 + 8) = 0;
            *(a1 + 16) = v11;
            *(a1 + 24) = 8 * v8;
            if (v4)
            {

              operator delete(v4);
            }

            return;
          }
        }
      }

      do
      {
        v20 = *v9;
        v9 += 8;
        *v13++ = v20;
      }

      while (v13 != v11);
      goto LABEL_16;
    }
  }
}

void **sub_A22284(void **a1)
{
  sub_A21EF4(a1);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 != v3)
  {
    do
    {
      v4 = *v2++;
      operator delete(v4);
    }

    while (v2 != v3);
    v2 = a1[1];
    v3 = a1[2];
  }

  if (v3 != v2)
  {
    a1[2] = v3 + ((v2 - v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_A222FC(unint64_t *a1, void *a2, void *a3)
{
  v6 = a1[1];
  v7 = a1[2];
  v8 = 16 * (v7 - v6) - 1;
  if (v7 == v6)
  {
    v8 = 0;
  }

  if (v8 == a1[5] + a1[4])
  {
    sub_A2247C(a1);
    v6 = a1[1];
    v7 = a1[2];
  }

  if (v7 == v6)
  {
    v10 = 0;
    *&dword_0 = 0;
    *dword_8 = 0;
    *dword_10 = 0;
    v11 = a2[1] - *a2;
    if (!v11)
    {
      goto LABEL_11;
    }

LABEL_9:
    if ((v11 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v9 = a1[5] + a1[4];
  v10 = (*(v6 + ((v9 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v9 & 0x7F));
  *v10 = 0;
  v10[1] = 0;
  v10[2] = 0;
  v11 = a2[1] - *a2;
  if (v11)
  {
    goto LABEL_9;
  }

LABEL_11:
  v10[3] = *a3;
  v12 = a1[4];
  v13 = a1[5] + 1;
  a1[5] = v13;
  v14 = v12 + v13;
  v15 = a1[1];
  v16 = (v15 + 8 * (v14 >> 7));
  v17 = *v16 + 32 * (v14 & 0x7F);
  if (a1[2] == v15)
  {
    v17 = 0;
  }

  if (v17 == *v16)
  {
    return *(v16 - 1) + 4064;
  }

  else
  {
    return v17 - 32;
  }
}

void sub_A22460(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_A2247C(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x80;
  v3 = v1 - 128;
  if (!v2)
  {
    v6 = a1[2];
    v5 = a1[3];
    v7 = v5 - *a1;
    if (v6 - a1[1] < v7)
    {
      if (v5 != v6)
      {
        operator new();
      }

      operator new();
    }

    v8 = v7 >> 2;
    if (v5 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    if (!(v9 >> 61))
    {
      operator new();
    }

    sub_1808();
  }

  a1[4] = v3;
  v4 = a1[1];
  v10 = *v4;
  a1[1] = (v4 + 1);
  sub_2133C(a1, &v10);
}

void sub_A227EC(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_A229C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
    sub_1A104(&a10);
    if ((a18 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    sub_1A104(&a10);
    if ((a18 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(a13);
  _Unwind_Resume(a1);
}

uint64_t *sub_A22A28(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v5 = result;
    do
    {
      result = sub_A22A7C(v5, v2, a2 + 3);
      v2 += 412;
    }

    while (v2 != v3);
  }

  return result;
}

void *sub_A22A7C(uint64_t *a1, void *a2, void *a3)
{
  sub_A21C90(v11, a2);
  while (1)
  {
    sub_A21CE8(v11, &v9);
    v5 = sub_A21B4C(v11, &v9);
    sub_98ED24(&v9);
    if (!v5)
    {
      break;
    }

    if (*sub_A21CB8(v11) == 2)
    {
      v6 = sub_A21CB8(v11);
      sub_A22BD0(a1, v11, a3, &v9);
      v7 = v6[710];
      if (v7)
      {
        v6[711] = v7;
        operator delete(v7);
        v6[710] = 0;
        v6[711] = 0;
        v6[712] = 0;
      }

      *(v6 + 355) = v9;
      v6[712] = v10;
    }

    sub_A21708(v11);
  }

  return sub_98ED24(v11);
}

void sub_A22BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_98ED24(&a9);
  sub_98ED24(&a28);
  _Unwind_Resume(a1);
}

void sub_A22BD0(uint64_t *a1@<X0>, char **a2@<X1>, void *a3@<X2>, __int128 *a4@<X8>)
{
  v8 = *(sub_A21CB8(a2) + 752);
  v9 = a3[9];
  if (0x66FD0EB66FD0EB67 * ((a3[10] - v9) >> 3) <= v8)
  {
    sub_6FAB4();
  }

  v10 = *(sub_A21CB8(a2) + 48);
  sub_A21B98(a2, 4);
  v11 = *(sub_A21CB8(a2) + 48);
  v12 = sub_3AFC64(*a1);
  v13 = sub_92FC60(v12, *(v9 + 696 * v8 + 56), 0, "line");
  v14 = (v13 - *v13);
  if (*v14 >= 0x51u && (v15 = v14[40]) != 0)
  {
    v16 = (v13 + v15 + *(v13 + v15));
    *(a4 + 2) = 0;
    v17 = 0uLL;
    *a4 = 0u;
    v18 = *v16;
    if (v18)
    {
      v19 = 8 * v18;
      v20 = (v16 + 1);
      do
      {
        if (*(v12 + 3888) != 1 || sub_2D5204(*(v12 + 3872)))
        {
          v35[0] = *v20;
          sub_2512DC(a4, v35);
        }

        ++v20;
        v19 -= 8;
      }

      while (v19);
      v17 = *a4;
    }
  }

  else
  {
    *(a4 + 2) = 0;
    v17 = 0uLL;
    *a4 = 0u;
  }

  v21 = 126 - 2 * __clz((*(&v17 + 1) - v17) >> 3);
  if (*(&v17 + 1) == v17)
  {
    v22 = 0;
  }

  else
  {
    v22 = v21;
  }

  sub_2D31D4(v17, *(&v17 + 1), v35, v22, 1);
  sub_A22F00(a1, v10, a3, &v33);
  v23 = 126 - 2 * __clz((v34 - v33) >> 3);
  if (v34 == v33)
  {
    v24 = 0;
  }

  else
  {
    v24 = v23;
  }

  sub_2D31D4(v33, v34, v35, v24, 1);
  v31 = 0uLL;
  v32 = 0;
  sub_2CEBBC(*a4, *(a4 + 1), v33, v34, &v31, v35);
  v25 = *a4;
  if (*a4)
  {
    *(a4 + 1) = v25;
    operator delete(v25);
  }

  *a4 = v31;
  v26 = v33;
  *(a4 + 2) = v32;
  if (v26)
  {
    v34 = v26;
    operator delete(v26);
  }

  sub_A22F00(a1, v11, a3, &v33);
  v27 = 126 - 2 * __clz((v34 - v33) >> 3);
  if (v34 == v33)
  {
    v28 = 0;
  }

  else
  {
    v28 = v27;
  }

  sub_2D31D4(v33, v34, v35, v28, 1);
  v31 = 0uLL;
  v32 = 0;
  sub_2CEBBC(*a4, *(a4 + 1), v33, v34, &v31, v35);
  v29 = *a4;
  if (*a4)
  {
    *(a4 + 1) = v29;
    operator delete(v29);
  }

  *a4 = v31;
  v30 = v33;
  *(a4 + 2) = v32;
  if (v30)
  {
    v34 = v30;
    operator delete(v30);
  }
}

void sub_A22E88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  v15 = *v13;
  if (*v13)
  {
    *(v13 + 8) = v15;
    operator delete(v15);
  }

  _Unwind_Resume(a1);
}

void sub_A22F00(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, void **a4@<X8>)
{
  v8 = sub_3AFB1C(*a1);
  if (0xCF3CF3CF3CF3CF3DLL * ((a3[1] - *a3) >> 3) <= a2)
  {
    sub_6FAB4();
  }

  v9 = v8;
  v10 = *a3 + 168 * a2;
  v11 = sub_502FF8(v8, *(v10 + 96), 0, "stop");
  v12 = (v11 - *v11);
  if (*v12 >= 0x43u && (v13 = v12[33]) != 0)
  {
    v14 = (v11 + v13 + *(v11 + v13));
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    v15 = *v14;
    if (v15)
    {
      v16 = 8 * v15;
      v17 = (v14 + 1);
      do
      {
        if (*(v9 + 3888) != 1 || sub_2D5204(*(v9 + 3872)))
        {
          v39 = *v17;
          sub_2512DC(a4, &v39);
        }

        ++v17;
        v16 -= 8;
      }

      while (v16);
    }
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  if (*(a1 + 8) == 1 && *a4 == a4[1])
  {
    v18 = *(v10 + 104);
    if (v18 != -1)
    {
      v19 = a3[3];
      if (0x8E38E38E38E38E39 * ((a3[4] - v19) >> 4) <= v18)
      {
        sub_6FAB4();
      }

      v20 = v19 + 144 * v18;
      v21 = sub_93D2F4(v9, *(v20 + 96), 0, "hall");
      v22 = (v21 - *v21);
      if (*v22 >= 0x2Du)
      {
        v23 = v22[22];
        if (v23)
        {
          v24 = (v21 + v23 + *(v21 + v23));
          v25 = *v24;
          if (v25)
          {
            v26 = 8 * v25;
            v27 = v24 + 1;
            do
            {
              if (*(v9 + 3888) != 1 || sub_2D5204(*(v9 + 3872)))
              {
                operator new();
              }

              v27 += 2;
              v26 -= 8;
            }

            while (v26);
          }
        }
      }

      v28 = *a4;
      if (*a4)
      {
        a4[1] = v28;
        operator delete(v28);
      }

      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      v29 = *(v20 + 104);
      if (v29 != -1)
      {
        v30 = a3[6];
        if (0xF0F0F0F0F0F0F0F1 * ((a3[7] - v30) >> 3) <= v29)
        {
          sub_6FAB4();
        }

        v31 = sub_93D480(v9, *(v30 + 136 * v29 + 96), 0, "station");
        v32 = (v31 - *v31);
        if (*v32 >= 0x39u)
        {
          v33 = v32[28];
          if (v33)
          {
            v34 = (v31 + v33 + *(v31 + v33));
            v35 = *v34;
            if (v35)
            {
              v36 = 8 * v35;
              v37 = v34 + 1;
              do
              {
                if (*(v9 + 3888) != 1 || sub_2D5204(*(v9 + 3872)))
                {
                  operator new();
                }

                v37 += 2;
                v36 -= 8;
              }

              while (v36);
            }
          }
        }

        v38 = *a4;
        if (*a4)
        {
          a4[1] = v38;
          operator delete(v38);
        }

        *a4 = 0;
        a4[1] = 0;
        a4[2] = 0;
      }
    }
  }
}

void sub_A233B0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_A2340C()
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
  xmmword_27B3B80 = 0u;
  *algn_27B3B90 = 0u;
  dword_27B3BA0 = 1065353216;
  sub_3A9A34(&xmmword_27B3B80, v0, v0);
  sub_3A9A34(&xmmword_27B3B80, v3, v3);
  sub_3A9A34(&xmmword_27B3B80, __p, __p);
  sub_3A9A34(&xmmword_27B3B80, v9, v9);
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
    qword_27B3B58 = 0;
    qword_27B3B60 = 0;
    qword_27B3B50 = 0;
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

void sub_A23654(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B3B68)
  {
    qword_27B3B70 = qword_27B3B68;
    operator delete(qword_27B3B68);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_A23700(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *result;
  v9 = result[1];
  if (*result != v9)
  {
    do
    {
      result = sub_A2373C(v8, a2, a3, a4, a5, a6, a7, a8);
      v8 += 3296;
    }

    while (v8 != v9);
  }

  return result;
}

void *sub_A2373C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  sub_A21C90(v29, v8);
  while (1)
  {
    sub_A21CE8(v29, &v27);
    v9 = sub_A21B4C(v29, &v27);
    sub_98ED24(&v27);
    if (!v9)
    {
      return sub_98ED24(v29);
    }

    v10 = 0;
    v11 = *sub_A21CB8(v29);
    if (v11 <= 3)
    {
      if (v11 <= 1)
      {
        if (!v11)
        {
          v10 = 4;
          goto LABEL_59;
        }

        if (v11 != 1)
        {
          goto LABEL_59;
        }

LABEL_35:
        sub_A21834(v29, 1uLL, &v27);
        v15 = *v27;
        v28 = v27;
        operator delete(v27);
        if (*v15 == 9)
        {
          v10 = 5;
        }

        else
        {
          v10 = 2;
        }

        goto LABEL_59;
      }

      if (v11 != 2)
      {
        sub_A21834(v29, 0xFFFFFFFFFFFFFFFFLL, &v27);
        v12 = v27;
        if (**v27 == 4)
        {
          v10 = 2;
          goto LABEL_58;
        }

        if (v27 == v28)
        {
LABEL_49:
          v10 = 0;
          goto LABEL_58;
        }

        v17 = 0;
        v18 = v27;
        while (1)
        {
          v19 = **v18;
          if (v19 == 3)
          {
            v21 = *(*v18 + 157);
            v20 = v21 ^ 1 | v17;
            if ((v21 & 1) == 0 && ((v17 ^ 1) & 1) == 0)
            {
              goto LABEL_49;
            }
          }

          else
          {
            if (v19 == 4)
            {
              v10 = v17 & 1;
              goto LABEL_58;
            }

            v20 = v17;
          }

          ++v18;
          v17 = v20;
          if (v18 == v28)
          {
            goto LABEL_49;
          }
        }
      }

      v10 = 3;
    }

    else if (v11 <= 5)
    {
      if (v11 == 4)
      {
        goto LABEL_35;
      }

      sub_A21834(v29, 2uLL, &v27);
      v12 = v27;
      if (**v27 == 9)
      {
        v10 = 5;
      }

      else
      {
        v22 = v27;
        if (v27 != v28)
        {
          v22 = v27;
          while (**v22 != 2)
          {
            if (++v22 == v28)
            {
              v22 = v28;
              break;
            }
          }
        }

        if (v22 == v28)
        {
          v10 = 0;
        }

        else
        {
          v10 = 3;
        }
      }

LABEL_58:
      v28 = v12;
      operator delete(v12);
    }

    else
    {
      switch(v11)
      {
        case 6:
          sub_A21834(v29, 1uLL, __p);
          sub_9722E4(&v27, *__p[0]);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          sub_A21730(v29, &v24);
          sub_9722E4(__p, *(v25 - 1));
          if (v24)
          {
            v25 = v24;
            operator delete(v24);
          }

          if (LODWORD(__p[0]) == 5)
          {
            v13 = 0;
          }

          else
          {
            v13 = 3;
          }

          if (v27 == 9)
          {
            v14 = 5;
          }

          else
          {
            v14 = 0;
          }

          if (v27 == 2)
          {
            v10 = v13;
          }

          else
          {
            v10 = v14;
          }

          sub_9750F8(__p);
          sub_9750F8(&v27);
          break;
        case 7:
          sub_A21834(v29, 1uLL, &v27);
          v16 = *v27;
          v28 = v27;
          operator delete(v27);
          if (*v16 == 1)
          {
            v10 = 3;
          }

          else
          {
            v10 = 0;
          }

          break;
        case 9:
          v10 = 5;
          break;
      }
    }

LABEL_59:
    *(sub_A21CB8(v29) + 1976) = v10;
    sub_A21708(v29);
  }
}

void sub_A23B58()
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
  xmmword_27B3BD8 = 0u;
  unk_27B3BE8 = 0u;
  dword_27B3BF8 = 1065353216;
  sub_3A9A34(&xmmword_27B3BD8, v0, v0);
  sub_3A9A34(&xmmword_27B3BD8, v3, v3);
  sub_3A9A34(&xmmword_27B3BD8, __p, __p);
  sub_3A9A34(&xmmword_27B3BD8, v9, v9);
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
    qword_27B3BB0 = 0;
    qword_27B3BB8 = 0;
    qword_27B3BA8 = 0;
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

void sub_A23DA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B3BC0)
  {
    qword_27B3BC8 = qword_27B3BC0;
    operator delete(qword_27B3BC0);
  }

  _Unwind_Resume(exception_object);
}

void sub_A23E54(void *(****a1)(void **__return_ptr), uint64_t *a2)
{
  v96 = 0;
  v97 = 0;
  v98 = 0;
  *v93 = 0u;
  *v94 = 0u;
  v95 = 1.0;
  v4 = (0xCF3CF3CF3CF3CF3DLL * ((a2[1] - *a2) >> 3) - 0x71C71C71C71C71C7 * ((a2[4] - a2[3]) >> 4) + 0x66FD0EB66FD0EB67 * ((a2[10] - a2[9]) >> 3) + 0x4EC4EC4EC4EC4EC5 * ((a2[13] - a2[12]) >> 4));
  prime = v4;
  if (v4 == 1)
  {
    prime = 2;
LABEL_17:
    sub_B07C(v93, prime);
    goto LABEL_18;
  }

  if ((prime & (v4 - 1)) != 0)
  {
    prime = std::__next_prime(v4);
    v6 = v93[1];
    v7 = prime >= v93[1];
    if (prime > v93[1])
    {
      goto LABEL_17;
    }
  }

  else
  {
    v6 = 0;
    v7 = 1;
    if (prime)
    {
      goto LABEL_17;
    }
  }

  if (!v7)
  {
    v8 = vcvtps_u32_f32(v94[1] / v95);
    if (v6 < 3 || (v9 = vcnt_s8(v6), v9.i16[0] = vaddlv_u8(v9), v9.u32[0] > 1uLL))
    {
      v8 = std::__next_prime(v8);
    }

    else
    {
      v10 = 1 << -__clz(v8 - 1);
      if (v8 >= 2)
      {
        v8 = v10;
      }
    }

    if (prime <= v8)
    {
      prime = v8;
    }

    if (prime < v6)
    {
      goto LABEL_17;
    }
  }

LABEL_18:
  v91 = a1;
  v11 = a2[1] - *a2;
  if (v11)
  {
    v12 = 0;
    v13 = 0xCF3CF3CF3CF3CF3DLL * (v11 >> 3);
    v14 = 88;
    do
    {
      v15 = *a2;
      v16 = v97;
      if (v97 >= v98)
      {
        v18 = v96;
        v19 = v97 - v96;
        v20 = (v97 - v96) >> 5;
        v21 = v20 + 1;
        if ((v20 + 1) >> 59)
        {
          sub_1794();
        }

        v22 = v98 - v96;
        if ((v98 - v96) >> 4 > v21)
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

        v24 = (32 * v20);
        *v24 = *(v15 + v14);
        v24[1] = xmmword_22A68B0;
        v17 = 32 * v20 + 32;
        memcpy(0, v18, v19);
        v96 = 0;
        v98 = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        *v97 = *(v15 + v14);
        *(v16 + 1) = xmmword_22A68B0;
        v17 = (v16 + 32);
      }

      v97 = v17;
      __p[0] = v12;
      LODWORD(__p[1]) = 0;
      sub_A24900(v93, (v15 + v14), (v15 + v14), __p);
      ++v12;
      v14 += 168;
    }

    while (v13 != v12);
  }

  v25 = a2[4] - a2[3];
  if (v25)
  {
    v26 = 0;
    v27 = 0x8E38E38E38E38E39 * (v25 >> 4);
    v28 = 88;
    do
    {
      v29 = a2[3];
      v30 = v97;
      if (v97 >= v98)
      {
        v32 = v96;
        v33 = v97 - v96;
        v34 = (v97 - v96) >> 5;
        v35 = v34 + 1;
        if ((v34 + 1) >> 59)
        {
          sub_1794();
        }

        v36 = v98 - v96;
        if ((v98 - v96) >> 4 > v35)
        {
          v35 = v36 >> 4;
        }

        if (v36 >= 0x7FFFFFFFFFFFFFE0)
        {
          v37 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v37 = v35;
        }

        if (v37)
        {
          if (!(v37 >> 59))
          {
            operator new();
          }

          sub_1808();
        }

        v38 = (v97 - v96) >> 5;
        v39 = (32 * v34);
        *v39 = *(v29 + v28);
        v39[1] = xmmword_22A68C0;
        v31 = 32 * v34 + 32;
        v40 = (32 * v34 - 32 * v38);
        memcpy(&v39[-2 * v38], v32, v33);
        v96 = v40;
        v98 = 0;
        if (v32)
        {
          operator delete(v32);
        }
      }

      else
      {
        *v97 = *(v29 + v28);
        *(v30 + 1) = xmmword_22A68C0;
        v31 = (v30 + 32);
      }

      v97 = v31;
      __p[0] = v26;
      LODWORD(__p[1]) = 1;
      sub_A24900(v93, (v29 + v28), (v29 + v28), __p);
      ++v26;
      v28 += 144;
    }

    while (v27 != v26);
  }

  v41 = a2[10] - a2[9];
  if (v41)
  {
    v42 = 0;
    v43 = 0x66FD0EB66FD0EB67 * (v41 >> 3);
    v44 = 48;
    do
    {
      v45 = a2[9];
      v46 = v97;
      if (v97 >= v98)
      {
        v48 = v96;
        v49 = v97 - v96;
        v50 = (v97 - v96) >> 5;
        v51 = v50 + 1;
        if ((v50 + 1) >> 59)
        {
          sub_1794();
        }

        v52 = v98 - v96;
        if ((v98 - v96) >> 4 > v51)
        {
          v51 = v52 >> 4;
        }

        if (v52 >= 0x7FFFFFFFFFFFFFE0)
        {
          v53 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v53 = v51;
        }

        if (v53)
        {
          if (!(v53 >> 59))
          {
            operator new();
          }

          sub_1808();
        }

        v54 = (v97 - v96) >> 5;
        v55 = (32 * v50);
        *v55 = *(v45 + v44);
        v55[1] = xmmword_22A68D0;
        v47 = 32 * v50 + 32;
        v56 = (32 * v50 - 32 * v54);
        memcpy(&v55[-2 * v54], v48, v49);
        v96 = v56;
        v98 = 0;
        if (v48)
        {
          operator delete(v48);
        }
      }

      else
      {
        *v97 = *(v45 + v44);
        *(v46 + 1) = xmmword_22A68D0;
        v47 = (v46 + 32);
      }

      v97 = v47;
      __p[0] = v42;
      LODWORD(__p[1]) = 2;
      sub_A24900(v93, (v45 + v44), (v45 + v44), __p);
      ++v42;
      v44 += 696;
    }

    while (v43 != v42);
  }

  v57 = a2[13] - a2[12];
  if (v57)
  {
    v58 = 0;
    v59 = 0x4EC4EC4EC4EC4EC5 * (v57 >> 4);
    v60 = 48;
    do
    {
      v61 = a2[12];
      v62 = v97;
      if (v97 >= v98)
      {
        v64 = v96;
        v65 = v97 - v96;
        v66 = (v97 - v96) >> 5;
        v67 = v66 + 1;
        if ((v66 + 1) >> 59)
        {
          sub_1794();
        }

        v68 = v98 - v96;
        if ((v98 - v96) >> 4 > v67)
        {
          v67 = v68 >> 4;
        }

        if (v68 >= 0x7FFFFFFFFFFFFFE0)
        {
          v69 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v69 = v67;
        }

        if (v69)
        {
          if (!(v69 >> 59))
          {
            operator new();
          }

          sub_1808();
        }

        v70 = (v97 - v96) >> 5;
        v71 = (32 * v66);
        *v71 = *(v61 + v60);
        v71[1] = xmmword_22A68E0;
        v63 = 32 * v66 + 32;
        v72 = (32 * v66 - 32 * v70);
        memcpy(&v71[-2 * v70], v64, v65);
        v96 = v72;
        v98 = 0;
        if (v64)
        {
          operator delete(v64);
        }
      }

      else
      {
        *v97 = *(v61 + v60);
        *(v62 + 1) = xmmword_22A68E0;
        v63 = (v62 + 32);
      }

      v97 = v63;
      __p[0] = v58;
      LODWORD(__p[1]) = 3;
      sub_A24900(v93, (v61 + v60), (v61 + v60), __p);
      ++v58;
      v60 += 208;
    }

    while (v59 != v58);
  }

  v73 = (***v91)(__p);
  v74 = __p[0];
  v75 = __p[1];
  if (__p[0] != __p[1])
  {
    v76 = v93[1];
    if (v93[1])
    {
LABEL_84:
      v77 = *v74;
      v78 = vcnt_s8(v76);
      v78.i16[0] = vaddlv_u8(v78);
      if (v78.u32[0] > 1uLL)
      {
        v79 = *v74;
        if (v77 >= *&v76)
        {
          v79 = v77 % *&v76;
        }
      }

      else
      {
        v79 = (*&v76 - 1) & v77;
      }

      v80 = *(v93[0] + v79);
      if (v80)
      {
        v81 = *v80;
        if (v81)
        {
          if (v78.u32[0] < 2uLL)
          {
            v82 = *&v76 - 1;
            while (1)
            {
              v83 = v81[1];
              if (v83 == v77)
              {
                if (v81[2] == v77)
                {
                  goto LABEL_104;
                }
              }

              else if ((v83 & v82) != v79)
              {
                goto LABEL_105;
              }

              v81 = *v81;
              if (!v81)
              {
                goto LABEL_105;
              }
            }
          }

          do
          {
            v84 = v81[1];
            if (v84 == v77)
            {
              if (v81[2] == v77)
              {
LABEL_104:
                sub_A24750(v73, v74, (v81 + 3), a2);
                break;
              }
            }

            else
            {
              if (v84 >= *&v76)
              {
                v84 %= *&v76;
              }

              if (v84 != v79)
              {
                break;
              }
            }

            v81 = *v81;
          }

          while (v81);
        }
      }

LABEL_105:
      while (1)
      {
        v74 += 4;
        if (v74 == v75)
        {
          break;
        }

        v76 = v93[1];
        if (v93[1])
        {
          goto LABEL_84;
        }
      }

      v74 = __p[0];
    }
  }

  if (v74)
  {
    v85 = __p[1];
    v86 = v74;
    if (__p[1] != v74)
    {
      do
      {
        v87 = *(v85 - 3);
        if (v87)
        {
          *(v85 - 2) = v87;
          operator delete(v87);
        }

        v85 -= 4;
      }

      while (v85 != v74);
      v86 = __p[0];
    }

    __p[1] = v74;
    operator delete(v86);
  }

  v88 = v94[0];
  if (v94[0])
  {
    do
    {
      v89 = *v88;
      operator delete(v88);
      v88 = v89;
    }

    while (v89);
  }

  v90 = v93[0];
  v93[0] = 0;
  if (v90)
  {
    operator delete(v90);
  }

  if (v96)
  {
    v97 = v96;
    operator delete(v96);
  }
}

void sub_A246E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  sub_37484(&a14);
  sub_11BD8(&a17);
  if (__p)
  {
    a23 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_A24750(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *(a3 + 8);
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      if (v4 != 3)
      {
        return;
      }

      v8 = (a4[12] + 208 * *a3 + 64);
      if (v8 == (a2 + 8))
      {
        return;
      }

      v9 = *(a2 + 16);
      v10 = (v9 - *(a2 + 8)) >> 3;
      v11 = *(a2 + 8);

LABEL_16:
      sub_31F64(v8, v11, v9, v10);
      return;
    }

    v5 = a4[9] + 696 * *a3 + 72;
    if (v5 != a2 + 8)
    {
      sub_31F64(v5, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 3);
    }

    v6 = &qword_27B3C60;
    if (v5 == &qword_27B3C60 || *v5 != *(v5 + 8))
    {
      return;
    }

LABEL_24:
    v11 = *v6;
    v9 = v6[1];
    v10 = (v9 - *v6) >> 3;
    v8 = v5;

    goto LABEL_16;
  }

  if (v4)
  {
    if (v4 != 1)
    {
      return;
    }

    v5 = a4[3] + 144 * *a3 + 120;
    if (v5 != a2 + 8)
    {
      sub_31F64(v5, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 3);
    }

    v6 = &qword_27B3C48;
    if (v5 == &qword_27B3C48 || *v5 != *(v5 + 8))
    {
      return;
    }

    goto LABEL_24;
  }

  v5 = *a4 + 168 * *a3 + 112;
  if (v5 != a2 + 8)
  {
    sub_31F64(v5, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 3);
  }

  v6 = &qword_27B3C30;
  if (v5 != &qword_27B3C30 && *v5 == *(v5 + 8))
  {
    goto LABEL_24;
  }
}

void *sub_A24900(void *a1, unint64_t *a2, void *a3, _OWORD *a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_23;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v6.u32[0] < 2uLL)
  {
    while (1)
    {
      v11 = v9[1];
      if (v11 == v4)
      {
        if (v9[2] == v4)
        {
          return v9;
        }
      }

      else if ((v11 & (*&v5 - 1)) != v7)
      {
        goto LABEL_23;
      }

      v9 = *v9;
      if (!v9)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v10 >= *&v5)
    {
      v10 %= *&v5;
    }

    if (v10 != v7)
    {
      goto LABEL_23;
    }

LABEL_12:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_23;
    }
  }

  if (v9[2] != v4)
  {
    goto LABEL_12;
  }

  return v9;
}

void sub_A24C34()
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
  xmmword_27B3C78 = 0u;
  unk_27B3C88 = 0u;
  dword_27B3C98 = 1065353216;
  sub_3A9A34(&xmmword_27B3C78, v0, v0);
  sub_3A9A34(&xmmword_27B3C78, v3, v3);
  sub_3A9A34(&xmmword_27B3C78, __p, __p);
  sub_3A9A34(&xmmword_27B3C78, v9, v9);
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
    qword_27B3C08 = 0;
    qword_27B3C10 = 0;
    qword_27B3C00 = 0;
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

void sub_A24F44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (qword_27B3C60)
  {
    qword_27B3C68 = qword_27B3C60;
    operator delete(qword_27B3C60);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A25044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = sub_3AFEE8(a2);
  *(a1 + 8) = sub_3AFC64(a2);
  *(a1 + 16) = a3;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 1065353216;
  return a1;
}

void sub_A250A4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*(a3 + 1439) == 1)
  {
    v6 = a2[15];
    v7 = a2[16];
    if (v6 == v7)
    {
LABEL_8:
      v10 = a2[12];
      v11 = a2[13];
      if (v10 == v11)
      {
        return;
      }

      while (1)
      {
        v12 = sub_92FC60(*(a1 + 8), *(v10 + 56), 0, "line");
        v13 = (v12 - *v12);
        if (*v13 >= 0x55u)
        {
          if (v13[42])
          {
            break;
          }
        }

        v10 += 696;
        if (v10 == v11)
        {
          return;
        }
      }
    }

    else
    {
      while (1)
      {
        v8 = sub_93E04C(*a1, *(v6 + 56), 0, "system");
        v9 = (v8 - *v8);
        if (*v9 >= 0x17u)
        {
          if (v9[11])
          {
            break;
          }
        }

        v6 += 208;
        if (v6 == v7)
        {
          goto LABEL_8;
        }
      }
    }

    v14 = *a2;
    v15 = a2[1];
    while (v14 != v15)
    {
      sub_A25200(a1, v14, a2 + 3, a3);
      if (*(a1 + 48))
      {
        v16 = *(a1 + 40);
        if (v16)
        {
          do
          {
            v17 = *v16;
            operator delete(v16);
            v16 = v17;
          }

          while (v17);
        }

        *(a1 + 40) = 0;
        v18 = *(a1 + 32);
        if (v18)
        {
          bzero(*(a1 + 24), 8 * v18);
        }

        *(a1 + 48) = 0;
      }

      v14 += 412;
    }
  }
}

void sub_A25200(uint64_t *result, void *a2, void *a3, uint64_t a4)
{
  v4 = a2[1] - *a2;
  if (v4)
  {
    v9 = 0;
    v10 = v4 >> 5;
    do
    {
      v11 = result[4];
      if (v11)
      {
        v12 = vcnt_s8(v11);
        v12.i16[0] = vaddlv_u8(v12);
        if (v12.u32[0] > 1uLL)
        {
          v13 = v9;
          if (v9 >= *&v11)
          {
            v13 = v9 % *&v11;
          }
        }

        else
        {
          v13 = (*&v11 - 1) & v9;
        }

        v14 = *(result[3] + 8 * v13);
        if (v14)
        {
          v15 = *v14;
          if (v15)
          {
            if (v12.u32[0] < 2uLL)
            {
              v16 = *&v11 - 1;
              while (1)
              {
                v18 = v15[1];
                if (v18 == v9)
                {
                  if (v15[2] == v9)
                  {
                    goto LABEL_3;
                  }
                }

                else if ((v18 & v16) != v13)
                {
                  goto LABEL_24;
                }

                v15 = *v15;
                if (!v15)
                {
                  goto LABEL_24;
                }
              }
            }

            do
            {
              v17 = v15[1];
              if (v17 == v9)
              {
                if (v15[2] == v9)
                {
                  goto LABEL_3;
                }
              }

              else
              {
                if (v17 >= *&v11)
                {
                  v17 %= *&v11;
                }

                if (v17 != v13)
                {
                  break;
                }
              }

              v15 = *v15;
            }

            while (v15);
          }
        }
      }

LABEL_24:
      v19 = (*a2 + 32 * v9);
      v20 = *v19;
      v21 = v19[1];
      if (*v19 != v21)
      {
        do
        {
          sub_A25374(result, v20, a2, a3, a4);
          v20 += 104;
        }

        while (v20 != v21);
      }

LABEL_3:
      ++v9;
    }

    while (v9 != v10);
  }
}

void sub_A25374(uint64_t *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v5 = *(a2 + 16);
  v6 = *(a2 + 8);
  if (v6 != v5 && *(v5 - 5704) == 4)
  {
    while (*v6 != 2)
    {
      v6 += 5704;
      if (v6 == v5)
      {
        v6 = *(a2 + 16);
        break;
      }
    }

    if ((*(v6 + 792) & 1) == 0)
    {
      sub_4F0F0C();
    }

    if (*(v6 + 116) != 0x7FFFFFFF)
    {
      v10 = *(v6 + 752);
      v11 = a4[9];
      if (0x66FD0EB66FD0EB67 * ((a4[10] - v11) >> 3) <= v10)
      {
        sub_6FAB4();
      }

      v12 = v11 + 696 * v10;
      v13 = *(v12 + 64);
      v14 = a4[12];
      if (0x4EC4EC4EC4EC4EC5 * ((a4[13] - v14) >> 4) <= v13)
      {
        sub_6FAB4();
      }

      if (sub_A25B74(a1, a4, *(v6 + 752)))
      {
        sub_A25C84(a1, a4, *(v6 + 752), &v65);
        v17 = *(v6 + 56);
        if (0xCF3CF3CF3CF3CF3DLL * ((a4[1] - *a4) >> 3) <= v17)
        {
          sub_6FAB4();
        }

        v44 = *(v6 + 116);
        v43 = *a4 + 168 * v17;
        sub_9BCD50(v43, a4, v63);
        sub_A25DEC(a1[1], (v6 + 768), *(v6 + 780), v61);
        v18 = v64;
        if ((v64 & 0x80u) != 0)
        {
          v18 = v63[1];
        }

        if (!v18)
        {
          goto LABEL_68;
        }

        v19 = v62;
        if ((v62 & 0x80u) != 0)
        {
          v19 = v61[1];
        }

        if (!v19)
        {
          goto LABEL_68;
        }

        v59 = 0;
        v58 = 0u;
        v57 = 0u;
        v56 = 0u;
        v55 = 0u;
        v60 = 0x7FFFFFFF;
        v54 = 0uLL;
        v53 = 0;
        v20 = sub_92FC60(a1[1], *(v12 + 56), 0, "line");
        v21 = v14 + 208 * v13;
        v22 = (v20 - *v20);
        if ((*v22 >= 0x57u && (v23 = v22[43]) != 0 && (v24 = a4, v25 = a3, *(v20 + v23)) || (v26 = sub_A26074(*a1, (v21 + 56)), v24 = a4, v25 = a3, v26)) && (v27 = sub_A260D0(a1, a2, v25, v24), v24 = a4, v27))
        {
          sub_A26570(a2, a3, &v48);
          v28 = v48;
          v53 = v48;
          v54 = v49;
          if (v48 == v49)
          {
            sub_A26300(a1, a2, a4, &v48);
          }

          else
          {
            v29 = *(v49 - 8);
            if (v29 >= (a3[1] - *a3) >> 5)
            {
              sub_6FAB4();
            }

            v30 = sub_A26804((*a3 + 32 * v29));
            sub_A26300(a1, v30, a4, &v48);
          }

          sub_A264C8(&v55, &v48);
          sub_2C13CC(&v48);
        }

        else
        {
          sub_A26300(a1, a2, v24, &v48);
          sub_A264C8(&v55, &v48);
          sub_2C13CC(&v48);
          v28 = 0;
        }

        v31 = HIBYTE(v57);
        if (v57 < 0)
        {
          v31 = v57;
        }

        if (v31)
        {
          v32 = BYTE7(v56);
          if (SBYTE7(v56) < 0)
          {
            v32 = *(&v55 + 1);
          }

          if (v32)
          {
            v33 = v67;
            if (v67 == v68)
            {
LABEL_38:
              v34 = 0;
            }

            else
            {
              while (v33[24] != 4)
              {
                v33 += 80;
                if (v33 == v68)
                {
                  goto LABEL_38;
                }
              }

              if (v60 == 0x7FFFFFFF)
              {
                goto LABEL_63;
              }

              v34 = 1;
            }

            sub_9924B0(v52, &v65);
            sub_992654(v52, v61);
            sub_9926AC(v52, &v55);
            sub_9927B4(v52, *(a5 + 968));
            sub_992704(v52, v44, (v43 + 136));
            if (v34)
            {
              sub_99275C(v52, v60, &v58);
            }

            sub_993224(v50, v52);
            v35 = v51;
            if ((v51 & 0x80u) != 0)
            {
              v35 = v50[1];
            }

            if (v35)
            {
              sub_A26898(v63, &v56 + 8, &__p);
              size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                size = __p.__r_.__value_.__l.__size_;
              }

              if (size)
              {
                sub_A26B5C(v36, a2, v50, &__p, &v53);
              }

              else if (sub_7E7E4(1u))
              {
                sub_19594F8(&v48);
                v39 = sub_4A5C(&v48, "Failed to generate a ticketing segment display text for system ", 63);
                std::ostream::operator<<(v39, *(v21 + 48));
                sub_1959680(&v48, v45);
                sub_7E854(v45, 1u);
                if (v46 < 0)
                {
                  operator delete(v45[0]);
                }

                sub_1959728(&v48);
              }

              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }
            }

            else if (sub_7E7E4(1u))
            {
              sub_19594F8(&v48);
              v38 = sub_4A5C(&v48, "Failed to format ticketing URL for system ", 42);
              std::ostream::operator<<(v38, *(v21 + 48));
              sub_1959680(&v48, &__p);
              sub_7E854(&__p, 1u);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              sub_1959728(&v48);
            }

            if (v51 < 0)
            {
              operator delete(v50[0]);
            }

            sub_992650(v52);
          }
        }

LABEL_63:
        if (v28)
        {
          operator delete(v28);
        }

        if (SHIBYTE(v59) < 0)
        {
          operator delete(v58);
          if ((SHIBYTE(v57) & 0x80000000) == 0)
          {
LABEL_67:
            if ((SBYTE7(v56) & 0x80000000) == 0)
            {
              goto LABEL_68;
            }

LABEL_74:
            operator delete(v55);
            if ((v62 & 0x80000000) == 0)
            {
LABEL_69:
              if ((v64 & 0x80000000) == 0)
              {
                goto LABEL_70;
              }

              goto LABEL_76;
            }

LABEL_75:
            operator delete(v61[0]);
            if ((v64 & 0x80000000) == 0)
            {
LABEL_70:
              v40 = v67;
              if (!v67)
              {
LABEL_81:
                if (v66 < 0)
                {
                  operator delete(v65);
                }

                return;
              }

LABEL_77:
              v41 = v68;
              v42 = v40;
              if (v68 != v40)
              {
                do
                {
                  v41 -= 80;
                  sub_993AF8(v41);
                }

                while (v41 != v40);
                v42 = v67;
              }

              v68 = v40;
              operator delete(v42);
              goto LABEL_81;
            }

LABEL_76:
            operator delete(v63[0]);
            v40 = v67;
            if (!v67)
            {
              goto LABEL_81;
            }

            goto LABEL_77;
          }
        }

        else if ((SHIBYTE(v57) & 0x80000000) == 0)
        {
          goto LABEL_67;
        }

        operator delete(*(&v56 + 1));
        if (SBYTE7(v56) < 0)
        {
          goto LABEL_74;
        }

LABEL_68:
        if ((v62 & 0x80000000) == 0)
        {
          goto LABEL_69;
        }

        goto LABEL_75;
      }
    }
  }
}

void sub_A259B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62, char a63)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a24);
  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a62 < 0)
  {
    operator delete(a57);
  }

  sub_992650(&a63);
  if (v63)
  {
    STACK[0x210] = v63;
    operator delete(v63);
    sub_2C13CC(&STACK[0x220]);
    if (*(v64 - 169) < 0)
    {
LABEL_9:
      operator delete(*(v64 - 192));
      if ((*(v64 - 145) & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }
  }

  else
  {
    sub_2C13CC(&STACK[0x220]);
    if (*(v64 - 169) < 0)
    {
      goto LABEL_9;
    }
  }

  if ((*(v64 - 145) & 0x80000000) == 0)
  {
LABEL_10:
    sub_9D8E70(v64 - 144);
    _Unwind_Resume(a1);
  }

LABEL_13:
  operator delete(*(v64 - 168));
  sub_9D8E70(v64 - 144);
  _Unwind_Resume(a1);
}

void sub_A25B3C()
{
  if (*(v0 - 145) < 0)
  {
    JUMPOUT(0xA25B24);
  }

  JUMPOUT(0xA25AD8);
}

BOOL sub_A25B74(uint64_t *a1, void *a2, unint64_t a3)
{
  v3 = a2[9];
  if (0x66FD0EB66FD0EB67 * ((a2[10] - v3) >> 3) <= a3)
  {
    sub_6FAB4();
  }

  v4 = v3 + 696 * a3;
  v5 = *(v4 + 64);
  v6 = a2[12];
  if (0x4EC4EC4EC4EC4EC5 * ((a2[13] - v6) >> 4) <= v5)
  {
    sub_6FAB4();
  }

  v8 = sub_93E04C(*a1, *(v6 + 208 * v5 + 56), 0, "system");
  v9 = (v8 - *v8);
  if (*v9 >= 0x17u && v9[11])
  {
    return 1;
  }

  v11 = sub_92FC60(a1[1], *(v4 + 56), 0, "line");
  result = 0;
  v12 = (v11 - *v11);
  if (*v12 >= 0x55u)
  {
    return v12[42] != 0;
  }

  return result;
}

void sub_A25C84(uint64_t *a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a2[9];
  if (0x66FD0EB66FD0EB67 * ((a2[10] - v5) >> 3) <= a3)
  {
    sub_6FAB4();
  }

  v6 = v5 + 696 * a3;
  v7 = *(v6 + 64);
  v8 = a2[12];
  if (0x4EC4EC4EC4EC4EC5 * ((a2[13] - v8) >> 4) <= v7)
  {
    sub_6FAB4();
  }

  v10 = sub_92FC60(a1[1], *(v6 + 56), 0, "line");
  v11 = (v10 - *v10);
  if (*v11 < 0x55u || !v11[42])
  {
    v12 = sub_93E04C(*a1, *(v8 + 208 * v7 + 56), 0, "system");
    v15 = (v12 - *v12);
    if (*v15 < 0x17u)
    {
      goto LABEL_11;
    }

    v14 = v15[11];
    if (!v14)
    {
      goto LABEL_11;
    }

LABEL_10:
    v16 = (v12 + v14 + *(v12 + v14));
    goto LABEL_12;
  }

  v12 = sub_92FC60(a1[1], *(v6 + 56), 0, "line");
  v13 = (v12 - *v12);
  if (*v13 >= 0x55u)
  {
    v14 = v13[42];
    if (v14)
    {
      goto LABEL_10;
    }
  }

LABEL_11:
  v16 = 0;
LABEL_12:

  sub_9E22EC(v16, a4);
}

int *sub_A25DEC@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, unsigned int a3@<W2>, void *a4@<X8>)
{
  v8 = *a2;
  result = sub_3A231C(a1, *a2, 0);
  v10 = (result - *result);
  v11 = *v10;
  if (v11 < 5)
  {
    v12 = 0;
  }

  else
  {
    v12 = v10[2];
    if (v10[2])
    {
      v12 += result + *(result + v12);
    }
  }

  v13 = (v12 + 4 * HIDWORD(v8) + 4 + *(v12 + 4 * HIDWORD(v8) + 4));
  v14 = (v13 - *v13);
  if (*v14 < 0x29u)
  {
    goto LABEL_28;
  }

  v15 = v14[20];
  if (!v15)
  {
    goto LABEL_28;
  }

  v16 = *(&v13[a3 + 1] + v15 + *(v13 + v15));
  if (v16 == -1)
  {
    goto LABEL_28;
  }

  if (v11 < 0x15)
  {
    v17 = 0;
  }

  else
  {
    v17 = v10[10];
    if (v17)
    {
      v17 += result + *(result + v17);
    }
  }

  v18 = v17 + 4 * v16;
  v21 = *(v18 + 4);
  v19 = v18 + 4;
  v20 = v21;
  v22 = *a2;
  v23 = sub_3A231C(a1, v22, 0);
  v24 = &v23[-*v23];
  if (*v24 < 5u)
  {
    v25 = 0;
  }

  else
  {
    v25 = *(v24 + 2);
    if (*(v24 + 2))
    {
      v25 += &v23[*&v23[v25]];
    }
  }

  v26 = (v25 + 4 * HIDWORD(v22) + 4 + *(v25 + 4 * HIDWORD(v22) + 4));
  v27 = (v26 - *v26);
  if (*v27 >= 0xDu && (v28 = v27[6]) != 0)
  {
    v29 = *(v26 + v28);
  }

  else
  {
    v29 = -1;
  }

  result = sub_502FF8(a1, *&v23[24 * v29 + 4 + 24 * a3 + *(v24 + 3) + *&v23[*(v24 + 3)]], 0, "stop");
  v30 = (result - *result);
  if (*v30 >= 0x33u && (v31 = v30[25]) != 0 && (v32 = (v19 + v20 - *(v19 + v20)), *v32 >= 5u) && (v33 = v32[2]) != 0 && (v34 = *(v19 + v20 + v33), v35 = (result + v31 + *(result + v31)), v34 < *v35))
  {
    v36 = (&v35[v34 + 1] + v35[v34 + 1]);
    v39 = *v36;
    v38 = v36 + 1;
    v37 = v39;
    if (v39 >= 0x17)
    {
      operator new();
    }

    *(a4 + 23) = v37;
    if (v37)
    {
      result = memcpy(a4, v38, v37);
    }

    *(a4 + v37) = 0;
  }

  else
  {
LABEL_28:
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  return result;
}

BOOL sub_A26074(uint64_t a1, unint64_t *a2)
{
  v2 = sub_93E04C(a1, *a2, 0, "system");
  v3 = (v2 - *v2);
  return *v3 >= 0x1Bu && (v4 = v3[13]) != 0 && *(v2 + v4) != 0;
}

BOOL sub_A260D0(uint64_t *a1, void *a2, void *a3, void *a4)
{
  v4 = a2[7];
  if (v4 == -1)
  {
    return 0;
  }

  if (v4 >= (a3[1] - *a3) >> 5)
  {
    sub_6FAB4();
  }

  v5 = (*a3 + 32 * v4);
  v6 = *v5;
  v7 = v5[1];
  if (*v5 == v7)
  {
    goto LABEL_42;
  }

  v8 = v7 - v6;
  if (v7 - v6 == 104)
  {
    v9 = 0;
  }

  else
  {
    v10 = 0;
    v11 = v6;
    while (*v11)
    {
      v11 += 104;
      v10 -= 104;
      if (v11 == v7)
      {
        v12 = v7 - v6;
        goto LABEL_11;
      }
    }

    v12 = -v10;
LABEL_11:
    v9 = 0x4EC4EC4EC4EC4EC5 * (v12 >> 3);
  }

  if (0x4EC4EC4EC4EC4EC5 * (v8 >> 3) <= v9)
  {
LABEL_42:
    sub_6FAB4();
  }

  v13 = &v6[104 * v9];
  v14 = *(v13 + 1);
  v15 = *(v13 + 2);
  if (v14 == v15)
  {
    return 0;
  }

  while ((*v14 - 5) < 2)
  {
    v14 += 5704;
    if (v14 == v15)
    {
      return 0;
    }
  }

  if (*v14 != 2)
  {
    return 0;
  }

  v16 = *(v14 + 752);
  v17 = a2[1];
  v18 = a2[2];
  if (v17 != v18)
  {
    while (*v17 != 2)
    {
      v17 += 5704;
      if (v17 == v18)
      {
        v17 = a2[2];
        break;
      }
    }
  }

  sub_A26D28(a1, a4, *(v17 + 752), v32);
  sub_A26D28(a1, a4, v16, __p);
  v21 = v33;
  if ((v33 & 0x80u) == 0)
  {
    v22 = v33;
  }

  else
  {
    v22 = v32[1];
  }

  v23 = v31;
  v24 = v31;
  if ((v31 & 0x80u) != 0)
  {
    v23 = __p[1];
  }

  if (v22 == v23)
  {
    if ((v33 & 0x80u) == 0)
    {
      v25 = v32;
    }

    else
    {
      v25 = v32[0];
    }

    if ((v31 & 0x80u) == 0)
    {
      v26 = __p;
    }

    else
    {
      v26 = __p[0];
    }

    result = memcmp(v25, v26, v22) == 0;
    if ((v24 & 0x80000000) == 0)
    {
      goto LABEL_40;
    }
  }

  else
  {
    result = 0;
    if ((v31 & 0x80000000) == 0)
    {
      goto LABEL_40;
    }
  }

  v28 = result;
  operator delete(__p[0]);
  result = v28;
LABEL_40:
  if (v21 < 0)
  {
    v29 = result;
    operator delete(v32[0]);
    return v29;
  }

  return result;
}

void sub_A262E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_A26300@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 16);
  v6 = *(v5 - 5616);
  if (v6 == 0x7FFFFFFF)
  {
    result.n128_u64[0] = 0;
    *(a4 + 48) = 0u;
    *(a4 + 64) = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *a4 = 0u;
    *(a4 + 72) = 0x7FFFFFFF;
  }

  else
  {
    *(a4 + 64) = 0;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 72) = v6;
    v8 = *(v5 - 5656);
    if (0xCF3CF3CF3CF3CF3DLL * ((a3[1] - *a3) >> 3) <= v8)
    {
      sub_6FAB4();
    }

    v10 = *a3 + 168 * v8;
    sub_9BCD50(v10, a3, &v15);
    if (*(a4 + 47) < 0)
    {
      operator delete(*(a4 + 24));
    }

    *(a4 + 24) = v15;
    *(a4 + 40) = v16;
    sub_A25DEC(*(a1 + 8), (v5 - 4936), *(v5 - 4924), &v15);
    if (*(a4 + 23) < 0)
    {
      operator delete(*a4);
    }

    result.n128_u64[0] = v15;
    *a4 = v15;
    *(a4 + 16) = v16;
    v11 = (a4 + 48);
    if (a4 + 48 != v10 + 136)
    {
      v12 = *(v10 + 159);
      if (*(a4 + 71) < 0)
      {
        if (v12 >= 0)
        {
          v13 = (v10 + 136);
        }

        else
        {
          v13 = *(v10 + 136);
        }

        if (v12 >= 0)
        {
          v14 = *(v10 + 159);
        }

        else
        {
          v14 = *(v10 + 144);
        }

        sub_13B38(v11, v13, v14);
      }

      else if ((*(v10 + 159) & 0x80) != 0)
      {
        sub_13A68(v11, *(v10 + 136), *(v10 + 144));
      }

      else
      {
        result = *(v10 + 136);
        *(a4 + 64) = *(v10 + 152);
        *v11 = result;
      }
    }
  }

  return result;
}

uint64_t sub_A264C8(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = v5;
  *(a2 + 47) = 0;
  *(a2 + 24) = 0;
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v6 = a2[3];
  *(a1 + 64) = *(a2 + 8);
  *(a1 + 48) = v6;
  *(a2 + 71) = 0;
  *(a2 + 48) = 0;
  *(a1 + 72) = *(a2 + 18);
  return a1;
}

void sub_A26570(char *a2@<X1>, void *a3@<X2>, unint64_t **a5@<X8>)
{
  v5 = *(a2 + 7);
  if (v5 == -1)
  {
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
  }

  else
  {
    if (v5 >= (a3[1] - *a3) >> 5)
    {
      sub_6FAB4();
    }

    if ((0x4EC4EC4EC4EC4EC5 * ((*(*a3 + 32 * v5 + 8) - *(*a3 + 32 * v5)) >> 3)) <= 1)
    {
      operator new();
    }

    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
  }
}

void sub_A267DC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

char *sub_A26804(char **a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    goto LABEL_12;
  }

  v3 = v2 - v1;
  if (v2 - v1 == 104)
  {
    v4 = 0;
  }

  else
  {
    v5 = 0;
    v6 = *a1;
    while (*v6)
    {
      v6 += 104;
      v5 -= 104;
      if (v6 == v2)
      {
        v7 = v2 - v1;
        goto LABEL_9;
      }
    }

    v7 = -v5;
LABEL_9:
    v4 = 0x4EC4EC4EC4EC4EC5 * (v7 >> 3);
  }

  if (0x4EC4EC4EC4EC4EC5 * (v3 >> 3) <= v4)
  {
LABEL_12:
    sub_6FAB4();
  }

  return &v1[104 * v4];
}

void sub_A26898(uint64_t a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  v5 = *(a2 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 8);
  }

  if (v5)
  {
    v6 = *(a3 + 23);
    if ((v6 & 0x80u) != 0)
    {
      v6 = *(a3 + 8);
    }

    if (v6)
    {
      operator new();
    }
  }

  a4->__r_.__value_.__r.__words[0] = 0;
  a4->__r_.__value_.__l.__size_ = 0;
  a4->__r_.__value_.__r.__words[2] = 0;
}

void sub_A26B2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_A26B5C(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, uint64_t **a5)
{
  v7 = *(a2 + 88);
  if (v7 >= *(a2 + 96))
  {
    v8 = sub_A26F64((a2 + 80), a3, a4);
    *(a2 + 88) = v8;
    if (*a5 == a5[1])
    {
      return;
    }
  }

  else
  {
    if (*(a3 + 23) < 0)
    {
      v9 = a4;
      sub_325C(&v19, *a3, *(a3 + 1));
      a4 = v9;
    }

    else
    {
      v19 = *a3;
      v20 = *(a3 + 2);
    }

    if (*(a4 + 23) < 0)
    {
      sub_325C(&v17, *a4, *(a4 + 1));
    }

    else
    {
      v17 = *a4;
      v18 = *(a4 + 2);
    }

    v10 = v19;
    *(v7 + 16) = v20;
    *v7 = v10;
    *(v7 + 24) = v17;
    *(v7 + 40) = v18;
    *(v7 + 48) = 0;
    *(v7 + 56) = 0;
    *(v7 + 64) = 0;
    v8 = v7 + 72;
    *(a2 + 88) = v8;
    *(a2 + 88) = v8;
    if (*a5 == a5[1])
    {
      return;
    }
  }

  v11 = *(v8 - 16);
  if (v11 >= *(v8 - 8))
  {
    v12 = sub_A27220(v8 - 24);
    *(v8 - 16) = v12;
    v13 = *a5;
    v14 = a5[1];
    if (*a5 == v14)
    {
      return;
    }
  }

  else
  {
    *v11 = 0;
    v11[1] = 0;
    v12 = v11 + 3;
    v11[2] = 0;
    *(v8 - 16) = v11 + 3;
    v13 = *a5;
    v14 = a5[1];
    if (*a5 == v14)
    {
      return;
    }
  }

  v15 = *(v12 - 2);
  do
  {
    while (1)
    {
      v16 = *v13;
      *&v19 = *v13;
      if (v15 < *(v12 - 1))
      {
        break;
      }

      v15 = sub_A273B8((v12 - 3), &v19);
      *(v12 - 2) = v15;
      if (++v13 == v14)
      {
        return;
      }
    }

    *v15 = v16;
    v15[1] = 0;
    v15[2] = 0;
    v15[3] = 0;
    v15 += 4;
    *(v12 - 2) = v15;
    ++v13;
  }

  while (v13 != v14);
}

void sub_A26CF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    *(v18 + 88) = v19;
    _Unwind_Resume(exception_object);
  }

  *(v18 + 88) = v19;
  _Unwind_Resume(exception_object);
}

int *sub_A26D28@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = a2[9];
  if (0x66FD0EB66FD0EB67 * ((a2[10] - v5) >> 3) <= a3)
  {
    sub_6FAB4();
  }

  v6 = v5 + 696 * a3;
  v7 = *(v6 + 64);
  v8 = a2[12];
  if (0x4EC4EC4EC4EC4EC5 * ((a2[13] - v8) >> 4) <= v7)
  {
    sub_6FAB4();
  }

  v10 = sub_92FC60(a1[1], *(v6 + 56), 0, "line");
  v11 = (v10 - *v10);
  if (*v11 < 0x55u || !v11[42])
  {
    result = sub_93E04C(*a1, *(v8 + 208 * v7 + 56), 0, "system");
    v18 = (result - *result);
    if (*v18 >= 0x17u)
    {
      v19 = v18[11];
      if (v19)
      {
        v15 = result + v19 + *(result + v19);
        v20 = &v15[-*v15];
        if (*v20 <= 4u)
        {
          goto LABEL_18;
        }

        v17 = *(v20 + 2);
        if (!v17)
        {
          goto LABEL_18;
        }

        goto LABEL_14;
      }
    }

LABEL_17:
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    return result;
  }

  result = sub_92FC60(a1[1], *(v6 + 56), 0, "line");
  v13 = (result - *result);
  if (*v13 < 0x55u)
  {
    goto LABEL_17;
  }

  v14 = v13[42];
  if (!v14)
  {
    goto LABEL_17;
  }

  v15 = result + v14 + *(result + v14);
  v16 = &v15[-*v15];
  if (*v16 <= 4u || (v17 = *(v16 + 2)) == 0)
  {
LABEL_18:
    *(a4 + 23) = 0;
    *a4 = 0;
    return result;
  }

LABEL_14:
  v21 = &v15[v17];
  v22 = *v21;
  v23 = *&v21[v22];
  if (v23 >= 0x17)
  {
    operator new();
  }

  *(a4 + 23) = v23;
  if (v23)
  {
    result = memcpy(a4, &v21[v22 + 4], v23);
  }

  *(a4 + v23) = 0;
  return result;
}

uint64_t sub_A26F64(void **a1, __int128 *a2, __int128 *a3)
{
  v3 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3) + 1;
  if (v3 > 0x38E38E38E38E38ELL)
  {
    sub_1794();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v6 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (v6 <= 0x38E38E38E38E38ELL)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 8 * ((a1[1] - *a1) >> 3);
  if (*(a2 + 23) < 0)
  {
    sub_325C(&v18, *a2, *(a2 + 1));
  }

  else
  {
    v18 = *a2;
    v19 = *(a2 + 2);
  }

  if (*(a3 + 23) < 0)
  {
    sub_325C(&v16, *a3, *(a3 + 1));
  }

  else
  {
    v16 = *a3;
    v17 = *(a3 + 2);
  }

  *v7 = v18;
  *(v7 + 16) = v19;
  *(v7 + 24) = v16;
  *(v7 + 40) = v17;
  *(v7 + 48) = 0;
  v8 = *a1;
  v9 = a1[1];
  v10 = *a1 + v7 - v9;
  *(v7 + 56) = 0;
  *(v7 + 64) = 0;
  if (v9 != v8)
  {
    v11 = v8;
    v12 = v10;
    do
    {
      v13 = *v11;
      *(v12 + 16) = *(v11 + 2);
      *v12 = v13;
      *(v11 + 1) = 0;
      *(v11 + 2) = 0;
      *v11 = 0;
      v14 = *(v11 + 24);
      *(v12 + 40) = *(v11 + 5);
      *(v12 + 24) = v14;
      *(v11 + 4) = 0;
      *(v11 + 5) = 0;
      *(v11 + 3) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      *(v12 + 48) = *(v11 + 3);
      *(v12 + 64) = *(v11 + 8);
      *(v11 + 6) = 0;
      *(v11 + 7) = 0;
      *(v11 + 8) = 0;
      v11 += 72;
      v12 += 72;
    }

    while (v11 != v9);
    do
    {
      sub_9D2428(v8);
      v8 += 72;
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = (v7 + 72);
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7 + 72;
}

void sub_A27194(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
    sub_A271CC(&a10);
    _Unwind_Resume(a1);
  }

  sub_A271CC(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_A271CC(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 72;
    sub_9D2428(i - 72);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_A27220(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = v2 - *a1;
  v4 = 0xAAAAAAAAAAAAAAABLL * (v3 >> 3) + 1;
  if (v4 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - v1) >> 3) > v4)
  {
    v4 = 0x5555555555555556 * ((*(a1 + 16) - v1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - v1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    if (v6 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = (8 * (v3 >> 3));
  *v7 = 0;
  v7[1] = 0;
  v7[2] = 0;
  v8 = v7 + 3;
  v9 = v7 - v3;
  if (v1 != v2)
  {
    v10 = v1;
    v11 = v9;
    do
    {
      *v11 = *v10;
      *(v11 + 2) = v10[2];
      *v10 = 0;
      v10[1] = 0;
      v10[2] = 0;
      v10 += 3;
      v11 += 24;
    }

    while (v10 != v2);
    do
    {
      v13 = *v1;
      if (*v1)
      {
        v14 = v1[1];
        v12 = *v1;
        if (v14 != v13)
        {
          do
          {
            v15 = *(v14 - 3);
            if (v15)
            {
              *(v14 - 2) = v15;
              operator delete(v15);
            }

            v14 -= 32;
          }

          while (v14 != v13);
          v12 = *v1;
        }

        v1[1] = v13;
        operator delete(v12);
      }

      v1 += 3;
    }

    while (v1 != v2);
    v1 = *a1;
  }

  *a1 = v9;
  *(a1 + 8) = v8;
  *(a1 + 16) = 0;
  if (v1)
  {
    operator delete(v1);
  }

  return v8;
}

void *sub_A273B8(uint64_t a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = (v3 - *a1) >> 5;
  v5 = v4 + 1;
  if ((v4 + 1) >> 59)
  {
    sub_1794();
  }

  v7 = *(a1 + 16) - v2;
  if (v7 >> 4 > v5)
  {
    v5 = v7 >> 4;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFE0)
  {
    v8 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v5;
  }

  if (v8)
  {
    if (!(v8 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v9 = (v3 - *a1) >> 5;
  v10 = (32 * v4);
  *v10 = *a2;
  v10[1] = 0;
  v10[2] = 0;
  v10[3] = 0;
  v11 = 32 * v4 - 32 * v9;
  if (v2 != v3)
  {
    v12 = v2;
    v13 = v11;
    do
    {
      *v13 = *v12;
      *(v13 + 16) = 0;
      *(v13 + 24) = 0;
      *(v13 + 8) = *(v12 + 1);
      *(v13 + 24) = v12[3];
      v12[1] = 0;
      v12[2] = 0;
      v12[3] = 0;
      v12 += 4;
      v13 += 32;
    }

    while (v12 != v3);
    do
    {
      v14 = v2[1];
      if (v14)
      {
        v2[2] = v14;
        operator delete(v14);
      }

      v2 += 4;
    }

    while (v2 != v3);
    v2 = *a1;
  }

  *a1 = v11;
  *(a1 + 8) = 32 * v4 + 32;
  *(a1 + 16) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return (32 * v4 + 32);
}

void sub_A2750C()
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
  xmmword_27B3CD0 = 0u;
  unk_27B3CE0 = 0u;
  dword_27B3CF0 = 1065353216;
  sub_3A9A34(&xmmword_27B3CD0, v0, v0);
  sub_3A9A34(&xmmword_27B3CD0, v3, v3);
  sub_3A9A34(&xmmword_27B3CD0, __p, __p);
  sub_3A9A34(&xmmword_27B3CD0, v9, v9);
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
    qword_27B3CA8 = 0;
    qword_27B3CB0 = 0;
    qword_27B3CA0 = 0;
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

void sub_A27754(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B3CB8)
  {
    qword_27B3CC0 = qword_27B3CB8;
    operator delete(qword_27B3CB8);
  }

  _Unwind_Resume(exception_object);
}

void *sub_A27834(void *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v5 = result;
    do
    {
      result = sub_A2788C(v5, v2, (a2 + 3), (a2 + 36));
      v2 += 412;
    }

    while (v2 != v3);
  }

  return result;
}

void *sub_A2788C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_A21C90(v11, a2);
  while (1)
  {
    sub_A21CE8(v11, __p);
    v7 = sub_A21B4C(v11, __p);
    sub_98ED24(__p);
    if (!v7)
    {
      break;
    }

    if (*sub_A21CB8(v11) == 2)
    {
      v8 = sub_A21CB8(v11);
      if (sub_A27B50(v8, v8))
      {
        sub_A21834(v11, 0xFFFFFFFFFFFFFFFFLL, __p);
        *(v8 + 1008) = sub_A279DC(a1, v8, __p, a3, a4);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }
      }
    }

    sub_A21708(v11);
  }

  return sub_98ED24(v11);
}

void sub_A2797C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (__p)
  {
    operator delete(__p);
    sub_98ED24(&a28);
    _Unwind_Resume(a1);
  }

  sub_98ED24(&a28);
  _Unwind_Resume(a1);
}

uint64_t sub_A279DC(uint64_t a1, uint64_t a2, void **a3, uint64_t a4, uint64_t a5)
{
  v6 = *(*(a4 + 72) + 696 * *(a2 + 752) + 554);
  v7 = *(a2 + 116);
  if (v6 <= 2)
  {
    if (v6 >= 2)
    {
      if (v7 == 0x7FFFFFFF)
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }

LABEL_10:
    if (sub_B6E0((a2 + 144)))
    {
      if (sub_9CE360(*(a5 + 4), a2, *a1, (a1 + 8)))
      {
        return 4;
      }

      else
      {
        return 2;
      }
    }

    return 1;
  }

  if (v6 != 3)
  {
    if (v6 == 4)
    {
      return 5;
    }

    if (v6 != 5)
    {
      return 1;
    }

    goto LABEL_10;
  }

  if (v7 == 0x7FFFFFFF)
  {
    return 2;
  }

  if (*(a2 + 440) == *(a2 + 448) || *(*a1 + 1177) < 9u || !sub_B6E0((a2 + 144)))
  {
    return 1;
  }

  v12 = *a3;
  result = 3;
  while (v12 != a3[1])
  {
    v13 = *v12;
    if (**v12 == 2 && *(v13 + 792) == 1 && (v13[186] & 1) != 0)
    {
      return 1;
    }

    ++v12;
  }

  return result;
}

BOOL sub_A27B50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 1008);
  v3 = 1;
  if (v2 > 2)
  {
    if (v2 != 3)
    {
      if (v2 != 4)
      {
        return v2 != 5;
      }

      if (*(a2 + 488) != *(a2 + 496))
      {
        if (!sub_7E7E4(1u))
        {
          return v3;
        }

        sub_19594F8(&v17);
        sub_4A5C(&v17, "Encoded time display type of countdown in route handle but step has no upcoming departures", 90);
        if ((v27 & 0x10) != 0)
        {
          v7 = v26;
          if (v26 < v23)
          {
            v26 = v23;
            v7 = v23;
          }

          v8 = &v22;
        }

        else
        {
          if ((v27 & 8) == 0)
          {
            v4 = 0;
            v16 = 0;
            goto LABEL_69;
          }

          v8 = v20;
          v7 = v21;
        }

        v13 = *v8;
        v4 = v7 - *v8;
        if (v4 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v4 >= 0x17)
        {
          operator new();
        }

        v16 = v7 - *v8;
        if (!v4)
        {
          goto LABEL_69;
        }

LABEL_68:
        memmove(&__p, v13, v4);
        goto LABEL_69;
      }

      return 0;
    }

    if (*(a2 + 116) != 0x7FFFFFFF && *(a2 + 440) != *(a2 + 448))
    {
      return 0;
    }

    if (!sub_7E7E4(1u))
    {
      return v3;
    }

    sub_19594F8(&v17);
    sub_4A5C(&v17, "Encoded time display type of multiple departures in route handle but step has no future departures", 98);
    if ((v27 & 0x10) != 0)
    {
      v5 = v26;
      if (v26 < v23)
      {
        v26 = v23;
        v5 = v23;
      }

      v6 = &v22;
    }

    else
    {
      if ((v27 & 8) == 0)
      {
        v4 = 0;
        v16 = 0;
        goto LABEL_69;
      }

      v6 = v20;
      v5 = v21;
    }

    v13 = *v6;
    v4 = v5 - *v6;
    if (v4 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v4 >= 0x17)
    {
      operator new();
    }

    v16 = v5 - *v6;
    if (!v4)
    {
      goto LABEL_69;
    }

    goto LABEL_68;
  }

  if (v2 == 1)
  {
    if (*(a2 + 116) == 0x7FFFFFFF)
    {
      if (!sub_7E7E4(1u))
      {
        return v3;
      }

      sub_19594F8(&v17);
      sub_4A5C(&v17, "Encoded time display type of single departure but step is missing a departure time", 82);
      if ((v27 & 0x10) != 0)
      {
        v9 = v26;
        if (v26 < v23)
        {
          v26 = v23;
          v9 = v23;
        }

        v10 = &v22;
      }

      else
      {
        if ((v27 & 8) == 0)
        {
          v4 = 0;
          v16 = 0;
          goto LABEL_69;
        }

        v10 = v20;
        v9 = v21;
      }

      v13 = *v10;
      v4 = v9 - *v10;
      if (v4 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v4 >= 0x17)
      {
        operator new();
      }

      v16 = v9 - *v10;
      if (!v4)
      {
        goto LABEL_69;
      }

      goto LABEL_68;
    }

    return 0;
  }

  if (v2 != 2)
  {
    return v3;
  }

  if (sub_B6E0((a2 + 144)))
  {
    return 0;
  }

  if (!sub_7E7E4(1u))
  {
    return v3;
  }

  sub_19594F8(&v17);
  sub_4A5C(&v17, "Encoded time display type of frequency in route handle but step does not have a frequency", 89);
  if ((v27 & 0x10) != 0)
  {
    v11 = v26;
    if (v26 < v23)
    {
      v26 = v23;
      v11 = v23;
    }

    v12 = &v22;
LABEL_63:
    v13 = *v12;
    v4 = v11 - *v12;
    if (v4 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v4 >= 0x17)
    {
      operator new();
    }

    v16 = v11 - *v12;
    if (!v4)
    {
      goto LABEL_69;
    }

    goto LABEL_68;
  }

  if ((v27 & 8) != 0)
  {
    v12 = v20;
    v11 = v21;
    goto LABEL_63;
  }

  v4 = 0;
  v16 = 0;
LABEL_69:
  *(&__p + v4) = 0;
  sub_7E854(&__p, 1u);
  if (v16 < 0)
  {
    operator delete(__p);
  }

  if (v25 < 0)
  {
    operator delete(v24);
  }

  std::locale::~locale(&v19);
  std::ostream::~ostream();
  std::ios::~ios();
  return 1;
}

void sub_A28138(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

void sub_A284D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B3D40)
  {
    qword_27B3D48 = qword_27B3D40;
    operator delete(qword_27B3D40);
  }

  _Unwind_Resume(exception_object);
}

void *sub_A28584(void *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v4 = result;
    do
    {
      result = sub_A285D0(v4, v2);
      v2 += 412;
    }

    while (v2 != v3);
  }

  return result;
}

void *sub_A285D0(uint64_t a1, void *a2)
{
  sub_A21C90(v6, a2);
  while (1)
  {
    sub_A21CE8(v6, v5);
    v2 = sub_A21B4C(v6, v5);
    sub_98ED24(v5);
    if (!v2)
    {
      break;
    }

    if (*sub_A21CB8(v6) == 2)
    {
      v3 = sub_A21CB8(v6);
      sub_A286A4(v3, v3);
    }

    sub_A21708(v6);
  }

  return sub_98ED24(v6);
}

void sub_A28674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_98ED24(&a9);
  sub_98ED24(&a28);
  _Unwind_Resume(a1);
}

void sub_A286A4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 784) == 1)
  {
    v3 = *(a2 + 1008);
    if ((v3 - 2) >= 3)
    {
      if (v3 == 1 && *(a2 + 116) != 0x7FFFFFFF)
      {
        v17 = *(a2 + 116 + 4 * (*(a2 + 120) != 0x7FFFFFFF));
        v18 = *(a2 + 2160);
        v19 = *(a2 + 2168);
        if (v18 >= v19)
        {
          v21 = *(a2 + 2152);
          v22 = 0xAAAAAAAAAAAAAAABLL * ((v18 - v21) >> 2) + 1;
          if (v22 > 0x1555555555555555)
          {
LABEL_37:
            sub_1794();
          }

          v23 = 0xAAAAAAAAAAAAAAABLL * ((v19 - v21) >> 2);
          if (2 * v23 > v22)
          {
            v22 = 2 * v23;
          }

          if (v23 >= 0xAAAAAAAAAAAAAAALL)
          {
            v24 = 0x1555555555555555;
          }

          else
          {
            v24 = v22;
          }

          if (v24)
          {
            if (v24 <= 0x1555555555555555)
            {
              operator new();
            }

            goto LABEL_38;
          }

          v25 = 4 * ((v18 - v21) >> 2);
          *v25 = *(a2 + 128);
          *(v25 + 8) = v17;
          v20 = v25 + 12;
          v26 = (v25 - (v18 - v21));
          memcpy(v26, v21, v18 - v21);
          *(a2 + 2152) = v26;
          *(a2 + 2160) = v20;
          *(a2 + 2168) = 0;
          if (v21)
          {
            operator delete(v21);
          }
        }

        else
        {
          *v18 = *(a2 + 128);
          *(v18 + 8) = v17;
          v20 = v18 + 12;
        }

        *(a2 + 2160) = v20;
      }
    }

    else
    {
      v4 = *(a2 + 488);
      v5 = *(a2 + 496);
      if (v4 != v5)
      {
        v6 = *(a2 + 2160);
        while (1)
        {
          while (1)
          {
            v7 = *(v4 + 4);
            v8 = *(a2 + 2168);
            if (v6 >= v8)
            {
              break;
            }

            *v6 = *(v4 + 12);
            *(v6 + 8) = v7;
            v6 += 12;
            *(a2 + 2160) = v6;
            v4 += 28;
            if (v4 == v5)
            {
              return;
            }
          }

          v9 = *(a2 + 2152);
          v10 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v9) >> 2);
          v11 = v10 + 1;
          if (v10 + 1 > 0x1555555555555555)
          {
            goto LABEL_37;
          }

          v12 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v9) >> 2);
          if (2 * v12 > v11)
          {
            v11 = 2 * v12;
          }

          v13 = v12 >= 0xAAAAAAAAAAAAAAALL ? 0x1555555555555555 : v11;
          if (v13)
          {
            break;
          }

          v14 = v6;
          v15 = 4 * ((v6 - v9) >> 2);
          *v15 = *(v4 + 12);
          *(v15 + 8) = v7;
          v6 = v15 + 12;
          v16 = (12 * v10 - (v14 - v9));
          memcpy(v16, v9, v14 - v9);
          *(a2 + 2152) = v16;
          *(a2 + 2160) = v6;
          *(a2 + 2168) = 0;
          if (v9)
          {
            operator delete(v9);
          }

          *(a2 + 2160) = v6;
          v4 += 28;
          if (v4 == v5)
          {
            return;
          }
        }

        if (v13 <= 0x1555555555555555)
        {
          operator new();
        }

LABEL_38:
        sub_1808();
      }
    }
  }
}

void sub_A28968()
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
  xmmword_27B3DB0 = 0u;
  unk_27B3DC0 = 0u;
  dword_27B3DD0 = 1065353216;
  sub_3A9A34(&xmmword_27B3DB0, v0, v0);
  sub_3A9A34(&xmmword_27B3DB0, v3, v3);
  sub_3A9A34(&xmmword_27B3DB0, __p, __p);
  sub_3A9A34(&xmmword_27B3DB0, v9, v9);
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
    qword_27B3D88 = 0;
    qword_27B3D90 = 0;
    qword_27B3D80 = 0;
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

void sub_A28BB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B3D98)
  {
    qword_27B3DA0 = qword_27B3D98;
    operator delete(qword_27B3D98);
  }

  _Unwind_Resume(exception_object);
}

void *sub_A28C5C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = &off_266FFF8;
  result[1] = a2;
  result[2] = a3;
  result[3] = a4;
  return result;
}

void sub_A28C80(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    do
    {
      v7 = *(v3 + 16);
      v8 = 0uLL;
      if (v7 > 2)
      {
        if (v7 == 3)
        {
          sub_990E44(a1[2], *(v3 + 8), &v34);
        }

        else
        {
          if (v7 != 4)
          {
            goto LABEL_14;
          }

          sub_991DCC(a1[3], *(v3 + 8), &v34);
        }

        v8 = v34;
      }

      else
      {
        if (v7 == 1)
        {
          sub_99161C();
        }

        if (v7 == 2)
        {
          sub_990680(&v34);
        }
      }

LABEL_14:
      v10 = *(&v8 + 1);
      v9 = v8;
      v11 = 126 - 2 * __clz((*(&v8 + 1) - v8) >> 3);
      if (*(&v8 + 1) == v8)
      {
        v12 = 0;
      }

      else
      {
        v12 = v11;
      }

      sub_A29308(v8, *(&v8 + 1), &v34, v12, 1);
      if (v10 != v9)
      {
        v13 = v9;
        while (1)
        {
          v14 = v13 + 8;
          if (v13 + 8 == v10)
          {
            break;
          }

          LODWORD(v15) = *v13;
          v16 = *(v13 + 1);
          v18 = *(v13 + 2);
          v17 = *(v13 + 3);
          v19 = v15 == v18 && v16 == v17;
          v13 = v14;
          if (v19)
          {
            v20 = v14 + 8;
            v21 = v14 - 8;
            while (v20 != v10)
            {
              if (v15 != *v20 || *(v21 + 1) != *(v20 + 1))
              {
                v15 = *v20;
                *(v21 + 1) = *v20;
                v21 += 8;
              }

              v20 += 8;
            }

            if (v21 + 8 != v10)
            {
              v10 = v21 + 8;
            }

            break;
          }
        }
      }

      v23 = a3[1];
      if (v23 >= a3[2])
      {
        v24 = sub_A291B4(a3, v3);
      }

      else
      {
        *v23 = *v3;
        v23[1] = 0;
        v23[2] = 0;
        v23[3] = 0;
        v24 = v23 + 4;
      }

      a3[1] = v24;
      if (v9 == v10)
      {
        if (sub_7E7E4(3u))
        {
          sub_19594F8(&v34);
          v25 = sub_4A5C(&v34, "No style attributes for entity id: ", 35);
          std::ostream::operator<<(v25, *v3);
          if ((v42 & 0x10) != 0)
          {
            v27 = v41;
            v28 = &v37;
            if (v41 < v38)
            {
              v41 = v38;
              v27 = v38;
              v28 = &v37;
            }
          }

          else
          {
            if ((v42 & 8) == 0)
            {
              v26 = 0;
              v33 = 0;
LABEL_53:
              *(&__dst + v26) = 0;
              sub_7E854(&__dst, 3u);
              if (v33 < 0)
              {
                operator delete(__dst);
              }

              *&v34 = v31;
              *(&v34 + *(*&v31 - 24)) = v30;
              if (v40 < 0)
              {
                operator delete(__p);
              }

              std::locale::~locale(&v35);
              std::ostream::~ostream();
              std::ios::~ios();
              goto LABEL_58;
            }

            v27 = v36[2];
            v28 = v36;
          }

          v29 = *v28;
          v26 = v27 - *v28;
          if (v26 >= 0x7FFFFFFFFFFFFFF8)
          {
            sub_3244();
          }

          if (v26 >= 0x17)
          {
            operator new();
          }

          v33 = v27 - *v28;
          if (v26)
          {
            memmove(&__dst, v29, v26);
          }

          goto LABEL_53;
        }
      }

      else
      {
        sub_2CE7AC(v24 - 3, *(v24 - 2), v9, v10, (v10 - v9) >> 3);
      }

LABEL_58:
      if (v9)
      {
        operator delete(v9);
      }

      v3 += 32;
    }

    while (v3 != v4);
  }
}

void sub_A290F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *__p, uint64_t a8, int a9, __int16 a10, char a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  std::ios::~ios();
  if (v30)
  {
    operator delete(v30);
  }

  sub_37484(v29);
  _Unwind_Resume(a1);
}

void *sub_A291B4(uint64_t a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = (v3 - *a1) >> 5;
  v5 = v4 + 1;
  if ((v4 + 1) >> 59)
  {
    sub_1794();
  }

  v7 = *(a1 + 16) - v2;
  if (v7 >> 4 > v5)
  {
    v5 = v7 >> 4;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFE0)
  {
    v8 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v5;
  }

  if (v8)
  {
    if (!(v8 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v9 = (v3 - *a1) >> 5;
  v10 = (32 * v4);
  *v10 = *a2;
  v10[1] = 0;
  v10[2] = 0;
  v10[3] = 0;
  v11 = 32 * v4 - 32 * v9;
  if (v2 != v3)
  {
    v12 = v2;
    v13 = v11;
    do
    {
      *v13 = *v12;
      *(v13 + 16) = 0;
      *(v13 + 24) = 0;
      *(v13 + 8) = *(v12 + 1);
      *(v13 + 24) = v12[3];
      v12[1] = 0;
      v12[2] = 0;
      v12[3] = 0;
      v12 += 4;
      v13 += 32;
    }

    while (v12 != v3);
    do
    {
      v14 = v2[1];
      if (v14)
      {
        v2[2] = v14;
        operator delete(v14);
      }

      v2 += 4;
    }

    while (v2 != v3);
    v2 = *a1;
  }

  *a1 = v11;
  *(a1 + 8) = 32 * v4 + 32;
  *(a1 + 16) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return (32 * v4 + 32);
}

uint64_t sub_A29308(uint64_t result, int8x16_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  while (1)
  {
    v9 = v10;
    v11 = (a2 - v10) >> 3;
    if (v11 <= 2)
    {
      break;
    }

    switch(v11)
    {
      case 3:
        v139 = v10->u32[2];
        v140 = v10->u32[3];
        v141 = v139 < v10->i32[0];
        if (v139 == v10->i32[0])
        {
          v141 = v140 < v10->i32[1];
        }

        v142 = a2[-1].u32[2];
        v143 = a2[-1].i32[3] < v140;
        v146 = v142 == v139;
        v144 = v142 < v139;
        if (v146)
        {
          v144 = v143;
        }

        if (v141)
        {
          v138 = v10->i64[0];
          if (v144)
          {
            goto LABEL_169;
          }

          v10->i64[0] = v10->i64[1];
          v10->i64[1] = v138;
          v180 = a2[-1].u32[2];
          v181 = a2[-1].i32[3] < HIDWORD(v138);
          v146 = v180 == v138;
          v182 = v180 < v138;
          if (!v146)
          {
            v181 = v182;
          }

          if (v181)
          {
            v10->i64[1] = a2[-1].i64[1];
            a2[-1].i64[1] = v138;
          }
        }

        else if (v144)
        {
          v164 = v10->i64[1];
          v10->i64[1] = a2[-1].i64[1];
          a2[-1].i64[1] = v164;
          v165 = v10->u32[2];
          v166 = v165 < v10->i32[0];
          if (v165 == v10->i32[0])
          {
            v166 = v10->i32[3] < v10->i32[1];
          }

          if (v166)
          {
            *v10 = vextq_s8(*v10, *v10, 8uLL);
          }
        }

        return result;
      case 4:

        return sub_A29DA0(v10, &v10->u32[2], &v10[1], &a2[-1].u32[2]);
      case 5:
        result = sub_A29DA0(v10, &v10->u32[2], &v10[1], &v10[1].u32[2]);
        v123 = v10[1].u32[2];
        v124 = a2[-1].u32[2];
        v146 = v124 == v123;
        v125 = v124 < v123;
        if (v146)
        {
          v125 = a2[-1].i32[3] < v10[1].i32[3];
        }

        if (v125)
        {
          v126 = v10[1].i64[1];
          v10[1].i64[1] = a2[-1].i64[1];
          a2[-1].i64[1] = v126;
          LODWORD(v126) = v10[1].i32[0];
          v127 = v10[1].u32[2];
          v146 = v127 == v126;
          v128 = v127 < v126;
          if (v146)
          {
            v128 = v10[1].i32[3] < v10[1].i32[1];
          }

          if (v128)
          {
            v130 = v10[1].i64[0];
            v129 = v10[1].i64[1];
            v10[1].i64[0] = v129;
            v10[1].i64[1] = v130;
            v131 = v10->u32[2];
            v146 = v131 == v129;
            v132 = v131 > v129;
            if (v146)
            {
              v132 = v10->i32[3] > HIDWORD(v129);
            }

            if (v132)
            {
              v133 = v10->i64[1];
              v10->i64[1] = v129;
              v10[1].i64[0] = v133;
              v134 = v10->i32[1] > HIDWORD(v129);
              if (v10->i32[0] != v129)
              {
                v134 = v10->i32[0] > v129;
              }

              if (v134)
              {
                v135 = v10->i64[0];
                v10->i64[0] = v129;
                v10->i64[1] = v135;
              }
            }
          }
        }

        return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v145 = &v10->u64[1];
      v146 = v10 == a2 || v145 == a2;
      v147 = v146;
      if (a5)
      {
        if ((v147 & 1) == 0)
        {
          v148 = 0;
          v149 = v10;
          do
          {
            v151 = v149->i32[0];
            v152 = v149->u32[1];
            v153 = v149->u32[2];
            v154 = v149->u32[3];
            v149 = v145;
            v155 = v154 < v152;
            v146 = v153 == v151;
            v156 = v153 < v151;
            if (!v146)
            {
              v155 = v156;
            }

            if (v155)
            {
              v157 = v149->i64[0];
              v158 = HIDWORD(v149->i64[0]);
              v159 = v148;
              do
              {
                v160 = &v10->i8[v159];
                *(&v10->i64[1] + v159) = *(v10->i64 + v159);
                if (!v159)
                {
                  v150 = v10;
                  goto LABEL_184;
                }

                v161 = *(v160 - 2);
                v162 = *(v160 - 1) > v158;
                v146 = v161 == v157;
                v163 = v161 > v157;
                if (!v146)
                {
                  v162 = v163;
                }

                v159 -= 8;
              }

              while (v162);
              v150 = (&v10->i64[1] + v159);
LABEL_184:
              *v150 = v157;
            }

            v145 = &v149->u64[1];
            v148 += 8;
          }

          while (&v149->u64[1] != a2);
        }
      }

      else if ((v147 & 1) == 0)
      {
        do
        {
          v167 = *v9;
          v168 = *(v9 + 4);
          v169 = *(v9 + 8);
          v170 = *(v9 + 12);
          v9 = v145;
          v171 = v170 < v168;
          v146 = v169 == v167;
          v172 = v169 < v167;
          if (v146)
          {
            v172 = v171;
          }

          if (v172)
          {
            v173 = v145->i64[0];
            v174 = HIDWORD(v145->i64[0]);
            do
            {
              v175 = v145;
              v176 = v145[-1].i64[1];
              v145 = (v145 - 8);
              *v175 = v176;
              v177 = *(v175 - 4);
              v178 = *(v175 - 3) > v174;
              v146 = v177 == v173;
              v179 = v177 > v173;
              if (!v146)
              {
                v178 = v179;
              }
            }

            while (v178);
            v145->i64[0] = v173;
          }

          v145 = (v9 + 8);
        }

        while ((v9 + 8) != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {

        return sub_A2A450(v10, a2, a2, a3);
      }

      return result;
    }

    v12 = &v10->i32[2 * (v11 >> 1)];
    v13 = a2[-1].u32[2];
    v14 = a2[-1].u32[3];
    if (v11 < 0x81)
    {
      v21 = v10->i32[0];
      v22 = v10->u32[1];
      v23 = v10->i32[0] < *v12;
      if (v10->i32[0] == *v12)
      {
        v23 = v22 < v12[1];
      }

      v24 = v14 < v22;
      v146 = v13 == v21;
      v25 = v13 < v21;
      if (v146)
      {
        v25 = v24;
      }

      if (v23)
      {
        v26 = *v12;
        if (v25)
        {
          *v12 = a2[-1].i64[1];
          goto LABEL_60;
        }

        *v12 = v10->i64[0];
        v10->i64[0] = v26;
        v50 = a2[-1].u32[2];
        v51 = a2[-1].i32[3] < HIDWORD(v26);
        v146 = v50 == v26;
        v52 = v50 < v26;
        if (!v146)
        {
          v51 = v52;
        }

        if (v51)
        {
          v10->i64[0] = a2[-1].i64[1];
LABEL_60:
          a2[-1].i64[1] = v26;
        }
      }

      else if (v25)
      {
        v30 = v10->i64[0];
        v10->i64[0] = a2[-1].i64[1];
        a2[-1].i64[1] = v30;
        v31 = v10->i32[0] < *v12;
        if (v10->i32[0] == *v12)
        {
          v31 = v10->i32[1] < v12[1];
        }

        if (v31)
        {
          v32 = *v12;
          *v12 = v10->i64[0];
          v10->i64[0] = v32;
          --a4;
          if (a5)
          {
            goto LABEL_109;
          }

          goto LABEL_106;
        }
      }

      --a4;
      if (a5)
      {
        goto LABEL_109;
      }

      goto LABEL_106;
    }

    v15 = *v12;
    v16 = v12[1];
    v17 = *v12 < v10->i32[0];
    if (*v12 == v10->i32[0])
    {
      v17 = v16 < v10->i32[1];
    }

    v18 = v14 < v16;
    v146 = v13 == v15;
    v19 = v13 < v15;
    if (v146)
    {
      v19 = v18;
    }

    if (v17)
    {
      v20 = v10->i64[0];
      if (v19)
      {
        v10->i64[0] = a2[-1].i64[1];
LABEL_42:
        a2[-1].i64[1] = v20;
        goto LABEL_43;
      }

      v10->i64[0] = *v12;
      *v12 = v20;
      v33 = a2[-1].u32[2];
      v34 = a2[-1].i32[3] < HIDWORD(v20);
      v146 = v33 == v20;
      v35 = v33 < v20;
      if (!v146)
      {
        v34 = v35;
      }

      if (v34)
      {
        *v12 = a2[-1].i64[1];
        goto LABEL_42;
      }
    }

    else if (v19)
    {
      v27 = *v12;
      *v12 = a2[-1].i64[1];
      a2[-1].i64[1] = v27;
      v28 = *v12 < v10->i32[0];
      if (*v12 == v10->i32[0])
      {
        v28 = v12[1] < v10->i32[1];
      }

      if (v28)
      {
        v29 = v10->i64[0];
        v10->i64[0] = *v12;
        *v12 = v29;
      }
    }

LABEL_43:
    v37 = *(v12 - 2);
    v38 = *(v12 - 1);
    v36 = (v12 - 2);
    v39 = v10->u32[2];
    v40 = v38 < v10->i32[3];
    v146 = v37 == v39;
    v41 = v37 < v39;
    if (!v146)
    {
      v40 = v41;
    }

    v42 = a2[-1].u32[0];
    v43 = a2[-1].i32[1] < v38;
    v146 = v42 == v37;
    v44 = v42 < v37;
    if (v146)
    {
      v45 = v43;
    }

    else
    {
      v45 = v44;
    }

    if (v40)
    {
      v46 = v10->i64[1];
      if (v45)
      {
        v10->i64[1] = a2[-1].i64[0];
LABEL_67:
        a2[-1].i64[0] = v46;
        goto LABEL_68;
      }

      v10->i64[1] = *v36;
      *v36 = v46;
      v53 = a2[-1].u32[0];
      v54 = a2[-1].i32[1] < HIDWORD(v46);
      v146 = v53 == v46;
      v55 = v53 < v46;
      if (!v146)
      {
        v54 = v55;
      }

      if (v54)
      {
        *v36 = a2[-1].i64[0];
        goto LABEL_67;
      }
    }

    else if (v45)
    {
      v47 = *v36;
      *v36 = a2[-1].i64[0];
      a2[-1].i64[0] = v47;
      LODWORD(v47) = v10->i32[2];
      v146 = *v36 == v47;
      v48 = *v36 < v47;
      if (v146)
      {
        v48 = *(v12 - 1) < v10->i32[3];
      }

      if (v48)
      {
        v49 = v10->i64[1];
        v10->i64[1] = *v36;
        *v36 = v49;
      }
    }

LABEL_68:
    v57 = v12[2];
    v58 = v12[3];
    v56 = (v12 + 2);
    v59 = v10[1].u32[0];
    v60 = v58 < v10[1].i32[1];
    v146 = v57 == v59;
    v61 = v57 < v59;
    if (!v146)
    {
      v60 = v61;
    }

    v62 = a2[-2].u32[2];
    v63 = a2[-2].i32[3] < v58;
    v146 = v62 == v57;
    v64 = v62 < v57;
    if (v146)
    {
      v65 = v63;
    }

    else
    {
      v65 = v64;
    }

    if (v60)
    {
      v66 = v10[1].i64[0];
      if (v65)
      {
        v10[1].i64[0] = a2[-2].i64[1];
LABEL_85:
        a2[-2].i64[1] = v66;
        goto LABEL_86;
      }

      v10[1].i64[0] = *v56;
      *v56 = v66;
      v70 = a2[-2].u32[2];
      v71 = a2[-2].i32[3] < HIDWORD(v66);
      v146 = v70 == v66;
      v72 = v70 < v66;
      if (!v146)
      {
        v71 = v72;
      }

      if (v71)
      {
        *v56 = a2[-2].i64[1];
        goto LABEL_85;
      }
    }

    else if (v65)
    {
      v67 = *v56;
      *v56 = a2[-2].i64[1];
      a2[-2].i64[1] = v67;
      LODWORD(v67) = v10[1].i32[0];
      v146 = *v56 == v67;
      v68 = *v56 < v67;
      if (v146)
      {
        v68 = v12[3] < v10[1].i32[1];
      }

      if (v68)
      {
        v69 = v10[1].i64[0];
        v10[1].i64[0] = *v56;
        *v56 = v69;
      }
    }

LABEL_86:
    v73 = *v36;
    v74 = *(v12 - 1);
    v75 = *v12;
    v76 = v12[1];
    if (*v12 == *v36)
    {
      v77 = v76 < v74;
    }

    else
    {
      v77 = *v12 < *v36;
    }

    v78 = *v56;
    v79 = v12[3];
    v80 = v79 < v76;
    v146 = *v56 == v75;
    v81 = *v56 < v75;
    if (!v146)
    {
      v80 = v81;
    }

    if (v77)
    {
      v82 = *v36;
      if (!v80)
      {
        *v36 = *v12;
        *v12 = v82;
        v88 = v79 < HIDWORD(v82);
        if (v78 != v82)
        {
          v88 = v78 < v82;
        }

        if (v88)
        {
          v89 = *v56;
          *v12 = *v56;
          *v56 = v82;
          v82 = v89;
        }

LABEL_105:
        v90 = v10->i64[0];
        v10->i64[0] = v82;
        *v12 = v90;
        --a4;
        if (a5)
        {
          goto LABEL_109;
        }

        goto LABEL_106;
      }

      *v36 = *v56;
      *v56 = v82;
      v83 = v10->i64[0];
      v10->i64[0] = *v12;
      *v12 = v83;
      --a4;
      if (a5)
      {
        goto LABEL_109;
      }
    }

    else
    {
      v82 = *v12;
      if (!v80)
      {
        goto LABEL_105;
      }

      v84 = *v56;
      *v12 = *v56;
      *v56 = v82;
      v85 = v74 > HIDWORD(v84);
      if (v73 != v84)
      {
        v85 = v73 > v84;
      }

      if (v85)
      {
        v86 = *v36;
        *v36 = v84;
        *v12 = v86;
        v87 = v10->i64[0];
        v10->i64[0] = v86;
        *v12 = v87;
        --a4;
        if (a5)
        {
          goto LABEL_109;
        }
      }

      else
      {
        v122 = v10->i64[0];
        v10->i64[0] = v84;
        *v12 = v122;
        --a4;
        if (a5)
        {
          goto LABEL_109;
        }
      }
    }

LABEL_106:
    v91 = v10[-1].u32[2];
    v92 = v91 < v10->i32[0];
    if (v91 == v10->i32[0])
    {
      v92 = v10[-1].i32[3] < v10->i32[1];
    }

    if (v92)
    {
LABEL_109:
      v93 = 0;
      v94 = v10->i64[0];
      v95 = HIDWORD(v10->i64[0]);
      do
      {
        v96 = v10->u32[v93 + 2];
        v97 = v10->i32[v93 + 3] < v95;
        v146 = v96 == v94;
        v98 = v96 < v94;
        if (!v146)
        {
          v97 = v98;
        }

        v93 += 2;
      }

      while (v97);
      v99 = &v10->i8[v93 * 4];
      v100 = a2;
      if (v93 == 2)
      {
        v100 = a2;
        do
        {
          if (v99 >= v100)
          {
            break;
          }

          v105 = v100[-1].u32[2];
          v106 = v100[-1].u32[3];
          v100 = (v100 - 8);
          v107 = v106 < v95;
          v146 = v105 == v94;
          v108 = v105 < v94;
          if (v146)
          {
            v108 = v107;
          }
        }

        while (!v108);
      }

      else
      {
        do
        {
          v101 = v100[-1].u32[2];
          v102 = v100[-1].u32[3];
          v100 = (v100 - 8);
          v103 = v102 < v95;
          v146 = v101 == v94;
          v104 = v101 < v94;
          if (v146)
          {
            v104 = v103;
          }
        }

        while (!v104);
      }

      if (v99 >= v100)
      {
        v120 = v99 - 8;
        if (v99 - 8 == v10)
        {
          goto LABEL_137;
        }

LABEL_136:
        v10->i64[0] = *v120;
        goto LABEL_137;
      }

      v109 = v99;
      v110 = v100;
      do
      {
        v111 = *v109;
        *v109 = *v110;
        *v110 = v111;
        do
        {
          v112 = *(v109 + 8);
          v113 = *(v109 + 12);
          v109 += 8;
          v114 = v113 < v95;
          v146 = v112 == v94;
          v115 = v112 < v94;
          if (v146)
          {
            v115 = v114;
          }
        }

        while (v115);
        do
        {
          v116 = *(v110 - 2);
          v117 = *(v110-- - 1);
          v118 = v117 < v95;
          v146 = v116 == v94;
          v119 = v116 < v94;
          if (v146)
          {
            v119 = v118;
          }
        }

        while (!v119);
      }

      while (v109 < v110);
      v120 = (v109 - 8);
      if ((v109 - 8) != v10)
      {
        goto LABEL_136;
      }

LABEL_137:
      *v120 = v94;
      if (v99 < v100)
      {
        goto LABEL_140;
      }

      v121 = sub_A2A044(v10, v120);
      v10 = (v120 + 8);
      result = sub_A2A044((v120 + 8), a2);
      if (result)
      {
        a2 = v120;
        if (!v121)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v121)
      {
LABEL_140:
        result = sub_A29308(v9, v120, a3, a4, a5 & 1);
        a5 = 0;
        v10 = (v120 + 8);
      }
    }

    else
    {
      result = sub_A29F2C(v10, a2);
      v10 = result;
      a5 = 0;
    }
  }

  if (v11 < 2)
  {
    return result;
  }

  if (v11 != 2)
  {
    goto LABEL_10;
  }

  v136 = a2[-1].u32[2];
  v137 = v136 < v10->i32[0];
  if (v136 == v10->i32[0])
  {
    v137 = a2[-1].i32[3] < v10->i32[1];
  }

  if (v137)
  {
    v138 = v10->i64[0];
LABEL_169:
    v10->i64[0] = a2[-1].i64[1];
    a2[-1].i64[1] = v138;
  }

  return result;
}

unsigned int *sub_A29DA0(unsigned int *result, unsigned int *a2, unsigned int *a3, unsigned int *a4)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = v5 < result[1];
  if (*a2 != *result)
  {
    v6 = *a2 < *result;
  }

  LODWORD(v7) = a3[1];
  v8 = v7 < v5;
  v9 = *a3 == v4;
  v10 = *a3 < v4;
  if (v9)
  {
    v10 = v8;
  }

  if (v6)
  {
    v11 = *result;
    if (v10)
    {
      *result = *a3;
      *a3 = v11;
      v7 = HIDWORD(v11);
    }

    else
    {
      *result = *a2;
      *a2 = v11;
      LODWORD(v7) = a3[1];
      v14 = *a3 < v11;
      if (*a3 == v11)
      {
        v14 = v7 < HIDWORD(v11);
      }

      if (v14)
      {
        *a2 = *a3;
        *a3 = v11;
        v7 = HIDWORD(v11);
      }
    }
  }

  else if (v10)
  {
    v12 = *a2;
    *a2 = *a3;
    *a3 = v12;
    v13 = *a2 < *result;
    if (*a2 == *result)
    {
      v13 = a2[1] < result[1];
    }

    if (v13)
    {
      v7 = *result;
      *result = *a2;
      *a2 = v7;
      LODWORD(v7) = a3[1];
    }

    else
    {
      v7 = HIDWORD(v12);
    }
  }

  v15 = a4[1] < v7;
  if (*a4 != *a3)
  {
    v15 = *a4 < *a3;
  }

  if (v15)
  {
    v16 = *a3;
    *a3 = *a4;
    *a4 = v16;
    v17 = *a3 < *a2;
    if (*a3 == *a2)
    {
      v17 = a3[1] < a2[1];
    }

    if (v17)
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      v19 = *a2 < *result;
      if (*a2 == *result)
      {
        v19 = a2[1] < result[1];
      }

      if (v19)
      {
        v20 = *result;
        *result = *a2;
        *a2 = v20;
      }
    }
  }

  return result;
}

unsigned int *sub_A29F2C(unsigned int *a1, unsigned int *a2)
{
  v2 = *a1;
  v3 = HIDWORD(*a1);
  v4 = *(a2 - 2);
  v5 = v4 == *a1;
  v6 = v4 > *a1;
  if (v5)
  {
    v6 = *(a2 - 1) > v3;
  }

  if (v6)
  {
    v7 = a1;
    do
    {
      v8 = v7[2];
      v9 = v7[3];
      v7 += 2;
      v10 = v9 > v3;
      v5 = v8 == v2;
      v11 = v8 > v2;
      if (v5)
      {
        v11 = v10;
      }
    }

    while (!v11);
  }

  else
  {
    v12 = a1 + 2;
    do
    {
      v7 = v12;
      if (v12 >= a2)
      {
        break;
      }

      v13 = *v12;
      v14 = v7[1] > v3;
      v5 = v13 == v2;
      v15 = v13 > v2;
      if (!v5)
      {
        v14 = v15;
      }

      v12 = v7 + 2;
    }

    while (!v14);
  }

  if (v7 < a2)
  {
    do
    {
      v16 = *(a2 - 2);
      v17 = *(a2 - 1);
      a2 -= 2;
      v18 = v17 > v3;
      v5 = v16 == v2;
      v19 = v16 > v2;
      if (v5)
      {
        v19 = v18;
      }
    }

    while (v19);
  }

  while (v7 < a2)
  {
    v20 = *v7;
    *v7 = *a2;
    *a2 = v20;
    do
    {
      v21 = v7[2];
      v22 = v7[3];
      v7 += 2;
      v23 = v22 > v3;
      v5 = v21 == v2;
      v24 = v21 > v2;
      if (v5)
      {
        v24 = v23;
      }
    }

    while (!v24);
    do
    {
      v25 = *(a2 - 2);
      v26 = *(a2 - 1);
      a2 -= 2;
      v27 = v26 > v3;
      v5 = v25 == v2;
      v28 = v25 > v2;
      if (v5)
      {
        v28 = v27;
      }
    }

    while (v28);
  }

  if (v7 - 2 != a1)
  {
    *a1 = *(v7 - 1);
  }

  *(v7 - 1) = v2;
  return v7;
}

BOOL sub_A2A044(int8x16_t *a1, int8x16_t *a2)
{
  v2 = (a2 - a1) >> 3;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v24 = a1->u32[2];
        v25 = a1->u32[3];
        v26 = v24 < a1->i32[0];
        if (v24 == a1->i32[0])
        {
          v26 = v25 < a1->i32[1];
        }

        v27 = a2[-1].u32[2];
        v28 = a2[-1].i32[3] < v25;
        v10 = v27 == v24;
        v29 = v27 < v24;
        if (v10)
        {
          v29 = v28;
        }

        if (v26)
        {
          v5 = a1->i64[0];
          if (v29)
          {
            goto LABEL_30;
          }

          a1->i64[0] = a1->i64[1];
          a1->i64[1] = v5;
          v49 = a2[-1].u32[2];
          v50 = a2[-1].i32[3] < HIDWORD(v5);
          v10 = v49 == v5;
          v51 = v49 < v5;
          if (!v10)
          {
            v50 = v51;
          }

          if (v50)
          {
            a1->i64[1] = a2[-1].i64[1];
            a2[-1].i64[1] = v5;
            return 1;
          }
        }

        else if (v29)
        {
          v41 = a1->i64[1];
          a1->i64[1] = a2[-1].i64[1];
          a2[-1].i64[1] = v41;
          v42 = a1->u32[2];
          v43 = v42 < a1->i32[0];
          if (v42 == a1->i32[0])
          {
            v43 = a1->i32[3] < a1->i32[1];
          }

          if (v43)
          {
            *a1 = vextq_s8(*a1, *a1, 8uLL);
            return 1;
          }
        }

        return 1;
      case 4:
        sub_A29DA0(a1, &a1->u32[2], &a1[1], &a2[-1].u32[2]);
        return 1;
      case 5:
        sub_A29DA0(a1, &a1->u32[2], &a1[1], &a1[1].u32[2]);
        v8 = a1[1].u32[2];
        v9 = a2[-1].u32[2];
        v10 = v9 == v8;
        v11 = v9 < v8;
        if (v10)
        {
          v11 = a2[-1].i32[3] < a1[1].i32[3];
        }

        if (v11)
        {
          v12 = a1[1].i64[1];
          a1[1].i64[1] = a2[-1].i64[1];
          a2[-1].i64[1] = v12;
          v13 = a1[1].u32[0];
          v14 = a1[1].u32[2];
          v10 = v14 == v13;
          v15 = v14 < v13;
          if (v10)
          {
            v15 = a1[1].i32[3] < a1[1].i32[1];
          }

          if (v15)
          {
            v17 = a1[1].i64[0];
            v16 = a1[1].i64[1];
            a1[1].i64[0] = v16;
            a1[1].i64[1] = v17;
            v18 = a1->u32[2];
            v10 = v18 == v16;
            v19 = v18 > v16;
            if (v10)
            {
              v19 = a1->i32[3] > HIDWORD(v16);
            }

            if (v19)
            {
              v20 = a1->i64[1];
              a1->i64[1] = v16;
              a1[1].i64[0] = v20;
              v21 = a1->i32[1] > HIDWORD(v16);
              if (a1->i32[0] != v16)
              {
                v21 = a1->i32[0] > v16;
              }

              if (v21)
              {
                v22 = a1->i64[0];
                a1->i64[0] = v16;
                a1->i64[1] = v22;
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
      v3 = a2[-1].u32[2];
      v4 = v3 < a1->i32[0];
      if (v3 == a1->i32[0])
      {
        v4 = a2[-1].i32[3] < a1->i32[1];
      }

      if (v4)
      {
        v5 = a1->i64[0];
LABEL_30:
        a1->i64[0] = a2[-1].i64[1];
        a2[-1].i64[1] = v5;
        return 1;
      }

      return 1;
    }
  }

  v30 = a1 + 1;
  v31 = a1[1].u32[0];
  v32 = a1->i32[0];
  v33 = a1->u32[1];
  v34 = a1->u32[2];
  v35 = a1->u32[3];
  v36 = v34 < a1->i32[0];
  if (v34 == a1->i32[0])
  {
    v36 = v35 < v33;
  }

  v37 = a1[1].u32[1];
  v38 = v37 < v35;
  v10 = v31 == v34;
  v39 = v31 < v34;
  if (v10)
  {
    v39 = v38;
  }

  if (v36)
  {
    v40 = a1->i64[0];
    if (v39)
    {
      a1->i64[0] = a1[1].i64[0];
LABEL_57:
      a1[1].i64[0] = v40;
      goto LABEL_58;
    }

    a1->i64[0] = a1->i64[1];
    a1->i64[1] = v40;
    v10 = v31 == v40;
    v52 = v31 < v40;
    if (v10)
    {
      v52 = v37 < HIDWORD(v40);
    }

    if (v52)
    {
      a1->i64[1] = a1[1].i64[0];
      goto LABEL_57;
    }
  }

  else if (v39)
  {
    v45 = a1->i64[1];
    v44 = a1[1].i64[0];
    a1->i64[1] = v44;
    a1[1].i64[0] = v45;
    v46 = v33 > HIDWORD(v44);
    v10 = v32 == v44;
    v47 = v32 > v44;
    if (v10)
    {
      v47 = v46;
    }

    if (v47)
    {
      v48 = a1->i64[0];
      a1->i64[0] = v44;
      a1->i64[1] = v48;
    }
  }

LABEL_58:
  v53 = (a1 + 24);
  if (&a1[1].u64[1] == a2)
  {
    return 1;
  }

  v54 = 0;
  v55 = 0;
  while (1)
  {
    v56 = v30->i32[0];
    v57 = v53->i32[1] < v30->i32[1];
    v10 = v53->i32[0] == v56;
    v58 = v53->i32[0] < v56;
    if (!v10)
    {
      v57 = v58;
    }

    if (v57)
    {
      break;
    }

LABEL_71:
    v30 = v53;
    v54 += 8;
    v53 = (v53 + 8);
    if (v53 == a2)
    {
      return 1;
    }
  }

  v59 = v53->i64[0];
  v60 = HIDWORD(v53->i64[0]);
  v61 = v54;
  do
  {
    v62 = &a1->i8[v61];
    *(&a1[1].i64[1] + v61) = *(a1[1].i64 + v61);
    if (v61 == -16)
    {
      a1->i64[0] = v59;
      if (++v55 != 8)
      {
        goto LABEL_71;
      }

      return &v53->u64[1] == a2;
    }

    v63 = *(v62 + 2);
    v64 = *(v62 + 3) > v60;
    v10 = v63 == v59;
    v65 = v63 > v59;
    if (!v10)
    {
      v64 = v65;
    }

    v61 -= 8;
  }

  while (v64);
  *(&a1[1].i64[1] + v61) = v59;
  if (++v55 != 8)
  {
    goto LABEL_71;
  }

  return &v53->u64[1] == a2;
}

uint32x2_t *sub_A2A450(uint32x2_t *a1, uint32x2_t *a2, uint32x2_t *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v5 = a2;
    v7 = a2 - a1;
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v10 = (v8 - 2) >> 1;
      v11 = v10 + 1;
      v12 = &a1[v10];
      do
      {
        sub_A2A7F4(a1, a4, v8, v12--);
        --v11;
      }

      while (v11);
    }

    v13 = v5;
    if (v5 != a3)
    {
      if (v8 >= 2)
      {
        v13 = v5;
        do
        {
          v17 = v13->i32[0] < a1->i32[0];
          if (v13->i32[0] == a1->i32[0])
          {
            v17 = v13->i32[1] < a1->i32[1];
          }

          if (v17)
          {
            v18 = *v13;
            *v13 = *a1;
            *a1 = v18;
            v19 = a1[1].u32[0];
            if (v7 == 16)
            {
              v20 = a1 + 1;
              v21 = 1;
            }

            else
            {
              v22 = a1[2].u32[0];
              v23 = a1[1].i32[1] < a1[2].i32[1];
              if (v19 != v22)
              {
                v23 = v19 < v22;
              }

              v24 = !v23;
              if (v23)
              {
                v19 = a1[2].u32[0];
                v20 = a1 + 2;
              }

              else
              {
                v20 = a1 + 1;
              }

              if (v24)
              {
                v21 = 1;
              }

              else
              {
                v21 = 2;
              }
            }

            v24 = v19 == v18.i32[0];
            v25 = v19 < v18.i32[0];
            if (v24)
            {
              v25 = v20->i32[1] < v18.i32[1];
            }

            if (!v25)
            {
              v26 = a1;
              do
              {
                v33 = v26;
                v26 = v20;
                *v33 = *v20;
                if (((v8 - 2) >> 1) < v21)
                {
                  break;
                }

                v34 = (2 * v21) | 1;
                v20 = &a1[v34];
                v21 = 2 * v21 + 2;
                if (v21 < v8)
                {
                  v27 = v20[1];
                  v28 = vcgt_u32(v27, *v20);
                  v29 = *v20;
                  v30 = v28.i8[4];
                  if (v29 != v27.i32[0])
                  {
                    v30 = v28.i8[0];
                  }

                  if (v30)
                  {
                    v29 = v20[1];
                    ++v20;
                  }

                  else
                  {
                    v21 = v34;
                  }
                }

                else
                {
                  v29 = v20->i32[0];
                  v21 = v34;
                }

                v31 = v20->i32[1] < v18.i32[1];
                v24 = v29 == v18.i32[0];
                v32 = v29 < v18.i32[0];
                if (!v24)
                {
                  v31 = v32;
                }
              }

              while (!v31);
              *v26 = v18;
            }
          }

          ++v13;
        }

        while (v13 != a3);
      }

      else
      {
        v14.i32[0] = a1->i32[0];
        LODWORD(v15) = a1->i32[1];
        v13 = v5;
        do
        {
          v16 = v13->i32[0] < v14.i32[0];
          if (v13->i32[0] == v14.i32[0])
          {
            v16 = v13->i32[1] < v15;
          }

          if (v16)
          {
            v14 = *v13;
            *v13 = *a1;
            *a1 = v14;
            v15 = HIDWORD(*&v14);
          }

          ++v13;
        }

        while (v13 != a3);
      }
    }

    if (v8 >= 2)
    {
      do
      {
        v37 = 0;
        v38 = *a1;
        v39 = (v8 - 2) >> 1;
        v40 = a1;
        do
        {
          while (1)
          {
            v48 = &v40[v37];
            v47 = v48 + 1;
            v49 = (2 * v37) | 1;
            v37 = 2 * v37 + 2;
            if (v37 < v8)
            {
              break;
            }

            v37 = v49;
            *v40 = *v47;
            v40 = v48 + 1;
            if (v49 > v39)
            {
              goto LABEL_58;
            }
          }

          v42 = v48[2].u32[0];
          v43 = v48[2].u32[1];
          v41 = v48 + 2;
          v44 = v41[-1].u32[0];
          v45 = v41[-1].i32[1] < v43;
          v24 = v44 == v42;
          v46 = v44 < v42;
          if (v24)
          {
            v46 = v45;
          }

          if (v46)
          {
            v47 = v41;
          }

          else
          {
            v37 = v49;
          }

          *v40 = *v47;
          v40 = v47;
        }

        while (v37 <= v39);
LABEL_58:
        if (v47 == --v5)
        {
          *v47 = v38;
        }

        else
        {
          *v47 = *v5;
          *v5 = v38;
          v50 = (v47 - a1 + 8) >> 3;
          v36 = v50 < 2;
          v51 = v50 - 2;
          if (!v36)
          {
            v52 = v51 >> 1;
            v53 = &a1[v52];
            v54 = vcgt_u32(*v47, *v53);
            v55 = (vceq_s32(*v53, *v47).u8[0] & 1) != 0 ? v54.i8[4] : v54.i8[0];
            if (v55)
            {
              v56 = *v47;
              v57 = HIDWORD(*v47);
              do
              {
                v58 = v47;
                v47 = v53;
                *v58 = *v53;
                if (!v52)
                {
                  break;
                }

                v52 = (v52 - 1) >> 1;
                v53 = &a1[v52];
                v59 = v53->i32[0] < v56.i32[0];
                if (v53->i32[0] == v56.i32[0])
                {
                  v59 = v53->i32[1] < v57;
                }
              }

              while (v59);
              *v47 = v56;
            }
          }
        }

        v36 = v8-- <= 2;
      }

      while (!v36);
    }

    return v13;
  }

  return a3;
}

uint64_t sub_A2A7F4(uint64_t result, uint64_t a2, uint64_t a3, uint32x2_t *a4)
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
      if (v9 >= a3)
      {
        v12 = v8->i32[0];
      }

      else
      {
        v10 = v8[1];
        v11 = vcgt_u32(v10, *v8);
        v12 = *v8;
        v13 = v11.i8[4];
        if (v12 != v10.i32[0])
        {
          v13 = v11.i8[0];
        }

        if (v13)
        {
          v12 = v8[1];
          ++v8;
          v7 = v9;
        }
      }

      v14 = v12 < a4->i32[0];
      if (v12 == a4->i32[0])
      {
        v14 = v8->i32[1] < a4->i32[1];
      }

      if (!v14)
      {
        v15 = *a4;
        v16 = HIDWORD(*a4);
        do
        {
          v24 = a4;
          a4 = v8;
          *v24 = *v8;
          if (v5 < v7)
          {
            break;
          }

          v25 = (2 * v7) | 1;
          v8 = (result + 8 * v25);
          v7 = 2 * v7 + 2;
          if (v7 < a3)
          {
            v17 = v8[1];
            v18 = vcgt_u32(v17, *v8);
            v19 = *v8;
            v20 = v18.i8[4];
            if (v19 != v17.i32[0])
            {
              v20 = v18.i8[0];
            }

            if (v20)
            {
              v19 = v8[1];
              ++v8;
            }

            else
            {
              v7 = v25;
            }
          }

          else
          {
            v19 = v8->i32[0];
            v7 = v25;
          }

          v21 = v8->i32[1] < v16;
          v22 = v19 == v15;
          v23 = v19 < v15;
          if (!v22)
          {
            v21 = v23;
          }
        }

        while (!v21);
        *a4 = v15;
      }
    }
  }

  return result;
}

void sub_A2A960(uint64_t a1, uint64_t a2)
{
  v3 = 0uLL;
  v47 = 0u;
  v48 = 0u;
  v49 = 1065353216;
  memset(v50, 0, 24);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*a2 == v5)
  {
    goto LABEL_47;
  }

  while (2)
  {
    sub_A21C90(v46, v4);
    while (1)
    {
      sub_A21CE8(v46, &v35);
      v7 = sub_A21B4C(v46, &v35);
      v8 = v42;
      v9 = v43;
      if (v43 == v42)
      {
        v9 = v42;
        v45 = 0;
        v14 = 0;
        goto LABEL_10;
      }

      v10 = &v42[v44 >> 7];
      v11 = *v10;
      v12 = *v10 + 32 * (v44 & 0x7F);
      v13 = *(v42 + (((v45 + v44) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((v45 + v44) & 0x7F);
      if (v12 == v13)
      {
        v45 = 0;
        v14 = v43 - v42;
        if (v14 < 3)
        {
          goto LABEL_10;
        }

        do
        {
LABEL_9:
          operator delete(*v8);
          v9 = v43;
          v8 = v42 + 1;
          v42 = v8;
          v14 = v43 - v8;
        }

        while (v14 > 2);
        goto LABEL_10;
      }

      do
      {
        v16 = *v12;
        if (*v12)
        {
          *(v12 + 8) = v16;
          operator delete(v16);
          v11 = *v10;
        }

        v12 += 32;
        if (v12 - v11 == 4096)
        {
          v17 = v10[1];
          ++v10;
          v11 = v17;
          v12 = v17;
        }
      }

      while (v12 != v13);
      v8 = v42;
      v9 = v43;
      v45 = 0;
      v14 = v43 - v42;
      if (v14 >= 3)
      {
        goto LABEL_9;
      }

LABEL_10:
      if (v14 == 1)
      {
        v15 = 64;
        goto LABEL_22;
      }

      if (v14 == 2)
      {
        v15 = 128;
LABEL_22:
        v44 = v15;
      }

      if (v8 != v9)
      {
        do
        {
          v18 = *v8++;
          operator delete(v18);
        }

        while (v8 != v9);
        if (v43 != v42)
        {
          v43 = (v43 + ((v42 - v43 + 7) & 0xFFFFFFFFFFFFFFF8));
        }
      }

      if (__p)
      {
        operator delete(__p);
      }

      v19 = v40;
      if (v40)
      {
        do
        {
          v20 = *v19;
          operator delete(v19);
          v19 = v20;
        }

        while (v20);
      }

      v21 = v39;
      v39 = 0;
      if (v21)
      {
        operator delete(v21);
      }

      if (v37)
      {
        v38 = v37;
        operator delete(v37);
      }

      if (!v7)
      {
        break;
      }

      if (*sub_A21CB8(v46) == 6)
      {
        sub_A21730(v46, &v35);
        v22 = v35;
        if (v35 == v36 || **(v36 - 1) == 5)
        {
          goto LABEL_44;
        }

        v23 = sub_A21CB8(v46);
        sub_A2ADD0(a1, v23, *(v36 - 1), (a2 + 24), &v47);
        goto LABEL_43;
      }

      if (*sub_A21CB8(v46) != 7)
      {
        goto LABEL_5;
      }

      sub_A21834(v46, 0xFFFFFFFFFFFFFFFFLL, &v35);
      v22 = v35;
      if (v35 != v36)
      {
        v24 = sub_A21CB8(v46);
        sub_A2ADD0(a1, v24, *v35, (a2 + 24), &v47);
LABEL_43:
        v22 = v35;
      }

LABEL_44:
      if (v22)
      {
        v36 = v22;
        operator delete(v22);
      }

LABEL_5:
      sub_A21708(v46);
    }

    sub_98ED24(v46);
    v4 += 412;
    if (v4 != v5)
    {
      continue;
    }

    break;
  }

  v3 = *v50;
LABEL_47:
  sub_A2B4C0((a2 + 264), *(a2 + 272), v3, *(&v3 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v3 + 1) - v3) >> 3));
  v25 = v50[0];
  if (v50[0])
  {
    v26 = v50[1];
    v27 = v50[0];
    if (v50[1] != v50[0])
    {
      v28 = v50[1];
      do
      {
        v30 = *(v28 - 24);
        v28 -= 24;
        v29 = v30;
        if (v30)
        {
          *(v26 - 16) = v29;
          operator delete(v29);
        }

        v26 = v28;
      }

      while (v28 != v25);
      v27 = v50[0];
    }

    v50[1] = v25;
    operator delete(v27);
  }

  v31 = v48;
  if (v48)
  {
    do
    {
      v33 = *v31;
      v34 = v31[2];
      if (v34)
      {
        v31[3] = v34;
        operator delete(v34);
      }

      operator delete(v31);
      v31 = v33;
    }

    while (v33);
  }

  v32 = v47;
  *&v47 = 0;
  if (v32)
  {
    operator delete(v32);
  }
}

void sub_A2AD54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_98ED24(&a28);
  sub_A2B988(v28 - 160);
  _Unwind_Resume(a1);
}

void sub_A2ADD0(uint64_t a1, int *a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (*(a2 + 952) == 1 && *(a2 + 107) != -1 && *a3 == 1)
  {
    v7 = *(a3 + 64);
    if (v7 != -1)
    {
      v8 = a4[21];
      if (0x4FBCDA3AC10C9715 * ((a4[22] - v8) >> 7) <= v7)
      {
        sub_6FAB4();
      }

      v11 = sub_68C454((v8 + 7808 * v7), 0);
      v12 = *a2;
      v13 = sub_A2B140(v11, v11, *a2 == 7);
      v15 = v14;
      v16 = (a4[15] + 304 * *(a2 + 107));
      LODWORD(v17) = v16[1];
      v18 = exp(3.14159265 - v17 * 6.28318531 / 4294967300.0);
      v19 = atan((v18 - 1.0 / v18) * 0.5) * 57.2957795 * 0.0174532925;
      v20 = exp(3.14159265 - HIDWORD(v13) * 6.28318531 / 4294967300.0);
      v21 = atan((v20 - 1.0 / v20) * 0.5) * 57.2957795 * 0.0174532925;
      v22.i64[0] = *v16;
      v22.i64[1] = v13;
      v23 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v22), vdupq_n_s64(0x4076800000000000uLL)), vdupq_n_s64(0x41EFFFFFFFE00000uLL)), vdupq_n_s64(0xC066800000000000)), vdupq_n_s64(0x3F91DF46A2529D39uLL));
      v36 = vsubq_f64(v23, vdupq_laneq_s64(v23, 1)).f64[0];
      v24 = sin((v19 - v21) * 0.5);
      v25 = v24 * v24;
      v26 = cos(v19);
      v27 = v26 * cos(v21);
      v28 = sin(0.5 * v36);
      v29 = atan2(sqrt(v28 * v28 * v27 + v25), sqrt(1.0 - (v28 * v28 * v27 + v25)));
      if ((v29 + v29) * 6372797.56 <= 20.0)
      {
        v30 = a4;
        v31 = a4[31];
        v32 = v30[30];
        if (v12 == 7)
        {
          v33 = *v16;
          v39 = v16[2];
          v38 = v33;
          v40 = v13;
          v41 = v15;
        }

        else
        {
          v38 = v13;
          v39 = v15;
          v34 = *v16;
          v41 = v16[2];
          v40 = v34;
        }

        sub_A2B3DC(__p, &v38, 2uLL);
        v35 = sub_A2B28C(a5, __p);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        *(a2 + 238) = v35 - 0x5555555555555555 * ((v31 - v32) >> 3);
      }
    }
  }
}

void sub_A2B114(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_A2B140(uint64_t a1, void *a2, int a3)
{
  if (!a3)
  {
    sub_4D1DC0(a2);
    sub_69E8D8(a2);
    v10 = v9;
    v11 = sub_4D2140(a2);
    sub_2F4C8(v10, 0, &v15, 0.0, v11 / 1000000000.0);
    v12 = v15;
    v13 = v16;
    if (v15 == v16)
    {
      v7 = 0;
      if (!v15)
      {
LABEL_7:
        v8 = v7;
        if (v12 != v13)
        {
          return v7 & 0xFFFFFFFF00000000 | v8;
        }

LABEL_11:
        v7 = 0xFFFFFFFF00000000;
        v8 = -1;
        return v7 & 0xFFFFFFFF00000000 | v8;
      }
    }

    else
    {
      v7 = *(v16 - 12);
      if (!v15)
      {
        goto LABEL_7;
      }
    }

    v16 = v15;
    operator delete(v15);
    goto LABEL_7;
  }

  sub_69E8D8(a2);
  v5 = v4;
  v6 = sub_4D2138(a2);
  sub_2F4C8(v5, 0, &v15, (1000000000 - v6) / 1000000000.0, 1.0);
  if (v15 == v16)
  {
    if (v15)
    {
      v16 = v15;
      operator delete(v15);
    }

    goto LABEL_11;
  }

  v7 = *v15;
  v16 = v15;
  operator delete(v15);
  v8 = v7;
  return v7 & 0xFFFFFFFF00000000 | v8;
}

unint64_t sub_A2B28C(uint64_t a1, const void **a2)
{
  v4 = sub_9BAF1C(a1, a2);
  if (v4)
  {
    return v4[5];
  }

  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v10 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *(a1 + 40)) >> 3);
  if (v6 >= v7)
  {
    v9 = sub_9B8AFC((a1 + 40), a2);
  }

  else
  {
    *v6 = 0;
    v6[1] = 0;
    v6[2] = 0;
    v8 = a2[1];
    if (v8 != *a2)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v8 - *a2) >> 2) < 0x1555555555555556)
      {
        operator new();
      }

      sub_1794();
    }

    v9 = (v6 + 3);
    *(a1 + 48) = v6 + 3;
  }

  *(a1 + 48) = v9;
  sub_A2BA40(a1, a2, a2, &v10);
  return v10;
}

void sub_A2B3BC(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  *(v1 + 48) = v2;
  _Unwind_Resume(exception_object);
}

void *sub_A2B3DC(void *a1, const void *a2, unint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3)
  {
    if (a3 < 0x1555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_A2B4A4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A2B4C0(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = a3;
  v10 = a1[1];
  v9 = a1[2];
  if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 3)) >= a5)
  {
    v15 = v10 - a2;
    if ((0xAAAAAAAAAAAAAAABLL * ((v10 - a2) >> 3)) < a5)
    {
      v16 = v15 + a3;
      v17 = sub_47C4C(a1, (v15 + a3), a4, a1[1]);
      v18 = v17;
      a1[1] = v17;
      if (v15 >= 1)
      {
        v19 = (v5 + 24 * a5);
        v20 = &v17[-3 * a5];
        for (i = v17; v20 < v10; i += 3)
        {
          *i = 0;
          i[1] = 0;
          i[2] = 0;
          *i = *v20;
          i[2] = v20[2];
          *v20 = 0;
          v20[1] = 0;
          v20[2] = 0;
          v20 += 3;
        }

        a1[1] = i;
        if (v17 != v19)
        {
          v22 = 0;
          v23 = -3 * a5;
          do
          {
            v25 = &v18[v22];
            v27 = &v18[v22 - 3];
            v26 = *v27;
            if (*v27)
            {
              *(v25 - 2) = v26;
              operator delete(v26);
              *v27 = 0;
              v18[v22 - 2] = 0;
              v18[v22 - 1] = 0;
            }

            v24 = &v18[v23 - 3];
            *v27 = *v24;
            *(v25 - 1) = v18[v23 - 1];
            *v24 = 0;
            *(v24 + 8) = 0;
            *(v24 + 16) = 0;
            v22 -= 3;
            v19 += 3;
            v23 -= 3;
          }

          while (v18 != v19);
        }

        v39 = v5;
        do
        {
          if (v7 != v39)
          {
            sub_35354C(v39, *v7, *(v7 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(v7 + 8) - *v7) >> 2));
          }

          v7 += 24;
          v39 += 3;
        }

        while (v7 != v16);
      }

      return v5;
    }

    v28 = a2 + 24 * a5;
    v29 = v10 - 24 * a5;
    if (v29 >= v10)
    {
      a1[1] = v10;
      if (v10 == v28)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v30 = v10 - 24 * a5;
      v31 = a1[1];
      do
      {
        *v31 = 0;
        v31[1] = 0;
        v31[2] = 0;
        *v31 = *v30;
        v31[2] = *(v30 + 16);
        *v30 = 0;
        *(v30 + 8) = 0;
        *(v30 + 16) = 0;
        v30 += 24;
        v31 += 3;
      }

      while (v30 < v10);
      a1[1] = v31;
      if (v10 == v28)
      {
LABEL_49:
        v46 = v7 + 24 * a5;
        v47 = v5;
        do
        {
          if (v7 != v47)
          {
            sub_35354C(v47, *v7, *(v7 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(v7 + 8) - *v7) >> 2));
          }

          v7 += 24;
          v47 += 3;
        }

        while (v7 != v46);
        return v5;
      }
    }

    v40 = 0;
    v41 = a2 + 24 * a5 - v10;
    do
    {
      v43 = v10 + v40;
      v45 = (v10 + v40 - 24);
      v44 = *v45;
      if (*v45)
      {
        *(v43 - 16) = v44;
        operator delete(v44);
        *v45 = 0;
        *(v10 + v40 - 16) = 0;
        *(v10 + v40 - 8) = 0;
      }

      v42 = v29 + v40 - 24;
      *v45 = *v42;
      *(v43 - 8) = *(v29 + v40 - 8);
      *v42 = 0;
      *(v42 + 8) = 0;
      *(v42 + 16) = 0;
      v40 -= 24;
    }

    while (v41 != v40);
    goto LABEL_49;
  }

  v11 = *a1;
  v12 = a5 - 0x5555555555555555 * ((v10 - *a1) >> 3);
  if (v12 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  v13 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 3);
  if (2 * v13 > v12)
  {
    v12 = 2 * v13;
  }

  if (v13 >= 0x555555555555555)
  {
    v14 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v14 = v12;
  }

  v53 = a1;
  if (v14)
  {
    if (v14 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v32 = (8 * ((a2 - v11) >> 3));
  v50 = v32;
  v51 = v32;
  v52 = 0;
  v33 = 24 * a5;
  v48 = &v32[3 * a5];
  do
  {
    *v32 = 0;
    v32[1] = 0;
    v32[2] = 0;
    v34 = *(v7 + 8);
    if (v34 != *v7)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v34 - *v7) >> 2) < 0x1555555555555556)
      {
        operator new();
      }

      sub_1794();
    }

    v32 += 3;
    v7 += 24;
    v33 -= 24;
  }

  while (v33);
  v51 = v48;
  v5 = sub_6B95AC(a1, &__p, a2);
  v35 = v50;
LABEL_36:
  for (j = v51; j != v35; j -= 3)
  {
    v36 = *(j - 3);
    v51 = j - 3;
    if (v36)
    {
      *(j - 2) = v36;
      operator delete(v36);
      goto LABEL_36;
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v5;
}