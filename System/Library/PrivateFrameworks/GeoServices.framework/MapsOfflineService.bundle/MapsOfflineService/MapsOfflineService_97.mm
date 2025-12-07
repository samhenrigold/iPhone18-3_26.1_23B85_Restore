void sub_61DA2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_53A868(va);
  sub_5ECB64(v5);
  _Unwind_Resume(a1);
}

void sub_61DA48(uint64_t a1)
{
  nullsub_1();
  v3 = *v2;
  v4 = *(v2 + 8);
  if (*v2 != v4)
  {
    do
    {
      sub_61C828(a1, v3, v9);
      sub_61A91C((v3 + 1501), v9);
      if (__p)
      {
        v16 = __p;
        operator delete(__p);
      }

      sub_53A868(&v14);
      v5 = v12;
      if (v12)
      {
        v6 = v13;
        v7 = v12;
        if (v13 != v12)
        {
          do
          {
            v8 = v6 - 176;
            sub_53A868((v6 - 160));
            v6 = v8;
          }

          while (v8 != v5);
          v7 = v12;
        }

        v13 = v5;
        operator delete(v7);
      }

      if (v10)
      {
        v11 = v10;
        operator delete(v10);
      }

      v3 += 1582;
    }

    while (v3 != v4);
  }
}

void sub_61DD10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_61DD38(uint64_t a1, void *a2, void *a3)
{
  v10 = 18;
  strcpy(__p, "enable_aggregation");
  v5 = sub_5F9D0(a2, __p);
  if (v10 < 0)
  {
    v6 = v5;
    operator delete(*__p);
    v5 = v6;
  }

  *a1 = v5;
  v10 = 14;
  strcpy(__p, "flat_max_slope");
  v7 = sub_63D34(a2, __p);
  if (v10 < 0)
  {
    v8 = v7;
    operator delete(*__p);
    v7 = v8;
  }

  *(a1 + 8) = v7;
  operator new();
}

void sub_61DF70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_61E244(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_61E26C(BOOL *a1, void *a2, void *a3)
{
  v7 = 21;
  strcpy(__p, "enable_elevation_info");
  v4 = sub_5F9D0(a2, __p);
  if (v7 < 0)
  {
    v5 = v4;
    operator delete(*__p);
    v4 = v5;
  }

  *a1 = v4;
  operator new();
}

void sub_61E460(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_61E48C(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a3;
  if (*(a1 + 80))
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v4 = *a2;
    v5 = a2[1] - *a2;
    if (v5)
    {
      v7 = 0;
      v8 = 0;
      v9 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 4);
      v61 = a2;
      v62 = v3;
      do
      {
        v10 = v4 + 48 * v8;
        v11 = *v10;
        v12 = *(v10 + 8);
        v13 = *(v10 + 20);
        v14 = *(v10 + 32);
        v15 = *(v10 + 40);
        if (*v10 <= 0.0)
        {
          v16 = 216;
        }

        else
        {
          v16 = 160;
        }

        if (v8 + 1 != v9)
        {
          v17 = v4 + 48 * (v8 + 1);
          if (v15 == *(v17 + 40))
          {
            v18 = (a1 + v16);
            v19 = fabs(v12);
            v20 = fabs(v11);
            v21 = v9 - 1;
            v22 = *(v10 + 16);
            v23 = v9 - 2;
            v24 = *v10;
            while (1)
            {
              v25 = *v17;
              if (v11 > 0.0 != *v17 > 0.0)
              {
                goto LABEL_44;
              }

              v26 = *(a1 + 88);
              if (v19 <= v26)
              {
                goto LABEL_44;
              }

              v27 = *(v17 + 8);
              v28 = fabs(v27);
              if (v28 <= v26)
              {
                goto LABEL_44;
              }

              v29 = *(v17 + 16);
              if (v22 <= v29)
              {
                v30 = *(v17 + 16);
              }

              else
              {
                v30 = v22;
              }

              v31 = v18;
              if (v30 != 1)
              {
                if (v30 == 3)
                {
                  v31 = v18 + 2;
                }

                else
                {
                  v31 = v18 + 1;
                  if (v30 != 2)
                  {
                    v32 = 1.79769313e308;
                    goto LABEL_24;
                  }
                }
              }

              v32 = *v31 * *(a1 + 112);
LABEL_24:
              v33 = fabs(v24);
              v34 = *(a1 + 104);
              if (v34 >= v33 * *(a1 + 96))
              {
                v34 = v33 * *(a1 + 96);
              }

              v35 = fabs(v25);
              if (v22 != v29)
              {
                v36 = vabdd_f64(v12, v27);
                v37 = vabdd_f64(v24, v25) > v34 && v36 > v34;
                if (v37 && (v29 <= v22 || v20 < v32) && (v22 <= v29 || v35 < v32))
                {
                  goto LABEL_44;
                }
              }

              if (v35 > v33)
              {
                v24 = *v17;
              }

              if (v28 < fabs(v12))
              {
                v12 = *(v17 + 8);
              }

              v13 += *(v17 + 20);
              v14 += *(v17 + 32);
              if (v23 == v8)
              {
                v8 = v21;
                goto LABEL_44;
              }

              v38 = *(v17 + 88);
              v17 += 48;
              ++v8;
              v22 = v30;
              if (v15 != v38)
              {
                goto LABEL_44;
              }
            }
          }
        }

        v24 = *v10;
LABEL_44:
        v39 = *(v10 + 24);
        v40 = *(v10 + 44);
        if (v24 < 0.0)
        {
          v41 = 216;
        }

        else
        {
          v41 = 160;
        }

        v42 = (a1 + v41);
        v43 = fabs(v24);
        if (v43 >= v42[2])
        {
          v51 = 3;
          v52 = v3[2];
          if (v7 >= v52)
          {
            goto LABEL_68;
          }

          goto LABEL_4;
        }

        if (v43 >= v42[1])
        {
          v51 = 2;
          v52 = v3[2];
          if (v7 >= v52)
          {
            goto LABEL_68;
          }

          goto LABEL_4;
        }

        if (v43 < *v42)
        {
LABEL_65:
          v51 = 0;
          v52 = v3[2];
          if (v7 >= v52)
          {
            goto LABEL_68;
          }

          goto LABEL_4;
        }

        v45 = v42[6];
        v44 = v42 + 6;
        v46 = v45;
        v47 = v43 * *(v44 - 3) + *(v44 - 2);
        v63 = v47;
        v48 = v44 - 1;
        if (*(v44 - 1) >= v47)
        {
          v48 = &v63;
        }

        if (v47 >= v46)
        {
          v44 = v48;
        }

        v49 = *v44 * 100.0;
        if (v49 >= 0.0)
        {
          if (v49 >= 4.50359963e15)
          {
            goto LABEL_64;
          }

          v50 = (v49 + v49) + 1;
        }

        else
        {
          if (v49 <= -4.50359963e15)
          {
            goto LABEL_64;
          }

          v50 = (v49 + v49) - 1 + (((v49 + v49) - 1) >> 63);
        }

        v49 = (v50 >> 1);
LABEL_64:
        if (fabs(v13) < v49)
        {
          goto LABEL_65;
        }

        v51 = 1;
        v52 = v3[2];
        if (v7 >= v52)
        {
LABEL_68:
          v53 = *v3;
          v54 = v7 - *v3;
          v55 = 0xAAAAAAAAAAAAAAABLL * (v54 >> 4) + 1;
          if (v55 > 0x555555555555555)
          {
            sub_1794();
          }

          v56 = 0xAAAAAAAAAAAAAAABLL * ((v52 - v53) >> 4);
          if (2 * v56 > v55)
          {
            v55 = 2 * v56;
          }

          if (v56 >= 0x2AAAAAAAAAAAAAALL)
          {
            v57 = 0x555555555555555;
          }

          else
          {
            v57 = v55;
          }

          if (v57)
          {
            if (v57 <= 0x555555555555555)
            {
              operator new();
            }

            sub_1808();
          }

          v58 = 16 * (v54 >> 4);
          *v58 = v24;
          *(v58 + 8) = v12;
          *(v58 + 16) = v51;
          *(v58 + 20) = v13;
          *(v58 + 24) = v39;
          *(v58 + 32) = v14;
          *(v58 + 40) = v15;
          *(v58 + 44) = v40;
          v7 = v58 + 48;
          v59 = v58 - v54;
          memcpy((v58 - v54), v53, v54);
          v3 = v62;
          *v62 = v59;
          v62[1] = v7;
          v62[2] = 0;
          if (v53)
          {
            operator delete(v53);
          }

          a2 = v61;
          goto LABEL_5;
        }

LABEL_4:
        *v7 = v24;
        *(v7 + 8) = v12;
        *(v7 + 16) = v51;
        *(v7 + 20) = v13;
        *(v7 + 24) = v39;
        *(v7 + 32) = v14;
        *(v7 + 40) = v15;
        *(v7 + 44) = v40;
        v7 += 48;
LABEL_5:
        v3[1] = v7;
        ++v8;
        v4 = *a2;
        v9 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 4);
      }

      while (v8 < v9);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v60 = a2[1];
    if (v60 != *a2)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v60 - *a2) >> 4) <= 0x555555555555555)
      {
        operator new();
      }

      sub_1794();
    }
  }
}

void sub_61E99C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (v11)
  {
    *(a11 + 8) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_61E9C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a3;
  a1[1] = a2;
  sub_21E2FB0(a4, 4, *(a3 + 1000));
}

void sub_61EC44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  sub_5C010(&a18);
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_5C010(v32 - 96);
  sub_1A104(&a23);
  if (a31 < 0)
  {
    operator delete(a26);
  }

  sub_1F1A8(v31 + 16);
  _Unwind_Resume(a1);
}

void sub_61ECB0(void *a1, uint64_t *a2, uint64_t a3)
{
  v6 = sub_3AF4C0(a2);

  sub_61E9C0(a1, a2, a3, v6);
}

void sub_61ED08(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 32) != 1 || !sub_4D1DC0(a2))
  {
    *(a3 + 248) = 0u;
    *(a3 + 232) = 0u;
    *(a3 + 216) = 0u;
    *(a3 + 200) = 0u;
    *(a3 + 184) = 0u;
    *(a3 + 168) = 0u;
    *(a3 + 152) = 0u;
    *(a3 + 136) = 0u;
    *(a3 + 120) = 0u;
    *(a3 + 104) = 0u;
    *(a3 + 88) = 0u;
    *(a3 + 72) = 0u;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    *a3 = vnegq_f64(v9);
    *(a3 + 16) = 0;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0x8000000080000000;
    *(a3 + 48) = 0;
    *(a3 + 56) = 0;
    *(a3 + 64) = 0;
    sub_64B998(a3 + 72);
    *(a3 + 232) = 0;
    *(a3 + 240) = 0;
    *(a3 + 248) = 0;
    *(a3 + 256) = 256;
    return;
  }

  v6 = sub_3AF6B4(*(a1 + 8));
  sub_4CC1B0(a2, a1 + 120, (a1 + 136), v6, v59);
  if (!sub_4C9C6C(v59))
  {
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    *a3 = vnegq_f64(v10);
    *(a3 + 16) = 0;
    *(a3 + 24) = 0uLL;
    *(a3 + 40) = 0x8000000080000000;
    *(a3 + 48) = 0;
    v11 = (a3 + 48);
    *(a3 + 56) = 0;
    *(a3 + 64) = 0;
    sub_64B998(a3 + 72);
    *(a3 + 232) = 0;
    v12 = (a3 + 232);
    *(a3 + 256) = 0;
    *(a3 + 240) = 0;
    *(a3 + 248) = 0;
    sub_61F274(a1, v59, &v52);
    *a3 = v52;
    v13 = *(a3 + 16);
    if (v13)
    {
      *(a3 + 24) = v13;
      operator delete(v13);
    }

    *(a3 + 16) = *v53;
    v14 = v54;
    v15 = v55;
    v53[1] = 0;
    v54 = 0;
    v53[0] = 0;
    *(a3 + 32) = v14;
    *(a3 + 40) = v15;
    v16 = *(a3 + 48);
    if (v16)
    {
      v17 = *(a3 + 56);
      v18 = *(a3 + 48);
      if (v17 != v16)
      {
        do
        {
          v19 = v17 - 176;
          sub_53A868(v17 - 160);
          v17 = v19;
        }

        while (v19 != v16);
        v18 = *v11;
      }

      *(a3 + 56) = v16;
      operator delete(v18);
    }

    *(a3 + 48) = *__p;
    *(a3 + 64) = v57;
    __p[1] = 0;
    v57 = 0;
    __p[0] = 0;
    sub_53D784(a3 + 72, v58);
    sub_53A868(v58);
    v21 = __p[0];
    if (__p[0])
    {
      v22 = __p[1];
      v23 = __p[0];
      if (__p[1] != __p[0])
      {
        do
        {
          v24 = v22 - 176;
          sub_53A868((v22 - 160));
          v22 = v24;
        }

        while (v24 != v21);
        v23 = __p[0];
      }

      __p[1] = v21;
      operator delete(v23);
    }

    if (v53[0])
    {
      v53[1] = v53[0];
      operator delete(v53[0]);
    }

    sub_61F62C(a1, a2, v59, &v52, v20);
    v25 = *v12;
    if (*v12)
    {
      *(a3 + 240) = v25;
      operator delete(v25);
    }

    *(a3 + 232) = v52;
    *(a3 + 248) = v53[0];
    *(a3 + 256) = sub_61A1B8(a1, (a3 + 232), a3);
    v27 = *(a3 + 16);
    v26 = *(a3 + 24);
    v28 = 0x7FFFFFFF7FFFFFFFLL;
    if (v27 != v26 && *a3 != 0x7FFFFFFFFFFFFFFFLL && *(a3 + 8) != 0x7FFFFFFFFFFFFFFFLL)
    {
      v29 = v27 + 16;
      if (v27 + 16 == v26)
      {
        v33 = *(a3 + 16);
        v29 = v33;
      }

      else
      {
        v30 = *(v27 + 24);
        v31 = *(v27 + 8);
        v32 = v30 < v31;
        if (v30 >= v31)
        {
          v33 = *(a3 + 16);
        }

        else
        {
          v33 = v27 + 16;
        }

        if (v32)
        {
          v29 = *(a3 + 16);
        }

        v34 = v27 + 32;
        if (v34 != v26)
        {
          while (1)
          {
            v35 = v34 + 16;
            if (v34 + 16 == v26)
            {
              break;
            }

            v36 = *(v34 + 24);
            v37 = *(v34 + 8);
            v38 = v36 < v37;
            if (v36 >= v37)
            {
              v39 = *(v34 + 8);
            }

            else
            {
              v39 = *(v34 + 24);
            }

            if (v36 >= v37)
            {
              v40 = v34;
            }

            else
            {
              v40 = v34 + 16;
            }

            if (v36 <= v37)
            {
              v36 = *(v34 + 8);
            }

            if (v38)
            {
              v35 = v34;
            }

            if (v39 < *(v33 + 8))
            {
              v33 = v40;
            }

            if (v36 >= *(v29 + 8))
            {
              v29 = v35;
            }

            v34 += 32;
            if (v34 == v26)
            {
              goto LABEL_60;
            }
          }

          v41 = *(v34 + 8);
          if (v41 >= *(v33 + 8))
          {
            if (v41 >= *(v29 + 8))
            {
              v29 = v34;
            }
          }

          else
          {
            v33 = v34;
          }
        }
      }

LABEL_60:
      v42 = *(v33 + 8);
      v43 = *(v29 + 8);
      v44 = *(a1 + 40);
      v45 = v43 - v44;
      if (v42 < v43 - v44)
      {
        v45 = v42;
      }

      v46 = v44 + v42;
      if (v46 > v43)
      {
        v43 = v46;
      }

      LODWORD(v47) = v42 & (v42 >> 31);
      if (v47 <= v45)
      {
        v47 = v45;
      }

      else
      {
        v47 = v47;
      }

      v28 = v47 | ((v43 - v45 + v47) << 32);
    }

    *(a3 + 40) = v28;
    sub_61FBA0(a1, a3, &v52);
    v48 = *v11;
    if (*v11)
    {
      v49 = *(a3 + 56);
      v50 = *v11;
      if (v49 != v48)
      {
        do
        {
          v51 = v49 - 176;
          sub_53A868((v49 - 160));
          v49 = v51;
        }

        while (v51 != v48);
        v50 = *v11;
      }

      *(a3 + 56) = v48;
      operator delete(v50);
    }

    *(a3 + 48) = v52;
    *(a3 + 64) = v53[0];
    v8 = v62;
    if (!v62)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  *(a3 + 248) = 0u;
  *(a3 + 232) = 0u;
  *(a3 + 216) = 0u;
  *(a3 + 200) = 0u;
  *(a3 + 184) = 0u;
  *(a3 + 168) = 0u;
  *(a3 + 152) = 0u;
  *(a3 + 136) = 0u;
  *(a3 + 120) = 0u;
  *(a3 + 104) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 72) = 0u;
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  *a3 = vnegq_f64(v7);
  *(a3 + 16) = 0;
  *(a3 + 24) = 0uLL;
  *(a3 + 40) = 0x8000000080000000;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  sub_64B998(a3 + 72);
  *(a3 + 232) = 0;
  *(a3 + 240) = 0;
  *(a3 + 248) = 0;
  *(a3 + 256) = 256;
  v8 = v62;
  if (v62)
  {
LABEL_5:
    operator delete(v8);
  }

LABEL_6:
  if (v60)
  {
    v61 = v60;
    operator delete(v60);
  }

  if (v59[0])
  {
    v59[1] = v59[0];
    operator delete(v59[0]);
  }
}

void sub_61F1D0(_Unwind_Exception *a1)
{
  sub_5ECA54(v1);
  sub_4CB154(v2 - 136);
  _Unwind_Resume(a1);
}

void sub_61F1F8(_Unwind_Exception *a1)
{
  sub_5ECB64(v2);
  v6 = *v3;
  if (*v3)
  {
    *(v1 + 24) = v6;
    operator delete(v6);
    sub_4CB154(v4 - 136);
    _Unwind_Resume(a1);
  }

  sub_4CB154(v4 - 136);
  _Unwind_Resume(a1);
}

void sub_61F250(_Unwind_Exception *a1)
{
  sub_5ECB64(v2);
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 24) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

void sub_61F274(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a2;
  v4 = a1;
  v6 = sub_61AD8C(a1, *(*a1 + 1568), a2);
  v8 = v7;
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  *a3 = vnegq_f64(v9);
  a3[2] = 0;
  v34 = (a3 + 2);
  v35 = a3;
  *(a3 + 3) = 0u;
  a3[5] = 0x8000000080000000;
  a3[6] = 0;
  a3[7] = 0;
  a3[8] = 0;
  sub_64B998((a3 + 9));
  *a3 = v6;
  a3[1] = v8;
  __p = 0uLL;
  v38 = 0;
  sub_4CAFF8(v3, v4 + 64, &__p, v39);
  if (__p)
  {
    operator delete(__p);
  }

  v10 = v3[1] - *v3;
  if (v10)
  {
    v11 = 0;
    v12 = 0;
    v13 = v10 >> 4;
    v33 = v10 >> 4;
    do
    {
      v15 = sub_61B864(v39, v12);
      if ((*v15 & v16) != 0)
      {
        v17 = (*v3 + v11);
        v18 = *v17;
        v19 = v17[1];
        v21 = a3[3];
        v20 = a3[4];
        if (v21 < v20)
        {
          *v21 = v18;
          *(v21 + 8) = v19;
          v14 = v21 + 16;
        }

        else
        {
          v22 = *v34;
          v23 = v21 - *v34;
          v24 = v23 >> 4;
          v25 = (v23 >> 4) + 1;
          if (v25 >> 60)
          {
            sub_1794();
          }

          v26 = v3;
          v27 = v4;
          v28 = v20 - v22;
          if (v28 >> 3 > v25)
          {
            v25 = v28 >> 3;
          }

          if (v28 >= 0x7FFFFFFFFFFFFFF0)
          {
            v29 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v29 = v25;
          }

          if (v29)
          {
            if (!(v29 >> 60))
            {
              operator new();
            }

            sub_1808();
          }

          v30 = 16 * v24;
          *v30 = v18;
          *(v30 + 8) = v19;
          v14 = 16 * v24 + 16;
          v31 = (v30 - 16 * (v23 >> 4));
          memcpy(v31, v22, v23);
          v35[2] = v31;
          v35[3] = v14;
          v35[4] = 0;
          if (v22)
          {
            operator delete(v22);
          }

          v4 = v27;
          v3 = v26;
          v13 = v33;
          a3 = v35;
        }

        a3[3] = v14;
      }

      ++v12;
      v11 += 16;
    }

    while (v13 != v12);
  }

  v32 = sub_9274F4(*(v4 + 16), &qword_279B5A8);
  sub_64BC20(&__p, v32);
  sub_53D784((a3 + 9), &__p);
  sub_53A868(&__p);
  sub_61BA64(a3[9], "{nonBrkSpace}", &unk_229BE18);
  HIBYTE(v38) = 6;
  strcpy(&__p, "{gain}");
  sub_64AEEC(&v36, 0);
  sub_64E428(a3 + 9, &__p, a3, &v36);
  if (SHIBYTE(v38) < 0)
  {
    operator delete(__p);
  }

  HIBYTE(v38) = 6;
  strcpy(&__p, "{loss}");
  sub_64AEEC(&v36, 0);
  sub_64E428(a3 + 9, &__p, a3 + 1, &v36);
  if (SHIBYTE(v38) < 0)
  {
    operator delete(__p);
  }

  if (v39[0])
  {
    operator delete(v39[0]);
  }
}

void sub_61F5A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  v20 = *(v18 - 112);
  if (v20)
  {
    operator delete(v20);
  }

  sub_5ECAE4(a11);
  _Unwind_Resume(a1);
}

