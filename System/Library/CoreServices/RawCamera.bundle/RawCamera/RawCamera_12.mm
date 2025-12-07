__CFString *sub_2338191A8(int a1)
{
  if ((a1 - 1) > 2)
  {
    return @"0";
  }

  else
  {
    return off_2789EF228[a1 - 1];
  }
}

double sub_233819238@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *sub_233730758(a2, 2uLL);
  *v3 = *a1;
  result = *(a1 + 8);
  *(v3 + 8) = result;
  return result;
}

double sub_233819278@<D0>(float64x2_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = vminnmq_f64(vmaxnmq_f64(*a1, vdupq_n_s64(0x3F847AE147AE147BuLL)), vdupq_n_s64(0x3FEFAE147AE147AEuLL));
  v3 = v2.f64[1];
  v4 = vaddvq_f64(v2);
  if (v4 <= 0.99)
  {
    v8 = v2.f64[0];
  }

  else
  {
    v5 = 0.99 / v4;
    v8 = v2.f64[0] * v5;
    v3 = v2.f64[1] * v5;
  }

  v6 = *sub_233730758(a2, 3uLL);
  *v6 = v8 / v3;
  *(v6 + 8) = 0x3FF0000000000000;
  result = (1.0 - v8 - v3) / v3;
  *(v6 + 16) = result;
  return result;
}

double sub_23381933C(double *a1, double *a2, double *a3)
{
  v3 = a1[1];
  v4 = 1.5 - *a1 + v3 * 6.0;
  v5 = (*a1 + *a1) / v4;
  v6 = v3 * 3.0 / v4;
  v7 = 0.0;
  v8 = &unk_233908970;
  v9 = 29;
  v10 = 0.0;
  v11 = 0.0;
  do
  {
    v12 = v11;
    v13 = v10;
    v14 = v7;
    v15 = v8[7];
    v16 = sqrt(v15 * v15 + 1.0);
    v11 = 1.0 / v16;
    v10 = v15 / v16;
    v18 = v8[5];
    v17 = v8[6];
    v7 = (v6 - v17) * v11 - (v5 - v18) * v10;
    v8 += 4;
    v19 = v9-- != 0;
  }

  while (v19 && v7 > 0.0);
  v20 = 0.0;
  if (v9 != 28)
  {
    if (v7 > 0.0)
    {
      v7 = 0.0;
    }

    v20 = -v7 / (v14 - v7);
  }

  *a2 = 1000000.0 / ((1.0 - v20) * *v8 + *(v8 - 4) * v20);
  v21 = v12 * v20 + v11 * (1.0 - v20);
  v22 = v13 * v20 + v10 * (1.0 - v20);
  v23 = sqrt(v22 * v22 + v21 * v21);
  result = (v22 / v23 * (v6 - (v17 * (1.0 - v20) + *(v8 - 2) * v20)) + (v5 - (v18 * (1.0 - v20) + *(v8 - 3) * v20)) * (v21 / v23)) * -3000.0;
  *a3 = result;
  return result;
}

double sub_23381946C(double *a1, double a2, double a3)
{
  v3 = &qword_233908990;
  v4 = 29;
  v5 = 1000000.0 / a2;
  do
  {
    v6 = *v3;
    v3 += 4;
    v7 = v6;
    if (!v4)
    {
      break;
    }

    --v4;
  }

  while (v5 >= v7);
  v8 = a3 * -0.000333333333;
  v9 = (v7 - v5) / (v7 - *(v3 - 8));
  v10 = *(v3 - 3) * (1.0 - v9) + *(v3 - 7) * v9;
  v11 = *(v3 - 5);
  v12 = (1.0 - v9) * *(v3 - 2) + *(v3 - 6) * v9;
  v13 = *(v3 - 1);
  v14 = sqrt(v11 * v11 + 1.0);
  v15 = sqrt(v13 * v13 + 1.0);
  v16 = (1.0 - v9) * (1.0 / v15) + 1.0 / v14 * v9;
  v17 = (1.0 - v9) * (v13 / v15) + v11 / v14 * v9;
  v18 = sqrt(v17 * v17 + v16 * v16);
  v19 = v10 + v16 / v18 * v8;
  v20 = v12 + v17 / v18 * v8;
  v21 = v19 * 1.5;
  v22 = v19 + v20 * -4.0 + 2.0;
  result = v20 / v22;
  *a1 = v21 / v22;
  a1[1] = result;
  return result;
}

void sub_23381954C(float64x2_t *a1@<X0>, float64x2_t *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, _OWORD *a8@<X8>)
{
  sub_2337DF9CC(&v53, 3u, 3u, 0.8951, a3, a4, a5, a6, a7, 0x3FD10CB295E9E1B1);
  sub_233819278(a1, &v49);
  sub_2337DFE04(&v49, &v51);
  if (v49)
  {
    *(&v49 + 1) = v49;
    operator delete(v49);
  }

  sub_233819278(a2, &v46);
  sub_2337DFE04(&v46, &v49);
  if (v46)
  {
    v47 = v46;
    operator delete(v46);
  }

  v11.i64[0] = v51;
  v11.i64[1] = v49;
  if (vmaxv_u16(vmovn_s32(vceqzq_s32(v11))))
  {
    sub_2337DFDF8(a8);
  }

  else
  {
    sub_2337E032C(&v53, &v51, &v46);
    sub_2337E032C(&v53, &v49, v43);
    sub_2337DF9C8(&v40, 3u, 3u);
    sub_2337DFFC4(&v40);
    v35 = sub_2337DFCEC(v43, 0);
    __p = v12;
    v13 = *sub_2337DFD6C(&v35, 0);
    *&v33 = sub_2337DFCEC(&v46, 0);
    *(&v33 + 1) = v14;
    v15 = *sub_2337DFD6C(&v33, 0);
    v38 = sub_2337DFCEC(&v40, 0);
    v39 = v16;
    *sub_2337DFD6C(&v38, 0) = v13 / v15;
    v35 = sub_2337DFCEC(v43, 1u);
    __p = v17;
    v18 = *sub_2337DFD6C(&v35, 0);
    *&v33 = sub_2337DFCEC(&v46, 1u);
    *(&v33 + 1) = v19;
    v20 = *sub_2337DFD6C(&v33, 0);
    v38 = sub_2337DFCEC(&v40, 1u);
    v39 = v21;
    *sub_2337DFD6C(&v38, 1u) = v18 / v20;
    v35 = sub_2337DFCEC(v43, 2u);
    __p = v22;
    v23 = *sub_2337DFD6C(&v35, 0);
    *&v33 = sub_2337DFCEC(&v46, 2u);
    *(&v33 + 1) = v24;
    v25 = *sub_2337DFD6C(&v33, 0);
    v38 = sub_2337DFCEC(&v40, 2u);
    v39 = v26;
    *sub_2337DFD6C(&v38, 2u) = v23 / v25;
    v35 = sub_2337DFCEC(&v40, 0);
    __p = v27;
    v28 = sub_2337DFD6C(&v35, 0);
    *v28 = fmin(fmax(*v28, 0.1), 10.0);
    v35 = sub_2337DFCEC(&v40, 1u);
    __p = v29;
    v30 = sub_2337DFD6C(&v35, 1u);
    *v30 = fmin(fmax(*v30, 0.1), 10.0);
    v35 = sub_2337DFCEC(&v40, 2u);
    __p = v31;
    v32 = sub_2337DFD6C(&v35, 2u);
    *v32 = fmin(fmax(*v32, 0.1), 10.0);
    sub_2337E0720(&v53, &v33);
    sub_2337E032C(&v33, &v40, &v35);
    sub_2337E032C(&v35, &v53, a8);
    if (__p)
    {
      v37 = __p;
      operator delete(__p);
    }

    if (*(&v33 + 1))
    {
      v34 = *(&v33 + 1);
      operator delete(*(&v33 + 1));
    }

    if (v41)
    {
      v42 = v41;
      operator delete(v41);
    }

    if (v44)
    {
      v45 = v44;
      operator delete(v44);
    }

    if (v47)
    {
      v48 = v47;
      operator delete(v47);
    }
  }

  if (*(&v49 + 1))
  {
    v50 = *(&v49 + 1);
    operator delete(*(&v49 + 1));
  }

  if (*(&v51 + 1))
  {
    v52 = *(&v51 + 1);
    operator delete(*(&v51 + 1));
  }

  if (v54)
  {
    v55 = v54;
    operator delete(v54);
  }
}

void sub_233819958(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33)
{
  v35 = *(v33 - 136);
  if (v35)
  {
    *(v33 - 128) = v35;
    operator delete(v35);
  }

  v36 = *(v33 - 104);
  if (v36)
  {
    *(v33 - 96) = v36;
    operator delete(v36);
  }

  v37 = *(v33 - 72);
  if (v37)
  {
    *(v33 - 64) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_233819A7C(double *a1)
{
  if (*a1 <= 0.0)
  {
    return 0;
  }

  v1 = a1[1];
  return v1 > 0.0 && *a1 + v1 < 1.0;
}

double sub_233819AB0(int a1)
{
  result = 0.0;
  if ((a1 - 1) <= 0x17)
  {
    return dbl_233908D58[a1 - 1];
  }

  return result;
}

void sub_233819AD0(unsigned int *a1@<X0>, unsigned int *a2@<X8>)
{
  if (*a1)
  {
    v4 = a1[1] == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {

    sub_2337DF874(a2, a1);
  }

  else
  {
    v7.f64[0] = sub_2338191E8();
    v7.f64[1] = v5;
    sub_233819278(&v7, &__p);
    sub_2337DFE04(&__p, &v12);
    if (__p)
    {
      v10 = __p;
      operator delete(__p);
    }

    sub_2337E032C(a1, &v12, &__p);
    v6 = sub_2337E0EE4(&__p);
    sub_2337DF874(a2, a1);
    if (v6 > 0.0 && (v6 < 0.99 || v6 > 1.01))
    {
      sub_2337E0244(a2, &v7, 1.0 / v6);
      sub_2337E004C(a2, &v7);
      if (*&v7.f64[1])
      {
        v8 = v7.f64[1];
        operator delete(*&v7.f64[1]);
      }
    }

    sub_2337E0BB0(a2, &v7, 10000.0);
    sub_2337E004C(a2, &v7);
    if (*&v7.f64[1])
    {
      v8 = v7.f64[1];
      operator delete(*&v7.f64[1]);
    }

    if (v10)
    {
      v11 = v10;
      operator delete(v10);
    }

    if (*(&v12 + 1))
    {
      v13 = *(&v12 + 1);
      operator delete(*(&v12 + 1));
    }
  }
}

void sub_233819C40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  v21 = *(v19 + 8);
  if (v21)
  {
    *(v19 + 16) = v21;
    operator delete(v21);
  }

  if (a14)
  {
    operator delete(a14);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_233819CC0(_DWORD *a1, uint64_t *a2)
{
  v4 = a1 + 12;
  if (!a1[12] || (v5 = a1[13], v6 = a1 + 12, !v5))
  {
    v6 = a1 + 4;
  }

  if (sub_2337E003C(v6) >= 2)
  {
    v7 = a1[2];
    v8 = a1[3];
    v9 = sub_233819AB0(v7);
    v10 = sub_233819AB0(v8);
    sub_233819AD0(a1 + 4, &v56);
    sub_233819AD0(v4, &v53);
    sub_2337E0BB0(a1 + 54, v50, 10000.0);
    sub_2337E0BB0(a1 + 62, &v47, 10000.0);
    sub_2337E0BB0(a1 + 20, &v43, 10000.0);
    sub_2337E0BB0(a1 + 28, &v39, 10000.0);
    sub_2337E0BB0(a1 + 36, &v36, 10000.0);
    sub_2337E0BB0(a1 + 44, &v33, 10000.0);
    if (v43 && v44)
    {
      v11 = sub_2337E003C(&v43);
      if (!*v4 || (v12 = v4, !a1[13]))
      {
        v12 = a1 + 4;
      }

      if (v11 == sub_2337E003C(v12))
      {
        v13 = sub_2337E0044(&v43);
        if (!*v4 || (v14 = v4, !a1[13]))
        {
          v14 = a1 + 4;
        }

        if (v13 == sub_2337E003C(v14))
        {
          sub_2337E032C(&v43, &v56, &v31);
          sub_2337E004C(&v56, &v31);
          if (*(&v31 + 1))
          {
            v32 = *(&v31 + 1);
            operator delete(*(&v31 + 1));
          }
        }
      }
    }

    if (v53 && v9 != v10 && v10 > 0.0 && v9 > 0.0 && HIDWORD(v53))
    {
      if (v39 && v40)
      {
        v15 = sub_2337E003C(&v39);
        if (!*v4 || (v16 = v4, !a1[13]))
        {
          v16 = a1 + 4;
        }

        if (v15 == sub_2337E003C(v16))
        {
          v17 = sub_2337E0044(&v39);
          if (!*v4 || (v18 = v4, !a1[13]))
          {
            v18 = a1 + 4;
          }

          if (v17 == sub_2337E003C(v18))
          {
            sub_2337E032C(&v39, &v53, &v31);
            sub_2337E004C(&v53, &v31);
            if (*(&v31 + 1))
            {
              v32 = *(&v31 + 1);
              operator delete(*(&v31 + 1));
            }
          }
        }
      }
    }

    else
    {
      sub_2337E004C(&v53, &v56);
      sub_2337E004C(&v47, v50);
      v10 = 5000.0;
      v9 = 5000.0;
    }

    if (v43)
    {
      if (!v39)
      {
        if (!v44)
        {
          goto LABEL_69;
        }

        goto LABEL_58;
      }

      if (v44 && v40)
      {
        v19 = sub_2337E0044(&v43);
        if (v19 == sub_2337E0044(&v36))
        {
          sub_2337E0720(&v43, &v29);
          sub_2337E032C(&v36, &v29, &v31);
          sub_2337E004C(&v36, &v31);
          if (*(&v31 + 1))
          {
            v32 = *(&v31 + 1);
            operator delete(*(&v31 + 1));
          }

          if (*(&v29 + 1))
          {
            v30 = *(&v29 + 1);
            operator delete(*(&v29 + 1));
          }
        }

        v20 = sub_2337E0044(&v39);
        if (v20 != sub_2337E0044(&v33))
        {
          goto LABEL_69;
        }

        goto LABEL_45;
      }

      if (v44)
      {
LABEL_58:
        v23 = sub_2337E0044(&v43);
        if (v23 == sub_2337E0044(&v36))
        {
          v24 = sub_2337E0044(&v43);
          if (v24 == sub_2337E0044(&v33))
          {
            sub_2337E0720(&v43, &v29);
            sub_2337E032C(&v36, &v29, &v31);
            sub_2337E004C(&v36, &v31);
            if (*(&v31 + 1))
            {
              v32 = *(&v31 + 1);
              operator delete(*(&v31 + 1));
            }

            if (*(&v29 + 1))
            {
              v30 = *(&v29 + 1);
              operator delete(*(&v29 + 1));
            }

            sub_2337E0720(&v43, &v29);
            sub_2337E032C(&v33, &v29, &v31);
            sub_2337E004C(&v33, &v31);
            goto LABEL_65;
          }
        }

        goto LABEL_69;
      }

      if (!v40)
      {
        goto LABEL_69;
      }
    }

    else if (!v39 || !v40)
    {
      goto LABEL_69;
    }

    v21 = sub_2337E0044(&v39);
    if (v21 == sub_2337E0044(&v36))
    {
      v22 = sub_2337E0044(&v39);
      if (v22 == sub_2337E0044(&v33))
      {
        sub_2337E0720(&v39, &v29);
        sub_2337E032C(&v36, &v29, &v31);
        sub_2337E004C(&v36, &v31);
        if (*(&v31 + 1))
        {
          v32 = *(&v31 + 1);
          operator delete(*(&v31 + 1));
        }

        if (*(&v29 + 1))
        {
          v30 = *(&v29 + 1);
          operator delete(*(&v29 + 1));
        }

LABEL_45:
        sub_2337E0720(&v39, &v29);
        sub_2337E032C(&v33, &v29, &v31);
        sub_2337E004C(&v33, &v31);
LABEL_65:
        if (*(&v31 + 1))
        {
          v32 = *(&v31 + 1);
          operator delete(*(&v31 + 1));
        }

        if (*(&v29 + 1))
        {
          v30 = *(&v29 + 1);
          operator delete(*(&v29 + 1));
        }
      }
    }

LABEL_69:
    if (!*v4 || (v25 = v4, !a1[13]))
    {
      v25 = a1 + 4;
    }

    v27 = *a2;
    v26 = a2[1];
    if ((v26 - v27) >> 3 == sub_2337E003C(v25))
    {
      sub_2337E04E8(&v56, a2, &v31);
      sub_2337E004C(&v56, &v31);
      if (*(&v31 + 1))
      {
        v32 = *(&v31 + 1);
        operator delete(*(&v31 + 1));
      }

      sub_2337E04E8(&v53, a2, &v31);
      sub_2337E004C(&v53, &v31);
      if (*(&v31 + 1))
      {
        v32 = *(&v31 + 1);
        operator delete(*(&v31 + 1));
      }
    }

    if (v9 <= v10)
    {
      a1[2] = v7;
      a1[3] = v8;
      sub_2337E004C(a1 + 2, &v56);
      sub_2337E004C(v4, &v53);
      sub_2337E004C(a1 + 27, v50);
      sub_2337E004C(a1 + 31, &v47);
      sub_2337E004C(a1 + 18, &v36);
      v28 = &v33;
    }

    else
    {
      a1[2] = v8;
      a1[3] = v7;
      sub_2337E004C(a1 + 2, &v53);
      sub_2337E004C(v4, &v56);
      sub_2337E004C(a1 + 27, &v47);
      sub_2337E004C(a1 + 31, v50);
      sub_2337E004C(a1 + 18, &v33);
      v28 = &v36;
    }

    sub_2337E004C(a1 + 22, v28);
    sub_2337DF868(&v31);
    sub_2337E004C(a1 + 10, &v31);
    sub_2337E004C(a1 + 14, &v31);
    if (*(&v31 + 1))
    {
      v32 = *(&v31 + 1);
      operator delete(*(&v31 + 1));
    }

    if (v34)
    {
      v35 = v34;
      operator delete(v34);
    }

    if (v37)
    {
      v38 = v37;
      operator delete(v37);
    }

    if (v41)
    {
      v42 = v41;
      operator delete(v41);
    }

    if (v45)
    {
      v46 = v45;
      operator delete(v45);
    }

    if (v48)
    {
      v49 = v48;
      operator delete(v48);
    }

    if (v51)
    {
      v52 = v51;
      operator delete(v51);
    }

    if (v54)
    {
      v55 = v54;
      operator delete(v54);
    }

    if (v57)
    {
      v58 = v57;
      operator delete(v57);
    }
  }
}

void sub_23381A3A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a22)
  {
    operator delete(a22);
  }

  if (a26)
  {
    operator delete(a26);
  }

  if (a30)
  {
    operator delete(a30);
  }

  if (a34)
  {
    operator delete(a34);
  }

  v37 = *(v35 - 200);
  if (v37)
  {
    *(v35 - 192) = v37;
    operator delete(v37);
  }

  v38 = *(v35 - 168);
  if (v38)
  {
    *(v35 - 160) = v38;
    operator delete(v38);
  }

  v39 = *(v35 - 136);
  if (v39)
  {
    *(v35 - 128) = v39;
    operator delete(v39);
  }

  _Unwind_Resume(exception_object);
}

void sub_23381A514(uint64_t a1@<X0>, float64x2_t *a2@<X1>, unsigned int *a3@<X2>, void *a4@<X8>)
{
  sub_2337DF868(&v66);
  sub_2337DF868(&v64);
  sub_2337DF868(&v62);
  sub_2337DF868(&v60);
  sub_23381ACF4(a1, a2->f64, &v66, &v62, &v64);
  if (!v66 || !DWORD1(v66))
  {
    sub_2337DF874(a4, &v66);
    goto LABEL_70;
  }

  if (*(a1 + 208))
  {
    sub_233819278(a2, &v54);
    sub_2337DFE04(&v54, &v56);
    sub_2337E032C(&v66, &v56, &v58);
    if (*&v56.f64[1])
    {
      v57 = v56.f64[1];
      operator delete(*&v56.f64[1]);
    }

    if (v54)
    {
      *(&v54 + 1) = v54;
      operator delete(v54);
    }

    v8 = sub_2337E0EE4(&v58);
    for (i = 0; i < sub_2337E003C(&v58); ++i)
    {
      *&v56.f64[0] = sub_2337DFCEC(&v58, i);
      v56.f64[1] = v10;
      v11 = sub_2337DFD6C(&v56, 0);
      v12 = *v11 / v8;
      if (v12 <= 1.0)
      {
        v13 = *v11 / v8;
      }

      else
      {
        v13 = 1.0;
      }

      if (v12 >= 0.001)
      {
        v14 = v13;
      }

      else
      {
        v14 = 0.001;
      }

      *&v54 = sub_2337DFCEC(&v58, i);
      *(&v54 + 1) = v15;
      *sub_2337DFD6C(&v54, 0) = v14;
    }

    sub_2337E1044(&v58, &v52);
    sub_2337DFEE0(&v52, &v54);
    sub_2337E0720(&v54, &v56);
    if (*(&v54 + 1))
    {
      v55 = *(&v54 + 1);
      operator delete(*(&v54 + 1));
    }

    if (v52)
    {
      *(&v52 + 1) = v52;
      operator delete(v52);
    }

    sub_2337E032C(&v64, &v56, &v54);
    sub_2337E004C(&v60, &v54);
    if (*(&v54 + 1))
    {
      v55 = *(&v54 + 1);
      operator delete(*(&v54 + 1));
    }

    if (!v60 || !DWORD1(v60))
    {
      sub_2337DF874(a4, &v60);
      sub_2338FC938(&v56, &v58);
      goto LABEL_70;
    }

    if (*&v56.f64[1])
    {
      v57 = v56.f64[1];
      operator delete(*&v56.f64[1]);
    }

    if (*(&v58 + 1))
    {
      v59 = *(&v58 + 1);
      operator delete(*(&v58 + 1));
    }

LABEL_56:
    sub_2337DF9CC(&v58, 3u, 1u, 1.0, v16, v17, v18, v19, v20, 0x3FF0000000000000);
    sub_2337E032C(a3, &v58, &v56);
    v47.f64[0] = sub_2338191E8();
    v47.f64[1] = v31;
    sub_233819278(&v47, &v52);
    sub_2337DFE04(&v52, &v54);
    if (v52)
    {
      *(&v52 + 1) = v52;
      operator delete(v52);
    }

    *&v52 = sub_2337DFCEC(&v54, 0);
    *(&v52 + 1) = v32;
    v33 = *sub_2337DFD6C(&v52, 0);
    *&v47.f64[0] = sub_2337DFCEC(&v56, 0);
    v47.f64[1] = v34;
    v35 = *sub_2337DFD6C(&v47, 0);
    *&v52 = sub_2337DFCEC(&v54, 1u);
    *(&v52 + 1) = v36;
    sub_2337DFD6C(&v52, 0);
    *&v47.f64[0] = sub_2337DFCEC(&v56, 1u);
    v47.f64[1] = v37;
    sub_2337DFD6C(&v47, 0);
    *&v52 = sub_2337DFCEC(&v54, 2u);
    *(&v52 + 1) = v38;
    sub_2337DFD6C(&v52, 0);
    *&v47.f64[0] = sub_2337DFCEC(&v56, 2u);
    v47.f64[1] = v39;
    sub_2337DFD6C(&v47, 0);
    sub_2337DF9CC(&v52, 3u, 3u, v33 / v35, v40, v41, v42, v43, v44, 0);
    sub_2337E032C(&v52, a3, &v47);
    sub_2337E0720(&v47, &v45);
    sub_2337E032C(&v45, &v60, a4);
    if (*(&v45 + 1))
    {
      v46 = *(&v45 + 1);
      operator delete(*(&v45 + 1));
    }

    if (*&v47.f64[1])
    {
      v48 = v47.f64[1];
      operator delete(*&v47.f64[1]);
    }

    if (*(&v52 + 1))
    {
      v53 = *(&v52 + 1);
      operator delete(*(&v52 + 1));
    }

    if (*(&v54 + 1))
    {
      v55 = *(&v54 + 1);
      operator delete(*(&v54 + 1));
    }

    if (*&v56.f64[1])
    {
      v57 = v56.f64[1];
      operator delete(*&v56.f64[1]);
    }

    if (*(&v58 + 1))
    {
      v59 = *(&v58 + 1);
      operator delete(*(&v58 + 1));
    }

    goto LABEL_70;
  }

  v56.f64[0] = sub_2338191E8();
  v56.f64[1] = v21;
  sub_23381954C(&v56, a2, v22, v23, v24, v25, v26, &v58);
  if (!v58 || !DWORD1(v58))
  {
    sub_2337DF874(a4, &v58);
    sub_2338FC97C(&v58);
    goto LABEL_70;
  }

  sub_2337E032C(&v66, &v58, &v56);
  v47.f64[0] = sub_2338191E8();
  v47.f64[1] = v27;
  sub_233819278(&v47, &v52);
  sub_2337DFE04(&v52, &v54);
  if (v52)
  {
    *(&v52 + 1) = v52;
    operator delete(v52);
  }

  sub_2337E032C(&v56, &v54, &v52);
  v28 = sub_2337E0EE4(&v52);
  if (*(&v52 + 1))
  {
    v53 = *(&v52 + 1);
    operator delete(*(&v52 + 1));
  }

  sub_2337E0244(&v56, &v52, 1.0 / v28);
  sub_2337E004C(&v56, &v52);
  if (*(&v52 + 1))
  {
    v53 = *(&v52 + 1);
    operator delete(*(&v52 + 1));
  }

  sub_2337DF874(&v49, &v62);
  sub_2337E0A98(&v56, &v49, &v52);
  sub_2337E004C(&v60, &v52);
  if (*(&v52 + 1))
  {
    v53 = *(&v52 + 1);
    operator delete(*(&v52 + 1));
  }

  if (v50)
  {
    v51 = v50;
    operator delete(v50);
  }

  if (v60)
  {
    v29 = DWORD1(v60) == 0;
  }

  else
  {
    v29 = 1;
  }

  v30 = !v29;
  if (v29)
  {
    sub_2337DF874(a4, &v60);
  }

  if (*(&v54 + 1))
  {
    v55 = *(&v54 + 1);
    operator delete(*(&v54 + 1));
  }

  if (*&v56.f64[1])
  {
    v57 = v56.f64[1];
    operator delete(*&v56.f64[1]);
  }

  if (*(&v58 + 1))
  {
    v59 = *(&v58 + 1);
    operator delete(*(&v58 + 1));
  }

  if (v30)
  {
    goto LABEL_56;
  }

LABEL_70:
  if (*(&v60 + 1))
  {
    v61 = *(&v60 + 1);
    operator delete(*(&v60 + 1));
  }

  if (*(&v62 + 1))
  {
    v63 = *(&v62 + 1);
    operator delete(*(&v62 + 1));
  }

  if (*(&v64 + 1))
  {
    v65 = *(&v64 + 1);
    operator delete(*(&v64 + 1));
  }

  if (*(&v66 + 1))
  {
    v67 = *(&v66 + 1);
    operator delete(*(&v66 + 1));
  }
}

void sub_23381AAFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a38)
  {
    operator delete(a38);
  }

  if (a42)
  {
    operator delete(a42);
  }

  v45 = *(v43 - 216);
  if (v45)
  {
    *(v43 - 208) = v45;
    operator delete(v45);
  }

  v46 = *(v43 - 184);
  if (v46)
  {
    *(v43 - 176) = v46;
    operator delete(v46);
  }

  v47 = *(v43 - 152);
  if (v47)
  {
    *(v43 - 144) = v47;
    operator delete(v47);
  }

  v48 = *(v43 - 120);
  if (v48)
  {
    *(v43 - 112) = v48;
    operator delete(v48);
  }

  _Unwind_Resume(exception_object);
}

void sub_23381ACF4(uint64_t a1, double *a2, void *a3, void *a4, uint64_t a5)
{
  sub_2337DFDF8(&v38);
  sub_2337E004C(a3, &v38);
  if (*(&v38 + 1))
  {
    v39 = *(&v38 + 1);
    operator delete(*(&v38 + 1));
  }

  sub_2337DFDF8(&v38);
  sub_2337E004C(a4, &v38);
  if (*(&v38 + 1))
  {
    v39 = *(&v38 + 1);
    operator delete(*(&v38 + 1));
  }

  sub_2337DFDF8(&v38);
  sub_2337E004C(a5, &v38);
  if (*(&v38 + 1))
  {
    v39 = *(&v38 + 1);
    operator delete(*(&v38 + 1));
  }

  v10 = sub_23381B524(a1, a2);
  if (v10 >= 1.0)
  {
    v11 = a1 + 16;
LABEL_21:
    sub_2337E004C(a3, v11);
    goto LABEL_22;
  }

  if (v10 <= 0.0)
  {
    v11 = a1 + 48;
    goto LABEL_21;
  }

  if (!*(a1 + 16) || !*(a1 + 20) || !*(a1 + 48) || !*(a1 + 52))
  {
    sub_2337DFDF8(&v38);
    sub_2337E004C(a3, &v38);
    v12 = *(&v38 + 1);
    if (!*(&v38 + 1))
    {
      goto LABEL_22;
    }

    v39 = *(&v38 + 1);
    goto LABEL_41;
  }

  sub_2337E0244((a1 + 16), &v36, v10);
  sub_2337E0244((a1 + 48), &v34, 1.0 - v10);
  sub_2337E00C8(&v36, &v34, &v38);
  sub_2337E004C(a3, &v38);
  if (*(&v38 + 1))
  {
    v39 = *(&v38 + 1);
    operator delete(*(&v38 + 1));
  }

  if (*&v34.f64[1])
  {
    v35 = v34.f64[1];
    operator delete(*&v34.f64[1]);
  }

  v12 = v36.f64[1];
  if (*&v36.f64[1])
  {
    v37 = v36.f64[1];
LABEL_41:
    operator delete(*&v12);
  }

LABEL_22:
  v13 = a1 + 216;
  if (!*(a1 + 216))
  {
    v14 = a1 + 248;
    if (*(a1 + 248) && *(a1 + 252))
    {
      goto LABEL_45;
    }

    goto LABEL_47;
  }

  v14 = a1 + 248;
  v15 = *(a1 + 220);
  if (!*(a1 + 248))
  {
    if (v15)
    {
      goto LABEL_43;
    }

LABEL_47:
    sub_2337DFDF8(&v38);
    sub_2337E004C(a4, &v38);
    v17 = *(&v38 + 1);
    if (!*(&v38 + 1))
    {
      goto LABEL_50;
    }

    v39 = *(&v38 + 1);
    goto LABEL_49;
  }

  v16 = *(a1 + 252);
  if (!v15 || !v16)
  {
    if (v15)
    {
      goto LABEL_43;
    }

    if (v16)
    {
      goto LABEL_45;
    }

    goto LABEL_47;
  }

  if (v10 >= 1.0)
  {
LABEL_43:
    v18 = a4;
LABEL_46:
    sub_2337E004C(v18, v13);
    goto LABEL_50;
  }

  if (v10 <= 0.0)
  {
LABEL_45:
    v18 = a4;
    v13 = v14;
    goto LABEL_46;
  }

  sub_2337E0244((a1 + 216), &v36, v10);
  sub_2337E0244((a1 + 248), &v34, 1.0 - v10);
  sub_2337E00C8(&v36, &v34, &v38);
  sub_2337E004C(a4, &v38);
  if (*(&v38 + 1))
  {
    v39 = *(&v38 + 1);
    operator delete(*(&v38 + 1));
  }

  if (*&v34.f64[1])
  {
    v35 = v34.f64[1];
    operator delete(*&v34.f64[1]);
  }

  v17 = v36.f64[1];
  if (*&v36.f64[1])
  {
    v37 = v36.f64[1];
LABEL_49:
    operator delete(*&v17);
  }

LABEL_50:
  if (!*(a1 + 208))
  {
    return;
  }

  v36.f64[0] = sub_233819224();
  v36.f64[1] = v19;
  sub_2337DF874(&v31, a1 + 16);
  sub_23381B5BC(&v36, &v31, &v38);
  if (v32)
  {
    v33 = v32;
    operator delete(v32);
  }

  v34.f64[0] = sub_233819210();
  v34.f64[1] = v20;
  sub_2337DF874(&v28, a1 + 48);
  sub_23381B5BC(&v34, &v28, &v36);
  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }

  if (v10 < 1.0)
  {
    if (v10 > 0.0)
    {
      sub_2337E0244(&v38, &v25, v10);
      sub_2337E0244(&v36, &v22, 1.0 - v10);
      sub_2337E00C8(&v25, &v22, &v34);
      sub_2337E004C(a5, &v34);
      if (*&v34.f64[1])
      {
        v35 = v34.f64[1];
        operator delete(*&v34.f64[1]);
      }

      if (v23)
      {
        v24 = v23;
        operator delete(v23);
      }

      if (v26)
      {
        v27 = v26;
        operator delete(v26);
      }

      goto LABEL_66;
    }

    v21 = &v36;
  }

  else
  {
    v21 = &v38;
  }

  sub_2337E004C(a5, v21);
