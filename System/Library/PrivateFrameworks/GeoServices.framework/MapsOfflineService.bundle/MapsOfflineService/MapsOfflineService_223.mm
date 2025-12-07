uint64_t sub_D3C228(uint64_t a1)
{
  if (*a1 == 1)
  {
    sub_D3C144(a1 + 8);
    return a1;
  }

  v3 = *(a1 + 24);
  if (!v3)
  {
    return a1;
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 24);
  if (v4 != v3)
  {
    do
    {
      if (*(v4 - 1) < 0)
      {
        operator delete(*(v4 - 24));
      }

      v4 -= 32;
    }

    while (v4 != v3);
    v5 = *(a1 + 24);
  }

  *(a1 + 32) = v3;
  operator delete(v5);
  return a1;
}

void sub_D3C2C4(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  if (sub_F63D58(*a1))
  {
    *(a2 + 96) = 0;
    *(a2 + 104) = 0;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 96) = -1;
    *(a2 + 101) = 0;
    *(a2 + 112) = 0;
    *(a2 + 120) = 0;
  }

  else
  {
    v4 = a1[1][31];
    if (v4)
    {
      v5 = *a1;
      v21[0] = -1;
      v21[1] = -1;
      sub_4D1DAC(v22, v5, v21, 0, a1[2], v4);
      v20 = 0;
      *v18 = 0u;
      v19 = 0u;
      v17 = 0;
      LOBYTE(__p) = 0;
      sub_4C573C(a2, v22, 0, v18, &__p);
      if (v17 < 0)
      {
        operator delete(__p);
      }

      sub_3EEA68(v22);
    }

    else
    {
      v6 = *a1;
      v18[0] = 0;
      v18[1] = 0;
      *&v19 = 0;
      v25 = 0u;
      memset(v26, 0, sizeof(v26));
      *v23 = 0u;
      v24 = 0u;
      *v22 = 0u;
      v7 = a1[2];
      v14 = 0;
      v15 = 0;
      v13 = 0;
      v8 = *v7;
      v9 = v7[1];
      *&__p = &v13;
      BYTE8(__p) = 0;
      if (v9 != v8)
      {
        if (0x8E38E38E38E38E39 * ((v9 - v8) >> 5) < 0xE38E38E38E38E4)
        {
          operator new();
        }

        sub_1794();
      }

      sub_4C5624(a2, v6, v18, v22, &v13);
      v10 = v13;
      if (v13)
      {
        v11 = v14;
        v12 = v13;
        if (v14 != v13)
        {
          do
          {
            v11 = sub_3EE9A4(v11 - 36);
          }

          while (v11 != v10);
          v12 = v13;
        }

        v14 = v10;
        operator delete(v12);
      }

      if (v23[1])
      {
        *&v24 = v23[1];
        operator delete(v23[1]);
      }

      if (v22[0])
      {
        v22[1] = v22[0];
        operator delete(v22[0]);
      }

      if (v18[0])
      {
        v18[1] = v18[0];
        operator delete(v18[0]);
      }
    }
  }
}

void sub_D3C500(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  sub_419F14(&a9);
  sub_21DB4B4(&a26);
  if (__p)
  {
    a19 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_D3C588(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  if (sub_F64B34(*a1))
  {
    *(a2 + 96) = 0;
    *(a2 + 104) = 0;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 96) = -1;
    *(a2 + 101) = 0;
    *(a2 + 112) = 0;
    *(a2 + 120) = 0;
  }

  else
  {
    v4 = a1[1][31];
    if (v4)
    {
      v5 = *a1;
      v21[0] = -1;
      v21[1] = -1;
      sub_4D6464(v22, v5, v21, 0, a1[2], v4);
      v20 = 0;
      *v18 = 0u;
      v19 = 0u;
      v17 = 0;
      LOBYTE(__p) = 0;
      sub_4C63BC(a2, v22, 0, v18, &__p);
      if (v17 < 0)
      {
        operator delete(__p);
      }

      sub_3EEA68(v22);
    }

    else
    {
      v6 = *a1;
      v18[0] = 0;
      v18[1] = 0;
      *&v19 = 0;
      v25 = 0u;
      memset(v26, 0, sizeof(v26));
      *v23 = 0u;
      v24 = 0u;
      *v22 = 0u;
      v7 = a1[2];
      v14 = 0;
      v15 = 0;
      v13 = 0;
      v8 = *v7;
      v9 = v7[1];
      *&__p = &v13;
      BYTE8(__p) = 0;
      if (v9 != v8)
      {
        if (0x8E38E38E38E38E39 * ((v9 - v8) >> 5) < 0xE38E38E38E38E4)
        {
          operator new();
        }

        sub_1794();
      }

      sub_4C62A4(a2, v6, v18, v22, &v13);
      v10 = v13;
      if (v13)
      {
        v11 = v14;
        v12 = v13;
        if (v14 != v13)
        {
          do
          {
            v11 = sub_3EE9A4(v11 - 36);
          }

          while (v11 != v10);
          v12 = v13;
        }

        v14 = v10;
        operator delete(v12);
      }

      if (v23[1])
      {
        *&v24 = v23[1];
        operator delete(v23[1]);
      }

      if (v22[0])
      {
        v22[1] = v22[0];
        operator delete(v22[0]);
      }

      if (v18[0])
      {
        v18[1] = v18[0];
        operator delete(v18[0]);
      }
    }
  }
}

void sub_D3C7C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  sub_419F14(&a9);
  sub_21DB4B4(&a26);
  if (__p)
  {
    a19 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_D3C84C()
{
  byte_27B51DF = 3;
  LODWORD(qword_27B51C8) = 5136193;
  byte_27B51F7 = 3;
  LODWORD(qword_27B51E0) = 5136194;
  byte_27B520F = 3;
  LODWORD(qword_27B51F8) = 5136195;
  byte_27B5227 = 15;
  strcpy(&qword_27B5210, "vehicle_mass_kg");
  byte_27B523F = 21;
  strcpy(&xmmword_27B5228, "vehicle_cargo_mass_kg");
  byte_27B5257 = 19;
  strcpy(&qword_27B5240, "vehicle_aux_power_w");
  byte_27B526F = 15;
  strcpy(&qword_27B5258, "dcdc_efficiency");
  strcpy(&qword_27B5270, "drive_train_efficiency");
  HIBYTE(word_27B5286) = 22;
  operator new();
}

void sub_D3CA28(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27B5286) < 0)
  {
    sub_21E44A8();
  }

  sub_21E44B4();
  _Unwind_Resume(a1);
}

void sub_D3CA48(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  LOBYTE(v41) = 0;
  v47 = 0;
  LOBYTE(v48) = 0;
  *(&v48 + 1) = 0;
  v3 = *a1;
  v4 = *(*a1 + 392);
  if (!v4)
  {
    v4 = &off_27734B8;
  }

  if ((v4[2] & 1) == 0 || *(v4 + 11) != 2)
  {
    *a2 = 1;
    *(a2 + 8) = 0;
    *(a2 + 72) = 0;
    *(a2 + 80) = v48;
    return;
  }

  sub_7E9A4(v40);
  LOBYTE(v48) = 1;
  v5 = *(v3 + 336);
  if (!v5)
  {
    v5 = &off_2772E28;
  }

  v6 = v5[10];
  if (!v6)
  {
    v6 = &off_2772DF8;
  }

  if (v6[2])
  {
    v8 = *(v3 + 392);
    if (!v8)
    {
      v8 = &off_27734B8;
    }

    sub_9901FC(v8[3] & 0xFFFFFFFFFFFFFFFELL, &__dst);
    if (v27 != v28 || (v29 & 1) != 0)
    {
      if (v47 == 1)
      {
        v41 = __dst;
        if (SHIBYTE(v43) < 0)
        {
          if (v26 >= 0)
          {
            v12 = &v25;
          }

          else
          {
            v12 = v25;
          }

          if (v26 >= 0)
          {
            v13 = HIBYTE(v26);
          }

          else
          {
            v13 = *(&v25 + 1);
          }

          sub_13B38(&v42, v12, v13);
        }

        else if (v26 < 0)
        {
          sub_13A68(&v42, v25, *(&v25 + 1));
        }

        else
        {
          v42 = v25;
          v43 = v26;
        }

        sub_602DCC(&v44, v27, v28, (v28 - v27) >> 5);
        v46 = v29;
      }

      else
      {
        sub_D3D26C(&v41, &__dst);
        v47 = 1;
      }

      *(&v48 + 1) = vcvtad_u64_f64(sub_7EA60(v40));
      *a2 = 1;
      *(a2 + 8) = 0;
      *(a2 + 72) = 0;
      if (v47 == 1)
      {
        v16 = v43;
        *(a2 + 8) = v41;
        *(a2 + 16) = v42;
        *(a2 + 32) = v16;
        v42 = 0uLL;
        *(a2 + 40) = v44;
        *(a2 + 56) = v45;
        v43 = 0;
        v44 = 0uLL;
        v45 = 0;
        *(a2 + 64) = v46;
        *(a2 + 72) = 1;
      }

      *(a2 + 80) = v48;
      v17 = v27;
      if (!v27)
      {
        goto LABEL_58;
      }

      goto LABEL_57;
    }

    if (!sub_7E7E4(1u))
    {
LABEL_80:
      v22.n128_u64[0] = 1;
      v22.n128_u64[1] = &off_2669FE0;
      sub_434934(&v30, &v22);
      *a2 = 0;
      v21 = v31;
      *(a2 + 8) = v30;
      *(a2 + 24) = v21;
      *(a2 + 40) = v32;
      *(a2 + 48) = v33;
      v17 = v27;
      if (!v27)
      {
LABEL_58:
        if (SHIBYTE(v26) < 0)
        {
          operator delete(v25);
        }

        goto LABEL_60;
      }

LABEL_57:
      v28 = v17;
      operator delete(v17);
      goto LABEL_58;
    }

    sub_19594F8(v30.n128_f64);
    sub_4A5C(&v30, "Failed to parse route handle from the request", 45);
    if ((v39 & 0x10) != 0)
    {
      v18 = v38;
      if (v38 < v35)
      {
        v38 = v35;
        v18 = v35;
      }

      v19 = &v34;
    }

    else
    {
      if ((v39 & 8) == 0)
      {
        v11 = 0;
        v23 = 0;
LABEL_75:
        v22.n128_u8[v11] = 0;
        sub_7E854(&v22, 1u);
        if (v23 < 0)
        {
          operator delete(v22.n128_u64[0]);
        }

        if (v37 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v31);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_80;
      }

      v19 = &v31 + 1;
      v18 = v33;
    }

    v20 = *v19;
    v11 = v18 - *v19;
    if (v11 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v11 >= 0x17)
    {
      operator new();
    }

    v23 = v18 - *v19;
    if (v11)
    {
      memmove(&v22, v20, v11);
    }

    goto LABEL_75;
  }

  if (sub_7E7E4(1u))
  {
    sub_19594F8(v30.n128_f64);
    sub_4A5C(&v30, "Transit continuity request does not have a timepoint", 52);
    if ((v39 & 0x10) != 0)
    {
      v9 = v38;
      if (v38 < v35)
      {
        v38 = v35;
        v9 = v35;
      }

      v10 = &v34;
    }

    else
    {
      if ((v39 & 8) == 0)
      {
        v7 = 0;
        HIBYTE(v25) = 0;
LABEL_46:
        *(&__dst + v7) = 0;
        sub_7E854(&__dst, 1u);
        if (SHIBYTE(v25) < 0)
        {
          operator delete(__dst);
        }

        if (v37 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v31);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_51;
      }

      v10 = &v31 + 1;
      v9 = v33;
    }

    v14 = *v10;
    v7 = v9 - *v10;
    if (v7 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v7 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v25) = v9 - *v10;
    if (v7)
    {
      memmove(&__dst, v14, v7);
    }

    goto LABEL_46;
  }

LABEL_51:
  __dst = &dword_0 + 1;
  *&v25 = &off_2669FE0;
  sub_434934(&v30, &__dst);
  *a2 = 0;
  v15 = v31;
  *(a2 + 8) = v30;
  *(a2 + 24) = v15;
  *(a2 + 40) = v32;
  *(a2 + 48) = v33;
LABEL_60:
  if (v47)
  {
    if (v44)
    {
      *(&v44 + 1) = v44;
      operator delete(v44);
    }

    if (SHIBYTE(v43) < 0)
    {
      operator delete(v42);
    }
  }
}

void sub_D3D16C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a23);
  sub_98ECD0(&a15);
  sub_D3D38C(v23 - 136);
  _Unwind_Resume(a1);
}

void sub_D3D1B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    sub_1959728(&a23);
    sub_D3D38C(v23 - 136);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a23);
  sub_D3D38C(v23 - 136);
  _Unwind_Resume(a1);
}

void sub_D3D23C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_98ECD0(va);
  sub_D3D38C(v7 - 136);
  _Unwind_Resume(a1);
}

uint64_t sub_D3D26C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if ((*(a2 + 31) & 0x80000000) == 0)
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    v6 = *(a2 + 32);
    v5 = *(a2 + 40);
    v7 = v5 - v6;
    if (v5 == v6)
    {
      goto LABEL_7;
    }

LABEL_5:
    if ((v7 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  sub_325C((a1 + 8), *(a2 + 8), *(a2 + 16));
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v9 = *(a2 + 32);
  v8 = *(a2 + 40);
  v7 = v8 - v9;
  if (v8 != v9)
  {
    goto LABEL_5;
  }

LABEL_7:
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

void sub_D3D350(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 40) = v5;
    operator delete(v5);
    if ((*(v1 + 31) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v1 + 31) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v2);
  _Unwind_Resume(exception_object);
}

uint64_t sub_D3D38C(uint64_t result)
{
  if (*(result + 64) == 1)
  {
    v1 = *(result + 32);
    if (v1)
    {
      *(result + 40) = v1;
      v2 = result;
      operator delete(v1);
      result = v2;
    }

    if (*(result + 31) < 0)
    {
      v3 = result;
      operator delete(*(result + 8));
      return v3;
    }
  }

  return result;
}

__n128 sub_D3D3F0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_7E9A4(v32);
  memset(v31, 0, 100);
  v30 = sub_3AF6B4(*(a1 + 1584));
  v4 = *(a1 + 1576);
  v5 = *v4;
  v6 = v4[1];
  while (v5 != v6)
  {
    __p = 0;
    v28 = 0;
    v29 = 0;
    sub_D3D64C(&v30, v5, &__p);
    v8 = *&v31[8];
    if (*&v31[8] >= *&v31[16])
    {
      v9 = sub_D3E2DC(v31, v5, &__p);
    }

    else
    {
      sub_D3E44C(v31, *&v31[8], v5, &__p);
      v9 = v8 + 152;
    }

    *&v31[8] = v9;
    v10 = __p;
    if (__p)
    {
      v11 = v28;
      v7 = __p;
      if (v28 != __p)
      {
        do
        {
          v13 = *(v11 - 4);
          if (v13)
          {
            do
            {
              v14 = *v13;
              operator delete(v13);
              v13 = v14;
            }

            while (v14);
          }

          v15 = *(v11 - 6);
          *(v11 - 6) = 0;
          if (v15)
          {
            operator delete(v15);
          }

          v16 = *(v11 - 9);
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

          v18 = *(v11 - 11);
          *(v11 - 11) = 0;
          if (v18)
          {
            operator delete(v18);
          }

          v19 = v11 - 14;
          v20 = *(v11 - 14);
          if (v20)
          {
            v21 = *(v11 - 13);
            v12 = *(v11 - 14);
            if (v21 != v20)
            {
              v22 = *(v11 - 13);
              do
              {
                v24 = *(v22 - 5);
                v22 -= 40;
                v23 = v24;
                if (v24)
                {
                  *(v21 - 4) = v23;
                  operator delete(v23);
                }

                v21 = v22;
              }

              while (v22 != v20);
              v12 = *v19;
            }

            *(v11 - 13) = v20;
            operator delete(v12);
          }

          v11 -= 14;
        }

        while (v19 != v10);
        v7 = __p;
      }

      v28 = v10;
      operator delete(v7);
    }

    v5 += 128;
  }

  memset(&v31[24], 0, 76);
  *&v31[24] = vcvtad_u64_f64(sub_7EA60(v32));
  *a2 = 1;
  *(a2 + 8) = *v31;
  *(a2 + 24) = *&v31[16];
  result = *&v31[40];
  v26 = *&v31[72];
  *(a2 + 64) = *&v31[56];
  *(a2 + 80) = v26;
  *(a2 + 96) = *&v31[88];
  *(a2 + 32) = *&v31[24];
  *(a2 + 48) = result;
  return result;
}

void sub_D3D5FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_D3E76C(va);
  _Unwind_Resume(a1);
}

void sub_D3D610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_D3D760(&a9);
  sub_D3E76C(va);
  _Unwind_Resume(a1);
}

void sub_D3D630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_D3D760(&a9);
  sub_D3E76C(va);
  _Unwind_Resume(a1);
}

void sub_D3D64C(uint64_t *a1, uint64_t a2, void ***a3)
{
  v6 = sub_4C35B0(a2);
  v7 = a3[1];
  v8 = 0x6DB6DB6DB6DB6DB7 * ((v7 - *a3) >> 4);
  if (v6 <= v8)
  {
    if (v6 < v8)
    {
        ;
      }

      a3[1] = i;
    }
  }

  else
  {
    sub_D3DFD8(a3, v6 - v8);
  }

  v10 = sub_58BBC(a2);
  v11 = v10[1] - *v10;
  if (v11)
  {
    v12 = 0;
    v13 = 0xE21A291C077975B9 * (v11 >> 3);
    do
    {
      v14 = *a1;
      v15 = sub_4C49C0(a2, v12);
      v16 = sub_D3DDA4(a3, v12);
      sub_4E5AE4(v14, v15, v16);
      ++v12;
    }

    while (v13 != v12);
  }
}

char ***sub_D3D760(char ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_60AA70(v3 - 14);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_D3D7BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  sub_7E9A4(v46);
  memset(v45, 0, 100);
  sub_F4AF40(v44, *(v8 + 1584), v8, 0);
  v11 = *(v8 + 1576);
  v12 = *v11;
  v13 = v11[1];
  while (v12 != v13)
  {
    __p = 0;
    v42 = 0;
    v43 = 0;
    sub_F4AF98(v44, v12, &__p);
    v15 = *&v45[8];
    if (*&v45[8] >= *&v45[16])
    {
      v16 = sub_D3E7D0(v45, v12, &__p);
    }

    else
    {
      sub_D3E940(v45, *&v45[8], v12, &__p);
      v16 = v15 + 152;
    }

    *&v45[8] = v16;
    v17 = __p;
    if (__p)
    {
      v18 = v42;
      v14 = __p;
      if (v42 != __p)
      {
        do
        {
          v20 = *(v18 - 4);
          if (v20)
          {
            do
            {
              v21 = *v20;
              operator delete(v20);
              v20 = v21;
            }

            while (v21);
          }

          v22 = *(v18 - 6);
          *(v18 - 6) = 0;
          if (v22)
          {
            operator delete(v22);
          }

          v23 = *(v18 - 9);
          if (v23)
          {
            do
            {
              v24 = *v23;
              operator delete(v23);
              v23 = v24;
            }

            while (v24);
          }

          v25 = *(v18 - 11);
          *(v18 - 11) = 0;
          if (v25)
          {
            operator delete(v25);
          }

          v26 = v18 - 14;
          v27 = *(v18 - 14);
          if (v27)
          {
            v28 = *(v18 - 13);
            v19 = *(v18 - 14);
            if (v28 != v27)
            {
              v29 = *(v18 - 13);
              do
              {
                v31 = *(v29 - 5);
                v29 -= 40;
                v30 = v31;
                if (v31)
                {
                  *(v28 - 4) = v30;
                  operator delete(v30);
                }

                v28 = v29;
              }

              while (v29 != v27);
              v19 = *v26;
            }

            *(v18 - 13) = v27;
            operator delete(v19);
          }

          v18 -= 14;
        }

        while (v26 != v17);
        v14 = __p;
      }

      v42 = v17;
      operator delete(v14);
    }

    v12 += 128;
  }

  v32 = sub_F4B45C(v44);
  *&v45[24] = *v32;
  v33 = v32[1];
  v34 = v32[2];
  v35 = v32[3];
  *&v45[84] = *(v32 + 60);
  *&v45[72] = v35;
  *&v45[56] = v34;
  *&v45[40] = v33;
  v36 = sub_7EA60(v46);
  *v10 = 1;
  *(v10 + 24) = *&v45[16];
  *(v10 + 8) = *v45;
  memset(v45, 0, 24);
  *&v45[24] = vcvtad_u64_f64(v36);
  v37 = *&v45[40];
  v38 = *&v45[72];
  *(v10 + 64) = *&v45[56];
  *(v10 + 80) = v38;
  *(v10 + 96) = *&v45[88];
  *(v10 + 32) = *&v45[24];
  *(v10 + 48) = v37;
  sub_F4AF44(v44);
  v39 = *v45;
  if (*v45)
  {
    for (i = *&v45[8]; i != v39; sub_60A974(v45, i))
    {
      i -= 152;
    }

    *&v45[8] = v39;
    operator delete(*v45);
  }
}

void sub_D3DA4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_F4AF44(va);
  sub_D3EA68(v7 - 208);
  _Unwind_Resume(a1);
}

void sub_D3DA7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  *(v12 - 200) = v11;
  sub_D3D760(&a9);
  sub_F4AF44(va);
  sub_D3EA68(v12 - 208);
  _Unwind_Resume(a1);
}

void sub_D3DAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  sub_7E9A4(v46);
  memset(v45, 0, 100);
  sub_F4BDF8(v44, *(v8 + 1584), v8, 0);
  v11 = *(v8 + 1576);
  v12 = *v11;
  v13 = v11[1];
  while (v12 != v13)
  {
    __p = 0;
    v42 = 0;
    v43 = 0;
    sub_F4BDFC(v44, v12, &__p);
    v15 = *&v45[8];
    if (*&v45[8] >= *&v45[16])
    {
      v16 = sub_D3EACC(v45, v12, &__p);
    }

    else
    {
      sub_D3EC3C(v45, *&v45[8], v12, &__p);
      v16 = v15 + 152;
    }

    *&v45[8] = v16;
    v17 = __p;
    if (__p)
    {
      v18 = v42;
      v14 = __p;
      if (v42 != __p)
      {
        do
        {
          v20 = *(v18 - 4);
          if (v20)
          {
            do
            {
              v21 = *v20;
              operator delete(v20);
              v20 = v21;
            }

            while (v21);
          }

          v22 = *(v18 - 6);
          *(v18 - 6) = 0;
          if (v22)
          {
            operator delete(v22);
          }

          v23 = *(v18 - 9);
          if (v23)
          {
            do
            {
              v24 = *v23;
              operator delete(v23);
              v23 = v24;
            }

            while (v24);
          }

          v25 = *(v18 - 11);
          *(v18 - 11) = 0;
          if (v25)
          {
            operator delete(v25);
          }

          v26 = v18 - 14;
          v27 = *(v18 - 14);
          if (v27)
          {
            v28 = *(v18 - 13);
            v19 = *(v18 - 14);
            if (v28 != v27)
            {
              v29 = *(v18 - 13);
              do
              {
                v31 = *(v29 - 5);
                v29 -= 40;
                v30 = v31;
                if (v31)
                {
                  *(v28 - 4) = v30;
                  operator delete(v30);
                }

                v28 = v29;
              }

              while (v29 != v27);
              v19 = *v26;
            }

            *(v18 - 13) = v27;
            operator delete(v19);
          }

          v18 -= 14;
        }

        while (v26 != v17);
        v14 = __p;
      }

      v42 = v17;
      operator delete(v14);
    }

    v12 += 128;
  }

  v32 = sub_F4B45C(v44);
  *&v45[24] = *v32;
  v33 = v32[1];
  v34 = v32[2];
  v35 = v32[3];
  *&v45[84] = *(v32 + 60);
  *&v45[72] = v35;
  *&v45[56] = v34;
  *&v45[40] = v33;
  v36 = sub_7EA60(v46);
  *v10 = 1;
  *(v10 + 24) = *&v45[16];
  *(v10 + 8) = *v45;
  memset(v45, 0, 24);
  *&v45[24] = vcvtad_u64_f64(v36);
  v37 = *&v45[40];
  v38 = *&v45[72];
  *(v10 + 64) = *&v45[56];
  *(v10 + 80) = v38;
  *(v10 + 96) = *&v45[88];
  *(v10 + 32) = *&v45[24];
  *(v10 + 48) = v37;
  sub_F4AF44(v44);
  v39 = *v45;
  if (*v45)
  {
    for (i = *&v45[8]; i != v39; sub_60A974(v45, i))
    {
      i -= 152;
    }

    *&v45[8] = v39;
    operator delete(*v45);
  }
}