void sub_61F62C(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, void **a4@<X8>, __n128 a5@<Q2>)
{
  __p = 0;
  v59 = 0;
  v60 = 0;
  v6 = a3[1] - *a3;
  if (v6)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v53 = v6 >> 4;
    do
    {
      v12 = sub_61B864(a3 + 6, v10);
      if ((*v12 & v13) != 0)
      {
        v14 = v9;
        v15 = v9 >> 4;
        if (((v9 >> 4) + 1) >> 60)
        {
          sub_1794();
        }

        if (v9 >> 4 != -1)
        {
          if (!(((v9 >> 4) + 1) >> 60))
          {
            operator new();
          }

          sub_1808();
        }

        *(16 * v15) = *(*a3 + v8);
        v9 = 16 * v15 + 16;
        memcpy(0, 0, v14);
        v16 = sub_4CDF68(a3 + 3, v10);
        v17 = v59;
        if (v59 < v60)
        {
          *v59 = *v16;
          v11 = (v17 + 8);
        }

        else
        {
          v18 = __p;
          v19 = v59 - __p;
          v20 = (v59 - __p) >> 3;
          v21 = v20 + 1;
          if ((v20 + 1) >> 61)
          {
            sub_1794();
          }

          v22 = v60 - __p;
          if ((v60 - __p) >> 2 > v21)
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

          *(8 * v20) = *v16;
          v11 = 8 * v20 + 8;
          memcpy(0, v18, v19);
          __p = 0;
          v60 = 0;
          if (v18)
          {
            operator delete(v18);
          }
        }

        v59 = v11;
      }

      ++v10;
      v8 += 16;
    }

    while (v53 != v10);
    v6 = 0;
  }

  else
  {
    v9 = 0;
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  __src = v6;
  v24 = (v9 - v6) >> 4;
  v25 = v24 - 1;
  v26 = a1;
  if (v24 != 1)
  {
    v27 = 0;
    v28 = __src;
    do
    {
      sub_61BBEC(v26, v28, v28 + 2, &v55, a5.n128_u64[0]);
      if (v56.n128_u32[1] == 0x7FFFFFFF || v56.n128_u64[1] == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_29;
      }

      v32 = sub_61BDB0(&__p, v27);
      v33 = sub_4D1F50(a2, *v32);
      if (*(v26 + 120) == 1 && (v34 = (*v33 - **v33), *v34 >= 0x2Fu) && (v35 = v34[23]) != 0 && ((v36 = *(*v33 + v35), v36 != 9) ? (v37 = v36 == 20) : (v37 = 1), v37))
      {
        v57.n128_u32[2] = 1;
        v38 = a4[1];
        v39 = a4[2];
        if (v38 >= v39)
        {
          goto LABEL_52;
        }
      }

      else if (*(v26 + 121) == 1 && ((v40 = *(v33 + 9), (v40 & 0x40000000) != 0) ? (v41 = 2) : (v41 = v40 >> 31), !sub_314D1C(v33, v41)))
      {
        v57.n128_u32[2] = 2;
        v38 = a4[1];
        v39 = a4[2];
        if (v38 >= v39)
        {
LABEL_52:
          v42 = *a4;
          v43 = v38 - *a4;
          v44 = 0xAAAAAAAAAAAAAAABLL * (v43 >> 4) + 1;
          if (v44 > 0x555555555555555)
          {
            sub_1794();
          }

          v45 = 0xAAAAAAAAAAAAAAABLL * ((v39 - v42) >> 4);
          if (2 * v45 > v44)
          {
            v44 = 2 * v45;
          }

          if (v45 >= 0x2AAAAAAAAAAAAAALL)
          {
            v46 = 0x555555555555555;
          }

          else
          {
            v46 = v44;
          }

          if (v46)
          {
            if (v46 <= 0x555555555555555)
            {
              operator new();
            }

            sub_1808();
          }

          v47 = 16 * (v43 >> 4);
          v48 = v56;
          *v47 = v55;
          *(v47 + 16) = v48;
          *(v47 + 32) = v57;
          v30 = (v47 + 48);
          v49 = (v47 - v43);
          memcpy((v47 - v43), v42, v43);
          *a4 = v49;
          a4[1] = v30;
          a4[2] = 0;
          if (v42)
          {
            operator delete(v42);
          }

          v26 = a1;
          goto LABEL_28;
        }
      }

      else
      {
        v57.n128_u32[2] = 0;
        v38 = a4[1];
        v39 = a4[2];
        if (v38 >= v39)
        {
          goto LABEL_52;
        }
      }

      v29 = v55;
      a5 = v57;
      v38[1] = v56;
      v38[2] = a5;
      *v38 = v29;
      v30 = v38 + 3;
LABEL_28:
      a4[1] = v30;
LABEL_29:
      ++v27;
      v28 += 2;
    }

    while (v25 != v27);
  }

  sub_620B6C(v26, a4, &v55);
  v50 = *a4;
  if (*a4)
  {
    a4[1] = v50;
    operator delete(v50);
  }

  *a4 = v55;
  a4[2] = v56.n128_u64[0];
  if (__p)
  {
    v59 = __p;
    operator delete(__p);
  }
}

void sub_61FB14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  v23 = *v21;
  if (*v21)
  {
    *(v21 + 8) = v23;
    operator delete(v23);
    v24 = __p;
    if (!__p)
    {
LABEL_3:
      v25 = a12;
      if (!a12)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v24 = __p;
    if (!__p)
    {
      goto LABEL_3;
    }
  }

  operator delete(v24);
  v25 = a12;
  if (!a12)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(v25);
  _Unwind_Resume(exception_object);
}

void *sub_61FBA0@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a2[3];
  if (a2[2] == v4 || *a2 == 0x7FFFFFFFFFFFFFFFLL || a2[1] == 0x7FFFFFFFFFFFFFFFLL)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return result;
  }

  v8 = *(v4 - 16);
  v9 = result[6];
  if (result[7] >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = result[7];
  }

  if (v9 < 2)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v11 = v8 / v9;
    if (v11 >= 0.0)
    {
      if (v11 >= 4.50359963e15)
      {
        goto LABEL_20;
      }

      v12 = (v11 + v11) + 1;
    }

    else
    {
      if (v11 <= -4.50359963e15)
      {
        goto LABEL_20;
      }

      v12 = (v11 + v11) - 1 + (((v11 + v11) - 1) >> 63);
    }

    v11 = (v12 >> 1);
LABEL_20:
    if (v10 <= v11)
    {
      break;
    }

    if (--v9 < 2)
    {
      goto LABEL_24;
    }
  }

  v10 = v11;
LABEL_24:
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  result = sub_9274F4(result[2], &qword_279B5C0);
  v13 = a2[2];
  v14 = a2[3];
  v33[0] = *v13;
  v31 = 0;
  v32 = 0;
  v15 = (v14 - v13) >> 4;
  v16 = v15 - 1;
  if (v15 != 1)
  {
    v17 = result;
    v18 = 0;
    v19 = 2;
    do
    {
      v21 = a2[2];
      v22 = *(v21 + v18 + 8);
      v30 = *(v21 + v18 + 16);
      v23 = DWORD2(v30) - v22;
      if (DWORD2(v30) - v22 < 0)
      {
        v31 += fabs(v23);
      }

      else
      {
        v32 += v23;
      }

      v24 = (a2[3] - v21) >> 4;
      if (v30 - *&v33[0] >= v10 || v19 == v24)
      {
        sub_64BC20(v29, v17);
        v28 = 1;
        sub_64E428(v29, "{distance}", v33, &v28);
        v28 = 1;
        sub_64E428(v29, "{nextDistance}", &v30, &v28);
        sub_64AEEC(&v28, 0);
        sub_64E428(v29, "{ClimbDistance}", &v32, &v28);
        sub_64AEEC(&v28, 0);
        sub_64E428(v29, "{DescentDistance}", &v31, &v28);
        v26 = a3[1];
        if (v26 >= a3[2])
        {
          v20 = sub_6210A0(a3, v33, &v30, v29);
        }

        else
        {
          v27 = v30;
          *v26 = *&v33[0];
          v26[1] = v27;
          sub_55BD50((v26 + 2), v29);
          v20 = (v26 + 22);
        }

        a3[1] = v20;
        v32 = 0;
        *&v33[0] = v30;
        DWORD2(v33[0]) = DWORD2(v30);
        v31 = 0;
        result = sub_53A868(v29);
      }

      v18 += 16;
      ++v19;
      --v16;
    }

    while (v16);
  }

  return result;
}

void sub_61FEAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_53A868(va);
  sub_5ECB64(v5);
  _Unwind_Resume(a1);
}

void sub_61FEC8(uint64_t a1)
{
  nullsub_1();
  v3 = *v2;
  v4 = *(v2 + 8);
  if (*v2 != v4)
  {
    do
    {
      sub_61ED08(a1, v3, v9);
      sub_61A91C((v3 + 1501), v9);
      if (__p)
      {
        v16 = __p;
        operator delete(__p);
      }

      sub_53A868(&v14);
      v5 = v12;
      if (v12)
      {
        v6 = v13;
        v7 = v12;
        if (v13 != v12)
        {
          do
          {
            v8 = v6 - 176;
            sub_53A868((v6 - 160));
            v6 = v8;
          }

          while (v8 != v5);
          v7 = v12;
        }

        v13 = v5;
        operator delete(v7);
      }

      if (v10)
      {
        v11 = v10;
        operator delete(v10);
      }

      v3 += 1582;
    }

    while (v3 != v4);
  }
}

uint64_t sub_61FFC4(uint64_t a1, unint64_t a2, void *a3)
{
  if (*(a1 + 33) != 1 || a2 > 0xFFFFFFFEFFFFFFFFLL || a2 == 0)
  {
    return sub_620110(a1, a3);
  }

  v9 = sub_3B2978(*(a1 + 8));
  v10 = sub_6213F8(v9, a2, 0);
  v11 = (v10 - *v10);
  if (*v11 < 0xFu)
  {
    v13 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v11[7];
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    if (v12)
    {
      v14 = *(v10 + v12);
      if (v14 != -1)
      {
        v13 = v14;
      }
    }
  }

  v15 = sub_6213F8(v9, a2, 0);
  v16 = (v15 - *v15);
  if (*v16 < 0x11u || (v17 = v16[8]) == 0)
  {
    v7 = sub_620110(a1, a3);
    if (v13 != 0x7FFFFFFFFFFFFFFFLL)
    {
      return v13;
    }

    return v7;
  }

  if (v13 == 0x7FFFFFFFFFFFFFFFLL || *(v15 + v17) == -1)
  {
    v19 = sub_620110(a1, a3);
    if (v13 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return v19;
    }
  }

  return v13;
}

uint64_t sub_620110(uint64_t a1, void *a2)
{
  v22 = *(a1 + 136);
  LODWORD(v22) = 0;
  v4 = sub_3AF6B4(*(a1 + 8));
  sub_4CC1B0(a2, a1 + 120, &v22, v4, &v17);
  v5 = (v18 - v17) >> 4;
  if (v5 < 2)
  {
    v6 = 0;
    v7 = __p;
    if (!__p)
    {
      goto LABEL_12;
    }

LABEL_11:
    operator delete(v7);
    goto LABEL_12;
  }

  v8 = v5 - 1;
  if (v8)
  {
    v6 = 0;
    v9 = 0;
    v10 = *(v17 + 1);
    v11 = (v17 + 24);
    do
    {
      v12 = *v11;
      v11 += 2;
      v13 = v12;
      v14 = v12 - v10;
      v15 = fabs(v14);
      if (v14 >= 0.0)
      {
        v6 += v14;
      }

      else
      {
        v9 += v15;
      }

      v10 = v13;
      --v8;
    }

    while (v8);
    v7 = __p;
    if (__p)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v6 = 0;
    v7 = __p;
    if (__p)
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }

  return v6;
}

void sub_6203F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_620418(uint64_t a1, void *a2, void *a3)
{
  v10 = 18;
  strcpy(__p, "enable_aggregation");
  v5 = sub_5F9D0(a2, __p);
  if (v10 < 0)
  {
    v6 = v5;
    operator delete(*__p);
    v5 = v6;
  }

  *a1 = v5;
  v10 = 14;
  strcpy(__p, "flat_max_slope");
  v7 = sub_63D34(a2, __p);
  if (v10 < 0)
  {
    v8 = v7;
    operator delete(*__p);
    v7 = v8;
  }

  *(a1 + 8) = v7;
  operator new();
}

void sub_620650(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_620924(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_62094C(BOOL *a1, void *a2, void *a3)
{
  v7 = 21;
  strcpy(__p, "enable_elevation_info");
  v4 = sub_5F9D0(a2, __p);
  if (v7 < 0)
  {
    v5 = v4;
    operator delete(*__p);
    v4 = v5;
  }

  *a1 = v4;
  operator new();
}

void sub_620B40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_620B6C(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a3;
  if (*(a1 + 80))
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v4 = *a2;
    v5 = a2[1] - *a2;
    if (v5)
    {
      v7 = 0;
      v8 = 0;
      v9 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 4);
      v61 = a2;
      v62 = v3;
      do
      {
        v10 = v4 + 48 * v8;
        v11 = *v10;
        v12 = *(v10 + 8);
        v13 = *(v10 + 20);
        v14 = *(v10 + 32);
        v15 = *(v10 + 40);
        if (*v10 <= 0.0)
        {
          v16 = 216;
        }

        else
        {
          v16 = 160;
        }

        if (v8 + 1 != v9)
        {
          v17 = v4 + 48 * (v8 + 1);
          if (v15 == *(v17 + 40))
          {
            v18 = (a1 + v16);
            v19 = fabs(v12);
            v20 = fabs(v11);
            v21 = v9 - 1;
            v22 = *(v10 + 16);
            v23 = v9 - 2;
            v24 = *v10;
            while (1)
            {
              v25 = *v17;
              if (v11 > 0.0 != *v17 > 0.0)
              {
                goto LABEL_44;
              }

              v26 = *(a1 + 88);
              if (v19 <= v26)
              {
                goto LABEL_44;
              }

              v27 = *(v17 + 8);
              v28 = fabs(v27);
              if (v28 <= v26)
              {
                goto LABEL_44;
              }

              v29 = *(v17 + 16);
              if (v22 <= v29)
              {
                v30 = *(v17 + 16);
              }

              else
              {
                v30 = v22;
              }

              v31 = v18;
              if (v30 != 1)
              {
                if (v30 == 3)
                {
                  v31 = v18 + 2;
                }

                else
                {
                  v31 = v18 + 1;
                  if (v30 != 2)
                  {
                    v32 = 1.79769313e308;
                    goto LABEL_24;
                  }
                }
              }

              v32 = *v31 * *(a1 + 112);
LABEL_24:
              v33 = fabs(v24);
              v34 = *(a1 + 104);
              if (v34 >= v33 * *(a1 + 96))
              {
                v34 = v33 * *(a1 + 96);
              }

              v35 = fabs(v25);
              if (v22 != v29)
              {
                v36 = vabdd_f64(v12, v27);
                v37 = vabdd_f64(v24, v25) > v34 && v36 > v34;
                if (v37 && (v29 <= v22 || v20 < v32) && (v22 <= v29 || v35 < v32))
                {
                  goto LABEL_44;
                }
              }

              if (v35 > v33)
              {
                v24 = *v17;
              }

              if (v28 < fabs(v12))
              {
                v12 = *(v17 + 8);
              }

              v13 += *(v17 + 20);
              v14 += *(v17 + 32);
              if (v23 == v8)
              {
                v8 = v21;
                goto LABEL_44;
              }

              v38 = *(v17 + 88);
              v17 += 48;
              ++v8;
              v22 = v30;
              if (v15 != v38)
              {
                goto LABEL_44;
              }
            }
          }
        }

        v24 = *v10;
LABEL_44:
        v39 = *(v10 + 24);
        v40 = *(v10 + 44);
        if (v24 < 0.0)
        {
          v41 = 216;
        }

        else
        {
          v41 = 160;
        }

        v42 = (a1 + v41);
        v43 = fabs(v24);
        if (v43 >= v42[2])
        {
          v51 = 3;
          v52 = v3[2];
          if (v7 >= v52)
          {
            goto LABEL_68;
          }

          goto LABEL_4;
        }

        if (v43 >= v42[1])
        {
          v51 = 2;
          v52 = v3[2];
          if (v7 >= v52)
          {
            goto LABEL_68;
          }

          goto LABEL_4;
        }

        if (v43 < *v42)
        {
LABEL_65:
          v51 = 0;
          v52 = v3[2];
          if (v7 >= v52)
          {
            goto LABEL_68;
          }

          goto LABEL_4;
        }

        v45 = v42[6];
        v44 = v42 + 6;
        v46 = v45;
        v47 = v43 * *(v44 - 3) + *(v44 - 2);
        v63 = v47;
        v48 = v44 - 1;
        if (*(v44 - 1) >= v47)
        {
          v48 = &v63;
        }

        if (v47 >= v46)
        {
          v44 = v48;
        }

        v49 = *v44 * 100.0;
        if (v49 >= 0.0)
        {
          if (v49 >= 4.50359963e15)
          {
            goto LABEL_64;
          }

          v50 = (v49 + v49) + 1;
        }

        else
        {
          if (v49 <= -4.50359963e15)
          {
            goto LABEL_64;
          }

          v50 = (v49 + v49) - 1 + (((v49 + v49) - 1) >> 63);
        }

        v49 = (v50 >> 1);
LABEL_64:
        if (fabs(v13) < v49)
        {
          goto LABEL_65;
        }

        v51 = 1;
        v52 = v3[2];
        if (v7 >= v52)
        {
LABEL_68:
          v53 = *v3;
          v54 = v7 - *v3;
          v55 = 0xAAAAAAAAAAAAAAABLL * (v54 >> 4) + 1;
          if (v55 > 0x555555555555555)
          {
            sub_1794();
          }

          v56 = 0xAAAAAAAAAAAAAAABLL * ((v52 - v53) >> 4);
          if (2 * v56 > v55)
          {
            v55 = 2 * v56;
          }

          if (v56 >= 0x2AAAAAAAAAAAAAALL)
          {
            v57 = 0x555555555555555;
          }

          else
          {
            v57 = v55;
          }

          if (v57)
          {
            if (v57 <= 0x555555555555555)
            {
              operator new();
            }

            sub_1808();
          }

          v58 = 16 * (v54 >> 4);
          *v58 = v24;
          *(v58 + 8) = v12;
          *(v58 + 16) = v51;
          *(v58 + 20) = v13;
          *(v58 + 24) = v39;
          *(v58 + 32) = v14;
          *(v58 + 40) = v15;
          *(v58 + 44) = v40;
          v7 = v58 + 48;
          v59 = v58 - v54;
          memcpy((v58 - v54), v53, v54);
          v3 = v62;
          *v62 = v59;
          v62[1] = v7;
          v62[2] = 0;
          if (v53)
          {
            operator delete(v53);
          }

          a2 = v61;
          goto LABEL_5;
        }

LABEL_4:
        *v7 = v24;
        *(v7 + 8) = v12;
        *(v7 + 16) = v51;
        *(v7 + 20) = v13;
        *(v7 + 24) = v39;
        *(v7 + 32) = v14;
        *(v7 + 40) = v15;
        *(v7 + 44) = v40;
        v7 += 48;
LABEL_5:
        v3[1] = v7;
        ++v8;
        v4 = *a2;
        v9 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 4);
      }

      while (v8 < v9);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v60 = a2[1];
    if (v60 != *a2)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v60 - *a2) >> 4) <= 0x555555555555555)
      {
        operator new();
      }

      sub_1794();
    }
  }
}

void sub_62107C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (v11)
  {
    *(a11 + 8) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_6210A0(uint64_t *a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v4 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if ((v4 + 1) > 0x1745D1745D1745DLL)
  {
    sub_1794();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 4);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 4)) >= 0xBA2E8BA2E8BA2ELL)
  {
    v7 = 0x1745D1745D1745DLL;
  }

  else
  {
    v7 = v5;
  }

  v18 = a1;
  if (v7)
  {
    if (v7 <= 0x1745D1745D1745DLL)
    {
      operator new();
    }

    sub_1808();
  }

  v8 = 176 * v4;
  __p = 0;
  v15 = v8;
  v16 = 176 * v4;
  v17 = 0;
  v9 = *a3;
  *v8 = *a2;
  *(v8 + 8) = v9;
  sub_55BD50(176 * v4 + 16, a4);
  v16 += 176;
  sub_621224(a1, &__p);
  v10 = a1[1];
  v12 = v15;
  for (i = v16; v16 != v12; i = v16)
  {
    v16 = i - 176;
    sub_53A868(i - 160);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v10;
}

void sub_621210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_6213A0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_621224(uint64_t *result, void *a2)
{
  v3 = result;
  v5 = *result;
  v4 = result[1];
  v6 = a2[1] + *result - v4;
  if (v4 != *result)
  {
    v7 = *result;
    v8 = a2[1] + *result - v4;
    do
    {
      *v8 = *v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 16) = 0;
      *(v8 + 16) = *(v7 + 16);
      *(v8 + 32) = *(v7 + 32);
      *(v7 + 16) = 0;
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 40) = *(v7 + 40);
      *(v8 + 56) = *(v7 + 56);
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v8 + 64) = 0;
      *(v8 + 72) = 0;
      *(v8 + 80) = 0;
      *(v8 + 64) = *(v7 + 64);
      *(v8 + 80) = *(v7 + 80);
      *(v7 + 64) = 0;
      *(v7 + 72) = 0;
      *(v7 + 80) = 0;
      *(v8 + 88) = 0;
      *(v8 + 96) = 0;
      *(v8 + 104) = 0;
      *(v8 + 88) = *(v7 + 88);
      v9 = *(v7 + 112);
      *(v8 + 104) = *(v7 + 104);
      *(v7 + 88) = 0;
      *(v7 + 96) = 0;
      *(v7 + 104) = 0;
      *(v7 + 112) = 0;
      *(v8 + 112) = v9;
      v10 = *(v7 + 120);
      *(v8 + 124) = *(v7 + 124);
      *(v8 + 120) = v10;
      v11 = *(v7 + 128);
      *(v8 + 144) = *(v7 + 144);
      *(v8 + 128) = v11;
      *(v7 + 136) = 0;
      *(v7 + 144) = 0;
      *(v7 + 128) = 0;
      v12 = *(v7 + 152);
      *(v8 + 168) = *(v7 + 168);
      *(v8 + 152) = v12;
      *(v7 + 160) = 0;
      *(v7 + 168) = 0;
      *(v7 + 152) = 0;
      v7 += 176;
      v8 += 176;
    }

    while (v7 != v4);
    do
    {
      result = sub_53A868(v5 + 16);
      v5 += 176;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v13 = *v3;
  *v3 = v6;
  v3[1] = v13;
  a2[1] = v13;
  v14 = v3[1];
  v3[1] = a2[2];
  a2[2] = v14;
  v15 = v3[2];
  v3[2] = a2[3];
  a2[3] = v15;
  *a2 = a2[1];
  return result;
}

uint64_t sub_6213A0(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 176;
    sub_53A868(i - 160);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

unint64_t sub_6213F8(uint64_t a1, unint64_t a2, int a3)
{
  v17 = a2;
  v5 = sub_4A084C(a1 + 16, a2, a3);
  if (!v5)
  {
    v7 = 0;
    goto LABEL_7;
  }

  v6 = &v5[-*v5];
  if (*v6 >= 7u)
  {
    v7 = *(v6 + 3);
    if (v7)
    {
      v7 = (v7 + v5 + *(v7 + v5));
      if (*v7 > HIDWORD(a2))
      {
        return &v7[HIDWORD(a2) + 1] + v7[HIDWORD(a2) + 1];
      }
    }

LABEL_7:
    if (a3 != 1)
    {
      goto LABEL_8;
    }

    return 0;
  }

  v7 = 0;
  if (a3 != 1)
  {
LABEL_8:
    if (!a3)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v14[0] = sub_7FCF0(0x26u);
      v14[1] = v10;
      sub_62155C("Failed to acquire hiking tour at ", &v17, " in layer ", v14, v15);
      if ((v16 & 0x80u) == 0)
      {
        v11 = v15;
      }

      else
      {
        v11 = v15[0];
      }

      if ((v16 & 0x80u) == 0)
      {
        v12 = v16;
      }

      else
      {
        v12 = v15[1];
      }

      v13 = sub_2D390(exception, v11, v12);
    }

    return &v7[HIDWORD(a2) + 1] + v7[HIDWORD(a2) + 1];
  }

  return 0;
}