LABEL_66:
  if (!*a5 || !*(a5 + 4))
  {
    *(a1 + 208) = 0;
  }

  if (*(a1 + 8) != 17 || *(a1 + 12) != 21)
  {
    *(a1 + 208) = 0;
  }

  if (*&v36.f64[1])
  {
    v37 = v36.f64[1];
    operator delete(*&v36.f64[1]);
  }

  if (*(&v38 + 1))
  {
    v39 = *(&v38 + 1);
    operator delete(*(&v38 + 1));
  }
}

void sub_23381B110(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  v29 = *(v27 - 88);
  if (v29)
  {
    *(v27 - 80) = v29;
    operator delete(v29);
  }

  if (__p)
  {
    operator delete(__p);
  }

  v30 = *(v27 - 120);
  if (v30)
  {
    *(v27 - 112) = v30;
    operator delete(v30);
  }

  _Unwind_Resume(exception_object);
}

void sub_23381B21C(unsigned int *a1, double *a2, void *a3, void *a4)
{
  sub_2337DFDF8(&v23);
  sub_2337E004C(a3, &v23);
  if (*(&v23 + 1))
  {
    v24 = *(&v23 + 1);
    operator delete(*(&v23 + 1));
  }

  sub_2337DFDF8(&v23);
  sub_2337E004C(a4, &v23);
  if (*(&v23 + 1))
  {
    v24 = *(&v23 + 1);
    operator delete(*(&v23 + 1));
  }

  v8 = sub_23381B524(a1, a2);
  if (v8 >= 1.0)
  {
    v9 = a1 + 4;
LABEL_19:
    sub_2337E004C(a3, v9);
    goto LABEL_20;
  }

  if (v8 <= 0.0)
  {
    v9 = a1 + 12;
    goto LABEL_19;
  }

  if (!a1[4] || !a1[5] || !a1[12] || !a1[13])
  {
    sub_2337DFDF8(&v23);
    sub_2337E004C(a3, &v23);
    v10 = *(&v23 + 1);
    if (!*(&v23 + 1))
    {
      goto LABEL_20;
    }

    v24 = *(&v23 + 1);
    goto LABEL_39;
  }

  sub_2337E0244(a1 + 4, &v20, v8);
  sub_2337E0244(a1 + 12, &v17, 1.0 - v8);
  sub_2337E00C8(&v20, &v17, &v23);
  sub_2337E004C(a3, &v23);
  if (*(&v23 + 1))
  {
    v24 = *(&v23 + 1);
    operator delete(*(&v23 + 1));
  }

  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }

  v10 = v21;
  if (v21)
  {
    v22 = v21;
LABEL_39:
    operator delete(v10);
  }

LABEL_20:
  v11 = a1 + 54;
  if (!a1[54])
  {
    v12 = a1 + 62;
    if (a1[62] && a1[63])
    {
      goto LABEL_43;
    }

    goto LABEL_45;
  }

  v12 = a1 + 62;
  v13 = a1[55];
  if (!a1[62])
  {
    if (v13)
    {
      goto LABEL_41;
    }

LABEL_45:
    sub_2337DFDF8(&v23);
    sub_2337E004C(a4, &v23);
    v15 = *(&v23 + 1);
    if (!*(&v23 + 1))
    {
      return;
    }

    v24 = *(&v23 + 1);
    goto LABEL_47;
  }

  v14 = a1[63];
  if (!v13 || !v14)
  {
    if (v13)
    {
      goto LABEL_41;
    }

    if (v14)
    {
      goto LABEL_43;
    }

    goto LABEL_45;
  }

  if (v8 >= 1.0)
  {
LABEL_41:
    v16 = a4;
LABEL_44:
    sub_2337E004C(v16, v11);
    return;
  }

  if (v8 <= 0.0)
  {
LABEL_43:
    v16 = a4;
    v11 = v12;
    goto LABEL_44;
  }

  sub_2337E0244(a1 + 54, &v20, v8);
  sub_2337E0244(a1 + 62, &v17, 1.0 - v8);
  sub_2337E00C8(&v20, &v17, &v23);
  sub_2337E004C(a4, &v23);
  if (*(&v23 + 1))
  {
    v24 = *(&v23 + 1);
    operator delete(*(&v23 + 1));
  }

  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }

  v15 = v21;
  if (v21)
  {
    v22 = v21;
LABEL_47:
    operator delete(v15);
  }
}

void sub_23381B4AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a10)
  {
    operator delete(a10);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

double sub_23381B524(uint64_t a1, double *a2)
{
  v7 = 0;
  v8 = 0.0;
  sub_23381933C(a2, &v8, &v7);
  v3 = sub_233819AB0(*(a1 + 8));
  v4 = sub_233819AB0(*(a1 + 12));
  v5 = 1.0;
  if (v8 > v3)
  {
    v5 = 0.0;
    if (v8 < v4)
    {
      return (1.0 / v8 - 1.0 / v4) / (1.0 / v3 - 1.0 / v4);
    }
  }

  return v5;
}

void sub_23381B5BC(float64x2_t *a1@<X1>, unsigned int *a2@<X2>, _OWORD *a3@<X8>)
{
  sub_2337DFDF8(a3);
  sub_233819278(a1, &v32);
  sub_2337DFE04(&v32, &v35);
  sub_2337E032C(a2, &v35, v37);
  if (*(&v35 + 1))
  {
    v36 = *(&v35 + 1);
    operator delete(*(&v35 + 1));
  }

  if (v32)
  {
    v33 = v32;
    operator delete(v32);
  }

  sub_2337E1044(v37, &v32);
  sub_2337DFEE0(&v32, &v35);
  if (v32)
  {
    v33 = v32;
    operator delete(v32);
  }

  sub_2337E0720(a2, &v30);
  sub_2337E032C(&v30, &v35, &v32);
  if (*(&v30 + 1))
  {
    v31 = *(&v30 + 1);
    operator delete(*(&v30 + 1));
  }

  sub_2337DF9CC(&v30, 3u, 1u, 1.0, v6, v7, v8, v9, v10, 0x3FF0000000000000);
  sub_2337E032C(&v32, &v30, &v27);
  *&v25 = sub_2337DFCEC(&v27, 1u);
  *(&v25 + 1) = v11;
  v12 = 1.0 / *sub_2337DFD6C(&v25, 0);
  sub_2337E0244(&v27, &v25, v12);
  sub_2337E004C(&v27, &v25);
  if (*(&v25 + 1))
  {
    v26 = *(&v25 + 1);
    operator delete(*(&v25 + 1));
  }

  sub_2337E1044(&v27, &v21);
  sub_2338FC934(&v19, &v21);
  v24.f64[0] = sub_2338191E8();
  v24.f64[1] = v13;
  sub_23381954C(&v19, &v24, v14, v15, v16, v17, v18, &v25);
  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  sub_2337E032C(&v25, &v32, &v19);
  sub_2337E0244(&v19, &v21, v12);
  sub_2337E004C(a3, &v21);
  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }

  if (*&v19.f64[1])
  {
    v20 = v19.f64[1];
    operator delete(*&v19.f64[1]);
  }

  if (*(&v25 + 1))
  {
    v26 = *(&v25 + 1);
    operator delete(*(&v25 + 1));
  }

  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }

  if (*(&v30 + 1))
  {
    v31 = *(&v30 + 1);
    operator delete(*(&v30 + 1));
  }

  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }

  if (*(&v35 + 1))
  {
    v36 = *(&v35 + 1);
    operator delete(*(&v35 + 1));
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }
}

void sub_23381B808(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  if (a22)
  {
    operator delete(a22);
  }

  if (a26)
  {
    operator delete(a26);
  }

  if (a30)
  {
    operator delete(a30);
  }

  v34 = *(v32 - 136);
  if (v34)
  {
    *(v32 - 128) = v34;
    operator delete(v34);
  }

  v35 = *(v32 - 104);
  if (v35)
  {
    *(v32 - 96) = v35;
    operator delete(v35);
  }

  v36 = *(v32 - 72);
  if (v36)
  {
    *(v32 - 64) = v36;
    operator delete(v36);
  }

  v37 = *(v31 + 8);
  if (v37)
  {
    *(v31 + 16) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(exception_object);
}

double sub_23381B95C(unsigned int *a1, uint64_t *a2)
{
  v40 = sub_2338191E8();
  v41 = v4;
  sub_2337DFE04(a2, v39);
  if (LODWORD(v39[0]))
  {
    v5 = DWORD1(v39[0]) == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = 29;
    do
    {
      sub_2337DF868(&v37);
      sub_2337DF868(&v35);
      sub_23381B21C(a1, &v40, &v37, &v35);
      v7 = 1;
      if (v37 && DWORD1(v37))
      {
        sub_2337DF874(&v30, &v35);
        sub_2337E0A98(&v37, &v30, &v33);
        if (__p)
        {
          v32 = __p;
          operator delete(__p);
        }

        if (v33 && DWORD1(v33))
        {
          sub_2337E032C(&v33, v39, v27);
          v8 = sub_2338191E8();
          v10 = v9;
          v25 = sub_2337DFCEC(v27, 0);
          v26 = v11;
          v12 = *sub_2337DFD6C(&v25, 0);
          v24[0] = sub_2337DFCEC(v27, 1u);
          v24[1] = v13;
          v14 = *sub_2337DFD6C(v24, 0);
          v23[0] = sub_2337DFCEC(v27, 2u);
          v23[1] = v15;
          v16 = v12 + v14 + *sub_2337DFD6C(v23, 0);
          if (v16 > 0.0)
          {
            v25 = sub_2337DFCEC(v27, 0);
            v26 = v17;
            v18 = *sub_2337DFD6C(&v25, 0);
            v25 = sub_2337DFCEC(v27, 1u);
            v26 = v19;
            v8 = v18 / v16;
            v10 = *sub_2337DFD6C(&v25, 0) / v16;
          }

          v20 = vabdd_f64(v8, v40) + vabdd_f64(v10, v41);
          v7 = v20 < 0.0000001;
          if (v20 >= 0.0000001 && !v6)
          {
            v10 = (v10 + v41) * 0.5;
            v8 = (v8 + v40) * 0.5;
          }

          v40 = v8;
          v41 = v10;
          if (v28)
          {
            v29 = v28;
            operator delete(v28);
          }
        }

        if (*(&v33 + 1))
        {
          v34 = *(&v33 + 1);
          operator delete(*(&v33 + 1));
        }
      }

      if (*(&v35 + 1))
      {
        v36 = *(&v35 + 1);
        operator delete(*(&v35 + 1));
      }

      if (*(&v37 + 1))
      {
        v38 = *(&v37 + 1);
        operator delete(*(&v37 + 1));
      }

      if (v6)
      {
        v21 = v7;
      }

      else
      {
        v21 = 1;
      }

      --v6;
    }

    while ((v21 & 1) == 0);
  }

  sub_2338FC9A8(v39, &v40, &v41, &v37);
  return *&v37;
}

void sub_23381BBCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a24)
  {
    operator delete(a24);
  }

  if (a28)
  {
    operator delete(a28);
  }

  v31 = *(v29 - 152);
  if (v31)
  {
    *(v29 - 144) = v31;
    operator delete(v31);
  }

  v32 = *(v29 - 120);
  if (v32)
  {
    *(v29 - 112) = v32;
    operator delete(v32);
  }

  _Unwind_Resume(exception_object);
}

void sub_23381C30C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_233721B78(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23381C328(uint64_t a1)
{
  v2 = sub_23378E104(a1);
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "RAWGamutMap", &unk_233945DBE, v5, 2u);
  }
}

uint64_t *sub_23381C448(uint64_t a1, char **a2)
{
  result = (a1 + 192);
  if (result != a2)
  {
    return sub_233754F80(result, *a2, a2[1], (a2[1] - *a2) >> 1);
  }

  return result;
}

void *sub_23381C474(uint64_t a1)
{
  *a1 = &unk_2849200F0;
  v2 = *(a1 + 344);
  if (v2)
  {
    j__free_3(*v2);
  }

  j__free_3(v2);
  v3 = *(a1 + 352);
  if (v3)
  {
    j__free_3(*v3);
  }

  j__free_3(v3);
  v4 = *(a1 + 200);
  if (v4)
  {
    j__free_3(v4);
    *(a1 + 200) = 0;
  }

  for (i = 272; i != 304; i += 8)
  {
    v6 = *(a1 + i);
    if (v6)
    {
      j__free_3(v6);
      *(a1 + i) = 0;
    }
  }

  if (*(a1 + 4519) < 0)
  {
    operator delete(*(a1 + 4496));
  }

  if (*(a1 + 4495) < 0)
  {
    operator delete(*(a1 + 4472));
  }

  return sub_233723A54(a1);
}

void sub_23381C55C(uint64_t a1)
{
  sub_23381C474(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_23381C594(uint64_t a1)
{
  v2 = *(a1 + 4460);
  if (v2 >= *(a1 + 4456))
  {
    v3 = (a1 + 362);
    v6 = 4096;
    sub_233723C18(&v7, &v6);
    v8 = (*(**(a1 + 24) + 32))(*(a1 + 24), a1 + 362, 4094);
    v4 = sub_23380A6B8(&v8);
    *(a1 + 4456) = v4 + 2;
    *(a1 + 4460) = 2;
    if (v4 < 1)
    {
      return 255;
    }

    *(a1 + 4460) = 3;
  }

  else
  {
    *(a1 + 4460) = v2 + 1;
    v3 = (a1 + v2 + 360);
  }

  return *v3;
}

void sub_23381C660(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, int a6, unsigned int *a7)
{
  v7 = *(*(a5 + 8 * a2) + 2 * a3);
  v8 = 8 * a2 - 8;
  v9 = *(*(a4 + v8) + 2 * a3);
  v10 = *(*(a5 + v8) + 2 * a3);
  v11 = v7 + ((v9 - v10) >> 1);
  v12 = (v9 + v7) >> 1;
  if (a6 != 7)
  {
    v12 = 0;
  }

  if (a6 != 6)
  {
    v11 = v12;
  }

  v13 = v9 + v7 - v10;
  v14 = v9 + ((v7 - v10) >> 1);
  if (a6 != 5)
  {
    v14 = 0;
  }

  if (a6 != 4)
  {
    v13 = v14;
  }

  if (a6 <= 5)
  {
    v11 = v13;
  }

  if (a6 != 3)
  {
    v10 = 0;
  }

  if (a6 != 2)
  {
    v7 = v10;
  }

  if (a6 == 1)
  {
    v7 = v9;
  }

  if (a6 > 3)
  {
    v7 = v11;
  }

  *a7 = v7;
}

char *sub_23381C6EC(uint64_t a1)
{
  v2 = *(a1 + 208);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 200) + 6);
    do
    {
      if (*(v3 - 1) != 1 || *v3 != 1)
      {
        __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0]();
        sub_2338F83F4();
      }

      v3 += 5;
      --v2;
    }

    while (v2);
  }

  v4 = *(a1 + 248);
  v5 = v4 - 1;
  if (v4 == 1)
  {
    v6 = 250;
LABEL_16:
    *(a1 + v6) = v5;
    goto LABEL_17;
  }

  if (v4 > 4)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if (v4 >= 1)
  {
    v7 = vdupq_n_s64(v5);
    v8 = vmovn_s64(vcgeq_u64(v7, xmmword_233903BB0));
    if (vuzp1_s16(v8, *v7.i8).u8[0])
    {
      *(a1 + 250) = 0;
    }

    if (vuzp1_s16(v8, *&v7).i8[2])
    {
      *(a1 + 252) = 1;
    }

    v9 = vmovn_s64(vcgeq_u64(v7, xmmword_233903BE0));
    if (vuzp1_s16(v9, v9).i32[1])
    {
      *(a1 + 254) = 2;
      LOWORD(v5) = 3;
      v6 = 256;
      goto LABEL_16;
    }
  }

LABEL_17:
  v10 = sub_2338F6084(8 * *(a1 + 188));
  *(a1 + 344) = v10;
  if (!v10)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  *v10 = 0;
  v11 = sub_2338F6084(8 * *(a1 + 188));
  *(a1 + 352) = v11;
  if (!v11)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  *v11 = 0;
  v12 = 2 * *(a1 + 248);
  v13 = sub_2338F6084(v12 * *(a1 + 188));
  if (!v13)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v14 = v13;
  **(a1 + 344) = v13;
  result = sub_2338F6084(v12 * *(a1 + 188));
  if (!result)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  **(a1 + 352) = result;
  v16 = *(a1 + 188);
  if (v16 >= 2)
  {
    v17 = &result[v12];
    v18 = &v14[v12];
    for (i = 1; i != v16; ++i)
    {
      *(*(a1 + 344) + 8 * i) = v18;
      *(*(a1 + 352) + 8 * i) = v17;
      v17 += v12;
      v18 += v12;
    }
  }

  return result;
}

void sub_23381C97C(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v41 = *MEMORY[0x277D85DE8];
  for (i = 1; i != 17; ++i)
  {
    v5 = *(a2 + i);
    if (*(a2 + i))
    {
      if (v3 <= 257)
      {
        v6 = 257;
      }

      else
      {
        v6 = v3;
      }

      v7 = v6 - v3;
      v8 = &v40[v3];
      do
      {
        if (!v7)
        {
          __cxa_allocate_exception(0x10uLL);
          MEMORY[0x2383ABCE0]();
          sub_2338F83F4();
        }

        *v8++ = i;
        --v7;
        ++v3;
        --v5;
      }

      while (v5);
    }
  }

  v40[v3] = 0;
  v9 = v40[0];
  if (v40[0])
  {
    v10 = 0;
    v11 = 0;
    v12 = v40[0];
    do
    {
      if (v9 == v12)
      {
        if (v11 <= 257)
        {
          v13 = 257;
        }

        else
        {
          v13 = v11;
        }

        v14 = v13 - v11;
        v15 = &v39[v11];
        v16 = v11 << 32;
        v17 = &v40[v11 + 1];
        do
        {
          if (!v14)
          {
            __cxa_allocate_exception(0x10uLL);
            MEMORY[0x2383ABCE0]();
            sub_2338F83F4();
          }

          *v15++ = v10++;
          v18 = *v17++;
          --v14;
          v16 += 0x100000000;
          v11 = (v11 + 1);
        }

        while (v9 == v18);
        v12 = v40[v16 >> 32];
      }

      v10 *= 2;
      ++v9;
    }

    while (v12);
  }

  *(a2 + 1016) = 0u;
  *(a2 + 1032) = 0u;
  *(a2 + 984) = 0u;
  *(a2 + 1000) = 0u;
  *(a2 + 952) = 0u;
  *(a2 + 968) = 0u;
  *(a2 + 920) = 0u;
  *(a2 + 936) = 0u;
  *(a2 + 888) = 0u;
  *(a2 + 904) = 0u;
  *(a2 + 856) = 0u;
  *(a2 + 872) = 0u;
  *(a2 + 824) = 0u;
  *(a2 + 840) = 0u;
  *(a2 + 792) = 0u;
  *(a2 + 808) = 0u;
  if (v3 >= 1)
  {
    v19 = (a2 + 17);
    v20 = v40;
    v21 = v39;
    v22 = v3;
    do
    {
      v23 = *v21++;
      *(a2 + 280 + 2 * *v19) = v23;
      LOBYTE(v23) = *v20++;
      v24 = v23;
      v25 = *v19++;
      *(a2 + 792 + v25) = v24;
      --v22;
    }

    while (v22);
  }

  v26 = 0;
  v27 = 0;
  v28 = a2 + 1050;
  v29 = (a2 + 1158);
  do
  {
    v30 = *(v28 + v26 - 1049);
    if (*(v28 + v26 - 1049))
    {
      *v29 = v27;
      *(v29 - 54) = v39[v27];
      v27 += v30;
      v31 = v39[v27 - 1];
    }

    else
    {
      v31 = -1;
    }

    *(v28 + 4 * v26++ + 38) = v31;
    ++v29;
  }

  while (v26 != 16);
  *(a2 + 1152) = 0xFFFFF;
  bzero((a2 + 1192), 0x400uLL);
  if (v3 >= 1)
  {
    for (j = 0; j != v3; ++j)
    {
      v33 = v40[j];
      if (v33 <= 8)
      {
        v34 = v39[j] << (8 - v33);
        v35 = v34;
        if (v33 != 8)
        {
          v35 = dword_233908E70[v40[j] + 24] | v34;
        }

        if (v35 > 255)
        {
          __cxa_allocate_exception(0x10uLL);
          MEMORY[0x2383ABCE0]();
          sub_2338F83F4();
        }

        if (v34 <= v35)
        {
          v36 = *(a2 + 17 + j);
          v37 = (a2 + 1192 + 4 * v34);
          v38 = v35 - v34 + 1;
          do
          {
            *v37 = v33;
            v37[256] = v36;
            ++v37;
            --v38;
          }

          while (v38);
        }
      }
    }
  }
}

uint64_t sub_23381CCAC(uint64_t a1)
{
  v2 = sub_23381C594(a1);
  result = sub_23381C594(a1);
  v4 = result | (v2 << 8);
  v5 = v4 - 2;
  if (v4 != 2)
  {
    do
    {
      --v5;
      result = sub_23381C594(a1);
    }

    while (v5);
  }

  return result;
}

double sub_23381CCF8(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = sub_23381C594(a1);
  v3 = sub_23381C594(a1) | (v2 << 8);
  v5 = v3 - 2;
  if (v3 != 2)
  {
    v6 = 0;
    do
    {
      v7 = sub_23381C594(a1);
      LODWORD(v8) = 0;
      LOBYTE(v39) = 0;
      for (i = 1; i != 17; ++i)
      {
        v10 = sub_23381C594(a1);
        *(&v39 + i) = v10;
        v8 = (v8 + v10);
      }

      if (v8 > 0x100)
      {
        break;
      }

      if (v8)
      {
        v11 = v24;
        v12 = v8;
        do
        {
          *v11++ = sub_23381C594(a1);
          --v12;
        }

        while (v12);
      }

      if ((v7 & 0x10) == 0)
      {
        v6 = (a1 + 272 + 8 * v7);
      }

      if (v7 > 3)
      {
        break;
      }

      v13 = *v6;
      if (!*v6)
      {
        v13 = sub_2338F6084(0xCA8uLL);
        *v6 = v13;
        if (!v13)
        {
          break;
        }
      }

      *(v13 + 16) = v40;
      *v13 = v39;
      v14 = *v6;
      v15 = v36;
      *(v14 + 209) = v35;
      *(v14 + 225) = v15;
      v16 = v38;
      *(v14 + 241) = v37;
      v17 = v32;
      *(v14 + 145) = v31;
      *(v14 + 161) = v17;
      v18 = v34;
      *(v14 + 177) = v33;
      *(v14 + 193) = v18;
      v19 = v28;
      *(v14 + 81) = v27;
      *(v14 + 97) = v19;
      v20 = v30;
      *(v14 + 113) = v29;
      *(v14 + 129) = v20;
      v21 = v24[1];
      *(v14 + 17) = v24[0];
      *(v14 + 33) = v21;
      result = *&v25;
      v22 = v26;
      *(v14 + 49) = v25;
      *(v14 + 65) = v22;
      v23 = v5 - v8;
      *(v14 + 257) = v16;
      v5 = v5 - v8 - 17;
    }

    while (v23 != 17);
  }

  return result;
}

uint64_t sub_23381CEC0(uint64_t a1)
{
  v2 = sub_23381C594(a1);
  result = sub_23381C594(a1);
  if ((result | (v2 << 8)) == 4)
  {
    v4 = sub_23381C594(a1);
    result = sub_23381C594(a1);
    *(a1 + 312) = result | (v4 << 8);
  }

  return result;
}

uint64_t sub_23381CF18(uint64_t a1)
{
  v2 = sub_23381C594(a1);
  result = sub_23381C594(a1);
  if (((result & 0xFFFF00FF | (v2 << 8)) - 2) >= 1)
  {
    v4 = (v2 << 8) + result - 1;
    do
    {
      result = sub_23381C594(a1);
      --v4;
    }

    while (v4 > 1);
  }

  return result;
}

uint64_t sub_23381CF7C(uint64_t a1)
{
  v2 = sub_23381C594(a1);
  v3 = sub_23381C594(a1);
  *(a1 + 196) = sub_23381C594(a1);
  v4 = sub_23381C594(a1);
  *(a1 + 192) = sub_23381C594(a1) | (v4 << 8);
  v5 = sub_23381C594(a1);
  *(a1 + 188) = sub_23381C594(a1) | (v5 << 8);
  v6 = sub_23381C594(a1);
  *(a1 + 208) = v6;
  if (*(a1 + 192) < 1 || *(a1 + 188) < 1 || !v6 || (*(a1 + 196) - 17) <= 0xFFFFFFF0 || (v3 | (v2 << 8)) != 3 * v6 + 8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  result = sub_2338F6024(v6, 0xAuLL);
  *(a1 + 200) = result;
  if (*(a1 + 208) >= 1)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = (*(a1 + 200) + v8);
      v10[1] = v9;
      *v10 = sub_23381C594(a1);
      v11 = sub_23381C594(a1);
      v10[2] = v11 >> 4;
      v10[3] = v11 & 0xF;
      result = sub_23381C594(a1);
      ++v9;
      v8 += 10;
    }

    while (v9 < *(a1 + 208));
  }

  return result;
}