void sub_D3DD40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_F4AF44(va);
  sub_D3EF5C(v7 - 208);
  _Unwind_Resume(a1);
}

void sub_D3DD70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  *(v12 - 200) = v11;
  sub_D3D760(&a9);
  sub_F4AF44(va);
  sub_D3EF5C(v12 - 208);
  _Unwind_Resume(a1);
}

unint64_t sub_D3DDA4(void *a1, unint64_t a2)
{
  if (0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 4) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v16, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v16, &v17);
    v6 = std::string::append(&v17, ",size=", 6uLL);
    v7 = *&v6->__r_.__value_.__l.__data_;
    v18.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v18.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v15, 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 4));
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v15;
    }

    else
    {
      v8 = v15.__r_.__value_.__r.__words[0];
    }

    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v15.__r_.__value_.__l.__size_;
    }

    v10 = std::string::append(&v18, v8, size);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v20 = v10->__r_.__value_.__r.__words[2];
    v19 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if (v20 >= 0)
    {
      v12 = &v19;
    }

    else
    {
      v12 = v19;
    }

    if (v20 >= 0)
    {
      v13 = HIBYTE(v20);
    }

    else
    {
      v13 = *(&v19 + 1);
    }

    v14 = sub_2D390(exception, v12, v13);
  }

  return *a1 + 112 * a2;
}

void sub_D3DEF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((a33 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a27 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((a33 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a28);
  if ((a27 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:
  operator delete(a22);
  if ((a21 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_11;
}

void sub_D3DFD8(void ***a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (0x6DB6DB6DB6DB6DB7 * ((v4 - v3) >> 4) >= a2)
  {
    if (a2)
    {
      v9 = &v3[14 * a2];
      do
      {
        *(v3 + 5) = 0uLL;
        *(v3 + 6) = 0uLL;
        *(v3 + 2) = 0uLL;
        *(v3 + 3) = 0uLL;
        *v3 = 0uLL;
        *(v3 + 1) = 0uLL;
        *(v3 + 4) = 0uLL;
        *(v3 + 14) = 1065353216;
        *(v3 + 24) = 1065353216;
        v3 += 14;
      }

      while (v3 != v9);
      v3 = v9;
    }

    a1[1] = v3;
  }

  else
  {
    v5 = 0x6DB6DB6DB6DB6DB7 * ((v3 - *a1) >> 4);
    v6 = v5 + a2;
    if (v5 + a2 > 0x249249249249249)
    {
      sub_1794();
    }

    v7 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 4);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x124924924924924)
    {
      v8 = 0x249249249249249;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0x249249249249249)
      {
        operator new();
      }

      sub_1808();
    }

    v10 = 112 * v5;
    v11 = (112 * v5 + 112 * a2);
    v12 = 112 * v5;
    do
    {
      *(v12 + 80) = 0uLL;
      *(v12 + 96) = 0uLL;
      *(v12 + 32) = 0uLL;
      *(v12 + 48) = 0uLL;
      *v12 = 0uLL;
      *(v12 + 16) = 0uLL;
      *(v12 + 64) = 0uLL;
      *(v12 + 56) = 1065353216;
      *(v12 + 96) = 1065353216;
      v12 += 112;
    }

    while (v12 != v11);
    v13 = *a1;
    v14 = a1[1];
    v15 = (v10 + *a1 - v14);
    if (v14 != *a1)
    {
      v16 = *a1;
      v17 = (v10 + *a1 - v14);
      do
      {
        sub_D3E1E0(v17, v16);
        v16 += 112;
        v17 += 112;
      }

      while (v16 != v14);
      do
      {
        sub_60AA70(v13);
        v13 += 14;
      }

      while (v13 != v14);
      v13 = *a1;
    }

    *a1 = v15;
    a1[1] = v11;
    a1[2] = 0;
    if (v13)
    {

      operator delete(v13);
    }
  }
}

uint64_t sub_D3E1E0(uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = *a2;
  v2 = *(a2 + 24);
  *(result + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  v3 = *(a2 + 40);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(result + 40) = v3;
  v4 = *(a2 + 32);
  *(result + 24) = v2;
  *(result + 32) = v4;
  *(a2 + 32) = 0;
  v5 = *(a2 + 48);
  *(result + 48) = v5;
  *(result + 56) = *(a2 + 56);
  if (v5)
  {
    v6 = *(v3 + 8);
    v7 = *(result + 32);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v6 >= v7)
      {
        v6 %= v7;
      }
    }

    else
    {
      v6 &= v7 - 1;
    }

    *(v2 + 8 * v6) = result + 40;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
  }

  v8 = *(a2 + 80);
  *(result + 80) = v8;
  v9 = *(a2 + 64);
  *(result + 72) = *(a2 + 72);
  *(a2 + 64) = 0;
  *(result + 64) = v9;
  *(a2 + 72) = 0;
  v10 = *(a2 + 88);
  *(result + 88) = v10;
  *(result + 96) = *(a2 + 96);
  if (v10)
  {
    v11 = *(v8 + 8);
    v12 = *(result + 72);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(v9 + 8 * v11) = result + 80;
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
  }

  *(result + 104) = *(a2 + 104);
  return result;
}

uint64_t sub_D3E2DC(void **a1, uint64_t a2, uint64_t *a3)
{
  v3 = 0x86BCA1AF286BCA1BLL * ((a1[1] - *a1) >> 3);
  v4 = v3 + 1;
  if (v3 + 1 > 0x1AF286BCA1AF286)
  {
    sub_1794();
  }

  if (0xD79435E50D79436 * ((a1[2] - *a1) >> 3) > v4)
  {
    v4 = 0xD79435E50D79436 * ((a1[2] - *a1) >> 3);
  }

  if (0x86BCA1AF286BCA1BLL * ((a1[2] - *a1) >> 3) >= 0xD79435E50D7943)
  {
    v6 = 0x1AF286BCA1AF286;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    if (v6 <= 0x1AF286BCA1AF286)
    {
      operator new();
    }

    sub_1808();
  }

  sub_D3E44C(a1, 8 * ((a1[1] - *a1) >> 3), a2, a3);
  v7 = a1[1];
  v8 = (152 * v3 + *a1 - v7);
  sub_D3E574(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  a1[1] = (152 * v3 + 152);
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return 152 * v3 + 152;
}

void sub_D3E438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_D3E714(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_D3E44C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_3ECFD8(a2, *a3, *(a3 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(a3 + 8) - *a3) >> 4));
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  sub_CDF41C(a2 + 24, *(a3 + 24), *(a3 + 32), 0xE21A291C077975B9 * ((*(a3 + 32) - *(a3 + 24)) >> 3));
  v7 = *(a3 + 48);
  v8 = *(a3 + 64);
  v9 = *(a3 + 80);
  *(a2 + 94) = *(a3 + 94);
  *(a2 + 64) = v8;
  *(a2 + 80) = v9;
  *(a2 + 48) = v7;
  if (*(a3 + 127) < 0)
  {
    sub_325C((a2 + 104), *(a3 + 104), *(a3 + 112));
  }

  else
  {
    v10 = *(a3 + 104);
    *(a2 + 120) = *(a3 + 120);
    *(a2 + 104) = v10;
  }

  return sub_60B6D4((a2 + 128), a4);
}

void sub_D3E530(_Unwind_Exception *a1)
{
  sub_3EECC8(v2);
  sub_3ECF74(v1);
  _Unwind_Resume(a1);
}

void sub_D3E574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *a4 = *v7;
      *(a4 + 16) = *(v7 + 16);
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 40) = 0;
      *(a4 + 24) = *(v7 + 24);
      *(a4 + 40) = *(v7 + 40);
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      v8 = *(v7 + 48);
      v9 = *(v7 + 64);
      v10 = *(v7 + 80);
      *(a4 + 94) = *(v7 + 94);
      *(a4 + 64) = v9;
      *(a4 + 80) = v10;
      *(a4 + 48) = v8;
      v11 = *(v7 + 104);
      *(a4 + 120) = *(v7 + 120);
      *(a4 + 104) = v11;
      *(v7 + 112) = 0;
      *(v7 + 120) = 0;
      *(v7 + 104) = 0;
      *(a4 + 128) = 0;
      *(a4 + 136) = 0;
      *(a4 + 144) = 0;
      *(a4 + 128) = *(v7 + 128);
      *(a4 + 144) = *(v7 + 144);
      *(v7 + 128) = 0;
      *(v7 + 136) = 0;
      *(v7 + 144) = 0;
      v7 += 152;
      a4 += 152;
    }

    while (v7 != a3);
    if (a2 != a3)
    {
      do
      {
        sub_60A974(a1, v5);
        v5 += 152;
      }

      while (v5 != a3);
    }
  }
}

uint64_t sub_D3E6AC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      v6 = *a1;
      do
      {
        v4 -= 152;
        sub_60A974(v6, v4);
      }

      while (v4 != v5);
    }
  }

  return a1;
}

uint64_t sub_D3E714(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    v4 = *(a1 + 32);
    *(a1 + 16) = v3 - 152;
    sub_60A974(v4, v3 - 152);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_D3E76C(uint64_t a1)
{
  v2 = *a1;
  if (*a1)
  {
    for (i = *(a1 + 8); i != v2; sub_60A974(a1, i))
    {
      i -= 152;
    }

    *(a1 + 8) = v2;
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_D3E7D0(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = 0x86BCA1AF286BCA1BLL * ((a1[1] - *a1) >> 3);
  v4 = v3 + 1;
  if (v3 + 1 > 0x1AF286BCA1AF286)
  {
    sub_1794();
  }

  if (0xD79435E50D79436 * ((a1[2] - *a1) >> 3) > v4)
  {
    v4 = 0xD79435E50D79436 * ((a1[2] - *a1) >> 3);
  }

  if (0x86BCA1AF286BCA1BLL * ((a1[2] - *a1) >> 3) >= 0xD79435E50D7943)
  {
    v6 = 0x1AF286BCA1AF286;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    if (v6 <= 0x1AF286BCA1AF286)
    {
      operator new();
    }

    sub_1808();
  }

  sub_D3E940(a1, 8 * ((a1[1] - *a1) >> 3), a2, a3);
  v7 = a1[1];
  v8 = 152 * v3 + *a1 - v7;
  sub_60B8CC(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  a1[1] = 152 * v3 + 152;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return 152 * v3 + 152;
}

void sub_D3E92C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_60BA6C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_D3E940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_3ECFD8(a2, *a3, *(a3 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(a3 + 8) - *a3) >> 4));
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  sub_3ED39C(a2 + 24, *(a3 + 24), *(a3 + 32), 0xE21A291C077975B9 * ((*(a3 + 32) - *(a3 + 24)) >> 3));
  v7 = *(a3 + 48);
  v8 = *(a3 + 64);
  v9 = *(a3 + 80);
  *(a2 + 94) = *(a3 + 94);
  *(a2 + 64) = v8;
  *(a2 + 80) = v9;
  *(a2 + 48) = v7;
  if (*(a3 + 127) < 0)
  {
    sub_325C((a2 + 104), *(a3 + 104), *(a3 + 112));
  }

  else
  {
    v10 = *(a3 + 104);
    *(a2 + 120) = *(a3 + 120);
    *(a2 + 104) = v10;
  }

  return sub_60B6D4((a2 + 128), a4);
}

void sub_D3EA24(_Unwind_Exception *a1)
{
  sub_3EECC8(v2);
  sub_3ECF74(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_D3EA68(uint64_t a1)
{
  v2 = *a1;
  if (*a1)
  {
    for (i = *(a1 + 8); i != v2; sub_60A974(a1, i))
    {
      i -= 152;
    }

    *(a1 + 8) = v2;
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_D3EACC(void **a1, uint64_t a2, uint64_t *a3)
{
  v3 = 0x86BCA1AF286BCA1BLL * ((a1[1] - *a1) >> 3);
  v4 = v3 + 1;
  if (v3 + 1 > 0x1AF286BCA1AF286)
  {
    sub_1794();
  }

  if (0xD79435E50D79436 * ((a1[2] - *a1) >> 3) > v4)
  {
    v4 = 0xD79435E50D79436 * ((a1[2] - *a1) >> 3);
  }

  if (0x86BCA1AF286BCA1BLL * ((a1[2] - *a1) >> 3) >= 0xD79435E50D7943)
  {
    v6 = 0x1AF286BCA1AF286;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    if (v6 <= 0x1AF286BCA1AF286)
    {
      operator new();
    }

    sub_1808();
  }

  sub_D3EC3C(a1, 8 * ((a1[1] - *a1) >> 3), a2, a3);
  v7 = a1[1];
  v8 = (152 * v3 + *a1 - v7);
  sub_D3ED64(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  a1[1] = (152 * v3 + 152);
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return 152 * v3 + 152;
}

void sub_D3EC28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_D3EF04(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_D3EC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_3ECFD8(a2, *a3, *(a3 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(a3 + 8) - *a3) >> 4));
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  sub_9B8E8C(a2 + 24, *(a3 + 24), *(a3 + 32), 0xE21A291C077975B9 * ((*(a3 + 32) - *(a3 + 24)) >> 3));
  v7 = *(a3 + 48);
  v8 = *(a3 + 64);
  v9 = *(a3 + 80);
  *(a2 + 94) = *(a3 + 94);
  *(a2 + 64) = v8;
  *(a2 + 80) = v9;
  *(a2 + 48) = v7;
  if (*(a3 + 127) < 0)
  {
    sub_325C((a2 + 104), *(a3 + 104), *(a3 + 112));
  }

  else
  {
    v10 = *(a3 + 104);
    *(a2 + 120) = *(a3 + 120);
    *(a2 + 104) = v10;
  }

  return sub_60B6D4((a2 + 128), a4);
}

void sub_D3ED20(_Unwind_Exception *a1)
{
  sub_3EECC8(v2);
  sub_3ECF74(v1);
  _Unwind_Resume(a1);
}

void sub_D3ED64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *a4 = *v7;
      *(a4 + 16) = *(v7 + 16);
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 40) = 0;
      *(a4 + 24) = *(v7 + 24);
      *(a4 + 40) = *(v7 + 40);
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      v8 = *(v7 + 48);
      v9 = *(v7 + 64);
      v10 = *(v7 + 80);
      *(a4 + 94) = *(v7 + 94);
      *(a4 + 64) = v9;
      *(a4 + 80) = v10;
      *(a4 + 48) = v8;
      v11 = *(v7 + 104);
      *(a4 + 120) = *(v7 + 120);
      *(a4 + 104) = v11;
      *(v7 + 112) = 0;
      *(v7 + 120) = 0;
      *(v7 + 104) = 0;
      *(a4 + 128) = 0;
      *(a4 + 136) = 0;
      *(a4 + 144) = 0;
      *(a4 + 128) = *(v7 + 128);
      *(a4 + 144) = *(v7 + 144);
      *(v7 + 128) = 0;
      *(v7 + 136) = 0;
      *(v7 + 144) = 0;
      v7 += 152;
      a4 += 152;
    }

    while (v7 != a3);
    if (a2 != a3)
    {
      do
      {
        sub_60A974(a1, v5);
        v5 += 152;
      }

      while (v5 != a3);
    }
  }
}

uint64_t sub_D3EE9C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      v6 = *a1;
      do
      {
        v4 -= 152;
        sub_60A974(v6, v4);
      }

      while (v4 != v5);
    }
  }

  return a1;
}

uint64_t sub_D3EF04(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    v4 = *(a1 + 32);
    *(a1 + 16) = v3 - 152;
    sub_60A974(v4, v3 - 152);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_D3EF5C(uint64_t a1)
{
  v2 = *a1;
  if (*a1)
  {
    for (i = *(a1 + 8); i != v2; sub_60A974(a1, i))
    {
      i -= 152;
    }

    *(a1 + 8) = v2;
    operator delete(*a1);
  }

  return a1;
}

void sub_D3EFC0(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  if (!sub_F63D58(*a1))
  {
    v5 = a1[1];
    if (sub_E67BDC(v5) || v5[22] != v5[23] || v5[25] != v5[26])
    {
      sub_7E9A4(v28);
      v6.f64[0] = NAN;
      v6.f64[1] = NAN;
      v8.n128_u64[0] = -1;
      v8.n128_u32[2] = 0x7FFFFFFF;
      *&v9 = -1;
      *(&v9 + 1) = -1;
      v10 = 0x7FFFFFFFFFFFFFFFuLL;
      LODWORD(v11[0]) = -1935635296;
      v11[1] = 0;
      *(&v11[1] + 7) = 0;
      memset(&v11[3], 0, 24);
      v12 = 0;
      v13 = 0x7FFFFFFFFFFFFFFFLL;
      v14 = 100;
      v15 = 0;
      v16 = 0;
      v17 = vnegq_f64(v6);
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0;
      v23 = 1;
      v26 = 0;
      v24 = 0;
      v25 = 0;
      v27 = v17;
      nullsub_1();
      *&v27.f64[0] = sub_F6E3D4(*v7);
      operator new();
    }
  }

  v29.n128_u64[0] = 12;
  v29.n128_u64[1] = &off_2669FE0;
  sub_434934(&v8, &v29);
  *a2 = 0;
  v4 = v9;
  *(a2 + 8) = v8;
  *(a2 + 24) = v4;
  *(a2 + 40) = v10;
  *(a2 + 48) = DWORD2(v10);
}

void sub_D3FB18(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  if (!sub_F64B34(*a1))
  {
    v5 = a1[1];
    if (sub_E67BDC(v5) || v5[22] != v5[23] || v5[25] != v5[26])
    {
      sub_7E9A4(v29);
      v6.f64[0] = NAN;
      v6.f64[1] = NAN;
      v9.n128_u64[0] = -1;
      v9.n128_u32[2] = 0x7FFFFFFF;
      *&v10 = -1;
      *(&v10 + 1) = -1;
      v11 = 0x7FFFFFFFFFFFFFFFuLL;
      LODWORD(v12[0]) = -1935635296;
      v12[1] = 0;
      *(&v12[1] + 7) = 0;
      memset(&v12[3], 0, 24);
      v13 = 0;
      v14 = 0x7FFFFFFFFFFFFFFFLL;
      v15 = 100;
      v16 = 0;
      v17 = 0;
      v18 = vnegq_f64(v6);
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0;
      v24 = 1;
      v27 = 0;
      v25 = 0;
      v26 = 0;
      v28 = v18;
      nullsub_1();
      *&v28.f64[0] = sub_F70F54(*v7);
      operator new();
    }
  }

  v8.n128_u64[0] = 12;
  v8.n128_u64[1] = &off_2669FE0;
  sub_434934(&v9, &v8);
  *a2 = 0;
  v4 = v10;
  *(a2 + 8) = v9;
  *(a2 + 24) = v4;
  *(a2 + 40) = v11;
  *(a2 + 48) = DWORD2(v11);
}

uint64_t sub_D405F4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = v6 - *a1;
  v8 = 0x4EC4EC4EC4EC4EC5 * (v7 >> 3) + 1;
  if (v8 > 0x276276276276276)
  {
    sub_1794();
  }

  if (0x9D89D89D89D89D8ALL * ((*(a1 + 16) - v5) >> 3) > v8)
  {
    v8 = 0x9D89D89D89D89D8ALL * ((*(a1 + 16) - v5) >> 3);
  }

  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 16) - v5) >> 3)) >= 0x13B13B13B13B13BLL)
  {
    v10 = 0x276276276276276;
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    if (v10 <= 0x276276276276276)
    {
      operator new();
    }

    sub_1808();
  }

  v11 = *a2;
  v12 = *a4;
  v13 = 8 * (v7 >> 3);
  v14 = *a3;
  *v13 = *a5;
  *(v13 + 8) = v14;
  *(v13 + 16) = *(a3 + 2);
  *(v13 + 24) = v12;
  *(v13 + 32) = v11;
  *(v13 + 40) = 16842752;
  *(v13 + 48) = 0;
  *(v13 + 56) = 0;
  *(v13 + 64) = 0;
  *(v13 + 72) = 2139095039;
  *(v13 + 80) = 0;
  *(v13 + 88) = 0;
  v15 = v13 + 104;
  v16 = v13 - v7;
  *(v13 + 96) = 0;
  if (v5 != v6)
  {
    v17 = v5;
    v18 = v16;
    do
    {
      *v18 = *v17;
      v19 = *(v17 + 1);
      v20 = *(v17 + 2);
      v21 = *(v17 + 3);
      *(v18 + 64) = *(v17 + 64);
      *(v18 + 32) = v20;
      *(v18 + 48) = v21;
      *(v18 + 16) = v19;
      *(v18 + 72) = *(v17 + 18);
      *(v18 + 88) = 0;
      *(v18 + 96) = 0;
      *(v18 + 80) = *(v17 + 5);
      *(v18 + 96) = v17[12];
      v17[10] = 0;
      v17[11] = 0;
      v17[12] = 0;
      v17 += 13;
      v18 += 104;
    }

    while (v17 != v6);
    do
    {
      v23 = v5[10];
      if (v23)
      {
        v24 = v5[11];
        v22 = v5[10];
        if (v24 != v23)
        {
          do
          {
            v25 = *(v24 - 9);
            v24 -= 4;
            if (v25 < 0)
            {
              operator delete(*v24);
            }
          }

          while (v24 != v23);
          v22 = v5[10];
        }

        v5[11] = v23;
        operator delete(v22);
      }

      v5 += 13;
    }

    while (v5 != v6);
    v5 = *a1;
  }

  *a1 = v16;
  *(a1 + 8) = v15;
  *(a1 + 16) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return v15;
}

void sub_D40820(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_7E9A4(v6);
  *a2 = 1;
  bzero((a2 + 8), 0x2B8uLL);
  *(a2 + 456) = 0x3FF0000000000000;
  *(a2 + 464) = 0;
  *(a2 + 472) = 0u;
  *(a2 + 488) = 5;
  *(a2 + 496) = 0u;
  *(a2 + 512) = 0u;
  *(a2 + 528) = 0u;
  *(a2 + 544) = 0x7FFFFFFF;
  *(a2 + 632) = 0u;
  *(a2 + 552) = 0u;
  *(a2 + 568) = 0u;
  *(a2 + 584) = 0u;
  *(a2 + 600) = 0u;
  *(a2 + 609) = 0u;
  *(a2 + 648) = -1;
  *(a2 + 656) = 0x7FFFFFFF;
  *(a2 + 660) = 0;
  *(a2 + 668) = 0;
  *(a2 + 672) = -1;
  *(a2 + 680) = -1;
  *(a2 + 704) = 0;
  v5[0] = a1;
  v5[1] = a2;
  v4 = *(a1 + 8);
  if (v4 == -1)
  {
    sub_5AF20();
  }

  v7 = v5;
  (off_2673AD8[v4])(&v7, a1);
  *(a2 + 704) = sub_7EA60(v6);
}

uint64_t sub_D40934(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  sub_E7DA20(v4);
  sub_D16C58(*(v2 + 8) + 8, v4);
  return sub_5287C0(v4);
}