void sub_62152C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_62155C@<X0>(const char *a1@<X0>, void *a2@<X1>, const char *a3@<X2>, uint64_t *a4@<X3>, _BYTE *a5@<X8>)
{
  sub_D7B0(v20);
  v10 = strlen(a1);
  v11 = sub_4A5C(&v21, a1, v10);
  v12 = sub_2FF718(v11, __ROR8__(*a2, 32));
  v13 = strlen(a3);
  v14 = sub_4A5C(v12, a3, v13);
  sub_4A5C(v14, *a4, a4[1]);
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
      a5[23] = 0;
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

  a5[23] = v15;
  if (v15)
  {
    memmove(a5, v17, v15);
  }

LABEL_12:
  a5[v15] = 0;
  v21 = v18;
  if (v29 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v23);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_6217FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

void sub_624934(_Unwind_Exception *a1)
{
  if (qword_279B590)
  {
    qword_279B598 = qword_279B590;
    operator delete(qword_279B590);
  }

  _Unwind_Resume(a1);
}

void sub_624BCC(BOOL *a1, uint64_t *a2, uint64_t a3)
{
  HIBYTE(v8[2]) = 20;
  strcpy(v8, "EnrouteNoticeBuilder");
  memset(v7, 0, sizeof(v7));
  v6 = sub_3AEC94(a2, v8, v7);
  sub_41D60C(v6, 3u, *(a3 + 1566), &v9);
  sub_6294F4(a1, &v9, a2, a3);
}

void sub_624DB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

void sub_624DFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20)
{
  sub_5C010(&a20);
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_624E38(uint64_t a1)
{
  v2 = *(a1 + 152);
  *(a1 + 152) = 0;
  if (v2)
  {
    sub_6D2D60(v2);
    operator delete();
  }

  v3 = *(a1 + 144);
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return a1;
}

void sub_624ED8(_BYTE *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  sub_625280(a1, a2, a3);
  sub_625830(a1, a2, &v38);
  sub_6399F0(a3, a3[1], v38, v39, 0x4FCACE213F2B3885 * ((v39 - v38) >> 3));
  sub_626470(a1, a2, &v36);
  sub_6399F0(a3, a3[1], v36, v37, 0x4FCACE213F2B3885 * ((v37 - v36) >> 3));
  sub_6267E8(a1, &v34);
  sub_6399F0(a3, a3[1], v34, v35, 0x4FCACE213F2B3885 * ((v35 - v34) >> 3));
  sub_627F18(a1, &v32);
  sub_6399F0(a3, a3[1], v32, v33, 0x4FCACE213F2B3885 * ((v33 - v32) >> 3));
  if (a1[13])
  {
    sub_62AD2C(a2, v30);
    v6 = *v30;
  }

  else
  {
    v31 = 0;
    v6 = 0uLL;
    *v30 = 0u;
  }

  sub_6399F0(a3, a3[1], v6, *(&v6 + 1), 0x4FCACE213F2B3885 * ((*(&v6 + 1) - v6) >> 3));
  sub_628388(a1, a2, &__p);
  sub_6399F0(a3, a3[1], __p, v29, 0x4FCACE213F2B3885 * ((v29 - __p) >> 3));
  v7 = a3[1];
  v8 = 126 - 2 * __clz(0x4FCACE213F2B3885 * ((v7 - *a3) >> 3));
  if (v7 == *a3)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  sub_63B128(*a3, v7, &v40, v9, 1);
  v10 = __p;
  if (__p)
  {
    v11 = v29;
    v12 = __p;
    if (v29 != __p)
    {
      do
      {
        v11 -= 616;
        sub_5C2320(v11);
      }

      while (v11 != v10);
      v12 = __p;
    }

    v29 = v10;
    operator delete(v12);
  }

  v13 = v30[0];
  if (v30[0])
  {
    v14 = v30[1];
    v15 = v30[0];
    if (v30[1] != v30[0])
    {
      do
      {
        v14 -= 616;
        sub_5C2320(v14);
      }

      while (v14 != v13);
      v15 = v30[0];
    }

    v30[1] = v13;
    operator delete(v15);
  }

  v16 = v32;
  if (v32)
  {
    v17 = v33;
    v18 = v32;
    if (v33 != v32)
    {
      do
      {
        v17 -= 616;
        sub_5C2320(v17);
      }

      while (v17 != v16);
      v18 = v32;
    }

    v33 = v16;
    operator delete(v18);
  }

  v19 = v34;
  if (v34)
  {
    v20 = v35;
    v21 = v34;
    if (v35 != v34)
    {
      do
      {
        v20 -= 616;
        sub_5C2320(v20);
      }

      while (v20 != v19);
      v21 = v34;
    }

    v35 = v19;
    operator delete(v21);
  }

  v22 = v36;
  if (v36)
  {
    v23 = v37;
    v24 = v36;
    if (v37 != v36)
    {
      do
      {
        v23 -= 616;
        sub_5C2320(v23);
      }

      while (v23 != v22);
      v24 = v36;
    }

    v37 = v22;
    operator delete(v24);
  }

  v25 = v38;
  if (v38)
  {
    v26 = v39;
    v27 = v38;
    if (v39 != v38)
    {
      do
      {
        v26 -= 616;
        sub_5C2320(v26);
      }

      while (v26 != v25);
      v27 = v38;
    }

    v39 = v25;
    operator delete(v27);
  }
}

void sub_6251CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v18 = va_arg(va1, char *);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  sub_5EC9F0(va);
  sub_5EC9F0(va1);
  sub_5EC9F0((v16 - 88));
  sub_5EC9F0((v16 - 64));
  sub_5EC9F0(v15);
  _Unwind_Resume(a1);
}

void sub_62524C(_Unwind_Exception *a1)
{
  sub_5EC9F0((v2 - 64));
  sub_5EC9F0(v1);
  _Unwind_Resume(a1);
}

void sub_625280(_BYTE *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (*a1 & 1) != 0 || (a1[1] & 1) != 0 || (a1[2] & 1) != 0 || (a1[3] & 1) != 0 || (a1[4] & 1) != 0 || (a1[5] & 1) != 0 || (a1[8] & 1) != 0 || (a1[12])
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v5 = (a2[139] - a2[138]) >> 3;
    v6 = 0x3795876FF3795877 * v5 - 1;
    if (0x3795876FF3795877 * v5 != 1)
    {
      v7 = 0;
      v8 = 640;
      do
      {
        v9 = sub_62A06C(a1, v7, a2);
        if ((v9 & 0x100) != 0)
        {
          if (v9 > 0x16u)
          {
            v10 = 0;
          }

          else
          {
            v10 = dword_229C388[v9 & 0x1F];
          }

          sub_58738C(v10);
        }

        ++v7;
        v8 += 2616;
      }

      while (v6 != v7);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void sub_625718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *(v3 + 8) = v4;
  sub_62A6D8(va);
  sub_53E440(v5 - 216);
  sub_5EC9F0(v3);
  _Unwind_Resume(a1);
}

void sub_6257A0(_Unwind_Exception *a1)
{
  sub_53E440(v2 - 216);
  sub_5EC9F0(v1);
  _Unwind_Resume(a1);
}

void sub_625830(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (*(a1 + 6))
  {
    v3 = a2[1530];
    v4 = a2[1531];
    if (v3 == v4)
    {
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
    }

    else
    {
      v5 = 0;
      v6 = 0;
      do
      {
        if (*(v3 + 4) == 3 && *(v3 + 10) == 0)
        {
          v8 = v5 - v6;
          v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v6) >> 4);
          v10 = v9 + 1;
          if (v9 + 1 > 0x555555555555555)
          {
            sub_1794();
          }

          if (0x5555555555555556 * (-v6 >> 4) > v10)
          {
            v10 = 0x5555555555555556 * (-v6 >> 4);
          }

          if (0xAAAAAAAAAAAAAAABLL * (-v6 >> 4) >= 0x2AAAAAAAAAAAAAALL)
          {
            v11 = 0x555555555555555;
          }

          else
          {
            v11 = v10;
          }

          if (v11)
          {
            if (v11 <= 0x555555555555555)
            {
              operator new();
            }

            sub_1808();
          }

          v12 = v6;
          v13 = (16 * ((v5 - v6) >> 4));
          v14 = *v3;
          v15 = v3[2];
          v13[1] = v3[1];
          v13[2] = v15;
          *v13 = v14;
          v5 = (v13 + 3);
          v6 = 48 * v9 + 48 * (v8 / -48);
          v16 = v12;
          memcpy(&v13[3 * (v8 / -48)], v12, v8);
          if (v16)
          {
            operator delete(v16);
          }
        }

        v3 += 3;
      }

      while (v3 != v4);
      if (v6 != v5)
      {
        *a3 = 0;
        a3[1] = 0;
        a3[2] = 0;
        v33 = 0;
        __src = 0;
        v17 = sub_4D1DC0(a2);
        if (v17)
        {
          v18 = 0;
          for (i = 0; i != v17; ++i)
          {
            v20 = __src;
            v21 = (v33 - __src) >> 3;
            v22 = v21 + 1;
            if ((v21 + 1) >> 61)
            {
              sub_1794();
            }

            v23 = -__src;
            if (-__src >> 2 > v22)
            {
              v22 = v23 >> 2;
            }

            if (v23 >= 0x7FFFFFFFFFFFFFF8)
            {
              v24 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v24 = v22;
            }

            if (v24)
            {
              if (!(v24 >> 61))
              {
                operator new();
              }

              sub_1808();
            }

            v25 = (8 * v21);
            v26 = &v25[-((v33 - __src) >> 3)];
            *v25 = v18;
            v27 = v25 + 1;
            memcpy(v26, __src, v33 - __src);
            __src = v26;
            if (v20)
            {
              operator delete(v20);
            }

            v33 = v27;
            v18 += sub_4D23F8(a2, i, v28);
          }
        }

        if (*v6 <= 0.0)
        {
          v29 = 4;
        }

        else
        {
          v29 = 3;
        }

        sub_58738C(v29);
      }

      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      if (v6)
      {
        operator delete(v6);
      }
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void sub_6262C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char **a18)
{
  v19 = STACK[0x2D0];
  if (STACK[0x2D0])
  {
    STACK[0x2D8] = v19;
    operator delete(v19);
  }

  sub_5EC9F0(a18);
  if (a9)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_626470@<X0>(unint64_t result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = *(result + 11);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (v4 == 1)
  {
    v6 = result;
    v21 = 0;
    result = sub_4D1DC0(a2);
    v7 = result;
    if (result)
    {
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v10 = sub_4D1F50(a2, v9);
        if (!v8)
        {
          break;
        }

        v12 = (*v10 - **v10);
        v13 = *v12;
        if (*(v10 + 38))
        {
          if (v13 < 0x47)
          {
            goto LABEL_23;
          }

          v14 = v12[35];
          if (!v14)
          {
            goto LABEL_23;
          }

          v15 = 0x10000;
        }

        else
        {
          if (v13 < 0x47)
          {
            goto LABEL_23;
          }

          v14 = v12[35];
          if (!v14)
          {
            goto LABEL_23;
          }

          v15 = 0x8000;
        }

        v8 = (*(*v10 + v14) & v15) != 0;
LABEL_24:
        result = sub_4D23F8(a2, v9, v11);
        v21 += result;
        if (v7 == ++v9)
        {
          return result;
        }
      }

      if (*(v6 + 11) == 1)
      {
        v16 = *v10;
        v17 = (*v10 - **v10);
        v18 = *v17;
        if (*(v10 + 38))
        {
          if (v18 >= 0x47)
          {
            v19 = v17[35];
            if (v19)
            {
              if ((*&v16[v19] & 0x10000) != 0)
              {
                goto LABEL_22;
              }
            }
          }
        }

        else if (v18 >= 0x47)
        {
          v20 = v17[35];
          if (v20)
          {
            if ((*&v16[v20] & 0x8000) != 0)
            {
LABEL_22:
              sub_58738C(6u);
            }
          }
        }
      }

LABEL_23:
      v8 = 0;
      goto LABEL_24;
    }
  }

  return result;
}

void sub_626714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_53A868(v4 + 296);
  sub_53A868(v4 + 136);
  sub_53E440(v4 + 16);
  *(v3 + 8) = v4;
  sub_62A6D8(va);
  sub_53E440(v5 - 216);
  sub_5EC9F0(v3);
  _Unwind_Resume(a1);
}

void sub_62677C(_Unwind_Exception *a1)
{
  sub_53E440(v2 - 216);
  sub_5EC9F0(v1);
  _Unwind_Resume(a1);
}

void sub_6267E8(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (*(a1 + 8) == 1)
  {
    operator new();
  }
}

void sub_627BD4(_Unwind_Exception *a1)
{
  if (*v1)
  {
    sub_21E28EC(v1, *v1);
  }

  _Unwind_Resume(a1);
}

void sub_627F18(uint64_t a1@<X0>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (*(a1 + 14) == 1)
  {
    sub_58738C(0xAu);
  }
}

void sub_6282B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char **a9)
{
  sub_53E440(v9 - 224);
  sub_5EC9F0(a9);
  _Unwind_Resume(a1);
}

void sub_6282E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_53A868(v6 + 296);
  sub_53A868(v6 + 136);
  sub_53E440(v6 + 16);
  *(a4 + 8) = v6;
  sub_62A6D8(va);
  operator delete(v5);
  sub_53E440(v7 - 224);
  sub_5EC9F0(a4);
  _Unwind_Resume(a1);
}

void sub_628388(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + 16);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (v4 == 1)
  {
    v8 = a2[139];
    if (a2[138] != v8)
    {
      v5 = a2[138];
      do
      {
        v6 = *(v5 + 1960);
        v9 = v5;
        if (v6 != *(v5 + 1968))
        {
          if (*(a1 + 17) == 1 && sub_67E34C(v6) >= 2)
          {
            vcvtd_n_f64_s64(sub_4D2544(a2, **v6, 0, *(*(v6 + 8) - 8), 1u, v7), 1uLL);
          }

          sub_58738C(0x14u);
        }

        v5 += 2616;
      }

      while (v9 + 2616 != v8);
    }
  }
}

void sub_628C9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  if (*(v15 + 87) < 0)
  {
    operator delete(*(v15 + 64));
  }

  sub_55DB28(v14);
  *(v13 + 8) = v15;
  sub_62A6D8(va);
  sub_53E440(v16 - 248);
  sub_5EC9F0(v13);
  _Unwind_Resume(a1);
}

void sub_628DD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_53A868(v14 + 160);
  sub_53A868(va);
  sub_53E440(v15 - 248);
  sub_5EC9F0(v13);
  _Unwind_Resume(a1);
}

double sub_628E40(_BYTE *a1)
{
  nullsub_1();
  v4 = *v3;
  v5 = *(v3 + 8);
  if (*v3 != v5)
  {
    do
    {
      sub_624ED8(a1, v4, &v12);
      v7 = v4[1534];
      if (v7)
      {
        v8 = v4[1535];
        v6 = v4[1534];
        if (v8 != v7)
        {
          v9 = v8 - 600;
          while (1)
          {
            sub_53A868(v9 + 440);
            sub_53A868(v9 + 280);
            sub_53A868(v9 + 120);
            if (*(v9 + 103) < 0)
            {
              operator delete(*(v9 + 80));
              if ((*(v9 + 71) & 0x80000000) == 0)
              {
LABEL_12:
                v11 = *(v9 + 32);
                if (v11 == -1)
                {
                  goto LABEL_9;
                }

LABEL_16:
                (off_266BE00[v11])(&v14, v9);
                goto LABEL_9;
              }
            }

            else if ((*(v9 + 71) & 0x80000000) == 0)
            {
              goto LABEL_12;
            }

            operator delete(*(v9 + 48));
            v11 = *(v9 + 32);
            if (v11 != -1)
            {
              goto LABEL_16;
            }

LABEL_9:
            *(v9 + 32) = -1;
            v10 = v9 - 16;
            v9 -= 616;
            if (v10 == v7)
            {
              v6 = v4[1534];
              break;
            }
          }
        }

        v4[1535] = v7;
        operator delete(v6);
      }

      result = *&v12;
      *(v4 + 767) = v12;
      v4[1536] = v13;
      v4 += 1582;
    }

    while (v4 != v5);
  }

  return result;
}

void sub_628F88(_DWORD *a1, void *a2)
{
  v3 = 16;
  strcpy(__p, "cycling_dismount");
  *a1 = sub_629380(a2, __p);
  if (v3 < 0)
  {
    operator delete(*__p);
  }

  operator new();
}

void sub_629334(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_629380(void *a1, uint64_t *a2)
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

void sub_6294BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_6294F4(BOOL *a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v23 = 15;
  strcpy(__p, "enable_elevator");
  v7 = sub_5F9D0(a2, __p);
  if (v23 < 0)
  {
    v8 = v7;
    operator delete(*__p);
    v7 = v8;
  }

  *a1 = v7;
  v23 = 16;
  strcpy(__p, "enable_escalator");
  v9 = sub_5F9D0(a2, __p);
  if (v23 < 0)
  {
    v10 = v9;
    operator delete(*__p);
    v9 = v10;
  }

  a1[1] = v9;
  v23 = 13;
  strcpy(__p, "enable_stairs");
  v11 = sub_5F9D0(a2, __p);
  if (v23 < 0)
  {
    v12 = v11;
    operator delete(*__p);
    v11 = v12;
  }

  a1[2] = v11;
  v23 = 18;
  strcpy(__p, "enable_stairs_down");
  v13 = sub_5F9D0(a2, __p);
  if (v23 < 0)
  {
    v14 = v13;
    operator delete(*__p);
    v13 = v14;
  }

  a1[3] = v13;
  v23 = 16;
  strcpy(__p, "enable_stairs_up");
  v15 = sub_5F9D0(a2, __p);
  if (v23 < 0)
  {
    v16 = v15;
    operator delete(*__p);
    v15 = v16;
  }

  a1[4] = v15;
  v23 = 20;
  strcpy(__p, "enable_stairs_bridge");
  v17 = sub_5F9D0(a2, __p);
  if (v23 < 0)
  {
    v18 = v17;
    operator delete(*__p);
    v17 = v18;
  }

  a1[5] = v17;
  v23 = 18;
  strcpy(__p, "enable_steep_hills");
  v19 = sub_5F9D0(a2, __p);
  if (v23 < 0)
  {
    v20 = v19;
    operator delete(*__p);
    v19 = v20;
  }

  a1[6] = v19;
  v23 = 20;
  strcpy(__p, "enable_slope_display");
  if (sub_5F9D0(a2, __p))
  {
    v21 = 1;
    if ((v23 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v21 = sub_3B0454(a3);
    if ((v23 & 0x80000000) == 0)
    {
LABEL_18:
      a1[7] = v21;
      operator new();
    }
  }

  operator delete(*__p);
  goto LABEL_18;
}

void sub_629FF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_62A06C(_BYTE *a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_50EA30((a3 + 1104), a2);
  v7 = sub_50EA30((a3 + 1104), a2 + 1);
  if (*a1 == 1 && *(v6 + 632) != -1)
  {
    v12 = 1;
    v13 = 20;
    return v13 | (v12 << 8);
  }

  if (a1[12] == 1 && *(v6 + 160) == 22)
  {
    v12 = 1;
    v13 = 15;
    return v13 | (v12 << 8);
  }

  if (a1[15] == 1 && *(v6 + 384) != 2 && *(v7 + 384) == 2)
  {
    operator new();
  }

  if (a1[1] == 1)
  {
    v11 = *(v6 + 640);
    v12 = *(v6 + 680);
    if (v11 != -1 && v12 == 1)
    {
      v13 = 1;
      return v13 | (v12 << 8);
    }

    if (v11 != -1 && v12 == 2)
    {
      v12 = 1;
      v13 = 2;
      return v13 | (v12 << 8);
    }

    if (v11 != -1)
    {
      v13 = 0;
      goto LABEL_43;
    }
  }

  v15 = *(v6 + 2420);
  if (a1[5] == 1 && v15 == 1)
  {
    v12 = 1;
    v13 = 6;
    return v13 | (v12 << 8);
  }

  v13 = 0;
  if (v15)
  {
    v16 = a1[5];
  }

  else
  {
    v16 = 0;
  }

  if (a1[2] != 1 || *(v6 + 624) == -1)
  {
    v12 = 0;
    return v13 | (v12 << 8);
  }

  v12 = 0;
  if ((v16 & 1) == 0)
  {
    v17 = *(v6 + 680);
    if (a1[4] == 1 && v17 == 1)
    {
      v12 = 1;
      v13 = 4;
      return v13 | (v12 << 8);
    }

    if ((a1[3] & (v17 == 2)) != 0)
    {
      v13 = 5;
    }

    else
    {
      v13 = 3;
    }

LABEL_43:
    v12 = 1;
  }

  return v13 | (v12 << 8);
}

void sub_62A290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_62A2AC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, std::string *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_64B998(&v42);
  sub_64B998(&v57);
  sub_64B998(&v72);
  sub_638CC4(a2, __p);
  v16 = v41;
  v17 = v41;
  if ((v41 & 0x80u) != 0)
  {
    v16 = __p[1];
  }

  if (v16)
  {
    v18 = sub_9274F4(*(a1 + 136), __p);
    sub_64BC50(v39, v18, (*(a1 + 120) + 1177));
    sub_53D784(&v42, v39);
    sub_53A868(v39);
    sub_63E2CC(a1, a2, a3, a4, a6, v39, a5);
    sub_53D784(&v57, v39);
    sub_53A868(v39);
    sub_63E808(a7, &v42);
    *a8 = v42;
    v19 = v45;
    *(a8 + 16) = v43;
    v42 = 0uLL;
    *(a8 + 24) = v44;
    *(a8 + 40) = v19;
    v43 = 0;
    v44 = 0uLL;
    v45 = 0;
    *(a8 + 48) = v46;
    v20 = v49;
    *(a8 + 64) = v47;
    v46 = 0uLL;
    *(a8 + 72) = v48;
    v47 = 0;
    v48 = 0uLL;
    v49 = 0;
    v21 = v50;
    *(a8 + 88) = v20;
    *(a8 + 96) = v21;
    LODWORD(v21) = v51;
    *(a8 + 108) = v52;
    *(a8 + 104) = v21;
    v22 = v53;
    v23 = v56;
    *(a8 + 128) = v54;
    *(a8 + 112) = v22;
    v50 = 0;
    v53 = 0uLL;
    v24 = v55;
    *(a8 + 152) = v23;
    *(a8 + 136) = v24;
    v56 = 0;
    v54 = 0;
    v55 = 0uLL;
    *(a8 + 160) = v57;
    v25 = v60;
    *(a8 + 176) = v58;
    v57 = 0uLL;
    v58 = 0;
    *(a8 + 184) = v59;
    *(a8 + 200) = v25;
    v59 = 0uLL;
    *(a8 + 208) = v61;
    *(a8 + 224) = v62;
    v62 = 0;
    v60 = 0;
    v61 = 0uLL;
    *(a8 + 232) = v63;
    v63 = 0uLL;
    v26 = v65;
    *(a8 + 248) = v64;
    *(a8 + 256) = v26;
    LODWORD(v26) = v66;
    *(a8 + 268) = v67;
    *(a8 + 264) = v26;
    v27 = v68;
    v28 = v71;
    *(a8 + 288) = v69;
    *(a8 + 272) = v27;
    v64 = 0;
    v65 = 0;
    v68 = 0uLL;
    v29 = v70;
    *(a8 + 312) = v28;
    *(a8 + 296) = v29;
    v71 = 0;
    v69 = 0;
    v70 = 0uLL;
    *(a8 + 320) = v72;
    v72 = 0uLL;
    v30 = v73;
    v31 = v74;
    v73 = 0;
    *(a8 + 336) = v30;
    *(a8 + 344) = v31;
    v74 = 0;
    v32 = v75;
    v33 = v76;
    v75 = 0uLL;
    *(a8 + 352) = v32;
    *(a8 + 368) = v33;
    v76 = 0uLL;
    v34 = v78;
    *(a8 + 384) = v77;
    *(a8 + 392) = v34;
    *(a8 + 400) = v79;
    v77 = 0;
    v78 = 0;
    v79 = 0uLL;
    *(a8 + 416) = v80;
    LODWORD(v30) = v81;
    *(a8 + 428) = v82;
    *(a8 + 424) = v30;
    v35 = v83;
    v36 = v86;
    *(a8 + 448) = v84;
    *(a8 + 432) = v35;
    v80 = 0;
    v83 = 0uLL;
    v84 = 0;
    v37 = v85;
    *(a8 + 472) = v36;
    *(a8 + 456) = v37;
    v85 = 0uLL;
    v86 = 0;
    v17 = v41;
  }

  else
  {
    *(a8 + 448) = 0u;
    *(a8 + 464) = 0u;
    *(a8 + 416) = 0u;
    *(a8 + 432) = 0u;
    *(a8 + 384) = 0u;
    *(a8 + 400) = 0u;
    *(a8 + 352) = 0u;
    *(a8 + 368) = 0u;
    *(a8 + 320) = 0u;
    *(a8 + 336) = 0u;
    *(a8 + 288) = 0u;
    *(a8 + 304) = 0u;
    *(a8 + 256) = 0u;
    *(a8 + 272) = 0u;
    *(a8 + 224) = 0u;
    *(a8 + 240) = 0u;
    *(a8 + 192) = 0u;
    *(a8 + 208) = 0u;
    *(a8 + 160) = 0u;
    *(a8 + 176) = 0u;
    *(a8 + 128) = 0u;
    *(a8 + 144) = 0u;
    *(a8 + 96) = 0u;
    *(a8 + 112) = 0u;
    *(a8 + 64) = 0u;
    *(a8 + 80) = 0u;
    *(a8 + 32) = 0u;
    *(a8 + 48) = 0u;
    *a8 = 0u;
    *(a8 + 16) = 0u;
    sub_64B998(a8);
    sub_64B998(a8 + 160);
    sub_64B998(a8 + 320);
  }

  if ((v17 & 0x80) != 0)
  {
    operator delete(__p[0]);
  }

  sub_53A868(&v72);
  sub_53A868(&v57);
  return sub_53A868(&v42);
}

void sub_62A644(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36)
{
  sub_53A868(v36 + 160);
  sub_53A868(v36);
  if (a35 < 0)
  {
    operator delete(__p);
  }

  sub_62A6D8(&a36);
  _Unwind_Resume(a1);
}

uint64_t sub_62A6D8(uint64_t a1)
{
  sub_53A868(a1 + 320);
  sub_53A868(a1 + 160);

  return sub_53A868(a1);
}

unint64_t sub_62A71C(void *a1, unint64_t a2)
{
  if (a2 >= (a1[1] - *a1) >> 3)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(&v16, ",size=", &v15);
    std::to_string(&v13, (a1[1] - *a1) >> 3);
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

  return *a1 + 8 * a2;
}

void sub_62A838(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

uint64_t sub_62A918@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_64B998(&v38);
  sub_64B998(&v53);
  sub_64B998(&v68);
  sub_638CC4(a2, __p);
  v12 = v37;
  v13 = v37;
  if ((v37 & 0x80u) != 0)
  {
    v12 = __p[1];
  }

  if (v12)
  {
    v14 = sub_9274F4(*(a1 + 136), __p);
    sub_64BC50(v35, v14, (*(a1 + 120) + 1177));
    sub_53D784(&v38, v35);
    sub_53A868(v35);
    sub_63E9E8(v35, a1, a2, a3, a4, a5);
    sub_53D784(&v53, v35);
    sub_53A868(v35);
    *a6 = v38;
    v15 = v41;
    *(a6 + 16) = v39;
    v38 = 0uLL;
    *(a6 + 24) = v40;
    *(a6 + 40) = v15;
    v39 = 0;
    v40 = 0uLL;
    v41 = 0;
    *(a6 + 48) = v42;
    v16 = v45;
    *(a6 + 64) = v43;
    v42 = 0uLL;
    *(a6 + 72) = v44;
    v43 = 0;
    v44 = 0uLL;
    v45 = 0;
    v17 = v46;
    *(a6 + 88) = v16;
    *(a6 + 96) = v17;
    LODWORD(v17) = v47;
    *(a6 + 108) = v48;
    *(a6 + 104) = v17;
    v18 = v49;
    v19 = v52;
    *(a6 + 128) = v50;
    *(a6 + 112) = v18;
    v46 = 0;
    v49 = 0uLL;
    v20 = v51;
    *(a6 + 152) = v19;
    *(a6 + 136) = v20;
    v52 = 0;
    v50 = 0;
    v51 = 0uLL;
    *(a6 + 160) = v53;
    v21 = v56;
    *(a6 + 176) = v54;
    v53 = 0uLL;
    v54 = 0;
    *(a6 + 184) = v55;
    *(a6 + 200) = v21;
    v55 = 0uLL;
    *(a6 + 208) = v57;
    *(a6 + 224) = v58;
    v58 = 0;
    v56 = 0;
    v57 = 0uLL;
    *(a6 + 232) = v59;
    v59 = 0uLL;
    v22 = v61;
    *(a6 + 248) = v60;
    *(a6 + 256) = v22;
    LODWORD(v22) = v62;
    *(a6 + 268) = v63;
    *(a6 + 264) = v22;
    v23 = v64;
    v24 = v67;
    *(a6 + 288) = v65;
    *(a6 + 272) = v23;
    v60 = 0;
    v61 = 0;
    v64 = 0uLL;
    v25 = v66;
    *(a6 + 312) = v24;
    *(a6 + 296) = v25;
    v67 = 0;
    v65 = 0;
    v66 = 0uLL;
    *(a6 + 320) = v68;
    v68 = 0uLL;
    v26 = v69;
    v27 = v70;
    v69 = 0;
    *(a6 + 336) = v26;
    *(a6 + 344) = v27;
    v70 = 0;
    v28 = v71;
    v29 = v72;
    v71 = 0uLL;
    *(a6 + 352) = v28;
    *(a6 + 368) = v29;
    v72 = 0uLL;
    v30 = v74;
    *(a6 + 384) = v73;
    *(a6 + 392) = v30;
    *(a6 + 400) = v75;
    v73 = 0;
    v74 = 0;
    v75 = 0uLL;
    *(a6 + 416) = v76;
    LODWORD(v26) = v77;
    *(a6 + 428) = v78;
    *(a6 + 424) = v26;
    v31 = v79;
    v32 = v82;
    *(a6 + 448) = v80;
    *(a6 + 432) = v31;
    v76 = 0;
    v79 = 0uLL;
    v80 = 0;
    v33 = v81;
    *(a6 + 472) = v32;
    *(a6 + 456) = v33;
    v81 = 0uLL;
    v82 = 0;
    v13 = v37;
  }

  else
  {
    *(a6 + 448) = 0u;
    *(a6 + 464) = 0u;
    *(a6 + 416) = 0u;
    *(a6 + 432) = 0u;
    *(a6 + 384) = 0u;
    *(a6 + 400) = 0u;
    *(a6 + 352) = 0u;
    *(a6 + 368) = 0u;
    *(a6 + 320) = 0u;
    *(a6 + 336) = 0u;
    *(a6 + 288) = 0u;
    *(a6 + 304) = 0u;
    *(a6 + 256) = 0u;
    *(a6 + 272) = 0u;
    *(a6 + 224) = 0u;
    *(a6 + 240) = 0u;
    *(a6 + 192) = 0u;
    *(a6 + 208) = 0u;
    *(a6 + 160) = 0u;
    *(a6 + 176) = 0u;
    *(a6 + 128) = 0u;
    *(a6 + 144) = 0u;
    *(a6 + 96) = 0u;
    *(a6 + 112) = 0u;
    *(a6 + 64) = 0u;
    *(a6 + 80) = 0u;
    *(a6 + 32) = 0u;
    *(a6 + 48) = 0u;
    *a6 = 0u;
    *(a6 + 16) = 0u;
    sub_64B998(a6);
    sub_64B998(a6 + 160);
    sub_64B998(a6 + 320);
  }

  if ((v13 & 0x80) != 0)
  {
    operator delete(__p[0]);
  }

  sub_53A868(&v68);
  sub_53A868(&v53);
  return sub_53A868(&v38);
}

void sub_62AC98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36)
{
  sub_53A868(v36 + 160);
  sub_53A868(v36);
  if (a35 < 0)
  {
    operator delete(__p);
    sub_62A6D8(&a36);
    _Unwind_Resume(a1);
  }

  sub_62A6D8(&a36);
  _Unwind_Resume(a1);
}

void sub_62ACFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  sub_53A868(v32 + 160);
  sub_53A868(va);
  _Unwind_Resume(a1);
}

