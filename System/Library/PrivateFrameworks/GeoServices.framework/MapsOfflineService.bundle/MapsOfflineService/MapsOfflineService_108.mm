void sub_6D3C80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, _Unwind_Exception *exception_object, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  v25 = *(v23 - 120);
  if (v25)
  {
    *(v23 - 112) = v25;
    operator delete(v25);
    v26 = __p;
    if (!__p)
    {
LABEL_3:
      if (!v22)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v26 = __p;
    if (!__p)
    {
      goto LABEL_3;
    }
  }

  operator delete(v26);
  if (!v22)
  {
LABEL_4:
    v27 = exception_object;
    if (!exception_object)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(v22);
  v27 = exception_object;
  if (!exception_object)
  {
LABEL_5:
    sub_1F1A8(va);
    _Unwind_Resume(a1);
  }

LABEL_9:
  operator delete(v27);
  sub_1F1A8(va);
  _Unwind_Resume(a1);
}

void sub_6D3D8C(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = sub_2B51D8(a1, a2);
  v5 = (v4 - *v4);
  if (*v5 >= 0x21u && (v6 = v5[16]) != 0)
  {
    v7 = (v4 + v6 + *(v4 + v6));
    a3[1] = 0;
    a3[2] = 0;
    *a3 = 0;
    if (*v7)
    {
      operator new();
    }

    a3[2] = 0;
    *a3 = 0;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void sub_6D3F60(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_6D3F8C(void *a1, unint64_t a2)
{
  if (0xEF7BDEF7BDEF7BDFLL * ((a1[1] - *a1) >> 3) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(&v16, ",size=", &v15);
    std::to_string(&v13, 0xEF7BDEF7BDEF7BDFLL * ((a1[1] - *a1) >> 3));
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    v8 = std::string::append(&v16, v6, size);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v18 = v8->__r_.__value_.__r.__words[2];
    v17 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (v18 >= 0)
    {
      v10 = &v17;
    }

    else
    {
      v10 = v17;
    }

    if (v18 >= 0)
    {
      v11 = HIBYTE(v18);
    }

    else
    {
      v11 = *(&v17 + 1);
    }

    v12 = sub_2D390(exception, v10, v11);
  }

  return *a1 + 248 * a2;
}

void sub_6D40C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 41) < 0)
  {
    operator delete(*(v32 - 64));
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((a32 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((a32 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a27);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_11;
}

uint64_t sub_6D41A8(uint64_t a1, unsigned int *a2, void *a3, uint64_t a4)
{
  v8 = sub_2B51D8(*a1, *a2 | (*(a2 + 2) << 32));
  v9 = (v8 - *v8);
  if (*v9 < 0x9Bu)
  {
    return 0;
  }

  v10 = v9[77];
  if (!v10)
  {
    return 0;
  }

  if ((*(v8 + v10 + 3) & 2) == 0)
  {
    return 0;
  }

  if (*(a1 + 681) != 1)
  {
    return 0;
  }

  v11 = sub_2B51D8(*a1, *a2 | (*(a2 + 2) << 32));
  v12 = (v11 - *v11);
  if (*v12 < 0x21u || !v12[16])
  {
    return 0;
  }

  sub_6D3D8C(*a1, *a2 | (*(a2 + 2) << 32), &v30);
  v13 = v30;
  v14 = v31;
  if (v30 == v31)
  {
    result = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v16 = sub_30CC30(*a1, *v13);
    v17 = (v16 - *v16);
    if (*v17 < 0xDu)
    {
      goto LABEL_12;
    }

    v18 = v17[6];
    if (!v18)
    {
      goto LABEL_12;
    }

    v19 = (v16 + v18 + *(v16 + v18));
    v20 = (v19 - *v19);
    if (*v20 >= 5u && (v21 = v20[2]) != 0)
    {
      v22 = *(v19 + v21);
      if (v22 >= 0xF || ((0x7EFFu >> v22) & 1) == 0)
      {
        goto LABEL_12;
      }

      v23 = dword_229EB2C[v22];
    }

    else
    {
      v23 = 0;
    }

    sub_320200(*a1, *v13, &__p);
    v24 = __p;
    if (__PAIR64__(*(__p + 2), *__p) == __PAIR64__(WORD2(*a2), *a2) && *(__p + 6) == BYTE6(*a2))
    {
      v25 = v29;
      if (__PAIR64__(*(v29 - 2), *(v29 - 2)) == __PAIR64__(WORD2(*a3), *a3) && *(v29 - 2) == BYTE6(*a3))
      {
        break;
      }
    }

    v29 = __p;
    operator delete(__p);
LABEL_12:
    if (++v13 == v14)
    {
      result = 0;
      goto LABEL_29;
    }
  }

  *(a4 + 24) = v23;
  if (&__p == a4)
  {
    v29 = v24;
    v26 = v24;
LABEL_34:
    operator delete(v26);
  }

  else
  {
    sub_30945C(a4, v24, v25, (v25 - v24) >> 3);
    v26 = __p;
    if (__p)
    {
      v29 = __p;
      goto LABEL_34;
    }
  }

  result = 1;
LABEL_29:
  v13 = v30;
LABEL_31:
  if (v13)
  {
    v31 = v13;
    v27 = result;
    operator delete(v13);
    return v27;
  }

  return result;
}

void sub_6D441C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
    v14 = a12;
    if (!a12)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v14 = a12;
    if (!a12)
    {
      goto LABEL_3;
    }
  }

  operator delete(v14);
  _Unwind_Resume(exception_object);
}

uint64_t sub_6D446C(uint64_t a1, uint64_t a2, char **a3, int ***a4, unint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v8 = a8;
  result = sub_6D9BF8(a1, a3, a4, a5);
  if (a7 && (result & 0x100000000) != 0)
  {
    return result;
  }

  if (sub_6D9EC4(a1, a3, a4))
  {
    return 0;
  }

  result = sub_6DA060(a1, a3, a4, a5);
  if ((result & 0x100000000) != 0)
  {
    return result;
  }

  v18 = sub_70E7C4(a1 + 1432, a3, a4, a5, v17);
  if (!sub_6DA224(a1, a2, a3, a4, v18, a5, v8))
  {
    v27 = 0;
    v20 = 1;
    goto LABEL_17;
  }

  v19 = sub_605E3C(a4, 0);
  v20 = 1;
  v21 = sub_605E3C(a4, 1uLL);
  v22 = sub_6DAFB0(a1, a3, v19, v21);
  if (a5 == 1)
  {
    v20 = 0;
    v24 = v22 < v23;
    v25 = 20;
    v26 = 21;
  }

  else
  {
    if (a5)
    {
      v27 = 0;
      goto LABEL_17;
    }

    v20 = 0;
    v24 = v22 < v23;
    v25 = 21;
    v26 = 20;
  }

  if (v24)
  {
    v27 = v26;
  }

  else
  {
    v27 = v25;
  }

LABEL_17:
  v28 = sub_605E3C(a4, a5);
  v29 = *(v28 + 32);
  v30 = *(v28 + 16);
  v58[0] = *v28;
  v58[1] = v30;
  v59 = v29;
  v57 = sub_3116D0(a3);
  v31 = sub_420B0C((a1 + 8), &v57);
  if (v18 == -1)
  {
    v33 = v27;
    if (!v31)
    {
      goto LABEL_42;
    }

LABEL_22:
    v34 = *a3;
    v35 = &(*a3)[-**a3];
    v36 = *v35;
    if (v36 >= 0x2F && (*(v35 + 23) && v34[*(v35 + 23)] == 23 || v36 >= 0x9B && (v37 = *(v35 + 77)) != 0 && (v34[v37] & 4) != 0) || (v38 = (*&v58[0] - **&v58[0]), v39 = *v38, v39 < 0x2F) || (!v38[23] || *(*&v58[0] + v38[23]) != 23) && (v39 < 0x9B || (v40 = v38[77]) == 0 || (*(*&v58[0] + v40) & 4) == 0))
    {
LABEL_42:
      if (!v20)
      {
        goto LABEL_44;
      }

      goto LABEL_43;
    }

    v56 = v31;
    v32 = (sub_31EE90(*a1, a3[4] & 0xFFFFFFFFFFFFFFLL, v59 & 0xFFFFFFFFFFFFFFLL) & 1) != 0 || fabs(sub_710C1C(a1 + 1432, a2, a3, v58)) < *(a1 + 200);
    v33 = v27;
    LOBYTE(v31) = v56;
    goto LABEL_39;
  }

  v32 = v18 == a5;
  if (v18 == a5)
  {
    v33 = v27;
    goto LABEL_39;
  }

  v33 = v27;
  if (((v31 ^ 1) & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_39:
  if ((v20 & v32) != 1)
  {
    goto LABEL_42;
  }

  v41 = v31;
  if (sub_6DB214(a1, a3, a4, a5))
  {
    v33 = 3;
    goto LABEL_44;
  }

  if (sub_6DB7A4(a1, a3, v58, a4, v41, v42))
  {
LABEL_43:
    v33 = sub_6DB978(a1, a2, a3, a4, a5, v18);
    goto LABEL_44;
  }

  v33 = 0;
LABEL_44:
  v43 = v33;
  v44 = sub_6DBAF4(a1, a3, a4, a5, v18);
  result = v43;
  if (v44)
  {
    if (v43 > 61)
    {
      if (v43 != 62)
      {
        if (v43 != 63)
        {
          goto LABEL_48;
        }

        goto LABEL_55;
      }
    }

    else if (v43 != 20)
    {
      if (v43 != 21)
      {
        goto LABEL_48;
      }

LABEL_55:
      v52 = &(*a3)[-**a3];
      if (*v52 < 0x9Bu)
      {
        return 11;
      }

      v53 = *(v52 + 77);
      result = 11;
      if (v53)
      {
        if ((*&(*a3)[v53] & 0x8000) != 0)
        {
          return 30;
        }

        else
        {
          return 11;
        }
      }

      return result;
    }

    v54 = &(*a3)[-**a3];
    if (*v54 < 0x9Bu)
    {
      return 29;
    }

    v55 = *(v54 + 77);
    result = 29;
    if (v55)
    {
      if ((*&(*a3)[v55] & 0x8000) != 0)
      {
        return 11;
      }

      else
      {
        return 29;
      }
    }

    return result;
  }

LABEL_48:
  if (!a6)
  {
    return result;
  }

  if ((sub_6DBDA0(a1, a2, a3, v43, a7) & 1) == 0)
  {
    return v43;
  }

  v46 = v45;
  v47 = sub_710C1C(a1 + 1432, a2, a3, v58);
  v48 = fabs(v47);
  if (v48 > *(a1 + 280) || v48 >= v46)
  {
    result = v43;
    if (v48 < *(a1 + 296))
    {
      return result;
    }

    v49 = v47 < 0.0;
    v50 = 61;
    v51 = 60;
  }

  else
  {
    v49 = v47 < 0.0;
    v50 = 63;
    v51 = 62;
  }

  if (v49)
  {
    return v51;
  }

  else
  {
    return v50;
  }
}

uint64_t sub_6D48F8()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v7 = v6;
  sub_69AC30(v9);
  sub_6D34C0(v5, v4, v2, v7);
  return sub_693598(v9);
}

uint64_t sub_6D4994(uint64_t a1, void *a2)
{
  v4 = sub_4D1DC0(a2) - 1;
  v5 = sub_69AE3C(a2);
  v6 = *(v5 + 8);
  v32 = *v5;
  v33 = v6;
  v7 = sub_69B010(a2);
  v8 = sub_69B0E0(a2);
  v9 = *a1;
  v10 = sub_4D1F50(a2, v4);
  sub_2B7A20(v9, *(v10 + 32) & 0xFFFFFFFFFFFFFFLL, &v26);
  sub_31BF20(&v26, v30);
  v11 = *(a1 + 40);
  if (v11)
  {
    *(a1 + 48) = v11;
    operator delete(v11);
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
  }

  v12 = v30[0];
  *(a1 + 40) = *v30;
  *(a1 + 56) = v31;
  v30[1] = 0;
  v31 = 0;
  v30[0] = 0;
  if (__p)
  {
    v28 = __p;
    operator delete(__p);
  }

  if (v8)
  {
    result = 82;
  }

  else
  {
    result = 18;
  }

  if (v32 != -1 && *(a1 + 40) != *(a1 + 48))
  {
    v25 = result;
    sub_6D5084(a1 + 40, &v32, 0, 0, &v26, v12);
    v14 = v26;
    v15 = *(a1 + 896);
    v16 = v15 / 100;
    v17 = v15 % 100;
    if (v15 < 0)
    {
      v18 = -50;
    }

    else
    {
      v18 = 50;
    }

    if (*&v26 >= (v16 + (((5243 * (v18 + v17)) >> 19) + ((5243 * (v18 + v17)) >> 31))))
    {
      v24 = v29;
      if (sub_69AE54(a2) || ((v19 = *(a1 + 904), v20 = v19 / 100, v21 = v19 % 100, v19 < 0) ? (v22 = -50) : (v22 = 50), *&v14 <= (v20 + (((5243 * (v22 + v21)) >> 19) + ((5243 * (v22 + v21)) >> 31)))))
      {
        v23 = sub_37268((a1 + 40), v24);
        v26 = *v23;
        LODWORD(__p) = *(v23 + 8);
        operator new();
      }

      result = v25;
      if ((v7 & 1) == 0)
      {
        if (sub_69AFD4(a2))
        {
          return 16;
        }

        else
        {
          return 39;
        }
      }
    }

    else
    {
      return v25;
    }
  }

  return result;
}

void sub_6D5018(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  operator delete(v27);
  _Unwind_Resume(a1);
}

void sub_6D5084(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, unint64_t a6@<D0>)
{
  v8 = *a1;
  v9 = *(a1 + 8) - *a1;
  if (v9 == 12)
  {
    LODWORD(a6) = v8[1];
    v10 = exp(3.14159265 - a6 * 6.28318531 / 4294967300.0);
    *&v11 = atan((v10 - 1.0 / v10) * 0.5) * 57.2957795;
    LODWORD(v12) = *v8;
    HIDWORD(v12) = *a2;
    v35 = v12;
    v13 = *&v11 * 0.0174532925;
    LODWORD(v11) = *(a2 + 1);
    v14 = exp(3.14159265 - v11 * 6.28318531 / 4294967300.0);
    v15 = atan((v14 - 1.0 / v14) * 0.5) * 57.2957795 * 0.0174532925;
    v16.i64[0] = v35;
    v16.i64[1] = HIDWORD(v35);
    v17 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v16), vdupq_n_s64(0x4076800000000000uLL)), vdupq_n_s64(0x41EFFFFFFFE00000uLL)), vdupq_n_s64(0xC066800000000000)), vdupq_n_s64(0x3F91DF46A2529D39uLL));
    v36 = vsubq_f64(v17, vdupq_laneq_s64(v17, 1)).f64[0];
    v18 = sin((v13 - v15) * 0.5);
    v19 = v18 * v18;
    v20 = cos(v13);
    v21 = v20 * cos(v15);
    v22 = sin(0.5 * v36);
    v23 = atan2(sqrt(v22 * v22 * v21 + v19), sqrt(1.0 - (v22 * v22 * v21 + v19)));
    v24 = 0;
    *(a5 + 8) = *v8;
    *(a5 + 16) = v8[2];
    *a5 = (v23 + v23) * 6372797.56;
  }

  else
  {
    v25 = v9 >> 2;
    v26 = 0xAAAAAAAAAAAAAAABLL * v25 - 1;
    if (0xAAAAAAAAAAAAAAABLL * v25 == 1)
    {
      v37 = -1;
      v24 = -1;
      v31 = 1.79769313e308;
      v33 = 0x7FFFFFFF;
    }

    else
    {
      v27 = a4;
      v30 = 0;
      v24 = -1;
      v31 = 1.79769313e308;
      v32 = 12;
      v33 = 0x7FFFFFFF;
      v37 = -1;
      do
      {
        v38 = -1;
        v39 = 0x7FFFFFFF;
        sub_702ABC((*a1 + v32 - 12), (*a1 + v32), a2, &v38, a3, v27);
        if (v34 < v31)
        {
          v37 = v38;
          v33 = v39;
          v24 = v30;
          v31 = v34;
        }

        ++v30;
        v32 += 12;
      }

      while (v26 != v30);
    }

    *a5 = v31;
    *(a5 + 8) = v37;
    *(a5 + 16) = v33;
  }

  *(a5 + 24) = v24;
}

double sub_6D534C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 + 8;
  if (*(a1 + 32))
  {
    if (*(a1 + 8) != *(a1 + 16))
    {
      *a2 = *a1;
      *(a2 + 8) = v2;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0u;
      *(a2 + 41) = 0u;
      v3 = a2;

LABEL_5:
      sub_318EF0(v3);
      return result;
    }
  }

  else
  {
    v5 = *(a1 + 16);
    if (*(a1 + 8) != v5)
    {
      v6 = *(v5 - 8);
      v9 = sub_2B4D24(*a1, v6, 0);
      v10 = &v9[*&v9[-*v9 + 4]];
      v11 = &v10[4 * HIDWORD(v6) + *v10];
      v12 = (v11 + 4 + *(v11 + 4));
      v13 = (v12 + *(v12 - *v12 + 6));
      v14 = ((*(a1 + 16) - *(a1 + 8)) >> 3) - 1;
      LODWORD(v13) = *(v13 + *v13) - 1;
      *a2 = *a1;
      *(a2 + 8) = v2;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0u;
      *(a2 + 48) = v14;
      *(a2 + 52) = v13;
      *(a2 + 56) = 1;
      v3 = a2;

      goto LABEL_5;
    }
  }

  result = 0.0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

void sub_6D548C(uint64_t a1)
{
  if (*(a1 + 1173) != 1)
  {
    return;
  }

  if (*(a1 + 7544))
  {
    v2 = *(a1 + 7536);
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

    *(a1 + 7536) = 0;
    v4 = *(a1 + 7528);
    if (v4)
    {
      bzero(*(a1 + 7520), 8 * v4);
    }

    *(a1 + 7544) = 0;
  }

  *__p = 0u;
  *v33 = 0u;
  v34 = 1065353216;
  sub_4D0560();
  v6 = v5;
  for (i = v7; ; ++i)
  {
    sub_4D0568();
    v10 = v9;
    v12 = v11;
    if (v6)
    {
      v13 = sub_4D1DC0(v6);
      v14 = i < v13;
      if (!v10)
      {
        if (i >= v13)
        {
          goto LABEL_27;
        }

        goto LABEL_23;
      }
    }

    else
    {
      if (!v9)
      {
        goto LABEL_27;
      }

      v14 = 0;
    }

    v15 = sub_4D1DC0(v10);
    if (v12 >= v15 || !v14)
    {
      break;
    }

    v17 = sub_4D1F50(v6, i);
    if (v17 == sub_4D1F50(v10, v12))
    {
      goto LABEL_27;
    }

LABEL_23:
    v18 = sub_4D1F50(v6, i);
    v31 = *(v18 + 32) | (*(v18 + 36) << 32);
    if (!sub_4D2148(v6, i))
    {
      v19 = sub_4D1F50(v6, i);
      v30 = sub_311544(v19);
      v35 = &v30;
      v20 = sub_70B418(__p, &v30, &unk_229EB70, &v35);
      sub_2BB8F4(v20 + 3, &v31, &v31);
    }

    if (sub_4D21C8(v6, i) == 1000000000)
    {
      v21 = sub_4D1F50(v6, i);
      v30 = sub_3116D0(v21);
      v35 = &v30;
      v22 = sub_70B418(__p, &v30, &unk_229EB70, &v35);
      sub_2BB8F4(v22 + 3, &v31, &v31);
    }
  }

  if ((v14 ^ (v12 < v15)))
  {
    goto LABEL_23;
  }

LABEL_27:
  v23 = v33[0];
  if (v33[0])
  {
    do
    {
      if (v23[6] >= 3uLL)
      {
        sub_70B7A8((a1 + 7520), v23 + 2, v23 + 2);
      }

      v23 = *v23;
    }

    while (v23);
    v24 = v33[0];
    if (v33[0])
    {
      do
      {
        v26 = *v24;
        v27 = v24[5];
        if (v27)
        {
          do
          {
            v28 = *v27;
            operator delete(v27);
            v27 = v28;
          }

          while (v28);
        }

        v29 = v24[3];
        v24[3] = 0;
        if (v29)
        {
          operator delete(v29);
        }

        operator delete(v24);
        v24 = v26;
      }

      while (v26);
    }
  }

  v25 = __p[0];
  __p[0] = 0;
  if (v25)
  {
    operator delete(v25);
  }
}

void sub_6D573C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_303818(va);
  _Unwind_Resume(a1);
}

void sub_6D5750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_303818(va);
  _Unwind_Resume(a1);
}

void sub_6D5764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_303818(va);
  _Unwind_Resume(a1);
}

void sub_6D5778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_303818(va);
  _Unwind_Resume(a1);
}

void sub_6D578C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_303818(va);
  _Unwind_Resume(a1);
}

void sub_6D57A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_303818(va);
  _Unwind_Resume(a1);
}

void sub_6D57B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_303818(va);
  _Unwind_Resume(a1);
}

void sub_6D57C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_303818(va);
  _Unwind_Resume(a1);
}