void *sub_D40980(void **a1, uint64_t *a2)
{
  v2 = *a1;
  sub_17541D0(v18, *a2);
  v3 = sub_E7A5E0(v18);
  sub_E79F40(v18, &v15);
  sub_D16C58(v2[1] + 8, &v15);
  sub_5287C0(&v15);
  sub_4FC024(1, v3, v2[1] + 8);
  v4 = sub_4EE130(v2[1] + 8);
  v6 = v4 != *(*v2 + 24) && v4 != 5;
  *(v2[1] + 696) = v6;
  v7 = sub_E89630(v18);
  if (sub_EA7118(v3))
  {
    v8 = sub_4EE304(v2[1] + 8);
    sub_4FB514(v8, &v15);
    v9 = v17;
    v10 = 1;
    if (v16 != v17 && v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = *(*v2 + 32);
      v10 = 1;
      if (v11 != 0x7FFFFFFFFFFFFFFFLL && v11 > v7)
      {
        v12 = v16;
        while (v12 != v17)
        {
          v13 = *(v12 - 8);
          v12 -= 56;
          if (v11 <= v13)
          {
            v9 = v12 + 56;
            break;
          }
        }

        v10 = -1227133513 * ((v16 - v9) >> 3) + 2;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  *(v2[1] + 700) = v10;
  return sub_1754598(v18);
}

void *sub_D40B30(void **a1, uint64_t *a2)
{
  v2 = *a1;
  sub_14C65CC(v9, *a2);
  v3 = sub_394BD0();
  sub_E7BE68(v9, v8);
  sub_D16C58(v2[1] + 8, v8);
  sub_5287C0(v8);
  sub_4FC024(2, v3, v2[1] + 8);
  v4 = sub_4EE130(v2[1] + 8);
  v6 = v4 != *(*v2 + 24) && v4 != 5;
  *(v2[1] + 696) = v6;
  return sub_14C6928(v9);
}

uint64_t sub_D40C1C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  sub_E867B8(*a2, v4);
  sub_D16C58(*(v2 + 8) + 8, v4);
  return sub_5287C0(v4);
}

uint64_t sub_D40C68(uint64_t *a1, void *a2)
{
  v2 = *a1;
  sub_E7DA20(v4);
  sub_D16C58(*(v2 + 8) + 8, v4);
  return sub_5287C0(v4);
}

uint64_t sub_D40CB4(uint64_t *a1, void *a2)
{
  v2 = *a1;
  sub_E7DA20(v4);
  sub_D16C58(*(v2 + 8) + 8, v4);
  return sub_5287C0(v4);
}

uint64_t sub_D40D00(uint64_t *a1, void *a2)
{
  v2 = *a1;
  sub_E7DA20(v4);
  sub_D16C58(*(v2 + 8) + 8, v4);
  return sub_5287C0(v4);
}

uint64_t sub_D40D4C(uint64_t a1)
{
  if (*a1 == 1)
  {
    sub_5287C0(a1 + 8);
    return a1;
  }

  v3 = *(a1 + 24);
  if (!v3)
  {
    return a1;
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 24);
  if (v4 != v3)
  {
    do
    {
      if (*(v4 - 1) < 0)
      {
        operator delete(*(v4 - 24));
      }

      v4 -= 32;
    }

    while (v4 != v3);
    v5 = *(a1 + 24);
  }

  *(a1 + 32) = v3;
  operator delete(v5);
  return a1;
}

void sub_D40DE8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *a1 = a2;
  *(a1 + 8) = 1;
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  *(a1 + 32) = 0x7FFFFFFFFFFFFFFFLL;
  operator new();
}

void sub_D41050(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *a1 = a2;
  *(a1 + 8) = 2;
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  *(a1 + 32) = 0x7FFFFFFFFFFFFFFFLL;
  operator new();
}

uint64_t sub_D412B8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *a2 = 0u;
  sub_195A048(a2, "SessionStateParserModule", 0x18uLL);
  v6 = 1;
  v4 = a2[4];
  if (v4 >= a2[5])
  {
    result = sub_D0ACE4(a2 + 3, "Runtime", &v6, a1);
    a2[4] = result;
  }

  else
  {
    sub_D0AE98(a2[4], "Runtime", &v6, a1);
    result = v4 + 48;
    a2[4] = v4 + 48;
  }

  return result;
}

void sub_D41384(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_D413B0(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_7E9A4(v29);
  *a3 = 0x7FFFFFFF;
  *(a3 + 8) = 0;
  *(a3 + 40) = 0u;
  v6 = (a3 + 40);
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 56) = 0u;
  v25 = a3;
  *a3 = *sub_3B6890(a2);
  v7 = sub_74700();
  v8 = sub_73EE4(v7);
  if ((a3 + 8) != v8)
  {
    sub_74300((a3 + 8), *v8, v8[1], 0xAAAAAAAAAAAAAAABLL * (v8[1] - *v8));
  }

  *(a3 + 32) = a1[9] != a1[10];
  v27 = 0uLL;
  v28 = 0;
  sub_D419F4(&v27, 0x34F72C234F72C235 * ((a1[4] - a1[3]) >> 3));
  v9 = a1[3];
  v10 = a1[4];
  if (v9 != v10)
  {
    v26 = a2;
    do
    {
      sub_D416AC(v9, a2, &v30);
      v12 = *(&v27 + 1);
      if (*(&v27 + 1) < v28)
      {
        v11 = v30;
        *(*(&v27 + 1) + 4) = v31;
        *v12 = v11;
        *(v12 + 16) = 0;
        *(v12 + 24) = 0;
        *(v12 + 8) = 0;
        *(v12 + 8) = *__p;
        *(v12 + 24) = v33;
        *(&v27 + 1) = v12 + 32;
      }

      else
      {
        v13 = sub_D41DCC(&v27, &v30);
        v14 = __p[0];
        *(&v27 + 1) = v13;
        if (__p[0])
        {
          v15 = v6;
          v16 = __p[1];
          v17 = __p[0];
          if (__p[1] != __p[0])
          {
            do
            {
              v18 = *(v16 - 3);
              if (v18)
              {
                v19 = *(v16 - 2);
                v20 = *(v16 - 3);
                if (v19 != v18)
                {
                  do
                  {
                    v21 = v19 - 32;
                    v22 = *(v19 - 8);
                    if (v22 != -1)
                    {
                      (off_2673B58[v22])(&v34, v19 - 32);
                    }

                    *(v19 - 8) = -1;
                    v19 -= 32;
                  }

                  while (v21 != v18);
                  v20 = *(v16 - 3);
                }

                *(v16 - 2) = v18;
                operator delete(v20);
              }

              v23 = *(v16 - 8);
              if (v23 != -1)
              {
                (off_2673B58[v23])(&v34, v16 - 7);
              }

              v24 = (v16 - 10);
              *(v16 - 8) = -1;
              if (*(v16 - 57) < 0)
              {
                operator delete(*v24);
              }

              v16 -= 10;
            }

            while (v24 != v14);
            v17 = __p[0];
          }

          __p[1] = v14;
          operator delete(v17);
          v6 = v15;
          a2 = v26;
        }
      }

      v9 += 232;
    }

    while (v9 != v10);
  }

  if (*v6)
  {
    sub_D41820(v6);
    operator delete(*v6);
  }

  *(v25 + 40) = v27;
  *(v25 + 56) = v28;
  *(v25 + 64) = sub_7EA60(v29);
}

void sub_D4164C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_D417E4(va);
  sub_D41964(a4);
  _Unwind_Resume(a1);
}

void sub_D416AC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_3B0530(a2);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *a3 = 0;
  *(a3 + 4) = 0;
  *a3 = *(a1 + 144);
  *(a3 + 1) = sub_504834(a1);
  *(a3 + 2) = sub_504908(a1);
  *(a3 + 3) = *(a1 + 192);
  *(a3 + 4) = sub_50496C(a1, v5);
  *(a3 + 5) = sub_504AA4(a1, v5);
  if (a3 + 8 != a1 + 208)
  {
    sub_9FD394((a3 + 8), *(a1 + 208), *(a1 + 216), 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 216) - *(a1 + 208)) >> 4));
  }
}

uint64_t sub_D41780(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 8);
    if (v3 != v2)
    {
      do
      {
        v3 -= 80;
        sub_3ED230(v3);
      }

      while (v3 != v2);
      v4 = *(a1 + 8);
    }

    *(a1 + 16) = v2;
    operator delete(v4);
  }

  return a1;
}

void **sub_D417E4(void **a1)
{
  if (*a1)
  {
    sub_D41820(a1);
    operator delete(*a1);
  }

  return a1;
}

void sub_D41820(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      v5 = *(v3 - 24);
      if (v5)
      {
        v6 = *(v3 - 16);
        v4 = *(v3 - 24);
        if (v6 != v5)
        {
          do
          {
            v7 = *(v6 - 3);
            if (v7)
            {
              v8 = *(v6 - 2);
              v9 = *(v6 - 3);
              if (v8 != v7)
              {
                do
                {
                  v10 = v8 - 32;
                  v11 = *(v8 - 2);
                  if (v11 != -1)
                  {
                    (off_2673B58[v11])(&v14, v8 - 32);
                  }

                  *(v8 - 2) = -1;
                  v8 -= 32;
                }

                while (v10 != v7);
                v9 = *(v6 - 3);
              }

              *(v6 - 2) = v7;
              operator delete(v9);
            }

            v12 = *(v6 - 8);
            if (v12 != -1)
            {
              (off_2673B58[v12])(&v15, v6 - 7);
            }

            v13 = v6 - 10;
            *(v6 - 8) = -1;
            if (*(v6 - 57) < 0)
            {
              operator delete(*v13);
            }

            v6 -= 10;
          }

          while (v13 != v5);
          v4 = *(v3 - 24);
        }

        *(v3 - 16) = v5;
        operator delete(v4);
      }

      v3 -= 32;
    }

    while (v3 != v2);
  }

  a1[1] = v2;
}

void *sub_D41964(void *a1)
{
  v2 = (a1 + 5);
  if (a1[5])
  {
    sub_D41820(a1 + 5);
    operator delete(*v2);
  }

  v3 = a1[1];
  if (v3)
  {
    v4 = a1[2];
    v5 = a1[1];
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
      v5 = a1[1];
    }

    a1[2] = v3;
    operator delete(v5);
  }

  return a1;
}

uint64_t *sub_D419F4(uint64_t *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_D41AB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_D41AC8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D41AC8(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    while (1)
    {
      while (1)
      {
        v4 = i - 32;
        *(a1 + 16) = i - 32;
        v5 = *(i - 24);
        if (v5)
        {
          break;
        }

        i -= 32;
        if (v4 == v2)
        {
          goto LABEL_22;
        }
      }

      v6 = *(i - 16);
      v7 = *(i - 24);
      if (v6 != v5)
      {
        break;
      }

      *(i - 16) = v5;
      operator delete(v7);
      i = *(a1 + 16);
      if (i == v2)
      {
        goto LABEL_22;
      }
    }

    do
    {
      v8 = *(v6 - 3);
      if (v8)
      {
        v9 = *(v6 - 2);
        v10 = *(v6 - 3);
        if (v9 != v8)
        {
          do
          {
            v11 = v9 - 32;
            v12 = *(v9 - 2);
            if (v12 != -1)
            {
              (off_2673B58[v12])(&v17, v9 - 32);
            }

            *(v9 - 2) = -1;
            v9 -= 32;
          }

          while (v11 != v8);
          v10 = *(v6 - 3);
        }

        *(v6 - 2) = v8;
        operator delete(v10);
      }

      v13 = *(v6 - 8);
      if (v13 != -1)
      {
        (off_2673B58[v13])(&v18, v6 - 7);
      }

      v14 = v6 - 10;
      *(v6 - 8) = -1;
      if (*(v6 - 57) < 0)
      {
        operator delete(*v14);
      }

      v6 -= 10;
    }

    while (v14 != v5);
    v15 = *(i - 24);
    *(i - 16) = v5;
    operator delete(v15);
  }

LABEL_22:
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_D41C40(uint64_t a1, int *a2, int *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 4) = *(v6 + 2);
      *a4 = v7;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 8) = 0;
      *(a4 + 8) = *(v6 + 2);
      *(a4 + 24) = *(v6 + 3);
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *(v6 + 3) = 0;
      v6 += 8;
      a4 += 32;
    }

    while (v6 != a3);
    if (a2 != a3)
    {
      do
      {
        v9 = *(v5 + 1);
        if (v9)
        {
          v10 = *(v5 + 2);
          v8 = *(v5 + 1);
          if (v10 != v9)
          {
            do
            {
              v11 = *(v10 - 3);
              if (v11)
              {
                v12 = *(v10 - 2);
                v13 = *(v10 - 3);
                if (v12 != v11)
                {
                  do
                  {
                    v14 = v12 - 32;
                    v15 = *(v12 - 2);
                    if (v15 != -1)
                    {
                      (off_2673B58[v15])(&v18, v12 - 32);
                    }

                    *(v12 - 2) = -1;
                    v12 -= 32;
                  }

                  while (v14 != v11);
                  v13 = *(v10 - 3);
                }

                *(v10 - 2) = v11;
                operator delete(v13);
              }

              v16 = *(v10 - 8);
              if (v16 != -1)
              {
                (off_2673B58[v16])(&v19, v10 - 7);
              }

              v17 = v10 - 10;
              *(v10 - 8) = -1;
              if (*(v10 - 57) < 0)
              {
                operator delete(*v17);
              }

              v10 -= 10;
            }

            while (v17 != v9);
            v8 = *(v5 + 1);
          }

          *(v5 + 2) = v9;
          operator delete(v8);
        }

        v5 += 8;
      }

      while (v5 != a3);
    }
  }
}

uint64_t sub_D41DCC(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_1794();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 4 > v3)
  {
    v3 = v5 >> 4;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFE0)
  {
    v6 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    if (!(v6 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 32 * v2;
  v15 = 0;
  v16 = v7;
  *v7 = *a2;
  *(v7 + 4) = *(a2 + 4);
  *(v7 + 8) = *(a2 + 8);
  *(v7 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v8 = *a1;
  v9 = a1[1];
  v10 = 32 * v2 + *a1 - v9;
  v17 = (32 * v2 + 32);
  sub_D41C40(a1, v8, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_D41AC8(&v15);
  return v14;
}

void sub_D41EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_D41AC8(va);
  _Unwind_Resume(a1);
}

void sub_D41F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  sub_7E9A4(v12);
  sub_7E9A4(v11);
  sub_9F094C(v13, *(v8 + 2472), 1);
  sub_9F0A70(v13, v8, v8 + 440, (v8 + 880), *(v8 + 2456), v10);
}

void sub_D42750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  sub_1F1A8(&a29);
  sub_D42DC0(&STACK[0x8D0]);
  sub_1F1A8(&a42);
  sub_D42E4C(&STACK[0xFD8]);
  sub_528AB4(&a58);
  sub_D42FE0(&STACK[0x7C8]);
  sub_1F1A8(&STACK[0x878]);
  sub_1F1A8(&STACK[0x888]);
  sub_9FCEE0(v58);
  sub_9F0A6C(&STACK[0x10E0]);
  _Unwind_Resume(a1);
}

uint64_t sub_D428C4(double *a1)
{
  result = sub_7E7E4(2u);
  if (!result)
  {
    return result;
  }

  sub_19594F8(&v34);
  sub_4A5C(&v34, "TransitGuidanceModule took ", 27);
  v2 = std::ostream::operator<<();
  v3 = sub_4A5C(v2, " ms: [ ", 7);
  sub_4A5C(v3, "TransitRouteBuilder: ", 21);
  v4 = std::ostream::operator<<();
  v5 = sub_4A5C(v4, " ms, ", 5);
  sub_4A5C(v5, "TransitFeatureDataBuilder: ", 27);
  v6 = std::ostream::operator<<();
  v7 = sub_4A5C(v6, " ms, ", 5);
  sub_4A5C(v7, "WalkingRouteBuilder: ", 21);
  v8 = std::ostream::operator<<();
  v9 = sub_4A5C(v8, " ms, ", 5);
  sub_4A5C(v9, "TransferInstructionFinder: ", 27);
  v10 = std::ostream::operator<<();
  v11 = sub_4A5C(v10, " ms, ", 5);
  sub_4A5C(v11, "FareResolver: ", 14);
  v12 = std::ostream::operator<<();
  v13 = sub_4A5C(v12, " ms, ", 5);
  sub_4A5C(v13, "IncidentsResolver: ", 19);
  v14 = std::ostream::operator<<();
  v15 = sub_4A5C(v14, " ms, ", 5);
  sub_4A5C(v15, "TransitIncidentsAnnotation: ", 28);
  v16 = std::ostream::operator<<();
  v17 = sub_4A5C(v16, " ms, ", 5);
  sub_4A5C(v17, "TransitInstructionsBuilder: ", 28);
  v18 = std::ostream::operator<<();
  v19 = sub_4A5C(v18, " ms, ", 5);
  sub_4A5C(v19, "TransitAdvisoryBuilder: ", 24);
  v20 = std::ostream::operator<<();
  v21 = sub_4A5C(v20, " ms, ", 5);
  sub_4A5C(v21, "TransitArtworkBuilder: ", 23);
  v22 = std::ostream::operator<<();
  v23 = sub_4A5C(v22, " ms, ", 5);
  sub_4A5C(v23, "TransitStyleAttributesBuilder: ", 31);
  v24 = std::ostream::operator<<();
  v25 = sub_4A5C(v24, " ms, ", 5);
  sub_4A5C(v25, "RouteHandleAnnotation: ", 23);
  v26 = std::ostream::operator<<();
  v27 = sub_4A5C(v26, " ms, ", 5);
  sub_4A5C(v27, "WalkToAPConnector: ", 19);
  v28 = std::ostream::operator<<();
  sub_4A5C(v28, " ms ]", 5);
  if ((v44 & 0x10) != 0)
  {
    v30 = v43;
    if (v43 < v40)
    {
      v43 = v40;
      v30 = v40;
    }

    v31 = v39;
    v29 = v30 - v39;
    if (v30 - v39 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_20:
      sub_3244();
    }

LABEL_8:
    if (v29 >= 0x17)
    {
      operator new();
    }

    v33 = v29;
    if (v29)
    {
      memmove(&__p, v31, v29);
    }

    goto LABEL_13;
  }

  if ((v44 & 8) != 0)
  {
    v31 = v37;
    v29 = v38 - v37;
    if ((v38 - v37) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_20;
    }

    goto LABEL_8;
  }

  v29 = 0;
  v33 = 0;
LABEL_13:
  *(&__p + v29) = 0;
  sub_7E854(&__p, 2u);
  if (v33 < 0)
  {
    operator delete(__p);
  }

  if (v42 < 0)
  {
    operator delete(v41);
  }

  std::locale::~locale(&v36);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_D42D30(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  if (SHIBYTE(a11) < 0)
  {
    operator delete(a9);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_D42D74(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_D42DC0(uint64_t a1)
{
  v1 = *(a1 + 1744);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
  }

  v3 = a1;
  sub_6E3B8((a1 + 1712));
  sub_6E3B8((v3 + 1608));
  sub_528AB4(v3 + 32);
  return v3;
}

uint64_t sub_D42E4C(uint64_t a1)
{
  sub_D42F08(a1 + 200);
  v2 = *(a1 + 176);
  if (v2)
  {
    v3 = *(a1 + 184);
    v4 = *(a1 + 176);
    if (v3 != v2)
    {
      do
      {
        v3 = sub_399184(v3 - 456);
      }

      while (v3 != v2);
      v4 = *(a1 + 176);
    }

    *(a1 + 184) = v2;
    operator delete(v4);
  }

  v5 = *(a1 + 152);
  if (v5)
  {
    do
    {
      v6 = *v5;
      operator delete(v5);
      v5 = v6;
    }

    while (v6);
  }

  v7 = *(a1 + 136);
  *(a1 + 136) = 0;
  if (v7)
  {
    operator delete(v7);
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v8 = *(a1 + 72);
  if (v8)
  {
    *(a1 + 80) = v8;
    operator delete(v8);
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    *(a1 + 48) = v9;
    operator delete(v9);
  }

  return a1;
}

uint64_t sub_D42F08(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 40);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 3);
        if (v5)
        {
          *(v3 - 2) = v5;
          operator delete(v5);
        }

        v6 = v3 - 6;
        if (*(v3 - 25) < 0)
        {
          operator delete(*v6);
        }

        v3 -= 6;
      }

      while (v6 != v2);
      v4 = *(a1 + 40);
    }

    *(a1 + 48) = v2;
    operator delete(v4);
  }

  v7 = *(a1 + 16);
  if (v7)
  {
    do
    {
      v10 = *v7;
      v11 = *(v7 + 5);
      if (v11)
      {
        *(v7 + 6) = v11;
        operator delete(v11);
      }

      if (v7[39] < 0)
      {
        operator delete(*(v7 + 2));
      }

      operator delete(v7);
      v7 = v10;
    }

    while (v10);
  }

  v8 = *a1;
  *a1 = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return a1;
}