void sub_62AD18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  sub_53A868(va);
  _Unwind_Resume(a1);
}

void sub_62AD2C(uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = *(a2 + 11856);
  v4 = *(a2 + 11864);
  if (v3 != v4)
  {
    v5 = v3 + 17;
    do
    {
      if (*(v5 - 8) == 1)
      {
        v8 = 16;
        v7 = *(v5 - 13);
        sub_5874C0(v5);
      }

      v6 = v5 + 4;
      v5 += 21;
    }

    while (v6 != v4);
  }
}

void sub_62AF24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  *(v5 + 8) = v6;
  sub_62A6D8(va);
  sub_53E440(v7 - 208);
  sub_5EC9F0(v5);
  _Unwind_Resume(a1);
}

void sub_62AF88(_Unwind_Exception *a1)
{
  sub_53E440(v2 - 208);
  sub_5EC9F0(v1);
  _Unwind_Resume(a1);
}

void sub_62AFA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_53A868(v6 + 160);
  sub_53A868(va);
  sub_53E440(v7 - 208);
  sub_5EC9F0(v5);
  _Unwind_Resume(a1);
}

void sub_62AFEC(uint64_t a1@<X0>, int *a2@<X1>, uint64_t x8_0@<X8>)
{
  sub_5E94A4(a2, a1, 1, &v14);
  sub_4E51E0(a2, a1 & 0xFFFFFFFFFFFFLL, v12);
  sub_64AC90(&v10, v12, 0);
  sub_735048(&v14, x8_0);
  if ((v11 & 0x80000000) == 0)
  {
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(v12[0]);
    v7 = v14;
    if (!v14)
    {
      return;
    }

    goto LABEL_7;
  }

  operator delete(v10);
  if (v13 < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = v14;
  if (!v14)
  {
    return;
  }

LABEL_7:
  v8 = v15;
  v9 = v7;
  if (v15 != v7)
  {
    do
    {
      v8 = sub_310F30(v8 - 144);
    }

    while (v8 != v7);
    v9 = v14;
  }

  v15 = v7;
  operator delete(v9);
}

void sub_62B140(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  sub_3108E8(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    if ((a25 & 0x80000000) == 0)
    {
LABEL_3:
      sub_5E9738((v25 - 56));
      _Unwind_Resume(a1);
    }
  }

  else if ((a25 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a20);
  sub_5E9738((v25 - 56));
  _Unwind_Resume(a1);
}

void sub_62B1B8(__int128 *a1@<X1>, uint64_t a2@<X8>, char *a3@<X0>, uint64_t a4@<X2>)
{
  sub_62B3E8(a3, a1, a4, v26);
  v25 = *(a1 + 4);
  v8 = a1[1];
  v24[0] = *a1;
  v24[1] = v8;
  BYTE6(v25) = BYTE6(v25) == 0;
  v9 = (*&v24[0] - **&v24[0]);
  if (*v9 >= 9u && (v10 = v9[4]) != 0)
  {
    v11 = *(*&v24[0] + v10);
  }

  else
  {
    v11 = 0;
  }

  sub_62B3E8(a3, v24, v11 - a4, v13);
  if (sub_734C10(v26) && (!sub_734C10(v13) || v36 < v23))
  {
    v12 = v26;
LABEL_11:
    sub_5139E8(a2, v12);
    goto LABEL_13;
  }

  if (sub_734C10(v13))
  {
    v12 = v13;
    goto LABEL_11;
  }

  sub_734CE0(a2);
LABEL_13:
  if (v22 < 0)
  {
    operator delete(__p);
    if ((v20 & 0x80000000) == 0)
    {
LABEL_15:
      if ((v18 & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_26;
    }
  }

  else if ((v20 & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(v19);
  if ((v18 & 0x80000000) == 0)
  {
LABEL_16:
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_27;
  }

LABEL_26:
  operator delete(v17);
  if ((v16 & 0x80000000) == 0)
  {
LABEL_17:
    if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_28;
  }

LABEL_27:
  operator delete(v15);
  if ((v14 & 0x80000000) == 0)
  {
LABEL_18:
    if ((v35 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_29;
  }

LABEL_28:
  operator delete(v13[0]);
  if ((v35 & 0x80000000) == 0)
  {
LABEL_19:
    if ((v33 & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_30;
  }

LABEL_29:
  operator delete(v34);
  if ((v33 & 0x80000000) == 0)
  {
LABEL_20:
    if ((v31 & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_31;
  }

LABEL_30:
  operator delete(v32);
  if ((v31 & 0x80000000) == 0)
  {
LABEL_21:
    if ((v29 & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_32;
  }

LABEL_31:
  operator delete(v30);
  if ((v29 & 0x80000000) == 0)
  {
LABEL_22:
    if ((v27 & 0x80000000) == 0)
    {
      return;
    }

LABEL_33:
    operator delete(v26[0]);
    return;
  }

LABEL_32:
  operator delete(v28);
  if (v27 < 0)
  {
    goto LABEL_33;
  }
}

void sub_62B3B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  sub_3E5388(va);
  _Unwind_Resume(a1);
}

void sub_62B3CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  sub_3E5388(&a9);
  sub_3E5388(va);
  _Unwind_Resume(a1);
}

void sub_62B3E8(char *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a2[1];
  v47 = *a2;
  v48 = v7;
  v49 = *(a2 + 4);
  sub_62AFEC(a2[2] & 0xFFFFFFFFFFFFFFLL, *(a1 + 16), v37);
  v8 = (v47 - *v47);
  if (*v8 >= 9u && (v9 = v8[4]) != 0)
  {
    v10 = *(v47 + v9);
  }

  else
  {
    v10 = 0;
  }

  v11 = v10 - a3;
  while (v11 <= *(a1 + 3))
  {
    sub_6D48F8();
    v12 = v35;
    v13 = *v35;
    v14 = v35[1];
    if (*v35 == v14)
    {
LABEL_44:
      sub_62B864(a1, v12, v25);
      v47 = *v25;
      v48 = v26;
      v49 = __p;
      v21 = 3;
      if (!__p || !v47 || !*(&v47 + 1))
      {
        goto LABEL_57;
      }

      v22 = (v47 - *v47);
      if (*v22 >= 9u && (v23 = v22[4]) != 0)
      {
        v21 = 0;
        v11 += *(v47 + v23);
        v24 = v36;
        if (v36)
        {
          goto LABEL_58;
        }
      }

      else
      {
        v21 = 0;
        v24 = v36;
        if (v36)
        {
          goto LABEL_58;
        }
      }

      goto LABEL_6;
    }

    while (1)
    {
      v15 = *(v13 + 24);
      if (v15 - 41 >= 0x17)
      {
        v16 = v15 > 0x1C || ((1 << v15) & 0x183000C6) == 0;
        if (v16 && v15 - 86 >= 2)
        {
          goto LABEL_11;
        }
      }

      sub_62AFEC(*(*(v13 + 8) - 8) & 0xFFFFFFFFFFFFFFLL, *(a1 + 16), v25);
      if (sub_734C10(v25))
      {
        if ((SBYTE7(v26) & 0x80u) == 0)
        {
          v17 = BYTE7(v26);
        }

        else
        {
          v17 = v25[1];
        }

        v18 = v38;
        if ((v38 & 0x80u) != 0)
        {
          v18 = v37[1];
        }

        if (v17 != v18)
        {
          break;
        }

        v19 = (SBYTE7(v26) & 0x80u) == 0 ? v25 : v25[0];
        v20 = (v38 & 0x80u) == 0 ? v37 : v37[0];
        if (memcmp(v19, v20, v17))
        {
          break;
        }
      }

      if (v34 < 0)
      {
        operator delete(v33);
        if ((v32 & 0x80000000) == 0)
        {
LABEL_33:
          if ((v30 & 0x80000000) == 0)
          {
            goto LABEL_34;
          }

          goto LABEL_38;
        }
      }

      else if ((v32 & 0x80000000) == 0)
      {
        goto LABEL_33;
      }

      operator delete(v31);
      if ((v30 & 0x80000000) == 0)
      {
LABEL_34:
        if (v28 < 0)
        {
          goto LABEL_10;
        }

        goto LABEL_39;
      }

LABEL_38:
      operator delete(v29);
      if (v28 < 0)
      {
LABEL_10:
        operator delete(__p);
        if (SBYTE7(v26) < 0)
        {
          goto LABEL_40;
        }

        goto LABEL_11;
      }

LABEL_39:
      if (SBYTE7(v26) < 0)
      {
LABEL_40:
        operator delete(v25[0]);
      }

LABEL_11:
      v13 += 248;
      if (v13 == v14)
      {
        v12 = v35;
        goto LABEL_44;
      }
    }

    sub_5139E8(a4, v25);
    *(a4 + 152) = v11;
    if (v34 < 0)
    {
      operator delete(v33);
      if (v32 < 0)
      {
        goto LABEL_63;
      }

LABEL_53:
      if ((v30 & 0x80000000) == 0)
      {
        goto LABEL_54;
      }

LABEL_64:
      operator delete(v29);
      if (v28 < 0)
      {
        goto LABEL_65;
      }

LABEL_55:
      if (SBYTE7(v26) < 0)
      {
LABEL_66:
        operator delete(v25[0]);
      }
    }

    else
    {
      if ((v32 & 0x80000000) == 0)
      {
        goto LABEL_53;
      }

LABEL_63:
      operator delete(v31);
      if (v30 < 0)
      {
        goto LABEL_64;
      }

LABEL_54:
      if ((v28 & 0x80000000) == 0)
      {
        goto LABEL_55;
      }

LABEL_65:
      operator delete(__p);
      if (SBYTE7(v26) < 0)
      {
        goto LABEL_66;
      }
    }

    v21 = 1;
LABEL_57:
    v24 = v36;
    if (v36)
    {
LABEL_58:
      if (!atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v24->__on_zero_shared)(v24);
        std::__shared_weak_count::__release_weak(v24);
      }
    }

LABEL_6:
    if (v21)
    {
      if (v21 != 3)
      {
        goto LABEL_69;
      }

      break;
    }
  }

  sub_734CE0(a4);
  *(a4 + 152) = 0x7FFFFFFFFFFFFFFFLL;
LABEL_69:
  if (v46 < 0)
  {
    operator delete(v45);
    if (v44 < 0)
    {
      goto LABEL_76;
    }

LABEL_71:
    if ((v42 & 0x80000000) == 0)
    {
      goto LABEL_72;
    }

LABEL_77:
    operator delete(v41);
    if (v40 < 0)
    {
      goto LABEL_78;
    }

LABEL_73:
    if (v38 < 0)
    {
LABEL_79:
      operator delete(v37[0]);
    }
  }

  else
  {
    if ((v44 & 0x80000000) == 0)
    {
      goto LABEL_71;
    }

LABEL_76:
    operator delete(v43);
    if (v42 < 0)
    {
      goto LABEL_77;
    }

LABEL_72:
    if ((v40 & 0x80000000) == 0)
    {
      goto LABEL_73;
    }

LABEL_78:
    operator delete(v39);
    if (v38 < 0)
    {
      goto LABEL_79;
    }
  }
}

void sub_62B7F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  sub_3E5388(va);
  _Unwind_Resume(a1);
}

void sub_62B808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  sub_3E5388(&a9);
  sub_1F1A8(&a28);
  sub_3E5388(va);
  _Unwind_Resume(a1);
}

char *sub_62B864@<X0>(char *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    while (1)
    {
      v6 = *(v4 + 24);
      if (!v6 || v6 == 3)
      {
        break;
      }

      v4 += 248;
      if (v4 == v5)
      {
        goto LABEL_13;
      }
    }
  }

  if (v4 == v5)
  {
LABEL_13:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0x1000000000000;
  }

  else
  {
    v8 = *(result + 16);
    v9 = *(*(v4 + 8) - 8);
    v10 = sub_2B51D8(v8, v9 & 0xFFFFFFFFFFFFLL);
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

      v14 = v13 + ((v9 >> 30) & 0x3FFFC) + 4 + *(v13 + ((v9 >> 30) & 0x3FFFC) + 4);
    }

    else
    {
      v14 = 0;
    }

    result = sub_31D7E8(v8, v9 & 0xFFFFFFFFFFFFLL, 1);
    *a3 = v10;
    *(a3 + 8) = v14;
    *(a3 + 16) = result;
    *(a3 + 24) = v15;
    *(a3 + 32) = v9;
  }

  return result;
}

void sub_62B990(BOOL *a1, uint64_t *a2, uint64_t a3)
{
  HIBYTE(v8[2]) = 20;
  strcpy(v8, "EnrouteNoticeBuilder");
  memset(v7, 0, sizeof(v7));
  v6 = sub_3AEC94(a2, v8, v7);
  sub_41D60C(v6, 0, *(a3 + 1566), &v9);
  sub_62FF18(a1, &v9, a2, a3);
}

void sub_62BB7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

void sub_62BBC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20)
{
  sub_5C010(&a20);
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_62BBFC(_BYTE *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  sub_62BFA4(a1, a2, a3);
  sub_62C554(a1, a2, &v38);
  sub_6399F0(a3, a3[1], v38, v39, 0x4FCACE213F2B3885 * ((v39 - v38) >> 3));
  sub_62D194(a1, a2, &v36);
  sub_6399F0(a3, a3[1], v36, v37, 0x4FCACE213F2B3885 * ((v37 - v36) >> 3));
  sub_62D50C(a1, &v34);
  sub_6399F0(a3, a3[1], v34, v35, 0x4FCACE213F2B3885 * ((v35 - v34) >> 3));
  sub_62EAB0(a1, &v32);
  sub_6399F0(a3, a3[1], v32, v33, 0x4FCACE213F2B3885 * ((v33 - v32) >> 3));
  if (a1[13])
  {
    sub_631510(a2, v30);
    v6 = *v30;
  }

  else
  {
    v31 = 0;
    v6 = 0uLL;
    *v30 = 0u;
  }

  sub_6399F0(a3, a3[1], v6, *(&v6 + 1), 0x4FCACE213F2B3885 * ((*(&v6 + 1) - v6) >> 3));
  sub_62EF20(a1, a2, &__p);
  sub_6399F0(a3, a3[1], __p, v29, 0x4FCACE213F2B3885 * ((v29 - __p) >> 3));
  v7 = a3[1];
  v8 = 126 - 2 * __clz(0x4FCACE213F2B3885 * ((v7 - *a3) >> 3));
  if (v7 == *a3)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  sub_63F1BC(*a3, v7, &v40, v9, 1);
  v10 = __p;
  if (__p)
  {
    v11 = v29;
    v12 = __p;
    if (v29 != __p)
    {
      do
      {
        v11 -= 616;
        sub_5C2320(v11);
      }

      while (v11 != v10);
      v12 = __p;
    }

    v29 = v10;
    operator delete(v12);
  }

  v13 = v30[0];
  if (v30[0])
  {
    v14 = v30[1];
    v15 = v30[0];
    if (v30[1] != v30[0])
    {
      do
      {
        v14 -= 616;
        sub_5C2320(v14);
      }

      while (v14 != v13);
      v15 = v30[0];
    }

    v30[1] = v13;
    operator delete(v15);
  }

  v16 = v32;
  if (v32)
  {
    v17 = v33;
    v18 = v32;
    if (v33 != v32)
    {
      do
      {
        v17 -= 616;
        sub_5C2320(v17);
      }

      while (v17 != v16);
      v18 = v32;
    }

    v33 = v16;
    operator delete(v18);
  }

  v19 = v34;
  if (v34)
  {
    v20 = v35;
    v21 = v34;
    if (v35 != v34)
    {
      do
      {
        v20 -= 616;
        sub_5C2320(v20);
      }

      while (v20 != v19);
      v21 = v34;
    }

    v35 = v19;
    operator delete(v21);
  }

  v22 = v36;
  if (v36)
  {
    v23 = v37;
    v24 = v36;
    if (v37 != v36)
    {
      do
      {
        v23 -= 616;
        sub_5C2320(v23);
      }

      while (v23 != v22);
      v24 = v36;
    }

    v37 = v22;
    operator delete(v24);
  }

  v25 = v38;
  if (v38)
  {
    v26 = v39;
    v27 = v38;
    if (v39 != v38)
    {
      do
      {
        v26 -= 616;
        sub_5C2320(v26);
      }

      while (v26 != v25);
      v27 = v38;
    }

    v39 = v25;
    operator delete(v27);
  }
}

void sub_62BEF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v18 = va_arg(va1, char *);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  sub_5EC9F0(va);
  sub_5EC9F0(va1);
  sub_5EC9F0((v16 - 88));
  sub_5EC9F0((v16 - 64));
  sub_5EC9F0(v15);
  _Unwind_Resume(a1);
}

void sub_62BF70(_Unwind_Exception *a1)
{
  sub_5EC9F0((v2 - 64));
  sub_5EC9F0(v1);
  _Unwind_Resume(a1);
}

void sub_62BFA4(_BYTE *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (*a1 & 1) != 0 || (a1[1] & 1) != 0 || (a1[2] & 1) != 0 || (a1[3] & 1) != 0 || (a1[4] & 1) != 0 || (a1[5] & 1) != 0 || (a1[8] & 1) != 0 || (a1[12])
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v5 = (a2[139] - a2[138]) >> 3;
    v6 = 0x3795876FF3795877 * v5 - 1;
    if (0x3795876FF3795877 * v5 != 1)
    {
      v7 = 0;
      v8 = 640;
      do
      {
        v9 = sub_630A90(a1, v7, a2);
        if ((v9 & 0x100) != 0)
        {
          if (v9 > 0x16u)
          {
            v10 = 0;
          }

          else
          {
            v10 = dword_229C388[v9 & 0x1F];
          }

          sub_58738C(v10);
        }

        ++v7;
        v8 += 2616;
      }

      while (v6 != v7);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void sub_62C43C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *(v3 + 8) = v4;
  sub_62A6D8(va);
  sub_53E440(v5 - 216);
  sub_5EC9F0(v3);
  _Unwind_Resume(a1);
}

void sub_62C4C4(_Unwind_Exception *a1)
{
  sub_53E440(v2 - 216);
  sub_5EC9F0(v1);
  _Unwind_Resume(a1);
}

void sub_62C554(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (*(a1 + 6))
  {
    v3 = a2[1530];
    v4 = a2[1531];
    if (v3 == v4)
    {
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
    }

    else
    {
      v5 = 0;
      v6 = 0;
      do
      {
        if (*(v3 + 4) == 3 && *(v3 + 10) == 0)
        {
          v8 = v5 - v6;
          v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v6) >> 4);
          v10 = v9 + 1;
          if (v9 + 1 > 0x555555555555555)
          {
            sub_1794();
          }

          if (0x5555555555555556 * (-v6 >> 4) > v10)
          {
            v10 = 0x5555555555555556 * (-v6 >> 4);
          }

          if (0xAAAAAAAAAAAAAAABLL * (-v6 >> 4) >= 0x2AAAAAAAAAAAAAALL)
          {
            v11 = 0x555555555555555;
          }

          else
          {
            v11 = v10;
          }

          if (v11)
          {
            if (v11 <= 0x555555555555555)
            {
              operator new();
            }

            sub_1808();
          }

          v12 = v6;
          v13 = (16 * ((v5 - v6) >> 4));
          v14 = *v3;
          v15 = v3[2];
          v13[1] = v3[1];
          v13[2] = v15;
          *v13 = v14;
          v5 = (v13 + 3);
          v6 = 48 * v9 + 48 * (v8 / -48);
          v16 = v12;
          memcpy(&v13[3 * (v8 / -48)], v12, v8);
          if (v16)
          {
            operator delete(v16);
          }
        }

        v3 += 3;
      }

      while (v3 != v4);
      if (v6 != v5)
      {
        *a3 = 0;
        a3[1] = 0;
        a3[2] = 0;
        v33 = 0;
        __src = 0;
        v17 = sub_4D1DC0(a2);
        if (v17)
        {
          v18 = 0;
          for (i = 0; i != v17; ++i)
          {
            v20 = __src;
            v21 = (v33 - __src) >> 3;
            v22 = v21 + 1;
            if ((v21 + 1) >> 61)
            {
              sub_1794();
            }

            v23 = -__src;
            if (-__src >> 2 > v22)
            {
              v22 = v23 >> 2;
            }

            if (v23 >= 0x7FFFFFFFFFFFFFF8)
            {
              v24 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v24 = v22;
            }

            if (v24)
            {
              if (!(v24 >> 61))
              {
                operator new();
              }

              sub_1808();
            }

            v25 = (8 * v21);
            v26 = &v25[-((v33 - __src) >> 3)];
            *v25 = v18;
            v27 = v25 + 1;
            memcpy(v26, __src, v33 - __src);
            __src = v26;
            if (v20)
            {
              operator delete(v20);
            }

            v33 = v27;
            v18 += sub_4D23F8(a2, i, v28);
          }
        }

        if (*v6 <= 0.0)
        {
          v29 = 4;
        }

        else
        {
          v29 = 3;
        }

        sub_58738C(v29);
      }

      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      if (v6)
      {
        operator delete(v6);
      }
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void sub_62CFE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char **a18)
{
  v19 = STACK[0x2D0];
  if (STACK[0x2D0])
  {
    STACK[0x2D8] = v19;
    operator delete(v19);
  }

  sub_5EC9F0(a18);
  if (a9)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_62D194@<X0>(unint64_t result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = *(result + 11);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (v4 == 1)
  {
    v6 = result;
    v21 = 0;
    result = sub_4D1DC0(a2);
    v7 = result;
    if (result)
    {
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v10 = sub_4D1F50(a2, v9);
        if (!v8)
        {
          break;
        }

        v12 = (*v10 - **v10);
        v13 = *v12;
        if (*(v10 + 38))
        {
          if (v13 < 0x47)
          {
            goto LABEL_23;
          }

          v14 = v12[35];
          if (!v14)
          {
            goto LABEL_23;
          }

          v15 = 0x10000;
        }

        else
        {
          if (v13 < 0x47)
          {
            goto LABEL_23;
          }

          v14 = v12[35];
          if (!v14)
          {
            goto LABEL_23;
          }

          v15 = 0x8000;
        }

        v8 = (*(*v10 + v14) & v15) != 0;
LABEL_24:
        result = sub_4D23F8(a2, v9, v11);
        v21 += result;
        if (v7 == ++v9)
        {
          return result;
        }
      }

      if (*(v6 + 11) == 1)
      {
        v16 = *v10;
        v17 = (*v10 - **v10);
        v18 = *v17;
        if (*(v10 + 38))
        {
          if (v18 >= 0x47)
          {
            v19 = v17[35];
            if (v19)
            {
              if ((*&v16[v19] & 0x10000) != 0)
              {
                goto LABEL_22;
              }
            }
          }
        }

        else if (v18 >= 0x47)
        {
          v20 = v17[35];
          if (v20)
          {
            if ((*&v16[v20] & 0x8000) != 0)
            {
LABEL_22:
              sub_58738C(6u);
            }
          }
        }
      }

LABEL_23:
      v8 = 0;
      goto LABEL_24;
    }
  }

  return result;
}

void sub_62D438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_53A868(v4 + 296);
  sub_53A868(v4 + 136);
  sub_53E440(v4 + 16);
  *(v3 + 8) = v4;
  sub_62A6D8(va);
  sub_53E440(v5 - 216);
  sub_5EC9F0(v3);
  _Unwind_Resume(a1);
}

void sub_62D4A0(_Unwind_Exception *a1)
{
  sub_53E440(v2 - 216);
  sub_5EC9F0(v1);
  _Unwind_Resume(a1);
}

void sub_62D50C(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (*(a1 + 8) == 1)
  {
    operator new();
  }
}

void sub_62E7FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  operator delete(__p);
  sub_5EC9F0(v11);
  _Unwind_Resume(a1);
}

void sub_62E818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p)
{
  sub_53E440(&STACK[0x280]);
  operator delete(__p);
  sub_5EC9F0(v11);
  _Unwind_Resume(a1);
}

void sub_62EAB0(uint64_t a1@<X0>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (*(a1 + 14) == 1)
  {
    sub_58738C(0xAu);
  }
}

void sub_62EE4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char **a9)
{
  sub_53E440(v9 - 224);
  sub_5EC9F0(a9);
  _Unwind_Resume(a1);
}

void sub_62EE7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_53A868(v6 + 296);
  sub_53A868(v6 + 136);
  sub_53E440(v6 + 16);
  *(a4 + 8) = v6;
  sub_62A6D8(va);
  operator delete(v5);
  sub_53E440(v7 - 224);
  sub_5EC9F0(a4);
  _Unwind_Resume(a1);
}

void sub_62EF20(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + 16);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (v4 == 1)
  {
    v8 = a2[139];
    if (a2[138] != v8)
    {
      v5 = a2[138];
      do
      {
        v6 = *(v5 + 1960);
        v9 = v5;
        if (v6 != *(v5 + 1968))
        {
          if (*(a1 + 17) == 1 && sub_67E34C(v6) >= 2)
          {
            vcvtd_n_f64_s64(sub_4D2544(a2, **v6, 0, *(*(v6 + 8) - 8), 1u, v7), 1uLL);
          }

          sub_58738C(0x14u);
        }

        v5 += 2616;
      }

      while (v9 + 2616 != v8);
    }
  }
}

void sub_62F834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  if (*(v15 + 87) < 0)
  {
    operator delete(*(v15 + 64));
  }

  sub_55DB28(v14);
  *(v13 + 8) = v15;
  sub_62A6D8(va);
  sub_53E440(v16 - 248);
  sub_5EC9F0(v13);
  _Unwind_Resume(a1);
}