uint64_t sub_23381D144(uint64_t a1)
{
  v2 = sub_23381C594(a1);
  v3 = sub_23381C594(a1);
  result = sub_23381C594(a1);
  *(a1 + 248) = result;
  if ((result - 5) >= 0xFFFFFFFC && (v3 | (v2 << 8)) == 2 * result + 6)
  {
    v5 = 0;
    v6 = 0;
    v7 = result;
    while (1)
    {
      v8 = sub_23381C594(a1);
      result = sub_23381C594(a1);
      if (!v5 && v8 != **(a1 + 200))
      {
        v6 = v8;
      }

      v9 = *(a1 + 208);
      if (v9 < 1)
      {
        break;
      }

      for (i = *(a1 + 200); v8 - v6 != *i; i += 5)
      {
        if (!--v9)
        {
          return result;
        }
      }

      *(a1 + 216 + 8 * v5) = i;
      i[4] = result >> 4;
      if (++v5 == v7)
      {
        *(a1 + 304) = sub_23381C594(a1);
        sub_23381C594(a1);
        result = sub_23381C594(a1);
        *(a1 + 308) = result & 0xF;
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_23381D258(uint64_t a1)
{
  do
  {
      ;
    }

    do
    {
      result = sub_23381C594(a1);
    }

    while (result == 255);
  }

  while (!result);
  return result;
}

uint64_t sub_23381D29C(uint64_t a1)
{
  while (1)
  {
    do
    {
      while (1)
      {
        while (1)
        {
          result = sub_23381D258(a1);
          if (result <= 0xD7u)
          {
            break;
          }

          if (result <= 0xDCu)
          {
            if (result != 219)
            {
              v3 = result - 216;
              goto LABEL_15;
            }
          }

          else if (result == 221)
          {
            sub_23381CEC0(a1);
          }

          else
          {
            if (result != 224)
            {
              goto LABEL_19;
            }

            sub_23381CF18(a1);
          }
        }

        if (result <= 0xC4u)
        {
          break;
        }

        if (result - 208 >= 8)
        {
          if (result - 197 < 7)
          {
            return result;
          }

          v3 = result - 205;
LABEL_15:
          if (v3 < 3)
          {
            return result;
          }

LABEL_19:
          sub_23381CCAC(a1);
        }
      }
    }

    while (result == 1);
    if (result != 196)
    {
      break;
    }

    sub_23381CCF8(a1);
  }

  if (result - 192 >= 4)
  {
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_23381D374(uint64_t a1)
{
  v2 = sub_23381C594(a1);
  v3 = sub_23381C594(a1);
  if (v2 != 255 || v3 != 216)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  *(a1 + 312) = 0;
  v4 = sub_23381D29C(a1);
  if (v4 != 195 && (v4 & 0xFE) != 0xC0)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return sub_23381CF7C(a1);
}

uint64_t sub_23381D440(uint64_t a1)
{
  if (sub_23381D29C(a1) != 218)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return sub_23381D144(a1);
}

uint64_t sub_23381D4B4(uint64_t result, int a2)
{
  if (*(result + 336) <= 56)
  {
    v3 = result;
    v4 = result + 360;
    do
    {
      result = sub_23381C594(v3);
      v5 = result;
      if (result == 255 && (result = sub_23381C594(v3), result))
      {
        v8 = *(v3 + 4460) - 1;
        *(v3 + 4460) = v8;
        *(v4 + v8) = result;
        v9 = *(v3 + 4460) - 1;
        *(v3 + 4460) = v9;
        *(v4 + v9) = -1;
        v7 = *(v3 + 336);
        if (v7 >= a2)
        {
          return result;
        }

        v6 = 0;
      }

      else
      {
        v6 = v5;
        v7 = *(v3 + 336);
      }

      *(v3 + 328) = v6 | (*(v3 + 328) << 8);
      *(v3 + 336) = v7 + 8;
    }

    while (v7 < 49);
  }

  return result;
}

void sub_23381D578(uint64_t a1)
{
  *(a1 + 336) = 0;
  if (*(a1 + 248) > 4u)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if (*(a1 + 248))
  {
    v2 = 0;
    do
    {
      v3 = *(a1 + 216 + 8 * v2);
      if (!v3)
      {
        __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0]();
        sub_2338F83F4();
      }

      v4 = *(v3 + 8);
      if (v4 >= 4)
      {
        __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0]();
        sub_2338F83F4();
      }

      v5 = *(a1 + 272 + 8 * v4);
      if (!v5)
      {
        __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0]();
        sub_2338F83F4();
      }

      sub_23381C97C(a1, v5);
      ++v2;
    }

    while (v2 < *(a1 + 248));
  }

  v6 = *(a1 + 312) / *(a1 + 188);
  *(a1 + 316) = v6;
  *(a1 + 320) = v6;
  *(a1 + 324) = 0;
}

uint64_t sub_23381D6A8(uint64_t a1)
{
  *(a1 + 336) = 0;
  do
  {
      ;
    }

    do
    {
      result = sub_23381C594(a1);
    }

    while (result == 255);
  }

  while (!result);
  v3 = *(a1 + 324);
  if (v3 + 208 == result)
  {
    *(a1 + 320) = *(a1 + 316);
    *(a1 + 324) = (v3 + 1) & 7;
  }

  return result;
}

uint64_t sub_23381D718(uint64_t result, void *a2)
{
  v12 = 0;
  v2 = result;
  v3 = *(result + 248);
  v4 = *(result + 188);
  if (*(result + 248) >= 1)
  {
    v5 = 0;
    v6 = 1 << (*(result + 196) + ~*(result + 308));
    do
    {
      result = sub_2338FCA88(v2, *(v2 + 272 + 8 * *(*(v2 + 216 + 8 * *(v2 + v5 + 250)) + 8)), &v12 + 1);
      if (HIDWORD(v12))
      {
        result = sub_23381D8FC(v2, SHIDWORD(v12), &v12);
        LOWORD(v7) = v12;
        if (v12 < 1 << (BYTE4(v12) - 1))
        {
          v7 = v12 + (-1 << SBYTE4(v12)) + 1;
          LODWORD(v12) = v7;
        }
      }

      else
      {
        LOWORD(v7) = 0;
        LODWORD(v12) = 0;
      }

      *(*a2 + v5) = v7 + v6;
      v5 += 2;
    }

    while (2 * v3 != v5);
  }

  if (v4 > 1)
  {
    for (i = 1; i != v4; ++i)
    {
      if (v3 >= 1)
      {
        v9 = 0;
        do
        {
          result = sub_2338FCA88(v2, *(v2 + 272 + 8 * *(*(v2 + 216 + 8 * *(v2 + v9 + 250)) + 8)), &v12 + 1);
          if (HIDWORD(v12))
          {
            result = sub_23381D8FC(v2, SHIDWORD(v12), &v12);
            LOWORD(v10) = v12;
            if (v12 < 1 << (BYTE4(v12) - 1))
            {
              v10 = v12 + (-1 << SBYTE4(v12)) + 1;
              LODWORD(v12) = v10;
            }
          }

          else
          {
            LOWORD(v10) = 0;
            LODWORD(v12) = 0;
          }

          *(a2[i] + v9) = *(a2[i - 1] + v9) + v10;
          v9 += 2;
        }

        while (2 * v3 != v9);
      }
    }
  }

  if (*(v2 + 316))
  {
    --*(v2 + 320);
  }

  return result;
}

uint64_t sub_23381D8FC(uint64_t result, int a2, _DWORD *a3)
{
  v5 = result;
  v6 = *(result + 336);
  if (v6 < a2)
  {
    result = sub_23381D4B4(result, a2);
    v6 = *(v5 + 336);
  }

  v7 = *(v5 + 328);
  v8 = v6 - a2;
  *(v5 + 336) = v8;
  *a3 = dword_233908E2C[a2] & (v7 >> v8);
  return result;
}

void sub_23381D96C(uint64_t a1)
{
  v33 = *(a1 + 192);
  v35 = *(a1 + 248);
  v2 = *(a1 + 308);
  v3 = (a1 + 4496);
  v4 = *(a1 + 4519);
  if ((v4 & 0x80000000) == 0)
  {
    if (v4 != 8)
    {
      goto LABEL_7;
    }

LABEL_6:
    v5 = *v3 == 0x325320616369654CLL;
    goto LABEL_8;
  }

  if (*(a1 + 4504) == 8)
  {
    v3 = *v3;
    goto LABEL_6;
  }

LABEL_7:
  v5 = 0;
LABEL_8:
  v6 = *(a1 + 188);
  v36 = *(a1 + 304);
  v7 = *(a1 + 344);
  v37 = *(a1 + 352);
  v42 = 0;
  v43 = 0;
  if (v5 && v2 == 12)
  {
    v8 = 0;
  }

  else
  {
    v8 = v2;
  }

  v39 = v33;
  v40 = v35;
  v9 = *(a1 + 44);
  v38 = *(a1 + 48);
  if ((v35 - 5) <= 0xFFFBu)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v44 = v6;
  v44 = *sub_2337AD0B4(&v44, &v39);
  v10 = *sub_2337AD0B4(&v44, &v40);
  v44 = v9;
  if (v10 != *sub_2337AD0B4(&v44, &v38))
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v41 = 0;
  sub_23381D718(a1, v7);
  if (v6 >= 1)
  {
    v11 = 0;
    v12 = *(a1 + 4464);
    do
    {
      v13 = 0;
      do
      {
        *v12++ = *(v7[v11] + v13) << v8;
        *(a1 + 4464) = v12;
        v13 += 2;
      }

      while (2 * v35 != v13);
      ++v11;
    }

    while (v11 != v6);
  }

  if (v33 > 1)
  {
    v14 = a1 + 216;
    v15 = a1 + 272;
    v16 = 2 * v35;
    for (i = 1; i != v33; ++i)
    {
      v18 = v37;
      v37 = v7;
      if (*(a1 + 316))
      {
        v19 = *(a1 + 320);
        if (!v19)
        {
          sub_23381D6A8(a1);
          sub_23381D718(a1, v18);
          if (v6 >= 1)
          {
            v30 = 0;
            v31 = *(a1 + 4464);
            do
            {
              v32 = 0;
              do
              {
                *v31++ = *(v18[v30] + v32) << v8;
                *(a1 + 4464) = v31;
                v32 += 2;
              }

              while (v16 != v32);
              ++v30;
            }

            while (v30 != v6);
          }

          goto LABEL_51;
        }

        *(a1 + 320) = v19 - 1;
      }

      if (v35 >= 1)
      {
        v20 = 0;
        do
        {
          sub_2338FCA88(a1, *(v15 + 8 * *(*(v14 + 8 * *(a1 + v20 + 250)) + 8)), &v43);
          if (v43)
          {
            sub_23381D8FC(a1, v43, &v42);
            LOWORD(v21) = v42;
            if (v42 < 1 << (v43 - 1))
            {
              v21 = v42 + (-1 << v43) + 1;
              v42 = v21;
            }
          }

          else
          {
            LOWORD(v21) = 0;
            v42 = 0;
          }

          *(*v18 + v20) = *(*v37 + v20) + v21;
          v20 += 2;
        }

        while (2 * v35 != v20);
      }

      v34 = i;
      if (v6 > 1)
      {
        for (j = 1; j != v6; ++j)
        {
          if (v35 >= 1)
          {
            v23 = 0;
            do
            {
              v24 = sub_2338FCA88(a1, *(v15 + 8 * *(*(v14 + 8 * *(a1 + 2 * v23 + 250)) + 8)), &v43);
              if (v43)
              {
                v24 = sub_23381D8FC(a1, v43, &v42);
                v25 = v42;
                if (v42 < 1 << (v43 - 1))
                {
                  v26 = v42 + (-1 << v43);
                  v25 = v26 + 1;
                  v42 = v26 + 1;
                }
              }

              else
              {
                v25 = 0;
                v42 = 0;
              }

              sub_23381C660(v24, j, v23, v18, v37, v36, &v41);
              *(v18[j] + 2 * v23++) = v41 + v25;
            }

            while (v35 != v23);
          }
        }
      }

      i = v34;
      if (v6 >= 1)
      {
        v27 = 0;
        v28 = *(a1 + 4464);
        do
        {
          v29 = 0;
          do
          {
            *v28++ = *(v18[v27] + v29) << v8;
            *(a1 + 4464) = v28;
            v29 += 2;
          }

          while (v16 != v29);
          ++v27;
        }

        while (v27 != v6);
      }

LABEL_51:
      v7 = v18;
    }
  }
}

void sub_23381DDD8(os_signpost_id_t a1)
{
  v2 = sub_23378E038(a1);
  v3 = v2;
  if (a1 + 1 >= 2 && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, a1, "CLjpgUnpacker", &unk_233945DBE, buf, 2u);
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_23381DF28;
  v5[3] = &unk_2789EE800;
  v5[4] = a1;
  v4 = MEMORY[0x2383AC810](v5);
  *(a1 + 4464) = sub_2337ADCC4(a1);
  sub_23381D374(a1);
  sub_23381D440(a1);
  sub_23381C6EC(a1);
  sub_23381D578(a1);
  sub_23381D96C(a1);
  v4[2](v4);
}

void sub_23381DF28(uint64_t a1)
{
  v2 = sub_23378E038(a1);
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CLjpgUnpacker", &unk_233945DBE, v5, 2u);
  }
}

uint64_t sub_23381E020(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *a3;
  v4 = [*(a1 + 8) objectForKeyedSubscript:a2];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v4 BOOLValue];
  }

  return v3;
}

double sub_23381E0BC(uint64_t a1, uint64_t a2, double *a3)
{
  v3 = *a3;
  v4 = [*(a1 + 8) objectForKeyedSubscript:a2];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 doubleValue];
    v3 = v5;
  }

  return v3;
}

void sub_23381E1C4(uint64_t a1@<X0>, uint64_t a2@<X1>, const void **a3@<X8>)
{
  v29 = *MEMORY[0x277D85DE8];
  v23 = [*(a1 + 8) objectForKeyedSubscript:off_27DE37BD8[0]];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v23 count] <= 4)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v5 = v23;
    v6 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v6)
    {
      v7 = *v25;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v25 != v7)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v24 + 1) + 8 * i) doubleValue];
          v11 = a3[1];
          v10 = a3[2];
          if (v11 >= v10)
          {
            v13 = *a3;
            v14 = v11 - *a3;
            v15 = v14 >> 3;
            v16 = (v14 >> 3) + 1;
            if (v16 >> 61)
            {
              sub_2337235BC();
            }

            v17 = v10 - v13;
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
              sub_233723798(a3, v18);
            }

            *(8 * v15) = v9;
            v12 = (8 * v15 + 8);
            memcpy(0, v13, v14);
            v19 = *a3;
            *a3 = 0;
            a3[1] = v12;
            a3[2] = 0;
            if (v19)
            {
              operator delete(v19);
            }
          }

          else
          {
            *v11 = v9;
            v12 = v11 + 8;
          }

          a3[1] = v12;
        }

        v6 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v6);
    }
  }

  else
  {

    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v20 = *a2;
    v21 = *(a2 + 8);
    v22 = (v21 - *a2) >> 3;

    sub_2337236E0(a3, v20, v21, v22);
  }
}

void sub_23381E440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v13 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(a1);
}

void sub_23381E5A4(uint64_t a1)
{

  JUMPOUT(0x2383ABF10);
}

void sub_23381E6A4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284920210;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t *sub_23381E720(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v14 = a3;
  if (a1 && a2 && a3)
  {
    LODWORD(v15) = 1;
    result = sub_23374340C(&v13, &v15);
    while (v13 < a2)
    {
      for (i = 0; i < v14; ++i)
      {
        v15 = v13;
        v15 = *sub_23375B354(&v15, &v14);
        v11 = *sub_233743570(&v15, &i);
        v6 = *(a1 + sub_23375A0B4(&v11));
        v9 = 1;
        v15 = v13;
        v15 = *sub_23374346C(&v15, &v9);
        v15 = *sub_23375B354(&v15, &v14);
        v10 = *sub_233743570(&v15, &i);
        v7 = *(a1 + sub_23375A0B4(&v10)) + v6;
        v15 = v13;
        v15 = *sub_23375B354(&v15, &v14);
        v15 = *sub_233743570(&v15, &i);
        *(a1 + sub_23375A0B4(&v15)) = v7;
      }

      result = sub_23381E8C4(&v13);
    }
  }

  else
  {
    v8 = *MEMORY[0x277D85DF8];

    return fwrite("DecodeDeltaBytes: Invalid parameters\n", 0x25uLL, 1uLL, v8);
  }

  return result;
}

void *sub_23381E8C4(void *result)
{
  v1 = (*result)++ == -1;
  if (v1 << 63 >> 63 != v1)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

uint64_t *sub_23381E930(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (result)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          if (a5)
          {
            v9 = result;
            sub_23381E720(result, a5 * a3, a4);
            v10 = a4 * a3;
            v17 = 0;
            result = sub_23374340C(&v18, &v17);
            v11 = v18;
            if (v18 < a4 * a3)
            {
              v12 = v9 + v10 * (a5 - 1);
              v13 = -(a4 * a3);
              do
              {
                v14 = (a2 + v11 * a5);
                v15 = &v12[v11];
                v16 = a5;
                do
                {
                  *v14++ = *v15;
                  v15 += v13;
                  --v16;
                }

                while (v16);
                result = sub_23381E8C4(&v18);
                v11 = v18;
              }

              while (v18 < v10);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t *sub_23381E9FC(uint64_t *result, unint64_t a2, unint64_t a3)
{
  v12 = a3;
  if (result && a2 >= 2 && a3)
  {
    v4 = result;
    LODWORD(v13) = 2;
    result = sub_23374340C(&v11, &v13);
    while (v11 < a2)
    {
      for (i = 0; i < v12; ++i)
      {
        v13 = v11;
        v13 = *sub_23375B354(&v13, &v12);
        v9 = *sub_233743570(&v13, &i);
        v5 = *(v4 + sub_23375A0B4(&v9));
        v7 = 2;
        v13 = v11;
        v13 = *sub_23374346C(&v13, &v7);
        v13 = *sub_23375B354(&v13, &v12);
        v8 = *sub_233743570(&v13, &i);
        v6 = *(v4 + sub_23375A0B4(&v8)) + v5;
        v13 = v11;
        v13 = *sub_23375B354(&v13, &v12);
        v13 = *sub_233743570(&v13, &i);
        *(v4 + sub_23375A0B4(&v13)) = v6;
      }

      result = sub_23381E8C4(&v11);
    }
  }

  return result;
}

uint64_t *sub_23381EB64(uint64_t *result, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  if (result && a2 && a3 >= 2 && a4 && a5)
  {
    v9 = result;
    sub_23381E9FC(result, a5 * a3, a4);
    v10 = a4 * a3;
    LODWORD(v12) = 0;
    result = sub_23374340C(&v13, &v12);
    while (v13 < v10)
    {
      v11 = 0;
      sub_23374340C(&v12, &v11);
      while (v12 < a5)
      {
        *(a2 + v13 * a5 + v12) = *(v9 + (~v12 + a5) * v10 + v13);
        sub_23381E8C4(&v12);
      }

      result = sub_23381E8C4(&v13);
    }
  }

  return result;
}

uint64_t *sub_23381EC44(uint64_t *result, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v16 = a5;
  v17 = a4;
  if (result)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          if (a5 >= 2)
          {
            v7 = result;
            LODWORD(v18) = 0;
            for (result = sub_23374340C(&v15, &v18); v15 < a3; result = sub_23381EE6C(&v15))
            {
              for (i = 0; i < v17; ++i)
              {
                v18 = v15;
                v18 = *sub_23375B354(&v18, &v17);
                v18 = *sub_233743570(&v18, &i);
                v13 = *sub_23375B354(&v18, &v16);
                v8 = *(v7 + sub_23375A0B4(&v13));
                v18 = v15;
                v18 = *sub_23375B354(&v18, &v17);
                v18 = *sub_233743570(&v18, &i);
                v9 = *sub_23375B354(&v18, &v16);
                v12 = 1;
                v18 = v9;
                v18 = *sub_233723BA0(&v18, &v12);
                *(a2 + sub_23375A0B4(&v18)) = v8;
                v18 = v15;
                v18 = *sub_23375B354(&v18, &v17);
                v18 = *sub_233743570(&v18, &i);
                v10 = *sub_23375B354(&v18, &v16);
                v12 = 1;
                v18 = v10;
                v13 = *sub_233723BA0(&v18, &v12);
                v11 = *(v7 + sub_23375A0B4(&v13));
                v18 = v15;
                v18 = *sub_23375B354(&v18, &v17);
                v18 = *sub_233743570(&v18, &i);
                v18 = *sub_23375B354(&v18, &v16);
                *(a2 + sub_23375A0B4(&v18)) = v11;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_23381EE6C(uint64_t *a1)
{
  result = *a1;
  *a1 = result + 1;
  if (((result == -1) << 63) >> 63 != (result == -1))
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

void *sub_23381EEDC(uint64_t a1, int a2, unsigned int a3)
{
  v4 = a3;
  v9 = 64;
  v10 = a2;
  v11 = a3;
  v5 = sub_233723BA0(&v11, &v9);
  v6 = malloc_type_malloc(*v5, 0x100004077774924uLL);
  v7 = *(a1 + 24);
  sub_233723AE0(&v11, &v10);
  (*(*v7 + 40))(v7, &v11, 0);
  (*(**(a1 + 24) + 32))(*(a1 + 24), v6, v4);
  return v6;
}

void sub_23381EFB8(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    free(v1);
  }

  __cxa_end_catch();
  JUMPOUT(0x23381EFA0);
}

void sub_23381EFE0(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, Bytef *a8, uInt a9, unsigned int a10, char a11)
{
  v59 = a6;
  *v60 = a7;
  memset(&strm.zalloc, 0, 24);
  v16 = (*(*a1 + 56))(a1);
  v17 = a1[73];
  sub_23374340C(&v56, v60);
  v47 = v16;
  __p = v16;
  *&v50.origin.x = v56;
  v18 = *sub_23375B354(&v50, &__p);
  v51 = v17;
  v50.origin.x = v18;
  v19 = *sub_23375B354(&v50, &v51);
  LODWORD(v49) = 8;
  v50.origin.x = v19;
  v20 = *sub_233820948(&v50, &v49);
  sub_23374340C(&v56, &v60[1]);
  v45 = v20;
  __p = v20;
  *&v50.origin.x = v56;
  v21 = *sub_23375B354(&v50, &__p);
  sub_233726218(&v56, v21 >> 1);
  if (v56 == v57)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  strm.avail_in = a9;
  strm.next_in = a8;
  strm.avail_out = v21;
  strm.next_out = v56;
  if (inflateInit_(&strm, "1.2.12", 112) || inflate(&strm, 0) != 1 || inflateEnd(&strm))
  {
    v39 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v39, "RawCameraException");
    __cxa_throw(v39, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  sub_233726154(&__p, v45);
  if (__p == v55)
  {
    v40 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v40, "RawCameraException");
    __cxa_throw(v40, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v61.origin.x = a3;
  v61.origin.y = SHIDWORD(a3);
  v61.size.width = a4;
  v61.size.height = SHIDWORD(a4);
  v62.origin.x = v59;
  v62.origin.y = SHIDWORD(v59);
  v62.size.width = v60[0];
  v62.size.height = v60[1];
  v50 = CGRectIntersection(v61, v62);
  sub_233741018(&v51, &v50.origin.x);
  sub_233741018(&v52, &v50.size.width);
  v22 = SHIDWORD(v51);
  if (HIDWORD(v51) < v53 + HIDWORD(v51))
  {
    v42 = a3 >> 32;
    v43 = v17 >> 3;
    v23 = a3;
    do
    {
      v24 = (v56 + (v22 - SHIDWORD(v59)) * v45);
      v25 = a1[72];
      switch(v25)
      {
        case 34894:
          sub_23381EB64(v24, __p, a1[56], v47, v43);
          break;
        case 3:
          sub_23381E930(v24, __p, a1[56], v47, v43);
          break;
        case 1:
          sub_23381EC44(v24, __p, a1[56], v47, v43);
          break;
        default:
          v41 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x2383ABCE0](v41, "RawCameraException");
          __cxa_throw(v41, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v46 = v22;
      v26 = __p;
      v27 = a2 + (((v22 - v42) * a5) & 0xFFFFFFFFFFFFFFFELL);
      *&v49 = v51;
      while (*&v49 < (v52 + v51))
      {
        v48 = v59;
        v50.origin.x = v49;
        v28 = *sub_2338209C0(&v50, &v48);
        v48 = v23;
        v50.origin.x = v49;
        v29 = *sub_2338209C0(&v50, &v48) * a10;
        if (v29 > (a5 >> 1) - a10 || (v30 = v28 * v47, v28 * v47 > (v45 >> 1) - v47))
        {
          v37 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x2383ABCE0](v37, "RawCameraException");
          __cxa_throw(v37, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        if (!(*(*a1 + 88))(a1))
        {
          v34 = v26[v30];
          if (a11)
          {
            goto LABEL_26;
          }

          if (qword_27DE175F0 == -1)
          {
            goto LABEL_31;
          }

          goto LABEL_33;
        }

        if (v47 != 3)
        {
          v34 = v26[v30];
          if (a11)
          {
LABEL_26:
            *(v27 + 2 * v29) = fmaxl(v34, COERCE_SHORT_FLOAT(0));
            goto LABEL_32;
          }

          if (qword_27DE175F0 == -1)
          {
            goto LABEL_31;
          }

LABEL_33:
          sub_2338FCBA0();
LABEL_31:
          *(v27 + 2 * v29) = *(xmmword_27DE175F8 + v34);
          goto LABEL_32;
        }

        v31 = v26[3 * v28];
        if (a11)
        {
          v32 = (v27 + 2 * v29);
          *v32 = fmaxl(v31, COERCE_SHORT_FLOAT(0));
          v33 = &v26[v30];
          v32[1] = fmaxl(v33[1], COERCE_SHORT_FLOAT(0));
          v32[2] = fmaxl(v33[2], COERCE_SHORT_FLOAT(0));
        }

        else
        {
          v35 = (v27 + 2 * v29);
          *v35 = v31;
          v36 = &v26[v30];
          v35[1] = v36[1];
          v35[2] = v36[2];
          if (qword_27DE175F0 != -1)
          {
            sub_2338FCBA0();
          }

          v35[3] = *(&xmmword_27DE175F8[0x1FFF] + 7);
        }

LABEL_32:
        sub_23381EE6C(&v49);
      }

      v22 = v46 + 1;
    }

    while (v46 + 1 < (v53 + SHIDWORD(v51)));
  }

  if (__p)
  {
    v55 = __p;
    operator delete(__p);
  }

  if (v56)
  {
    v57 = v56;
    operator delete(v56);
  }
}

void sub_23381F65C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23381F6F0(os_signpost_id_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_23378E038(a1);
  v7 = v6;
  if (a1 + 1 >= 2 && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v7, OS_SIGNPOST_INTERVAL_BEGIN, a1, "CDNGDeflateUnpacker", &unk_233945DBE, buf, 2u);
  }

  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = sub_23381FBCC;
  v36[3] = &unk_2789EE800;
  v36[4] = a1;
  v27 = MEMORY[0x2383AC810](v36);
  if ((*(*a1 + 56))(a1) == 3)
  {
    v8 = 4;
  }

  else
  {
    v8 = 1;
  }

  v26 = v8;
  v9 = *(a1 + 44);
  v10 = *(a1 + 48);
  v11 = *(a1 + 224);
  v12 = *(a1 + 228);
  *buf = (*(a1 + 240) - *(a1 + 232)) >> 2;
  sub_233723C18(&v32, buf);
  v13 = v32;
  if (v32 == 1 || *(a1 + 216) || (*(*a1 + 224))(a1) == 2)
  {
    sub_2337AF568(a1, a2, a3, a4);
  }

  else
  {
    v14 = *(a1 + 288);
    if (v14 != 1 && v14 != 3 && v14 != 34894 || v9 >> 5 >= 0x271 || v10 >> 5 >= 0x271 || v11 >> 5 >= 0x271 || v12 >> 5 >= 0x271 || v13 >> 5 >= 0x271)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](exception, "RawCameraException");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v15 = ((v10 + v12 - 1) / v12) >> (*(a1 + 216) != 0);
    v16 = (v9 + v11 - 1) / v11;
    if (v15 * v16 != v13)
    {
      v25 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](v25, "RawCameraException");
      __cxa_throw(v25, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    *buf = 0;
    sub_2337238F0(v35, v16 * v11, v15 * v12);
    v32 = 0;
    sub_2337238F0(&v33, v9, v10);
    if (v13)
    {
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 4 * v13;
      do
      {
        sub_2337238F0(&v30, v19, v18);
        sub_2337238F0(&v31, v11, v12);
        if (sub_23385F470(&v30, a3))
        {
          v21 = sub_23381EEDC(a1, *(*(a1 + 232) + v17), *(*(a1 + 256) + v17));
          if (v21)
          {
            sub_23381EFE0(a1, a2, *a3, *(a3 + 8), a4, v30, v31, v21, *(*(a1 + 256) + v17), v26, 0);
            free(v21);
          }
        }

        v22 = v19 + v11;
        if (v19 + v11 >= v9)
        {
          v19 = 0;
        }

        else
        {
          v19 += v11;
        }

        if (v22 >= v9)
        {
          v23 = v12;
        }

        else
        {
          v23 = 0;
        }

        v18 += v23;
        v17 += 4;
      }

      while (v20 != v17);
    }
  }

  v27[2](v27);
}

void sub_23381FB40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void (**a12)(void))
{
  __cxa_free_exception(v12);
  a12[2](a12);

  _Unwind_Resume(a1);
}

void sub_23381FBCC(uint64_t a1)
{
  v2 = sub_23378E038(a1);
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CDNGDeflateUnpacker", &unk_233945DBE, v5, 2u);
  }
}

void sub_23381FC54(os_signpost_id_t a1)
{
  v2 = sub_23378E038(a1);
  v3 = v2;
  if (a1 + 1 >= 2 && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, a1, "CDNGDeflateUnpacker", &unk_233945DBE, buf, 2u);
  }

  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = sub_233820380;
  v62[3] = &unk_2789EE800;
  v62[4] = a1;
  v4 = MEMORY[0x2383AC810](v62);
  (*(*a1 + 56))(a1);
  v45 = v5;
  v46 = *(a1 + 44);
  v50 = *(a1 + 224);
  *buf = (*(a1 + 240) - *(a1 + 232)) >> 2;
  sub_233723C18(&__p, buf);
  v6 = __p;
  v7 = *(a1 + 288);
  if (v7 != 1 && v7 != 3 && v7 != 34894 || v46 >> 5 >= 0x271 || HIDWORD(v46) >> 5 >= 0x271 || v50 >> 5 >= 0x271 || HIDWORD(v50) >> 5 >= 0x271 || __p >> 5 >= 0x271)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if ((((HIDWORD(v46) + HIDWORD(v50) - 1) / HIDWORD(v50)) >> (*(a1 + 216) != 0)) * ((v46 + v50 - 1) / v50) != __p)
  {
    v40 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v40, "RawCameraException");
    __cxa_throw(v40, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v9 = *(a1 + 256);
  v8 = *(a1 + 264);
  if (v9 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0;
    do
    {
      *buf = v10;
      v10 = *sub_233723874(buf, v9++);
    }

    while (v9 != v8);
  }

  v11 = (*(**(a1 + 24) + 16))(*(a1 + 24));
  if ((v10 & 0x80000000) == 0 && v10 >= v11)
  {
    v41 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v41, "RawCameraException");
    __cxa_throw(v41, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v42 = a1;
  v44 = v4;
  group = dispatch_group_create();
  queue = dispatch_queue_create("Deflate DNG Unpacker I/O Queue", 0);
  v47 = dispatch_queue_create("Deflate DNG Unpacker Queue", MEMORY[0x277D85CD8]);
  __p = 0;
  v61 = 0uLL;
  if (v6)
  {
    sub_23375B2C8(buf, v6, 0, &__p);
    v12 = &v64[-(v61 - __p)];
    memcpy(v12, __p, v61 - __p);
    v13 = __p;
    v14 = *(&v61 + 1);
    __p = v12;
    v61 = v65;
    *&v65 = v13;
    *(&v65 + 1) = v14;
    *buf = v13;
    v64 = v13;
    if (v13)
    {
      operator delete(v13);
    }

    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = v61;
    do
    {
      if (v18 >= *(&v61 + 1))
      {
        v19 = 0xAAAAAAAAAAAAAAABLL * ((v18 - __p) >> 2);
        v20 = v19 + 1;
        if ((v19 + 1) > 0x1555555555555555)
        {
          sub_2337235BC();
        }

        if (0x5555555555555556 * ((*(&v61 + 1) - __p) >> 2) > v20)
        {
          v20 = 0x5555555555555556 * ((*(&v61 + 1) - __p) >> 2);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((*(&v61 + 1) - __p) >> 2) >= 0xAAAAAAAAAAAAAAALL)
        {
          v21 = 0x1555555555555555;
        }

        else
        {
          v21 = v20;
        }

        sub_23375B2C8(buf, v21, v19, &__p);
        v22 = v65;
        *v65 = v16;
        *(v22 + 4) = v15;
        *(v22 + 8) = v17;
        *&v65 = v22 + 12;
        v23 = &v64[-(v61 - __p)];
        memcpy(v23, __p, v61 - __p);
        v24 = __p;
        v25 = *(&v61 + 1);
        __p = v23;
        v26 = v65;
        v61 = v65;
        *&v65 = v24;
        *(&v65 + 1) = v25;
        *buf = v24;
        v64 = v24;
        if (v24)
        {
          v48 = v26;
          operator delete(v24);
          v26 = v48;
        }

        v18 = v26;
      }

      else
      {
        *v18 = v16;
        *(v18 + 1) = v15;
        *(v18 + 2) = v17;
        v18 += 12;
      }

      *&v61 = v18;
      v27 = v17 + v50;
      if (v17 + v50 >= v46)
      {
        v17 = 0;
      }

      else
      {
        v17 += v50;
      }

      if (v27 >= v46)
      {
        v28 = HIDWORD(v50);
      }

      else
      {
        v28 = 0;
      }

      v15 += v28;
      ++v16;
    }

    while (v6 != v16);
  }

  v29 = sub_2337ADCC4(v42);
  v30 = __p;
  v31 = v61;
  v32 = queue;
  if (__p != v61)
  {
    v33 = v29;
    v34 = MEMORY[0x277D85DD0];
    *&v35 = v50;
    *(&v35 + 1) = v46;
    v51 = v35;
    do
    {
      block[0] = v34;
      block[1] = 3221225472;
      block[2] = sub_233820408;
      block[3] = &unk_2789EEBC0;
      v55 = v42;
      v56 = v30;
      v36 = group;
      v53 = v36;
      v37 = v47;
      v58 = v51;
      v54 = v37;
      v57 = v33;
      v59 = v45;
      v38 = v36;
      v32 = queue;
      dispatch_group_async(v38, queue, block);

      v30 += 12;
    }

    while (v30 != v31);
  }

  dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
  if (__p)
  {
    *&v61 = __p;
    operator delete(__p);
  }

  v44[2](v44);
}

void sub_2338202D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
{
  __cxa_free_exception(v36);
  v37[2](v37);

  _Unwind_Resume(a1);
}

void sub_233820380(uint64_t a1)
{
  v2 = sub_23378E038(a1);
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CDNGDeflateUnpacker", &unk_233945DBE, v5, 2u);
  }
}

void sub_233820408(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 72);
  v4 = *(a1 + 76);
  sub_2337238F0(&v19, *(*(a1 + 56) + 8), *(*(a1 + 56) + 4));
  sub_2337238F0(&v20, v3, v4);
  v5 = sub_23381EEDC(v2, *(*(v2 + 232) + 4 * **(a1 + 56)), *(*(v2 + 256) + 4 * **(a1 + 56)));
  if (v5)
  {
    v6 = *(a1 + 56);
    v7 = *(v6 + 1);
    v8 = *v6;
    v10 = *(a1 + 32);
    v9 = *(a1 + 40);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    v12 = *(a1 + 72);
    *&v11 = *(a1 + 80);
    *(&v11 + 1) = __PAIR64__(v7, HIDWORD(v7));
    block[2] = sub_233820524;
    block[3] = &unk_2789EE840;
    block[4] = v2;
    block[5] = v5;
    v15 = v11;
    v16 = v12;
    block[6] = *(a1 + 64);
    v13 = *(a1 + 88);
    v17 = v8;
    v18 = v13;
    dispatch_group_async(v10, v9, block);
  }

  else
  {
    puts("not readtile?");
  }
}

void sub_233820524(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = (*(*v3 + 72))(v3);
  v5 = *(a1 + 56);
  v6 = *(a1 + 60);
  v11 = 0;
  sub_2337238F0(&v12, v5, v6);
  v7 = *(a1 + 72);
  v8 = *(a1 + 76);
  sub_2337238F0(&v9, *(a1 + 64), *(a1 + 68));
  sub_2337238F0(&v10, v7, v8);
  sub_23381EFE0(v3, *(a1 + 48), v11, v12, v4, v9, v10, *(a1 + 40), *(*(v3 + 256) + 4 * *(a1 + 80)), *(a1 + 84), 1);
  if (v2)
  {
    free(v2);
  }
}

void sub_233820608(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2338205E0);
}

void sub_23382061C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

void **sub_233820634(uint64_t a1, int a2, int a3, char **a4, char **a5)
{
  *(a1 + 224) = a2;
  *(a1 + 228) = a3;
  v7 = (a1 + 232);
  if (v7 != a4)
  {
    sub_233723454(v7, *a4, a4[1], (a4[1] - *a4) >> 2);
  }

  result = (a1 + 256);
  if ((a1 + 256) != a5)
  {
    v9 = *a5;
    v10 = a5[1];
    v11 = (v10 - *a5) >> 2;

    return sub_233723454(result, v9, v10, v11);
  }

  return result;
}

unint64_t sub_2338206AC(int *a1)
{
  v2 = (2 * a1[17]) + a1[70];
  result = 2 * (*(*a1 + 40))(a1) * v2;
  if ((result & 0x1E) != 0)
  {
    v4 = (2 * a1[17]) + a1[15];
    return (2 * v4 * (*(*a1 + 40))(a1) + 31) & 0xFFFFFFFFFFFFFFE0;
  }

  return result;
}

void *sub_233820760(void *a1)
{
  *a1 = &unk_284920260;
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

  *a1 = &unk_28491FFD8;
  v4 = a1[24];
  if (v4)
  {
    a1[25] = v4;
    operator delete(v4);
  }

  return sub_233723A54(a1);
}

void sub_2338207FC(void *a1)
{
  *a1 = &unk_284920260;
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

  *a1 = &unk_28491FFD8;
  v4 = a1[24];
  if (v4)
  {
    a1[25] = v4;
    operator delete(v4);
  }

  sub_233723A54(a1);

  JUMPOUT(0x2383ABF10);
}

int64x2_t sub_2338208B4()
{
  v0 = 0;
  result = xmmword_233903BC0;
  v2 = xmmword_233903BD0;
  v3 = xmmword_233903BE0;
  v4 = vdupq_n_s32(0x477FFF00u);
  v5 = xmmword_233903BB0;
  v6 = vdupq_n_s64(8uLL);
  do
  {
    xmmword_27DE175F8[v0] = vcvt_hight_f16_f32(vcvt_f16_f32(vdivq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vcvtq_f64_u64(v5)), vcvtq_f64_u64(v3)), v4)), vdivq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vcvtq_f64_u64(v2)), vcvtq_f64_u64(result)), v4));
    v2 = vaddq_s64(v2, v6);
    v3 = vaddq_s64(v3, v6);
    v5 = vaddq_s64(v5, v6);
    result = vaddq_s64(result, v6);
    ++v0;
  }

  while (v0 != 0x2000);
  return result;
}

uint64_t *sub_233820948(uint64_t *a1, int *a2)
{
  if (!*a2)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  *a1 = __divti3();
  return a1;
}

void *sub_2338209C0(void *result, void *a2)
{
  v2 = *result >= *a2;
  *result -= *a2;
  if (!v2)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

id sub_233820A24()
{
  v20[1] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CD3720];
  v11 = *MEMORY[0x277CD3700];
  v12 = v0;
  v19[0] = MEMORY[0x277CBEC38];
  v19[1] = @"com.epson.raw-image";
  v1 = *MEMORY[0x277CD3718];
  v13 = *MEMORY[0x277CD36E0];
  v19[2] = @".erf.";
  v19[3] = &unk_284957C40;
  v19[4] = &unk_284957C58;
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{sub_233720E7C, v11, v12, v13, v1, *MEMORY[0x277CD3708], *MEMORY[0x277CD3710]}];
  v19[5] = v2;
  v14 = *MEMORY[0x277CD36C8];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_233820D1C];
  v19[6] = v3;
  v15 = *MEMORY[0x277CD36E8];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_233820D28];
  v19[7] = v4;
  v16 = *MEMORY[0x277CD36D0];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_23378BC54];
  v19[8] = v5;
  v17 = *MEMORY[0x277CD36F0];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_233820D34];
  v19[9] = v6;
  v18 = *MEMORY[0x277CD36F8];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_233820D40];
  v19[10] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v11 count:11];
  v20[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];

  return v9;
}