uint64_t sub_D42FE0(uint64_t result)
{
  v1 = *(result + 104);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_D46108(_Unwind_Exception *a1)
{
  if (qword_27B62F0)
  {
    qword_27B62F8 = qword_27B62F0;
    operator delete(qword_27B62F0);
  }

  _Unwind_Resume(a1);
}

double sub_D463A0@<D0>(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  sub_7E9A4(v46);
  sub_7E9A4(v45);
  if (sub_E67BDC((a1 + 202)) && sub_E67BDC((a1 + 257)))
  {
    v4 = *a1;
    if (**a1 != (*a1)[1])
    {
      v32 = a1;
      v44 = 0;
      v43 = 0u;
      v42 = 0u;
      v41 = 0u;
      v40 = 0u;
      v39 = 0u;
      *v38 = 0u;
      v36 = 0;
      v35 = 0;
      v37 = 0;
      v5 = *v4;
      v6 = v4[1];
      if (*v4 != v6)
      {
        do
        {
          if (!*v5)
          {
            sub_A31084(&v47, (v5 + 8));
            v7 = v36;
            if (v36 >= v37)
            {
              v11.n128_f64[0] = sub_D489E4(&v35, &v47);
              v12 = __p[0];
              v36 = v13;
              if (__p[0])
              {
                v14 = __p[1];
                v15 = __p[0];
                if (__p[1] != __p[0])
                {
                  do
                  {
                    v16 = *(v14 - 3);
                    if (v16)
                    {
                      v17 = *(v14 - 2);
                      v18 = *(v14 - 3);
                      if (v17 != v16)
                      {
                        do
                        {
                          v19 = v17 - 32;
                          v20 = *(v17 - 8);
                          if (v20 != -1)
                          {
                            (off_2673B88[v20])(&__dst, v17 - 32, v11);
                          }

                          *(v17 - 8) = -1;
                          v17 -= 32;
                        }

                        while (v19 != v16);
                        v18 = *(v14 - 3);
                      }

                      *(v14 - 2) = v16;
                      operator delete(v18);
                    }

                    v21 = *(v14 - 8);
                    if (v21 != -1)
                    {
                      (off_2673B88[v21])(&__dst, v14 - 7, v11);
                    }

                    v22 = (v14 - 10);
                    *(v14 - 8) = -1;
                    if (*(v14 - 57) < 0)
                    {
                      operator delete(*v22);
                    }

                    v14 -= 10;
                  }

                  while (v22 != v12);
                  v15 = __p[0];
                }

                __p[1] = v12;
                operator delete(v15);
              }
            }

            else
            {
              v8 = v47;
              v9 = *v48;
              *(v36 + 30) = *&v48[14];
              *v7 = v8;
              *(v7 + 16) = v9;
              *(v7 + 56) = 0;
              *(v7 + 64) = 0;
              *(v7 + 48) = 0;
              *(v7 + 48) = v49;
              *(v7 + 64) = v50;
              *(v7 + 72) = 0;
              v49 = 0uLL;
              v50 = 0;
              *(v7 + 80) = 0;
              *(v7 + 88) = 0;
              *(v7 + 72) = v51;
              v51 = 0uLL;
              *(v7 + 88) = v52;
              *(v7 + 96) = 0;
              *(v7 + 104) = 0;
              *(v7 + 112) = 0;
              *(v7 + 96) = *v53;
              *(v7 + 112) = v54;
              *(v7 + 120) = 0;
              v52 = 0;
              v53[0] = 0;
              v53[1] = 0;
              v54 = 0;
              *(v7 + 128) = 0;
              *(v7 + 136) = 0;
              *(v7 + 120) = v55;
              *(v7 + 136) = v56;
              v55 = 0uLL;
              v56 = 0;
              v10 = *v57;
              *(v7 + 157) = *&v57[13];
              *(v7 + 144) = v10;
              *(v7 + 168) = 0;
              *(v7 + 176) = 0;
              *(v7 + 184) = 0;
              *(v7 + 168) = v58;
              *(v7 + 184) = v59;
              v58 = 0uLL;
              v59 = 0;
              *(v7 + 192) = v60;
              *(v7 + 208) = 0;
              *(v7 + 216) = 0;
              *(v7 + 224) = 0;
              *(v7 + 208) = *__p;
              *(v7 + 224) = v62;
              __p[0] = 0;
              __p[1] = 0;
              v62 = 0;
              v36 = v7 + 232;
            }

            if (v58)
            {
              *(&v58 + 1) = v58;
              operator delete(v58);
            }

            if (v55)
            {
              *(&v55 + 1) = v55;
              operator delete(v55);
            }

            if (v53[0])
            {
              v53[1] = v53[0];
              operator delete(v53[0]);
            }

            if (v51)
            {
              *(&v51 + 1) = v51;
              operator delete(v51);
            }

            __dst.n128_u64[0] = &v49;
            sub_A30A34(&__dst);
          }

          v5 += 240;
        }

        while (v5 != v6);
      }

      sub_9F094C(&v47, v32[4], 0);
      sub_9F0A70(&v47, (v32 + 202), (v32 + 257), v32 + 5, 0, &__dst);
    }

    if (!sub_7E7E4(1u))
    {
      goto LABEL_78;
    }

    sub_19594F8(v47.n128_f64);
    sub_4A5C(&v47, "TransitGuidanceUpdaterModule::run failed due to the lack of journeys in the input.", 82);
    if ((v53[1] & 0x10) != 0)
    {
      v29 = v53[0];
      if (v53[0] < *(&v49 + 1))
      {
        v53[0] = *(&v49 + 1);
        v29 = *(&v49 + 1);
      }

      v30 = &v49;
    }

    else
    {
      if ((v53[1] & 8) == 0)
      {
        v28 = 0;
        v34 = 0;
LABEL_73:
        __dst.n128_u8[v28] = 0;
        sub_7E854(&__dst, 1u);
        if (v34 < 0)
        {
          operator delete(__dst.n128_u64[0]);
        }

        if (SHIBYTE(v52) < 0)
        {
          operator delete(v51);
        }

        std::locale::~locale(v48);
        std::ostream::~ostream();
        std::ios::~ios();
LABEL_78:
        __dst.n128_u64[0] = 41;
        __dst.n128_u64[1] = &off_2669FE0;
        sub_434934(&v47, &__dst);
        goto LABEL_56;
      }

      v30 = &v48[8];
      v29 = *&v48[24];
    }

    v31 = *v30;
    v28 = v29 - *v30;
    if (v28 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v28 >= 0x17)
    {
      operator new();
    }

    v34 = v29 - *v30;
    if (v28)
    {
      memmove(&__dst, v31, v28);
    }

    goto LABEL_73;
  }

  if (sub_7E7E4(1u))
  {
    sub_19594F8(v47.n128_f64);
    sub_4A5C(&v47, "TransitGuidanceUpdaterModule::run failed due to origin or destination being invalid.", 84);
    if ((v53[1] & 0x10) != 0)
    {
      v24 = v53[0];
      if (v53[0] < *(&v49 + 1))
      {
        v53[0] = *(&v49 + 1);
        v24 = *(&v49 + 1);
      }

      v25 = v49;
      v23 = &v24[-v49];
      if (&v24[-v49] > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_62;
      }
    }

    else
    {
      if ((v53[1] & 8) == 0)
      {
        v23 = 0;
        v34 = 0;
LABEL_50:
        __dst.n128_u8[v23] = 0;
        sub_7E854(&__dst, 1u);
        if (v34 < 0)
        {
          operator delete(__dst.n128_u64[0]);
        }

        if (SHIBYTE(v52) < 0)
        {
          operator delete(v51);
        }

        std::locale::~locale(v48);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_55;
      }

      v25 = *&v48[8];
      v23 = *&v48[24] - *&v48[8];
      if (*&v48[24] - *&v48[8] > 0x7FFFFFFFFFFFFFF7uLL)
      {
LABEL_62:
        sub_3244();
      }
    }

    if (v23 >= 0x17)
    {
      operator new();
    }

    v34 = v23;
    if (v23)
    {
      memmove(&__dst, v25, v23);
    }

    goto LABEL_50;
  }

LABEL_55:
  __dst.n128_u64[0] = 1;
  __dst.n128_u64[1] = &off_2669FE0;
  sub_434934(&v47, &__dst);
LABEL_56:
  *a2 = 0;
  result = v47.n128_f64[0];
  v27 = *v48;
  *(a2 + 8) = v47;
  *(a2 + 24) = v27;
  *(a2 + 40) = *&v48[16];
  *(a2 + 48) = *&v48[24];
  return result;
}

void sub_D46EE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (a56 < 0)
  {
    operator delete(__p);
    sub_1959728(&STACK[0x4C0]);
    _Unwind_Resume(a1);
  }

  sub_1959728(&STACK[0x4C0]);
  _Unwind_Resume(a1);
}

void sub_D46FE8(_Unwind_Exception *a1)
{
  sub_A30978(&STACK[0x4C0]);
  sub_A3091C(&STACK[0x408]);
  sub_9C1268(&STACK[0x420]);
  _Unwind_Resume(a1);
}

void sub_D47028(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_4A48(exception_object);
}

void **sub_D47048(void **result, uint64_t a2, char *a3, unint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0x133F84CFE133F84DLL * ((v7 - *result) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = result[1];
      v11 = v8;
      if (v10 != v8)
      {
        do
        {
          v10 = sub_9C0DEC(v10 - 1064);
        }

        while (v10 != v8);
        v11 = *v6;
      }

      v6[1] = v8;
      operator delete(v11);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0x3D980F6603D980)
    {
      v12 = 0x133F84CFE133F84DLL * (v7 >> 3);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0x1ECC07B301ECC0)
      {
        v14 = 0x3D980F6603D980;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0x3D980F6603D980)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = result[1];
  v16 = &v15[-v8];
  if (0x133F84CFE133F84DLL * (&v15[-v8] >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        result = sub_D47B18(v8, v5);
        v5 += 1064;
        v8 += 1064;
      }

      while (v5 != a3);
      v15 = v6[1];
    }

    while (v15 != v8)
    {
      v15 -= 1064;
      result = sub_9C0DEC(v15);
    }

    v6[1] = v8;
  }

  else
  {
    v17 = &v16[a2];
    if (v15 != v8)
    {
      do
      {
        result = sub_D47B18(v8, v5);
        v5 += 1064;
        v8 += 1064;
        v16 -= 1064;
      }

      while (v16);
      v15 = v6[1];
    }

    v18 = v15;
    if (v17 != a3)
    {
      v19 = 0;
      do
      {
        result = sub_D472E8(&v15[v19], &v17[v19]);
        v19 += 1064;
      }

      while (&v17[v19] != a3);
      v18 = &v15[v19];
    }

    v6[1] = v18;
  }

  return result;
}

void sub_D472BC(_Unwind_Exception *exception_object)
{
  if (v4)
  {
    v6 = v3 - 1064;
    v7 = -v4;
    do
    {
      v6 = sub_9C0DEC(v6) - 1064;
      v7 += 1064;
    }

    while (v7);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t sub_D472E8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 31) < 0)
  {
    sub_325C((a1 + 8), *(a2 + 8), *(a2 + 16));
    if ((*(a2 + 55) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
    if ((*(a2 + 55) & 0x80000000) == 0)
    {
LABEL_3:
      v5 = *(a2 + 32);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 32) = v5;
      goto LABEL_6;
    }
  }

  sub_325C((a1 + 32), *(a2 + 32), *(a2 + 40));
LABEL_6:
  sub_D47500(a1 + 56, a2 + 56);
  *(a1 + 1032) = 0;
  *(a1 + 1016) = 0u;
  sub_D475C8(a1 + 1016, *(a2 + 1016), *(a2 + 1024), 0x133F84CFE133F84DLL * ((*(a2 + 1024) - *(a2 + 1016)) >> 4));
  *(a1 + 1056) = 0;
  *(a1 + 1040) = 0u;
  v6 = *(a2 + 1040);
  v7 = *(a2 + 1048);
  if (v7 != v6)
  {
    if (0x82FA0BE82FA0BE83 * ((v7 - v6) >> 3) < 0xBE82FA0BE82FA1)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_D4747C(_Unwind_Exception *exception_object)
{
  if (*(v2 + 31) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_D47498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v10 + 1048) = v12;
  sub_D47A38(&a9);
  sub_D47ADC(v11);
  sub_9FCD0C(v10 + 56);
  sub_1AB28(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_D47500(uint64_t a1, uint64_t a2)
{
  v4 = sub_55BD50(a1, a2);
  sub_55BD50(v4 + 160, a2 + 160);
  sub_55BD50(a1 + 320, a2 + 320);
  sub_55BD50(a1 + 480, a2 + 480);
  sub_55BD50(a1 + 640, a2 + 640);
  sub_55BD50(a1 + 800, a2 + 800);
  return a1;
}

void sub_D47568(_Unwind_Exception *a1)
{
  sub_53A868(v1 + 640);
  sub_53A868(v1 + 480);
  sub_53A868(v1 + 320);
  sub_53A868(v1 + 160);
  sub_53A868(v1);
  _Unwind_Resume(a1);
}

void sub_D475C8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x1ECC07B301ECC1)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_D476CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_D476EC(va);
  *(v10 + 8) = v11;
  sub_D477CC(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_D476EC(uint64_t *a1)
{
  if ((a1[3] & 1) == 0)
  {
    v3 = a1[1];
    v2 = a1[2];
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      v6 = *a1;
      do
      {
        v4 -= 2128;
        sub_D47754(v6, v4);
      }

      while (v4 != v5);
    }
  }

  return a1;
}

void sub_D47754(uint64_t a1, uint64_t a2)
{
  sub_974F1C((a2 + 928));
  v3 = *(a2 + 880);
  if (v3)
  {
    *(a2 + 888) = v3;
    operator delete(v3);
  }

  sub_53A868(a2 + 712);
  sub_973B5C((a2 + 616));
  sub_973C60((a2 + 32));
  if (*(a2 + 31) < 0)
  {
    v4 = *(a2 + 8);

    operator delete(v4);
  }
}

void ***sub_D477CC(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    if (**result)
    {
      v1 = result;
      sub_D4781C(*result);
      operator delete(**v1);
      return v1;
    }
  }

  return result;
}

void sub_D4781C(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = v2 - 2120;
    do
    {
      sub_974F1C((v4 + 920));
      v6 = *(v4 + 872);
      if (v6)
      {
        *(v4 + 880) = v6;
        operator delete(v6);
      }

      sub_53A868(v4 + 704);
      sub_973B5C((v4 + 608));
      sub_973C60((v4 + 24));
      if (*(v4 + 23) < 0)
      {
        operator delete(*v4);
      }

      v5 = v4 - 8;
      v4 -= 2128;
    }

    while (v5 != v3);
  }

  a1[1] = v3;
}

uint64_t sub_D478B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v9 = a4;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_55BD50(v4, v6);
      sub_55BD50(v4 + 160, v6 + 160);
      if (*(v6 + 343) < 0)
      {
        sub_325C((v4 + 320), *(v6 + 320), *(v6 + 328));
      }

      else
      {
        v7 = *(v6 + 320);
        *(v4 + 336) = *(v6 + 336);
        *(v4 + 320) = v7;
      }

      v6 += 344;
      v4 = v9 + 344;
      v9 += 344;
    }

    while (v6 != a3);
  }

  return v4;
}

void sub_D47968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_53A868(v9 + 160);
  sub_53A868(v9);
  sub_D479BC(&a9);
  _Unwind_Resume(a1);
}

void sub_D479A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_53A868(v9);
  sub_D479BC(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_D479BC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    for (i = *v3; v4 != i; v4 -= 344)
    {
      if (*(v4 - 1) < 0)
      {
        operator delete(*(v4 - 24));
      }

      sub_53A868(v4 - 184);
      sub_53A868(v4 - 344);
    }
  }

  return a1;
}

void ***sub_D47A38(void ***result)
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
        do
        {
          if (*(v4 - 1) < 0)
          {
            operator delete(*(v4 - 3));
          }

          sub_53A868((v4 - 23));
          sub_53A868((v4 - 43));
          v4 -= 43;
        }

        while (v4 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

uint64_t *sub_D47ADC(uint64_t *a1)
{
  if (*a1)
  {
    sub_D4781C(a1);
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_D47B18(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = a1 + 8;
  if (a1 != a2)
  {
    v5 = *(a2 + 31);
    if (*(a1 + 31) < 0)
    {
      if (v5 >= 0)
      {
        v9 = (a2 + 8);
      }

      else
      {
        v9 = *(a2 + 8);
      }

      if (v5 >= 0)
      {
        v10 = *(a2 + 31);
      }

      else
      {
        v10 = *(a2 + 16);
      }

      sub_13B38(v4, v9, v10);
      v7 = (a2 + 32);
      v8 = *(a2 + 55);
      if (*(a1 + 55) < 0)
      {
        goto LABEL_16;
      }
    }

    else if ((*(a2 + 31) & 0x80) != 0)
    {
      sub_13A68(v4, *(a2 + 8), *(a2 + 16));
      v7 = (a2 + 32);
      v8 = *(a2 + 55);
      if (*(a1 + 55) < 0)
      {
LABEL_16:
        if ((v8 & 0x80u) == 0)
        {
          v12 = v7;
        }

        else
        {
          v12 = *(a2 + 32);
        }

        if ((v8 & 0x80u) == 0)
        {
          v13 = v8;
        }

        else
        {
          v13 = *(a2 + 40);
        }

        sub_13B38((a1 + 32), v12, v13);
        goto LABEL_24;
      }
    }

    else
    {
      v6 = *(a2 + 8);
      *(v4 + 16) = *(a2 + 24);
      *v4 = v6;
      v7 = (a2 + 32);
      v8 = *(a2 + 55);
      if (*(a1 + 55) < 0)
      {
        goto LABEL_16;
      }
    }

    if ((v8 & 0x80) != 0)
    {
      sub_13A68((a1 + 32), *(a2 + 32), *(a2 + 40));
    }

    else
    {
      v11 = *v7;
      *(a1 + 48) = v7[2];
      *(a1 + 32) = v11;
    }
  }

LABEL_24:
  sub_594568(a1 + 56, a2 + 56);
  sub_594568(a1 + 216, a2 + 216);
  sub_594568(a1 + 376, a2 + 376);
  sub_594568(a1 + 536, a2 + 536);
  sub_594568(a1 + 696, a2 + 696);
  sub_594568(a1 + 856, a2 + 856);
  if (a1 != a2)
  {
    sub_D47CB4((a1 + 1016), *(a2 + 1016), *(a2 + 1024), 0x133F84CFE133F84DLL * ((*(a2 + 1024) - *(a2 + 1016)) >> 4));
    sub_D48674((a1 + 1040), *(a2 + 1040), *(a2 + 1048), 0x82FA0BE82FA0BE83 * ((*(a2 + 1048) - *(a2 + 1040)) >> 3));
  }

  return a1;
}

void sub_D47CB4(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (0x133F84CFE133F84DLL * ((v7 - *a1) >> 4) < a4)
  {
    if (v8)
    {
      v9 = a4;
      sub_D4781C(a1);
      operator delete(*a1);
      a4 = v9;
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0x1ECC07B301ECC0)
    {
      v10 = 0x133F84CFE133F84DLL * (v7 >> 4);
      v11 = 2 * v10;
      if (2 * v10 <= a4)
      {
        v11 = a4;
      }

      if (v10 >= 0xF6603D980F660)
      {
        v12 = 0x1ECC07B301ECC0;
      }

      else
      {
        v12 = v11;
      }

      if (v12 <= 0x1ECC07B301ECC0)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v13 = a1[1];
  v14 = v13 - v8;
  if (0x133F84CFE133F84DLL * ((v13 - v8) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        sub_D47F80(v8, v5);
        v5 += 2128;
        v8 += 2128;
      }

      while (v5 != a3);
      v13 = a1[1];
    }

    if (v13 != v8)
    {
      v17 = v13 - 2120;
      do
      {
        sub_974F1C((v17 + 920));
        v19 = *(v17 + 872);
        if (v19)
        {
          *(v17 + 880) = v19;
          operator delete(v19);
        }

        sub_53A868(v17 + 704);
        sub_973B5C((v17 + 608));
        sub_973C60((v17 + 24));
        if (*(v17 + 23) < 0)
        {
          operator delete(*v17);
        }

        v18 = v17 - 8;
        v17 -= 2128;
      }

      while (v18 != v8);
    }

    a1[1] = v8;
  }

  else
  {
    v15 = a2 + v14;
    if (v13 != v8)
    {
      do
      {
        sub_D47F80(v8, v5);
        v5 += 2128;
        v8 += 2128;
        v14 -= 2128;
      }

      while (v14);
      v13 = a1[1];
    }

    v20 = v13;
    v16 = v13;
    if (v15 != a3)
    {
      v16 = v13;
      do
      {
        sub_9C193C(v16, v15);
        v15 += 2128;
        v16 = v20 + 2128;
        v20 += 2128;
      }

      while (v15 != a3);
    }

    a1[1] = v16;
  }
}

void sub_D47F50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_D476EC(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_D47F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_D476EC(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

uint64_t sub_D47F80(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = a1 + 8;
  if (a1 == a2)
  {
    sub_D48068(a1 + 32, a2 + 32);
  }

  else
  {
    v5 = *(a2 + 31);
    if (*(a1 + 31) < 0)
    {
      if (v5 >= 0)
      {
        v7 = (a2 + 8);
      }

      else
      {
        v7 = *(a2 + 8);
      }

      if (v5 >= 0)
      {
        v8 = *(a2 + 31);
      }

      else
      {
        v8 = *(a2 + 16);
      }

      sub_13B38(v4, v7, v8);
    }

    else if ((*(a2 + 31) & 0x80) != 0)
    {
      sub_13A68(v4, *(a2 + 8), *(a2 + 16));
    }

    else
    {
      v6 = *(a2 + 8);
      *(v4 + 16) = *(a2 + 24);
      *v4 = v6;
    }

    sub_D48068(a1 + 32, a2 + 32);
    sub_35354C((a1 + 880), *(a2 + 880), *(a2 + 888), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 888) - *(a2 + 880)) >> 2));
  }

  v9 = *(a2 + 904);
  *(a1 + 920) = *(a2 + 920);
  *(a1 + 904) = v9;
  sub_D48130(a1 + 928, a2 + 928);
  return a1;
}

uint64_t sub_D48068(uint64_t a1, uint64_t a2)
{
  sub_D4821C(a1, a2);
  if (a1 != a2)
  {
    sub_5F9F30((a1 + 584), *(a2 + 584), *(a2 + 592), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 592) - *(a2 + 584)) >> 5));
    sub_5F9F30((a1 + 608), *(a2 + 608), *(a2 + 616), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 616) - *(a2 + 608)) >> 5));
    sub_5F9F30((a1 + 632), *(a2 + 632), *(a2 + 640), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 640) - *(a2 + 632)) >> 5));
    sub_5F9F30((a1 + 656), *(a2 + 656), *(a2 + 664), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 664) - *(a2 + 656)) >> 5));
  }

  sub_594568(a1 + 680, a2 + 680);
  *(a1 + 840) = *(a2 + 840);
  return a1;
}

uint64_t sub_D48130(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    *(a1 + 24) = *(a2 + 24);
  }

  else
  {
    sub_D482E8(a1, *a2, *(a2 + 8), 0x66FD0EB66FD0EB67 * ((*(a2 + 8) - *a2) >> 3));
    v4 = *(a2 + 32);
    *(a1 + 24) = *(a2 + 24);
    sub_31F64((a1 + 32), v4, *(a2 + 40), (*(a2 + 40) - v4) >> 3);
  }

  sub_594568(a1 + 56, a2 + 56);
  sub_594568(a1 + 216, a2 + 216);
  sub_594568(a1 + 376, a2 + 376);
  *(a1 + 536) = *(a2 + 536);
  sub_594568(a1 + 544, a2 + 544);
  sub_594568(a1 + 704, a2 + 704);
  *(a1 + 864) = *(a2 + 864);
  sub_594568(a1 + 872, a2 + 872);
  sub_594568(a1 + 1032, a2 + 1032);
  *(a1 + 1192) = *(a2 + 1192);
  return a1;
}

uint64_t sub_D4821C(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_5F9F30(a1, *a2, *(a2 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 8) - *a2) >> 5));
    sub_5F9F30((a1 + 24), *(a2 + 24), *(a2 + 32), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 32) - *(a2 + 24)) >> 5));
    sub_5F9F30((a1 + 48), *(a2 + 48), *(a2 + 56), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 56) - *(a2 + 48)) >> 5));
    sub_5F9F30((a1 + 72), *(a2 + 72), *(a2 + 80), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 80) - *(a2 + 72)) >> 5));
  }

  sub_594568(a1 + 96, a2 + 96);
  sub_594568(a1 + 256, a2 + 256);
  sub_594568(a1 + 416, a2 + 416);
  *(a1 + 576) = *(a2 + 576);
  return a1;
}

void **sub_D482E8(void **result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0x66FD0EB66FD0EB67 * ((v7 - *result) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = result[1];
      v11 = *result;
      if (v10 != v8)
      {
        do
        {
          sub_53A868((v10 - 22));
          sub_53A868((v10 - 42));
          sub_53A868((v10 - 63));
          sub_53A868((v10 - 83));
          v10 -= 87;
        }

        while (v10 != v8);
        v11 = *v6;
      }

      v6[1] = v8;
      operator delete(v11);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0x5E293205E29320)
    {
      v12 = 0x66FD0EB66FD0EB67 * (v7 >> 3);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0x2F149902F14990)
      {
        v14 = 0x5E293205E29320;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0x5E293205E29320)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = result[1];
  if (0x66FD0EB66FD0EB67 * (v15 - v8) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        v18 = *v5;
        *(v8 + 12) = *(v5 + 12);
        *v8 = v18;
        sub_594568((v8 + 4), (v5 + 2));
        sub_594568((v8 + 24), (v5 + 12));
        *(v8 + 352) = *(v5 + 352);
        sub_594568((v8 + 45), v5 + 360);
        result = sub_594568((v8 + 65), v5 + 520);
        *(v8 + 680) = *(v5 + 680);
        *(v8 + 688) = *(v5 + 688);
        v8 += 87;
        v5 = (v5 + 696);
      }

      while (v5 != a3);
      v15 = v6[1];
    }

    for (; v15 != v8; v15 -= 87)
    {
      sub_53A868((v15 - 22));
      sub_53A868((v15 - 42));
      sub_53A868((v15 - 63));
      result = sub_53A868((v15 - 83));
    }

    v6[1] = v8;
  }

  else
  {
    v16 = (a2 + v15 - v8);
    if (v15 != v8)
    {
      do
      {
        v17 = *v5;
        *(v8 + 12) = *(v5 + 12);
        *v8 = v17;
        sub_594568((v8 + 4), (v5 + 2));
        sub_594568((v8 + 24), (v5 + 12));
        *(v8 + 352) = *(v5 + 352);
        sub_594568((v8 + 45), v5 + 360);
        sub_594568((v8 + 65), v5 + 520);
        *(v8 + 680) = *(v5 + 680);
        *(v8 + 688) = *(v5 + 688);
        v5 = (v5 + 696);
        v8 += 87;
      }

      while (v5 != v16);
      v15 = v6[1];
    }

    v19 = v15;
    result = v15;
    if (v16 != a3)
    {
      result = v15;
      do
      {
        sub_9747F8(result, v16);
        v16 = (v16 + 696);
        result = v19 + 87;
        v19 += 87;
      }

      while (v16 != a3);
    }

    v6[1] = result;
  }

  return result;
}