void sub_62F96C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_53A868(v14 + 160);
  sub_53A868(va);
  sub_53E440(v15 - 248);
  sub_5EC9F0(v13);
  _Unwind_Resume(a1);
}

double sub_62F9D8(_BYTE *a1)
{
  nullsub_1();
  v4 = *v3;
  v5 = *(v3 + 8);
  if (*v3 != v5)
  {
    do
    {
      sub_62BBFC(a1, v4, &v12);
      v7 = v4[1534];
      if (v7)
      {
        v8 = v4[1535];
        v6 = v4[1534];
        if (v8 != v7)
        {
          v9 = v8 - 600;
          while (1)
          {
            sub_53A868(v9 + 440);
            sub_53A868(v9 + 280);
            sub_53A868(v9 + 120);
            if (*(v9 + 103) < 0)
            {
              operator delete(*(v9 + 80));
              if ((*(v9 + 71) & 0x80000000) == 0)
              {
LABEL_12:
                v11 = *(v9 + 32);
                if (v11 == -1)
                {
                  goto LABEL_9;
                }

LABEL_16:
                (off_266BE00[v11])(&v14, v9);
                goto LABEL_9;
              }
            }

            else if ((*(v9 + 71) & 0x80000000) == 0)
            {
              goto LABEL_12;
            }

            operator delete(*(v9 + 48));
            v11 = *(v9 + 32);
            if (v11 != -1)
            {
              goto LABEL_16;
            }

LABEL_9:
            *(v9 + 32) = -1;
            v10 = v9 - 16;
            v9 -= 616;
            if (v10 == v7)
            {
              v6 = v4[1534];
              break;
            }
          }
        }

        v4[1535] = v7;
        operator delete(v6);
      }

      result = *&v12;
      *(v4 + 767) = v12;
      v4[1536] = v13;
      v4 += 1582;
    }

    while (v4 != v5);
  }

  return result;
}

void sub_62FB20(_DWORD *a1, void *a2)
{
  v3 = 16;
  strcpy(__p, "cycling_dismount");
  *a1 = sub_629380(a2, __p);
  if (v3 < 0)
  {
    operator delete(*__p);
  }

  operator new();
}

void sub_62FECC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_62FF18(BOOL *a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v23 = 15;
  strcpy(__p, "enable_elevator");
  v7 = sub_5F9D0(a2, __p);
  if (v23 < 0)
  {
    v8 = v7;
    operator delete(*__p);
    v7 = v8;
  }

  *a1 = v7;
  v23 = 16;
  strcpy(__p, "enable_escalator");
  v9 = sub_5F9D0(a2, __p);
  if (v23 < 0)
  {
    v10 = v9;
    operator delete(*__p);
    v9 = v10;
  }

  a1[1] = v9;
  v23 = 13;
  strcpy(__p, "enable_stairs");
  v11 = sub_5F9D0(a2, __p);
  if (v23 < 0)
  {
    v12 = v11;
    operator delete(*__p);
    v11 = v12;
  }

  a1[2] = v11;
  v23 = 18;
  strcpy(__p, "enable_stairs_down");
  v13 = sub_5F9D0(a2, __p);
  if (v23 < 0)
  {
    v14 = v13;
    operator delete(*__p);
    v13 = v14;
  }

  a1[3] = v13;
  v23 = 16;
  strcpy(__p, "enable_stairs_up");
  v15 = sub_5F9D0(a2, __p);
  if (v23 < 0)
  {
    v16 = v15;
    operator delete(*__p);
    v15 = v16;
  }

  a1[4] = v15;
  v23 = 20;
  strcpy(__p, "enable_stairs_bridge");
  v17 = sub_5F9D0(a2, __p);
  if (v23 < 0)
  {
    v18 = v17;
    operator delete(*__p);
    v17 = v18;
  }

  a1[5] = v17;
  v23 = 18;
  strcpy(__p, "enable_steep_hills");
  v19 = sub_5F9D0(a2, __p);
  if (v23 < 0)
  {
    v20 = v19;
    operator delete(*__p);
    v19 = v20;
  }

  a1[6] = v19;
  v23 = 20;
  strcpy(__p, "enable_slope_display");
  if (sub_5F9D0(a2, __p))
  {
    v21 = 1;
    if ((v23 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v21 = sub_3B0454(a3);
    if ((v23 & 0x80000000) == 0)
    {
LABEL_18:
      a1[7] = v21;
      operator new();
    }
  }

  operator delete(*__p);
  goto LABEL_18;
}

void sub_630A18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_630A90(_BYTE *a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_50EA30((a3 + 1104), a2);
  v7 = sub_50EA30((a3 + 1104), a2 + 1);
  if (*a1 == 1 && *(v6 + 632) != -1)
  {
    v12 = 1;
    v13 = 20;
    return v13 | (v12 << 8);
  }

  if (a1[12] == 1 && *(v6 + 160) == 22)
  {
    v12 = 1;
    v13 = 15;
    return v13 | (v12 << 8);
  }

  if (a1[15] == 1 && *(v6 + 384) != 2 && *(v7 + 384) == 2)
  {
    operator new();
  }

  if (a1[1] == 1)
  {
    v11 = *(v6 + 640);
    v12 = *(v6 + 680);
    if (v11 != -1 && v12 == 1)
    {
      v13 = 1;
      return v13 | (v12 << 8);
    }

    if (v11 != -1 && v12 == 2)
    {
      v12 = 1;
      v13 = 2;
      return v13 | (v12 << 8);
    }

    if (v11 != -1)
    {
      v13 = 0;
      goto LABEL_43;
    }
  }

  v15 = *(v6 + 2420);
  if (a1[5] == 1 && v15 == 1)
  {
    v12 = 1;
    v13 = 6;
    return v13 | (v12 << 8);
  }

  v13 = 0;
  if (v15)
  {
    v16 = a1[5];
  }

  else
  {
    v16 = 0;
  }

  if (a1[2] != 1 || *(v6 + 624) == -1)
  {
    v12 = 0;
    return v13 | (v12 << 8);
  }

  v12 = 0;
  if ((v16 & 1) == 0)
  {
    v17 = *(v6 + 680);
    if (a1[4] == 1 && v17 == 1)
    {
      v12 = 1;
      v13 = 4;
      return v13 | (v12 << 8);
    }

    if ((a1[3] & (v17 == 2)) != 0)
    {
      v13 = 5;
    }

    else
    {
      v13 = 3;
    }

LABEL_43:
    v12 = 1;
  }

  return v13 | (v12 << 8);
}

void sub_630CB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_630CD0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, std::string *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_64B998(&v42);
  sub_64B998(&v57);
  sub_64B998(&v72);
  sub_638CC4(a2, __p);
  v16 = v41;
  v17 = v41;
  if ((v41 & 0x80u) != 0)
  {
    v16 = __p[1];
  }

  if (v16)
  {
    v18 = sub_9274F4(*(a1 + 136), __p);
    sub_64BC50(v39, v18, (*(a1 + 120) + 1177));
    sub_53D784(&v42, v39);
    sub_53A868(v39);
    sub_641D54(a1, a2, a3, a4, a6, v39, a5);
    sub_53D784(&v57, v39);
    sub_53A868(v39);
    sub_642290(a7, &v42);
    *a8 = v42;
    v19 = v45;
    *(a8 + 16) = v43;
    v42 = 0uLL;
    *(a8 + 24) = v44;
    *(a8 + 40) = v19;
    v43 = 0;
    v44 = 0uLL;
    v45 = 0;
    *(a8 + 48) = v46;
    v20 = v49;
    *(a8 + 64) = v47;
    v46 = 0uLL;
    *(a8 + 72) = v48;
    v47 = 0;
    v48 = 0uLL;
    v49 = 0;
    v21 = v50;
    *(a8 + 88) = v20;
    *(a8 + 96) = v21;
    LODWORD(v21) = v51;
    *(a8 + 108) = v52;
    *(a8 + 104) = v21;
    v22 = v53;
    v23 = v56;
    *(a8 + 128) = v54;
    *(a8 + 112) = v22;
    v50 = 0;
    v53 = 0uLL;
    v24 = v55;
    *(a8 + 152) = v23;
    *(a8 + 136) = v24;
    v56 = 0;
    v54 = 0;
    v55 = 0uLL;
    *(a8 + 160) = v57;
    v25 = v60;
    *(a8 + 176) = v58;
    v57 = 0uLL;
    v58 = 0;
    *(a8 + 184) = v59;
    *(a8 + 200) = v25;
    v59 = 0uLL;
    *(a8 + 208) = v61;
    *(a8 + 224) = v62;
    v62 = 0;
    v60 = 0;
    v61 = 0uLL;
    *(a8 + 232) = v63;
    v63 = 0uLL;
    v26 = v65;
    *(a8 + 248) = v64;
    *(a8 + 256) = v26;
    LODWORD(v26) = v66;
    *(a8 + 268) = v67;
    *(a8 + 264) = v26;
    v27 = v68;
    v28 = v71;
    *(a8 + 288) = v69;
    *(a8 + 272) = v27;
    v64 = 0;
    v65 = 0;
    v68 = 0uLL;
    v29 = v70;
    *(a8 + 312) = v28;
    *(a8 + 296) = v29;
    v71 = 0;
    v69 = 0;
    v70 = 0uLL;
    *(a8 + 320) = v72;
    v72 = 0uLL;
    v30 = v73;
    v31 = v74;
    v73 = 0;
    *(a8 + 336) = v30;
    *(a8 + 344) = v31;
    v74 = 0;
    v32 = v75;
    v33 = v76;
    v75 = 0uLL;
    *(a8 + 352) = v32;
    *(a8 + 368) = v33;
    v76 = 0uLL;
    v34 = v78;
    *(a8 + 384) = v77;
    *(a8 + 392) = v34;
    *(a8 + 400) = v79;
    v77 = 0;
    v78 = 0;
    v79 = 0uLL;
    *(a8 + 416) = v80;
    LODWORD(v30) = v81;
    *(a8 + 428) = v82;
    *(a8 + 424) = v30;
    v35 = v83;
    v36 = v86;
    *(a8 + 448) = v84;
    *(a8 + 432) = v35;
    v80 = 0;
    v83 = 0uLL;
    v84 = 0;
    v37 = v85;
    *(a8 + 472) = v36;
    *(a8 + 456) = v37;
    v85 = 0uLL;
    v86 = 0;
    v17 = v41;
  }

  else
  {
    *(a8 + 448) = 0u;
    *(a8 + 464) = 0u;
    *(a8 + 416) = 0u;
    *(a8 + 432) = 0u;
    *(a8 + 384) = 0u;
    *(a8 + 400) = 0u;
    *(a8 + 352) = 0u;
    *(a8 + 368) = 0u;
    *(a8 + 320) = 0u;
    *(a8 + 336) = 0u;
    *(a8 + 288) = 0u;
    *(a8 + 304) = 0u;
    *(a8 + 256) = 0u;
    *(a8 + 272) = 0u;
    *(a8 + 224) = 0u;
    *(a8 + 240) = 0u;
    *(a8 + 192) = 0u;
    *(a8 + 208) = 0u;
    *(a8 + 160) = 0u;
    *(a8 + 176) = 0u;
    *(a8 + 128) = 0u;
    *(a8 + 144) = 0u;
    *(a8 + 96) = 0u;
    *(a8 + 112) = 0u;
    *(a8 + 64) = 0u;
    *(a8 + 80) = 0u;
    *(a8 + 32) = 0u;
    *(a8 + 48) = 0u;
    *a8 = 0u;
    *(a8 + 16) = 0u;
    sub_64B998(a8);
    sub_64B998(a8 + 160);
    sub_64B998(a8 + 320);
  }

  if ((v17 & 0x80) != 0)
  {
    operator delete(__p[0]);
  }

  sub_53A868(&v72);
  sub_53A868(&v57);
  return sub_53A868(&v42);
}

void sub_631068(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36)
{
  sub_53A868(v36 + 160);
  sub_53A868(v36);
  if (a35 < 0)
  {
    operator delete(__p);
  }

  sub_62A6D8(&a36);
  _Unwind_Resume(a1);
}

uint64_t sub_6310FC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_64B998(&v38);
  sub_64B998(&v53);
  sub_64B998(&v68);
  sub_638CC4(a2, __p);
  v12 = v37;
  v13 = v37;
  if ((v37 & 0x80u) != 0)
  {
    v12 = __p[1];
  }

  if (v12)
  {
    v14 = sub_9274F4(*(a1 + 136), __p);
    sub_64BC50(v35, v14, (*(a1 + 120) + 1177));
    sub_53D784(&v38, v35);
    sub_53A868(v35);
    sub_64239C(v35, a1, a2, a3, a4, a5);
    sub_53D784(&v53, v35);
    sub_53A868(v35);
    *a6 = v38;
    v15 = v41;
    *(a6 + 16) = v39;
    v38 = 0uLL;
    *(a6 + 24) = v40;
    *(a6 + 40) = v15;
    v39 = 0;
    v40 = 0uLL;
    v41 = 0;
    *(a6 + 48) = v42;
    v16 = v45;
    *(a6 + 64) = v43;
    v42 = 0uLL;
    *(a6 + 72) = v44;
    v43 = 0;
    v44 = 0uLL;
    v45 = 0;
    v17 = v46;
    *(a6 + 88) = v16;
    *(a6 + 96) = v17;
    LODWORD(v17) = v47;
    *(a6 + 108) = v48;
    *(a6 + 104) = v17;
    v18 = v49;
    v19 = v52;
    *(a6 + 128) = v50;
    *(a6 + 112) = v18;
    v46 = 0;
    v49 = 0uLL;
    v20 = v51;
    *(a6 + 152) = v19;
    *(a6 + 136) = v20;
    v52 = 0;
    v50 = 0;
    v51 = 0uLL;
    *(a6 + 160) = v53;
    v21 = v56;
    *(a6 + 176) = v54;
    v53 = 0uLL;
    v54 = 0;
    *(a6 + 184) = v55;
    *(a6 + 200) = v21;
    v55 = 0uLL;
    *(a6 + 208) = v57;
    *(a6 + 224) = v58;
    v58 = 0;
    v56 = 0;
    v57 = 0uLL;
    *(a6 + 232) = v59;
    v59 = 0uLL;
    v22 = v61;
    *(a6 + 248) = v60;
    *(a6 + 256) = v22;
    LODWORD(v22) = v62;
    *(a6 + 268) = v63;
    *(a6 + 264) = v22;
    v23 = v64;
    v24 = v67;
    *(a6 + 288) = v65;
    *(a6 + 272) = v23;
    v60 = 0;
    v61 = 0;
    v64 = 0uLL;
    v25 = v66;
    *(a6 + 312) = v24;
    *(a6 + 296) = v25;
    v67 = 0;
    v65 = 0;
    v66 = 0uLL;
    *(a6 + 320) = v68;
    v68 = 0uLL;
    v26 = v69;
    v27 = v70;
    v69 = 0;
    *(a6 + 336) = v26;
    *(a6 + 344) = v27;
    v70 = 0;
    v28 = v71;
    v29 = v72;
    v71 = 0uLL;
    *(a6 + 352) = v28;
    *(a6 + 368) = v29;
    v72 = 0uLL;
    v30 = v74;
    *(a6 + 384) = v73;
    *(a6 + 392) = v30;
    *(a6 + 400) = v75;
    v73 = 0;
    v74 = 0;
    v75 = 0uLL;
    *(a6 + 416) = v76;
    LODWORD(v26) = v77;
    *(a6 + 428) = v78;
    *(a6 + 424) = v26;
    v31 = v79;
    v32 = v82;
    *(a6 + 448) = v80;
    *(a6 + 432) = v31;
    v76 = 0;
    v79 = 0uLL;
    v80 = 0;
    v33 = v81;
    *(a6 + 472) = v32;
    *(a6 + 456) = v33;
    v81 = 0uLL;
    v82 = 0;
    v13 = v37;
  }

  else
  {
    *(a6 + 448) = 0u;
    *(a6 + 464) = 0u;
    *(a6 + 416) = 0u;
    *(a6 + 432) = 0u;
    *(a6 + 384) = 0u;
    *(a6 + 400) = 0u;
    *(a6 + 352) = 0u;
    *(a6 + 368) = 0u;
    *(a6 + 320) = 0u;
    *(a6 + 336) = 0u;
    *(a6 + 288) = 0u;
    *(a6 + 304) = 0u;
    *(a6 + 256) = 0u;
    *(a6 + 272) = 0u;
    *(a6 + 224) = 0u;
    *(a6 + 240) = 0u;
    *(a6 + 192) = 0u;
    *(a6 + 208) = 0u;
    *(a6 + 160) = 0u;
    *(a6 + 176) = 0u;
    *(a6 + 128) = 0u;
    *(a6 + 144) = 0u;
    *(a6 + 96) = 0u;
    *(a6 + 112) = 0u;
    *(a6 + 64) = 0u;
    *(a6 + 80) = 0u;
    *(a6 + 32) = 0u;
    *(a6 + 48) = 0u;
    *a6 = 0u;
    *(a6 + 16) = 0u;
    sub_64B998(a6);
    sub_64B998(a6 + 160);
    sub_64B998(a6 + 320);
  }

  if ((v13 & 0x80) != 0)
  {
    operator delete(__p[0]);
  }

  sub_53A868(&v68);
  sub_53A868(&v53);
  return sub_53A868(&v38);
}

