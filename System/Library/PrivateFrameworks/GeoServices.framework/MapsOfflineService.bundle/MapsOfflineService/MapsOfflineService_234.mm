void sub_E5013C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(a18);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0xE501B0);
}

void sub_E50144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  sub_2430CC(&a26);
  if (a36 < 0)
  {
    operator delete(*(v36 + 8));
  }

  if (a23 < 0)
  {
    operator delete(a18);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0xE501B0);
}

void sub_E50188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(*v32);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_E501A8(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0xE501B0);
  }

  sub_4A48(a1);
}

uint64_t sub_E501C0@<X0>(const char *a1@<X0>, uint64_t **a2@<X1>, const char *a3@<X2>, _BYTE *a4@<X8>)
{
  sub_D7B0(v20);
  v8 = strlen(a1);
  v9 = sub_4A5C(&v21, a1, v8);
  v10 = *(a2 + 23);
  if (v10 >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  if (v10 >= 0)
  {
    v12 = *(a2 + 23);
  }

  else
  {
    v12 = a2[1];
  }

  v13 = sub_4A5C(v9, v11, v12);
  v14 = strlen(a3);
  sub_4A5C(v13, a3, v14);
  if ((v31 & 0x10) != 0)
  {
    v16 = v30;
    if (v30 < v27)
    {
      v30 = v27;
      v16 = v27;
    }

    v17 = v26;
    v15 = v16 - v26;
    if (v16 - v26 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if ((v31 & 8) == 0)
    {
      v15 = 0;
      a4[23] = 0;
      goto LABEL_18;
    }

    v17 = v24;
    v15 = v25 - v24;
    if ((v25 - v24) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_22:
      sub_3244();
    }
  }

  if (v15 >= 0x17)
  {
    operator new();
  }

  a4[23] = v15;
  if (v15)
  {
    memmove(a4, v17, v15);
  }

LABEL_18:
  a4[v15] = 0;
  v21 = v18;
  if (v29 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v23);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E5045C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E50470@<X0>(const char *a1@<X0>, uint64_t **a2@<X1>, _BYTE *a3@<X8>)
{
  sub_D7B0(v16);
  v6 = strlen(a1);
  v7 = sub_4A5C(&v17, a1, v6);
  v8 = *(a2 + 23);
  if (v8 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v8 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = a2[1];
  }

  sub_4A5C(v7, v9, v10);
  if ((v27 & 0x10) != 0)
  {
    v12 = v26;
    if (v26 < v23)
    {
      v26 = v23;
      v12 = v23;
    }

    v13 = v22;
    v11 = v12 - v22;
    if (v12 - v22 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if ((v27 & 8) == 0)
    {
      v11 = 0;
      a3[23] = 0;
      goto LABEL_18;
    }

    v13 = v20;
    v11 = v21 - v20;
    if ((v21 - v20) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_22:
      sub_3244();
    }
  }

  if (v11 >= 0x17)
  {
    operator new();
  }

  a3[23] = v11;
  if (v11)
  {
    memmove(a3, v13, v11);
  }

LABEL_18:
  a3[v11] = 0;
  v17 = v14;
  if (v25 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v19);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E506EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E50700@<X0>(const char *a1@<X0>, uint64_t **a2@<X1>, _BYTE *a3@<X8>)
{
  sub_D7B0(v16);
  v6 = strlen(a1);
  v7 = sub_4A5C(&v17, a1, v6);
  v8 = *(a2 + 23);
  if (v8 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v8 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = a2[1];
  }

  sub_4A5C(v7, v9, v10);
  if ((v27 & 0x10) != 0)
  {
    v12 = v26;
    if (v26 < v23)
    {
      v26 = v23;
      v12 = v23;
    }

    v13 = v22;
    v11 = v12 - v22;
    if (v12 - v22 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if ((v27 & 8) == 0)
    {
      v11 = 0;
      a3[23] = 0;
      goto LABEL_18;
    }

    v13 = v20;
    v11 = v21 - v20;
    if ((v21 - v20) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_22:
      sub_3244();
    }
  }

  if (v11 >= 0x17)
  {
    operator new();
  }

  a3[23] = v11;
  if (v11)
  {
    memmove(a3, v13, v11);
  }

LABEL_18:
  a3[v11] = 0;
  v17 = v14;
  if (v25 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v19);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E5097C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

void sub_E50990(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, int a4@<W3>, unsigned int *a5@<X4>, __n128 *a6@<X8>)
{
  v12 = "charging_arguments";
  if (!a4)
  {
    v12 = "consumption_arguments";
  }

  v44 = v12;
  v45[23] = 8;
  strcpy(v45, "model_id");
  v13 = sub_5FC3C(a1, v45);
  if ((v45[23] & 0x80000000) == 0)
  {
    if (v13)
    {
      goto LABEL_5;
    }

LABEL_15:
    sub_E5146C("Got an EV request without a 'model_id'. No model_id found in the ", &v44, ".", &v43);
    v41[0].n128_u64[0] = 2;
    v41[0].n128_u64[1] = &off_2669FE0;
    v45[0] = 12;
    if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_325C(&v45[8], v43.__r_.__value_.__l.__data_, v43.__r_.__value_.__l.__size_);
    }

    else
    {
      *&v45[8] = v43;
    }

    sub_435A00(__p, v45, 1uLL);
    sub_4349A4(a6, v41, __p);
    v21 = __p[0].n128_u64[0];
    if (!__p[0].n128_u64[0])
    {
      goto LABEL_42;
    }

    v22 = __p[0].n128_u64[1];
    v23 = __p[0].n128_u64[0];
    if (__p[0].n128_u64[1] == __p[0].n128_u64[0])
    {
LABEL_41:
      __p[0].n128_u64[1] = v21;
      operator delete(v23);
LABEL_42:
      if ((v45[31] & 0x80000000) == 0)
      {
        goto LABEL_119;
      }

      v25 = *&v45[8];
      goto LABEL_118;
    }

    do
    {
      if (*(v22 - 1) < 0)
      {
        operator delete(*(v22 - 24));
      }

      v22 -= 32;
    }

    while (v22 != v21);
LABEL_40:
    v23 = __p[0].n128_u64[0];
    goto LABEL_41;
  }

  v19 = v13;
  operator delete(*v45);
  if (!v19)
  {
    goto LABEL_15;
  }

LABEL_5:
  v45[23] = 8;
  strcpy(v45, "model_id");
  v14 = *(sub_5F33C(a1, v45) + 2) - 2;
  if ((v45[23] & 0x80000000) == 0)
  {
    if (v14 < 3)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

  operator delete(*v45);
  if (v14 >= 3)
  {
LABEL_18:
    v45[23] = 8;
    strcpy(v45, "model_id");
    v20 = sub_5F33C(a1, v45);
    sub_E51720("Got an EV request with a ", &v44, ".model_id of invalid type (", v20, "). Expected a number.", &v43);
    if ((v45[23] & 0x80000000) != 0)
    {
      operator delete(*v45);
    }

    v41[0].n128_u64[0] = 2;
    v41[0].n128_u64[1] = &off_2669FE0;
    v45[0] = 12;
    if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_325C(&v45[8], v43.__r_.__value_.__l.__data_, v43.__r_.__value_.__l.__size_);
    }

    else
    {
      *&v45[8] = v43;
    }

    sub_435A00(__p, v45, 1uLL);
    sub_4349A4(a6, v41, __p);
    v21 = __p[0].n128_u64[0];
    if (!__p[0].n128_u64[0])
    {
      goto LABEL_42;
    }

    v24 = __p[0].n128_u64[1];
    v23 = __p[0].n128_u64[0];
    if (__p[0].n128_u64[1] == __p[0].n128_u64[0])
    {
      goto LABEL_41;
    }

    do
    {
      if (*(v24 - 1) < 0)
      {
        operator delete(*(v24 - 24));
      }

      v24 -= 32;
    }

    while (v24 != v21);
    goto LABEL_40;
  }

LABEL_7:
  v45[23] = 8;
  strcpy(v45, "model_id");
  v15 = sub_353010(a1, v45);
  if ((v45[23] & 0x80000000) != 0)
  {
    v16 = v15;
    operator delete(*v45);
    v15 = v16;
  }

  std::to_string(&v43, v15);
  if (!a4 && sub_5FC3C(a3, &v43))
  {
    sub_E4FC1C(a3, &v43, a6);
    goto LABEL_119;
  }

  v17 = a1[3];
  if (v17 == 2)
  {
    v45[23] = 8;
    strcpy(v45, "model_id");
    if (sub_5FC3C(a1, v45))
    {
      __p[1].n128_u8[7] = 18;
      strcpy(__p, "vehicle_parameters");
      v18 = !sub_5FC3C(a1, __p);
      if (__p[1].n128_i8[7] < 0)
      {
        operator delete(__p[0].n128_u64[0]);
      }
    }

    else
    {
      v18 = 1;
    }

    if ((v45[23] & 0x80000000) != 0)
    {
      operator delete(*v45);
      if (a1[3] != 3)
      {
        goto LABEL_66;
      }
    }

    else if (a1[3] != 3)
    {
LABEL_66:
      if (v18)
      {
        goto LABEL_67;
      }

      goto LABEL_56;
    }
  }

  else
  {
    v18 = 1;
    if (v17 != 3)
    {
      goto LABEL_66;
    }
  }

  v45[23] = 8;
  strcpy(v45, "model_id");
  if (!sub_5FC3C(a1, v45))
  {
    v26 = 0;
    if ((v45[23] & 0x80000000) != 0)
    {
      goto LABEL_65;
    }

    goto LABEL_54;
  }

  __p[1].n128_u8[7] = 18;
  strcpy(__p, "vehicle_parameters");
  if (sub_5FC3C(a1, __p))
  {
    v41[1].n128_u8[7] = 16;
    strcpy(v41, "model_parameters");
    v26 = sub_5FC3C(a1, v41);
    if ((v41[1].n128_i8[7] & 0x80000000) == 0)
    {
      if ((__p[1].n128_i8[7] & 0x80000000) == 0)
      {
        goto LABEL_53;
      }

      goto LABEL_83;
    }

    operator delete(v41[0].n128_u64[0]);
    if (__p[1].n128_i8[7] < 0)
    {
LABEL_83:
      operator delete(__p[0].n128_u64[0]);
      if ((v45[23] & 0x80000000) != 0)
      {
        goto LABEL_65;
      }

LABEL_54:
      if (!v26)
      {
        goto LABEL_66;
      }

      goto LABEL_55;
    }
  }

  else
  {
    v26 = 0;
    if (__p[1].n128_i8[7] < 0)
    {
      goto LABEL_83;
    }
  }

LABEL_53:
  if ((v45[23] & 0x80000000) == 0)
  {
    goto LABEL_54;
  }

LABEL_65:
  operator delete(*v45);
  if (!v26)
  {
    goto LABEL_66;
  }

LABEL_55:
  v27 = sub_74700();
  sub_73EC4(v27);
  if (v18 && a4 == 1)
  {
LABEL_67:
    sub_E51A08("Expected exactly two arguments 'model_id' and 'vehicle_parameters' for ", &v44, ".", __p);
    *&v40 = 2;
    *(&v40 + 1) = &off_2669FE0;
    v45[0] = 12;
    if (__p[1].n128_i8[7] < 0)
    {
      sub_325C(&v45[8], __p[0].n128_u64[0], __p[0].n128_u64[1]);
    }

    else
    {
      *&v45[8] = __p[0];
      *&v45[24] = __p[1].n128_u64[0];
    }

    sub_435A00(v41, v45, 1uLL);
    sub_4349A4(a6, &v40, v41);
    v31 = v41[0].n128_u64[0];
    if (!v41[0].n128_u64[0])
    {
      goto LABEL_113;
    }

    v32 = v41[0].n128_u64[1];
    v33 = v41[0].n128_u64[0];
    if (v41[0].n128_u64[1] == v41[0].n128_u64[0])
    {
LABEL_112:
      v41[0].n128_u64[1] = v31;
      operator delete(v33);
LABEL_113:
      if ((v45[31] & 0x80000000) != 0)
      {
        operator delete(*&v45[8]);
        if ((__p[1].n128_i8[7] & 0x80000000) == 0)
        {
          goto LABEL_119;
        }
      }

      else if ((__p[1].n128_i8[7] & 0x80000000) == 0)
      {
        goto LABEL_119;
      }

      v25 = __p[0].n128_u64[0];
      goto LABEL_118;
    }

    do
    {
      if (*(v32 - 1) < 0)
      {
        operator delete(*(v32 - 24));
      }

      v32 -= 32;
    }

    while (v32 != v31);
LABEL_111:
    v33 = v41[0].n128_u64[0];
    goto LABEL_112;
  }

LABEL_56:
  v45[23] = 18;
  strcpy(v45, "vehicle_parameters");
  v28 = sub_5FC3C(a1, v45);
  if ((v45[23] & 0x80000000) != 0)
  {
    v29 = v28;
    operator delete(*v45);
    v28 = v29;
  }

  if (!v28)
  {
    sub_E51CBC("Got an EV request without a 'vehicle_parameters' object in the ", &v44, ".", __p);
    *&v40 = 2;
    *(&v40 + 1) = &off_2669FE0;
    v45[0] = 12;
    if (__p[1].n128_i8[7] < 0)
    {
      sub_325C(&v45[8], __p[0].n128_u64[0], __p[0].n128_u64[1]);
    }

    else
    {
      *&v45[8] = __p[0];
      *&v45[24] = __p[1].n128_u64[0];
    }

    sub_435A00(v41, v45, 1uLL);
    sub_4349A4(a6, &v40, v41);
    v31 = v41[0].n128_u64[0];
    if (!v41[0].n128_u64[0])
    {
      goto LABEL_113;
    }

    v35 = v41[0].n128_u64[1];
    v33 = v41[0].n128_u64[0];
    if (v41[0].n128_u64[1] == v41[0].n128_u64[0])
    {
      goto LABEL_112;
    }

    do
    {
      if (*(v35 - 1) < 0)
      {
        operator delete(*(v35 - 24));
      }

      v35 -= 32;
    }

    while (v35 != v31);
    goto LABEL_111;
  }

  v45[23] = 18;
  strcpy(v45, "vehicle_parameters");
  v30 = *(sub_5F33C(a1, v45) + 2);
  if ((v45[23] & 0x80000000) != 0)
  {
    operator delete(*v45);
  }

  if (v30 != 5)
  {
    v45[23] = 18;
    strcpy(v45, "vehicle_parameters");
    v34 = sub_5F33C(a1, v45);
    sub_E51F70("Got an EV request with a ", &v44, ".vehicle_parameters of invalid type (", v34, "). Expected an object.", __p);
    if ((v45[23] & 0x80000000) != 0)
    {
      operator delete(*v45);
    }

    *&v40 = 2;
    *(&v40 + 1) = &off_2669FE0;
    v45[0] = 12;
    if (__p[1].n128_i8[7] < 0)
    {
      sub_325C(&v45[8], __p[0].n128_u64[0], __p[0].n128_u64[1]);
    }

    else
    {
      *&v45[8] = __p[0];
      *&v45[24] = __p[1].n128_u64[0];
    }

    sub_435A00(v41, v45, 1uLL);
    sub_4349A4(a6, &v40, v41);
    v31 = v41[0].n128_u64[0];
    if (!v41[0].n128_u64[0])
    {
      goto LABEL_113;
    }

    v39 = v41[0].n128_u64[1];
    v33 = v41[0].n128_u64[0];
    if (v41[0].n128_u64[1] == v41[0].n128_u64[0])
    {
      goto LABEL_112;
    }

    do
    {
      if (*(v39 - 1) < 0)
      {
        operator delete(*(v39 - 24));
      }

      v39 -= 32;
    }

    while (v39 != v31);
    goto LABEL_111;
  }

  sub_5F328(v45);
  if (a4)
  {
    sub_E534C4(a1, a2, a5, a6);
  }

  else
  {
    sub_E52258(a1, a2, a6, v45);
  }

  v36 = *&v45[16];
  if (*&v45[16])
  {
    do
    {
      v37 = *v36;
      v38 = *(v36 + 12);
      if (v38 != -1)
      {
        (off_2674330[v38])(__p, v36 + 5);
      }

      *(v36 + 12) = -1;
      if (*(v36 + 39) < 0)
      {
        operator delete(v36[2]);
      }

      operator delete(v36);
      v36 = v37;
    }

    while (v37);
  }

  v25 = *v45;
  *v45 = 0;
  if (v25)
  {
LABEL_118:
    operator delete(v25);
  }

LABEL_119:
  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }
}

void sub_E512F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a34 < 0)
  {
    operator delete(a29);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_E5146C@<X0>(const char *a1@<X0>, const char **a2@<X1>, const char *a3@<X2>, _BYTE *a4@<X8>)
{
  sub_D7B0(v19);
  v8 = strlen(a1);
  v9 = sub_4A5C(&v20, a1, v8);
  v10 = *a2;
  v11 = strlen(v10);
  v12 = sub_4A5C(v9, v10, v11);
  v13 = strlen(a3);
  sub_4A5C(v12, a3, v13);
  if ((v30 & 0x10) != 0)
  {
    v15 = v29;
    if (v29 < v26)
    {
      v29 = v26;
      v15 = v26;
    }

    v16 = v25;
    v14 = v15 - v25;
    if (v15 - v25 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v30 & 8) == 0)
    {
      v14 = 0;
      a4[23] = 0;
      goto LABEL_12;
    }

    v16 = v23;
    v14 = v24 - v23;
    if ((v24 - v23) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v14 >= 0x17)
  {
    operator new();
  }

  a4[23] = v14;
  if (v14)
  {
    memmove(a4, v16, v14);
  }

LABEL_12:
  a4[v14] = 0;
  v20 = v17;
  if (v28 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v22);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E5170C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E51720@<X0>(const char *a1@<X0>, const char **a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, const char *a5@<X4>, _BYTE *a6@<X8>)
{
  sub_D7B0(v26);
  v12 = strlen(a1);
  v13 = sub_4A5C(&v27, a1, v12);
  v14 = *a2;
  v15 = strlen(v14);
  v16 = sub_4A5C(v13, v14, v15);
  v17 = strlen(a3);
  v18 = sub_4A5C(v16, a3, v17);
  v19 = sub_60F98(v18, a4);
  v20 = strlen(a5);
  sub_4A5C(v19, a5, v20);
  if ((v37 & 0x10) != 0)
  {
    v22 = v36;
    if (v36 < v33)
    {
      v36 = v33;
      v22 = v33;
    }

    v23 = v32;
    v21 = v22 - v32;
    if (v22 - v32 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v37 & 8) == 0)
    {
      v21 = 0;
      a6[23] = 0;
      goto LABEL_12;
    }

    v23 = v30;
    v21 = v31 - v30;
    if ((v31 - v30) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v21 >= 0x17)
  {
    operator new();
  }

  a6[23] = v21;
  if (v21)
  {
    memmove(a6, v23, v21);
  }

LABEL_12:
  a6[v21] = 0;
  v27 = v24;
  if (v35 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v29);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E519F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E51A08@<X0>(const char *a1@<X0>, const char **a2@<X1>, const char *a3@<X2>, _BYTE *a4@<X8>)
{
  sub_D7B0(v19);
  v8 = strlen(a1);
  v9 = sub_4A5C(&v20, a1, v8);
  v10 = *a2;
  v11 = strlen(v10);
  v12 = sub_4A5C(v9, v10, v11);
  v13 = strlen(a3);
  sub_4A5C(v12, a3, v13);
  if ((v30 & 0x10) != 0)
  {
    v15 = v29;
    if (v29 < v26)
    {
      v29 = v26;
      v15 = v26;
    }

    v16 = v25;
    v14 = v15 - v25;
    if (v15 - v25 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v30 & 8) == 0)
    {
      v14 = 0;
      a4[23] = 0;
      goto LABEL_12;
    }

    v16 = v23;
    v14 = v24 - v23;
    if ((v24 - v23) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v14 >= 0x17)
  {
    operator new();
  }

  a4[23] = v14;
  if (v14)
  {
    memmove(a4, v16, v14);
  }

LABEL_12:
  a4[v14] = 0;
  v20 = v17;
  if (v28 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v22);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E51CA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E51CBC@<X0>(const char *a1@<X0>, const char **a2@<X1>, const char *a3@<X2>, _BYTE *a4@<X8>)
{
  sub_D7B0(v19);
  v8 = strlen(a1);
  v9 = sub_4A5C(&v20, a1, v8);
  v10 = *a2;
  v11 = strlen(v10);
  v12 = sub_4A5C(v9, v10, v11);
  v13 = strlen(a3);
  sub_4A5C(v12, a3, v13);
  if ((v30 & 0x10) != 0)
  {
    v15 = v29;
    if (v29 < v26)
    {
      v29 = v26;
      v15 = v26;
    }

    v16 = v25;
    v14 = v15 - v25;
    if (v15 - v25 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v30 & 8) == 0)
    {
      v14 = 0;
      a4[23] = 0;
      goto LABEL_12;
    }

    v16 = v23;
    v14 = v24 - v23;
    if ((v24 - v23) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v14 >= 0x17)
  {
    operator new();
  }

  a4[23] = v14;
  if (v14)
  {
    memmove(a4, v16, v14);
  }

LABEL_12:
  a4[v14] = 0;
  v20 = v17;
  if (v28 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v22);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E51F5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E51F70@<X0>(const char *a1@<X0>, const char **a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, const char *a5@<X4>, _BYTE *a6@<X8>)
{
  sub_D7B0(v26);
  v12 = strlen(a1);
  v13 = sub_4A5C(&v27, a1, v12);
  v14 = *a2;
  v15 = strlen(v14);
  v16 = sub_4A5C(v13, v14, v15);
  v17 = strlen(a3);
  v18 = sub_4A5C(v16, a3, v17);
  v19 = sub_60F98(v18, a4);
  v20 = strlen(a5);
  sub_4A5C(v19, a5, v20);
  if ((v37 & 0x10) != 0)
  {
    v22 = v36;
    if (v36 < v33)
    {
      v36 = v33;
      v22 = v33;
    }

    v23 = v32;
    v21 = v22 - v32;
    if (v22 - v32 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v37 & 8) == 0)
    {
      v21 = 0;
      a6[23] = 0;
      goto LABEL_12;
    }

    v23 = v30;
    v21 = v31 - v30;
    if ((v31 - v30) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v21 >= 0x17)
  {
    operator new();
  }

  a6[23] = v21;
  if (v21)
  {
    memmove(a6, v23, v21);
  }

LABEL_12:
  a6[v21] = 0;
  v27 = v24;
  if (v35 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v29);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E52244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

void sub_E52258(void *a1@<X0>, void *a2@<X1>, __n128 *a3@<X8>, void *a4@<X2>)
{
  v88[1].n128_u8[7] = 8;
  strcpy(v88, "model_id");
  v8 = sub_353010(a1, v88);
  v84 = v8;
  if (v88[1].n128_i8[7] < 0)
  {
    operator delete(v88[0].n128_u64[0]);
    v8 = v84;
  }

  std::to_string(&v83, v8);
  if (sub_5FC3C(a4, &v83))
  {
    v88[0].n128_u64[0] = 0;
    v88[0].n128_u64[1] = &off_2669FE0;
    sub_434934(a3, v88);
    goto LABEL_193;
  }

  if (!sub_5FC3C(a2, &v83))
  {
    sub_E5559C("Got an EV request with an unknown consumption_arguments.model_id (", ").", &v81);
    v72.n128_u64[0] = 2;
    v72.n128_u64[1] = &off_2669FE0;
    v88[0].n128_u8[0] = 12;
    if (SHIBYTE(v82) < 0)
    {
      sub_325C(&v88[0].n128_u8[8], v81.n128_u64[0], v81.n128_u64[1]);
    }

    else
    {
      *(v88 + 8) = v81;
      v88[1].n128_u64[1] = v82;
    }

    sub_435A00(&v78, v88, 1uLL);
    sub_4349A4(a3, &v72, &v78);
    v20 = v78.n128_u64[0];
    if (!v78.n128_u64[0])
    {
      goto LABEL_43;
    }

    v21 = v78.n128_u64[1];
    v22 = v78.n128_u64[0];
    if (v78.n128_u64[1] == v78.n128_u64[0])
    {
      goto LABEL_42;
    }

    do
    {
      if (*(v21 - 1) < 0)
      {
        operator delete(*(v21 - 24));
      }

      v21 -= 32;
    }

    while (v21 != v20);
    goto LABEL_41;
  }

  v88[1].n128_u8[7] = 18;
  strcpy(v88, "vehicle_parameters");
  v9 = sub_5F5AC(a1, v88);
  if (v88[1].n128_i8[7] < 0)
  {
    operator delete(v88[0].n128_u64[0]);
  }

  v10 = sub_5F5AC(a2, &v83);
  v88[1].n128_u8[7] = 8;
  strcpy(v88, "disabled");
  v81.n128_u8[0] = 0;
  v11 = sub_5FBE4(v10, v88, &v81);
  if (v88[1].n128_i8[7] < 0)
  {
    v12 = v11;
    operator delete(v88[0].n128_u64[0]);
    if (v12)
    {
      goto LABEL_10;
    }
  }

  else if (v11)
  {
LABEL_10:
    sub_E5559C("Got an EV request with a disabled consumption_arguments.model_id (", ").", &v81);
    v72.n128_u64[0] = 2;
    v72.n128_u64[1] = &off_2669FE0;
    v88[0].n128_u8[0] = 0;
    if (SHIBYTE(v82) < 0)
    {
      sub_325C(&v88[0].n128_u8[8], v81.n128_u64[0], v81.n128_u64[1]);
    }

    else
    {
      *(v88 + 8) = v81;
      v88[1].n128_u64[1] = v82;
    }

    sub_435A00(&v78, v88, 1uLL);
    sub_4349A4(a3, &v72, &v78);
    v20 = v78.n128_u64[0];
    if (!v78.n128_u64[0])
    {
      goto LABEL_43;
    }

    v23 = v78.n128_u64[1];
    v22 = v78.n128_u64[0];
    if (v78.n128_u64[1] == v78.n128_u64[0])
    {
LABEL_42:
      v78.n128_u64[1] = v20;
      operator delete(v22);
LABEL_43:
      if (v88[1].n128_i8[15] < 0)
      {
        operator delete(v88[0].n128_u64[1]);
        if ((SHIBYTE(v82) & 0x80000000) == 0)
        {
          goto LABEL_193;
        }
      }

      else if ((SHIBYTE(v82) & 0x80000000) == 0)
      {
        goto LABEL_193;
      }

      v24 = v81.n128_u64[0];
      goto LABEL_192;
    }

    do
    {
      if (*(v23 - 1) < 0)
      {
        operator delete(*(v23 - 24));
      }

      v23 -= 32;
    }

    while (v23 != v20);
LABEL_41:
    v22 = v78.n128_u64[0];
    goto LABEL_42;
  }

  sub_5F328(&v81);
  v88[1].n128_u8[7] = 16;
  strcpy(v88, "model_parameters");
  v13 = sub_5FAAC(a1, v88, &v81);
  if (v88[1].n128_i8[7] < 0)
  {
    operator delete(v88[0].n128_u64[0]);
  }

  v78 = 0u;
  v79 = 0u;
  v80 = 1065353216;
  v88[1].n128_u8[7] = 16;
  strcpy(v88, "model_parameters");
  v14 = sub_5FAAC(v10, v88, &v81);
  if (v88[1].n128_i8[7] < 0)
  {
    operator delete(v88[0].n128_u64[0]);
  }

  v15 = sub_588E0(v14);
  for (i = sub_5FC5C(); v15 != i; v15 = *v15)
  {
    sub_23914(&v78, v15 + 2, (v15 + 2));
  }

  if (v13[3] <= 0x64)
  {
    v62 = v10;
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v17 = sub_588E0(v9);
    for (j = sub_5FC5C(); v17 != j; v17 = *v17)
    {
      if (*(v17 + 39) < 0)
      {
        sub_325C(&v72, *(v17 + 16), *(v17 + 24));
      }

      else
      {
        v72 = *(v17 + 16);
        *&v73 = *(v17 + 32);
      }

      BYTE8(v73) = 0;
      v74 = -1;
      v26 = *(v17 + 48);
      if (v26 != -1)
      {
        __p[0] = &v73 + 8;
        (off_2674378[v26])(__p, v17 + 40);
        v74 = v26;
      }

      sub_E54C18(&v72, &v83, v88);
      if (v74 != -1)
      {
        (off_2674330[v74])(__p, &v73 + 8);
      }

      v74 = -1;
      if (SBYTE7(v73) < 0)
      {
        operator delete(v72.n128_u64[0]);
      }

      sub_434D48(&v75, v76, v88[1].n128_i64[0], v88[1].n128_i64[1], (v88[1].n128_u64[1] - v88[1].n128_u64[0]) >> 5);
      v27 = v88[1].n128_u64[0];
      if (v88[1].n128_u64[0])
      {
        v28 = v88[1].n128_u64[1];
        v25 = v88[1].n128_u64[0];
        if (v88[1].n128_u64[1] != v88[1].n128_u64[0])
        {
          do
          {
            if (*(v28 - 1) < 0)
            {
              operator delete(*(v28 - 24));
            }

            v28 -= 32;
          }

          while (v28 != v27);
          v25 = v88[1].n128_u64[0];
        }

        v88[1].n128_u64[1] = v27;
        operator delete(v25);
      }
    }

    if (v75 != v76)
    {
      v88[0].n128_u64[0] = 2;
      v88[0].n128_u64[1] = &off_2669FE0;
      sub_434954(a3, v88, &v75);
LABEL_163:
      v50 = v75;
      if (!v75)
      {
        goto LABEL_178;
      }

      v51 = v76;
      v32 = v75;
      if (v76 != v75)
      {
        do
        {
          if (*(v51 - 1) < 0)
          {
            operator delete(*(v51 - 24));
          }

          v51 -= 32;
        }

        while (v51 != v50);
        v32 = v75;
      }

      v76 = v50;
      goto LABEL_177;
    }

    v72 = 0u;
    v73 = 0u;
    v74 = 1065353216;
    sub_E61590(v88, &v72, v13);
    v33 = v13[2];
    if (v33)
    {
      while (1)
      {
        if (*(v33 + 39) < 0)
        {
          sub_325C(v88, *(v33 + 16), *(v33 + 24));
        }

        else
        {
          v88[0] = *(v33 + 16);
          v88[1].n128_u64[0] = *(v33 + 32);
        }

        v88[1].n128_u8[8] = 0;
        v89 = -1;
        v34 = *(v33 + 48);
        if (v34 != -1)
        {
          *v85 = &v88[1].n128_u64[1];
          (off_2674378[v34])(v85, v33 + 40);
          v89 = v34;
        }

        if (v88[1].n128_i8[7] < 0)
        {
          sub_325C(__p, v88[0].n128_u64[0], v88[0].n128_u64[1]);
        }

        else
        {
          *__p = v88[0];
          v70[0] = v88[1].n128_u64[0];
        }

        sub_4BE060(&v72, __p, __p);
        if ((SHIBYTE(v70[0]) & 0x80000000) == 0)
        {
          break;
        }

        operator delete(__p[0]);
        v35 = v89;
        if (v89 != -1)
        {
          goto LABEL_95;
        }

LABEL_96:
        v89 = -1;
        if (v88[1].n128_i8[7] < 0)
        {
          operator delete(v88[0].n128_u64[0]);
        }

        v33 = *v33;
        if (!v33)
        {
          goto LABEL_98;
        }
      }

      v35 = v89;
      if (v89 == -1)
      {
        goto LABEL_96;
      }

LABEL_95:
      (off_2674330[v35])(v85, &v88[1].n128_i8[8]);
      goto LABEL_96;
    }

LABEL_98:
    if (*(&v73 + 1) && (sub_E55AE8(&v72, &v78) & 1) == 0)
    {
      sub_E55BAC("Got an EV request where the (unexpected) provided consumption model parameters do not match the model parameters for the model with id ", &v83, __p);
      v67.n128_u64[0] = 2;
      v67.n128_u64[1] = &off_2669FE0;
      v88[0].n128_u8[0] = 12;
      if (SHIBYTE(v70[0]) < 0)
      {
        sub_325C(&v88[0].n128_u8[8], __p[0], __p[1]);
      }

      else
      {
        *(v88 + 8) = *__p;
        v88[1].n128_u64[1] = v70[0];
      }

      sub_435A00(v85, v88, 1uLL);
      sub_4349A4(a3, &v67, v85);
      sub_2430CC(v85);
      if (v88[1].n128_i8[15] < 0)
      {
        operator delete(v88[0].n128_u64[1]);
      }

      if ((SHIBYTE(v70[0]) & 0x80000000) == 0)
      {
        goto LABEL_160;
      }

      v47 = __p[0];
      goto LABEL_159;
    }

    *__p = 0u;
    *v70 = 0u;
    v71 = 1065353216;
    v88[1].n128_u8[7] = 18;
    strcpy(v88, "vehicle_parameters");
    v36 = sub_5FAAC(v62, v88, &v81);
    if (v88[1].n128_i8[7] < 0)
    {
      operator delete(v88[0].n128_u64[0]);
    }

    v37 = sub_588E0(v36);
    for (k = sub_5FC5C(); v37 != k; v37 = *v37)
    {
      sub_23914(__p, v37 + 2, (v37 + 2));
    }

    if (v9[3] <= 0x64)
    {
      v67 = 0uLL;
      v68 = 0;
      v39 = sub_588E0(v9);
      for (m = sub_5FC5C(); v39 != m; v39 = *v39)
      {
        if (*(v39 + 39) < 0)
        {
          sub_325C(v85, *(v39 + 16), *(v39 + 24));
        }

        else
        {
          *v85 = *(v39 + 16);
          *&v85[16] = *(v39 + 32);
        }

        LOBYTE(v86) = 0;
        v87 = -1;
        v42 = *(v39 + 48);
        if (v42 != -1)
        {
          v65[0] = &v86;
          (off_2674378[v42])(v65, v39 + 40);
          v87 = v42;
        }

        sub_E54C18(v85, &v83, v88);
        if (v87 != -1)
        {
          (off_2674330[v87])(v65, &v86);
        }

        v87 = -1;
        if ((v85[23] & 0x80000000) != 0)
        {
          operator delete(*v85);
        }

        sub_434D48(&v67, v67.n128_i64[1], v88[1].n128_i64[0], v88[1].n128_i64[1], (v88[1].n128_u64[1] - v88[1].n128_u64[0]) >> 5);
        v43 = v88[1].n128_u64[0];
        if (v88[1].n128_u64[0])
        {
          v44 = v88[1].n128_u64[1];
          v41 = v88[1].n128_u64[0];
          if (v88[1].n128_u64[1] != v88[1].n128_u64[0])
          {
            do
            {
              if (*(v44 - 1) < 0)
              {
                operator delete(*(v44 - 24));
              }

              v44 -= 32;
            }

            while (v44 != v43);
            v41 = v88[1].n128_u64[0];
          }

          v88[1].n128_u64[1] = v43;
          operator delete(v41);
        }
      }

      if (v67.n128_u64[0] == v67.n128_u64[1])
      {
        memset(v88, 0, sizeof(v88));
        v89 = 1065353216;
        for (n = v9 + 2; ; sub_23914(v88, n + 2, (n + 2)))
        {
          n = *n;
          if (!n)
          {
            break;
          }
        }

        if (sub_E55AE8(v88, __p))
        {
          sub_9BAD0(v62, v9);
        }

        sub_E560EC("Got an EV request where the provided consumption model vehicle parameters do not match the approved vehicle parameters for the model with id ", &v83, v65);
        *&v64 = 2;
        *(&v64 + 1) = &off_2669FE0;
        v85[0] = 12;
        if (SHIBYTE(v66) < 0)
        {
          sub_325C(&v85[8], v65[0], v65[1]);
        }

        else
        {
          *&v85[8] = *v65;
          v86 = v66;
        }

        sub_435A00(&v63, v85, 1uLL);
        sub_4349A4(a3, &v64, &v63);
        sub_2430CC(&v63);
        if (SHIBYTE(v86) < 0)
        {
          operator delete(*&v85[8]);
        }

        if (SHIBYTE(v66) < 0)
        {
          operator delete(v65[0]);
        }

        sub_23D9C(v88);
      }

      else
      {
        v88[0].n128_u64[0] = 2;
        v88[0].n128_u64[1] = &off_2669FE0;
        sub_434954(a3, v88, &v67);
      }

      sub_2430CC(&v67);
      v45 = v70[0];
      if (!v70[0])
      {
LABEL_158:
        v47 = __p[0];
        __p[0] = 0;
        if (!v47)
        {
LABEL_160:
          v48 = v73;
          if (v73)
          {
            do
            {
              v52 = *v48;
              if (*(v48 + 39) < 0)
              {
                v53 = v48;
                operator delete(v48[2]);
                v48 = v53;
              }

              operator delete(v48);
              v48 = v52;
            }

            while (v52);
          }

          v49 = v72.n128_u64[0];
          v72.n128_u64[0] = 0;
          if (v49)
          {
            operator delete(v49);
          }

          goto LABEL_163;
        }

LABEL_159:
        operator delete(v47);
        goto LABEL_160;
      }

      do
      {
LABEL_173:
        v54 = *v45;
        if (*(v45 + 39) < 0)
        {
          operator delete(v45[2]);
        }

        operator delete(v45);
        v45 = v54;
      }

      while (v54);
      goto LABEL_158;
    }

    sub_E55E3C("Got an EV request with consumption model id ", &v83, " where the number of vehicle parameters exceeds limitations", v85);
    v65[0] = &dword_0 + 2;
    v65[1] = &off_2669FE0;
    v88[0].n128_u8[0] = 12;
    if ((v85[23] & 0x80000000) != 0)
    {
      sub_325C(&v88[0].n128_u8[8], *v85, *&v85[8]);
    }

    else
    {
      *(v88 + 8) = *v85;
      v88[1].n128_u64[1] = *&v85[16];
    }

    sub_435A00(&v67, v88, 1uLL);
    sub_4349A4(a3, v65, &v67);
    sub_2430CC(&v67);
    if (v88[1].n128_i8[15] < 0)
    {
      operator delete(v88[0].n128_u64[1]);
      if ((v85[23] & 0x80000000) == 0)
      {
LABEL_134:
        v45 = v70[0];
        if (!v70[0])
        {
          goto LABEL_158;
        }

        goto LABEL_173;
      }
    }

    else if ((v85[23] & 0x80000000) == 0)
    {
      goto LABEL_134;
    }

    operator delete(*v85);
    v45 = v70[0];
    if (!v70[0])
    {
      goto LABEL_158;
    }

    goto LABEL_173;
  }

  sub_E55838("Got an EV request with consumption model id ", &v83, " where the number of (unexpected) model parameters exceeds limitations", &v72);
  *v85 = 2;
  *&v85[8] = &off_2669FE0;
  v88[0].n128_u8[0] = 12;
  if (SBYTE7(v73) < 0)
  {
    sub_325C(&v88[0].n128_u8[8], v72.n128_u64[0], v72.n128_u64[1]);
  }

  else
  {
    *(v88 + 8) = v72;
    v88[1].n128_u64[1] = v73;
  }

  sub_435A00(__p, v88, 1uLL);
  v19 = sub_4349A4(a3, v85, __p);
  v29 = __p[0];
  if (__p[0])
  {
    v30 = __p[1];
    v31 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        if (*(v30 - 1) < 0)
        {
          operator delete(*(v30 - 3));
        }

        v30 -= 4;
      }

      while (v30 != v29);
      v31 = __p[0];
    }

    __p[1] = v29;
    operator delete(v31);
  }

  if (v88[1].n128_i8[15] < 0)
  {
    operator delete(v88[0].n128_u64[1]);
  }

  if (SBYTE7(v73) < 0)
  {
    v32 = v72.n128_u64[0];
LABEL_177:
    operator delete(v32);
  }

LABEL_178:
  v55 = v79;
  if (v79)
  {
    do
    {
      v58 = *v55;
      if (*(v55 + 39) < 0)
      {
        v59 = v55;
        operator delete(v55[2]);
        v55 = v59;
      }

      operator delete(v55);
      v55 = v58;
    }

    while (v58);
  }

  v56 = v78.n128_u64[0];
  v78.n128_u64[0] = 0;
  if (v56)
  {
    operator delete(v56);
  }

  v57 = v82;
  if (v82)
  {
    do
    {
      v60 = *v57;
      v61 = *(v57 + 12);
      if (v61 != -1)
      {
        (off_2674330[v61])(v88, v57 + 5, v19);
      }

      *(v57 + 12) = -1;
      if (*(v57 + 39) < 0)
      {
        operator delete(v57[2]);
      }

      operator delete(v57);
      v57 = v60;
    }

    while (v60);
  }

  v24 = v81.n128_u64[0];
  v81.n128_u64[0] = 0;
  if (v24)
  {
LABEL_192:
    operator delete(v24);
  }

LABEL_193:
  if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v83.__r_.__value_.__l.__data_);
  }
}

void sub_E53118(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  sub_23D9C(v61 - 160);
  sub_2430CC(&a27);
  sub_23D9C(&a30);
  sub_23D9C(&a39);
  sub_2430CC(&a47);
  sub_23D9C(&a50);
  sub_5C010(&a55);
  if (*(v61 - 217) < 0)
  {
    operator delete(*(v60 + 144));
  }

  _Unwind_Resume(a1);
}

void sub_E534C4(void *a1@<X0>, void *a2@<X1>, unsigned int *a3@<X2>, uint64_t a4@<X8>)
{
  sub_5F328(v74);
  v79[1].n128_u8[7] = 8;
  strcpy(v79, "model_id");
  v8 = sub_353010(a1, v79);
  v73 = v8;
  if (v79[1].n128_i8[7] < 0)
  {
    operator delete(v79[0].n128_u64[0]);
    v8 = v73;
  }

  std::to_string(&v72, v8);
  if (!sub_5FC3C(a2, &v72))
  {
    sub_E5660C("Got an EV request with an unknown charging_arguments.model_id (", ").", v69);
    __p.n128_u64[0] = 2;
    __p.n128_u64[1] = &off_2669FE0;
    v79[0].n128_u8[0] = 12;
    if (SBYTE7(v70) < 0)
    {
      sub_325C(&v79[0].n128_u8[8], v69[0], v69[1]);
    }

    else
    {
      *(v79 + 8) = *v69;
      v79[1].n128_u64[1] = v70;
    }

    sub_435A00(v76, v79, 1uLL);
    v18 = sub_4349A4(a4, &__p, v76);
    v19 = *v76;
    if (!*v76)
    {
      goto LABEL_39;
    }

    v20 = *&v76[8];
    v21 = *v76;
    if (*&v76[8] == *v76)
    {
      goto LABEL_38;
    }

    do
    {
      if (*(v20 - 1) < 0)
      {
        operator delete(*(v20 - 24));
      }

      v20 -= 32;
    }

    while (v20 != v19);
    goto LABEL_37;
  }

  v79[1].n128_u8[7] = 18;
  strcpy(v79, "vehicle_parameters");
  v9 = sub_5F5AC(a1, v79);
  if (v79[1].n128_i8[7] < 0)
  {
    operator delete(v79[0].n128_u64[0]);
  }

  v10 = sub_5F5AC(a2, &v72);
  v79[1].n128_u8[7] = 8;
  strcpy(v79, "disabled");
  LOBYTE(v69[0]) = 0;
  v11 = sub_5FBE4(v10, v79, v69);
  if (v79[1].n128_i8[7] < 0)
  {
    v12 = v11;
    operator delete(v79[0].n128_u64[0]);
    if (v12)
    {
      goto LABEL_8;
    }
  }

  else if (v11)
  {
LABEL_8:
    sub_E5660C("Got an EV request with a disabled charging_arguments.model_id (", ").", v69);
    __p.n128_u64[0] = 2;
    __p.n128_u64[1] = &off_2669FE0;
    v79[0].n128_u8[0] = 0;
    if (SBYTE7(v70) < 0)
    {
      sub_325C(&v79[0].n128_u8[8], v69[0], v69[1]);
    }

    else
    {
      *(v79 + 8) = *v69;
      v79[1].n128_u64[1] = v70;
    }

    sub_435A00(v76, v79, 1uLL);
    v18 = sub_4349A4(a4, &__p, v76);
    v19 = *v76;
    if (!*v76)
    {
      goto LABEL_39;
    }

    v22 = *&v76[8];
    v21 = *v76;
    if (*&v76[8] == *v76)
    {
LABEL_38:
      *&v76[8] = v19;
      operator delete(v21);
LABEL_39:
      if (v79[1].n128_i8[15] < 0)
      {
        operator delete(v79[0].n128_u64[1]);
        if ((SBYTE7(v70) & 0x80000000) == 0)
        {
          goto LABEL_129;
        }
      }

      else if ((SBYTE7(v70) & 0x80000000) == 0)
      {
        goto LABEL_129;
      }

      v23 = v69[0];
      goto LABEL_128;
    }

    do
    {
      if (*(v22 - 1) < 0)
      {
        operator delete(*(v22 - 24));
      }

      v22 -= 32;
    }

    while (v22 != v19);
LABEL_37:
    v21 = *v76;
    goto LABEL_38;
  }

  *v69 = 0u;
  v70 = 0u;
  v71 = 1065353216;
  v79[1].n128_u8[7] = 18;
  strcpy(v79, "vehicle_parameters");
  v13 = sub_5FAAC(v10, v79, v74);
  if (v79[1].n128_i8[7] < 0)
  {
    operator delete(v79[0].n128_u64[0]);
  }

  v14 = sub_588E0(v13);
  for (i = sub_5FC5C(); v14 != i; v14 = *v14)
  {
    sub_23914(v69, v14 + 2, (v14 + 2));
  }

  if (v9[3] <= 0x64)
  {
    __p = 0uLL;
    v68 = 0;
    v16 = sub_588E0(v9);
    v62 = a4;
    v61 = v9;
    for (j = sub_5FC5C(); v16 != j; v16 = *v16)
    {
      if (*(v16 + 39) < 0)
      {
        sub_325C(v76, *(v16 + 16), *(v16 + 24));
      }

      else
      {
        *v76 = *(v16 + 16);
        *&v76[16] = *(v16 + 32);
      }

      LOBYTE(v77) = 0;
      v78 = -1;
      v25 = *(v16 + 48);
      if (v25 != -1)
      {
        v65[0] = &v77;
        (off_2674378[v25])(v65, v16 + 40);
        v78 = v25;
      }

      sub_E54C18(v76, &v72, v79);
      if (v78 != -1)
      {
        (off_2674330[v78])(v65, &v77);
      }

      v78 = -1;
      if ((v76[23] & 0x80000000) != 0)
      {
        operator delete(*v76);
      }

      sub_434D48(&__p, __p.n128_i64[1], v79[1].n128_i64[0], v79[1].n128_i64[1], (v79[1].n128_u64[1] - v79[1].n128_u64[0]) >> 5);
      v26 = v79[1].n128_u64[0];
      if (v79[1].n128_u64[0])
      {
        v27 = v79[1].n128_u64[1];
        v24 = v79[1].n128_u64[0];
        if (v79[1].n128_u64[1] != v79[1].n128_u64[0])
        {
          do
          {
            if (*(v27 - 1) < 0)
            {
              operator delete(*(v27 - 24));
            }

            v27 -= 32;
          }

          while (v27 != v26);
          v24 = v79[1].n128_u64[0];
        }

        v79[1].n128_u64[1] = v26;
        operator delete(v24);
      }
    }

    if (__p.n128_u64[0] == __p.n128_u64[1])
    {
      memset(v79, 0, sizeof(v79));
      v80 = 1065353216;
      for (k = (v61 + 16); ; sub_23914(v79, k + 2, (k + 2)))
      {
        k = *k;
        if (!k)
        {
          break;
        }
      }

      if (v79[1].n128_u64[1] == *(&v70 + 1))
      {
        v33 = &v79[1];
        do
        {
          v33 = v33->n128_u64[0];
          if (!v33)
          {
            v60 = sub_5F5AC(a2, &v72);
            sub_9F5D8(v60, v61, a3, a3 + 1);
          }

          v34 = sub_138B0(v69, &v33[1]);
          if (!v34)
          {
            break;
          }

          v35 = v33[2].n128_i8[7];
          if (v35 >= 0)
          {
            v36 = v33[2].n128_u8[7];
          }

          else
          {
            v36 = v33[1].n128_u64[1];
          }

          v37 = *(v34 + 39);
          v38 = v37;
          if (v37 < 0)
          {
            v37 = v34[3];
          }

          if (v36 != v37)
          {
            break;
          }

          v39 = v35 >= 0 ? &v33[1] : v33[1].n128_u64[0];
          v42 = v34[2];
          v40 = v34 + 2;
          v41 = v42;
          v43 = v38 >= 0 ? v40 : v41;
        }

        while (!memcmp(v39, v43, v36));
      }

      sub_E568A8("Got an EV request where the provided charging model vehicle parameters do not match the approved vehicle parameters for the model with id ", &v72, v65);
      *&v64 = 2;
      *(&v64 + 1) = &off_2669FE0;
      v76[0] = 12;
      if (SHIBYTE(v66) < 0)
      {
        sub_325C(&v76[8], v65[0], v65[1]);
      }

      else
      {
        *&v76[8] = *v65;
        v77 = v66;
      }

      sub_435A00(&v63, v76, 1uLL);
      v18 = sub_4349A4(v62, &v64, &v63);
      v44 = v63.n128_u64[0];
      if (v63.n128_u64[0])
      {
        v45 = v63.n128_u64[1];
        v46 = v63.n128_u64[0];
        if (v63.n128_u64[1] != v63.n128_u64[0])
        {
          do
          {
            if (*(v45 - 1) < 0)
            {
              operator delete(*(v45 - 24));
            }

            v45 -= 32;
          }

          while (v45 != v44);
          v46 = v63.n128_u64[0];
        }

        v63.n128_u64[1] = v44;
        operator delete(v46);
      }

      if (SHIBYTE(v77) < 0)
      {
        operator delete(*&v76[8]);
      }

      if (SHIBYTE(v66) < 0)
      {
        operator delete(v65[0]);
      }

      v47 = v79[1].n128_u64[0];
      if (v79[1].n128_u64[0])
      {
        do
        {
          v51 = *v47;
          if (*(v47 + 39) < 0)
          {
            v52 = v47;
            operator delete(v47[2]);
            v47 = v52;
          }

          operator delete(v47);
          v47 = v51;
        }

        while (v51);
      }

      v48 = v79[0].n128_u64[0];
      v79[0].n128_u64[0] = 0;
      if (v48)
      {
        operator delete(v48);
      }
    }

    else
    {
      v79[0].n128_u64[0] = 2;
      v79[0].n128_u64[1] = &off_2669FE0;
      sub_434954(a4, v79, &__p);
    }

    v49 = __p.n128_u64[0];
    if (__p.n128_u64[0])
    {
      v50 = __p.n128_u64[1];
      v31 = __p.n128_u64[0];
      if (__p.n128_u64[1] != __p.n128_u64[0])
      {
        do
        {
          if (*(v50 - 1) < 0)
          {
            operator delete(*(v50 - 24));
          }

          v50 -= 32;
        }

        while (v50 != v49);
        v31 = __p.n128_u64[0];
      }

      __p.n128_u64[1] = v49;
      goto LABEL_125;
    }
  }

  else
  {
    sub_E55E3C("Got an EV request with consumption model id ", &v72, " where the number of vehicle parameters exceeds limitations", v76);
    v65[0] = &dword_0 + 2;
    v65[1] = &off_2669FE0;
    v79[0].n128_u8[0] = 12;
    if ((v76[23] & 0x80000000) != 0)
    {
      sub_325C(&v79[0].n128_u8[8], *v76, *&v76[8]);
    }

    else
    {
      *(v79 + 8) = *v76;
      v79[1].n128_u64[1] = *&v76[16];
    }

    sub_435A00(&__p, v79, 1uLL);
    v18 = sub_4349A4(a4, v65, &__p);
    v28 = __p.n128_u64[0];
    if (__p.n128_u64[0])
    {
      v29 = __p.n128_u64[1];
      v30 = __p.n128_u64[0];
      if (__p.n128_u64[1] != __p.n128_u64[0])
      {
        do
        {
          if (*(v29 - 1) < 0)
          {
            operator delete(*(v29 - 24));
          }

          v29 -= 32;
        }

        while (v29 != v28);
        v30 = __p.n128_u64[0];
      }

      __p.n128_u64[1] = v28;
      operator delete(v30);
    }

    if (v79[1].n128_i8[15] < 0)
    {
      operator delete(v79[0].n128_u64[1]);
    }

    if ((v76[23] & 0x80000000) != 0)
    {
      v31 = *v76;
LABEL_125:
      operator delete(v31);
    }
  }

  v53 = v70;
  if (v70)
  {
    do
    {
      v55 = *v53;
      if (*(v53 + 39) < 0)
      {
        v56 = v53;
        operator delete(v53[2]);
        v53 = v56;
      }

      operator delete(v53);
      v53 = v55;
    }

    while (v55);
  }

  v23 = v69[0];
  v69[0] = 0;
  if (v23)
  {
LABEL_128:
    operator delete(v23);
  }

LABEL_129:
  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v72.__r_.__value_.__l.__data_);
    v54 = v75;
    if (!v75)
    {
      goto LABEL_142;
    }
  }

  else
  {
    v54 = v75;
    if (!v75)
    {
      goto LABEL_142;
    }
  }

  do
  {
    v57 = *v54;
    v58 = *(v54 + 12);
    if (v58 != -1)
    {
      (off_2674330[v58])(v79, v54 + 5, v18);
    }

    *(v54 + 12) = -1;
    if (*(v54 + 39) < 0)
    {
      operator delete(v54[2]);
    }

    operator delete(v54);
    v54 = v57;
  }

  while (v57);
LABEL_142:
  v59 = v74[0];
  v74[0] = 0;
  if (v59)
  {
    operator delete(v59);
  }
}

void sub_E54044(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, char a43)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  sub_23D9C(v44 - 160);
  sub_2430CC(&a25);
  sub_23D9C(&a28);
  if (a41 < 0)
  {
    operator delete(*v43);
  }

  sub_5C010(&a43);
  _Unwind_Resume(a1);
}

uint64_t sub_E54290@<X0>(uint64_t **a1@<X0>, uint64_t **a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v12 = 12;
  sub_E54438("Got an EV request with a vehicle parameter array '", a1, "' that is empty for model id ", a2, __p);
  v6 = a3[1];
  if (v6 >= a3[2])
  {
    a3[1] = sub_E5C160(a3, &v12, __p);
    if (SHIBYTE(v11) < 0)
    {
LABEL_8:
      operator delete(__p[0]);
    }
  }

  else
  {
    *v6 = 12;
    v7 = (v6 + 8);
    if (SHIBYTE(v11) < 0)
    {
      sub_325C(v7, __p[0], __p[1]);
    }

    else
    {
      v8 = *__p;
      *(v6 + 24) = v11;
      *v7 = v8;
    }

    a3[1] = v6 + 32;
    a3[1] = v6 + 32;
    if (SHIBYTE(v11) < 0)
    {
      goto LABEL_8;
    }
  }

  __p[0] = &dword_0 + 2;
  __p[1] = &off_2669FE0;
  return sub_434954(a4, __p, a3);
}

void sub_E54380(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  *(v14 + 8) = v15;
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_E543A8(uint64_t *a1, _BYTE *a2, __int128 *a3)
{
  v4 = a1[1];
  if (v4 >= a1[2])
  {
    v7 = sub_E5C160(a1, a2, a3);
    a1[1] = v7;
    return v7 - 32;
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 8);
    if (*(a3 + 23) < 0)
    {
      sub_325C(v5, *a3, *(a3 + 1));
    }

    else
    {
      v6 = *a3;
      *(v4 + 24) = *(a3 + 2);
      *v5 = v6;
    }

    a1[1] = v4 + 32;
    a1[1] = v4 + 32;
    return v4;
  }
}

uint64_t sub_E54438@<X0>(const char *a1@<X0>, uint64_t **a2@<X1>, const char *a3@<X2>, uint64_t **a4@<X3>, _BYTE *a5@<X8>)
{
  sub_D7B0(v26);
  v10 = strlen(a1);
  v11 = sub_4A5C(&v27, a1, v10);
  v12 = *(a2 + 23);
  if (v12 >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = *a2;
  }

  if (v12 >= 0)
  {
    v14 = *(a2 + 23);
  }

  else
  {
    v14 = a2[1];
  }

  v15 = sub_4A5C(v11, v13, v14);
  v16 = strlen(a3);
  v17 = sub_4A5C(v15, a3, v16);
  v18 = *(a4 + 23);
  if (v18 >= 0)
  {
    v19 = a4;
  }

  else
  {
    v19 = *a4;
  }

  if (v18 >= 0)
  {
    v20 = *(a4 + 23);
  }

  else
  {
    v20 = a4[1];
  }

  sub_4A5C(v17, v19, v20);
  if ((v37 & 0x10) != 0)
  {
    v22 = v36;
    if (v36 < v33)
    {
      v36 = v33;
      v22 = v33;
    }

    v23 = v32;
    v21 = v22 - v32;
    if (v22 - v32 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_28;
    }
  }

  else
  {
    if ((v37 & 8) == 0)
    {
      v21 = 0;
      a5[23] = 0;
      goto LABEL_24;
    }

    v23 = v30;
    v21 = v31 - v30;
    if ((v31 - v30) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_28:
      sub_3244();
    }
  }

  if (v21 >= 0x17)
  {
    operator new();
  }

  a5[23] = v21;
  if (v21)
  {
    memmove(a5, v23, v21);
  }

LABEL_24:
  a5[v21] = 0;
  v27 = v24;
  if (v35 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v29);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E546FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E54710@<X0>(uint64_t **a1@<X0>, uint64_t **a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v12 = 12;
  sub_E54828("Got an EV request with a vehicle parameter array '", a1, "' that exceeds the dimension limits for model id ", a2, __p);
  v6 = a3[1];
  if (v6 >= a3[2])
  {
    a3[1] = sub_E5C160(a3, &v12, __p);
    if (SHIBYTE(v11) < 0)
    {
LABEL_8:
      operator delete(__p[0]);
    }
  }

  else
  {
    *v6 = 12;
    v7 = (v6 + 8);
    if (SHIBYTE(v11) < 0)
    {
      sub_325C(v7, __p[0], __p[1]);
    }

    else
    {
      v8 = *__p;
      *(v6 + 24) = v11;
      *v7 = v8;
    }

    a3[1] = v6 + 32;
    a3[1] = v6 + 32;
    if (SHIBYTE(v11) < 0)
    {
      goto LABEL_8;
    }
  }

  __p[0] = &dword_0 + 2;
  __p[1] = &off_2669FE0;
  return sub_434954(a4, __p, a3);
}

void sub_E54800(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  *(v14 + 8) = v15;
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_E54828@<X0>(const char *a1@<X0>, uint64_t **a2@<X1>, const char *a3@<X2>, uint64_t **a4@<X3>, _BYTE *a5@<X8>)
{
  sub_D7B0(v26);
  v10 = strlen(a1);
  v11 = sub_4A5C(&v27, a1, v10);
  v12 = *(a2 + 23);
  if (v12 >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = *a2;
  }

  if (v12 >= 0)
  {
    v14 = *(a2 + 23);
  }

  else
  {
    v14 = a2[1];
  }

  v15 = sub_4A5C(v11, v13, v14);
  v16 = strlen(a3);
  v17 = sub_4A5C(v15, a3, v16);
  v18 = *(a4 + 23);
  if (v18 >= 0)
  {
    v19 = a4;
  }

  else
  {
    v19 = *a4;
  }

  if (v18 >= 0)
  {
    v20 = *(a4 + 23);
  }

  else
  {
    v20 = a4[1];
  }

  sub_4A5C(v17, v19, v20);
  if ((v37 & 0x10) != 0)
  {
    v22 = v36;
    if (v36 < v33)
    {
      v36 = v33;
      v22 = v33;
    }

    v23 = v32;
    v21 = v22 - v32;
    if (v22 - v32 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_28;
    }
  }

  else
  {
    if ((v37 & 8) == 0)
    {
      v21 = 0;
      a5[23] = 0;
      goto LABEL_24;
    }

    v23 = v30;
    v21 = v31 - v30;
    if ((v31 - v30) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_28:
      sub_3244();
    }
  }

  if (v21 >= 0x17)
  {
    operator new();
  }

  a5[23] = v21;
  if (v21)
  {
    memmove(a5, v23, v21);
  }

LABEL_24:
  a5[v21] = 0;
  v27 = v24;
  if (v35 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v29);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E54AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E54B00@<X0>(uint64_t **a1@<X0>, uint64_t **a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v12 = 12;
  sub_E54828("Got an EV request with a vehicle parameter array '", a1, "' including an unexpected value type for model id", a2, __p);
  v6 = a3[1];
  if (v6 >= a3[2])
  {
    a3[1] = sub_E5C160(a3, &v12, __p);
    if (SHIBYTE(v11) < 0)
    {
LABEL_8:
      operator delete(__p[0]);
    }
  }

  else
  {
    *v6 = 12;
    v7 = (v6 + 8);
    if (SHIBYTE(v11) < 0)
    {
      sub_325C(v7, __p[0], __p[1]);
    }

    else
    {
      v8 = *__p;
      *(v6 + 24) = v11;
      *v7 = v8;
    }

    a3[1] = v6 + 32;
    a3[1] = v6 + 32;
    if (SHIBYTE(v11) < 0)
    {
      goto LABEL_8;
    }
  }

  __p[0] = &dword_0 + 2;
  __p[1] = &off_2669FE0;
  return sub_434954(a4, __p, a3);
}

void sub_E54BF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  *(v14 + 8) = v15;
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_E54C18(uint64_t a1@<X0>, uint64_t **a2@<X1>, __n128 *a3@<X8>)
{
  __p[0] = 0;
  __p[1] = &off_2669FE0;
  sub_434934(&v26, __p);
  v6 = *(a1 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a1 + 8);
  }

  if (v6 < 0x65)
  {
    goto LABEL_9;
  }

  LOBYTE(v23) = 12;
  sub_E55034("Got an EV request with a vehicle parameter name that exceeds the max character length for model id ", a2, __p);
  v7 = v28;
  if (v28 >= v29)
  {
    v28 = sub_E5C160(&v27, &v23, __p);
    if (SHIBYTE(v25) < 0)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  *v28 = v23;
  v8 = v7 + 8;
  if (SHIBYTE(v25) < 0)
  {
    sub_325C(v8, __p[0], __p[1]);
    v28 = v7 + 32;
    if (SHIBYTE(v25) < 0)
    {
      goto LABEL_14;
    }

LABEL_9:
    v10 = *(a1 + 32);
    if ((v10 - 2) > 2)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v9 = *__p;
  *(v7 + 3) = v25;
  *v8 = v9;
  v28 = v7 + 32;
  if ((SHIBYTE(v25) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

LABEL_14:
  operator delete(__p[0]);
  v10 = *(a1 + 32);
  if ((v10 - 2) > 2)
  {
LABEL_15:
    if (v10 == 6)
    {
      v11 = *(a1 + 24);
      v12 = *v11;
      v13 = v11[1];
      if (v12 != v13)
      {
        if ((v13 - v12) >= 0x321)
        {
LABEL_18:
          sub_E54710(a1, a2, &v27, a3);
          goto LABEL_36;
        }

        while (1)
        {
          v17 = *(v12 + 2);
          if ((v17 - 2) >= 3)
          {
            break;
          }

LABEL_23:
          v12 += 16;
          if (v12 == v13)
          {
            goto LABEL_12;
          }
        }

        if (v17 != 6)
        {
          goto LABEL_35;
        }

        v18 = **v12;
        v19 = *(*v12 + 8);
        if (v18 != v19)
        {
          if ((v19 - v18) >= 0x321)
          {
            goto LABEL_18;
          }

          while ((*(v18 + 8) - 2) < 3)
          {
            v18 += 16;
            if (v18 == v19)
            {
              goto LABEL_23;
            }
          }

LABEL_35:
          sub_E54B00(a1, a2, &v27, a3);
          goto LABEL_36;
        }
      }

      sub_E54290(a1, a2, &v27, a3);
      goto LABEL_36;
    }

    LOBYTE(v23) = 12;
    sub_E552C4("Got an EV request with a vehicle parameter '", a1, "' with an invalid value type for model id ", a2, __p);
    v14 = v28;
    if (v28 >= v29)
    {
      v28 = sub_E5C160(&v27, &v23, __p);
      if (SHIBYTE(v25) < 0)
      {
        goto LABEL_32;
      }
    }

    else
    {
      *v28 = 12;
      v15 = v14 + 8;
      if (SHIBYTE(v25) < 0)
      {
        sub_325C(v15, __p[0], __p[1]);
        v28 = v14 + 32;
        if ((SHIBYTE(v25) & 0x80000000) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }

      v16 = *__p;
      *(v14 + 3) = v25;
      *v15 = v16;
      v28 = v14 + 32;
      if (SHIBYTE(v25) < 0)
      {
LABEL_32:
        operator delete(__p[0]);
      }
    }

LABEL_33:
    __p[0] = &dword_0 + 2;
    __p[1] = &off_2669FE0;
    sub_434954(a3, __p, &v27);
    goto LABEL_36;
  }

LABEL_10:
  if (v27 == v28)
  {
LABEL_12:
    __p[0] = 0;
    __p[1] = &off_2669FE0;
    sub_434934(a3, __p);
  }

  else
  {
    *&v23 = 2;
    *(&v23 + 1) = &off_2669FE0;
    sub_434954(a3, &v23, &v27);
  }

LABEL_36:
  v20 = v27;
  if (v27)
  {
    v21 = v28;
    v22 = v27;
    if (v28 != v27)
    {
      do
      {
        if (*(v21 - 1) < 0)
        {
          operator delete(*(v21 - 3));
        }

        v21 -= 4;
      }

      while (v21 != v20);
      v22 = v27;
    }

    v28 = v20;
    operator delete(v22);
  }
}

uint64_t sub_E55034@<X0>(const char *a1@<X0>, uint64_t **a2@<X1>, _BYTE *a3@<X8>)
{
  sub_D7B0(v16);
  v6 = strlen(a1);
  v7 = sub_4A5C(&v17, a1, v6);
  v8 = *(a2 + 23);
  if (v8 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v8 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = a2[1];
  }

  sub_4A5C(v7, v9, v10);
  if ((v27 & 0x10) != 0)
  {
    v12 = v26;
    if (v26 < v23)
    {
      v26 = v23;
      v12 = v23;
    }

    v13 = v22;
    v11 = v12 - v22;
    if (v12 - v22 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if ((v27 & 8) == 0)
    {
      v11 = 0;
      a3[23] = 0;
      goto LABEL_18;
    }

    v13 = v20;
    v11 = v21 - v20;
    if ((v21 - v20) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_22:
      sub_3244();
    }
  }

  if (v11 >= 0x17)
  {
    operator new();
  }

  a3[23] = v11;
  if (v11)
  {
    memmove(a3, v13, v11);
  }

LABEL_18:
  a3[v11] = 0;
  v17 = v14;
  if (v25 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v19);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E552B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E552C4@<X0>(const char *a1@<X0>, uint64_t **a2@<X1>, const char *a3@<X2>, uint64_t **a4@<X3>, _BYTE *a5@<X8>)
{
  sub_D7B0(v26);
  v10 = strlen(a1);
  v11 = sub_4A5C(&v27, a1, v10);
  v12 = *(a2 + 23);
  if (v12 >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = *a2;
  }

  if (v12 >= 0)
  {
    v14 = *(a2 + 23);
  }

  else
  {
    v14 = a2[1];
  }

  v15 = sub_4A5C(v11, v13, v14);
  v16 = strlen(a3);
  v17 = sub_4A5C(v15, a3, v16);
  v18 = *(a4 + 23);
  if (v18 >= 0)
  {
    v19 = a4;
  }

  else
  {
    v19 = *a4;
  }

  if (v18 >= 0)
  {
    v20 = *(a4 + 23);
  }

  else
  {
    v20 = a4[1];
  }

  sub_4A5C(v17, v19, v20);
  if ((v37 & 0x10) != 0)
  {
    v22 = v36;
    if (v36 < v33)
    {
      v36 = v33;
      v22 = v33;
    }

    v23 = v32;
    v21 = v22 - v32;
    if (v22 - v32 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_28;
    }
  }

  else
  {
    if ((v37 & 8) == 0)
    {
      v21 = 0;
      a5[23] = 0;
      goto LABEL_24;
    }

    v23 = v30;
    v21 = v31 - v30;
    if ((v31 - v30) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_28:
      sub_3244();
    }
  }

  if (v21 >= 0x17)
  {
    operator new();
  }

  a5[23] = v21;
  if (v21)
  {
    memmove(a5, v23, v21);
  }

LABEL_24:
  a5[v21] = 0;
  v27 = v24;
  if (v35 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v29);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E55588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E5559C@<X0>(const char *a1@<X0>, const char *a3@<X2>, _BYTE *a4@<X8>)
{
  sub_D7B0(v15);
  v7 = strlen(a1);
  v8 = sub_4A5C(&v16, a1, v7);
  std::ostream::operator<<();
  v9 = strlen(a3);
  sub_4A5C(v8, a3, v9);
  if ((v26 & 0x10) != 0)
  {
    v11 = v25;
    if (v25 < v22)
    {
      v25 = v22;
      v11 = v22;
    }

    v12 = v21;
    v10 = v11 - v21;
    if (v11 - v21 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v26 & 8) == 0)
    {
      v10 = 0;
      a4[23] = 0;
      goto LABEL_12;
    }

    v12 = v19;
    v10 = v20 - v19;
    if ((v20 - v19) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
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

LABEL_12:
  a4[v10] = 0;
  v16 = v13;
  if (v24 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v18);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E55824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E55838@<X0>(const char *a1@<X0>, uint64_t **a2@<X1>, const char *a3@<X2>, _BYTE *a4@<X8>)
{
  sub_D7B0(v20);
  v8 = strlen(a1);
  v9 = sub_4A5C(&v21, a1, v8);
  v10 = *(a2 + 23);
  if (v10 >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  if (v10 >= 0)
  {
    v12 = *(a2 + 23);
  }

  else
  {
    v12 = a2[1];
  }

  v13 = sub_4A5C(v9, v11, v12);
  v14 = strlen(a3);
  sub_4A5C(v13, a3, v14);
  if ((v31 & 0x10) != 0)
  {
    v16 = v30;
    if (v30 < v27)
    {
      v30 = v27;
      v16 = v27;
    }

    v17 = v26;
    v15 = v16 - v26;
    if (v16 - v26 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if ((v31 & 8) == 0)
    {
      v15 = 0;
      a4[23] = 0;
      goto LABEL_18;
    }

    v17 = v24;
    v15 = v25 - v24;
    if ((v25 - v24) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_22:
      sub_3244();
    }
  }

  if (v15 >= 0x17)
  {
    operator new();
  }

  a4[23] = v15;
  if (v15)
  {
    memmove(a4, v17, v15);
  }

LABEL_18:
  a4[v15] = 0;
  v21 = v18;
  if (v29 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v23);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E55AD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_E55AE8(uint64_t a1, void *a2)
{
  if (*(a1 + 24) != a2[3])
  {
    return 0;
  }

  v3 = (a1 + 16);
  while (1)
  {
    v3 = *v3;
    result = (v3 == 0);
    if (!v3)
    {
      break;
    }

    result = sub_138B0(a2, v3 + 2);
    if (!result)
    {
      break;
    }

    v5 = *(v3 + 39);
    if (v5 >= 0)
    {
      v6 = *(v3 + 39);
    }

    else
    {
      v6 = v3[3];
    }

    v7 = *(result + 39);
    v8 = v7;
    if (v7 < 0)
    {
      v7 = result[3];
    }

    if (v6 == v7)
    {
      v9 = v5 >= 0 ? v3 + 2 : v3[2];
      v12 = result[2];
      v10 = result + 2;
      v11 = v12;
      v13 = v8 >= 0 ? v10 : v11;
      if (!memcmp(v9, v13, v6))
      {
        continue;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_E55BAC@<X0>(const char *a1@<X0>, uint64_t **a2@<X1>, _BYTE *a3@<X8>)
{
  sub_D7B0(v16);
  v6 = strlen(a1);
  v7 = sub_4A5C(&v17, a1, v6);
  v8 = *(a2 + 23);
  if (v8 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v8 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = a2[1];
  }

  sub_4A5C(v7, v9, v10);
  if ((v27 & 0x10) != 0)
  {
    v12 = v26;
    if (v26 < v23)
    {
      v26 = v23;
      v12 = v23;
    }

    v13 = v22;
    v11 = v12 - v22;
    if (v12 - v22 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if ((v27 & 8) == 0)
    {
      v11 = 0;
      a3[23] = 0;
      goto LABEL_18;
    }

    v13 = v20;
    v11 = v21 - v20;
    if ((v21 - v20) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_22:
      sub_3244();
    }
  }

  if (v11 >= 0x17)
  {
    operator new();
  }

  a3[23] = v11;
  if (v11)
  {
    memmove(a3, v13, v11);
  }

LABEL_18:
  a3[v11] = 0;
  v17 = v14;
  if (v25 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v19);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E55E28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E55E3C@<X0>(const char *a1@<X0>, uint64_t **a2@<X1>, const char *a3@<X2>, _BYTE *a4@<X8>)
{
  sub_D7B0(v20);
  v8 = strlen(a1);
  v9 = sub_4A5C(&v21, a1, v8);
  v10 = *(a2 + 23);
  if (v10 >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  if (v10 >= 0)
  {
    v12 = *(a2 + 23);
  }

  else
  {
    v12 = a2[1];
  }

  v13 = sub_4A5C(v9, v11, v12);
  v14 = strlen(a3);
  sub_4A5C(v13, a3, v14);
  if ((v31 & 0x10) != 0)
  {
    v16 = v30;
    if (v30 < v27)
    {
      v30 = v27;
      v16 = v27;
    }

    v17 = v26;
    v15 = v16 - v26;
    if (v16 - v26 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if ((v31 & 8) == 0)
    {
      v15 = 0;
      a4[23] = 0;
      goto LABEL_18;
    }

    v17 = v24;
    v15 = v25 - v24;
    if ((v25 - v24) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_22:
      sub_3244();
    }
  }

  if (v15 >= 0x17)
  {
    operator new();
  }

  a4[23] = v15;
  if (v15)
  {
    memmove(a4, v17, v15);
  }

LABEL_18:
  a4[v15] = 0;
  v21 = v18;
  if (v29 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v23);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E560D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E560EC@<X0>(const char *a1@<X0>, uint64_t **a2@<X1>, _BYTE *a3@<X8>)
{
  sub_D7B0(v16);
  v6 = strlen(a1);
  v7 = sub_4A5C(&v17, a1, v6);
  v8 = *(a2 + 23);
  if (v8 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v8 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = a2[1];
  }

  sub_4A5C(v7, v9, v10);
  if ((v27 & 0x10) != 0)
  {
    v12 = v26;
    if (v26 < v23)
    {
      v26 = v23;
      v12 = v23;
    }

    v13 = v22;
    v11 = v12 - v22;
    if (v12 - v22 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if ((v27 & 8) == 0)
    {
      v11 = 0;
      a3[23] = 0;
      goto LABEL_18;
    }

    v13 = v20;
    v11 = v21 - v20;
    if ((v21 - v20) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_22:
      sub_3244();
    }
  }

  if (v11 >= 0x17)
  {
    operator new();
  }

  a3[23] = v11;
  if (v11)
  {
    memmove(a3, v13, v11);
  }

LABEL_18:
  a3[v11] = 0;
  v17 = v14;
  if (v25 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v19);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E56368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E5637C@<X0>(const char *a1@<X0>, uint64_t **a2@<X1>, _BYTE *a3@<X8>)
{
  sub_D7B0(v16);
  v6 = strlen(a1);
  v7 = sub_4A5C(&v17, a1, v6);
  v8 = *(a2 + 23);
  if (v8 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v8 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = a2[1];
  }

  sub_4A5C(v7, v9, v10);
  if ((v27 & 0x10) != 0)
  {
    v12 = v26;
    if (v26 < v23)
    {
      v26 = v23;
      v12 = v23;
    }

    v13 = v22;
    v11 = v12 - v22;
    if (v12 - v22 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if ((v27 & 8) == 0)
    {
      v11 = 0;
      a3[23] = 0;
      goto LABEL_18;
    }

    v13 = v20;
    v11 = v21 - v20;
    if ((v21 - v20) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_22:
      sub_3244();
    }
  }

  if (v11 >= 0x17)
  {
    operator new();
  }

  a3[23] = v11;
  if (v11)
  {
    memmove(a3, v13, v11);
  }

LABEL_18:
  a3[v11] = 0;
  v17 = v14;
  if (v25 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v19);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E565F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E5660C@<X0>(const char *a1@<X0>, const char *a3@<X2>, _BYTE *a4@<X8>)
{
  sub_D7B0(v15);
  v7 = strlen(a1);
  v8 = sub_4A5C(&v16, a1, v7);
  std::ostream::operator<<();
  v9 = strlen(a3);
  sub_4A5C(v8, a3, v9);
  if ((v26 & 0x10) != 0)
  {
    v11 = v25;
    if (v25 < v22)
    {
      v25 = v22;
      v11 = v22;
    }

    v12 = v21;
    v10 = v11 - v21;
    if (v11 - v21 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v26 & 8) == 0)
    {
      v10 = 0;
      a4[23] = 0;
      goto LABEL_12;
    }

    v12 = v19;
    v10 = v20 - v19;
    if ((v20 - v19) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
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

LABEL_12:
  a4[v10] = 0;
  v16 = v13;
  if (v24 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v18);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E56894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E568A8@<X0>(const char *a1@<X0>, uint64_t **a2@<X1>, _BYTE *a3@<X8>)
{
  sub_D7B0(v16);
  v6 = strlen(a1);
  v7 = sub_4A5C(&v17, a1, v6);
  v8 = *(a2 + 23);
  if (v8 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v8 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = a2[1];
  }

  sub_4A5C(v7, v9, v10);
  if ((v27 & 0x10) != 0)
  {
    v12 = v26;
    if (v26 < v23)
    {
      v26 = v23;
      v12 = v23;
    }

    v13 = v22;
    v11 = v12 - v22;
    if (v12 - v22 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if ((v27 & 8) == 0)
    {
      v11 = 0;
      a3[23] = 0;
      goto LABEL_18;
    }

    v13 = v20;
    v11 = v21 - v20;
    if ((v21 - v20) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_22:
      sub_3244();
    }
  }

  if (v11 >= 0x17)
  {
    operator new();
  }

  a3[23] = v11;
  if (v11)
  {
    memmove(a3, v13, v11);
  }

LABEL_18:
  a3[v11] = 0;
  v17 = v14;
  if (v25 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v19);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E56B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E56B38@<X0>(const char *a1@<X0>, uint64_t **a2@<X1>, const char *a3@<X2>, _BYTE *a4@<X8>)
{
  sub_D7B0(v20);
  v8 = strlen(a1);
  v9 = sub_4A5C(&v21, a1, v8);
  v10 = *(a2 + 23);
  if (v10 >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  if (v10 >= 0)
  {
    v12 = *(a2 + 23);
  }

  else
  {
    v12 = a2[1];
  }

  v13 = sub_4A5C(v9, v11, v12);
  v14 = strlen(a3);
  sub_4A5C(v13, a3, v14);
  if ((v31 & 0x10) != 0)
  {
    v16 = v30;
    if (v30 < v27)
    {
      v30 = v27;
      v16 = v27;
    }

    v17 = v26;
    v15 = v16 - v26;
    if (v16 - v26 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if ((v31 & 8) == 0)
    {
      v15 = 0;
      a4[23] = 0;
      goto LABEL_18;
    }

    v17 = v24;
    v15 = v25 - v24;
    if ((v25 - v24) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_22:
      sub_3244();
    }
  }

  if (v15 >= 0x17)
  {
    operator new();
  }

  a4[23] = v15;
  if (v15)
  {
    memmove(a4, v17, v15);
  }

LABEL_18:
  a4[v15] = 0;
  v21 = v18;
  if (v29 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v23);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E56DD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E56DE8@<X0>(const char *a1@<X0>, uint64_t **a2@<X1>, const char *a3@<X2>, _BYTE *a4@<X8>)
{
  sub_D7B0(v20);
  v8 = strlen(a1);
  v9 = sub_4A5C(&v21, a1, v8);
  v10 = *(a2 + 23);
  if (v10 >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  if (v10 >= 0)
  {
    v12 = *(a2 + 23);
  }

  else
  {
    v12 = a2[1];
  }

  v13 = sub_4A5C(v9, v11, v12);
  v14 = strlen(a3);
  sub_4A5C(v13, a3, v14);
  if ((v31 & 0x10) != 0)
  {
    v16 = v30;
    if (v30 < v27)
    {
      v30 = v27;
      v16 = v27;
    }

    v17 = v26;
    v15 = v16 - v26;
    if (v16 - v26 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if ((v31 & 8) == 0)
    {
      v15 = 0;
      a4[23] = 0;
      goto LABEL_18;
    }

    v17 = v24;
    v15 = v25 - v24;
    if ((v25 - v24) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_22:
      sub_3244();
    }
  }

  if (v15 >= 0x17)
  {
    operator new();
  }

  a4[23] = v15;
  if (v15)
  {
    memmove(a4, v17, v15);
  }

LABEL_18:
  a4[v15] = 0;
  v21 = v18;
  if (v29 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v23);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E57084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E57098@<X0>(const char *a1@<X0>, uint64_t **a2@<X1>, const char *a3@<X2>, _BYTE *a4@<X8>)
{
  sub_D7B0(v20);
  v8 = strlen(a1);
  v9 = sub_4A5C(&v21, a1, v8);
  v10 = *(a2 + 23);
  if (v10 >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  if (v10 >= 0)
  {
    v12 = *(a2 + 23);
  }

  else
  {
    v12 = a2[1];
  }

  v13 = sub_4A5C(v9, v11, v12);
  v14 = strlen(a3);
  sub_4A5C(v13, a3, v14);
  if ((v31 & 0x10) != 0)
  {
    v16 = v30;
    if (v30 < v27)
    {
      v30 = v27;
      v16 = v27;
    }

    v17 = v26;
    v15 = v16 - v26;
    if (v16 - v26 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if ((v31 & 8) == 0)
    {
      v15 = 0;
      a4[23] = 0;
      goto LABEL_18;
    }

    v17 = v24;
    v15 = v25 - v24;
    if ((v25 - v24) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_22:
      sub_3244();
    }
  }

  if (v15 >= 0x17)
  {
    operator new();
  }

  a4[23] = v15;
  if (v15)
  {
    memmove(a4, v17, v15);
  }

LABEL_18:
  a4[v15] = 0;
  v21 = v18;
  if (v29 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v23);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E57334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

void sub_E57348(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  __p[0] = 0;
  __p[1] = &off_2669FE0;
  sub_434934(a3, __p);
  if (*(a1 + 16))
  {
    v8 = *(a1 + 24);
    if (v8 < 0x65)
    {
      goto LABEL_38;
    }

    LOBYTE(v24) = 11;
    LODWORD(__dst) = v8;
    sub_E57A54("Got an EV request where a route leg has a EVStateInfo.remaining_battery_percentage of ", " > 100.", __p);
    v9 = a3[1].n128_u64[1];
    if (v9 >= a3[2].n128_u64[0])
    {
      a3[1].n128_u64[1] = sub_E5C160(&a3[1], &v24, __p);
      if ((SHIBYTE(v29.__locale_) & 0x80000000) == 0)
      {
        goto LABEL_38;
      }
    }

    else
    {
      *v9 = v24;
      v10 = (v9 + 8);
      if ((SHIBYTE(v29.__locale_) & 0x80000000) == 0)
      {
        v11 = *__p;
        *(v9 + 24) = v29;
        *v10 = v11;
        a3[1].n128_u64[1] = v9 + 32;
        if (SHIBYTE(v29.__locale_) < 0)
        {
          goto LABEL_8;
        }

LABEL_38:
        if ((*(a1 + 16) & 2) != 0)
        {
          goto LABEL_12;
        }

        goto LABEL_39;
      }

      sub_325C(v10, __p[0], __p[1]);
      a3[1].n128_u64[1] = v9 + 32;
      if ((SHIBYTE(v29.__locale_) & 0x80000000) == 0)
      {
        goto LABEL_38;
      }
    }

LABEL_8:
    operator delete(__p[0]);
    if ((*(a1 + 16) & 2) != 0)
    {
      goto LABEL_12;
    }

LABEL_39:
    LOBYTE(__p[0]) = 11;
    v19 = a3[1].n128_u64[1];
    if (v19 >= a3[2].n128_u64[0])
    {
      a3[1].n128_u64[1] = sub_E5C5B8(&a3[1], __p, "Got an EV request where a route leg is missing EVStateInfo.remaining_battery_charge.");
    }

    else
    {
      sub_E5C738(a3[1].n128_u64[1], __p, "Got an EV request where a route leg is missing EVStateInfo.remaining_battery_charge.");
      a3[1].n128_u64[1] = v19 + 32;
    }

    goto LABEL_70;
  }

  LOBYTE(__p[0]) = 11;
  v6 = a3[1].n128_u64[1];
  if (v6 >= a3[2].n128_u64[0])
  {
    v7 = sub_E5C318(&a3[1], __p, "Got an EV request where a route leg is missing EVStateInfo.remaining_battery_percentage.");
  }

  else
  {
    sub_E5C498(a3[1].n128_u64[1], __p, "Got an EV request where a route leg is missing EVStateInfo.remaining_battery_percentage.");
    v7 = v6 + 32;
  }

  a3[1].n128_u64[1] = v7;
  if ((*(a1 + 16) & 2) == 0)
  {
    goto LABEL_39;
  }

LABEL_12:
  v12 = *(a1 + 28);
  if (v12 >= *(a2 + 84))
  {
    if (v12 <= *(a2 + 76) || !sub_7E7E4(1u))
    {
      goto LABEL_70;
    }

    sub_19594F8(__p);
    v24 = *(a1 + 28);
    sub_E57FC0("Got an EV request where a route leg has a EVStateInfo.remaining_battery_charge of ", " which is greater than the EVInfo.max_battery_charge of ", ".", &__dst);
    if ((v27 & 0x80u) == 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst;
    }

    if ((v27 & 0x80u) == 0)
    {
      v18 = v27;
    }

    else
    {
      v18 = v26;
    }

    sub_4A5C(__p, p_dst, v18);
    if (v27 < 0)
    {
      operator delete(__dst);
    }

    if ((v37 & 0x10) != 0)
    {
      v22 = v36;
      if (v36 < v33)
      {
        v36 = v33;
        v22 = v33;
      }

      v23 = &v32;
    }

    else
    {
      if ((v37 & 8) == 0)
      {
        v16 = 0;
        v27 = 0;
        goto LABEL_65;
      }

      v23 = &v30;
      v22 = v31;
    }

    v21 = *v23;
    v16 = v22 - *v23;
    if (v16 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v16 >= 0x17)
    {
      operator new();
    }

    v27 = v22 - *v23;
    if (!v16)
    {
      goto LABEL_65;
    }

LABEL_64:
    memmove(&__dst, v21, v16);
    goto LABEL_65;
  }

  if (!sub_7E7E4(1u))
  {
    goto LABEL_70;
  }

  sub_19594F8(__p);
  v24 = *(a1 + 28);
  sub_E57CF0("Got an EV request where a route leg has an EVStateInfo.remaining_battery_charge (", ") which is less than the minimum battery capacity (", ".", &__dst);
  if ((v27 & 0x80u) == 0)
  {
    v13 = &__dst;
  }

  else
  {
    v13 = __dst;
  }

  if ((v27 & 0x80u) == 0)
  {
    v14 = v27;
  }

  else
  {
    v14 = v26;
  }

  sub_4A5C(__p, v13, v14);
  if ((v27 & 0x80000000) == 0)
  {
    v15 = v37;
    if ((v37 & 0x10) == 0)
    {
      goto LABEL_22;
    }

LABEL_45:
    v20 = v36;
    if (v36 < v33)
    {
      v36 = v33;
      v20 = v33;
    }

    v21 = v32;
    v16 = v20 - v32;
    if (v20 - v32 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_54:
      sub_3244();
    }

    goto LABEL_48;
  }

  operator delete(__dst);
  v15 = v37;
  if ((v37 & 0x10) != 0)
  {
    goto LABEL_45;
  }

LABEL_22:
  if ((v15 & 8) != 0)
  {
    v21 = v30;
    v16 = v31 - v30;
    if (v31 - v30 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_54;
    }

LABEL_48:
    if (v16 >= 0x17)
    {
      operator new();
    }

    v27 = v16;
    if (!v16)
    {
      goto LABEL_65;
    }

    goto LABEL_64;
  }

  v16 = 0;
  v27 = 0;
LABEL_65:
  *(&__dst + v16) = 0;
  sub_7E854(&__dst, 1u);
  if (v27 < 0)
  {
    operator delete(__dst);
  }

  if (v35 < 0)
  {
    operator delete(v34);
  }

  std::locale::~locale(&v29);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_70:
  a3->n128_u64[0] = 2 * (a3[1].n128_u64[0] != a3[1].n128_u64[1]);
  a3->n128_u64[1] = &off_2669FE0;
}

void sub_E5791C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  *(v22 + 24) = v23;
  if (a22 < 0)
  {
    operator delete(__p);
    sub_CF3C94(v22);
    _Unwind_Resume(a1);
  }

  sub_CF3C94(v22);
  _Unwind_Resume(a1);
}

uint64_t sub_E57A54@<X0>(const char *a1@<X0>, const char *a3@<X2>, _BYTE *a4@<X8>)
{
  sub_D7B0(v15);
  v7 = strlen(a1);
  sub_4A5C(&v16, a1, v7);
  v8 = std::ostream::operator<<();
  v9 = strlen(a3);
  sub_4A5C(v8, a3, v9);
  if ((v26 & 0x10) != 0)
  {
    v11 = v25;
    if (v25 < v22)
    {
      v25 = v22;
      v11 = v22;
    }

    v12 = v21;
    v10 = v11 - v21;
    if (v11 - v21 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v26 & 8) == 0)
    {
      v10 = 0;
      a4[23] = 0;
      goto LABEL_12;
    }

    v12 = v19;
    v10 = v20 - v19;
    if ((v20 - v19) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
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

LABEL_12:
  a4[v10] = 0;
  v16 = v13;
  if (v24 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v18);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E57CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E57CF0@<X0>(const char *a1@<X0>, const char *a3@<X2>, const char *a5@<X4>, _BYTE *a6@<X8>)
{
  sub_D7B0(v20);
  v10 = strlen(a1);
  sub_4A5C(&v21, a1, v10);
  v11 = std::ostream::operator<<();
  v12 = strlen(a3);
  sub_4A5C(v11, a3, v12);
  v13 = std::ostream::operator<<();
  v14 = strlen(a5);
  sub_4A5C(v13, a5, v14);
  if ((v31 & 0x10) != 0)
  {
    v16 = v30;
    if (v30 < v27)
    {
      v30 = v27;
      v16 = v27;
    }

    v17 = v26;
    v15 = v16 - v26;
    if (v16 - v26 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v31 & 8) == 0)
    {
      v15 = 0;
      a6[23] = 0;
      goto LABEL_12;
    }

    v17 = v24;
    v15 = v25 - v24;
    if ((v25 - v24) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v15 >= 0x17)
  {
    operator new();
  }

  a6[23] = v15;
  if (v15)
  {
    memmove(a6, v17, v15);
  }

LABEL_12:
  a6[v15] = 0;
  v21 = v18;
  if (v29 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v23);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E57FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E57FC0@<X0>(const char *a1@<X0>, const char *a3@<X2>, const char *a5@<X4>, _BYTE *a6@<X8>)
{
  sub_D7B0(v20);
  v10 = strlen(a1);
  sub_4A5C(&v21, a1, v10);
  v11 = std::ostream::operator<<();
  v12 = strlen(a3);
  sub_4A5C(v11, a3, v12);
  v13 = std::ostream::operator<<();
  v14 = strlen(a5);
  sub_4A5C(v13, a5, v14);
  if ((v31 & 0x10) != 0)
  {
    v16 = v30;
    if (v30 < v27)
    {
      v30 = v27;
      v16 = v27;
    }

    v17 = v26;
    v15 = v16 - v26;
    if (v16 - v26 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v31 & 8) == 0)
    {
      v15 = 0;
      a6[23] = 0;
      goto LABEL_12;
    }

    v17 = v24;
    v15 = v25 - v24;
    if ((v25 - v24) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v15 >= 0x17)
  {
    operator new();
  }

  a6[23] = v15;
  if (v15)
  {
    memmove(a6, v17, v15);
  }

LABEL_12:
  a6[v15] = 0;
  v21 = v18;
  if (v29 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v23);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E5827C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

void sub_E58290()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v10.n128_u64[0] = 0;
  v10.n128_u64[1] = &off_2669FE0;
  sub_434934(v1, &v10);
  if (*(v0 + 104) == 2 && (*(v0 + 16) & 0x10) == 0)
  {
    v10.n128_u8[0] = 11;
    v3 = v2[1].n128_u64[1];
    if (v3 >= v2[2].n128_u64[0])
    {
      v4 = sub_E5C858(&v2[1], &v10, "Got an EV request with a WaypointInfo that has source SERVICE but misses the EV charging info.");
    }

    else
    {
      sub_E5C9D8(v2[1].n128_u64[1], &v10, "Got an EV request with a WaypointInfo that has source SERVICE but misses the EV charging info.");
      v4 = v3 + 32;
    }

    v2[1].n128_u64[1] = v4;
  }

  v5 = *(v0 + 16);
  if ((v5 & 0x10) != 0)
  {
    if ((v5 & 2) == 0)
    {
      v10.n128_u8[0] = 11;
      v6 = v2[1].n128_u64[1];
      if (v6 >= v2[2].n128_u64[0])
      {
        v7 = sub_E5CAF8(&v2[1], &v10, "Got an EV request with a WaypointInfo missing the position parameter.");
      }

      else
      {
        sub_E5CC78(v2[1].n128_u64[1], &v10, "Got an EV request with a WaypointInfo missing the position parameter.");
        v7 = v6 + 32;
      }

      v2[1].n128_u64[1] = v7;
      v5 = *(v0 + 16);
    }

    if ((v5 & 0x200) == 0)
    {
      v10.n128_u8[0] = 11;
      v8 = v2[1].n128_u64[1];
      if (v8 >= v2[2].n128_u64[0])
      {
        v9 = sub_E5CD98(&v2[1], &v10, "Got an EV request with a WaypointInfo that has an EVChargingInfo set but no MUID referencing the charging station.");
      }

      else
      {
        sub_E5CF18(v2[1].n128_u64[1], &v10, "Got an EV request with a WaypointInfo that has an EVChargingInfo set but no MUID referencing the charging station.");
        v9 = v8 + 32;
      }

      v2[1].n128_u64[1] = v9;
    }

    operator new();
  }

  v2->n128_u64[0] = 2 * (v2[1].n128_u64[0] != v2[1].n128_u64[1]);
  v2->n128_u64[1] = &off_2669FE0;
}

void sub_E59544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  if (*(v20 + 23) < 0)
  {
    operator delete(STACK[0xFA8]);
  }

  sub_1959728(&STACK[0xFC0]);
  sub_E5E298(va);
  sub_CF3C94(v19);
  _Unwind_Resume(a1);
}

void sub_E5975C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  *(v19 + 24) = v20;
  sub_E5E298(va);
  sub_CF3C94(v19);
  _Unwind_Resume(a1);
}

uint64_t sub_E59798@<X0>(const char *a1@<X0>, const char *a3@<X2>, uint64_t *a4@<X3>, const char *a5@<X4>, _BYTE *a6@<X8>)
{
  sub_D7B0(v22);
  v11 = strlen(a1);
  sub_4A5C(&v23, a1, v11);
  v12 = std::ostream::operator<<();
  v13 = strlen(a3);
  v14 = sub_4A5C(v12, a3, v13);
  v15 = std::ostream::operator<<(v14, *a4);
  v16 = strlen(a5);
  sub_4A5C(v15, a5, v16);
  if ((v33 & 0x10) != 0)
  {
    v18 = v32;
    if (v32 < v29)
    {
      v32 = v29;
      v18 = v29;
    }

    v19 = v28;
    v17 = v18 - v28;
    if (v18 - v28 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v33 & 8) == 0)
    {
      v17 = 0;
      a6[23] = 0;
      goto LABEL_12;
    }

    v19 = v26;
    v17 = v27 - v26;
    if ((v27 - v26) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v17 >= 0x17)
  {
    operator new();
  }

  a6[23] = v17;
  if (v17)
  {
    memmove(a6, v19, v17);
  }

LABEL_12:
  a6[v17] = 0;
  v23 = v20;
  if (v31 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v25);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E59A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E59A68@<X0>(const char *a1@<X0>, const char *a3@<X2>, const char *a5@<X4>, _BYTE *a6@<X8>)
{
  sub_D7B0(v20);
  v10 = strlen(a1);
  sub_4A5C(&v21, a1, v10);
  v11 = std::ostream::operator<<();
  v12 = strlen(a3);
  sub_4A5C(v11, a3, v12);
  v13 = std::ostream::operator<<();
  v14 = strlen(a5);
  sub_4A5C(v13, a5, v14);
  if ((v31 & 0x10) != 0)
  {
    v16 = v30;
    if (v30 < v27)
    {
      v30 = v27;
      v16 = v27;
    }

    v17 = v26;
    v15 = v16 - v26;
    if (v16 - v26 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v31 & 8) == 0)
    {
      v15 = 0;
      a6[23] = 0;
      goto LABEL_12;
    }

    v17 = v24;
    v15 = v25 - v24;
    if ((v25 - v24) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v15 >= 0x17)
  {
    operator new();
  }

  a6[23] = v15;
  if (v15)
  {
    memmove(a6, v17, v15);
  }

LABEL_12:
  a6[v15] = 0;
  v21 = v18;
  if (v29 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v23);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E59D24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E59D38@<X0>(const char *a1@<X0>, const char *a3@<X2>, const char *a5@<X4>, _BYTE *a6@<X8>)
{
  sub_D7B0(v20);
  v10 = strlen(a1);
  sub_4A5C(&v21, a1, v10);
  v11 = std::ostream::operator<<();
  v12 = strlen(a3);
  sub_4A5C(v11, a3, v12);
  v13 = std::ostream::operator<<();
  v14 = strlen(a5);
  sub_4A5C(v13, a5, v14);
  if ((v31 & 0x10) != 0)
  {
    v16 = v30;
    if (v30 < v27)
    {
      v30 = v27;
      v16 = v27;
    }

    v17 = v26;
    v15 = v16 - v26;
    if (v16 - v26 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v31 & 8) == 0)
    {
      v15 = 0;
      a6[23] = 0;
      goto LABEL_12;
    }

    v17 = v24;
    v15 = v25 - v24;
    if ((v25 - v24) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v15 >= 0x17)
  {
    operator new();
  }

  a6[23] = v15;
  if (v15)
  {
    memmove(a6, v17, v15);
  }

LABEL_12:
  a6[v15] = 0;
  v21 = v18;
  if (v29 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v23);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E59FF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

void sub_E5A008(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, __n128 *a4@<X8>)
{
  v23.n128_u64[0] = 0;
  v23.n128_u64[1] = &off_2669FE0;
  sub_434934(a4, &v23);
  v8 = *(a1 + 40);
  if ((v8 & 3) != 0)
  {
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_10:
    if ((v8 & 4) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_11;
  }

  v23.n128_u8[0] = 11;
  v11 = a4[1].n128_u64[1];
  if (v11 >= a4[2].n128_u64[0])
  {
    v12 = sub_E5E3B0(&a4[1], &v23, "Got an EV request where one of the route legs of the OriginalWaypointRoute has neither the path_leg nor zilch points set.");
  }

  else
  {
    sub_E5E530(a4[1].n128_u64[1], &v23, "Got an EV request where one of the route legs of the OriginalWaypointRoute has neither the path_leg nor zilch points set.");
    v12 = v11 + 32;
  }

  a4[1].n128_u64[1] = v12;
  v8 = *(a1 + 40);
  if (!a3)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v8 & 4) != 0)
  {
LABEL_11:
    sub_E57348(*(a1 + 64), a2, &v23);
    sub_434BB0(a4, &v23);
    v13 = __p;
    if (__p)
    {
      v14 = v25;
      v15 = __p;
      if (v25 != __p)
      {
        do
        {
          if (*(v14 - 1) < 0)
          {
            operator delete(*(v14 - 3));
          }

          v14 -= 4;
        }

        while (v14 != v13);
        v15 = __p;
      }

      v25 = v13;
      operator delete(v15);
    }

LABEL_19:
    v16 = *(a1 + 40);
    if ((v16 & 8) != 0)
    {
      goto LABEL_24;
    }

LABEL_20:
    if ((v16 & 0x10) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_33;
  }

  v23.n128_u8[0] = 11;
  v9 = a4[1].n128_u64[1];
  if (v9 >= a4[2].n128_u64[0])
  {
    v10 = sub_E5E650(&a4[1], &v23, "Got an EV request where one of the route legs of the OriginalWaypointRoute does not have the EVStateInfo set.");
  }

  else
  {
    sub_E5E7D0(a4[1].n128_u64[1], &v23, "Got an EV request where one of the route legs of the OriginalWaypointRoute does not have the EVStateInfo set.");
    v10 = v9 + 32;
  }

  a4[1].n128_u64[1] = v10;
  v16 = *(a1 + 40);
  if ((v16 & 8) == 0)
  {
    goto LABEL_20;
  }

LABEL_24:
  sub_E58290();
  sub_434BB0(a4, &v23);
  v17 = __p;
  if (__p)
  {
    v18 = v25;
    v19 = __p;
    if (v25 != __p)
    {
      do
      {
        if (*(v18 - 1) < 0)
        {
          operator delete(*(v18 - 3));
        }

        v18 -= 4;
      }

      while (v18 != v17);
      v19 = __p;
    }

    v25 = v17;
    operator delete(v19);
  }

  if ((*(a1 + 40) & 0x10) != 0)
  {
LABEL_33:
    sub_E58290();
    sub_434BB0(a4, &v23);
    v20 = __p;
    if (__p)
    {
      v21 = v25;
      v22 = __p;
      if (v25 != __p)
      {
        do
        {
          if (*(v21 - 1) < 0)
          {
            operator delete(*(v21 - 3));
          }

          v21 -= 4;
        }

        while (v21 != v20);
        v22 = __p;
      }

      v25 = v20;
      operator delete(v22);
    }
  }

LABEL_41:
  a4->n128_u64[0] = 2 * (a4[1].n128_u64[0] != a4[1].n128_u64[1]);
  a4->n128_u64[1] = &off_2669FE0;
}

void sub_E5A29C(_Unwind_Exception *a1)
{
  *(v1 + 24) = v2;
  sub_CF3C94(v1);
  _Unwind_Resume(a1);
}

void sub_E5A2C8(_Unwind_Exception *a1)
{
  *(v1 + 24) = v2;
  sub_CF3C94(v1);
  _Unwind_Resume(a1);
}

void sub_E5A2E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_CF3C94(&a9);
  sub_CF3C94(v9);
  _Unwind_Resume(a1);
}

void sub_E5A340(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v28.n128_u64[0] = 0;
  v28.n128_u64[1] = &off_2669FE0;
  sub_434934(a3, &v28);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = (v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  if (v6)
  {
    v9 = 8 * v6;
    v10 = v8;
    v11 = &v8[v6];
    while (1)
    {
      v12 = *(*v10 + 72);
      if (!v12)
      {
        v12 = &off_2772310;
      }

      if ((v12[2] & 0x10) != 0)
      {
        break;
      }

      v13 = *(*v10 + 80);
      if (!v13)
      {
        v13 = &off_2772310;
      }

      if ((v13[2] & 0x10) != 0)
      {
        break;
      }

      ++v10;
      v9 -= 8;
      if (!v9)
      {
        v14 = 0;
        goto LABEL_18;
      }
    }

    v14 = 1;
    do
    {
LABEL_18:
      sub_E5A008(*v8, a2, v14, &v28);
      sub_434BB0(a3, &v28);
      v16 = __p;
      if (__p)
      {
        v17 = v30;
        v15 = __p;
        if (v30 != __p)
        {
          do
          {
            if (*(v17 - 1) < 0)
            {
              operator delete(*(v17 - 3));
            }

            v17 -= 4;
          }

          while (v17 != v16);
          v15 = __p;
        }

        v30 = v16;
        operator delete(v15);
      }

      ++v8;
    }

    while (v8 != v11);
    v18 = *(a1 + 32);
    v19 = *(a1 + 40);
    if (v19)
    {
      v20 = v19 + 8;
    }

    else
    {
      v20 = 0;
    }

    if (v18 >= 2)
    {
      v21 = v20 + 8;
      v22 = 8 * v18 - 8;
      v23 = 1;
      do
      {
        if (*(*(v21 - 8) + 80))
        {
          v24 = *(*(v21 - 8) + 80);
        }

        else
        {
          v24 = &off_2772310;
        }

        if (*(*v21 + 72))
        {
          v25 = *(*v21 + 72);
        }

        else
        {
          v25 = &off_2772310;
        }

        v23 &= sub_E4F6D0(v24, v25);
        v21 += 8;
        v22 -= 8;
      }

      while (v22);
      if ((v23 & 1) == 0)
      {
        v28.n128_u8[0] = 11;
        v26 = a3[1].n128_u64[1];
        if (v26 >= a3[2].n128_u64[0])
        {
          v27 = sub_E5E8F0(&a3[1], &v28, "Original waypoint route has inconsistent EV charging infos (charging info of the destination waypoint info of at least one leg does not match the charging info of the origin waypoint info in the subsequent leg).");
        }

        else
        {
          sub_E5EA70(a3[1].n128_u64[1], &v28, "Original waypoint route has inconsistent EV charging infos (charging info of the destination waypoint info of at least one leg does not match the charging info of the origin waypoint info in the subsequent leg).");
          v27 = v26 + 32;
        }

        a3[1].n128_u64[1] = v27;
      }
    }
  }

  a3->n128_u64[0] = 2 * (a3[1].n128_u64[0] != a3[1].n128_u64[1]);
  a3->n128_u64[1] = &off_2669FE0;
}

void sub_E5A594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_CF3C94(&a9);
  sub_CF3C94(v9);
  _Unwind_Resume(a1);
}

void sub_E5A5B0(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v14.n128_u64[0] = 0;
  v14.n128_u64[1] = &off_2669FE0;
  sub_434934(a3, &v14);
  v6 = *(a1 + 40);
  if ((v6 & 8) == 0)
  {
    v14.n128_u8[0] = 11;
    v7 = a3[1].n128_u64[1];
    if (v7 >= a3[2].n128_u64[0])
    {
      v8 = sub_E5EB90(&a3[1], &v14, "Got an EV request with an ETARoute.ETAStep missing the StepID.");
    }

    else
    {
      sub_E5ED10(a3[1].n128_u64[1], &v14, "Got an EV request with an ETARoute.ETAStep missing the StepID.");
      v8 = v7 + 32;
    }

    a3[1].n128_u64[1] = v8;
    v6 = *(a1 + 40);
  }

  if ((v6 & 0xC0) != 0)
  {
    if ((v6 & 4) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v14.n128_u8[0] = 11;
    v9 = a3[1].n128_u64[1];
    if (v9 >= a3[2].n128_u64[0])
    {
      v10 = sub_E5EE30(&a3[1], &v14, "Got an EV request with an ETARoute.ETAStep missing the zilchPointIndex and distance_cm.");
    }

    else
    {
      sub_E5EFB0(a3[1].n128_u64[1], &v14, "Got an EV request with an ETARoute.ETAStep missing the zilchPointIndex and distance_cm.");
      v10 = v9 + 32;
    }

    a3[1].n128_u64[1] = v10;
    if ((*(a1 + 40) & 4) == 0)
    {
      goto LABEL_21;
    }
  }

  sub_E57348(*(a1 + 64), a2, &v14);
  sub_434BB0(a3, &v14);
  v11 = __p;
  if (__p)
  {
    v12 = v16;
    v13 = __p;
    if (v16 != __p)
    {
      do
      {
        if (*(v12 - 1) < 0)
        {
          operator delete(*(v12 - 3));
        }

        v12 -= 4;
      }

      while (v12 != v11);
      v13 = __p;
    }

    v16 = v11;
    operator delete(v13);
  }

LABEL_21:
  a3->n128_u64[0] = 2 * (a3[1].n128_u64[0] != a3[1].n128_u64[1]);
  a3->n128_u64[1] = &off_2669FE0;
}

void sub_E5A748(_Unwind_Exception *a1)
{
  *(v1 + 24) = v2;
  sub_CF3C94(v1);
  _Unwind_Resume(a1);
}

void sub_E5A778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_CF3C94(&a9);
  sub_CF3C94(v9);
  _Unwind_Resume(a1);
}

void sub_E5A7A8(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v25.n128_u64[0] = 0;
  v25.n128_u64[1] = &off_2669FE0;
  sub_434934(a3, &v25);
  v6 = *(a1 + 56);
  if (v6)
  {
    v7 = *(a1 + 64);
    if (v7)
    {
      v8 = (v7 + 8);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v25.n128_u8[0] = 11;
    v9 = a3[1].n128_u64[1];
    if (v9 >= a3[2].n128_u64[0])
    {
      v10 = sub_E5F0D0(&a3[1], &v25, "Got an EV request with an ETARoute that does not have any ETASteps.");
    }

    else
    {
      sub_E5F250(a3[1].n128_u64[1], &v25, "Got an EV request with an ETARoute that does not have any ETASteps.");
      v10 = v9 + 32;
    }

    a3[1].n128_u64[1] = v10;
    v6 = *(a1 + 56);
    v11 = *(a1 + 64);
    if (v11)
    {
      v8 = (v11 + 8);
    }

    else
    {
      v8 = 0;
    }

    if (!v6)
    {
      goto LABEL_22;
    }
  }

  v12 = &v8[v6];
  do
  {
    sub_E5A5B0(*v8, a2, &v25);
    sub_434BB0(a3, &v25);
    v14 = __p;
    if (__p)
    {
      v15 = v27;
      v13 = __p;
      if (v27 != __p)
      {
        do
        {
          if (*(v15 - 1) < 0)
          {
            operator delete(*(v15 - 3));
          }

          v15 -= 4;
        }

        while (v15 != v14);
        v13 = __p;
      }

      v27 = v14;
      operator delete(v13);
    }

    ++v8;
  }

  while (v8 != v12);
LABEL_22:
  if (!*(a1 + 80) && (*(a1 + 40) & 2) == 0)
  {
    v25.n128_u8[0] = 11;
    v16 = a3[1].n128_u64[1];
    if (v16 >= a3[2].n128_u64[0])
    {
      v17 = sub_E5F370(&a3[1], &v25, "Got an EV request without any zilch nor path_leg to decode.");
    }

    else
    {
      sub_E5F4F0(a3[1].n128_u64[1], &v25, "Got an EV request without any zilch nor path_leg to decode.");
      v17 = v16 + 32;
    }

    a3[1].n128_u64[1] = v17;
  }

  v18 = *(a1 + 40);
  if ((v18 & 8) != 0)
  {
    sub_E58290();
    sub_434BB0(a3, &v25);
    v19 = __p;
    if (__p)
    {
      v20 = v27;
      v21 = __p;
      if (v27 != __p)
      {
        do
        {
          if (*(v20 - 1) < 0)
          {
            operator delete(*(v20 - 3));
          }

          v20 -= 4;
        }

        while (v20 != v19);
        v21 = __p;
      }

      v27 = v19;
      operator delete(v21);
    }

    v18 = *(a1 + 40);
  }

  if ((v18 & 0x10) != 0)
  {
    sub_E58290();
    sub_434BB0(a3, &v25);
    v22 = __p;
    if (__p)
    {
      v23 = v27;
      v24 = __p;
      if (v27 != __p)
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
        v24 = __p;
      }

      v27 = v22;
      operator delete(v24);
    }
  }

  a3->n128_u64[0] = 2 * (a3[1].n128_u64[0] != a3[1].n128_u64[1]);
  a3->n128_u64[1] = &off_2669FE0;
}

uint64_t sub_E5AAB8@<X0>(const char *a1@<X0>, const char *a3@<X2>, const char *a5@<X4>, _BYTE *a6@<X8>)
{
  sub_D7B0(v20);
  v10 = strlen(a1);
  sub_4A5C(&v21, a1, v10);
  v11 = std::ostream::operator<<();
  v12 = strlen(a3);
  sub_4A5C(v11, a3, v12);
  v13 = std::ostream::operator<<();
  v14 = strlen(a5);
  sub_4A5C(v13, a5, v14);
  if ((v31 & 0x10) != 0)
  {
    v16 = v30;
    if (v30 < v27)
    {
      v30 = v27;
      v16 = v27;
    }

    v17 = v26;
    v15 = v16 - v26;
    if (v16 - v26 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v31 & 8) == 0)
    {
      v15 = 0;
      a6[23] = 0;
      goto LABEL_12;
    }

    v17 = v24;
    v15 = v25 - v24;
    if ((v25 - v24) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v15 >= 0x17)
  {
    operator new();
  }

  a6[23] = v15;
  if (v15)
  {
    memmove(a6, v17, v15);
  }

LABEL_12:
  a6[v15] = 0;
  v21 = v18;
  if (v29 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v23);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E5AD74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

void sub_E5AD88(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = (a1 + 24);
  if (a2)
  {
    v4 = (a1 + 32);
  }

  sub_66E3C((*v4 & 0xFFFFFFFFFFFFFFFELL), v13);
  if (LODWORD(v13[1]) != 5)
  {
    sub_5AF20();
  }

  sub_5ADDC(v15, v13[0]);
  if (LODWORD(v13[1]) != -1)
  {
    (off_2674330[LODWORD(v13[1])])(__p, v13);
  }

  v14 = 8;
  strcpy(v13, "model_id");
  if (!sub_5FC3C(v15, v13))
  {
    v5 = 1;
    if (v14 < 0)
    {
      goto LABEL_15;
    }

LABEL_9:
    if (v5)
    {
      goto LABEL_10;
    }

    goto LABEL_16;
  }

  v12 = 8;
  strcpy(__p, "model_id");
  v5 = (*(sub_5F33C(v15, __p) + 2) - 5) < 0xFFFFFFFD;
  if (v12 < 0)
  {
    operator delete(__p[0]);
    if (v14 < 0)
    {
      goto LABEL_15;
    }

    goto LABEL_9;
  }

  if ((v14 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

LABEL_15:
  operator delete(v13[0]);
  if (v5)
  {
LABEL_10:
    *(a3 + 23) = 0;
    *a3 = 0;
    v6 = v16;
    if (!v16)
    {
      goto LABEL_25;
    }

    goto LABEL_20;
  }

LABEL_16:
  v14 = 8;
  strcpy(v13, "model_id");
  v7 = sub_353010(v15, v13);
  std::to_string(a3, v7);
  if (v14 < 0)
  {
    operator delete(v13[0]);
    v6 = v16;
    if (!v16)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v6 = v16;
    if (!v16)
    {
      goto LABEL_25;
    }
  }

  do
  {
LABEL_20:
    v8 = *v6;
    v9 = *(v6 + 12);
    if (v9 != -1)
    {
      (off_2674330[v9])(__p, v6 + 5);
    }

    *(v6 + 12) = -1;
    if (*(v6 + 39) < 0)
    {
      operator delete(v6[2]);
    }

    operator delete(v6);
    v6 = v8;
  }

  while (v8);
LABEL_25:
  v10 = v15[0];
  v15[0] = 0;
  if (v10)
  {
    operator delete(v10);
  }
}

void sub_E5AF9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  if (v38 < 0)
  {
    operator delete(v37);
  }

  sub_5C010(&v39);
  if (a2 != 1)
  {
    _Unwind_Resume(a1);
  }

  __cxa_begin_catch(a1);
  sub_3608D0(v34, "");
  __cxa_end_catch();
}

void sub_E5B05C(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  sub_E5AD88(a1, 0, v15);
  sub_E5AD88(a1, 1, v13);
  if ((v16 & 0x80u) == 0)
  {
    v4 = v16;
  }

  else
  {
    v4 = v15[1];
  }

  if (v4 + 20 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  if (v4 + 20 >= 0x17)
  {
    operator new();
  }

  HIDWORD(__p.__r_.__value_.__r.__words[2]) = 0;
  *(&__p.__r_.__value_.__s + 23) = v4 + 20;
  LODWORD(__p.__r_.__value_.__r.__words[2]) = 1029982572;
  *&__p.__r_.__value_.__l.__data_ = *" ConsumptionModelId=";
  if (v4)
  {
    if ((v16 & 0x80u) == 0)
    {
      v5 = v15;
    }

    else
    {
      v5 = v15[0];
    }

    memmove(&__p.__r_.__value_.__r.__words[2] + 4, v5, v4);
  }

  *(&__p.__r_.__value_.__r.__words[2] + v4 + 4) = 0;
  v6 = std::string::append(&__p, " and ChargingModelId=", 0x15uLL);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v12.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v12.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if ((v14 & 0x80u) == 0)
  {
    v8 = v13;
  }

  else
  {
    v8 = v13[0];
  }

  if ((v14 & 0x80u) == 0)
  {
    v9 = v14;
  }

  else
  {
    v9 = v13[1];
  }

  v10 = std::string::append(&v12, v8, v9);
  *a2 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_20:
      if ((v14 & 0x80000000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_25;
    }
  }

  else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_20;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if ((v14 & 0x80000000) == 0)
  {
LABEL_21:
    if ((v16 & 0x80000000) == 0)
    {
      return;
    }

LABEL_26:
    operator delete(v15[0]);
    return;
  }

LABEL_25:
  operator delete(v13[0]);
  if (v16 < 0)
  {
    goto LABEL_26;
  }
}

void sub_E5B260(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a28 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  if ((a28 & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v28 - 33) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a23);
  if ((*(v28 - 33) & 0x80000000) == 0)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  operator delete(*(v28 - 56));
  _Unwind_Resume(exception_object);
}

void *sub_E5B2FC@<X0>(void *__return_ptr a1@<X8>, const char *a2@<X2>, const char *a3@<X0>, uint64_t a5, uint64_t a6, ...)
{
  sub_D7B0(v17);
  v9 = strlen(a3);
  sub_4A5C(&v18, a3, v9);
  v10 = std::ostream::operator<<();
  v11 = strlen(a2);
  sub_4A5C(v10, a2, v11);
  if ((v28 & 0x10) != 0)
  {
    v13 = v27;
    if (v27 < v24)
    {
      v27 = v24;
      v13 = v24;
    }

    v14 = v23;
    v12 = v13 - v23;
    if (v13 - v23 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v28 & 8) == 0)
    {
      v12 = 0;
      *(a1 + 23) = 0;
      goto LABEL_12;
    }

    v14 = v21;
    v12 = v22 - v21;
    if ((v22 - v21) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v12 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v12;
  if (v12)
  {
    memmove(a1, v14, v12);
  }

LABEL_12:
  *(a1 + v12) = 0;
  v18 = v15;
  if (v26 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v20);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E5B584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E5B598@<X0>(const char **a1@<X0>, const char *a2@<X1>, const char *a4@<X3>, const char *a6@<X5>, _BYTE *a7@<X8>)
{
  sub_D7B0(v25);
  v12 = *a1;
  v13 = strlen(v12);
  v14 = sub_4A5C(&v26, v12, v13);
  v15 = strlen(a2);
  v16 = sub_4A5C(v14, a2, v15);
  std::ostream::operator<<();
  v17 = strlen(a4);
  v18 = sub_4A5C(v16, a4, v17);
  std::ostream::operator<<();
  v19 = strlen(a6);
  sub_4A5C(v18, a6, v19);
  if ((v36 & 0x10) != 0)
  {
    v21 = v35;
    if (v35 < v32)
    {
      v35 = v32;
      v21 = v32;
    }

    v22 = v31;
    v20 = v21 - v31;
    if (v21 - v31 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v36 & 8) == 0)
    {
      v20 = 0;
      a7[23] = 0;
      goto LABEL_12;
    }

    v22 = v29;
    v20 = v30 - v29;
    if ((v30 - v29) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v20 >= 0x17)
  {
    operator new();
  }

  a7[23] = v20;
  if (v20)
  {
    memmove(a7, v22, v20);
  }

LABEL_12:
  a7[v20] = 0;
  v26 = v23;
  if (v34 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v28);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E5B880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E5B894@<X0>(const char **a1@<X0>, const char *a2@<X1>, _BYTE *a3@<X8>)
{
  sub_D7B0(v15);
  v6 = *a1;
  v7 = strlen(v6);
  v8 = sub_4A5C(&v16, v6, v7);
  v9 = strlen(a2);
  sub_4A5C(v8, a2, v9);
  if ((v26 & 0x10) != 0)
  {
    v11 = v25;
    if (v25 < v22)
    {
      v25 = v22;
      v11 = v22;
    }

    v12 = v21;
    v10 = v11 - v21;
    if (v11 - v21 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v26 & 8) == 0)
    {
      v10 = 0;
      a3[23] = 0;
      goto LABEL_12;
    }

    v12 = v19;
    v10 = v20 - v19;
    if ((v20 - v19) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v10 >= 0x17)
  {
    operator new();
  }

  a3[23] = v10;
  if (v10)
  {
    memmove(a3, v12, v10);
  }

LABEL_12:
  a3[v10] = 0;
  v16 = v13;
  if (v24 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v18);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E5BB14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

unint64_t sub_E5BB28(uint64_t *a1, char *a2, char *a3)
{
  v4 = a1[1];
  if (v4 >= a1[2])
  {
    v6 = sub_E60DB0(a1, a2, a3);
    a1[1] = v6;
    return v6 - 32;
  }

  else
  {
    sub_E60F30(a1[1], a2, a3);
    a1[1] = v4 + 32;
    a1[1] = v4 + 32;
    return v4;
  }
}

uint64_t sub_E5BB90@<X0>(const char *a1@<X0>, const char **a2@<X1>, const char *a3@<X2>, _BYTE *a4@<X8>)
{
  sub_D7B0(v19);
  v8 = strlen(a1);
  v9 = sub_4A5C(&v20, a1, v8);
  v10 = *a2;
  v11 = strlen(v10);
  v12 = sub_4A5C(v9, v10, v11);
  v13 = strlen(a3);
  sub_4A5C(v12, a3, v13);
  if ((v30 & 0x10) != 0)
  {
    v15 = v29;
    if (v29 < v26)
    {
      v29 = v26;
      v15 = v26;
    }

    v16 = v25;
    v14 = v15 - v25;
    if (v15 - v25 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v30 & 8) == 0)
    {
      v14 = 0;
      a4[23] = 0;
      goto LABEL_12;
    }

    v16 = v23;
    v14 = v24 - v23;
    if ((v24 - v23) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v14 >= 0x17)
  {
    operator new();
  }

  a4[23] = v14;
  if (v14)
  {
    memmove(a4, v16, v14);
  }

LABEL_12:
  a4[v14] = 0;
  v20 = v17;
  if (v28 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v22);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E5BE30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

unint64_t sub_E5BE44(uint64_t *a1, char *a2, char *a3)
{
  v4 = a1[1];
  if (v4 >= a1[2])
  {
    v6 = sub_E612F0(a1, a2, a3);
    a1[1] = v6;
    return v6 - 32;
  }

  else
  {
    sub_E61470(a1[1], a2, a3);
    a1[1] = v4 + 32;
    a1[1] = v4 + 32;
    return v4;
  }
}

uint64_t sub_E5BEAC@<X0>(const char *a1@<X0>, const char **a2@<X1>, const char *a3@<X2>, _BYTE *a4@<X8>)
{
  sub_D7B0(v19);
  v8 = strlen(a1);
  v9 = sub_4A5C(&v20, a1, v8);
  v10 = *a2;
  v11 = strlen(v10);
  v12 = sub_4A5C(v9, v10, v11);
  v13 = strlen(a3);
  sub_4A5C(v12, a3, v13);
  if ((v30 & 0x10) != 0)
  {
    v15 = v29;
    if (v29 < v26)
    {
      v29 = v26;
      v15 = v26;
    }

    v16 = v25;
    v14 = v15 - v25;
    if (v15 - v25 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v30 & 8) == 0)
    {
      v14 = 0;
      a4[23] = 0;
      goto LABEL_12;
    }

    v16 = v23;
    v14 = v24 - v23;
    if ((v24 - v23) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v14 >= 0x17)
  {
    operator new();
  }

  a4[23] = v14;
  if (v14)
  {
    memmove(a4, v16, v14);
  }

LABEL_12:
  a4[v14] = 0;
  v20 = v17;
  if (v28 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v22);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E5C14C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E5C160(uint64_t *a1, _BYTE *a2, uint64_t a3)
{
  v3 = (a1[1] - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_1794();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v4)
  {
    v4 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v8 = 32 * v3;
  *(32 * v3) = *a2;
  if (*(a3 + 23) < 0)
  {
    sub_325C((32 * v3 + 8), *a3, *(a3 + 8));
    v9 = 32 * v3 + 32;
    v10 = *a1;
    v11 = a1[1];
    v12 = 32 * v3 + *a1 - v11;
    if (v11 == *a1)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *&dword_8[8 * v3] = *a3;
    *&dword_18[8 * v3] = *(a3 + 16);
    v9 = v8 + 32;
    v10 = *a1;
    v11 = a1[1];
    v12 = v8 + *a1 - v11;
    if (v11 == *a1)
    {
      goto LABEL_21;
    }
  }

  v13 = v10;
  v14 = v12;
  do
  {
    *v14 = *v13;
    v15 = *(v13 + 8);
    *(v14 + 24) = *(v13 + 24);
    *(v14 + 8) = v15;
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    *(v13 + 8) = 0;
    v13 += 32;
    v14 += 32;
  }

  while (v13 != v11);
  do
  {
    if (*(v10 + 31) < 0)
    {
      operator delete(*(v10 + 8));
    }

    v10 += 32;
  }

  while (v10 != v11);
  v10 = *a1;
LABEL_21:
  *a1 = v12;
  a1[1] = v9;
  a1[2] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v9;
}

void sub_E5C304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_243064(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E5C318(uint64_t *a1, char *a2, char *a3)
{
  v3 = (a1[1] - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_1794();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v4)
  {
    v4 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v16 = 32 * v3;
  sub_E5C498((32 * v3), a2, a3);
  v8 = 32 * v3 + 32;
  v9 = *a1;
  v10 = a1[1];
  v11 = v16 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v16 + *a1 - v10;
    do
    {
      *v13 = *v12;
      v14 = *(v12 + 8);
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 8) = v14;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = 0;
      v12 += 32;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
      }

      v9 += 32;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_E5C484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_E5C498(_BYTE *a1, char *a2, char *__s)
{
  v5 = *a2;
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v12) = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
    *(&__dst + v7) = 0;
    *a1 = v5;
    v8 = a1 + 8;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = __dst;
    sub_325C(v8, __dst, *(&__dst + 1));
    operator delete(v9);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = v5;
  v8 = a1 + 8;
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v8 = __dst;
  *(v8 + 2) = v12;
  return a1;
}

uint64_t sub_E5C5B8(uint64_t *a1, char *a2, char *a3)
{
  v3 = (a1[1] - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_1794();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v4)
  {
    v4 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v16 = 32 * v3;
  sub_E5C738((32 * v3), a2, a3);
  v8 = 32 * v3 + 32;
  v9 = *a1;
  v10 = a1[1];
  v11 = v16 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v16 + *a1 - v10;
    do
    {
      *v13 = *v12;
      v14 = *(v12 + 8);
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 8) = v14;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = 0;
      v12 += 32;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
      }

      v9 += 32;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_E5C724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_E5C738(_BYTE *a1, char *a2, char *__s)
{
  v5 = *a2;
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v12) = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
    *(&__dst + v7) = 0;
    *a1 = v5;
    v8 = a1 + 8;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = __dst;
    sub_325C(v8, __dst, *(&__dst + 1));
    operator delete(v9);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = v5;
  v8 = a1 + 8;
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v8 = __dst;
  *(v8 + 2) = v12;
  return a1;
}

uint64_t sub_E5C858(uint64_t *a1, char *a2, char *a3)
{
  v3 = (a1[1] - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_1794();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v4)
  {
    v4 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v16 = 32 * v3;
  sub_E5C9D8((32 * v3), a2, a3);
  v8 = 32 * v3 + 32;
  v9 = *a1;
  v10 = a1[1];
  v11 = v16 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v16 + *a1 - v10;
    do
    {
      *v13 = *v12;
      v14 = *(v12 + 8);
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 8) = v14;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = 0;
      v12 += 32;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
      }

      v9 += 32;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_E5C9C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_E5C9D8(_BYTE *a1, char *a2, char *__s)
{
  v5 = *a2;
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v12) = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
    *(&__dst + v7) = 0;
    *a1 = v5;
    v8 = a1 + 8;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = __dst;
    sub_325C(v8, __dst, *(&__dst + 1));
    operator delete(v9);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = v5;
  v8 = a1 + 8;
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v8 = __dst;
  *(v8 + 2) = v12;
  return a1;
}

uint64_t sub_E5CAF8(uint64_t *a1, char *a2, char *a3)
{
  v3 = (a1[1] - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_1794();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v4)
  {
    v4 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v16 = 32 * v3;
  sub_E5CC78((32 * v3), a2, a3);
  v8 = 32 * v3 + 32;
  v9 = *a1;
  v10 = a1[1];
  v11 = v16 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v16 + *a1 - v10;
    do
    {
      *v13 = *v12;
      v14 = *(v12 + 8);
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 8) = v14;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = 0;
      v12 += 32;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
      }

      v9 += 32;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_E5CC64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_E5CC78(_BYTE *a1, char *a2, char *__s)
{
  v5 = *a2;
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v12) = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
    *(&__dst + v7) = 0;
    *a1 = v5;
    v8 = a1 + 8;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = __dst;
    sub_325C(v8, __dst, *(&__dst + 1));
    operator delete(v9);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = v5;
  v8 = a1 + 8;
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v8 = __dst;
  *(v8 + 2) = v12;
  return a1;
}

uint64_t sub_E5CD98(uint64_t *a1, char *a2, char *a3)
{
  v3 = (a1[1] - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_1794();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v4)
  {
    v4 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v16 = 32 * v3;
  sub_E5CF18((32 * v3), a2, a3);
  v8 = 32 * v3 + 32;
  v9 = *a1;
  v10 = a1[1];
  v11 = v16 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v16 + *a1 - v10;
    do
    {
      *v13 = *v12;
      v14 = *(v12 + 8);
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 8) = v14;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = 0;
      v12 += 32;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
      }

      v9 += 32;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_E5CF04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_E5CF18(_BYTE *a1, char *a2, char *__s)
{
  v5 = *a2;
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v12) = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
    *(&__dst + v7) = 0;
    *a1 = v5;
    v8 = a1 + 8;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = __dst;
    sub_325C(v8, __dst, *(&__dst + 1));
    operator delete(v9);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = v5;
  v8 = a1 + 8;
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v8 = __dst;
  *(v8 + 2) = v12;
  return a1;
}

uint64_t sub_E5D038(uint64_t *a1, char *a2, char *a3)
{
  v3 = (a1[1] - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_1794();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v4)
  {
    v4 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v16 = 32 * v3;
  sub_E5D1B8((32 * v3), a2, a3);
  v8 = 32 * v3 + 32;
  v9 = *a1;
  v10 = a1[1];
  v11 = v16 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v16 + *a1 - v10;
    do
    {
      *v13 = *v12;
      v14 = *(v12 + 8);
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 8) = v14;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = 0;
      v12 += 32;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
      }

      v9 += 32;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_E5D1A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_E5D1B8(_BYTE *a1, char *a2, char *__s)
{
  v5 = *a2;
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v12) = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
    *(&__dst + v7) = 0;
    *a1 = v5;
    v8 = a1 + 8;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = __dst;
    sub_325C(v8, __dst, *(&__dst + 1));
    operator delete(v9);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = v5;
  v8 = a1 + 8;
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v8 = __dst;
  *(v8 + 2) = v12;
  return a1;
}

uint64_t sub_E5D2D8(uint64_t *a1, char *a2, char *a3)
{
  v3 = (a1[1] - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_1794();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v4)
  {
    v4 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v16 = 32 * v3;
  sub_E5D458((32 * v3), a2, a3);
  v8 = 32 * v3 + 32;
  v9 = *a1;
  v10 = a1[1];
  v11 = v16 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v16 + *a1 - v10;
    do
    {
      *v13 = *v12;
      v14 = *(v12 + 8);
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 8) = v14;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = 0;
      v12 += 32;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
      }

      v9 += 32;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_E5D444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_E5D458(_BYTE *a1, char *a2, char *__s)
{
  v5 = *a2;
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v12) = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
    *(&__dst + v7) = 0;
    *a1 = v5;
    v8 = a1 + 8;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = __dst;
    sub_325C(v8, __dst, *(&__dst + 1));
    operator delete(v9);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = v5;
  v8 = a1 + 8;
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v8 = __dst;
  *(v8 + 2) = v12;
  return a1;
}

uint64_t sub_E5D578(uint64_t *a1, char *a2, char *a3)
{
  v3 = (a1[1] - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_1794();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v4)
  {
    v4 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v16 = 32 * v3;
  sub_E5D6F8((32 * v3), a2, a3);
  v8 = 32 * v3 + 32;
  v9 = *a1;
  v10 = a1[1];
  v11 = v16 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v16 + *a1 - v10;
    do
    {
      *v13 = *v12;
      v14 = *(v12 + 8);
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 8) = v14;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = 0;
      v12 += 32;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
      }

      v9 += 32;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_E5D6E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_E5D6F8(_BYTE *a1, char *a2, char *__s)
{
  v5 = *a2;
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v12) = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
    *(&__dst + v7) = 0;
    *a1 = v5;
    v8 = a1 + 8;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = __dst;
    sub_325C(v8, __dst, *(&__dst + 1));
    operator delete(v9);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = v5;
  v8 = a1 + 8;
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v8 = __dst;
  *(v8 + 2) = v12;
  return a1;
}

uint64_t sub_E5D818(uint64_t *a1, char *a2, char *a3)
{
  v3 = (a1[1] - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_1794();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v4)
  {
    v4 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v16 = 32 * v3;
  sub_E5D998((32 * v3), a2, a3);
  v8 = 32 * v3 + 32;
  v9 = *a1;
  v10 = a1[1];
  v11 = v16 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v16 + *a1 - v10;
    do
    {
      *v13 = *v12;
      v14 = *(v12 + 8);
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 8) = v14;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = 0;
      v12 += 32;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
      }

      v9 += 32;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_E5D984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_E5D998(_BYTE *a1, char *a2, char *__s)
{
  v5 = *a2;
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v12) = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
    *(&__dst + v7) = 0;
    *a1 = v5;
    v8 = a1 + 8;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = __dst;
    sub_325C(v8, __dst, *(&__dst + 1));
    operator delete(v9);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = v5;
  v8 = a1 + 8;
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v8 = __dst;
  *(v8 + 2) = v12;
  return a1;
}

uint64_t sub_E5DAB8(uint64_t *a1, char *a2, char *a3)
{
  v3 = (a1[1] - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_1794();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v4)
  {
    v4 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v16 = 32 * v3;
  sub_E5DC38((32 * v3), a2, a3);
  v8 = 32 * v3 + 32;
  v9 = *a1;
  v10 = a1[1];
  v11 = v16 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v16 + *a1 - v10;
    do
    {
      *v13 = *v12;
      v14 = *(v12 + 8);
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 8) = v14;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = 0;
      v12 += 32;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
      }

      v9 += 32;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_E5DC24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_E5DC38(_BYTE *a1, char *a2, char *__s)
{
  v5 = *a2;
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v12) = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
    *(&__dst + v7) = 0;
    *a1 = v5;
    v8 = a1 + 8;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = __dst;
    sub_325C(v8, __dst, *(&__dst + 1));
    operator delete(v9);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = v5;
  v8 = a1 + 8;
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v8 = __dst;
  *(v8 + 2) = v12;
  return a1;
}

uint64_t sub_E5DD58(uint64_t *a1, char *a2, char *a3)
{
  v3 = (a1[1] - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_1794();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v4)
  {
    v4 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v16 = 32 * v3;
  sub_E5DED8((32 * v3), a2, a3);
  v8 = 32 * v3 + 32;
  v9 = *a1;
  v10 = a1[1];
  v11 = v16 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v16 + *a1 - v10;
    do
    {
      *v13 = *v12;
      v14 = *(v12 + 8);
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 8) = v14;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = 0;
      v12 += 32;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
      }

      v9 += 32;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_E5DEC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_E5DED8(_BYTE *a1, char *a2, char *__s)
{
  v5 = *a2;
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v12) = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
    *(&__dst + v7) = 0;
    *a1 = v5;
    v8 = a1 + 8;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = __dst;
    sub_325C(v8, __dst, *(&__dst + 1));
    operator delete(v9);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = v5;
  v8 = a1 + 8;
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v8 = __dst;
  *(v8 + 2) = v12;
  return a1;
}

uint64_t sub_E5DFF8(uint64_t *a1, char *a2, char *a3)
{
  v3 = (a1[1] - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_1794();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v4)
  {
    v4 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v16 = 32 * v3;
  sub_E5E178((32 * v3), a2, a3);
  v8 = 32 * v3 + 32;
  v9 = *a1;
  v10 = a1[1];
  v11 = v16 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v16 + *a1 - v10;
    do
    {
      *v13 = *v12;
      v14 = *(v12 + 8);
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 8) = v14;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = 0;
      v12 += 32;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
      }

      v9 += 32;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_E5E164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_E5E178(_BYTE *a1, char *a2, char *__s)
{
  v5 = *a2;
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v12) = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
    *(&__dst + v7) = 0;
    *a1 = v5;
    v8 = a1 + 8;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = __dst;
    sub_325C(v8, __dst, *(&__dst + 1));
    operator delete(v9);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = v5;
  v8 = a1 + 8;
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v8 = __dst;
  *(v8 + 2) = v12;
  return a1;
}

void *sub_E5E298(void *result)
{
  v1 = result[488];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = result;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    result = v2;
  }

  v3 = result[3];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v4 = result;
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    result = v4;
  }

  v5 = result[1];
  if (v5)
  {
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v6 = result;
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      return v6;
    }
  }

  return result;
}

uint64_t sub_E5E3B0(uint64_t *a1, char *a2, char *a3)
{
  v3 = (a1[1] - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_1794();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v4)
  {
    v4 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v16 = 32 * v3;
  sub_E5E530((32 * v3), a2, a3);
  v8 = 32 * v3 + 32;
  v9 = *a1;
  v10 = a1[1];
  v11 = v16 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v16 + *a1 - v10;
    do
    {
      *v13 = *v12;
      v14 = *(v12 + 8);
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 8) = v14;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = 0;
      v12 += 32;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
      }

      v9 += 32;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_E5E51C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_E5E530(_BYTE *a1, char *a2, char *__s)
{
  v5 = *a2;
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v12) = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
    *(&__dst + v7) = 0;
    *a1 = v5;
    v8 = a1 + 8;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = __dst;
    sub_325C(v8, __dst, *(&__dst + 1));
    operator delete(v9);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = v5;
  v8 = a1 + 8;
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v8 = __dst;
  *(v8 + 2) = v12;
  return a1;
}

uint64_t sub_E5E650(uint64_t *a1, char *a2, char *a3)
{
  v3 = (a1[1] - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_1794();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v4)
  {
    v4 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v16 = 32 * v3;
  sub_E5E7D0((32 * v3), a2, a3);
  v8 = 32 * v3 + 32;
  v9 = *a1;
  v10 = a1[1];
  v11 = v16 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v16 + *a1 - v10;
    do
    {
      *v13 = *v12;
      v14 = *(v12 + 8);
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 8) = v14;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = 0;
      v12 += 32;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
      }

      v9 += 32;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_E5E7BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_E5E7D0(_BYTE *a1, char *a2, char *__s)
{
  v5 = *a2;
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v12) = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
    *(&__dst + v7) = 0;
    *a1 = v5;
    v8 = a1 + 8;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = __dst;
    sub_325C(v8, __dst, *(&__dst + 1));
    operator delete(v9);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = v5;
  v8 = a1 + 8;
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v8 = __dst;
  *(v8 + 2) = v12;
  return a1;
}

uint64_t sub_E5E8F0(uint64_t *a1, char *a2, char *a3)
{
  v3 = (a1[1] - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_1794();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v4)
  {
    v4 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v16 = 32 * v3;
  sub_E5EA70((32 * v3), a2, a3);
  v8 = 32 * v3 + 32;
  v9 = *a1;
  v10 = a1[1];
  v11 = v16 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v16 + *a1 - v10;
    do
    {
      *v13 = *v12;
      v14 = *(v12 + 8);
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 8) = v14;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = 0;
      v12 += 32;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
      }

      v9 += 32;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_E5EA5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_E5EA70(_BYTE *a1, char *a2, char *__s)
{
  v5 = *a2;
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v12) = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
    *(&__dst + v7) = 0;
    *a1 = v5;
    v8 = a1 + 8;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = __dst;
    sub_325C(v8, __dst, *(&__dst + 1));
    operator delete(v9);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = v5;
  v8 = a1 + 8;
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v8 = __dst;
  *(v8 + 2) = v12;
  return a1;
}

uint64_t sub_E5EB90(uint64_t *a1, char *a2, char *a3)
{
  v3 = (a1[1] - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_1794();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v4)
  {
    v4 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v16 = 32 * v3;
  sub_E5ED10((32 * v3), a2, a3);
  v8 = 32 * v3 + 32;
  v9 = *a1;
  v10 = a1[1];
  v11 = v16 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v16 + *a1 - v10;
    do
    {
      *v13 = *v12;
      v14 = *(v12 + 8);
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 8) = v14;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = 0;
      v12 += 32;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
      }

      v9 += 32;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_E5ECFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_E5ED10(_BYTE *a1, char *a2, char *__s)
{
  v5 = *a2;
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v12) = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
    *(&__dst + v7) = 0;
    *a1 = v5;
    v8 = a1 + 8;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = __dst;
    sub_325C(v8, __dst, *(&__dst + 1));
    operator delete(v9);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = v5;
  v8 = a1 + 8;
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v8 = __dst;
  *(v8 + 2) = v12;
  return a1;
}

uint64_t sub_E5EE30(uint64_t *a1, char *a2, char *a3)
{
  v3 = (a1[1] - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_1794();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v4)
  {
    v4 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v16 = 32 * v3;
  sub_E5EFB0((32 * v3), a2, a3);
  v8 = 32 * v3 + 32;
  v9 = *a1;
  v10 = a1[1];
  v11 = v16 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v16 + *a1 - v10;
    do
    {
      *v13 = *v12;
      v14 = *(v12 + 8);
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 8) = v14;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = 0;
      v12 += 32;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
      }

      v9 += 32;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_E5EF9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_E5EFB0(_BYTE *a1, char *a2, char *__s)
{
  v5 = *a2;
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v12) = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
    *(&__dst + v7) = 0;
    *a1 = v5;
    v8 = a1 + 8;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = __dst;
    sub_325C(v8, __dst, *(&__dst + 1));
    operator delete(v9);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = v5;
  v8 = a1 + 8;
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v8 = __dst;
  *(v8 + 2) = v12;
  return a1;
}

uint64_t sub_E5F0D0(uint64_t *a1, char *a2, char *a3)
{
  v3 = (a1[1] - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_1794();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v4)
  {
    v4 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v16 = 32 * v3;
  sub_E5F250((32 * v3), a2, a3);
  v8 = 32 * v3 + 32;
  v9 = *a1;
  v10 = a1[1];
  v11 = v16 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v16 + *a1 - v10;
    do
    {
      *v13 = *v12;
      v14 = *(v12 + 8);
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 8) = v14;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = 0;
      v12 += 32;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
      }

      v9 += 32;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_E5F23C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_E5F250(_BYTE *a1, char *a2, char *__s)
{
  v5 = *a2;
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v12) = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
    *(&__dst + v7) = 0;
    *a1 = v5;
    v8 = a1 + 8;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = __dst;
    sub_325C(v8, __dst, *(&__dst + 1));
    operator delete(v9);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = v5;
  v8 = a1 + 8;
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v8 = __dst;
  *(v8 + 2) = v12;
  return a1;
}

uint64_t sub_E5F370(uint64_t *a1, char *a2, char *a3)
{
  v3 = (a1[1] - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_1794();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v4)
  {
    v4 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v16 = 32 * v3;
  sub_E5F4F0((32 * v3), a2, a3);
  v8 = 32 * v3 + 32;
  v9 = *a1;
  v10 = a1[1];
  v11 = v16 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v16 + *a1 - v10;
    do
    {
      *v13 = *v12;
      v14 = *(v12 + 8);
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 8) = v14;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = 0;
      v12 += 32;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
      }

      v9 += 32;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_E5F4DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_E5F4F0(_BYTE *a1, char *a2, char *__s)
{
  v5 = *a2;
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v12) = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
    *(&__dst + v7) = 0;
    *a1 = v5;
    v8 = a1 + 8;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = __dst;
    sub_325C(v8, __dst, *(&__dst + 1));
    operator delete(v9);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = v5;
  v8 = a1 + 8;
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v8 = __dst;
  *(v8 + 2) = v12;
  return a1;
}

uint64_t sub_E5F610(uint64_t *a1, char *a2, char *a3)
{
  v3 = (a1[1] - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_1794();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v4)
  {
    v4 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v16 = 32 * v3;
  sub_E5F790((32 * v3), a2, a3);
  v8 = 32 * v3 + 32;
  v9 = *a1;
  v10 = a1[1];
  v11 = v16 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v16 + *a1 - v10;
    do
    {
      *v13 = *v12;
      v14 = *(v12 + 8);
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 8) = v14;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = 0;
      v12 += 32;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
      }

      v9 += 32;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_E5F77C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_E5F790(_BYTE *a1, char *a2, char *__s)
{
  v5 = *a2;
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v12) = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
    *(&__dst + v7) = 0;
    *a1 = v5;
    v8 = a1 + 8;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = __dst;
    sub_325C(v8, __dst, *(&__dst + 1));
    operator delete(v9);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = v5;
  v8 = a1 + 8;
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v8 = __dst;
  *(v8 + 2) = v12;
  return a1;
}

uint64_t sub_E5F8B0(uint64_t *a1, char *a2, char *a3)
{
  v3 = (a1[1] - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_1794();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v4)
  {
    v4 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v16 = 32 * v3;
  sub_E5FA30((32 * v3), a2, a3);
  v8 = 32 * v3 + 32;
  v9 = *a1;
  v10 = a1[1];
  v11 = v16 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v16 + *a1 - v10;
    do
    {
      *v13 = *v12;
      v14 = *(v12 + 8);
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 8) = v14;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = 0;
      v12 += 32;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
      }

      v9 += 32;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_E5FA1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_E5FA30(_BYTE *a1, char *a2, char *__s)
{
  v5 = *a2;
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v12) = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
    *(&__dst + v7) = 0;
    *a1 = v5;
    v8 = a1 + 8;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = __dst;
    sub_325C(v8, __dst, *(&__dst + 1));
    operator delete(v9);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = v5;
  v8 = a1 + 8;
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v8 = __dst;
  *(v8 + 2) = v12;
  return a1;
}