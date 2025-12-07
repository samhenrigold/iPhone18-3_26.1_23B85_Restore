void sub_A6354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

double sub_A637C(uint64_t a1, double *a2, void **a3, void **a4, double *a5, uint64_t *a6)
{
  if (*a2 <= 0.0)
  {
    v12 = *(a1 + 48);
    sub_A6538("Custom function charging_function_add_logarithmic_segment() expects a strictly positive max_energy argument, got ", " Wh instead.", &__p);
    sub_B363C(v12, &__p);
    if (SHIBYTE(v24) < 0)
    {
      operator delete(__p);
    }
  }

  v13 = *a3;
  v14 = *a4;
  v15 = *a5;
  v16 = *a6;
  v17 = sub_6F390(*(a1 + 40));
  v18 = 0.0;
  if (v17)
  {
    sub_6F3A0(*(a1 + 40));
  }

  v19 = *a2;
  if (v18 * *a4 + *a5 <= 0.0 || v19 * *a4 + *a5 <= 0.0)
  {
    v21 = *(a1 + 48);
    sub_A67D4(&__p, "Custom function charging_function_add_logarithmic_segment(max_energy, a, b, c, d) expects that b * x + c is strictly positive for all x in the sub-domain of the logarithmic segment, got b = ", ", c = ", ", and the sub-domain is [", ", ", "].");
    sub_B36D4(v21, &__p);
    if (SHIBYTE(v24) < 0)
    {
      operator delete(__p);
    }
  }

  else if (v19 > v18)
  {
    v20 = *(a1 + 40);
    *&__p = v13;
    *(&__p + 1) = v14;
    v24 = v15;
    v25 = v16;
    v26 = 5;
    sub_6F5F4(v20, &__p, v18, v19);
  }

  return 0.0;
}

void sub_A6518(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A6538@<X0>(const char *a1@<X0>, const char *a3@<X2>, _BYTE *a4@<X8>)
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

void sub_A67C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_A67D4@<X0>(uint64_t *__return_ptr a1@<X8>, const char *a2@<X0>, const char *a4@<X2>, const char *a6@<X4>, const char *a8@<X6>, char *__s)
{
  sub_D7B0(v29);
  v15 = strlen(a2);
  sub_4A5C(&v30, a2, v15);
  v16 = std::ostream::operator<<();
  v17 = strlen(a4);
  sub_4A5C(v16, a4, v17);
  v18 = std::ostream::operator<<();
  v19 = strlen(a6);
  sub_4A5C(v18, a6, v19);
  v20 = std::ostream::operator<<();
  v21 = strlen(a8);
  sub_4A5C(v20, a8, v21);
  v22 = std::ostream::operator<<();
  v23 = strlen(__s);
  sub_4A5C(v22, __s, v23);
  if ((v40 & 0x10) != 0)
  {
    v25 = v39;
    if (v39 < v36)
    {
      v39 = v36;
      v25 = v36;
    }

    v26 = __src;
    v24 = v25 - __src;
    if (v25 - __src >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v40 & 8) == 0)
    {
      v24 = 0;
      *(a1 + 23) = 0;
      goto LABEL_12;
    }

    v26 = v33;
    v24 = v34 - v33;
    if ((v34 - v33) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v24 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v24;
  if (v24)
  {
    memmove(a1, v26, v24);
  }

LABEL_12:
  *(a1 + v24) = 0;
  v30 = v27;
  if (v38 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v32);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_A6B18(uint64_t a1, double *a2, double *a3)
{
  if (sub_6F390(*(a1 + 40)))
  {
    operator new();
  }

  operator new();
}

void sub_A6D88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A6DB0@<X0>(const char *a1@<X0>, const char *a3@<X2>, _BYTE *a4@<X8>)
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

void sub_A7038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_A704C@<X0>(const char *a1@<X0>, const char *a3@<X2>, const char *a5@<X4>, _BYTE *a6@<X8>)
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

void sub_A7308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

void sub_A7330(uint64_t a1, double *a2)
{
  v2 = *(a1 + 48);
  v4 = *v2;
  v3 = v2[1];
  if (*v2 == v3)
  {
    v7 = 0;
  }

  else
  {
    v5 = v4 + 1;
    do
    {
      v6 = *(v5 - 1);
      v7 = v6 != INFINITY;
    }

    while (v6 == INFINITY && v5++ != v3);
  }

  v9 = *(a1 + 56);
  v11 = *v9;
  v10 = v9[1];
  if (v11 == v10)
  {
LABEL_14:
    if (!v7)
    {
      *v11 = 0.0;
      *v4 = 0.0;
      if (sub_6F390(*(a1 + 40)))
      {
        operator new();
      }

      operator new();
    }
  }

  else
  {
    v12 = v11;
    while (*v12 == INFINITY)
    {
      if (++v12 == v10)
      {
        goto LABEL_14;
      }
    }
  }

  operator new();
}

void sub_A76DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A7704@<X0>(const char *a1@<X0>, const char *a3@<X2>, _BYTE *a4@<X8>)
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

void sub_A798C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

double sub_A79B8(uint64_t a1, double *a2, __n128 a3)
{
  if ((*a2 < -0.00001 || *a2 > 100.00001) && (v5 = *(a1 + 48), sub_A7AFC("Input parameter to custom function state_of_charge_to_energy_wh() is expected to be a percentage in the range [0, 100], got ", ".", __p), sub_B363C(v5, __p), v10 < 0))
  {
    operator delete(__p[0]);
    v6 = *(a1 + 40);
    if (v6)
    {
      return sub_2A31CC(v6, *a2, 10.0) / 1000.0;
    }
  }

  else
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      return sub_2A31CC(v6, *a2, 10.0) / 1000.0;
    }
  }

  v8 = *(a1 + 48);
  sub_A7D98("Custom function state_of_charge_to_energy_wh() called without initializing the state of charge conversion model.", __p);
  sub_B36D4(v8, __p);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  return 0.0;
}

void sub_A7ADC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A7AFC@<X0>(const char *a1@<X0>, const char *a3@<X2>, _BYTE *a4@<X8>)
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

void sub_A7D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_A7D98@<X0>(const char *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_D7B0(v10);
  v4 = strlen(a1);
  sub_4A5C(&v11, a1, v4);
  if ((v21 & 0x10) != 0)
  {
    v6 = v20;
    if (v20 < v17)
    {
      v20 = v17;
      v6 = v17;
    }

    v7 = v16;
    v5 = v6 - v16;
    if (v6 - v16 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v21 & 8) == 0)
    {
      v5 = 0;
      a2[23] = 0;
      goto LABEL_12;
    }

    v7 = v14;
    v5 = v15 - v14;
    if ((v15 - v14) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v5 >= 0x17)
  {
    operator new();
  }

  a2[23] = v5;
  if (v5)
  {
    memmove(a2, v7, v5);
  }

LABEL_12:
  a2[v5] = 0;
  v11 = v8;
  if (v19 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v13);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_A7FF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

void sub_A8220(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_5C010(&a15);
  v17 = v15[82];
  v15[82] = 0;
  if (v17)
  {
    operator delete();
  }

  sub_A2740(v15);
  _Unwind_Resume(a1);
}

void sub_A82A0(void *a1, void *a2, void *a3)
{
  sub_5F328(v8);
  HIBYTE(__p[2]) = 16;
  strcpy(__p, "model_parameters");
  v6 = sub_5FAAC(a2, __p, v8);
  sub_B4DD4(a1, v6);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  sub_B4DD4(a1, a3);
  memset(__p, 0, sizeof(__p));
  operator new();
}

void sub_A863C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_5BF68(&a16);
  sub_5C010(&a19);
  _Unwind_Resume(a1);
}

void sub_A86A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a18 < 0)
  {
    operator delete(__p);
    sub_5C010(&a19);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0xA8698);
}