void sub_63147C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36)
{
  sub_53A868(v36 + 160);
  sub_53A868(v36);
  if (a35 < 0)
  {
    operator delete(__p);
    sub_62A6D8(&a36);
    _Unwind_Resume(a1);
  }

  sub_62A6D8(&a36);
  _Unwind_Resume(a1);
}

void sub_6314E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  sub_53A868(v32 + 160);
  sub_53A868(va);
  _Unwind_Resume(a1);
}

void sub_6314FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  sub_53A868(va);
  _Unwind_Resume(a1);
}

void sub_631510(uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = *(a2 + 11856);
  v4 = *(a2 + 11864);
  if (v3 != v4)
  {
    v5 = v3 + 17;
    do
    {
      if (*(v5 - 8) == 1)
      {
        v8 = 16;
        v7 = *(v5 - 13);
        sub_5874C0(v5);
      }

      v6 = v5 + 4;
      v5 += 21;
    }

    while (v6 != v4);
  }
}

void sub_631708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  *(v5 + 8) = v6;
  sub_62A6D8(va);
  sub_53E440(v7 - 208);
  sub_5EC9F0(v5);
  _Unwind_Resume(a1);
}

void sub_63176C(_Unwind_Exception *a1)
{
  sub_53E440(v2 - 208);
  sub_5EC9F0(v1);
  _Unwind_Resume(a1);
}

void sub_631788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_53A868(v6 + 160);
  sub_53A868(va);
  sub_53E440(v7 - 208);
  sub_5EC9F0(v5);
  _Unwind_Resume(a1);
}