void sub_6D57DC(uint64_t a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  __p[0] = 0;
  __p[1] = 0;
  LODWORD(v38) = 0;
  v37 = 0;
  *(&v38 + 1) = -1;
  v39[0] = 0;
  v39[1] = 0;
  v40 = 0;
  v41 = 0;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  v42 = v8;
  v43 = v8;
  v44 = v8;
  *&v45 = -1;
  DWORD2(v45) = 0;
  *&v46 = -1;
  DWORD2(v46) = 0;
  *v47 = 0;
  *&v47[8] = vnegq_f64(v8);
  *&v47[24] = 0;
  LODWORD(v48) = 98;
  *(&v48 + 1) = 0;
  *v49 = 0;
  *&v49[8] = xmmword_229B660;
  *&v49[24] = 0;
  *&v49[32] = 0;
  *&v49[38] = 0;
  if (!a3 && !sub_4D2138(a2) || sub_4D1DC0(a2) - 2 == a3 && !sub_4D2140(a2))
  {
    v9 = *(sub_4D1F50(a2, a3) + 32);
    LODWORD(__src) = v9;
    BYTE6(__src) = BYTE6(v9);
    WORD2(__src) = WORD2(v9);
    v10 = *(sub_4D1F50(a2, a3 + 1) + 32);
    v51 = v10;
    v53 = BYTE6(v10);
    v52 = WORD2(v10);
    v11 = __p[0];
    if (v37 - __p[0] < 9)
    {
      v12 = v37 >> 2;
      if ((v37 >> 2) <= 2)
      {
        v12 = 2;
      }

      if (!(v12 >> 61))
      {
        operator new();
      }

      sub_1794();
    }

    if ((__p[1] - __p[0]) > dword_8)
    {
      v15 = __src;
      v16 = v51;
      v17 = v52;
      *(__p[0] + 14) = v53;
      v11[6] = v17;
      *(v11 + 2) = v16;
      *v11 = v15;
      v18 = (v11 + 8);
LABEL_27:
      LODWORD(v38) = 0;
      v27 = v37;
      *a4 = __p[0];
      *(a4 + 8) = v18;
      *(a4 + 16) = v27;
      v37 = 0;
      __p[0] = 0;
      __p[1] = 0;
      goto LABEL_28;
    }

    v13 = (&__src + __p[1] - __p[0]);
    v19 = __p[0] - __p[1] + 8;
    if (v19 < 0x38)
    {
      v14 = __p[1];
    }

    else
    {
      v14 = __p[1];
      if ((__p[0] - &__src) >= &stru_20)
      {
        v20 = (v19 >> 3) + 1;
        v21 = 8 * (v20 & 0x3FFFFFFFFFFFFFFCLL);
        v13 = (v13 + v21);
        v14 = __p[1] + v21;
        v22 = __p[1] + 16;
        v23 = (&__src + __p[1] - __p[0] + 16);
        v24 = v20 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v25 = *v23;
          *(v22 - 1) = *(v23 - 1);
          *v22 = v25;
          v22 += 2;
          v23 += 2;
          v24 -= 4;
        }

        while (v24);
        if (v20 == (v20 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_26;
        }
      }
    }

    do
    {
      v26 = *v13++;
      *v14 = v26;
      v14 += 8;
    }

    while (v13 != &v54);
LABEL_26:
    v18 = v14;
    goto LABEL_27;
  }

  if (sub_6D8A9C(a1, a2, a3, __p) || sub_394BD0() || sub_6D8C64(a1, a2, a3, __p) || sub_6D8F54(a1, a2, a3, __p) || sub_6D91B0(a1, a2, a3, __p))
  {
    *a4 = *__p;
    *(a4 + 16) = v37;
    __p[1] = 0;
    v37 = 0;
    __p[0] = 0;
LABEL_28:
    *(a4 + 24) = v38;
    *(a4 + 40) = *v39;
    *(a4 + 56) = v40;
    v39[1] = 0;
    v40 = 0;
    v39[0] = 0;
    *(a4 + 64) = v41;
    v28 = v42;
    v29 = v43;
    *(a4 + 104) = v44;
    *(a4 + 88) = v29;
    *(a4 + 72) = v28;
    v30 = v45;
    v31 = v46;
    v32 = *v47;
    *(a4 + 168) = *&v47[16];
    *(a4 + 152) = v32;
    *(a4 + 136) = v31;
    *(a4 + 120) = v30;
    v33 = v48;
    v34 = *v49;
    v35 = *&v49[16];
    *(a4 + 230) = *&v49[30];
    *(a4 + 216) = v35;
    *(a4 + 200) = v34;
    *(a4 + 184) = v33;
    goto LABEL_29;
  }

  sub_6D9708(a1, a2, a3, 1, a4);
  if (v39[0])
  {
    v39[1] = v39[0];
    operator delete(v39[0]);
  }

LABEL_29:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

uint64_t sub_6D5C98(uint64_t *a1, uint64_t a2, uint64_t a3, int ***a4)
{
  v8 = *a1;
  v9 = **a4;
  v10 = sub_2B51D8(*a1, v9 & 0xFFFFFFFFFFFFLL);
  if (*(v8 + 7772) == 1)
  {
    v11 = sub_30C50C(v8 + 3896, v9, 0);
    v12 = &v11[-*v11];
    if (*v12 < 5u)
    {
      v13 = 0;
    }

    else
    {
      v13 = *(v12 + 2);
      if (v13)
      {
        v13 += &v11[*&v11[v13]];
      }
    }

    v14 = (v13 + ((v9 >> 30) & 0x3FFFC) + 4 + *(v13 + ((v9 >> 30) & 0x3FFFC) + 4));
  }

  else
  {
    v14 = 0;
  }

  v32[0] = v10;
  v32[1] = v14;
  v32[2] = sub_31D7E8(v8, v9 & 0xFFFFFFFFFFFFLL, 1);
  v32[3] = v15;
  v32[4] = v9;
  v16 = *a1;
  v17 = *(a4[1] - 1);
  v18 = sub_2B51D8(*a1, v17 & 0xFFFFFFFFFFFFLL);
  if (*(v16 + 7772) == 1)
  {
    v19 = sub_30C50C(v16 + 3896, v17, 0);
    v20 = &v19[-*v19];
    if (*v20 < 5u)
    {
      v21 = 0;
    }

    else
    {
      v21 = *(v20 + 2);
      if (v21)
      {
        v21 += &v19[*&v19[v21]];
      }
    }

    v22 = (v21 + ((v17 >> 30) & 0x3FFFC) + 4 + *(v21 + ((v17 >> 30) & 0x3FFFC) + 4));
  }

  else
  {
    v22 = 0;
  }

  v31[0] = v18;
  v31[1] = v22;
  v31[2] = sub_31D7E8(v16, v17 & 0xFFFFFFFFFFFFLL, 1);
  v31[3] = v23;
  v31[4] = v17;
  v24 = *(a4 + 6);
  result = sub_71A018((a1 + 179), v32, v31);
  if ((result & 1) == 0 && ((v24 - 4) > 0x3E || ((1 << (v24 - 4)) & 0x600000008003008DLL) == 0) && v24)
  {
    v26 = *(a3 + 112);
    if (v26 > 3)
    {
      switch(v26)
      {
        case 4:
          v29 = *(a3 + 104);
          v33 = 0u;
          v34 = 0u;
          v35 = 0x1000000000000;
          return sub_6DCA68(a1, a2, a3, (a3 + 80), v29, &v33, (a4 + 5));
        case 5:
          sub_6E4A4C(a1, a2, a3, a4);
        case 6:
          return sub_766CE0(a1 + 3644, (a4 + 5));
      }
    }

    else if ((v26 - 1) < 2)
    {
      *(a4 + 16) = 0;
      LOBYTE(v33) = 0;
      if (v26 == 1)
      {
        v28 = a1 + 102;
      }

      else
      {
        v28 = a1 + 99;
      }

      sub_6E4B34((a4 + 5), v28, &v33);
      LOBYTE(v33) = 1;
      return sub_6E4B34((a4 + 5), a1 + 106, &v33);
    }

    else if (v26)
    {
      if (v26 == 3)
      {
        v27 = *(a3 + 104);
        if (v27 != -1)
        {
          return sub_6DCA68(a1, a2, (a3 + 40), (a3 + 80), v27, a3, (a4 + 5));
        }
      }
    }

    else
    {
      v30 = *(a3 + 104);
      v33 = 0u;
      v34 = 0u;
      v35 = 0x1000000000000;
      return sub_6DCA68(a1, a2, v32, (a3 + 80), v30, &v33, (a4 + 5));
    }
  }

  return result;
}

BOOL sub_6D5FB8(uint64_t a1, int **a2, int **a3, int a4)
{
  if (a4 != 3)
  {
    if (a4)
    {
      return 0;
    }

    v4 = (*a2 - **a2);
    v5 = *v4;
    if (*(a2 + 38))
    {
      if (v5 >= 0x9B)
      {
        v6 = v4[77];
        if (v6)
        {
          v7 = 2;
LABEL_15:
          v13 = (*(*a2 + v6) & v7) != 0;
          goto LABEL_17;
        }
      }
    }

    else if (v5 >= 0x9B)
    {
      v6 = v4[77];
      if (v6)
      {
        v7 = 1;
        goto LABEL_15;
      }
    }

    v13 = 0;
LABEL_17:
    v14 = *a3;
    v15 = (*a3 - **a3);
    v16 = *v15;
    if (*(a3 + 38))
    {
      if (v16 >= 0x9B)
      {
        v17 = v15[77];
        if (v17)
        {
          return v13 ^ ((*&v14[v17] & 2) != 0);
        }
      }
    }

    else if (v16 >= 0x9B)
    {
      v18 = v15[77];
      if (v18)
      {
        return v13 ^ ((*&v14[v18] & 1) != 0);
      }
    }

    return v13;
  }

  v8 = (*a2 - **a2);
  v9 = *v8;
  if (*(a2 + 38))
  {
    if (v9 >= 0x47)
    {
      v10 = v8[35];
      if (v10)
      {
        v11 = 2;
LABEL_27:
        v13 = (*(*a2 + v10) & v11) != 0;
        goto LABEL_29;
      }
    }
  }

  else if (v9 >= 0x47)
  {
    v10 = v8[35];
    if (v10)
    {
      v11 = 1;
      goto LABEL_27;
    }
  }

  v13 = 0;
LABEL_29:
  v19 = *a3;
  v20 = (*a3 - **a3);
  v21 = *v20;
  if (*(a3 + 38))
  {
    if (v21 >= 0x47)
    {
      v22 = v20[35];
      if (v22)
      {
        return v13 ^ ((*&v19[v22] & 2) != 0);
      }
    }
  }

  else if (v21 >= 0x47)
  {
    v23 = v20[35];
    if (v23)
    {
      return v13 ^ ((*&v19[v23] & 1) != 0);
    }
  }

  return v13;
}

void sub_6D6144(uint64_t result, void *a2)
{
  v2 = a2[1263] - a2[1262];
  if (v2)
  {
    v4 = 0;
    v5 = 0xEF7BDEF7BDEF7BDFLL * (v2 >> 3);
    v6 = 2;
    v7 = 1;
    v114 = v5;
    do
    {
      v8 = sub_6D3F8C(a2 + 1262, v4);
      if (*v8 != *(v8 + 8))
      {
        v9 = v8;
        if ((*(v8 + 240) & 1) == 0)
        {
          v10 = *(result + 712);
          v11 = sub_6D3F8C(a2 + 1262, v4);
          v12 = v4 + 1;
          v13 = 0xEF7BDEF7BDEF7BDFLL * ((a2[1263] - a2[1262]) >> 3);
          v115 = v4 + 1;
          if (v4 + 1 >= v13)
          {
            v19 = -1;
          }

          else
          {
            v14 = v11[4] + ((v11[1] - *v11) >> 3) - 1;
            if (v13 <= v7)
            {
              v15 = v7;
            }

            else
            {
              v15 = 0xEF7BDEF7BDEF7BDFLL * ((a2[1263] - a2[1262]) >> 3);
            }

            while (1)
            {
              v16 = sub_6D3F8C(a2 + 1262, v12);
              if (*v16 != *(v16 + 8) && *(v16 + 24) != 0)
              {
                break;
              }

              if (v15 == ++v12)
              {
                v19 = -1;
                goto LABEL_22;
              }
            }

            if (sub_4D2544(a2, v14, 1, *(v16 + 32), 1u, v17) > v10)
            {
              v19 = -1;
            }

            else
            {
              v19 = v12;
            }

LABEL_22:
            v5 = v114;
          }

          v20.i64[0] = -1;
          v20.i64[1] = -1;
          if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(*(v9 + 72), v20), vceqq_s64(*(v9 + 88), v20))))) & 1) == 0 && (*(v9 + 104) & *(v9 + 112)) == -1 && *(v9 + 120) == -1)
          {
            if (v19 == -1 || (v22 = sub_6D3F8C(a2 + 1262, v19), v23.i64[0] = -1, v23.i64[1] = -1, (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(*(v22 + 72), v23), vceqq_s64(*(v22 + 88), v23))))) & 1) == 0) && ((*(v22 + 104) & *(v22 + 112)) == -1 ? (v24 = *(v22 + 120) == -1) : (v24 = 0), v24))
            {
              v25 = *(v9 + 24);
              if (v25 <= 11)
              {
                if (v25 != 3)
                {
                  if (v25 == 5)
                  {
                    v34 = sub_4D1DB8(a2);
                    v35 = *(result + 656);
                    v36 = sub_6D3F8C(a2 + 1262, v4);
                    v37 = v4;
                    while (v37)
                    {
                      v38 = sub_6D3F8C(a2 + 1262, --v37);
                      v40 = *(v38 + 8);
                      if (*v38 != v40 && *(v38 + 24) != 0)
                      {
                        v42 = *(v38 + 32);
                        if (v35)
                        {
                          v43 = v42 + 1;
                        }

                        else
                        {
                          v43 = v42 + ((v40 - *v38) >> 3) - 1;
                        }

                        if (sub_4D2544(a2, v43, 1, *(v36 + 32), 1u, v39) <= v34 && *(sub_6D3F8C(a2 + 1262, v37) + 24) == 5)
                        {
                          goto LABEL_121;
                        }

                        goto LABEL_122;
                      }
                    }
                  }

                  goto LABEL_122;
                }

                if (*(v9 + 224) & 1) != 0 || (*(v9 + 225) & 1) != 0 || (*(v9 + 226))
                {
LABEL_122:
                  v80 = *(result + 640);
                  v81 = sub_6D3F8C(a2 + 1262, v4);
                  v82 = 0xEF7BDEF7BDEF7BDFLL * ((a2[1263] - a2[1262]) >> 3);
                  if (v115 < v82)
                  {
                    v116 = v81[4] + ((v81[1] - *v81) >> 3) - 1;
                    if (v82 <= v7)
                    {
                      v82 = v7;
                    }

                    v83 = 1 - v82;
                    v84 = v6;
                    while (1)
                    {
                      v85 = sub_6D3F8C(a2 + 1262, v84 - 1);
                      if (*v85 != *(v85 + 8) && *(v85 + 24) != 0)
                      {
                        break;
                      }

                      ++v84;
                      if (v83 + v84 == 2)
                      {
                        goto LABEL_137;
                      }
                    }

                    v88 = sub_4D2544(a2, v116, 1, *(v85 + 32), 1u, v86);
                    if (v84)
                    {
                      if (v88 <= v80)
                      {
                        v89 = sub_6D3F8C(a2 + 1262, v84 - 1);
                        if (sub_6D71C0(result, v9, v89))
                        {
                          *(v9 + 24) = 0;
                          *(sub_6D3F8C(a2 + 1262, v84 - 1) + 24) = 0;
                        }
                      }
                    }
                  }

LABEL_137:
                  v90 = *(v9 + 24);
                  v5 = v114;
                  if (((v90 - 20) <= 0x2E && ((1 << (v90 - 20)) & 0x6F0000006783) != 0 || (v90 - 1) < 3) && (*(v9 + 224) & 1) == 0)
                  {
                    v91 = *(result + 648);
                    v92 = sub_6D3F8C(a2 + 1262, v4);
                    v93 = v4;
                    while (v93)
                    {
                      v94 = sub_6D3F8C(a2 + 1262, --v93);
                      v96 = *(v94 + 8);
                      if (*v94 != v96 && *(v94 + 24) != 0)
                      {
                        if (sub_4D2544(a2, *(v94 + 32) + ((v96 - *v94) >> 3) - 1, 1, *(v92 + 32), 1u, v95) <= v91)
                        {
                          v98 = sub_6D3F8C(a2 + 1262, v93);
                          v99.i64[0] = *(v98 + 120);
                          v99.i64[1] = *(v9 + 72);
                          v100.i64[0] = -1;
                          v100.i64[1] = -1;
                          if ((vmaxv_u8(vmovn_s16(vmvnq_s8(vuzp1q_s16(vuzp1q_s32(vceqq_s64(*(v98 + 72), v100), vceqq_s64(*(v98 + 88), v100)), vuzp1q_s32(vceqq_s64(*(v98 + 104), v100), vceqq_s64(v99, v100)))))) & 1) == 0)
                          {
                            v101.i64[0] = -1;
                            v101.i64[1] = -1;
                            v102 = (vaddvq_s32(vbicq_s8(xmmword_22671F0, vuzp1q_s32(vceqq_s64(*(v9 + 80), v101), vceqq_s64(*(v9 + 96), v101)))) & 0xF) == 0 && *(v9 + 112) == -1;
                            if (v102 && *(v9 + 120) == -1)
                            {
                              v104 = *(v98 + 24);
                              switch(v104)
                              {
                                case 1:
                                case 20:
                                case 27:
                                case 29:
                                case 33:
                                case 60:
                                case 62:
                                case 65:
                                  v105 = *(v9 + 24);
                                  if ((v105 - 20) <= 0x2D && ((1 << (v105 - 20)) & 0x250000002281) != 0 || v105 == 1)
                                  {
                                    goto LABEL_165;
                                  }

                                  goto LABEL_174;
                                case 2:
                                case 21:
                                case 28:
                                case 30:
                                case 34:
                                case 61:
                                case 63:
                                case 66:
                                  v105 = *(v9 + 24);
                                  if (((v105 - 21) > 0x2D || ((1 << (v105 - 21)) & 0x250000002281) == 0) && v105 != 2)
                                  {
                                    goto LABEL_174;
                                  }

                                  goto LABEL_165;
                                default:
                                  v105 = *(v9 + 24);
LABEL_174:
                                  if ((v104 - 41) < 0x13 || v105 == 3)
                                  {
LABEL_165:
                                    v106 = *(*(v9 + 8) - 8);
                                    v121 = v106;
                                    v107 = *(*(v98 + 8) - 8);
                                    v120 = v107;
                                    if (v106)
                                    {
                                      if (v107)
                                      {
                                        v108 = sub_31DDCC(*result, v106);
                                        if (v108 <= 0xFFFFFFFEFFFFFFFFLL)
                                        {
                                          if (v108)
                                          {
                                            v109 = *result;
                                            sub_6D6CBC(result, &v121, v119);
                                            sub_6D6CBC(result, &v120, v118);
                                            if (sub_31EE90(v109, v119[4] & 0xFFFFFFFFFFFFFFLL, v118[4] & 0xFFFFFFFFFFFFFFLL))
                                            {
                                              sub_6D7748(result, a2, v93, v4);
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }

                                  break;
                              }
                            }
                          }
                        }

                        goto LABEL_4;
                      }
                    }
                  }

                  goto LABEL_4;
                }
              }

              else if (v25 != 12)
              {
                if (v25 != 21)
                {
                  if (v25 == 20)
                  {
                    v26 = *(result + 592);
                    v27 = sub_6D3F8C(a2 + 1262, v4);
                    v28 = 0xEF7BDEF7BDEF7BDFLL * ((a2[1263] - a2[1262]) >> 3);
                    if (v115 < v28)
                    {
                      v111 = v27[4] + ((v27[1] - *v27) >> 3) - 1;
                      if (v28 <= v7)
                      {
                        v28 = v7;
                      }

                      v29 = 1 - v28;
                      v30 = v6;
                      while (1)
                      {
                        v31 = sub_6D3F8C(a2 + 1262, v30 - 1);
                        if (*v31 != *(v31 + 8) && *(v31 + 24) != 0)
                        {
                          break;
                        }

                        ++v30;
                        if (v29 + v30 == 2)
                        {
                          goto LABEL_122;
                        }
                      }

                      v79 = sub_4D2544(a2, v111, 1, *(v31 + 32), 1u, v32);
                      if (v30 && v79 <= v26 && *(sub_6D3F8C(a2 + 1262, v30 - 1) + 24) == 1)
                      {
                        goto LABEL_121;
                      }
                    }
                  }

                  goto LABEL_122;
                }

                v44 = *(result + 592);
                v45 = sub_6D3F8C(a2 + 1262, v4);
                v46 = 0xEF7BDEF7BDEF7BDFLL * ((a2[1263] - a2[1262]) >> 3);
                if (v115 >= v46)
                {
                  goto LABEL_122;
                }

                v112 = v45[4] + ((v45[1] - *v45) >> 3) - 1;
                if (v46 <= v7)
                {
                  v46 = v7;
                }

                v47 = 1 - v46;
                v48 = v6;
                while (1)
                {
                  v49 = sub_6D3F8C(a2 + 1262, v48 - 1);
                  if (*v49 != *(v49 + 8) && *(v49 + 24) != 0)
                  {
                    break;
                  }

                  ++v48;
                  if (v47 + v48 == 2)
                  {
                    goto LABEL_122;
                  }
                }

                v78 = sub_4D2544(a2, v112, 1, *(v49 + 32), 1u, v50);
                if (!v48 || v78 > v44 || *(sub_6D3F8C(a2 + 1262, v48 - 1) + 24) != 2)
                {
                  goto LABEL_122;
                }

LABEL_121:
                *(v9 + 24) = 0;
                goto LABEL_122;
              }

              v52 = *(result + 632);
              v53 = *(result + 656);
              v54 = sub_6D3F8C(a2 + 1262, v4);
              v55 = v4;
              do
              {
                if (!v55)
                {
                  v62 = -1;
                  goto LABEL_92;
                }

                v56 = sub_6D3F8C(a2 + 1262, --v55);
                v58 = *(v56 + 8);
              }

              while (*v56 == v58 || *(v56 + 24) == 0);
              v60 = *(v56 + 32);
              if (v53)
              {
                v61 = v60 + 1;
              }

              else
              {
                v61 = v60 + ((v58 - *v56) >> 3) - 1;
              }

              if (sub_4D2544(a2, v61, 1, *(v54 + 32), 1u, v57) > v52)
              {
                v62 = -1;
              }

              else
              {
                v62 = v55;
              }

LABEL_92:
              v63 = *(result + 624);
              v64 = sub_6D3F8C(a2 + 1262, v4);
              v65 = 0xEF7BDEF7BDEF7BDFLL * ((a2[1263] - a2[1262]) >> 3);
              if (v115 < v65)
              {
                v110 = v63;
                v113 = v62;
                v66 = v64[4] + ((v64[1] - *v64) >> 3) - 1;
                if (v65 <= v7)
                {
                  v65 = v7;
                }

                v67 = 1 - v65;
                v68 = v6;
                while (1)
                {
                  v69 = v68 - 1;
                  v70 = sub_6D3F8C(a2 + 1262, v68 - 1);
                  if (*v70 != *(v70 + 8) && *(v70 + 24) != 0)
                  {
                    break;
                  }

                  ++v68;
                  if (v67 + v68 == 2)
                  {
                    v73 = 0;
                    v74 = -1;
LABEL_108:
                    v62 = v113;
                    goto LABEL_109;
                  }
                }

                v75 = sub_4D2544(a2, v66, 1, *(v70 + 32), 1u, v71);
                v73 = 0;
                v74 = -1;
                if (!v68)
                {
                  goto LABEL_108;
                }

                v62 = v113;
                if (v75 > v110)
                {
                  goto LABEL_109;
                }

                v5 = v114;
                if ((*(sub_6D3F8C(a2 + 1262, v69) + 245) & 1) == 0)
                {
                  v73 = 1;
                  v74 = v69;
                  goto LABEL_108;
                }

                goto LABEL_4;
              }

              v73 = 0;
              v74 = -1;
LABEL_109:
              if (v62 == -1 || (v76 = sub_6D3F8C(a2 + 1262, v62), *v76 == v76[1]))
              {
                if (!v73)
                {
                  goto LABEL_122;
                }

                v77 = sub_6D3F8C(a2 + 1262, v74);
                if (*v77 == v77[1])
                {
                  goto LABEL_122;
                }
              }

              goto LABEL_121;
            }
          }

          sub_6D6E64(result, a2, v4);
        }
      }

LABEL_4:
      ++v4;
      ++v7;
      ++v6;
    }

    while (v4 != v5);
  }
}

char *sub_6D6CBC@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = sub_2B51D8(*a1, *a2 & 0xFFFFFFFFFFFFLL);
  if (*(v4 + 7772) == 1)
  {
    v7 = sub_30C50C(v4 + 3896, v5, 0);
    v8 = &v7[-*v7];
    if (*v8 < 5u)
    {
      v9 = 0;
    }

    else
    {
      v9 = *(v8 + 2);
      if (v9)
      {
        v9 += &v7[*&v7[v9]];
      }
    }

    v10 = v9 + ((v5 >> 30) & 0x3FFFC) + 4 + *(v9 + ((v5 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v10 = 0;
  }

  result = sub_31D7E8(v4, v5 & 0xFFFFFFFFFFFFLL, 1);
  *a3 = v6;
  a3[1] = v10;
  a3[2] = result;
  a3[3] = v12;
  a3[4] = v5;
  return result;
}

char *sub_6D6D8C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t *a5@<X8>)
{
  v10 = sub_2B51D8(a1, a2 & 0xFFFFFFFFFFFFLL);
  if (a3 && *(a1 + 7772) == 1)
  {
    v11 = sub_30C50C(a1 + 3896, a2, 0);
    v12 = &v11[-*v11];
    if (*v12 < 5u)
    {
      v13 = 0;
    }

    else
    {
      v13 = *(v12 + 2);
      if (v13)
      {
        v13 += &v11[*&v11[v13]];
      }
    }

    v14 = v13 + ((a2 >> 30) & 0x3FFFC) + 4 + *(v13 + ((a2 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v14 = 0;
  }

  result = sub_31D7E8(a1, a2 & 0xFFFFFFFFFFFFLL, a4);
  *a5 = v10;
  a5[1] = v14;
  a5[2] = result;
  a5[3] = v16;
  a5[4] = a2;
  return result;
}

uint64_t sub_6D6E64(uint64_t a1, void *a2, unint64_t a3)
{
  v3 = a3;
  result = sub_6D3F8C(a2 + 1262, a3);
  if (*(result + 112) != -1)
  {
    return result;
  }

  v7 = result;
  v8 = *(a1 + 712);
  v9 = sub_6D3F8C(a2 + 1262, v3);
  v10 = v3 + 1;
  v11 = 0xEF7BDEF7BDEF7BDFLL * ((a2[1263] - a2[1262]) >> 3);
  if (v3 + 1 > v11)
  {
    v12 = v3 + 1;
  }

  else
  {
    v12 = 0xEF7BDEF7BDEF7BDFLL * ((a2[1263] - a2[1262]) >> 3);
  }

  if (v3 + 1 >= v11)
  {
LABEL_14:
    v10 = -1;
    if (*(v7 + 72) == -1)
    {
      goto LABEL_19;
    }

LABEL_39:
    if (*(v7 + 96) == -1 && *(v7 + 104) == -1 && v10 != -1)
    {
      v29 = sub_6D3F8C(a2 + 1262, v10);
      if (*(v29 + 96) != -1 || *(v29 + 104) != -1)
      {
        v30 = sub_6D3F8C(a2 + 1262, v10);
        *(v7 + 96) = v30[12];
        *(v7 + 104) = v30[13];
        *(v7 + 136) = v30[17];
      }
    }

    goto LABEL_49;
  }

  v13 = v9[4] + ((v9[1] - *v9) >> 3) - 1;
  while (1)
  {
    v14 = sub_6D3F8C(a2 + 1262, v10);
    if (*v14 != *(v14 + 8) && *(v14 + 24) != 0)
    {
      break;
    }

    if (v12 == ++v10)
    {
      goto LABEL_14;
    }
  }

  if (sub_4D2544(a2, v13, 1, *(v14 + 32), 1u, v15) > v8)
  {
    v10 = -1;
  }

  if (*(v7 + 72) != -1)
  {
    goto LABEL_39;
  }

LABEL_19:
  v17 = 0;
  v18.i64[0] = -1;
  v18.i64[1] = -1;
  v19 = *(v7 + 120);
  v20 = *(v7 + 88);
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(*(v7 + 80), v18), vceqq_s64(*(v7 + 96), v18))))) & 1) != 0 || *(v7 + 112) != -1 || v19 != -1)
  {
    goto LABEL_34;
  }

  v17 = 0;
  if (*(v7 + 224))
  {
    v20 = -1;
    goto LABEL_34;
  }

  v20 = -1;
  if (v10 == -1)
  {
LABEL_34:
    if (!v17 && v20 == -1 && v19 == -1)
    {
      goto LABEL_49;
    }

    goto LABEL_39;
  }

  v21 = sub_6D3F8C(a2 + 1262, v10);
  if (v21[9] == -1 && v21[10] == -1 && v21[11] == -1 && v21[15] == -1 && v21[12] == -1 && v21[13] == -1)
  {
    v20 = *(v7 + 88);
    v19 = *(v7 + 120);
    v17 = *(v7 + 72) != -1;
    goto LABEL_34;
  }

  if (sub_72E82C(a1 + 7208, v7))
  {
    v22 = sub_6D3F8C(a2 + 1262, v10);
    *(v7 + 72) = *(v22 + 72);
    v23 = *(v22 + 104);
    v24 = *(v22 + 120);
    v25 = *(v22 + 132);
    *(v7 + 88) = *(v22 + 88);
    *(v7 + 132) = v25;
    *(v7 + 120) = v24;
    *(v7 + 104) = v23;
    sub_72E9A0(a1 + 7208, v7);
  }

LABEL_49:
  v31 = *(a1 + 712);
  v32 = *(a1 + 656);
  result = sub_6D3F8C(a2 + 1262, v3);
  v33 = result;
  while (v3)
  {
    result = sub_6D3F8C(a2 + 1262, --v3);
    v35 = *(result + 8);
    if (*result != v35 && *(result + 24) != 0)
    {
      v37 = *(result + 32);
      if (v32)
      {
        v38 = v37 + 1;
      }

      else
      {
        v38 = v37 + ((v35 - *result) >> 3) - 1;
      }

      result = sub_4D2544(a2, v38, 1, *(v33 + 32), 1u, v34);
      if (result <= v31)
      {
        v39 = sub_6D3F8C(a2 + 1262, v3);
        result = sub_6E4010(v7 + 72, v39 + 72);
        if (result)
        {
          *(v7 + 24) = 0;
        }
      }

      return result;
    }
  }

  return result;
}