void sub_D48644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_9748B4(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_D4865C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_9748B4(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

uint64_t *sub_D48674(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0x82FA0BE82FA0BE83 * ((v7 - *result) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = result[1];
      v11 = *result;
      if (v10 != v8)
      {
        do
        {
          if (*(v10 - 1) < 0)
          {
            operator delete(*(v10 - 24));
          }

          sub_53A868(v10 - 184);
          sub_53A868(v10 - 344);
          v10 -= 344;
        }

        while (v10 != v8);
        v11 = *v6;
      }

      v6[1] = v8;
      operator delete(v11);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0xBE82FA0BE82FA0)
    {
      v30 = 0x82FA0BE82FA0BE83 * (v7 >> 3);
      v31 = 2 * v30;
      if (2 * v30 <= a4)
      {
        v31 = a4;
      }

      if (v30 >= 0x5F417D05F417D0)
      {
        v32 = 0xBE82FA0BE82FA0;
      }

      else
      {
        v32 = v31;
      }

      if (v32 <= 0xBE82FA0BE82FA0)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v12 = result[1];
  if (0x82FA0BE82FA0BE83 * ((v12 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      v22 = 0;
      do
      {
        v25 = v8 + v22;
        v26 = a2 + v22;
        sub_594568(v8 + v22, a2 + v22);
        result = sub_594568(v8 + v22 + 160, a2 + v22 + 160);
        if (v8 != a2)
        {
          v27 = (v26 + 320);
          v28 = *(v26 + 343);
          if (*(v25 + 343) < 0)
          {
            if (v28 >= 0)
            {
              v23 = (v26 + 320);
            }

            else
            {
              v23 = *v27;
            }

            if (v28 >= 0)
            {
              v24 = *(v26 + 343);
            }

            else
            {
              v24 = *(a2 + v22 + 328);
            }

            result = sub_13B38((v25 + 320), v23, v24);
          }

          else if ((*(v26 + 343) & 0x80) != 0)
          {
            result = sub_13A68((v25 + 320), *v27, *(a2 + v22 + 328));
          }

          else
          {
            v29 = *v27;
            *(v25 + 336) = *(v26 + 336);
            *(v25 + 320) = v29;
          }
        }

        v22 += 344;
      }

      while (v26 + 344 != a3);
      v12 = v6[1];
      v8 += v22;
    }

    for (; v12 != v8; v12 -= 344)
    {
      if (*(v12 - 1) < 0)
      {
        operator delete(*(v12 - 24));
      }

      sub_53A868(v12 - 184);
      result = sub_53A868(v12 - 344);
    }

    v6[1] = v8;
  }

  else
  {
    v13 = a2 + v12 - v8;
    if (v12 != v8)
    {
      v14 = 0;
      do
      {
        v17 = v8 + v14;
        v18 = a2 + v14;
        sub_594568(v8 + v14, a2 + v14);
        sub_594568(v8 + v14 + 160, a2 + v14 + 160);
        if (v8 != a2)
        {
          v19 = (v18 + 320);
          v20 = *(v18 + 343);
          if (*(v17 + 343) < 0)
          {
            if (v20 >= 0)
            {
              v15 = (v18 + 320);
            }

            else
            {
              v15 = *v19;
            }

            if (v20 >= 0)
            {
              v16 = *(v18 + 343);
            }

            else
            {
              v16 = *(a2 + v14 + 328);
            }

            sub_13B38((v17 + 320), v15, v16);
          }

          else if ((*(v18 + 343) & 0x80) != 0)
          {
            sub_13A68((v17 + 320), *v19, *(a2 + v14 + 328));
          }

          else
          {
            v21 = *v19;
            *(v17 + 336) = *(v18 + 336);
            *(v17 + 320) = v21;
          }
        }

        v14 += 344;
      }

      while (v18 + 344 != v13);
      v12 = v6[1];
    }

    result = sub_D478B0(v6, v13, a3, v12);
    v6[1] = result;
  }

  return result;
}

double sub_D489E4(uint64_t a1, uint64_t a2)
{
  v2 = 0x34F72C234F72C235 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x11A7B9611A7B961)
  {
    sub_1794();
  }

  if (0x69EE58469EE5846ALL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x69EE58469EE5846ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x34F72C234F72C235 * ((*(a1 + 16) - *a1) >> 3)) >= 0x8D3DCB08D3DCB0)
  {
    v5 = 0x11A7B9611A7B961;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x11A7B9611A7B961)
    {
      operator new();
    }

    sub_1808();
  }

  v14 = 8 * ((*(a1 + 8) - *a1) >> 3);
  v6 = *(a2 + 16);
  *v14 = *a2;
  *(v14 + 16) = v6;
  *(v14 + 30) = *(a2 + 30);
  *(v14 + 48) = *(a2 + 48);
  *(v14 + 64) = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(v14 + 72) = *(a2 + 72);
  *(v14 + 88) = *(a2 + 88);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(v14 + 96) = *(a2 + 96);
  *(v14 + 112) = *(a2 + 112);
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(v14 + 120) = *(a2 + 120);
  *(v14 + 136) = *(a2 + 136);
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  v7 = *(a2 + 144);
  *(v14 + 157) = *(a2 + 157);
  *(v14 + 144) = v7;
  *(v14 + 168) = *(a2 + 168);
  *(v14 + 184) = *(a2 + 184);
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  v8 = *(a2 + 208);
  *(v14 + 192) = *(a2 + 192);
  *(v14 + 208) = v8;
  *(v14 + 224) = *(a2 + 224);
  *(a2 + 208) = 0;
  *(a2 + 216) = 0;
  *(a2 + 224) = 0;
  v9 = *(a1 + 8);
  v10 = 232 * v2 + *a1 - v9;
  sub_A5B004(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = (232 * v2 + 232);
  *(a1 + 8) = v12;
  if (v11)
  {
    operator delete(v11);
    *&v12 = 232 * v2 + 232;
  }

  return *&v12;
}

void sub_D48BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_A5AFB0(va);
  _Unwind_Resume(a1);
}

void sub_D48BD4()
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
  xmmword_27B6360 = 0u;
  *algn_27B6370 = 0u;
  dword_27B6380 = 1065353216;
  sub_3A9A34(&xmmword_27B6360, v0, v0);
  sub_3A9A34(&xmmword_27B6360, v3, v3);
  sub_3A9A34(&xmmword_27B6360, __p, __p);
  sub_3A9A34(&xmmword_27B6360, v9, v9);
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
    qword_27B6338 = 0;
    qword_27B6340 = 0;
    qword_27B6330 = 0;
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

void sub_D48E1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B6348)
  {
    qword_27B6350 = qword_27B6348;
    operator delete(qword_27B6348);
  }

  _Unwind_Resume(exception_object);
}

void sub_D48EC8(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v7[0] = a2;
  v7[1] = *sub_3B8500(a2);
  v8 = a3;
  sub_D48F8C(v7, a1, a4);
}

void sub_D48F28(void *a1, int a2)
{
  v4 = __cxa_begin_catch(a1);
  if (a2 != 2)
  {
    __cxa_rethrow();
  }

  v5 = v4[2];
  *v2 = 0;
  *(v2 + 8) = v5;
  *(v2 + 16) = &off_2669FE0;

  __cxa_end_catch();
}

void sub_D48F8C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_7E9A4(v42);
  v6 = sub_3AFEE8(*a1);
  v7 = sub_2C939C(v6, 1u, 0);
  if (!v7 || (v8 = &v7[-*v7], *v8 < 0xDu) || (v9 = *(v8 + 6)) == 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v34 = sub_2D390(exception, "Root quad node of transit network layer does not contain info object", 0x44uLL);
  }

  v10 = &v7[v9 + *&v7[v9]];
  v11 = &v10[-*v10];
  if (*v11 >= 5u && (v12 = *(v11 + 2)) != 0)
  {
    v13 = &v10[v12];
    v14 = *v13;
    v15 = *&v13[v14];
    if (v15 >= 0x17)
    {
      operator new();
    }

    v41 = *&v13[v14];
    if (v15)
    {
      memcpy(&__dst, &v13[v14 + 4], v15);
    }

    p_dst = (&__dst + v15);
  }

  else
  {
    v41 = 0;
    p_dst = &__dst;
  }

  *p_dst = 0;
  v38 = 0u;
  v39 = 0u;
  v36 = 0uLL;
  v37 = 0;
  sub_D4B680(&v36, *(a2 + 56));
  v17 = *(a2 + 56);
  v18 = *(a2 + 64);
  if (v18)
  {
    v19 = (v18 + 8);
  }

  else
  {
    v19 = 0;
  }

  if (v17)
  {
    v20 = 8 * v17;
    do
    {
      v25 = *v19;
      sub_11F0388(v63, 0, 0);
      if ((sub_194DB28(v26, *(v25 + 48) & 0xFFFFFFFFFFFFFFFELL) & 1) == 0)
      {
        if (sub_7E7E4(3u))
        {
          sub_19594F8(&__t.__d_.__rep_);
          sub_4A5C(&__t, "Failed to parse server route handle to Protobuffer object; dropping request", 75);
          sub_1959680(&__t, __p);
          sub_7E854(__p, 3u);
          if (v60 < 0)
          {
            operator delete(__p[0]);
          }

          sub_1959728(&__t);
        }

        v31 = *(a1 + 16);
        sub_3608D0(&__t, "TransitJourneyParserModule.Error.RouteHandle");
        sub_7BDA0(v31, &__t, *(a1 + 8));
        if (v62 < 0)
        {
          operator delete(__t.__d_.__rep_);
        }

        v32 = __cxa_allocate_exception(0x10uLL);
        *v32 = &off_2673BE0;
        v32[2] = 1;
      }

      if ((v64 & 0x20) != 0)
      {
        __t.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
        std::chrono::system_clock::to_time_t(&__t);
        operator new();
      }

      if (v64)
      {
        operator new();
      }

      if (v65)
      {
        v27 = v65;
      }

      else
      {
        v27 = &off_2734820;
      }

      sub_D49600(a1, v27, &v43);
      sub_11F069C(v63);
      v28 = *(&v36 + 1);
      if (*(&v36 + 1) < v37)
      {
        v21 = v43;
        v22 = v44[0];
        *(*(&v36 + 1) + 30) = *(v44 + 14);
        *v28 = v21;
        *(v28 + 16) = v22;
        *(v28 + 56) = 0;
        *(v28 + 64) = 0;
        *(v28 + 48) = 0;
        *(v28 + 48) = v45;
        *(v28 + 64) = v46;
        *(v28 + 72) = 0;
        v45 = 0uLL;
        *(v28 + 80) = 0;
        *(v28 + 88) = 0;
        *(v28 + 72) = v47;
        *(v28 + 88) = v48;
        *(v28 + 96) = 0;
        v46 = 0;
        v47 = 0uLL;
        v48 = 0;
        *(v28 + 104) = 0;
        *(v28 + 112) = 0;
        *(v28 + 96) = v49;
        v49 = 0uLL;
        *(v28 + 112) = v50;
        *(v28 + 120) = 0;
        *(v28 + 128) = 0;
        *(v28 + 136) = 0;
        *(v28 + 120) = v51;
        *(v28 + 136) = v52;
        v50 = 0;
        v51 = 0uLL;
        v52 = 0;
        v23 = *v53;
        *(v28 + 157) = *&v53[13];
        *(v28 + 144) = v23;
        *(v28 + 168) = 0;
        *(v28 + 176) = 0;
        *(v28 + 184) = 0;
        *(v28 + 168) = v54;
        *(v28 + 184) = v55;
        v54 = 0uLL;
        v55 = 0;
        *(v28 + 192) = v56;
        *(v28 + 208) = 0;
        *(v28 + 216) = 0;
        *(v28 + 224) = 0;
        *(v28 + 208) = v57;
        *(v28 + 224) = v58;
        v57 = 0uLL;
        v58 = 0;
        v24 = v28 + 232;
      }

      else
      {
        sub_D489E4(&v36, &v43);
      }

      *(&v36 + 1) = v24;
      sub_A30978(&v43);
      ++v19;
      v20 -= 8;
    }

    while (v20);
  }

  v29 = v37;
  v35 = v36;
  v30 = sub_7EA60(v42);
  *a3 = 1;
  *(a3 + 8) = v35;
  *(a3 + 24) = v29;
  *(a3 + 32) = v30;
  if (v41 < 0)
  {
    operator delete(__dst);
  }
}

void sub_D49550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63, ...)
{
  va_start(va, a65);
  if (a65 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(va);
  sub_11F069C(v65 - 224);
  sub_A3091C(&a17);
  sub_A3091C(&a21);
  if (a31 < 0)
  {
    operator delete(a26);
  }

  _Unwind_Resume(a1);
}

void *sub_D49600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 92) != 1)
  {
    if (sub_7E7E4(3u))
    {
      sub_19594F8(&v44);
      sub_4A5C(&v44, "Incompatible journey version in route handle. Expected ", 55);
      v36 = std::ostream::operator<<();
      sub_4A5C(v36, " but got ", 9);
      v37 = std::ostream::operator<<();
      sub_4A5C(v37, " in route handle", 16);
      sub_1959680(&v44, &v73);
      sub_7E854(&v73, 3u);
      if (SHIBYTE(v74) < 0)
      {
        operator delete(v73);
      }

      sub_1959728(&v44);
    }

    v38 = *(a1 + 16);
    sub_3608D0(&v44, "TransitJourneyParserModule.Error.RouteHandleVersion");
    sub_7BDA0(v38, &v44, *(a1 + 8));
    if (v48 < 0)
    {
      operator delete(v44);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_2673BE0;
    exception[2] = 1;
  }

  v59 = 0;
  v57 = 0u;
  v58 = 0u;
  v56 = 0u;
  v55 = 0u;
  v54 = 0u;
  *__p = 0u;
  v60 = -1;
  v61 = 0;
  v64 = 0;
  v68 = 0;
  v66 = 0;
  v67 = 0;
  v65 = 0;
  v69 = 0x3FF0000000000000;
  v70 = 0;
  v71 = 0;
  v72 = 0;
  v4 = *(a2 + 56);
  if (*(a2 + 48))
  {
    v5 = *(a2 + 48);
  }

  else
  {
    v5 = &off_2734888;
  }

  v6 = v5[3];
  v7 = *(v5 + 32) | (*(v5 + 9) << 8);
  v44 = v6;
  v45 = v7;
  if (v4)
  {
    v8 = v4;
  }

  else
  {
    v8 = &off_2734888;
  }

  v9 = *(v8 + 9);
  v10 = *(v8 + 32) | (v9 << 8);
  v46 = v8[3];
  v47 = v10;
  v11 = *(a2 + 16);
  if ((v11 & 4) != 0)
  {
    v12 = *(a2 + 64);
    v6 = *(v12 + 24);
    v7 = *(v12 + 32) | (*(v12 + 36) << 8);
  }

  v49 = v6;
  v50 = v7;
  if ((v11 & 8) != 0)
  {
    v8 = *(a2 + 72);
    v13 = *(v8 + 9) << 8;
  }

  else
  {
    LOWORD(v13) = v9 << 8;
  }

  v14 = v13 | *(v8 + 32);
  v51 = v8[3];
  v52 = v14;
  v15 = *(a2 + 88);
  if (v15 >= 3)
  {
    v15 = 0;
  }

  v16 = *(a2 + 96);
  if (v16 >= 3)
  {
    v16 = 0;
  }

  v62 = v15;
  v63 = v16;
  v42 = 0uLL;
  v43 = 0;
  sub_D4B774(&v42, *(a2 + 32));
  v17 = *(a2 + 32);
  v18 = *(a2 + 40);
  if (v18)
  {
    v19 = (v18 + 8);
  }

  else
  {
    v19 = 0;
  }

  if (v17)
  {
    v20 = &v19[v17];
    do
    {
      sub_D49B44(a1, *v19, &v73);
      v22 = *(&v42 + 1);
      if (*(&v42 + 1) >= v43)
      {
        *(&v42 + 1) = sub_A5624C(&v42, &v73);
        if (v75)
        {
          *(&v75 + 1) = v75;
          operator delete(v75);
        }
      }

      else
      {
        *(*(&v42 + 1) + 16) = 0;
        v22[3] = 0;
        *v22 = 0;
        v22[1] = 0;
        *v22 = v73;
        v22[2] = v74;
        v73 = 0uLL;
        v74 = 0;
        v22[4] = 0;
        v22[5] = 0;
        *(v22 + 3) = v75;
        v22[5] = v76;
        v75 = 0uLL;
        v76 = 0;
        v23 = v77[0];
        *(v22 + 54) = *(v77 + 6);
        v22[6] = v23;
        *(&v42 + 1) = v22 + 8;
      }

      v24 = v73;
      if (v73)
      {
        v25 = *(&v73 + 1);
        v21 = v73;
        if (*(&v73 + 1) != v73)
        {
          do
          {
            v27 = *(v25 - 40);
            if (v27)
            {
              *(v25 - 32) = v27;
              operator delete(v27);
            }

            v28 = *(v25 - 64);
            if (v28)
            {
              *(v25 - 56) = v28;
              operator delete(v28);
            }

            v29 = *(v25 - 88);
            if (v29)
            {
              *(v25 - 80) = v29;
              operator delete(v29);
            }

            v30 = *(v25 - 112);
            if (v30)
            {
              *(v25 - 104) = v30;
              operator delete(v30);
            }

            v31 = *(v25 - 136);
            if (v31)
            {
              v32 = *(v25 - 128);
              v26 = *(v25 - 136);
              if (v32 != v31)
              {
                do
                {
                  v33 = v32 - 1136;
                  v34 = *(v32 - 8);
                  if (v34 != -1)
                  {
                    (off_2673BF8[v34])(v78, v32 - 1136);
                  }

                  *(v32 - 8) = -1;
                  v32 -= 1136;
                }

                while (v33 != v31);
                v26 = *(v25 - 136);
              }

              *(v25 - 128) = v31;
              operator delete(v26);
            }

            v25 -= 144;
          }

          while (v25 != v24);
          v21 = v73;
        }

        *(&v73 + 1) = v24;
        operator delete(v21);
      }

      ++v19;
    }

    while (v19 != v20);
  }

  if (__p[0])
  {
    sub_D4B520(__p);
    operator delete(__p[0]);
  }

  *__p = v42;
  *&v54 = v43;
  sub_A31084(a3, &v44);
  return sub_A30978(&v44);
}

void sub_D49A60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (*(v19 - 153) < 0)
  {
    operator delete(*(v19 - 176));
    sub_1959728(&__p);
    _Unwind_Resume(a1);
  }

  sub_1959728(&__p);
  _Unwind_Resume(a1);
}

void sub_D49AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_A30978(va);
  JUMPOUT(0xD49AF8);
}

void ***sub_D49B08(void ***a1)
{
  if (*a1)
  {
    sub_D4B520(a1);
    operator delete(*a1);
  }

  return a1;
}

void sub_D49B44(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v28 = 0u;
  memset(v27, 0, sizeof(v27));
  v29[0] = 1;
  *&v29[4] = 0x8000000080000000;
  *&v29[12] = 0;
  v25 = 0;
  v26 = 0uLL;
  sub_D4B848(&v25, *(a2 + 24));
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
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
    v9 = &v8[v6];
    do
    {
      sub_D49F60(a1, *v8, &v30);
      v11 = v26;
      if (v26 >= *(&v26 + 1))
      {
        *&v26 = sub_A55ECC(&v25, &v30);
        if (v39)
        {
          *(&v39 + 1) = v39;
          operator delete(v39);
        }
      }

      else
      {
        *v26 = v30;
        v11[3] = 0;
        v11[4] = 0;
        v11[1] = 0;
        v11[2] = 0;
        *(v11 + 1) = *__p;
        v11[3] = v32;
        __p[0] = 0;
        __p[1] = 0;
        v11[5] = 0;
        v11[6] = 0;
        *(v11 + 2) = *v33;
        v11[7] = 0;
        v11[8] = 0;
        v11[9] = 0;
        v11[10] = 0;
        v11[11] = 0;
        v11[12] = 0;
        v11[13] = 0;
        v11[14] = 0;
        v11[15] = 0;
        *(v11 + 13) = v39;
        v12 = v40;
        v11[6] = v34;
        v32 = 0;
        v33[0] = 0;
        v33[1] = 0;
        v34 = 0;
        *(v11 + 7) = v35;
        v11[9] = v36;
        v35 = 0uLL;
        *(v11 + 5) = *v37;
        v11[12] = v38;
        v36 = 0;
        v37[0] = 0;
        v37[1] = 0;
        v38 = 0;
        v11[15] = v12;
        v39 = 0uLL;
        v40 = 0;
        v13 = v41[0];
        *(v11 + 133) = *(v41 + 5);
        v11[16] = v13;
        *&v26 = v11 + 18;
      }

      if (v37[0])
      {
        v37[1] = v37[0];
        operator delete(v37[0]);
      }

      if (v35)
      {
        *(&v35 + 1) = v35;
        operator delete(v35);
      }

      if (v33[0])
      {
        v33[1] = v33[0];
        operator delete(v33[0]);
      }

      v14 = __p[0];
      if (__p[0])
      {
        v15 = __p[1];
        v10 = __p[0];
        if (__p[1] != __p[0])
        {
          do
          {
            v16 = v15 - 1136;
            v17 = *(v15 - 2);
            if (v17 != -1)
            {
              (off_2673BF8[v17])(v42, v15 - 1136);
            }

            *(v15 - 2) = -1;
            v15 -= 1136;
          }

          while (v16 != v14);
          v10 = __p[0];
        }

        __p[1] = v14;
        operator delete(v10);
      }

      ++v8;
    }

    while (v8 != v9);
    v18 = v27[0];
    if (v27[0])
    {
      v19 = v27[1];
      v20 = v27[0];
      if (v27[1] != v27[0])
      {
        do
        {
          v19 = sub_9FFEB4(v19 - 18);
        }

        while (v19 != v18);
        v20 = v27[0];
      }

      v27[1] = v18;
      operator delete(v20);
    }
  }

  v21 = v25;
  v27[0] = v25;
  v22 = v26;
  *&v27[1] = v26;
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v23 = v22;
  sub_A315D0(a3, v21, v22, 0x8E38E38E38E38E39 * ((v22 - v21) >> 4));
  a3[3] = 0;
  a3[4] = 0;
  a3[5] = 0;
  v24 = v27[3];
  if (v28 != v27[3])
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((v28 - v27[3]) >> 3) < 0x666666666666667)
    {
      operator new();
    }

    sub_1794();
  }

  a3[6] = *v29;
  *(a3 + 54) = *&v29[6];
  if (v24)
  {
    *&v28 = v24;
    operator delete(v24);
  }

  if (v21)
  {
    if (v23 != v21)
    {
      do
      {
        v23 -= 18;
        sub_9FFEB4(v23);
      }

      while (v23 != v21);
      v21 = v27[0];
    }

    operator delete(v21);
  }
}

void sub_D49ED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_9FFE48(va);
  _Unwind_Resume(a1);
}

void sub_D49EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void *);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_A30BB8(va);
  sub_9FFE48(va1);
  _Unwind_Resume(a1);
}

