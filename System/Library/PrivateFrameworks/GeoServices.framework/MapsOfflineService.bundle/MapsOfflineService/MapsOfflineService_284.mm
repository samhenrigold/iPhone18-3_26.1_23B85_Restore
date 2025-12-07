void sub_113AE38(uint64_t a1, void *a2)
{
  v16 = 8;
  strcpy(__p.i8, "criteria");
  v4 = sub_5F8FC(a2, __p.i64);
  v5 = sub_113BD60(v4);
  if (v16 < 0)
  {
    v6 = v5;
    operator delete(__p.i64[0]);
    v5 = v6;
  }

  *a1 = v5;
  v16 = 9;
  strcpy(__p.i8, "threshold");
  v7 = sub_63D34(a2, __p.i64);
  if (v16 < 0)
  {
    v8 = v7;
    operator delete(__p.i64[0]);
    v7 = v8;
  }

  *(a1 + 8) = v7;
  v16 = 4;
  strcpy(__p.i8, "type");
  v9 = sub_5F8FC(a2, __p.i64);
  v10 = *(v9 + 23);
  if (v10 < 0)
  {
    if (v9[1] != 3)
    {
      goto LABEL_18;
    }

    v9 = *v9;
  }

  else if (v10 != 3)
  {
LABEL_18:
    v12 = 1;
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v12 = *v9 != 18765 || *(v9 + 2) != 78;
  if ((v16 & 0x80000000) == 0)
  {
LABEL_20:
    *(a1 + 16) = v12;
    HIBYTE(v14[2]) = 17;
    strcpy(v14, "skip_for_purposes");
    v13[23] = 0;
    v13[0] = 0;
    sub_5FB24(v13, &__p, a2, v14);
    sub_113B43C(&__p);
  }

LABEL_19:
  operator delete(__p.i64[0]);
  goto LABEL_20;
}

void sub_113B360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a28 < 0)
  {
    operator delete(__p);
    if (a15 < 0)
    {
LABEL_5:
      operator delete(a10);
      if ((a21 & 0x80000000) == 0)
      {
        goto LABEL_9;
      }

LABEL_8:
      operator delete(a16);
LABEL_9:
      _Unwind_Resume(a1);
    }
  }

  else if (a15 < 0)
  {
    goto LABEL_5;
  }

  if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  goto LABEL_8;
}

void sub_113B43C(int8x16_t *a1)
{
  v1 = a1->i64[1];
  if (a1[1].i8[7] >= 0)
  {
    v2 = a1[1].u8[7];
  }

  else
  {
    a1 = a1->i64[0];
    v2 = v1;
  }

  sub_22174(a1, v2, 0x2Cu, &v3);
}

void sub_113B850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *__p, uint64_t a7, int a8, __int16 a9, char a10, char a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  std::ios::~ios();
  sub_1A104((v28 - 112));
  _Unwind_Resume(a1);
}

BOOL sub_113B8CC(double *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 16) == 1)
  {
    if (v2 < 0x7A)
    {
      return *(a2 + 8 * v2) <= a1[1];
    }

LABEL_6:
    exception = __cxa_allocate_exception(0x40uLL);
    v5 = sub_2D390(exception, "Invalid key.", 0xCuLL);
  }

  if (v2 >= 0x7A)
  {
    goto LABEL_6;
  }

  return *(a2 + 8 * v2) >= a1[1];
}

uint64_t sub_113B95C(double **a1, uint64_t a2)
{
  v2 = *(a2 + 1008);
  if ((v2 & 0x10) == 0)
  {
    return (*a1[5] + *a1[1]);
  }

  v4 = *(a2 + 40);
  v5 = *(a2 + 64);
  if (v5 == 0.0)
  {
    if (v4 == 0.0)
    {
      return (*a1[2] + *a1[1]);
    }
  }

  else if (v4 / v5 > (*a1)[7] && v4 - v5 > (*a1)[8])
  {
    return (*a1[2] + *a1[1]);
  }

  v6 = a1[1];
  v7 = (v6 + 4);
  v8 = v6 + 1;
  v9 = 3;
  if ((v2 & 8) != 0)
  {
    v10 = v8;
  }

  else
  {
    v9 = 4;
    v10 = v7;
  }

  return (*a1[v9] + *v10);
}

void sub_113BA0C(void *a1, void *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3) + 1;
  if (v2 <= 0x666666666666666)
  {
    if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v2)
    {
      v2 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
    }

    if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
    {
      v3 = 0x666666666666666;
    }

    else
    {
      v3 = v2;
    }

    if (v3)
    {
      if (v3 <= 0x666666666666666)
      {
        operator new();
      }

      sub_1808();
    }

    sub_113AE38(8 * ((a1[1] - *a1) >> 3), a2);
  }

  sub_1794();
}

void sub_113BB20(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_113BB38()
{
  byte_27C3097 = 3;
  LODWORD(qword_27C3080) = 5136193;
  byte_27C30AF = 3;
  LODWORD(qword_27C3098) = 5136194;
  byte_27C30C7 = 3;
  LODWORD(qword_27C30B0) = 5136195;
  byte_27C30DF = 15;
  strcpy(&qword_27C30C8, "vehicle_mass_kg");
  byte_27C30F7 = 21;
  strcpy(&xmmword_27C30E0, "vehicle_cargo_mass_kg");
  byte_27C310F = 19;
  strcpy(&qword_27C30F8, "vehicle_aux_power_w");
  byte_27C3127 = 15;
  strcpy(&qword_27C3110, "dcdc_efficiency");
  strcpy(&qword_27C3128, "drive_train_efficiency");
  HIBYTE(word_27C313E) = 22;
  operator new();
}

void sub_113BD14(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C313E) < 0)
  {
    sub_21E8704();
  }

  sub_21E8710();
  _Unwind_Resume(a1);
}

uint64_t sub_113BD60(uint64_t *a1)
{
  v2 = sub_113C588(&xmmword_27C3158, a1);
  if (!v2)
  {
    if (!sub_7E7E4(3u))
    {
      goto LABEL_26;
    }

    sub_19594F8(&v13);
    v4 = *(a1 + 23);
    if (v4 >= 0)
    {
      v5 = a1;
    }

    else
    {
      v5 = *a1;
    }

    if (v4 >= 0)
    {
      v6 = *(a1 + 23);
    }

    else
    {
      v6 = a1[1];
    }

    v7 = sub_4A5C(&v13, v5, v6);
    sub_4A5C(v7, " is not defined in DrivingRouteCriteria", 39);
    if ((v23 & 0x10) != 0)
    {
      v9 = v22;
      if (v22 < v19)
      {
        v22 = v19;
        v9 = v19;
      }

      v10 = v18;
      v8 = v9 - v18;
      if (v9 - v18 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_28;
      }
    }

    else
    {
      if ((v23 & 8) == 0)
      {
        v8 = 0;
        HIBYTE(v12) = 0;
LABEL_21:
        *(&__p + v8) = 0;
        sub_7E854(&__p, 3u);
        if (SHIBYTE(v12) < 0)
        {
          operator delete(__p);
        }

        if (v21 < 0)
        {
          operator delete(v20);
        }

        std::locale::~locale(&v15);
        std::ostream::~ostream();
        std::ios::~ios();
LABEL_26:
        operator new();
      }

      v10 = v16;
      v8 = v17 - v16;
      if ((v17 - v16) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_28:
        sub_3244();
      }
    }

    if (v8 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v12) = v8;
    if (v8)
    {
      memmove(&__p, v10, v8);
    }

    goto LABEL_21;
  }

  return *(v2 + 40);
}