BOOL sub_6D71C0(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  if (a2[28])
  {
    return 0;
  }

  v5 = *(a2 + 6);
  v6 = v5 - 20;
  v7 = (v5 - 20) > 0x2E || ((1 << (v5 - 20)) & 0x6F0000006783) == 0;
  if (v7 && (v5 - 1) >= 2)
  {
    return 0;
  }

  v8 = v6 > 0x2D;
  v9 = (1 << v6) & 0x250000002281;
  if (!v8 && v9 != 0 || v5 == 1)
  {
    v12 = *(a3 + 6);
    if (((v12 - 21) > 0x2D || ((1 << (v12 - 21)) & 0x250000002281) == 0) && v12 != 2)
    {
      return 0;
    }
  }

  else
  {
    v23 = *(a3 + 6);
    if (((v23 - 20) > 0x2D || ((1 << (v23 - 20)) & 0x250000002281) == 0) && v23 != 1)
    {
      return 0;
    }
  }

  if (*a2 == a2[1])
  {
    return 0;
  }

  v13 = a3[1];
  if (*a3 == v13)
  {
    return 0;
  }

  v15 = **a2;
  v16 = *(v13 - 8);
  v17 = *a1;
  v18 = sub_2B51D8(*a1, v16 & 0xFFFFFFFFFFFFLL);
  if (*(v17 + 7772) == 1)
  {
    v19 = sub_30C50C(v17 + 3896, v16, 0);
    v20 = &v19[-*v19];
    if (*v20 < 5u)
    {
      v21 = 0;
    }

    else
    {
      v21 = *(v20 + 2);
      if (v21)
      {
        v21 += &v19[*&v19[v21]];
      }
    }

    v22 = v21 + ((v16 >> 30) & 0x3FFFC) + 4 + *(v21 + ((v16 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v22 = 0;
  }

  v64 = v18;
  v65[0] = v22;
  v65[1] = sub_31D7E8(v17, v16 & 0xFFFFFFFFFFFFLL, 1);
  v65[2] = v24;
  v65[3] = v16;
  result = sub_70EE0C((a1 + 179), &v64);
  if (result)
  {
    v26 = *a1;
    v27 = sub_2B51D8(*a1, v15 & 0xFFFFFFFFFFFFLL);
    if (*(v26 + 7772) == 1)
    {
      v28 = sub_30C50C(v26 + 3896, v15, 0);
      v29 = &v28[-*v28];
      if (*v29 < 5u)
      {
        v30 = 0;
      }

      else
      {
        v30 = *(v29 + 2);
        if (v30)
        {
          v30 += &v28[*&v28[v30]];
        }
      }

      v31 = (v30 + ((v15 >> 30) & 0x3FFFC) + 4 + *(v30 + ((v15 >> 30) & 0x3FFFC) + 4));
    }

    else
    {
      v31 = 0;
    }

    v32 = sub_31D7E8(v26, v15 & 0xFFFFFFFFFFFFLL, 1);
    v68[0] = v27;
    v68[1] = v31;
    v68[2] = v32;
    v68[3] = v33;
    v69 = v15;
    v34 = *a1;
    v35 = sub_2B51D8(*a1, v16 & 0xFFFFFFFFFFFFLL);
    if (*(v34 + 7772) == 1)
    {
      v36 = sub_30C50C(v34 + 3896, v16, 0);
      v37 = &v36[-*v36];
      if (*v37 < 5u)
      {
        v38 = 0;
      }

      else
      {
        v38 = *(v37 + 2);
        if (v38)
        {
          v38 += &v36[*&v36[v38]];
        }
      }

      v39 = (v38 + ((v16 >> 30) & 0x3FFFC) + 4 + *(v38 + ((v16 >> 30) & 0x3FFFC) + 4));
    }

    else
    {
      v39 = 0;
    }

    v40 = sub_31D7E8(v34, v16 & 0xFFFFFFFFFFFFLL, 1);
    v66[0] = v35;
    v66[1] = v39;
    v66[2] = v40;
    v66[3] = v41;
    v67 = v16;
    v42 = (v68[0] - *v68[0]);
    v43 = *v42;
    if (BYTE6(v69))
    {
      if (v43 < 0x47)
      {
        goto LABEL_57;
      }

      v44 = v42[35];
      if (!v44)
      {
        goto LABEL_57;
      }

      v45 = 4096;
    }

    else
    {
      if (v43 < 0x47)
      {
        goto LABEL_57;
      }

      v44 = v42[35];
      if (!v44)
      {
        goto LABEL_57;
      }

      v45 = 2048;
    }

    if ((*(v68[0] + v44) & v45) != 0)
    {
      v46 = BYTE6(v16);
      v47 = 1;
      goto LABEL_58;
    }

LABEL_57:
    v47 = sub_3137AC(v68);
    v35 = v66[0];
    v46 = BYTE6(v67);
LABEL_58:
    v48 = (v35 - *v35);
    v49 = *v48;
    if (v46)
    {
      if (v49 < 0x47)
      {
        goto LABEL_67;
      }

      v50 = v48[35];
      if (!v48[35])
      {
        goto LABEL_67;
      }

      v51 = 4096;
    }

    else
    {
      if (v49 < 0x47)
      {
        goto LABEL_67;
      }

      v50 = v48[35];
      if (!v48[35])
      {
        goto LABEL_67;
      }

      v51 = 2048;
    }

    if ((*(v35 + v50) & v51) != 0)
    {
      v52 = 1;
      goto LABEL_68;
    }

LABEL_67:
    v52 = sub_3137AC(v66);
LABEL_68:
    if (v47 == v52)
    {
      sub_5E94A4(*a1, v15, 1, &v62);
      sub_6D88D4(&v62, &v64);
      sub_5E9738(&v62);
      sub_5E94A4(*a1, v16, 1, v61);
      sub_6D88D4(v61, &v62);
      sub_5E9738(v61);
      if (sub_31052C(&v64) && sub_31052C(&v62) && sub_BB4E4(v65, v63) && (v53 = sub_6D89E0(*a1, v15 & 0xFFFFFFFFFFFFLL), v53 == sub_6D89E0(*a1, v16 & 0xFFFFFFFFFFFFLL)))
      {
        v60 = a1;
        v54 = sub_6D8A24(&v60, a2, a2[29] + 1, (a2[1] - *a2) >> 3);
        if (v54)
        {
          v55 = a3[29];
          v56 = *a3;
          v61[0] = v60;
          if (v55)
          {
            v57 = &v56[v55];
            do
            {
              v54 = sub_703240(v61, v56++);
              if (v56 == v57)
              {
                v58 = 0;
              }

              else
              {
                v58 = v54;
              }
            }

            while ((v58 & 1) != 0);
          }

          else
          {
            v54 = 1;
          }
        }

        v59 = v54;
      }

      else
      {
        v59 = 0;
      }

      sub_310F30(&v62);
      sub_310F30(&v64);
      return v59;
    }

    return 0;
  }

  return result;
}

void sub_6D76E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  sub_310F30(&a13);
  sub_310F30(va);
  _Unwind_Resume(a1);
}

void sub_6D7748(uint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = 0xEF7BDEF7BDEF7BDFLL * ((*(a2 + 10104) - *(a2 + 10096)) >> 3);
  if (v4 <= a3 || v4 <= a4)
  {
    return;
  }

  v10 = sub_6D3F8C((a2 + 10096), a3);
  v11 = sub_6D3F8C((a2 + 10096), a4);
  if (*v10 == *(v10 + 8))
  {
    return;
  }

  v12 = v11;
  if (*v11 == *(v11 + 8))
  {
    return;
  }

  if (!*(v10 + 24) || *(v11 + 24) == 0)
  {
    return;
  }

  sub_5EF9A8(&v37, v10);
  sub_6D7B84(&v37, v12, v14, v15);
  v34 = a1;
  if (a3 + 1 >= a4)
  {
    sub_4D0560();
    v23 = v22;
    v25 = v24;
    v26 = *(v10 + 32);
    v28 = *v10;
    v27 = *(v10 + 8);
    sub_4D0560();
    sub_6D7DBC(v23, v25 + v26 + ((v27 - v28) >> 3) - 1, v30, *(v12 + 32) + v29 + ((*(v12 + 8) - *v12) >> 3), &v37);
    sub_6D7F40(&v37);
    v31 = *(v10 + 24);
    if ((v31 - 6) >= 2)
    {
      v32 = v31 - 86;
      if ((v31 - 86) >= 2 && (v31 - 41) >= 0x13)
      {
        v33 = v31 - 7;
        if ((v33 > 0x3B || ((1 << v33) & 0xE00000000C38011) == 0) && v32 >= 2)
        {
          v39 = sub_6D807C(v34, a2, v10, v12);
          sub_6D83AC((v10 + 40), (v12 + 40), &v35);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          *__p = v35;
          v41 = v36;
        }
      }
    }

    sub_6D8620(v10, &v37);
    sub_6D86EC(v12);
    sub_706E58(0, 0, a2);
  }

  else
  {
    v16 = sub_6D3F8C((a2 + 10096), a3 + 1);
    v17 = *v16;
    v18 = *(v16 + 8);
    if (!*(v16 + 24))
    {
      v19 = v18 - v17;
      goto LABEL_22;
    }

    v19 = v18 - v17;
    v20 = *v12;
    if (v18 - v17 == *(v12 + 8) - *v12)
    {
      if (v17 != v18)
      {
        v21 = *v16;
        while (__PAIR64__(*(v21 + 2), *v21) == __PAIR64__(WORD2(*v20), *v20) && v21[6] == BYTE6(*v20))
        {
          v21 += 8;
          ++v20;
          if (v21 == v18)
          {
            goto LABEL_22;
          }
        }

        goto LABEL_26;
      }

LABEL_22:
      sub_3790B0(&v37, __dst, v17, v18, v19 >> 3);
      operator new();
    }
  }

LABEL_26:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v37)
  {
    __dst = v37;
    operator delete(v37);
  }
}

void sub_6D7B2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  if (__p)
  {
    operator delete(__p);
  }

  sub_5ECFBC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_6D7B84(uint64_t result, uint64_t a2, uint8x8_t a3, uint8x8_t a4)
{
  *(result + 224) = (*(result + 224) | *(a2 + 224)) & 1;
  *(result + 225) = (*(result + 225) | *(a2 + 225)) & 1;
  *(result + 225) = (*(result + 226) | *(a2 + 226)) & 1;
  *(result + 227) = (*(result + 227) | *(a2 + 227)) & 1;
  *(result + 240) = (*(result + 240) | *(a2 + 240)) & 1;
  *(result + 241) = (*(result + 241) | *(a2 + 241)) & 1;
  *(result + 242) = (*(result + 242) | *(a2 + 242)) & 1;
  *(result + 243) = (*(result + 243) | *(a2 + 243)) & 1;
  a3.i32[0] = *(a2 + 152);
  a4.i32[0] = *(result + 152);
  v4 = vorr_s8(*&vmovl_u8(a4), *&vmovl_u8(a3));
  *(result + 152) = vuzp1_s8(v4, v4).u32[0];
  v5 = *(result + 184);
  if (v5 == 98)
  {
    v5 = *(a2 + 184);
  }

  *(result + 184) = v5;
  *(result + 244) = (*(result + 244) | *(a2 + 244)) & 1;
  *(result + 245) = (*(result + 245) | *(a2 + 245)) & 1;
  v6 = *(a2 + 72);
  v7 = *(result + 72);
  v8 = *(result + 80);
  if (v7 <= v6)
  {
    v9 = *(a2 + 72);
  }

  else
  {
    v9 = *(result + 72);
  }

  if (v6 == -1)
  {
    v9 = *(result + 72);
  }

  if (v7 != -1)
  {
    v6 = v9;
  }

  *(result + 72) = v6;
  v10 = *(a2 + 80);
  if (v8 <= v10)
  {
    v11 = *(a2 + 80);
  }

  else
  {
    v11 = v8;
  }

  if (v10 == -1)
  {
    v11 = v8;
  }

  if (v8 != -1)
  {
    v10 = v11;
  }

  *(result + 80) = v10;
  v12 = *(a2 + 88);
  v13 = *(result + 88);
  v14 = *(result + 96);
  if (v13 <= v12)
  {
    v15 = *(a2 + 88);
  }

  else
  {
    v15 = *(result + 88);
  }

  if (v12 == -1)
  {
    v15 = *(result + 88);
  }

  if (v13 != -1)
  {
    v12 = v15;
  }

  *(result + 88) = v12;
  v16 = *(a2 + 96);
  if (v14 <= v16)
  {
    v17 = *(a2 + 96);
  }

  else
  {
    v17 = v14;
  }

  if (v16 == -1)
  {
    v17 = v14;
  }

  if (v14 != -1)
  {
    v16 = v17;
  }

  *(result + 96) = v16;
  v18 = *(a2 + 104);
  v19 = *(result + 104);
  v20 = *(result + 112);
  if (v19 <= v18)
  {
    v21 = *(a2 + 104);
  }

  else
  {
    v21 = *(result + 104);
  }

  if (v18 == -1)
  {
    v21 = *(result + 104);
  }

  if (v19 != -1)
  {
    v18 = v21;
  }

  *(result + 104) = v18;
  v22 = *(a2 + 112);
  if (v20 <= v22)
  {
    v23 = *(a2 + 112);
  }

  else
  {
    v23 = v20;
  }

  if (v22 == -1)
  {
    v23 = v20;
  }

  if (v20 != -1)
  {
    v22 = v23;
  }

  *(result + 112) = v22;
  v24 = *(result + 120);
  v25 = *(a2 + 120);
  if (v24 <= v25)
  {
    v26 = *(a2 + 120);
  }

  else
  {
    v26 = *(result + 120);
  }

  if (v25 == -1)
  {
    v26 = *(result + 120);
  }

  if (v24 == -1)
  {
    v27 = *(a2 + 120);
  }

  else
  {
    v27 = v26;
  }

  *(result + 120) = v27;
  v28 = *(result + 136);
  v29 = *(a2 + 136);
  if (v28 <= v29)
  {
    v30 = *(a2 + 136);
  }

  else
  {
    v30 = *(result + 136);
  }

  if (v29 == -1)
  {
    v30 = *(result + 136);
  }

  if (v28 == -1)
  {
    v31 = *(a2 + 136);
  }

  else
  {
    v31 = v30;
  }

  *(result + 136) = v31;
  v32 = *(result + 144);
  if (!v32)
  {
    v32 = *(a2 + 144);
  }

  *(result + 144) = v32;
  v33 = *(result + 128);
  if (v33 != *(a2 + 128))
  {
    v33 = 0;
  }

  *(result + 128) = v33;
  return result;
}

uint64_t sub_6D7DBC(void *a1, unint64_t a2, void *a3, unint64_t a4, uint64_t a5)
{
  if (a1)
  {
    if (a3)
    {
      while (1)
      {
        v11 = sub_4D1DC0(a1);
        v12 = sub_4D1DC0(a3);
        if (a2 >= v11 || a4 >= v12)
        {
          if (a2 < v11 == a4 < v12)
          {
            return a5;
          }
        }

        else
        {
          v13 = sub_4D1F50(a1, a2);
          if (v13 == sub_4D1F50(a3, a4))
          {
            return a5;
          }
        }

        v10 = *(sub_4D1F50(a1, a2) + 32);
        LODWORD(v17) = v10;
        BYTE6(v17) = BYTE6(v10);
        WORD2(v17) = WORD2(v10);
        sub_2B5AD0(a5, &v17);
        ++a2;
      }
    }

    while (a2 < sub_4D1DC0(a1))
    {
      v14 = *(sub_4D1F50(a1, a2) + 32);
      LODWORD(v17) = v14;
      BYTE6(v17) = BYTE6(v14);
      WORD2(v17) = WORD2(v14);
      sub_2B5AD0(a5, &v17);
      ++a2;
    }
  }

  else if (a3)
  {
    while (a4 < sub_4D1DC0(a3))
    {
      v15 = *(sub_4D1F50(0, a2) + 32);
      LODWORD(v17) = v15;
      BYTE6(v17) = BYTE6(v15);
      WORD2(v17) = WORD2(v15);
      sub_2B5AD0(a5, &v17);
      ++a2;
    }
  }

  return a5;
}

uint64_t sub_6D7F40(uint64_t result)
{
  v2 = *result;
  v1 = *(result + 8);
  if (*result == v1)
  {
LABEL_18:
    if (v2 != v1)
    {
      *(result + 8) = v2;
    }

    return result;
  }

  if (v2 + 2 != v1)
  {
    v3 = 0;
    LODWORD(v4) = *v2;
    while (1)
    {
      v5 = v4;
      v4 = *&v2[v3 + 2];
      if (v5 == v4 && LOWORD(v2[v3 + 1]) == WORD2(v4))
      {
        v6 = &v2[v3];
        if (BYTE2(v2[v3 + 1]) == BYTE6(v4))
        {
          break;
        }
      }

      v3 += 2;
      if (&v2[v3 + 2] == v1)
      {
        return result;
      }
    }

    if (v6 != v1)
    {
      v7 = &v2[v3 + 4];
      if (v7 != v1)
      {
        do
        {
          if (__PAIR64__(*(v6 + 2), *v6) != __PAIR64__(WORD2(*v7), *v7) || *(v6 + 6) != BYTE6(*v7))
          {
            v8 = *(v7 + 3);
            v6[2] = *v7;
            v6 += 2;
            *(v6 + 3) = v8;
          }

          v7 += 2;
        }

        while (v7 != v1);
        v1 = *(result + 8);
      }

      v2 = v6 + 2;
      goto LABEL_18;
    }
  }

  return result;
}

uint64_t sub_6D807C(uint64_t *a1, uint64_t a2, int ***a3, int ***a4)
{
  v8 = *a1;
  v9 = **a3;
  v10 = sub_2B51D8(*a1, v9 & 0xFFFFFFFFFFFFLL);
  if (*(v8 + 7772) == 1)
  {
    v11 = sub_30C50C(v8 + 3896, v9, 0);
    v12 = &v11[-*v11];
    if (*v12 < 5u)
    {
      v13 = 0;
    }

    else
    {
      v13 = *(v12 + 2);
      if (v13)
      {
        v13 += &v11[*&v11[v13]];
      }
    }

    v14 = (v13 + ((v9 >> 30) & 0x3FFFC) + 4 + *(v13 + ((v9 >> 30) & 0x3FFFC) + 4));
  }

  else
  {
    v14 = 0;
  }

  v48[0] = v10;
  v48[1] = v14;
  v48[2] = sub_31D7E8(v8, v9 & 0xFFFFFFFFFFFFLL, 1);
  v48[3] = v15;
  v48[4] = v9;
  v16 = a3[1];
  v17 = *a1;
  v18 = *(v16 - 1);
  v19 = sub_2B51D8(*a1, v18 & 0xFFFFFFFFFFFFLL);
  if (*(v17 + 7772) == 1)
  {
    v20 = sub_30C50C(v17 + 3896, v18, 0);
    v21 = &v20[-*v20];
    if (*v21 < 5u)
    {
      v22 = 0;
    }

    else
    {
      v22 = *(v21 + 2);
      if (v22)
      {
        v22 += &v20[*&v20[v22]];
      }
    }

    v23 = (v22 + ((v18 >> 30) & 0x3FFFC) + 4 + *(v22 + ((v18 >> 30) & 0x3FFFC) + 4));
  }

  else
  {
    v23 = 0;
  }

  v47[0] = v19;
  v47[1] = v23;
  v47[2] = sub_31D7E8(v17, v18 & 0xFFFFFFFFFFFFLL, 1);
  v47[3] = v24;
  v47[4] = v18;
  v25 = *a1;
  v26 = **a4;
  v27 = sub_2B51D8(*a1, v26 & 0xFFFFFFFFFFFFLL);
  if (*(v25 + 7772) == 1)
  {
    v28 = sub_30C50C(v25 + 3896, v26, 0);
    v29 = &v28[-*v28];
    if (*v29 < 5u)
    {
      v30 = 0;
    }

    else
    {
      v30 = *(v29 + 2);
      if (v30)
      {
        v30 += &v28[*&v28[v30]];
      }
    }

    v31 = (v30 + ((v26 >> 30) & 0x3FFFC) + 4 + *(v30 + ((v26 >> 30) & 0x3FFFC) + 4));
  }

  else
  {
    v31 = 0;
  }

  v46[0] = v27;
  v46[1] = v31;
  v46[2] = sub_31D7E8(v25, v26 & 0xFFFFFFFFFFFFLL, 1);
  v46[3] = v32;
  v46[4] = v26;
  v33 = a4[1];
  v34 = *a1;
  v35 = *(v33 - 1);
  v36 = sub_2B51D8(*a1, v35 & 0xFFFFFFFFFFFFLL);
  if (*(v34 + 7772) == 1)
  {
    v37 = sub_30C50C(v34 + 3896, v35, 0);
    v38 = &v37[-*v37];
    if (*v38 < 5u)
    {
      v39 = 0;
    }

    else
    {
      v39 = *(v38 + 2);
      if (v39)
      {
        v39 += &v37[*&v37[v39]];
      }
    }

    v40 = (v39 + ((v35 >> 30) & 0x3FFFC) + 4 + *(v39 + ((v35 >> 30) & 0x3FFFC) + 4));
  }

  else
  {
    v40 = 0;
  }

  v45[0] = v36;
  v45[1] = v40;
  v45[2] = sub_31D7E8(v34, v35 & 0xFFFFFFFFFFFFLL, 1);
  v45[3] = v41;
  v45[4] = v35;
  v42 = sub_710C1C((a1 + 179), a2, v48, v47);
  v43 = sub_710C1C((a1 + 179), a2, v46, v45);
  return sub_70DD90(a1 + 179, 0, v42 + v43);
}

uint64_t sub_6D83AC@<X0>(char **a1@<X1>, void *a2@<X2>, size_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = a2[1];
  if (v4 != *a2)
  {
    if (((v4 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v5 = 0;
  v6 = *a1;
  v7 = a1[1];
  v8 = *a1;
  if (*a1 != v7)
  {
    v8 = *a1;
    while ((v8[2] & 1) == 0)
    {
      v8 += 4;
      if (v8 == v7)
      {
        goto LABEL_28;
      }
    }
  }

  if (v8 == v7)
  {
LABEL_28:
    sub_702E20(a3, 0, v6, v7, (v7 - v6) >> 2);
  }

  else
  {
    for (; v6 != v7; v6 += 4)
    {
      if ((v6[2] & 1) == 0)
      {
        v9 = a3[2];
        if (v5 < v9)
        {
          *v5++ = *v6;
        }

        else
        {
          v10 = *a3;
          v11 = v5 - *a3;
          v12 = (v11 >> 2) + 1;
          if (v12 >> 62)
          {
            sub_1794();
          }

          v13 = v9 - v10;
          if (v13 >> 1 > v12)
          {
            v12 = v13 >> 1;
          }

          if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v14 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v14 = v12;
          }

          if (v14)
          {
            if (!(v14 >> 62))
            {
              operator new();
            }

            sub_1808();
          }

          v15 = (4 * (v11 >> 2));
          *v15 = *v6;
          v5 = v15 + 1;
          memcpy(0, v10, v11);
          *a3 = 0;
          a3[1] = v5;
          a3[2] = 0;
          if (v10)
          {
            operator delete(v10);
          }
        }

        a3[1] = v5;
      }
    }
  }

  return sub_6D8760(a3, sub_6D88A4, sub_6D88C4);
}

void sub_6D85F4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_6D8620(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    *(a1 + 24) = *(a2 + 24);
  }

  else
  {
    sub_30945C(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
    *(a1 + 24) = *(a2 + 24);
    sub_596098((a1 + 40), *(a2 + 40), *(a2 + 48), (*(a2 + 48) - *(a2 + 40)) >> 2);
  }

  *(a1 + 64) = *(a2 + 64);
  v4 = *(a2 + 72);
  v5 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v5;
  *(a1 + 72) = v4;
  v6 = *(a2 + 120);
  v7 = *(a2 + 136);
  v8 = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 152) = v8;
  *(a1 + 136) = v7;
  *(a1 + 120) = v6;
  v9 = *(a2 + 184);
  v10 = *(a2 + 200);
  v11 = *(a2 + 216);
  *(a1 + 230) = *(a2 + 230);
  *(a1 + 216) = v11;
  *(a1 + 200) = v10;
  *(a1 + 184) = v9;
  return a1;
}

double sub_6D86EC(uint64_t a1)
{
  *(a1 + 24) = 0;
  *(a1 + 8) = *a1;
  *(a1 + 48) = *(a1 + 40);
  *(a1 + 64) = 0;
  v1.f64[0] = NAN;
  v1.f64[1] = NAN;
  *(a1 + 72) = v1;
  *(a1 + 88) = v1;
  *(a1 + 104) = v1;
  *(a1 + 120) = -1;
  *(a1 + 128) = 0;
  *(a1 + 136) = -1;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = vnegq_f64(v1);
  *(a1 + 176) = 0;
  *(a1 + 184) = 98;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  result = NAN;
  *(a1 + 208) = xmmword_229B660;
  *(a1 + 232) = 0;
  *(a1 + 245) = 0;
  *(a1 + 224) = 0;
  return result;
}

uint64_t sub_6D8760(unsigned int **a1, unsigned int (*a2)(unint64_t, unint64_t), uint64_t (*a3)(unint64_t, unint64_t))
{
  v7 = *a1;
  v8 = a1[1];
  v9 = 126 - 2 * __clz((v8 - v7) >> 2);
  v16 = a2;
  if (v8 == v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  result = sub_706F3C(v7, v8, &v16, v10, 1);
  v12 = a1[1];
  if (*a1 == v12)
  {
    v12 = *a1;
  }

  else
  {
    v13 = *a1 + 1;
    while (v13 != v12)
    {
      result = a3(*(v13 - 1), *v13);
      ++v13;
      if (result)
      {
        for (i = v13 - 2; v13 != v12; ++v13)
        {
          v4 = v4 & 0xFFFFFFFF00000000 | *i;
          v3 = v3 & 0xFFFFFFFF00000000 | *v13;
          result = a3(v4, v3);
          if ((result & 1) == 0)
          {
            v15 = *(v13 + 2);
            *(i++ + 2) = *v13;
            *(i + 2) = v15;
          }
        }

        v12 = i + 1;
        if (i + 1 == a1[1])
        {
          return result;
        }

        goto LABEL_17;
      }
    }
  }

  if (v12 != a1[1])
  {
LABEL_17:
    a1[1] = v12;
  }

  return result;
}

uint64_t sub_6D88A4(unsigned int a1, __int16 a2)
{
  if (a1 >= a2)
  {
    return (a1 == a2) & HIWORD(a1);
  }

  else
  {
    return 1;
  }
}

double sub_6D88D4@<D0>(uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  if (v5 == v6)
  {
LABEL_9:
    *(a3 + 112) = 0u;
    *(a3 + 128) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 96) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    *(a3 + 56) = sub_12331FC();
    *(a3 + 128) = 0;
    *(a3 + 136) = 0;
    *(a3 + 120) = 0;
    result = 0.0;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 96) = 0u;
    *(a3 + 111) = 0;
  }

  else
  {
    v7 = v5;
    do
    {
      if (!*v7)
      {
        v8 = a3;
        v5 = v7;

        goto LABEL_8;
      }

      v7 += 144;
    }

    while (v7 != v6);
    if (v5 == v6)
    {
      goto LABEL_9;
    }

    v8 = a3;

LABEL_8:
    sub_704AE0(v8, v5);
  }

  return result;
}

void sub_6D89A4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
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

  operator delete(*(v1 + 8));
  _Unwind_Resume(exception_object);
}

uint64_t sub_6D89E0(uint64_t a1, unint64_t a2)
{
  v2 = sub_2B51D8(a1, a2);
  v3 = (v2 - *v2);
  if (*v3 >= 0x2Fu && (v4 = v3[23]) != 0)
  {
    return *(v2 + v4);
  }

  else
  {
    return 32;
  }
}

unint64_t sub_6D8A24(uint64_t **a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a2;
  v8 = *a1;
  if (8 * a3 == 8 * a4)
  {
    return 1;
  }

  v6 = (8 * a4 + v4);
  v7 = (8 * a3 + v4);
  do
  {
    result = sub_703240(&v8, v7);
    if (!result)
    {
      break;
    }

    ++v7;
  }

  while (v7 != v6);
  return result;
}

uint64_t sub_6D8A9C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 1171) != 1)
  {
    return 0;
  }

  sub_4D1EF8(a2, a3);
  if (!v7)
  {
    return 0;
  }

  v8 = sub_4D1EF8(a2, a3);
  if (*(v8 + 48 * v9 - 8) != 1)
  {
    return 0;
  }

  if (sub_4D1DC0(a2) - 1 == a3)
  {
    return 0;
  }

  v10 = *(sub_4D1F50(a2, a3) + 32);
  v11 = *(sub_4D1F50(a2, a3 + 1) + 32);
  if (v10 != v11)
  {
    return 0;
  }

  result = 0;
  if (WORD2(v10) == WORD2(v11) && ((v11 & 0xFF000000000000) == 0) == BYTE6(v10))
  {
    *(a4 + 24) = 0;
    *(a4 + 8) = *a4;
    *(a4 + 48) = *(a4 + 40);
    *(a4 + 64) = 0;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    *(a4 + 72) = v13;
    *(a4 + 88) = v13;
    *(a4 + 104) = v13;
    *(a4 + 120) = -1;
    *(a4 + 128) = 0;
    *(a4 + 136) = -1;
    *(a4 + 144) = 0;
    *(a4 + 152) = 0;
    *(a4 + 160) = vnegq_f64(v13);
    *(a4 + 176) = 0;
    *(a4 + 184) = 98;
    *(a4 + 192) = 0;
    *(a4 + 200) = 0;
    *(a4 + 208) = xmmword_229B660;
    *(a4 + 232) = 0;
    *(a4 + 245) = 0;
    *(a4 + 224) = 0;
    v16 = BYTE6(v10);
    v15 = WORD2(v10);
    __src = v10;
    v19 = BYTE6(v11);
    v18 = WORD2(v11);
    v17 = v11;
    sub_7061AC(a4, &__src, &v20, 2uLL);
    *(a4 + 24) = 97;
    return 1;
  }

  return result;
}