void sub_A86E4(double *a1)
{
  sub_A3014(a1);
  v13 = v2;
  v3 = a1 + 79;
  v4 = a1[79];
  if (v4 == INFINITY)
  {
    sub_A8CCC("Charging time value not set explicitly in formula, falling back to formula result (", " seconds).", __p);
    sub_B363C((a1 + 46), __p);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    v4 = v13;
    *v3 = v13;
  }

  if (a1[80] == INFINITY)
  {
    a1[80] = a1[66];
  }

  if (v4 < -0.00001)
  {
    sub_A8F68("Negative charging time in EV charging time formula (", " seconds).", __p);
    sub_B363C((a1 + 46), __p);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    v4 = *v3;
  }

  v5 = a1[56];
  if (v4 > v5 + 0.00001)
  {
    sub_A9204("Evaluated charging time in EV charging time formula (", " hours) exceeds maximum allowed charging time (", " hours).", __p);
    sub_B363C((a1 + 46), __p);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v6 = a1[80];
  if (v6 >= -0.00001)
  {
    if (v6 >= a1[5] + -0.00001)
    {
      goto LABEL_19;
    }

    sub_A9770("Energy after charging in EV charging time formula is less than the current energy before charging (", " Wh < ", " Wh).", __p);
    sub_B363C((a1 + 46), __p);
  }

  else
  {
    sub_A94D4("Negative energy after charging in EV charging time formula (", " Wh).", __p);
    sub_B363C((a1 + 46), __p);
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
    v7 = a1 + 2;
    v8 = a1[2];
    v9 = a1[80];
    if (v9 <= v8 + 0.00001)
    {
      goto LABEL_25;
    }

LABEL_22:
    sub_A9A40("Energy after charging in EV charging time formula exceeds the battery's maximum battery threshold (", " Wh > ", " Wh).", __p);
    sub_B363C((a1 + 46), __p);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    v8 = *v7;
    v9 = a1[80];
LABEL_25:
    v10 = a1[56];
    if (v10 >= a1[79])
    {
      v10 = a1[79];
    }

    a1[79] = fmax(v10, 0.0);
    if (v8 >= v9)
    {
      v8 = v9;
    }

    if (a1[5] >= v8)
    {
      v8 = a1[5];
    }

    a1[80] = v8;
    operator new();
  }

LABEL_19:
  v7 = a1 + 2;
  v8 = a1[2];
  v9 = a1[80];
  if (v9 <= v8 + 0.00001)
  {
    goto LABEL_25;
  }

  goto LABEL_22;
}

void sub_A8C90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A8CCC@<X0>(const char *a1@<X0>, const char *a3@<X2>, _BYTE *a4@<X8>)
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

void sub_A8F54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_A8F68@<X0>(const char *a1@<X0>, const char *a3@<X2>, _BYTE *a4@<X8>)
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

void sub_A91F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_A9204@<X0>(const char *a1@<X0>, const char *a3@<X2>, const char *a5@<X4>, _BYTE *a6@<X8>)
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

void sub_A94C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_A94D4@<X0>(const char *a1@<X0>, const char *a3@<X2>, _BYTE *a4@<X8>)
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

void sub_A975C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_A9770@<X0>(const char *a1@<X0>, const char *a3@<X2>, const char *a5@<X4>, _BYTE *a6@<X8>)
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

void sub_A9A2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_A9A40@<X0>(const char *a1@<X0>, const char *a3@<X2>, const char *a5@<X4>, _BYTE *a6@<X8>)
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

void sub_A9CFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

void sub_AA124(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_4A48(a1);
}

uint64_t sub_AA22C(void *a1)
{
  v2 = a1[82];
  a1[82] = 0;
  if (v2)
  {
    operator delete();
  }

  return sub_A2740(a1);
}

double sub_AA29C(uint64_t a1, double *a2, double *a3)
{
  if (***(a1 + 40) != INFINITY && ***(a1 + 48) != INFINITY)
  {
    v5 = *a2;
    if (*a2 < -0.00001)
    {
      v6 = a3;
      v7 = a1;
      v8 = *(a1 + 80);
      v9 = a2;
      sub_AA894("Custom function evaluate_linear_charging_curve() called with negative initial energy (", " Wh).", __p);
      sub_B363C(v8, __p);
      a1 = v7;
      a3 = v6;
      if (v46 < 0)
      {
        operator delete(__p[0]);
        a3 = v6;
        a1 = v7;
      }

      a2 = v9;
      v5 = *v9;
    }

    if (v5 > *a3 + 0.00001)
    {
      v10 = a1;
      v11 = *(a1 + 80);
      v12 = a2;
      v13 = a3;
      sub_AAB30("Custom function evaluate_linear_charging_curve() expects initial energy to be less than (or equal to) the target energy, got ", " Wh > ", " Wh.", __p);
      sub_B363C(v11, __p);
      a1 = v10;
      a3 = v13;
      if (v46 < 0)
      {
        operator delete(__p[0]);
        a3 = v13;
        a1 = v10;
      }

      v5 = *v12;
    }

    v14 = *(a1 + 48);
    v15 = *v14;
    v16 = v14[1];
    v17 = v16 - *v14;
    if (v17)
    {
      v18 = v17 >> 3;
      v19 = v15;
      do
      {
        v20 = v18 >> 1;
        v21 = &v19[v18 >> 1];
        v23 = *v21;
        v22 = v21 + 1;
        v18 += ~(v18 >> 1);
        if (v23 < v5)
        {
          v19 = v22;
        }

        else
        {
          v18 = v20;
        }
      }

      while (v18);
      v24 = **(a1 + 40);
      v25 = v19 - v15;
      if (v19 != v15)
      {
LABEL_21:
        v26 = (v24 + v25);
        if (v16 == v19 || (v27 = *v19, *v19 == INFINITY))
        {
          v28 = *(v26 - 1);
          v29 = *a3;
          v30 = v16 - v15;
          if (v16 == v15)
          {
            goto LABEL_42;
          }
        }

        else
        {
          v41 = *(v19 - 1);
          if (v41 == v27)
          {
            v42 = 0.0;
          }

          else
          {
            v42 = (v5 - v41) / (v27 - v41);
          }

          v28 = *(v26 - 1) + (*v26 - *(v26 - 1)) * v42;
          v29 = *a3;
          v30 = v16 - v15;
          if (v16 == v15)
          {
LABEL_42:
            v32 = v16;
            v37 = v16 - v15;
            if (v16 == v15)
            {
LABEL_43:
              v40 = *v24;
              v29 = *v15;
LABEL_46:
              **(a1 + 72) = v29;
              **(a1 + 64) = v40 + **(a1 + 56) + *v24 - v28;
              return 0.0;
            }

LABEL_33:
            v38 = (v24 + v37);
            if (v16 == v32 || (v39 = *v32, *v32 == INFINITY))
            {
              v40 = *(v38 - 1);
              v29 = *(v32 - 1);
            }

            else
            {
              v43 = *(v32 - 1);
              if (v43 == v39)
              {
                v44 = 0.0;
              }

              else
              {
                v44 = (v29 - v43) / (v39 - v43);
              }

              v40 = *(v38 - 1) + (*v38 - *(v38 - 1)) * v44;
            }

            goto LABEL_46;
          }
        }

LABEL_27:
        v31 = v30 >> 3;
        v32 = v15;
        do
        {
          v33 = v31 >> 1;
          v34 = &v32[v31 >> 1];
          v36 = *v34;
          v35 = v34 + 1;
          v31 += ~(v31 >> 1);
          if (v36 < v29)
          {
            v32 = v35;
          }

          else
          {
            v31 = v33;
          }
        }

        while (v31);
        v37 = v32 - v15;
        if (v32 == v15)
        {
          goto LABEL_43;
        }

        goto LABEL_33;
      }
    }

    else
    {
      v19 = v16;
      v24 = **(a1 + 40);
      v25 = v16 - v15;
      if (v16 != v15)
      {
        goto LABEL_21;
      }
    }

    v28 = *v24;
    v29 = *a3;
    v30 = v16 - v15;
    if (v16 == v15)
    {
      goto LABEL_42;
    }

    goto LABEL_27;
  }

  v3 = *(a1 + 80);
  sub_AA624("Custom function evaluate_linear_charging_curve() called on an uninitialized charging curve.", __p);
  sub_B36D4(v3, __p);
  if (v46 < 0)
  {
    operator delete(__p[0]);
  }

  return 0.0;
}

void sub_AA600(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_AA624@<X0>(const char *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_D7B0(v10);
  v4 = strlen(a1);
  sub_4A5C(&v11, a1, v4);
  if ((v21 & 0x10) != 0)
  {
    v6 = v20;
    if (v20 < v17)
    {
      v20 = v17;
      v6 = v17;
    }

    v7 = v16;
    v5 = v6 - v16;
    if (v6 - v16 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v21 & 8) == 0)
    {
      v5 = 0;
      a2[23] = 0;
      goto LABEL_12;
    }

    v7 = v14;
    v5 = v15 - v14;
    if ((v15 - v14) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v5 >= 0x17)
  {
    operator new();
  }

  a2[23] = v5;
  if (v5)
  {
    memmove(a2, v7, v5);
  }

LABEL_12:
  a2[v5] = 0;
  v11 = v8;
  if (v19 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v13);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_AA880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_AA894@<X0>(const char *a1@<X0>, const char *a3@<X2>, _BYTE *a4@<X8>)
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

void sub_AAB1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_AAB30@<X0>(const char *a1@<X0>, const char *a3@<X2>, const char *a5@<X4>, _BYTE *a6@<X8>)
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

void sub_AADEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

double sub_AAE34(uint64_t a1, uint64_t a2)
{
  result = a2 / 100.0;
  *(a1 + 440) = result;
  return result;
}

double sub_AAE4C(uint64_t a1, double a2)
{
  result = a2 / 3.6;
  *(a1 + 424) = result;
  return result;
}

double sub_AAE60(uint64_t a1, double a2)
{
  result = a2 / 3.6;
  *(a1 + 432) = result;
  return result;
}

double sub_AAE74(uint64_t a1, int a2)
{
  result = a2 / 10.0;
  *(a1 + 448) = result;
  return result;
}

double sub_AAE88(uint64_t a1, int a2)
{
  result = a2 / 100.0;
  *(a1 + 456) = result;
  return result;
}

double sub_AAEA8(uint64_t a1, double *a2)
{
  result = *a2;
  *(a1 + 480) = *a2;
  return result;
}

double sub_AAEB4(uint64_t a1, double a2)
{
  result = a2 * 0.0000771604938;
  *(a1 + 472) = result;
  return result;
}

double sub_AAEC8(uint64_t a1, unsigned int a2)
{
  result = a2;
  *(a1 + 48) = a2;
  return result;
}

uint64_t sub_AAED4(uint64_t a1)
{
  v1 = *(a1 + 8) * 1000.0;
  if (v1 >= 0.0)
  {
    if (v1 < 4.50359963e15)
    {
      v2 = (v1 + v1) + 1;
      goto LABEL_6;
    }
  }

  else if (v1 > -4.50359963e15)
  {
    v2 = (v1 + v1) - 1 + (((v1 + v1) - 1) >> 63);
LABEL_6:
    v1 = (v2 >> 1);
  }

  return v1;
}

uint64_t sub_AAF40(uint64_t a1)
{
  v1 = *(a1 + 16) * 1000.0;
  if (v1 >= 0.0)
  {
    if (v1 < 4.50359963e15)
    {
      v2 = (v1 + v1) + 1;
      goto LABEL_6;
    }
  }

  else if (v1 > -4.50359963e15)
  {
    v2 = (v1 + v1) - 1 + (((v1 + v1) - 1) >> 63);
LABEL_6:
    v1 = (v2 >> 1);
  }

  return v1;
}

double sub_AAFAC(uint64_t a1, int a2)
{
  result = a2 / 10.0;
  *(a1 + 24) = result;
  return result;
}

double sub_AAFC0(uint64_t a1, unsigned int a2)
{
  if (a2 == -1)
  {
    result = 25.0;
    *(a1 + 32) = 25.0;
  }

  else
  {
    result = a2 / 1000.0 + -273.15;
    *(a1 + 32) = result;
  }

  return result;
}

double sub_AAFFC(uint64_t a1, int a2)
{
  result = a2 / 1000.0;
  *(a1 + 56) = result;
  return result;
}

uint64_t sub_AB018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 26) = 0;
  *(a2 + 28) = 0;
  *(a2 + 16) = 0x3E4CCCCD3F000000;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0;
  *(a2 + 72) = 32;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *a2 = xmmword_2267060;
  *(a2 + 24) = 256;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 103) = 0;
  v4 = malloc_type_malloc(0x300uLL, 0x1012040EC159624uLL);
  *(a2 + 104) = v4;
  sub_9D0FC(a2, v4, v4 + 24 * *(a2 + 72));
  v5 = *(a1 + 416);
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  sub_AB1B0(v5 + 472, &v12);
  if (v13 != *(&v12 + 1))
  {
    v6 = (*(&v12 + 1) + 8 * (v14 >> 7));
    v7 = (*v6 + 32 * (v14 & 0x7F));
    v8 = *(*(&v12 + 1) + (((*(&v14 + 1) + v14) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((*(&v14 + 1) + v14) & 0x7F);
    while (v7 != v8)
    {
      sub_BB558(a2, 1);
      if (sub_9D1CC(a2, v7) == -1)
      {
        sub_BB960(a2, v7, v9, v15);
      }

      v7 += 2;
      if (v7 - *v6 == "work/NaturalLanguage")
      {
        v10 = v6[1];
        ++v6;
        v7 = v10;
      }
    }
  }

  return sub_AB2E8(&v12);
}

void sub_AB17C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_AB2E8(&a9);
  sub_9BA14(v9);
  _Unwind_Resume(a1);
}

unint64_t sub_AB1B0(uint64_t a1, unint64_t *a2)
{
  if ((*(a1 + 8) & 1) == 0 && *(a1 + 9) != 1)
  {
    return 0;
  }

  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  if (v4 == v5)
  {
    return 0;
  }

  v6 = 0;
  do
  {
    v8 = &v4[4 * v6];
    v9 = *(v8 + 23);
    v10 = v8[1];
    if ((v9 & 0x80000000) == 0)
    {
      v10 = *(v8 + 23);
    }

    if (v10)
    {
      v11 = 0;
      v12 = v9 >> 63;
      do
      {
        if (v12)
        {
          v13 = *v8;
        }

        else
        {
          v13 = v8;
        }

        v14 = __tolower(v13[v11]);
        if (*(v8 + 23) >= 0)
        {
          v15 = v8;
        }

        else
        {
          v15 = *v8;
        }

        v15[v11++] = v14;
        v16 = *(v8 + 23);
        v12 = v16 >> 63;
        if ((v16 & 0x80000000) != 0)
        {
          v16 = v8[1];
        }
      }

      while (v11 < v16);
      v4 = *(a1 + 16);
      v5 = *(a1 + 24);
    }

    ++v6;
    v7 = (v5 - v4) >> 5;
  }

  while (v6 < v7);
  v18 = 126 - 2 * __clz(v7);
  if (v5 == v4)
  {
    v19 = 0;
  }

  else
  {
    v19 = v18;
  }

  sub_B8BDC(v4, v5, &v20, v19, 1);
  sub_BAEF4(*(a1 + 16), *(a1 + 24), a2);
  return a2[5];
}

uint64_t sub_AB2E8(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 == v2)
  {
    *(a1 + 40) = 0;
    v11 = 0;
    goto LABEL_13;
  }

  v4 = *(a1 + 32);
  v5 = &v2[v4 >> 7];
  v6 = *v5;
  v7 = *v5 + 32 * (v4 & 0x7F);
  v8 = *(v2 + (((*(a1 + 40) + v4) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((*(a1 + 40) + v4) & 0x7F);
  if (v7 == v8)
  {
    goto LABEL_11;
  }

  do
  {
    if (*(v7 + 23) < 0)
    {
      v9 = *v7;
      v7 += 32;
      operator delete(v9);
      v6 = *v5;
      if (v7 - *v5 != 4096)
      {
        continue;
      }
    }

    else
    {
      v7 += 32;
      if (v7 - v6 != 4096)
      {
        continue;
      }
    }

    v10 = v5[1];
    ++v5;
    v6 = v10;
    v7 = v10;
  }

  while (v7 != v8);
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
LABEL_11:
  *(a1 + 40) = 0;
  v11 = v3 - v2;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v11 = v3 - v2;
    }

    while (v11 > 2);
  }

LABEL_13:
  if (v11 == 1)
  {
    v12 = 64;
LABEL_18:
    *(a1 + 32) = v12;
  }

  else if (v11 == 2)
  {
    v12 = 128;
    goto LABEL_18;
  }

  if (v2 != v3)
  {
    do
    {
      v13 = *v2++;
      operator delete(v13);
    }

    while (v2 != v3);
    v15 = *(a1 + 8);
    v14 = *(a1 + 16);
    if (v14 != v15)
    {
      *(a1 + 16) = v14 + ((v15 - v14 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_AB488(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_1CEE8(a1, a2);
    *(a1 + 8) = result;
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      sub_325C(*(a1 + 8), *a2, *(a2 + 1));
    }

    else
    {
      v4 = *a2;
      *(v3 + 16) = *(a2 + 2);
      *v3 = v4;
    }

    result = v3 + 24;
    *(a1 + 8) = v3 + 24;
    *(a1 + 8) = v3 + 24;
  }

  return result;
}

uint64_t sub_AB520(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 32);
  if (v3 >= *(a1 + 40))
  {
    result = sub_1CEE8(a1 + 24, a2);
    *(a1 + 32) = result;
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      sub_325C(*(a1 + 32), *a2, *(a2 + 1));
    }

    else
    {
      v4 = *a2;
      *(v3 + 16) = *(a2 + 2);
      *v3 = v4;
    }

    result = v3 + 24;
    *(a1 + 32) = v3 + 24;
    *(a1 + 32) = v3 + 24;
  }

  return result;
}

uint64_t sub_AB5B8(uint64_t result, uint64_t **a2, uint64_t a3)
{
  v4 = result;
  v5 = *(result + 56);
  v73 = 0xAAAAAAAAAAAAAAABLL * ((*(result + 32) - *(result + 24)) >> 3);
  if (v73 == v5)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((*(result + 8) - *result) >> 3) == *(result + 48))
    {
      goto LABEL_48;
    }

    result = sub_7E7E4(2u);
    if (!result)
    {
      goto LABEL_48;
    }

    sub_19594F8(&v78);
    v6 = sub_4A5C(&v78, " [EV_MODEL_DEBUG] ", 18);
    v7 = *(a2 + 23);
    if (v7 >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    if (v7 >= 0)
    {
      v9 = *(a2 + 23);
    }

    else
    {
      v9 = a2[1];
    }

    v10 = sub_4A5C(v6, v8, v9);
    sub_4A5C(v10, ": ", 2);
    v11 = std::ostream::operator<<();
    sub_4A5C(v11, " errors and ", 12);
    v12 = std::ostream::operator<<();
    v13 = sub_4A5C(v12, " warnings occurred (model id ", 29);
    std::ostream::operator<<();
    sub_4A5C(v13, ").", 2);
    if ((v88 & 0x10) != 0)
    {
      v26 = v87;
      if (v87 < v84)
      {
        v87 = v84;
        v26 = v84;
      }

      v27 = v83;
      v14 = v26 - v83;
      if (v26 - v83 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_135;
      }
    }

    else
    {
      if ((v88 & 8) == 0)
      {
        v14 = 0;
        v77 = 0;
LABEL_42:
        *(&__dst + v14) = 0;
        sub_7E854(&__dst, 2u);
        goto LABEL_43;
      }

      v27 = v81[0];
      v14 = v82 - v81[0];
      if (v82 - v81[0] > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_135:
        sub_3244();
      }
    }

    if (v14 >= 0x17)
    {
      operator new();
    }

    v77 = v14;
    if (v14)
    {
      memmove(&__dst, v27, v14);
    }

    goto LABEL_42;
  }

  result = sub_7E7E4(3u);
  if (!result)
  {
    goto LABEL_48;
  }

  sub_19594F8(&v78);
  v15 = sub_4A5C(&v78, " [EV_MODEL_DEBUG] ", 18);
  v16 = *(a2 + 23);
  if (v16 >= 0)
  {
    v17 = a2;
  }

  else
  {
    v17 = *a2;
  }

  if (v16 >= 0)
  {
    v18 = *(a2 + 23);
  }

  else
  {
    v18 = a2[1];
  }

  v19 = sub_4A5C(v15, v17, v18);
  sub_4A5C(v19, ": ", 2);
  v20 = std::ostream::operator<<();
  sub_4A5C(v20, " errors and ", 12);
  v21 = std::ostream::operator<<();
  v22 = sub_4A5C(v21, " warnings occurred (model id ", 29);
  std::ostream::operator<<();
  sub_4A5C(v22, ").", 2);
  if ((v88 & 0x10) != 0)
  {
    v24 = v87;
    if (v87 < v84)
    {
      v87 = v84;
      v24 = v84;
    }

    v25 = v83;
    v23 = v24 - v83;
    if (v24 - v83 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_39:
      sub_3244();
    }

LABEL_26:
    if (v23 >= 0x17)
    {
      operator new();
    }

    v77 = v23;
    if (v23)
    {
      memmove(&__dst, v25, v23);
    }

    goto LABEL_31;
  }

  if ((v88 & 8) != 0)
  {
    v25 = v81[0];
    v23 = v82 - v81[0];
    if (v82 - v81[0] > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_39;
    }

    goto LABEL_26;
  }

  v23 = 0;
  v77 = 0;
LABEL_31:
  *(&__dst + v23) = 0;
  sub_7E854(&__dst, 3u);
LABEL_43:
  if (v77 < 0)
  {
    operator delete(__dst);
  }

  if (v86 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v80);
  std::ostream::~ostream();
  result = std::ios::~ios();
LABEL_48:
  v28 = v4[7];
  v29 = 0xAAAAAAAAAAAAAAABLL * ((v4[4] - v4[3]) >> 3);
  v30 = v28 >= v29;
  if (v28 > v29)
  {
    v29 = v4[7];
  }

  if (!v30)
  {
    v32 = 24 * v28;
    v33 = v29 - v28;
    while (1)
    {
      result = sub_7E7E4(3u);
      if (result)
      {
        break;
      }

LABEL_53:
      v32 += 24;
      if (!--v33)
      {
        goto LABEL_77;
      }
    }

    sub_19594F8(&v78);
    v34 = sub_4A5C(&v78, " [EV_MODEL_DEBUG] ", 18);
    v35 = sub_4A5C(v34, "Error: ", 7);
    v36 = v4[3] + v32;
    v37 = *(v36 + 23);
    if (v37 >= 0)
    {
      v38 = v4[3] + v32;
    }

    else
    {
      v38 = *v36;
    }

    if (v37 >= 0)
    {
      v39 = *(v36 + 23);
    }

    else
    {
      v39 = *(v36 + 8);
    }

    sub_4A5C(v35, v38, v39);
    if ((v88 & 0x10) != 0)
    {
      v41 = v87;
      v42 = &v83;
      if (v87 < v84)
      {
        v87 = v84;
        v41 = v84;
        v42 = &v83;
      }
    }

    else
    {
      if ((v88 & 8) == 0)
      {
        v40 = 0;
        v77 = 0;
LABEL_73:
        *(&__dst + v40) = 0;
        sub_7E854(&__dst, 3u);
        if (v77 < 0)
        {
          operator delete(__dst);
        }

        v78 = v74;
        *(&v78 + *(*&v74 - 24)) = v31;
        if (v86 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v80);
        std::ostream::~ostream();
        result = std::ios::~ios();
        goto LABEL_53;
      }

      v41 = v82;
      v42 = v81;
    }

    v43 = *v42;
    v40 = v41 - *v42;
    if (v40 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v40 >= 0x17)
    {
      operator new();
    }

    v77 = v41 - *v42;
    if (v40)
    {
      memmove(&__dst, v43, v40);
    }

    goto LABEL_73;
  }

LABEL_77:
  v44 = v4[6];
  v45 = 0xAAAAAAAAAAAAAAABLL * ((v4[1] - *v4) >> 3);
  v46 = v44 >= v45;
  if (v44 > v45)
  {
    v45 = v4[6];
  }

  if (!v46)
  {
    if (v73 == v5)
    {
      v48 = v45 - v44;
      v49 = 24 * v44;
      while (1)
      {
        result = sub_7E7E4(2u);
        if (result)
        {
          break;
        }

LABEL_83:
        v49 += 24;
        if (!--v48)
        {
          goto LABEL_133;
        }
      }

      sub_19594F8(&v78);
      v50 = sub_4A5C(&v78, " [EV_MODEL_DEBUG] ", 18);
      v51 = sub_4A5C(v50, "Warning: ", 9);
      v52 = *v4 + v49;
      v53 = *(v52 + 23);
      if (v53 >= 0)
      {
        v54 = *v4 + v49;
      }

      else
      {
        v54 = *v52;
      }

      if (v53 >= 0)
      {
        v55 = *(v52 + 23);
      }

      else
      {
        v55 = *(v52 + 8);
      }

      sub_4A5C(v51, v54, v55);
      if ((v88 & 0x10) != 0)
      {
        v57 = v87;
        v58 = &v83;
        if (v87 < v84)
        {
          v87 = v84;
          v57 = v84;
          v58 = &v83;
        }
      }

      else
      {
        if ((v88 & 8) == 0)
        {
          v56 = 0;
          v77 = 0;
LABEL_103:
          *(&__dst + v56) = 0;
          sub_7E854(&__dst, 2u);
          if (v77 < 0)
          {
            operator delete(__dst);
          }

          v78 = v75;
          *(&v78 + *(*&v75 - 24)) = v47;
          if (v86 < 0)
          {
            operator delete(__p);
          }

          std::locale::~locale(&v80);
          std::ostream::~ostream();
          result = std::ios::~ios();
          goto LABEL_83;
        }

        v57 = v82;
        v58 = v81;
      }

      v59 = *v58;
      v56 = v57 - *v58;
      if (v56 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v56 >= 0x17)
      {
        operator new();
      }

      v77 = v57 - *v58;
      if (v56)
      {
        memmove(&__dst, v59, v56);
      }

      goto LABEL_103;
    }

    v60 = 24 * v44;
    v61 = v45 - v44;
    while (1)
    {
      result = sub_7E7E4(1u);
      if (result)
      {
        break;
      }

LABEL_109:
      v60 += 24;
      if (!--v61)
      {
        goto LABEL_133;
      }
    }

    sub_19594F8(&v78);
    v62 = sub_4A5C(&v78, " [EV_MODEL_DEBUG] ", 18);
    v63 = sub_4A5C(v62, "Warning: ", 9);
    v64 = *v4 + v60;
    v65 = *(v64 + 23);
    if (v65 >= 0)
    {
      v66 = *v4 + v60;
    }

    else
    {
      v66 = *v64;
    }

    if (v65 >= 0)
    {
      v67 = *(v64 + 23);
    }

    else
    {
      v67 = *(v64 + 8);
    }

    sub_4A5C(v63, v66, v67);
    if ((v88 & 0x10) != 0)
    {
      v69 = v87;
      v70 = &v83;
      if (v87 < v84)
      {
        v87 = v84;
        v69 = v84;
        v70 = &v83;
      }
    }

    else
    {
      if ((v88 & 8) == 0)
      {
        v68 = 0;
        v77 = 0;
LABEL_129:
        *(&__dst + v68) = 0;
        sub_7E854(&__dst, 1u);
        if (v77 < 0)
        {
          operator delete(__dst);
        }

        v78 = v75;
        *(&v78 + *(*&v75 - 24)) = v47;
        if (v86 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v80);
        std::ostream::~ostream();
        result = std::ios::~ios();
        goto LABEL_109;
      }

      v69 = v82;
      v70 = v81;
    }

    v71 = *v70;
    v68 = v69 - *v70;
    if (v68 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v68 >= 0x17)
    {
      operator new();
    }

    v77 = v69 - *v70;
    if (v68)
    {
      memmove(&__dst, v71, v68);
    }

    goto LABEL_129;
  }

LABEL_133:
  v72 = 0xAAAAAAAAAAAAAAABLL * ((v4[4] - v4[3]) >> 3);
  v4[6] = 0xAAAAAAAAAAAAAAABLL * ((v4[1] - *v4) >> 3);
  v4[7] = v72;
  return result;
}

void sub_AC260(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
    sub_1959728(&a22);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a22);
  _Unwind_Resume(a1);
}

void sub_AC398(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    *__p = *a2;
    v5 = *(a2 + 16);
    v6 = 0;
    *(a1 + 25) = 1;
    if ((*(a1 + 103) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(*(a1 + 80));
    if ((SHIBYTE(v5) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  sub_325C(__p, *a2, *(a2 + 8));
  v6 = 0;
  *(a1 + 25) = 1;
  if (*(a1 + 103) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((SHIBYTE(v5) & 0x80000000) == 0)
  {
LABEL_4:
    *(a1 + 80) = *__p;
    *(a1 + 96) = v5;
    goto LABEL_8;
  }

LABEL_7:
  sub_325C((a1 + 80), __p[0], __p[1]);
LABEL_8:
  *(a1 + 104) = v6;
  v3 = malloc_type_malloc(32 * *(a1 + 72), 0x101204092066FB6uLL);
  *(a1 + 112) = v3;
  sub_BBC54(a1, v3, v3 + 32 * *(a1 + 72));
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_AC4A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_AC4BC(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    *v5 = *a2;
    v6 = *(a2 + 16);
    __p = 0;
    v8 = 0;
    v9 = 0;
    *(a1 + 25) = 1;
    v3 = *(a1 + 104);
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_325C(v5, *a2, *(a2 + 8));
  __p = 0;
  v8 = 0;
  v9 = 0;
  *(a1 + 25) = 1;
  v3 = *(a1 + 104);
  if (v3)
  {
LABEL_3:
    *(a1 + 112) = v3;
    operator delete(v3);
  }

LABEL_4:
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  sub_BBDB4(a1 + 80, v5);
  v4 = malloc_type_malloc(48 * *(a1 + 72), 0x109204087733E69uLL);
  *(a1 + 128) = v4;
  sub_BBD2C(a1, v4, v4 + 48 * *(a1 + 72));
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  if (SHIBYTE(v6) < 0)
  {
    operator delete(v5[0]);
  }
}

uint64_t sub_AC5E4(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2)
  {
    v3 = *(a1 + 72);
    if (v3)
    {
      v4 = 0;
      do
      {
        v5 = *(a1 + 112) + v4;
        if (*(v5 + 23) < 0)
        {
          operator delete(*v5);
        }

        v4 += 32;
        --v3;
      }

      while (v3);
      v2 = *(a1 + 112);
    }

    free(v2);
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
    if ((*(a1 + 55) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((*(a1 + 55) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*(a1 + 32));
  return a1;
}

void sub_AC694(uint64_t a1, int a2, int a3, int a4)
{
  *a1 = a2;
  *(a1 + 8) = a3 / 1000.0;
  *(a1 + 16) = a4 / 1000.0;
  *(a1 + 113) = 0;
  *(a1 + 116) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 104) = 0x3E4CCCCD3F000000;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 160) = 32;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0;
  *(a1 + 88) = xmmword_2267060;
  *(a1 + 208) = xmmword_2267060;
  *(a1 + 112) = 0;
  *(a1 + 233) = 0;
  *(a1 + 236) = 0;
  *(a1 + 224) = 0x3E4CCCCD3F000000;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0;
  *(a1 + 280) = 32;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0;
  *(a1 + 232) = 0;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0;
  operator new();
}

void sub_AC9EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  *(v15 + 376) = v18;
  if (a15 < 0)
  {
    operator delete(__p);
  }

  v20 = *(v16 + 328);
  *(v16 + 328) = 0;
  if (v20)
  {
    sub_BBAF0(v16 + 328, v20);
  }

  sub_919A4((v16 + 256));
  sub_B84B0(v17);
  sub_AC5E4(v16);
  if (*(v15 + 87) < 0)
  {
    operator delete(*(v15 + 64));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_ACAB0@<X0>(const char *a1@<X0>, const char *a3@<X2>, _BYTE *a4@<X8>)
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

void sub_ACD38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_ACD4C@<X0>(const char *a1@<X0>, const char *a3@<X2>, const char *a5@<X4>, _BYTE *a6@<X8>)
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

void sub_AD008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_AD01C(uint64_t a1)
{
  v2 = *(a1 + 416);
  *(a1 + 416) = 0;
  if (v2)
  {
    sub_BBAF0(a1 + 416, v2);
  }

  v3 = *(a1 + 368);
  if (v3)
  {
    v4 = *(a1 + 376);
    v5 = *(a1 + 368);
    if (v4 != v3)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 3;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v3);
      v5 = *(a1 + 368);
    }

    *(a1 + 376) = v3;
    operator delete(v5);
  }

  v7 = *(a1 + 344);
  if (v7)
  {
    v8 = *(a1 + 352);
    v9 = *(a1 + 344);
    if (v8 != v7)
    {
      do
      {
        v10 = *(v8 - 1);
        v8 -= 3;
        if (v10 < 0)
        {
          operator delete(*v8);
        }
      }

      while (v8 != v7);
      v9 = *(a1 + 344);
    }

    *(a1 + 352) = v7;
    operator delete(v9);
  }

  sub_B84B0(a1 + 208);
  v11 = *(a1 + 200);
  if (v11)
  {
    v12 = *(a1 + 160);
    if (v12)
    {
      v13 = 0;
      do
      {
        v14 = *(a1 + 200) + v13;
        if (*(v14 + 23) < 0)
        {
          operator delete(*v14);
        }

        v13 += 32;
        --v12;
      }

      while (v12);
      v11 = *(a1 + 200);
    }

    free(v11);
  }

  if ((*(a1 + 191) & 0x80000000) == 0)
  {
    if ((*(a1 + 143) & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

LABEL_32:
    operator delete(*(a1 + 120));
    if ((*(a1 + 87) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_33;
  }

  operator delete(*(a1 + 168));
  if (*(a1 + 143) < 0)
  {
    goto LABEL_32;
  }

LABEL_29:
  if ((*(a1 + 87) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_33:
  operator delete(*(a1 + 64));
  return a1;
}

void sub_AD190(void *a1, uint64_t **a2, uint64_t a3)
{
  if ((sub_AD2A4(a1[52], a2, a3, 0) & 1) == 0)
  {
    sub_AD500("Error adding the variable with name '", a2, "' and value ", ".", __p);
    v5 = a1[47];
    if (v5 >= a1[48])
    {
      a1[47] = sub_1CEE8((a1 + 46), __p);
      if (SHIBYTE(v8) < 0)
      {
LABEL_9:
        operator delete(__p[0]);
      }
    }

    else
    {
      if (SHIBYTE(v8) < 0)
      {
        sub_325C(a1[47], __p[0], __p[1]);
      }

      else
      {
        v6 = *__p;
        *(v5 + 16) = v8;
        *v5 = v6;
      }

      a1[47] = v5 + 24;
      a1[47] = v5 + 24;
      if (SHIBYTE(v8) < 0)
      {
        goto LABEL_9;
      }
    }
  }
}

void sub_AD27C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  *(v15 + 376) = v16;
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_AD2A4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*a1)
  {
    return 0;
  }

  v4 = *(*a1 + 8);
  if (!v4)
  {
    return 0;
  }

  v5 = *(a2 + 23);
  if (v5 < 0)
  {
    v6 = *(a2 + 8);
    if (!v6 || (**a2 & 0xDFu) - 65 >= 0x1A)
    {
      return 0;
    }
  }

  else
  {
    if (!*(a2 + 23) || (*a2 & 0xDFu) - 65 >= 0x1A)
    {
      return 0;
    }

    v6 = *(a2 + 23);
  }

  if (v6 >= 2)
  {
    v7 = v5 >= 0 ? *(a2 + 23) : *(a2 + 8);
    if (v7 >= 2)
    {
      if (v5 >= 0)
      {
        v8 = a2;
      }

      else
      {
        v8 = *a2;
      }

      v9 = 1;
      do
      {
        v10 = v8[v9];
        v11 = (v10 - 48) >= 0xA && (v10 & 0xFFFFFFDF) - 65 >= 0x1A;
        if (v11 && v10 != 95)
        {
          if ((v5 & 0x80000000) != 0)
          {
            v12 = *(a2 + 8);
            if (*(*a2 + v9) != 46)
            {
              return 0;
            }
          }

          else
          {
            v12 = *(a2 + 23);
            if (*(a2 + v9) != 46)
            {
              return 0;
            }
          }

          if (v9 >= v12 - 1)
          {
            return 0;
          }
        }
      }

      while (v7 != ++v9);
    }
  }

  v15 = a4;
  if ((v4 + 280) != sub_BC168(v4 + 272, a2))
  {
    return 0;
  }

  v18 = a2;
  v19 = *a1;
  v20 = *(*a1 + 8);
  if (v20)
  {
    v21 = *(a2 + 23);
    v22 = v21;
    v23 = *(a2 + 8);
    if ((v21 & 0x80u) == 0)
    {
      v24 = *(a2 + 23);
    }

    else
    {
      v24 = *(a2 + 8);
    }

    if (v24)
    {
      if ((v20 + 8) != sub_BC284(v20, a2))
      {
        return 0;
      }

      v21 = *(a2 + 23);
      v23 = *(a2 + 8);
      v19 = *a1;
      v22 = *(a2 + 23);
    }

    if (v22 >= 0)
    {
      v25 = v21;
    }

    else
    {
      v25 = v23;
    }

    if (v25)
    {
      v26 = *(v19 + 8);
      if ((v26 + 200) != sub_BC284(v26 + 192, a2))
      {
        return 0;
      }

      v21 = *(a2 + 23);
      v23 = *(a2 + 8);
      v19 = *a1;
      v22 = *(a2 + 23);
    }

    if (v22 < 0)
    {
      v21 = v23;
    }

    if (v21)
    {
      v27 = *(v19 + 8);
      if ((v27 + 40) != sub_BC284(v27 + 32, a2))
      {
        return 0;
      }

      v19 = *a1;
    }

    v28 = *(v19 + 8);
    if ((v28 + 280) != sub_BC168(v28 + 272, a2))
    {
      return 0;
    }

    v18 = a2;
    v29 = v15;
    v30 = a3;
    v19 = *a1;
  }

  else
  {
    v30 = a3;
    v29 = v15;
  }

  v31 = *(v19 + 8);

  return sub_BBEB0(v31, v18, v30, v29);
}

uint64_t sub_AD500@<X0>(const char *a1@<X0>, uint64_t **a2@<X1>, const char *a3@<X2>, const char *a5@<X4>, _BYTE *a6@<X8>)
{
  sub_D7B0(v25);
  v11 = strlen(a1);
  v12 = sub_4A5C(&v26, a1, v11);
  v13 = *(a2 + 23);
  if (v13 >= 0)
  {
    v14 = a2;
  }

  else
  {
    v14 = *a2;
  }

  if (v13 >= 0)
  {
    v15 = *(a2 + 23);
  }

  else
  {
    v15 = a2[1];
  }

  v16 = sub_4A5C(v12, v14, v15);
  v17 = strlen(a3);
  sub_4A5C(v16, a3, v17);
  v18 = std::ostream::operator<<();
  v19 = strlen(a5);
  sub_4A5C(v18, a5, v19);
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
      goto LABEL_22;
    }
  }

  else
  {
    if ((v36 & 8) == 0)
    {
      v20 = 0;
      a6[23] = 0;
      goto LABEL_18;
    }

    v22 = v29;
    v20 = v30 - v29;
    if ((v30 - v29) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_22:
      sub_3244();
    }
  }

  if (v20 >= 0x17)
  {
    operator new();
  }

  a6[23] = v20;
  if (v20)
  {
    memmove(a6, v22, v20);
  }

LABEL_18:
  a6[v20] = 0;
  v26 = v23;
  if (v34 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v28);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_AD7D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_AD7E4(uint64_t *a1, uint64_t a2, void *a3)
{
  if (!*a1)
  {
    return 0;
  }

  v3 = *(*a1 + 8);
  if (!v3)
  {
    return 0;
  }

  v4 = *(a2 + 23);
  if (v4 < 0)
  {
    v5 = *(a2 + 8);
    if (!v5 || (**a2 & 0xDFu) - 65 >= 0x1A)
    {
      return 0;
    }
  }

  else
  {
    if (!*(a2 + 23) || (*a2 & 0xDFu) - 65 >= 0x1A)
    {
      return 0;
    }

    v5 = *(a2 + 23);
  }

  if (v5 >= 2)
  {
    v6 = v4 >= 0 ? *(a2 + 23) : *(a2 + 8);
    if (v6 >= 2)
    {
      if (v4 >= 0)
      {
        v7 = a2;
      }

      else
      {
        v7 = *a2;
      }

      v8 = 1;
      do
      {
        v9 = v7[v8];
        v10 = (v9 - 48) >= 0xA && (v9 & 0xFFFFFFDF) - 65 >= 0x1A;
        if (v10 && v9 != 95)
        {
          if ((v4 & 0x80000000) != 0)
          {
            v11 = *(a2 + 8);
            if (*(*a2 + v8) != 46)
            {
              return 0;
            }
          }

          else
          {
            v11 = *(a2 + 23);
            if (*(a2 + v8) != 46)
            {
              return 0;
            }
          }

          if (v8 >= v11 - 1)
          {
            return 0;
          }
        }
      }

      while (v6 != ++v8);
    }
  }

  if ((v3 + 280) != sub_BC168(v3 + 272, a2))
  {
    return 0;
  }

  v16 = a2;
  v17 = a3;
  v18 = a1;
  v19 = *a1;
  if (*a1)
  {
    v20 = *(v19 + 8);
    if (v20)
    {
      v21 = *(a2 + 23);
      v22 = v21;
      v23 = *(a2 + 8);
      if ((v21 & 0x80u) == 0)
      {
        v24 = *(a2 + 23);
      }

      else
      {
        v24 = *(a2 + 8);
      }

      if (v24)
      {
        if ((v20 + 8) != sub_BC284(v20, a2))
        {
          return 0;
        }

        v21 = *(a2 + 23);
        v23 = *(a2 + 8);
        v19 = *a1;
        v22 = *(a2 + 23);
      }

      if (v22 >= 0)
      {
        v25 = v21;
      }

      else
      {
        v25 = v23;
      }

      if (v25)
      {
        v26 = *(v19 + 8);
        if ((v26 + 200) != sub_BC284(v26 + 192, a2))
        {
          return 0;
        }

        v21 = *(a2 + 23);
        v23 = *(a2 + 8);
        v19 = *a1;
        v22 = *(a2 + 23);
      }

      if (v22 < 0)
      {
        v21 = v23;
      }

      if (v21)
      {
        v27 = *(v19 + 8);
        if ((v27 + 40) != sub_BC284(v27 + 32, a2))
        {
          return 0;
        }

        v19 = *a1;
      }

      v28 = *(v19 + 8);
      v29 = (v28 + 280);
      v30 = sub_BC168(v28 + 272, a2);
      v16 = a2;
      v17 = a3;
      v18 = a1;
      if (v29 != v30)
      {
        return 0;
      }
    }
  }

  if (v17[1] == *v17)
  {
    return 0;
  }

  v31 = *(*v18 + 8) + 192;

  return sub_BC7B8(v31, v16, v17, 0);
}

uint64_t sub_ADA44@<X0>(const char *a1@<X0>, uint64_t **a2@<X1>, const char *a3@<X2>, _BYTE *a4@<X8>)
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

void sub_ADCE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

double *sub_ADCF4(uint64_t a1, double a2, __int128 *a3)
{
  result = sub_BCF18((a1 + 88), a3);
  result[3] = a2;
  return result;
}

void sub_ADD20(void *a1, void *a2)
{
  v2 = a2;
  v4 = sub_588E0(a2);
  v5 = sub_5FC5C();
  if (v4 != v5)
  {
    v6 = v5;
    v31 = v2;
    v32 = a1;
    v30 = v5;
    do
    {
      v8 = *(v4 + 48);
      if ((v8 - 2) <= 2)
      {
        v7 = sub_63D34(v2, (v4 + 16));
        *(sub_BCF18(a1 + 11, (v4 + 16)) + 3) = v7;
        goto LABEL_5;
      }

      if (v8 == 6)
      {
        v9 = sub_5F680(v2, (v4 + 16));
        v10 = *v9;
        v11 = v9[1];
        if (*v9 != v11)
        {
          v12 = 0;
          while (1)
          {
            v13 = *(v10 + 2);
            if ((v13 - 2) <= 2)
            {
              if (v13 == 4)
              {
                v14 = *v10;
              }

              else if (v13 == 3)
              {
                v14 = *v10;
              }

              else
              {
                v14 = *v10;
              }

              v23 = v12;
              v24 = v12 >> 3;
              if (((v12 >> 3) + 1) >> 61)
              {
                sub_1794();
              }

              if (v12 >> 3 != -1)
              {
                if (!(((v12 >> 3) + 1) >> 61))
                {
                  operator new();
                }

                sub_1808();
              }

              *(8 * v24) = v14;
              v12 = 8 * v24 + 8;
              memcpy(0, 0, v23);
              goto LABEL_10;
            }

            if (v13 == 6)
            {
              v16 = **v10;
              for (i = (*v10)[1]; v16 != i; v16 += 16)
              {
                v17 = *(v16 + 8);
                switch(v17)
                {
                  case 4:
                    v18 = *v16;
                    break;
                  case 3:
                    v18 = *v16;
                    break;
                  case 2:
                    v18 = *v16;
                    break;
                  default:
                    exception = __cxa_allocate_exception(0x40uLL);
                    v29 = sub_2D390(exception, "cannot convert json value to a number", 0x25uLL);
                }

                v19 = v12;
                v20 = v12 >> 3;
                if ((v20 + 1) >> 61)
                {
                  sub_1794();
                }

                if (v20 != -1)
                {
                  if (!((v20 + 1) >> 61))
                  {
                    operator new();
                  }

                  sub_1808();
                }

                MEMORY[0xFFFFFFFFFFFFFFF8] = *&v18;
                v12 = 0;
                memcpy(0, 0, v19);
              }

              goto LABEL_10;
            }

            sub_AE2A0("Unexpected parameter type in array ", (v4 + 16), " while parsing EV model JSON.", __p);
            v21 = v32[47];
            if (v21 < v32[48])
            {
              break;
            }

            v32[47] = sub_1CEE8((v32 + 46), __p);
            if (SHIBYTE(v36) < 0)
            {
              goto LABEL_43;
            }

LABEL_10:
            v10 += 2;
            if (v10 == v11)
            {
              goto LABEL_51;
            }
          }

          if (SHIBYTE(v36) < 0)
          {
            sub_325C(v32[47], __p[0], __p[1]);
          }

          else
          {
            v22 = *__p;
            *(v21 + 16) = v36;
            *v21 = v22;
          }

          v32[47] = v21 + 24;
          v32[47] = v21 + 24;
          if ((SHIBYTE(v36) & 0x80000000) == 0)
          {
            goto LABEL_10;
          }

LABEL_43:
          operator delete(__p[0]);
          goto LABEL_10;
        }

        v12 = 0;
LABEL_51:
        a1 = v32;
        v27 = sub_BE1FC((v32 + 26), (v4 + 16));
        sub_31F64((v27 + 24), 0, v12, v12 >> 3);
        v6 = v30;
        v2 = v31;
        goto LABEL_5;
      }

      sub_60FF8(v4 + 40, v33);
      sub_AE550("Unexpected parameter type while parsing EV model JSON: ", (v4 + 16), ": ", v33, __p);
      v25 = a1[47];
      if (v25 >= a1[48])
      {
        a1[47] = sub_1CEE8((a1 + 46), __p);
        if ((SHIBYTE(v36) & 0x80000000) == 0)
        {
          goto LABEL_48;
        }
      }

      else
      {
        if (SHIBYTE(v36) < 0)
        {
          sub_325C(a1[47], __p[0], __p[1]);
        }

        else
        {
          v26 = *__p;
          *(v25 + 16) = v36;
          *v25 = v26;
        }

        a1[47] = v25 + 24;
        a1[47] = v25 + 24;
        if ((SHIBYTE(v36) & 0x80000000) == 0)
        {
LABEL_48:
          if (v34 < 0)
          {
            goto LABEL_55;
          }

          goto LABEL_5;
        }
      }

      operator delete(__p[0]);
      if (v34 < 0)
      {
LABEL_55:
        operator delete(v33[0]);
      }

LABEL_5:
      v4 = *v4;
    }

    while (v4 != v6);
  }
}

void sub_AE204(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  *(v24 + 376) = v25;
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_AE284(_Unwind_Exception *a1)
{
  if (!v1)
  {
    _Unwind_Resume(a1);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_AE2A0@<X0>(const char *a1@<X0>, uint64_t **a2@<X1>, const char *a3@<X2>, _BYTE *a4@<X8>)
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

void sub_AE53C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_AE550@<X0>(const char *a1@<X0>, uint64_t **a2@<X1>, const char *a3@<X2>, uint64_t **a4@<X3>, _BYTE *a5@<X8>)
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

void sub_AE814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

std::string *sub_AE828(std::string *result, int a2, uint64_t **a3)
{
  v3 = *a3;
  v4 = a3[1];
  if (*a3 != v4)
  {
    v5 = &result[a2];
    do
    {
      if (*(v3 + 8) != 1)
      {
        sub_5AF20();
      }

      v7 = *v3;
      v3 += 16;
      v6 = v7;
      v8 = *(v7 + 23);
      v9 = *v7;
      v10 = *(v7 + 8);
      if ((v8 & 0x80u) == 0)
      {
        v11 = v6;
      }

      else
      {
        v11 = v9;
      }

      if ((v8 & 0x80u) == 0)
      {
        v12 = v8;
      }

      else
      {
        v12 = v10;
      }

      result = std::string::append((v5 + 64), v11, v12);
    }

    while (v3 != v4);
  }

  return result;
}

void sub_AE89C(void *a1)
{
  sub_AF7DC(a1[52] + 192);
  v2 = a1[52];
  v3 = sub_BC284((v2 + 29), qword_2267CE0);
  if (v2 + 30 != v3)
  {
    v4 = v3;
    v5 = v3[1];
    if (v5)
    {
      do
      {
        v6 = v5;
        v5 = *v5;
      }

      while (v5);
    }

    else
    {
      v7 = v3;
      do
      {
        v6 = v7[2];
        v8 = *v6 == v7;
        v7 = v6;
      }

      while (!v8);
    }

    if (v2[29] == v3)
    {
      v2[29] = v6;
    }

    v9 = v2[30];
    --v2[31];
    sub_195B378(v9, v4);
    if (*(v4 + 55) < 0)
    {
      operator delete(v4[4]);
    }

    operator delete(v4);
  }

  v10 = 0;
  v11 = a1[52];
  v14 = *(v11 + 208);
  v13 = (v11 + 208);
  v12 = v14;
  do
  {
    v15 = sub_BF33C(v13, v12, &qword_2267D40[v10], &qword_2267D40[v10]);
    v16 = v15[1];
    if (v16)
    {
      do
      {
        v12 = v16;
        v16 = *v16;
      }

      while (v16);
    }

    else
    {
      do
      {
        v12 = v15[2];
        v8 = *v12 == v15;
        v15 = v12;
      }

      while (!v8);
    }

    v10 += 3;
  }

  while (v10 != 174);
  v17 = a1[52];
  v18 = sub_BC284((v17 + 26), qword_2267D40);
  if (v17 + 27 != v18)
  {
    v19 = v18;
    v20 = v18[1];
    if (v20)
    {
      do
      {
        v21 = v20;
        v20 = *v20;
      }

      while (v20);
    }

    else
    {
      v22 = v18;
      do
      {
        v21 = v22[2];
        v8 = *v21 == v22;
        v22 = v21;
      }

      while (!v8);
    }

    if (v17[26] == v18)
    {
      v17[26] = v21;
    }

    v23 = v17[27];
    --v17[28];
    sub_195B378(v23, v19);
    if (*(v19 + 55) < 0)
    {
      operator delete(v19[4]);
    }

    operator delete(v19);
  }

  v24 = a1[52];
  v25 = sub_BC284((v24 + 26), qword_2268028);
  if (v24 + 27 != v25)
  {
    v26 = v25;
    v27 = v25[1];
    if (v27)
    {
      do
      {
        v28 = v27;
        v27 = *v27;
      }

      while (v27);
    }

    else
    {
      v29 = v25;
      do
      {
        v28 = v29[2];
        v8 = *v28 == v29;
        v29 = v28;
      }

      while (!v8);
    }

    if (v24[26] == v25)
    {
      v24[26] = v28;
    }

    v30 = v24[27];
    --v24[28];
    sub_195B378(v30, v26);
    if (*(v26 + 55) < 0)
    {
      operator delete(v26[4]);
    }

    operator delete(v26);
  }

  v31 = a1[52];
  v32 = sub_BC284((v31 + 26), qword_2268040);
  if (v31 + 27 != v32)
  {
    v33 = v32;
    v34 = v32[1];
    if (v34)
    {
      do
      {
        v35 = v34;
        v34 = *v34;
      }

      while (v34);
    }

    else
    {
      v36 = v32;
      do
      {
        v35 = v36[2];
        v8 = *v35 == v36;
        v36 = v35;
      }

      while (!v8);
    }

    if (v31[26] == v32)
    {
      v31[26] = v35;
    }

    v37 = v31[27];
    --v31[28];
    sub_195B378(v37, v33);
    if (*(v33 + 55) < 0)
    {
      operator delete(v33[4]);
    }

    operator delete(v33);
  }

  v38 = a1[52];
  v39 = sub_BC284((v38 + 26), qword_2268148);
  if (v38 + 27 != v39)
  {
    v40 = v39;
    v41 = v39[1];
    if (v41)
    {
      do
      {
        v42 = v41;
        v41 = *v41;
      }

      while (v41);
    }

    else
    {
      v43 = v39;
      do
      {
        v42 = v43[2];
        v8 = *v42 == v43;
        v43 = v42;
      }

      while (!v8);
    }

    if (v38[26] == v39)
    {
      v38[26] = v42;
    }

    v44 = v38[27];
    --v38[28];
    sub_195B378(v44, v40);
    if (*(v40 + 55) < 0)
    {
      operator delete(v40[4]);
    }

    operator delete(v40);
  }

  v45 = a1[52];
  v46 = sub_BC284((v45 + 26), qword_2267E48);
  if (v45 + 27 != v46)
  {
    v47 = v46;
    v48 = v46[1];
    if (v48)
    {
      do
      {
        v49 = v48;
        v48 = *v48;
      }

      while (v48);
    }

    else
    {
      v50 = v46;
      do
      {
        v49 = v50[2];
        v8 = *v49 == v50;
        v50 = v49;
      }

      while (!v8);
    }

    if (v45[26] == v46)
    {
      v45[26] = v49;
    }

    v51 = v45[27];
    --v45[28];
    sub_195B378(v51, v47);
    if (*(v47 + 55) < 0)
    {
      operator delete(v47[4]);
    }

    operator delete(v47);
  }

  sub_AF95C(a1[52] + 192);
  sub_BFAC0(a1[52] + 280, &unk_22683E8, &unk_22683E8);
  sub_BFAC0(a1[52] + 280, &unk_2268400, &unk_2268400);
  sub_BFAC0(a1[52] + 304, &unk_2268490, &unk_2268490);
  v55 = 21;
  strcpy(__p, "battery_min_energy_wh");
  v52 = a1[1];
  *(sub_BCF18(a1 + 11, __p) + 3) = v52;
  if (v55 < 0)
  {
    operator delete(*__p);
  }

  v55 = 21;
  strcpy(__p, "battery_max_energy_wh");
  v53 = a1[2];
  *(sub_BCF18(a1 + 11, __p) + 3) = v53;
  if (v55 < 0)
  {
    operator delete(*__p);
  }

  v55 = 19;
  strcpy(__p, "trip_elapsed_time_s");
  sub_AD190(a1, __p, (a1 + 3));
  if (v55 < 0)
  {
    operator delete(*__p);
  }

  operator new();
}

void sub_AF774(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_AF7DC(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = sub_BF33C((a1 + 40), *(a1 + 40), "if", "if");
  v4 = v3[1];
  if (v4)
  {
    do
    {
      v5 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  else
  {
    do
    {
      v5 = v3[2];
      v6 = *v5 == v3;
      v3 = v5;
    }

    while (!v6);
  }

  v7 = sub_BF33C(v2, v5, "switch", "switch");
  v8 = v7[1];
  if (v8)
  {
    do
    {
      v9 = v8;
      v8 = *v8;
    }

    while (v8);
  }

  else
  {
    do
    {
      v9 = v7[2];
      v6 = *v9 == v7;
      v7 = v9;
    }

    while (!v6);
  }

  v10 = sub_BF33C(v2, v9, &unk_2267CE0, &unk_2267CE0);
  v11 = v10[1];
  if (v11)
  {
    do
    {
      v12 = v11;
      v11 = *v11;
    }

    while (v11);
  }

  else
  {
    do
    {
      v12 = v10[2];
      v6 = *v12 == v10;
      v10 = v12;
    }

    while (!v6);
  }

  v13 = sub_BF33C(v2, v12, "while", "while");
  v14 = v13[1];
  if (v14)
  {
    do
    {
      v15 = v14;
      v14 = *v14;
    }

    while (v14);
  }

  else
  {
    do
    {
      v15 = v13[2];
      v6 = *v15 == v13;
      v13 = v15;
    }

    while (!v6);
  }

  v16 = sub_BF33C(v2, v15, "repeat", "repeat");
  v17 = v16[1];
  if (v17)
  {
    do
    {
      v18 = v17;
      v17 = *v17;
    }

    while (v17);
  }

  else
  {
    do
    {
      v18 = v16[2];
      v6 = *v18 == v16;
      v16 = v18;
    }

    while (!v6);
  }

  sub_BF33C(v2, v18, "return", "return");
  return a1;
}

uint64_t sub_AF95C(uint64_t a1)
{
  v2 = (a1 + 64);
  v3 = sub_BF33C((a1 + 64), *(a1 + 64), &unk_22682B0, &unk_22682B0);
  v4 = v3[1];
  if (v4)
  {
    do
    {
      v5 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  else
  {
    do
    {
      v5 = v3[2];
      v6 = *v5 == v3;
      v3 = v5;
    }

    while (!v6);
  }

  v7 = sub_BF33C(v2, v5, "nand", "nand");
  v8 = v7[1];
  if (v8)
  {
    do
    {
      v9 = v8;
      v8 = *v8;
    }

    while (v8);
  }

  else
  {
    do
    {
      v9 = v7[2];
      v6 = *v9 == v7;
      v7 = v9;
    }

    while (!v6);
  }

  v10 = sub_BF33C(v2, v9, &unk_22682E0, &unk_22682E0);
  v11 = v10[1];
  if (v11)
  {
    do
    {
      v12 = v11;
      v11 = *v11;
    }

    while (v11);
  }

  else
  {
    do
    {
      v12 = v10[2];
      v6 = *v12 == v10;
      v10 = v12;
    }

    while (!v6);
  }

  v13 = sub_BF33C(v2, v12, &unk_22682F8, &unk_22682F8);
  v14 = v13[1];
  if (v14)
  {
    do
    {
      v15 = v14;
      v14 = *v14;
    }

    while (v14);
  }

  else
  {
    do
    {
      v15 = v13[2];
      v6 = *v15 == v13;
      v13 = v15;
    }

    while (!v6);
  }

  v16 = sub_BF33C(v2, v15, &unk_2268310, &unk_2268310);
  v17 = v16[1];
  if (v17)
  {
    do
    {
      v18 = v17;
      v17 = *v17;
    }

    while (v17);
  }

  else
  {
    do
    {
      v18 = v16[2];
      v6 = *v18 == v16;
      v16 = v18;
    }

    while (!v6);
  }

  v19 = sub_BF33C(v2, v18, "xnor", "xnor");
  v20 = v19[1];
  if (v20)
  {
    do
    {
      v21 = v20;
      v20 = *v20;
    }

    while (v20);
  }

  else
  {
    do
    {
      v21 = v19[2];
      v6 = *v21 == v19;
      v19 = v21;
    }

    while (!v6);
  }

  v22 = sub_BF33C(v2, v21, &unk_2268340, &unk_2268340);
  v23 = v22[1];
  if (v23)
  {
    do
    {
      v24 = v23;
      v23 = *v23;
    }

    while (v23);
  }

  else
  {
    do
    {
      v24 = v22[2];
      v6 = *v24 == v22;
      v22 = v24;
    }

    while (!v6);
  }

  v25 = sub_BF33C(v2, v24, &unk_2268358, &unk_2268358);
  v26 = v25[1];
  if (v26)
  {
    do
    {
      v27 = v26;
      v26 = *v26;
    }

    while (v26);
  }

  else
  {
    do
    {
      v27 = v25[2];
      v6 = *v27 == v25;
      v25 = v27;
    }

    while (!v6);
  }

  sub_BF33C(v2, v27, &unk_2268370, &unk_2268370);
  return a1;
}

uint64_t sub_AFB9C(uint64_t *a1, uint64_t a2, void *a3)
{
  if (*a1)
  {
    v3 = *(*a1 + 8);
    if (v3)
    {
      v4 = *(a2 + 23);
      if (v4 < 0)
      {
        v5 = *(a2 + 8);
        if (!v5 || (**a2 & 0xDFu) - 65 >= 0x1A)
        {
          return 0;
        }
      }

      else
      {
        if (!*(a2 + 23) || (*a2 & 0xDFu) - 65 >= 0x1A)
        {
          return 0;
        }

        v5 = *(a2 + 23);
      }

      if (v5 < 2 || (v4 >= 0 ? (v6 = *(a2 + 23)) : (v6 = *(a2 + 8)), v6 < 2))
      {
LABEL_31:
        if ((v3 + 280) == sub_BC168(v3 + 272, a2))
        {
          v15 = *a1;
          v16 = *(*a1 + 8);
          if (v16)
          {
            v17 = *(a2 + 23);
            v18 = v17;
            v19 = *(a2 + 8);
            if ((v17 & 0x80u) == 0)
            {
              v20 = *(a2 + 23);
            }

            else
            {
              v20 = *(a2 + 8);
            }

            if (v20)
            {
              if ((v16 + 8) != sub_BC284(v16, a2))
              {
                return 0;
              }

              v17 = *(a2 + 23);
              v19 = *(a2 + 8);
              v15 = *a1;
              v18 = *(a2 + 23);
            }

            if (v18 >= 0)
            {
              v21 = v17;
            }

            else
            {
              v21 = v19;
            }

            if (v21)
            {
              v22 = *(v15 + 8);
              if ((v22 + 200) != sub_BC284(v22 + 192, a2))
              {
                return 0;
              }

              v17 = *(a2 + 23);
              v19 = *(a2 + 8);
              v15 = *a1;
              v18 = *(a2 + 23);
            }

            if (v18 < 0)
            {
              v17 = v19;
            }

            if (v17)
            {
              v23 = *(v15 + 8);
              if ((v23 + 40) != sub_BC284(v23 + 32, a2))
              {
                return 0;
              }

              v15 = *a1;
            }

            v24 = *(v15 + 8);
            if ((v24 + 280) != sub_BC168(v24 + 272, a2))
            {
              return 0;
            }
          }

          operator new();
        }
      }

      else
      {
        if (v4 >= 0)
        {
          v7 = a2;
        }

        else
        {
          v7 = *a2;
        }

        v8 = 1;
        while (1)
        {
          v9 = *(v7 + v8);
          v10 = (v9 - 48) >= 0xA && (v9 & 0xFFFFFFDF) - 65 >= 0x1A;
          if (v10 && v9 != 95)
          {
            if ((v4 & 0x80000000) != 0)
            {
              v11 = *(a2 + 8);
              if (*(*a2 + v8) != 46)
              {
                return 0;
              }
            }

            else
            {
              v11 = *(a2 + 23);
              if (*(a2 + v8) != 46)
              {
                return 0;
              }
            }

            if (v8 >= v11 - 1)
            {
              break;
            }
          }

          if (v6 == ++v8)
          {
            goto LABEL_31;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_AFE24@<X0>(const char *a1@<X0>, uint64_t **a2@<X1>, const char *a3@<X2>, const char *a5@<X4>, _BYTE *a6@<X8>)
{
  sub_D7B0(v25);
  v11 = strlen(a1);
  v12 = sub_4A5C(&v26, a1, v11);
  v13 = *(a2 + 23);
  if (v13 >= 0)
  {
    v14 = a2;
  }

  else
  {
    v14 = *a2;
  }

  if (v13 >= 0)
  {
    v15 = *(a2 + 23);
  }

  else
  {
    v15 = a2[1];
  }

  v16 = sub_4A5C(v12, v14, v15);
  v17 = strlen(a3);
  sub_4A5C(v16, a3, v17);
  v18 = std::ostream::operator<<();
  v19 = strlen(a5);
  sub_4A5C(v18, a5, v19);
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
      goto LABEL_22;
    }
  }

  else
  {
    if ((v36 & 8) == 0)
    {
      v20 = 0;
      a6[23] = 0;
      goto LABEL_18;
    }

    v22 = v29;
    v20 = v30 - v29;
    if ((v30 - v29) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_22:
      sub_3244();
    }
  }

  if (v20 >= 0x17)
  {
    operator new();
  }

  a6[23] = v20;
  if (v20)
  {
    memmove(a6, v22, v20);
  }

LABEL_18:
  a6[v20] = 0;
  v26 = v23;
  if (v34 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v28);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_B00F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_B0108@<X0>(const char *a1@<X0>, uint64_t **a2@<X1>, const char *a3@<X2>, _BYTE *a4@<X8>)
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

void sub_B03A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

void sub_B03B8(void *a1, uint64_t **a2, uint64_t a3)
{
  if ((sub_B7790(a1[52], a2, a3) & 1) == 0)
  {
    sub_B7B34("Error adding function with name '", a2, "'.", __p);
    v5 = a1[47];
    if (v5 >= a1[48])
    {
      a1[47] = sub_1CEE8((a1 + 46), __p);
      if (SHIBYTE(v8) < 0)
      {
LABEL_9:
        operator delete(__p[0]);
      }
    }

    else
    {
      if (SHIBYTE(v8) < 0)
      {
        sub_325C(a1[47], __p[0], __p[1]);
      }

      else
      {
        v6 = *__p;
        *(v5 + 16) = v8;
        *v5 = v6;
      }

      a1[47] = v5 + 24;
      a1[47] = v5 + 24;
      if (SHIBYTE(v8) < 0)
      {
        goto LABEL_9;
      }
    }
  }
}

void sub_B0490(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  *(v15 + 376) = v16;
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_B04B8(void *a1, uint64_t **a2, uint64_t a3)
{
  if ((sub_B7790(a1[52], a2, a3) & 1) == 0)
  {
    sub_B7B34("Error adding function with name '", a2, "'.", __p);
    v5 = a1[47];
    if (v5 >= a1[48])
    {
      a1[47] = sub_1CEE8((a1 + 46), __p);
      if (SHIBYTE(v8) < 0)
      {
LABEL_9:
        operator delete(__p[0]);
      }
    }

    else
    {
      if (SHIBYTE(v8) < 0)
      {
        sub_325C(a1[47], __p[0], __p[1]);
      }

      else
      {
        v6 = *__p;
        *(v5 + 16) = v8;
        *v5 = v6;
      }

      a1[47] = v5 + 24;
      a1[47] = v5 + 24;
      if (SHIBYTE(v8) < 0)
      {
        goto LABEL_9;
      }
    }
  }
}

void sub_B0590(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  *(v15 + 376) = v16;
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_B05B8(void *a1, uint64_t **a2, uint64_t a3)
{
  if ((sub_B7EE4(a1[52], a2, a3) & 1) == 0)
  {
    sub_B7B34("Error adding function with name '", a2, "'.", __p);
    v5 = a1[47];
    if (v5 >= a1[48])
    {
      a1[47] = sub_1CEE8((a1 + 46), __p);
      if (SHIBYTE(v8) < 0)
      {
LABEL_9:
        operator delete(__p[0]);
      }
    }

    else
    {
      if (SHIBYTE(v8) < 0)
      {
        sub_325C(a1[47], __p[0], __p[1]);
      }

      else
      {
        v6 = *__p;
        *(v5 + 16) = v8;
        *v5 = v6;
      }

      a1[47] = v5 + 24;
      a1[47] = v5 + 24;
      if (SHIBYTE(v8) < 0)
      {
        goto LABEL_9;
      }
    }
  }
}

void sub_B0690(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  *(v15 + 376) = v16;
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_B06B8(uint64_t *a1)
{
  if ((atomic_load_explicit(byte_27326B8, memory_order_acquire) & 1) == 0)
  {
    sub_21E1050();
  }

  v7 = 2;
  strcpy(__p, "pi");
  result = sub_AFB9C(a1, __p, &qword_27326B0);
  if (v7 < 0)
  {
    v3 = result;
    operator delete(__p[0]);
    result = v3;
    if (!v3)
    {
      return result;
    }
  }

  else if (!result)
  {
    return result;
  }

  if ((atomic_load_explicit(byte_27326C8, memory_order_acquire) & 1) == 0)
  {
    sub_21E10AC();
  }

  v7 = 7;
  strcpy(__p, "epsilon");
  result = sub_AFB9C(a1, __p, &qword_27326C0);
  if (v7 < 0)
  {
    v4 = result;
    operator delete(__p[0]);
    result = v4;
    if (!v4)
    {
      return result;
    }
  }

  else if (!result)
  {
    return result;
  }

  v7 = 3;
  LODWORD(__p[0]) = 6712937;
  result = sub_AFB9C(a1, __p, &qword_22684A8);
  if (v7 < 0)
  {
    v5 = result;
    operator delete(__p[0]);
    return v5;
  }

  return result;
}

void sub_B0810(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_B09A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  v22 = v21;
  *(v20 + 376) = v22;
  if (a20 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  _Unwind_Resume(exception_object);
}

void *sub_B0A04(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  a1[82] = 0;
  *(a1 + 162) = 0;
  sub_BFCF4(a1 + 69);
  v6 = a1[76];
  v7 = a1[77];
  a1[80] = 0;
  v8 = (v7 - v6) >> 3;
  if (v8 >= 3)
  {
    do
    {
      operator delete(*v6);
      v6 = (a1[76] + 8);
      a1[76] = v6;
      v8 = (a1[77] - v6) >> 3;
    }

    while (v8 > 2);
  }

  if (v8 == 1)
  {
    v9 = 2048;
  }

  else
  {
    if (v8 != 2)
    {
      goto LABEL_8;
    }

    v9 = 4096;
  }

  a1[79] = v9;
LABEL_8:
  if (*(a1 + 871) < 0)
  {
    *a1[106] = 0;
    a1[107] = 0;
  }

  else
  {
    *(a1 + 848) = 0;
    *(a1 + 871) = 0;
  }

  sub_BFE94(a1 + 109);
  a1[44] = (a1 + 54);
  v10 = *(a2 + 23);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a2 + 8);
  }

  if (!v10)
  {
    operator new();
  }

  if (!sub_C3B08(a1, a2))
  {
    sub_C02EC(a1);
    return 0;
  }

  v12 = *a1;
  v11 = a1[1];
  a1[3] = *a1;
  a1[4] = v12;
  if (v11 != v12)
  {
    v13 = v12 + 1;
    *(a1 + 26) = *v12;
    v14 = a1 + 13;
    a1[3] = (v12 + 5);
    if (a1 + 13 == v12)
    {
      goto LABEL_31;
    }

    v15 = *(v12 + 31);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_24:
    if ((v15 & 0x80u) == 0)
    {
      v17 = v13;
    }

    else
    {
      v17 = *v13;
    }

    if ((v15 & 0x80u) == 0)
    {
      v18 = v15;
    }

    else
    {
      v18 = v12[2];
    }

    sub_13B38(a1 + 14, v17, v18);
LABEL_31:
    v14[4] = v12[4];
    if (*a1 != a1[1])
    {
      goto LABEL_32;
    }

    goto LABEL_20;
  }

  v12 = a1 + 5;
  *(a1 + 26) = *(a1 + 10);
  v14 = a1 + 13;
  v13 = a1 + 6;
  v15 = *(a1 + 71);
  if (*(a1 + 135) < 0)
  {
    goto LABEL_24;
  }

LABEL_18:
  if ((v15 & 0x80) != 0)
  {
    sub_13A68(a1 + 14, *v13, v12[2]);
    v14[4] = v12[4];
    if (*a1 != a1[1])
    {
      goto LABEL_32;
    }

LABEL_20:
    operator new();
  }

  v16 = *v13;
  a1[16] = v13[2];
  *(a1 + 7) = v16;
  v14[4] = v12[4];
  if (*a1 == a1[1])
  {
    goto LABEL_20;
  }

LABEL_32:
  result = sub_C09BC(a1);
  if (!result)
  {
    return result;
  }

  v20 = a3[1];
  v21 = a3[2];
  if (v21 != v20)
  {
    if (((v21 - v20) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v22 = a1[55];
  if (v22)
  {
    v23 = a1[56];
    v24 = a1[55];
    if (v23 != v22)
    {
      do
      {
        v23 = sub_B3588(v23 - 1);
      }

      while (v23 != v22);
      v24 = a1[55];
    }

    a1[56] = v22;
    operator delete(v24);
    a1[55] = 0;
    a1[56] = 0;
    a1[57] = 0;
  }

  a1[55] = 0;
  a1[56] = 0;
  a1[57] = 0;
  v25 = a1[60];
  v26 = a1[61];
  while (v26 != v25)
  {
    v27 = *(v26 - 9);
    v26 -= 4;
    if (v27 < 0)
    {
      operator delete(*v26);
    }
  }

  a1[61] = v25;
  v28 = a1[63];
  v29 = a1[64];
  while (v29 != v28)
  {
    v30 = *(v29 - 9);
    v29 -= 4;
    if (v30 < 0)
    {
      operator delete(*v29);
    }
  }

  a1[64] = v28;
  v31 = a1[67];
  v32 = a1[66];
  while (v31 != v32)
  {
    v33 = *(v31 - 1);
    v31 -= 3;
    if (v33 < 0)
    {
      operator delete(*v31);
    }
  }

  a1[67] = v32;
  *(a1 + 475) = 0;
  v35 = *a1;
  v34 = a1[1];
  a1[3] = *a1;
  a1[4] = v35;
  if (v34 == v35)
  {
    v35 = a1 + 5;
    *(a1 + 26) = *(a1 + 10);
    v37 = a1 + 13;
    v36 = a1 + 6;
    v38 = *(a1 + 71);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
LABEL_58:
      if ((v38 & 0x80) != 0)
      {
        sub_13A68(a1 + 14, *v36, v35[2]);
        v37[4] = v35[4];
        v40 = sub_C279C(a1);
        if (!v40)
        {
          goto LABEL_81;
        }
      }

      else
      {
        v39 = *v36;
        a1[16] = v36[2];
        *(a1 + 7) = v39;
        v37[4] = v35[4];
        v40 = sub_C279C(a1);
        if (!v40)
        {
          goto LABEL_81;
        }
      }

      goto LABEL_70;
    }
  }

  else
  {
    v36 = v35 + 1;
    *(a1 + 26) = *v35;
    v37 = a1 + 13;
    a1[3] = (v35 + 5);
    if (a1 + 13 == v35)
    {
      goto LABEL_69;
    }

    v38 = *(v35 + 31);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_58;
    }
  }

  if ((v38 & 0x80u) == 0)
  {
    v41 = v36;
  }

  else
  {
    v41 = *v36;
  }

  if ((v38 & 0x80u) == 0)
  {
    v42 = v38;
  }

  else
  {
    v42 = v35[2];
  }

  sub_13B38(a1 + 14, v41, v42);
LABEL_69:
  v37[4] = v35[4];
  v40 = sub_C279C(a1);
  if (!v40)
  {
LABEL_81:
    if (!a1[74])
    {
      operator new();
    }

    if (v40 && (*(*v40 + 32))(v40) != 17 && (*(*v40 + 32))(v40) != 18)
    {
      (*(*v40 + 8))(v40);
    }

    v45 = a1[60];
    v46 = a1[61];
    while (v46 != v45)
    {
      v47 = *(v46 - 9);
      v46 -= 4;
      if (v47 < 0)
      {
        operator delete(*v46);
      }
    }

    a1[61] = v45;
    v48 = a1[63];
    v49 = a1[64];
    while (v49 != v48)
    {
      v50 = *(v49 - 9);
      v49 -= 4;
      if (v50 < 0)
      {
        operator delete(*v49);
      }
    }

    a1[64] = v48;
    v51 = a1[67];
    v52 = a1[66];
    while (v51 != v52)
    {
      v53 = *(v51 - 1);
      v51 -= 3;
      if (v53 < 0)
      {
        operator delete(*v51);
      }
    }

    a1[67] = v52;
    *(a1 + 475) = 0;
    sub_BFE94(a1 + 109);
    return 0;
  }

LABEL_70:
  if (*(a1 + 26) != 6)
  {
    goto LABEL_81;
  }

  if (*(a1 + 650) == 1)
  {
    v40 = 0;
    *(a1 + 475) = 1;
  }

  sub_B8748(a3, v40);
  if (*a3)
  {
    *(*a3 + 56) = 0;
  }

  sub_C31A4(a1, a3);
  v43 = a1[84];
  v44 = *a3;
  if (v43 && v44)
  {
    *(v44 + 40) = v43;
    a1[84] = 0;
    return (*(v44 + 8) != 0);
  }

  a1[84] = 0;
  if (v44)
  {
    return (*(v44 + 8) != 0);
  }

  return 0;
}

void sub_B1A94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if (a15 < 0)
    {
LABEL_5:
      operator delete(a10);
      if ((a28 & 0x80000000) == 0)
      {
        goto LABEL_9;
      }

LABEL_8:
      operator delete(a23);
LABEL_9:
      _Unwind_Resume(a1);
    }
  }

  else if (a15 < 0)
  {
    goto LABEL_5;
  }

  if ((a28 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  goto LABEL_8;
}

void sub_B1B60(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, int a8, void *a9, uint64_t a12, void *a13, uint64_t a14, void *a15, uint64_t a19, int _30, __int16 a16, char a17, char a18, uint64_t _38, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, ...)
{
  va_start(va, a26);
  sub_C0260(va);
  if (a25 < 0)
  {
    operator delete(a20);
    if (a18 < 0)
    {
LABEL_5:
      operator delete(a15);
      operator delete(a9);
      _Unwind_Resume(a1);
    }
  }

  else if (a18 < 0)
  {
    goto LABEL_5;
  }

  JUMPOUT(0xB1BE8);
}

void sub_B1BAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if ((a18 & 0x80000000) == 0)
  {
    operator delete(a9);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0xB1B94);
}

void sub_B1BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if ((a18 & 0x80000000) == 0)
  {
    operator delete(a9);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0xB1B94);
}

void sub_B1BCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if ((a18 & 0x80000000) == 0)
  {
    operator delete(a9);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0xB1B94);
}

void sub_B1BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if ((a18 & 0x80000000) == 0)
  {
    JUMPOUT(0xB1BE8);
  }

  JUMPOUT(0xB1B94);
}

uint64_t sub_B1BF8@<X0>(const char *a1@<X0>, uint64_t **a2@<X1>, const char *a3@<X2>, _BYTE *a4@<X8>)
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

void sub_B1E94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

double sub_B1EE0(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (a2[1] - *a2 != 72)
  {
    v10 = *(a1 + 64);
    sub_B2344("Custom function curve_fit() called with wrong number of parameters: Expected 3, got ", ".", __p);
    v11 = *(v10 + 32);
    if (v11 < *(v10 + 40))
    {
      if ((SHIBYTE(v33) & 0x80000000) == 0)
      {
LABEL_15:
        v12 = *__p;
        *(v11 + 16) = v33;
        *v11 = v12;
LABEL_16:
        *(v10 + 32) = v11 + 24;
        *(v10 + 32) = v11 + 24;
        if ((SHIBYTE(v33) & 0x80000000) == 0)
        {
          return 0.0;
        }

LABEL_22:
        operator delete(__p[0]);
        return 0.0;
      }

LABEL_12:
      sub_325C(*(v10 + 32), __p[0], __p[1]);
      goto LABEL_16;
    }

LABEL_21:
    *(v10 + 32) = sub_1CEE8(v10 + 24, __p);
    if ((SHIBYTE(v33) & 0x80000000) == 0)
    {
      return 0.0;
    }

    goto LABEL_22;
  }

  v3 = *(v2 + 8);
  if (v3 != *(v2 + 32))
  {
    v10 = *(a1 + 64);
    sub_B25E0("Custom function curve_fit() expects the first and second argument to be vectors of equal size, got vectors of size ", " and ", " instead.", __p);
    v11 = *(v10 + 32);
    if (v11 < *(v10 + 40))
    {
      if ((SHIBYTE(v33) & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_12;
    }

    goto LABEL_21;
  }

  v4 = *v2;
  v5 = *(v2 + 24);
  v6 = *v2;
  if (v3)
  {
    v7 = 8 * v3 - 8;
    v8 = *v2;
    while (v7)
    {
      v6 = v8 + 1;
      v7 -= 8;
      _NF = v8[1] < *v8;
      ++v8;
      if (_NF)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    if (v6 != &v4[v3])
    {
      operator new();
    }
  }

  if (v3 <= 1)
  {
    operator new();
  }

  v14 = *(v2 + 48);
  v15 = *v14;
  if (*v14 <= *v4)
  {
    return *v5;
  }

  v16 = v3 - 1;
  if (v3 < 1)
  {
    v28 = *v2;
  }

  else
  {
    v17 = *v2;
    do
    {
      v18 = (2 * v3) & 0xFFFFFFFFFFFFFFF8;
      _X14 = v17 + v18;
      __asm { PRFM            #0, [X14] }

      v24 = &v17[v3 >> 1];
      _X13 = v24 + v18;
      __asm { PRFM            #0, [X13] }

      if (*v24 >= v15)
      {
        v27 = 0;
      }

      else
      {
        v27 = v3 >> 1;
      }

      v17 += v27;
      v3 -= v3 >> 1;
    }

    while (v3 > 1);
    v28 = &v17[*v17 < v15];
  }

  v29 = v28 - v4;
  if (v16 < v29)
  {
    v29 = v16;
  }

  v30 = v29;
  v31 = (v15 - v4[v30 - 1]) / (v4[v30] - v4[v30 - 1]);
  return *(v5 + v30 * 8) * v31 + *(v5 + v30 * 8 - 8) * (1.0 - v31);
}

void sub_B22E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_B2344@<X0>(const char *a1@<X0>, const char *a3@<X2>, _BYTE *a4@<X8>)
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

void sub_B25CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_B25E0@<X0>(const char *a1@<X0>, const char *a3@<X2>, const char *a5@<X4>, _BYTE *a6@<X8>)
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

void sub_B289C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

void sub_B28B0(uint64_t a1, uint64_t **a2)
{
  v2 = *a2;
  v3 = 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2);
  v4 = v3 >> 1;
  if (**(a1 + 72) != 1)
  {
LABEL_18:
    if (v3 >= 2)
    {
      v20 = (8 * (*a2)[1] - 8) >> 3;
      if (v20 >= 1)
      {
        v21 = **a2;
        if (8 * (*a2)[1] != 16)
        {
          do
          {
            v22 = (2 * v20) & 0xFFFFFFFFFFFFFFF8;
            _X13 = v21 + v22;
            __asm { PRFM            #0, [X13] }

            v29 = (v21 + 8 * (v20 >> 1));
            _X12 = v29 + v22;
            __asm { PRFM            #0, [X12] }

            if (*v29 >= *(*a2)[3 * v4 + 3])
            {
              v32 = 0;
            }

            else
            {
              v32 = v20 >> 1;
            }

            v21 += 8 * v32;
            v20 -= v20 >> 1;
          }

          while (v20 > 1);
        }
      }

      operator new();
    }

    return;
  }

  v5 = (*a2)[3 * (v3 >> 1) + 1];
  if (!v5)
  {
    operator new();
  }

  if (v3 >= 2)
  {
    if (v3 >= 4)
    {
      v6 = v4 & 0x7FFFFFFFFFFFFFFELL;
      v8 = v2 + 4;
      v9 = 1;
      v10 = v4 & 0x7FFFFFFFFFFFFFFELL;
      v11 = 1;
      do
      {
        v12 = *(v8 - 3);
        v13 = *v8;
        v8 += 6;
        v9 *= v12;
        v11 *= v13;
        v10 -= 2;
      }

      while (v10);
      v7 = v11 * v9;
      if (v4 == v6)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v6 = 0;
      v7 = 1;
    }

    v14 = v4 - v6;
    v15 = &v2[3 * v6 + 1];
    do
    {
      v16 = *v15;
      v15 += 3;
      v7 *= v16;
      --v14;
    }

    while (v14);
LABEL_14:
    if (v7 != v5)
    {
      goto LABEL_27;
    }

    v17 = v2 + 1;
    v18 = v3 >> 1;
    do
    {
      v19 = *v17;
      v17 += 3;
      if (!v19)
      {
        operator new();
      }

      --v18;
    }

    while (v18);
    goto LABEL_18;
  }

  if (v5 != 1)
  {
LABEL_27:
    operator new();
  }
}

void sub_B2D7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_B2DD8(uint64_t a1, double *a2, __n128 a3)
{
  v5 = *a2;
  if (*a2 < -0.00001 || v5 > 100.00001)
  {
    v6 = *(a1 + 56);
    sub_B2F1C("Input parameter to custom function percentage_to_energy_wh() is expected to be a percentage in the range [0, 100], got ", ".", __p);
    v7 = *(v6 + 8);
    if (v7 >= *(v6 + 16))
    {
      *(v6 + 8) = sub_1CEE8(v6, __p);
      if ((SHIBYTE(v11) & 0x80000000) == 0)
      {
LABEL_7:
        v5 = *a2;
        goto LABEL_8;
      }
    }

    else
    {
      if (SHIBYTE(v11) < 0)
      {
        sub_325C(*(v6 + 8), __p[0], __p[1]);
      }

      else
      {
        v8 = *__p;
        *(v7 + 16) = v11;
        *v7 = v8;
      }

      *(v6 + 8) = v7 + 24;
      *(v6 + 8) = v7 + 24;
      if ((SHIBYTE(v11) & 0x80000000) == 0)
      {
        goto LABEL_7;
      }
    }

    operator delete(__p[0]);
    goto LABEL_7;
  }

LABEL_8:
  if (v5 > 100.0)
  {
    v5 = 100.0;
  }

  return **(a1 + 40) + fmax(v5, 0.0) / 100.0 * (**(a1 + 48) - **(a1 + 40));
}

void sub_B2EF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  *(v15 + 8) = v16;
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_B2F1C@<X0>(const char *a1@<X0>, const char *a3@<X2>, _BYTE *a4@<X8>)
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

void sub_B31A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

void sub_B33E4(_Unwind_Exception *a1)
{
  sub_2A22E4(v2);
  sub_B3588(v1);
  _Unwind_Resume(a1);
}

void sub_B3400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_B3464(&a9);
  sub_B3588(v9);
  _Unwind_Resume(a1);
}

char **sub_B3464(char **a1)
{
  sub_7E724((a1 + 17), a1[18]);
  sub_7E724((a1 + 14), a1[15]);
  sub_7E724((a1 + 11), a1[12]);
  sub_7E724((a1 + 8), a1[9]);
  sub_7E724((a1 + 5), a1[6]);
  sub_7E724((a1 + 2), a1[3]);
  return a1;
}

uint64_t sub_B34D0(uint64_t result)
{
  *result = off_262ECC8;
  if (*(result + 55) < 0)
  {
    v1 = result;
    operator delete(*(result + 32));
    return v1;
  }

  return result;
}

uint64_t sub_B352C(uint64_t result)
{
  *result = off_262ECC8;
  if (*(result + 55) < 0)
  {
    v1 = result;
    operator delete(*(result + 32));
    return v1;
  }

  return result;
}

uint64_t **sub_B3588(uint64_t **result)
{
  v1 = *result;
  if (*result)
  {
    if (*v1)
    {
      v2 = *v1 - 1;
      *v1 = v2;
      if (!v2)
      {
        v3 = result;
        sub_2448F8(result);
        result = v3;
        v4 = *v3;
        if (*v3)
        {
          v5 = v4[1];
          if (v5)
          {
            if (!*v4)
            {
              sub_2A2150(v5);
              operator delete();
            }
          }

          operator delete();
        }
      }
    }

    *result = 0;
  }

  return result;
}

uint64_t sub_B363C(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_1CEE8(a1, a2);
    *(a1 + 8) = result;
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      sub_325C(*(a1 + 8), *a2, *(a2 + 1));
    }

    else
    {
      v4 = *a2;
      *(v3 + 16) = *(a2 + 2);
      *v3 = v4;
    }

    result = v3 + 24;
    *(a1 + 8) = v3 + 24;
    *(a1 + 8) = v3 + 24;
  }

  return result;
}

uint64_t sub_B36D4(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 32);
  if (v3 >= *(a1 + 40))
  {
    result = sub_1CEE8(a1 + 24, a2);
    *(a1 + 32) = result;
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      sub_325C(*(a1 + 32), *a2, *(a2 + 1));
    }

    else
    {
      v4 = *a2;
      *(v3 + 16) = *(a2 + 2);
      *v3 = v4;
    }

    result = v3 + 24;
    *(a1 + 32) = v3 + 24;
    *(a1 + 32) = v3 + 24;
  }

  return result;
}

uint64_t sub_B376C(uint64_t result, uint64_t **a2, uint64_t a3)
{
  v4 = result;
  v5 = *(result + 56);
  v73 = 0xAAAAAAAAAAAAAAABLL * ((*(result + 32) - *(result + 24)) >> 3);
  if (v73 == v5)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((*(result + 8) - *result) >> 3) == *(result + 48))
    {
      goto LABEL_48;
    }

    result = sub_7E7E4(2u);
    if (!result)
    {
      goto LABEL_48;
    }

    sub_19594F8(&v78);
    v6 = sub_4A5C(&v78, " [EV_MODEL_DEBUG] ", 18);
    v7 = *(a2 + 23);
    if (v7 >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    if (v7 >= 0)
    {
      v9 = *(a2 + 23);
    }

    else
    {
      v9 = a2[1];
    }

    v10 = sub_4A5C(v6, v8, v9);
    sub_4A5C(v10, ": ", 2);
    v11 = std::ostream::operator<<();
    sub_4A5C(v11, " errors and ", 12);
    v12 = std::ostream::operator<<();
    v13 = sub_4A5C(v12, " warnings occurred (model id ", 29);
    std::ostream::operator<<();
    sub_4A5C(v13, ").", 2);
    if ((v88 & 0x10) != 0)
    {
      v26 = v87;
      if (v87 < v84)
      {
        v87 = v84;
        v26 = v84;
      }

      v27 = v83;
      v14 = v26 - v83;
      if (v26 - v83 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_135;
      }
    }

    else
    {
      if ((v88 & 8) == 0)
      {
        v14 = 0;
        v77 = 0;
LABEL_42:
        *(&__dst + v14) = 0;
        sub_7E854(&__dst, 2u);
        goto LABEL_43;
      }

      v27 = v81[0];
      v14 = v82 - v81[0];
      if (v82 - v81[0] > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_135:
        sub_3244();
      }
    }

    if (v14 >= 0x17)
    {
      operator new();
    }

    v77 = v14;
    if (v14)
    {
      memmove(&__dst, v27, v14);
    }

    goto LABEL_42;
  }

  result = sub_7E7E4(3u);
  if (!result)
  {
    goto LABEL_48;
  }

  sub_19594F8(&v78);
  v15 = sub_4A5C(&v78, " [EV_MODEL_DEBUG] ", 18);
  v16 = *(a2 + 23);
  if (v16 >= 0)
  {
    v17 = a2;
  }

  else
  {
    v17 = *a2;
  }

  if (v16 >= 0)
  {
    v18 = *(a2 + 23);
  }

  else
  {
    v18 = a2[1];
  }

  v19 = sub_4A5C(v15, v17, v18);
  sub_4A5C(v19, ": ", 2);
  v20 = std::ostream::operator<<();
  sub_4A5C(v20, " errors and ", 12);
  v21 = std::ostream::operator<<();
  v22 = sub_4A5C(v21, " warnings occurred (model id ", 29);
  std::ostream::operator<<();
  sub_4A5C(v22, ").", 2);
  if ((v88 & 0x10) != 0)
  {
    v24 = v87;
    if (v87 < v84)
    {
      v87 = v84;
      v24 = v84;
    }

    v25 = v83;
    v23 = v24 - v83;
    if (v24 - v83 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_39:
      sub_3244();
    }

LABEL_26:
    if (v23 >= 0x17)
    {
      operator new();
    }

    v77 = v23;
    if (v23)
    {
      memmove(&__dst, v25, v23);
    }

    goto LABEL_31;
  }

  if ((v88 & 8) != 0)
  {
    v25 = v81[0];
    v23 = v82 - v81[0];
    if (v82 - v81[0] > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_39;
    }

    goto LABEL_26;
  }

  v23 = 0;
  v77 = 0;
LABEL_31:
  *(&__dst + v23) = 0;
  sub_7E854(&__dst, 3u);
LABEL_43:
  if (v77 < 0)
  {
    operator delete(__dst);
  }

  if (v86 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v80);
  std::ostream::~ostream();
  result = std::ios::~ios();
LABEL_48:
  v28 = v4[7];
  v29 = 0xAAAAAAAAAAAAAAABLL * ((v4[4] - v4[3]) >> 3);
  v30 = v28 >= v29;
  if (v28 > v29)
  {
    v29 = v4[7];
  }

  if (!v30)
  {
    v32 = 24 * v28;
    v33 = v29 - v28;
    while (1)
    {
      result = sub_7E7E4(3u);
      if (result)
      {
        break;
      }

LABEL_53:
      v32 += 24;
      if (!--v33)
      {
        goto LABEL_77;
      }
    }

    sub_19594F8(&v78);
    v34 = sub_4A5C(&v78, " [EV_MODEL_DEBUG] ", 18);
    v35 = sub_4A5C(v34, "Error: ", 7);
    v36 = v4[3] + v32;
    v37 = *(v36 + 23);
    if (v37 >= 0)
    {
      v38 = v4[3] + v32;
    }

    else
    {
      v38 = *v36;
    }

    if (v37 >= 0)
    {
      v39 = *(v36 + 23);
    }

    else
    {
      v39 = *(v36 + 8);
    }

    sub_4A5C(v35, v38, v39);
    if ((v88 & 0x10) != 0)
    {
      v41 = v87;
      v42 = &v83;
      if (v87 < v84)
      {
        v87 = v84;
        v41 = v84;
        v42 = &v83;
      }
    }

    else
    {
      if ((v88 & 8) == 0)
      {
        v40 = 0;
        v77 = 0;
LABEL_73:
        *(&__dst + v40) = 0;
        sub_7E854(&__dst, 3u);
        if (v77 < 0)
        {
          operator delete(__dst);
        }

        v78 = v74;
        *(&v78 + *(*&v74 - 24)) = v31;
        if (v86 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v80);
        std::ostream::~ostream();
        result = std::ios::~ios();
        goto LABEL_53;
      }

      v41 = v82;
      v42 = v81;
    }

    v43 = *v42;
    v40 = v41 - *v42;
    if (v40 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v40 >= 0x17)
    {
      operator new();
    }

    v77 = v41 - *v42;
    if (v40)
    {
      memmove(&__dst, v43, v40);
    }

    goto LABEL_73;
  }

LABEL_77:
  v44 = v4[6];
  v45 = 0xAAAAAAAAAAAAAAABLL * ((v4[1] - *v4) >> 3);
  v46 = v44 >= v45;
  if (v44 > v45)
  {
    v45 = v4[6];
  }

  if (!v46)
  {
    if (v73 == v5)
    {
      v48 = v45 - v44;
      v49 = 24 * v44;
      while (1)
      {
        result = sub_7E7E4(2u);
        if (result)
        {
          break;
        }

LABEL_83:
        v49 += 24;
        if (!--v48)
        {
          goto LABEL_133;
        }
      }

      sub_19594F8(&v78);
      v50 = sub_4A5C(&v78, " [EV_MODEL_DEBUG] ", 18);
      v51 = sub_4A5C(v50, "Warning: ", 9);
      v52 = *v4 + v49;
      v53 = *(v52 + 23);
      if (v53 >= 0)
      {
        v54 = *v4 + v49;
      }

      else
      {
        v54 = *v52;
      }

      if (v53 >= 0)
      {
        v55 = *(v52 + 23);
      }

      else
      {
        v55 = *(v52 + 8);
      }

      sub_4A5C(v51, v54, v55);
      if ((v88 & 0x10) != 0)
      {
        v57 = v87;
        v58 = &v83;
        if (v87 < v84)
        {
          v87 = v84;
          v57 = v84;
          v58 = &v83;
        }
      }

      else
      {
        if ((v88 & 8) == 0)
        {
          v56 = 0;
          v77 = 0;
LABEL_103:
          *(&__dst + v56) = 0;
          sub_7E854(&__dst, 2u);
          if (v77 < 0)
          {
            operator delete(__dst);
          }

          v78 = v75;
          *(&v78 + *(*&v75 - 24)) = v47;
          if (v86 < 0)
          {
            operator delete(__p);
          }

          std::locale::~locale(&v80);
          std::ostream::~ostream();
          result = std::ios::~ios();
          goto LABEL_83;
        }

        v57 = v82;
        v58 = v81;
      }

      v59 = *v58;
      v56 = v57 - *v58;
      if (v56 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v56 >= 0x17)
      {
        operator new();
      }

      v77 = v57 - *v58;
      if (v56)
      {
        memmove(&__dst, v59, v56);
      }

      goto LABEL_103;
    }

    v60 = 24 * v44;
    v61 = v45 - v44;
    while (1)
    {
      result = sub_7E7E4(1u);
      if (result)
      {
        break;
      }

LABEL_109:
      v60 += 24;
      if (!--v61)
      {
        goto LABEL_133;
      }
    }

    sub_19594F8(&v78);
    v62 = sub_4A5C(&v78, " [EV_MODEL_DEBUG] ", 18);
    v63 = sub_4A5C(v62, "Warning: ", 9);
    v64 = *v4 + v60;
    v65 = *(v64 + 23);
    if (v65 >= 0)
    {
      v66 = *v4 + v60;
    }

    else
    {
      v66 = *v64;
    }

    if (v65 >= 0)
    {
      v67 = *(v64 + 23);
    }

    else
    {
      v67 = *(v64 + 8);
    }

    sub_4A5C(v63, v66, v67);
    if ((v88 & 0x10) != 0)
    {
      v69 = v87;
      v70 = &v83;
      if (v87 < v84)
      {
        v87 = v84;
        v69 = v84;
        v70 = &v83;
      }
    }

    else
    {
      if ((v88 & 8) == 0)
      {
        v68 = 0;
        v77 = 0;
LABEL_129:
        *(&__dst + v68) = 0;
        sub_7E854(&__dst, 1u);
        if (v77 < 0)
        {
          operator delete(__dst);
        }

        v78 = v75;
        *(&v78 + *(*&v75 - 24)) = v47;
        if (v86 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v80);
        std::ostream::~ostream();
        result = std::ios::~ios();
        goto LABEL_109;
      }

      v69 = v82;
      v70 = v81;
    }

    v71 = *v70;
    v68 = v69 - *v70;
    if (v68 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v68 >= 0x17)
    {
      operator new();
    }

    v77 = v69 - *v70;
    if (v68)
    {
      memmove(&__dst, v71, v68);
    }

    goto LABEL_129;
  }

LABEL_133:
  v72 = 0xAAAAAAAAAAAAAAABLL * ((v4[4] - v4[3]) >> 3);
  v4[6] = 0xAAAAAAAAAAAAAAABLL * ((v4[1] - *v4) >> 3);
  v4[7] = v72;
  return result;
}

void sub_B4414(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
    sub_1959728(&a22);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a22);
  _Unwind_Resume(a1);
}

uint64_t *sub_B454C(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    *(v1 + 1672) = off_262ECC8;
    if (*(v1 + 1727) < 0)
    {
      operator delete(*(v1 + 1704));
      *(v1 + 1600) = off_262ECC8;
      if ((*(v1 + 1655) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      *(v1 + 1600) = off_262ECC8;
      if ((*(v1 + 1655) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }
    }

    operator delete(*(v1 + 1632));
LABEL_4:
    sub_B8AD8(v1 + 1536);
    sub_2A22E4(v1 + 8);
    sub_B3588(v1);
    operator delete();
  }

  return a1;
}

void sub_B4634(uint64_t a1, int a2, int a3, int a4)
{
  *a1 = a2;
  *(a1 + 8) = a3 / 1000.0;
  *(a1 + 16) = a4 / 1000.0;
  *(a1 + 137) = 0;
  *(a1 + 140) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 128) = 0x3E4CCCCD3F000000;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 184) = 32;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0;
  *(a1 + 112) = xmmword_2267060;
  *(a1 + 136) = 0;
  *(a1 + 232) = xmmword_2267060;
  *(a1 + 257) = 0;
  *(a1 + 260) = 0;
  *(a1 + 248) = 0x3E4CCCCD3F000000;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0;
  *(a1 + 304) = 32;
  *(a1 + 360) = 0;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 256) = 0;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0;
  operator new();
}

void sub_B4990(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  *(v15 + 400) = v18;
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_B454C((v16 + 328));
  sub_919A4((v16 + 256));
  sub_B84B0(v17);
  sub_AC5E4(v16);
  sub_1AB28(v15 + 64);
  _Unwind_Resume(a1);
}

uint64_t sub_B4A40(uint64_t a1)
{
  sub_B454C((a1 + 440));
  v2 = *(a1 + 392);
  if (v2)
  {
    v3 = *(a1 + 400);
    v4 = *(a1 + 392);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(a1 + 392);
    }

    *(a1 + 400) = v2;
    operator delete(v4);
  }

  v6 = *(a1 + 368);
  if (v6)
  {
    v7 = *(a1 + 376);
    v8 = *(a1 + 368);
    if (v7 != v6)
    {
      do
      {
        v9 = *(v7 - 1);
        v7 -= 3;
        if (v9 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = *(a1 + 368);
    }

    *(a1 + 376) = v6;
    operator delete(v8);
  }

  sub_B84B0(a1 + 232);
  v10 = *(a1 + 224);
  if (v10)
  {
    v11 = *(a1 + 184);
    if (v11)
    {
      v12 = 0;
      do
      {
        v13 = *(a1 + 224) + v12;
        if (*(v13 + 23) < 0)
        {
          operator delete(*v13);
        }

        v12 += 32;
        --v11;
      }

      while (v11);
      v10 = *(a1 + 224);
    }

    free(v10);
  }

  if (*(a1 + 215) < 0)
  {
    operator delete(*(a1 + 192));
    if ((*(a1 + 167) & 0x80000000) == 0)
    {
LABEL_27:
      if ((*(a1 + 111) & 0x80000000) == 0)
      {
        goto LABEL_28;
      }

LABEL_32:
      operator delete(*(a1 + 88));
      if ((*(a1 + 87) & 0x80000000) == 0)
      {
        return a1;
      }

      goto LABEL_33;
    }
  }

  else if ((*(a1 + 167) & 0x80000000) == 0)
  {
    goto LABEL_27;
  }

  operator delete(*(a1 + 144));
  if (*(a1 + 111) < 0)
  {
    goto LABEL_32;
  }

LABEL_28:
  if ((*(a1 + 87) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_33:
  operator delete(*(a1 + 64));
  return a1;
}

void sub_B4BC0(uint64_t a1, uint64_t **a2, double *a3)
{
  if ((sub_AD2A4(*(a1 + 440), a2, a3, 0) & 1) == 0)
  {
    sub_AD500("Error adding the variable with name '", a2, "' and value ", ".", __p);
    v5 = *(a1 + 400);
    if (v5 >= *(a1 + 408))
    {
      *(a1 + 400) = sub_1CEE8(a1 + 392, __p);
      if (SHIBYTE(v8) < 0)
      {
LABEL_9:
        operator delete(__p[0]);
      }
    }

    else
    {
      if (SHIBYTE(v8) < 0)
      {
        sub_325C(*(a1 + 400), __p[0], __p[1]);
      }

      else
      {
        v6 = *__p;
        *(v5 + 16) = v8;
        *v5 = v6;
      }

      *(a1 + 400) = v5 + 24;
      *(a1 + 400) = v5 + 24;
      if (SHIBYTE(v8) < 0)
      {
        goto LABEL_9;
      }
    }
  }
}

void sub_B4CAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  *(v15 + 400) = v16;
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_B4CD4(uint64_t a1, uint64_t **a2, void *a3)
{
  if ((sub_AD7E4(*(a1 + 440), a2, a3) & 1) == 0)
  {
    sub_ADA44("Error adding the vector with name '", a2, "'.", __p);
    v5 = *(a1 + 400);
    if (v5 >= *(a1 + 408))
    {
      *(a1 + 400) = sub_1CEE8(a1 + 392, __p);
      if (SHIBYTE(v8) < 0)
      {
LABEL_9:
        operator delete(__p[0]);
      }
    }

    else
    {
      if (SHIBYTE(v8) < 0)
      {
        sub_325C(*(a1 + 400), __p[0], __p[1]);
      }

      else
      {
        v6 = *__p;
        *(v5 + 16) = v8;
        *v5 = v6;
      }

      *(a1 + 400) = v5 + 24;
      *(a1 + 400) = v5 + 24;
      if (SHIBYTE(v8) < 0)
      {
        goto LABEL_9;
      }
    }
  }
}

void sub_B4DAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  *(v15 + 400) = v16;
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_B4DD4(void *a1, void *a2)
{
  v2 = a2;
  v4 = sub_588E0(a2);
  v5 = sub_5FC5C();
  if (v4 != v5)
  {
    v6 = v5;
    v31 = v2;
    v32 = a1;
    v30 = v5;
    do
    {
      v8 = *(v4 + 48);
      if ((v8 - 2) <= 2)
      {
        v7 = sub_63D34(v2, (v4 + 16));
        *(sub_BCF18(a1 + 14, (v4 + 16)) + 3) = v7;
        goto LABEL_5;
      }

      if (v8 == 6)
      {
        v9 = sub_5F680(v2, (v4 + 16));
        v10 = *v9;
        v11 = v9[1];
        if (*v9 != v11)
        {
          v12 = 0;
          while (1)
          {
            v13 = *(v10 + 2);
            if ((v13 - 2) <= 2)
            {
              if (v13 == 4)
              {
                v14 = *v10;
              }

              else if (v13 == 3)
              {
                v14 = *v10;
              }

              else
              {
                v14 = *v10;
              }

              v23 = v12;
              v24 = v12 >> 3;
              if (((v12 >> 3) + 1) >> 61)
              {
                sub_1794();
              }

              if (v12 >> 3 != -1)
              {
                if (!(((v12 >> 3) + 1) >> 61))
                {
                  operator new();
                }

                sub_1808();
              }

              *(8 * v24) = v14;
              v12 = 8 * v24 + 8;
              memcpy(0, 0, v23);
              goto LABEL_10;
            }

            if (v13 == 6)
            {
              v16 = **v10;
              for (i = (*v10)[1]; v16 != i; v16 += 16)
              {
                v17 = *(v16 + 8);
                switch(v17)
                {
                  case 4:
                    v18 = *v16;
                    break;
                  case 3:
                    v18 = *v16;
                    break;
                  case 2:
                    v18 = *v16;
                    break;
                  default:
                    exception = __cxa_allocate_exception(0x40uLL);
                    v29 = sub_2D390(exception, "cannot convert json value to a number", 0x25uLL);
                }

                v19 = v12;
                v20 = v12 >> 3;
                if ((v20 + 1) >> 61)
                {
                  sub_1794();
                }

                if (v20 != -1)
                {
                  if (!((v20 + 1) >> 61))
                  {
                    operator new();
                  }

                  sub_1808();
                }

                MEMORY[0xFFFFFFFFFFFFFFF8] = *&v18;
                v12 = 0;
                memcpy(0, 0, v19);
              }

              goto LABEL_10;
            }

            sub_AE2A0("Unexpected parameter type in array ", (v4 + 16), " while parsing EV model JSON.", __p);
            v21 = v32[50];
            if (v21 < v32[51])
            {
              break;
            }

            v32[50] = sub_1CEE8((v32 + 49), __p);
            if (SHIBYTE(v36) < 0)
            {
              goto LABEL_43;
            }

LABEL_10:
            v10 += 2;
            if (v10 == v11)
            {
              goto LABEL_51;
            }
          }

          if (SHIBYTE(v36) < 0)
          {
            sub_325C(v32[50], __p[0], __p[1]);
          }

          else
          {
            v22 = *__p;
            *(v21 + 16) = v36;
            *v21 = v22;
          }

          v32[50] = v21 + 24;
          v32[50] = v21 + 24;
          if ((SHIBYTE(v36) & 0x80000000) == 0)
          {
            goto LABEL_10;
          }

LABEL_43:
          operator delete(__p[0]);
          goto LABEL_10;
        }

        v12 = 0;
LABEL_51:
        a1 = v32;
        v27 = sub_BE1FC((v32 + 29), (v4 + 16));
        sub_31F64((v27 + 24), 0, v12, v12 >> 3);
        v6 = v30;
        v2 = v31;
        goto LABEL_5;
      }

      sub_60FF8(v4 + 40, v33);
      sub_AE550("Unexpected parameter type while parsing EV model JSON: ", (v4 + 16), ": ", v33, __p);
      v25 = a1[50];
      if (v25 >= a1[51])
      {
        a1[50] = sub_1CEE8((a1 + 49), __p);
        if ((SHIBYTE(v36) & 0x80000000) == 0)
        {
          goto LABEL_48;
        }
      }

      else
      {
        if (SHIBYTE(v36) < 0)
        {
          sub_325C(a1[50], __p[0], __p[1]);
        }

        else
        {
          v26 = *__p;
          *(v25 + 16) = v36;
          *v25 = v26;
        }

        a1[50] = v25 + 24;
        a1[50] = v25 + 24;
        if ((SHIBYTE(v36) & 0x80000000) == 0)
        {
LABEL_48:
          if (v34 < 0)
          {
            goto LABEL_55;
          }

          goto LABEL_5;
        }
      }

      operator delete(__p[0]);
      if (v34 < 0)
      {
LABEL_55:
        operator delete(v33[0]);
      }

LABEL_5:
      v4 = *v4;
    }

    while (v4 != v6);
  }
}

void sub_B52B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  *(v24 + 400) = v25;
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_B5338(_Unwind_Exception *a1)
{
  if (!v1)
  {
    _Unwind_Resume(a1);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_B5354(uint64_t a1)
{
  sub_AF7DC(*(a1 + 440) + 192);
  v2 = *(a1 + 440);
  v3 = sub_BC284((v2 + 29), qword_2267CE0);
  if (v2 + 30 != v3)
  {
    v4 = v3;
    v5 = v3[1];
    if (v5)
    {
      do
      {
        v6 = v5;
        v5 = *v5;
      }

      while (v5);
    }

    else
    {
      v7 = v3;
      do
      {
        v6 = v7[2];
        v8 = *v6 == v7;
        v7 = v6;
      }

      while (!v8);
    }

    if (v2[29] == v3)
    {
      v2[29] = v6;
    }

    v9 = v2[30];
    --v2[31];
    sub_195B378(v9, v4);
    if (*(v4 + 55) < 0)
    {
      operator delete(v4[4]);
    }

    operator delete(v4);
  }

  v10 = 0;
  v11 = *(a1 + 440);
  v14 = *(v11 + 208);
  v13 = (v11 + 208);
  v12 = v14;
  do
  {
    v15 = sub_BF33C(v13, v12, &qword_2267D40[v10], &qword_2267D40[v10]);
    v16 = v15[1];
    if (v16)
    {
      do
      {
        v12 = v16;
        v16 = *v16;
      }

      while (v16);
    }

    else
    {
      do
      {
        v12 = v15[2];
        v8 = *v12 == v15;
        v15 = v12;
      }

      while (!v8);
    }

    v10 += 3;
  }

  while (v10 != 174);
  v17 = *(a1 + 440);
  v18 = sub_BC284((v17 + 26), qword_2267D40);
  if (v17 + 27 != v18)
  {
    v19 = v18;
    v20 = v18[1];
    if (v20)
    {
      do
      {
        v21 = v20;
        v20 = *v20;
      }

      while (v20);
    }

    else
    {
      v22 = v18;
      do
      {
        v21 = v22[2];
        v8 = *v21 == v22;
        v22 = v21;
      }

      while (!v8);
    }

    if (v17[26] == v18)
    {
      v17[26] = v21;
    }

    v23 = v17[27];
    --v17[28];
    sub_195B378(v23, v19);
    if (*(v19 + 55) < 0)
    {
      operator delete(v19[4]);
    }

    operator delete(v19);
  }

  v24 = *(a1 + 440);
  v25 = sub_BC284((v24 + 26), qword_2268028);
  if (v24 + 27 != v25)
  {
    v26 = v25;
    v27 = v25[1];
    if (v27)
    {
      do
      {
        v28 = v27;
        v27 = *v27;
      }

      while (v27);
    }

    else
    {
      v29 = v25;
      do
      {
        v28 = v29[2];
        v8 = *v28 == v29;
        v29 = v28;
      }

      while (!v8);
    }

    if (v24[26] == v25)
    {
      v24[26] = v28;
    }

    v30 = v24[27];
    --v24[28];
    sub_195B378(v30, v26);
    if (*(v26 + 55) < 0)
    {
      operator delete(v26[4]);
    }

    operator delete(v26);
  }

  v31 = *(a1 + 440);
  v32 = sub_BC284((v31 + 26), qword_2268040);
  if (v31 + 27 != v32)
  {
    v33 = v32;
    v34 = v32[1];
    if (v34)
    {
      do
      {
        v35 = v34;
        v34 = *v34;
      }

      while (v34);
    }

    else
    {
      v36 = v32;
      do
      {
        v35 = v36[2];
        v8 = *v35 == v36;
        v36 = v35;
      }

      while (!v8);
    }

    if (v31[26] == v32)
    {
      v31[26] = v35;
    }

    v37 = v31[27];
    --v31[28];
    sub_195B378(v37, v33);
    if (*(v33 + 55) < 0)
    {
      operator delete(v33[4]);
    }

    operator delete(v33);
  }

  v38 = *(a1 + 440);
  v39 = sub_BC284((v38 + 26), qword_2268148);
  if (v38 + 27 != v39)
  {
    v40 = v39;
    v41 = v39[1];
    if (v41)
    {
      do
      {
        v42 = v41;
        v41 = *v41;
      }

      while (v41);
    }

    else
    {
      v43 = v39;
      do
      {
        v42 = v43[2];
        v8 = *v42 == v43;
        v43 = v42;
      }

      while (!v8);
    }

    if (v38[26] == v39)
    {
      v38[26] = v42;
    }

    v44 = v38[27];
    --v38[28];
    sub_195B378(v44, v40);
    if (*(v40 + 55) < 0)
    {
      operator delete(v40[4]);
    }

    operator delete(v40);
  }

  v45 = *(a1 + 440);
  v46 = sub_BC284((v45 + 26), qword_2267E48);
  if (v45 + 27 != v46)
  {
    v47 = v46;
    v48 = v46[1];
    if (v48)
    {
      do
      {
        v49 = v48;
        v48 = *v48;
      }

      while (v48);
    }

    else
    {
      v50 = v46;
      do
      {
        v49 = v50[2];
        v8 = *v49 == v50;
        v50 = v49;
      }

      while (!v8);
    }

    if (v45[26] == v46)
    {
      v45[26] = v49;
    }

    v51 = v45[27];
    --v45[28];
    sub_195B378(v51, v47);
    if (*(v47 + 55) < 0)
    {
      operator delete(v47[4]);
    }

    operator delete(v47);
  }

  sub_AF95C(*(a1 + 440) + 192);
  sub_BFAC0(*(a1 + 440) + 280, &unk_22683E8, &unk_22683E8);
  sub_BFAC0(*(a1 + 440) + 280, &unk_2268400, &unk_2268400);
  sub_BFAC0(*(a1 + 440) + 304, &unk_2268490, &unk_2268490);
  v55 = 21;
  strcpy(__p, "battery_min_energy_wh");
  v52 = *(a1 + 8);
  *(sub_BCF18((a1 + 112), __p) + 3) = v52;
  if (v55 < 0)
  {
    operator delete(*__p);
  }

  v55 = 21;
  strcpy(__p, "battery_max_energy_wh");
  v53 = *(a1 + 16);
  *(sub_BCF18((a1 + 112), __p) + 3) = v53;
  if (v55 < 0)
  {
    operator delete(*__p);
  }

  v55 = 19;
  strcpy(__p, "trip_elapsed_time_s");
  sub_B4BC0(a1, __p, (a1 + 24));
  if (v55 < 0)
  {
    operator delete(*__p);
  }

  operator new();
}

void sub_B6278(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_B62E0(void *a1, uint64_t **a2, uint64_t a3)
{
  if ((sub_B7790(a1[55], a2, a3) & 1) == 0)
  {
    sub_B7B34("Error adding function with name '", a2, "'.", __p);
    v5 = a1[50];
    if (v5 >= a1[51])
    {
      a1[50] = sub_1CEE8((a1 + 49), __p);
      if (SHIBYTE(v8) < 0)
      {
LABEL_9:
        operator delete(__p[0]);
      }
    }

    else
    {
      if (SHIBYTE(v8) < 0)
      {
        sub_325C(a1[50], __p[0], __p[1]);
      }

      else
      {
        v6 = *__p;
        *(v5 + 16) = v8;
        *v5 = v6;
      }

      a1[50] = v5 + 24;
      a1[50] = v5 + 24;
      if (SHIBYTE(v8) < 0)
      {
        goto LABEL_9;
      }
    }
  }
}

void sub_B63B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  *(v15 + 400) = v16;
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_B63E0(void *a1, uint64_t **a2, uint64_t a3)
{
  if ((sub_B7790(a1[55], a2, a3) & 1) == 0)
  {
    sub_B7B34("Error adding function with name '", a2, "'.", __p);
    v5 = a1[50];
    if (v5 >= a1[51])
    {
      a1[50] = sub_1CEE8((a1 + 49), __p);
      if (SHIBYTE(v8) < 0)
      {
LABEL_9:
        operator delete(__p[0]);
      }
    }

    else
    {
      if (SHIBYTE(v8) < 0)
      {
        sub_325C(a1[50], __p[0], __p[1]);
      }

      else
      {
        v6 = *__p;
        *(v5 + 16) = v8;
        *v5 = v6;
      }

      a1[50] = v5 + 24;
      a1[50] = v5 + 24;
      if (SHIBYTE(v8) < 0)
      {
        goto LABEL_9;
      }
    }
  }
}

void sub_B64B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  *(v15 + 400) = v16;
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_B64E0(void *a1, uint64_t **a2, uint64_t a3)
{
  if ((sub_B7EE4(a1[55], a2, a3) & 1) == 0)
  {
    sub_B7B34("Error adding function with name '", a2, "'.", __p);
    v5 = a1[50];
    if (v5 >= a1[51])
    {
      a1[50] = sub_1CEE8((a1 + 49), __p);
      if (SHIBYTE(v8) < 0)
      {
LABEL_9:
        operator delete(__p[0]);
      }
    }

    else
    {
      if (SHIBYTE(v8) < 0)
      {
        sub_325C(a1[50], __p[0], __p[1]);
      }

      else
      {
        v6 = *__p;
        *(v5 + 16) = v8;
        *v5 = v6;
      }

      a1[50] = v5 + 24;
      a1[50] = v5 + 24;
      if (SHIBYTE(v8) < 0)
      {
        goto LABEL_9;
      }
    }
  }
}

void sub_B65B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  *(v15 + 400) = v16;
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_B68B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  *(v20 + 400) = v21;
  if (a20 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  _Unwind_Resume(exception_object);
}

double sub_B6944(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (a2[1] - *a2 != 72)
  {
    v10 = *(a1 + 64);
    sub_B2344("Custom function curve_fit() called with wrong number of parameters: Expected 3, got ", ".", __p);
    v11 = *(v10 + 32);
    if (v11 < *(v10 + 40))
    {
      if ((SHIBYTE(v33) & 0x80000000) == 0)
      {
LABEL_15:
        v12 = *__p;
        *(v11 + 16) = v33;
        *v11 = v12;
LABEL_16:
        *(v10 + 32) = v11 + 24;
        *(v10 + 32) = v11 + 24;
        if ((SHIBYTE(v33) & 0x80000000) == 0)
        {
          return 0.0;
        }

LABEL_22:
        operator delete(__p[0]);
        return 0.0;
      }

LABEL_12:
      sub_325C(*(v10 + 32), __p[0], __p[1]);
      goto LABEL_16;
    }

LABEL_21:
    *(v10 + 32) = sub_1CEE8(v10 + 24, __p);
    if ((SHIBYTE(v33) & 0x80000000) == 0)
    {
      return 0.0;
    }

    goto LABEL_22;
  }

  v3 = *(v2 + 8);
  if (v3 != *(v2 + 32))
  {
    v10 = *(a1 + 64);
    sub_B25E0("Custom function curve_fit() expects the first and second argument to be vectors of equal size, got vectors of size ", " and ", " instead.", __p);
    v11 = *(v10 + 32);
    if (v11 < *(v10 + 40))
    {
      if ((SHIBYTE(v33) & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_12;
    }

    goto LABEL_21;
  }

  v4 = *v2;
  v5 = *(v2 + 24);
  v6 = *v2;
  if (v3)
  {
    v7 = 8 * v3 - 8;
    v8 = *v2;
    while (v7)
    {
      v6 = v8 + 1;
      v7 -= 8;
      _NF = v8[1] < *v8;
      ++v8;
      if (_NF)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    if (v6 != &v4[v3])
    {
      operator new();
    }
  }

  if (v3 <= 1)
  {
    operator new();
  }

  v14 = *(v2 + 48);
  v15 = *v14;
  if (*v14 <= *v4)
  {
    return *v5;
  }

  v16 = v3 - 1;
  if (v3 < 1)
  {
    v28 = *v2;
  }

  else
  {
    v17 = *v2;
    do
    {
      v18 = (2 * v3) & 0xFFFFFFFFFFFFFFF8;
      _X14 = v17 + v18;
      __asm { PRFM            #0, [X14] }

      v24 = &v17[v3 >> 1];
      _X13 = v24 + v18;
      __asm { PRFM            #0, [X13] }

      if (*v24 >= v15)
      {
        v27 = 0;
      }

      else
      {
        v27 = v3 >> 1;
      }

      v17 += v27;
      v3 -= v3 >> 1;
    }

    while (v3 > 1);
    v28 = &v17[*v17 < v15];
  }

  v29 = v28 - v4;
  if (v16 < v29)
  {
    v29 = v16;
  }

  v30 = v29;
  v31 = (v15 - v4[v30 - 1]) / (v4[v30] - v4[v30 - 1]);
  return *(v5 + v30 * 8) * v31 + *(v5 + v30 * 8 - 8) * (1.0 - v31);
}

void sub_B6D4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_B6DA8(uint64_t a1, uint64_t **a2)
{
  v2 = *a2;
  v3 = 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2);
  v4 = v3 >> 1;
  if (**(a1 + 72) != 1)
  {
LABEL_18:
    if (v3 >= 2)
    {
      v20 = (8 * (*a2)[1] - 8) >> 3;
      if (v20 >= 1)
      {
        v21 = **a2;
        if (8 * (*a2)[1] != 16)
        {
          do
          {
            v22 = (2 * v20) & 0xFFFFFFFFFFFFFFF8;
            _X13 = v21 + v22;
            __asm { PRFM            #0, [X13] }

            v29 = (v21 + 8 * (v20 >> 1));
            _X12 = v29 + v22;
            __asm { PRFM            #0, [X12] }

            if (*v29 >= *(*a2)[3 * v4 + 3])
            {
              v32 = 0;
            }

            else
            {
              v32 = v20 >> 1;
            }

            v21 += 8 * v32;
            v20 -= v20 >> 1;
          }

          while (v20 > 1);
        }
      }

      operator new();
    }

    return;
  }

  v5 = (*a2)[3 * (v3 >> 1) + 1];
  if (!v5)
  {
    operator new();
  }

  if (v3 >= 2)
  {
    if (v3 >= 4)
    {
      v6 = v4 & 0x7FFFFFFFFFFFFFFELL;
      v8 = v2 + 4;
      v9 = 1;
      v10 = v4 & 0x7FFFFFFFFFFFFFFELL;
      v11 = 1;
      do
      {
        v12 = *(v8 - 3);
        v13 = *v8;
        v8 += 6;
        v9 *= v12;
        v11 *= v13;
        v10 -= 2;
      }

      while (v10);
      v7 = v11 * v9;
      if (v4 == v6)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v6 = 0;
      v7 = 1;
    }

    v14 = v4 - v6;
    v15 = &v2[3 * v6 + 1];
    do
    {
      v16 = *v15;
      v15 += 3;
      v7 *= v16;
      --v14;
    }

    while (v14);
LABEL_14:
    if (v7 != v5)
    {
      goto LABEL_27;
    }

    v17 = v2 + 1;
    v18 = v3 >> 1;
    do
    {
      v19 = *v17;
      v17 += 3;
      if (!v19)
      {
        operator new();
      }

      --v18;
    }

    while (v18);
    goto LABEL_18;
  }

  if (v5 != 1)
  {
LABEL_27:
    operator new();
  }
}

void sub_B7274(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_B72D0(uint64_t a1, double *a2)
{
  v4 = *a2;
  if (*a2 < -0.00001 || v4 > 100.00001)
  {
    v5 = *(a1 + 56);
    sub_B2F1C("Input parameter to custom function percentage_to_energy_wh() is expected to be a percentage in the range [0, 100], got ", ".", __p);
    v6 = *(v5 + 8);
    if (v6 >= *(v5 + 16))
    {
      *(v5 + 8) = sub_1CEE8(v5, __p);
      if ((SHIBYTE(v10) & 0x80000000) == 0)
      {
LABEL_7:
        v4 = *a2;
        goto LABEL_8;
      }
    }

    else
    {
      if (SHIBYTE(v10) < 0)
      {
        sub_325C(*(v5 + 8), __p[0], __p[1]);
      }

      else
      {
        v7 = *__p;
        *(v6 + 16) = v10;
        *v6 = v7;
      }

      *(v5 + 8) = v6 + 24;
      *(v5 + 8) = v6 + 24;
      if ((SHIBYTE(v10) & 0x80000000) == 0)
      {
        goto LABEL_7;
      }
    }

    operator delete(__p[0]);
    goto LABEL_7;
  }

LABEL_8:
  if (v4 > 100.0)
  {
    v4 = 100.0;
  }

  return **(a1 + 40) + fmax(v4, 0.0) / 100.0 * (**(a1 + 48) - **(a1 + 40));
}

void sub_B73EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  *(v15 + 8) = v16;
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_B7648(_Unwind_Exception *a1)
{
  sub_B86B4((v1 + 192));
  sub_2A22E4(v2);
  sub_B3588(v1);
  _Unwind_Resume(a1);
}

void sub_B7674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9)
{
  sub_B3464(&a9);
  sub_B3588(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_B76D8(uint64_t result)
{
  *result = off_262ECC8;
  if (*(result + 55) < 0)
  {
    v1 = result;
    operator delete(*(result + 32));
    return v1;
  }

  return result;
}

uint64_t sub_B7734(uint64_t result)
{
  *result = off_262ECC8;
  if (*(result + 55) < 0)
  {
    v1 = result;
    operator delete(*(result + 32));
    return v1;
  }

  return result;
}

uint64_t sub_B7790(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (!*a1)
  {
    return 0;
  }

  v3 = *(*a1 + 8);
  if (!v3)
  {
    return 0;
  }

  v4 = *(a2 + 23);
  if (v4 < 0)
  {
    v5 = *(a2 + 8);
    if (!v5 || (**a2 & 0xDFu) - 65 >= 0x1A)
    {
      return 0;
    }
  }

  else
  {
    if (!*(a2 + 23) || (*a2 & 0xDFu) - 65 >= 0x1A)
    {
      return 0;
    }

    v5 = *(a2 + 23);
  }

  if (v5 >= 2)
  {
    v6 = v4 >= 0 ? *(a2 + 23) : *(a2 + 8);
    if (v6 >= 2)
    {
      if (v4 >= 0)
      {
        v7 = a2;
      }

      else
      {
        v7 = *a2;
      }

      v8 = 1;
      do
      {
        v9 = v7[v8];
        v10 = (v9 - 48) >= 0xA && (v9 & 0xFFFFFFDF) - 65 >= 0x1A;
        if (v10 && v9 != 95)
        {
          if ((v4 & 0x80000000) != 0)
          {
            v11 = *(a2 + 8);
            if (*(*a2 + v8) != 46)
            {
              return 0;
            }
          }

          else
          {
            v11 = *(a2 + 23);
            if (*(a2 + v8) != 46)
            {
              return 0;
            }
          }

          if (v8 >= v11 - 1)
          {
            return 0;
          }
        }
      }

      while (v6 != ++v8);
    }
  }

  if ((v3 + 280) != sub_BC168(v3 + 272, a2))
  {
    return 0;
  }

  v16 = a2;
  v17 = a3;
  v18 = a1;
  v19 = *a1;
  if (*a1)
  {
    v20 = *(v19 + 8);
    if (v20)
    {
      v21 = *(a2 + 23);
      v22 = v21;
      v23 = *(a2 + 8);
      if ((v21 & 0x80u) == 0)
      {
        v24 = *(a2 + 23);
      }

      else
      {
        v24 = *(a2 + 8);
      }

      if (v24)
      {
        if ((v20 + 8) != sub_BC284(v20, a2))
        {
          return 0;
        }

        v21 = *(a2 + 23);
        v23 = *(a2 + 8);
        v19 = *a1;
        v22 = *(a2 + 23);
      }

      if (v22 >= 0)
      {
        v25 = v21;
      }

      else
      {
        v25 = v23;
      }

      if (v25)
      {
        v26 = *(v19 + 8);
        if ((v26 + 200) != sub_BC284(v26 + 192, a2))
        {
          return 0;
        }

        v21 = *(a2 + 23);
        v23 = *(a2 + 8);
        v19 = *a1;
        v22 = *(a2 + 23);
      }

      if (v22 < 0)
      {
        v21 = v23;
      }

      if (v21)
      {
        v27 = *(v19 + 8);
        if ((v27 + 40) != sub_BC284(v27 + 32, a2))
        {
          return 0;
        }

        v19 = *a1;
      }

      v28 = *(v19 + 8);
      v29 = (v28 + 280);
      v30 = sub_BC168(v28 + 272, a2);
      v16 = a2;
      v17 = a3;
      v18 = a1;
      if (v29 != v30)
      {
        return 0;
      }
    }
  }

  v31 = *(v17 + 56);
  if (v31 <= 1)
  {
    v32 = *(v17 + 55);
    if (v32 >= 0)
    {
      v33 = v17 + 32;
    }

    else
    {
      v33 = *(v17 + 32);
    }

    if (v32 >= 0)
    {
      v34 = *(v17 + 55);
    }

    else
    {
      v34 = *(v17 + 40);
    }

    if (!v34)
    {
LABEL_79:
      v17 = a3;
      v16 = a2;
      v18 = a1;
      goto LABEL_80;
    }

    v35 = 0;
    while (memchr("STVZ*?|", *(v33 + v35), 7uLL))
    {
      ++v35;
      v17 = a3;
      v16 = a2;
      v18 = a1;
      if (v34 == v35)
      {
        goto LABEL_66;
      }
    }

    v17 = a3;
    v16 = a2;
    v18 = a1;
    if (v35 != -1)
    {
      return 0;
    }
  }

LABEL_66:
  if (!v31)
  {
    v40 = 96;
    goto LABEL_84;
  }

  if (v31 == 1)
  {
    v40 = 128;
    goto LABEL_84;
  }

  if (v31 != 2)
  {
    return 0;
  }

  v36 = *(v17 + 55);
  if (v36 >= 0)
  {
    v37 = v17 + 32;
  }

  else
  {
    v37 = *(v17 + 32);
  }

  if (v36 >= 0)
  {
    v38 = *(v17 + 55);
  }

  else
  {
    v38 = *(v17 + 40);
  }

  if (!v38)
  {
    v40 = 160;
    goto LABEL_84;
  }

  v39 = 0;
  while (memchr("STVZ*?|:", *(v37 + v39), 8uLL))
  {
    if (v38 == ++v39)
    {
      goto LABEL_79;
    }
  }

  if (v39 != -1)
  {
    return 0;
  }

  v17 = a3;
  v16 = a2;
  v18 = a1;
LABEL_80:
  v40 = 32 * v31 + 96;
LABEL_84:
  v41 = *(*v18 + 8) + v40;

  return sub_2A277C(v41, v16, v17, 0);
}

uint64_t sub_B7B34@<X0>(const char *a1@<X0>, uint64_t **a2@<X1>, const char *a3@<X2>, _BYTE *a4@<X8>)
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

void sub_B7DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

void sub_B7DE4(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  if ((sub_B7790(*(a1 + 440), a2, a3) & 1) == 0)
  {
    sub_B7B34("Error adding function with name '", a2, "'.", __p);
    v5 = *(a1 + 400);
    if (v5 >= *(a1 + 408))
    {
      *(a1 + 400) = sub_1CEE8(a1 + 392, __p);
      if (SHIBYTE(v8) < 0)
      {
LABEL_9:
        operator delete(__p[0]);
      }
    }

    else
    {
      if (SHIBYTE(v8) < 0)
      {
        sub_325C(*(a1 + 400), __p[0], __p[1]);
      }

      else
      {
        v6 = *__p;
        *(v5 + 16) = v8;
        *v5 = v6;
      }

      *(a1 + 400) = v5 + 24;
      *(a1 + 400) = v5 + 24;
      if (SHIBYTE(v8) < 0)
      {
        goto LABEL_9;
      }
    }
  }
}

void sub_B7EBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  *(v15 + 400) = v16;
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_B7EE4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (!*a1)
  {
    return 0;
  }

  v3 = *(*a1 + 8);
  if (!v3)
  {
    return 0;
  }

  v4 = *(a2 + 23);
  if (v4 < 0)
  {
    v5 = *(a2 + 8);
    if (!v5 || (**a2 & 0xDFu) - 65 >= 0x1A)
    {
      return 0;
    }
  }

  else
  {
    if (!*(a2 + 23) || (*a2 & 0xDFu) - 65 >= 0x1A)
    {
      return 0;
    }

    v5 = *(a2 + 23);
  }

  if (v5 >= 2)
  {
    v6 = v4 >= 0 ? *(a2 + 23) : *(a2 + 8);
    if (v6 >= 2)
    {
      if (v4 >= 0)
      {
        v7 = a2;
      }

      else
      {
        v7 = *a2;
      }

      v8 = 1;
      do
      {
        v9 = v7[v8];
        v10 = (v9 - 48) >= 0xA && (v9 & 0xFFFFFFDF) - 65 >= 0x1A;
        if (v10 && v9 != 95)
        {
          if ((v4 & 0x80000000) != 0)
          {
            v11 = *(a2 + 8);
            if (*(*a2 + v8) != 46)
            {
              return 0;
            }
          }

          else
          {
            v11 = *(a2 + 23);
            if (*(a2 + v8) != 46)
            {
              return 0;
            }
          }

          if (v8 >= v11 - 1)
          {
            return 0;
          }
        }
      }

      while (v6 != ++v8);
    }
  }

  if ((v3 + 280) != sub_BC168(v3 + 272, a2))
  {
    return 0;
  }

  v16 = a2;
  v17 = *a1;
  v18 = *(*a1 + 8);
  if (v18)
  {
    v19 = *(a2 + 23);
    v20 = v19;
    v21 = *(a2 + 8);
    if ((v19 & 0x80u) == 0)
    {
      v22 = *(a2 + 23);
    }

    else
    {
      v22 = *(a2 + 8);
    }

    if (v22)
    {
      if ((v18 + 8) != sub_BC284(v18, a2))
      {
        return 0;
      }

      v19 = *(a2 + 23);
      v21 = *(a2 + 8);
      v17 = *a1;
      v20 = *(a2 + 23);
    }

    if (v20 >= 0)
    {
      v23 = v19;
    }

    else
    {
      v23 = v21;
    }

    if (v23)
    {
      v24 = *(v17 + 8);
      if ((v24 + 200) != sub_BC284(v24 + 192, a2))
      {
        return 0;
      }

      v19 = *(a2 + 23);
      v21 = *(a2 + 8);
      v17 = *a1;
      v20 = *(a2 + 23);
    }

    if (v20 < 0)
    {
      v19 = v21;
    }

    if (v19)
    {
      v25 = *(v17 + 8);
      if ((v25 + 40) != sub_BC284(v25 + 32, a2))
      {
        return 0;
      }

      v17 = *a1;
    }

    v26 = *(v17 + 8);
    if ((v26 + 280) != sub_BC168(v26 + 272, a2))
    {
      return 0;
    }

    v16 = a2;
    v27 = a3;
    v17 = *a1;
  }

  else
  {
    v27 = a3;
  }

  v28 = *(v17 + 8) + 32;

  return sub_2A2C98(v28, v16, v27, 0);
}