void sub_113C074(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  if (SHIBYTE(a11) < 0)
  {
    operator delete(a9);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

void *sub_113C0E4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  if (result != 122)
  {
    v2 = &qword_27C3168;
    while (1)
    {
      v2 = *v2;
      if (!v2)
      {
        break;
      }

      if (*(v2 + 40) == result)
      {
        if (*(v2 + 39) < 0)
        {
          return sub_325C(a2, v2[2], v2[3]);
        }

        v3 = *(v2 + 1);
        *(a2 + 16) = v2[4];
        *a2 = v3;
        return result;
      }
    }
  }

  *(a2 + 23) = 7;
  strcpy(a2, "Unknown");
  return result;
}

uint64_t **sub_113C158(void *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2;
  v5 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  v7 = sub_AAD8(&v25, a2, v6);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_43;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  if (v10.u32[0] > 1uLL)
  {
    v11 = v7;
    if (v7 >= *&v9)
    {
      v11 = v7 % *&v9;
    }
  }

  else
  {
    v11 = (*&v9 - 1) & v7;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_43:
    operator new();
  }

  v14 = *(v3 + 23);
  if (v14 >= 0)
  {
    v15 = *(v3 + 23);
  }

  else
  {
    v15 = v3[1];
  }

  if (v14 < 0)
  {
    v3 = *v3;
  }

  if (v10.u32[0] < 2uLL)
  {
    while (1)
    {
      v20 = v13[1];
      if (v20 == v8)
      {
        v21 = *(v13 + 39);
        v22 = v21;
        if (v21 < 0)
        {
          v21 = v13[3];
        }

        if (v21 == v15)
        {
          v23 = v22 >= 0 ? (v13 + 2) : v13[2];
          if (!memcmp(v23, v3, v15))
          {
            return v13;
          }
        }
      }

      else if ((v20 & (*&v9 - 1)) != v11)
      {
        goto LABEL_43;
      }

      v13 = *v13;
      if (!v13)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v16 = v13[1];
    if (v16 == v8)
    {
      break;
    }

    if (v16 >= *&v9)
    {
      v16 %= *&v9;
    }

    if (v16 != v11)
    {
      goto LABEL_43;
    }

LABEL_20:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_43;
    }
  }

  v17 = *(v13 + 39);
  v18 = v17;
  if (v17 < 0)
  {
    v17 = v13[3];
  }

  if (v17 != v15)
  {
    goto LABEL_20;
  }

  v19 = v18 >= 0 ? (v13 + 2) : v13[2];
  if (memcmp(v19, v3, v15))
  {
    goto LABEL_20;
  }

  return v13;
}

void sub_113C55C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

void sub_113C570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_113C588(void *a1, uint64_t *a2)
{
  v2 = a2;
  v4 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_AAD8(&v25, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    v13 = *(v2 + 23);
    if (v13 >= 0)
    {
      v14 = *(v2 + 23);
    }

    else
    {
      v14 = v2[1];
    }

    if (v13 < 0)
    {
      v2 = *v2;
    }

    if (v9.u32[0] < 2uLL)
    {
      v15 = *&v7 - 1;
      while (1)
      {
        v20 = v12[1];
        if (v8 == v20)
        {
          v21 = *(v12 + 39);
          v22 = v21;
          if (v21 < 0)
          {
            v21 = v12[3];
          }

          if (v21 == v14)
          {
            v23 = v22 >= 0 ? (v12 + 2) : v12[2];
            if (!memcmp(v23, v2, v14))
            {
              return v12;
            }
          }
        }

        else if ((v20 & v15) != v10)
        {
          return 0;
        }

        v12 = *v12;
        if (!v12)
        {
          return v12;
        }
      }
    }

    do
    {
      v16 = v12[1];
      if (v8 == v16)
      {
        v17 = *(v12 + 39);
        v18 = v17;
        if (v17 < 0)
        {
          v17 = v12[3];
        }

        if (v17 == v14)
        {
          v19 = v18 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v19, v2, v14))
          {
            return v12;
          }
        }
      }

      else
      {
        if (v16 >= *&v7)
        {
          v16 %= *&v7;
        }

        if (v16 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

void sub_113C740()
{
  v1 = 6;
  strcpy(v0, "length");
  v3 = 270;
  strcpy(v2, "traversal_time");
  v5 = 534;
  strcpy(v4, "rounded_traversal_time");
  operator new();
}

void sub_113E994(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  while (1)
  {
    v12 = *(v10 - 9);
    v10 -= 4;
    if (v12 < 0)
    {
      operator delete(*v10);
    }

    if (v10 == &a10)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

void sub_113EB48(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, char a5)
{
  v5 = a4;
  *a1 = a3;
  v8 = (a1 + 8);
  sub_1196AF4((a1 + 1), a2);
  sub_1196AF4(v8, a2);
  v11 = 20;
  strcpy(__p, "DrivingRouteAnalyzer");
  memset(v12, 0, sizeof(v12));
  v9 = sub_3AEC94(a2, __p, v12);
  sub_118D3AC(a1 + 15, a2, v9, v5);
}

void sub_113F3E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v34 - 105) < 0)
  {
    operator delete(*(v34 - 128));
  }

  sub_1A104((v34 - 104));
  if (a32 < 0)
  {
    operator delete(__p);
  }

  sub_3E3DF0(v32 + 409);
  v36 = v32[389];
  if (v36)
  {
    operator delete(v36);
  }

  sub_11464AC(v32 + 263);
  sub_FA9554(v32 + 97);
  v37 = v32[27];
  if (v37)
  {
    v32[28] = v37;
    operator delete(v37);
  }

  sub_D5EE2C(v33);
  sub_D5EE2C(v32 + 1);
  _Unwind_Resume(a1);
}

void sub_113F5CC()
{
  if (!*(v0 + 3112))
  {
    JUMPOUT(0x113F568);
  }

  JUMPOUT(0x113F564);
}

void sub_113F5E0(uint64_t a1, uint64_t *a2)
{
  v4 = a1 + 8928;
  *(a1 + 8928) = 0;
  *(a1 + 8936) = 0;
  *(a1 + 8940) = 0;
  v28 = a1 + 0x2000;
  *(a1 + 8944) = 0;
  sub_112D988(a1 + 3272, a2, *a1);
  sub_1133AC0(a1 + 3272, &v38);
  *(a1 + 8928) = v38;
  *(v4 + 16) = v39;
  v5 = *a2;
  v27 = a2[1];
  if (*a2 != v27)
  {
    for (i = (v5 + 32); ; i += 139)
    {
      sub_1140428(a1, *(v5 + 8), v5 + 32);
      if (*(v28 + 688) == 1)
      {
        break;
      }

      v5 += 1112;
      if (v5 == v27)
      {
        return;
      }
    }

    v6 = 0;
    for (j = i; ; ++j)
    {
      if (*j == 0.0 || *j == 1.79769313e308)
      {
        goto LABEL_7;
      }

      v9 = *(v5 + 8);
      sub_113C0E4(v6, v32);
      if (v33 >= 0)
      {
        v10 = HIBYTE(v33);
      }

      else
      {
        v10 = v32[1];
      }

      v11 = 22;
      if (v33 < 0)
      {
        v11 = (v33 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if (v11 == v10)
      {
        if (v10 != 0x7FFFFFFFFFFFFFF6)
        {
          operator new();
        }

        sub_3244();
      }

      if (v33 >= 0)
      {
        v12 = v32;
      }

      else
      {
        v12 = v32[0];
      }

      if (v10)
      {
        if (v12 <= " " && v12 + v10 > " ")
        {
          v14 = "";
        }

        else
        {
          v14 = " ";
        }

        if (v33 >= 0)
        {
          v15 = v32;
        }

        else
        {
          v15 = v32[0];
        }

        memmove(v15 + 1, v12, v10);
        *v12 = *v14;
        v16 = v10 + 1;
        if ((SHIBYTE(v33) & 0x80000000) == 0)
        {
LABEL_34:
          HIBYTE(v33) = v16 & 0x7F;
          goto LABEL_37;
        }
      }

      else
      {
        *v12 = asc_255FE22[0];
        v16 = 1;
        if ((SHIBYTE(v33) & 0x80000000) == 0)
        {
          goto LABEL_34;
        }
      }

      v32[1] = v16;
LABEL_37:
      *(v12 + v16) = 0;
      v35 = v33;
      *__p = *v32;
      v32[1] = 0;
      v33 = 0;
      v32[0] = 0;
      if (v35 >= 0)
      {
        v17 = 22;
      }

      else
      {
        v17 = (v35 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if (v35 >= 0)
      {
        v18 = HIBYTE(v35);
      }

      else
      {
        v18 = __p[1];
      }

      if (v17 == v18)
      {
        if (v17 != 0x7FFFFFFFFFFFFFF6)
        {
          operator new();
        }

        sub_3244();
      }

      v19 = __p;
      if (v35 < 0)
      {
        v19 = __p[0];
      }

      v18[v19] = 58;
      v20 = v18 + 1;
      if (SHIBYTE(v35) < 0)
      {
        __p[1] = v20;
      }

      else
      {
        HIBYTE(v35) = v20 & 0x7F;
      }

      *(v20 + v19) = 0;
      v36 = *__p;
      v37 = v35;
      __p[1] = 0;
      v35 = 0;
      __p[0] = 0;
      sub_60A20(3, v30);
      if ((v31 & 0x80u) == 0)
      {
        v21 = v30;
      }

      else
      {
        v21 = v30[0];
      }

      if ((v31 & 0x80u) == 0)
      {
        v22 = v31;
      }

      else
      {
        v22 = v30[1];
      }

      if (v37 >= 0)
      {
        v23 = 22;
      }

      else
      {
        v23 = (v37 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if (v37 >= 0)
      {
        v24 = HIBYTE(v37);
      }

      else
      {
        v24 = v36.n128_u64[1];
      }

      if (v23 - v24 < v22)
      {
        if (0x7FFFFFFFFFFFFFF6 - v23 >= v24 + v22 - v23)
        {
          operator new();
        }

        sub_3244();
      }

      if (v22)
      {
        if (v37 >= 0)
        {
          v25 = &v36;
        }

        else
        {
          v25 = v36.n128_u64[0];
        }

        memmove(v25 + v24, v21, v22);
        v26 = v24 + v22;
        if (SHIBYTE(v37) < 0)
        {
          v36.n128_u64[1] = v24 + v22;
        }

        else
        {
          HIBYTE(v37) = v26 & 0x7F;
        }

        v25->n128_u8[v26] = 0;
      }

      v38 = v36;
      v39 = v37;
      v37 = 0;
      v36 = 0uLL;
      sub_4C5174(v9, &v38);
      if (SHIBYTE(v39) < 0)
      {
        operator delete(v38.n128_u64[0]);
        if ((v31 & 0x80000000) == 0)
        {
LABEL_76:
          if ((SHIBYTE(v37) & 0x80000000) == 0)
          {
            goto LABEL_77;
          }

          goto LABEL_81;
        }
      }

      else if ((v31 & 0x80000000) == 0)
      {
        goto LABEL_76;
      }

      operator delete(v30[0]);
      if ((SHIBYTE(v37) & 0x80000000) == 0)
      {
LABEL_77:
        if (SHIBYTE(v35) < 0)
        {
          goto LABEL_6;
        }

        goto LABEL_82;
      }

LABEL_81:
      operator delete(v36.n128_u64[0]);
      if (SHIBYTE(v35) < 0)
      {
LABEL_6:
        operator delete(__p[0]);
        if (SHIBYTE(v33) < 0)
        {
          goto LABEL_83;
        }

        goto LABEL_7;
      }

LABEL_82:
      if (SHIBYTE(v33) < 0)
      {
LABEL_83:
        operator delete(v32[0]);
      }

LABEL_7:
      if (++v6 == 122)
      {
        operator new();
      }
    }
  }
}

void sub_11402AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (*(v38 - 89) < 0)
  {
    operator delete(*(v38 - 112));
  }

  _Unwind_Resume(exception_object);
}

void sub_1140428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_4C49E0(a2))
  {
    v6 = (a1 + 0x2000);
    v83 = *(a1 + 8678);
    v7 = sub_4E4B18(a2, 0, 5);
    v8 = sub_4E4B18(a2, 1, 5);
    v9 = sub_4E4B18(a2, 2, 5);
    sub_4E4B18(a2, 0, 0);
    v84 = a2;
    v10 = v7;
    *a3 = sub_4C4BD8(a2);
    *(a3 + 8) = v7;
    if (v7 < 0)
    {
      v11 = -5;
    }

    else
    {
      v11 = 5;
    }

    v12 = ceil((v7 / 10 + (((103 * (v11 + v7 % 10)) >> 15) & 1) + ((103 * (v11 + v7 % 10)) >> 10)) / 60.0) * 60.0 * 10.0;
    if (v12 >= 0.0)
    {
      if (v12 < 4.50359963e15)
      {
        v13 = (v12 + v12) + 1;
        goto LABEL_10;
      }
    }

    else if (v12 > -4.50359963e15)
    {
      v13 = (v12 + v12) - 1 + (((v12 + v12) - 1) >> 63);
LABEL_10:
      v12 = (v13 >> 1);
    }

    *(a3 + 16) = v12;
    *(a3 + 24) = v8;
    *(a3 + 32) = v9;
    v14 = sub_4C4AD0(a2);
    v15 = 1.0;
    if (*(v14 + 20) == 1)
    {
      v15 = ((*(sub_4C4AD8(a2) + 20) & 1) == 0);
    }

    *(a3 + 128) = v15;
    *(a3 + 176) = sub_1197E1C(a1 + 8, a2);
    v16 = sub_58BBC(a2);
    v17 = *v16;
    v18 = v16[1];
    while (1)
    {
      if (v17 == v18)
      {
        v27 = 0.0;
LABEL_44:
        *(a3 + 120) = v27;
        v40 = sub_73EC4(v84);
        if (sub_4C513C(v84, 7) && (sub_4C513C(v84, 5) & 1) == 0)
        {
          v42 = (*v40 & 0x7FFFFFFFFFFFFFFFLL) == 0;
          if ((*v40 - 1) < 0xFFFFFFFFFFFFFLL)
          {
            v42 = 1;
          }

          v44 = ((*v40 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF && *v40 >= 0 || v42;
          if (*v40 <= 0.0)
          {
            v44 = 0;
          }

          v41 = v44 << 31 >> 31;
        }

        else
        {
          v41 = 0;
        }

        *(a3 + 152) = (*(v40 + 12) + v41);
        v45 = *(v40 + 16);
        v46.i64[0] = v45;
        v46.i64[1] = HIDWORD(v45);
        *(a3 + 160) = vcvtq_f64_u64(v46);
        v47 = *(v40 + 24);
        v46.i64[0] = v47;
        v46.i64[1] = HIDWORD(v47);
        *(a3 + 136) = vcvtq_f64_u64(v46);
        *(a3 + 248) = sub_118DA20(a1 + 120, v84);
        v48 = v10 / v8;
        if (v8 <= 0)
        {
          v48 = 1.0;
        }

        *(a3 + 456) = v48;
        *(a3 + 112) = sub_118DEC4(a1 + 120, v84);
        v49 = 0.0;
        if (*(a1 + 8594) == 1)
        {
          v49 = sub_118EC50(a1 + 120, v84);
        }

        *(a3 + 280) = v49;
        LODWORD(v49) = *(v40 + 32);
        *(a3 + 752) = *&v49;
        v50 = sub_4C50D8(v84, 12);
        v51 = 3.0;
        if ((v50 & 1) == 0)
        {
          v52 = sub_4C50D8(v84, 11);
          v51 = 2.0;
          if ((v52 & 1) == 0)
          {
            v51 = sub_4C50D8(v84, 10);
          }
        }

        *(a3 + 760) = v51;
        *(a3 + 768) = sub_4C513C(v84, 2);
        v53 = sub_58BBC(v84);
        v86[0] = a1 + 2104;
        v90 = 0;
        v91 = 0;
        v89 = 0;
        sub_2CF2A8(&v89, 0xE21A291C077975B9 * ((v53[1] - *v53) >> 3));
        sub_1146A64(v53, &v89, v86);
        v54 = v89;
        v55 = v90;
        if (v89 == v90)
        {
          *(a3 + 224) = 0;
          *(a3 + 232) = 0;
          *(a3 + 240) = 0;
        }

        else
        {
          v56 = 0;
          v57 = v89;
          do
          {
            while (1)
            {
              v58 = v57[1];
              if (*v57 != v58)
              {
                break;
              }

              v57 += 3;
              if (v57 == v90)
              {
                goto LABEL_70;
              }
            }

            v56 += *(v58 - 5);
            v57 += 3;
          }

          while (v57 != v90);
LABEL_70:
          *(a3 + 232) = 0;
          *(a3 + 224) = v56;
          *(a3 + 240) = 0;
          v59 = v55 - v54;
          if (v59)
          {
            v60 = 0;
            v85 = 0xAAAAAAAAAAAAAAABLL * (v59 >> 3);
            do
            {
              v61 = sub_4C49C0(v84, v60);
              v62 = &v89[3 * v60];
              v63 = *v62;
              v64 = v62[1];
              if (*v62 != v64)
              {
                v65 = v61;
                do
                {
                  v67 = *(v63 + 4);
                  if (v67 >= *(a1 + 8672))
                  {
                    if (*(v63 + 8) <= 10)
                    {
                      v68 = 10;
                    }

                    else
                    {
                      v68 = *(v63 + 8);
                    }

                    v69 = 1.0;
                    if (*(a1 + 8664) != 1.0 && sub_4C1334((a1 + 2104), v65, v63))
                    {
                      v69 = *(a1 + 8664);
                    }

                    v70 = v67 / (v68 / 10.0) * v69;
                    *(a3 + 232) = *(a3 + 232) + v70;
                    v6 = (a1 + 0x2000);
                    if (*(a1 + 8584) == 2)
                    {
                      sub_4C1090(a1 + 2104, v65, v63);
                      *(a3 + 240) = v70 * v66 + *(a3 + 240);
                    }
                  }

                  v63 += 5;
                }

                while (v63 != v64);
              }

              ++v60;
            }

            while (v60 != v85);
          }
        }

        *(a3 + 600) = sub_1190064(a1 + 120, v84, 4u, 1);
        *(a3 + 608) = sub_1190064(a1 + 120, v84, 4u, 0);
        *(a3 + 544) = sub_118F99C(a1 + 120, v84, 0);
        *(a3 + 584) = sub_118F458(a1 + 120, v84, 0);
        *(a3 + 592) = sub_118F458(a1 + 120, v84, 4u);
        *(a3 + 552) = sub_118F99C(a1 + 120, v84, 4);
        *(a3 + 624) = sub_118FF80(a1 + 120, v84, 0, 0, 0);
        *(a3 + 640) = sub_118FF80(a1 + 120, v84, 5, 0, 0);
        *(a3 + 632) = sub_118FF80(a1 + 120, v84, 4, 0, 0);
        v71 = 0.0;
        if (v6[392] == 2)
        {
          v71 = sub_118FF80(a1 + 120, v84, 1, 0, 0);
        }

        *(a3 + 616) = v71;
        *(a3 + 688) = sub_118FF80(a1 + 120, v84, 2, 0, 0);
        v72 = 0.0;
        if (v6[392] == 2)
        {
          v72 = sub_118FF80(a1 + 120, v84, 3, 0, 0);
        }

        *(a3 + 696) = v72;
        *(a3 + 648) = sub_11902F0(a1 + 120, v84, 0);
        *(a3 + 664) = sub_11902F0(a1 + 120, v84, 4u);
        *(a3 + 672) = sub_118F910(a1 + 120, v84, 4);
        *(a3 + 680) = sub_118F910(a1 + 120, v84, 5);
        v73 = *(a3 + 624);
        v74 = 0.0;
        if (v73 != 0.0)
        {
          v74 = *(a3 + 648) / v73;
        }

        *(a3 + 656) = v74;
        *(a3 + 720) = sub_1143160(a1, v84);
        *(a3 + 520) = sub_118D438(a1 + 120, v84);
        if (v6[403] == 1)
        {
          *(a3 + 424) = sub_118E550(a1 + 120, v84);
        }

        v75 = sub_118DA9C(a1 + 120, v84, *(a1 + 8736));
        v76 = sub_118E5CC(a1 + 120, v84, *(a1 + 8744));
        *(a3 + 272) = (v76 + v75 + sub_4C513C(v84, 5));
        *(a3 + 728) = sub_4C513C(v84, 6);
        if (v6[404] == 1)
        {
          v77 = sub_4B83D4(*(a1 + 3264), v84, v6[393]);
          v78 = 0.0;
          if (v77 == 2)
          {
            v79 = 1.0;
          }

          else
          {
            v79 = 0.0;
          }

          *(a3 + 736) = v79;
          if ((v77 - 1) < 2)
          {
            v78 = 1.0;
          }

          *(a3 + 744) = v78;
        }

        else
        {
          *(a3 + 736) = 0u;
        }

        *(a3 + 40) = 0u;
        *(a3 + 288) = 0u;
        *(a3 + 256) = 0;
        *(a3 + 480) = 0;
        *(a3 + 56) = 0u;
        *(a3 + 72) = 0u;
        *(a3 + 88) = 0u;
        *(a3 + 104) = 0;
        *(a3 + 192) = 0u;
        *(a3 + 208) = 0u;
        *(a3 + 336) = 0;
        *(a3 + 304) = 0u;
        *(a3 + 320) = 0u;
        *(a3 + 432) = 0;
        *(a3 + 440) = 0u;
        *(a3 + 528) = 0u;
        *(a3 + 576) = 0;
        *(a3 + 560) = 0u;
        *(a3 + 704) = 0u;
        *(a3 + 792) = 0u;
        v80 = sub_4C4C40(v84);
        v81 = *(a1 + 3208);
        sub_4C35F8(v84, v86);
        v82 = sub_4D1F50(v86[0], v86[1]);
        sub_320EC8(v81, *(v82 + 32) | (*(v82 + 36) << 32), &v87);
        sub_386C(v88, v80, &v87);
      }

      v19 = sub_45AC50(v17);
      v20 = *(a1 + 3216);
      v21 = sub_45AC50(v17);
      v22 = sub_3E916C(v20, *(v21 + 32) & 0xFFFFFFFFFFFFFFLL);
      v23 = *v19;
      v24 = (*v19 - **v19);
      v25 = *v24;
      if (*(v19 + 38))
      {
        if (v25 < 0x9B)
        {
          goto LABEL_30;
        }

        if (!v24[77])
        {
          goto LABEL_30;
        }

        v26 = *&v23[v24[77]];
        if ((v26 & 2) == 0)
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v25 < 0x9B)
        {
          goto LABEL_30;
        }

        if (!v24[77])
        {
          goto LABEL_30;
        }

        v26 = *&v23[v24[77]];
        if ((v26 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      v27 = 1.0;
      if ((v26 & 0xE00000) != 0)
      {
        goto LABEL_44;
      }

      v28 = v24[23];
      if (!v28)
      {
        goto LABEL_29;
      }

      v29 = v23[v28];
      if (v29 == 15)
      {
        goto LABEL_44;
      }

      if (v29 == 32)
      {
LABEL_29:
        if (v83 >= v22)
        {
          goto LABEL_44;
        }
      }

LABEL_30:
      v30 = sub_4D1F60(v17);
      v31 = *(a1 + 3216);
      v32 = sub_4D1F60(v17);
      v33 = sub_3E916C(v31, *(v32 + 32) & 0xFFFFFFFFFFFFFFLL);
      v34 = *v30;
      v35 = (*v30 - **v30);
      v36 = *v35;
      if (*(v30 + 38))
      {
        if (v36 < 0x9B)
        {
          goto LABEL_15;
        }

        if (!v35[77])
        {
          goto LABEL_15;
        }

        v37 = *&v34[v35[77]];
        if ((v37 & 2) == 0)
        {
          goto LABEL_15;
        }
      }

      else
      {
        if (v36 < 0x9B)
        {
          goto LABEL_15;
        }

        if (!v35[77])
        {
          goto LABEL_15;
        }

        v37 = *&v34[v35[77]];
        if ((v37 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      v27 = 1.0;
      if ((v37 & 0xE00000) != 0)
      {
        goto LABEL_44;
      }

      v38 = v35[23];
      if (!v38)
      {
        goto LABEL_14;
      }

      v39 = v34[v38];
      if (v39 == 15)
      {
        goto LABEL_44;
      }

      if (v39 == 32)
      {
LABEL_14:
        if (v83 >= v33)
        {
          goto LABEL_44;
        }
      }

LABEL_15:
      v17 += 1096;
    }
  }
}

void sub_11428A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  sub_334D18(&a55);
  sub_3874(v55 - 224);
  sub_34BE0((v55 - 176));
  _Unwind_Resume(a1);
}

void sub_1142AE8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_1196B34((a1 + 64));
  v6 = *a3;
  v7 = a3[1];
  if (*a3 != v7)
  {
    do
    {
      sub_1197840((a1 + 64), *(v6 + 8));
      v6 += 1112;
    }

    while (v6 != v7);
  }

  v9 = *a2;
  for (i = a2[1]; v9 != i; v9 += 1112)
  {
    sub_1142B74(a1, v9, a3);
  }
}

void sub_1142B74(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (a1 + 0x2000);
  v7 = *(a2 + 8);
  v40 = 0x7FFFFFFFFFFFFFFELL;
  *(a2 + 216) = sub_1198AB0(a1 + 64, v7, &v40);
  *(a2 + 944) = sub_119E51C(a1 + 64, *(a2 + 8));
  if (v6[405] == 1)
  {
    *(a2 + 224) = fmax(sub_1198F3C((a1 + 64), *(a2 + 8), 1, 1, *(a1 + 8600)), 0.0);
  }

  if (v6[416] == 1 && *a3 != a3[1])
  {
    v8 = *(a1 + 8656) * sub_4C4BD8(*(*a3 + 8));
    if (v8 >= 0.0)
    {
      if (v8 < 4.50359963e15)
      {
        v9 = (v8 + v8) + 1;
        goto LABEL_10;
      }
    }

    else if (v8 > -4.50359963e15)
    {
      v9 = (v8 + v8) - 1 + (((v8 + v8) - 1) >> 63);
LABEL_10:
      v8 = (v9 >> 1);
    }

    v10 = v8;
    if (*(a1 + 8616) > v8)
    {
      v10 = *(a1 + 8616);
    }

    v40 = v10;
    v11 = sub_119B154((a1 + 64), *(a2 + 8), &v40);
    v12 = 0.0;
    if (v11 < v40)
    {
      v12 = 1.0;
    }

    *(a2 + 232) = v12;
  }

  sub_119916C((a1 + 64), *(a2 + 8), 0, &v40);
  v13 = v40;
  if (v40 == v41)
  {
    goto LABEL_41;
  }

  *(a2 + 240) = (0xAAAAAAAAAAAAAAABLL * ((v41 - v40) >> 7) - 1);
  *(a2 + 248) = *(v13 + 360);
  if (v6[688] != 1)
  {
LABEL_42:
    v28 = v41;
    v29 = v13;
    if (v41 != v13)
    {
      do
      {
        v28 = sub_1135B64(v28 - 48);
      }

      while (v28 != v13);
      v29 = v40;
    }

    v41 = v13;
    operator delete(v29);
    return;
  }

  v14 = *(a2 + 8);
  std::to_string(&v37, 0x3AEF6CA970586723 * ((a3[1] - *a3) >> 3));
  v15 = std::string::insert(&v37, 0, " ALT", 4uLL);
  v16 = *&v15->__r_.__value_.__l.__data_;
  v39 = v15->__r_.__value_.__r.__words[2];
  *__p = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  sub_4C5174(v14, __p);
  if (SHIBYTE(v39) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

LABEL_48:
    operator delete(v37.__r_.__value_.__l.__data_);
    goto LABEL_20;
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_48;
  }

LABEL_20:
  v17 = 0;
  v35 = 404167450;
  v36 = 25;
  do
  {
    v18 = *(&v35 + v17);
    v19 = *(a2 + 8);
    sub_113C0E4(v18, &v33);
    v20 = std::string::insert(&v33, 0, " ", 1uLL);
    v21 = *&v20->__r_.__value_.__l.__data_;
    v34.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
    *&v34.__r_.__value_.__l.__data_ = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    v22 = std::string::append(&v34, ":", 1uLL);
    v23 = *&v22->__r_.__value_.__l.__data_;
    v37.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
    *&v37.__r_.__value_.__l.__data_ = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    if (v18 >= 0x7A)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v31 = sub_2D390(exception, "Invalid key.", 0xCuLL);
    }

    std::to_string(&v32, *(a2 + 32 + 8 * v18));
    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24 = &v32;
    }

    else
    {
      v24 = v32.__r_.__value_.__r.__words[0];
    }

    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v32.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v32.__r_.__value_.__l.__size_;
    }

    v26 = std::string::append(&v37, v24, size);
    v27 = *&v26->__r_.__value_.__l.__data_;
    v39 = v26->__r_.__value_.__r.__words[2];
    *__p = v27;
    v26->__r_.__value_.__l.__size_ = 0;
    v26->__r_.__value_.__r.__words[2] = 0;
    v26->__r_.__value_.__r.__words[0] = 0;
    sub_4C5174(v19, __p);
    if (SHIBYTE(v39) < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_31:
        if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_37;
      }
    }

    else if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    operator delete(v32.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_32:
      if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_38;
      }

      goto LABEL_33;
    }

LABEL_37:
    operator delete(v37.__r_.__value_.__l.__data_);
    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_38:
      operator delete(v34.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_39;
    }

LABEL_33:
    if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

LABEL_39:
    operator delete(v33.__r_.__value_.__l.__data_);
LABEL_21:
    ++v17;
  }

  while (v17 != 5);
  v13 = v40;
LABEL_41:
  if (v13)
  {
    goto LABEL_42;
  }
}

void sub_1142FC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  sub_1135B08((v40 - 104));
  _Unwind_Resume(a1);
}

void sub_11430EC(uint64_t a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  v6 = 0;
  sub_11468F4(a3, &v6);
  sub_1140428(a1, a2, a3);
}

__n128 sub_1143144@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = a1[558];
  *a2 = result;
  a2[1].n128_u32[0] = a1[559].n128_u32[0];
  return result;
}

long double sub_1143160(uint64_t a1, uint64_t a2)
{
  v4 = 0.0;
  if (!sub_4C49E0(a2) || !sub_4C49E0(**a1))
  {
    return v4;
  }

  v5 = sub_4C4AE4(a2);
  v6 = sub_58BBC(a2);
  v7 = *v6;
  v8 = (*v5 - **v5);
  if (*v8 >= 0x2Fu && (v9 = v8[23]) != 0)
  {
    v10 = 8736;
    if (!*(*v5 + v9))
    {
      v10 = 8808;
    }

    v11 = a1 + v10;
    if (sub_4D1DB8(*v6) <= *(a1 + v10 + 32))
    {
      return v4;
    }
  }

  else
  {
    v11 = a1 + 8736;
    if (sub_4D1DB8(*v6) <= *(a1 + 8768))
    {
      return v4;
    }
  }

  if (*sub_73EC4(a2) < *(v11 + 64))
  {
    return v4;
  }

  if (*(v11 + 56))
  {
    goto LABEL_12;
  }

  v19 = *v5;
  v20 = (*v5 - **v5);
  v21 = *v20;
  if (*(v5 + 38))
  {
    if (v21 < 0x9B)
    {
      return v4;
    }

    v22 = v20[77];
    if (!v20[77])
    {
      return v4;
    }

    v23 = 2;
  }

  else
  {
    if (v21 < 0x9B)
    {
      return v4;
    }

    v22 = v20[77];
    if (!v20[77])
    {
      return v4;
    }

    v23 = 1;
  }

  if ((*&v19[v22] & v23) != 0)
  {
    v24 = v20[23];
    if (!v24 || ((v25 = v19[v24], v49 = v25 > 0x2F, v26 = (1 << v25) & 0xE2E040048000, !v49) ? (v27 = v26 == 0) : (v27 = 1), v27))
    {
LABEL_12:
      v12 = *(v11 + 40);
      v13 = *a1;
      v14 = sub_45AC50(*a1 + 48);
      v15 = sub_588D8((v13 + 6));
      if (v14 != v15)
      {
        v16 = v15 - v14 - 16;
        if (v16 >= 0x80)
        {
          v28 = (v16 >> 4) + 1;
          v29 = v28 & 7;
          if ((v28 & 7) == 0)
          {
            v29 = 8;
          }

          v30 = v28 - v29;
          v18 = (v14 + 16 * v30);
          v31 = vdupq_n_s32(v12);
          v32 = (v14 + 64);
          v33 = 0uLL;
          v34 = vdupq_n_s64(1uLL);
          v35 = 0uLL;
          v36 = 0uLL;
          v37 = 0uLL;
          do
          {
            v38 = v32 - 16;
            v39 = vld4q_f32(v38);
            v40 = vld4q_f32(v32);
            v41 = vbicq_s8(vcgeq_s32(v31, v39), vceqzq_s32(v39));
            v42 = vbicq_s8(vcgeq_s32(v31, v40), vceqzq_s32(v40));
            v43.i64[0] = v41.u32[0];
            v43.i64[1] = v41.u32[1];
            v44 = vandq_s8(v43, v34);
            v43.i64[0] = v41.u32[2];
            v43.i64[1] = v41.u32[3];
            v45 = vandq_s8(v43, v34);
            v43.i64[0] = v42.u32[0];
            v43.i64[1] = v42.u32[1];
            v46 = vandq_s8(v43, v34);
            v43.i64[0] = v42.u32[2];
            v43.i64[1] = v42.u32[3];
            v35 = vaddq_s64(v35, v45);
            v33 = vaddq_s64(v33, v44);
            v37 = vaddq_s64(v37, vandq_s8(v43, v34));
            v36 = vaddq_s64(v36, v46);
            v32 += 32;
            v30 -= 8;
          }

          while (v30);
          v17 = vaddvq_s64(vaddq_s64(vaddq_s64(v36, v33), vaddq_s64(v37, v35)));
        }

        else
        {
          v17 = 0;
          v18 = v14;
        }

        do
        {
          v48 = *v18;
          v18 += 4;
          v47 = v48;
          if (v48)
          {
            v49 = v12 < v47;
          }

          else
          {
            v49 = 1;
          }

          if (!v49)
          {
            ++v17;
          }
        }

        while (v18 != v15);
        if (v17)
        {
          v50 = sub_118DA9C(a1 + 120, a2, *v11);
          v51 = sub_118E5CC(a1 + 120, a2, *(v11 + 8)) + v50;
          v52 = v51 + sub_4C513C(a2, 5);
          v53 = sub_4D1DB8(v7);
          v54 = *v11;
          if (*v11 >= v53)
          {
            v54 = v53;
          }

          v60 = v54;
          v55 = sub_1198AB0(a1 + 8, a2, &v60);
          v56 = 0.0;
          if (v55 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v57 = *v11;
            if (*v11 != 0x7FFFFFFFFFFFFFFFLL)
            {
              if (v57)
              {
                v56 = v55 / v57;
              }
            }
          }

          v58 = *(v11 + 16) * v52 + v56 * *(v11 + 24);
          return pow(v17, *(v11 + 48)) * v58;
        }
      }
    }
  }

  return v4;
}

void sub_11434B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = *(*a1 + 16);
  *(a3 + 816) = *(a3 + 8);
  *(a3 + 904) = 0;
  *(a3 + 928) = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  *(a3 + 944) = 0u;
  *(a3 + 960) = 0x7FEFFFFFFFFFFFFFLL;
  if ((sub_44F320(v7) & 1) == 0)
  {
    *(a3 + 808) = 0;
    *(a3 + 824) = 0u;
    *(a3 + 840) = 0x4059000000000000;
    *(a3 + 848) = xmmword_22AFBD0;
    *(a3 + 864) = 0x7FEFFFFFFFFFFFFFLL;
    *(a3 + 968) = 0;
    *(a3 + 872) = 0u;
    *(a3 + 888) = 0u;
    *(a3 + 912) = 0u;
    return;
  }

  nullsub_1();
  sub_446E70(&v254, v8, &v7[18].n128_i64[1]);
  if (sub_4C513C(a2, 9))
  {
    v9 = 2;
  }

  else
  {
    v9 = 3;
  }

  v243 = v9;
  *(a3 + 808) = sub_4E47BC(a2, 0, 3);
  v10 = sub_3F80(&v254);
  v11 = sub_58BBC(a2);
  v12 = 0.0;
  v13 = 0.0;
  v14 = 0.0;
  v15 = v11[1] - *v11;
  v244 = v6;
  if (v15)
  {
    v3 = 0;
    v16 = 0;
    v242 = 0xE21A291C077975B9 * (v15 >> 3);
    do
    {
      v18 = *sub_58BBC(a2);
      v19 = sub_4D39C4(v18 + v3);
      __p.n128_u64[0] = sub_4DAC3C(v19);
      __p.n128_u32[2] = v20;
      if (sub_456704(&__p))
      {
        v6 = v244;
        break;
      }

      v21 = sub_4D2130(v18 + v3);
      if (*v21 != 0x7FFFFFFF && v21[9] != 0x7FFFFFFF)
      {
        v23 = v21;
        if (sub_4566B4(v21 + 2))
        {
          v24 = v23[28];
          if (v24)
          {
            if (v24 == 2)
            {
              v47 = *(v23 + 13);
              if (v47 <= 0xFFFFFFFEFFFFFFFFLL && v47 != 0)
              {
                goto LABEL_20;
              }
            }

            else
            {
              if (v24 != 1)
              {
                goto LABEL_397;
              }

              if (*(v23 + 13) != -1)
              {
LABEL_20:
                v25 = sub_4D2130(v18 + v3);
                v10 = sub_3F80((v25 + 8));
              }
            }
          }
        }
      }

      sub_453B68(v18 + v3, &v7[18].n128_i64[1], &__p);
      if (!sub_4566B4(&__p))
      {
        v26 = sub_588E0(&__p);
        sub_446E8C(v26, &v252);
        __p = v252;
        v257 = v253;
      }

      v27 = v243;
      if (v16 < sub_4C35B0(a2) - 1)
      {
        v28 = sub_58BBC(a2);
        v29 = sub_4D2130(*v28 + v3 + 1096);
        v30 = *v29 == 0x7FFFFFFF || v29[9] == 0x7FFFFFFF;
        if (v30 || (v31 = v29, !sub_4566B4(v29 + 2)))
        {
          LOBYTE(v32) = 0;
        }

        else
        {
          v32 = v31[28];
          if (v32)
          {
            if (v32 == 2)
            {
              v49 = *(v31 + 13);
              v33 = v49 >= 0xFFFFFFFF00000000 || v49 == 0;
            }

            else
            {
              if (v32 != 1)
              {
                goto LABEL_397;
              }

              v33 = *(v31 + 13) == -1;
            }

            LOBYTE(v32) = !v33;
          }
        }

        v27 = v32 ^ 1;
      }

      sub_449B0C(v27, v7, &v250);
      sub_446DFC(&v249, v10, &v7[18].n128_i64[1]);
      v34 = sub_456784(&v249, &v250);
      v35 = &v250;
      if (v34)
      {
        v35 = &v249;
      }

      v252 = *v35;
      v253 = v35[1].n128_u64[0];
      sub_449BD0(v27, v7, &v249);
      sub_446DFC(&v247, v10, &v7[18].n128_i64[1]);
      v36 = sub_456784(&v247, &v249);
      v37 = &v247;
      if (!v36)
      {
        v37 = &v249;
      }

      v250 = *v37;
      v251 = v37[1].n128_u64[0];
      if (sub_456784(&__p, &v252))
      {
        v38 = sub_447084(&v252);
        v39 = (v38 - sub_447084(&__p)) * 100.0;
        if (v14 < v39)
        {
          v14 = v39;
        }

        v40 = sub_456698(&__p);
        v6 = v244;
        v41 = (1.0 - v40 / sub_456698(&v252)) * *(v244 + 8888);
        if (v41 >= 0.0)
        {
          if (v41 < 4.50359963e15)
          {
            v42 = (v41 + v41) + 1;
LABEL_49:
            v41 = (v42 >> 1);
          }
        }

        else if (v41 > -4.50359963e15)
        {
          v42 = (v41 + v41) - 1 + (((v41 + v41) - 1) >> 63);
          goto LABEL_49;
        }

        *(a3 + 816) = *(a3 + 816) + v41;
        if (!sub_456784(&__p, &v250))
        {
          goto LABEL_9;
        }

        goto LABEL_51;
      }

      v6 = v244;
      if (!sub_456784(&__p, &v250))
      {
        goto LABEL_9;
      }

LABEL_51:
      v43 = sub_447084(&v250);
      v44 = (v43 - sub_447084(&__p)) * 100.0;
      if (v13 < v44)
      {
        v13 = v44;
      }

      v45 = sub_456698(&__p);
      v17 = (1.0 - v45 / sub_456698(&v250)) * *(v6 + 8892);
      if (v17 >= 0.0)
      {
        if (v17 >= 4.50359963e15)
        {
          goto LABEL_8;
        }

        v46 = (v17 + v17) + 1;
      }

      else
      {
        if (v17 <= -4.50359963e15)
        {
          goto LABEL_8;
        }

        v46 = (v17 + v17) - 1 + (((v17 + v17) - 1) >> 63);
      }

      v17 = (v46 >> 1);
LABEL_8:
      *(a3 + 816) = *(a3 + 816) + v17;
LABEL_9:
      ++v16;
      v3 += 1096;
    }

    while (v242 != v16);
  }

  *(a3 + 872) = v14;
  *(a3 + 880) = v13;
  v50 = sub_5FC64(a2) + 1096;
  v51 = sub_445EF4(a2);
  if (v50 != v51)
  {
    v52 = v51;
    v53 = 0;
    do
    {
      v55 = sub_4D2130(v50);
      v56 = *v55 == 0x7FFFFFFF || v55[9] == 0x7FFFFFFF;
      if (v56 || (v3 = v55, !sub_4566B4(v55 + 2)))
      {
        v54 = 0;
      }

      else
      {
        v54 = *(v3 + 112);
        if (v54)
        {
          if (v54 == 2)
          {
            v58 = *(v3 + 104);
            v57 = v58 >= 0xFFFFFFFF00000000 || v58 == 0;
          }

          else
          {
            if (v54 != 1)
            {
              goto LABEL_397;
            }

            v57 = *(v3 + 104) == -1;
          }

          v54 = !v57;
        }
      }

      v53 += v54;
      v50 += 1096;
    }

    while (v50 != v52);
    v12 = v53;
  }

  *(a3 + 824) = v12;
  v59 = sub_5FC64(a2) + 1096;
  v60 = sub_445EF4(a2);
  v61 = 0.0;
  if (v59 == v60)
  {
    goto LABEL_125;
  }

  v62 = v60;
  v63 = 0;
  do
  {
    v65 = sub_4D2130(v59);
    if (*v65 == 0x7FFFFFFF || v65[9] == 0x7FFFFFFF)
    {
      goto LABEL_97;
    }

    v3 = v65;
    if (!sub_4566B4(v65 + 2))
    {
      goto LABEL_97;
    }

    v67 = *(v3 + 112);
    if (!v67)
    {
      goto LABEL_97;
    }

    if (v67 == 2)
    {
      v68 = *(v3 + 104);
      if (v68 > 0xFFFFFFFEFFFFFFFFLL || !v68)
      {
        goto LABEL_97;
      }

LABEL_110:
      sub_2AB9C8(*(v6 + 3248), v68, *(v3 + 112), &__p);
      v3 = sub_444984(v6 + 3136, &__p, v3 + 120);
      v69 = v258;
      if (v258)
      {
        v70 = v259;
        v71 = v258;
        if (v259 != v258)
        {
          do
          {
            if (*(v70 - 1) < 0)
            {
              operator delete(*(v70 - 3));
            }

            v70 -= 6;
          }

          while (v70 != v69);
          v71 = v258;
        }

        v259 = v69;
        operator delete(v71);
      }

      v72 = __p.n128_u64[0];
      if (__p.n128_u64[0])
      {
        v73 = __p.n128_i64[1];
        v64 = __p.n128_u64[0];
        if (__p.n128_u64[1] != __p.n128_u64[0])
        {
          do
          {
            v74 = *(v73 - 24);
            if (v74)
            {
              *(v73 - 16) = v74;
              operator delete(v74);
            }

            v73 -= 48;
          }

          while (v73 != v72);
          v64 = __p.n128_u64[0];
        }

        __p.n128_u64[1] = v72;
        operator delete(v64);
      }

      v63 += v3;
      v6 = v244;
      goto LABEL_97;
    }

    if (v67 != 1)
    {
      goto LABEL_397;
    }

    v68 = *(v3 + 104);
    if (v68 != -1)
    {
      goto LABEL_110;
    }

LABEL_97:
    v59 += 1096;
  }

  while (v59 != v62);
  v61 = v63;
LABEL_125:
  *(a3 + 832) = v61;
  v75 = sub_58BBC(a2);
  v76 = sub_4D39C4(*(v75 + 8) - 1096);
  __p.n128_u64[0] = sub_4DACB0(v76);
  __p.n128_u32[2] = v77;
  sub_446E70(&v252, &__p, &v7[18].n128_i64[1]);
  *(a3 + 840) = sub_447084(&v252) * 100.0;
  sub_453D8C(a2, &v7[18].n128_i64[1], &v250);
  if (!sub_4566B4(&v250))
  {
    v78 = sub_588E0(&v250);
    sub_446E8C(v78, &__p);
    v250 = __p;
    v251 = v257;
  }

  *(a3 + 848) = sub_447084(&v250) * 100.0;
  *(a3 + 856) = sub_456698(&v250) / 1000.0;
  *(a3 + 864) = sub_453DEC(a2);
  sub_449C98(v243, v7, &v249);
  v79 = sub_447084(&v249);
  v80 = (v79 - sub_447084(&v252)) * 100.0;
  if (v80 < 0.0)
  {
    v80 = 0.0;
  }

  *(a3 + 888) = v80;
  *(a3 + 896) = 0;
  v81 = sub_447084(&v7[23]);
  v82 = sub_58BBC(a2);
  v83 = v82[1];
  v84 = v83 - *v82;
  if (v83 == *v82)
  {
    goto LABEL_145;
  }

  v85 = v81 * 100.0;
  v86 = sub_58BBC(a2);
  v87 = sub_4D2130(*v86);
  if (*v87 == 0x7FFFFFFF)
  {
    goto LABEL_144;
  }

  v88 = v87;
  if (v87[9] == 0x7FFFFFFF)
  {
    goto LABEL_144;
  }

  if (!sub_4566B4(v87 + 2))
  {
    goto LABEL_144;
  }

  v89 = v88[28];
  if (!v89)
  {
    goto LABEL_144;
  }

  if (v89 == 1)
  {
    if (*(v88 + 13) == -1)
    {
      goto LABEL_144;
    }

    goto LABEL_140;
  }

  if (v89 != 2)
  {
    goto LABEL_397;
  }

  v90 = *(v88 + 13);
  if (v90 > 0xFFFFFFFEFFFFFFFFLL || !v90)
  {
    goto LABEL_144;
  }

LABEL_140:
  __p = v254;
  v257 = v255;
  v91 = sub_447084(&__p) * 100.0;
  v92 = sub_58BBC(a2);
  v93 = sub_4D2130(*v92);
  sub_446E70(&v247, (v93 + 8), &v7[18].n128_i64[1]);
  v94 = sub_447084(&v247) * 100.0;
  if (v85 >= v91)
  {
    v95 = v85;
  }

  else
  {
    v95 = v91;
  }

  *(a3 + 896) = *(a3 + 896) + fmax(v94 - v95, 0.0);
LABEL_144:
  if (v84 != 1096)
  {
    v101 = 0xE21A291C077975B9 * (v84 >> 3) - 1;
    v102 = 1096;
    v3 = 0x7FFFFFFFLL;
    while (1)
    {
      v111 = sub_58BBC(a2);
      v112 = sub_4D2130(*v111 + v102);
      if (*v112 == 0x7FFFFFFF || v112[9] == 0x7FFFFFFF)
      {
        goto LABEL_159;
      }

      v114 = v112;
      if (!sub_4566B4(v112 + 2))
      {
        goto LABEL_159;
      }

      v115 = v114[28];
      if (!v115)
      {
        goto LABEL_159;
      }

      if (v115 == 2)
      {
        break;
      }

      if (v115 != 1)
      {
        goto LABEL_397;
      }

      if (*(v114 + 13) != -1)
      {
        goto LABEL_155;
      }

LABEL_159:
      v102 += 1096;
      if (!--v101)
      {
        goto LABEL_145;
      }
    }

    v116 = *(v114 + 13);
    if (v116 > 0xFFFFFFFEFFFFFFFFLL || v116 == 0)
    {
      goto LABEL_159;
    }

LABEL_155:
    v103 = sub_58BBC(a2);
    v104 = sub_4D39C4(*v103 + v102 - 1096);
    *&v247 = sub_4DACB0(v104);
    DWORD2(v247) = v105;
    sub_446E70(&__p, &v247, &v7[18].n128_i64[1]);
    v106 = sub_447084(&__p) * 100.0;
    v107 = sub_58BBC(a2);
    v108 = sub_4D2130(*v107 + v102);
    sub_446E70(&v247, (v108 + 8), &v7[18].n128_i64[1]);
    v109 = sub_447084(&v247) * 100.0;
    if (v85 >= v106)
    {
      v110 = v85;
    }

    else
    {
      v110 = v106;
    }

    *(a3 + 896) = *(a3 + 896) + fmax(v109 - v110, 0.0);
    goto LABEL_159;
  }

LABEL_145:
  v96 = sub_4530A8(a2);
  if (v96 == sub_445EF4(a2))
  {
    v97 = sub_5FC64(a2);
    v98 = sub_4D2130(v97);
    if (*v98 != 0x7FFFFFFF && v98[9] != 0x7FFFFFFF)
    {
      v99 = v98;
      if (sub_4566B4(v98 + 2))
      {
        v100 = v99[28];
        if (v100)
        {
          if (v100 != 2)
          {
            if (v100 == 1)
            {
              if (*(v99 + 13) == -1)
              {
                goto LABEL_178;
              }

LABEL_177:
              v96 = sub_5FC64(a2);
              goto LABEL_178;
            }

LABEL_397:
            sub_5AF20();
          }

          v118 = *(v99 + 13);
          if (v118 <= 0xFFFFFFFEFFFFFFFFLL && v118)
          {
            goto LABEL_177;
          }
        }
      }
    }
  }

LABEL_178:
  if (v96 != sub_445EF4(a2))
  {
    v246 = *(sub_4D2130(v96) + 88);
    __p.n128_u64[0] = 0x8000000080000000;
    __p.n128_u32[2] = -1;
    v257 = 0;
    v119 = *(sub_45AC50(v96) + 32);
    v120 = sub_3CF22C(v96);
    v121 = *v120;
    v122 = sub_2D435C(*(v6 + 3256), v119 & 0xFFFFFFFFFFFFFFLL, *v120);
    v123 = sub_5FC64(a2);
    __p.n128_u64[0] = (10 * (v121 - *sub_3CF22C(v123)));
    __p.n128_u32[2] = v122;
    v257 = *(v6 + 8904);
    if (v96 == sub_5FC64(a2))
    {
      v124 = sub_3F80(&v254);
      if (v124 != 0x7FFFFFFF)
      {
LABEL_184:
        v127 = sub_4D2130(v96);
        v247 = *(v127 + 8);
        v248 = *(v127 + 24);
        sub_4471A4(&v247, v245, (v6 + 8896));
        v128 = sub_3F80(&v247);
        v129 = sub_3F80(v245);
        sub_453774(v124, v128, v129, &v246, &__p, v7);
      }
    }

    else
    {
      v125 = sub_4D39C4(v96 - 1096);
      *&v247 = sub_4DACB0(v125);
      DWORD2(v247) = v126;
      v124 = sub_3F80(&v247);
      if (v124 != 0x7FFFFFFF)
      {
        goto LABEL_184;
      }
    }

    v124 = sub_5AAC4(&v254);
    goto LABEL_184;
  }

  v130 = sub_452F94(a2);
  v131 = sub_4530A8(a2);
  if (v130 == sub_445EF4(a2))
  {
    LODWORD(v132) = 0;
  }

  else
  {
    v133 = sub_4D2130(v130);
    v3 = *(v133 + 104);
    v132 = *(v133 + 112);
  }

  v134 = sub_2AB71C(*(v6 + 3248), v3, v132);
  v135 = sub_445EF4(*(*v6 + 16) + 160);
  v136 = sub_4C49E0(**v244);
  v137 = 0.0;
  v138 = 1.0;
  if (v134 != v135)
  {
    v138 = 0.0;
  }

  if (v136)
  {
    v137 = v138;
  }

  *(a3 + 920) = v137;
  if (v130 != sub_445EF4(a2))
  {
    v139 = *(v244 + 3208);
    v140 = sub_4C4AE4(a2);
    __p.n128_u64[0] = sub_335660(v139, v140, 0);
    __p.n128_u32[2] = v141;
    sub_1144C18(v244, &__p, v3, v132);
    *(a3 + 928) = v142;
  }

  if (v131 != sub_445EF4(a2))
  {
    v143 = sub_4D2130(v131);
    v144 = *(v143 + 104);
    v145 = *(v143 + 112);
    v146 = *(v244 + 3208);
    v147 = sub_4C4AEC(a2);
    __p.n128_u64[0] = sub_335660(v146, v147, 1);
    __p.n128_u32[2] = v148;
    sub_1144C18(v244, &__p, v144, v145);
    *(a3 + 936) = v149;
  }

  v150 = sub_58BBC(a2);
  v151 = sub_4D2130(*v150);
  if (*v151 != 0x7FFFFFFF)
  {
    v152 = v151;
    if (v151[9] != 0x7FFFFFFF && sub_4566B4(v151 + 2))
    {
      v153 = v152[28];
      if (v153)
      {
        if (v153 == 2)
        {
          v154 = *(v152 + 13);
          if (v154 > 0xFFFFFFFEFFFFFFFFLL || !v154)
          {
            goto LABEL_210;
          }
        }

        else
        {
          if (v153 != 1)
          {
            goto LABEL_397;
          }

          if (*(v152 + 13) == -1)
          {
            goto LABEL_210;
          }
        }

        v155 = *(v152 + 5);
        v156 = *(v152 + 6);
        if (v155 == v156)
        {
LABEL_209:
          *(a3 + 952) = *(a3 + 952) + 1.0;
        }

        else
        {
          while (*(v155 + 12) == 1)
          {
            v155 += 16;
            if (v155 == v156)
            {
              goto LABEL_209;
            }
          }
        }
      }
    }
  }

LABEL_210:
  sub_4C35D4(a2, &v247);
  v157 = *(&v247 + 1);
  v158 = v247;
  if (v247 != *(&v247 + 1))
  {
    v159 = (a3 + 944);
    do
    {
      v161 = sub_73F54(v158);
      if (*v161 != 0x7FFFFFFF && v161[9] != 0x7FFFFFFF)
      {
        v163 = v161;
        if (sub_4566B4(v161 + 2))
        {
          v164 = v163[28];
          if (v164)
          {
            if (v164 == 2)
            {
              v165 = *(v163 + 13);
              if (v165 <= 0xFFFFFFFEFFFFFFFFLL && v165)
              {
                goto LABEL_227;
              }
            }

            else
            {
              if (v164 != 1)
              {
                goto LABEL_397;
              }

              v165 = *(v163 + 13);
              if (v165 != -1)
              {
LABEL_227:
                sub_2AB9C8(*(v244 + 3248), v165, *(v163 + 14), &__p);
                v166 = v261;
                v167 = *(v163 + 5);
                v168 = *(v163 + 6);
                if (v167 == v168)
                {
LABEL_230:
                  if (*(v244 + 8912) != 1 || sub_445A90(&v7[10]))
                  {
                    v169 = 1;
                    goto LABEL_234;
                  }

                  *v159 = *v159 + 1.0;
                }

                else
                {
                  while (*(v167 + 12) == 1)
                  {
                    v167 += 16;
                    if (v167 == v168)
                    {
                      goto LABEL_230;
                    }
                  }

                  v169 = 0;
LABEL_234:
                  if (sub_445AB0(v7[10].n128_u64, v166))
                  {
                    if (!v169)
                    {
                      goto LABEL_241;
                    }
                  }

                  else
                  {
                    *v159 = *v159 + 1.0;
                    if ((v169 & 1) == 0)
                    {
                      goto LABEL_241;
                    }
                  }
                }

                *(a3 + 952) = *(a3 + 952) + 1.0;
LABEL_241:
                v170 = v258;
                if (v258)
                {
                  v171 = v259;
                  v172 = v258;
                  if (v259 != v258)
                  {
                    do
                    {
                      if (*(v171 - 1) < 0)
                      {
                        operator delete(*(v171 - 3));
                      }

                      v171 -= 6;
                    }

                    while (v171 != v170);
                    v172 = v258;
                  }

                  v259 = v170;
                  operator delete(v172);
                }

                v173 = __p.n128_u64[0];
                if (__p.n128_u64[0])
                {
                  v174 = __p.n128_i64[1];
                  v160 = __p.n128_u64[0];
                  if (__p.n128_u64[1] != __p.n128_u64[0])
                  {
                    do
                    {
                      v175 = *(v174 - 24);
                      if (v175)
                      {
                        *(v174 - 16) = v175;
                        operator delete(v175);
                      }

                      v174 -= 48;
                    }

                    while (v174 != v173);
                    v160 = __p.n128_u64[0];
                  }

                  __p.n128_u64[1] = v173;
                  operator delete(v160);
                }
              }
            }
          }
        }
      }

      v158 += 1096;
    }

    while (v158 != v157);
  }

  v176 = sub_5FC64(a2) + 1096;
  v177 = sub_445EF4(a2);
  if (v176 != v177)
  {
    v182 = v177;
    do
    {
      v184 = sub_4D2130(v176);
      if (*v184 != 0x7FFFFFFF && v184[9] != 0x7FFFFFFF)
      {
        v186 = v184;
        if (sub_4566B4(v184 + 2))
        {
          v187 = v186[28];
          if (v187)
          {
            if (v187 == 2)
            {
              v188 = *(v186 + 13);
              if (v188 <= 0xFFFFFFFEFFFFFFFFLL && v188)
              {
                goto LABEL_275;
              }
            }

            else
            {
              if (v187 != 1)
              {
                goto LABEL_397;
              }

              if (*(v186 + 13) != -1)
              {
LABEL_275:
                v189 = *(v244 + 3248);
                v190 = sub_4D2130(v176);
                sub_2AB9C8(v189, *(v190 + 104), *(v190 + 112), &__p);
                v191 = v258;
                v192 = v259;
                v193 = v258;
                if (v258 != v259)
                {
                  v194 = v258 + 48;
                  v193 = v258;
                  if (v258 + 48 != v259)
                  {
                    v195 = *(v244 + 8920);
                    v196 = *v258;
                    v193 = v258;
                    do
                    {
                      v197 = v193[1];
                      v198 = *(v194 + 1);
                      if (((v195 >> v196) & 1) == 0)
                      {
                        v197 = 0;
                      }

                      if (((v195 >> *v194) & 1) == 0)
                      {
                        v198 = 0;
                      }

                      if (v197 < v198)
                      {
                        v196 = *v194;
                        v193 = v194;
                      }

                      v194 += 48;
                    }

                    while (v194 != v259);
                  }
                }

                v199 = v193[1] / 1000.0;
                if (v199 >= *(a3 + 960))
                {
                  v199 = *(a3 + 960);
                }

                *(a3 + 960) = v199;
                if (v191)
                {
                  v200 = v191;
                  if (v191 != v192)
                  {
                    do
                    {
                      if (*(v192 - 1) < 0)
                      {
                        operator delete(*(v192 - 3));
                      }

                      v192 -= 6;
                    }

                    while (v192 != v191);
                    v200 = v258;
                  }

                  v259 = v191;
                  operator delete(v200);
                }

                v201 = __p.n128_u64[0];
                if (__p.n128_u64[0])
                {
                  v202 = __p.n128_i64[1];
                  v183 = __p.n128_u64[0];
                  if (__p.n128_u64[1] != __p.n128_u64[0])
                  {
                    do
                    {
                      v203 = *(v202 - 24);
                      if (v203)
                      {
                        *(v202 - 16) = v203;
                        operator delete(v203);
                      }

                      v202 -= 48;
                    }

                    while (v202 != v201);
                    v183 = __p.n128_u64[0];
                  }

                  __p.n128_u64[1] = v201;
                  operator delete(v183);
                }
              }
            }
          }
        }
      }

      v176 += 1096;
    }

    while (v176 != v182);
  }

  v178 = sub_5FC64(a2) + 1096;
  v179 = sub_445EF4(a2);
  if (v178 != v179)
  {
    v180 = v179;
    v181 = v178 + 1096;
    if (v178 + 1096 != v179)
    {
      while (1)
      {
        v205 = sub_4D2130(v178);
        v206 = 0.0;
        v207 = *v205 == 0x7FFFFFFF || v205[9] == 0x7FFFFFFF;
        v208 = 0.0;
        if (v207)
        {
          goto LABEL_337;
        }

        v209 = v205;
        if (!sub_4566B4(v205 + 2))
        {
          goto LABEL_337;
        }

        v210 = v209[28];
        if (!v210)
        {
          goto LABEL_337;
        }

        if (v210 == 2)
        {
          break;
        }

        if (v210 != 1)
        {
          goto LABEL_397;
        }

        v211 = *(v209 + 13);
        if (v211 != -1)
        {
          goto LABEL_318;
        }

LABEL_337:
        v219 = sub_4D2130(v181);
        if (*v219 != 0x7FFFFFFF && v219[9] != 0x7FFFFFFF)
        {
          v221 = v219;
          if (sub_4566B4(v219 + 2))
          {
            v222 = v221[28];
            if (v222)
            {
              if (v222 != 2)
              {
                if (v222 != 1)
                {
                  goto LABEL_397;
                }

                v223 = *(v221 + 13);
                if (v223 == -1)
                {
                  goto LABEL_303;
                }

LABEL_349:
                sub_2AB9C8(*(v244 + 3248), v223, *(v221 + 14), &__p);
                if (v260)
                {
                  v206 = v260;
                }

                else
                {
                  v206 = 4.0;
                }

                v224 = v258;
                if (v258)
                {
                  v225 = v259;
                  v226 = v258;
                  if (v259 != v258)
                  {
                    do
                    {
                      if (*(v225 - 1) < 0)
                      {
                        operator delete(*(v225 - 3));
                      }

                      v225 -= 6;
                    }

                    while (v225 != v224);
                    v226 = v258;
                  }

                  v259 = v224;
                  operator delete(v226);
                }

                v227 = __p.n128_u64[0];
                if (__p.n128_u64[0])
                {
                  v228 = __p.n128_i64[1];
                  v204 = __p.n128_u64[0];
                  if (__p.n128_u64[1] != __p.n128_u64[0])
                  {
                    do
                    {
                      v229 = *(v228 - 24);
                      if (v229)
                      {
                        *(v228 - 16) = v229;
                        operator delete(v229);
                      }

                      v228 -= 48;
                    }

                    while (v228 != v227);
                    v204 = __p.n128_u64[0];
                  }

                  __p.n128_u64[1] = v227;
                  operator delete(v204);
                }

                goto LABEL_303;
              }

              v223 = *(v221 + 13);
              if (v223 <= 0xFFFFFFFEFFFFFFFFLL && v223)
              {
                goto LABEL_349;
              }
            }
          }
        }

LABEL_303:
        if (v208 < v206)
        {
          v178 = v181;
        }

        v181 += 1096;
        if (v181 == v180)
        {
          goto LABEL_366;
        }
      }

      v211 = *(v209 + 13);
      if (v211 > 0xFFFFFFFEFFFFFFFFLL || !v211)
      {
        goto LABEL_337;
      }

LABEL_318:
      sub_2AB9C8(*(v244 + 3248), v211, *(v209 + 14), &__p);
      if (v260)
      {
        v208 = v260;
      }

      else
      {
        v208 = 4.0;
      }

      v212 = v258;
      if (v258)
      {
        v213 = v259;
        v214 = v258;
        if (v259 != v258)
        {
          do
          {
            if (*(v213 - 1) < 0)
            {
              operator delete(*(v213 - 3));
            }

            v213 -= 6;
          }

          while (v213 != v212);
          v214 = v258;
        }

        v259 = v212;
        operator delete(v214);
      }

      v215 = __p.n128_u64[0];
      if (__p.n128_u64[0])
      {
        v216 = __p.n128_i64[1];
        v217 = __p.n128_u64[0];
        if (__p.n128_u64[1] != __p.n128_u64[0])
        {
          do
          {
            v218 = *(v216 - 24);
            if (v218)
            {
              *(v216 - 16) = v218;
              operator delete(v218);
            }

            v216 -= 48;
          }

          while (v216 != v215);
          v217 = __p.n128_u64[0];
        }

        __p.n128_u64[1] = v215;
        operator delete(v217);
      }

      goto LABEL_337;
    }
  }

LABEL_366:
  v230 = 0.0;
  if (v178 != sub_445EF4(a2))
  {
    v231 = sub_4D2130(v178);
    if (*v231 != 0x7FFFFFFF && v231[9] != 0x7FFFFFFF)
    {
      v232 = v231;
      if (sub_4566B4(v231 + 2))
      {
        v233 = v232[28];
        if (v233)
        {
          if (v233 == 2)
          {
            v234 = *(v232 + 13);
            if (v234 > 0xFFFFFFFEFFFFFFFFLL || !v234)
            {
              goto LABEL_367;
            }
          }

          else
          {
            if (v233 != 1)
            {
              goto LABEL_397;
            }

            v234 = *(v232 + 13);
            if (v234 == -1)
            {
              goto LABEL_367;
            }
          }

          sub_2AB9C8(*(v244 + 3248), v234, *(v232 + 14), &__p);
          if (v260)
          {
            v230 = v260;
          }

          else
          {
            v230 = 4.0;
          }

          v235 = v258;
          if (v258)
          {
            v236 = v259;
            v237 = v258;
            if (v259 != v258)
            {
              do
              {
                if (*(v236 - 1) < 0)
                {
                  operator delete(*(v236 - 3));
                }

                v236 -= 6;
              }

              while (v236 != v235);
              v237 = v258;
            }

            v259 = v235;
            operator delete(v237);
          }

          v238 = __p.n128_u64[0];
          if (__p.n128_u64[0])
          {
            v239 = __p.n128_i64[1];
            v240 = __p.n128_u64[0];
            if (__p.n128_u64[1] != __p.n128_u64[0])
            {
              do
              {
                v241 = *(v239 - 24);
                if (v241)
                {
                  *(v239 - 16) = v241;
                  operator delete(v241);
                }

                v239 -= 48;
              }

              while (v239 != v238);
              v240 = __p.n128_u64[0];
            }

            __p.n128_u64[1] = v238;
            operator delete(v240);
          }
        }
      }
    }
  }

LABEL_367:
  *(a3 + 968) = v230;
}

void sub_1144C18(uint64_t a1, unsigned int *a2, unint64_t a3, int a4)
{
  v6 = sub_2AB71C(*(a1 + 3248), a3, a4);
  v7 = sub_2ACC94(*(a1 + 3248), v6);
  v9 = *a2;
  v8 = a2[1];
  if ((*a2 != -1 || v8 != -1) && (v7 != -1 || HIDWORD(v7) != 0xFFFFFFFF))
  {
    v12 = HIDWORD(v7);
    v13 = v7;
    v14 = exp(3.14159265 - v8 * 6.28318531 / 4294967300.0);
    v15 = atan((v14 - 1.0 / v14) * 0.5) * 57.2957795 * 0.0174532925;
    v16.i64[0] = v9;
    v16.i64[1] = v13;
    v17 = exp(3.14159265 - v12 * 6.28318531 / 4294967300.0);
    v18 = atan((v17 - 1.0 / v17) * 0.5) * 57.2957795 * 0.0174532925;
    v19 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v16), vdupq_n_s64(0x4076800000000000uLL)), vdupq_n_s64(0x41EFFFFFFFE00000uLL)), vdupq_n_s64(0xC066800000000000)), vdupq_n_s64(0x3F91DF46A2529D39uLL));
    v25 = vsubq_f64(v19, vdupq_laneq_s64(v19, 1)).f64[0];
    v20 = sin((v15 - v18) * 0.5);
    v21 = v20 * v20;
    v22 = cos(v15);
    v23 = v22 * cos(v18);
    v24 = sin(0.5 * v25);
    atan2(sqrt(v24 * v24 * v23 + v21), sqrt(1.0 - (v24 * v24 * v23 + v21)));
  }
}