uint64_t sub_6D8C64(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_4D1F50(a2, a3);
  v9 = *(v8 + 32) | (*(v8 + 36) << 32);
  v10 = sub_2B51D8(*a1, v9);
  v11 = (v10 - *v10);
  if (*v11 < 0x9Bu)
  {
    return 0;
  }

  v12 = v11[77];
  if (!v12 || (*(v10 + v12 + 3) & 2) == 0 || *(a1 + 681) != 1)
  {
    return 0;
  }

  sub_6D3D8C(*a1, v9, &v37);
  v13 = v37;
  v14 = v38;
  if (v37 == v38)
  {
    result = 0;
    goto LABEL_37;
  }

  do
  {
    v16 = sub_30CC30(*a1, *v13);
    v17 = (v16 - *v16);
    if (*v17 < 0xDu)
    {
      goto LABEL_7;
    }

    v18 = v17[6];
    if (!v18)
    {
      goto LABEL_7;
    }

    v19 = (v16 + v18 + *(v16 + v18));
    v20 = (v19 - *v19);
    if (*v20 >= 5u && (v21 = v20[2]) != 0)
    {
      v22 = *(v19 + v21);
      if (v22 >= 0xF || ((0x7EFFu >> v22) & 1) == 0)
      {
        goto LABEL_7;
      }

      v34 = dword_229EB2C[v22];
    }

    else
    {
      v34 = 0;
    }

    sub_320200(*a1, *v13, &__p);
    v23 = sub_4D1DC0(a2);
    v24 = __p;
    v25 = v36;
    if (v23 - a3 < (v36 - __p) >> 3)
    {
      v26 = 3;
      v27 = __p;
      if (!__p)
      {
        goto LABEL_28;
      }

LABEL_27:
      v36 = v27;
      operator delete(v27);
      goto LABEL_28;
    }

    sub_4D0560();
    if (v24 == v25)
    {
LABEL_24:
      *(a4 + 24) = v34;
      if (&__p != a4)
      {
        sub_30945C(a4, __p, v36, (v36 - __p) >> 3);
      }

      v26 = 1;
      v27 = __p;
      if (__p)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v30 = v28;
      v31 = v29 + a3;
      while (1)
      {
        v32 = *(sub_4D1F50(v30, v31) + 32);
        if (__PAIR64__(*(v24 + 2), *v24) != __PAIR64__(WORD2(v32), v32) || *(v24 + 6) != BYTE6(v32))
        {
          break;
        }

        v24 += 2;
        ++v31;
        if (v24 == v25)
        {
          goto LABEL_24;
        }
      }

      v26 = 0;
      v27 = __p;
      if (__p)
      {
        goto LABEL_27;
      }
    }

LABEL_28:
    if (v26 != 3 && v26)
    {
      result = 1;
      goto LABEL_36;
    }

LABEL_7:
    ++v13;
  }

  while (v13 != v14);
  result = 0;
LABEL_36:
  v13 = v37;
LABEL_37:
  if (v13)
  {
    v38 = v13;
    v33 = result;
    operator delete(v13);
    return v33;
  }

  return result;
}

void sub_6D8EEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
    v16 = a14;
    if (!a14)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v16 = a14;
    if (!a14)
    {
      goto LABEL_3;
    }
  }

  operator delete(v16);
  _Unwind_Resume(exception_object);
}

uint64_t sub_6D8F54(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 762) != 1)
  {
    return 0;
  }

  v7 = sub_4D1F50(a2, a3);
  v8 = sub_4D1F50(a2, a3 + 1);
  v9 = (*v7 - **v7);
  if (*v9 < 0x2Fu)
  {
    return 0;
  }

  v10 = v9[23];
  if (!v10 || *(*v7 + v10) != 8)
  {
    return 0;
  }

  *(a4 + 24) = 0;
  v11 = v7[4];
  v13 = *(a4 + 8);
  v12 = *(a4 + 16);
  if (v13 >= v12)
  {
    v19 = *a4;
    v20 = v13 - *a4;
    v21 = (v20 >> 3) + 1;
    if (v21 >> 61)
    {
      goto LABEL_33;
    }

    v22 = v12 - v19;
    if (v22 >> 2 > v21)
    {
      v21 = v22 >> 2;
    }

    if (v22 >= 0x7FFFFFFFFFFFFFF8)
    {
      v23 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v23 = v21;
    }

    if (v23)
    {
      if (!(v23 >> 61))
      {
        operator new();
      }

      goto LABEL_34;
    }

    v24 = v8;
    v25 = (8 * (v20 >> 3));
    *v25 = v11 & 0xFFFFFFFFFFFFFFLL;
    v14 = v25 + 1;
    memcpy(0, v19, v20);
    *a4 = 0;
    *(a4 + 8) = v14;
    *(a4 + 16) = 0;
    if (v19)
    {
      operator delete(v19);
    }

    *(a4 + 8) = v14;
    v15 = *(v24 + 32);
    v16 = *(a4 + 16);
    if (v14 < v16)
    {
      goto LABEL_7;
    }

LABEL_21:
    v26 = *a4;
    v27 = v14 - *a4;
    v28 = (v27 >> 3) + 1;
    if (!(v28 >> 61))
    {
      v29 = v16 - v26;
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

      if (!v30)
      {
        v31 = (8 * (v27 >> 3));
        *v31 = v15 & 0xFFFFFFFFFFFFFFLL;
        v17 = v31 + 1;
        memcpy(0, v26, v27);
        *a4 = 0;
        *(a4 + 8) = v17;
        *(a4 + 16) = 0;
        if (v26)
        {
          operator delete(v26);
        }

        goto LABEL_32;
      }

      if (!(v30 >> 61))
      {
        operator new();
      }

LABEL_34:
      sub_1808();
    }

LABEL_33:
    sub_1794();
  }

  *v13 = v11 & 0xFFFFFFFFFFFFFFLL;
  v14 = v13 + 1;
  *(a4 + 8) = v14;
  v15 = *(v8 + 32);
  v16 = *(a4 + 16);
  if (v14 >= v16)
  {
    goto LABEL_21;
  }

LABEL_7:
  *v14 = v15 & 0xFFFFFFFFFFFFFFLL;
  v17 = v14 + 1;
LABEL_32:
  *(a4 + 8) = v17;
  return 1;
}

BOOL sub_6D91B0(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = a3;
  if (sub_6E140C(a1, a2, a3, a4))
  {
    return 1;
  }

  sub_766F2C((a1 + 7448), a2, v5, &v45);
  *(a1 + 7288) = v45;
  v9 = *(a1 + 7296);
  if (v9)
  {
    *(a1 + 7304) = v9;
    operator delete(v9);
    *(a1 + 7296) = 0;
    *(a1 + 7304) = 0;
    *(a1 + 7312) = 0;
  }

  *(a1 + 7296) = *v46;
  *(a1 + 7312) = v47;
  v46[1] = 0;
  v47 = 0;
  v46[0] = 0;
  v10 = (a1 + 7320);
  v11 = *(a1 + 7320);
  if (v11)
  {
    *(a1 + 7328) = v11;
    operator delete(v11);
    *v10 = 0;
    *(a1 + 7328) = 0;
    *(a1 + 7336) = 0;
  }

  *v10 = *v48;
  v12 = v50;
  *(a1 + 7336) = v49;
  v48[1] = 0;
  v49 = 0;
  v48[0] = 0;
  *(a1 + 7344) = v12;
  v13 = (a1 + 7352);
  v14 = *(a1 + 7352);
  if (v14)
  {
    *(a1 + 7360) = v14;
    operator delete(v14);
    *v13 = 0;
    *(a1 + 7360) = 0;
    *(a1 + 7368) = 0;
  }

  *v13 = *__p;
  v15 = v53;
  *(a1 + 7368) = v52;
  __p[1] = 0;
  v52 = 0;
  __p[0] = 0;
  *(a1 + 7376) = v15;
  v16 = (a1 + 7384);
  v17 = *(a1 + 7384);
  if (v17)
  {
    *(a1 + 7392) = v17;
    operator delete(v17);
    *v16 = 0;
    *(a1 + 7392) = 0;
    *(a1 + 7400) = 0;
  }

  *v16 = v54;
  v18 = v56;
  *(a1 + 7400) = v55;
  v55 = 0;
  v54 = 0uLL;
  *(a1 + 7408) = v18;
  *(a1 + 7416) = v57[0];
  *(a1 + 7426) = *(v57 + 10);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v48[0])
  {
    v48[1] = v48[0];
    operator delete(v48[0]);
  }

  if (v46[0])
  {
    v46[1] = v46[0];
    operator delete(v46[0]);
  }

  result = sub_765858(a1 + 7288);
  if (result)
  {
    v19 = *(a1 + 7432);
    v20 = sub_765990((a1 + 7288));
    v21 = v20;
    v40 = v19;
    if (v20 <= 0x23 && ((1 << v20) & 0x804000010) != 0)
    {
      v22 = -1;
      v42 = 1;
    }

    else
    {
      v42 = 0;
      v22 = v19 + ~v5;
    }

    v23 = sub_765DE4(a1 + 7288);
    v24 = v23;
    v25 = *(a1 + 7288);
    v41 = v22;
    if (v25[172] == 1 && !*(a1 + 7344) || v25[173] == 1 && *(a1 + 7344) == 1 || v25[174] == 1 && *(a1 + 7344) == 2)
    {
      if (v23 < 4 || v23 - 60 < 4)
      {
        v26 = 0;
        *(a4 + 152) = 1;
        v21 = v23;
LABEL_41:
        *(a4 + 176) = sub_765A54(a1 + 7288);
        *(a4 + 160) = sub_765A78(a1 + 7288);
        *(a4 + 168) = sub_76569C(a1 + 7288);
        v30 = (v42 & 1) == 0 && (*(a4 + 152) & 1) == 0 && sub_7656C0((a1 + 7288));
        *(a4 + 153) = v30;
        *(a4 + 154) = sub_7656EC((a1 + 7288));
        *(a4 + 184) = v24;
        v31 = sub_766EFC(v13);
        *(a4 + 192) = v31 - sub_766EFC(v10);
        *(a4 + 200) = *(a1 + 7376) - *(a1 + 7344);
        if ((v26 & 1) == 0)
        {
          if (*(a4 + 152))
          {
            v32 = v40;
            v33 = v41;
          }

          else
          {
            v34 = sub_766C24((a1 + 7288));
            v32 = v40;
            v33 = v41;
            if (v34)
            {
              v33 = 0;
              v32 = *(a1 + 7424);
              v21 = 6;
            }
          }

          if (v5 <= v32 + 1)
          {
            v35 = v32 + 1;
          }

          else
          {
            v35 = v5;
          }

          if (v32 + 1 > v5)
          {
            do
            {
              while (1)
              {
                v36 = sub_4D1F50(a2, v5);
                v37 = v36[4];
                LODWORD(v45) = v37;
                BYTE6(v45) = BYTE6(v37);
                WORD2(v45) = WORD2(v37);
                sub_2B5AD0(a4, &v45);
                v38 = (*v36 - **v36);
                if (*v38 >= 0x63u)
                {
                  v39 = v38[49];
                  if (v39)
                  {
                    break;
                  }
                }

                *(a4 + 155) = *(a4 + 155);
                if (v35 == ++v5)
                {
                  goto LABEL_59;
                }
              }

              *(a4 + 155) |= *(*v36 + v39) == 12;
              ++v5;
            }

            while (v35 != v5);
          }

LABEL_59:
          *(a4 + 232) = v33;
          *(a4 + 24) = v21;
          *(a1 + 176) = 6;
        }

        return 1;
      }

      if (v23 != 98 && sub_7E7E4(3u))
      {
        sub_19594F8(&v45);
        v28 = sub_4A5C(&v45, "Received unexpected simple ManeuverType from RoundaboutModel: ", 62);
        v29 = sub_731E84(v28, v24);
        sub_4A5C(v29, " at ", 4);
        sub_4D1F50(a2, v5);
        std::ostream::operator<<();
        sub_1959680(&v45, v43);
        sub_7E854(v43, 3u);
        if (v44 < 0)
        {
          operator delete(v43[0]);
        }

        sub_1959728(&v45);
      }
    }

    else
    {
      v27 = sub_765A78(a1 + 7288);
      if (v21 != 26 && v27 < *(a1 + 608))
      {
        sub_6E1268(a1, a2, v5, a4);
        v26 = 1;
        goto LABEL_41;
      }
    }

    v26 = 0;
    goto LABEL_41;
  }

  return result;
}

void sub_6D96BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
    sub_1959728(&a20);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a20);
  _Unwind_Resume(a1);
}