void sub_D49F60(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = 0;
  v32 = 0u;
  *v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  *v29 = 0u;
  *__p = 0u;
  *v27 = 0u;
  v34 = 1;
  v35 = 0x8000000080000000;
  v36 = 0;
  v25 = *(a2 + 48);
  v23 = 0uLL;
  v24 = 0;
  sub_D4B94C(&v23, *(a2 + 32));
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
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
    do
    {
      sub_D4A240(a1, *v8, v37);
      v10 = *(&v23 + 1);
      if (*(&v23 + 1) >= v24)
      {
        v12 = sub_D4BAE0(&v23, v37);
      }

      else
      {
        **(&v23 + 1) = 0;
        *(v10 + 1128) = -1;
        v11 = v38;
        if (v38 != -1)
        {
          v39 = v10;
          (off_2673C20[v38])(&v39, v37);
          *(v10 + 1128) = v11;
        }

        v12 = v10 + 1136;
      }

      *(&v23 + 1) = v12;
      if (v38 != -1)
      {
        (off_2673BF8[v38])(&v39, v37);
      }

      ++v8;
      v9 -= 8;
    }

    while (v9);
  }

  v13 = __p[0];
  if (__p[0])
  {
    v14 = __p[1];
    v15 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v16 = v14 - 1136;
        v17 = *(v14 - 2);
        if (v17 != -1)
        {
          (off_2673BF8[v17])(v37, v14 - 1136);
        }

        *(v14 - 2) = -1;
        v14 -= 1136;
      }

      while (v16 != v13);
      v15 = __p[0];
    }

    __p[1] = v13;
    operator delete(v15);
  }

  *__p = v23;
  v27[0] = v24;
  sub_A316EC(a3, &v25);
  if (v32)
  {
    *(&v32 + 1) = v32;
    operator delete(v32);
  }

  if (v30[1])
  {
    *&v31 = v30[1];
    operator delete(v30[1]);
  }

  if (v29[0])
  {
    v29[1] = v29[0];
    operator delete(v29[0]);
  }

  if (v27[1])
  {
    *&v28 = v27[1];
    operator delete(v27[1]);
  }

  v18 = __p[0];
  if (__p[0])
  {
    v19 = __p[1];
    v20 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v21 = v19 - 1136;
        v22 = *(v19 - 2);
        if (v22 != -1)
        {
          (off_2673BF8[v22])(v37, v19 - 1136);
        }

        *(v19 - 2) = -1;
        v19 -= 1136;
      }

      while (v21 != v18);
      v20 = __p[0];
    }

    __p[1] = v18;
    operator delete(v20);
  }
}

void sub_D4A1D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_9FFEB4(va);
  _Unwind_Resume(a1);
}

void sub_D4A1EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_A542C4(&a9);
  sub_9FFEB4(&a12);
  _Unwind_Resume(a1);
}

void sub_D4A240(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 56);
  if (v5 <= 2)
  {
    if (v5)
    {
      if (v5 == 2)
      {
        if (*(a2 + 32))
        {
          v6 = *(a2 + 32);
        }

        else
        {
          v6 = &off_2734748;
        }

        v7 = *(a2 + 60);
        v8 = a1;
        v9 = sub_D4B134(a1, v6[3]);
        v11 = v10;
        v12 = sub_D4B134(v8, v6[4]);
        v13 = *(v6 + 48);
        v14 = v6[5];
        *a3 = v7;
        *(a3 + 4) = v9;
        *(a3 + 12) = v11;
        *(a3 + 16) = v12;
        *(a3 + 24) = v15;
        *(a3 + 28) = v14;
        *(a3 + 36) = 0xFFFFFFFFLL;
        *(a3 + 56) = 0;
        *(a3 + 64) = 0;
        *(a3 + 48) = 0;
        *(a3 + 72) = v13;
        v16 = 1;
        goto LABEL_48;
      }

LABEL_96:
      v90 = *(a1 + 16);
      v91 = a1;
      sub_3608D0(v125, "TransitJourneyParserModule.Error.JourneyLegType");
      sub_7BDA0(v90, v125, *(v91 + 8));
      if ((v125[23] & 0x80000000) != 0)
      {
        operator delete(*v125);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &off_2673BE0;
      exception[2] = 1;
    }

    v24 = a1;
    v25 = sub_3B045C(*a1);
    v118 = sub_3AFB1C(*v24);
    v109 = v24;
    v26 = sub_3AFC64(*v24);
    if (*(a2 + 24))
    {
      v27 = *(a2 + 24);
    }

    else
    {
      v27 = &off_27346E8;
    }

    nullsub_1();
    *v125 = -1;
    *&v125[8] = 0x7FFFFFFF;
    v29 = sub_2C7D8C(v25, v28, v125);
    v122 = v29;
    if (v29)
    {
      v30 = v29 >= 0xFFFFFFFF00000000;
    }

    else
    {
      v30 = 1;
    }

    if (v30)
    {
      if (sub_7E7E4(1u))
      {
        sub_19594F8(v125);
        sub_4A5C(v125, "Unable to resolve trip muid ", 28);
        v93 = std::ostream::operator<<();
        sub_4A5C(v93, " in transit network layer.", 26);
        sub_1959680(v125, __p);
        sub_7E854(__p, 1u);
        if (v124 < 0)
        {
          operator delete(__p[0]);
        }

        sub_1959728(v125);
      }

      v94 = *(v24 + 16);
      sub_3608D0(v125, "TransitJourneyParserModule.Error.TripIdLookup");
      sub_7BDA0(v94, v125, *(v24 + 8));
      goto LABEL_124;
    }

    if (v27[3])
    {
      v31 = v27[3];
    }

    else
    {
      v31 = &off_27346A0;
    }

    v32 = sub_3C0DD4(v31[6]);
    v33 = sub_D4B354(v31[7]);
    v34 = sub_D4B354(v31[8]);
    v119 = v32;
    v120 = v33;
    v121 = v34;
    v35 = sub_3A2090(v26, v122, &v119);
    if (v35 == -1)
    {
      if (sub_7E7E4(1u))
      {
        sub_19594F8(v125);
        v97 = sub_4A5C(v125, "Date ", 5);
        v98 = sub_B484(v97);
        sub_4A5C(v98, " not found on trip ", 19);
        v99 = std::ostream::operator<<();
        sub_4A5C(v99, " in transit network layer.", 26);
        sub_1959680(v125, __p);
        sub_7E854(__p, 1u);
        if (v124 < 0)
        {
          operator delete(__p[0]);
        }

        sub_1959728(v125);
      }

      v100 = *(v109 + 16);
      sub_3608D0(v125, "TransitJourneyParserModule.Error.TripDateLookup");
      sub_7BDA0(v100, v125, *(v109 + 8));
      goto LABEL_124;
    }

    if (!v122 || HIDWORD(v122) == -1)
    {
      v116 = 0xFFFFFFFFLL;
      v117 = 0;
    }

    else
    {
      v116 = HIDWORD(v122);
      v117 = v122 << 32;
    }

    v47 = *(v27 + 16);
    v48 = &off_2734888;
    v49 = v27[5];
    if (!v49)
    {
      v49 = &off_2734888;
    }

    if (v27[6])
    {
      v48 = v27[6];
    }

    v114 = v35;
    if ((v27[2] & 2) != 0)
    {
      if ((*(v27[4] + 6) - 1) >= 5)
      {
        v50 = 0;
      }

      else
      {
        v50 = *(v27[4] + 6);
      }

      LOBYTE(v115) = 1;
      HIDWORD(v115) = v50;
    }

    else
    {
      v115 = 0;
    }

    v51 = *(v27 + 17);
    v113 = v49[3];
    v52 = *(v49 + 8);
    v111 = *(a2 + 60);
    v112 = *(v49 + 9);
    v53 = v48[3];
    v54 = *(v48 + 8);
    v55 = *(v48 + 9);
    v56 = sub_3A25A8(v26, v122, 0, "trip");
    v57 = (v56 - *v56);
    if (*v57 >= 9u && (v58 = v57[4]) != 0 && v47 < *(v56 + v58))
    {
      v110 = v55;
      v59 = sub_3A25A8(v26, v122, 0, "trip");
      v60 = (v59 - *v59);
      if (*v60 >= 9u)
      {
        v61 = v60[4];
        if (v61)
        {
          if (v51 < *(v59 + v61))
          {
            v62 = v122;
            v63 = sub_3A231C(v26, v122, 0);
            v64 = &v63[-*v63];
            if (*v64 < 5u)
            {
              v65 = 0;
            }

            else
            {
              v65 = *(v64 + 2);
              if (*(v64 + 2))
              {
                v65 += &v63[*&v63[v65]];
              }
            }

            v66 = (v65 + 4 * HIDWORD(v62) + 4 + *(v65 + 4 * HIDWORD(v62) + 4));
            v67 = (v66 - *v66);
            if (*v67 >= 0xDu && (v68 = v67[6]) != 0)
            {
              v69 = *(v66 + v68);
            }

            else
            {
              v69 = -1;
            }

            *v125 = *&v63[24 * v69 + 4 + 24 * v47 + *(v64 + 3) + *&v63[*(v64 + 3)]];
            sub_502230(v118, v125);
            nullsub_1();
            if (v70 == v27[10])
            {
              v71 = v122;
              v72 = sub_3A231C(v26, v122, 0);
              v73 = &v72[-*v72];
              if (*v73 < 5u)
              {
                v74 = 0;
              }

              else
              {
                v74 = *(v73 + 2);
                if (*(v73 + 2))
                {
                  v74 += &v72[*&v72[v74]];
                }
              }

              v75 = (v74 + 4 * HIDWORD(v71) + 4 + *(v74 + 4 * HIDWORD(v71) + 4));
              v76 = (v75 - *v75);
              if (*v76 < 0xDu)
              {
                v79 = -1;
                v78 = v110;
              }

              else
              {
                v77 = v76[6];
                v78 = v110;
                if (v77)
                {
                  v79 = *(v75 + v77);
                }

                else
                {
                  v79 = -1;
                }
              }

              *v125 = *&v72[24 * v79 + 4 + 24 * v51 + *(v73 + 3) + *&v72[*(v73 + 3)]];
              sub_502230(v118, v125);
              nullsub_1();
              if (v80 == v27[11])
              {
                *a3 = v111;
                *(a3 + 4) = v116 | v117;
                *(a3 + 12) = v114;
                *(a3 + 16) = v47;
                *(a3 + 20) = v51;
                *(a3 + 24) = v113;
                *(a3 + 32) = v52 | (v112 << 8);
                *(a3 + 36) = v53;
                *(a3 + 44) = v54 | (v78 << 8);
                *(a3 + 48) = -1;
                *(a3 + 52) = 0;
                *(a3 + 56) = HIDWORD(v115);
                *(a3 + 60) = v115;
                *(a3 + 1128) = 0;
                return;
              }

              if (sub_7E7E4(1u))
              {
                sub_19594F8(v125);
                sub_4A5C(v125, "Arrival stop muid ", 18);
                v104 = std::ostream::operator<<();
                sub_4A5C(v104, " not found on trip ", 19);
                v105 = std::ostream::operator<<();
                sub_4A5C(v105, " at index ", 10);
                v106 = std::ostream::operator<<();
                sub_4A5C(v106, ".", 1);
                sub_1959680(v125, __p);
                sub_7E854(__p, 1u);
                if (v124 < 0)
                {
                  operator delete(__p[0]);
                }

                sub_1959728(v125);
              }
            }

            else if (sub_7E7E4(1u))
            {
              sub_19594F8(v125);
              sub_4A5C(v125, "Departure stop muid ", 20);
              v101 = std::ostream::operator<<();
              sub_4A5C(v101, " not found on trip ", 19);
              v102 = std::ostream::operator<<();
              sub_4A5C(v102, " at index ", 10);
              v103 = std::ostream::operator<<();
              sub_4A5C(v103, ".", 1);
              sub_1959680(v125, __p);
              sub_7E854(__p, 1u);
              if (v124 < 0)
              {
                operator delete(__p[0]);
              }

              sub_1959728(v125);
            }

            v107 = *(v109 + 16);
            sub_3608D0(v125, "TransitJourneyParserModule.Error.StopIdLookup");
            sub_7BDA0(v107, v125, *(v109 + 8));
LABEL_124:
            if ((v125[23] & 0x80000000) != 0)
            {
              operator delete(*v125);
            }

            v108 = __cxa_allocate_exception(0x10uLL);
            *v108 = &off_2673BE0;
            v108[2] = 43;
          }
        }
      }

      if (sub_7E7E4(1u))
      {
        sub_19594F8(v125);
        v86 = sub_4A5C(v125, "Arrival stop index ", 19);
        std::ostream::operator<<();
        sub_4A5C(v86, " (stop muid: ", 13);
        v87 = std::ostream::operator<<();
        v88 = sub_4A5C(v87, ") exceeds the total number of stops (", 37);
        sub_D4B494(v26, &v122);
        std::ostream::operator<<();
        sub_4A5C(v88, ") on trip ", 10);
        v89 = std::ostream::operator<<();
        sub_4A5C(v89, ".", 1);
        sub_1959680(v125, __p);
        sub_7E854(__p, 1u);
        if (v124 < 0)
        {
          operator delete(__p[0]);
        }

        sub_1959728(v125);
      }
    }

    else if (sub_7E7E4(1u))
    {
      sub_19594F8(v125);
      v81 = sub_4A5C(v125, "Departure stop index ", 21);
      std::ostream::operator<<();
      sub_4A5C(v81, " (stop muid: ", 13);
      v82 = std::ostream::operator<<();
      v83 = sub_4A5C(v82, ") exceeds the total number of stops (", 37);
      sub_D4B494(v26, &v122);
      std::ostream::operator<<();
      sub_4A5C(v83, ") on trip ", 10);
      v84 = std::ostream::operator<<();
      sub_4A5C(v84, ".", 1);
      sub_1959680(v125, __p);
      sub_7E854(__p, 1u);
      if (v124 < 0)
      {
        operator delete(__p[0]);
      }

      sub_1959728(v125);
    }

    v85 = *(v109 + 16);
    sub_3608D0(v125, "TransitJourneyParserModule.Error.TripStopIndexLookup");
    sub_7BDA0(v85, v125, *(v109 + 8));
    goto LABEL_124;
  }

  if (v5 == 3)
  {
    if (*(a2 + 40))
    {
      v36 = *(a2 + 40);
    }

    else
    {
      v36 = &off_2734780;
    }

    v37 = a1;
    v38 = sub_3B045C(*a1);
    v39 = *(a2 + 60);
    v40 = v36[3];
    nullsub_1();
    *v125 = -1;
    *&v125[8] = 0x7FFFFFFF;
    v42 = sub_2C7CFC(v38, v41, v125);
    if (v42)
    {
      v43 = HIDWORD(v42);
    }

    else
    {
      v43 = 0xFFFFFFFFLL;
    }

    v44 = HIDWORD(v42) == 0xFFFFFFFF || v42 == 0;
    v45 = v42 << 32;
    if (v44)
    {
      v45 = 0;
    }

    if (v43 != 0xFFFFFFFFLL && v45 != 0)
    {
      *a3 = v39;
      *(a3 + 4) = v40;
      *(a3 + 12) = v45 | v43;
      v16 = 2;
LABEL_48:
      *(a3 + 1128) = v16;
      return;
    }

    if (sub_7E7E4(1u))
    {
      sub_19594F8(v125);
      sub_4A5C(v125, "Unable to resolve road access point muid ", 41);
      v95 = std::ostream::operator<<();
      sub_4A5C(v95, " in transit network layer.", 26);
      sub_1959680(v125, __p);
      sub_7E854(__p, 1u);
      if (v124 < 0)
      {
        operator delete(__p[0]);
      }

      sub_1959728(v125);
    }

    v96 = *(v37 + 16);
    sub_3608D0(v125, "TransitJourneyParserModule.Error.RoadAccessPointLookup");
    sub_7BDA0(v96, v125, *(v37 + 8));
    goto LABEL_124;
  }

  if (v5 != 4)
  {
    goto LABEL_96;
  }

  if (*(a2 + 48))
  {
    v17 = *(a2 + 48);
  }

  else
  {
    v17 = &off_27347A8;
  }

  *&v125[4] = xmmword_22A7460;
  *&v125[20] = 0xFFFFFFFFLL;
  memset(v126, 0, sizeof(v126));
  v127 = 0;
  v128 = -1;
  v130 = -1;
  v131 = 0;
  memset(v132, 0, sizeof(v132));
  *&v135[1] = 0u;
  v133 = 0x7FFFFFFF;
  v134 = 0x7FFFFFFF;
  *v135 = 0x7FFFFFFF7FFFFFFFLL;
  *&v135[5] = 0x8000000080000000;
  v139 = 0;
  v137 = 0u;
  v138 = 0u;
  v136 = 0u;
  v140 = 0x7FFFFFFF;
  v141 = 0x8000000080000000;
  v142 = 0;
  v143 = xmmword_2297C00;
  *&v150[1] = 0uLL;
  v144 = -1;
  v145 = -1;
  v146 = 0;
  memset(v147, 0, sizeof(v147));
  v148 = 0x7FFFFFFF;
  v149 = 0x7FFFFFFF;
  *v150 = 0x7FFFFFFF7FFFFFFFLL;
  *&v150[5] = 0x8000000080000000;
  v154 = 0;
  v152 = 0u;
  v153 = 0u;
  v151 = 0u;
  v155 = 0x7FFFFFFF;
  v156 = 0x8000000080000000;
  v157 = 0;
  v158 = xmmword_2297C00;
  v159 = -1;
  v160 = 0x7FFFFFFF;
  v161 = 0x7FFFFFFF7FFFFFFFLL;
  v162 = 0u;
  v163 = 0;
  v164 = 0x8000000080000000;
  v165 = 0x7FFFFFFF;
  v166 = 0x7FFFFFFFFFFFFFFFLL;
  v167 = 0x8000000080000000;
  v168 = 0x7FFFFFFF;
  v182 = 0u;
  v183 = 0u;
  v180 = 0u;
  v181 = 0u;
  v178 = 0u;
  v179 = 0u;
  v176 = 0u;
  v177 = 0u;
  v174 = 0u;
  v175 = 0u;
  v172 = 0u;
  v173 = 0u;
  v170 = 0u;
  v171 = 0u;
  v169 = 0u;
  *&v18 = 0x8000000080000000;
  *(&v18 + 1) = 0x8000000080000000;
  v184 = v18;
  v185 = v18;
  v200 = 0u;
  v201 = 0u;
  v198 = 0u;
  v199 = 0u;
  v196 = 0u;
  v197 = 0u;
  v194 = 0u;
  v195 = 0u;
  v192 = 0u;
  v193 = 0u;
  v190 = 0u;
  v191 = 0u;
  v188 = 0u;
  v189 = 0u;
  v186 = 0u;
  v187 = 0u;
  v19 = *(a2 + 60);
  v129 = 0xFFFF;
  *v125 = v19;
  v20 = *(v17 + 4);
  if (v20)
  {
    v21 = a1;
    *&v125[4] = sub_D4B134(a1, v17[3]);
    *&v125[12] = v22;
    v20 = *(v17 + 4);
    a1 = v21;
  }

  if ((v20 & 2) != 0)
  {
    *&v125[16] = sub_D4B134(a1, v17[4]);
    *&v125[24] = v23;
  }

  sub_4D6D10(v17, __p);
  sub_4192A0(v126, __p);
  sub_3EEA68(__p);
  *a3 = *v125;
  *(a3 + 12) = *&v125[12];
  sub_4C6AE8(a3 + 32, v126);
  *(a3 + 1128) = 3;
  sub_3EEA68(v126);
}

void sub_D4B048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&STACK[0x4A0]);
  _Unwind_Resume(a1);
}

uint64_t sub_D4B134(uint64_t a1, uint64_t a2)
{
  v3 = sub_3B045C(*a1);
  nullsub_1();
  v17 = -1;
  v18 = 0x7FFFFFFF;
  v5 = sub_2C7A60(v3, v4, &v17);
  if (v6 == 1)
  {
    v7 = 3;
    goto LABEL_7;
  }

  if (v6 == 8)
  {
    v7 = 4;
LABEL_7:
    LODWORD(v20[0]) = v7;
    goto LABEL_8;
  }

  if (v6 != 10)
  {
    if (sub_7E7E4(1u))
    {
      sub_19594F8(&v17);
      sub_4A5C(&v17, "Unable to resolve muid ", 23);
      v12 = std::ostream::operator<<();
      sub_4A5C(v12, " as stop, access point, or road access point in transit network layer.", 70);
      sub_1959680(&v17, __p);
      sub_7E854(__p, 1u);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }

      sub_1959728(&v17);
    }

    v13 = *(a1 + 16);
    sub_3608D0(&v17, "TransitJourneyParserModule.Error.TerminalIdLookup");
    sub_7BDA0(v13, &v17, *(a1 + 8));
    if (v19 < 0)
    {
      operator delete(v17);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_2673BE0;
    exception[2] = 43;
  }

  LODWORD(v20[0]) = 0;
LABEL_8:
  v8 = 0xFFFFFFFFLL;
  if (HIDWORD(v5) == 0xFFFFFFFF)
  {
    v9 = 0;
  }

  else
  {
    v9 = v5 << 32;
  }

  v10 = v9 & 0xFFFFFFFF00000000 | HIDWORD(v5);
  if (v5)
  {
    v8 = v10;
  }

  *(v20 + 4) = v8;
  return v20[0];
}

void sub_D4B2EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

uint64_t sub_D4B354(uint64_t result)
{
  if (result >= 0x100)
  {
    v1 = result;
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v6, v1);
    sub_23E08("narrowing ", &v6, &v7);
    sub_30F54(&v8, " failed", &v7);
    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v3 = &v8;
    }

    else
    {
      v3 = v8.__r_.__value_.__r.__words[0];
    }

    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v8.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v8.__r_.__value_.__l.__size_;
    }

    v5 = sub_2D390(exception, v3, size);
  }

  return result;
}

void sub_D4B414(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_D4B494(uint64_t a1, unint64_t *a2)
{
  v2 = sub_3A25A8(a1, *a2, 0, "trip");
  v3 = (v2 - *v2);
  if (*v3 >= 9u && (v4 = v3[4]) != 0)
  {
    return *(v2 + v4);
  }

  else
  {
    return 0;
  }
}

void sub_D4B4E8(std::exception *a1)
{
  std::exception::~exception(a1);

  operator delete();
}

void sub_D4B520(void ***a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    do
    {
      v4 = *(v2 - 5);
      if (v4)
      {
        *(v2 - 4) = v4;
        operator delete(v4);
      }

      v5 = v2 - 8;
      v6 = *(v2 - 8);
      if (v6)
      {
        v7 = *(v2 - 7);
        v3 = *(v2 - 8);
        if (v7 != v6)
        {
          do
          {
            v9 = *(v7 - 5);
            if (v9)
            {
              *(v7 - 4) = v9;
              operator delete(v9);
            }

            v10 = *(v7 - 8);
            if (v10)
            {
              *(v7 - 7) = v10;
              operator delete(v10);
            }

            v11 = *(v7 - 11);
            if (v11)
            {
              *(v7 - 10) = v11;
              operator delete(v11);
            }

            v12 = *(v7 - 14);
            if (v12)
            {
              *(v7 - 13) = v12;
              operator delete(v12);
            }

            v13 = *(v7 - 17);
            if (v13)
            {
              v14 = *(v7 - 16);
              v8 = *(v7 - 17);
              if (v14 != v13)
              {
                do
                {
                  v15 = v14 - 1136;
                  v16 = *(v14 - 8);
                  if (v16 != -1)
                  {
                    (off_2673BF8[v16])(&v18, v14 - 1136);
                  }

                  *(v14 - 8) = -1;
                  v14 -= 1136;
                }

                while (v15 != v13);
                v8 = *(v7 - 17);
              }

              *(v7 - 16) = v13;
              operator delete(v8);
            }

            v7 -= 144;
          }

          while (v7 != v6);
          v3 = *v5;
        }

        *(v2 - 7) = v6;
        operator delete(v3);
      }

      v2 -= 8;
    }

    while (v5 != v1);
  }

  a1[1] = v1;
}

void sub_D4B680(void *a1, unint64_t a2)
{
  if (0x34F72C234F72C235 * ((a1[2] - *a1) >> 3) < a2)
  {
    if (a2 < 0x11A7B9611A7B962)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_D4B760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_A5AFB0(va);
  _Unwind_Resume(a1);
}

void *sub_D4B774(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 6)
  {
    if (!(a2 >> 58))
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_D4B834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_A56398(va);
  _Unwind_Resume(a1);
}

void sub_D4B848(void *a1, unint64_t a2)
{
  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 4) < a2)
  {
    if (a2 < 0x1C71C71C71C71C8)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_D4B938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_A561F8(va);
  _Unwind_Resume(a1);
}