void sub_1145B30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_6BB60(va);
  _Unwind_Resume(a1);
}

void sub_1145B44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1145BF0(void *a1, void *a2)
{
  v8 = 17;
  strcpy(__p, "max_prefix_length");
  v3 = sub_63D34(a2, __p) * 100.0;
  if (v3 >= 0.0)
  {
    v4 = v3;
    if (v3 >= 4.50359963e15)
    {
      goto LABEL_7;
    }

    v5 = (v3 + v3) + 1;
  }

  else
  {
    v4 = v3;
    if (v3 <= -4.50359963e15)
    {
      goto LABEL_7;
    }

    v5 = (v3 + v3) - 1 + (((v3 + v3) - 1) >> 63);
  }

  v4 = (v5 >> 1);
LABEL_7:
  if (v4 >= 9.22337204e18)
  {
    *a1 = 0x7FFFFFFFFFFFFFFELL;
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_17:
    operator delete(*__p);
LABEL_18:
    operator new();
  }

  if (v3 >= 0.0)
  {
    if (v3 >= 4.50359963e15)
    {
      goto LABEL_16;
    }

    v6 = (v3 + v3) + 1;
  }

  else
  {
    if (v3 <= -4.50359963e15)
    {
      goto LABEL_16;
    }

    v6 = (v3 + v3) - 1 + (((v3 + v3) - 1) >> 63);
  }

  v3 = (v6 >> 1);
LABEL_16:
  *a1 = v3;
  if ((v8 & 0x80000000) == 0)
  {
    goto LABEL_18;
  }

  goto LABEL_17;
}