void sub_233820D4C(void x0_0, uint64_t a1, char a2, void *a3, void *a4)
{
  a3;
  a4;
  sub_233821B80();
}

uint64_t sub_233820DE8(uint64_t a1)
{
  __p = 0;
  v15 = 0;
  v16 = 0;
  sub_2337338AC(a1, &v12);
  v2 = v12;
  v10 = 8;
  sub_233726998(&v11, &v10);
  v3 = sub_2337257E8(v2, &v11, &__p);
  if (v13)
  {
    sub_2337239E8(v13);
  }

  if (!v3)
  {
    goto LABEL_13;
  }

  if ((SHIBYTE(v16) & 0x80000000) == 0)
  {
    if (SHIBYTE(v16) == 5)
    {
      p_p = &__p;
      goto LABEL_9;
    }

LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  if (v15 != 5)
  {
    goto LABEL_13;
  }

  p_p = __p;
LABEL_9:
  v5 = *p_p;
  v6 = p_p[4];
  if (v5 != 1330860101 || v6 != 78)
  {
    goto LABEL_13;
  }

  sub_2337338AC(a1, &v12);
  sub_2337255C0(v12);
  if (v13)
  {
    sub_2337239E8(v13);
  }

  sub_2337338AC(a1, &v12);
  v11 = (*(*v12 + 48))(v12);
  (*(*a1 + 160))(a1, &v11);
  if (v13)
  {
    sub_2337239E8(v13);
  }

  v8 = 1;
LABEL_14:
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_233820F54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_233820F94(uint64_t a1, void *a2, unsigned __int16 *a3)
{
  v20[1] = *MEMORY[0x277D85DE8];
  nullsub_6();
  v6 = *a3;
  if (v6 <= 0x27F)
  {
    if (v6 == 523)
    {
      sub_2338FA424(a3, a1);
    }

    else if (v6 == 524)
    {
      sub_2338FCBC8(a3, a1);
    }

    else if (v6 == 525 && a3[1] == 2 && *(a3 + 1) <= 0xDu)
    {
      memset(&__str, 0, sizeof(__str));
      if (sub_23375168C(a1, a3, &__str, 1))
      {
        std::string::operator=((a1 + 1184), &__str);
      }

      sub_2338F8878(&__str);
    }
  }

  else if (*a3 > 0x400u)
  {
    if (v6 == 1025)
    {
      if (((*(*a1 + 56))(a1) & 1) == 0 && a3[1] == 4 && *(a3 + 1) == 4)
      {
        sub_2337338AC(a1, &__p);
        sub_23374AEDC(a3, &__p, &__str);
        __src = a2;
        v10 = sub_233757B14((a1 + 264), a2, &unk_233905F1C, &__src, &p_p);
        v11 = v10[7];
        if (v11)
        {
          v10[8] = v11;
          operator delete(v11);
          v10[7] = 0;
          v10[8] = 0;
          v10[9] = 0;
        }

        *(v10 + 7) = __str;
        memset(&__str, 0, sizeof(__str));
        if (__p.__r_.__value_.__l.__size_)
        {
          sub_2337239E8(__p.__r_.__value_.__l.__size_);
        }
      }
    }

    else if (v6 == 3712 && ((*(*a1 + 56))(a1) & 1) == 0 && a3[1] == 7 && *(a3 + 1) == 256)
    {
      sub_2337338AC(a1, &__p);
      LODWORD(p_p) = *(a3 + 2) + 48;
      sub_233723AE0(&__src, &p_p);
      sub_233725F08(&__str, &__p, &__src, 0);
      if (__p.__r_.__value_.__l.__size_)
      {
        sub_2337239E8(__p.__r_.__value_.__l.__size_);
      }

      if (*(a2 + 23) < 0)
      {
        sub_233731FB8(&__p, *a2, a2[1]);
      }

      else
      {
        __p = *a2;
      }

      std::string::append(&__p, ":WhitePoint", 0xBuLL);
      sub_2337338AC(a1, &__src);
      v12 = sub_2337255C0(__src);
      if (v20[0])
      {
        sub_2337239E8(v20[0]);
      }

      sub_2337338AC(a1, &__src);
      v13 = sub_2337255C0(__src);
      if (v20[0])
      {
        sub_2337239E8(v20[0]);
      }

      __src = (v12 | 0x10000000000);
      LODWORD(v20[0]) = v13;
      p_p = &__p;
      v14 = sub_2337577E4((a1 + 120), &__p, &unk_233905F1C, &p_p, &v15);
      sub_23375538C(v14 + 7, &__src, v20 + 4, 3uLL);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      sub_233725FD4(&__str);
    }
  }

  else if (v6 == 640)
  {
    if (a3[1] == 1)
    {
      sub_2337338AC(a1, &__str);
      v9 = sub_233725414(__str.__r_.__value_.__l.__data_);
      LODWORD(__src) = *(a3 + 2);
      LODWORD(__p.__r_.__value_.__l.__data_) = v9;
      *(a1 + 1232) = *sub_233723874(&__p, &__src);
      if (__str.__r_.__value_.__l.__size_)
      {
        sub_2337239E8(__str.__r_.__value_.__l.__size_);
      }

      *(a1 + 1240) = *(a3 + 1);
    }
  }

  else if (v6 == 1024 && a3[1] == 7 && *(a3 + 1) == 8)
  {
    sub_2337338AC(a1, &__p);
    LODWORD(p_p) = sub_233749410(a3);
    sub_233726A8C(&__src, &p_p);
    sub_233725F08(&__str, &__p, &__src, 0);
    if (__p.__r_.__value_.__l.__size_)
    {
      sub_2337239E8(__p.__r_.__value_.__l.__size_);
    }

    sub_2337338AC(a1, &__src);
    v7 = __src;
    v15 = 4;
    sub_233726998(&p_p, &v15);
    sub_233725B60(v7, &p_p, &__p);
    if (v20[0])
    {
      sub_2337239E8(v20[0]);
    }

    v8 = __p.__r_.__value_.__r.__words[0];
    *(a1 + 1216) = vmovl_u16(*__p.__r_.__value_.__l.__data_);
    __p.__r_.__value_.__l.__size_ = v8;
    operator delete(v8);
    sub_233725FD4(&__str);
  }
}

void sub_2338214F0(uint64_t a1@<X0>, void **a2@<X8>)
{
  sub_233753B14(a1, a2);
  sub_2337268D8(&v5, (a1 + 1232));
  v4 = *(a1 + 1240);
  sub_23373401C(a1, &v5, &v4, 1, &v6);
  if (v6)
  {
    sub_233753C74(a2, &v6);
  }

  if (*(&v6 + 1))
  {
    sub_2337239E8(*(&v6 + 1));
  }
}

void sub_23382156C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  sub_233723948(&a11);
  _Unwind_Resume(a1);
}

uint64_t sub_2338215A0(uint64_t a1)
{
  sub_23372A488(__p, "IFD0:SUBIFD0");
  v2 = sub_233753D88(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_2338215FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233821618(uint64_t a1)
{
  sub_23372A488(__p, "IFD0:SUBIFD0");
  v2 = sub_233753DFC(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_233821674(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_233821690(uint64_t a1)
{
  sub_23372A488(__p, "IFD0:SUBIFD0");
  v2 = sub_233753F24(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_2338216EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_233821718(_DWORD *a1)
{
  (*(*a1 + 448))(a1);
  v4 = a1[302];
  if (v2 < v4 || (v5 = a1[303], v3 < v5))
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return ((v2 - v4) / 2) | (((v3 - v5) / 2) << 32);
}

void sub_2338217D4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_23372A488(&__p, "erf");
  sub_233735478(a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_23372A488(&__p, "epson");
  sub_233735478(a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_2337355A8(a1, &__p);
  sub_233735478(a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_233821888(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_233735AD4(&__p);
  _Unwind_Resume(a1);
}

id sub_2338218C8()
{
  v6[14] = *MEMORY[0x277D85DE8];
  v0 = sub_23374CF00();
  v1 = [v0 mutableCopy];

  v5[0] = &unk_284957C70;
  v5[1] = &unk_284957C88;
  v6[0] = &unk_28495D4B0;
  v6[1] = &unk_28495D4D8;
  v5[2] = &unk_284957CA0;
  v5[3] = &unk_284957CB8;
  v6[2] = &unk_28495D500;
  v6[3] = &unk_28495D528;
  v5[4] = &unk_284957CD0;
  v5[5] = &unk_284957CE8;
  v6[4] = &unk_28495D550;
  v6[5] = &unk_28495D578;
  v5[6] = &unk_284957D00;
  v5[7] = &unk_284957D18;
  v6[6] = &unk_28495D5A0;
  v6[7] = &unk_28495D5C8;
  v5[8] = &unk_284957D30;
  v5[9] = &unk_284957D48;
  v6[8] = &unk_28495D5F0;
  v6[9] = &unk_28495D618;
  v5[10] = &unk_284957D60;
  v5[11] = &unk_284957D78;
  v6[10] = &unk_28495D640;
  v6[11] = &unk_28495D668;
  v5[12] = &unk_284957D90;
  v5[13] = &unk_284957DA8;
  v6[12] = &unk_28495D690;
  v6[13] = &unk_28495D6B8;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:14];
  [v1 addEntriesFromDictionary:v2];

  v3 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v1];

  return v3;
}

void sub_233821AAC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_233821AE8(uint64_t a1)
{
  sub_233821B20(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_233821B20(uint64_t a1)
{
  *a1 = &unk_2849203C0;
  if (*(a1 + 1207) < 0)
  {
    operator delete(*(a1 + 1184));
  }

  return sub_2337557B4(a1);
}

uint64_t sub_233821C24(uint64_t a1, void *a2, char *a3, void **a4, void **a5)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2849206F8;
  sub_23374B844(a1 + 24, a2, *a3, *a4, *a5);
  *(a1 + 24) = &unk_2849203C0;
  *(a1 + 1208) = 0u;
  *(a1 + 1224) = 0u;
  *(a1 + 1240) = 0u;
  *(a1 + 1252) = 0u;
  return a1;
}

void sub_233821CDC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2849206F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_233821FC4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *sub_2338F4DD0(a1, a2) = &unk_284920748;
  *(a1 + 12) = sub_233725614(*a3);
  *(a1 + 16) = sub_233725614(*a3);
  return a1;
}

RAWOpcodeFixBadPixelsConstant *sub_233822028(uint64_t a1)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v2 = [RAWOpcodeFixBadPixelsConstant alloc];
  v8[0] = @"Constant";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 12)];
  v8[1] = @"BayerPhase";
  v9[0] = v3;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 16)];
  v9[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
  v6 = [(RAWOpcodeFixBadPixelsConstant *)v2 initWithArguments:v5];

  return v6;
}

uint64_t sub_233822178(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v899 = *MEMORY[0x277D85DE8];
  v3 = *(v2 + 136);
  if (*(v2 + 136))
  {
    if (*(v2 + 132) != 0.66667 || *(v2 + 188) != 1 || *(v2 + 120) || *(v2 + 124) != 2 || (*(v2 + 144) | 2) != 2 || *(v2 + 248))
    {
      return 0;
    }

    v3 = *(v2 + 252);
    if (!*(v2 + 252))
    {
      return v3;
    }

    v3 = *(v2 + 264);
    if (v3)
    {
      return 0;
    }

    v5 = *(v1 + 64);
    if (v5 >= 2)
    {
      v6 = *(v1 + 72);
      if (v6 >= 2)
      {
        v7 = *v1;
        if (v5 + *(v1 + 32) >= *v1 - 1)
        {
          return 0;
        }

        if (*(v2 + 496) != 0.0)
        {
          return 0;
        }

        v631 = *(v1 + 32);
        if (*(v2 + 304) != 1)
        {
          return 0;
        }

        v8 = *(v1 + 8);
        v632 = *(v1 + 16);
        v625 = *(v1 + 24);
        v9 = *(v1 + 40);
        v10 = *(v1 + 48);
        v11 = *(v1 + 56);
        v12 = *(v1 + 80);
        v13 = *(v2 + 4);
        v14 = v2;
        bzero(&v635, 0x2588uLL);
        v617 = v8;
        v618 = v7;
        v641.i64[0] = v7;
        v641.i64[1] = v8;
        v642 = v632;
        v643 = v625;
        v644 = v631;
        v645 = v9;
        v622 = v9;
        v646 = v10;
        v647 = v11;
        v648 = v5;
        v649 = v6;
        v633 = v14;
        v650 = v14;
        v651 = v12;
        v652 = v13;
        v653 = v13;
        v637 = 0;
        v15 = qword_27DE3DE00;
        if (!qword_27DE3DE00)
        {
          pthread_once(&stru_280C04D58, sub_2338278C8);
          v15 = qword_27DE3DE00;
          if (!qword_27DE3DE00)
          {
            return 0;
          }
        }

        v880 = v15;
        if (*(v15 + 64))
        {
          if (*(v15 + 72))
          {
            _ZF = *(v15 + 80) == 0;
          }

          else
          {
            _ZF = 1;
          }

          if (!_ZF)
          {
            goto LABEL_50;
          }
        }

        else
        {
          pthread_mutex_lock(v15);
          v32 = qword_27DE3DE00;
          if (!*(qword_27DE3DE00 + 64))
          {
            *(qword_27DE3DE00 + 112) = 0x4000000040000000;
            v33 = &v32[1].__opaque[52];
            v34 = &v32[1].__opaque[44];
            v35 = 3.0;
            for (i = 1; i < 0x1FFFE; i += 2)
            {
              v37 = *v34++;
              *(v33 - 1) = v37 * 0.5;
              *v33 = 2.0 / v35;
              v35 = v35 + 2.0;
              v33 += 2;
            }

            v32[1].__sig = &v32[1].__opaque[40];
          }

          pthread_mutex_unlock(v32);
          v15 = qword_27DE3DE00;
          if (*(qword_27DE3DE00 + 72))
          {
            v38 = *(qword_27DE3DE00 + 80) == 0;
          }

          else
          {
            v38 = 1;
          }

          if (!v38)
          {
LABEL_50:
            if (*(v15 + 88))
            {
              goto LABEL_51;
            }

            goto LABEL_36;
          }
        }

        pthread_mutex_lock(v15);
        v17 = qword_27DE3DE00;
        if (*(qword_27DE3DE00 + 72))
        {
          v18 = *(qword_27DE3DE00 + 80) == 0;
        }

        else
        {
          v18 = 1;
        }

        if (v18)
        {
          v19 = qword_27DE3DE00 + 788400;
          *(qword_27DE3DE00 + 524400) = 0;
          v20 = (v17 + 524404);
          *(v17 + 788400) = 0;
          v21 = (v17 + 788401);
          v22 = 65999;
          v23 = 2;
          v24 = 16;
          v25 = 1;
          do
          {
            v26 = 0xFFFFFFFF / v25;
            *v21++ = v24;
            v27 = v25 == v23;
            if (v25 == v23)
            {
              ++v26;
            }

            v23 <<= v27;
            v24 -= v27;
            *v20++ = v26;
            ++v25;
            --v22;
          }

          while (v22);
          *(v17 + 72) = v17 + 524400;
          *(v17 + 80) = v19;
        }

        pthread_mutex_unlock(v17);
        v15 = qword_27DE3DE00;
        if (*(qword_27DE3DE00 + 88))
        {
LABEL_51:
          if (*(v14 + 160) != 1)
          {
            goto LABEL_60;
          }

          goto LABEL_52;
        }

LABEL_36:
        pthread_mutex_lock(v15);
        v28 = qword_27DE3DE00;
        v29 = *(qword_27DE3DE00 + 88);
        if (!v29)
        {
          v30 = qword_27DE3DE00 + 854400;
          v31 = 0.0;
          do
          {
            *(v30 + v29) = (sqrt(v31) * 65535.0 + 0.5);
            v31 = v31 + 0.0000152590219;
            v29 += 2;
          }

          while (v29 != 0x20000);
          *(v28 + 88) = v30;
        }

        pthread_mutex_unlock(v28);
        if (*(v14 + 160) != 1)
        {
LABEL_60:
          v46 = v650;
          v47 = v650->i32[1];
          if (v47 != 8 && v47 != 6)
          {
            v68 = 0;
            goto LABEL_139;
          }

          v49 = llroundf(v650[48].f32[1]);
          v50 = llroundf(v650[49].f32[0]);
          v51 = vdupq_n_s64(0x40C0000000000000uLL);
          v52 = llround(v650[42].f32[0] * 8192.0);
          v53 = vmovn_s64(vcvtq_s64_f64(vrndaq_f64(vmulq_f64(vcvtq_f64_f32(v650[41]), v51))));
          v54 = llround(v650[79].f32[0] * 16.0 * 8192.0);
          __asm { FMOV            V3.2D, #16.0 }

          v58 = vmovn_s64(vcvtq_s64_f64(vrndaq_f64(vmulq_f64(vmulq_f64(vcvtq_f64_f32(v650[78]), _Q3), v51))));
          v59 = vceq_s32(vdup_lane_s32(v53, 0), v58);
          if (v59.i8[0])
          {
            v60 = 3;
          }

          else
          {
            v60 = 1;
          }

          if (v53.i32[1] == v53.i32[0])
          {
            v60 |= 4u;
          }

          if (v59.i8[4])
          {
            v61 = v60 | 8;
          }

          else
          {
            v61 = v60;
          }

          v62 = v61 | 0x10;
          if (v53.i32[0] != v52)
          {
            v62 = v61;
          }

          if (v53.i32[0] == v54)
          {
            v63 = v62 | 0x20;
          }

          else
          {
            v63 = v62;
          }

          if (v50 != v49)
          {
            v63 = v61;
          }

          if ((v63 & 2) != 0)
          {
            if ((v63 & 4) != 0)
            {
              v66 = 1;
              goto LABEL_114;
            }

            if (vceq_s32(v58, v53).i8[4])
            {
              v67 = 12;
            }

            else
            {
              v67 = 4;
            }

            v63 |= v67;
            v66 = 2;
            if (v50 != v49)
            {
LABEL_114:
              v71 = v63 | 0x18;
              if (v58.i32[1] != v52)
              {
                v71 = v63;
              }

              if (v58.i32[1] == v54)
              {
                v72 = v71 | 0x20;
              }

              else
              {
                v72 = v71;
              }

              if (v50 == v49)
              {
                v73 = v72;
              }

              else
              {
                v73 = v63;
              }

              if ((v63 & 8) != 0)
              {
                v74 = v63;
              }

              else
              {
                v74 = v73;
              }

              if ((v63 & 8) != 0)
              {
                v75 = v66;
              }

              else
              {
                v75 = v66 + 1;
              }

              if ((v74 & 0x10) != 0 || (++v75, v54 != v52))
              {
                if ((v74 & 0x20) != 0)
                {
                  v889 = xmmword_233908FF0;
                  if (v75 == 1)
                  {
                    v68 = 1;
LABEL_139:
                    if (v47 == 6 || v47 == 8)
                    {
                      goto LABEL_144;
                    }

                    v897 = 0u;
                    v898 = 0u;
                    v895 = 0u;
                    v896 = 0u;
                    v887 = 0u;
                    v888 = 0u;
                    v81 = llroundf(v650[48].f32[1]);
                    v82 = llroundf(v650[49].f32[0]);
                    v83 = llroundf(v650[49].f32[1]);
                    v885 = 0u;
                    v886 = 0u;
                    v84 = v650[41].i32[0];
                    v85 = v650[41].i32[1];
                    v86 = v650[42].i32[0];
                    if (v653 <= 5)
                    {
                      if (v653 == 4)
                      {
                        DWORD1(v885) = v650[42].i32[0];
                        HIDWORD(v885) = v84;
                        LODWORD(v886) = v85;
                        DWORD2(v886) = v85;
                        DWORD1(v887) = v84;
                        HIDWORD(v887) = v86;
                        v90 = v83;
                        v91 = v81;
                        v92 = v82;
                        LODWORD(v888) = v85;
                        DWORD2(v888) = v85;
                        LODWORD(v895) = 0;
                        v83 = 0;
                        v82 = 0;
                        v81 = 0;
                        goto LABEL_299;
                      }

                      if (v653 != 5)
                      {
                        goto LABEL_300;
                      }
                    }

                    else
                    {
                      if (v653 == 6)
                      {
LABEL_182:
                        v87 = v650[78].i32[0];
                        v88 = v650[78].i32[1];
                        v89 = v650[79].i32[0];
                        LODWORD(v885) = v650[41].i32[0];
                        *(&v885 + 4) = __PAIR64__(v86, v87);
                        HIDWORD(v885) = v89;
                        *&v886 = __PAIR64__(v85, v88);
                        *(&v886 + 1) = __PAIR64__(v85, v88);
                        *&v887 = __PAIR64__(v89, v86);
                        *(&v887 + 1) = __PAIR64__(v87, v84);
                        *&v888 = __PAIR64__(v85, v88);
                        *(&v888 + 1) = __PAIR64__(v85, v88);
                        v90 = v81;
                        v91 = v83;
                        v92 = v82;
                        LODWORD(v895) = v81;
LABEL_299:
                        *(&v895 + 4) = __PAIR64__(v83, v90);
                        HIDWORD(v895) = v91;
                        *&v896 = __PAIR64__(v82, v92);
                        *(&v896 + 1) = __PAIR64__(v82, v92);
                        *&v897 = __PAIR64__(v91, v83);
                        *(&v897 + 1) = __PAIR64__(v90, v81);
                        *&v898 = __PAIR64__(v82, v92);
                        *(&v898 + 1) = __PAIR64__(v82, v92);
                        goto LABEL_300;
                      }

                      if (v653 != 7)
                      {
                        if (v653 == 8)
                        {
                          goto LABEL_182;
                        }

LABEL_300:
                        v175 = 0;
                        v176 = 0;
                        v177 = 0;
                        do
                        {
                          if (((v177 >> v175) & 1) == 0)
                          {
                            for (j = v175; j != 16; ++j)
                            {
                              if (*(&v895 + j) == *(&v895 + v175) && *(&v885 + j) == *(&v885 + v175))
                              {
                                v177 |= 1 << j;
                              }
                            }

                            ++v176;
                          }

                          ++v175;
                        }

                        while (v175 != 16);
                        if (v176 >= 1)
                        {
                          v179 = v68 + 1;
                          *(&v889 + v68) = xmmword_233908FF0;
                          if (v176 == 1)
                          {
LABEL_311:
                            v68 = v179;
                            goto LABEL_144;
                          }

                          v180 = v68 + 2;
                          *(&v889 + v179) = xmmword_233909000;
                          if (v176 < 3)
                          {
                            goto LABEL_327;
                          }

                          v179 = v68 + 3;
                          *(&v889 + v180) = xmmword_233909010;
                          if (v176 == 3)
                          {
                            goto LABEL_311;
                          }

                          v180 = v68 + 4;
                          *(&v889 + v179) = xmmword_233909020;
                          if (v176 < 5)
                          {
                            goto LABEL_327;
                          }

                          v179 = v68 + 5;
                          *(&v889 + v180) = xmmword_233909030;
                          if (v176 == 5)
                          {
                            goto LABEL_311;
                          }

                          v180 = v68 + 6;
                          *(&v889 + v179) = xmmword_233909040;
                          if (v176 < 7)
                          {
                            goto LABEL_327;
                          }

                          v179 = v68 + 7;
                          *(&v889 + v180) = xmmword_233909050;
                          if (v176 == 7)
                          {
                            goto LABEL_311;
                          }

                          v180 = v68 | 8;
                          *(&v889 + v179) = xmmword_233909060;
                          if (v176 < 9)
                          {
                            goto LABEL_327;
                          }

                          v179 = v68 + 9;
                          *(&v889 + v180) = xmmword_233909070;
                          if (v176 == 9)
                          {
                            goto LABEL_311;
                          }

                          v180 = v68 + 10;
                          *(&v889 + v179) = xmmword_233909080;
                          if (v176 < 0xB)
                          {
                            goto LABEL_327;
                          }

                          v179 = v68 + 11;
                          *(&v889 + v180) = xmmword_233909090;
                          if (v176 == 11)
                          {
                            goto LABEL_311;
                          }

                          v180 = v68 + 12;
                          *(&v889 + v179) = xmmword_2339090A0;
                          if (v176 < 0xD)
                          {
                            goto LABEL_327;
                          }

                          v179 = v68 + 13;
                          *(&v889 + v180) = xmmword_2339090B0;
                          if (v176 == 13)
                          {
                            goto LABEL_311;
                          }

                          v180 = v68 + 14;
                          *(&v889 + v179) = xmmword_2339090C0;
                          if (v176 < 0xF)
                          {
LABEL_327:
                            v68 = v180;
                          }

                          else
                          {
                            v179 = v68 + 15;
                            *(&v889 + v180) = xmmword_2339090D0;
                            if (v176 == 15)
                            {
                              goto LABEL_311;
                            }

                            v68 |= 0x10u;
                            *(&v889 + v179) = xmmword_2339090E0;
                          }
                        }

LABEL_144:
                        if (v46[6].i8[4])
                        {
                          v77 = 3640;
                        }

                        else
                        {
                          v77 = 0;
                        }

                        v78 = v77 | 7;
                        if (v46[17].i32[1] && (v46[18].i32[0] | 2) == 2)
                        {
                          v78 = v77 | 0x3F;
                        }

                        if (v46[8].i8[0] == 1)
                        {
                          *(&v889 + v68++) = xmmword_2339090F0;
                          if (v46[34].i8[0] != 1)
                          {
                            goto LABEL_152;
                          }
                        }

                        else if (v46[34].i8[0] != 1)
                        {
LABEL_152:
                          if ((v78 & 1) == 0)
                          {
                            goto LABEL_153;
                          }

                          goto LABEL_167;
                        }

                        v78 |= 0x1000u;
                        *(&v889 + v68++) = xmmword_233909100;
                        if ((v78 & 1) == 0)
                        {
LABEL_153:
                          if ((v78 & 2) == 0)
                          {
                            goto LABEL_154;
                          }

                          goto LABEL_168;
                        }

LABEL_167:
                        *(&v889 + v68++) = xmmword_233909110;
                        if ((v78 & 2) == 0)
                        {
LABEL_154:
                          if ((v78 & 4) == 0)
                          {
                            goto LABEL_155;
                          }

                          goto LABEL_169;
                        }

LABEL_168:
                        *(&v889 + v68++) = xmmword_233909120;
                        if ((v78 & 4) == 0)
                        {
LABEL_155:
                          if ((v78 & 8) == 0)
                          {
                            goto LABEL_156;
                          }

                          goto LABEL_170;
                        }

LABEL_169:
                        *(&v889 + v68++) = xmmword_233909130;
                        if ((v78 & 8) == 0)
                        {
LABEL_156:
                          if ((v78 & 0x10) == 0)
                          {
                            goto LABEL_157;
                          }

                          goto LABEL_171;
                        }

LABEL_170:
                        *(&v889 + v68++) = xmmword_233909140;
                        if ((v78 & 0x10) == 0)
                        {
LABEL_157:
                          if ((v78 & 0x20) == 0)
                          {
                            goto LABEL_158;
                          }

                          goto LABEL_172;
                        }

LABEL_171:
                        *(&v889 + v68++) = xmmword_233909150;
                        if ((v78 & 0x20) == 0)
                        {
LABEL_158:
                          if ((v78 & 0x200) == 0)
                          {
                            goto LABEL_159;
                          }

                          goto LABEL_173;
                        }

LABEL_172:
                        *(&v889 + v68++) = xmmword_233909160;
                        if ((v78 & 0x200) == 0)
                        {
LABEL_159:
                          if ((v78 & 0x400) == 0)
                          {
                            goto LABEL_160;
                          }

                          goto LABEL_174;
                        }

LABEL_173:
                        *(&v889 + v68++) = xmmword_233909170;
                        if ((v78 & 0x400) == 0)
                        {
LABEL_160:
                          if ((v78 & 0x800) == 0)
                          {
                            goto LABEL_161;
                          }

                          goto LABEL_175;
                        }

LABEL_174:
                        *(&v889 + v68++) = xmmword_233909180;
                        if ((v78 & 0x800) == 0)
                        {
LABEL_161:
                          if ((v78 & 0x1000) == 0)
                          {
                            goto LABEL_162;
                          }

                          goto LABEL_176;
                        }

LABEL_175:
                        *(&v889 + v68++) = xmmword_233909190;
                        if ((v78 & 0x1000) == 0)
                        {
LABEL_162:
                          if (v68 >= 1)
                          {
LABEL_163:
                            if (v68 >= 5)
                            {
                              v93 = v68 & 3;
                              if ((v68 & 3) == 0)
                              {
                                v93 = 4;
                              }

                              v79 = v68 - v93;
                              v94 = xmmword_2339091B0;
                              v95 = &v891 + 1;
                              v96 = 0uLL;
                              v97 = v79;
                              do
                              {
                                v98 = v95 - 4;
                                v99 = vld2q_f64(v98);
                                v100 = vld2q_f64(v95);
                                v94 = vaddq_s64(v99, v94);
                                v96 = vaddq_s64(v100, v96);
                                v95 += 8;
                                v97 -= 4;
                              }

                              while (v97);
                              v80 = vaddvq_s64(vaddq_s64(v96, v94));
                            }

                            else
                            {
                              v79 = 0;
                              v80 = 320;
                            }

                            v101 = v68 - v79;
                            v102 = ((&v889 + v79) | 8);
                            do
                            {
                              v103 = *v102;
                              v102 += 2;
                              v80 += v103;
                              --v101;
                            }

                            while (v101);
LABEL_190:
                            v104 = sub_2338F6024(1uLL, v80);
                            v882 = v104;
                            if (v104)
                            {
                              v105 = v104;
                              if (pthread_mutex_init(v104, 0))
                              {
LABEL_192:
                                if (v881)
                                {
                                  atomic_fetch_add(v881 + 4, 0xFFFFFFFF);
                                }

                                pthread_mutex_destroy(v105);
                                j__free_3(v105);
                                return 0;
                              }

                              if (v68 >= 1)
                              {
                                v106 = v105 + 5;
                                v107 = v68;
                                v108 = &v889.i64[1];
                                do
                                {
                                  v109 = *v108;
                                  *(&v105->__sig + *(v108 - 1)) = v106;
                                  v106 = (v106 + v109);
                                  v108 += 2;
                                  --v107;
                                }

                                while (v107);
                              }

                              v110 = *&v105[4].__opaque[48];
                              if (v110 && !*&v105[3].__opaque[40])
                              {
                                *&v105[3].__opaque[40] = v110 + 0x20000;
                              }

                              v111 = v46[57].f32[1];
                              v112 = v46[52].u8[4];
                              v113 = v46[53].f32[0];
                              v114 = v46[53].f32[1];
                              v115 = v46[54].f32[0];
                              v116 = v46[54].f32[1];
                              v117 = v46[55].f32[0];
                              v118 = v46[55].f32[1];
                              v119 = v46[56].f32[0];
                              v626 = v46[56].f32[1];
                              v120 = v46[57].i8[0];
                              LOWORD(v895) = *(v46[57].i16 + 1);
                              BYTE2(v895) = v46[57].i8[3];
                              pthread_mutex_lock(qword_27DE3DE00);
                              v121 = *(qword_27DE3DE00 + 104);
                              if (v121)
                              {
                                v122 = 0;
                                v123 = 0;
                                if (v112)
                                {
                                  while (v111 != *(v121 + 5) || v112 != *(v121 + 24) || ((v120 & 1) == 0 || (v121[15] & 1) == 0) && (v113 != *(v121 + 7) || v114 != *(v121 + 8) || v115 != *(v121 + 9) || v116 != *(v121 + 10) || v117 != *(v121 + 11) || v118 != *(v121 + 12) || v119 != *(v121 + 13) || v626 != *(v121 + 14) || (v120 & 1) != *(v121 + 60)))
                                  {
                                    if (!atomic_load(v121 + 4))
                                    {
                                      v123 = v121;
                                    }

                                    v121 = *(v121 + 1);
                                    ++v122;
                                    if (!v121)
                                    {
                                      goto LABEL_233;
                                    }
                                  }

LABEL_242:
                                  v881 = v121;
                                  atomic_fetch_add(v121 + 4, 1u);
                                  v105[1].__sig = (v121 + 16);
                                  v129 = qword_27DE3DE00;
                                  v130 = *(qword_27DE3DE00 + 104);
                                  if (v121 != v130)
                                  {
                                    v132 = *v121;
                                    v131 = *(v121 + 1);
                                    *(*v121 + 8) = v131;
                                    if (v131)
                                    {
                                      *v131 = v132;
                                    }

                                    *v121 = 0;
                                    *(v121 + 1) = v130;
                                    *v130 = v121;
                                    v129 = qword_27DE3DE00;
                                    *(qword_27DE3DE00 + 104) = v121;
                                  }

                                  pthread_mutex_unlock(v129);
                                  v610 = v882;
                                  v599 = *(v14 + 328);
                                  v601 = *(v14 + 336);
                                  v627 = *(v14 + 388);
                                  v603 = *(v14 + 396);
                                  if (*(v14 + 416))
                                  {
                                    v581 = 0;
                                    v582 = 0;
                                  }

                                  else
                                  {
                                    v582 = vcvt_s32_f32(vrnda_f32(*(v14 + 376)));
                                    v581 = llroundf(*(v14 + 384));
                                  }

                                  LODWORD(v133) = *(v14 + 328);
                                  if (v599.f32[1] > v599.f32[0])
                                  {
                                    LODWORD(v133) = HIDWORD(*(v14 + 328));
                                  }

                                  if (v601 > v133)
                                  {
                                    v133 = *(v14 + 336);
                                  }

                                  LODWORD(v134) = *(v14 + 388);
                                  if (v627.f32[1] > v627.f32[0])
                                  {
                                    LODWORD(v134) = HIDWORD(*(v14 + 388));
                                  }

                                  if (v603 > v134)
                                  {
                                    v134 = *(v14 + 396);
                                  }

                                  v614 = v134;
                                  if (*&v882[4].__opaque[40])
                                  {
                                    v135 = *&v882[3].__opaque[40] == 0;
                                  }

                                  else
                                  {
                                    v135 = 0;
                                  }

                                  v587 = *&v882[4].__opaque[40];
                                  v576 = *&v882[3].__opaque[40];
                                  if (v135)
                                  {
                                    v136 = *&v882[4].__opaque[40];
                                  }

                                  else
                                  {
                                    v136 = *&v882[3].__opaque[40];
                                  }

                                  v137 = *(v14 + 544);
                                  v138 = *(v14 + 540);
                                  if (v138 && v137 > v138)
                                  {
                                    v137 = v138;
                                  }

                                  v139 = *(v14 + 512);
                                  if (*(v14 + 508))
                                  {
                                    v140 = v137 * *(v14 + 516) + v137 * v139 * v137 + *(v14 + 520);
                                  }

                                  else
                                  {
                                    v140 = *(v14 + 516) + v139 * v137;
                                  }

                                  v141 = *(v14 + 528);
                                  if (*(v14 + 524))
                                  {
                                    v142 = v137 * *(v14 + 532) + v137 * v141 * v137 + *(v14 + 536);
                                  }

                                  else
                                  {
                                    v142 = *(v14 + 532) + v141 * v137;
                                  }

                                  v143 = *(v14 + 560);
                                  if (*(v14 + 556))
                                  {
                                    v144 = v137 * *(v14 + 564) + v137 * v143 * v137 + *(v14 + 568);
                                  }

                                  else
                                  {
                                    v144 = *(v14 + 564) + v143 * v137;
                                  }

                                  v619 = v144;
                                  v145 = v133;
                                  v146 = *(v14 + 576);
                                  if (*(v14 + 572))
                                  {
                                    v147 = v137 * *(v14 + 580) + v137 * v146 * v137 + *(v14 + 584);
                                  }

                                  else
                                  {
                                    v147 = *(v14 + 580) + v146 * v137;
                                  }

                                  v623 = v880[11];
                                  v608 = *&v882[3].__opaque[8];
                                  v612 = *&v882[3].__opaque[16];
                                  v606 = *&v882[3].__opaque[24];
                                  v148 = *(v14 + 592);
                                  v149 = *(v14 + 16) / 100.0 * 32768.0 / v145;
                                  if (*(v14 + 588))
                                  {
                                    v150 = v137 * *(v14 + 596) + v137 * v148 * v137 + *(v14 + 600);
                                  }

                                  else
                                  {
                                    v150 = *(v14 + 596) + v148 * v137;
                                  }

                                  v151.i32[0] = *(v14 + 340);
                                  v151.i32[1] = *(v14 + 352);
                                  v597 = v151;
                                  v151.i32[0] = *(v14 + 364);
                                  v151.i32[1] = *(v14 + 344);
                                  v595 = v151;
                                  v151.i32[0] = *(v14 + 356);
                                  v151.i32[1] = *(v14 + 368);
                                  v593 = v151;
                                  v151.i32[0] = *(v14 + 348);
                                  v151.i32[1] = *(v14 + 360);
                                  v591 = v151;
                                  v571 = *(v14 + 372);
                                  v589 = v880[9];
                                  v577 = *(v14 + 624);
                                  v578 = *(v14 + 628);
                                  v579 = *(v14 + 632);
                                  v152 = v149;
                                  v583 = *&v882[3].__opaque[32];
                                  v585 = *&v882[3].__opaque[48];
                                  v575 = *&v882[4].__opaque[16];
                                  v574 = *&v882[4].__opaque[24];
                                  v572 = v880[10];
                                  v573 = *&v882[4].__opaque[32];
                                  v153 = *(v14 + 608);
                                  if (*(v14 + 604))
                                  {
                                    v154 = v137 * *(v14 + 612) + v137 * v153 * v137 + *(v14 + 616);
                                  }

                                  else
                                  {
                                    v154 = *(v14 + 612) + v153 * v137;
                                  }

                                  LODWORD(v885) = 0;
                                  v884 = 0;
                                  v883 = 0;
                                  sub_233827924(v14, v608, v583, &v885, &v884, v152, v140, v142, v599.f32[0], v627.f32[0]);
                                  sub_233827924(v14, v612, v136, &v884 + 4, &v883, v152, v140, v142, v599.f32[1], v627.f32[1]);
                                  sub_233827924(v14, v606, v585, 0, 0, v152, v140, v142, v601, v603);
                                  v155 = v137 * *(v14 + 552);
                                  v156 = *(v623 + 2 * llround(v155));
                                  *&v155 = v152;
                                  v157 = sub_233827CA4(v156, v575, v155, v619, v147, v150, v154, v577, v627.f32[0]);
                                  *&v157 = v152;
                                  v158 = sub_233827CA4(v156, v574, v157, v619, v147, v150, v154, v578, v627.f32[1]);
                                  *&v158 = v152;
                                  sub_233827CA4(v156, v573, v158, v619, v147, v150, v154, v579, v603);
                                  if (v587)
                                  {
                                    v159 = llround(*(v14 + 296) * 4096.0);
                                    if (v587 - v136 > 0x1F)
                                    {
                                      v162 = vdupq_n_s32(v159);
                                      v163 = (v136 + 16);
                                      v164 = v587 + 1;
                                      v165 = 0x10000;
                                      v166.i64[0] = 0xFFFF0000FFFFLL;
                                      v166.i64[1] = 0xFFFF0000FFFFLL;
                                      do
                                      {
                                        v167 = *v163[-2].i8;
                                        v168.i64[0] = 0x80000000800;
                                        v168.i64[1] = 0x80000000800;
                                        v169 = vmlaq_s32(v168, v162, vmovl_high_u16(v167));
                                        v170.i64[0] = 0x80000000800;
                                        v170.i64[1] = 0x80000000800;
                                        v171 = vmlaq_s32(v170, v162, vmovl_u16(*v167.i8));
                                        v167.i64[0] = 0x80000000800;
                                        v167.i64[1] = 0x80000000800;
                                        v172.i64[0] = 0x80000000800;
                                        v172.i64[1] = 0x80000000800;
                                        v173 = vuzp1q_s16(vminq_s32(vshrq_n_s32(vmlaq_s32(v172, v162, vmovl_u16(*v163)), 0xCuLL), v166), vminq_s32(vshrq_n_s32(vmlaq_s32(v167, v162, vmovl_high_u16(*v163->i8)), 0xCuLL), v166));
                                        v164[-1] = vuzp1q_s16(vminq_s32(vshrq_n_s32(v171, 0xCuLL), v166), vminq_s32(vshrq_n_s32(v169, 0xCuLL), v166));
                                        *v164 = v173;
                                        v163 += 4;
                                        v164 += 2;
                                        v165 -= 16;
                                      }

                                      while (v165);
                                    }

                                    else
                                    {
                                      for (k = 0; k != 0x10000; ++k)
                                      {
                                        v161 = (*(v136 + k * 2) * v159 + 2048) >> 12;
                                        if (v161 >= 0xFFFF)
                                        {
                                          LOWORD(v161) = -1;
                                        }

                                        v587->i16[k] = v161;
                                      }
                                    }
                                  }

                                  v620 = *(v14 + 4);
                                  if (*(v14 + 8) == 1)
                                  {
                                    if (v620 - 5 > 3)
                                    {
                                      v174 = &byte_280C04D68;
                                    }

                                    else
                                    {
                                      v174 = off_2789EF240[v620 - 5];
                                    }

                                    v181 = llroundf(v614 + (v152 * *(v14 + 12)));
                                    v182 = llroundf(v614);
                                    if (v182 == v181)
                                    {
                                      v182 = v181 - 1;
                                    }

                                    v183 = llroundf(v614 + v152);
                                    if (*(v14 + 9))
                                    {
                                      v184 = v183;
                                    }

                                    else
                                    {
                                      v184 = 0;
                                    }

                                    v185 = 7u >> *v174;
                                    v186 = llroundf(v152);
                                    v187 = llround(65536.0 / (v181 - v182));
                                    v655 = sub_233827E0C;
                                    v658 = (8 * v181) | 4;
                                    v659 = v182;
                                    if (v185)
                                    {
                                      v188 = 4;
                                    }

                                    else
                                    {
                                      v188 = 5;
                                    }

                                    v660 = v184;
                                    v661 = v187;
                                    v662 = 2 * v186;
                                    v663 = v188;
                                    v615 = 1;
                                  }

                                  else
                                  {
                                    v615 = 0;
                                  }

                                  if (v620 == 8 || v620 == 6)
                                  {
                                    v189 = 0;
                                    v190 = 0;
                                    v191 = *(v633 + 40);
                                    v192 = v882;
                                    v193 = vcvt_s32_f32(vrnda_f32(v627));
                                    v194 = v193;
                                    v195 = &v889;
                                    vst2_f32(v195->f32, *v193.i8);
                                    ++v195;
                                    DWORD1(v890) = llroundf(v603);
                                    v569 = DWORD1(v890);
                                    v195->i32[0] = DWORD1(v890);
                                    v196 = vdupq_n_s64(0x40C0000000000000uLL);
                                    v197 = vmovn_s64(vcvtq_s64_f64(vrndaq_f64(vmulq_f64(vcvtq_f64_f32(v599), v196))));
                                    *&v895 = __PAIR64__(llround(v577 * 16.0 * 8192.0), v197.u32[0]);
                                    v570 = v197;
                                    *(&v895 + 1) = __PAIR64__(llround(v578 * 16.0 * 8192.0), v197.u32[1]);
                                    v198.f64[0] = v601;
                                    v198.f64[1] = v579 * 16.0;
                                    *&v196.f64[0] = vmovn_s64(vcvtq_s64_f64(vrndaq_f64(vmulq_f64(v198, v196))));
                                    v580 = LODWORD(v196.f64[0]);
                                    *&v896 = v196.f64[0];
                                    opaque = v192[1].__opaque;
                                    do
                                    {
                                      if (!v667[v189])
                                      {
                                        v200 = *&opaque[8 * v190];
                                        v201 = *(&v895 + v189);
                                        v667[v189] = v200;
                                        v202 = v889.u32[v189 >> 1];
                                        v203 = v202;
                                        v204 = v189 + 1;
                                        if (v189 != 5)
                                        {
                                          if (v889.i32[v204 >> 1] == v202 && *(&v895 + v204) == v201)
                                          {
                                            v667[v204] = v200;
                                          }

                                          v205 = v189 + 2;
                                          if (v189 != 4)
                                          {
                                            if (v889.i32[v205 >> 1] == v202 && *(&v895 + v205) == v201)
                                            {
                                              v667[v205] = v200;
                                            }

                                            v206 = v189 + 3;
                                            if (v189 != 3)
                                            {
                                              if (v889.i32[v206 >> 1] == v202 && *(&v895 + v206) == v201)
                                              {
                                                v667[v206] = v200;
                                              }

                                              v207 = v189 + 4;
                                              if (v189 != 2)
                                              {
                                                if (v889.i32[v207 >> 1] == v202 && *(&v895 + v207) == v201)
                                                {
                                                  v667[v207] = v200;
                                                }

                                                v208 = v189 + 5;
                                                if (v189 != 1 && v889.i32[v208 >> 1] == v202 && *(&v895 + v208) == v201)
                                                {
                                                  v667[v208] = v200;
                                                }
                                              }
                                            }
                                          }
                                        }

                                        ++v190;
                                        if (v202 <= 0 || (bzero(v200, 2 * v202), !WORD1(v202)))
                                        {
                                          v209 = v202 << 32;
                                          v210 = 4096;
                                          v211 = 131070 - 2 * v202;
                                          while (v210 >> 13 < 0x8000)
                                          {
                                            v200[v203] = v210 >> 13;
                                            v210 += v201;
                                            ++v203;
                                            v211 -= 2;
                                            v209 += 0x100000000;
                                            if (v203 == 0x10000)
                                            {
                                              goto LABEL_343;
                                            }
                                          }

                                          if (v203 < 0x10000)
                                          {
                                            memset_pattern16(v200 + (v209 >> 31), &unk_2339092C0, (v211 & 0x1FFFFFFFELL) + 2);
                                          }
                                        }
                                      }

LABEL_343:
                                      ++v189;
                                    }

                                    while (v189 != 6);
                                    v615 |= 2u;
                                    v664 = sub_233828460;
                                    v667[6] = v193;
                                    v668 = v569;
                                    v669 = v570;
                                    v212 = *(v633 + 404);
                                    v670 = v580;
                                    v671 = vcvtas_u32_f32(v191 * v212);
                                    v672 = vcvtad_u64_f64(33554432.0 / (llroundf(v212) - v671));
                                  }

                                  if (v620 == 6 || v620 == 8)
                                  {
LABEL_399:
                                    if (v620 <= 7 && ((1 << v620) & 0xB0) != 0 && *(v633 + 44) == 1)
                                    {
                                      v239 = (v599.f32[0] * (*(v633 + 404) - *(v633 + 388)));
                                      v240 = (v601 * (*(v633 + 412) - *(v633 + 396)));
                                      v241 = (*(v633 + 48) * (v599.f32[1] * (*(v633 + 408) - *(v633 + 392))));
                                      if (v241 >= v239)
                                      {
                                        v241 = (v599.f32[0] * (*(v633 + 404) - *(v633 + 388)));
                                      }

                                      if (v241 >= v240)
                                      {
                                        v242 = (v601 * (*(v633 + 412) - *(v633 + 396)));
                                      }

                                      else
                                      {
                                        v242 = v241;
                                      }

                                      v243 = 819 * v240 + 1023;
                                      if (819 * v240 >= 0)
                                      {
                                        v243 = 819 * v240;
                                      }

                                      v244 = sub_2338291D4;
                                      if (v653 == 4)
                                      {
                                        v244 = sub_233828A40;
                                      }

                                      v676[16] = v244;
                                      v679 = 819 * v239 / 1024;
                                      v680 = 819 * v242 / 1024;
                                      v681 = v243 >> 10;
                                      v682 = v239;
                                      v615 |= 8u;
                                      v683 = v242;
                                      v684 = v240;
                                    }

                                    if (*(v633 + 52) == 1)
                                    {
                                      v615 |= 0x10u;
                                      v688 = v623;
                                      if ((v652 - 4) > 4)
                                      {
                                        v245 = 0;
                                      }

                                      else
                                      {
                                        v245 = off_2789EF2A0[v652 - 4];
                                      }

                                      v689 = v245;
                                      v690 = v583;
                                      v691 = v576;
                                      v692 = v585;
                                      v693 = v575;
                                      v694 = v574;
                                      v695 = v573;
                                      v685 = sub_233829CB8;
                                    }

                                    v246 = *(v633 + 72);
                                    v247 = *(v633 + 100);
                                    if (v246 & 1) != 0 || (v247)
                                    {
                                      v615 |= 0x20u;
                                      v696 = sub_23382A878;
                                      v699 = v246;
                                      v700 = *(v633 + 76);
                                      v701 = v247;
                                      v702 = *(v633 + 104);
                                      v248 = *(v633 + 92);
                                      *&v249 = v248;
                                      *(&v249 + 1) = SHIDWORD(v248);
                                      v703 = v249;
                                    }

                                    v704 = sub_23382B014;
                                    v707 = 0x15500000AACLL;
                                    v708 = 848;
                                    v709 = v623;
                                    v250 = *(v633 + 140);
                                    if (v250)
                                    {
                                      v251 = llround(*(v633 + 156) * 4096.0);
                                      v252 = llround(*(v633 + 148) * 65535.0);
                                      v710 = sub_23382C074;
                                      v713 = v251;
                                      if (v252 >= 0x7FFF)
                                      {
                                        v253 = 0x7FFF;
                                      }

                                      else
                                      {
                                        v253 = v252;
                                      }

                                      v714 = v253;
                                      v715 = v623;
                                      v254 = v615 | 0xC0;
                                      v716 = v608;
                                      v717 = v606;
                                    }

                                    else
                                    {
                                      v254 = v615 | 0x40;
                                    }

                                    v255 = v653 - 5;
                                    if ((v653 - 5) > 3)
                                    {
                                      v256 = &byte_280C04D68;
                                    }

                                    else
                                    {
                                      v256 = off_2789EF260[v255];
                                    }

                                    if (v653 == 4)
                                    {
                                      v257 = 3;
                                    }

                                    else
                                    {
                                      v257 = -3;
                                    }

                                    v258 = llround(*(v633 + 200) * 65536.0);
                                    v259 = 2;
                                    if (v256[10] == 6)
                                    {
                                      v259 = 3;
                                    }

                                    v260 = 2 * (v256[v259 + 8] != 0);
                                    v261 = sub_23382C898;
                                    if (v653 == 6)
                                    {
                                      v261 = sub_23382C3BC;
                                    }

                                    v718 = v261;
                                    v721 = v258;
                                    v722 = v257;
                                    v723 = v260;
                                    v724 = v259;
                                    v262 = *(v633 + 208);
                                    if ((v652 - 5) >= 4)
                                    {
                                      v263 = 0;
                                      if (v652 == 4)
                                      {
                                        v264 = &byte_280C04D68;
                                        v265 = 1;
                                        v266 = 1;
                                        goto LABEL_447;
                                      }
                                    }

                                    else
                                    {
                                      v263 = 1;
                                    }

                                    if ((v652 - 7) >= 2)
                                    {
                                      if (v652 == 6)
                                      {
                                        v265 = 0;
                                        v264 = &byte_280C04D88;
                                        goto LABEL_446;
                                      }

                                      if (v652 != 5)
                                      {
                                        v265 = 0;
                                        v264 = 0;
                                        goto LABEL_446;
                                      }
                                    }

                                    v265 = 0;
                                    v264 = &byte_280C04D78;
LABEL_446:
                                    v266 = v263;
LABEL_447:
                                    v267 = llround(*(v633 + 204) * 65536.0);
                                    v725 = sub_23382CDE0;
                                    v728 = v262;
                                    v729 = v608;
                                    v730 = v612;
                                    v731 = v606;
                                    v732 = v623;
                                    v733 = v264;
                                    v734 = v266;
                                    v735 = v263;
                                    v736 = v265;
                                    v737 = v267;
                                    v268 = llround(*(v633 + 112) * 65535.0);
                                    v269 = 6 * v268 * v268;
                                    if (v269 >= 0x1000)
                                    {
                                      v272 = -1;
                                      for (m = v269; m > 0xFFF; m >>= 1)
                                      {
                                        ++v272;
                                      }

                                      v271 = 1 << v272;
                                      v270 = v272 + 1;
                                    }

                                    else
                                    {
                                      v270 = 0;
                                      v271 = 0;
                                    }

                                    v274 = *(v589 + 4 * ((v271 + v269) >> v270));
                                    v275 = llround(*(v633 + 116) * 4096.0);
                                    v738 = sub_233830F88;
                                    v741 = v589;
                                    v742 = v612;
                                    v743 = v623;
                                    v744 = v270;
                                    v745 = v271;
                                    v746 = (v274 + 1024) >> 11;
                                    v747 = v269;
                                    v748 = v275;
                                    if (v250)
                                    {
                                      v276 = *(v633 + 156);
                                      v277 = *(v633 + 144);
                                      v759 = xmmword_2339091C0;
                                      v760 = xmmword_2339091D0;
                                      v761 = xmmword_2339091E0;
                                      v762 = xmmword_2339091F0;
                                      v763 = xmmword_233909200;
                                      v764 = xmmword_233909210;
                                      v765 = 1365;
                                      v278 = v254 | 0xF00;
                                      v749 = sub_233831304;
                                      v752 = llround(v276 * 4096.0);
                                      v753 = 1311;
                                      v754 = v277;
                                      v755 = v583;
                                      v756 = v576;
                                      v757 = v585;
                                      v758 = v623;
                                    }

                                    else
                                    {
                                      v278 = v254 | 0x700;
                                    }

                                    if (*(v633 + 160) == 1)
                                    {
                                      v279 = *(v633 + 161);
                                      v280 = *(v633 + 162);
                                      v281 = *(v633 + 163);
                                      v282 = *(v633 + 184);
                                      v283 = *(v608 + 131070) * *(v608 + 131070) + *(v612 + 131070) * *(v612 + 131070) + *(v606 + 131070) * *(v606 + 131070);
                                      if (v283 <= 1)
                                      {
                                        v284 = 1;
                                      }

                                      else
                                      {
                                        v284 = *(v608 + 131070) * *(v608 + 131070) + *(v612 + 131070) * *(v612 + 131070) + *(v606 + 131070) * *(v606 + 131070);
                                      }

                                      v285 = *(v633 + 172) * *(v633 + 172);
                                      v286 = llroundf(v285 * 1024.0);
                                      v287 = 10;
                                      if (v283)
                                      {
                                        v288 = 0xFFFFFFFF / v284;
                                        if (v288 < v286)
                                        {
                                          v289 = 1024.0;
                                          do
                                          {
                                            v289 = v289 * 0.5;
                                            --v287;
                                            v286 = llroundf(v285 * v289);
                                          }

                                          while (v288 < v286);
                                        }
                                      }

                                      v278 |= 0x1000u;
                                      v290 = llround(*(v633 + 176) * 65536.0);
                                      v291 = llround(*(v633 + 180) * 65536.0);
                                      v292 = v290 * v290;
                                      v293 = (v291 * v291 - v290 * v290 + 64) >> 7;
                                      v294 = vcvtms_s32_f32(*(v633 + 164));
                                      v295 = vcvtms_s32_f32(*(v633 + 168));
                                      if (v295 <= v294)
                                      {
                                        v296 = v294;
                                      }

                                      else
                                      {
                                        v296 = v295;
                                      }

                                      v297 = v880[12];
                                      if (v653 == 4)
                                      {
                                        v298 = 80;
                                      }

                                      else
                                      {
                                        v298 = 5;
                                      }

                                      v766 = sub_233831CE8;
                                      v769 = v623;
                                      v770 = v608;
                                      v771 = v612;
                                      v772 = v606;
                                      v773 = v286;
                                      v774 = v287;
                                      v775 = v292;
                                      v776 = v293;
                                      v777 = v294;
                                      v778 = v296;
                                      v781 = v297;
                                      v299 = v282 * 65536.0;
                                      if (!v281)
                                      {
                                        v299 = 4294967300.0;
                                      }

                                      v779 = v279;
                                      v782 = llround(v299);
                                      v783 = v298;
                                      v784 = sub_233831DC4;
                                      if (v280)
                                      {
                                        v780 = v279;
                                        v779 = 0;
                                        v784 = sub_2338336B4;
                                        v300 = sub_233831DC4;
                                      }

                                      else
                                      {
                                        v300 = 0;
                                      }

                                      v785 = v300;
                                    }

                                    if (*(v633 + 240))
                                    {
                                      v301 = *(v633 + 228) | 0xA;
                                    }

                                    else
                                    {
                                      v301 = *(v633 + 228);
                                    }

                                    if (*(v633 + 212))
                                    {
                                      v301 |= 4u;
                                    }

                                    if ((v653 - 7) < 2)
                                    {
                                      goto LABEL_483;
                                    }

                                    if (v653 == 6)
                                    {
                                      v305.i32[0] = *(v633 + 216);
                                      v305.i32[1] = *(v633 + 232);
                                      v303 = vmovn_s64(vcvtq_s64_f64(vrndaq_f64(vmulq_f64(vcvtq_f64_f32(v305), xmmword_233909220))));
                                      v302 = llround(*(v633 + 244) * 65536.0);
                                      v301 |= 0x10u;
                                      v304 = &byte_280C04D88;
                                    }

                                    else
                                    {
                                      if (v653 == 5)
                                      {
LABEL_483:
                                        v302 = 0;
                                        v303 = 0;
                                        v304 = &byte_280C04D78;
                                        goto LABEL_486;
                                      }

                                      v302 = 0;
                                      v303 = 0;
                                      v304 = &byte_280C04D68;
                                    }

LABEL_486:
                                    if (*(v633 + 212))
                                    {
                                      v306 = 2;
                                    }

                                    else
                                    {
                                      v306 = 255;
                                    }

                                    if (*v304 == 6)
                                    {
                                      v307 = 5;
                                    }

                                    else
                                    {
                                      v307 = 4;
                                    }

                                    v308 = sub_2338349A8;
                                    if (v653 == 6)
                                    {
                                      v308 = sub_2338343FC;
                                    }

                                    v786 = v308;
                                    v790 = v301;
                                    v789 = v307;
                                    v791 = v306;
                                    v792 = v303;
                                    v793 = v302;
                                    if (v620 == 6)
                                    {
                                      if (*(v633 + 253) == 1)
                                      {
                                        v309 = llround(*(v633 + 256) * 1024.0);
                                        v794 = sub_233834E1C;
                                        v310 = v278 | 0x6000;
                                        v797 = v309;
                                        v798 = v623;
                                      }

                                      else
                                      {
                                        v310 = v278 | 0x2000;
                                      }
                                    }

                                    else
                                    {
                                      v310 = v278 | 0xA000;
                                      if (v255 > 3)
                                      {
                                        v311 = &byte_280C04D68;
                                      }

                                      else
                                      {
                                        v311 = off_2789EF280[v255];
                                      }

                                      v799 = sub_233835098;
                                      v802 = v623;
                                      v803 = *v311 != 6;
                                      if (v620 != 8)
                                      {
LABEL_503:
                                        if (*(v633 + 64) == 1)
                                        {
                                          v313 = 0;
                                          v314 = *&v882[4].__opaque[48];
                                          v315 = vdupq_n_s32(llround(*(v633 + 68) * 65536.0));
                                          v316.i64[0] = 0x1900000019;
                                          v316.i64[1] = 0x1900000019;
                                          v317 = v576;
                                          do
                                          {
                                            v318 = *v317++;
                                            v319.i64[0] = 0x800000008000;
                                            v319.i64[1] = 0x800000008000;
                                            v320.i64[0] = 0x800000008000;
                                            v320.i64[1] = 0x800000008000;
                                            v321 = vshrq_n_s32(vmlaq_s32(v320, v315, vmovl_u16(*v318.i8)), 0x10uLL);
                                            v322 = vshrq_n_s32(vmlaq_s32(v319, v315, vmovl_high_u16(v318)), 0x10uLL);
                                            v319.i64[0] = 0x1000000010;
                                            v319.i64[1] = 0x1000000010;
                                            v323 = vmlaq_s32(v319, vmulq_s32(v322, v322), v316);
                                            v322.i64[0] = 0x1000000010;
                                            v322.i64[1] = 0x1000000010;
                                            v324 = (v314 + v313);
                                            *v324 = vshrq_n_s32(vmlaq_s32(v322, vmulq_s32(v321, v321), v316), 5uLL);
                                            v324[1] = vshrq_n_s32(v323, 5uLL);
                                            v313 += 32;
                                          }

                                          while (v313 != 0x40000);
                                          v325 = 0;
                                          v808 = sub_233835F40;
                                          v811 = v623;
                                          v812 = v314;
                                          v326 = v813;
                                          v327 = -48;
                                          do
                                          {
                                            v328 = v325++ | 0x4000;
                                            *(v326 - 1) = v328 / (v327 + 49);
                                            *v326 = (v325 | 0x4000u) / (v327 + 50);
                                            v326 += 2;
                                            v327 += 2;
                                          }

                                          while (v327);
                                          v813[47] = 334;
                                          v310 |= 0x20000u;
                                          if (*&v610[3].__opaque[40] == *&v610[4].__opaque[48] + 0x20000)
                                          {
                                            *&v610[3].__opaque[40] = 0;
                                          }
                                        }

                                        if (*(v633 + 272) != 1)
                                        {
                                          goto LABEL_561;
                                        }

                                        v814 = sub_233837428;
                                        v817 = v623;
                                        v818 = v587;
                                        v329 = *(v633 + 280) + *(v633 + 280);
                                        v330 = 0.0;
                                        if (v329 < 0.0)
                                        {
                                          v329 = 0.0;
                                        }

                                        v331 = v329 * 65536.0;
                                        v332 = roundf(v329 * 65536.0);
                                        if (v332 <= 65535.0)
                                        {
                                          v334 = 16;
                                        }

                                        else
                                        {
                                          v333 = 16;
                                          do
                                          {
                                            v331 = v331 * 0.5;
                                            v334 = v333 - 1;
                                            v332 = roundf(v331);
                                          }

                                          while (v332 > 65535.0 && v333-- > 1);
                                        }

                                        if (*(v633 + 288) >= 0.0)
                                        {
                                          v330 = *(v633 + 288);
                                        }

                                        v336 = v330 * 65536.0;
                                        v337 = roundf(v336);
                                        if (v337 <= 65535.0)
                                        {
                                          v339 = 16;
                                        }

                                        else
                                        {
                                          v338 = 16;
                                          do
                                          {
                                            v336 = v336 * 0.5;
                                            v339 = v338 - 1;
                                            v337 = roundf(v336);
                                          }

                                          while (v337 > 65535.0 && v338-- > 1);
                                        }

                                        v310 |= 0x40000u;
                                        v341 = v332;
                                        v819 = v337;
                                        v820 = v339;
                                        v342 = *(v633 + 292);
                                        v821 = v342 <= 0.0;
                                        sub_233837588(&v889, *(v633 + 276));
                                        v629 = vdupq_n_s64(0x40F0000000000000uLL);
                                        v343 = vmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vrndaq_f64(vmulq_f64(vcvtq_f64_f32(*v889.f32), v629))), vcvtq_s64_f64(vrndaq_f64(vmulq_f64(vcvt_hight_f64_f32(v889), v629)))));
                                        v828 = vext_s8(vzip1_s16(v343, v343), v343, 6uLL);
                                        v834 = v343.i16[1];
                                        v832 = v343.i16[3];
                                        v829 = HIWORD(v343.u32[1]);
                                        v833 = v343.i32[1];
                                        v826 = HIWORD(v343.u32[1]);
                                        v827 = v343.i32[1];
                                        v823 = v343;
                                        v831 = llround(*&v890 * 65536.0);
                                        v830 = v831;
                                        v825 = v831;
                                        v824 = v831;
                                        if (v342 > 0.0)
                                        {
                                          sub_233837588(&v889, v342);
                                          v344 = vmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vrndaq_f64(vmulq_f64(vcvtq_f64_f32(*v889.f32), v629))), vcvtq_s64_f64(vrndaq_f64(vmulq_f64(vcvt_hight_f64_f32(v889), v629)))));
                                          v846 = v344.i16[1];
                                          v844 = v344.i16[3];
                                          v841 = HIWORD(v344.u32[1]);
                                          v845 = v344.i32[1];
                                          v838 = HIWORD(v344.u32[1]);
                                          v839 = v344.i32[1];
                                          v840 = vext_s8(vzip1_s16(v344, v344), v344, 6uLL);
                                          v835 = v344;
                                          v843 = llround(*&v890 * 65536.0);
                                          v842 = v843;
                                          v837 = v843;
                                          v836 = v843;
                                        }

                                        v345 = 0;
                                        v346 = 0;
                                        v347 = llroundf(*(v633 + 284));
                                        v348 = *v882[3].__opaque;
                                        v822 = v348;
                                        v349 = v347 * 0.75;
                                        v350 = vcvtmd_s64_f64(v349);
                                        v351 = v347 - v349;
                                        v352 = (sqrt(v351 * v351 + (65535.0 - v349) * (65535.0 - v349)) - v351 + 0.5);
                                        v353 = v348 + 14;
                                        while (1)
                                        {
                                          v354 = v345 >> v334;
                                          if (v345 >> v334 >= 0xFFFF)
                                          {
                                            v354 = 0xFFFF;
                                          }

                                          *(v353 - 14) = v354;
                                          if (v354 >= v350)
                                          {
                                            break;
                                          }

                                          ++v346;
                                          v353 += 2;
                                          v345 += v341;
                                          if (v346 == 0x10000)
                                          {
                                            goto LABEL_560;
                                          }
                                        }

                                        if (v346 > 0x10000)
                                        {
                                          goto LABEL_560;
                                        }

                                        v355 = 0;
                                        v356 = v345 - v341;
                                        v357 = 65537 - v346;
                                        while (1)
                                        {
                                          v358 = v356 >> v334;
                                          if (v356 >> v334 >= 0xFFFF)
                                          {
                                            v358 = 0xFFFF;
                                          }

                                          v359 = v358 - (sqrt(v351 * v351 + (v358 - v349) * (v358 - v349)) - v351 + 0.5);
                                          if ((v359 ^ v352) == -1)
                                          {
                                            break;
                                          }

                                          *(v348 + 2 * v346 - 2) = v359;
                                          --v357;
                                          v355 -= 2;
                                          ++v346;
                                          v356 += v341;
                                          if (v346 == 65537)
                                          {
                                            goto LABEL_560;
                                          }
                                        }

                                        v360 = v346 - 1;
                                        if ((v346 - 1) >= 0x10000)
                                        {
LABEL_560:
                                          v847 = sub_2338378C0;
                                          v848 = sub_233838008;
                                          v849 = sub_233838858;
                                          v850 = sub_233838D28;
                                          v851 = sub_2338390E4;
LABEL_561:
                                          if (v883 <= 0)
                                          {
                                            sub_2338FCBE8();
                                          }

                                          v369 = vdupq_n_s64(0x40EFFFE000000000uLL);
                                          v370 = vmulq_f64(vcvtq_f64_f32(v593), v369);
                                          v852 = sub_2338398B0;
                                          v854 = v883;
                                          v855 = 0x10000u / v883;
                                          v856 = v623;
                                          v371 = *(v633 + 420);
                                          v372.i32[0] = *(v633 + 312);
                                          v373 = *(v633 + 324);
                                          v374 = v650;
                                          v375 = v650[20].u8[0];
                                          v376 = vshr_n_s32(vmovn_s64(vcvtq_s64_f64(vrndaq_f64(vmulq_f64(vcvtq_f64_f32(v597), v369)))), 4uLL);
                                          v860 = v376;
                                          v377 = vmovn_s64(vcvtq_s64_f64(vrndaq_f64(vmulq_f64(vcvtq_f64_f32(v591), v369))));
                                          v378 = vshr_n_s32(vmovn_s64(vcvtq_s64_f64(vrndaq_f64(vmulq_f64(vcvtq_f64_f32(v595), v369)))), 4uLL);
                                          v861 = v378;
                                          v379 = vshr_n_s32(vmovn_s64(vcvtq_s64_f64(vrndaq_f64(v370))), 4uLL);
                                          v862 = v379;
                                          v380 = vshr_n_s32(v377, 4uLL);
                                          v863 = v380;
                                          v864 = llround(v571 * 65535.0) >> 4;
                                          v865 = v582;
                                          v866 = v581;
                                          if (v375 == 1)
                                          {
                                            v381 = (v885 * v885 + 0x8000) >> 16;
                                            v382 = (HIDWORD(v884) * HIDWORD(v884) + 0x8000) >> 16;
                                            v383 = (v884 * v884 + 0x8000) >> 16;
                                            v384 = (v883 * v883 + 0x8000) >> 16;
                                            v385 = *(v572 + (v383 - v381));
                                            v386 = *(v589 + 4 * (v383 - v381)) >> v385;
                                            v387 = *(v572 + (v384 - v382));
                                            v388 = *(v589 + 4 * (v384 - v382)) >> v387;
                                            v372.i32[1] = v373;
                                            v870 = v623;
                                            v871 = v386;
                                            v872 = 16 - v385;
                                            v873 = v381;
                                            v874 = v383;
                                            v875 = v388;
                                            v876 = 16 - v387;
                                            v877 = v382;
                                            v878 = v384;
                                            v879 = vmovn_s64(vcvtq_s64_f64(vrndaq_f64(vmulq_f64(vcvtq_f64_f32(v372), vdupq_n_s64(0x40B0000000000000uLL)))));
                                          }

                                          v868 = v589;
                                          v869 = v572;
                                          v389 = vorr_s8(vdup_lane_s32(vorr_s8(vorr_s8(v376, v378), vorr_s8(v379, v380)), 1), vorr_s8(v378, v380)).u32[0] | v582.i32[1] | v582.i32[0] | v581;
                                          v390 = v389 == 0;
                                          if (v389)
                                          {
                                            v391 = sub_23383DD6C;
                                          }

                                          else
                                          {
                                            v391 = sub_23383CE18;
                                          }

                                          v392 = sub_23383EFD8;
                                          if (v390)
                                          {
                                            v392 = sub_23383ECFC;
                                          }

                                          if (v375)
                                          {
                                            v392 = v391;
                                          }

                                          v857 = v392;
                                          sig = v882[1].__sig;
                                          if (*(sig + 131070))
                                          {
LABEL_572:
                                            v867 = sig;
                                            v654 = v310 | 0x180000;
                                            if (v637)
                                            {
                                              v657 = vdupq_lane_s64(v641.i64[0], 0);
                                              v656 = vdupq_laneq_s64(v641, 1);
                                              v665 = v656;
                                              v666 = v657;
                                              v674 = v656;
                                              v675 = v657;
                                              v677 = v656;
                                              v678 = v657;
                                              v686 = v656;
                                              v687 = v657;
                                              v697 = v656;
                                              v698 = v657;
                                              v705 = v656;
                                              v706 = v657;
                                              v711 = v656;
                                              v712 = v657;
                                              v719 = v656;
                                              v720 = v657;
                                              v726 = v656;
                                              v727 = v657;
                                              v739 = v656;
                                              v740 = v657;
                                              v750 = v656;
                                              v751 = v657;
                                              v767 = v656;
                                              v768 = v657;
                                              v787 = v656;
                                              v788 = v657;
                                              v795 = v656;
                                              v796 = v657;
                                              v800 = v656;
                                              v801 = v657;
                                              v805 = v656;
                                              v806 = v657;
                                              v809 = v656;
                                              v810 = v657;
                                              v815 = v656;
                                              v816 = v657;
                                              *v853 = v656;
                                              *&v853[16] = v657;
                                              v858 = v656;
                                              v859 = v657;
                                              v640 = vdupq_n_s64(0x28uLL);
                                              v639 = v640;
LABEL_805:
                                              v531 = sub_233818C24();
                                              v532 = v531;
                                              v533 = (v631 + 511) >> 9;
                                              v534 = (v622 + 255) >> 8;
                                              v635 = 0;
                                              v636 = 0;
                                              if (v534 * v533 > v531)
                                              {
                                                if (v534 * v533 % v531)
                                                {
                                                  v534 = (v534 + 1) & 0x1FFFFFFFFFFFFFELL;
                                                  if (v534 * v533 % v531)
                                                  {
                                                    v533 = (v533 + 1) & 0xFFFFFFFFFFFFFELL;
                                                  }
                                                }
                                              }

                                              v535 = (v631 / v533 + 63) & 0xFFFFFFFFFFFFFFC0;
                                              v536 = (v622 / v534 + 3) & 0xFFFFFFFFFFFFFFFCLL;
                                              *&v638 = v535;
                                              *(&v638 + 1) = v536;
                                              if (v535)
                                              {
                                                v535 = (v631 + v535 - 1) / v535 - 1;
                                              }

                                              if (v536)
                                              {
                                                v536 = (v622 + v536 - 1) / v536 - 1;
                                              }

                                              v537 = v640.i64[1] + v640.i64[0];
                                              if (v640.i64[1] + v640.i64[0] >= v618)
                                              {
                                                v537 = v618;
                                              }

                                              v538 = v639.i64[1] + v639.i64[0];
                                              if (v639.i64[1] + v639.i64[0] >= v617)
                                              {
                                                v538 = v617;
                                              }

                                              v539 = v617 * v618;
                                              v540 = (v617 + v538 * v536) * (v618 + v537 * v535) - v617 * v618;
                                              v541 = sub_233818B98();
                                              if (v532 == 1 || v541)
                                              {
                                                if (v539 >= 2 * v540)
                                                {
                                                  goto LABEL_823;
                                                }
                                              }

                                              else if (v540 / (v532 - 1) <= v539)
                                              {
LABEL_823:
                                                if ((v654 & 0x20) != 0)
                                                {
                                                  v637 = 1;
                                                }

                                                else if ((v637 & 1) == 0)
                                                {
                                                  goto LABEL_828;
                                                }

                                                v638 = 0uLL;
                                                v657 = vdupq_lane_s64(v641.i64[0], 0);
                                                v656 = vdupq_laneq_s64(v641, 1);
                                                v665 = v656;
                                                v666 = v657;
                                                v674 = v656;
                                                v675 = v657;
                                                v677 = v656;
                                                v678 = v657;
                                                v686 = v656;
                                                v687 = v657;
                                                v697 = v656;
                                                v698 = v657;
                                                v705 = v656;
                                                v706 = v657;
                                                v711 = v656;
                                                v712 = v657;
                                                v719 = v656;
                                                v720 = v657;
                                                v726 = v656;
                                                v727 = v657;
                                                v739 = v656;
                                                v740 = v657;
                                                v750 = v656;
                                                v751 = v657;
                                                v767 = v656;
                                                v768 = v657;
                                                v787 = v656;
                                                v788 = v657;
                                                v795 = v656;
                                                v796 = v657;
                                                v800 = v656;
                                                v801 = v657;
                                                v805 = v656;
                                                v806 = v657;
                                                v809 = v656;
                                                v810 = v657;
                                                v815 = v656;
                                                v816 = v657;
                                                *v853 = v656;
                                                *&v853[16] = v657;
                                                v858 = v656;
                                                v859 = v657;
                                                v640 = vdupq_n_s64(0x28uLL);
                                                v639 = v640;
LABEL_828:
                                                if (v638 == 0)
                                                {
                                                  v542 = 1;
                                                }

                                                else
                                                {
                                                  if (v638)
                                                  {
                                                    v543 = v638;
                                                  }

                                                  else
                                                  {
                                                    v543 = v644;
                                                  }

                                                  v544 = (v644 + v543 - 1) / v543;
                                                  if (DWORD2(v638))
                                                  {
                                                    v545 = DWORD2(v638);
                                                  }

                                                  else
                                                  {
                                                    v545 = v645;
                                                  }

                                                  v542 = (v645 + v545 - 1) / v545 * v544;
                                                }

                                                sub_2338FC70C(sub_233826508, v542, &v635, sub_2338274A8, sub_23382786C);
                                                v546 = v882;
                                                if (v882)
                                                {
                                                  if (v881)
                                                  {
                                                    atomic_fetch_add(v881 + 4, 0xFFFFFFFF);
                                                    v881 = 0;
                                                  }

                                                  pthread_mutex_destroy(v546);
                                                  j__free_3(v546);
                                                }

                                                return 1;
                                              }

                                              v637 = 1;
                                              goto LABEL_823;
                                            }

                                            v394 = 2;
                                            if (v653 == 4)
                                            {
                                              v395 = 2;
                                            }

                                            else
                                            {
                                              v395 = 3;
                                            }

                                            if (v653 == 4)
                                            {
                                              v396 = 3;
                                            }

                                            else
                                            {
                                              v396 = 2;
                                            }

                                            if ((v310 & 0x40000) != 0)
                                            {
                                              v400 = v396 | 8;
                                              v399 = v395 | 8;
                                              v394 = 10;
                                              v398 = 11;
                                              v397 = 12;
                                            }

                                            else
                                            {
                                              v397 = 0;
                                              v398 = 3;
                                              v399 = v395;
                                              v400 = v396;
                                            }

                                            v408 = v400 + 5;
                                            v409 = (v394 + 8) & 0x18;
                                            if ((v310 & 0x20000) == 0)
                                            {
                                              v409 = 0;
                                            }

                                            v634 = v409;
                                            if ((v310 & 0x20000) != 0)
                                            {
                                              v410 = (v398 + 8) & 0x18;
                                            }

                                            else
                                            {
                                              v410 = 0;
                                            }

                                            if ((v310 & 0x20000) != 0)
                                            {
                                              v411 = (v400 & 0xFFFFFFFFFFFFFFFCLL) + 8;
                                            }

                                            else
                                            {
                                              v411 = 0;
                                            }

                                            v624 = v411;
                                            v630 = v410;
                                            if ((v310 & 0x20000) != 0)
                                            {
                                              v412 = (v399 & 0xFFFFFFFFFFFFFFFCLL) + 8;
                                            }

                                            else
                                            {
                                              v412 = 0;
                                            }

                                            v621 = v412;
                                            if ((v310 & 0x20000) != 0)
                                            {
                                              LODWORD(v399) = v399 + 5;
                                              v413 = v398 + 5;
                                            }

                                            else
                                            {
                                              v408 = v400;
                                              v413 = v398;
                                            }

                                            if ((v310 & 0x20000) != 0)
                                            {
                                              v394 |= 5uLL;
                                            }

                                            v414.i64[0] = v394;
                                            v414.i64[1] = v413;
                                            if ((v310 & 0x10000) != 0)
                                            {
                                              v415 = v408 + 2;
                                              v395 = (v399 + 2);
                                              v616 = (v394 + 5) & 0x1C;
                                              v416 = vaddq_s64(v414, vdupq_n_s64(2uLL));
                                              v613 = (v413 + 5) & 0x3C;
                                              v611 = (v399 + 5) & 0xFFFFFFFC;
                                              LODWORD(v399) = v399 + 2;
                                              v396 = v408 + 2;
                                              v408 += 2;
                                              v414 = v416;
                                            }

                                            else
                                            {
                                              v613 = 0;
                                              v616 = 0;
                                              v611 = 0;
                                              v415 = 0;
                                              v416 = xmmword_233903BE0;
                                            }

                                            if ((v310 & 0x8000) != 0)
                                            {
                                              v417 = vaddq_s64(v414, vdupq_n_s64(2uLL));
                                              if (v396 <= v408 + 2)
                                              {
                                                v396 = v408 + 2;
                                              }

                                              if (v395 <= (v399 + 2))
                                              {
                                                v395 = (v399 + 2);
                                              }

                                              v416 = vbslq_s8(vcgtq_u64(v416, v417), v416, v417);
                                              v607 = (v414.i64[1] + 5) & 0xFFFFFFFFFFFFFFFCLL;
                                              v609 = (v414.i64[0] + 5) & 0xFFFFFFFFFFFFFFFCLL;
                                              v602 = (v399 + 5) & 0xFFFFFFFC;
                                              v605 = (v408 + 5) & 0xFFFFFFFFFFFFFFFCLL;
                                              LODWORD(v399) = v395;
                                              v408 = v396;
                                              v414 = v416;
                                            }

                                            else
                                            {
                                              v605 = 0;
                                              v607 = 0;
                                              v609 = 0;
                                              v602 = 0;
                                            }

                                            if ((v310 & 0x4000) != 0)
                                            {
                                              v418 = vaddq_s64(v414, vdupq_n_s64(2uLL));
                                              if (v396 <= v408 + 2)
                                              {
                                                v396 = v408 + 2;
                                              }

                                              if (v395 <= (v399 + 2))
                                              {
                                                v395 = (v399 + 2);
                                              }

                                              v416 = vbslq_s8(vcgtq_u64(v416, v418), v416, v418);
                                              v590 = (v414.i64[1] + 5) & 0xFFFFFFFFFFFFFFFCLL;
                                              v592 = (v414.i64[0] + 5) & 0xFFFFFFFFFFFFFFFCLL;
                                              v586 = (v399 + 5) & 0xFFFFFFFC;
                                              v588 = (v408 + 5) & 0xFFFFFFFFFFFFFFFCLL;
                                              v408 = v396;
                                              LODWORD(v399) = v395;
                                              v414 = v416;
                                            }

                                            else
                                            {
                                              v588 = 0;
                                              v590 = 0;
                                              v592 = 0;
                                              v586 = 0;
                                            }

                                            v419 = vaddq_s64(vshlq_n_s64(v414, 0x20uLL), vdupq_n_s64(0x400000000uLL));
                                            v420 = vshrq_n_u64(v419, 0x20uLL);
                                            v421 = v408 + 4;
                                            v422 = (v399 + 4);
                                            v423 = vbslq_s8(vcgtq_u64(v416, v420), v416, v420);
                                            if (v396 <= v408 + 4)
                                            {
                                              v396 = v408 + 4;
                                            }

                                            if (v395 <= v422)
                                            {
                                              v424 = (v399 + 4);
                                            }

                                            else
                                            {
                                              v424 = v395;
                                            }

                                            if ((v310 & 0x1000) != 0)
                                            {
                                              v429 = vcvtms_s32_f32(v374[20].f32[1]);
                                              v430 = vcvtms_s32_f32(v374[21].f32[0]);
                                              if (v430 > v429)
                                              {
                                                v429 = v430;
                                              }

                                              if (v374[20].i8[2])
                                              {
                                                v431 = 6;
                                              }

                                              else
                                              {
                                                v431 = 2;
                                              }

                                              LODWORD(v426) = v431 + 2 * v429;
                                              v425 = v426;
                                              if (v426 <= 2)
                                              {
                                                v426 = 2;
                                              }

                                              else
                                              {
                                                v426 = v426;
                                              }

                                              v432 = v426 << 32;
                                              v433 = ((v426 << 32) + 0x400000000) >> 32;
                                              if ((v310 & 0x800) == 0)
                                              {
                                                LODWORD(v426) = 0;
                                                v433 = 0;
                                              }

                                              v584 = v433;
                                              v434.i64[0] = ((v432 + 0x300000000) >> 32) & 0xFFFFFFFFFFFFFFFCLL;
                                              v434.i64[1] = (v432 + 0x300000000) >> 32;
                                              v428 = vorrq_s8(v434, xmmword_233909230);
                                            }

                                            else
                                            {
                                              v425 = 0;
                                              LODWORD(v426) = (v310 & 0x800) >> 10;
                                              v427 = 6;
                                              if ((v310 & 0x800) == 0)
                                              {
                                                v427 = 0;
                                              }

                                              v584 = v427;
                                              v428 = xmmword_233909240;
                                            }

                                            v435 = vshlq_n_s64(vbslq_s8(vcgtq_u64(v423, v428), v423, v428), 0x20uLL);
                                            if (v396 <= v428.i64[1])
                                            {
                                              v436 = v428.u64[1];
                                            }

                                            else
                                            {
                                              v436 = v396;
                                            }

                                            if (v424 <= v428.i64[1])
                                            {
                                              v437 = v428.u64[1];
                                            }

                                            else
                                            {
                                              v437 = v424;
                                            }

                                            if ((v310 & 0x1000) != 0)
                                            {
                                              v439 = vdupq_n_s64(v425);
                                              v440 = vbslq_s8(vcgtq_u64(v420, v439), v420, v439);
                                              if (v421 <= v425)
                                              {
                                                LODWORD(v421) = v425;
                                              }

                                              if (v425 <= v422)
                                              {
                                                v438 = v422;
                                              }

                                              else
                                              {
                                                v438 = v425;
                                              }

                                              v419 = vshlq_n_s64(v440, 0x20uLL);
                                            }

                                            else
                                            {
                                              v438 = v422;
                                            }

                                            v441 = vdupq_n_s64(0x300000000uLL);
                                            v442 = vaddq_s64(v419, v441);
                                            v443 = *&vadd_s32(__PAIR64__(v438, v421), 0x100000001) & 0xFFFFFFFEFFFFFFFELL;
                                            v444 = vadd_s32(v443, 0x300000003);
                                            v445.i64[0] = v444.i32[0];
                                            v445.i64[1] = v444.i32[1];
                                            v446 = v445;
                                            v447 = vadd_s32(v443, 0x200000002);
                                            v448 = v444.i32[0];
                                            if (v436 > v444.i32[0])
                                            {
                                              v448 = v436;
                                            }

                                            if (v437 <= v446.i64[1])
                                            {
                                              v437 = v446.u64[1];
                                            }

                                            v449 = vshrq_n_s64(vbslq_s8(vcgtq_u64(v435, v442), v435, v442), 0x20uLL);
                                            v450 = vdupq_n_s64(0x400000000uLL);
                                            v451 = vshrq_n_s64(vaddq_s64(v419, v450), 0x20uLL);
                                            v452 = vshrq_n_s64(vaddq_s64(vshll_n_s32(v447, 0x20uLL), vdupq_n_s64(0x200000000uLL)), 0x20uLL);
                                            v453.i64[0] = v448;
                                            v453.i64[1] = v437;
                                            v454 = vbslq_s8(vcgtq_u64(v453, v452), v453, v452);
                                            v455 = vbslq_s8(vcgtq_u64(v449, v451), v449, v451);
                                            if ((v310 & 0x80) != 0)
                                            {
                                              v457 = v426 + 1;
                                              v458 = vdupq_n_s64(v457);
                                              v454 = vbslq_s8(vcgtq_u64(v454, v458), v454, v458);
                                              v455 = vbslq_s8(vcgtq_u64(v455, v458), v455, v458);
                                              v456 = (v457 + 3) & 0xFFFFFFFFFFFFFFFCLL;
                                            }

                                            else
                                            {
                                              v456 = 0;
                                            }

                                            v459 = vaddq_s64(vshlq_n_s64(v454, 0x20uLL), v441);
                                            v460 = vdupq_n_s64(0xFFFFFFFC00000000);
                                            v461 = vandq_s8(vaddq_s64(vshlq_n_s64(v455, 0x20uLL), v441), v460);
                                            v462 = vaddq_s64(vandq_s8(v459, v460), v450);
                                            v463 = vshrq_n_s64(vaddq_s64(v461, v450), 0x20uLL);
                                            v464 = vshrq_n_s64(v462, 0x20uLL);
                                            v465 = vbslq_s8(vcgtq_u64(v454, v464), v454, v464);
                                            v466 = vbslq_s8(vcgtq_u64(v455, v463), v455, v463);
                                            v467 = v466.i64[1] << 32;
                                            v468 = vshlq_n_s64(v465, 0x20uLL);
                                            v469 = v466.i64[0];
                                            if ((v310 & 0x10) != 0)
                                            {
                                              v467 += 0x400000000;
                                              v468 = vaddq_s64(v468, vdupq_n_s64(0x400000000uLL));
                                              v472.i64[0] = (v466.i64[0] << 32) + 0x400000000;
                                              v472.i64[1] = v467;
                                              v473 = vshrq_n_s64(v472, 0x20uLL).u64[0];
                                              v474 = vdupq_n_s64(3uLL);
                                              v475 = vsraq_n_s64(v474, v472, 0x20uLL);
                                              v476 = vdupq_n_s64(0xFFFFFFFFFFFFFFFCLL);
                                              v470 = vandq_s8(v475, v476);
                                              v471 = vandq_s8(vsraq_n_s64(v474, v468, 0x20uLL), v476);
                                              v469 = v473;
                                            }

                                            else
                                            {
                                              v470 = 0uLL;
                                              v471 = 0uLL;
                                            }

                                            v477 = v469 << 32;
                                            if ((v310 & 8) != 0)
                                            {
                                              v468 = vaddq_s64(v468, vdupq_n_s64(0x200000000uLL));
                                              v600 = v468.i64[1] >> 32;
                                              v598 = v468.i64[0] >> 32;
                                              v467 += 0x200000000;
                                              v596 = v467 >> 32;
                                              v477 += 0x200000000;
                                              v594 = v477 >> 32;
                                              v479 = 4;
                                              v478 = 7;
                                            }

                                            else
                                            {
                                              v594 = 0;
                                              v596 = 0;
                                              v598 = 0;
                                              v600 = 0;
                                              v478 = 3;
                                              v479 = 3;
                                            }

                                            v480 = ((v477 >> 32) + 3) & 0xFFFFFFFFFFFFFFFCLL;
                                            if ((v310 & 4) != 0)
                                            {
                                              v481 = ((v467 >> 32) + 3) & 0xFFFFFFFFFFFFFFFCLL;
                                            }

                                            else
                                            {
                                              v480 = 0;
                                              v481 = 0;
                                            }

                                            if ((v310 & 4) != 0)
                                            {
                                              v482 = ((v468.i64[0] >> 32) + 3) & 0xFFFFFFFFFFFFFFFCLL;
                                            }

                                            else
                                            {
                                              v482 = 0;
                                            }

                                            if ((v310 & 4) != 0)
                                            {
                                              v483 = ((v468.i64[1] >> 32) + 3) & 0xFFFFFFFFFFFFFFFCLL;
                                            }

                                            else
                                            {
                                              v483 = 0;
                                            }

                                            v484 = v477 + 0x200000000;
                                            v485 = (v468.i64[0] + 0x300000000) >> 32;
                                            if ((v310 & 2) != 0)
                                            {
                                              v486 = (((v477 + 0x200000000) >> 32) + 3) & 0xFFFFFFFFFFFFFFFCLL;
                                            }

                                            else
                                            {
                                              v486 = 0;
                                            }

                                            if ((v310 & 2) != 0)
                                            {
                                              v487 = (((v467 + 0x200000000) >> 32) + 3) & 0xFFFFFFFFFFFFFFFCLL;
                                            }

                                            else
                                            {
                                              v487 = 0;
                                            }

                                            if ((v310 & 2) != 0)
                                            {
                                              v488 = (((v468.i64[1] + 0x100000000) >> 32) + 3) & 0xFFFFFFFFFFFFFFFCLL;
                                            }

                                            else
                                            {
                                              v485 = 0;
                                              v488 = 0;
                                            }

                                            if ((v310 & 2) != 0)
                                            {
                                              v489 = v467 + 0x200000000;
                                            }

                                            else
                                            {
                                              v484 = v477;
                                              v489 = v467;
                                            }

                                            if ((v310 & 2) != 0)
                                            {
                                              v490 = v468.i64[0] + 0x300000000;
                                            }

                                            else
                                            {
                                              v490 = v468.i64[0];
                                            }

                                            if ((v310 & 2) != 0)
                                            {
                                              v491 = v468.i64[1] + 0x100000000;
                                            }

                                            else
                                            {
                                              v491 = v468.i64[1];
                                            }

                                            if (v310)
                                            {
                                              v496 = (v489 + 0x400000000) >> 32;
                                              v492 = (((v484 + 0x400000000) >> 32) + 3) & 0xFFFFFFFFFFFFFFFCLL;
                                              v493 = (v496 + 3) & 0xFFFFFFFFFFFFFFFCLL;
                                              v494 = (((v490 + 0x400000000) >> 32) + 3) & 0xFFFFFFFFFFFFFFFCLL;
                                              v495 = (((v491 + 0x400000000) >> 32) + 3) & 0xFFFFFFFFFFFFFFFCLL;
                                            }

                                            else
                                            {
                                              v492 = 0;
                                              v493 = 0;
                                              v494 = 0;
                                              v495 = 0;
                                            }

                                            v858 = vdupq_n_s64(4uLL);
                                            v859 = v858;
                                            *v853 = 4;
                                            *&v853[8] = v858;
                                            *&v853[24] = 4;
                                            if ((v310 & 0x40000) != 0)
                                            {
                                              v815.i64[0] = v397;
                                              v815.i64[1] = v397;
                                              v816.i64[0] = v397;
                                              v816.i64[1] = v397;
                                              if ((v310 & 0x20000) == 0)
                                              {
LABEL_702:
                                                if ((v310 & 0x10000) == 0)
                                                {
                                                  goto LABEL_703;
                                                }

                                                goto LABEL_714;
                                              }
                                            }

                                            else if ((v310 & 0x20000) == 0)
                                            {
                                              goto LABEL_702;
                                            }

                                            v809.i64[0] = v634;
                                            v809.i64[1] = v630;
                                            v810.i64[0] = v624;
                                            v810.i64[1] = v621;
                                            if ((v310 & 0x10000) == 0)
                                            {
LABEL_703:
                                              if ((v310 & 0x8000) == 0)
                                              {
                                                goto LABEL_704;
                                              }

                                              goto LABEL_718;
                                            }

LABEL_714:
                                            if (v415 <= v485)
                                            {
                                              v501 = v485;
                                            }

                                            else
                                            {
                                              v501 = v415;
                                            }

                                            v805.i64[0] = v616;
                                            v805.i64[1] = v613;
                                            v806.i64[0] = (v501 + 3) & 0xFFFFFFFFFFFFFFFCLL;
                                            v806.i64[1] = v611;
                                            if ((v310 & 0x8000) == 0)
                                            {
LABEL_704:
                                              v498 = v419.i64[1];
                                              v497 = v419.i64[0];
                                              if ((v310 & 0x4000) == 0)
                                              {
                                                goto LABEL_706;
                                              }

                                              goto LABEL_705;
                                            }

LABEL_718:
                                            v800.i64[0] = v609;
                                            v800.i64[1] = v607;
                                            v801.i64[0] = v605;
                                            v801.i64[1] = v602;
                                            v498 = v419.i64[1];
                                            v497 = v419.i64[0];
                                            if ((v310 & 0x4000) == 0)
                                            {
LABEL_706:
                                              v499 = v497 + 0x200000000;
                                              v787.i64[0] = (v420.i32[0] + 3) & 0xFFFFFFFC;
                                              v787.i64[1] = (v420.i32[2] + 3) & 0xFFFFFFFC;
                                              v788.i64[0] = (v408 + 7) & 0xFFFFFFFFFFFFFFFCLL;
                                              v788.i64[1] = (v422 + 3) & 0xFFFFFFFC;
                                              if ((v310 & 0x1000) == 0)
                                              {
                                                goto LABEL_724;
                                              }

                                              v500 = (v425 + 3) & 0xFFFFFFFFFFFFFFFCLL;
                                              v767.i64[0] = v500;
                                              v767.i64[1] = v500;
                                              v768.i64[0] = v500;
                                              v768.i64[1] = v500;
                                              if (v500 <= v639.i64[0])
                                              {
                                                if (v500 <= v639.i64[1])
                                                {
LABEL_709:
                                                  if (v500 > v640.i64[0])
                                                  {
                                                    goto LABEL_710;
                                                  }

                                                  goto LABEL_722;
                                                }
                                              }

                                              else
                                              {
                                                v639.i64[0] = (v425 + 3) & 0xFFFFFFFFFFFFFFFCLL;
                                                if (v500 <= v639.i64[1])
                                                {
                                                  goto LABEL_709;
                                                }
                                              }

                                              v639.i64[1] = (v425 + 3) & 0xFFFFFFFFFFFFFFFCLL;
                                              if (v500 > v640.i64[0])
                                              {
LABEL_710:
                                                v640.i64[0] = (v425 + 3) & 0xFFFFFFFFFFFFFFFCLL;
                                                if (v500 <= v640.i64[1])
                                                {
LABEL_724:
                                                  v502.i64[0] = v447.i32[0];
                                                  v502.i64[1] = v447.i32[1];
                                                  v503 = v502;
                                                  v504 = (v498 + 0x200000000) >> 32;
                                                  if ((v310 & 0x800) != 0)
                                                  {
                                                    v505 = (v584 + 3) & 0xFFFFFFFFFFFFFFFCLL;
                                                    v750.i64[0] = v505;
                                                    v750.i64[1] = v505;
                                                    v751.i64[0] = v505;
                                                    v751.i64[1] = v505;
                                                    if (v505 > v639.i64[0])
                                                    {
                                                      v639.i64[0] = (v584 + 3) & 0xFFFFFFFFFFFFFFFCLL;
                                                    }

                                                    if (v505 > v639.i64[1])
                                                    {
                                                      v639.i64[1] = (v584 + 3) & 0xFFFFFFFFFFFFFFFCLL;
                                                    }
                                                  }

                                                  v739.i64[0] = (v428.i64[0] + 3) & 0xFFFFFFFFFFFFFFFCLL;
                                                  v739.i64[1] = (v428.i64[1] + 3) & 0xFFFFFFFFFFFFFFFCLL;
                                                  v740.i64[0] = v739.i64[1];
                                                  v740.i64[1] = v739.i64[1];
                                                  if (v499 >> 32 <= (v442.i64[0] >> 32))
                                                  {
                                                    v506 = v442.i64[0] >> 32;
                                                  }

                                                  else
                                                  {
                                                    v506 = v499 >> 32;
                                                  }

                                                  if (v504 <= v442.i64[1] >> 32)
                                                  {
                                                    v504 = v442.i64[1] >> 32;
                                                  }

                                                  v507 = vbslq_s8(vcgtq_u64(v503, v446), v503, v446);
                                                  v726.i64[0] = (v506 + 3) & 0xFFFFFFFFFFFFFFFCLL;
                                                  v726.i64[1] = (v504 + 3) & 0xFFFFFFFFFFFFFFFCLL;
                                                  v508 = vdupq_n_s64(3uLL);
                                                  v509 = vdupq_n_s64(0xFFFFFFFFFFFFFFFCLL);
                                                  v727 = vandq_s8(vaddq_s64(v507, v508), v509);
                                                  v510 = vandq_s8(vaddq_s64(v451, v508), v509);
                                                  v511 = vandq_s8(vaddq_s64(v452, v508), v509);
                                                  v719 = v510;
                                                  v720 = v511;
                                                  v639 = v510;
                                                  v640 = v511;
                                                  v512 = v510.u64[1];
                                                  v513 = v510.i64[0];
                                                  v514 = v511.i64[0];
                                                  if ((v310 & 0x80) == 0)
                                                  {
                                                    goto LABEL_739;
                                                  }

                                                  v711.i64[0] = v456;
                                                  v711.i64[1] = v456;
                                                  v712.i64[0] = v456;
                                                  v712.i64[1] = v456;
                                                  if (v456 <= v510.i64[0])
                                                  {
                                                    if (v456 <= v510.i64[1])
                                                    {
LABEL_737:
                                                      if (v456 > v511.i64[0])
                                                      {
                                                        goto LABEL_738;
                                                      }

                                                      goto LABEL_742;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    v639.i64[0] = v456;
                                                    v513 = v456;
                                                    if (v456 <= v510.i64[1])
                                                    {
                                                      goto LABEL_737;
                                                    }
                                                  }

                                                  v639.i64[1] = v456;
                                                  v512 = v456;
                                                  if (v456 > v511.i64[0])
                                                  {
LABEL_738:
                                                    v640.i64[0] = v456;
                                                    v514 = v456;
                                                    if (v456 <= v511.i64[1])
                                                    {
LABEL_739:
                                                      v456 = v511.u64[1];
                                                      goto LABEL_744;
                                                    }

LABEL_743:
                                                    v640.i64[1] = v456;
LABEL_744:
                                                    v705 = v463;
                                                    v706 = v464;
                                                    if (v463.i64[0] <= v513)
                                                    {
                                                      v515 = v463.i64[1];
                                                      if (v463.i64[1] <= v512)
                                                      {
LABEL_746:
                                                        v516 = v464.i64[0];
                                                        if (v464.i64[0] > v514)
                                                        {
                                                          goto LABEL_747;
                                                        }

                                                        goto LABEL_753;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      v515 = v463.i64[1];
                                                      v639.i64[0] = v463.i64[0];
                                                      v513 = v463.i64[0];
                                                      if (v463.i64[1] <= v512)
                                                      {
                                                        goto LABEL_746;
                                                      }
                                                    }

                                                    v639.i64[1] = v515;
                                                    v512 = v515;
                                                    v516 = v464.i64[0];
                                                    if (v464.i64[0] > v514)
                                                    {
LABEL_747:
                                                      v640.i64[0] = v516;
                                                      v514 = v516;
                                                      v517 = v464.u64[1];
                                                      if (v464.i64[1] <= v456)
                                                      {
                                                        goto LABEL_748;
                                                      }

                                                      goto LABEL_754;
                                                    }

LABEL_753:
                                                    v517 = v464.u64[1];
                                                    if (v464.i64[1] <= v456)
                                                    {
LABEL_748:
                                                      if ((v310 & 0x20) == 0)
                                                      {
                                                        goto LABEL_749;
                                                      }

                                                      goto LABEL_755;
                                                    }

LABEL_754:
                                                    v640.i64[1] = v517;
                                                    v456 = v517;
                                                    if ((v310 & 0x20) == 0)
                                                    {
LABEL_749:
                                                      if ((v310 & 0x10) == 0)
                                                      {
                                                        goto LABEL_765;
                                                      }

LABEL_756:
                                                      v686 = v470;
                                                      v687 = v471;
                                                      if (v470.i64[0] <= v513)
                                                      {
                                                        v525 = v471.i64[0];
                                                        if (v470.i64[1] <= v512)
                                                        {
LABEL_758:
                                                          v526 = v471.u64[1];
                                                          if (v525 > v514)
                                                          {
                                                            goto LABEL_759;
                                                          }

                                                          goto LABEL_763;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        v639.i64[0] = v470.i64[0];
                                                        v513 = v470.i64[0];
                                                        v525 = v471.i64[0];
                                                        if (v470.i64[1] <= v512)
                                                        {
                                                          goto LABEL_758;
                                                        }
                                                      }

                                                      v639.i64[1] = v470.i64[1];
                                                      v512 = v470.u64[1];
                                                      v526 = v471.u64[1];
                                                      if (v525 > v514)
                                                      {
LABEL_759:
                                                        v640.i64[0] = v525;
                                                        v514 = v525;
                                                        if (v526 <= v456)
                                                        {
LABEL_765:
                                                          if ((v310 & 8) == 0)
                                                          {
                                                            goto LABEL_775;
                                                          }

                                                          v527 = (v478 + v596) & 0xFFFFFFFFFFFFFFFCLL;
                                                          v528 = (v479 + v598) & 0xFFFFFFFFFFFFFFFCLL;
                                                          v677.i64[0] = (v478 + v594) & 0xFFFFFFFFFFFFFFFCLL;
                                                          v677.i64[1] = v527;
                                                          v529 = (v479 + v600) & 0xFFFFFFFFFFFFFFFCLL;
                                                          v678.i64[0] = v528;
                                                          v678.i64[1] = v529;
                                                          if (v677.i64[0] <= v513)
                                                          {
                                                            if (v527 <= v512)
                                                            {
LABEL_768:
                                                              if (v528 > v514)
                                                              {
                                                                goto LABEL_769;
                                                              }

                                                              goto LABEL_773;
                                                            }
                                                          }

                                                          else
                                                          {
                                                            v639.i64[0] = (v478 + v594) & 0xFFFFFFFFFFFFFFFCLL;
                                                            v513 = v639.i64[0];
                                                            if (v527 <= v512)
                                                            {
                                                              goto LABEL_768;
                                                            }
                                                          }

                                                          v639.i64[1] = (v478 + v596) & 0xFFFFFFFFFFFFFFFCLL;
                                                          v512 = v639.u64[1];
                                                          if (v528 > v514)
                                                          {
LABEL_769:
                                                            v640.i64[0] = (v479 + v598) & 0xFFFFFFFFFFFFFFFCLL;
                                                            v514 = v640.i64[0];
                                                            if (v529 <= v456)
                                                            {
LABEL_775:
                                                              if ((v310 & 4) == 0)
                                                              {
LABEL_780:
                                                                v483 = v456;
                                                                goto LABEL_785;
                                                              }

                                                              v674.i64[0] = v480;
                                                              v674.i64[1] = v481;
                                                              v675.i64[0] = v482;
                                                              v675.i64[1] = v483;
                                                              if (v480 <= v513)
                                                              {
                                                                if (v481 <= v512)
                                                                {
LABEL_778:
                                                                  if (v482 > v514)
                                                                  {
                                                                    goto LABEL_779;
                                                                  }

                                                                  goto LABEL_783;
                                                                }
                                                              }

                                                              else
                                                              {
                                                                v639.i64[0] = v480;
                                                                v513 = v480;
                                                                if (v481 <= v512)
                                                                {
                                                                  goto LABEL_778;
                                                                }
                                                              }

                                                              v639.i64[1] = v481;
                                                              v512 = v481;
                                                              if (v482 > v514)
                                                              {
LABEL_779:
                                                                v640.i64[0] = v482;
                                                                v514 = v482;
                                                                if (v483 <= v456)
                                                                {
                                                                  goto LABEL_780;
                                                                }

LABEL_784:
                                                                v640.i64[1] = v483;
LABEL_785:
                                                                if ((v310 & 2) == 0)
                                                                {
LABEL_790:
                                                                  v488 = v483;
                                                                  goto LABEL_795;
                                                                }

                                                                v530 = (v485 + 3) & 0xFFFFFFFFFFFFFFFCLL;
                                                                v665.i64[0] = v486;
                                                                v665.i64[1] = v487;
                                                                v666.i64[0] = v530;
                                                                v666.i64[1] = v488;
                                                                if (v486 <= v513)
                                                                {
                                                                  if (v487 <= v512)
                                                                  {
LABEL_788:
                                                                    if (v530 > v514)
                                                                    {
                                                                      goto LABEL_789;
                                                                    }

                                                                    goto LABEL_793;
                                                                  }
                                                                }

                                                                else
                                                                {
                                                                  v639.i64[0] = v486;
                                                                  v513 = v486;
                                                                  if (v487 <= v512)
                                                                  {
                                                                    goto LABEL_788;
                                                                  }
                                                                }

                                                                v639.i64[1] = v487;
                                                                v512 = v487;
                                                                if (v530 > v514)
                                                                {
LABEL_789:
                                                                  v640.i64[0] = (v485 + 3) & 0xFFFFFFFFFFFFFFFCLL;
                                                                  v514 = v640.i64[0];
                                                                  if (v488 <= v483)
                                                                  {
                                                                    goto LABEL_790;
                                                                  }

LABEL_794:
                                                                  v640.i64[1] = v488;
LABEL_795:
                                                                  if ((v310 & 1) == 0)
                                                                  {
                                                                    goto LABEL_805;
                                                                  }

                                                                  v656.i64[0] = v492;
                                                                  v656.i64[1] = v493;
                                                                  v657.i64[0] = v494;
                                                                  v657.i64[1] = v495;
                                                                  if (v492 <= v513)
                                                                  {
                                                                    if (v493 <= v512)
                                                                    {
LABEL_798:
                                                                      if (v494 > v514)
                                                                      {
                                                                        goto LABEL_799;
                                                                      }

                                                                      goto LABEL_803;
                                                                    }
                                                                  }

                                                                  else
                                                                  {
                                                                    v639.i64[0] = v492;
                                                                    if (v493 <= v512)
                                                                    {
                                                                      goto LABEL_798;
                                                                    }
                                                                  }

                                                                  v639.i64[1] = v493;
                                                                  if (v494 > v514)
                                                                  {
LABEL_799:
                                                                    v640.i64[0] = v494;
                                                                    if (v495 <= v488)
                                                                    {
                                                                      goto LABEL_805;
                                                                    }

                                                                    goto LABEL_804;
                                                                  }

LABEL_803:
                                                                  if (v495 <= v488)
                                                                  {
                                                                    goto LABEL_805;
                                                                  }

LABEL_804:
                                                                  v640.i64[1] = v495;
                                                                  goto LABEL_805;
                                                                }

LABEL_793:
                                                                if (v488 <= v483)
                                                                {
                                                                  goto LABEL_790;
                                                                }

                                                                goto LABEL_794;
                                                              }

LABEL_783:
                                                              if (v483 <= v456)
                                                              {
                                                                goto LABEL_780;
                                                              }

                                                              goto LABEL_784;
                                                            }

LABEL_774:
                                                            v640.i64[1] = (v479 + v600) & 0xFFFFFFFFFFFFFFFCLL;
                                                            v456 = v640.u64[1];
                                                            goto LABEL_775;
                                                          }

LABEL_773:
                                                          if (v529 <= v456)
                                                          {
                                                            goto LABEL_775;
                                                          }

                                                          goto LABEL_774;
                                                        }

LABEL_764:
                                                        v640.i64[1] = v526;
                                                        v456 = v526;
                                                        goto LABEL_765;
                                                      }

LABEL_763:
                                                      if (v526 <= v456)
                                                      {
                                                        goto LABEL_765;
                                                      }

                                                      goto LABEL_764;
                                                    }

LABEL_755:
                                                    v464.i32[0] = 0;
                                                    v510.i32[0] = v310 & 0x20;
                                                    v518 = vdupq_lane_s32(*&vceqq_s32(v510, v464), 0);
                                                    v519 = vbicq_s8(v466, v518);
                                                    v520 = vbicq_s8(v465, v518);
                                                    v521 = vdupq_n_s64(3uLL);
                                                    v522 = vaddq_s64(v520, v521);
                                                    v523 = vaddq_s64(v519, v521);
                                                    v524 = vdupq_n_s64(0xFFFFFFFFFFFFFFFCLL);
                                                    v698 = vandq_s8(v522, v524);
                                                    v697 = vandq_s8(v523, v524);
                                                    if ((v310 & 0x10) == 0)
                                                    {
                                                      goto LABEL_765;
                                                    }

                                                    goto LABEL_756;
                                                  }

LABEL_742:
                                                  if (v456 <= v511.i64[1])
                                                  {
                                                    goto LABEL_739;
                                                  }

                                                  goto LABEL_743;
                                                }

LABEL_723:
                                                v640.i64[1] = (v425 + 3) & 0xFFFFFFFFFFFFFFFCLL;
                                                goto LABEL_724;
                                              }

LABEL_722:
                                              if (v500 <= v640.i64[1])
                                              {
                                                goto LABEL_724;
                                              }

                                              goto LABEL_723;
                                            }

LABEL_705:
                                            v795.i64[0] = v592;
                                            v795.i64[1] = v590;
                                            v796.i64[0] = v588;
                                            v796.i64[1] = v586;
                                            goto LABEL_706;
                                          }

                                          v401 = (1.0 / v650[57].f32[1]);
                                          if (!v371)
                                          {
                                            v547 = 0;
                                            v548 = 0.0;
                                            do
                                            {
                                              v549 = v548;
                                              v550 = pow(v549, v401);
                                              v551 = v550 * 65535.0 + 0.5;
                                              v552 = v551 & ~(v551 >> 31);
                                              if (v552 >= 0xFFFF)
                                              {
                                                LOWORD(v552) = -1;
                                              }

                                              *(sig + v547) = v552;
                                              v548 = v548 + 0.0000152590219;
                                              v547 += 2;
                                            }

                                            while (v547 != 0x20000);
                                            goto LABEL_572;
                                          }

                                          if (v650[57].i8[0])
                                          {
                                            v402 = 0;
                                            v403 = 0.0;
                                            do
                                            {
                                              v404 = v403;
                                              v405 = pow(v404, v401);
                                              v406 = v405 * 65535.0 + 0.5;
                                              v407 = v406 & ~(v406 >> 31);
                                              if (v407 >= 0xFFFF)
                                              {
                                                LOWORD(v407) = -1;
                                              }

                                              *(sig + v402) = v407;
                                              v403 = v403 + 0.0000152590219;
                                              v402 += 2;
                                            }

                                            while (v402 != 0x20000);
                                            goto LABEL_572;
                                          }

                                          v553 = 0;
                                          v554 = 0.0;
                                          while (1)
                                          {
                                            v568 = v554;
                                            v564 = 0.0;
                                            if (v568 >= 0.0)
                                            {
                                              if (v568 < 0.1)
                                              {
                                                v555 = v374[53].f32[1];
                                                v556 = 0.1;
                                                v557 = 0.0;
                                                v558 = 2;
                                                v559 = &v374[53];
LABEL_849:
                                                v560 = v568 / v556;
                                                goto LABEL_850;
                                              }

                                              if (v568 < 0.2)
                                              {
                                                v557 = v374[53].f32[1];
                                                v555 = v374[54].f32[1] - v557;
                                                v568 = v568 + -0.1;
                                                v556 = 0.1;
                                                v558 = 4;
                                                v559 = &v374[54];
                                                goto LABEL_849;
                                              }

                                              if (v568 < 0.5)
                                              {
                                                v557 = v374[54].f32[1];
                                                v555 = v374[55].f32[1] - v557;
                                                v568 = v568 + -0.2;
                                                v556 = 0.3;
                                                v558 = 6;
                                                v559 = &v374[55];
                                                goto LABEL_849;
                                              }

                                              if (v568 < 1.0)
                                              {
                                                v557 = v374[55].f32[1];
                                                v555 = 1.0 - v557;
                                                v560 = (v568 + -0.5) + (v568 + -0.5);
                                                v556 = 0.5;
                                                v558 = 7;
                                                v559 = &v374[56];
LABEL_850:
                                                v561 = v556 / v555;
                                                v562 = v561 * *v559;
                                                v563 = ((v561 * v374[53].f32[v558]) + v562) + -2.0;
                                                v564 = v557 + (v555 * (((v560 * (v560 * (1.0 - (v562 + v563)))) + ((v560 * (v560 * v563)) * v560)) + (v562 * v560)));
                                                if (v564 < 0.0)
                                                {
                                                  v564 = 0.0;
                                                }

                                                goto LABEL_852;
                                              }

                                              v564 = ((v568 + -1.0) * v374[56].f32[1]) + 1.0;
                                            }

LABEL_852:
                                            v565 = pow(v564, v401);
                                            v566 = v565 * 65535.0 + 0.5;
                                            v567 = v566 & ~(v566 >> 31);
                                            if (v567 >= 0xFFFF)
                                            {
                                              LOWORD(v567) = -1;
                                            }

                                            *(sig + v553) = v567;
                                            v554 = v554 + 0.0000152590219;
                                            v553 += 2;
                                            if (v553 == 0x20000)
                                            {
                                              goto LABEL_572;
                                            }
                                          }
                                        }

                                        v361 = 65537 - v346;
                                        if (65537 - v346 >= 4)
                                        {
                                          if (v361 < 0x10)
                                          {
                                            v362 = 0;
                                            goto LABEL_554;
                                          }

                                          v363 = (v353 - v355);
                                          v362 = v361 & 0xFFFFFFFFFFFFFFF0;
                                          v364 = vdupq_n_s16(v359);
                                          v365 = v361 & 0xFFFFFFFFFFFFFFF0;
                                          do
                                          {
                                            v363[-1] = v364;
                                            *v363 = v364;
                                            v363 += 2;
                                            v365 -= 16;
                                          }

                                          while (v365);
                                          if (v361 == v362)
                                          {
                                            goto LABEL_560;
                                          }

                                          if ((v361 & 0xC) != 0)
                                          {
LABEL_554:
                                            v360 = (v357 & 0xFFFFFFFFFFFFFFFCLL) + v346 - 1;
                                            v366 = vdup_n_s16(v359);
                                            v367 = (v353 + 2 * v362 - v355 - 16);
                                            v368 = v362 - (v361 & 0xFFFFFFFFFFFFFFFCLL);
                                            do
                                            {
                                              *v367++ = v366;
                                              v368 += 4;
                                            }

                                            while (v368);
                                            if (v361 == (v361 & 0xFFFFFFFFFFFFFFFCLL))
                                            {
                                              goto LABEL_560;
                                            }

                                            goto LABEL_559;
                                          }

                                          v360 = (v357 & 0xFFFFFFFFFFFFFFF0) + v346 - 1;
                                        }

                                        do
                                        {
LABEL_559:
                                          *(v348 + 2 * v360++) = v359;
                                        }

                                        while (v360 != 0x10000);
                                        goto LABEL_560;
                                      }
                                    }

                                    v310 |= 0x10000u;
                                    v312 = *(v633 + 268);
                                    v804 = sub_233835208;
                                    v807 = v312;
                                    goto LABEL_503;
                                  }

                                  v615 |= 4u;
                                  v213 = v882;
                                  v891 = 0u;
                                  v892 = 0u;
                                  v889 = 0u;
                                  v890 = 0u;
                                  v897 = 0u;
                                  v898 = 0u;
                                  v214 = llroundf(v627.f32[0]);
                                  v895 = 0u;
                                  v896 = 0u;
                                  v215 = llroundf(v627.f32[1]);
                                  v216 = llroundf(v603);
                                  if (v620 == 7 || v620 == 5)
                                  {
                                    v226 = 0;
                                    v227 = 0;
                                    v228 = 0;
                                    v217 = &v898 + 12;
                                    v218 = (&v898 + 4);
                                    v219 = &v897 + 2;
                                    v220 = &v897;
                                    v221 = &v896 + 12;
                                    v222 = (&v896 + 4);
                                    v223 = &v895 + 2;
                                    v224 = v599.f32[0];
                                    LODWORD(v895) = v599.i32[0];
                                    v225 = v601;
                                  }

                                  else
                                  {
                                    if (v620 != 4)
                                    {
                                      goto LABEL_383;
                                    }

                                    v217 = &v898 + 8;
                                    v218 = &v898;
                                    v219 = &v897 + 3;
                                    v220 = &v897 + 1;
                                    v221 = &v896 + 8;
                                    v222 = &v896;
                                    v223 = &v895 + 3;
                                    v224 = v601;
                                    *(&v895 + 1) = v601;
                                    v225 = v599.f32[0];
                                    v226 = v216;
                                    v227 = v214;
                                    v228 = v215;
                                    v216 = 0;
                                    v215 = 0;
                                    v214 = 0;
                                  }

                                  *v223 = v225;
                                  *v222 = v599.i32[1];
                                  *v221 = v599.i32[1];
                                  *v220 = v225;
                                  *v219 = v224;
                                  *v218 = v599.i32[1];
                                  *v217 = v599.i32[1];
                                  v889.i64[0] = __PAIR64__(v226, v214);
                                  v889.i64[1] = __PAIR64__(v227, v216);
                                  *&v890 = __PAIR64__(v215, v228);
                                  *(&v890 + 1) = __PAIR64__(v215, v228);
                                  *&v891 = __PAIR64__(v227, v216);
                                  *(&v891 + 1) = __PAIR64__(v226, v214);
                                  *&v892 = __PAIR64__(v215, v228);
                                  *(&v892 + 1) = __PAIR64__(v215, v228);
LABEL_383:
                                  v229 = 0;
                                  v628 = 0;
                                  v604 = v213[1].__opaque;
                                  do
                                  {
                                    if (!v676[v229])
                                    {
                                      v230 = *&v604[8 * v628];
                                      v231 = v889.u32[v229];
                                      v232 = v231;
                                      v233 = *(&v895 + v229);
                                      for (n = v229; n != 16; ++n)
                                      {
                                        if (v889.i32[n] == v231 && *(&v895 + n) == v233)
                                        {
                                          v676[n] = v230;
                                        }
                                      }

                                      ++v628;
                                      if (v231 <= 0 || (bzero(v230, 2 * v231), !WORD1(v231)))
                                      {
                                        v235 = v231 << 32;
                                        v236 = 0.5;
                                        v237 = 131070 - 2 * v231;
                                        do
                                        {
                                          v230[v232] = v236;
                                          v238 = v232 + 1;
                                          v237 -= 2;
                                          v235 += 0x100000000;
                                          if (v232 > 65534)
                                          {
                                            break;
                                          }

                                          v236 = v236 + v233;
                                          ++v232;
                                        }

                                        while (v236 <= 32767.0);
                                        if (v238 - 1 <= 65534)
                                        {
                                          memset_pattern16(v230 + (v235 >> 31), &unk_2339092C0, (v237 & 0x1FFFFFFFELL) + 2);
                                        }
                                      }
                                    }

                                    ++v229;
                                  }

                                  while (v229 != 16);
                                  v673 = sub_2338289A0;
                                  goto LABEL_399;
                                }

                                do
                                {
                                  if (v111 == *(v121 + 5) && !*(v121 + 24))
                                  {
                                    goto LABEL_242;
                                  }

                                  if (!atomic_load(v121 + 4))
                                  {
                                    v123 = v121;
                                  }

                                  v121 = *(v121 + 1);
                                  ++v122;
                                }

                                while (v121);
LABEL_233:
                                if (v123 && v122 > 3)
                                {
LABEL_241:
                                  *(v123 + 5) = v111;
                                  v123[24] = v112;
                                  *(v123 + 7) = v113;
                                  *(v123 + 8) = v114;
                                  *(v123 + 9) = v115;
                                  *(v123 + 10) = v116;
                                  *(v123 + 11) = v117;
                                  *(v123 + 12) = v118;
                                  v123[60] = v120;
                                  *(v123 + 61) = v895;
                                  v123[63] = BYTE2(v895);
                                  v121 = v123;
                                  *(v123 + 13) = v119;
                                  *(v123 + 14) = v626;
                                  *(v123 + 65567) = 0;
                                  goto LABEL_242;
                                }
                              }

                              v123 = sub_2338F6084(0x20040uLL);
                              if (v123)
                              {
                                v127 = qword_27DE3DE00;
                                v128 = *(qword_27DE3DE00 + 104);
                                *v123 = 0;
                                *(v123 + 1) = v128;
                                atomic_store(0, v123 + 4);
                                if (v128)
                                {
                                  *v128 = v123;
                                }

                                *(v127 + 104) = v123;
                                goto LABEL_241;
                              }

                              v881 = 0;
                              pthread_mutex_unlock(qword_27DE3DE00);
                              v105 = v882;
                              if (v882)
                              {
                                goto LABEL_192;
                              }
                            }

                            return 0;
                          }

LABEL_177:
                          v80 = 320;
                          goto LABEL_190;
                        }

LABEL_176:
                        *(&v889 + v68++) = xmmword_2339091A0;
                        if (v68 >= 1)
                        {
                          goto LABEL_163;
                        }

                        goto LABEL_177;
                      }
                    }

                    v90 = 0;
                    v91 = 0;
                    v92 = 0;
                    LODWORD(v885) = v650[41].i32[0];
                    DWORD2(v885) = v86;
                    DWORD1(v886) = v85;
                    HIDWORD(v886) = v85;
                    LODWORD(v887) = v86;
                    DWORD2(v887) = v84;
                    DWORD1(v888) = v85;
                    HIDWORD(v888) = v85;
                    LODWORD(v895) = v81;
                    goto LABEL_299;
                  }

LABEL_135:
                  v890 = xmmword_233909000;
                  if (v75 < 3)
                  {
                    v68 = 2;
                  }

                  else
                  {
                    v891 = xmmword_233909010;
                    if (v75 == 3)
                    {
                      v68 = 3;
                    }

                    else
                    {
                      v892 = xmmword_233909020;
                      if (v75 < 5)
                      {
                        v68 = 4;
                      }

                      else
                      {
                        v893 = xmmword_233909030;
                        if (v75 == 5)
                        {
                          v68 = 5;
                        }

                        else
                        {
                          v894 = xmmword_233909040;
                          v68 = 6;
                        }
                      }
                    }
                  }

                  goto LABEL_139;
                }

                ++v75;
              }

              v889 = xmmword_233908FF0;
              goto LABEL_135;
            }
          }

          else
          {
            if (v53.i32[1] == v58.i32[0])
            {
              v64 = 6;
            }

            else
            {
              v64 = 2;
            }

            v63 |= v64;
            if (v58.i32[1] == v58.i32[0])
            {
              v63 |= 8u;
            }

            if (v50 != v49)
            {
              if (v58.i32[1] == v53.i32[1])
              {
                v69 = 12;
              }

              else
              {
                v69 = 4;
              }

              v70 = v63 | v69;
              if ((v63 & 4) != 0)
              {
                v66 = 2;
              }

              else
              {
                v63 = v70;
                v66 = 3;
              }

              goto LABEL_114;
            }

            if (v58.i32[0] == v52)
            {
              v63 |= 0x10u;
            }

            if (v58.i32[0] == v54)
            {
              v63 |= 0x20u;
            }

            if ((v63 & 4) != 0)
            {
              v66 = 2;
              goto LABEL_114;
            }

            if (v58.i32[1] == v53.i32[1])
            {
              v65 = 12;
            }

            else
            {
              v65 = 4;
            }

            v63 |= v65;
            v66 = 3;
          }

          if (v53.i32[1] == v52)
          {
            v63 |= 0x10u;
          }

          if (v53.i32[1] == v54)
          {
            v63 |= 0x20u;
          }

          goto LABEL_114;
        }

LABEL_52:
        if (!*(qword_27DE3DE00 + 96))
        {
          pthread_mutex_lock(qword_27DE3DE00);
          v39 = qword_27DE3DE00;
          if (!*(qword_27DE3DE00 + 96))
          {
            v40 = 0;
            v41 = qword_27DE3DE00 + 985472;
            LODWORD(v42) = 0x80000000;
            *(qword_27DE3DE00 + 985472) = 0x80000000;
            v43 = (v39 + 985476);
            v44 = -16383;
            do
            {
              if (v44 + 0x4000 > v40)
              {
                v42 = 0x10000uLL / (v44 + 0x4000);
                v40 = 0x10000 / v42;
              }

              *v43++ = v42;
            }

            while (!__CFADD__(v44++, 1));
            *(v39 + 96) = v41;
          }

          pthread_mutex_unlock(v39);
        }

        goto LABEL_60;
      }
    }
  }

  return v3;
}

void *sub_233826508(unsigned int *a1)
{
  v2 = *(a1 + 2);
  v3 = a1[1];
  v4 = *(v2 + 164);
  result = sub_233818CBC(a1);
  if (!result)
  {
    return result;
  }

  v6 = result;
  if ((*(v2 + 8) & 1) == 0)
  {
    v7 = *a1;
    v9 = result[12];
    v8 = result[13];
    v10 = *(v2 + 16);
    if (!v10)
    {
      v10 = result[12];
    }

    v11 = *(v2 + 24) ? *(v2 + 24) : result[13];
    v12 = (v8 + v11 - 1) / v11;
    v13 = v7 / v12;
    if (v7 / v12 < (v9 + v10 - 1) / v10)
    {
      v14 = *(v2 + 10);
      v15 = v7 % v12 * v11;
      if (v15 + v11 <= v8)
      {
        v16 = v11;
      }

      else
      {
        v16 = v8 - v15;
      }

      v17 = v13 * v10;
      v18 = v9 - v13 * v10;
      if (v13 * v10 + v10 <= v9)
      {
        v18 = v10;
      }

      v19 = *(v2 + 32);
      v20 = *(v2 + 136) + v15;
      if (v20 - v19 < 0)
      {
        v21 = 1;
      }

      else
      {
        v21 = *(v2 + 10);
      }

      v22 = v21 == 0;
      if (v21)
      {
        v23 = 0;
      }

      else
      {
        v23 = v20 - v19;
      }

      if (v22)
      {
        v20 = *(v2 + 32);
      }

      if (*(v2 + 10))
      {
        v24 = result[1];
      }

      else
      {
        v25 = v20 + v16 + *(v2 + 40);
        v24 = result[1];
        if (v25 + v23 <= v24)
        {
          goto LABEL_28;
        }
      }

      v25 = v24 - v23;
LABEL_28:
      result[26] = v20;
      v26 = *(v2 + 48);
      v27 = *(v2 + 128) + v17;
      v28 = v27 - v26;
      if (v27 - v26 < 0)
      {
        v29 = 1;
      }

      else
      {
        v29 = v14;
      }

      if (v29)
      {
        v28 = 0;
        v26 = *(v2 + 128) + v17;
      }

      v30 = *v6;
      v31 = v26 + v18;
      if ((v14 & 1) != 0 || (v32 = *(v2 + 56) + v31, v32 + v28 > v30))
      {
        v32 = v30 - v28;
      }

      v6[24] = v6[15] + v6[14] * v15 + 3 * v17 * (*(v2 + 152) >> 3);
      v6[25] = v26;
      v6[21] = v18;
      v6[22] = v16;
      v6[17] = v32;
      v6[18] = v25;
      v6[45] = v32 >> 1;
      v6[46] = v25 >> 1;
      v33 = v6[2];
      v34 = v6[3] + v33 * v23 + 2 * v28;
      v6[10] = v33;
      v6[11] = v34;
      v6[8] = v23;
      v6[9] = v28;
      v35 = v25 - (v20 + v16);
      v6[4] = v20;
      v6[5] = v35;
      v36 = v32 - v31;
      v6[6] = v26;
      v6[7] = v32 - v31;
      v37 = *(v2 + 164);
      v38 = v6[19];
      v39 = v6[20];
      if ((v37 & 0x20) != 0)
      {
        v99 = v6[27];
        v98 = v6[28];
        v6[19] = v99;
        v6[20] = v98;
        v6[27] = v38;
        v6[28] = v39;
        v38 = v99;
        v39 = v98;
        v6[29] = v33;
        v6[30] = v34;
        v6[31] = v99;
        v6[32] = v98;
        if ((v37 & 1) == 0)
        {
LABEL_38:
          if ((v37 & 2) == 0)
          {
            goto LABEL_39;
          }

          goto LABEL_58;
        }
      }

      else
      {
        v6[29] = v33;
        v6[30] = v34;
        v6[31] = v38;
        v6[32] = v39;
        if ((v37 & 1) == 0)
        {
          goto LABEL_38;
        }
      }

      v100 = (v20 - *(v2 + 176)) & ~((v20 - *(v2 + 176)) >> 31);
      v101 = (v35 - *(v2 + 184)) & ~((v35 - *(v2 + 184)) >> 31);
      v102 = (v26 - *(v2 + 192)) & ~((v26 - *(v2 + 192)) >> 31);
      v6[68] = v32 - (((v36 - *(v2 + 200)) & ~((v36 - *(v2 + 200)) >> 31)) + v102);
      v6[69] = v25 - (v101 + v100);
      v103 = (2 * v102);
      v6[70] = v34 + v33 * v100 + v103;
      v6[71] = v33;
      v6[72] = v39 + v38 * v100 + v103;
      v6[73] = v38;
      v6[29] = v38;
      v6[30] = v39;
      v34 = v39;
      v33 = v38;
      if ((v37 & 2) == 0)
      {
LABEL_39:
        if ((v37 & 4) == 0)
        {
          goto LABEL_40;
        }

        goto LABEL_59;
      }

LABEL_58:
      v104 = (v20 - *(v2 + 248)) & ~((v20 - *(v2 + 248)) >> 31);
      v105 = (v35 - *(v2 + 256)) & ~((v35 - *(v2 + 256)) >> 31);
      v106 = (v26 - *(v2 + 264)) & ~((v26 - *(v2 + 264)) >> 31);
      v6[74] = v32 - (((v36 - *(v2 + 272)) & ~((v36 - *(v2 + 272)) >> 31)) + v106);
      v6[75] = v25 - (v105 + v104);
      v107 = 2 * v106;
      v6[76] = v34 + v33 * v104 + v107;
      v6[77] = v33;
      v6[78] = v39 + v38 * v104 + v107;
      v6[79] = v38;
      v108 = v6[33];
      v6[80] = v6[34] + v108 * v104 + (v106 >> 3);
      v6[81] = v108;
      v6[82] = v6[35];
      v6[29] = v38;
      v6[30] = v39;
      v34 = v39;
      v33 = v38;
      if ((v37 & 4) == 0)
      {
LABEL_40:
        if ((v37 & 8) == 0)
        {
          goto LABEL_41;
        }

        goto LABEL_60;
      }

LABEL_59:
      v109 = (v20 - *(v2 + 368)) & ~((v20 - *(v2 + 368)) >> 31);
      v110 = (v35 - *(v2 + 376)) & ~((v35 - *(v2 + 376)) >> 31);
      v111 = (v26 - *(v2 + 384)) & ~((v26 - *(v2 + 384)) >> 31);
      v6[83] = v32 - (((v36 - *(v2 + 392)) & ~((v36 - *(v2 + 392)) >> 31)) + v111);
      v6[84] = v25 - (v110 + v109);
      v112 = (2 * v111);
      v6[85] = v34 + v33 * v109 + v112;
      v6[86] = v33;
      v6[87] = v39 + v38 * v109 + v112;
      v6[88] = v38;
      v6[29] = v38;
      v6[30] = v39;
      if ((v37 & 8) == 0)
      {
LABEL_41:
        if ((v37 & 0x10) == 0)
        {
          goto LABEL_42;
        }

        goto LABEL_61;
      }

LABEL_60:
      v113 = (v20 - *(v2 + 536)) & ~((v20 - *(v2 + 536)) >> 31);
      v114 = (v35 - *(v2 + 544)) & ~((v35 - *(v2 + 544)) >> 31);
      v115 = (v26 - *(v2 + 552)) & ~((v26 - *(v2 + 552)) >> 31);
      v6[89] = v32 - (((v36 - *(v2 + 560)) & ~((v36 - *(v2 + 560)) >> 31)) + v115);
      v6[90] = v25 - (v114 + v113);
      v6[91] = v39 + v38 * v113 + (2 * v115);
      v6[92] = v38;
      v6[93] = v6[37];
      if ((v37 & 0x10) == 0)
      {
LABEL_42:
        if ((v37 & 0x20) == 0)
        {
          goto LABEL_44;
        }

        goto LABEL_43;
      }

LABEL_61:
      v116 = (v20 - *(v2 + 600)) & ~((v20 - *(v2 + 600)) >> 31);
      v117 = (v35 - *(v2 + 608)) & ~((v35 - *(v2 + 608)) >> 31);
      v118 = (v26 - *(v2 + 616)) & ~((v26 - *(v2 + 616)) >> 31);
      v6[94] = v32 - (((v36 - *(v2 + 624)) & ~((v36 - *(v2 + 624)) >> 31)) + v118);
      v6[95] = v25 - (v117 + v116);
      v6[96] = v39 + v38 * v116 + (2 * v118);
      v6[97] = v38;
      v6[98] = v6[38];
      if ((v37 & 0x20) == 0)
      {
LABEL_44:
        v46 = (v20 - *(v2 + 792)) & ~((v20 - *(v2 + 792)) >> 31);
        v47 = (v35 - *(v2 + 800)) & ~((v35 - *(v2 + 800)) >> 31);
        v48 = (v26 - *(v2 + 808)) & ~((v26 - *(v2 + 808)) >> 31);
        v6[107] = v32 - (((v36 - *(v2 + 816)) & ~((v36 - *(v2 + 816)) >> 31)) + v48);
        v6[108] = v25 - (v47 + v46);
        v6[109] = v39 + v38 * v46 + 2 * v48;
        v6[110] = v38;
        v49 = v6[47];
        v50 = v6[48];
        v6[111] = v50 + (v46 >> 1) * v49 + 6 * (v48 >> 1);
        v6[112] = v49;
        if ((v37 & 0x80) != 0)
        {
          v51 = (v20 - *(v2 + 856)) & ~((v20 - *(v2 + 856)) >> 31);
          v52 = (v35 - *(v2 + 864)) & ~((v35 - *(v2 + 864)) >> 31);
          v53 = (v26 - *(v2 + 872)) & ~((v26 - *(v2 + 872)) >> 31);
          v6[113] = v32 - (((v36 - *(v2 + 880)) & ~((v36 - *(v2 + 880)) >> 31)) + v53);
          v6[114] = v25 - (v52 + v51);
          v6[115] = v39 + v38 * v51 + 2 * v53;
          v6[116] = v38;
          v54 = v6[49];
          v6[117] = v6[50] + (v51 >> 1) * v54 + (v53 >> 1);
          v6[118] = v54;
        }

        v55 = v6[59];
        v56 = v20 - *(v2 + 928);
        v57 = *(v2 + 936);
        v58 = (v26 - *(v2 + 944)) & ~((v26 - *(v2 + 944)) >> 31);
        v6[119] = v32 - (((v36 - *(v2 + 952)) & ~((v36 - *(v2 + 952)) >> 31)) + v58);
        v59 = v56 & ~(v56 >> 31);
        v6[120] = v25 - (((v35 - v57) & ~((v35 - v57) >> 31)) + v59);
        v60 = 2 * v58;
        v6[121] = v39 + v38 * v59 + v60;
        v6[122] = v38;
        v61 = v6[63];
        v6[123] = v61 + v55 * v59 + v60;
        v6[124] = v55;
        v6[125] = v50 + (v59 >> 1) * v49 + 6 * (v58 >> 1);
        v6[126] = v49;
        v62 = (v20 - *(v2 + 992)) & ~((v20 - *(v2 + 992)) >> 31);
        LODWORD(v60) = (v35 - *(v2 + 1000)) & ~((v35 - *(v2 + 1000)) >> 31);
        v63 = (v26 - *(v2 + 1008)) & ~((v26 - *(v2 + 1008)) >> 31);
        v6[127] = v32 - (((v36 - *(v2 + 1016)) & ~((v36 - *(v2 + 1016)) >> 31)) + v63);
        v6[128] = v25 - (v60 + v62);
        v64 = 2 * v63;
        v6[129] = v39 + v38 * v62 + v64;
        v6[130] = v38;
        v6[131] = v61 + v55 * v62 + v64;
        v6[132] = v55;
        v66 = v6[52];
        v65 = v6[53];
        v6[133] = v65 + v66 * v62 + (v63 >> 1);
        v6[134] = v66;
        v67 = (v20 - *(v2 + 1096)) & ~((v20 - *(v2 + 1096)) >> 31);
        LODWORD(v63) = (v35 - *(v2 + 1104)) & ~((v35 - *(v2 + 1104)) >> 31);
        v68 = (v26 - *(v2 + 1112)) & ~((v26 - *(v2 + 1112)) >> 31);
        v6[135] = v32 - (((v36 - *(v2 + 1120)) & ~((v36 - *(v2 + 1120)) >> 31)) + v68);
        v6[136] = v25 - (v63 + v67);
        v69 = (2 * v68);
        v6[137] = v39 + v38 * v67 + v69;
        v6[138] = v38;
        v71 = v6[54];
        v70 = v6[55];
        v6[139] = v70 + (v67 >> 1) * v71 + (v69 & 0xFFFFFFFC);
        v6[140] = v71;
        if ((v37 & 0x800) != 0)
        {
          v72 = (v35 - *(v2 + 1192)) & ~((v35 - *(v2 + 1192)) >> 31);
          v73 = ((v20 - *(v2 + 1184)) & ~((v20 - *(v2 + 1184)) >> 31)) >> 1;
          v74 = ((v26 - *(v2 + 1200)) & ~((v26 - *(v2 + 1200)) >> 31)) >> 1;
          v75 = v6[46];
          v6[141] = v6[45] - (v74 + (((v36 - *(v2 + 1208)) & ~((v36 - *(v2 + 1208)) >> 31)) >> 1));
          v6[142] = v75 - (v73 + (v72 >> 1));
          v6[143] = v50 + v49 * v73 + 6 * v74;
          v6[144] = v49;
          v76 = v6[49];
          v6[145] = v6[50] + v76 * v73 + v74;
          v6[146] = v76;
          *(v6 + 147) = *(v6 + 28);
          v6[149] = v6[58];
        }

        if ((v37 & 0x1000) != 0)
        {
          v77 = (v20 - *(v2 + 1376)) & ~((v20 - *(v2 + 1376)) >> 31);
          v78 = (v36 - *(v2 + 1400)) & ~((v36 - *(v2 + 1400)) >> 31);
          v79 = ((v26 - *(v2 + 1392)) & ~((v26 - *(v2 + 1392)) >> 31)) >> 1;
          v6[160] = v65 + v66 * v77 + v79;
          v80 = v6[46];
          v81 = v6[45] - (v79 + (v78 >> 1));
          v82 = (v35 - *(v2 + 1384)) & ~((v35 - *(v2 + 1384)) >> 31);
          v6[161] = v66;
          v77 >>= 1;
          v6[150] = v81;
          v6[151] = v80 - v77 - (v82 >> 1);
          v83 = 2 * (v79 + 2 * v79);
          v6[152] = v50 + v83 + v77 * v49;
          v6[153] = v6[51] + v83 + v77 * v49;
          v6[154] = v49;
          v6[155] = v70 + v77 * v71 + 4 * v79;
          v6[156] = v71;
          *(v6 + 157) = *(v6 + 28);
          v6[159] = v6[58];
        }

        v84 = (v20 - *(v2 + 1512)) & ~((v20 - *(v2 + 1512)) >> 31);
        v85 = (v35 - *(v2 + 1520)) & ~((v35 - *(v2 + 1520)) >> 31);
        v86 = (v26 - *(v2 + 1528)) & ~((v26 - *(v2 + 1528)) >> 31);
        v6[162] = v32 - (((v36 - *(v2 + 1536)) & ~((v36 - *(v2 + 1536)) >> 31)) + v86);
        v6[163] = v25 - (v85 + v84);
        v6[164] = v61 + v55 * v84 + 2 * v86;
        v6[165] = v55;
        v6[166] = v65 + v66 * v84 + (v86 >> 1);
        v6[167] = v66;
        v6[168] = v6[39];
        if ((v37 & 0x4000) != 0)
        {
          v119 = (v20 - *(v2 + 1584)) & ~((v20 - *(v2 + 1584)) >> 31);
          v120 = (v35 - *(v2 + 1592)) & ~((v35 - *(v2 + 1592)) >> 31);
          v121 = (v26 - *(v2 + 1600)) & ~((v26 - *(v2 + 1600)) >> 31);
          v6[169] = v32 - (((v36 - *(v2 + 1608)) & ~((v36 - *(v2 + 1608)) >> 31)) + v121);
          v6[170] = v25 - (v120 + v119);
          v6[171] = v61 + v55 * v119 + 2 * v121;
          v6[172] = v55;
          v6[173] = v65 + v66 * v119 + (v121 >> 1);
          v6[174] = v66;
          v6[175] = v6[40];
          v88 = v6[4];
          v87 = v6[5];
          v90 = v6[6];
          v89 = v6[7];
          v91 = v6[17];
          v92 = v6[18];
          if ((v37 & 0x8000) == 0)
          {
LABEL_52:
            if ((v37 & 0x10000) == 0)
            {
              goto LABEL_53;
            }

            goto LABEL_65;
          }
        }

        else
        {
          v88 = v6[4];
          v87 = v6[5];
          v90 = v6[6];
          v89 = v6[7];
          v91 = v6[17];
          v92 = v6[18];
          if ((v37 & 0x8000) == 0)
          {
            goto LABEL_52;
          }
        }

        v122 = (v88 - *(v2 + 1640)) & ~((v88 - *(v2 + 1640)) >> 31);
        v123 = (v87 - *(v2 + 1648)) & ~((v87 - *(v2 + 1648)) >> 31);
        v124 = (v90 - *(v2 + 1656)) & ~((v90 - *(v2 + 1656)) >> 31);
        v6[176] = v91 - (((v89 - *(v2 + 1664)) & ~((v89 - *(v2 + 1664)) >> 31)) + v124);
        v6[177] = v92 - (v123 + v122);
        v6[178] = v61 + v55 * v122 + 2 * v124;
        v6[179] = v55;
        v6[180] = v65 + v66 * v122 + (v124 >> 1);
        v6[181] = v66;
        if ((v37 & 0x10000) == 0)
        {
LABEL_53:
          v93 = v2 + 224 * v3;
          v94 = v6[59];
          if ((v37 & 0x20000) == 0)
          {
            goto LABEL_54;
          }

          goto LABEL_66;
        }

LABEL_65:
        v125 = (v88 - *(v2 + 1704)) & ~((v88 - *(v2 + 1704)) >> 31);
        v126 = (v87 - *(v2 + 1712)) & ~((v87 - *(v2 + 1712)) >> 31);
        v127 = (v90 - *(v2 + 1720)) & ~((v90 - *(v2 + 1720)) >> 31);
        v6[182] = v91 - (((v89 - *(v2 + 1728)) & ~((v89 - *(v2 + 1728)) >> 31)) + v127);
        v6[183] = v92 - (v126 + v125);
        v6[184] = v61 + v55 * v125 + 2 * v127;
        v6[185] = v55;
        v6[186] = v65 + v66 * v125 + (v127 >> 1);
        v6[187] = v66;
        v128 = v6[33];
        v6[188] = v6[34] + v128 * v125 + (v127 >> 3);
        v6[189] = v128;
        v6[190] = v6[41];
        v93 = v2 + 224 * v3;
        v94 = v6[59];
        if ((v37 & 0x20000) == 0)
        {
LABEL_54:
          v95 = (v93 + 2440);
          v96 = v6[63];
          if ((v37 & 0x40000) == 0)
          {
LABEL_55:
            v97 = v6[60];
            goto LABEL_68;
          }

LABEL_67:
          v132 = (v88 - *(v2 + 2008)) & ~((v88 - *(v2 + 2008)) >> 31);
          v133 = (v87 - *(v2 + 2016)) & ~((v87 - *(v2 + 2016)) >> 31);
          v134 = (v90 - *(v2 + 2024)) & ~((v90 - *(v2 + 2024)) >> 31);
          v6[200] = v91 - (((v89 - *(v2 + 2032)) & ~((v89 - *(v2 + 2032)) >> 31)) + v134);
          v6[201] = v92 - (v133 + v132);
          v135 = v94 * v132;
          v136 = (2 * v134);
          v6[202] = v96 + v136 + v94 * v132;
          v97 = v6[60];
          v137 = v6[61];
          v6[203] = v97 + v136 + v135;
          v6[204] = v94;
          v6[205] = v137;
          *(v6 + 103) = *(v6 + 65);
LABEL_68:
          v138 = v6[47];
          v139 = v88 - *(v2 + 2200);
          v140 = *(v2 + 2208);
          v141 = (v90 - *(v2 + 2216)) & ~((v90 - *(v2 + 2216)) >> 31);
          v6[208] = v91 - (((v89 - *(v2 + 2224)) & ~((v89 - *(v2 + 2224)) >> 31)) + v141);
          v142 = v139 & ~(v139 >> 31);
          v6[209] = v92 - (((v87 - v140) & ~((v87 - v140) >> 31)) + v142);
          v143 = v6[19];
          v144 = 2 * v141;
          v6[210] = v6[20] + v143 * v142 + v144;
          v6[211] = v143;
          v145 = v6[62];
          v6[212] = v145 + v144 + v94 * v142;
          v6[213] = v96 + v144 + v94 * v142;
          v146 = v6[64];
          v6[214] = v146 + v144 + v94 * v142;
          v6[215] = v97 + v144 + v94 * v142;
          v6[216] = v94;
          v141 >>= 1;
          v147 = v6[51];
          v148 = v6[52];
          v6[221] = v65 + v148 * v142 + v141;
          v6[222] = v148;
          v142 >>= 1;
          v6[217] = v147 + v142 * v138 + 6 * v141;
          v6[218] = v138;
          v6[219] = v70 + v142 * v71 + 4 * v141;
          v6[220] = v71;
          v149 = v6[21];
          v150 = v6[22];
          v6[223] = v149;
          v6[224] = v150;
          *(v6 + 225) = *(v6 + 25);
          v151 = v6[23];
          v6[227] = v6[24];
          v6[228] = v151;
          v6[229] = v91;
          v6[230] = v92;
          v6[231] = v145;
          v6[232] = v97;
          v6[233] = v146;
          v6[234] = v94;
          v6[235] = v147;
          v6[236] = v138;
          v6[237] = v70;
          v6[238] = v6[54];
          v152.i64[0] = vdupq_n_s64(1uLL).u64[0];
          v152.i64[1] = v6[18] * v6[17];
          *v95 = vaddq_s64(*v95, v152);
          v95[1].i64[0] += v150 * v149;
          v153 = v6[19];
          v154 = v6[20];
          if ((v4 & 0x20) != 0)
          {
            v157 = v6[27];
            v156 = v6[28];
            v6[19] = v157;
            v6[20] = v156;
            v6[27] = v153;
            v6[28] = v154;
            v158 = v156;
            v159 = v6[11];
            v6[29] = v6[10];
            v6[30] = v159;
            v6[31] = v157;
            v6[32] = v158;
            if ((v4 & 1) == 0)
            {
LABEL_70:
              if ((v4 & 2) == 0)
              {
                goto LABEL_71;
              }

              goto LABEL_91;
            }
          }

          else
          {
            v155 = v6[11];
            v6[29] = v6[10];
            v6[30] = v155;
            v6[31] = v153;
            v6[32] = v154;
            if ((v4 & 1) == 0)
            {
              goto LABEL_70;
            }
          }

          (*(v2 + 168))(v2, v6);
          v160 = v6[32];
          v6[29] = v6[31];
          v6[30] = v160;
          if ((v4 & 2) == 0)
          {
LABEL_71:
            if ((v4 & 4) == 0)
            {
              goto LABEL_72;
            }

            goto LABEL_92;
          }

LABEL_91:
          (*(v2 + 240))(v2, v6);
          v161 = v6[32];
          v6[29] = v6[31];
          v6[30] = v161;
          if ((v4 & 4) == 0)
          {
LABEL_72:
            if ((v4 & 8) == 0)
            {
              goto LABEL_73;
            }

            goto LABEL_93;
          }

LABEL_92:
          (*(v2 + 360))(v2, v6);
          v162 = v6[32];
          v6[29] = v6[31];
          v6[30] = v162;
          if ((v4 & 8) == 0)
          {
LABEL_73:
            if ((v4 & 0x10) == 0)
            {
              goto LABEL_74;
            }

            goto LABEL_94;
          }

LABEL_93:
          (*(v2 + 528))(v2, v6);
          if ((v4 & 0x10) == 0)
          {
LABEL_74:
            if ((v4 & 0x20) == 0)
            {
              goto LABEL_75;
            }

            goto LABEL_95;
          }

LABEL_94:
          (*(v2 + 592))(v2, v6);
          if ((v4 & 0x20) == 0)
          {
LABEL_75:
            (*(v2 + 784))(v2, v6);
            if ((v4 & 0x80) == 0)
            {
              goto LABEL_77;
            }

            goto LABEL_76;
          }

LABEL_95:
          (*(v2 + 696))(v2, v6);
          v164 = v6[19];
          v163 = v6[20];
          v165 = v6[28];
          v6[19] = v6[27];
          v6[20] = v165;
          v6[27] = v164;
          v6[28] = v163;
          (*(v2 + 784))(v2, v6);
          if ((v4 & 0x80) == 0)
          {
LABEL_77:
            (*(v2 + 920))(v2, v6);
            (*(v2 + 984))(v2, v6);
            (*(v2 + 1088))(v2, v6);
            if ((v4 & 0x800) != 0)
            {
              (*(v2 + 1176))(v2, v6);
              if ((v4 & 0x1000) == 0)
              {
LABEL_79:
                (*(v2 + 1504))(v2, v6);
                if ((v4 & 0x4000) == 0)
                {
                  goto LABEL_80;
                }

                goto LABEL_99;
              }
            }

            else if ((v4 & 0x1000) == 0)
            {
              goto LABEL_79;
            }

            (*(v2 + 1368))(v2, v6);
            (*(v2 + 1504))(v2, v6);
            if ((v4 & 0x4000) == 0)
            {
LABEL_80:
              if ((v4 & 0x8000) == 0)
              {
                goto LABEL_81;
              }

              goto LABEL_100;
            }

LABEL_99:
            (*(v2 + 1576))(v2, v6);
            if ((v4 & 0x8000) == 0)
            {
LABEL_81:
              if ((v4 & 0x10000) == 0)
              {
                goto LABEL_82;
              }

              goto LABEL_101;
            }

LABEL_100:
            (*(v2 + 1632))(v2, v6);
            if ((v4 & 0x10000) == 0)
            {
LABEL_82:
              if ((v4 & 0x20000) == 0)
              {
                goto LABEL_83;
              }

              goto LABEL_102;
            }

LABEL_101:
            (*(v2 + 1696))(v2, v6);
            if ((v4 & 0x20000) == 0)
            {
LABEL_83:
              if ((v4 & 0x40000) == 0)
              {
LABEL_85:
                (*(v2 + 2192))(v2, v6);
                (*(v2 + 2248))(v2, v6);
                goto LABEL_86;
              }

LABEL_84:
              (*(v2 + 2000))(v2, v6);
              goto LABEL_85;
            }

LABEL_102:
            (*(v2 + 1744))(v2, v6);
            if ((v4 & 0x40000) == 0)
            {
              goto LABEL_85;
            }

            goto LABEL_84;
          }

LABEL_76:
          (*(v2 + 848))(v2, v6);
          goto LABEL_77;
        }

LABEL_66:
        v129 = (v88 - *(v2 + 1752)) & ~((v88 - *(v2 + 1752)) >> 31);
        v130 = (v87 - *(v2 + 1760)) & ~((v87 - *(v2 + 1760)) >> 31);
        v131 = (v90 - *(v2 + 1768)) & ~((v90 - *(v2 + 1768)) >> 31);
        v6[191] = v91 - (((v89 - *(v2 + 1776)) & ~((v89 - *(v2 + 1776)) >> 31)) + v131);
        v6[192] = v92 - (v130 + v129);
        v6[193] = v61 + v94 * v129 + (2 * v131);
        v6[194] = v94;
        v6[199] = v6[42];
        v95 = (v93 + 2440);
        v96 = v6[63];
        if ((v37 & 0x40000) == 0)
        {
          goto LABEL_55;
        }

        goto LABEL_67;
      }

LABEL_43:
      v40 = (v20 - *(v2 + 704)) & ~((v20 - *(v2 + 704)) >> 31);
      v41 = (v35 - *(v2 + 712)) & ~((v35 - *(v2 + 712)) >> 31);
      v42 = (v26 - *(v2 + 720)) & ~((v26 - *(v2 + 720)) >> 31);
      v6[99] = v32 - (((v36 - *(v2 + 728)) & ~((v36 - *(v2 + 728)) >> 31)) + v42);
      v6[100] = v25 - (v41 + v40);
      v43 = 2 * v42;
      v6[101] = v39 + v38 * v40 + v43;
      v6[102] = v38;
      v44 = v6[27];
      v45 = v6[28];
      v6[103] = v45 + v44 * v40 + v43;
      v6[104] = v44;
      v6[105] = v23 + v40;
      v6[106] = v28 + v42;
      v6[19] = v44;
      v6[20] = v45;
      v6[27] = v38;
      v6[28] = v39;
      v39 = v45;
      v38 = v44;
      goto LABEL_44;
    }
  }

LABEL_86:

  return sub_233818CFC(a1, v6);
}