void sub_D4B94C(char **a1, unint64_t a2)
{
  if (0x193D4BB7E327A977 * ((a1[2] - *a1) >> 4) < a2)
  {
    if (a2 < 0x39B0AD12073616)
    {
      operator new();
    }

    sub_1794();
  }
}

unint64_t sub_D4BAE0(char **a1, uint64_t a2)
{
  v2 = 0x193D4BB7E327A977 * ((a1[1] - *a1) >> 4) + 1;
  if (v2 > 0x39B0AD12073615)
  {
    sub_1794();
  }

  if (0x327A976FC64F52EELL * ((a1[2] - *a1) >> 4) > v2)
  {
    v2 = 0x327A976FC64F52EELL * ((a1[2] - *a1) >> 4);
  }

  if ((0x193D4BB7E327A977 * ((a1[2] - *a1) >> 4)) >= 0x1CD85689039B0ALL)
  {
    v4 = 0x39B0AD12073615;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0x39B0AD12073615)
    {
      operator new();
    }

    sub_1808();
  }

  v5 = 16 * ((a1[1] - *a1) >> 4);
  *v5 = 0;
  *(v5 + 1128) = -1;
  v6 = *(a2 + 1128);
  if (v6 != -1)
  {
    v15 = v5;
    (off_2673C20[v6])(&v15, a2);
    *(v5 + 1128) = v6;
  }

  v7 = *a1;
  v8 = a1[1];
  v9 = (v5 + *a1 - v8);
  if (v8 != *a1)
  {
    v14 = (v5 + *a1 - v8);
    v10 = *a1;
    do
    {
      *v9 = 0;
      v9[282] = -1;
      v11 = *(v10 + 282);
      if (v11 != -1)
      {
        v15 = v9;
        (off_2673C20[v11])(&v15, v10);
        v9[282] = v11;
      }

      v10 += 1136;
      v9 += 284;
    }

    while (v10 != v8);
    do
    {
      v12 = *(v7 + 282);
      if (v12 != -1)
      {
        (off_2673BF8[v12])(&v15, v7);
      }

      *(v7 + 282) = -1;
      v7 += 1136;
    }

    while (v7 != v8);
    v7 = *a1;
    v9 = v14;
  }

  *a1 = v9;
  a1[1] = (v5 + 1136);
  a1[2] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return v5 + 1136;
}

void sub_D4C280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  if (a49 == 1)
  {
    sub_D4C628(&a49, &a50);
  }

  sub_D4C4DC(&STACK[0x650]);
  sub_1A104((v50 - 104));
  _Unwind_Resume(a1);
}

void sub_D4C32C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void **a46)
{
  sub_1A104(&a46);
  if (SLOBYTE(STACK[0x667]) < 0)
  {
    operator delete(STACK[0x650]);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0xD4C324);
}

void sub_D4C350(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x1E1E1E1E1E1E1E2)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_D4C430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (v12)
  {
    v14 = (v11 - 136);
    v15 = -v12;
    do
    {
      v14 = sub_A30CBC(v14) - 17;
      v15 += 136;
    }

    while (v15);
  }

  *(v9 + 8) = v10;
  sub_D4C464(&a9);
  _Unwind_Resume(a1);
}

void ***sub_D4C464(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = v2;
      if (v4 != v2)
      {
        do
        {
          v4 = sub_A30CBC(v4 - 17);
        }

        while (v4 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

uint64_t sub_D4C4DC(uint64_t a1)
{
  v2 = (a1 + 4096);
  if (*(a1 + 5471) < 0)
  {
    operator delete(*(a1 + 5448));
    if ((v2[679] & 0x80000000) == 0)
    {
LABEL_3:
      if ((v2[487] & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*(a1 + 4775) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 4752));
  if ((v2[487] & 0x80000000) == 0)
  {
LABEL_4:
    if ((v2[239] & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(*(a1 + 4560));
  if ((v2[239] & 0x80000000) == 0)
  {
LABEL_5:
    v3 = *(a1 + 4232);
    if (!v3)
    {
      goto LABEL_6;
    }

LABEL_12:
    v6 = *(a1 + 4240);
    v7 = v3;
    if (v6 != v3)
    {
      do
      {
        v8 = *(v6 - 1);
        v6 -= 3;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v3);
      v7 = *(a1 + 4232);
    }

    *(a1 + 4240) = v3;
    operator delete(v7);
    sub_506524((a1 + 24));
    v4 = *(a1 + 8);
    if (!v4)
    {
      return a1;
    }

    goto LABEL_19;
  }

LABEL_11:
  operator delete(*(a1 + 4312));
  v3 = *(a1 + 4232);
  if (v3)
  {
    goto LABEL_12;
  }

LABEL_6:
  sub_506524((a1 + 24));
  v4 = *(a1 + 8);
  if (!v4)
  {
    return a1;
  }

LABEL_19:
  if (atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v4->__on_zero_shared)(v4);
  std::__shared_weak_count::__release_weak(v4);
  return a1;
}

void sub_D4C628(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 1264);
  if (v3)
  {
    v4 = *(a2 + 1272);
    v5 = *(a2 + 1264);
    if (v4 != v3)
    {
      do
      {
        v4 = sub_A30CBC(v4 - 17);
      }

      while (v4 != v3);
      v5 = *(a2 + 1264);
    }

    *(a2 + 1272) = v3;
    operator delete(v5);
  }

  if (*(a2 + 1191) < 0)
  {
    operator delete(*(a2 + 1168));
    if ((*(a2 + 495) & 0x80000000) == 0)
    {
LABEL_8:
      if ((*(a2 + 303) & 0x80000000) == 0)
      {
        goto LABEL_9;
      }

LABEL_13:
      operator delete(*(a2 + 280));
      if ((*(a2 + 55) & 0x80000000) == 0)
      {
        return;
      }

      goto LABEL_14;
    }
  }

  else if ((*(a2 + 495) & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  operator delete(*(a2 + 472));
  if (*(a2 + 303) < 0)
  {
    goto LABEL_13;
  }

LABEL_9:
  if ((*(a2 + 55) & 0x80000000) == 0)
  {
    return;
  }

LABEL_14:
  v6 = *(a2 + 32);

  operator delete(v6);
}

void *sub_D4C6F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  v51 = 0;
  v52 = 0;
  __p = 0;
  sub_A43A04(v53, v11, &__p);
  v12 = __p;
  if (__p)
  {
    v13 = v51;
    v14 = __p;
    if (v51 != __p)
    {
      do
      {
        v15 = *(v13 - 1);
        v13 -= 3;
        if (v15 < 0)
        {
          operator delete(*v13);
        }
      }

      while (v13 != v12);
      v14 = __p;
    }

    v51 = v12;
    operator delete(v14);
  }

  sub_A43A08(v53, v8, v48);
  if (v48[0] == 1 && sub_7E7E4(2u))
  {
    sub_19594F8(&v37);
    sub_4A5C(&v37, "Transit journey updater took ", 29);
    v16 = std::ostream::operator<<();
    sub_4A5C(v16, " ms to update ", 14);
    v17 = std::ostream::operator<<();
    sub_4A5C(v17, " journeys.", 10);
    if ((v47 & 0x10) != 0)
    {
      v19 = v46;
      if (v46 < v43)
      {
        v46 = v43;
        v19 = v43;
      }

      v20 = v42;
      v18 = v19 - v42;
      if (v19 - v42 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_46;
      }
    }

    else
    {
      if ((v47 & 8) == 0)
      {
        v18 = 0;
        v36 = 0;
LABEL_22:
        *(&v35 + v18) = 0;
        sub_7E854(&v35, 2u);
        if (v36 < 0)
        {
          operator delete(v35);
        }

        if (v45 < 0)
        {
          operator delete(v44);
        }

        std::locale::~locale(&v39);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_27;
      }

      v20 = v40;
      v18 = v41 - v40;
      if ((v41 - v40) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_46:
        sub_3244();
      }
    }

    if (v18 >= 0x17)
    {
      operator new();
    }

    v36 = v18;
    if (v18)
    {
      memmove(&v35, v20, v18);
    }

    goto LABEL_22;
  }

LABEL_27:
  v21 = v48[0];
  *v10 = v48[0];
  v22 = (v10 + 8);
  if (v21 == 1)
  {
    v22->n128_u64[0] = 0;
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    sub_D4CBB8(v22, v49[0], v49[1], 0xEEEEEEEEEEEEEEEFLL * ((v49[1] - v49[0]) >> 4));
    v23 = *&v49[13];
    *(v10 + 96) = *&v49[11];
    *(v10 + 112) = v23;
    *(v10 + 128) = v49[15];
    v24 = *&v49[5];
    *(v10 + 32) = *&v49[3];
    *(v10 + 48) = v24;
    v25 = *&v49[9];
    *(v10 + 64) = *&v49[7];
    *(v10 + 80) = v25;
  }

  else
  {
    sub_434934(v22, v49);
  }

  if (v48[0] == 1)
  {
    v26 = v49[0];
    if (v49[0])
    {
      v27 = v49[1];
      v28 = v49[0];
      if (v49[1] != v49[0])
      {
        do
        {
          v29 = v27 - 240;
          sub_A30978((v27 - 232));
          v27 = v29;
        }

        while (v29 != v26);
        v28 = v49[0];
      }

      v49[1] = v26;
      operator delete(v28);
    }
  }

  v30 = v55;
  if (v55)
  {
    v31 = v56;
    v32 = v55;
    if (v56 != v55)
    {
      do
      {
        v33 = *(v31 - 1);
        v31 -= 3;
        if (v33 < 0)
        {
          operator delete(*v31);
        }
      }

      while (v31 != v30);
      v32 = v55;
    }

    v56 = v30;
    operator delete(v32);
  }

  return sub_506524(v54);
}

void sub_D4CB1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  sub_D4CDD0(&a48);
  sub_D4CD54(&a65);
  _Unwind_Resume(a1);
}

void sub_D4CBB8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x111111111111112)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_D4CCA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (v11)
  {
    v14 = -v11;
    v15 = (v12 - 232);
    do
    {
      v15 = sub_A30978(v15) - 30;
      v14 += 240;
    }

    while (v14);
  }

  *(v9 + 8) = v10;
  sub_D4CCD8(&a9);
  _Unwind_Resume(a1);
}

void ***sub_D4CCD8(void ***result)
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
        do
        {
          v6 = v4 - 30;
          sub_A30978(v4 - 29);
          v4 = v6;
        }

        while (v6 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

void *sub_D4CD54(void *a1)
{
  v2 = a1[547];
  if (v2)
  {
    v3 = a1[548];
    v4 = a1[547];
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
      v4 = a1[547];
    }

    a1[548] = v2;
    operator delete(v4);
  }

  sub_506524(a1 + 3);
  return a1;
}

uint64_t sub_D4CDD0(uint64_t result)
{
  if (*result == 1)
  {
    v1 = *(result + 8);
    if (v1)
    {
      v2 = *(result + 16);
      v3 = *(result + 8);
      if (v2 != v1)
      {
        v4 = result;
        do
        {
          v5 = v2 - 240;
          sub_A30978((v2 - 232));
          v2 = v5;
        }

        while (v5 != v1);
        result = v4;
        v3 = *(v4 + 8);
      }

      *(result + 16) = v1;
      v6 = result;
      operator delete(v3);
      return v6;
    }
  }

  return result;
}

void sub_D4D5F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a50);
  sub_D4D890(v50);
  sub_11ABCB4(&a24);
  _Unwind_Resume(a1);
}

__n128 sub_D4D674(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 288) == 1)
  {
    sub_49C5C0(a1, a2);
    v4 = *(a1 + 240);
    if (v4)
    {
      *(a1 + 248) = v4;
      operator delete(v4);
      *(a1 + 240) = 0;
      *(a1 + 248) = 0;
      *(a1 + 256) = 0;
    }

    *(a1 + 240) = *(a2 + 240);
    *(a1 + 256) = *(a2 + 256);
    *(a2 + 240) = 0;
    *(a2 + 248) = 0;
    *(a2 + 256) = 0;
    v5 = *(a1 + 264);
    if (v5)
    {
      *(a1 + 272) = v5;
      operator delete(v5);
      *(a1 + 264) = 0;
      *(a1 + 272) = 0;
      *(a1 + 280) = 0;
    }

    *(a1 + 264) = *(a2 + 264);
    result = *(a2 + 272);
    *(a1 + 272) = result;
    *(a2 + 264) = 0;
    *(a2 + 272) = 0;
    *(a2 + 280) = 0;
  }

  else
  {
    *a1 = *a2;
    v7 = *(a2 + 16);
    v8 = *(a2 + 32);
    v9 = *(a2 + 48);
    *(a1 + 63) = *(a2 + 63);
    *(a1 + 32) = v8;
    *(a1 + 48) = v9;
    *(a1 + 16) = v7;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 72) = 0;
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
    v10 = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 96) = v10;
    v11 = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 120) = v11;
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 160) = *(a2 + 160);
    *(a2 + 152) = 0;
    *(a2 + 160) = 0;
    *(a2 + 168) = 0;
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
    *(a1 + 192) = 0;
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 192) = *(a2 + 192);
    *(a2 + 176) = 0;
    *(a2 + 184) = 0;
    *(a2 + 192) = 0;
    *(a1 + 200) = 0;
    *(a1 + 208) = 0;
    *(a1 + 216) = 0;
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 216) = *(a2 + 216);
    *(a2 + 208) = 0;
    *(a2 + 216) = 0;
    *(a2 + 200) = 0;
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 248) = 0;
    *(a1 + 256) = 0;
    *(a1 + 240) = 0;
    *(a1 + 240) = *(a2 + 240);
    *(a1 + 256) = *(a2 + 256);
    *(a2 + 240) = 0;
    *(a2 + 248) = 0;
    *(a2 + 256) = 0;
    *(a1 + 264) = 0;
    *(a1 + 272) = 0;
    *(a1 + 280) = 0;
    *(a1 + 264) = *(a2 + 264);
    result = *(a2 + 272);
    *(a1 + 272) = result;
    *(a2 + 264) = 0;
    *(a2 + 272) = 0;
    *(a2 + 280) = 0;
    *(a1 + 288) = 1;
  }

  return result;
}

void *sub_D4D83C(void *a1)
{
  v2 = a1[33];
  if (v2)
  {
    a1[34] = v2;
    operator delete(v2);
  }

  v3 = a1[30];
  if (v3)
  {
    a1[31] = v3;
    operator delete(v3);
  }

  return sub_49AEC0(a1);
}

void *sub_D4D890(uint64_t a1)
{
  if (*(a1 + 312) == 1)
  {
    v2 = *(a1 + 288);
    if (v2)
    {
      *(a1 + 296) = v2;
      operator delete(v2);
    }

    v3 = *(a1 + 264);
    if (v3)
    {
      *(a1 + 272) = v3;
      operator delete(v3);
    }

    sub_49AEC0((a1 + 24));
  }

  return sub_A396C4(a1);
}

double sub_D4D8F8(uint64_t a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((*(a1 + 8) - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0xE38E38E38E38E3)
  {
    sub_1794();
  }

  if (0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 5) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 5);
  }

  if (0x8E38E38E38E38E39 * ((*(a1 + 16) - *a1) >> 5) >= 0x71C71C71C71C71)
  {
    v5 = 0xE38E38E38E38E3;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0xE38E38E38E38E3)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 32 * ((*(a1 + 8) - *a1) >> 5);
  v6 = *(a2 + 48);
  *(v17 + 32) = *(a2 + 32);
  *(v17 + 48) = v6;
  *(v17 + 63) = *(a2 + 63);
  v7 = *(a2 + 16);
  *v17 = *a2;
  *(v17 + 16) = v7;
  *(v17 + 72) = *(a2 + 72);
  *(v17 + 88) = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(v17 + 112) = *(a2 + 112);
  *(v17 + 96) = *(a2 + 96);
  *(v17 + 136) = *(a2 + 136);
  *(v17 + 120) = *(a2 + 120);
  *(v17 + 152) = *(a2 + 152);
  v8 = *(a2 + 160);
  v9 = *(a2 + 176);
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  *(v17 + 160) = v8;
  *(v17 + 176) = v9;
  *(v17 + 192) = *(a2 + 192);
  *(a2 + 184) = 0;
  *(a2 + 192) = 0;
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(v17 + 200) = *(a2 + 200);
  *(v17 + 216) = *(a2 + 216);
  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  *(a2 + 216) = 0;
  v10 = *(a2 + 240);
  *(v17 + 224) = *(a2 + 224);
  *(v17 + 240) = v10;
  *(a2 + 240) = 0;
  *(a2 + 248) = 0;
  v11 = *(a2 + 264);
  *(v17 + 256) = *(a2 + 256);
  *(v17 + 264) = v11;
  *(v17 + 272) = *(a2 + 272);
  *(a2 + 256) = 0;
  *(a2 + 264) = 0;
  *(a2 + 272) = 0;
  *(a2 + 280) = 0;
  v12 = *(a1 + 8);
  v13 = 288 * v2 + *a1 - v12;
  sub_C2D93C(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = 288 * v2 + 288;
  *(a1 + 8) = v15;
  if (v14)
  {
    operator delete(v14);
    *&v15 = 288 * v2 + 288;
  }

  return *&v15;
}

void sub_D4DADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_D4DAF0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D4DAF0(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 288;
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }

    v5 = *(i - 48);
    if (v5)
    {
      *(i - 40) = v5;
      operator delete(v5);
    }

    sub_49AEC0((i - 288));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_D4DB70(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *(a1 + 24) = 0;
  v4 = a1 + 24;
  *(a1 + 264) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v5 = *(a2 + 192);
  if (!v5)
  {
    v5 = &off_278AB30;
  }

  v6 = v5[55];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = &off_278A980;
  }

  v8 = *(v7 + 4);
  v9 = *a3;
  if (v8)
  {
    v10 = a3[1];
    if (v9 != v10)
    {
      v11 = a3;
      v57 = 0u;
      v58 = 0u;
      DWORD2(v58) = 0x7FFFFFFF;
      v12.f64[0] = NAN;
      v12.f64[1] = NAN;
      v59 = vnegq_f64(v12);
      sub_D4E1A0(&v39, v10 - 440, 0, 0, &v57);
      if (*(a1 + 264))
      {
        sub_D4E878(v4, &v39);
        if (__p)
        {
          *(&__p + 1) = __p;
          operator delete(__p);
        }
      }

      else
      {
        v13 = v41;
        v14 = *v43;
        *(a1 + 64) = v42;
        *(a1 + 80) = v14;
        *(a1 + 32) = v40;
        *(a1 + 48) = v13;
        *(a1 + 104) = *v44;
        *(a1 + 128) = v46;
        v15 = v49;
        *(a1 + 152) = v48;
        *(a1 + 24) = v39;
        *(a1 + 95) = *&v43[15];
        *(a1 + 120) = v45;
        *(a1 + 144) = v47;
        *(a1 + 184) = v50;
        *(a1 + 208) = v52;
        v16 = v56;
        *(a1 + 232) = v54;
        v44[0] = 0;
        v44[1] = 0;
        *(a1 + 168) = v15;
        *(a1 + 192) = v51;
        v45 = 0;
        v50 = 0;
        v51 = 0uLL;
        *(a1 + 216) = *v53;
        v53[0] = 0;
        v53[1] = 0;
        *(a1 + 240) = __p;
        *(a1 + 256) = v16;
        v54 = 0;
        __p = 0uLL;
        v56 = 0;
        *(a1 + 264) = 1;
      }

      v17 = v53[0];
      if (v53[0])
      {
        v18 = v53[1];
        v19 = v53[0];
        if (v53[1] != v53[0])
        {
          do
          {
            v20 = *(v18 - 3);
            if (v20)
            {
              operator delete(v20);
            }

            v21 = *(v18 - 13);
            if (v21)
            {
              *(v18 - 12) = v21;
              operator delete(v21);
            }

            v18 -= 176;
          }

          while (v18 != v17);
          v19 = v53[0];
        }

        v53[1] = v17;
        operator delete(v19);
      }

      if (v50)
      {
        operator delete(v50);
      }

      if (v44[0])
      {
        v44[1] = v44[0];
        operator delete(v44[0]);
      }

      if (v57)
      {
        *(&v57 + 1) = v57;
        operator delete(v57);
      }

      a3 = v11;
      v9 = *v11;
      v8 = *(v7 + 4);
    }
  }

  if (v8)
  {
    v22 = a3[1];
    if (v9 != v22)
    {
      v22 -= 440;
    }
  }

  else
  {
    v22 = a3[1];
  }

  if (v22 != v9)
  {
    v24.f64[0] = NAN;
    v24.f64[1] = NAN;
    v38 = vnegq_f64(v24);
    do
    {
      v57 = 0u;
      v58 = 0u;
      DWORD2(v58) = 0x7FFFFFFF;
      v59 = v38;
      sub_D4E1A0(&v39, v9, 0, 0, &v57);
      if (v57)
      {
        *(&v57 + 1) = v57;
        operator delete(v57);
      }

      v25 = *(a1 + 8);
      if (v25 >= *(a1 + 16))
      {
        v31 = sub_D4EA20(a1, &v39);
        v32 = __p;
        *(a1 + 8) = v31;
        if (v32)
        {
          *(&__p + 1) = v32;
          operator delete(v32);
        }
      }

      else
      {
        *v25 = v39;
        *(v25 + 8) = v40;
        v26 = v41;
        v27 = v42;
        v28 = *v43;
        *(v25 + 71) = *&v43[15];
        *(v25 + 56) = v28;
        *(v25 + 40) = v27;
        *(v25 + 24) = v26;
        *(v25 + 88) = 0;
        *(v25 + 96) = 0;
        *(v25 + 80) = 0;
        *(v25 + 80) = *v44;
        *(v25 + 96) = v45;
        v44[0] = 0;
        v44[1] = 0;
        v45 = 0;
        v29 = v46;
        *(v25 + 120) = v47;
        *(v25 + 104) = v29;
        v30 = v49;
        *(v25 + 128) = v48;
        *(v25 + 144) = v30;
        *(v25 + 160) = v50;
        *(v25 + 168) = v51;
        v50 = 0;
        v51 = 0uLL;
        *(v25 + 184) = v52;
        *(v25 + 192) = 0;
        *(v25 + 200) = 0;
        *(v25 + 208) = 0;
        *(v25 + 216) = 0;
        *(v25 + 192) = *v53;
        *(v25 + 208) = v54;
        v53[0] = 0;
        v53[1] = 0;
        *(v25 + 224) = 0;
        *(v25 + 232) = 0;
        *(v25 + 216) = __p;
        *(v25 + 232) = v56;
        v54 = 0;
        __p = 0uLL;
        v56 = 0;
        *(a1 + 8) = v25 + 240;
      }

      v33 = v53[0];
      if (v53[0])
      {
        v34 = v53[1];
        v35 = v53[0];
        if (v53[1] != v53[0])
        {
          do
          {
            v36 = *(v34 - 3);
            if (v36)
            {
              operator delete(v36);
            }

            v37 = *(v34 - 13);
            if (v37)
            {
              *(v34 - 12) = v37;
              operator delete(v37);
            }

            v34 -= 176;
          }

          while (v34 != v33);
          v35 = v53[0];
        }

        v53[1] = v33;
        operator delete(v35);
      }

      if (v50)
      {
        operator delete(v50);
      }

      if (v44[0])
      {
        v44[1] = v44[0];
        operator delete(v44[0]);
      }

      v9 += 440;
    }

    while (v9 != v22);
  }

  return a1;
}

void sub_D4DFA4(_Unwind_Exception *a1)
{
  v5 = *(v3 - 128);
  if (v5)
  {
    *(v3 - 120) = v5;
    operator delete(v5);
  }

  sub_D4EE94(v2);
  sub_D4EF4C(v1);
  _Unwind_Resume(a1);
}