void sub_6317D0(uint64_t a1@<X0>, int *a2@<X1>, void *a4@<X8>)
{
  sub_5E94A4(a2, a1, 1, &v14);
  sub_4E51E0(a2, a1 & 0xFFFFFFFFFFFFLL, v12);
  sub_64AC90(&v10, v12, 0);
  sub_738918(&v14, a4);
  if ((v11 & 0x80000000) == 0)
  {
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(v12[0]);
    v7 = v14;
    if (!v14)
    {
      return;
    }

    goto LABEL_7;
  }

  operator delete(v10);
  if (v13 < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = v14;
  if (!v14)
  {
    return;
  }

LABEL_7:
  v8 = v15;
  v9 = v7;
  if (v15 != v7)
  {
    do
    {
      v8 = sub_310F30(v8 - 144);
    }

    while (v8 != v7);
    v9 = v14;
  }

  v15 = v7;
  operator delete(v9);
}

void sub_631924(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  sub_3108E8(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    if ((a25 & 0x80000000) == 0)
    {
LABEL_3:
      sub_5E9738((v25 - 56));
      _Unwind_Resume(a1);
    }
  }

  else if ((a25 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a20);
  sub_5E9738((v25 - 56));
  _Unwind_Resume(a1);
}

void sub_63199C(__int128 *a1@<X1>, uint64_t a2@<X8>, uint64_t a3@<X0>, uint64_t a4@<X2>)
{
  sub_631BCC(a3, a1, a4, v26);
  v25 = *(a1 + 4);
  v8 = a1[1];
  v24[0] = *a1;
  v24[1] = v8;
  BYTE6(v25) = BYTE6(v25) == 0;
  v9 = (*&v24[0] - **&v24[0]);
  if (*v9 >= 9u && (v10 = v9[4]) != 0)
  {
    v11 = *(*&v24[0] + v10);
  }

  else
  {
    v11 = 0;
  }

  sub_631BCC(a3, v24, v11 - a4, v13);
  if (sub_734C10(v26) && (!sub_734C10(v13) || v36 < v23))
  {
    v12 = v26;
LABEL_11:
    sub_5139E8(a2, v12);
    goto LABEL_13;
  }

  if (sub_734C10(v13))
  {
    v12 = v13;
    goto LABEL_11;
  }

  sub_734CE0(a2);
LABEL_13:
  if (v22 < 0)
  {
    operator delete(__p);
    if ((v20 & 0x80000000) == 0)
    {
LABEL_15:
      if ((v18 & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_26;
    }
  }

  else if ((v20 & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(v19);
  if ((v18 & 0x80000000) == 0)
  {
LABEL_16:
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_27;
  }

LABEL_26:
  operator delete(v17);
  if ((v16 & 0x80000000) == 0)
  {
LABEL_17:
    if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_28;
  }

LABEL_27:
  operator delete(v15);
  if ((v14 & 0x80000000) == 0)
  {
LABEL_18:
    if ((v35 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_29;
  }

LABEL_28:
  operator delete(v13[0]);
  if ((v35 & 0x80000000) == 0)
  {
LABEL_19:
    if ((v33 & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_30;
  }

LABEL_29:
  operator delete(v34);
  if ((v33 & 0x80000000) == 0)
  {
LABEL_20:
    if ((v31 & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_31;
  }

LABEL_30:
  operator delete(v32);
  if ((v31 & 0x80000000) == 0)
  {
LABEL_21:
    if ((v29 & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_32;
  }

LABEL_31:
  operator delete(v30);
  if ((v29 & 0x80000000) == 0)
  {
LABEL_22:
    if ((v27 & 0x80000000) == 0)
    {
      return;
    }

LABEL_33:
    operator delete(v26[0]);
    return;
  }

LABEL_32:
  operator delete(v28);
  if (v27 < 0)
  {
    goto LABEL_33;
  }
}

void sub_631B9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  sub_3E5388(va);
  _Unwind_Resume(a1);
}

void sub_631BB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  sub_3E5388(&a9);
  sub_3E5388(va);
  _Unwind_Resume(a1);
}

void sub_631BCC(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a2[1];
  v52 = *a2;
  v53 = v7;
  v54 = *(a2 + 4);
  sub_6317D0(a2[2] & 0xFFFFFFFFFFFFFFLL, *(a1 + 128), v42);
  v13 = (v52 - *v52);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = *(v52 + v14);
  }

  else
  {
    v15 = 0;
  }

  v16 = v15 - a3;
  while (v16 <= *(a1 + 24))
  {
    sub_6E663C(*(a1 + 152), &v52, 1, v8, v9, v10, v11, v12);
    v17 = v40;
    v18 = *v40;
    v19 = v40[1];
    if (*v40 == v19)
    {
LABEL_44:
      sub_62B864(a1, v17, v30);
      v52 = *v30;
      v53 = v31;
      v54 = __p;
      v26 = 3;
      if (!__p || !v52 || !*(&v52 + 1))
      {
        goto LABEL_57;
      }

      v27 = (v52 - *v52);
      if (*v27 >= 9u && (v28 = v27[4]) != 0)
      {
        v26 = 0;
        v16 += *(v52 + v28);
        v29 = v41;
        if (v41)
        {
          goto LABEL_58;
        }
      }

      else
      {
        v26 = 0;
        v29 = v41;
        if (v41)
        {
          goto LABEL_58;
        }
      }

      goto LABEL_6;
    }

    while (1)
    {
      v20 = *(v18 + 24);
      if (v20 - 41 >= 0x17)
      {
        v21 = v20 > 0x1C || ((1 << v20) & 0x183000C6) == 0;
        if (v21 && v20 - 86 >= 2)
        {
          goto LABEL_11;
        }
      }

      sub_6317D0(*(*(v18 + 8) - 8) & 0xFFFFFFFFFFFFFFLL, *(a1 + 128), v30);
      if (sub_734C10(v30))
      {
        if ((SBYTE7(v31) & 0x80u) == 0)
        {
          v22 = BYTE7(v31);
        }

        else
        {
          v22 = v30[1];
        }

        v23 = v43;
        if ((v43 & 0x80u) != 0)
        {
          v23 = v42[1];
        }

        if (v22 != v23)
        {
          break;
        }

        v24 = (SBYTE7(v31) & 0x80u) == 0 ? v30 : v30[0];
        v25 = (v43 & 0x80u) == 0 ? v42 : v42[0];
        if (memcmp(v24, v25, v22))
        {
          break;
        }
      }

      if (v39 < 0)
      {
        operator delete(v38);
        if ((v37 & 0x80000000) == 0)
        {
LABEL_33:
          if ((v35 & 0x80000000) == 0)
          {
            goto LABEL_34;
          }

          goto LABEL_38;
        }
      }

      else if ((v37 & 0x80000000) == 0)
      {
        goto LABEL_33;
      }

      operator delete(v36);
      if ((v35 & 0x80000000) == 0)
      {
LABEL_34:
        if (v33 < 0)
        {
          goto LABEL_10;
        }

        goto LABEL_39;
      }

LABEL_38:
      operator delete(v34);
      if (v33 < 0)
      {
LABEL_10:
        operator delete(__p);
        if (SBYTE7(v31) < 0)
        {
          goto LABEL_40;
        }

        goto LABEL_11;
      }

LABEL_39:
      if (SBYTE7(v31) < 0)
      {
LABEL_40:
        operator delete(v30[0]);
      }

LABEL_11:
      v18 += 248;
      if (v18 == v19)
      {
        v17 = v40;
        goto LABEL_44;
      }
    }

    sub_5139E8(a4, v30);
    *(a4 + 152) = v16;
    if (v39 < 0)
    {
      operator delete(v38);
      if (v37 < 0)
      {
        goto LABEL_63;
      }

LABEL_53:
      if ((v35 & 0x80000000) == 0)
      {
        goto LABEL_54;
      }

LABEL_64:
      operator delete(v34);
      if (v33 < 0)
      {
        goto LABEL_65;
      }

LABEL_55:
      if (SBYTE7(v31) < 0)
      {
LABEL_66:
        operator delete(v30[0]);
      }
    }

    else
    {
      if ((v37 & 0x80000000) == 0)
      {
        goto LABEL_53;
      }

LABEL_63:
      operator delete(v36);
      if (v35 < 0)
      {
        goto LABEL_64;
      }

LABEL_54:
      if ((v33 & 0x80000000) == 0)
      {
        goto LABEL_55;
      }

LABEL_65:
      operator delete(__p);
      if (SBYTE7(v31) < 0)
      {
        goto LABEL_66;
      }
    }

    v26 = 1;
LABEL_57:
    v29 = v41;
    if (v41)
    {
LABEL_58:
      if (!atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v29->__on_zero_shared)(v29);
        std::__shared_weak_count::__release_weak(v29);
      }
    }

LABEL_6:
    if (v26)
    {
      if (v26 != 3)
      {
        goto LABEL_69;
      }

      break;
    }
  }

  sub_734CE0(a4);
  *(a4 + 152) = 0x7FFFFFFFFFFFFFFFLL;
LABEL_69:
  if (v51 < 0)
  {
    operator delete(v50);
    if (v49 < 0)
    {
      goto LABEL_76;
    }

LABEL_71:
    if ((v47 & 0x80000000) == 0)
    {
      goto LABEL_72;
    }

LABEL_77:
    operator delete(v46);
    if (v45 < 0)
    {
      goto LABEL_78;
    }

LABEL_73:
    if (v43 < 0)
    {
LABEL_79:
      operator delete(v42[0]);
    }
  }

  else
  {
    if ((v49 & 0x80000000) == 0)
    {
      goto LABEL_71;
    }

LABEL_76:
    operator delete(v48);
    if (v47 < 0)
    {
      goto LABEL_77;
    }

LABEL_72:
    if ((v45 & 0x80000000) == 0)
    {
      goto LABEL_73;
    }

LABEL_78:
    operator delete(v44);
    if (v43 < 0)
    {
      goto LABEL_79;
    }
  }
}

void sub_631FD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  sub_3E5388(va);
  _Unwind_Resume(a1);
}

void sub_631FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  sub_3E5388(&a9);
  sub_1F1A8(&a28);
  sub_3E5388(va);
  _Unwind_Resume(a1);
}

void sub_632048(BOOL *a1, uint64_t *a2, uint64_t a3)
{
  HIBYTE(v8[2]) = 20;
  strcpy(v8, "EnrouteNoticeBuilder");
  memset(v7, 0, sizeof(v7));
  v6 = sub_3AEC94(a2, v8, v7);
  sub_41D60C(v6, 2u, *(a3 + 1566), &v9);
  sub_6365D8(a1, &v9, a2, a3);
}

void sub_632234(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

void sub_632278(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20)
{
  sub_5C010(&a20);
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_6322B4(_BYTE *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  sub_63265C(a1, a2, a3);
  sub_632C0C(a1, a2, &v38);
  sub_6399F0(a3, a3[1], v38, v39, 0x4FCACE213F2B3885 * ((v39 - v38) >> 3));
  sub_63384C(a1, a2, &v36);
  sub_6399F0(a3, a3[1], v36, v37, 0x4FCACE213F2B3885 * ((v37 - v36) >> 3));
  sub_633BCC(a1, &v34);
  sub_6399F0(a3, a3[1], v34, v35, 0x4FCACE213F2B3885 * ((v35 - v34) >> 3));
  sub_635170(a1, &v32);
  sub_6399F0(a3, a3[1], v32, v33, 0x4FCACE213F2B3885 * ((v33 - v32) >> 3));
  if (a1[13])
  {
    sub_637BD0(a2, v30);
    v6 = *v30;
  }

  else
  {
    v31 = 0;
    v6 = 0uLL;
    *v30 = 0u;
  }

  sub_6399F0(a3, a3[1], v6, *(&v6 + 1), 0x4FCACE213F2B3885 * ((*(&v6 + 1) - v6) >> 3));
  sub_6355E0(a1, a2, &__p);
  sub_6399F0(a3, a3[1], __p, v29, 0x4FCACE213F2B3885 * ((v29 - __p) >> 3));
  v7 = a3[1];
  v8 = 126 - 2 * __clz(0x4FCACE213F2B3885 * ((v7 - *a3) >> 3));
  if (v7 == *a3)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  sub_642B78(*a3, v7, &v40, v9, 1);
  v10 = __p;
  if (__p)
  {
    v11 = v29;
    v12 = __p;
    if (v29 != __p)
    {
      do
      {
        v11 -= 616;
        sub_5C2320(v11);
      }

      while (v11 != v10);
      v12 = __p;
    }

    v29 = v10;
    operator delete(v12);
  }

  v13 = v30[0];
  if (v30[0])
  {
    v14 = v30[1];
    v15 = v30[0];
    if (v30[1] != v30[0])
    {
      do
      {
        v14 -= 616;
        sub_5C2320(v14);
      }

      while (v14 != v13);
      v15 = v30[0];
    }

    v30[1] = v13;
    operator delete(v15);
  }

  v16 = v32;
  if (v32)
  {
    v17 = v33;
    v18 = v32;
    if (v33 != v32)
    {
      do
      {
        v17 -= 616;
        sub_5C2320(v17);
      }

      while (v17 != v16);
      v18 = v32;
    }

    v33 = v16;
    operator delete(v18);
  }

  v19 = v34;
  if (v34)
  {
    v20 = v35;
    v21 = v34;
    if (v35 != v34)
    {
      do
      {
        v20 -= 616;
        sub_5C2320(v20);
      }

      while (v20 != v19);
      v21 = v34;
    }

    v35 = v19;
    operator delete(v21);
  }

  v22 = v36;
  if (v36)
  {
    v23 = v37;
    v24 = v36;
    if (v37 != v36)
    {
      do
      {
        v23 -= 616;
        sub_5C2320(v23);
      }

      while (v23 != v22);
      v24 = v36;
    }

    v37 = v22;
    operator delete(v24);
  }

  v25 = v38;
  if (v38)
  {
    v26 = v39;
    v27 = v38;
    if (v39 != v38)
    {
      do
      {
        v26 -= 616;
        sub_5C2320(v26);
      }

      while (v26 != v25);
      v27 = v38;
    }

    v39 = v25;
    operator delete(v27);
  }
}

void sub_6325A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v18 = va_arg(va1, char *);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  sub_5EC9F0(va);
  sub_5EC9F0(va1);
  sub_5EC9F0((v16 - 88));
  sub_5EC9F0((v16 - 64));
  sub_5EC9F0(v15);
  _Unwind_Resume(a1);
}

void sub_632628(_Unwind_Exception *a1)
{
  sub_5EC9F0((v2 - 64));
  sub_5EC9F0(v1);
  _Unwind_Resume(a1);
}

void sub_63265C(_BYTE *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (*a1 & 1) != 0 || (a1[1] & 1) != 0 || (a1[2] & 1) != 0 || (a1[3] & 1) != 0 || (a1[4] & 1) != 0 || (a1[5] & 1) != 0 || (a1[8] & 1) != 0 || (a1[12])
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v5 = (a2[139] - a2[138]) >> 3;
    v6 = 0x3795876FF3795877 * v5 - 1;
    if (0x3795876FF3795877 * v5 != 1)
    {
      v7 = 0;
      v8 = 640;
      do
      {
        v9 = sub_637150(a1, v7, a2);
        if ((v9 & 0x100) != 0)
        {
          if (v9 > 0x16u)
          {
            v10 = 0;
          }

          else
          {
            v10 = dword_229C388[v9 & 0x1F];
          }

          sub_58738C(v10);
        }

        ++v7;
        v8 += 2616;
      }

      while (v6 != v7);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void sub_632AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *(v3 + 8) = v4;
  sub_62A6D8(va);
  sub_53E440(v5 - 216);
  sub_5EC9F0(v3);
  _Unwind_Resume(a1);
}

void sub_632B7C(_Unwind_Exception *a1)
{
  sub_53E440(v2 - 216);
  sub_5EC9F0(v1);
  _Unwind_Resume(a1);
}

void sub_632C0C(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (*(a1 + 6))
  {
    v3 = a2[1530];
    v4 = a2[1531];
    if (v3 == v4)
    {
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
    }

    else
    {
      v5 = 0;
      v6 = 0;
      do
      {
        if (*(v3 + 4) == 3 && *(v3 + 10) == 0)
        {
          v8 = v5 - v6;
          v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v6) >> 4);
          v10 = v9 + 1;
          if (v9 + 1 > 0x555555555555555)
          {
            sub_1794();
          }

          if (0x5555555555555556 * (-v6 >> 4) > v10)
          {
            v10 = 0x5555555555555556 * (-v6 >> 4);
          }

          if (0xAAAAAAAAAAAAAAABLL * (-v6 >> 4) >= 0x2AAAAAAAAAAAAAALL)
          {
            v11 = 0x555555555555555;
          }

          else
          {
            v11 = v10;
          }

          if (v11)
          {
            if (v11 <= 0x555555555555555)
            {
              operator new();
            }

            sub_1808();
          }

          v12 = v6;
          v13 = (16 * ((v5 - v6) >> 4));
          v14 = *v3;
          v15 = v3[2];
          v13[1] = v3[1];
          v13[2] = v15;
          *v13 = v14;
          v5 = (v13 + 3);
          v6 = 48 * v9 + 48 * (v8 / -48);
          v16 = v12;
          memcpy(&v13[3 * (v8 / -48)], v12, v8);
          if (v16)
          {
            operator delete(v16);
          }
        }

        v3 += 3;
      }

      while (v3 != v4);
      if (v6 != v5)
      {
        *a3 = 0;
        a3[1] = 0;
        a3[2] = 0;
        v33 = 0;
        __src = 0;
        v17 = sub_4D1DC0(a2);
        if (v17)
        {
          v18 = 0;
          for (i = 0; i != v17; ++i)
          {
            v20 = __src;
            v21 = (v33 - __src) >> 3;
            v22 = v21 + 1;
            if ((v21 + 1) >> 61)
            {
              sub_1794();
            }

            v23 = -__src;
            if (-__src >> 2 > v22)
            {
              v22 = v23 >> 2;
            }

            if (v23 >= 0x7FFFFFFFFFFFFFF8)
            {
              v24 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v24 = v22;
            }

            if (v24)
            {
              if (!(v24 >> 61))
              {
                operator new();
              }

              sub_1808();
            }

            v25 = (8 * v21);
            v26 = &v25[-((v33 - __src) >> 3)];
            *v25 = v18;
            v27 = v25 + 1;
            memcpy(v26, __src, v33 - __src);
            __src = v26;
            if (v20)
            {
              operator delete(v20);
            }

            v33 = v27;
            v18 += sub_4D23F8(a2, i, v28);
          }
        }

        if (*v6 <= 0.0)
        {
          v29 = 17;
        }

        else
        {
          v29 = 16;
        }

        sub_58738C(v29);
      }

      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      if (v6)
      {
        operator delete(v6);
      }
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void sub_6336A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char **a18)
{
  v19 = STACK[0x2D0];
  if (STACK[0x2D0])
  {
    STACK[0x2D8] = v19;
    operator delete(v19);
  }

  sub_5EC9F0(a18);
  if (a9)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_63384C@<X0>(unint64_t result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = *(result + 11);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (v4 == 1)
  {
    v6 = result;
    v21 = 0;
    result = sub_4D1DC0(a2);
    v7 = result;
    if (result)
    {
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v10 = sub_4D1F50(a2, v9);
        if (!v8)
        {
          break;
        }

        v12 = (*v10 - **v10);
        v13 = *v12;
        if ((*(v10 + 39) & 0x20) != 0)
        {
          if (v13 < 0x47)
          {
            goto LABEL_23;
          }

          v14 = v12[35];
          if (!v14)
          {
            goto LABEL_23;
          }

          v15 = 0x8000;
        }

        else
        {
          if (v13 < 0x47)
          {
            goto LABEL_23;
          }

          v14 = v12[35];
          if (!v14)
          {
            goto LABEL_23;
          }

          v15 = 0x10000;
        }

        v8 = (*(*v10 + v14) & v15) != 0;
LABEL_24:
        result = sub_4D23F8(a2, v9, v11);
        v21 += result;
        if (v7 == ++v9)
        {
          return result;
        }
      }

      if (*(v6 + 11) == 1)
      {
        v16 = *v10;
        v17 = (*v10 - **v10);
        v18 = *v17;
        if ((*(v10 + 39) & 0x20) != 0)
        {
          if (v18 >= 0x47)
          {
            v20 = v17[35];
            if (v20)
            {
              if ((*&v16[v20] & 0x8000) != 0)
              {
LABEL_22:
                sub_58738C(6u);
              }
            }
          }
        }

        else if (v18 >= 0x47)
        {
          v19 = v17[35];
          if (v19)
          {
            if ((*&v16[v19] & 0x10000) != 0)
            {
              goto LABEL_22;
            }
          }
        }
      }

LABEL_23:
      v8 = 0;
      goto LABEL_24;
    }
  }

  return result;
}

void sub_633AF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_53A868(v4 + 296);
  sub_53A868(v4 + 136);
  sub_53E440(v4 + 16);
  *(v3 + 8) = v4;
  sub_62A6D8(va);
  sub_53E440(v5 - 216);
  sub_5EC9F0(v3);
  _Unwind_Resume(a1);
}

void sub_633B60(_Unwind_Exception *a1)
{
  sub_53E440(v2 - 216);
  sub_5EC9F0(v1);
  _Unwind_Resume(a1);
}

void sub_633BCC(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (*(a1 + 8) == 1)
  {
    operator new();
  }
}

void sub_634EBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  operator delete(__p);
  sub_5EC9F0(v11);
  _Unwind_Resume(a1);
}

void sub_634ED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p)
{
  sub_53E440(&STACK[0x280]);
  operator delete(__p);
  sub_5EC9F0(v11);
  _Unwind_Resume(a1);
}

void sub_635170(uint64_t a1@<X0>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (*(a1 + 14) == 1)
  {
    sub_58738C(0xAu);
  }
}

void sub_63550C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char **a9)
{
  sub_53E440(v9 - 224);
  sub_5EC9F0(a9);
  _Unwind_Resume(a1);
}

void sub_63553C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_53A868(v6 + 296);
  sub_53A868(v6 + 136);
  sub_53E440(v6 + 16);
  *(a4 + 8) = v6;
  sub_62A6D8(va);
  operator delete(v5);
  sub_53E440(v7 - 224);
  sub_5EC9F0(a4);
  _Unwind_Resume(a1);
}

void sub_6355E0(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + 16);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (v4 == 1)
  {
    v8 = a2[139];
    if (a2[138] != v8)
    {
      v5 = a2[138];
      do
      {
        v6 = *(v5 + 1960);
        v9 = v5;
        if (v6 != *(v5 + 1968))
        {
          if (*(a1 + 17) == 1 && sub_67E34C(v6) >= 2)
          {
            vcvtd_n_f64_s64(sub_4D2544(a2, **v6, 0, *(*(v6 + 8) - 8), 1u, v7), 1uLL);
          }

          sub_58738C(0x14u);
        }

        v5 += 2616;
      }

      while (v9 + 2616 != v8);
    }
  }
}

void sub_635EF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  if (*(v15 + 87) < 0)
  {
    operator delete(*(v15 + 64));
  }

  sub_55DB28(v14);
  *(v13 + 8) = v15;
  sub_62A6D8(va);
  sub_53E440(v16 - 248);
  sub_5EC9F0(v13);
  _Unwind_Resume(a1);
}

void sub_63602C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_53A868(v14 + 160);
  sub_53A868(va);
  sub_53E440(v15 - 248);
  sub_5EC9F0(v13);
  _Unwind_Resume(a1);
}

double sub_636098(_BYTE *a1)
{
  nullsub_1();
  v4 = *v3;
  v5 = *(v3 + 8);
  if (*v3 != v5)
  {
    do
    {
      sub_6322B4(a1, v4, &v12);
      v7 = v4[1534];
      if (v7)
      {
        v8 = v4[1535];
        v6 = v4[1534];
        if (v8 != v7)
        {
          v9 = v8 - 600;
          while (1)
          {
            sub_53A868(v9 + 440);
            sub_53A868(v9 + 280);
            sub_53A868(v9 + 120);
            if (*(v9 + 103) < 0)
            {
              operator delete(*(v9 + 80));
              if ((*(v9 + 71) & 0x80000000) == 0)
              {
LABEL_12:
                v11 = *(v9 + 32);
                if (v11 == -1)
                {
                  goto LABEL_9;
                }

LABEL_16:
                (off_266BE00[v11])(&v14, v9);
                goto LABEL_9;
              }
            }

            else if ((*(v9 + 71) & 0x80000000) == 0)
            {
              goto LABEL_12;
            }

            operator delete(*(v9 + 48));
            v11 = *(v9 + 32);
            if (v11 != -1)
            {
              goto LABEL_16;
            }

LABEL_9:
            *(v9 + 32) = -1;
            v10 = v9 - 16;
            v9 -= 616;
            if (v10 == v7)
            {
              v6 = v4[1534];
              break;
            }
          }
        }

        v4[1535] = v7;
        operator delete(v6);
      }

      result = *&v12;
      *(v4 + 767) = v12;
      v4[1536] = v13;
      v4 += 1582;
    }

    while (v4 != v5);
  }

  return result;
}

void sub_6361E0(_DWORD *a1, void *a2)
{
  v3 = 16;
  strcpy(__p, "cycling_dismount");
  *a1 = sub_629380(a2, __p);
  if (v3 < 0)
  {
    operator delete(*__p);
  }

  operator new();
}

void sub_63658C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_6365D8(BOOL *a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v23 = 15;
  strcpy(__p, "enable_elevator");
  v7 = sub_5F9D0(a2, __p);
  if (v23 < 0)
  {
    v8 = v7;
    operator delete(*__p);
    v7 = v8;
  }

  *a1 = v7;
  v23 = 16;
  strcpy(__p, "enable_escalator");
  v9 = sub_5F9D0(a2, __p);
  if (v23 < 0)
  {
    v10 = v9;
    operator delete(*__p);
    v9 = v10;
  }

  a1[1] = v9;
  v23 = 13;
  strcpy(__p, "enable_stairs");
  v11 = sub_5F9D0(a2, __p);
  if (v23 < 0)
  {
    v12 = v11;
    operator delete(*__p);
    v11 = v12;
  }

  a1[2] = v11;
  v23 = 18;
  strcpy(__p, "enable_stairs_down");
  v13 = sub_5F9D0(a2, __p);
  if (v23 < 0)
  {
    v14 = v13;
    operator delete(*__p);
    v13 = v14;
  }

  a1[3] = v13;
  v23 = 16;
  strcpy(__p, "enable_stairs_up");
  v15 = sub_5F9D0(a2, __p);
  if (v23 < 0)
  {
    v16 = v15;
    operator delete(*__p);
    v15 = v16;
  }

  a1[4] = v15;
  v23 = 20;
  strcpy(__p, "enable_stairs_bridge");
  v17 = sub_5F9D0(a2, __p);
  if (v23 < 0)
  {
    v18 = v17;
    operator delete(*__p);
    v17 = v18;
  }

  a1[5] = v17;
  v23 = 18;
  strcpy(__p, "enable_steep_hills");
  v19 = sub_5F9D0(a2, __p);
  if (v23 < 0)
  {
    v20 = v19;
    operator delete(*__p);
    v19 = v20;
  }

  a1[6] = v19;
  v23 = 20;
  strcpy(__p, "enable_slope_display");
  if (sub_5F9D0(a2, __p))
  {
    v21 = 1;
    if ((v23 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v21 = sub_3B0454(a3);
    if ((v23 & 0x80000000) == 0)
    {
LABEL_18:
      a1[7] = v21;
      operator new();
    }
  }

  operator delete(*__p);
  goto LABEL_18;
}

void sub_6370D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_637150(_BYTE *a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_50EA30((a3 + 1104), a2);
  v7 = sub_50EA30((a3 + 1104), a2 + 1);
  if (*a1 == 1 && *(v6 + 632) != -1)
  {
    v12 = 1;
    v13 = 20;
    return v13 | (v12 << 8);
  }

  if (a1[12] == 1 && *(v6 + 160) == 22)
  {
    v12 = 1;
    v13 = 15;
    return v13 | (v12 << 8);
  }

  if (a1[15] == 1 && *(v6 + 384) != 2 && *(v7 + 384) == 2)
  {
    operator new();
  }

  if (a1[1] == 1)
  {
    v11 = *(v6 + 640);
    v12 = *(v6 + 680);
    if (v11 != -1 && v12 == 1)
    {
      v13 = 1;
      return v13 | (v12 << 8);
    }

    if (v11 != -1 && v12 == 2)
    {
      v12 = 1;
      v13 = 2;
      return v13 | (v12 << 8);
    }

    if (v11 != -1)
    {
      v13 = 0;
      goto LABEL_43;
    }
  }

  v15 = *(v6 + 2420);
  if (a1[5] == 1 && v15 == 1)
  {
    v12 = 1;
    v13 = 6;
    return v13 | (v12 << 8);
  }

  v13 = 0;
  if (v15)
  {
    v16 = a1[5];
  }

  else
  {
    v16 = 0;
  }

  if (a1[2] != 1 || *(v6 + 624) == -1)
  {
    v12 = 0;
    return v13 | (v12 << 8);
  }

  v12 = 0;
  if ((v16 & 1) == 0)
  {
    v17 = *(v6 + 680);
    if (a1[4] == 1 && v17 == 1)
    {
      v12 = 1;
      v13 = 4;
      return v13 | (v12 << 8);
    }

    if ((a1[3] & (v17 == 2)) != 0)
    {
      v13 = 5;
    }

    else
    {
      v13 = 3;
    }

LABEL_43:
    v12 = 1;
  }

  return v13 | (v12 << 8);
}

void sub_637374(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_637390@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, std::string *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_64B998(&v42);
  sub_64B998(&v57);
  sub_64B998(&v72);
  sub_638CC4(a2, __p);
  v16 = v41;
  v17 = v41;
  if ((v41 & 0x80u) != 0)
  {
    v16 = __p[1];
  }

  if (v16)
  {
    v18 = sub_9274F4(*(a1 + 136), __p);
    sub_64BC50(v39, v18, (*(a1 + 120) + 1177));
    sub_53D784(&v42, v39);
    sub_53A868(v39);
    sub_645710(a1, a2, a3, a4, a6, v39, a5);
    sub_53D784(&v57, v39);
    sub_53A868(v39);
    sub_645C60(a7, &v42);
    *a8 = v42;
    v19 = v45;
    *(a8 + 16) = v43;
    v42 = 0uLL;
    *(a8 + 24) = v44;
    *(a8 + 40) = v19;
    v43 = 0;
    v44 = 0uLL;
    v45 = 0;
    *(a8 + 48) = v46;
    v20 = v49;
    *(a8 + 64) = v47;
    v46 = 0uLL;
    *(a8 + 72) = v48;
    v47 = 0;
    v48 = 0uLL;
    v49 = 0;
    v21 = v50;
    *(a8 + 88) = v20;
    *(a8 + 96) = v21;
    LODWORD(v21) = v51;
    *(a8 + 108) = v52;
    *(a8 + 104) = v21;
    v22 = v53;
    v23 = v56;
    *(a8 + 128) = v54;
    *(a8 + 112) = v22;
    v50 = 0;
    v53 = 0uLL;
    v24 = v55;
    *(a8 + 152) = v23;
    *(a8 + 136) = v24;
    v56 = 0;
    v54 = 0;
    v55 = 0uLL;
    *(a8 + 160) = v57;
    v25 = v60;
    *(a8 + 176) = v58;
    v57 = 0uLL;
    v58 = 0;
    *(a8 + 184) = v59;
    *(a8 + 200) = v25;
    v59 = 0uLL;
    *(a8 + 208) = v61;
    *(a8 + 224) = v62;
    v62 = 0;
    v60 = 0;
    v61 = 0uLL;
    *(a8 + 232) = v63;
    v63 = 0uLL;
    v26 = v65;
    *(a8 + 248) = v64;
    *(a8 + 256) = v26;
    LODWORD(v26) = v66;
    *(a8 + 268) = v67;
    *(a8 + 264) = v26;
    v27 = v68;
    v28 = v71;
    *(a8 + 288) = v69;
    *(a8 + 272) = v27;
    v64 = 0;
    v65 = 0;
    v68 = 0uLL;
    v29 = v70;
    *(a8 + 312) = v28;
    *(a8 + 296) = v29;
    v71 = 0;
    v69 = 0;
    v70 = 0uLL;
    *(a8 + 320) = v72;
    v72 = 0uLL;
    v30 = v73;
    v31 = v74;
    v73 = 0;
    *(a8 + 336) = v30;
    *(a8 + 344) = v31;
    v74 = 0;
    v32 = v75;
    v33 = v76;
    v75 = 0uLL;
    *(a8 + 352) = v32;
    *(a8 + 368) = v33;
    v76 = 0uLL;
    v34 = v78;
    *(a8 + 384) = v77;
    *(a8 + 392) = v34;
    *(a8 + 400) = v79;
    v77 = 0;
    v78 = 0;
    v79 = 0uLL;
    *(a8 + 416) = v80;
    LODWORD(v30) = v81;
    *(a8 + 428) = v82;
    *(a8 + 424) = v30;
    v35 = v83;
    v36 = v86;
    *(a8 + 448) = v84;
    *(a8 + 432) = v35;
    v80 = 0;
    v83 = 0uLL;
    v84 = 0;
    v37 = v85;
    *(a8 + 472) = v36;
    *(a8 + 456) = v37;
    v85 = 0uLL;
    v86 = 0;
    v17 = v41;
  }

  else
  {
    *(a8 + 448) = 0u;
    *(a8 + 464) = 0u;
    *(a8 + 416) = 0u;
    *(a8 + 432) = 0u;
    *(a8 + 384) = 0u;
    *(a8 + 400) = 0u;
    *(a8 + 352) = 0u;
    *(a8 + 368) = 0u;
    *(a8 + 320) = 0u;
    *(a8 + 336) = 0u;
    *(a8 + 288) = 0u;
    *(a8 + 304) = 0u;
    *(a8 + 256) = 0u;
    *(a8 + 272) = 0u;
    *(a8 + 224) = 0u;
    *(a8 + 240) = 0u;
    *(a8 + 192) = 0u;
    *(a8 + 208) = 0u;
    *(a8 + 160) = 0u;
    *(a8 + 176) = 0u;
    *(a8 + 128) = 0u;
    *(a8 + 144) = 0u;
    *(a8 + 96) = 0u;
    *(a8 + 112) = 0u;
    *(a8 + 64) = 0u;
    *(a8 + 80) = 0u;
    *(a8 + 32) = 0u;
    *(a8 + 48) = 0u;
    *a8 = 0u;
    *(a8 + 16) = 0u;
    sub_64B998(a8);
    sub_64B998(a8 + 160);
    sub_64B998(a8 + 320);
  }

  if ((v17 & 0x80) != 0)
  {
    operator delete(__p[0]);
  }

  sub_53A868(&v72);
  sub_53A868(&v57);
  return sub_53A868(&v42);
}

void sub_637728(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36)
{
  sub_53A868(v36 + 160);
  sub_53A868(v36);
  if (a35 < 0)
  {
    operator delete(__p);
  }

  sub_62A6D8(&a36);
  _Unwind_Resume(a1);
}

uint64_t sub_6377BC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_64B998(&v38);
  sub_64B998(&v53);
  sub_64B998(&v68);
  sub_638CC4(a2, __p);
  v12 = v37;
  v13 = v37;
  if ((v37 & 0x80u) != 0)
  {
    v12 = __p[1];
  }

  if (v12)
  {
    v14 = sub_9274F4(*(a1 + 136), __p);
    sub_64BC50(v35, v14, (*(a1 + 120) + 1177));
    sub_53D784(&v38, v35);
    sub_53A868(v35);
    sub_645D6C(v35, a1, a2, a3, a4, a5);
    sub_53D784(&v53, v35);
    sub_53A868(v35);
    *a6 = v38;
    v15 = v41;
    *(a6 + 16) = v39;
    v38 = 0uLL;
    *(a6 + 24) = v40;
    *(a6 + 40) = v15;
    v39 = 0;
    v40 = 0uLL;
    v41 = 0;
    *(a6 + 48) = v42;
    v16 = v45;
    *(a6 + 64) = v43;
    v42 = 0uLL;
    *(a6 + 72) = v44;
    v43 = 0;
    v44 = 0uLL;
    v45 = 0;
    v17 = v46;
    *(a6 + 88) = v16;
    *(a6 + 96) = v17;
    LODWORD(v17) = v47;
    *(a6 + 108) = v48;
    *(a6 + 104) = v17;
    v18 = v49;
    v19 = v52;
    *(a6 + 128) = v50;
    *(a6 + 112) = v18;
    v46 = 0;
    v49 = 0uLL;
    v20 = v51;
    *(a6 + 152) = v19;
    *(a6 + 136) = v20;
    v52 = 0;
    v50 = 0;
    v51 = 0uLL;
    *(a6 + 160) = v53;
    v21 = v56;
    *(a6 + 176) = v54;
    v53 = 0uLL;
    v54 = 0;
    *(a6 + 184) = v55;
    *(a6 + 200) = v21;
    v55 = 0uLL;
    *(a6 + 208) = v57;
    *(a6 + 224) = v58;
    v58 = 0;
    v56 = 0;
    v57 = 0uLL;
    *(a6 + 232) = v59;
    v59 = 0uLL;
    v22 = v61;
    *(a6 + 248) = v60;
    *(a6 + 256) = v22;
    LODWORD(v22) = v62;
    *(a6 + 268) = v63;
    *(a6 + 264) = v22;
    v23 = v64;
    v24 = v67;
    *(a6 + 288) = v65;
    *(a6 + 272) = v23;
    v60 = 0;
    v61 = 0;
    v64 = 0uLL;
    v25 = v66;
    *(a6 + 312) = v24;
    *(a6 + 296) = v25;
    v67 = 0;
    v65 = 0;
    v66 = 0uLL;
    *(a6 + 320) = v68;
    v68 = 0uLL;
    v26 = v69;
    v27 = v70;
    v69 = 0;
    *(a6 + 336) = v26;
    *(a6 + 344) = v27;
    v70 = 0;
    v28 = v71;
    v29 = v72;
    v71 = 0uLL;
    *(a6 + 352) = v28;
    *(a6 + 368) = v29;
    v72 = 0uLL;
    v30 = v74;
    *(a6 + 384) = v73;
    *(a6 + 392) = v30;
    *(a6 + 400) = v75;
    v73 = 0;
    v74 = 0;
    v75 = 0uLL;
    *(a6 + 416) = v76;
    LODWORD(v26) = v77;
    *(a6 + 428) = v78;
    *(a6 + 424) = v26;
    v31 = v79;
    v32 = v82;
    *(a6 + 448) = v80;
    *(a6 + 432) = v31;
    v76 = 0;
    v79 = 0uLL;
    v80 = 0;
    v33 = v81;
    *(a6 + 472) = v32;
    *(a6 + 456) = v33;
    v81 = 0uLL;
    v82 = 0;
    v13 = v37;
  }

  else
  {
    *(a6 + 448) = 0u;
    *(a6 + 464) = 0u;
    *(a6 + 416) = 0u;
    *(a6 + 432) = 0u;
    *(a6 + 384) = 0u;
    *(a6 + 400) = 0u;
    *(a6 + 352) = 0u;
    *(a6 + 368) = 0u;
    *(a6 + 320) = 0u;
    *(a6 + 336) = 0u;
    *(a6 + 288) = 0u;
    *(a6 + 304) = 0u;
    *(a6 + 256) = 0u;
    *(a6 + 272) = 0u;
    *(a6 + 224) = 0u;
    *(a6 + 240) = 0u;
    *(a6 + 192) = 0u;
    *(a6 + 208) = 0u;
    *(a6 + 160) = 0u;
    *(a6 + 176) = 0u;
    *(a6 + 128) = 0u;
    *(a6 + 144) = 0u;
    *(a6 + 96) = 0u;
    *(a6 + 112) = 0u;
    *(a6 + 64) = 0u;
    *(a6 + 80) = 0u;
    *(a6 + 32) = 0u;
    *(a6 + 48) = 0u;
    *a6 = 0u;
    *(a6 + 16) = 0u;
    sub_64B998(a6);
    sub_64B998(a6 + 160);
    sub_64B998(a6 + 320);
  }

  if ((v13 & 0x80) != 0)
  {
    operator delete(__p[0]);
  }

  sub_53A868(&v68);
  sub_53A868(&v53);
  return sub_53A868(&v38);
}

void sub_637B3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36)
{
  sub_53A868(v36 + 160);
  sub_53A868(v36);
  if (a35 < 0)
  {
    operator delete(__p);
    sub_62A6D8(&a36);
    _Unwind_Resume(a1);
  }

  sub_62A6D8(&a36);
  _Unwind_Resume(a1);
}

void sub_637BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  sub_53A868(v32 + 160);
  sub_53A868(va);
  _Unwind_Resume(a1);
}

void sub_637BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  sub_53A868(va);
  _Unwind_Resume(a1);
}

void sub_637BD0(uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = *(a2 + 11856);
  v4 = *(a2 + 11864);
  if (v3 != v4)
  {
    v5 = v3 + 17;
    do
    {
      if (*(v5 - 8) == 1)
      {
        v8 = 16;
        v7 = *(v5 - 13);
        sub_5874C0(v5);
      }

      v6 = v5 + 4;
      v5 += 21;
    }

    while (v6 != v4);
  }
}

void sub_637DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  *(v5 + 8) = v6;
  sub_62A6D8(va);
  sub_53E440(v7 - 208);
  sub_5EC9F0(v5);
  _Unwind_Resume(a1);
}

void sub_637E2C(_Unwind_Exception *a1)
{
  sub_53E440(v2 - 208);
  sub_5EC9F0(v1);
  _Unwind_Resume(a1);
}

void sub_637E48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_53A868(v6 + 160);
  sub_53A868(va);
  sub_53E440(v7 - 208);
  sub_5EC9F0(v5);
  _Unwind_Resume(a1);
}