uint64_t sub_6D9708@<X0>(uint64_t a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_6E3CD4(a1, a2, a3, a4, a1 + 64);
  v11 = *(a1 + 168);
  if (*(a1 + 144) == *(a1 + 152) || v11 == -1)
  {
    *a5 = 0;
    a5[1] = 0;
    *(a5 + 6) = 0;
    a5[2] = 0;
    a5[4] = -1;
    a5[5] = 0;
    a5[6] = 0;
    a5[7] = 0;
    *(a5 + 16) = 0;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    *(a5 + 9) = v13;
    *(a5 + 11) = v13;
    *(a5 + 13) = v13;
    a5[15] = -1;
    *(a5 + 32) = 0;
    a5[17] = -1;
    *(a5 + 36) = 0;
    *(a5 + 38) = 0;
    *(a5 + 10) = vnegq_f64(v13);
    a5[22] = 0;
    *(a5 + 46) = 98;
    a5[24] = 0;
    a5[25] = 0;
    *(a5 + 13) = xmmword_229B660;
    *(a5 + 56) = 0;
    a5[29] = 0;
    *(a5 + 238) = 0;
  }

  else
  {
    v14 = sub_605E3C((a1 + 144), *(a1 + 168));
    a5[1] = 0;
    a5[2] = 0;
    *a5 = 0;
    *(a5 + 6) = 0;
    a5[4] = -1;
    a5[5] = 0;
    a5[6] = 0;
    a5[7] = 0;
    *(a5 + 16) = 0;
    v15.f64[0] = NAN;
    v15.f64[1] = NAN;
    *(a5 + 9) = v15;
    *(a5 + 11) = v15;
    *(a5 + 13) = v15;
    a5[15] = -1;
    *(a5 + 32) = 0;
    a5[17] = -1;
    *(a5 + 36) = 0;
    *(a5 + 38) = 0;
    *(a5 + 10) = vnegq_f64(v15);
    a5[22] = 0;
    *(a5 + 46) = 98;
    a5[24] = 0;
    a5[25] = 0;
    *(a5 + 13) = xmmword_229B660;
    a5[29] = 0;
    *(a5 + 56) = 0;
    *(a5 + 238) = 0;
    result = sub_6E1BA4(a1, a2, a3, a5, a1 + 64);
    if ((result & 1) == 0)
    {
      result = sub_6E42AC(a1, a2, a3, (a1 + 144), v11, a5);
      if ((result & 1) == 0)
      {
        v16 = *(a1 + 96);
        v17 = *(v14 + 32);
        if (v16 == v17 && WORD2(v16) == WORD2(v17) && ((v16 & 0xFF000000000000) == 0) == BYTE6(v17))
        {
          __src = *(a1 + 96);
          v34 = BYTE6(v16);
          v33 = WORD2(v16);
          v35 = v17;
          v37 = BYTE6(v17);
          v36 = WORD2(v17);
          result = sub_7061AC(a5, &__src, &v38, 2uLL);
          *(a5 + 6) = 35;
        }

        else
        {
          if ((sub_6DDFC8(a1, (a1 + 64), (a1 + 144), v11, 1, a5) & 1) == 0)
          {
            sub_6DF834(a1, (a1 + 64), (a1 + 144), v11, a5);
          }

          v19 = *a5;
          v18 = a5[1];
          v20 = sub_4D1DC0(a2);
          if (v20 - a3 >= (v18 - v19) >> 3)
          {
            v21 = (v18 - v19) >> 3;
          }

          else
          {
            v21 = v20 - a3;
          }

          v22 = *a5;
          sub_4D0560();
          if (!sub_704A54(v22, v22 + 8 * v21, v24, v23 + a3))
          {
            goto LABEL_24;
          }

          sub_6E4A20(a5, v21);
          v25 = a5[26];
          v26 = (a5[1] - *a5) >> 3;
          if (v25 != -1 && a5[27] != 0x7FFFFFFFFFFFFFFFLL && v25 >= v26 - 1)
          {
            a5[26] = v26 - 1;
            a5[27] = 0;
          }

          v27 = sub_4D1F50(a2, a3 + v26 - 1);
          result = sub_6A9E6C(a1 + 3680, v27);
          if (result)
          {
LABEL_24:
            sub_6E3CD4(a1, a2, a3, a4, a1 + 64);
            *(a1 + 176) = 0;
            sub_6DBF88(a1, a2, a3, (a1 + 64), a5, 0);
            v29 = *(a5 + 6);
            if ((v29 == 3 || !v29) && sub_6E0F70(a1, a2, a3))
            {
              *(a5 + 6) = 12;
            }

            v30 = sub_70E7C4(a1 + 1432, (a1 + 64), (a1 + 144), v11, v28);
            if ((a5[3] & 0xFFFFFFFE) == 0x14 && v30 == v11 && 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 152) - *(a1 + 144)) >> 3) >= 2)
            {
              v31 = sub_605E3C((a1 + 144), v11 == 0);
              if (sub_6DF044(a1, a2, a3 + 1, v31))
              {
                *(a5 + 6) = 0;
              }
            }

            result = sub_6DCFD0(a1, a5);
            a5[29] = result;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_6D9BF8(uint64_t a1, char **a2, int ***a3, unint64_t a4)
{
  v8 = sub_605E3C(a3, a4);
  v9 = v8;
  v10 = *a2;
  v11 = &(*a2)[-**a2];
  v12 = *v11;
  if (v12 >= 0x2F)
  {
    v13 = *(v11 + 23);
    if (*(v11 + 23))
    {
      v14 = v10[*(v11 + 23)];
      v15 = v14 > 0x36;
      v16 = (1 << v14) & 0x44000000000008;
      if (!v15 && v16 != 0)
      {
        goto LABEL_38;
      }
    }
  }

  v18 = &(*v8)[-**v8];
  if (*v18 >= 0x2Fu)
  {
    v19 = *(v18 + 23);
    if (v19)
    {
      v20 = (*v8)[v19];
      v15 = v20 > 0x36;
      v21 = (1 << v20) & 0x44000000000008;
      if (!v15 && v21 != 0)
      {
        v23 = 0;
        v24 = 6;
LABEL_56:
        v45 = 0x100000000;
        return v45 | v24 | (v23 << 8);
      }
    }
  }

  if (v12 >= 0x2F)
  {
    v13 = *(v11 + 23);
    if (*(v11 + 23))
    {
LABEL_38:
      v25 = v10[v13];
      if (v25 <= 0x36 && ((1 << v25) & 0x44000000000008) != 0)
      {
        v27 = &(*v8)[-**v8];
        if (*v27 >= 0x2Fu)
        {
          v28 = *(v27 + 23);
          if (v28)
          {
            v29 = (*v8)[v28];
            v15 = v29 > 0x36;
            v30 = (1 << v29) & 0x44000000000008;
            if (!v15 && v30 != 0)
            {
              goto LABEL_43;
            }
          }
        }
      }

      v32 = v10[v13];
      if (v32 <= 0x36 && ((1 << v32) & 0x44000000000008) != 0)
      {
        if ((v34 = &(*v8)[-**v8], *v34 < 0x2Fu) || (v35 = *(v34 + 23)) == 0 || ((v36 = (*v8)[v35], v15 = v36 > 0x36, v37 = (1 << v36) & 0x44000000000008, !v15) ? (v38 = v37 == 0) : (v38 = 1), v38))
        {
          v23 = 0;
          v24 = 7;
          goto LABEL_56;
        }
      }

      if (v10[v13] == 17)
      {
        goto LABEL_42;
      }
    }
  }

  v39 = &(*v8)[-**v8];
  if (*v39 >= 0x2Fu)
  {
    v40 = *(v39 + 23);
    if (v40)
    {
      if ((*v8)[v40] == 17)
      {
LABEL_42:
        v41 = sub_70E748(a1 + 1432, a2);
        if (v41 == sub_70E748(a1 + 1432, v9))
        {
LABEL_43:
          v24 = 0;
          v23 = 0;
          goto LABEL_56;
        }
      }
    }
  }

  v42 = sub_6DD3AC(a1, a2, v9, a3, 0);
  if ((v42 & 0x100000000) != 0 || (v42 = sub_6DD3AC(a1, a2, v9, a3, 1), (v42 & 0x100000000) != 0))
  {
    v23 = v42 >> 8;
    goto LABEL_54;
  }

  v42 = sub_6DD3AC(a1, a2, v9, a3, 2);
  v23 = v42 >> 8;
  if ((v42 & 0x100000000) != 0)
  {
LABEL_54:
    v24 = v42;
    v45 = v42 & 0xFF00000000;
    return v45 | v24 | (v23 << 8);
  }

  v44 = sub_6DD944(a1, a2, a3, a4, v43);
  v45 = 0x100000000;
  if (v44)
  {
    v24 = 5;
  }

  else
  {
    v45 = 0;
    v24 = 0;
  }

  if (v44)
  {
    v23 = 0;
  }

  return v45 | v24 | (v23 << 8);
}

uint64_t sub_6D9EC4(uint64_t a1, int **a2, __int128 **a3)
{
  v5 = (*a2 - **a2);
  if (*v5 >= 0x2Fu)
  {
    v6 = v5[23];
    if (v6)
    {
      v7 = *(*a2 + v6);
      if (v7 == 9 || v7 == 20)
      {
        return 0;
      }
    }
  }

  v10 = *a3;
  v11 = a3[1];
  if (*a3 == v11)
  {
    goto LABEL_16;
  }

  do
  {
    v13 = *v10;
    v14 = *(v10 + 16);
    v25 = *(v10 + 32);
    v23 = v13;
    v24 = v14;
    if (fabs(sub_70E2E0(a1 + 1432, a2, &v23)) > *(a1 + 184))
    {
      return 0;
    }

    v10 += 40;
  }

  while (v10 != v11);
  v10 = *a3;
  v11 = a3[1];
LABEL_16:
  while (v10 != v11)
  {
    v15 = *v10;
    v16 = *(v10 + 16);
    v25 = *(v10 + 32);
    v23 = v15;
    v24 = v16;
    v17 = sub_3116D0(&v23);
    v18 = (v23 - *v23);
    v19 = *v18;
    if (v19 >= 0x2F)
    {
      if (v18[23])
      {
        v20 = *(v23 + v18[23]);
        if (v20 == 9)
        {
          goto LABEL_15;
        }

        if (v20 == 20 || *(a1 + 709) == 0)
        {
          if (v20 == 20)
          {
            goto LABEL_15;
          }
        }

        else if (v20 == 43)
        {
          goto LABEL_15;
        }
      }
    }

    else if (v19 < 9)
    {
      goto LABEL_13;
    }

    v22 = v18[4];
    if (v22)
    {
      if (*(v23 + v22) > *(a1 + 720))
      {
        return 0;
      }

      goto LABEL_14;
    }

LABEL_13:
    if (*(a1 + 720) < 0)
    {
      return 0;
    }

LABEL_14:
    if ((sub_6E414C(a1, v17) & 1) == 0)
    {
      return 0;
    }

LABEL_15:
    v10 += 40;
  }

  return 1;
}

uint64_t sub_6DA060(uint64_t a1, int **a2, int ***a3, unint64_t a4)
{
  if (*(a1 + 1073) != 1)
  {
    return 0;
  }

  v4 = *a2;
  v5 = (*a2 - **a2);
  v6 = *v5;
  if (*(a2 + 38))
  {
    if (v6 < 0x9B || !v5[77] || (*&v4[v5[77]] & 0x4000) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (v6 < 0x9B || !v5[77] || (*&v4[v5[77]] & 0x100000) == 0)
  {
    goto LABEL_27;
  }

  v8 = 0;
  if (a3[1] - *a3 != 80)
  {
    v9 = 0;
    return v9 | v8;
  }

  v9 = 0;
  if (a4 <= 1)
  {
    v8 = v5[23];
    if (!v5[23])
    {
LABEL_28:
      v9 = 0;
      return v9 | v8;
    }

    if (!v4[v8])
    {
      v14 = sub_605E3C(a3, 0);
      v15 = (*v14 - **v14);
      if (*v15 >= 0x2Fu)
      {
        v16 = v15[23];
        if (v16)
        {
          v17 = *(*v14 + v16);
          v18 = v17 > 0x1A;
          v19 = (1 << v17) & 0x4810001;
          if (!v18 && v19 != 0)
          {
            v21 = sub_605E3C(a3, 1uLL);
            if (sub_312EB8(v21))
            {
              if (sub_6DEE8C(a1, a2, a3) == 2)
              {
                v22 = sub_605E3C(a3, 0);
                v23 = sub_605E3C(a3, 1uLL);
                v24 = sub_6DAFB0(a1, a2, v22, v23);
                if (v24 < v25 != (a4 == 0))
                {
                  v9 = 66;
                }

                else
                {
                  v9 = 65;
                }

                v8 = 0x100000000;
                return v9 | v8;
              }
            }
          }
        }
      }
    }

LABEL_27:
    v8 = 0;
    goto LABEL_28;
  }

  return v9 | v8;
}

BOOL sub_6DA224(uint64_t *a1, uint64_t a2, int **a3, int ***a4, unint64_t a5, unint64_t a6, char a7)
{
  if (a5 > 1)
  {
    return 0;
  }

  v7 = 0;
  if (sub_6DDAC0(a1, a2, a3, a4, a5, a6) && (a7 & 1) == 0)
  {
    v140 = a6;
    v16 = sub_605E3C(a4, a5);
    v17 = sub_605E3C(a4, 1 - a5);
    v18 = sub_335660(*a1, a3, 0);
    v169 = v18;
    v170 = v19;
    v167 = sub_335660(*a1, a3, 1);
    v168 = v20;
    v142 = v16;
    v21 = sub_335660(*a1, v16, 0);
    v141 = v17;
    v22 = sub_335660(*a1, v17, 0);
    v23 = v167 - v18;
    v24 = HIDWORD(v167) - HIDWORD(v18);
    v25 = v23 * v23 + v24 * v24;
    if (v25 == 0.0)
    {
      goto LABEL_10;
    }

    v26 = -v25;
    if (v25 > 0.0)
    {
      v26 = v23 * v23 + v24 * v24;
    }

    if (v26 < 2.22044605e-16)
    {
LABEL_10:
      v27 = 0.0;
    }

    else
    {
      v27 = ((v21 - v18) * v23 + (HIDWORD(v21) - HIDWORD(v18)) * v24) / v25;
    }

    v28 = sub_6EFC0(&v169, &v167, v27);
    v29 = ((v28 - v21) * (v28 - v21) + (HIDWORD(v28) - HIDWORD(v21)) * (HIDWORD(v28) - HIDWORD(v21)));
    v30 = sqrt(v29);
    LODWORD(v29) = v169;
    v31 = *&v29;
    LODWORD(v29) = HIDWORD(v169);
    v32 = *&v29;
    LODWORD(v34) = HIDWORD(v167);
    LODWORD(v33) = v167;
    v35 = v33 - v31;
    v36 = v34 - v32;
    v37 = v35 * v35 + v36 * v36;
    if (v37 == 0.0)
    {
      v38 = v142;
    }

    else
    {
      v39 = -v37;
      if (v37 > 0.0)
      {
        v39 = v35 * v35 + v36 * v36;
      }

      v38 = v142;
      if (v39 >= 2.22044605e-16)
      {
        v40 = ((v22 - v31) * v35 + (HIDWORD(v22) - v32) * v36) / v37;
        goto LABEL_17;
      }
    }

    v40 = 0.0;
LABEL_17:
    v41 = v30 / 100.0;
    v42 = sub_6EFC0(&v169, &v167, v40);
    *&v43 = sqrt(((v42 - v22) * (v42 - v22) + (HIDWORD(v42) - HIDWORD(v22)) * (HIDWORD(v42) - HIDWORD(v22))));
    v44 = *&v43 / 100.0;
    LODWORD(v43) = *(a1 + 90);
    v45 = v43;
    LODWORD(v43) = *(a1 + 89);
    v46 = v43;
    v47 = sub_31DDCC(*a1, a3[4] & 0xFFFFFFFFFFFFFFLL);
    if (v47 <= 0xFFFFFFFEFFFFFFFFLL && v47)
    {
      v7 = 0;
      v48 = sub_31EE90(*a1, a3[4] & 0xFFFFFFFFFFFFFFLL, v38[4] & 0xFFFFFFFFFFFFFFLL) ^ 1;
      if (v44 <= v45)
      {
        v49 = 1;
      }

      else
      {
        v49 = v48;
      }

      v50 = v44 <= v45 || v41 >= v46;
      if (v41 >= v44)
      {
        v49 = 1;
      }

      if (v49 != 1 || !v50)
      {
        return v7;
      }
    }

    else
    {
      v51 = v41 >= v46 || v44 <= v45;
      if (!v51)
      {
        return 0;
      }
    }

    v52 = v38[4];
    v53 = v52 & 0xFF000000000000;
    v54 = sub_2B51D8(*a1, v52 & 0xFFFFFFFFFFFFLL);
    v55 = (v54 - *v54);
    v56 = *v55;
    if (v53)
    {
      v57 = v141;
      if (v56 < 0x29 || (v58 = v55[20]) == 0)
      {
LABEL_44:
        v59 = sub_6DDF50(*a1, v38[4] & 0xFFFFFFFFFFFFLL | (((v38[4] & 0xFF000000000000) == 0) << 48));
LABEL_45:
        v60 = v57[4];
        v61 = v60 & 0xFF000000000000;
        v62 = sub_2B51D8(*a1, v60 & 0xFFFFFFFFFFFFLL);
        v63 = (v62 - *v62);
        v64 = *v63;
        if (v61)
        {
          if (v64 < 0x29 || (v65 = v63[20]) == 0)
          {
LABEL_52:
            v66 = sub_6DDF50(*a1, v57[4] & 0xFFFFFFFFFFFFLL | (((v57[4] & 0xFF000000000000) == 0) << 48));
LABEL_53:
            if (v59)
            {
              v67 = v66 == 0;
            }

            else
            {
              v67 = 1;
            }

            v68 = !v67;
            v139 = v68;
            if (v67)
            {
              v69 = v66;
              if (sub_312B7C(a3, v38[4] & 0xFFFFFFFFFFFFFFLL))
              {
                v137 = sub_312B7C(a3, v57[4] & 0xFFFFFFFFFFFFFFLL) != 0;
              }

              else
              {
                v137 = 0;
              }

              v66 = v69;
            }

            else
            {
              v137 = 0;
            }

            v70 = v66;
            if (v66 >= v59)
            {
              v71 = v59;
            }

            else
            {
              v71 = v66;
            }

            v138 = v71;
            v136 = sub_70E748((a1 + 179), v57);
            v72 = sub_70E748((a1 + 179), v142);
            v73 = *v142;
            v74 = &(*v142)[-**v142];
            v75 = *v74;
            if (*(v142 + 38))
            {
              if (v75 >= 0x9B)
              {
                v76 = *(v74 + 77);
                if (*(v74 + 77))
                {
                  v77 = 2;
LABEL_75:
                  v78 = (*&v73[v76] & v77) != 0;
                  goto LABEL_77;
                }
              }
            }

            else if (v75 >= 0x9B)
            {
              v76 = *(v74 + 77);
              if (*(v74 + 77))
              {
                v77 = 1;
                goto LABEL_75;
              }
            }

            v78 = 0;
LABEL_77:
            v79 = *v57;
            v80 = &(*v57)[-**v57];
            v81 = *v80;
            if (*(v57 + 38))
            {
              if (v81 >= 0x9B)
              {
                v82 = *(v80 + 77);
                if (*(v80 + 77))
                {
                  v83 = 2;
LABEL_84:
                  v78 ^= (*&v79[v82] & v83) != 0;
                }
              }
            }

            else if (v81 >= 0x9B)
            {
              v82 = *(v80 + 77);
              if (*(v80 + 77))
              {
                v83 = 1;
                goto LABEL_84;
              }
            }

            if (v78)
            {
              return 0;
            }

            if (v75 >= 0x9B && (v84 = *(v74 + 77)) != 0)
            {
              v85 = (v73[v84 + 1] >> 4) & 1;
              if (v81 < 0x9B)
              {
                goto LABEL_94;
              }
            }

            else
            {
              v85 = 0;
              if (v81 < 0x9B)
              {
                goto LABEL_94;
              }
            }

            if (*(v80 + 77))
            {
              if (v85 == (v79[*(v80 + 77) + 1] & 0x10) >> 4)
              {
                goto LABEL_95;
              }

              return 0;
            }

LABEL_94:
            if ((v85 & 1) == 0)
            {
LABEL_95:
              v135 = v72;
              memset(v144, 0, sizeof(v144));
              v145 = 0;
              v146 = -1;
              v147 = 0;
              v148 = 0;
              v149 = 0;
              v150 = 0;
              v86.f64[0] = NAN;
              v86.f64[1] = NAN;
              v151 = v86;
              v152 = v86;
              v153 = v86;
              v154 = -1;
              v155 = 0;
              v156 = -1;
              v157 = 0;
              v158 = 0;
              v159 = vnegq_f64(v86);
              v160 = 0;
              v161 = 98;
              v162 = 0;
              v163 = 0;
              v164 = xmmword_229B660;
              v165 = 0;
              v166[0] = 0;
              *(v166 + 6) = 0;
              if (sub_6DDFC8(a1, a3, a4, 1 - a5, 0, v144))
              {
                goto LABEL_96;
              }

              v87 = v59 - v70;
              v88 = &(*v142)[-**v142];
              if (*v88 >= 0x2Fu)
              {
                v89 = *(v88 + 23);
                if (v89)
                {
                  v90 = (*v142)[v89];
                  if (v90 <= 0x2A && ((1 << v90) & 0x50426810004) != 0)
                  {
                    v91 = &(*v57)[-**v57];
                    if (*v91 >= 0x2Fu)
                    {
                      v92 = *(v91 + 23);
                      if (v92)
                      {
                        v93 = (*v57)[v92];
                        if (v93 <= 0x2A && ((1 << v93) & 0x50426810004) != 0)
                        {
                          v7 = v87 < *(a1 + 107);
                          goto LABEL_97;
                        }
                      }
                    }
                  }
                }
              }

              v94 = *v57;
              v95 = &(*v57)[-**v57];
              v96 = *v95;
              if (v96 < 0x2F)
              {
                goto LABEL_116;
              }

              v97 = *(v95 + 23);
              if (*(v95 + 23) && v94[v97] == 28)
              {
                goto LABEL_96;
              }

              if (v96 < 0x9B || (v98 = *(v95 + 77)) == 0 || (v94[v98] & 4) == 0 || (v99 = 0, v97) && (v100 = v94[v97], v100 <= 0x2A) && ((1 << v100) & 0x50426810004) != 0)
              {
LABEL_116:
                v99 = (sub_6AA260((a1 + 460), v57) & 1) != 0 || sub_70EED4(a1 + 179, v57);
              }

              if (sub_312F00(a3) && (sub_312F00(v142) & v99 & 1) != 0 || sub_70E748((a1 + 179), v142) < *(a1 + 92) && sub_70E748((a1 + 179), v57) > *(a1 + 92))
              {
                goto LABEL_96;
              }

              v102 = &(*v57)[-**v57];
              if (*v102 >= 0x2Fu)
              {
                v103 = *(v102 + 23);
                if (v103)
                {
                  v104 = (*v57)[v103];
                  if (v104 <= 0x2D && ((1 << v104) & 0x208040000000) != 0)
                  {
                    v105 = &(*v142)[-**v142];
                    if (*v105 < 0x2Fu)
                    {
                      goto LABEL_96;
                    }

                    v106 = *(v105 + 23);
                    if (!v106)
                    {
                      goto LABEL_96;
                    }

                    v7 = 0;
                    v107 = (*v142)[v106];
                    if (v107 > 0x2D || ((1 << v107) & 0x208040000000) == 0)
                    {
                      goto LABEL_97;
                    }
                  }
                }
              }

              v108 = sub_6DEB50(a1, a2, a3, v141, v142, v101);
              v109 = sub_70E484((a1 + 179), a2, a3, v142, 0, v108);
              v110 = sub_70E484((a1 + 179), a2, a3, v141, 0, v109);
              if (v108 >= sub_6DEBC0(a1, a2, a3, v141, v142))
              {
                goto LABEL_96;
              }

              if (((v140 == a5) & sub_313CC4(a3)) == 1)
              {
                if (sub_712998((a1 + 179), a3, v142) && !sub_712998((a1 + 179), a3, v141))
                {
                  goto LABEL_96;
                }

                if (sub_712998((a1 + 179), a3, v141) && !sub_712998((a1 + 179), a3, v142))
                {
                  goto LABEL_190;
                }
              }

              if (sub_312DF0(v142) && sub_312E54(v142) && sub_311BB0(v142) >= 2)
              {
                v111 = (*a3 - **a3);
                if (*v111 >= 0x9Bu && (v112 = v111[77]) != 0)
                {
                  if (v110 >= 0.0 == *(*a3 + v112 + 1) >> 7)
                  {
                    goto LABEL_96;
                  }
                }

                else if (v110 < 0.0)
                {
                  goto LABEL_96;
                }
              }

              if (sub_3130E8(a3))
              {
                v113 = fabs(v110);
                if (fabs(v109) <= *(a1 + 23) == v113 > *(a1 + 23))
                {
                  goto LABEL_96;
                }
              }

              v114 = *v142;
              v115 = &(*v142)[-**v142];
              v116 = *v115;
              if (v116 >= 0x2F && (v117 = *(v115 + 23), *(v115 + 23)) && v114[*(v115 + 23)] == 44)
              {
                v143 = 0;
              }

              else
              {
                v118 = (*v141 - **v141);
                if (*v118 < 0x2Fu)
                {
                  goto LABEL_168;
                }

                v119 = v118[23];
                if (!v119 || *(*v141 + v119) != 44)
                {
                  goto LABEL_168;
                }

                v143 = 0;
                if (v116 < 0x2F)
                {
                  goto LABEL_160;
                }

                v117 = *(v115 + 23);
                if (!*(v115 + 23))
                {
                  goto LABEL_160;
                }
              }

              if (v114[v117] == 44)
              {
                v120 = (*v141 - **v141);
                if (*v120 >= 0x2Fu)
                {
                  v121 = v120[23];
                  if (v121)
                  {
                    if (*(*v141 + v121) == 44)
                    {
LABEL_162:
                      v122 = sub_31DDCC(*a1, v142[4] & 0xFFFFFFFFFFFFFFLL);
                      if (v122 <= 0xFFFFFFFEFFFFFFFFLL)
                      {
                        if (v122)
                        {
                          v123 = sub_31DDCC(*a1, v141[4] & 0xFFFFFFFFFFFFFFLL);
                          if (v123 <= 0xFFFFFFFEFFFFFFFFLL && v123 && (sub_31EE90(*a1, v142[4] & 0xFFFFFFFFFFFFFFLL, v141[4] & 0xFFFFFFFFFFFFFFLL) & 1) != 0)
                          {
                            goto LABEL_96;
                          }
                        }
                      }

                      v113 = vabdd_f64(v110, v109);
                      if (v113 < *(a1 + 54))
                      {
                        goto LABEL_96;
                      }

LABEL_168:
                      v124 = v139;
                      if (v87 >= 0)
                      {
                        v124 = 0;
                      }

                      if (v124)
                      {
                        goto LABEL_190;
                      }

                      v125 = *(a1 + 91);
                      if (v138 > v125 || v59 == v70 && v138 == v125)
                      {
                        goto LABEL_190;
                      }

                      if (v87 < 0 || (LOWORD(v113) = *(a1 + 212), v108 < vmovl_s16(*&v113).i32[0]))
                      {
                        v126 = *(a1 + 93);
                        v127 = *(a1 + 95);
                        v128 = (*v141 - **v141);
                        if (*v128 >= 0x2Fu)
                        {
                          v129 = v128[23];
                          if (v129)
                          {
                            v130 = *(*v141 + v129);
                            if (v130 <= 0x2A && ((1 << v130) & 0x50426810004) != 0)
                            {
                              v131 = (*a3 - **a3);
                              if (*v131 >= 0x9Bu && (v132 = v131[77]) != 0)
                              {
                                if (v110 >= 0.0 == *(*a3 + v132 + 1) >> 7)
                                {
                                  goto LABEL_187;
                                }
                              }

                              else if (v110 < 0.0)
                              {
                                goto LABEL_187;
                              }

                              if (fabs(v109) < *(a1 + 23))
                              {
                                v126 = *(a1 + 94);
                                v127 = *(a1 + 96);
                              }
                            }
                          }
                        }

LABEL_187:
                        v51 = v87 <= v126;
                        v133 = v139;
                        if (!v51)
                        {
                          v133 = 0;
                        }

                        if ((v133 & 1) == 0)
                        {
                          if (sub_6DED40(a1, v142, v141) || v137 && sub_6DEDA0(a1, a3, v142, v141))
                          {
                            goto LABEL_96;
                          }

                          v134 = v139;
                          if (v136 - v135 > v127)
                          {
                            v134 = 1;
                          }

                          if (v134 == 1 && ((v139 & 1) != 0 || sub_70E748((a1 + 179), v142) < *(a1 + 92) || sub_70E748((a1 + 179), v141) < *(a1 + 92) || v136 - v135 > *(a1 + 97)))
                          {
                            goto LABEL_96;
                          }
                        }

LABEL_190:
                        v7 = 1;
                        goto LABEL_97;
                      }

LABEL_96:
                      v7 = 0;
LABEL_97:
                      sub_5ECFBC(v144);
                      return v7;
                    }
                  }
                }
              }

LABEL_160:
              if ((sub_6DECF4(&v143, v142) & 1) == 0 && !sub_6DECF4(&v143, v141))
              {
                goto LABEL_168;
              }

              goto LABEL_162;
            }

            return 0;
          }
        }

        else
        {
          if (v64 < 0x27)
          {
            goto LABEL_52;
          }

          v65 = v63[19];
          if (!v65)
          {
            goto LABEL_52;
          }
        }

        v66 = *(v62 + v65 + *(v62 + v65));
        if (v66)
        {
          goto LABEL_53;
        }

        goto LABEL_52;
      }
    }

    else
    {
      v57 = v141;
      if (v56 < 0x27)
      {
        goto LABEL_44;
      }

      v58 = v55[19];
      if (!v58)
      {
        goto LABEL_44;
      }
    }

    v59 = *(v54 + v58 + *(v54 + v58));
    if (v59)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  return v7;
}

void sub_6DAEFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_5ECFBC(va);
  _Unwind_Resume(a1);
}

void sub_6DAF10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_5ECFBC(va);
  _Unwind_Resume(a1);
}

void sub_6DAF24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_5ECFBC(va);
  _Unwind_Resume(a1);
}

void sub_6DAF38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_5ECFBC(va);
  _Unwind_Resume(a1);
}

void sub_6DAF4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_5ECFBC(va);
  _Unwind_Resume(a1);
}

void sub_6DAF60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_5ECFBC(va);
  _Unwind_Resume(a1);
}

void sub_6DAF74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_5ECFBC(va);
  _Unwind_Resume(a1);
}

void sub_6DAF88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_5ECFBC(va);
  _Unwind_Resume(a1);
}

void sub_6DAF9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_5ECFBC(va);
  _Unwind_Resume(a1);
}