void *sub_D4DFF8(void *a1)
{
  v2 = a1[27];
  if (v2)
  {
    a1[28] = v2;
    operator delete(v2);
  }

  v3 = a1[24];
  if (v3)
  {
    v4 = a1[25];
    v5 = a1[24];
    if (v4 != v3)
    {
      do
      {
        v6 = *(v4 - 24);
        if (v6)
        {
          operator delete(v6);
        }

        v7 = *(v4 - 104);
        if (v7)
        {
          *(v4 - 96) = v7;
          operator delete(v7);
        }

        v4 -= 176;
      }

      while (v4 != v3);
      v5 = a1[24];
    }

    a1[25] = v3;
    operator delete(v5);
  }

  v8 = a1[20];
  if (v8)
  {
    operator delete(v8);
  }

  v9 = a1[10];
  if (v9)
  {
    a1[11] = v9;
    operator delete(v9);
  }

  return a1;
}

uint64_t sub_D4E0A8@<X0>(double *a1@<X0>, void *a2@<X8>)
{
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *a2 = 0u;
  sub_195A048(a2, "TransitNearbyScheduleLookupSnappingModule", 0x29uLL);
  v6 = 1;
  v4 = a2[4];
  if (v4 >= a2[5])
  {
    result = sub_CCEBC0(a2 + 3, "Runtime", &v6, a1);
    a2[4] = result;
  }

  else
  {
    sub_CCED74(a2[4], "Runtime", &v6, a1);
    result = v4 + 48;
    a2[4] = v4 + 48;
  }

  return result;
}

void sub_D4E174(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_D4E1A0(uint64_t a1, uint64_t a2, char a3, int a4, uint64_t *a5)
{
  *a1 = *(a2 + 176);
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  *(a1 + 8) = -1;
  v10 = (a1 + 8);
  *(a1 + 16) = 0x7FFFFFFF;
  *(a1 + 24) = -1;
  *(a1 + 32) = -1;
  *(a1 + 40) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 48) = 0;
  *(a1 + 56) = -1935635296;
  *(a1 + 80) = 0;
  v11 = (a1 + 80);
  *(a1 + 64) = 0;
  *(a1 + 71) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 120) = 100;
  *(a1 + 128) = 0;
  v12 = (a1 + 128);
  *(a1 + 144) = vnegq_f64(v9);
  *(a1 + 136) = 0;
  *(a1 + 160) = 0;
  v13 = (a1 + 160);
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = a4;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *v10 = *a2;
  v14 = *(a2 + 16);
  v15 = *(a2 + 32);
  v16 = *(a2 + 48);
  *(a1 + 71) = *(a2 + 63);
  *(a1 + 56) = v16;
  *(a1 + 40) = v15;
  *(a1 + 24) = v14;
  if (v10 != a2)
  {
    sub_146EC(v11, *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 2);
  }

  v17 = *(a2 + 96);
  *(a1 + 120) = *(a2 + 112);
  *(a1 + 104) = v17;
  v18 = *(a2 + 136);
  *v12 = *(a2 + 120);
  *(a1 + 144) = v18;
  sub_3E428((a1 + 160), a2 + 152);
  *(a1 + 73) = a3;
  sub_4233E4(a5, v45);
  v19 = v45[1];
  *v12 = v45[0];
  *(a1 + 144) = v19;
  if (*v13)
  {
    operator delete(*v13);
    *v13 = 0;
    *(a1 + 168) = 0;
    *(a1 + 176) = 0;
  }

  *(a1 + 160) = v46;
  *(a1 + 168) = v47;
  v21 = *(a2 + 312);
  v20 = *(a2 + 320);
  if (v21 != v20)
  {
    v22 = *(a1 + 200);
    do
    {
      if (v22 >= *(a1 + 208))
      {
        v22 = sub_D4E5B4((a1 + 192), v21);
      }

      else
      {
        *v22 = *v21;
        v23 = *(v21 + 16);
        v24 = *(v21 + 32);
        v25 = *(v21 + 48);
        *(v22 + 63) = *(v21 + 63);
        *(v22 + 32) = v24;
        *(v22 + 48) = v25;
        *(v22 + 72) = 0;
        *(v22 + 16) = v23;
        *(v22 + 80) = 0;
        *(v22 + 88) = 0;
        v27 = *(v21 + 72);
        v26 = *(v21 + 80);
        if (v26 != v27)
        {
          if (((v26 - v27) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1794();
        }

        v28 = *(v21 + 96);
        *(v22 + 112) = *(v21 + 112);
        *(v22 + 96) = v28;
        v29 = *(v21 + 120);
        *(v22 + 136) = *(v21 + 136);
        *(v22 + 120) = v29;
        sub_81988((v22 + 152), v21 + 152);
        v22 += 176;
        *(a1 + 200) = v22;
      }

      *(a1 + 200) = v22;
      v21 += 176;
    }

    while (v21 != v20);
  }

  v30 = *(a2 + 336);
  v31 = *(a2 + 344);
  if (v30 != v31)
  {
    v32 = *(a1 + 224);
    do
    {
      v34 = *(a1 + 232);
      if (v32 < v34)
      {
        v33 = *v30;
        *(v32 + 16) = *(v30 + 2);
        *v32 = v33;
        v32 += 24;
      }

      else
      {
        v35 = *(a1 + 216);
        v36 = 0xAAAAAAAAAAAAAAABLL * ((v32 - v35) >> 3);
        v37 = v36 + 1;
        if (v36 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_1794();
        }

        v38 = 0xAAAAAAAAAAAAAAABLL * ((v34 - v35) >> 3);
        if (2 * v38 > v37)
        {
          v37 = 2 * v38;
        }

        if (v38 >= 0x555555555555555)
        {
          v39 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v39 = v37;
        }

        if (v39)
        {
          if (v39 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          sub_1808();
        }

        v40 = v32;
        v41 = 8 * ((v32 - v35) >> 3);
        v42 = *v30;
        *(v41 + 16) = *(v30 + 2);
        *v41 = v42;
        v32 = v41 + 24;
        v43 = 24 * v36 - (v40 - v35);
        memcpy((v41 - (v40 - v35)), v35, v40 - v35);
        *(a1 + 216) = v43;
        *(a1 + 224) = v32;
        *(a1 + 232) = 0;
        if (v35)
        {
          operator delete(v35);
        }
      }

      *(a1 + 224) = v32;
      v30 = (v30 + 24);
    }

    while (v30 != v31);
  }

  return a1;
}

void sub_D4E554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, char **a11)
{
  v13 = *(v11 + 216);
  if (v13)
  {
    *(v11 + 224) = v13;
    operator delete(v13);
  }

  sub_48C9A4(a11);
  sub_44D36C(a10);
  _Unwind_Resume(a1);
}

uint64_t sub_D4E5B4(uint64_t *a1, __int128 *a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x1745D1745D1745DLL)
  {
    sub_1794();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 4);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 4)) >= 0xBA2E8BA2E8BA2ELL)
  {
    v5 = 0x1745D1745D1745DLL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x1745D1745D1745DLL)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 16 * ((a1[1] - *a1) >> 4);
  v25 = v6;
  v26 = v6;
  v7 = a2[3];
  *(v6 + 32) = a2[2];
  *(v6 + 48) = v7;
  *(v6 + 63) = *(a2 + 63);
  v9 = *a2;
  v8 = a2[1];
  *(&stru_20.fileoff + 22 * v2) = 0;
  *v6 = v9;
  *(v6 + 16) = v8;
  *(v6 + 80) = 0;
  *(v6 + 88) = 0;
  v11 = *(a2 + 9);
  v10 = *(a2 + 10);
  if (v10 != v11)
  {
    if (((v10 - v11) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(v6 + 96) = a2[6];
  *(v6 + 112) = *(a2 + 112);
  *(v6 + 120) = *(a2 + 120);
  *(v6 + 136) = *(a2 + 136);
  sub_81988((v6 + 152), a2 + 152);
  v12 = *a1;
  v13 = a1[1];
  v14 = v25 + *a1 - v13;
  if (v13 != *a1)
  {
    v15 = *a1;
    v16 = v25 + *a1 - v13;
    do
    {
      *v16 = *v15;
      v17 = *(v15 + 1);
      v18 = *(v15 + 2);
      v19 = *(v15 + 3);
      *(v16 + 63) = *(v15 + 63);
      *(v16 + 32) = v18;
      *(v16 + 48) = v19;
      *(v16 + 16) = v17;
      *(v16 + 80) = 0;
      *(v16 + 88) = 0;
      *(v16 + 72) = 0;
      *(v16 + 72) = *(v15 + 9);
      *(v16 + 88) = v15[11];
      v15[9] = 0;
      v15[10] = 0;
      v15[11] = 0;
      v20 = *(v15 + 6);
      *(v16 + 112) = *(v15 + 112);
      *(v16 + 96) = v20;
      v21 = *(v15 + 15);
      *(v16 + 136) = *(v15 + 17);
      *(v16 + 120) = v21;
      *(v16 + 152) = v15[19];
      *(v16 + 160) = *(v15 + 10);
      v15[19] = 0;
      v15[20] = 0;
      v15[21] = 0;
      v15 += 22;
      v16 += 176;
    }

    while (v15 != v13);
    do
    {
      v22 = v12[19];
      if (v22)
      {
        operator delete(v22);
      }

      v23 = v12[9];
      if (v23)
      {
        v12[10] = v23;
        operator delete(v23);
      }

      v12 += 22;
    }

    while (v12 != v13);
    v12 = *a1;
  }

  *a1 = v14;
  a1[1] = v26 + 176;
  a1[2] = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v26 + 176;
}

void sub_D4E850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v6 = *v4;
  if (*v4)
  {
    *(v3 + 80) = v6;
    operator delete(v6);
  }

  sub_789B8C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D4E878(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  v5 = *(a2 + 24);
  v6 = *(a2 + 40);
  v7 = *(a2 + 56);
  *(a1 + 71) = *(a2 + 71);
  *(a1 + 56) = v7;
  *(a1 + 40) = v6;
  *(a1 + 24) = v5;
  v9 = (a1 + 80);
  v8 = *(a1 + 80);
  if (v8)
  {
    *(a1 + 88) = v8;
    operator delete(v8);
    *v9 = 0;
    v9[1] = 0;
    v9[2] = 0;
  }

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  v10 = *(a2 + 104);
  v11 = *(a1 + 160);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 104) = v10;
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  if (v11)
  {
    operator delete(v11);
    *(a1 + 160) = 0;
    *(a1 + 168) = 0;
    *(a1 + 176) = 0;
  }

  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  v12 = (a1 + 192);
  v13 = *(a1 + 192);
  *(a1 + 184) = *(a2 + 184);
  if (v13)
  {
    v14 = *(a1 + 200);
    v15 = v13;
    if (v14 != v13)
    {
      do
      {
        v16 = *(v14 - 3);
        if (v16)
        {
          operator delete(v16);
        }

        v17 = *(v14 - 13);
        if (v17)
        {
          *(v14 - 12) = v17;
          operator delete(v17);
        }

        v14 -= 176;
      }

      while (v14 != v13);
      v15 = *v12;
    }

    *(a1 + 200) = v13;
    operator delete(v15);
    *v12 = 0;
    *(a1 + 200) = 0;
    *(a1 + 208) = 0;
  }

  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  v18 = *(a1 + 216);
  if (v18)
  {
    *(a1 + 224) = v18;
    operator delete(v18);
    *(a1 + 216) = 0;
    *(a1 + 224) = 0;
    *(a1 + 232) = 0;
  }

  *(a1 + 216) = *(a2 + 216);
  *(a1 + 232) = *(a2 + 232);
  *(a2 + 216) = 0;
  *(a2 + 224) = 0;
  *(a2 + 232) = 0;
  return a1;
}

uint64_t sub_D4EA20(uint64_t *a1, uint64_t a2)
{
  v2 = 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x111111111111111)
  {
    sub_1794();
  }

  if (0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 4);
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((a1[2] - *a1) >> 4) >= 0x88888888888888)
  {
    v5 = 0x111111111111111;
  }

  else
  {
    v5 = v3;
  }

  v16 = a1;
  if (v5)
  {
    if (v5 <= 0x111111111111111)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 240 * v2;
  *v6 = *a2;
  __p = 0;
  v13 = 240 * v2;
  *(v6 + 24) = *(a2 + 24);
  *(v6 + 40) = *(a2 + 40);
  *(v6 + 56) = *(a2 + 56);
  *(v6 + 71) = *(a2 + 71);
  *(v6 + 8) = *(a2 + 8);
  *(v6 + 80) = *(a2 + 80);
  *(v6 + 96) = *(a2 + 96);
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 80) = 0;
  *(v6 + 120) = *(a2 + 120);
  *(v6 + 104) = *(a2 + 104);
  v7 = *(a2 + 144);
  *(v6 + 128) = *(a2 + 128);
  *(v6 + 144) = v7;
  *(v6 + 160) = *(a2 + 160);
  *(v6 + 168) = *(a2 + 168);
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(a2 + 160) = 0;
  *(v6 + 184) = *(a2 + 184);
  *(v6 + 192) = *(a2 + 192);
  *(v6 + 208) = *(a2 + 208);
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  *(v6 + 216) = *(a2 + 216);
  *(v6 + 232) = *(a2 + 232);
  *(a2 + 208) = 0;
  *(a2 + 216) = 0;
  *(a2 + 224) = 0;
  *(a2 + 232) = 0;
  v14 = 240 * v2 + 240;
  v15 = 0;
  sub_D4EC04(a1, &__p);
  v8 = a1[1];
  v10 = v13;
  for (i = v14; v14 != v10; i = v14)
  {
    v14 = i - 240;
    sub_D4ED7C((i - 240));
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_D4EBF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_D4EE40(va);
  _Unwind_Resume(a1);
}

void sub_D4EC04(uint64_t *result, void *a2)
{
  v4 = *result;
  v5 = result[1];
  v6 = a2[1] + *result - v5;
  if (v5 != *result)
  {
    v7 = *result;
    v8 = a2[1] + *result - v5;
    do
    {
      *v8 = *v7;
      *(v8 + 8) = *(v7 + 1);
      v9 = *(v7 + 3);
      v10 = *(v7 + 5);
      v11 = *(v7 + 7);
      *(v8 + 71) = *(v7 + 71);
      *(v8 + 56) = v11;
      *(v8 + 40) = v10;
      *(v8 + 24) = v9;
      *(v8 + 88) = 0;
      *(v8 + 96) = 0;
      *(v8 + 80) = 0;
      *(v8 + 80) = *(v7 + 5);
      *(v8 + 96) = v7[12];
      v7[10] = 0;
      v7[11] = 0;
      v7[12] = 0;
      v12 = *(v7 + 13);
      *(v8 + 120) = *(v7 + 120);
      *(v8 + 104) = v12;
      v13 = *(v7 + 9);
      *(v8 + 128) = *(v7 + 8);
      *(v8 + 144) = v13;
      *(v8 + 160) = v7[20];
      *(v8 + 168) = *(v7 + 21);
      v7[20] = 0;
      v7[21] = 0;
      v7[22] = 0;
      *(v8 + 184) = *(v7 + 46);
      *(v8 + 200) = 0;
      *(v8 + 208) = 0;
      *(v8 + 192) = 0;
      *(v8 + 192) = *(v7 + 12);
      *(v8 + 208) = v7[26];
      v7[24] = 0;
      v7[25] = 0;
      v7[26] = 0;
      *(v8 + 216) = 0;
      *(v8 + 224) = 0;
      *(v8 + 232) = 0;
      *(v8 + 216) = *(v7 + 27);
      *(v8 + 232) = v7[29];
      v7[27] = 0;
      v7[28] = 0;
      v7[29] = 0;
      v7 += 30;
      v8 += 240;
    }

    while (v7 != v5);
    do
    {
      sub_D4ED7C(v4);
      v4 += 30;
    }

    while (v4 != v5);
  }

  a2[1] = v6;
  v14 = *result;
  *result = v6;
  result[1] = v14;
  a2[1] = v14;
  v15 = result[1];
  result[1] = a2[2];
  a2[2] = v15;
  v16 = result[2];
  result[2] = a2[3];
  a2[3] = v16;
  *a2 = a2[1];
}

void sub_D4ED7C(void *a1)
{
  v2 = a1[27];
  if (v2)
  {
    a1[28] = v2;
    operator delete(v2);
  }

  v3 = a1[24];
  if (v3)
  {
    v4 = a1[25];
    v5 = a1[24];
    if (v4 != v3)
    {
      do
      {
        v6 = *(v4 - 24);
        if (v6)
        {
          operator delete(v6);
        }

        v7 = *(v4 - 104);
        if (v7)
        {
          *(v4 - 96) = v7;
          operator delete(v7);
        }

        v4 -= 176;
      }

      while (v4 != v3);
      v5 = a1[24];
    }

    a1[25] = v3;
    operator delete(v5);
  }

  v8 = a1[20];
  if (v8)
  {
    operator delete(v8);
  }

  v9 = a1[10];
  if (v9)
  {
    a1[11] = v9;

    operator delete(v9);
  }
}

uint64_t sub_D4EE40(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 240;
    sub_D4ED7C((i - 240));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_D4EE94(uint64_t a1)
{
  if (*(a1 + 240) == 1)
  {
    v2 = *(a1 + 216);
    if (v2)
    {
      *(a1 + 224) = v2;
      operator delete(v2);
    }

    v3 = *(a1 + 192);
    if (v3)
    {
      v4 = *(a1 + 200);
      v5 = *(a1 + 192);
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 24);
          if (v6)
          {
            operator delete(v6);
          }

          v7 = *(v4 - 104);
          if (v7)
          {
            *(v4 - 96) = v7;
            operator delete(v7);
          }

          v4 -= 176;
        }

        while (v4 != v3);
        v5 = *(a1 + 192);
      }

      *(a1 + 200) = v3;
      operator delete(v5);
    }

    v8 = *(a1 + 160);
    if (v8)
    {
      operator delete(v8);
    }

    v9 = *(a1 + 80);
    if (v9)
    {
      *(a1 + 88) = v9;
      operator delete(v9);
    }
  }

  return a1;
}

void *sub_D4EF4C(void *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v3 -= 30;
        sub_D4ED7C(v3);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_D4F30C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19)
{
  sub_D4F408(v19 - 176);
  sub_D4F38C(&a19);
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_1A104((v19 - 96));
  _Unwind_Resume(a1);
}

void sub_D4F368(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  sub_1A104((v21 - 176));
  if (a21 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0xD4F360);
}

void *sub_D4F38C(void *a1)
{
  v2 = a1[536];
  if (v2)
  {
    v3 = a1[537];
    v4 = a1[536];
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
      v4 = a1[536];
    }

    a1[537] = v2;
    operator delete(v4);
  }

  sub_506524(a1 + 2);
  return a1;
}

uint64_t sub_D4F408(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = *(a1 + 16);
      v4 = *(a1 + 8);
      if (v3 != v2)
      {
        do
        {
          v5 = *(v3 - 32);
          if (v5)
          {
            *(v3 - 24) = v5;
            operator delete(v5);
          }

          v3 -= 40;
        }

        while (v3 != v2);
        v4 = *(a1 + 8);
      }

      *(a1 + 16) = v2;
      operator delete(v4);
    }
  }

  return a1;
}

uint64_t sub_D4F488@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 32) = 0;
  *(a2 + 24) = 0;
  *a2 = result;
  return result;
}

void sub_D4F5AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_D4F60C(uint64_t a1)
{
  sub_7E9A4(v5);
  sub_1757EA4(v3, 0, 0);
  v4 = 0u;
  sub_F1AFC4(v6, **(a1 + 8));
}

void sub_D4FBD4(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, uint64_t a9, void *__pa, uint64_t a11, int a12, __int16 a13, char a14, char a15, ...)
{
  va_start(va, a15);
  if (a15 < 0)
  {
    operator delete(__pa);
  }

  std::ios::~ios();
  sub_D4FF2C(&STACK[0x608]);
  sub_D500BC(va);
  _Unwind_Resume(a1);
}

void sub_D4FE54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_D4FE78(uint64_t a1, void *a2)
{
  *a1 = 1;
  v4 = sub_1757EA4(a1 + 8, 0, 0);
  if (v4 != a2)
  {
    v5 = *(a1 + 16);
    if ((v5 & 2) != 0)
    {
      v5 = 0;
    }

    else if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v6 = a2[1];
    if ((v6 & 2) != 0)
    {
      v6 = 0;
    }

    else if (v6)
    {
      v6 = *(v6 & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (v5 == v6)
    {
      sub_175C55C(v4, a2);
    }

    else
    {
      sub_175C1D0(v4, a2);
    }
  }

  v7 = a2[72];
  a2[72] = 0;
  *(a1 + 584) = v7;
  *(a1 + 592) = a2[73];
  return a1;
}

uint64_t sub_D4FF2C(uint64_t a1)
{
  v2 = *(a1 + 360);
  if (v2)
  {
    v3 = *(a1 + 368);
    v4 = *(a1 + 360);
    if (v3 == v2)
    {
LABEL_11:
      *(a1 + 368) = v2;
      operator delete(v4);
      goto LABEL_12;
    }

    while (1)
    {
      if (*(v3 - 9) < 0)
      {
        operator delete(*(v3 - 32));
        if (*(v3 - 41) < 0)
        {
LABEL_9:
          operator delete(*(v3 - 64));
        }
      }

      else if (*(v3 - 41) < 0)
      {
        goto LABEL_9;
      }

      v3 -= 72;
      if (v3 == v2)
      {
        v4 = *(a1 + 360);
        goto LABEL_11;
      }
    }
  }

LABEL_12:
  v5 = *(a1 + 336);
  if (v5)
  {
    do
    {
      v6 = *v5;
      operator delete(v5);
      v5 = v6;
    }

    while (v6);
  }

  v7 = *(a1 + 320);
  *(a1 + 320) = 0;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = *(a1 + 296);
  if (v8)
  {
    v9 = *(a1 + 304);
    v10 = *(a1 + 296);
    if (v9 != v8)
    {
      do
      {
        v9 = sub_55A8B4(v9 - 496);
      }

      while (v9 != v8);
      v10 = *(a1 + 296);
    }

    *(a1 + 304) = v8;
    operator delete(v10);
  }

  v11 = *(a1 + 272);
  if (v11)
  {
    do
    {
      v18 = *v11;
      v19 = *(v11 + 5);
      if (v19)
      {
        *(v11 + 6) = v19;
        operator delete(v19);
      }

      if (v11[39] < 0)
      {
        operator delete(*(v11 + 2));
      }

      operator delete(v11);
      v11 = v18;
    }

    while (v18);
  }

  v12 = *(a1 + 256);
  *(a1 + 256) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  v13 = *(a1 + 224);
  if (v13)
  {
    *(a1 + 232) = v13;
    operator delete(v13);
  }

  if (*(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
  }

  v14 = *(a1 + 152);
  if (v14)
  {
    *(a1 + 160) = v14;
    operator delete(v14);
  }

  v15 = *(a1 + 120);
  if (v15)
  {
    *(a1 + 128) = v15;
    operator delete(v15);
  }

  v16 = *(a1 + 56);
  if (v16)
  {
    *(a1 + 64) = v16;
    operator delete(v16);
  }

  return a1;
}

void *sub_D500BC(void *a1)
{
  v3 = a1[72];
  a1[72] = 0;
  if (v3)
  {
    sub_1758FB8(v3);
    operator delete();
  }

  return sub_1758FB8(a1);
}

void sub_D5011C()
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
  xmmword_27B63B8 = 0u;
  unk_27B63C8 = 0u;
  dword_27B63D8 = 1065353216;
  sub_3A9A34(&xmmword_27B63B8, v0, v0);
  sub_3A9A34(&xmmword_27B63B8, v3, v3);
  sub_3A9A34(&xmmword_27B63B8, __p, __p);
  sub_3A9A34(&xmmword_27B63B8, v9, v9);
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
    qword_27B6390 = 0;
    qword_27B6398 = 0;
    qword_27B6388 = 0;
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