void sub_1146178(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_11461B4(_DWORD *a1, void *a2, void *a3, uint64_t a4)
{
  v5 = 21;
  strcpy(__p, "max_low_soc_penalty_s");
  *a1 = sub_64F20();
  if (v5 < 0)
  {
    operator delete(*__p);
  }

  operator new();
}

void sub_114647C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_11464AC(void *a1)
{
  v2 = 110;
  do
  {
    v3 = &a1[v2];
    v2 -= 6;
    v4 = *(v3 - 3);
    if (v4)
    {
      v5 = 0;
      v6 = 0;
      v7 = v3 - 5;
      do
      {
        if ((*(a1[v2] + v6) & 0x80000000) == 0)
        {
          v8 = *v7 + v5;
          v9 = *(v8 + 16);
          if (v9)
          {
            *(v8 + 24) = v9;
            operator delete(v9);
            v4 = *(v3 - 3);
          }
        }

        ++v6;
        v5 += 40;
      }

      while (v6 != v4);
      operator delete(a1[v2]);
      a1[v2] = &unk_2290750;
      *(v3 - 1) = 0;
      *(v3 - 4) = 0;
      *(v3 - 3) = 0;
      *v7 = 0;
    }
  }

  while (v2 != 14);
  v10 = a1[11];
  if (v10)
  {
    a1[12] = v10;
    operator delete(v10);
  }

  v11 = a1[8];
  if (v11)
  {
    a1[9] = v11;
    operator delete(v11);
  }

  v12 = a1[5];
  if (v12)
  {
    a1[6] = v12;
    operator delete(v12);
  }

  return a1;
}

void sub_11465A4(uint64_t a1, int *a2, _DWORD *a3, int a4, int a5, uint64_t **a6)
{
  if (a2)
  {
    v9 = sub_3EC480(a1, a2, a5, a6);
    if (v9)
    {
      v13 = v9;
      v21 = (*a3 - a4) % 6048000 + ((*a3 - a4) % 6048000 < 0 ? 0x5C4900 : 0);
      v16 = sub_114677C(a1, v9, &v21, v10, v11, v12);
      if ((*&v16 > -1 && ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&v16 - 1) < 0xFFFFFFFFFFFFFLL || (*&v16 & 0x7FFFFFFFFFFFFFFFLL) == 0) && v16 > 0.0)
      {
        v20 = (*a3 + a4) % 6048000 + ((*a3 + a4) % 6048000 < 0 ? 0x5C4900 : 0);
        sub_114677C(a1, v13, &v20, -9.22337204e18, v14, v15);
      }
    }
  }
}

double sub_114677C(uint64_t a1, unsigned int *a2, _DWORD *a3, double a4, double a5, double a6)
{
  result = -1.0;
  if (!a2)
  {
    return result;
  }

  v7 = *a2;
  if (!v7)
  {
    return result;
  }

  if (v7 == 1)
  {
    if ((*(a1 + 3874) & 1) == 0)
    {
      LOWORD(result) = *(a2 + 3);
      return *&result / 100.0;
    }

    return result;
  }

  v8 = (*a3 / 864000) + 6;
  v9 = *a3 % 864000 / 600 + (1440 * (v8 - 7 * ((9363 * v8) >> 16)));
  v10 = a2 + 1;
  v11 = a2 + 1;
  v12 = *a2;
  do
  {
    v13 = (v11 + ((2 * v12) & 0x3FFFFFFFCLL));
    v15 = *v13;
    v14 = (v13 + 2);
    v16 = v12 >> 1;
    v12 += ~(v12 >> 1);
    if (v9 < v15)
    {
      v12 = v16;
    }

    else
    {
      v11 = v14;
    }
  }

  while (v12);
  v17 = &v10[v7];
  if (v11 == v17)
  {
    v18 = v11 - 1;
  }

  else
  {
    if (v11 != v10)
    {
      v17 = v11;
    }

    v18 = v17 - 1;
    if (v11 != v10)
    {
      goto LABEL_18;
    }
  }

  v11 = a2 + 1;
LABEL_18:
  v19 = *v18;
  if (v9 < v19)
  {
    v19 -= 10080;
  }

  v20 = *v11;
  if (v9 > v20)
  {
    v20 += 10080;
  }

  LOWORD(result) = *(v18 + 1);
  LOWORD(a6) = *(v11 + 1);
  return *&result / 100.0 + (*&a6 / 100.0 - *&result / 100.0) * (v9 - v19) / (v20 - v19);
}

double sub_11468F4(double *a1, double *a2)
{
  result = *a2;
  *a1 = *a2;
  a1[1] = result;
  a1[2] = result;
  a1[3] = result;
  a1[4] = result;
  a1[5] = result;
  a1[6] = result;
  a1[7] = result;
  a1[8] = result;
  a1[9] = result;
  a1[10] = result;
  a1[11] = result;
  a1[12] = result;
  a1[13] = result;
  a1[14] = result;
  a1[15] = result;
  a1[16] = result;
  a1[17] = result;
  a1[18] = result;
  a1[19] = result;
  a1[20] = result;
  a1[21] = result;
  a1[22] = result;
  a1[23] = result;
  a1[24] = result;
  a1[25] = result;
  a1[26] = result;
  a1[27] = result;
  a1[28] = result;
  a1[29] = result;
  a1[30] = result;
  a1[31] = result;
  a1[32] = result;
  a1[33] = result;
  a1[34] = result;
  a1[35] = result;
  a1[36] = result;
  a1[37] = result;
  a1[38] = result;
  a1[39] = result;
  a1[40] = result;
  a1[41] = result;
  a1[42] = result;
  a1[43] = result;
  a1[44] = result;
  a1[45] = result;
  a1[46] = result;
  a1[47] = result;
  a1[48] = result;
  a1[49] = result;
  a1[50] = result;
  a1[51] = result;
  a1[52] = result;
  a1[53] = result;
  a1[54] = result;
  a1[55] = result;
  a1[56] = result;
  a1[57] = result;
  a1[58] = result;
  a1[59] = result;
  a1[60] = result;
  a1[61] = result;
  a1[62] = result;
  a1[63] = result;
  a1[64] = result;
  a1[65] = result;
  a1[66] = result;
  a1[67] = result;
  a1[68] = result;
  a1[69] = result;
  a1[70] = result;
  a1[71] = result;
  a1[72] = result;
  a1[73] = result;
  a1[74] = result;
  a1[75] = result;
  a1[76] = result;
  a1[77] = result;
  a1[78] = result;
  a1[79] = result;
  a1[80] = result;
  a1[81] = result;
  a1[82] = result;
  a1[83] = result;
  a1[84] = result;
  a1[85] = result;
  a1[86] = result;
  a1[87] = result;
  a1[88] = result;
  a1[89] = result;
  a1[90] = result;
  a1[91] = result;
  a1[92] = result;
  a1[93] = result;
  a1[94] = result;
  a1[95] = result;
  a1[96] = result;
  a1[97] = result;
  a1[98] = result;
  a1[99] = result;
  a1[100] = result;
  a1[101] = result;
  a1[102] = result;
  a1[103] = result;
  a1[104] = result;
  a1[105] = result;
  a1[106] = result;
  a1[107] = result;
  a1[108] = result;
  a1[109] = result;
  a1[110] = result;
  a1[111] = result;
  a1[112] = result;
  a1[113] = result;
  a1[114] = result;
  a1[115] = result;
  a1[116] = result;
  a1[117] = result;
  a1[118] = result;
  a1[119] = result;
  a1[120] = result;
  a1[121] = result;
  return result;
}

uint64_t sub_1146A64(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    v6 = *a3;
    do
    {
      sub_4BF634(v6, v4, __p);
      v7 = *(a2 + 8);
      if (v7 < *(a2 + 16))
      {
        *v7 = 0;
        v7[1] = 0;
        v7[2] = 0;
        *v7 = *__p;
        v7[2] = v12;
        *(a2 + 8) = v7 + 3;
      }

      else
      {
        v8 = sub_52C28(a2, __p);
        v9 = __p[0];
        *(a2 + 8) = v8;
        if (v9)
        {
          __p[1] = v9;
          operator delete(v9);
        }
      }

      v4 += 137;
    }

    while (v4 != v5);
  }

  return a2;
}

void sub_1146B1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1146B38()
{
  byte_27C31C7 = 3;
  LODWORD(qword_27C31B0) = 5136193;
  byte_27C31DF = 3;
  LODWORD(qword_27C31C8) = 5136194;
  byte_27C31F7 = 3;
  LODWORD(qword_27C31E0) = 5136195;
  byte_27C320F = 15;
  strcpy(&qword_27C31F8, "vehicle_mass_kg");
  byte_27C3227 = 21;
  strcpy(&xmmword_27C3210, "vehicle_cargo_mass_kg");
  byte_27C323F = 19;
  strcpy(&qword_27C3228, "vehicle_aux_power_w");
  byte_27C3257 = 15;
  strcpy(&qword_27C3240, "dcdc_efficiency");
  strcpy(&qword_27C3258, "drive_train_efficiency");
  HIBYTE(word_27C326E) = 22;
  operator new();
}

void sub_1146D14(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C326E) < 0)
  {
    sub_21E87E0();
  }

  sub_21E87EC();
  _Unwind_Resume(a1);
}

void sub_1146D34(BOOL *a1, void *a2)
{
  v6 = 21;
  strcpy(__p, "filter_for_toll_roads");
  v3 = sub_5F9D0(a2, __p);
  if (v6 < 0)
  {
    v4 = v3;
    operator delete(*__p);
    v3 = v4;
  }

  *a1 = v3;
  operator new();
}

void sub_1147328(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1147380(_BYTE *a1, std::string::size_type **a2, uint64_t *a3, int a4)
{
  v4 = *a3;
  if (*a3 == a3[1])
  {
    return;
  }

  memcpy(v17, (v4 + 32), sizeof(v17));
  sub_1148AF0(&v18, (v4 + 1016));
  if (*a1 == 1 && v17[6] == 0.0 && v17[17] == 0.0 && (a1[16] != 1 || v17[18] == 0.0))
  {
    operator new();
  }

  if (a1[17] == 1)
  {
    operator new();
  }

  if (a1[20] == 1 && v17[21] == 0.0)
  {
    operator new();
  }

  if (a1[24] == 1 && v17[53] == 0.0)
  {
    operator new();
  }

  if (a1[21] == 1)
  {
    operator new();
  }

  if (a1[22] == 1)
  {
    operator new();
  }

  if (a1[18] == 1 && v17[16] == 0.0)
  {
    operator new();
  }

  if (a1[19] == 1 && v17[15] == 0.0)
  {
    operator new();
  }

  v8 = a1[23];
  if (v8 == 1 && v17[92] != 0.0)
  {
    operator new();
  }

  if ((v8 & 1) != 0 && v17[93] != 0.0)
  {
    operator new();
  }

  if (a1[25] == 1)
  {
    operator new();
  }

  if (a1[26] == 1 && v17[94] == 0.0)
  {
    operator new();
  }

  if (a4)
  {
    sub_1148938(a2, a2[1], a2[1]);
  }

  if (v25 < 0)
  {
    operator delete(__p);
    if ((v23 & 0x80000000) == 0)
    {
LABEL_41:
      if ((v21 & 0x80000000) == 0)
      {
        goto LABEL_42;
      }

LABEL_46:
      operator delete(v20);
      v9 = v18;
      if (!v18)
      {
        return;
      }

      goto LABEL_47;
    }
  }

  else if ((v23 & 0x80000000) == 0)
  {
    goto LABEL_41;
  }

  operator delete(v22);
  if (v21 < 0)
  {
    goto LABEL_46;
  }

LABEL_42:
  v9 = v18;
  if (!v18)
  {
    return;
  }

LABEL_47:
  v10 = v19;
  v11 = v9;
  if (v19 != v9)
  {
    do
    {
      v12 = *(v10 - 3);
      if (v12)
      {
        v13 = *(v10 - 2);
        v14 = *(v10 - 3);
        if (v13 != v12)
        {
          do
          {
            v15 = *(v13 - 9);
            v13 -= 4;
            if (v15 < 0)
            {
              operator delete(*v13);
            }
          }

          while (v13 != v12);
          v14 = *(v10 - 3);
        }

        *(v10 - 2) = v12;
        operator delete(v14);
      }

      v16 = v10 - 7;
      if (*(v10 - 33) < 0)
      {
        operator delete(*v16);
      }

      v10 -= 7;
    }

    while (v16 != v9);
    v11 = v18;
  }

  v19 = v9;
  operator delete(v11);
}

void sub_1148874(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_11492C8(&a16);
    _Unwind_Resume(a1);
  }

  sub_11492C8(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_1148938(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    v5 = a1[1];
    if (a3 == v5)
    {
      v12 = a2;
    }

    else
    {
      v6 = *a1;
      v7 = *a1 + a2;
      v8 = -*a1;
      v9 = *a1 + a3;
      do
      {
        v10 = (v7 + v8);
        v11 = *(v9 + v8);
        *(v10 + 11) = *(v9 + v8 + 11);
        *v10 = v11;
        memcpy((v7 + v8 + 32), (v9 + v8 + 32), 0x3D8uLL);
        sub_1149164(v7 + v8 + 1016, v9 + v8 + 1016);
        v7 += 1112;
        v9 += 1112;
      }

      while (v9 + v8 != v5);
      v5 = a1[1];
      v12 = v7 - v6;
    }

    while (1)
    {
      if (v5 == v12)
      {
        a1[1] = v12;
        return a2;
      }

      if (*(v5 - 1) < 0)
      {
        operator delete(*(v5 - 24));
        if ((*(v5 - 25) & 0x80000000) == 0)
        {
LABEL_13:
          if ((*(v5 - 49) & 0x80000000) == 0)
          {
            goto LABEL_14;
          }

          goto LABEL_18;
        }
      }

      else if ((*(v5 - 25) & 0x80000000) == 0)
      {
        goto LABEL_13;
      }

      operator delete(*(v5 - 48));
      if ((*(v5 - 49) & 0x80000000) == 0)
      {
LABEL_14:
        v14 = *(v5 - 96);
        if (!v14)
        {
          goto LABEL_9;
        }

        goto LABEL_19;
      }

LABEL_18:
      operator delete(*(v5 - 72));
      v14 = *(v5 - 96);
      if (!v14)
      {
        goto LABEL_9;
      }

LABEL_19:
      v15 = *(v5 - 88);
      v13 = v14;
      if (v15 != v14)
      {
        do
        {
          v16 = *(v15 - 3);
          if (v16)
          {
            v17 = *(v15 - 2);
            v18 = *(v15 - 3);
            if (v17 != v16)
            {
              do
              {
                v19 = *(v17 - 9);
                v17 -= 4;
                if (v19 < 0)
                {
                  operator delete(*v17);
                }
              }

              while (v17 != v16);
              v18 = *(v15 - 3);
            }

            *(v15 - 2) = v16;
            operator delete(v18);
          }

          v20 = v15 - 7;
          if (*(v15 - 33) < 0)
          {
            operator delete(*v20);
          }

          v15 -= 7;
        }

        while (v20 != v14);
        v13 = *(v5 - 96);
      }

      *(v5 - 88) = v14;
      operator delete(v13);
LABEL_9:
      v5 -= 1112;
    }
  }

  return a2;
}

uint64_t sub_1148AF0(uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = a2[1];
  if (v4 != *a2)
  {
    if ((0x6DB6DB6DB6DB6DB7 * ((v4 - *a2) >> 3)) < 0x492492492492493)
    {
      operator new();
    }

    sub_1794();
  }

  if (*(a2 + 47) < 0)
  {
    sub_325C((a1 + 24), a2[3], a2[4]);
  }

  else
  {
    v5 = *(a2 + 3);
    *(a1 + 40) = a2[5];
    *(a1 + 24) = v5;
  }

  if (*(a2 + 71) < 0)
  {
    sub_325C((a1 + 48), a2[6], a2[7]);
  }

  else
  {
    v6 = *(a2 + 3);
    *(a1 + 64) = a2[8];
    *(a1 + 48) = v6;
  }

  if (*(a2 + 95) < 0)
  {
    sub_325C((a1 + 72), a2[9], a2[10]);
  }

  else
  {
    v7 = *(a2 + 9);
    *(a1 + 88) = a2[11];
    *(a1 + 72) = v7;
  }

  return a1;
}

void sub_1148C3C(_Unwind_Exception *a1)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
    if ((*(v1 + 47) & 0x80000000) == 0)
    {
LABEL_3:
      sub_114909C(v1);
      _Unwind_Resume(a1);
    }
  }

  else if ((*(v1 + 47) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v1 + 24));
  sub_114909C(v1);
  _Unwind_Resume(a1);
}