double sub_6DAFB0(uint64_t a1, int **a2, int **a3, int **a4)
{
  v8 = *a2;
  v9 = (*a2 - **a2);
  v10 = *v9;
  if (*(a2 + 38))
  {
    if (v10 < 0x49)
    {
      goto LABEL_11;
    }

    v11 = v9[36];
    if (!v9[36])
    {
      goto LABEL_11;
    }
  }

  else if (v10 < 0x4B || (v11 = v9[37]) == 0)
  {
LABEL_11:
    v12 = -1;
    v13 = *a3;
    v14 = (*a3 - **a3);
    v15 = *v14;
    if (*(a3 + 38))
    {
      goto LABEL_12;
    }

LABEL_8:
    if (v15 >= 0x49)
    {
      v16 = v14[36];
      if (v16)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_15;
  }

  v12 = *&v8[v11];
  v13 = *a3;
  v14 = (*a3 - **a3);
  v15 = *v14;
  if (!*(a3 + 38))
  {
    goto LABEL_8;
  }

LABEL_12:
  if (v15 >= 0x4B)
  {
    v16 = v14[37];
    if (v16)
    {
LABEL_14:
      v17 = *&v13[v16];
      goto LABEL_16;
    }
  }

LABEL_15:
  v17 = 0xFFFF;
LABEL_16:
  v18 = v12 + 18000;
  v19 = v12 - 18000;
  if ((v18 >> 5) < 0x465u)
  {
    v19 = v18;
  }

  v20 = v17 - v19;
  if (v20 > 18000)
  {
    v20 -= 36000;
  }

  if (v20 < -17999)
  {
    v20 += 36000;
  }

  if (!*(a2 + 38))
  {
    if (v10 < 0x4B)
    {
      goto LABEL_29;
    }

    v21 = v9[37];
    if (!v21)
    {
      goto LABEL_29;
    }

LABEL_28:
    v22 = *&v8[v21];
    goto LABEL_30;
  }

  if (v10 >= 0x49)
  {
    v21 = v9[36];
    if (v21)
    {
      goto LABEL_28;
    }
  }

LABEL_29:
  v22 = -1;
LABEL_30:
  v23 = v20 / 100.0;
  v24 = (*a4 - **a4);
  v25 = *v24;
  if (!*(a4 + 38))
  {
    if (v25 < 0x49)
    {
      goto LABEL_37;
    }

    v26 = v24[36];
    if (!v26)
    {
      goto LABEL_37;
    }

LABEL_36:
    v27 = *(*a4 + v26);
    goto LABEL_38;
  }

  if (v25 >= 0x4B)
  {
    v26 = v24[37];
    if (v26)
    {
      goto LABEL_36;
    }
  }

LABEL_37:
  v27 = 0xFFFF;
LABEL_38:
  v28 = v22 + 18000;
  v29 = v22 - 18000;
  if ((v28 >> 5) < 0x465u)
  {
    v29 = v28;
  }

  v30 = v27 - v29;
  if (v30 > 18000)
  {
    v30 -= 36000;
  }

  if (v30 < -17999)
  {
    v30 += 36000;
  }

  v31 = v30 / 100.0;
  v32 = sub_311544(a3);
  v33 = sub_311544(a4);
  if (vabdd_f64(v23, v31) < *(a1 + 344) && v32 != v33)
  {
    v23 = sub_70DE94(a1 + 1432, a2, a3);
    sub_70DE94(a1 + 1432, a2, a4);
  }

  return v23;
}

BOOL sub_6DB214(uint64_t a1, int **a2, int ***a3, unint64_t a4)
{
  v7 = sub_605E3C(a3, a4);
  v8 = *a3;
  v9 = a3[1];
  if (*a3 == v9)
  {
    v11 = 0;
    v12 = *a2;
    v13 = (*a2 - **a2);
    v14 = *v13;
    if (v14 < 0x2F)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v10 = 0;
    do
    {
      if (sub_70EE0C(a1 + 1432, v8) || *(a1 + 440) == 1 && sub_70EE70(a1 + 1432, v8))
      {
        ++v10;
      }

      v8 += 5;
    }

    while (v8 != v9);
    v11 = v10 > 2;
    v12 = *a2;
    v13 = (*a2 - **a2);
    v14 = *v13;
    if (v14 < 0x2F)
    {
      goto LABEL_19;
    }
  }

  v15 = v13[23];
  if (v13[23])
  {
    v16 = *(v12 + v13[23]);
    v17 = v16 > 0x2A;
    v18 = (1 << v16) & 0x50426810004;
    if (!v17 && v18 != 0)
    {
      if (v11)
      {
        return 1;
      }

      goto LABEL_28;
    }
  }

LABEL_19:
  v20 = &(*v7)[-**v7];
  if (*v20 >= 0x2Fu)
  {
    v21 = *(v20 + 23);
    if (v21)
    {
      v22 = (*v7)[v21];
      v17 = v22 > 0x2A;
      v23 = (1 << v22) & 0x50426810004;
      v24 = v17 || v23 == 0;
      if (!v24 && v11)
      {
        return 1;
      }
    }
  }

  if (v14 >= 0x2F)
  {
    v15 = v13[23];
    if (v13[23])
    {
LABEL_28:
      v25 = *(v12 + v15) - 2;
      if (v25 < 0x29 && ((0x14109A04001uLL >> v25) & 1) != 0)
      {
        return 0;
      }
    }
  }

  v55 = sub_3116D0(a2);
  if (sub_3A8760((a1 + 7520), &v55))
  {
    return 1;
  }

  v27 = sub_31EE90(*a1, a2[4] & 0xFFFFFFFFFFFFFFLL, v7[4] & 0xFFFFFFFFFFFFFFLL);
  memset(__p, 0, sizeof(__p));
  if ((v27 & 1) == 0)
  {
    if (*(a1 + 1170) == 1)
    {
      v28 = (*a2 - **a2);
      if (*v28 >= 0x2Fu)
      {
        v29 = v28[23];
        if (v29)
        {
          if (!*(*a2 + v29))
          {
            v30 = &(*v7)[-**v7];
            if (*v30 >= 0x2Fu)
            {
              v31 = *(v30 + 23);
              if (v31)
              {
                if (!(*v7)[v31])
                {
                  v53 = sub_31DDCC(*a1, v7[4] & 0xFFFFFFFFFFFFFFLL);
                  if (v53 <= 0xFFFFFFFEFFFFFFFFLL && v53 && a3[1] != sub_708F08(*a3, a3[1], v7))
                  {
                    return 1;
                  }
                }
              }
            }
          }
        }
      }
    }

    v32 = sub_70E748(a1 + 1432, a2);
    v33 = v32 - sub_70E748(a1 + 1432, v7);
    if (v33 >= 0)
    {
      v34 = v33;
    }

    else
    {
      v34 = -v33;
    }

    v35 = *(a1 + 1168);
    v36 = a2[4];
    v37 = sub_2B51D8(*a1, v36 & 0xFFFFFFFFFFFFLL);
    v38 = (v37 - *v37);
    v39 = *v38;
    if ((v36 & 0xFF000000000000) != 0)
    {
      if (v39 < 0x29 || (v40 = v38[20]) == 0)
      {
LABEL_54:
        v41 = 0;
LABEL_55:
        v42 = v7[4];
        v43 = sub_2B51D8(*a1, v42 & 0xFFFFFFFFFFFFLL);
        v44 = (v43 - *v43);
        v45 = *v44;
        if ((v42 & 0xFF000000000000) != 0)
        {
          if (v45 >= 0x29)
          {
            v46 = v44[20];
            if (v46)
            {
LABEL_58:
              v47 = 0;
              v46 = *(v43 + v46 + *(v43 + v46));
              if (v41 >= 1 && v46 >= 1)
              {
                v48 = v41 - v46;
                if (v48 < 0)
                {
                  v48 = -v48;
                }

                v47 = v48 >= *(a1 + 1169);
                v46 = 1;
                if (v34 < v35)
                {
LABEL_74:
                  sub_73F798((a1 + 7480), a2, __p, 0);
                }

                goto LABEL_70;
              }

              goto LABEL_69;
            }

LABEL_66:
            v47 = 0;
            if (v34 < v35)
            {
              goto LABEL_74;
            }

LABEL_70:
            if (!v41)
            {
              v47 = 1;
            }

            if (!v47 && v46)
            {
              goto LABEL_74;
            }

            v52 = sub_31DDCC(*a1, v7[4] & 0xFFFFFFFFFFFFFFLL);
            if (v52 > 0xFFFFFFFEFFFFFFFFLL || !v52)
            {
              goto LABEL_74;
            }

            return 1;
          }
        }

        else if (v45 >= 0x27)
        {
          v46 = v44[19];
          if (v46)
          {
            goto LABEL_58;
          }

          goto LABEL_66;
        }

        v46 = 0;
        v47 = 0;
LABEL_69:
        if (v34 < v35)
        {
          goto LABEL_74;
        }

        goto LABEL_70;
      }
    }

    else
    {
      if (v39 < 0x27)
      {
        goto LABEL_54;
      }

      v40 = v38[19];
      if (!v40)
      {
        goto LABEL_54;
      }
    }

    v41 = *(v37 + v40 + *(v37 + v40));
    goto LABEL_55;
  }

  if (sub_6DC420(a1, a2) & 1) != 0 || (sub_6DC420(a1, v7))
  {
    return 0;
  }

  v49 = sub_6DF4EC(a1, a2, v7, v27);
  if (v49)
  {
    return 1;
  }

  if (*(a1 + 871) == 1)
  {
    v50 = sub_6A2D94(*(a1 + 24), a2, 0);
    if (v50 != sub_6A2D94(*(a1 + 24), v7, 0))
    {
      return 1;
    }
  }

  v51 = sub_70E2E0(a1 + 1432, a2, v7);
  if (*(a1 + 1075) == 1 && v51 > *(a1 + 184) && sub_313270(a2))
  {
    return 1;
  }

  if (*(a1 + 1074) != 1 || sub_313CC4(a2))
  {
    return 0;
  }

  return sub_313D40(v7);
}

void sub_6DB768(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_6DB7A4(uint64_t a1, int **a2, char **a3, uint64_t *a4, char a5, double a6)
{
  if (a5)
  {
    return 0;
  }

  v34[12] = v6;
  v34[13] = v7;
  v33 = fabs(sub_70E16C(a1 + 1432, a2, a3, a6));
  if (v33 < *(a1 + 1144))
  {
    return 0;
  }

  v13 = *a2;
  v14 = (*a2 - **a2);
  v15 = *v14;
  if (v15 < 0x2F || !v14[23])
  {
    goto LABEL_19;
  }

  v16 = *(v13 + v14[23]);
  if (v16 <= 0x2A)
  {
    if (v16 != 6 && v16 != 12)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  if (v16 == 44)
  {
    return 0;
  }

  if (v16 == 43)
  {
LABEL_16:
    if (v15 < 0x9B)
    {
      return 0;
    }

    v18 = v14[77];
    if (!v18 || (*(v13 + v18 + 2) & 0x20) == 0)
    {
      return 0;
    }
  }

LABEL_19:
  v19 = *a3;
  v20 = &(*a3)[-**a3];
  v21 = *v20;
  if (v21 < 0x2F || !*(v20 + 23))
  {
    goto LABEL_32;
  }

  v22 = *(v19 + *(v20 + 23));
  if (v22 > 0x2A)
  {
    if (v22 == 44)
    {
      return 0;
    }

    if (v22 != 43)
    {
      goto LABEL_32;
    }

    goto LABEL_29;
  }

  if (v22 == 6 || v22 == 12)
  {
LABEL_29:
    if (v21 >= 0x9B)
    {
      v24 = *(v20 + 77);
      if (v24)
      {
        if ((*(v19 + v24 + 2) & 0x20) != 0)
        {
          goto LABEL_32;
        }
      }
    }

    return 0;
  }

LABEL_32:
  v32 = sub_311A24(v13, *(a2 + 38));
  v25 = (*a2 - **a2);
  if (*v25 < 0x43u)
  {
    v28 = 0;
    v27 = a4;
  }

  else
  {
    v26 = v25[33];
    v27 = a4;
    if (v26)
    {
      v28 = *(*a2 + v26);
    }

    else
    {
      v28 = 0;
    }
  }

  v31 = v28;
  v29 = *v27;
  v30 = v27[1];
  v34[0] = &v32;
  v34[1] = a1;
  v34[2] = &v31;
  v34[3] = a3;
  v34[4] = a2;
  v34[5] = &v33;
  if (v29 == v30)
  {
    return 0;
  }

  do
  {
    result = sub_708B8C(v34, v29);
    if (result)
    {
      break;
    }

    v29 += 5;
  }

  while (v29 != v30);
  return result;
}

uint64_t sub_6DB978(double *a1, uint64_t a2, int **a3, void *a4, unint64_t a5, unint64_t a6)
{
  v11 = sub_605E3C(a4, a5);
  sub_70E6C0((a1 + 179), a2, a3, v11);
  v13 = v12;
  v15 = v14;
  if (sub_7102E4((a1 + 179), a3, v11))
  {
    return 4;
  }

  v17 = v13;
  v16 = sub_70DD90(a1 + 179, v15 & 1, v13);
  v18 = sub_70DE94((a1 + 179), a3, v11);
  v19 = sub_3116D0(a3);
  if (v19 != sub_311544(v11))
  {
    v20 = fabs(v17);
    if (v18 <= 0.0)
    {
      v21 = v16;
    }

    else
    {
      v21 = 61;
    }

    if (v18 < 0.0)
    {
      v21 = 60;
    }

    if (v20 >= a1[123])
    {
      v16 = v21;
    }

    else
    {
      v16 = v16;
    }
  }

  if (a6 != -1)
  {
    v22 = sub_605E3C(a4, a6);
    v23 = sub_6DAFB0(a1, a3, v22, v11);
    if (v17 >= 0.0 && v24 < v23 && fabs(v17) < a1[38])
    {
      v16 = 20;
    }

    if (v17 <= 0.0 && v24 > v23 && fabs(v17) < a1[38])
    {
      return 21;
    }
  }

  return v16;
}

uint64_t sub_6DBAF4(uint64_t a1, char **a2, void *a3, unint64_t a4, unint64_t a5)
{
  if (a5 != -1)
  {
    if ((v9 = sub_605E3C(a3, a5), v10 = sub_605E3C(a3, a4), v11 = &(*a2)[-**a2], *v11 < 0x2Fu) || (v12 = *(v11 + 23)) == 0 || ((v13 = (*a2)[v12], v14 = v13 > 0x2A, v15 = (1 << v13) & 0x50426810004, !v14) ? (v16 = v15 == 0) : (v16 = 1), v16 || (v17 = &(*v9)[-**v9], *v17 < 0x2Fu) || (v18 = *(v17 + 23)) == 0 || (v19 = (*v9)[v18] - 2, v19 >= 0x29) || ((0x14109A04001uLL >> v19) & 1) == 0))
    {
      sub_6D3D8C(*a1, *(v10 + 8) | (*(v10 + 18) << 32), &__p);
      v21 = __p;
      v22 = v38;
      v36[0] = a1;
      v36[1] = a2;
      v36[2] = v10;
      if (__p != v38)
      {
        while (!sub_70337C(v36, v21))
        {
          if (++v21 == v22)
          {
            v21 = v22;
            break;
          }
        }

        v22 = v38;
      }

      if (v21 != v22)
      {
LABEL_19:
        v20 = 1;
        v23 = __p;
        if (!__p)
        {
          return v20;
        }

LABEL_20:
        v38 = v23;
        operator delete(v23);
        return v20;
      }

      v25 = &(*a2)[-**a2];
      if (*v25 >= 0x2Fu)
      {
        v26 = *(v25 + 23);
        if (v26)
        {
          if (!(*a2)[v26])
          {
            v27 = &(*v10)[-**v10];
            if (*v27 >= 0x2Fu)
            {
              v28 = *(v27 + 23);
              if (v28)
              {
                v29 = (*v10)[v28];
                v14 = v29 > 0x2A;
                v30 = (1 << v29) & 0x50426810004;
                if (!v14 && v30 != 0)
                {
                  v32 = &(*v9)[-**v9];
                  if (*v32 < 0x2Fu)
                  {
                    goto LABEL_36;
                  }

                  v33 = *(v32 + 23);
                  if (!v33)
                  {
                    goto LABEL_36;
                  }

                  v34 = (*v9)[v33];
                  if (v34 - 2) < 0x29 && ((0x14109A04001uLL >> (v34 - 2)))
                  {
                    goto LABEL_39;
                  }

                  if ((*v9)[v33])
                  {
LABEL_36:
                    v35 = sub_70E748(a1 + 1432, v10);
                    if (v35 < sub_70E748(a1 + 1432, v9))
                    {
                      goto LABEL_39;
                    }
                  }

                  if (sub_70E748(a1 + 1432, v10) >= *(a1 + 456) || sub_70E748(a1 + 1432, a2) <= *(a1 + 456))
                  {
                    goto LABEL_19;
                  }
                }
              }
            }
          }
        }
      }

LABEL_39:
      v20 = 0;
      v23 = __p;
      if (!__p)
      {
        return v20;
      }

      goto LABEL_20;
    }
  }

  return 0;
}

void sub_6DBD80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_6DBDA0(uint64_t a1, uint64_t a2, int **a3, int a4, uint64_t a5)
{
  if ((a4 - 3) >= 0xFFFFFFFE)
  {
    memset(v6, 0, sizeof(v6));
    sub_73F798((a1 + 7480), a3, v6, 0);
  }

  return 0;
}

void sub_6DBF64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_6DBF88(uint64_t a1, void *a2, unint64_t a3, int **a4, uint64_t a5, unsigned int a6)
{
  *(a5 + 24) = 0;
  *(a5 + 8) = *a5;
  *(a5 + 48) = *(a5 + 40);
  *(a5 + 64) = 0;
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  *(a5 + 72) = v9;
  *(a5 + 88) = v9;
  *(a5 + 104) = v9;
  *(a5 + 120) = -1;
  *(a5 + 128) = 0;
  *(a5 + 136) = -1;
  *(a5 + 144) = 0;
  *(a5 + 152) = 0;
  *(a5 + 160) = vnegq_f64(v9);
  *(a5 + 176) = 0;
  *(a5 + 184) = 98;
  *(a5 + 192) = 0;
  *(a5 + 200) = 0;
  *(a5 + 208) = xmmword_229B660;
  *(a5 + 232) = 0;
  *(a5 + 245) = 0;
  *(a5 + 224) = 0;
  v47 = a4[13];
  v10 = sub_605E3C(a4 + 10, v47);
  v11 = sub_4D1DC0(a2);
  if (a3 <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = a3;
  }

  v46 = a3;
  if (v11 > a3)
  {
    do
    {
      while (1)
      {
        v14 = *(sub_4D1F50(a2, a3) + 32);
        v16 = *(a5 + 8);
        v15 = *(a5 + 16);
        if (v16 >= v15)
        {
          v18 = *a5;
          v19 = v16 - *a5;
          v20 = v19 >> 3;
          v21 = (v19 >> 3) + 1;
          if (v21 >> 61)
          {
            sub_1794();
          }

          v22 = v15 - v18;
          if (v22 >> 2 > v21)
          {
            v21 = v22 >> 2;
          }

          if (v22 >= 0x7FFFFFFFFFFFFFF8)
          {
            v23 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v23 = v21;
          }

          if (v23)
          {
            if (!(v23 >> 61))
            {
              operator new();
            }

            sub_1808();
          }

          *(8 * v20) = v14 & 0xFFFFFFFFFFFFFFLL;
          v17 = 8 * v20 + 8;
          memcpy(0, v18, v19);
          *a5 = 0;
          *(a5 + 8) = v17;
          *(a5 + 16) = 0;
          if (v18)
          {
            operator delete(v18);
          }
        }

        else
        {
          *v16 = v14 & 0xFFFFFFFFFFFFFFLL;
          v17 = (v16 + 1);
        }

        *(a5 + 8) = v17;
        v13 = *(v10 + 32);
        if (v13 == v14)
        {
          break;
        }

        if (++a3 == v12)
        {
          goto LABEL_26;
        }
      }

      ++a3;
    }

    while ((HIDWORD(v13) & 0xFFFFFF) != (HIDWORD(v14) & 0xFFFFFF) && a3 != v12);
  }

  else
  {
    v13 = *(v10 + 32);
  }

LABEL_26:
  v25 = sub_31EE90(*a1, a4[4] & 0xFFFFFFFFFFFFFFLL, v13 & 0xFFFFFFFFFFFFFFLL);
  if (v25)
  {
    v26 = a6;
    v27 = v47;
    if (sub_6DC420(a1, a4))
    {
      LOBYTE(v25) = 1;
    }

    else
    {
      LOBYTE(v25) = sub_6DC420(a1, v10);
    }
  }

  else
  {
    v26 = a6;
    v27 = v47;
  }

  *(a5 + 244) = v25;
  result = sub_6D446C(a1, a2, a4, a4 + 10, v27, 1, 1, v26);
  *(a5 + 24) = result;
  if (result)
  {
    result = sub_6DC668(a1, a2, v46, v10, a5);
    if (result)
    {
      *(a5 + 24) = 0;
      goto LABEL_34;
    }

    if (*(a1 + 1074) == 1 && *(a5 + 24) == 3)
    {
      v30 = *a4;
      v31 = (*a4 - **a4);
      v32 = *v31;
      if (v32 < 0x2F || !v31[23])
      {
        goto LABEL_60;
      }

      v33 = v30[v31[23]];
      if (v33 > 0x2A)
      {
        if (v33 == 44)
        {
          goto LABEL_34;
        }

        if (v33 != 43)
        {
          goto LABEL_60;
        }
      }

      else if (v33 != 6 && v33 != 12)
      {
        goto LABEL_60;
      }

      if (v32 < 0x9B)
      {
        goto LABEL_34;
      }

      v35 = v31[77];
      if (!v35 || (v30[v35 + 2] & 0x20) == 0)
      {
        goto LABEL_34;
      }

LABEL_60:
      result = sub_605E3C(a4 + 10, v27);
      v36 = *result;
      v37 = (*result - **result);
      v38 = *v37;
      if (*(result + 38))
      {
        if (v38 < 0x47)
        {
          goto LABEL_34;
        }

        v39 = v37[35];
        if (!v37[35])
        {
          goto LABEL_34;
        }

        v40 = 2;
      }

      else
      {
        if (v38 < 0x47)
        {
          goto LABEL_34;
        }

        v39 = v37[35];
        if (!v37[35])
        {
          goto LABEL_34;
        }

        v40 = 1;
      }

      v41 = *(v36 + v39);
      if ((v41 & v40) == 0 || !v37[23])
      {
        goto LABEL_34;
      }

      v42 = *(v36 + v37[23]);
      if (v42 > 0x2A)
      {
        if (v42 == 44)
        {
          goto LABEL_80;
        }

        if (v42 != 43)
        {
          goto LABEL_34;
        }
      }

      else if (v42 != 6 && v42 != 12)
      {
        goto LABEL_34;
      }

      if (v38 >= 0x9B)
      {
        v44 = v37[77];
        if (v44)
        {
          if ((*(v36 + v44 + 2) & 0x20) != 0)
          {
            goto LABEL_34;
          }
        }
      }

LABEL_80:
      if (*(result + 38))
      {
        if ((v41 & 0x141510) != 0)
        {
          goto LABEL_86;
        }

        v45 = 64;
      }

      else
      {
        if ((v41 & 0xA0A88) != 0)
        {
          goto LABEL_86;
        }

        v45 = 32;
      }

      if ((v45 & v41) == 0)
      {
        goto LABEL_34;
      }

LABEL_86:
      *(a5 + 245) = 1;
    }
  }

LABEL_34:
  if (*(a1 + 763) == 1)
  {
    result = sub_31C0F0(*a1, a4[4] & 0xFFFFFFFFFFFFFFLL);
    if (result)
    {
      result = sub_31C0F0(*a1, *(v10 + 32) & 0xFFFFFFFFFFFFFFLL);
      if (result)
      {
        if (*(a5 + 24))
        {
          *(a5 + 227) = 1;
          *(a5 + 24) = 0;
        }
      }
    }
  }

  if (v26)
  {
    v29 = *(a5 + 24);
    if (v29 <= 0x15 && ((1 << v29) & 0x300001) != 0)
    {
      v29 = 3;
    }

    *(a5 + 24) = v29;
  }

  return result;
}

uint64_t sub_6DC420(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 1072) != 1)
  {
    return 0;
  }

  sub_5E94A4(*a1, *(a2 + 32) & 0xFFFFFFFFFFFFFFLL, 1, &__p);
  if (__p == v12)
  {
    v20 = 0u;
    *v18 = 0u;
    memset(v19, 0, sizeof(v19));
    v16 = 0u;
    *v17 = 0u;
    v14 = 0u;
    *v15 = 0u;
    *v13 = 0u;
    *(&v16 + 1) = sub_12331FC();
    v20 = 0uLL;
    v19[3] = 0;
    *v17 = 0u;
    *v18 = 0u;
    memset(v19, 0, 19);
    v3 = __p;
    if (!__p)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v2 = __p;
    while (*v2)
    {
      v2 += 144;
      if (v2 == v12)
      {
        v2 = __p;
        break;
      }
    }

    sub_704AE0(v13, v2);
    v3 = __p;
    if (!__p)
    {
LABEL_8:
      v4 = LOBYTE(v19[2]);
      if ((SHIBYTE(v20) & 0x80000000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_20;
    }
  }

  v7 = v12;
  v8 = v3;
  if (v12 != v3)
  {
    do
    {
      v7 = sub_310F30(v7 - 144);
    }

    while (v7 != v3);
    v8 = __p;
  }

  v12 = v3;
  operator delete(v8);
  v4 = LOBYTE(v19[2]);
  if ((SHIBYTE(v20) & 0x80000000) == 0)
  {
LABEL_9:
    if ((SHIBYTE(v19[1]) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

LABEL_21:
    operator delete(v18[1]);
    v5 = v17[0];
    if (!v17[0])
    {
LABEL_11:
      if (SBYTE7(v16) < 0)
      {
        goto LABEL_32;
      }

      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_20:
  operator delete(v19[3]);
  if (SHIBYTE(v19[1]) < 0)
  {
    goto LABEL_21;
  }

LABEL_10:
  v5 = v17[0];
  if (!v17[0])
  {
    goto LABEL_11;
  }

LABEL_22:
  v9 = v17[1];
  if (v17[1] == v5)
  {
    v17[1] = v5;
    operator delete(v5);
    if ((SBYTE7(v16) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_32:
    operator delete(v15[0]);
    if ((SHIBYTE(v14) & 0x80000000) == 0)
    {
      return v4;
    }

    goto LABEL_33;
  }

  do
  {
    if (*(v9 - 9) < 0)
    {
      operator delete(*(v9 - 4));
      v10 = v9 - 7;
      if ((*(v9 - 33) & 0x80000000) == 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v10 = v9 - 7;
      if ((*(v9 - 33) & 0x80000000) == 0)
      {
        goto LABEL_25;
      }
    }

    operator delete(*v10);
LABEL_25:
    v9 = v10;
  }

  while (v10 != v5);
  v17[1] = v5;
  operator delete(v17[0]);
  if (SBYTE7(v16) < 0)
  {
    goto LABEL_32;
  }

LABEL_12:
  if ((SHIBYTE(v14) & 0x80000000) == 0)
  {
    return v4;
  }

LABEL_33:
  operator delete(v13[1]);
  return v4;
}

void sub_6DC640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_5E9738(va);
  _Unwind_Resume(a1);
}

void sub_6DC654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_5E9738(va);
  _Unwind_Resume(a1);
}

BOOL sub_6DC668(uint64_t a1, void *a2, unint64_t a3, int **a4, uint64_t a5)
{
  if (*(a1 + 870) != 1)
  {
    return 0;
  }

  result = sub_70EE0C(a1 + 1432, a4);
  if (result)
  {
    v11 = (*a4 - **a4);
    if (*v11 < 0x2Fu || (v12 = v11[23]) == 0 || (result = 0, v13 = *(*a4 + v12), v13 != 14) && v13 != 44)
    {
      result = 0;
      v14 = *(a5 + 24);
      if (v14 - 91 >= 6 && (v14 > 0x18 || ((1 << v14) & 0x1C00008) == 0))
      {
        v15 = sub_4D1F50(a2, a3);
        v16 = *a1;
        v17 = *(v15 + 32);
        v18 = sub_2B51D8(*a1, v17 & 0xFFFFFFFFFFFFLL);
        if (*(v16 + 7772) == 1)
        {
          v19 = sub_30C50C(v16 + 3896, v17, 0);
          v20 = &v19[-*v19];
          if (*v20 < 5u)
          {
            v21 = 0;
          }

          else
          {
            v21 = *(v20 + 2);
            if (v21)
            {
              v21 += &v19[*&v19[v21]];
            }
          }

          v22 = v21 + ((v17 >> 30) & 0x3FFFC) + 4 + *(v21 + ((v17 >> 30) & 0x3FFFC) + 4);
        }

        else
        {
          v22 = 0;
        }

        v61[0] = v18;
        v61[1] = v22;
        v61[2] = sub_31D7E8(v16, v17 & 0xFFFFFFFFFFFFLL, 1);
        v61[3] = v23;
        v61[4] = v17 & 0xFFFFFFFFFFFFFFLL;
        __p = 0;
        v59 = 0;
        v60 = 0;
        v24 = sub_4D1DC0(a2);
        if (a3 <= v24)
        {
          v25 = v24;
        }

        else
        {
          v25 = a3;
        }

        if (v24 > a3)
        {
          do
          {
            v26 = sub_4D1F50(a2, a3);
            v27 = a4[4];
            v28 = *(v26 + 32);
            v30 = v27 == v28;
            v29 = HIDWORD(v27) & 0xFFFFFF;
            v30 = v30 && v29 == (HIDWORD(v28) & 0xFFFFFF);
            if (v30)
            {
              break;
            }

            v31 = *a1;
            v32 = sub_2B51D8(*a1, v28 & 0xFFFFFFFFFFFFLL);
            if (*(v31 + 7772) == 1)
            {
              v33 = sub_30C50C(v31 + 3896, v28, 0);
              v34 = &v33[-*v33];
              if (*v34 < 5u)
              {
                v35 = 0;
              }

              else
              {
                v35 = *(v34 + 2);
                if (v35)
                {
                  v35 += &v33[*&v33[v35]];
                }
              }

              v36 = v35 + ((v28 >> 30) & 0x3FFFC) + 4 + *(v35 + ((v28 >> 30) & 0x3FFFC) + 4);
            }

            else
            {
              v36 = 0;
            }

            v37 = sub_31D7E8(v31, v28 & 0xFFFFFFFFFFFFLL, 1);
            v53 = v32;
            v54 = v36;
            v55 = v37;
            v56 = v38;
            v57 = v28 & 0xFFFFFFFFFFFFFFLL;
            if (!sub_70EE0C(a1 + 1432, &v53))
            {
              goto LABEL_50;
            }

            v39 = (v53 - *v53);
            if (*v39 >= 0x2Fu)
            {
              v40 = v39[23];
              if (v40)
              {
                v41 = *(v53 + v40);
                if (v41 == 14 || v41 == 44)
                {
                  goto LABEL_50;
                }
              }
            }

            v42 = *a1;
            v43 = *(v26 + 32);
            v44 = sub_2B51D8(*a1, v43 & 0xFFFFFFFFFFFFLL);
            if (*(v42 + 7772) == 1)
            {
              v45 = sub_30C50C(v42 + 3896, v43, 0);
              v46 = &v45[-*v45];
              if (*v46 < 5u)
              {
                v47 = 0;
              }

              else
              {
                v47 = *(v46 + 2);
                if (v47)
                {
                  v47 += &v45[*&v45[v47]];
                }
              }

              v48 = v47 + ((v43 >> 30) & 0x3FFFC) + 4 + *(v47 + ((v43 >> 30) & 0x3FFFC) + 4);
            }

            else
            {
              v48 = 0;
            }

            v49 = sub_31D7E8(v42, v43 & 0xFFFFFFFFFFFFLL, 1);
            v53 = v44;
            v54 = v48;
            v55 = v49;
            v56 = v50;
            v57 = v43 & 0xFFFFFFFFFFFFFFLL;
            sub_31B8F4(v42, &v53, &__p);
            if (sub_6E3EF8(a1, v61, &__p, a4) != 1)
            {
LABEL_50:
              result = 0;
              v51 = __p;
              if (!__p)
              {
                return result;
              }

              goto LABEL_51;
            }

            ++a3;
          }

          while (v25 != a3);
        }

        result = 1;
        v51 = __p;
        if (__p)
        {
LABEL_51:
          v59 = v51;
          v52 = result;
          operator delete(v51);
          return v52;
        }
      }
    }
  }

  return result;
}

void sub_6DCA3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_6DCA68(uint64_t a1, uint64_t a2, int **a3, int ***a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(a7 + 8) = *a7;
  *(a7 + 24) = 0;
  v8 = a4[1] - *a4;
  if (v8)
  {
    v9 = a6;
    v11 = a4;
    v14 = a1;
    v15 = 0;
    v16 = 0xCCCCCCCCCCCCCCCDLL * (v8 >> 3);
    v50 = v16;
    do
    {
      v18 = sub_605E3C(v11, v15);
      v19 = *a3;
      v20 = (*a3 - **a3);
      v21 = *v20;
      if (*(a3 + 38))
      {
        if (v21 < 0x9B)
        {
          goto LABEL_34;
        }

        v22 = v20[77];
        if (!v22 || (*&v19[v22] & 2) == 0)
        {
          goto LABEL_34;
        }
      }

      else
      {
        if (v21 < 0x9B)
        {
          goto LABEL_34;
        }

        v23 = v20[77];
        if (!v23 || (*&v19[v23] & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      v24 = *v18;
      v25 = (*v18 - **v18);
      v26 = *v25;
      if (*(v18 + 38))
      {
        if (v26 < 0x9B)
        {
          goto LABEL_33;
        }

        v27 = v25[77];
        if (!v27)
        {
          goto LABEL_33;
        }

        if ((v24[v27] & 2) == 0 && (*&v24[v27] & 1) == 0 && a5 != v15)
        {
          goto LABEL_5;
        }
      }

      else
      {
        if (v26 < 0x9B || (v29 = v25[77]) == 0)
        {
LABEL_33:
          if (a5 != v15)
          {
            goto LABEL_5;
          }

          goto LABEL_34;
        }

        if ((v24[v29] & 1) == 0 && (*&v24[v29] & 2) == 0 && a5 != v15)
        {
          goto LABEL_5;
        }
      }

LABEL_34:
      v31 = sub_6D446C(v14, a2, a3, v11, v15, 1, 1, 0);
      if (v31 != 4)
      {
        v32 = v31;
        if (*(v9 + 32) && *v9 && *(v9 + 8))
        {
          v32 = sub_6D446C(v14, a2, v9, v11, v15, 1, 1, 0);
        }

        result = sub_6DCDD8(v14, v32);
        if ((result & 0x10000) == 0)
        {
          *(a7 + 8) = *a7;
          *(a7 + 24) = 0;
          return result;
        }

        v34 = a5 == v15;
        v36 = *(a7 + 8);
        v35 = *(a7 + 16);
        if (v36 < v35)
        {
          *v36 = result;
          *(v36 + 2) = v34;
          v17 = v36 + 4;
        }

        else
        {
          v37 = *a7;
          v38 = v36 - *a7;
          v39 = v38 >> 2;
          v40 = (v38 >> 2) + 1;
          if (v40 >> 62)
          {
            sub_1794();
          }

          v41 = a2;
          v42 = a5;
          v43 = v35 - v37;
          if (v43 >> 1 > v40)
          {
            v40 = v43 >> 1;
          }

          if (v43 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v44 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v44 = v40;
          }

          if (v44)
          {
            if (!(v44 >> 62))
            {
              operator new();
            }

            sub_1808();
          }

          v45 = 4 * v39;
          *v45 = result;
          *(v45 + 2) = v34;
          v17 = 4 * v39 + 4;
          v46 = (v45 - 4 * (v38 >> 2));
          memcpy(v46, v37, v38);
          *a7 = v46;
          *(a7 + 8) = v17;
          *(a7 + 16) = 0;
          if (v37)
          {
            operator delete(v37);
          }

          a5 = v42;
          a2 = v41;
          v11 = a4;
          v9 = a6;
          v14 = a1;
        }

        *(a7 + 8) = v17;
        v16 = v50;
      }

LABEL_5:
      ++v15;
    }

    while (v16 != v15);
  }

  return sub_6D8760(a7, sub_6D88A4, sub_6D88C4);
}

uint64_t sub_6DCDD8(uint64_t a1, int a2)
{
  v2 = 0;
  v3 = 792;
  switch(a2)
  {
    case 0:
    case 3:
    case 5:
    case 12:
    case 89:
    case 90:
      goto LABEL_2;
    case 1:
      v3 = 816;
      goto LABEL_2;
    case 2:
      v3 = 848;
      goto LABEL_2;
    case 20:
      v3 = 800;
      goto LABEL_2;
    case 21:
      v3 = 832;
      goto LABEL_2;
    case 60:
      v3 = 824;
      goto LABEL_2;
    case 61:
      v3 = 856;
      goto LABEL_2;
    case 62:
      v3 = 808;
      goto LABEL_2;
    case 63:
      v3 = 840;
LABEL_2:
      v2 = *(a1 + v3) | 0x10000u;
      break;
    default:
      return v2;
  }

  return v2;
}

uint64_t sub_6DCFD0(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2)
  {
    v3 = (*(a2 + 8) - *a2) >> 3;
    if (v3 < 3)
    {
      return 0;
    }

    if (v2 == 12)
    {
      return v3 - 2;
    }

    if (v2 != 4)
    {
      if (v2 != 3)
      {
        if (v3 <= 0x666666666666666)
        {
          operator new();
        }

        sub_1794();
      }

      return v3 - 2;
    }
  }

  return -1;
}

void sub_6DD34C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
    if (!v12)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v12)
  {
    goto LABEL_3;
  }

  operator delete(v12);
  _Unwind_Resume(exception_object);
}

uint64_t sub_6DD3AC(uint64_t a1, char **a2, int **a3, uint64_t a4, int a5)
{
  if (a5 == 2)
  {
    v20 = *a2;
    v21 = &(*a2)[-**a2];
    v22 = *v21;
    if (v22 < 0x9B || !*(v21 + 77) || (*(v20 + *(v21 + 77) + 3) & 0x80) == 0)
    {
      v23 = (*a3 - **a3);
      if (*v23 >= 0x9Bu)
      {
        v24 = v23[77];
        if (v24)
        {
          if ((*(*a3 + v24 + 3) & 0x80) != 0)
          {
            v41 = 94;
            if (!*(a1 + 1113))
            {
              v41 = 22;
            }

            return v41 | 0x100000000;
          }
        }
      }

      if (v22 < 0x9B)
      {
        goto LABEL_61;
      }
    }

    if (*(v21 + 77))
    {
      if ((*(v20 + *(v21 + 77) + 3) & 0x80) != 0)
      {
        v37 = (*a3 - **a3);
        if (*v37 < 0x9Bu || (v38 = v37[77]) == 0 || (*(*a3 + v38 + 3) & 0x80) == 0)
        {
          v39 = 95;
          if (!*(a1 + 1113))
          {
            v39 = 23;
          }

          return v39 | 0x100000000;
        }
      }
    }

    v18 = *(v21 + 77);
    if (v18)
    {
      if ((*(v20 + v18 + 3) & 0x80) == 0)
      {
        goto LABEL_61;
      }

      v25 = (*a3 - **a3);
      if (*v25 < 0x9Bu)
      {
        goto LABEL_61;
      }

      v18 = v25[77];
      if (v18)
      {
        if ((*(*a3 + v18 + 3) & 0x80) != 0)
        {
          goto LABEL_53;
        }

        goto LABEL_61;
      }
    }

    return v18;
  }

  if (a5 != 1)
  {
    if (a5)
    {
      goto LABEL_61;
    }

    v5 = *a2;
    v6 = &(*a2)[-**a2];
    v7 = *v6;
    if (v7 < 0x9B || !*(v6 + 77) || (*(v5 + *(v6 + 77)) & 0x80000208) != 8)
    {
      v8 = (*a3 - **a3);
      if (*v8 >= 0x9Bu && (v9 = v8[77]) != 0)
      {
        v10 = (*(*a3 + v9) & 0x80000208) == 8;
        v11 = v10 << 32;
        v12 = 22;
        if (v10)
        {
          return v12 | v11;
        }

        v12 = 0;
        if (v7 < 0x9B)
        {
          return v12 | v11;
        }
      }

      else if (v7 < 0x9B)
      {
        goto LABEL_61;
      }
    }

    if (*(v6 + 77))
    {
      if ((*(v5 + *(v6 + 77)) & 0x80000208) == 8)
      {
        v26 = (*a3 - **a3);
        if (*v26 < 0x9Bu)
        {
          return 0x100000017;
        }

        v27 = v26[77];
        if (!v27 || (*(*a3 + v27) & 0x80000208) != 8)
        {
          return 0x100000017;
        }
      }
    }

    if (!*(v6 + 77))
    {
      return *(v6 + 77);
    }

    if ((*(v5 + *(v6 + 77)) & 0x80000208) != 8 || (v28 = (*a3 - **a3), *v28 < 0x9Bu))
    {
LABEL_61:
      v11 = 0;
      v12 = 0;
      return v12 | v11;
    }

    v18 = v28[77];
    if (v18)
    {
      if ((*(*a3 + v18) & 0x80000208) == 8)
      {
        goto LABEL_53;
      }

      goto LABEL_61;
    }

    return v18;
  }

  v13 = *a2;
  v14 = &(*a2)[-**a2];
  v15 = *v14;
  if (v15 < 0x9B || !*(v14 + 77) || (*(v13 + *(v14 + 77) + 1) & 2) == 0)
  {
    v16 = (*a3 - **a3);
    if (*v16 >= 0x9Bu)
    {
      v17 = v16[77];
      if (v17)
      {
        if ((*(*a3 + v17 + 1) & 2) != 0)
        {
          v40 = 91;
          if (!*(a1 + 1112))
          {
            v40 = 22;
          }

          return v40 | 0x100000000;
        }
      }
    }

    if (v15 < 0x9B)
    {
      goto LABEL_61;
    }
  }

  if (*(v14 + 77))
  {
    if ((*(v13 + *(v14 + 77) + 1) & 2) != 0)
    {
      v34 = (*a3 - **a3);
      if (*v34 < 0x9Bu || (v35 = v34[77]) == 0 || (*(*a3 + v35 + 1) & 2) == 0)
      {
        v36 = 92;
        if (!*(a1 + 1112))
        {
          v36 = 23;
        }

        return v36 | 0x100000000;
      }
    }
  }

  v18 = *(v14 + 77);
  if (!v18)
  {
    return v18;
  }

  if ((*(v13 + v18 + 1) & 2) == 0)
  {
    goto LABEL_61;
  }

  v19 = (*a3 - **a3);
  if (*v19 < 0x9Bu)
  {
    goto LABEL_61;
  }

  v18 = v19[77];
  if (!v18)
  {
    return v18;
  }

  if ((*(*a3 + v18 + 1) & 2) == 0)
  {
    goto LABEL_61;
  }

LABEL_53:
  v29 = *a4;
  v30 = *(a4 + 8);
  if (*a4 == v30)
  {
    return 0x100000000;
  }

  if (a5)
  {
    if (a5 == 1)
    {
      while (1)
      {
        v31 = (*v29 - **v29);
        if (*v31 < 0x9Bu)
        {
          break;
        }

        v32 = v31[77];
        if (!v32 || (*(*v29 + v32 + 1) & 2) == 0)
        {
          break;
        }

        v29 += 5;
        if (v29 == v30)
        {
          return 0x100000000;
        }
      }
    }

    else
    {
      while (1)
      {
        v43 = (*v29 - **v29);
        if (*v43 < 0x9Bu)
        {
          break;
        }

        v42 = v43[77];
        if (!v42 || (*(*v29 + v42 + 3) & 0x80) == 0)
        {
          break;
        }

        v29 += 5;
        if (v29 == v30)
        {
          return 0x100000000;
        }
      }
    }
  }

  else
  {
    while (1)
    {
      v47 = (*v29 - **v29);
      if (*v47 < 0x9Bu)
      {
        break;
      }

      v48 = v47[77];
      if (!v48 || (*(*v29 + v48) & 0x80000208) != 8)
      {
        break;
      }

      v29 += 5;
      if (v29 == v30)
      {
        return 0x100000000;
      }
    }
  }

  if (sub_31EE90(*a1, a2[4] & 0xFFFFFFFFFFFFFFLL, a3[4] & 0xFFFFFFFFFFFFFFLL))
  {
    return 0x100000000;
  }

  if (!a5)
  {
    return 0x100000018;
  }

  if (a5 == 2)
  {
    v49 = 96;
    if (!*(a1 + 1113))
    {
      v49 = 24;
    }

    return v49 | 0x100000000;
  }

  else
  {
    v46 = 93;
    if (!*(a1 + 1112))
    {
      v46 = 24;
    }

    return v46 | 0x100000000;
  }
}

uint64_t sub_6DD944(uint64_t a1, int **a2, int ***a3, uint64_t a4, double a5)
{
  if (*(a1 + 708) != 1)
  {
    return 0;
  }

  v9 = sub_70E7C4(a1 + 1432, a2, a3, -1, a5);
  if (v9 != -1 && v9 == a4)
  {
    return 0;
  }

  result = sub_31EE90(*a1, a2[4] & 0xFFFFFFFFFFFFFFLL, (*a3)[5 * a4 + 4] & 0xFFFFFFFFFFFFFFLL);
  if (result)
  {
    v11 = (*a2 - **a2);
    if (*v11 < 0x2Fu)
    {
      return 0;
    }

    v12 = v11[23];
    if (!v12)
    {
      return 0;
    }

    v13 = *(*a2 + v12);
    v14 = v13 > 0x2B;
    v15 = (1 << v13) & 0x80000001040;
    if (v14 || v15 == 0)
    {
      return 0;
    }

    v17 = *a3;
    v18 = a3[1];
    if (*a3 != v18)
    {
      result = 1;
      while (1)
      {
        v19 = (*v17 - **v17);
        if (*v19 < 0x2Fu)
        {
          break;
        }

        v20 = v19[23];
        if (!v20)
        {
          break;
        }

        v21 = *(*v17 + v20);
        v14 = v21 > 0x2B;
        v22 = (1 << v21) & 0x80000001040;
        if (v14 || v22 == 0)
        {
          break;
        }

        v17 += 5;
        if (v17 == v18)
        {
          return result;
        }
      }

      return 0;
    }

    return 1;
  }

  return result;
}

uint64_t sub_6DDAC0(uint64_t a1, uint64_t a2, int **a3, int ***a4, uint64_t a5, unint64_t a6)
{
  if (sub_6DEE8C(a1, a3, a4) > 1)
  {
    return 1;
  }

  if (*(a1 + 1114) != 1 || a5 != -1 && a5 != a6)
  {
    return 0;
  }

  v13 = sub_605E3C(a4, a6);
  v14 = *v13;
  v15 = *(v13 + 16);
  v53 = *(v13 + 32);
  v52[0] = v14;
  v52[1] = v15;
  v16 = *a3;
  v17 = (*a3 - **a3);
  v18 = *v17;
  if (v18 >= 0x2F && v17[23])
  {
    v19 = *(v16 + v17[23]);
    if (v19 <= 0x2A)
    {
      if (v19 != 6 && v19 != 12)
      {
        goto LABEL_20;
      }

      goto LABEL_17;
    }

    if (v19 == 44)
    {
      return 0;
    }

    if (v19 == 43)
    {
LABEL_17:
      if (v18 >= 0x9B)
      {
        v21 = v17[77];
        if (v21)
        {
          if ((*(v16 + v21 + 2) & 0x20) != 0)
          {
            goto LABEL_20;
          }
        }
      }

      return 0;
    }
  }

LABEL_20:
  v49 = 0;
  v50 = 0;
  v51 = 0;
  v22 = a4[1] - *a4;
  if (v22)
  {
    if (0xCCCCCCCCCCCCCCCDLL * (v22 >> 3) < 0x666666666666667)
    {
      operator new();
    }

    sub_1794();
  }

  v23 = sub_708D84(0, 0, a1);
  v25 = v49;
  v24 = v50;
  if (v23 != v50)
  {
    v24 = v23;
    v50 = v23;
  }

  if (0xCCCCCCCCCCCCCCCDLL * (v24 - v49) < 2)
  {
    return 0;
  }

  v27 = v49;
  if (v49 != v24)
  {
    v27 = v49;
    while (__PAIR64__(*(v27 + 18), *(v27 + 8)) != __PAIR64__(WORD2(v53), v53) || *(v27 + 38) != BYTE6(v53))
    {
      v27 += 5;
      if (v27 == v24)
      {
        return 0;
      }
    }
  }

  if (v27 == v24)
  {
    return 0;
  }

  v28 = v49[4];
  if (v53 == v28 && WORD2(v53) == WORD2(v28) && BYTE6(v53) == BYTE6(v28))
  {
    v25 = sub_6B8D68(&v49, 1uLL);
  }

  v29 = *v25;
  v30 = *(v25 + 16);
  v48 = *(v25 + 32);
  v47[0] = v29;
  v47[1] = v30;
  v31 = *a3;
  v32 = (*a3 - **a3);
  v33 = *v32;
  if (*(a3 + 38))
  {
    if (v33 < 0x47)
    {
      goto LABEL_50;
    }

    v34 = v32[35];
    if (!v34)
    {
      goto LABEL_50;
    }

    v35 = *(v31 + v34);
    if ((v35 & 0x141510) == 0)
    {
      v36 = 64;
      goto LABEL_47;
    }
  }

  else
  {
    if (v33 < 0x47)
    {
      goto LABEL_50;
    }

    v37 = v32[35];
    if (!v37)
    {
      goto LABEL_50;
    }

    v35 = *(v31 + v37);
    if ((v35 & 0xA0A88) == 0)
    {
      v36 = 32;
LABEL_47:
      if ((v35 & v36) == 0)
      {
        goto LABEL_50;
      }
    }
  }

  if (sub_3139A0(v52) && !sub_3139A0(v47))
  {
    goto LABEL_61;
  }

LABEL_50:
  v38 = (*&v47[0] - **&v47[0]);
  if (*v38 >= 0x9Bu && (v39 = v38[77]) != 0 && (*(*&v47[0] + v39 + 2) & 2) != 0 || (sub_30F868(a1 + 7264, v47) & 1) != 0 || (sub_30F6FC(a1 + 7264, v47) & 1) != 0 || (v41 = (*&v47[0] - **&v47[0]), *v41 >= 0x2Fu) && (v42 = v41[23]) != 0 && (v43 = *(*&v47[0] + v42) - 15, v43 < 0x21) && ((0x1C5C08009uLL >> v43) & 1) != 0 || (v44 = sub_70E484(a1 + 1432, a2, a3, v52, 1, v40), v45 = sub_6DEB50(a1, a2, a3, v52, v47, v44), fabs(v44) < *(a1 + 184)) || fabs(v45) > *(a1 + 400))
  {
LABEL_61:
    result = 0;
    v46 = v49;
    if (!v49)
    {
      return result;
    }

LABEL_27:
    v50 = v46;
    v26 = result;
    operator delete(v46);
    return v26;
  }

  result = 1;
  v46 = v49;
  if (v49)
  {
    goto LABEL_27;
  }

  return result;
}

void sub_6DDF18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_6DDF50(uint64_t a1, uint64_t a2)
{
  v2 = a2 & 0xFF000000000000;
  v3 = sub_2B51D8(a1, a2 & 0xFFFFFFFFFFFFLL);
  v4 = (v3 - *v3);
  v5 = *v4;
  if (!v2)
  {
    if (v5 < 0x27)
    {
      return 0;
    }

    v6 = v4[19];
    if (!v6)
    {
      return 0;
    }

    return *(v3 + v6 + *(v3 + v6));
  }

  if (v5 >= 0x29)
  {
    v6 = v4[20];
    if (v6)
    {
      return *(v3 + v6 + *(v3 + v6));
    }
  }

  return 0;
}

uint64_t sub_6DDFC8(uint64_t a1, int **a2, int ***a3, unint64_t a4, int a5, uint64_t a6)
{
  v10 = sub_605E3C(a3, a4);
  v12 = (*v10 - **v10);
  if (*v12 < 0x2Fu)
  {
    return 0;
  }

  v13 = v12[23];
  if (!v13)
  {
    return 0;
  }

  v14 = *(*v10 + v13);
  v15 = v14 > 0x2A;
  v16 = (1 << v14) & 0x50426810004;
  if (v15 || v16 == 0)
  {
    return 0;
  }

  v18 = sub_70E7C4(a1 + 1432, a2, a3, -1, v11);
  result = 0;
  if (v18 != -1 && v18 != a4)
  {
    operator new();
  }

  return result;
}

void sub_6DEA70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a35)
  {
    operator delete(a35);
    v38 = *(v36 - 128);
    if (!v38)
    {
LABEL_5:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v38 = *(v36 - 128);
    if (!v38)
    {
      goto LABEL_5;
    }
  }

  *(v36 - 120) = v38;
  operator delete(v38);
  _Unwind_Resume(exception_object);
}

double sub_6DEBC0(double *a1, uint64_t a2, int **a3, int **a4, int **a5)
{
  if (sub_71A0D0((a1 + 179), a3, a4, a5))
  {
    return a1[52];
  }

  v12 = fabs(sub_70E484((a1 + 179), a2, a3, a5, 0, v10));
  if (v12 < a1[51])
  {
    return a1[50];
  }

  LODWORD(v12) = *(a1 + 184);
  if (sub_4346FC(*a1, a3, a5, *(a1 + 142), *(a1 + 141), *&v12, a1[140]))
  {
    return a1[49];
  }

  LODWORD(v13) = *(a1 + 184);
  v14 = sub_4346FC(*a1, a3, a4, *(a1 + 142), *(a1 + 141), v13, a1[140]);
  v15 = 50;
  if (v14)
  {
    v15 = 49;
  }

  return a1[v15];
}

unint64_t sub_6DECF4(uint64_t a1, void *a2)
{
  v2 = (*a2 - **a2);
  if (*v2 >= 0x2Fu && (v3 = v2[23]) != 0 && (v4 = *(*a2 + v3), v4 <= 0x2C))
  {
    return (0x7FFFFFFAFBFuLL >> v4) & 1;
  }

  else
  {
    return 1;
  }
}

BOOL sub_6DED40(uint64_t a1, void *a2, void *a3)
{
  v3 = (*a2 - **a2);
  if (*v3 >= 0x2Fu && (v4 = v3[23]) != 0 && !*(*a2 + v4) && (v5 = (*a3 - **a3), *v5 >= 0x2Fu) && (v6 = v5[23]) != 0)
  {
    return *(*a3 + v6) == 38;
  }

  else
  {
    return 0;
  }
}

BOOL sub_6DEDA0(uint64_t a1, int **a2, void *a3, int **a4)
{
  v4 = *a2;
  v5 = (*a2 - **a2);
  v6 = *v5;
  if (v6 < 0x2F)
  {
    return 0;
  }

  if (!v5[23])
  {
    return 0;
  }

  if (*(v4 + v5[23]))
  {
    return 0;
  }

  v7 = (*a3 - **a3);
  if (*v7 < 0x2Fu)
  {
    return 0;
  }

  v8 = v7[23];
  if (!v8)
  {
    return 0;
  }

  if (*(*a3 + v8))
  {
    return 0;
  }

  v9 = (*a4 - **a4);
  if (*v9 < 0x2Fu)
  {
    return 0;
  }

  v10 = v9[23];
  if (!v10 || *(*a4 + v10) != 26)
  {
    return 0;
  }

  if (v5[10])
  {
    if (*(v4 + v5[10]) == 1)
    {
      return 0;
    }

    if (*(v4 + v5[10]))
    {
      return sub_312B7C(a2, a4[4] & 0xFFFFFFFFFFFFFFLL) == 1;
    }
  }

  if (v6 >= 0x9B)
  {
    v11 = v5[77];
    if (v11)
    {
      if ((~*(v4 + v11) & 3) == 0)
      {
        return sub_312B7C(a2, a4[4] & 0xFFFFFFFFFFFFFFLL) == 1;
      }
    }
  }

  return 0;
}

uint64_t sub_6DEE8C(uint64_t a1, int **a2, int ***a3)
{
  v3 = *a3;
  v4 = a3[1];
  if (*a3 != v4)
  {
    v7 = 0;
    while (1)
    {
      while (1)
      {
        v8 = *a2;
        v9 = (*a2 - **a2);
        v10 = *v9;
        if (v10 >= 0x2F)
        {
          if (v9[23])
          {
            break;
          }
        }

        v14 = 0;
        v15 = *v3;
        v16 = (*v3 - **v3);
        v17 = *v16;
        if (v17 < 0x2F)
        {
          goto LABEL_27;
        }

LABEL_16:
        if (!v16[23])
        {
          goto LABEL_27;
        }

        v18 = *(v15 + v16[23]);
        v19 = v18 > 0x2B || ((1 << v18) & 0x80000001040) == 0;
        if (v19 || v17 >= 0x9B && (v20 = v16[77]) != 0 && (*(v15 + v20 + 2) & 0x20) != 0)
        {
          if ((v14 ^ (v18 == 44)))
          {
            goto LABEL_28;
          }
        }

        else if (!v14)
        {
          goto LABEL_28;
        }

LABEL_3:
        v7 += fabs(sub_70E2E0(a1 + 1432, a2, v3)) < *(a1 + 200);
        v3 += 5;
        if (v3 == v4)
        {
          return v7;
        }
      }

      v11 = *(v8 + v9[23]);
      if (v11 <= 0x2B && ((1 << v11) & 0x80000001040) != 0 && (v10 < 0x9B || (v13 = v9[77]) == 0 || (*(v8 + v13 + 2) & 0x20) == 0))
      {
        v14 = 1;
        v15 = *v3;
        v16 = (*v3 - **v3);
        v17 = *v16;
        if (v17 < 0x2F)
        {
          goto LABEL_27;
        }

        goto LABEL_16;
      }

      v14 = v11 == 44;
      v15 = *v3;
      v16 = (*v3 - **v3);
      v17 = *v16;
      if (v17 >= 0x2F)
      {
        goto LABEL_16;
      }

LABEL_27:
      if (!v14)
      {
        goto LABEL_3;
      }

LABEL_28:
      v3 += 5;
      if (v3 == v4)
      {
        return v7;
      }
    }
  }

  return 0;
}

uint64_t sub_6DF044(uint64_t a1, void *a2, unint64_t a3, int **a4)
{
  v42 = 0;
  v43 = 0;
  v44 = 0;
  __p = 0;
  v40 = 0;
  v41 = 0;
  v7 = (*a4 - **a4);
  if (*v7 >= 9u && (v8 = v7[4]) != 0)
  {
    v9 = *(*a4 + v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a4 + 1);
  v36 = *a4;
  v37 = v10;
  v38 = a4[4];
  if (v9 < *(a1 + 448))
  {
    while (1)
    {
      sub_740664((a1 + 7480), &v36, &v42);
      if (v42 == v43 || fabs(sub_710C1C(a1 + 1432, a2, &v36, v42)) > *(a1 + 200))
      {
        break;
      }

      v11 = *(v42 + 4);
      v12 = *(v42 + 1);
      v36 = *v42;
      v37 = v12;
      v38 = v11;
      v13 = v40;
      if (v40 >= v41)
      {
        v15 = __p;
        v16 = v40 - __p;
        v17 = (v40 - __p) >> 3;
        v18 = v17 + 1;
        if ((v17 + 1) >> 61)
        {
          sub_1794();
        }

        v19 = v41 - __p;
        if ((v41 - __p) >> 2 > v18)
        {
          v18 = v19 >> 2;
        }

        if (v19 >= 0x7FFFFFFFFFFFFFF8)
        {
          v20 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v20 = v18;
        }

        if (v20)
        {
          if (!(v20 >> 61))
          {
            operator new();
          }

          sub_1808();
        }

        v21 = (8 * v17);
        v22 = v11 & 0xFFFFFFFFFFFFFFLL;
        v23 = &v21[-((v40 - __p) >> 3)];
        *v21 = v22;
        v14 = v21 + 1;
        memcpy(v23, v15, v16);
        __p = v23;
        v41 = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        *v40 = v11 & 0xFFFFFFFFFFFFFFLL;
        v14 = v13 + 1;
      }

      v40 = v14;
      v24 = (v36 - *v36);
      if (*v24 >= 9u && (v25 = v24[4]) != 0)
      {
        v9 += *(v36 + v25);
        if (v9 >= *(a1 + 448))
        {
          break;
        }
      }

      else if (v9 >= *(a1 + 448))
      {
        break;
      }
    }
  }

  sub_3120CC(&__p);
  for (i = sub_4D23F8(a2, a3, v26); i < *(a1 + 448); i += sub_4D23F8(a2, a3, v30))
  {
    if (a3 >= sub_4D1DC0(a2) - 1)
    {
      break;
    }

    v28 = sub_4D1F50(a2, a3++);
    v29 = sub_4D1F50(a2, a3);
    v30 = fabs(sub_70E2E0(a1 + 1432, v28, v29));
    if (v30 > *(a1 + 200))
    {
      break;
    }

    v31 = __p;
    if (__p != v40)
    {
      v32 = *(v29 + 32);
      while (__PAIR64__(*(v31 + 2), *v31) != __PAIR64__(WORD2(v32), v32) || *(v31 + 6) != BYTE6(v32))
      {
        if (++v31 == v40)
        {
          goto LABEL_35;
        }
      }
    }

    if (v31 != v40)
    {
      v33 = 1;
      v34 = __p;
      if (__p)
      {
        goto LABEL_37;
      }

      goto LABEL_38;
    }

LABEL_35:
    ;
  }

  v33 = 0;
  v34 = __p;
  if (__p)
  {
LABEL_37:
    v40 = v34;
    operator delete(v34);
  }

LABEL_38:
  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  return v33;
}

void sub_6DF388(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
    v20 = a18;
    if (!a18)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v20 = a18;
    if (!a18)
    {
      goto LABEL_3;
    }
  }

  operator delete(v20);
  _Unwind_Resume(exception_object);
}

void *sub_6DF3E4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 3;
    v9 = (v7 >> 3) + 1;
    if (v9 >> 61)
    {
      sub_1794();
    }

    v10 = v3 - v6;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 61))
      {
        operator new();
      }

      sub_1808();
    }

    *(8 * v8) = *a2;
    v5 = 8 * v8 + 8;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
  return (v5 - 8);
}

uint64_t sub_6DF4EC(uint64_t a1, int **a2, int **a3, char a4)
{
  v8 = sub_3116D0(a2);
  if (v8 == sub_311544(a3))
  {
    return 0;
  }

  *&v28[0] = sub_3116D0(a2);
  if (sub_420B0C((a1 + 8), v28))
  {
    return 0;
  }

  v30 = sub_311544(a3);
  if (sub_420B0C((a1 + 8), &v30))
  {
    return 0;
  }

  v9 = sub_31ACAC(*a1, a2, a3);
  v10 = *a1;
  v29 = a2[4];
  v11 = *(a2 + 1);
  v28[0] = *a2;
  v28[1] = v11;
  BYTE6(v29) = BYTE6(v29) == 0;
  v12 = sub_31ACAC(v10, a3, v28);
  if (v12 < v9)
  {
    v9 = v12;
  }

  if (((a4 & 1) != 0 || (v13 = (*a2 - **a2), *v13 >= 0x2Fu) && (v14 = v13[23]) != 0 && ((v15 = *(*a2 + v14), v16 = v15 > 0x2A, v17 = (1 << v15) & 0x50426810004, !v16) ? (v18 = v17 == 0) : (v18 = 1), !v18 && ((v19 = sub_31DDCC(*a1, a2[4] & 0xFFFFFFFFFFFFFFLL), v19 > 0xFFFFFFFEFFFFFFFFLL) || !v19)) || (v20 = (*a3 - **a3), *v20 >= 0x2Fu) && (v21 = v20[23]) != 0 && ((v22 = *(*a3 + v21), v16 = v22 > 0x2A, v23 = (1 << v22) & 0x50426810004, !v16) ? (v24 = v23 == 0) : (v24 = 1), !v24 && ((v25 = sub_31DDCC(*a1, a3[4] & 0xFFFFFFFFFFFFFFLL), v25 > 0xFFFFFFFEFFFFFFFFLL) || !v25)) || fabs(sub_70DE94(a1 + 1432, a2, a3)) <= *(a1 + 1048) || v9 <= *(a1 + 1032) / 100.0) && ((v26 = sub_70E2E0(a1 + 1432, a2, a3), v9 <= *(a1 + 1040) / 100.0) || fabs(v26) >= *(a1 + 1048)))
  {
    return 0;
  }

  else
  {
    return 1;
  }
}

double sub_6DF738(int **a1, int **a2)
{
  v2 = (*a1 - **a1);
  v3 = *v2;
  if (*(a1 + 38))
  {
    if (v3 < 0x49)
    {
      goto LABEL_11;
    }

    v4 = v2[36];
    if (!v4)
    {
      goto LABEL_11;
    }
  }

  else if (v3 < 0x4B || (v4 = v2[37]) == 0)
  {
LABEL_11:
    v5 = -1;
    v6 = *a2;
    v7 = (*a2 - **a2);
    v8 = *v7;
    if (*(a2 + 38))
    {
      goto LABEL_12;
    }

LABEL_8:
    if (v8 >= 0x49)
    {
      v9 = v7[36];
      if (v9)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_15;
  }

  v5 = *(*a1 + v4);
  v6 = *a2;
  v7 = (*a2 - **a2);
  v8 = *v7;
  if (!*(a2 + 38))
  {
    goto LABEL_8;
  }

LABEL_12:
  if (v8 >= 0x4B)
  {
    v9 = v7[37];
    if (v9)
    {
LABEL_14:
      v10 = *&v6[v9];
      goto LABEL_16;
    }
  }

LABEL_15:
  v10 = 0xFFFF;
LABEL_16:
  v11 = v5 + 18000;
  v12 = v5 - 18000;
  if ((v11 >> 5) < 0x465u)
  {
    v12 = v11;
  }

  v13 = v10 - v12;
  if (v13 > 18000)
  {
    v13 -= 36000;
  }

  if (v13 < -17999)
  {
    v13 += 36000;
  }

  return v13 / 100.0;
}

void sub_6DF834(uint64_t a1, __int128 *a2, void *a3, unint64_t a4, uint64_t a5)
{
  sub_605E3C(a3, a4);
  v20 = 0u;
  v21 = 0u;
  v22 = 0x1000000000000;
  v17 = 0u;
  v18 = 0u;
  v19 = 0x1000000000000;
  v14 = 0u;
  v15 = 0u;
  v16 = 0x1000000000000;
  v11 = 0u;
  v12 = 0u;
  v13 = 0x1000000000000;
  v8 = 0u;
  v9 = 0u;
  v10 = 0x1000000000000;
  v5 = 0;
  __dst = 0;
  v7 = 0;
  operator new();
}

void sub_6E0034(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45)
{
  if (__p)
  {
    operator delete(__p);
    v46 = a38;
    if (!a38)
    {
LABEL_3:
      v47 = a41;
      if (!a41)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v46 = a38;
    if (!a38)
    {
      goto LABEL_3;
    }
  }

  operator delete(v46);
  v47 = a41;
  if (!a41)
  {
LABEL_4:
    v48 = a44;
    if (!a44)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(v47);
  v48 = a44;
  if (!a44)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  operator delete(v48);
  _Unwind_Resume(exception_object);
}

uint64_t sub_6E0128(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v8 = *a1;
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 3);
    v10 = v9 + 1;
    if (v9 + 1 > 0x666666666666666)
    {
      sub_1794();
    }

    v11 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - v8) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x333333333333333)
    {
      v12 = 0x666666666666666;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (v12 <= 0x666666666666666)
      {
        operator new();
      }

      sub_1808();
    }

    v13 = 8 * ((v3 - *a1) >> 3);
    v14 = a2[1];
    *v13 = *a2;
    *(v13 + 16) = v14;
    *(v13 + 32) = *(a2 + 4);
    v7 = 40 * v9 + 40;
    v15 = 40 * v9 - (v3 - v8);
    memcpy((v13 - (v3 - v8)), v8, v3 - v8);
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v8)
    {
      operator delete(v8);
    }
  }

  else
  {
    v5 = *a2;
    v6 = a2[1];
    *(v3 + 32) = *(a2 + 4);
    *v3 = v5;
    *(v3 + 16) = v6;
    v7 = v3 + 40;
  }

  *(a1 + 8) = v7;
  return v7 - 40;
}

void sub_6E0264(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 3)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_1794();
  }
}