void sub_637E90(uint64_t a1@<X0>, int *a2@<X1>, uint64_t x8_0@<X8>)
{
  sub_5E94A4(a2, a1, 1, &v14);
  sub_4E51E0(a2, a1 & 0xFFFFFFFFFFFFLL, v12);
  sub_64AC90(&v10, v12, 0);
  sub_73BE28(&v14, x8_0);
  if ((v11 & 0x80000000) == 0)
  {
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(v12[0]);
    v7 = v14;
    if (!v14)
    {
      return;
    }

    goto LABEL_7;
  }

  operator delete(v10);
  if (v13 < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = v14;
  if (!v14)
  {
    return;
  }

LABEL_7:
  v8 = v15;
  v9 = v7;
  if (v15 != v7)
  {
    do
    {
      v8 = sub_310F30(v8 - 144);
    }

    while (v8 != v7);
    v9 = v14;
  }

  v15 = v7;
  operator delete(v9);
}

void sub_637FE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  sub_3108E8(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    if ((a25 & 0x80000000) == 0)
    {
LABEL_3:
      sub_5E9738((v25 - 56));
      _Unwind_Resume(a1);
    }
  }

  else if ((a25 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a20);
  sub_5E9738((v25 - 56));
  _Unwind_Resume(a1);
}

void sub_63805C(__int128 *a1@<X1>, uint64_t a2@<X8>, char *a3@<X0>, uint64_t a4@<X2>)
{
  sub_63829C(a3, a1, a4, v26);
  v25 = *(a1 + 4);
  v8 = a1[1];
  v24[0] = *a1;
  v24[1] = v8;
  v25 = v25 | (((HIDWORD(v25) & 0x7FFFFFFF | ((HIDWORD(v25) >> 30 == 0) << 31)) ^ 0x20000000u) << 32);
  v9 = (*&v24[0] - **&v24[0]);
  if (*v9 >= 9u && (v10 = v9[4]) != 0)
  {
    v11 = *(*&v24[0] + v10);
  }

  else
  {
    v11 = 0;
  }

  sub_63829C(a3, v24, v11 - a4, v13);
  if (sub_734C10(v26) && (!sub_734C10(v13) || v36 < v23))
  {
    v12 = v26;
LABEL_11:
    sub_5139E8(a2, v12);
    goto LABEL_13;
  }

  if (sub_734C10(v13))
  {
    v12 = v13;
    goto LABEL_11;
  }

  sub_734CE0(a2);
LABEL_13:
  if (v22 < 0)
  {
    operator delete(__p);
    if ((v20 & 0x80000000) == 0)
    {
LABEL_15:
      if ((v18 & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_26;
    }
  }

  else if ((v20 & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(v19);
  if ((v18 & 0x80000000) == 0)
  {
LABEL_16:
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_27;
  }

LABEL_26:
  operator delete(v17);
  if ((v16 & 0x80000000) == 0)
  {
LABEL_17:
    if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_28;
  }

LABEL_27:
  operator delete(v15);
  if ((v14 & 0x80000000) == 0)
  {
LABEL_18:
    if ((v35 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_29;
  }

LABEL_28:
  operator delete(v13[0]);
  if ((v35 & 0x80000000) == 0)
  {
LABEL_19:
    if ((v33 & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_30;
  }

LABEL_29:
  operator delete(v34);
  if ((v33 & 0x80000000) == 0)
  {
LABEL_20:
    if ((v31 & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_31;
  }

LABEL_30:
  operator delete(v32);
  if ((v31 & 0x80000000) == 0)
  {
LABEL_21:
    if ((v29 & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_32;
  }

LABEL_31:
  operator delete(v30);
  if ((v29 & 0x80000000) == 0)
  {
LABEL_22:
    if ((v27 & 0x80000000) == 0)
    {
      return;
    }

LABEL_33:
    operator delete(v26[0]);
    return;
  }

LABEL_32:
  operator delete(v28);
  if (v27 < 0)
  {
    goto LABEL_33;
  }
}

void sub_63826C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  sub_3E5388(va);
  _Unwind_Resume(a1);
}

void sub_638280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  sub_3E5388(&a9);
  sub_3E5388(va);
  _Unwind_Resume(a1);
}

void sub_63829C(char *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a2[1];
  v52 = *a2;
  v53 = v7;
  v54 = *(a2 + 4);
  sub_637E90((((*(a2 + 9) & 0x20000000) << 19) | (*(a2 + 9) << 32) | *(a2 + 8)) ^ 0x1000000000000, *(a1 + 16), v42);
  v13 = (v52 - *v52);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = *(v52 + v14);
  }

  else
  {
    v15 = 0;
  }

  v16 = v15 - a3;
  while (v16 <= *(a1 + 3))
  {
    sub_6F57B8(*(a1 + 19), &v52, 1, v8, v9, v10, v11, v12);
    v17 = v40;
    v18 = *v40;
    v19 = v40[1];
    if (*v40 == v19)
    {
LABEL_44:
      sub_63872C(a1, v17, v30);
      v52 = *v30;
      v53 = v31;
      v54 = __p;
      v26 = 3;
      if (!__p || !v52 || !*(&v52 + 1))
      {
        goto LABEL_57;
      }

      v27 = (v52 - *v52);
      if (*v27 >= 9u && (v28 = v27[4]) != 0)
      {
        v26 = 0;
        v16 += *(v52 + v28);
        v29 = v41;
        if (v41)
        {
          goto LABEL_58;
        }
      }

      else
      {
        v26 = 0;
        v29 = v41;
        if (v41)
        {
          goto LABEL_58;
        }
      }

      goto LABEL_6;
    }

    while (1)
    {
      v20 = *(v18 + 24);
      if (v20 - 41 >= 0x17)
      {
        v21 = v20 > 0x1C || ((1 << v20) & 0x183000C6) == 0;
        if (v21 && v20 - 86 >= 2)
        {
          goto LABEL_11;
        }
      }

      sub_637E90(*(*(v18 + 8) - 8) & 0xFFFFFFFFFFFFFFLL, *(a1 + 16), v30);
      if (sub_734C10(v30))
      {
        if ((SBYTE7(v31) & 0x80u) == 0)
        {
          v22 = BYTE7(v31);
        }

        else
        {
          v22 = v30[1];
        }

        v23 = v43;
        if ((v43 & 0x80u) != 0)
        {
          v23 = v42[1];
        }

        if (v22 != v23)
        {
          break;
        }

        v24 = (SBYTE7(v31) & 0x80u) == 0 ? v30 : v30[0];
        v25 = (v43 & 0x80u) == 0 ? v42 : v42[0];
        if (memcmp(v24, v25, v22))
        {
          break;
        }
      }

      if (v39 < 0)
      {
        operator delete(v38);
        if ((v37 & 0x80000000) == 0)
        {
LABEL_33:
          if ((v35 & 0x80000000) == 0)
          {
            goto LABEL_34;
          }

          goto LABEL_38;
        }
      }

      else if ((v37 & 0x80000000) == 0)
      {
        goto LABEL_33;
      }

      operator delete(v36);
      if ((v35 & 0x80000000) == 0)
      {
LABEL_34:
        if (v33 < 0)
        {
          goto LABEL_10;
        }

        goto LABEL_39;
      }

LABEL_38:
      operator delete(v34);
      if (v33 < 0)
      {
LABEL_10:
        operator delete(__p);
        if (SBYTE7(v31) < 0)
        {
          goto LABEL_40;
        }

        goto LABEL_11;
      }

LABEL_39:
      if (SBYTE7(v31) < 0)
      {
LABEL_40:
        operator delete(v30[0]);
      }

LABEL_11:
      v18 += 248;
      if (v18 == v19)
      {
        v17 = v40;
        goto LABEL_44;
      }
    }

    sub_5139E8(a4, v30);
    *(a4 + 152) = v16;
    if (v39 < 0)
    {
      operator delete(v38);
      if (v37 < 0)
      {
        goto LABEL_63;
      }

LABEL_53:
      if ((v35 & 0x80000000) == 0)
      {
        goto LABEL_54;
      }

LABEL_64:
      operator delete(v34);
      if (v33 < 0)
      {
        goto LABEL_65;
      }

LABEL_55:
      if (SBYTE7(v31) < 0)
      {
LABEL_66:
        operator delete(v30[0]);
      }
    }

    else
    {
      if ((v37 & 0x80000000) == 0)
      {
        goto LABEL_53;
      }

LABEL_63:
      operator delete(v36);
      if (v35 < 0)
      {
        goto LABEL_64;
      }

LABEL_54:
      if ((v33 & 0x80000000) == 0)
      {
        goto LABEL_55;
      }

LABEL_65:
      operator delete(__p);
      if (SBYTE7(v31) < 0)
      {
        goto LABEL_66;
      }
    }

    v26 = 1;
LABEL_57:
    v29 = v41;
    if (v41)
    {
LABEL_58:
      if (!atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v29->__on_zero_shared)(v29);
        std::__shared_weak_count::__release_weak(v29);
      }
    }

LABEL_6:
    if (v26)
    {
      if (v26 != 3)
      {
        goto LABEL_69;
      }

      break;
    }
  }

  sub_734CE0(a4);
  *(a4 + 152) = 0x7FFFFFFFFFFFFFFFLL;
LABEL_69:
  if (v51 < 0)
  {
    operator delete(v50);
    if (v49 < 0)
    {
      goto LABEL_76;
    }

LABEL_71:
    if ((v47 & 0x80000000) == 0)
    {
      goto LABEL_72;
    }

LABEL_77:
    operator delete(v46);
    if (v45 < 0)
    {
      goto LABEL_78;
    }

LABEL_73:
    if (v43 < 0)
    {
LABEL_79:
      operator delete(v42[0]);
    }
  }

  else
  {
    if ((v49 & 0x80000000) == 0)
    {
      goto LABEL_71;
    }

LABEL_76:
    operator delete(v48);
    if (v47 < 0)
    {
      goto LABEL_77;
    }

LABEL_72:
    if ((v45 & 0x80000000) == 0)
    {
      goto LABEL_73;
    }

LABEL_78:
    operator delete(v44);
    if (v43 < 0)
    {
      goto LABEL_79;
    }
  }
}

void sub_6386BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  sub_3E5388(va);
  _Unwind_Resume(a1);
}

void sub_6386D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  sub_3E5388(&a9);
  sub_1F1A8(&a28);
  sub_3E5388(va);
  _Unwind_Resume(a1);
}

char *sub_63872C@<X0>(char *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    while (1)
    {
      v6 = *(v4 + 24);
      if (!v6 || v6 == 3)
      {
        break;
      }

      v4 += 248;
      if (v4 == v5)
      {
        goto LABEL_13;
      }
    }
  }

  if (v4 == v5)
  {
LABEL_13:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  else
  {
    v8 = *(result + 16);
    v9 = *(*(v4 + 8) - 8);
    v10 = sub_2B51D8(v8, v9 & 0xFFFFFFFFFFFFLL);
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

      v14 = v13 + ((v9 >> 30) & 0x3FFFC) + 4 + *(v13 + ((v9 >> 30) & 0x3FFFC) + 4);
    }

    else
    {
      v14 = 0;
    }

    result = sub_31D7E8(v8, v9 & 0xFFFFFFFFFFFFLL, 1);
    *a3 = v10;
    *(a3 + 8) = v14;
    *(a3 + 16) = result;
    *(a3 + 24) = v15;
    *(a3 + 32) = v9 & 0xFFFFFFFFFFFFLL | (((v9 & 0xFF000000000000) == 0) << 61) | 0x4000000000000000;
  }

  return result;
}

void *sub_638868@<X0>(void *result@<X0>, int a2@<W1>, char *a3@<X8>)
{
  switch(result)
  {
    case 0:
      a3[23] = 9;
      strcpy(a3, "Escalator");
      return result;
    case 1:
      v3 = a2 == 0;
      if (a2)
      {
        v4 = "Escalator";
      }

      else
      {
        v4 = "EscalatorUp";
      }

      v5 = 11;
      goto LABEL_27;
    case 2:
      v3 = a2 == 0;
      if (a2)
      {
        v4 = "Escalator";
      }

      else
      {
        v4 = "EscalatorDown";
      }

      v5 = 13;
LABEL_27:
      v6 = 9;
      goto LABEL_46;
    case 3:
      a3[23] = 6;
      strcpy(a3, "Stairs");
      return result;
    case 4:
      v3 = a2 == 0;
      if (a2)
      {
        v4 = "Stairs";
      }

      else
      {
        v4 = "StairsUp";
      }

      v5 = 8;
      v6 = 6;
      goto LABEL_46;
    case 5:
      v3 = a2 == 0;
      if (a2)
      {
        v4 = "Stairs";
      }

      else
      {
        v4 = "StairsDown";
      }

      v5 = 10;
      v6 = 6;
      goto LABEL_46;
    case 6:
      a3[23] = 16;
      strcpy(a3, "PedestrianBridge");
      return result;
    case 7:
      a3[23] = 15;
      strcpy(a3, "SteepHillUphill");
      return result;
    case 8:
      a3[23] = 17;
      strcpy(a3, "SteepHillDownhill");
      return result;
    case 9:
      a3[23] = 8;
      strcpy(a3, "Dismount");
      return result;
    case 10:
      if (a2)
      {
        v7 = "DismountOneWayStreet";
      }

      else
      {
        v7 = "DismountWalkAgainstTraffic";
      }

      if (a2)
      {
        v8 = 20;
      }

      else
      {
        v8 = 26;
      }

      if (a2)
      {
        goto LABEL_20;
      }

      goto LABEL_57;
    case 11:
      if (a2)
      {
        v7 = "DismountTwoWayStreet";
      }

      else
      {
        v7 = "DismountWalkAgainstTraffic";
      }

      if (a2)
      {
        v8 = 20;
      }

      else
      {
        v8 = 26;
      }

      if ((a2 & 1) == 0)
      {
LABEL_57:
        operator new();
      }

LABEL_20:
      a3[23] = 20;
      v11 = v7;
      result = memcpy(a3, v11, v8);
      a3[v8] = 0;
      return result;
    case 14:
      a3[23] = 11;
      strcpy(a3, "SharedSpace");
      return result;
    case 15:
      a3[23] = 5;
      *a3 = 1920099654;
      a3[4] = 121;
      a3[5] = 0;
      return result;
    case 18:
      v3 = a2 == 0;
      if (a2)
      {
        v4 = "SteepHillUphill";
      }

      else
      {
        v4 = "SteepHill";
      }

      v5 = 9;
      v6 = 15;
      goto LABEL_46;
    case 19:
      v3 = a2 == 0;
      if (a2)
      {
        v4 = "SteepHillDownhill";
      }

      else
      {
        v4 = "SteepHill";
      }

      v5 = 9;
      v6 = 17;
LABEL_46:
      if (v3)
      {
        v9 = v5;
      }

      else
      {
        v9 = v6;
      }

      a3[23] = v9;
      result = memcpy(a3, v4, v9);
      a3[v9] = 0;
      break;
    case 20:
      a3[23] = 8;
      strcpy(a3, "Elevator");
      break;
    case 21:
      a3[23] = 21;
      strcpy(a3, "Transition_To_Walking");
      break;
    default:
      a3[23] = 0;
      *a3 = 0;
      break;
  }

  return result;
}

void sub_638CC4(int a1@<W0>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 0:
    case 1:
    case 2:
      v2 = 9;
      v9 = 9;
      __p[8] = 114;
      v3 = "Escalator";
      goto LABEL_13;
    case 3:
    case 4:
    case 5:
      v2 = 6;
      v9 = 6;
      qmemcpy(__p, "Stairs", 6);
      break;
    case 6:
      v2 = 16;
      v9 = 16;
      v4 = "PedestrianBridge";
      goto LABEL_11;
    case 7:
    case 18:
      v2 = 15;
      v9 = 15;
      qmemcpy(__p, "SteepHillUphill", 15);
      break;
    case 8:
    case 19:
      v2 = 17;
      v9 = 17;
      __p[16] = 108;
      v4 = "SteepHillDownhill";
      goto LABEL_11;
    case 9:
      v2 = 8;
      v9 = 8;
      v5 = 0x746E756F6D736944;
      goto LABEL_14;
    case 10:
      v2 = 20;
      v9 = 20;
      *&__p[16] = 1952802162;
      v4 = "DismountOneWayStreet";
      goto LABEL_11;
    case 11:
      v2 = 20;
      v9 = 20;
      *&__p[16] = 1952802162;
      v4 = "DismountTwoWayStreet";
LABEL_11:
      *__p = *v4;
      break;
    case 14:
      v2 = 11;
      v9 = 11;
      *&__p[7] = 1701011824;
      v3 = "SharedSpace";
LABEL_13:
      v5 = *v3;
      goto LABEL_14;
    case 15:
      v9 = 5;
      strcpy(__p, "Ferry");
      *(a2 + 16) = 0;
      *(a2 + 23) = 22;
      *(a2 + 16) = 95;
      *a2 = *"Annotation_Title_";
      v6 = a2 + 17;
      memmove((a2 + 17), __p, 5uLL);
      *(v6 + 5) = 0;
      if (v9 < 0)
      {
        v7 = *__p;

        operator delete(v7);
      }

      return;
    case 20:
      v2 = 8;
      v9 = 8;
      v5 = 0x726F746176656C45;
LABEL_14:
      *__p = v5;
      break;
    case 21:
      v2 = 21;
      v9 = 21;
      qmemcpy(__p, "Transition_To_Walking", sizeof(__p));
      break;
    default:
      *(a2 + 23) = 0;
      *a2 = 0;
      return;
  }

  __p[v2] = 0;
  operator new();
}

void sub_638FA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_639014@<X0>(void *a1@<X0>, int a2@<W1>, std::string *a3@<X8>)
{
  sub_638868(a1, 0, &v10);
  v5 = std::string::insert(&v10, 0, "Annotation_Details_", 0x13uLL);
  v6 = *&v5->__r_.__value_.__l.__data_;
  a3->__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&a3->__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (a2)
  {
    v7 = "_CrossStreet";
  }

  else
  {
    v7 = "_NoLocation";
  }

  if (a2)
  {
    v8 = 12;
  }

  else
  {
    v8 = 11;
  }

  std::string::append(a3, v7, v8);
  return std::string::append(a3, "_NoSecondary", 0xCuLL);
}

void sub_6390C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_6390F8@<X0>(void *a1@<X0>, int a2@<W1>, std::string *a3@<X8>)
{
  sub_638868(a1, 0, &v10);
  v5 = std::string::insert(&v10, 0, "Annotation_Details_", 0x13uLL);
  v6 = *&v5->__r_.__value_.__l.__data_;
  a3->__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&a3->__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (a2)
  {
    v7 = "_Named";
  }

  else
  {
    v7 = "_Unnamed";
  }

  if (a2)
  {
    v8 = 6;
  }

  else
  {
    v8 = 8;
  }

  return std::string::append(a3, v7, v8);
}

void sub_63919C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_6391CC@<Q0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = sub_6A0F58(a2, a3);
  if ((a1 & 0xFE) == 0xA)
  {
    if (v6 > 8)
    {
      if (v6 != 9)
      {
        if (v6 != 10)
        {
          *(a4 + 23) = 0;
          *a4 = 0;
          return result;
        }

        goto LABEL_23;
      }

      goto LABEL_24;
    }

    if ((v6 - 5) >= 4 && v6 == 4)
    {
LABEL_18:
      *(a4 + 16) = 0xC00000000000000;
      result.n128_u64[0] = *"_UnnamedRoad";
      *a4 = *"_UnnamedRoad";
      return result;
    }

    goto LABEL_27;
  }

  if (v6 <= 5)
  {
    if (v6 > 1)
    {
      if (v6 == 2)
      {
        *(a4 + 16) = 0xF00000000000000;
        result.n128_u64[0] = *"_Protected_Lane";
        strcpy(a4, "_Protected_Lane");
        return result;
      }

      if (v6 == 4)
      {
        goto LABEL_18;
      }

      if (v6 != 5)
      {
        goto LABEL_27;
      }

      v8 = "_Sidewalk";
      goto LABEL_31;
    }

    if (v6 == 1)
    {
      v8 = "_Bike_Lane";
      goto LABEL_31;
    }

LABEL_27:
    *(a4 + 23) = 0;
    *a4 = 0;
    return result;
  }

  if (v6 > 8)
  {
    switch(v6)
    {
      case 9:
LABEL_24:
        *(a4 + 16) = 0x700000000000000;
        result.n128_u64[0] = *"_Bridge";
        *a4 = *"_Bridge";
        return result;
      case 10:
LABEL_23:
        *(a4 + 16) = 0x700000000000000;
        result.n128_u64[0] = *"_Tunnel";
        *a4 = *"_Tunnel";
        return result;
      case 11:
        v8 = "_Paved_Path";
LABEL_31:
        result = *v8;
        *a4 = *v8;
        *(a4 + 16) = v8[1].n128_u64[0];
        return result;
    }

    goto LABEL_27;
  }

  if (v6 == 6)
  {
    v8 = "_Path";
    goto LABEL_31;
  }

  *(a4 + 16) = 0x600000000000000;
  if (v6 == 7)
  {
    result.n128_u64[0] = *"_Trail";
    *a4 = *"_Trail";
  }

  else
  {
    result.n128_u64[0] = *"_Plaza";
    *a4 = *"_Plaza";
  }

  return result;
}

double sub_6393E8@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = sub_4D1F50(a1, a2);
  v5 = v4;
  v6 = *(v4 + 36);
  if ((v6 & 0x40000000) != 0)
  {
    v7 = 2;
  }

  else
  {
    v7 = v6 >> 31;
  }

  if (sub_314D1C(v4, v7) && (v8 = (*v5 - **v5), *v8 >= 0x9Bu) && (v9 = v8[77]) != 0 && (*(*v5 + v9 + 1) & 4) != 0)
  {
    *(a3 + 16) = 0x700000000000000;
    result = *"_Bridge";
    *a3 = *"_Bridge";
  }

  else
  {
    v10 = *(v5 + 9);
    if ((v10 & 0x40000000) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v10 >> 31;
    }

    v12 = sub_314D1C(v5, v11);
    v14 = *v5;
    if (v12 && *(v14 - **v5) >= 0x9Bu && *(v14 - **v5 + 154) && (*(v14 + *(v14 - **v5 + 154) + 1) & 8) != 0)
    {
      *(a3 + 16) = 0x700000000000000;
      result = *"_Tunnel";
      *a3 = *"_Tunnel";
    }

    else
    {
      v15 = (v14 - **v5);
      if (*v15 < 0x9Bu)
      {
        goto LABEL_22;
      }

      v16 = v15[77];
      if (!v16)
      {
        goto LABEL_22;
      }

      v17 = *(v14 + v16);
      if ((v17 & 0x200000) != 0)
      {
        goto LABEL_22;
      }

      v18 = 1;
      if ((*(v5 + 39) & 0x20) == 0)
      {
        v18 = 2;
      }

      if ((v17 & v18) != 0)
      {
        *(a3 + 16) = 0xC00000000000000;
        result = *"_UnnamedRoad";
        *a3 = *"_UnnamedRoad";
      }

      else
      {
LABEL_22:
        *(a3 + 23) = 0;
        *a3 = 0;
      }
    }
  }

  return result;
}

void sub_639564(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, std::string *a6@<X8>)
{
  if (a1 == 15)
  {

    sub_6390F8(a1, a4, a6);
    return;
  }

  v11 = a1;
  sub_638868(a1, 0, &v23);
  v12 = std::string::insert(&v23, 0, "Annotation_Details_", 0x13uLL);
  v13 = *&v12->__r_.__value_.__l.__data_;
  a6->__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&a6->__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
    if (a4)
    {
      goto LABEL_7;
    }

LABEL_9:
    sub_6391CC(v11, a2, a3, &v23);
    v14 = HIBYTE(v23.__r_.__value_.__r.__words[2]);
    v15 = v23.__r_.__value_.__r.__words[0];
    goto LABEL_10;
  }

  if (!a4)
  {
    goto LABEL_9;
  }

LABEL_7:
  v14 = 10;
  *(&v23.__r_.__value_.__s + 23) = 10;
  strcpy(&v23, "_NamedRoad");
  v15 = 0x6F5264656D614E5FLL;
LABEL_10:
  if ((v14 & 0x80u) == 0)
  {
    v16 = &v23;
  }

  else
  {
    v16 = v15;
  }

  if ((v14 & 0x80u) == 0)
  {
    size = v14;
  }

  else
  {
    size = v23.__r_.__value_.__l.__size_;
  }

  std::string::append(a6, v16, size);
  v18 = HIBYTE(v23.__r_.__value_.__r.__words[2]);
  if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v18 = v23.__r_.__value_.__l.__size_;
  }

  if (a5)
  {
    v19 = "_CrossStreet";
  }

  else
  {
    v19 = "_NoCrossStreet";
  }

  v20 = 14;
  if (a5)
  {
    v20 = 12;
  }

  if (v18)
  {
    v21 = v19;
  }

  else
  {
    v21 = "_NoLocation";
  }

  if (v18)
  {
    v22 = v20;
  }

  else
  {
    v22 = 11;
  }

  std::string::append(a6, v21, v22);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }
}