void sub_1148CAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 8) = v10;
  sub_1148FB0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1148CD8(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = a4;
  v9 = a4;
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
        v7 = *v6;
        *(v4 + 16) = *(v6 + 2);
        *v4 = v7;
      }

      *(v4 + 24) = *(v6 + 3);
      sub_1148DC4((v4 + 32), v6 + 4);
      v6 = (v6 + 56);
      v4 = v9 + 56;
      v9 += 56;
    }

    while (v6 != a3);
  }

  return v4;
}

void sub_1148D8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1148EF4(va);
  _Unwind_Resume(a1);
}

void sub_1148DA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
  }

  sub_1148EF4(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1148DC4(uint64_t *a1, __int128 **a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_1148ED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_49A814(va);
  *(v10 + 8) = v11;
  sub_49A874(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1148EF4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      do
      {
        v7 = *(v4 - 3);
        if (v7)
        {
          v8 = *(v4 - 2);
          v9 = *(v4 - 3);
          if (v8 != v7)
          {
            do
            {
              v10 = *(v8 - 9);
              v8 -= 4;
              if (v10 < 0)
              {
                operator delete(*v8);
              }
            }

            while (v8 != v7);
            v9 = *(v4 - 3);
          }

          *(v4 - 2) = v7;
          operator delete(v9);
        }

        v11 = v4 - 7;
        if (*(v4 - 33) < 0)
        {
          operator delete(*v11);
        }

        v4 -= 7;
      }

      while (v11 != v5);
    }
  }

  return a1;
}

void sub_1148FB0(void ****a1)
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
        v6 = *(v4 - 3);
        if (v6)
        {
          v7 = *(v4 - 2);
          v8 = *(v4 - 3);
          if (v7 != v6)
          {
            do
            {
              v9 = *(v7 - 9);
              v7 -= 4;
              if (v9 < 0)
              {
                operator delete(*v7);
              }
            }

            while (v7 != v6);
            v8 = *(v4 - 3);
          }

          *(v4 - 2) = v6;
          operator delete(v8);
        }

        v10 = v4 - 7;
        if (*(v4 - 33) < 0)
        {
          operator delete(*v10);
        }

        v4 -= 7;
      }

      while (v10 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void ***sub_114909C(void ***a1)
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
        v5 = *(v3 - 3);
        if (v5)
        {
          v6 = *(v3 - 2);
          v7 = *(v3 - 3);
          if (v6 != v5)
          {
            do
            {
              v8 = *(v6 - 9);
              v6 -= 4;
              if (v8 < 0)
              {
                operator delete(*v6);
              }
            }

            while (v6 != v5);
            v7 = *(v3 - 3);
          }

          *(v3 - 2) = v5;
          operator delete(v7);
        }

        v9 = v3 - 7;
        if (*(v3 - 33) < 0)
        {
          operator delete(*v9);
        }

        v3 -= 7;
      }

      while (v9 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_1149164(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *(a1 + 8);
    v6 = *a1;
    if (v5 != v4)
    {
      do
      {
        v7 = *(v5 - 3);
        if (v7)
        {
          v8 = *(v5 - 2);
          v9 = *(v5 - 3);
          if (v8 != v7)
          {
            do
            {
              v10 = *(v8 - 9);
              v8 -= 4;
              if (v10 < 0)
              {
                operator delete(*v8);
              }
            }

            while (v8 != v7);
            v9 = *(v5 - 3);
          }

          *(v5 - 2) = v7;
          operator delete(v9);
        }

        v11 = v5 - 7;
        if (*(v5 - 33) < 0)
        {
          operator delete(*v11);
        }

        v5 -= 7;
      }

      while (v11 != v4);
      v6 = *a1;
    }

    *(a1 + 8) = v4;
    operator delete(v6);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v12 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v12;
  *(a2 + 47) = 0;
  *(a2 + 24) = 0;
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v13 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = v13;
  *(a2 + 71) = 0;
  *(a2 + 48) = 0;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v14 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 72) = v14;
  *(a2 + 95) = 0;
  *(a2 + 72) = 0;
  return a1;
}