uint64_t sub_6E032C(uint64_t *a1, void *a2, uint64_t *a3)
{
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3) - 1;
  if (v4 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3) - 1;
  }

  if (v4 < 2)
  {
    v6 = 0;
    v7 = -1;
    if (a1[64] != 0x7FFFFFFFFFFFFFFFLL && a1[64] != 0x7FFFFFFFFFFFFFFELL)
    {
      goto LABEL_37;
    }

    return v7;
  }

  v6 = 0;
  v7 = -1;
  v10 = 1;
  v11 = 1.79769313e308;
  do
  {
    v29 = -1;
    v30 = 0x7FFFFFFF;
    v14 = sub_605E3C(a2, v10);
    sub_2B7A20(*a1, *(v14 + 32) & 0xFFFFFFFFFFFFFFLL, &v25);
    v15 = sub_31BF20(&v25, __p).n128_u64[0];
    if (v26)
    {
      v27 = v26;
      operator delete(v26);
    }

    sub_6D5084(__p, a3, 0, 0, &v25, v15);
    v16 = v25;
    v29 = v26;
    v30 = v27;
    if (v25 < v11)
    {
      sub_47190(&v29, __p);
      sub_605E3C(a2, v10);
      v7 = v10;
      v11 = v16;
    }

    v17 = sub_605E3C(a2, v10);
    v18 = (*v17 - **v17);
    if (*v18 < 9u || (v19 = v18[4]) == 0)
    {
      v12 = 0;
      v13 = __p[0];
      if (!__p[0])
      {
        goto LABEL_11;
      }

LABEL_10:
      __p[1] = v13;
      operator delete(v13);
      goto LABEL_11;
    }

    v12 = *(*v17 + v19);
    v13 = __p[0];
    if (__p[0])
    {
      goto LABEL_10;
    }

LABEL_11:
    v6 += v12;
    ++v10;
  }

  while (v5 != v10);
  v20 = v11 * 100.0;
  if (v11 * 100.0 >= 0.0)
  {
    v21 = v11 * 100.0;
    if (v20 < 4.50359963e15)
    {
      v22 = (v20 + v20) + 1;
LABEL_25:
      v21 = (v22 >> 1);
    }
  }

  else
  {
    v21 = v11 * 100.0;
    if (v20 > -4.50359963e15)
    {
      v22 = (v20 + v20) - 1 + (((v20 + v20) - 1) >> 63);
      goto LABEL_25;
    }
  }

  if (v21 >= 9.22337204e18)
  {
    if (a1[64] != 0x7FFFFFFFFFFFFFFFLL && a1[64] != 0x7FFFFFFFFFFFFFFELL)
    {
      goto LABEL_37;
    }
  }

  else
  {
    if (v20 >= 0.0)
    {
      if (v20 < 4.50359963e15)
      {
        v23 = (v20 + v20) + 1;
LABEL_35:
        v20 = (v23 >> 1);
      }
    }

    else if (v20 > -4.50359963e15)
    {
      v23 = (v20 + v20) - 1 + (((v20 + v20) - 1) >> 63);
      goto LABEL_35;
    }

    if (v20 > a1[64])
    {
LABEL_37:
      if (v6 > a1[65])
      {
        return -1;
      }
    }
  }

  return v7;
}