uint64_t sub_11492C8(uint64_t a1)
{
  if ((*(a1 + 1111) & 0x80000000) == 0)
  {
    if ((*(a1 + 1087) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(*(a1 + 1064));
    if ((*(a1 + 1063) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  operator delete(*(a1 + 1088));
  if (*(a1 + 1087) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((*(a1 + 1063) & 0x80000000) == 0)
  {
LABEL_4:
    sub_114909C((a1 + 1016));
    return a1;
  }

LABEL_7:
  operator delete(*(a1 + 1040));
  sub_114909C((a1 + 1016));
  return a1;
}

void sub_114934C()
{
  byte_27C32CF = 3;
  LODWORD(qword_27C32B8) = 5136193;
  byte_27C32E7 = 3;
  LODWORD(qword_27C32D0) = 5136194;
  byte_27C32FF = 3;
  LODWORD(qword_27C32E8) = 5136195;
  byte_27C3317 = 15;
  strcpy(&qword_27C3300, "vehicle_mass_kg");
  byte_27C332F = 21;
  strcpy(&xmmword_27C3318, "vehicle_cargo_mass_kg");
  byte_27C3347 = 19;
  strcpy(&qword_27C3330, "vehicle_aux_power_w");
  byte_27C335F = 15;
  strcpy(&qword_27C3348, "dcdc_efficiency");
  strcpy(&qword_27C3360, "drive_train_efficiency");
  HIBYTE(word_27C3376) = 22;
  operator new();
}

void sub_1149528(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C3376) < 0)
  {
    sub_21E88BC();
  }

  sub_21E88C8();
  _Unwind_Resume(a1);
}

uint64_t sub_1149548(uint64_t result, uint64_t a2, char a3)
{
  *result = a2;
  *(result + 8) = a3;
  return result;
}

void sub_1149554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  v11 = v8;
  __str = v12;
  sub_114ACC8(v50, *v8, v12);
  v13 = *v10;
  v14 = v10[1];
  if (*v10 != v14)
  {
    v15 = (v13 + 32);
    do
    {
      if ((*(v13 + 26) & 1) == 0 && ((v16 = *(v13 + 1008), v17 = *&v51[6782] & ~v16, v18 = v52 & v16, !v17) ? (v19 = v18 == 0) : (v19 = 0), v19))
      {
        if (*(v11 + 8) == 1)
        {
          sub_21E8998(v13);
        }

        v20 = 0;
        *(v13 + 16) = 0;
        *(v13 + 25) = 1;
        v21 = 0.0;
        v22 = v15;
        v23 = v51;
        do
        {
          if (*(v23 - 2) != 1)
          {
            goto LABEL_22;
          }

          v25 = *v23;
          if (v25 >= 0x7A)
          {
            exception = __cxa_allocate_exception(0x40uLL);
            v43 = sub_2D390(exception, "Invalid key.", 0xCuLL);
          }

          v26 = *(v13 + 32 + 8 * v25);
          if (v26 == 0.0)
          {
            goto LABEL_22;
          }

          if (v26 <= 0.0)
          {
            v26 = -v26;
          }

          if (v26 >= 2.22044605e-16)
          {
            v24 = v21;
          }

          else
          {
LABEL_22:
            v27 = (v23 - 34);
            if (*(v23 - 1))
            {
              v28 = v22;
            }

            else
            {
              v28 = (v23 - 34);
            }

            if (!*(v23 - 1))
            {
              v27 = v22;
            }

            v29 = *v27 - *v28;
            v30 = fmax(v29, 0.0);
            v31 = *(v23 - 50);
            v24 = v21 + v31 * pow(v30, *(v23 - 42));
            *(v13 + 16) = v24;
            if (v30 != 0.0)
            {
              v32 = -v30;
              if (v29 > 0.0)
              {
                v32 = v29;
              }

              if (v32 >= 2.22044605e-16)
              {
                v24 = v24 + *(v23 - 26);
                *(v13 + 16) = v24;
              }
            }

            v33 = *(v23 - 18);
            if (v33 != 0.0)
            {
              v34 = -v33;
              if (v33 > 0.0)
              {
                v34 = *(v23 - 18);
              }

              if (v34 >= 2.22044605e-16)
              {
                v35 = v33 * *(v13 + 40);
                v24 = v24 + v35 * pow(v30, *(v23 - 10));
                *(v13 + 16) = v24;
              }
            }

            if (*(v11 + 8) == 1 && v21 != v24)
            {
              v36 = *(v13 + 1024);
              v37 = *(v36 - 16);
              if (v37 >= *(v36 - 8))
              {
                v45 = *(v13 + 1024);
                v38 = sub_1149C68((v36 - 24));
                v36 = v45;
              }

              else
              {
                *v37 = 0u;
                v37[1] = 0u;
                v38 = v37 + 2;
              }

              *(v36 - 16) = v38;
              v44 = v38 - 2;
              v46 = v38;
              sub_113C0E4(v20, &v48);
              v39 = v46;
              if (*(v46 - 9) < 0)
              {
                operator delete(*v44);
                v39 = v46;
              }

              v40 = v48;
              *(v44 + 2) = v49;
              *v44 = v40;
              v24 = *(v13 + 16);
              *(v39 - 1) = v24 - v21;
            }
          }

          ++v20;
          v23 += 56;
          ++v22;
          v21 = v24;
        }

        while (v20 != 122);
        if (v11[1])
        {
          v41 = *(v13 + 1024);
          *(v41 - 32) = *(v13 + 16);
          std::string::operator=((v41 - 56), __str);
        }
      }

      else
      {
        *(v13 + 25) = 0;
        *(v13 + 16) = 0x7FF0000000000000;
      }

      v13 += 1112;
      v15 += 139;
    }

    while (v13 != v14);
  }
}

uint64_t sub_1149880(uint64_t *a1)
{
  v1 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v2 = v1 + 1;
  if ((v1 + 1) > 0x492492492492492)
  {
    sub_1794();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v2)
  {
    v2 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v4 = 0x492492492492492;
  }

  else
  {
    v4 = v2;
  }

  v18 = a1;
  if (v4)
  {
    if (v4 <= 0x492492492492492)
    {
      operator new();
    }

    sub_1808();
  }

  v5 = 56 * v1;
  __p = 0;
  v15 = v5;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0;
  v16 = 56 * v1 + 56;
  v17 = 0;
  sub_1149A34(a1, &__p);
  v6 = a1[1];
  v7 = v15;
  while (1)
  {
    v8 = v16;
    if (v16 == v7)
    {
      break;
    }

    v16 -= 56;
    v9 = *(v8 - 24);
    if (v9)
    {
      v10 = *(v8 - 16);
      v11 = *(v8 - 24);
      if (v10 != v9)
      {
        do
        {
          v12 = *(v10 - 9);
          v10 -= 4;
          if (v12 < 0)
          {
            operator delete(*v10);
          }
        }

        while (v10 != v9);
        v11 = *(v8 - 24);
      }

      *(v8 - 16) = v9;
      operator delete(v11);
    }

    if (*(v8 - 33) < 0)
    {
      operator delete(*(v8 - 56));
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v6;
}

void sub_1149A20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1149B84(va);
  _Unwind_Resume(a1);
}

void sub_1149A34(uint64_t *a1, void *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v4;
    do
    {
      v9 = *v7;
      *(v8 + 16) = *(v7 + 16);
      *v8 = v9;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = 0;
      *(v8 + 24) = *(v7 + 24);
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 32) = 0;
      *(v8 + 32) = *(v7 + 32);
      *(v8 + 48) = *(v7 + 48);
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      v7 += 56;
      v8 += 56;
    }

    while (v7 != v4);
    do
    {
      v10 = *(v5 + 32);
      if (v10)
      {
        v11 = *(v5 + 40);
        v12 = *(v5 + 32);
        if (v11 != v10)
        {
          do
          {
            v13 = *(v11 - 9);
            v11 -= 4;
            if (v13 < 0)
            {
              operator delete(*v11);
            }
          }

          while (v11 != v10);
          v12 = *(v5 + 32);
        }

        *(v5 + 40) = v10;
        operator delete(v12);
      }

      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 += 56;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v14 = *a1;
  *a1 = v6;
  a1[1] = v14;
  a2[1] = v14;
  v15 = a1[1];
  a1[1] = a2[2];
  a2[2] = v15;
  v16 = a1[2];
  a1[2] = a2[3];
  a2[3] = v16;
  *a2 = a2[1];
}

void **sub_1149B84(void **a1)
{
  sub_1149BB8(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1149BB8(uint64_t a1)
{
  v1 = *(a1 + 8);
  for (i = *(a1 + 16); i != v1; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 56;
    v4 = *(i - 24);
    if (v4)
    {
      v5 = *(i - 16);
      v6 = *(i - 24);
      if (v5 != v4)
      {
        do
        {
          v7 = *(v5 - 9);
          v5 -= 4;
          if (v7 < 0)
          {
            operator delete(*v5);
          }
        }

        while (v5 != v4);
        v6 = *(i - 24);
      }

      *(i - 16) = v4;
      operator delete(v6);
    }

    if (*(i - 33) < 0)
    {
      operator delete(*(i - 56));
    }
  }
}

__int128 *sub_1149C68(__int128 **a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = (v2 - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_1794();
  }

  v6 = a1[2] - v1;
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

  v8 = (v2 - *a1) >> 5;
  v9 = (32 * v3);
  *v9 = 0u;
  v9[1] = 0u;
  v10 = (32 * v3 + 32);
  v11 = &v9[-2 * v8];
  if (v1 != v2)
  {
    v12 = v1;
    v13 = v11;
    do
    {
      v14 = *v12;
      *(v13 + 2) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      *(v13 + 3) = *(v12 + 3);
      v12 += 32;
      v13 += 2;
    }

    while (v12 != v2);
    do
    {
      if (v1[23] < 0)
      {
        operator delete(*v1);
      }

      v1 += 32;
    }

    while (v1 != v2);
    v1 = *a1;
  }

  *a1 = v11;
  a1[1] = v10;
  a1[2] = 0;
  if (v1)
  {
    operator delete(v1);
  }

  return v10;
}

void sub_1149DB0(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = -6832;
  do
  {
    v7 = a1 + v6;
    *(v7 + 6832) = xmmword_2266620;
    *(v7 + 6848) = 0uLL;
    *(v7 + 6864) = 0uLL;
    *(v7 + 6880) = 0;
    v6 += 56;
  }

  while (v6);
  v8 = -6832;
  do
  {
    v9 = (a1 + v8);
    v9[427] = xmmword_2266620;
    v9[428] = 0uLL;
    v9[429] = 0uLL;
    *(a1 + v8 + 6879) = 0;
    v8 += 56;
  }

  while (v8);
  *(a1 + 6832) = 0u;
  v17 = 8;
  strcpy(__p, "standard");
  v10 = sub_5F5AC(a2, __p);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  v11 = sub_588E0(v10);
  v12 = sub_5FC5C();
  if (v11 != v12)
  {
    v14 = v12;
    do
    {
      if (sub_113BD34((v11 + 16)))
      {
        v15 = sub_113BD60((v11 + 16));
        if (*(v11 + 48) != 5)
        {
          sub_5AF20();
        }

        sub_114A704(a1, v15, *(v11 + 40));
      }

      v11 = *v11;
    }

    while (v11 != v14);
  }

  v13 = *(a3 + 23);
  if (v13 < 0)
  {
    if (*(a3 + 8) == 8 && **a3 == 0x647261646E617473)
    {
LABEL_20:
      operator new();
    }
  }

  else if (v13 == 8 && *a3 == 0x647261646E617473)
  {
    goto LABEL_20;
  }

  sub_41D894(a2, a3);
}

void sub_114A5E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (*(v37 - 81) < 0)
  {
    operator delete(*(v37 - 104));
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_114A704(uint64_t a1, unsigned int a2, void *a3)
{
  if (a2 != 122)
  {
    if (a2 >= 0x7A)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v14 = sub_2D390(exception, "Invalid key.", 0xCuLL);
    }

    HIBYTE(v15[4]) = 6;
    strcpy(&v15[2], "factor");
    v6 = sub_62A70(a3, &v15[2]);
    v7 = (a1 + 56 * a2);
    if (v6)
    {
      v8 = *(v6 + 12);
      switch(v8)
      {
        case 4:
          *v7 = v6[5];
          if ((SHIBYTE(v15[4]) & 0x80000000) == 0)
          {
LABEL_13:
            HIBYTE(v15[4]) = 8;
            strcpy(&v15[2], "exponent");
            v9 = sub_62A70(a3, &v15[2]);
            if (v9)
            {
              v10 = *(v9 + 12);
              switch(v10)
              {
                case 4:
                  v7[1] = v9[5];
                  if ((SHIBYTE(v15[4]) & 0x80000000) == 0)
                  {
LABEL_25:
                    HIBYTE(v15[4]) = 9;
                    strcpy(&v15[2], "threshold");
                    v11 = sub_62A70(a3, &v15[2]);
                    if (v11)
                    {
                      v12 = *(v11 + 12);
                      switch(v12)
                      {
                        case 4:
                          v7[2] = v11[5];
                          if ((SHIBYTE(v15[4]) & 0x80000000) == 0)
                          {
LABEL_37:
                            operator new();
                          }

LABEL_36:
                          operator delete(v15[2]);
                          goto LABEL_37;
                        case 3:
                          v7[2] = v11[5];
                          if ((SHIBYTE(v15[4]) & 0x80000000) == 0)
                          {
                            goto LABEL_37;
                          }

                          goto LABEL_36;
                        case 2:
                          *(v7 + 2) = v11[5];
                          if ((SHIBYTE(v15[4]) & 0x80000000) == 0)
                          {
                            goto LABEL_37;
                          }

                          goto LABEL_36;
                      }
                    }

                    v7[2] = v7[2];
                    if ((SHIBYTE(v15[4]) & 0x80000000) == 0)
                    {
                      goto LABEL_37;
                    }

                    goto LABEL_36;
                  }

LABEL_24:
                  operator delete(v15[2]);
                  goto LABEL_25;
                case 3:
                  v7[1] = v9[5];
                  if ((SHIBYTE(v15[4]) & 0x80000000) == 0)
                  {
                    goto LABEL_25;
                  }

                  goto LABEL_24;
                case 2:
                  *(v7 + 1) = v9[5];
                  if ((SHIBYTE(v15[4]) & 0x80000000) == 0)
                  {
                    goto LABEL_25;
                  }

                  goto LABEL_24;
              }
            }

            v7[1] = v7[1];
            if ((SHIBYTE(v15[4]) & 0x80000000) == 0)
            {
              goto LABEL_25;
            }

            goto LABEL_24;
          }

LABEL_12:
          operator delete(v15[2]);
          goto LABEL_13;
        case 3:
          *v7 = v6[5];
          if ((SHIBYTE(v15[4]) & 0x80000000) == 0)
          {
            goto LABEL_13;
          }

          goto LABEL_12;
        case 2:
          *v7 = v6[5];
          if ((SHIBYTE(v15[4]) & 0x80000000) == 0)
          {
            goto LABEL_13;
          }

          goto LABEL_12;
      }
    }

    *v7 = *v7;
    if ((SHIBYTE(v15[4]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }
}

void sub_114AC8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_114ACCC(uint64_t a1, uint64_t a2)
{
  v25 = 0;
  sub_D7B0(v20);
  sub_4A5C(&v21, a1, a2);
  sub_111E0CC(v20, &v25);
  if ((*(&v23[0].__locale_ + *(v20[0] - 24)) & 5) != 0)
  {
    sub_D7B0(v17);
    v7 = sub_4A5C(&v18, "/Library/Caches/com.apple.xbs/Sources/MapsOfflineServices/submodules/routing/common/api/common/algorithms/StringAlgorithms.h", 124);
    sub_4A5C(v7, ":", 1);
    v8 = std::ostream::operator<<();
    v9 = sub_4A5C(v8, ":", 1);
    v10 = sub_4A5C(v9, "Failed parsing: ", 16);
    sub_4A5C(v10, a1, a2);
    exception = __cxa_allocate_exception(0x40uLL);
    sub_66B8(v19, v15);
    if ((v16 & 0x80u) == 0)
    {
      v12 = v15;
    }

    else
    {
      v12 = v15[0];
    }

    if ((v16 & 0x80u) == 0)
    {
      v13 = v16;
    }

    else
    {
      v13 = v15[1];
    }

    v14 = sub_2D390(exception, v12, v13);
  }

  v4 = v25;
  v21 = v5;
  if (v24 < 0)
  {
    operator delete(v23[7].__locale_);
  }

  std::locale::~locale(v23);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  return v4;
}

void sub_114AF58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_DBE4(&a15);
  sub_DBE4(&a50);
  _Unwind_Resume(a1);
}

void sub_114AF9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, ...)
{
  va_start(va, a46);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

void sub_114AFB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, ...)
{
  va_start(va, a46);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_114AFC4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *a1 = a2;
  *(a1 + 8) = a4;
  *(a1 + 9) = 0;
  *(a1 + 24) = 0;
  *(a1 + 28) = 0;
  *(a1 + 12) = 0;
  *(a1 + 20) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 80) = 0u;
  v5 = (a1 + 80);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 104) = a3;
  v29 = 21;
  strcpy(v23, "DrivingRouteSeleenable_xray");
  strcpy(__dst, "DrivingRouteSelection");
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v6 = sub_3AEC94(a2, __dst, &v25);
  v24 = 11;
  v7 = sub_5F9D0(v6, &v23[1]);
  if (v24 < 0)
  {
    operator delete(*&v23[1]);
  }

  v8 = v25;
  if (v25)
  {
    v9 = v26;
    v10 = v25;
    if (v26 != v25)
    {
      do
      {
        v11 = *(v9 - 1);
        v9 -= 3;
        if (v11 < 0)
        {
          operator delete(*v9);
        }
      }

      while (v9 != v8);
      v10 = v25;
    }

    v26 = v8;
    operator delete(v10);
  }

  if (v29 < 0)
  {
    operator delete(*__dst);
  }

  *(a1 + 112) = v7;
  v12 = *a1;
  v29 = 21;
  *__dst = v23[0];
  strcpy(&__dst[13], "election");
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v13 = sub_3AEC94(v12, __dst, &v25);
  v14 = v25;
  if (v25)
  {
    v15 = v26;
    v16 = v25;
    if (v26 != v25)
    {
      do
      {
        v17 = *(v15 - 1);
        v15 -= 3;
        if (v17 < 0)
        {
          operator delete(*v15);
        }
      }

      while (v15 != v14);
      v16 = v25;
    }

    v26 = v14;
    operator delete(v16);
  }

  if (v29 < 0)
  {
    operator delete(*__dst);
    v18 = *(a1 + 104);
    if (*(v18 + 28))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v18 = *(a1 + 104);
    if (*(v18 + 28))
    {
LABEL_23:
      v19 = "mpr_route_selection";
      goto LABEL_28;
    }
  }

  if (sub_44F320(*(v18 + 16)))
  {
    v19 = "ev_route_selection";
  }

  else
  {
    v19 = "default_route_selection";
  }

LABEL_28:
  v20 = strlen(v19);
  if (v20 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v21 = v20;
  if (v20 >= 0x17)
  {
    operator new();
  }

  v29 = v20;
  if (v20)
  {
    memcpy(__dst, v19, v20);
  }

  __dst[v21] = 0;
  sub_112616C(v13, __dst, v5);
  if (v29 < 0)
  {
    operator delete(*__dst);
  }

  return a1;
}

void sub_114B298(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  sub_1129F94(v26);
  sub_114D32C((v25 + 56));
  v29 = *v27;
  if (*v27)
  {
    *(v25 + 40) = v29;
    operator delete(v29);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_114B348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  *(v8 + 12) = 0;
  *(v8 + 20) = 0;
  *(v8 + 24) = 0;
  *(v8 + 28) = 0;
  *(v8 + 40) = *(v8 + 32);
  v11 = *(v8 + 56);
    ;
  }

  *(v8 + 64) = v11;
  *(v8 + 9) = 0;
  v10[1] = 0;
  v10[2] = 0;
  *v10 = 0;
  v13 = *v8;
  HIBYTE(v19[2]) = 21;
  strcpy(v19, "DrivingRouteSelection");
  v21 = 0;
  __p = 0;
  v22 = 0;
  v14 = sub_3AEC94(v13, v19, &__p);
  v15 = __p;
  if (__p)
  {
    v16 = v21;
    v17 = __p;
    if (v21 != __p)
    {
      do
      {
        v18 = *(v16 - 1);
        v16 -= 3;
        if (v18 < 0)
        {
          operator delete(*v16);
        }
      }

      while (v16 != v15);
      v17 = __p;
    }

    v21 = v15;
    operator delete(v17);
  }

  if (SHIBYTE(v19[2]) < 0)
  {
    operator delete(v19[0]);
  }

  HIBYTE(v19[2]) = 17;
  strcpy(v19, "return_all_routes");
  sub_5F9D0(v14, v19);
  if (SHIBYTE(v19[2]) < 0)
  {
    operator delete(v19[0]);
  }

  operator new();
}

void sub_114C63C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char **a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va1, a21);
  va_start(va, a21);
  v22 = va_arg(va1, char *);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  sub_114D0D0(va);
  sub_114D0D0(va1);
  sub_114DBDC(&STACK[0x880]);
  sub_114DC90(&STACK[0xA40]);
  sub_1A104(&STACK[0x2D40]);
  sub_360B9C(&STACK[0x2DD0]);
  sub_4B5CAC(&STACK[0x2D58]);
  sub_60A84C(a18);
  _Unwind_Resume(a1);
}

void sub_114C924(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_4A48(a1);
}

void sub_114C940(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[1] - *a1;
  if (v6 != 1112 || (~*(*a1 + 1008) & 0x28) != 0 || (*(a3 + 29) & 1) != 0)
  {
    sub_60BAC4(a2, 0x3AEF6CA970586723 * (v6 >> 3) + ((*(a2 + 8) - *a2) >> 7));
    v7 = a1[1] - *a1;
    if (v7)
    {
      v8 = 0;
      v9 = 0;
      v10 = 0x3AEF6CA970586723 * (v7 >> 3);
      v11 = 1008;
      do
      {
        while (1)
        {
          v14 = *a1;
          v15 = (*a1 + v11 - 1000);
          v16 = *(a2 + 8);
          if (v16 < *(a2 + 16))
          {
            break;
          }

          v17 = sub_114D388(a2, v15);
          *(a2 + 8) = v17;
          v18 = *(v14 + v11);
          if ((v18 & 0x20) == 0)
          {
            goto LABEL_20;
          }

LABEL_14:
          if (*(a3 + 29) != 1)
          {
            goto LABEL_20;
          }

          if (v9)
          {
            v19 = 6;
          }

          else
          {
            v19 = 5;
          }

          sub_4C515C(v17 - 128, v19);
          v20 = *(a2 + 8) - 128;
          if (!v8)
          {
            goto LABEL_6;
          }

LABEL_23:
          sub_4C5164(v20, 0);
          v8 = 1;
          ++v9;
          v11 += 1112;
          if (v10 == v9)
          {
            return;
          }
        }

        sub_114D540(*(a2 + 8), v15);
        v17 = (v16 + 128);
        *(a2 + 8) = v16 + 128;
        *(a2 + 8) = v16 + 128;
        v18 = *(v14 + v11);
        if ((v18 & 0x20) != 0)
        {
          goto LABEL_14;
        }

LABEL_20:
        v21 = (v18 >> 2) & 1;
        if (v9)
        {
          LOBYTE(v21) = 2;
        }

        sub_4C515C(v17 - 128, v21);
        v20 = *(a2 + 8) - 128;
        if (v8)
        {
          goto LABEL_23;
        }

LABEL_6:
        v12 = *(v14 + v11);
        if ((v12 & 8) != 0)
        {
          v13 = 2;
        }

        else
        {
          v13 = (v12 & 0x10) != 0;
        }

        sub_4C5164(v20, v13);
        v8 = sub_4C514C(*(a2 + 8) - 128) != 0;
        ++v9;
        v11 += 1112;
      }

      while (v10 != v9);
    }
  }

  else
  {
    v23 = *a2;
    v22 = *(a2 + 8);
    if (v22 != *a2)
    {
      do
      {
        v22 -= 128;
        sub_60B38C(v22);
      }

      while (v22 != v23);
    }

    *(a2 + 8) = v23;
  }
}

uint64_t sub_114CB30(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a3;
  v4 = *(a3 + 8);
  if (*a3 == v4)
  {
    return 1;
  }

  v5 = a2[1];
  v6 = *a2;
  v7 = a1[1];
  v8 = *a1;
LABEL_5:
  result = 0;
  switch(*v3)
  {
    case 1:
      v10 = v8;
      if (v8 == v7)
      {
        return 0;
      }

      do
      {
        if ((*(v10 + 1008) & 4) != 0)
        {
          goto LABEL_4;
        }

        v10 += 1112;
      }

      while (v10 != v7);
      return 0;
    case 2:
      v14 = v8;
      if (v8 == v7)
      {
        return 0;
      }

      while (*(v14 + 128) <= 0.0)
      {
        v14 += 1112;
        if (v14 == v7)
        {
          return 0;
        }
      }

      goto LABEL_4;
    case 3:
      v13 = v8;
      if (v8 == v7)
      {
        goto LABEL_4;
      }

      while (*(v13 + 976) > 0.0)
      {
        v13 += 1112;
        if (v13 == v7)
        {
          goto LABEL_4;
        }
      }

      return 0;
    case 4:
      v11 = *a2;
      if (v6 == v5)
      {
        goto LABEL_4;
      }

      while (*(v11 + 128) > 0.0)
      {
        v11 += 1112;
        if (v11 == v5)
        {
          goto LABEL_4;
        }
      }

      return 0;
    case 5:
      v19 = *a2;
      if (v6 == v5)
      {
        goto LABEL_4;
      }

      while (*(v19 + 104) > 0.0)
      {
        v19 += 1112;
        if (v19 == v5)
        {
          goto LABEL_4;
        }
      }

      return 0;
    case 6:
      v12 = *a2;
      if (v6 == v5)
      {
        goto LABEL_4;
      }

      while (*(v12 + 80) > 0.0 || *(v12 + 168) > 0.0)
      {
        v12 += 1112;
        if (v12 == v5)
        {
          goto LABEL_4;
        }
      }

      return 0;
    case 7:
      v20 = *a2;
      if (v6 == v5)
      {
        goto LABEL_4;
      }

      while (*(v20 + 72) > 0.0)
      {
        v20 += 1112;
        if (v20 == v5)
        {
          goto LABEL_4;
        }
      }

      return 0;
    case 8:
      v18 = *a2;
      if (v6 == v5)
      {
        goto LABEL_4;
      }

      while (*(v18 + 176) > 0.0)
      {
        v18 += 1112;
        if (v18 == v5)
        {
          goto LABEL_4;
        }
      }

      return 0;
    case 9:
      v15 = *a2;
      if (v6 == v5)
      {
        goto LABEL_4;
      }

      while (*(v15 + 784) > 0.0)
      {
        v15 += 1112;
        if (v15 == v5)
        {
          goto LABEL_4;
        }
      }

      return 0;
    case 0xA:
      v17 = *a2;
      if (v6 == v5)
      {
        goto LABEL_4;
      }

      while (*(v17 + 984) > 0.0)
      {
        v17 += 1112;
        if (v17 == v5)
        {
          goto LABEL_4;
        }
      }

      return 0;
    case 0xB:
      v16 = *a2;
      if (v6 == v5)
      {
        goto LABEL_4;
      }

      while ((*(v16 + 1008) & 8) == 0)
      {
        v16 += 1112;
        if (v16 == v5)
        {
          goto LABEL_4;
        }
      }

      return 0;
    case 0xC:
      v21 = *a2;
      if (v6 == v5)
      {
        return 0;
      }

      break;
    case 0xD:
    case 0xE:
    case 0x11:
    case 0x12:
      return result;
    case 0xF:
      if (v6 == v5)
      {
        goto LABEL_4;
      }

      return 0;
    case 0x10:
      if (v6 == v5)
      {
        return 0;
      }

      goto LABEL_4;
    default:
      goto LABEL_4;
  }

  do
  {
    if (*(v21 + 856) > 0.0)
    {
LABEL_4:
      if (++v3 == v4)
      {
        return 1;
      }

      goto LABEL_5;
    }

    v21 += 1112;
  }

  while (v21 != v5);
  return 0;
}

double *sub_114CDE8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1149554(a4, a2, a6 + 48, a4, a5, a6, a7, a8);
  v13 = sub_1155450(a5, a2);
  v14 = v13;
  v15 = a2[1];
  if (v15 == v13)
  {
    return v13;
  }

  if (sub_114D1F4(v13, a6))
  {
    v16 = *a3;
    if (*a3 == a3[1] || (v17 = v14[5], v18 = *(v16 + 40), v17 <= *(a6 + 96) * v18) && ((v19 = *(a6 + 104), v19 < 1) || v17 + v19 <= v18) && ((v20 = *(a6 + 112), v20 <= 0.0) || v14[109] >= v20 + *(v16 + 872)) && v14[28] <= *(a6 + 120))
    {
      sub_1196AF4(&v35, *a1);
      v21 = *(a6 + 128);
      if (v21 == 1000000000)
      {
        *(v14 + 24) = 1;
        if (*(a1 + 112) != 1)
        {
          goto LABEL_27;
        }

LABEL_26:
        std::string::operator=((v14 + 136), (a6 + 48));
LABEL_27:
        v15 = v14;
        v30 = __p;
        if (__p)
        {
          goto LABEL_28;
        }

        goto LABEL_29;
      }

      v24 = *a3;
      v23 = a3[1];
      if (v24 == v23)
      {
LABEL_25:
        *(v14 + 24) = 1;
        if (*(a1 + 112) != 1)
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }

      v25 = v21 / 1000000000.0;
      while (1)
      {
        sub_1196B34(&v35);
        sub_1197840(&v35, *(v24 + 8));
        v26 = *(v14 + 1);
        v40 = 0x7FFFFFFFFFFFFFFELL;
        v27 = sub_1198AB0(&v35, v26, &v40);
        v28 = v25 * sub_4C4BD8(*(v24 + 8));
        if (v28 >= 0.0)
        {
          if (v28 >= 4.50359963e15)
          {
            goto LABEL_23;
          }

          v29 = (v28 + v28) + 1;
        }

        else
        {
          if (v28 <= -4.50359963e15)
          {
            goto LABEL_23;
          }

          v29 = (v28 + v28) - 1 + (((v28 + v28) - 1) >> 63);
        }

        v28 = (v29 >> 1);
LABEL_23:
        if (v27 > v28)
        {
          v15 = a2[1];
          v30 = __p;
          if (!__p)
          {
            goto LABEL_29;
          }

LABEL_28:
          v39 = v30;
          operator delete(v30);
LABEL_29:
          v31 = v36;
          if (v36)
          {
            v32 = v37;
            v33 = v36;
            if (v37 != v36)
            {
              do
              {
                v34 = *(v32 - 1);
                if (v34)
                {
                  free(v34);
                }

                v32 -= 80;
              }

              while (v32 != v31);
              v33 = v36;
            }

            v37 = v31;
            operator delete(v33);
          }

          return v15;
        }

        v24 += 1112;
        if (v24 == v23)
        {
          goto LABEL_25;
        }
      }
    }
  }

  return v15;
}

char **sub_114D0D0(char **a1)
{
  v2 = *a1;
  if (*a1)
  {
    for (i = a1[1]; i != v2; sub_114D9C4(a1, i))
    {
      i -= 1112;
    }

    a1[1] = v2;
    operator delete(*a1);
  }

  return a1;
}

__n128 sub_114D13C@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  result = *(a1 + 12);
  *a2 = result;
  a2[1].n128_u32[0] = *(a1 + 28);
  return result;
}

void *sub_114D150@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = result[4];
  v2 = result[5];
  if (v2 != v3)
  {
    if (0x86BCA1AF286BCA1BLL * ((v2 - v3) >> 3) < 0x1AF286BCA1AF287)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

uint64_t sub_114D1F4(double *a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  v3 = *(a2 + 32);
  if (v2 != v3)
  {
    v4 = a1[10] == 0.0;
    if (a1[21] != 0.0)
    {
      v4 = 0;
    }

    do
    {
      v5 = *v2;
      if (*v2 > 5)
      {
        if (v5 <= 7)
        {
          if (v5 == 6)
          {
            if (a1[16] != 0.0)
            {
              return 0;
            }
          }

          else if (v5 == 7 && a1[29] != 0.0)
          {
            return 0;
          }
        }

        else if (v5 == 8)
        {
          if (a1[107] != 0.0)
          {
            return 0;
          }
        }

        else if (v5 == 9)
        {
          if (a1[118] == 0.0)
          {
            return 0;
          }
        }

        else if (v5 == 10 && a1[123] != 0.0)
        {
          return 0;
        }
      }

      else if (v5 <= 2)
      {
        if (v5 == 1)
        {
          if (a1[13] != 0.0)
          {
            return 0;
          }
        }

        else if (v5 == 2 && !v4)
        {
          return 0;
        }
      }

      else if (v5 == 3)
      {
        if (a1[9] != 0.0)
        {
          return 0;
        }
      }

      else if (v5 == 4)
      {
        if (a1[22] != 0.0)
        {
          return 0;
        }
      }

      else if (v5 == 5 && a1[98] != 0.0)
      {
        return 0;
      }

      ++v2;
    }

    while (v2 != v3);
  }

  return 1;
}

void **sub_114D32C(void **a1)
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
        v3 = sub_13272E4(v3 - 144);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void *sub_114D388(void **a1, uint64_t *a2)
{
  v2 = (a1[1] - *a1) >> 7;
  v3 = v2 + 1;
  if ((v2 + 1) >> 57)
  {
    sub_1794();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 6 > v3)
  {
    v3 = v5 >> 6;
  }

  if (v5 >= 0x7FFFFFFFFFFFFF80)
  {
    v6 = 0x1FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 57))
    {
      operator new();
    }

    sub_1808();
  }

  v18 = v2 << 7;
  sub_114D540(v2 << 7, a2);
  v7 = ((v2 << 7) + 128);
  v8 = *a1;
  v9 = a1[1];
  v10 = (v18 + *a1 - v9);
  if (v9 != *a1)
  {
    v11 = *a1;
    v12 = (v18 + *a1 - v9);
    do
    {
      *v12 = 0;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = *v11;
      *(v12 + 2) = *(v11 + 2);
      *v11 = 0;
      *(v11 + 1) = 0;
      *(v11 + 2) = 0;
      *(v12 + 3) = 0;
      *(v12 + 4) = 0;
      *(v12 + 5) = 0;
      *(v12 + 24) = *(v11 + 24);
      *(v12 + 5) = *(v11 + 5);
      *(v11 + 3) = 0;
      *(v11 + 4) = 0;
      *(v11 + 5) = 0;
      v13 = *(v11 + 3);
      v14 = *(v11 + 4);
      v15 = *(v11 + 5);
      *(v12 + 94) = *(v11 + 94);
      *(v12 + 4) = v14;
      *(v12 + 5) = v15;
      *(v12 + 3) = v13;
      v16 = *(v11 + 104);
      *(v12 + 15) = *(v11 + 15);
      *(v12 + 104) = v16;
      *(v11 + 14) = 0;
      *(v11 + 15) = 0;
      *(v11 + 13) = 0;
      v11 += 128;
      v12 += 128;
    }

    while (v11 != v9);
    do
    {
      sub_60B38C(v8);
      v8 += 128;
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = v7;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

void sub_114D52C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_CE38D8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_114D540(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_3ECFD8(a1, *v3, *(v3 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(v3 + 8) - *v3) >> 4));
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  sub_3ED39C(a1 + 24, *(v3 + 24), *(v3 + 32), 0xE21A291C077975B9 * ((*(v3 + 32) - *(v3 + 24)) >> 3));
  v4 = *(v3 + 48);
  v5 = *(v3 + 64);
  v6 = *(v3 + 80);
  *(a1 + 94) = *(v3 + 94);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = v4;
  if (*(v3 + 127) < 0)
  {
    sub_325C((a1 + 104), *(v3 + 104), *(v3 + 112));
  }

  else
  {
    v7 = *(v3 + 104);
    *(a1 + 120) = *(v3 + 120);
    *(a1 + 104) = v7;
  }

  return a1;
}

void sub_114D618(_Unwind_Exception *a1)
{
  sub_3EECC8(v2);
  sub_3ECF74(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_114D648(uint64_t *a1, uint64_t a2)
{
  v2 = 0x3AEF6CA970586723 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x3AEF6CA9705867)
  {
    sub_1794();
  }

  if (0x75DED952E0B0CE46 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x75DED952E0B0CE46 * ((a1[2] - *a1) >> 3);
  }

  if ((0x3AEF6CA970586723 * ((a1[2] - *a1) >> 3)) >= 0x1D77B654B82C33)
  {
    v6 = 0x3AEF6CA9705867;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    if (v6 <= 0x3AEF6CA9705867)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 1112 * v2;
  __p = 0;
  v13 = v7;
  v14 = v7;
  v15 = 0;
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  memcpy((v7 + 32), (a2 + 32), 0x3D8uLL);
  sub_1148AF0(v7 + 1016, (a2 + 1016));
  v14 += 1112;
  sub_114D7C8(a1, &__p);
  v9 = a1[1];
  v10 = v13;
  while (v14 != v10)
  {
    v14 -= 1112;
    sub_114D9C4(v16, v14);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_114D7B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_114DAF0(va);
  _Unwind_Resume(a1);
}

void sub_114D7C8(uint64_t *result, void *a2)
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
      v9 = *(v7 + 16);
      *v8 = *v7;
      *(v8 + 16) = v9;
      memcpy((v8 + 32), (v7 + 32), 0x3D8uLL);
      *(v8 + 1016) = 0;
      *(v8 + 1024) = 0u;
      *(v8 + 1016) = *(v7 + 1016);
      *(v8 + 1024) = *(v7 + 1024);
      *(v7 + 1016) = 0u;
      *(v7 + 1032) = 0;
      v10 = *(v7 + 1056);
      *(v8 + 1040) = *(v7 + 1040);
      *(v8 + 1056) = v10;
      *(v7 + 1040) = 0;
      *(v7 + 1048) = 0u;
      v11 = *(v7 + 1064);
      *(v8 + 1080) = *(v7 + 1080);
      *(v8 + 1064) = v11;
      *(v7 + 1072) = 0u;
      *(v7 + 1064) = 0;
      v12 = *(v7 + 1104);
      *(v8 + 1088) = *(v7 + 1088);
      *(v8 + 1104) = v12;
      *(v7 + 1104) = 0;
      *(v7 + 1088) = 0u;
      v7 += 1112;
      v8 += 1112;
    }

    while (v7 != v5);
    do
    {
      sub_114D9C4(result, v4);
      v4 += 1112;
    }

    while (v4 != v5);
  }

  a2[1] = v6;
  v13 = *result;
  result[1] = *result;
  *result = a2[1];
  a2[1] = v13;
  v14 = result[1];
  result[1] = a2[2];
  a2[2] = v14;
  v15 = result[2];
  result[2] = a2[3];
  a2[3] = v15;
  *a2 = a2[1];
}

uint64_t *sub_114D95C(uint64_t *a1)
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
        v4 -= 1112;
        sub_114D9C4(v6, v4);
      }

      while (v4 != v5);
    }
  }

  return a1;
}

void sub_114D9C4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 1111) < 0)
  {
    operator delete(*(a2 + 1088));
    if ((*(a2 + 1087) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a2 + 1063) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

LABEL_24:
      operator delete(*(a2 + 1040));
      v3 = *(a2 + 1016);
      if (!v3)
      {
        return;
      }

      goto LABEL_5;
    }
  }

  else if ((*(a2 + 1087) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a2 + 1064));
  if (*(a2 + 1063) < 0)
  {
    goto LABEL_24;
  }

LABEL_4:
  v3 = *(a2 + 1016);
  if (!v3)
  {
    return;
  }

LABEL_5:
  v4 = *(a2 + 1024);
  v5 = v3;
  if (v4 != v3)
  {
    do
    {
      v6 = *(v4 - 3);
      if (v6)
      {
        v7 = *(v4 - 2);
        v8 = *(v4 - 3);
        if (v7 != v6)
        {
          do
          {
            v9 = *(v7 - 9);
            v7 -= 4;
            if (v9 < 0)
            {
              operator delete(*v7);
            }
          }

          while (v7 != v6);
          v8 = *(v4 - 3);
        }

        *(v4 - 2) = v6;
        operator delete(v8);
      }

      v10 = v4 - 7;
      if (*(v4 - 33) < 0)
      {
        operator delete(*v10);
      }

      v4 -= 7;
    }

    while (v10 != v3);
    v5 = *(a2 + 1016);
  }

  *(a2 + 1024) = v3;

  operator delete(v5);
}

uint64_t sub_114DAF0(uint64_t a1)
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
    *(a1 + 16) = v3 - 1112;
    sub_114D9C4(v4, v3 - 1112);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void ***sub_114DB48(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
    if ((*(a1 + 71) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 47) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(a1 + 71) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 48));
  if ((*(a1 + 47) & 0x80000000) == 0)
  {
LABEL_4:
    v2 = a1;

    return sub_114909C(v2);
  }

LABEL_9:
  operator delete(*(a1 + 24));
  v2 = a1;

  return sub_114909C(v2);
}

void *sub_114DBDC(void *a1)
{
  v2 = a1[32];
  if (v2)
  {
    a1[33] = v2;
    operator delete(v2);
  }

  v3 = a1[29];
  if (v3)
  {
    a1[30] = v3;
    operator delete(v3);
  }

  v4 = a1[26];
  if (v4)
  {
    a1[27] = v4;
    operator delete(v4);
  }

  v5 = a1[23];
  if (v5)
  {
    a1[24] = v5;
    operator delete(v5);
  }

  v6 = a1[20];
  if (v6)
  {
    a1[21] = v6;
    operator delete(v6);
  }

  v7 = a1[16];
  if (v7)
  {
    a1[17] = v7;
    operator delete(v7);
  }

  v8 = a1[13];
  if (v8)
  {
    a1[14] = v8;
    operator delete(v8);
  }

  v9 = a1[4];
  if (v9)
  {
    a1[5] = v9;
    operator delete(v9);
  }

  v10 = a1[1];
  if (v10)
  {
    a1[2] = v10;
    operator delete(v10);
  }

  return a1;
}