void sub_6E0680(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_6E06BC(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v8 = *a2;
  v9 = a2[1];
  *(a1 + 32) = *(a2 + 4);
  *a1 = v8;
  *(a1 + 16) = v9;
  v10 = *a3;
  v11 = a3[1];
  *(a1 + 72) = *(a3 + 4);
  *(a1 + 56) = v11;
  *(a1 + 40) = v10;
  result = (a1 + 80);
  if (result != a5)
  {
    result = sub_4D7AD4(result, *a5, *(a5 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(a5 + 8) - *a5) >> 3));
  }

  *(a1 + 104) = -1;
  v13 = *(a5 + 8);
  if (*a5 == v13)
  {
    v14 = *a5;
  }

  else
  {
    v14 = *a5;
    while ((*(v14 + 4) & 0xFFFFFFFFFFFFFFLL) != (*(a4 + 32) & 0xFFFFFFFFFFFFFFLL))
    {
      v14 += 40;
      if (v14 == v13)
      {
        goto LABEL_7;
      }
    }
  }

  if (v14 == v13)
  {
LABEL_7:
    *(a1 + 112) = 3;
  }

  else
  {
    *(a1 + 104) = 0xCCCCCCCCCCCCCCCDLL * (&v14[-*a5] >> 3);
    *(a1 + 112) = 3;
  }

  return result;
}

void sub_6E07B8(uint64_t a1, int **a2, void *a3)
{
  a3[1] = *a3;
  v6 = (*a2 - **a2);
  if (*v6 < 0x9Bu || (v7 = v6[77]) == 0 || (*(*a2 + v7) & 4) == 0)
  {
    __p = 0;
    v38 = 0;
    v39 = 0;
    sub_31B8F4(*a1, a2, &__p);
    v8 = sub_709188(__p, v38);
    v10 = __p;
    v9 = v38;
    if (v8 != v38)
    {
      v9 = v8;
      v38 = v8;
    }

    if (v9 - __p != 80)
    {
      goto LABEL_60;
    }

    v11 = *__p;
    v12 = (*__p - **__p);
    if (*v12 < 0x9Bu)
    {
      goto LABEL_60;
    }

    if (!v12[77])
    {
      goto LABEL_60;
    }

    if ((*(v11 + v12[77]) & 1) == ((*(v11 + v12[77]) >> 1) & 1))
    {
      goto LABEL_60;
    }

    v13 = v9 - 5;
    v14 = *(v9 - 5);
    v15 = (v14 - *v14);
    if (*v15 < 0x9Bu)
    {
      goto LABEL_60;
    }

    if (!v15[77])
    {
      goto LABEL_60;
    }

    v16 = *(v14 + v15[77]);
    if (((v16 ^ (v16 >> 1) & 1) & 1) == 0)
    {
      goto LABEL_60;
    }

    v17 = *a2;
    v18 = (*a2 - **a2);
    v19 = *v18;
    if (*(a2 + 38))
    {
      if (v19 < 0x49 || (v20 = v18[36]) == 0)
      {
LABEL_20:
        v21 = -1;
LABEL_21:
        if (*(__p + 38))
        {
          v22 = v12[37];
          if (v22)
          {
LABEL_23:
            v23 = *(v11 + v22);
            goto LABEL_26;
          }
        }

        else
        {
          v22 = v12[36];
          if (v22)
          {
            goto LABEL_23;
          }
        }

        v23 = 0xFFFF;
LABEL_26:
        v24 = v21 + 18000;
        v25 = v21 - 18000;
        if ((v24 >> 5) < 0x465u)
        {
          v25 = v24;
        }

        v26 = v23 - v25;
        if (v26 > 18000)
        {
          v26 -= 36000;
        }

        if (v26 < -17999)
        {
          v26 += 36000;
        }

        v27 = v26 / 100.0;
        v28 = fabs(v27);
        LOWORD(v27) = *(a1 + 504);
        v29 = vmovl_s16(*&v27).i32[0];
        if (v28 > v29)
        {
          goto LABEL_60;
        }

        if (*(a2 + 38))
        {
          if (v19 < 0x49 || (v30 = v18[36]) == 0)
          {
LABEL_40:
            v31 = -1;
LABEL_41:
            if (*(v9 - 2))
            {
              v32 = v15[37];
              if (v15[37])
              {
LABEL_43:
                v33 = *(v14 + v32);
                goto LABEL_46;
              }
            }

            else
            {
              v32 = v15[36];
              if (v15[36])
              {
                goto LABEL_43;
              }
            }

            v33 = 0xFFFF;
LABEL_46:
            v34 = v31 + 18000;
            v35 = v31 - 18000;
            if ((v34 >> 5) >= 0x465u)
            {
              v34 = v35;
            }

            v36 = v33 - v34;
            if (v36 > 18000)
            {
              v36 -= 36000;
            }

            if (v36 < -17999)
            {
              v36 += 36000;
            }

            if (fabs(v36 / 100.0) > v29)
            {
              goto LABEL_60;
            }

            if (sub_312DF0(__p) && sub_312E54(v13))
            {
              sub_6E0128(a3, v10);
            }

            else
            {
              if (!sub_312E54(v10) || !sub_312DF0(v13))
              {
                goto LABEL_60;
              }

              sub_6E0128(a3, v13);
              v13 = v10;
            }

            sub_6E0128(a3, v13);
LABEL_60:
            if (__p)
            {
              v38 = __p;
              operator delete(__p);
            }

            return;
          }
        }

        else
        {
          if (v19 < 0x4B)
          {
            goto LABEL_40;
          }

          v30 = v18[37];
          if (!v30)
          {
            goto LABEL_40;
          }
        }

        v31 = *&v17[v30];
        goto LABEL_41;
      }
    }

    else
    {
      if (v19 < 0x4B)
      {
        goto LABEL_20;
      }

      v20 = v18[37];
      if (!v18[37])
      {
        goto LABEL_20;
      }
    }

    v21 = *&v17[v20];
    goto LABEL_21;
  }
}

void sub_6E0AF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_6E0B18(uint64_t a1, __int128 *a2, void *a3, char **a4)
{
  v7 = *a4;
  a4[1] = *a4;
  v8 = a4[2];
  if (v7 >= v8)
  {
    v11 = 0xCCCCCCCCCCCCCCCDLL * ((v8 - v7) >> 3);
    v12 = 2 * v11;
    if (2 * v11 <= 1)
    {
      v12 = 1;
    }

    if (v11 >= 0x333333333333333)
    {
      v13 = 0x666666666666666;
    }

    else
    {
      v13 = v12;
    }

    if (v13 <= 0x666666666666666)
    {
      operator new();
    }

    sub_1808();
  }

  v9 = *a2;
  v10 = a2[1];
  *(v7 + 4) = *(a2 + 4);
  *v7 = v9;
  *(v7 + 1) = v10;
  v14 = 0;
  a4[1] = v7 + 40;
  v15 = a2[1];
  v33 = *a2;
  v34 = v15;
  v35 = *(a2 + 4);
  v30 = 0;
  v31 = 0;
  v32 = 0;
  while (1)
  {
    v16 = v30;
    if (0xCCCCCCCCCCCCCCCDLL * ((v31 - v30) >> 3) > 1)
    {
      break;
    }

    v17 = (v33 - *v33);
    v18 = *v17;
    if (v18 < 9)
    {
      v19 = 0;
    }

    else
    {
      v19 = v17[4];
      if (v17[4])
      {
        v19 = *(v33 + v19);
      }
    }

    v14 += v19;
    if (v14 > *a3 || v18 <= 0x2E)
    {
      goto LABEL_31;
    }

    v20 = v17[23];
    if ((!v17[23] || *(v33 + v20) != 23) && (v18 < 0x9B || (v21 = v17[77]) == 0 || (*(v33 + v21) & 4) == 0))
    {
      if (!v20)
      {
        goto LABEL_31;
      }

      v22 = *(v33 + v20);
      v23 = v22 > 0x2A;
      v24 = (1 << v22) & 0x50426810004;
      if (v23 || v24 == 0)
      {
        goto LABEL_31;
      }
    }

    sub_740664((a1 + 7480), &v33, &v30);
    v26 = sub_709188(v30, v31);
    v16 = v30;
    v27 = v31;
    if (v26 != v31)
    {
      v27 = v26;
      v31 = v26;
    }

    if (v30 == v27)
    {
LABEL_31:
      a4[1] = *a4;
      break;
    }

    v28 = *v30;
    v29 = *(v30 + 1);
    v35 = *(v30 + 4);
    v33 = v28;
    v34 = v29;
    sub_69B1E0(a4, &v33);
  }

  if (v16)
  {
    v31 = v16;
    operator delete(v16);
  }
}

void sub_6E0DAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_6E0DCC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v9 = 0;
  a5[1] = *a5;
  __p = 0;
  v29 = 0;
  v30 = 0;
  v10 = *(a2 + 16);
  v25 = *a2;
  v26 = v10;
  v27 = *(a2 + 32);
  while (v9 < *a4)
  {
    v11 = (v25 - *v25);
    if (*v11 >= 0x2Fu)
    {
      v12 = v11[23];
      if (v12)
      {
        v13 = *(v25 + v12);
        v14 = v13 > 0x36;
        v15 = (1 << v13) & 0x44000000000008;
        if (!v14 && v15 != 0)
        {
          break;
        }
      }
    }

    sub_740664((a1 + 7480), &v25, &__p);
    if (__p == v29)
    {
      break;
    }

    v18 = *__p;
    v17 = *(__p + 1);
    v27 = *(__p + 4);
    v25 = v18;
    v26 = v17;
    v19 = (v18 - *v18);
    if (*v19 >= 9u && (v20 = v19[4]) != 0)
    {
      v21 = *(v18 + v20);
      v22 = HIDWORD(v27);
      v23 = *(a3 + 32);
      if (v27 != v23)
      {
        goto LABEL_3;
      }
    }

    else
    {
      v21 = 0;
      v22 = HIDWORD(v27);
      v23 = *(a3 + 32);
      if (v27 != v23)
      {
        goto LABEL_3;
      }
    }

    if ((v22 & 0xFFFFFF) == (HIDWORD(v23) & 0xFFFFFF))
    {
      v24 = __p;
      if (!__p)
      {
        return;
      }

      goto LABEL_20;
    }

LABEL_3:
    v9 += v21;
    sub_69B1E0(a5, &v25);
  }

  a5[1] = *a5;
  v24 = __p;
  if (__p)
  {
LABEL_20:
    v29 = v24;
    operator delete(v24);
  }
}

void sub_6E0F54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_6E0F70(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = sub_4D1F50(a2, a3);
  v7 = a3 + 1;
  v8 = sub_4D1F50(a2, v7);
  v9 = (*v6 - **v6);
  if (*v9 >= 0x2Fu && (v10 = v9[23]) != 0 && (v11 = *(*v6 + v10) - 2, v11 < 0x29) && ((0x14109A04001uLL >> v11) & 1) != 0 || (v12 = (*v8 - **v8), *v12 < 0x2Fu) || (v13 = v12[23]) == 0 || ((v14 = *(*v8 + v13), v15 = v14 > 0x2A, v16 = (1 << v14) & 0x50426810004, !v15) ? (v17 = v16 == 0) : (v17 = 1), v17))
  {
    v20 = 0;
  }

  else
  {
    __p = 0;
    v43 = 0;
    v44 = 0;
    v18 = sub_4D1DC0(a2);
    if (v7 <= v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = v7;
    }

    if (v7 >= v18)
    {
LABEL_38:
      v20 = 0;
    }

    else
    {
      v20 = 1;
      while (1)
      {
        v22 = sub_4D1F50(a2, v7);
        v23 = *a1;
        v24 = *(v22 + 32);
        v25 = sub_2B51D8(*a1, v24 & 0xFFFFFFFFFFFFLL);
        if (*(v23 + 7772) == 1)
        {
          v26 = sub_30C50C(v23 + 3896, v24, 0);
          v27 = &v26[-*v26];
          if (*v27 < 5u)
          {
            v28 = 0;
          }

          else
          {
            v28 = *(v27 + 2);
            if (v28)
            {
              v28 += &v26[*&v26[v28]];
            }
          }

          v29 = (v28 + ((v24 >> 30) & 0x3FFFC) + 4 + *(v28 + ((v24 >> 30) & 0x3FFFC) + 4));
        }

        else
        {
          v29 = 0;
        }

        v30 = sub_31D7E8(v23, v24 & 0xFFFFFFFFFFFFLL, 1);
        v41[0] = v25;
        v41[1] = v29;
        v41[2] = v30;
        v41[3] = v31;
        v41[4] = (v24 & 0xFFFFFFFFFFFFFFLL);
        sub_31B8F4(*a1, v41, &__p);
        v33 = (v41[0] - *v41[0]);
        if (*v33 < 0x2Fu)
        {
          break;
        }

        v34 = v33[23];
        if (!v34)
        {
          break;
        }

        v35 = *(v41[0] + v34);
        if (v35 > 0x2A || ((1 << v35) & 0x50426810004) == 0)
        {
          v20 |= v35 == 0;
          v40 = __p;
          if (__p)
          {
            goto LABEL_40;
          }

          return v20 & 1;
        }

        v37 = sub_70E7C4((a1 + 179), v41, &__p, -1, v32);
        if (++v7 < sub_4D1DC0(a2))
        {
          if (v37 == -1 || (v38 = *(sub_6B8D68(&__p, v37) + 32), v39 = *(sub_4D1F50(a2, v7) + 32), v38 != v39) || (HIDWORD(v38) & 0xFFFFFF) != (HIDWORD(v39) & 0xFFFFFF))
          {
            v20 = 0;
          }
        }

        if (v19 == v7)
        {
          goto LABEL_38;
        }
      }
    }

    v40 = __p;
    if (__p)
    {
LABEL_40:
      v43 = v40;
      operator delete(v40);
    }
  }

  return v20 & 1;
}