void *sub_114DC90(void *a1)
{
  sub_3E3DF0(a1 + 409);
  v2 = a1[389];
  if (v2)
  {
    operator delete(v2);
  }

  sub_11464AC(a1 + 263);
  sub_FA9554(a1 + 97);
  v3 = a1[27];
  if (v3)
  {
    a1[28] = v3;
    operator delete(v3);
  }

  v4 = a1[12];
  if (v4)
  {
    a1[13] = v4;
    operator delete(v4);
  }

  v5 = a1[9];
  if (v5)
  {
    v6 = a1[10];
    v7 = a1[9];
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 8);
        if (v8)
        {
          free(v8);
        }

        v6 -= 80;
      }

      while (v6 != v5);
      v7 = a1[9];
    }

    a1[10] = v5;
    operator delete(v7);
  }

  v9 = a1[5];
  if (v9)
  {
    a1[6] = v9;
    operator delete(v9);
  }

  v10 = a1[2];
  if (v10)
  {
    v11 = a1[3];
    v12 = a1[2];
    if (v11 != v10)
    {
      do
      {
        v13 = *(v11 - 8);
        if (v13)
        {
          free(v13);
        }

        v11 -= 80;
      }

      while (v11 != v10);
      v12 = a1[2];
    }

    a1[3] = v10;
    operator delete(v12);
  }

  return a1;
}

void ***sub_114DD98(void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      for (i = v2[1]; i != v3; sub_114D9C4(v2, i))
      {
        i -= 1112;
      }

      v2[1] = v3;
      operator delete(**a1);
    }
  }

  return a1;
}

uint64_t sub_114DE0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v8 = a4;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = sub_4C49C0(v6, 0);
      *(v4 + 8) = v6;
      *(v4 + 16) = 0;
      *(v4 + 24) = 256;
      *(v4 + 26) = 0;
      v9 = 0;
      sub_11468F4((v4 + 32), &v9);
      *(v4 + 1104) = 0;
      *(v4 + 1088) = 0u;
      *(v4 + 1072) = 0u;
      *(v4 + 1056) = 0u;
      *(v4 + 1040) = 0u;
      *(v4 + 1008) = 0u;
      *(v4 + 1024) = 0u;
      v9 = 0;
      sub_11468F4((v4 + 32), &v9);
      v6 += 128;
      v4 = v8 + 1112;
      v8 += 1112;
    }

    while (v6 != a3);
  }

  return v4;
}

void sub_114DEDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_114DB48(v3 + 1016);
  sub_114D95C(va);
  _Unwind_Resume(a1);
}

void sub_114DEF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_114D95C(va);
  _Unwind_Resume(a1);
}

void sub_114DF0C()
{
  byte_27C33D7 = 3;
  LODWORD(qword_27C33C0) = 5136193;
  byte_27C33EF = 3;
  LODWORD(qword_27C33D8) = 5136194;
  byte_27C3407 = 3;
  LODWORD(qword_27C33F0) = 5136195;
  byte_27C341F = 15;
  strcpy(&qword_27C3408, "vehicle_mass_kg");
  byte_27C3437 = 21;
  strcpy(&xmmword_27C3420, "vehicle_cargo_mass_kg");
  byte_27C344F = 19;
  strcpy(&qword_27C3438, "vehicle_aux_power_w");
  byte_27C3467 = 15;
  strcpy(&qword_27C3450, "dcdc_efficiency");
  strcpy(&qword_27C3468, "drive_train_efficiency");
  HIBYTE(word_27C347E) = 22;
  operator new();
}

void sub_114E0E8(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C347E) < 0)
  {
    sub_21E89EC();
  }

  sub_21E89F8();
  _Unwind_Resume(a1);
}

uint64_t sub_114E108(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_682A78(a3);
  if (!sub_44F320(a4))
  {
    if (sub_E7C46C(a3))
    {
      return 0;
    }

    else
    {
      return v8;
    }
  }

  if (sub_4C35B0(a1) == 1)
  {
    v10 = *a2;
    v9 = a2[1];
    if (v10 != v9)
    {
      while (sub_4C35B0(v10) == 1)
      {
        v10 += 128;
        if (v10 == v9)
        {
          return v8;
        }
      }

      return 0;
    }

    return v8;
  }

  return 0;
}

void sub_114E1DC()
{
  byte_27C34DF = 3;
  LODWORD(qword_27C34C8) = 5136193;
  byte_27C34F7 = 3;
  LODWORD(qword_27C34E0) = 5136194;
  byte_27C350F = 3;
  LODWORD(qword_27C34F8) = 5136195;
  byte_27C3527 = 15;
  strcpy(&qword_27C3510, "vehicle_mass_kg");
  byte_27C353F = 21;
  strcpy(&xmmword_27C3528, "vehicle_cargo_mass_kg");
  byte_27C3557 = 19;
  strcpy(&qword_27C3540, "vehicle_aux_power_w");
  byte_27C356F = 15;
  strcpy(&qword_27C3558, "dcdc_efficiency");
  strcpy(&qword_27C3570, "drive_train_efficiency");
  HIBYTE(word_27C3586) = 22;
  operator new();
}

void sub_114E3B8(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C3586) < 0)
  {
    sub_21E8AC8();
  }

  sub_21E8AD4();
  _Unwind_Resume(a1);
}

void sub_114E3D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v6 = a5;
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  HIBYTE(v11[2]) = 20;
  strcpy(v11, "DrivingRouteAnalyzer");
  memset(__p, 0, sizeof(__p));
  v9 = sub_3AEC94(a3, v11, __p);
  sub_118D3AC(a1 + 3, a3, v9, v6);
}

void sub_114E4F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  v20 = *(v18 + 120);
  if (v20)
  {
    *(v18 + 128) = v20;
    operator delete(v20);
  }

  _Unwind_Resume(exception_object);
}

void sub_114E530(uint64_t *a2@<X1>, uint64_t *a6@<X8>)
{
  v8 = a2[1];
  if (v8 != *a2)
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((v8 - *a2) >> 4) < 0x333333333333334)
    {
      operator new();
    }

    sub_1794();
  }

  memset(v10, 0, sizeof(v10));
  sub_3ED39C(v10, a2[3], a2[4], 0xE21A291C077975B9 * ((a2[4] - a2[3]) >> 3));
  v9 = *(a2 + 4);
  v11 = *(a2 + 3);
  v12 = v9;
  *v13 = *(a2 + 5);
  *&v13[14] = *(a2 + 94);
  if (*(a2 + 127) < 0)
  {
    sub_325C(__p, a2[13], a2[14]);
  }

  else
  {
    *__p = *(a2 + 13);
    __p[2] = a2[15];
  }

  *a6 = 0;
  a6[1] = 0;
  a6[2] = 0;
  operator new();
}

void sub_114F288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char **a21)
{
  sub_1151330(&STACK[0x2E0]);
  sub_60A84C(a21);
  _Unwind_Resume(a1);
}

void sub_114F438(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_4A48(a1);
  }

  _Unwind_Resume(a1);
}

void sub_114F494(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void **a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v4 = *a3;
  v5 = a3[1];
  if (*a3 != v5)
  {
    while (1)
    {
      sub_1152CB0(&v85, v4);
      v8 = *sub_58BBC(a2);
      v9 = sub_4C49C0(&v85, 0);
      if ((sub_4D20B0(v9, 16) & 1) == 0)
      {
        v10 = sub_45AC50(v8);
        v11 = *(v10 + 36);
        v12 = *(v10 + 32);
        v13 = sub_45AC50(v9);
        if (v12 != *(v13 + 32) || v11 != *(v13 + 36))
        {
          sub_4D3AC4(v9, v8, *(a1 + 8), v14);
        }
      }

      if (sub_4C49E0(&v85) && (sub_4C4A30(&v85) & 1) != 0)
      {
        v16 = *sub_58BBC(a2);
        v17 = *sub_58BBC(&v85);
        v18 = sub_45AC50(v16);
        v19 = *(sub_45AC50(v17) + 32);
        if (__PAIR64__(*(v18 + 36), *(v18 + 32)) != __PAIR64__(WORD2(v19), v19) || *(v18 + 38) != BYTE6(v19))
        {
          goto LABEL_41;
        }

        sub_4E423C(&v76);
        sub_4D0568();
        v21 = v20;
        v23 = v22;
        if (v76)
        {
          v24 = *(&v76 + 1);
          v25 = v24 < sub_4D1DC0(v76);
          if (v21)
          {
            goto LABEL_18;
          }

LABEL_66:
          v27 = 0;
          goto LABEL_67;
        }

        v25 = 0;
        if (!v20)
        {
          goto LABEL_66;
        }

LABEL_18:
        v26 = sub_4D1DC0(v21);
        v27 = v23 < v26;
        if (v23 < v26 && v25)
        {
          v29 = sub_4D1F50(v76, *(&v76 + 1));
          v30 = v29 != sub_4D1F50(v21, v23);
        }

        else
        {
LABEL_67:
          v30 = v25 ^ v27;
        }

        v70 = v30;
        sub_4D0568();
        v48 = v47;
        v50 = v49;
        if (v77.__locale_)
        {
          v51 = v78[0];
          v52 = v51 < sub_4D1DC0(v77.__locale_);
          if (v48)
          {
            goto LABEL_70;
          }

LABEL_76:
          v54 = 0;
          goto LABEL_77;
        }

        v52 = 0;
        if (!v47)
        {
          goto LABEL_76;
        }

LABEL_70:
        v53 = sub_4D1DC0(v48);
        v54 = v50 < v53;
        if (v50 < v53 && v52)
        {
          v56 = sub_4D1F50(v77.__locale_, v78[0]);
          v57 = v56 != sub_4D1F50(v48, v50);
        }

        else
        {
LABEL_77:
          v57 = v52 ^ v54;
        }

        if (sub_4C35B0(a2) <= 1 && sub_4C35B0(v4) < 2)
        {
          v58 = v70 & v57;
        }

        else
        {
          v58 = v70 | v57;
        }

        v59 = sub_4D397C(v16);
        if ((v58 | v59 ^ sub_4D397C(v17)))
        {
          v60 = sub_4E4B18(&v85, 0, 5);
          v61 = sub_4E4B18(a2, 0, 5);
          if (v61 > v60)
          {
            LODWORD(v94) = v61 - v60;
          }

          v62 = a4[1];
          if (v62 >= a4[2])
          {
            v67 = sub_1153960(a4, &v85);
          }

          else
          {
            *v62 = 0;
            *(v62 + 8) = 0;
            *(v62 + 16) = 0;
            sub_3ECFD8(v62, v85, v86, 0xCCCCCCCCCCCCCCCDLL * ((v86 - v85) >> 4));
            *(v62 + 24) = 0;
            *(v62 + 32) = 0;
            *(v62 + 40) = 0;
            sub_3ED39C(v62 + 24, v87, v88, 0xE21A291C077975B9 * ((v88 - v87) >> 3));
            v63 = v89;
            v64 = v90;
            v65 = *v91;
            *(v62 + 94) = *&v91[14];
            *(v62 + 64) = v64;
            *(v62 + 80) = v65;
            *(v62 + 48) = v63;
            if (SHIBYTE(v93) < 0)
            {
              sub_325C((v62 + 104), v92, *(&v92 + 1));
            }

            else
            {
              v66 = v92;
              *(v62 + 120) = v93;
              *(v62 + 104) = v66;
            }

            v68 = v94;
            *(v62 + 144) = v95;
            *(v62 + 128) = v68;
            v67 = (v62 + 152);
          }

          a4[1] = v67;
        }

        goto LABEL_41;
      }

      if (!sub_7E7E4(1u))
      {
        goto LABEL_41;
      }

      sub_19594F8(&v76);
      sub_4A5C(&v76, "Candidate route invalid/inconsistent, dropping it.", 50);
      if ((v84 & 0x10) != 0)
      {
        break;
      }

      if ((v84 & 8) != 0)
      {
        v32 = v78[2];
        v33 = v78;
LABEL_30:
        v34 = *v33;
        v31 = v32 - *v33;
        if (v31 >= 0x7FFFFFFFFFFFFFF8)
        {
          sub_3244();
        }

        if (v31 >= 0x17)
        {
          operator new();
        }

        v75 = v32 - *v33;
        if (v31)
        {
          memmove(&__dst, v34, v31);
        }

        goto LABEL_36;
      }

      v31 = 0;
      v75 = 0;
LABEL_36:
      *(&__dst + v31) = 0;
      sub_7E854(&__dst, 1u);
      if (v75 < 0)
      {
        operator delete(__dst);
      }

      *&v76 = v73;
      *(&v76 + *(*&v73 - 24)) = v72;
      if (v82 < 0)
      {
        operator delete(__p);
      }

      std::locale::~locale(&v77);
      std::ostream::~ostream();
      std::ios::~ios();
LABEL_41:
      if (SHIBYTE(v93) < 0)
      {
        operator delete(v92);
        v35 = v87;
        if (v87)
        {
LABEL_43:
          v36 = v88;
          v37 = v35;
          if (v88 != v35)
          {
            do
            {
              v36 = sub_3EEA68(v36 - 1096);
            }

            while (v36 != v35);
            v37 = v87;
          }

          v88 = v35;
          operator delete(v37);
          v38 = v85;
          if (!v85)
          {
            goto LABEL_5;
          }

LABEL_50:
          v39 = v86;
          v7 = v38;
          if (v86 != v38)
          {
            do
            {
              v40 = *(v39 - 24);
              if (v40)
              {
                v41 = *(v39 - 16);
                v42 = *(v39 - 24);
                if (v41 != v40)
                {
                  do
                  {
                    v43 = v41 - 32;
                    v44 = *(v41 - 8);
                    if (v44 != -1)
                    {
                      (off_2675760[v44])(&v76, v41 - 32);
                    }

                    *(v41 - 8) = -1;
                    v41 -= 32;
                  }

                  while (v43 != v40);
                  v42 = *(v39 - 24);
                }

                *(v39 - 16) = v40;
                operator delete(v42);
              }

              v45 = *(v39 - 32);
              if (v45 != -1)
              {
                (off_2675760[v45])(&v76, v39 - 56);
              }

              v46 = (v39 - 80);
              *(v39 - 32) = -1;
              if (*(v39 - 57) < 0)
              {
                operator delete(*v46);
              }

              v39 -= 80;
            }

            while (v46 != v38);
            v7 = v85;
          }

          v86 = v38;
          operator delete(v7);
          goto LABEL_5;
        }
      }

      else
      {
        v35 = v87;
        if (v87)
        {
          goto LABEL_43;
        }
      }

      v38 = v85;
      if (v85)
      {
        goto LABEL_50;
      }

LABEL_5:
      v4 += 128;
      if (v4 == v5)
      {
        return;
      }
    }

    v32 = v83;
    v33 = &v79;
    if (v83 < v80)
    {
      v83 = v80;
      v32 = v80;
      v33 = &v79;
    }

    goto LABEL_30;
  }
}

void sub_114FBC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_3EECC8(v9);
  sub_3ECF74(v10);
  *(a9 + 8) = v10;
  sub_419F70(v11 - 240);
  sub_1151330(a9);
  _Unwind_Resume(a1);
}

void sub_114FC0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  sub_419F70(v23 - 240);
  sub_1151330(a9);
  _Unwind_Resume(a1);
}

void sub_114FCC4(void **a1, unint64_t a2)
{
  if (0x3AEF6CA970586723 * ((a1[2] - *a1) >> 3) < a2)
  {
    if (a2 < 0x3AEF6CA9705868)
    {
      operator new();
    }

    sub_1794();
  }
}

uint64_t sub_114FE78(uint64_t a1)
{
  if (*(a1 + 1111) < 0)
  {
    operator delete(*(a1 + 1088));
    if ((*(a1 + 1087) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 1063) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      operator delete(*(a1 + 1040));
      v2 = *(a1 + 1016);
      if (!v2)
      {
        return a1;
      }

      goto LABEL_9;
    }
  }

  else if ((*(a1 + 1087) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 1064));
  if (*(a1 + 1063) < 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v2 = *(a1 + 1016);
  if (!v2)
  {
    return a1;
  }

LABEL_9:
  v4 = *(a1 + 1024);
  v5 = v2;
  if (v4 != v2)
  {
    do
    {
      v6 = *(v4 - 3);
      if (v6)
      {
        v7 = *(v4 - 2);
        v8 = *(v4 - 3);
        if (v7 != v6)
        {
          do
          {
            v9 = *(v7 - 9);
            v7 -= 4;
            if (v9 < 0)
            {
              operator delete(*v7);
            }
          }

          while (v7 != v6);
          v8 = *(v4 - 3);
        }

        *(v4 - 2) = v6;
        operator delete(v8);
      }

      v10 = v4 - 7;
      if (*(v4 - 33) < 0)
      {
        operator delete(*v10);
      }

      v4 -= 7;
    }

    while (v10 != v2);
    v5 = *(a1 + 1016);
  }

  *(a1 + 1024) = v2;
  operator delete(v5);
  return a1;
}

uint64_t sub_114FFA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v9 = v8;
  v11 = v10;
  if (sub_4C4AC8(v8) > 2 || (sub_4C50D8(v9, 8) & 1) != 0)
  {
    return 0;
  }

  if ((sub_4C5074(v11, 3) & 1) == 0 && (sub_4C50D8(v11, 9) & 1) == 0 && (sub_4C5074(v11, 1) & 1) == 0 && (sub_4C50D8(v11, 12) & 1) == 0 && !sub_4C50D8(v11, 8))
  {
    operator new();
  }

  if (sub_4C5074(v9, 3) & 1) != 0 || (sub_4C50D8(v9, 9) & 1) != 0 || (sub_4C5074(v9, 1) & 1) != 0 || (sub_4C50D8(v9, 12))
  {
    return 0;
  }

  else
  {
    return sub_4C50D8(v9, 8) ^ 1;
  }
}

void sub_1150CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

void sub_1150D04(uint64_t a1, uint64_t a2)
{
  *v12 = *a1;
  v13 = *(a1 + 16);
  *a1 = 0;
  *(a1 + 8) = 0;
  *v14 = *(a1 + 24);
  v15 = *(a1 + 40);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v4 = *(a1 + 64);
  v16 = *(a1 + 48);
  v17 = v4;
  *v18 = *(a1 + 80);
  *&v18[14] = *(a1 + 94);
  *__p = *(a1 + 104);
  v20 = *(a1 + 120);
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0;
  v21 = *(a1 + 128);
  v22 = *(a1 + 144);
  sub_D7A6D4(a1, a2);
  v5 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v5;
  sub_D7A6D4(a2, v12);
  *(a2 + 128) = v21;
  *(a2 + 144) = v22;
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[0]);
  }

  v6 = v14[0];
  if (v14[0])
  {
    v7 = v14[1];
    v8 = v14[0];
    if (v14[1] != v14[0])
    {
      do
      {
        v7 = sub_3EEA68(v7 - 1096);
      }

      while (v7 != v6);
      v8 = v14[0];
    }

    v14[1] = v6;
    operator delete(v8);
  }

  v9 = v12[0];
  if (v12[0])
  {
    v10 = v12[1];
    v11 = v12[0];
    if (v12[1] != v12[0])
    {
      do
      {
        v10 -= 80;
        sub_3ED230(v10);
      }

      while (v10 != v9);
      v11 = v12[0];
    }

    v12[1] = v9;
    operator delete(v11);
  }
}

void sub_1150E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *v49 = 0u;
  *v50 = 0u;
  v51 = 1065353216;
  sub_11903E0(a3, a1, &v47);
  v7 = v47;
  v8 = v48;
  if (v47 != v48)
  {
    do
    {
      v9 = **v7 + 464 * v7[1];
      if (*(v9 + 71) < 0)
      {
        sub_325C(__p, *(v9 + 48), *(v9 + 56));
      }

      else
      {
        v10 = *(v9 + 48);
        v42 = *(v9 + 64);
        *__p = v10;
      }

      *v43 = *v7;
      sub_1153CC4(v49, __p, __p);
      if (SHIBYTE(v42) < 0)
      {
        operator delete(__p[0]);
      }

      v7 += 20;
    }

    while (v7 != v8);
    v7 = v47;
  }

  if (v7)
  {
    v11 = v48;
    v12 = v7;
    if (v48 != v7)
    {
      do
      {
        v13 = *(v11 - 3);
        if (v13)
        {
          *(v11 - 2) = v13;
          operator delete(v13);
        }

        v14 = *(v11 - 6);
        if (v14)
        {
          *(v11 - 5) = v14;
          operator delete(v14);
        }

        v15 = *(v11 - 12);
        if (v15)
        {
          *(v11 - 11) = v15;
          operator delete(v15);
        }

        v16 = *(v11 - 15);
        if (v16)
        {
          *(v11 - 14) = v16;
          operator delete(v16);
        }

        v11 -= 20;
      }

      while (v11 != v7);
      v12 = v47;
    }

    v48 = v7;
    operator delete(v12);
  }

  if (v50[1])
  {
    sub_11903E0(a3, a2, __p);
    v17 = __p[0];
    v18 = __p[1];
    if (__p[0] != __p[1])
    {
      do
      {
        v27 = sub_11540F4(v49, (**v17 + 464 * *(v17 + 1) + 48));
        if (v27)
        {
          v19 = v49[1];
          v20 = v27[1];
          v21 = vcnt_s8(v49[1]);
          v21.i16[0] = vaddlv_u8(v21);
          if (v21.u32[0] > 1uLL)
          {
            if (v20 >= v49[1])
            {
              v20 %= v49[1];
            }
          }

          else
          {
            v20 &= v49[1] - 1;
          }

          v22 = v49[0];
          v23 = *(v49[0] + v20);
          do
          {
            v24 = v23;
            v23 = *v23;
          }

          while (v23 != v27);
          if (v24 == v50)
          {
            goto LABEL_49;
          }

          v25 = v24[1];
          if (v21.u32[0] > 1uLL)
          {
            if (v25 >= v49[1])
            {
              v25 %= v49[1];
            }
          }

          else
          {
            v25 &= v49[1] - 1;
          }

          if (v25 != v20)
          {
LABEL_49:
            if (!*v27)
            {
              goto LABEL_50;
            }

            v28 = (*v27)[1];
            if (v21.u32[0] > 1uLL)
            {
              if (v28 >= v49[1])
              {
                v28 %= v49[1];
              }
            }

            else
            {
              v28 &= v49[1] - 1;
            }

            if (v28 != v20)
            {
LABEL_50:
              *(v49[0] + v20) = 0;
            }
          }

          v29 = *v27;
          if (*v27)
          {
            v30 = v29[1];
            if (v21.u32[0] > 1uLL)
            {
              if (v30 >= v19)
              {
                v30 %= v19;
              }
            }

            else
            {
              v30 &= v19 - 1;
            }

            if (v30 != v20)
            {
              v22[v30] = v24;
              v29 = *v27;
            }
          }

          *v24 = v29;
          *v27 = 0;
          --v50[1];
          if (*(v27 + 39) < 0)
          {
            v26 = v27;
            operator delete(v27[2]);
            v27 = v26;
          }

          operator delete(v27);
        }

        v17 += 160;
      }

      while (v17 != v18);
      v17 = __p[0];
    }

    if (v17)
    {
      v31 = __p[1];
      v32 = v17;
      if (__p[1] != v17)
      {
        do
        {
          v33 = *(v31 - 3);
          if (v33)
          {
            *(v31 - 2) = v33;
            operator delete(v33);
          }

          v34 = *(v31 - 6);
          if (v34)
          {
            *(v31 - 5) = v34;
            operator delete(v34);
          }

          v35 = *(v31 - 12);
          if (v35)
          {
            *(v31 - 11) = v35;
            operator delete(v35);
          }

          v36 = *(v31 - 15);
          if (v36)
          {
            *(v31 - 14) = v36;
            operator delete(v36);
          }

          v31 -= 160;
        }

        while (v31 != v17);
        v32 = __p[0];
      }

      __p[1] = v17;
      operator delete(v32);
    }

    v37 = v50[0];
    if (v50[0])
    {
      do
      {
        if (v37[39] < 0)
        {
          sub_325C(__p, *(v37 + 2), *(v37 + 3));
        }

        else
        {
          *__p = *(v37 + 1);
          v42 = *(v37 + 4);
        }

        *&v43[8] = 0u;
        v44 = 0u;
        v46 = 0x7FFFFFFFFFFFFFFFLL;
        v45 = 0x7FFFFFFF;
        *v43 = 0;
        sub_4EF57C(a4, __p);
        if (*&v43[8])
        {
          *&v43[16] = *&v43[8];
          operator delete(*&v43[8]);
        }

        if (SHIBYTE(v42) < 0)
        {
          operator delete(__p[0]);
        }

        v37 = *v37;
      }

      while (v37);
    }
  }

  v38 = v50[0];
  if (v50[0])
  {
    do
    {
      v40 = *v38;
      if (*(v38 + 39) < 0)
      {
        operator delete(v38[2]);
      }

      operator delete(v38);
      v38 = v40;
    }

    while (v40);
  }

  v39 = v49[0];
  v49[0] = 0;
  if (v39)
  {
    operator delete(v39);
  }
}

void sub_1151294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  sub_23D9C(va);
  _Unwind_Resume(a1);
}

void sub_11512B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va1, a19);
  va_start(va, a19);
  v20 = va_arg(va1, char *);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  sub_3E51FC(va);
  sub_23D9C(va1);
  _Unwind_Resume(a1);
}

void sub_11512CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  sub_3E4ED8(&a9);
  sub_23D9C(va);
  _Unwind_Resume(a1);
}

void sub_11512E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  sub_3E51FC(&a9);
  sub_23D9C(va);
  _Unwind_Resume(a1);
}

void sub_1151304(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_3E51FC(&a23);
  sub_23D9C(&a26);
  _Unwind_Resume(a1);
}

char **sub_1151330(char **a1)
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
        v3 -= 152;
        sub_60B38C(v3);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

BOOL sub_115139C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_4C4D30(a2, &v9);
  sub_4CFC04(&v9);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  sub_4C4D30(a3, &v9);
  sub_4CFC04(&v9);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  if (sub_4C4AAC(a3))
  {
    v5 = 1100;
  }

  else
  {
    if ((sub_4C5074(a2, 4) & 1) == 0)
    {
      sub_4C5074(a2, 9);
    }

    if ((sub_4C5074(a3, 4) & 1) == 0)
    {
      sub_4C5074(a3, 9);
    }

    v5 = 1148;
  }

  sub_4C4D30(a2, &v9);
  v6 = sub_4CFC04(&v9);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  sub_4C4D30(a3, &v9);
  v7 = sub_4CFC04(&v9);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  return (v5 & ~v6 & v7) != 0;
}

void sub_1151878(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1151A68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1151A98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  nullsub_1();
  if (*(v6 + 128) != 1)
  {
    return 0;
  }

  v7 = v6;
  if (sub_4C49D0(a1))
  {
    return 0;
  }

  sub_4F96F4(v7, v37);
  if (v37[0] == v37[1])
  {
    return 0;
  }

  *v34 = 0u;
  *v35 = 0u;
  v36 = 1065353216;
  v8 = *(v37[0] + 80);
  v9 = *(v37[0] + 88);
  while (v8 != v9)
  {
    if (*(v8 + 4) != *(v8 + 5))
    {
      if (*(v8 + 23) < 0)
      {
        sub_325C(__p, *v8, *(v8 + 1));
      }

      else
      {
        v10 = *v8;
        v39 = *(v8 + 2);
        *__p = v10;
      }

      sub_4BE060(v34, __p, __p);
      if (SHIBYTE(v39) < 0)
      {
        operator delete(__p[0]);
      }
    }

    v8 += 5;
  }

  v12 = sub_4EE304(a2);
  v13 = *(v12 + 72);
  v14 = *(v12 + 80);
  while (v13 != v14)
  {
    if (*(v13 + 23) < 0)
    {
      sub_325C(__p, *v13, *(v13 + 1));
    }

    else
    {
      v15 = *v13;
      v39 = *(v13 + 2);
      *__p = v15;
    }

    sub_4BE060(v34, __p, __p);
    if (SHIBYTE(v39) < 0)
    {
      operator delete(__p[0]);
    }

    v13 += 5;
  }

  if (!v35[1])
  {
    v23 = 0;
    v24 = v35[0];
    if (!v35[0])
    {
      goto LABEL_48;
    }

    do
    {
LABEL_52:
      v33 = *v24;
      if (*(v24 + 39) < 0)
      {
        operator delete(v24[2]);
      }

      operator delete(v24);
      v24 = v33;
    }

    while (v33);
    goto LABEL_48;
  }

  sub_11903E0(a3, a1, __p);
  v16 = __p[0];
  v17 = __p[1];
  if (__p[0] == __p[1])
  {
    v21 = 0;
    if (!__p[0])
    {
      goto LABEL_47;
    }
  }

  else
  {
    do
    {
      v18 = *v16;
      v19 = v16[1];
      v16 += 20;
      v20 = sub_138B0(v34, (*v18 + 464 * v19 + 48));
      v21 = v20 != 0;
      if (v20)
      {
        v22 = 1;
      }

      else
      {
        v22 = v16 == v17;
      }
    }

    while (!v22);
    v16 = __p[0];
    if (!__p[0])
    {
      goto LABEL_47;
    }
  }

  v25 = v21;
  v26 = __p[1];
  v27 = v16;
  if (__p[1] != v16)
  {
    do
    {
      v28 = *(v26 - 3);
      if (v28)
      {
        *(v26 - 2) = v28;
        operator delete(v28);
      }

      v29 = *(v26 - 6);
      if (v29)
      {
        *(v26 - 5) = v29;
        operator delete(v29);
      }

      v30 = *(v26 - 12);
      if (v30)
      {
        *(v26 - 11) = v30;
        operator delete(v30);
      }

      v31 = *(v26 - 15);
      if (v31)
      {
        *(v26 - 14) = v31;
        operator delete(v31);
      }

      v26 -= 20;
    }

    while (v26 != v16);
    v27 = __p[0];
  }

  __p[1] = v16;
  operator delete(v27);
  v21 = v25;
LABEL_47:
  v23 = v21;
  v24 = v35[0];
  if (v35[0])
  {
    goto LABEL_52;
  }

LABEL_48:
  v32 = v34[0];
  v34[0] = 0;
  if (v32)
  {
    operator delete(v32);
  }

  return v23;
}

void sub_1151D68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  sub_23D9C(&a9);
  _Unwind_Resume(a1);
}

void sub_11522A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_6BC10(&a15);
  _Unwind_Resume(a1);
}

unsigned int *sub_1152364(unsigned int *result, unsigned int *a2, unint64_t a3)
{
  if (result != a2)
  {
    while (((4 * result[1]) | (*result << 32) | (result[1] >> 31) | (result[1] >> 29) & 2) != ((a3 >> 30) & 0xFFFFFFFC | (a3 << 32) | (a3 >> 63) | (a3 >> 61) & 2))
    {
      result += 14;
      if (result == a2)
      {
        return a2;
      }
    }
  }

  return result;
}

double sub_11523C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1196AF4(v45, *(a1 + 8));
  sub_1197840(v6, a3);
  sub_119916C(v45, a2, 0, &v43);
  v7 = v43;
  if (v43 == v44)
  {
    v8 = 1.0;
    if (!v43)
    {
      goto LABEL_36;
    }

    goto LABEL_32;
  }

  v8 = 1.0;
  if (v43[43] && v43[19])
  {
    v9 = v43[2];
    v35 = *v43;
    v38 = 0;
    v39 = 0;
    v36 = v9;
    v37 = 0;
    v11 = v43[3];
    v10 = v43[4];
    if (v10 != v11)
    {
      if (((v10 - v11) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v40 = 0;
    v41 = 0;
    v42 = 0;
    v13 = v43[6];
    v12 = v43[7];
    if (v12 != v13)
    {
      if (((v12 - v13) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v27 = *(v43 + 9);
    v14 = v43[12];
    v28 = v43[11];
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v15 = v43[13];
    if (v15 != v14)
    {
      if (((v15 - v14) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    __p = 0;
    v33 = 0;
    v34 = 0;
    v17 = v43[15];
    v16 = v43[16];
    if (v16 != v17)
    {
      if (((v16 - v17) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    *(a2 + 136) = sub_1152DC8(a2, &v35, &v27, *(a1 + 8));
    if (__p)
    {
      v33 = __p;
      operator delete(__p);
    }

    if (v29)
    {
      v30 = v29;
      operator delete(v29);
    }

    if (v40)
    {
      v41 = v40;
      operator delete(v40);
    }

    if (v37)
    {
      v38 = v37;
      operator delete(v37);
    }

    v18 = sub_118FF80(a1 + 24, a3, 4, v7[42], v7[44]);
    v19 = sub_118FF80(a1 + 24, a2, 4, v7[18], v7[20]);
    if (v18 == 0.0)
    {
      if (v19 == 0.0)
      {
        v8 = 1.0;
      }

      else
      {
        v8 = v19;
      }
    }

    else
    {
      v8 = v19 / v18;
    }
  }

  v7 = v43;
  if (v43)
  {
LABEL_32:
    v20 = v44;
    v21 = v7;
    if (v44 != v7)
    {
      do
      {
        v20 = sub_1135B64(v20 - 48);
      }

      while (v20 != v7);
      v21 = v43;
    }

    v44 = v7;
    operator delete(v21);
  }

LABEL_36:
  if (v48)
  {
    v49 = v48;
    operator delete(v48);
  }

  v22 = v46;
  if (v46)
  {
    v23 = v47;
    v24 = v46;
    if (v47 != v46)
    {
      do
      {
        v25 = *(v23 - 1);
        if (v25)
        {
          free(v25);
        }

        v23 -= 80;
      }

      while (v23 != v22);
      v24 = v46;
    }

    v47 = v22;
    operator delete(v24);
  }

  return v8;
}

void sub_1152704(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29)
{
  sub_1135B08(&a29);
  sub_D5EE2C((v29 - 136));
  _Unwind_Resume(a1);
}

uint64_t sub_11527C4(uint64_t *a1, int a2, double a3)
{
  v3 = 0x7FFFFFFFLL;
  if (a2 == 0x7FFFFFFF)
  {
    return v3;
  }

  v38 = 0;
  v39 = 0;
  v40 = 0;
  v5 = a1[1];
  v6 = v5 - *a1;
  if (v5 != *a1)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v7 = 0;
  v9 = *a1;
  v8 = a1[1];
  v41 = &v38;
  if (v9 != v8)
  {
    if (a2 < 0)
    {
      v10 = -5;
    }

    else
    {
      v10 = 5;
    }

    v11 = 103 * (v10 + a2 % 10);
    v12 = (a2 / 10 + ((v11 >> 15) & 1) + (v11 >> 10));
    while (1)
    {
      if (*(v9 + 8) != 5)
      {
        sub_5AF20();
      }

      v13 = *v9;
      v44 = 10;
      strcpy(__p, "min_saving");
      v14 = sub_63D34(v13, __p);
      HIBYTE(v42[2]) = 19;
      strcpy(v42, "relative_thresholds");
      v15 = sub_63D34(v13, v42);
      if (SHIBYTE(v42[2]) < 0)
      {
        operator delete(v42[0]);
        if (v44 < 0)
        {
LABEL_20:
          operator delete(__p[0]);
        }
      }

      else if (v44 < 0)
      {
        goto LABEL_20;
      }

      v44 = 5;
      strcpy(__p, "value");
      v16 = sub_63D34(v13, __p);
      if (v44 < 0)
      {
        v17 = v16;
        operator delete(__p[0]);
        v16 = v17;
      }

      v18 = v15 * v12;
      if (v14 >= v15 * v12)
      {
        v18 = v14;
      }

      __p[0] = *&v16;
      __p[1] = *&v18;
      sub_3AB74(&v41, __p);
      v9 += 16;
      if (v9 == v8)
      {
        v6 = v38;
        v7 = v39;
        break;
      }
    }
  }

  v19 = 126 - 2 * __clz((v7 - v6) >> 4);
  if (v7 == v6)
  {
    v20 = 0;
  }

  else
  {
    v20 = v19;
  }

  sub_FB854C(v6, v7, __p, v20, 1, a3);
  if (v38 == v39)
  {
    v3 = 0x7FFFFFFFLL;
    if (!v38)
    {
      return v3;
    }

    goto LABEL_47;
  }

  v21 = (v39 - v38) >> 4;
  if (v21 >= 1)
  {
    v22 = v38;
    if (v39 - v38 != 16)
    {
      v22 = v38;
      do
      {
        v23 = (4 * v21) & 0xFFFFFFFFFFFFFFF0;
        _X13 = v22 + v23;
        __asm { PRFM            #0, [X13] }

        v30 = &v22[2 * (v21 >> 1)];
        _X12 = v30 + v23;
        __asm { PRFM            #0, [X12] }

        if (*v30 >= a3)
        {
          v33 = 0;
        }

        else
        {
          v33 = v21 >> 1;
        }

        v22 += 2 * v33;
        v21 -= v21 >> 1;
      }

      while (v21 > 1);
    }

    v34 = &v22[2 * (*v22 < a3)];
    if (v39 != v34)
    {
      goto LABEL_33;
    }

LABEL_39:
    v35 = *(v39 - 1) * 10.0;
    if (v35 < 0.0)
    {
      goto LABEL_40;
    }

    goto LABEL_43;
  }

  v34 = v38;
  if (v39 == v38)
  {
    goto LABEL_39;
  }

LABEL_33:
  if (v38 != v34)
  {
    v35 = (*(v34 - 1) + (a3 - *(v34 - 2)) / (*v34 - *(v34 - 2)) * (v34[1] - *(v34 - 1))) * 10.0;
    if (v35 >= 0.0)
    {
      goto LABEL_43;
    }

LABEL_40:
    if (v35 <= -4.50359963e15)
    {
      goto LABEL_46;
    }

    v36 = (v35 + v35) - 1 + (((v35 + v35) - 1) >> 63);
    goto LABEL_45;
  }

  v35 = v34[1] * 10.0;
  if (v35 < 0.0)
  {
    goto LABEL_40;
  }

LABEL_43:
  if (v35 >= 4.50359963e15)
  {
    goto LABEL_46;
  }

  v36 = (v35 + v35) + 1;
LABEL_45:
  v35 = (v36 >> 1);
LABEL_46:
  v3 = v35;
  if (v38)
  {
LABEL_47:
    v39 = v38;
    operator delete(v38);
  }

  return v3;
}

void sub_1152BCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1152C5C(uint64_t a1)
{
  if (sub_4C5074(a1, 4))
  {
    return 1;
  }

  return sub_4C5074(a1, 9);
}

uint64_t sub_1152CB0(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_3ECFD8(a1, *a2, *(a2 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 8) - *a2) >> 4));
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  sub_3ED39C(a1 + 24, *(a2 + 24), *(a2 + 32), 0xE21A291C077975B9 * ((*(a2 + 32) - *(a2 + 24)) >> 3));
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  v6 = *(a2 + 80);
  *(a1 + 94) = *(a2 + 94);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = v4;
  if (*(a2 + 127) < 0)
  {
    sub_325C((a1 + 104), *(a2 + 104), *(a2 + 112));
  }

  else
  {
    v7 = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 104) = v7;
  }

  *(a1 + 128) = -NAN;
  *(a1 + 136) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 144) = 0x7FFFFFFF;
  return a1;
}

void sub_1152D98(_Unwind_Exception *a1)
{
  sub_3EECC8(v2);
  sub_3ECF74(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1152DC8(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = a2[6];
  v7 = a2[7];
  v8 = a3[6];
  v9 = a3[7];
  v10 = v6 == v7 || v8 == v9;
  if (v10)
  {
    if ((v6 == v7) == (v8 == v9))
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    goto LABEL_24;
  }

  if (a2[2] == a3[2])
  {
    if (*a2)
    {
      v11 = a1;
      v12 = a2;
      v13 = a2[1];
      v14 = sub_4D1DC0(*a2);
      v15 = v13 < v14;
      if (!*a3)
      {
        v18 = v13 >= v14;
        a1 = v11;
        a2 = v12;
        if (v18)
        {
          return 0x7FFFFFFFFFFFFFFFLL;
        }

        goto LABEL_24;
      }

      v16 = a3[1];
      v17 = sub_4D1DC0(*a3);
      if (v15)
      {
        v18 = v16 >= v17;
      }

      else
      {
        v18 = 1;
      }

      if (!v18)
      {
        v20 = v12;
        v21 = sub_4D1F50(*v12, v12[1]);
        v22 = sub_4D1F50(*a3, a3[1]);
        a2 = v20;
        v10 = v21 == v22;
        a1 = v11;
        if (v10)
        {
          return 0x7FFFFFFFFFFFFFFFLL;
        }

        goto LABEL_24;
      }
    }

    else
    {
      if (!*a3)
      {
        return 0x7FFFFFFFFFFFFFFFLL;
      }

      v12 = a2;
      v11 = a1;
      v15 = 0;
      v16 = a3[1];
      v17 = sub_4D1DC0(*a3);
    }

    v19 = v16 < v17;
    a1 = v11;
    a2 = v12;
    if (v15 == v19)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

LABEL_24:
  v23 = a1;
  sub_4C438C(a1, a2, 1, &v30);
  sub_4C438C(v23, a3, 0, &v25);
  sub_3B1AF0(a4);
  sub_3B1348(a4);
  if (v32 != v31)
  {
    if (((v32 - v31) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (v34 != v33)
  {
    if (((v34 - v33) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (v27 != v26)
  {
    if (((v27 - v26) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (v29 != v28)
  {
    if (((v29 - v28) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }

  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }

  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }

  if (v31)
  {
    v32 = v31;
    operator delete(v31);
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

void sub_11535A4(_Unwind_Exception *a1)
{
  sub_334D18((v1 - 232));
  sub_334D18((v1 - 168));
  _Unwind_Resume(a1);
}

void sub_11535D8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  if (v42)
  {
    operator delete(v42);
    sub_4A48(a1);
  }

  sub_4A48(a1);
}

void sub_1153664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  sub_334D18(&a15);
  sub_334D18(&a23);
  sub_3355FC(&a31);
  sub_334D18((v31 - 232));
  sub_334D18((v31 - 168));
  _Unwind_Resume(a1);
}

uint64_t sub_115369C(void **a1, uint64_t a2)
{
  v2 = 0x3AEF6CA970586723 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x3AEF6CA9705867)
  {
    sub_1794();
  }

  if (0x75DED952E0B0CE46 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x75DED952E0B0CE46 * ((a1[2] - *a1) >> 3);
  }

  if ((0x3AEF6CA970586723 * ((a1[2] - *a1) >> 3)) >= 0x1D77B654B82C33)
  {
    v6 = 0x3AEF6CA9705867;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (v6 <= 0x3AEF6CA9705867)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 8 * ((a1[1] - *a1) >> 3);
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  memcpy((1112 * v2 + 32), (a2 + 32), 0x3F0uLL);
  *(a2 + 1016) = 0;
  *(a2 + 1024) = 0u;
  *(v7 + 1040) = *(a2 + 1040);
  *(v7 + 1056) = *(a2 + 1056);
  *(a2 + 1040) = 0u;
  *(a2 + 1056) = 0;
  *(v7 + 1080) = *(a2 + 1080);
  *(v7 + 1064) = *(a2 + 1064);
  *(a2 + 1080) = 0;
  *(a2 + 1064) = 0u;
  v9 = *(a2 + 1088);
  *(v7 + 1104) = *(a2 + 1104);
  *(a2 + 1104) = 0;
  *(a2 + 1088) = 0u;
  v10 = 1112 * v2 + 1112;
  v11 = *a1;
  v12 = a1[1];
  v13 = *a1 + v7 - v12;
  *(v7 + 1088) = v9;
  if (v12 != v11)
  {
    v14 = v11;
    v15 = v13;
    do
    {
      v16 = *(v14 + 1);
      *v15 = *v14;
      *(v15 + 16) = v16;
      memcpy((v15 + 32), v14 + 32, 0x3D8uLL);
      *(v15 + 1024) = 0u;
      *(v15 + 1016) = *(v14 + 1016);
      *(v15 + 1032) = *(v14 + 129);
      *(v14 + 1016) = 0u;
      *(v14 + 129) = 0;
      v17 = *(v14 + 132);
      *(v15 + 1040) = *(v14 + 65);
      *(v15 + 1056) = v17;
      *(v14 + 130) = 0;
      *(v14 + 132) = 0;
      *(v14 + 131) = 0;
      v18 = *(v14 + 1064);
      *(v15 + 1080) = *(v14 + 135);
      *(v15 + 1064) = v18;
      *(v14 + 134) = 0;
      *(v14 + 135) = 0;
      *(v14 + 133) = 0;
      v19 = *(v14 + 138);
      *(v15 + 1088) = *(v14 + 68);
      *(v15 + 1104) = v19;
      *(v14 + 138) = 0;
      *(v14 + 136) = 0;
      *(v14 + 137) = 0;
      v14 += 1112;
      v15 += 1112;
    }

    while (v14 != v12);
    do
    {
      sub_114FE78(v11);
      v11 += 1112;
    }

    while (v11 != v12);
    v11 = *a1;
  }

  *a1 = v13;
  a1[1] = v10;
  a1[2] = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v10;
}

void **sub_1153904(void **a1)
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
        v3 = sub_114FE78(v3 - 1112);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void *sub_1153960(void **a1, uint64_t a2)
{
  v2 = 0x86BCA1AF286BCA1BLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1AF286BCA1AF286)
  {
    sub_1794();
  }

  if (0xD79435E50D79436 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xD79435E50D79436 * ((a1[2] - *a1) >> 3);
  }

  if (0x86BCA1AF286BCA1BLL * ((a1[2] - *a1) >> 3) >= 0xD79435E50D7943)
  {
    v5 = 0x1AF286BCA1AF286;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x1AF286BCA1AF286)
    {
      operator new();
    }

    sub_1808();
  }

  v18 = 8 * ((a1[1] - *a1) >> 3);
  sub_1153B64(v18, a2);
  v6 = (152 * v2 + 152);
  v7 = *a1;
  v8 = a1[1];
  v9 = (v18 + *a1 - v8);
  if (v8 != *a1)
  {
    v10 = *a1;
    v11 = (v18 + *a1 - v8);
    do
    {
      *v11 = 0;
      *(v11 + 1) = 0;
      *(v11 + 2) = 0;
      *v11 = *v10;
      *(v11 + 2) = *(v10 + 2);
      *v10 = 0;
      *(v10 + 1) = 0;
      *(v10 + 2) = 0;
      *(v11 + 3) = 0;
      *(v11 + 4) = 0;
      *(v11 + 5) = 0;
      *(v11 + 24) = *(v10 + 24);
      *(v11 + 5) = *(v10 + 5);
      *(v10 + 3) = 0;
      *(v10 + 4) = 0;
      *(v10 + 5) = 0;
      v12 = *(v10 + 3);
      v13 = *(v10 + 4);
      v14 = *(v10 + 5);
      *(v11 + 94) = *(v10 + 94);
      *(v11 + 4) = v13;
      *(v11 + 5) = v14;
      *(v11 + 3) = v12;
      v15 = *(v10 + 104);
      *(v11 + 15) = *(v10 + 15);
      *(v11 + 104) = v15;
      *(v10 + 14) = 0;
      *(v10 + 15) = 0;
      *(v10 + 13) = 0;
      v16 = *(v10 + 8);
      *(v11 + 36) = *(v10 + 36);
      *(v11 + 8) = v16;
      v10 += 152;
      v11 += 152;
    }

    while (v10 != v8);
    do
    {
      sub_60B38C(v7);
      v7 += 152;
    }

    while (v7 != v8);
    v7 = *a1;
  }

  *a1 = v9;
  a1[1] = v6;
  a1[2] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return v6;
}