void sub_E10DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_guard_abort(&qword_2733B28);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&STACK[0x270]);
  sub_D7A354(&STACK[0x378]);
  sub_D3C228(v15);
  _Unwind_Resume(a1);
}

void sub_E10F1C(void ****a1, uint64_t a2)
{
  v4 = *a1;
  if (**a1)
  {
    sub_CEFC14(*a1);
    operator delete(*v4);
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
  }

  *v4 = *a2;
  v4[2] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a1[1] = ***a1;
  v5 = *a1[1];
  v6 = sub_4EDB30(a1[2]);
  sub_4C516C(v5, v6);
  sub_4C515C(*a1[1], 1);
  v7 = a1[3];
  v8 = *v7;
  if (*v7)
  {
    v9 = v7[1];
    v10 = *v7;
    if (v9 != v8)
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
      v10 = *v7;
    }

    v7[1] = v8;
    operator delete(v10);
    *v7 = 0;
    v7[1] = 0;
    v7[2] = 0;
  }

  *v7 = *(a2 + 24);
  v7[2] = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v12 = sub_4C5074(*a1[1], 1);
  if (*a1[4] == 3)
  {
    if (v12)
    {
      v13 = a1[5];
      v17.n128_u64[0] = 13;
      v17.n128_u64[1] = &off_2669FE0;
      sub_434934(&v18, &v17);
      sub_434B40(v13, &v18);
      v14 = __p;
      if (__p)
      {
        v15 = v20;
        v16 = __p;
        if (v20 != __p)
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
          v16 = __p;
        }

        v20 = v14;
        operator delete(v16);
      }
    }
  }
}

void sub_E110D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_CF3C94(va);
  _Unwind_Resume(a1);
}

__n128 sub_E110E4@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[3];
  v5 = *(a1 + 2);
  v6 = a1[7];
  v7 = *a1[6];
  v8 = a1[8];
  v9 = *(v8 + 24);
  *a2 = *(a1 + 1);
  *(a2 + 16) = v4;
  v14 = v5;
  *(a2 + 24) = sub_FF3C1C(v3, v5, 2);
  *(a2 + 32) = sub_6EECC();
  *(a2 + 36) = v7;
  *(a2 + 40) = v6;
  sub_E80194(v3, a2 + 48);
  v10 = *(a2 + 36) - 1;
  if (v10 < 0xD && ((0x1543u >> v10) & 1) != 0)
  {
    v11 = 0;
  }

  else
  {
    v11 = sub_E89630(v3);
  }

  *(a2 + 224) = v11;
  if (v9)
  {
    v12 = v8;
  }

  else
  {
    v12 = 0;
  }

  result = v14;
  *(a2 + 232) = v14;
  *(a2 + 248) = v12;
  return result;
}

void sub_E111D4(uint64_t a1@<X0>, uint64_t a5@<X8>)
{
  ++*(a1 + 80);
  *a5 = 1;
  *(a5 + 8) = 0u;
  *(a5 + 24) = 0u;
  *(a5 + 40) = 0u;
  *(a5 + 56) = 0u;
  *(a5 + 72) = 0u;
  *(a5 + 88) = 0u;
  *(a5 + 104) = 0;
  if (*(a1 + 8) == &off_2669FE0 && !*a1)
  {
    sub_7E9A4(v21);
    sub_E78844(&v16);
  }

  sub_434934(&v12, a1);
  LOBYTE(v16) = 0;
  v17 = v12;
  __p = v13;
  v19 = v14;
  v13 = 0uLL;
  v14 = 0;
  v20 = v15;
  sub_DAE540(a5, &v16);
  if (v16 == 1)
  {
    if (!v17.n128_u64[0])
    {
      goto LABEL_16;
    }

    sub_D9F6DC(&v17);
    v6 = v17.n128_u64[0];
  }

  else
  {
    v7 = __p;
    if (!__p)
    {
      goto LABEL_16;
    }

    v8 = *(&__p + 1);
    v6 = __p;
    if (*(&__p + 1) != __p)
    {
      do
      {
        if (*(v8 - 1) < 0)
        {
          operator delete(*(v8 - 24));
        }

        v8 -= 32;
      }

      while (v8 != v7);
      v6 = __p;
    }

    *(&__p + 1) = v7;
  }

  operator delete(v6);
LABEL_16:
  v9 = v13;
  if (v13)
  {
    v10 = *(&v13 + 1);
    v11 = v13;
    if (*(&v13 + 1) != v13)
    {
      do
      {
        if (*(v10 - 1) < 0)
        {
          operator delete(*(v10 - 24));
        }

        v10 -= 32;
      }

      while (v10 != v9);
      v11 = v13;
    }

    *(&v13 + 1) = v9;
    operator delete(v11);
  }
}

void sub_E11C9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&STACK[0x270]);
  sub_528AB4(&STACK[0x380]);
  sub_D9F560(v15);
  _Unwind_Resume(a1);
}

void sub_E11DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  ++*(v8 + 80);
  *v9 = 1;
  bzero(v9 + 8, 0x13D0uLL);
  sub_D0F290((v10 + 8));
}

void sub_E129DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  __cxa_guard_abort(&qword_2733B48);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&STACK[0x930]);
  sub_D7E748(&STACK[0x268]);
  sub_D0F460(v14);
  _Unwind_Resume(a1);
}

void sub_E12B0C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 24);
  v5 = **(a1 + 16);
  v6 = *(a1 + 32);
  v7 = **(a1 + 40);
  *v9 = 0u;
  *v10 = 0u;
  v11 = 1065353216;
  memset(__p, 0, sizeof(__p));
  sub_DC73A8(a2, v2, v3, v5, v4, v6, v7, v9, __p);
}

void sub_E12BE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  if (__p)
  {
    operator delete(__p);
  }

  sub_616CD4(va);
  _Unwind_Resume(a1);
}

void *sub_E12C04(void *a1, uint64_t *a2, unint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3)
  {
    if (a3 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_E12D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_E0A080(va);
  *(v10 + 8) = v11;
  sub_DC11B4(&a9);
  _Unwind_Resume(a1);
}

void sub_E12D2C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  ++*(a1 + 80);
  *a5 = 1;
  *(a5 + 8) = 0u;
  *(a5 + 24) = 0u;
  *(a5 + 40) = 0u;
  *(a5 + 56) = 0u;
  *(a5 + 72) = 0u;
  *(a5 + 88) = 0u;
  *(a5 + 104) = 0u;
  *(a5 + 120) = 0u;
  *(a5 + 136) = 0u;
  *(a5 + 152) = 0u;
  *(a5 + 168) = 0u;
  *(a5 + 184) = 0u;
  *(a5 + 200) = 0u;
  *(a5 + 216) = 0u;
  *(a5 + 232) = 0u;
  *(a5 + 248) = 0u;
  *(a5 + 264) = 0u;
  *(a5 + 280) = 0u;
  *(a5 + 296) = 0u;
  *(a5 + 312) = 0u;
  *(a5 + 328) = 0u;
  *(a5 + 344) = 0u;
  *(a5 + 360) = 0u;
  *(a5 + 376) = 0u;
  *(a5 + 392) = 0u;
  *(a5 + 408) = 0u;
  *(a5 + 424) = 0u;
  sub_12C408C(a5 + 8, 0, 0);
  *(a5 + 412) = 0;
  *(a5 + 404) = 0;
  *(a5 + 420) = 0;
  *(a5 + 424) = 0;
  *(a5 + 431) = 0;
  *(a5 + 264) = 0u;
  *(a5 + 280) = 0u;
  *(a5 + 296) = 0u;
  *(a5 + 312) = 0u;
  *(a5 + 328) = 0u;
  *(a5 + 344) = 0u;
  *(a5 + 360) = 0u;
  *(a5 + 376) = 0u;
  *(a5 + 385) = 0u;
  if (*(a1 + 8) == &off_2669FE0 && !*a1)
  {
    sub_7E9A4(v88);
    sub_DAEED4(&v83, *a2, *(a2 + 8), *(a2 + 16), **(a2 + 24), *(a2 + 32), *(a2 + 40), *(a2 + 48), *(a2 + 56), *(a2 + 72), *(a2 + 80), 0, *(a2 + 88), *(a2 + 96));
    sub_CD1654();
    sub_D7E7C4(a5, v76);
    if (v76[0].n128_u8[0] == 1)
    {
      sub_D71800(v76, &v76[0].n128_i64[1]);
    }

    else
    {
      v13 = v76[1].n128_u64[1];
      if (v76[1].n128_u64[1])
      {
        v14 = v76[2].n128_u64[0];
        v15 = v76[1].n128_u64[1];
        if (v76[2].n128_u64[0] != v76[1].n128_u64[1])
        {
          do
          {
            if (*(v14 - 1) < 0)
            {
              operator delete(*(v14 - 24));
            }

            v14 -= 32;
          }

          while (v14 != v13);
          v15 = v76[1].n128_u64[1];
        }

        v76[2].n128_u64[0] = v13;
        operator delete(v15);
      }
    }

    v19 = sub_7EAB4(v88);
    v20 = v19;
    v21 = *(a1 + 84);
    v22 = v21 != 0x7FFFFFFF && v21 <= v19;
    if (!v22 || !sub_7E7E4(1u))
    {
LABEL_76:
      v42 = *(a1 + 88);
      if (v42 != 0x7FFFFFFF && v42 <= v20)
      {
        v74.n128_u64[0] = 10;
        v74.n128_u64[1] = &off_2669FE0;
        sub_434934(__dst, &v74);
        v76[0].n128_u8[0] = 0;
        *(v76 + 8) = *__dst;
        *(&v76[1] + 8) = v70;
        v76[2].n128_u64[1] = v71;
        v70 = 0uLL;
        v71 = 0;
        LODWORD(v77) = v72;
        sub_D7E7C4(a5, v76);
        if (v76[0].n128_u8[0] == 1)
        {
          sub_D71800(v76, &v76[0].n128_i64[1]);
        }

        else
        {
          v43 = v76[1].n128_u64[1];
          if (v76[1].n128_u64[1])
          {
            v44 = v76[2].n128_u64[0];
            v45 = v76[1].n128_u64[1];
            if (v76[2].n128_u64[0] != v76[1].n128_u64[1])
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
              v45 = v76[1].n128_u64[1];
            }

            v76[2].n128_u64[0] = v43;
            operator delete(v45);
          }
        }

        v46 = v70.n128_u64[0];
        if (v70.n128_u64[0])
        {
          v47 = v70.n128_u64[1];
          v48 = v70.n128_u64[0];
          if (v70.n128_u64[1] != v70.n128_u64[0])
          {
            do
            {
              if (*(v47 - 1) < 0)
              {
                operator delete(*(v47 - 24));
              }

              v47 -= 32;
            }

            while (v47 != v46);
            v48 = v70.n128_u64[0];
          }

          v70.n128_u64[1] = v46;
          operator delete(v48);
        }
      }

      v49 = *(a1 + 64);
      if (*a5 == 1)
      {
        v50 = sub_D7ED0C(a5);
        sub_D7EE0C(v50 + 328, v76);
      }

      else
      {
        memset(v76, 0, sizeof(v76));
      }

      sub_7CA38(v49, a3, v76, *(a1 + 72));
      v51 = v76[1].n128_u64[1];
      if (v76[1].n128_u64[1])
      {
        v52 = v76[2].n128_u64[0];
        v53 = v76[1].n128_u64[1];
        if (v76[2].n128_u64[0] != v76[1].n128_u64[1])
        {
          do
          {
            v54 = *(v52 - 25);
            v52 -= 6;
            if (v54 < 0)
            {
              operator delete(*v52);
            }
          }

          while (v52 != v51);
          v53 = v76[1].n128_u64[1];
        }

        v76[2].n128_u64[0] = v51;
        operator delete(v53);
      }

      if (v76[1].n128_i8[7] < 0)
      {
        operator delete(v76[0].n128_u64[0]);
        if (*a5 == 1)
        {
          goto LABEL_109;
        }
      }

      else if (*a5 == 1)
      {
LABEL_109:
        sub_D7E910(*a4, a5 + 8);
LABEL_144:
        sub_D8138C(&v83);
        return;
      }

      sub_DEBB90(*(a1 + 64), (a5 + 8), *(a1 + 48), *(a1 + 72));
      if (!sub_7E7E4(3u))
      {
LABEL_143:
        sub_434B40(a1, (a5 + 8));
        goto LABEL_144;
      }

      sub_19594F8(v76[0].n128_f64);
      sub_7B538(*(a1 + 64), __dst);
      if (v70.n128_i8[7] >= 0)
      {
        v55 = __dst;
      }

      else
      {
        v55 = __dst[0];
      }

      if (v70.n128_i8[7] >= 0)
      {
        v56 = v70.n128_u8[7];
      }

      else
      {
        v56 = __dst[1];
      }

      v57 = sub_4A5C(v76, v55, v56);
      sub_4A5C(v57, " failed in step ", 16);
      v58 = std::ostream::operator<<();
      v59 = sub_4A5C(v58, " (", 2);
      if ((atomic_load_explicit(&qword_2733B68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2733B68))
      {
        sub_89C64(0, "AnalyticsModule", 15, &qword_2733B50);
        __cxa_guard_release(&qword_2733B68);
      }

      if (byte_2733B67 >= 0)
      {
        v60 = byte_2733B67;
      }

      else
      {
        v60 = unk_2733B58;
      }

      if (byte_2733B67 >= 0)
      {
        v61 = &qword_2733B50;
      }

      else
      {
        v61 = qword_2733B50;
      }

      v62 = sub_4A5C(v59, v61, v60);
      v63 = sub_4A5C(v62, ") with error: ", 14);
      sub_D72C3C(v63, a5 + 8);
      if (v70.n128_i8[7] < 0)
      {
        operator delete(__dst[0]);
        v64 = v82;
        if ((v82 & 0x10) == 0)
        {
LABEL_127:
          if ((v64 & 8) == 0)
          {
            v65 = 0;
            v70.n128_u8[7] = 0;
LABEL_138:
            *(__dst + v65) = 0;
            sub_7E854(__dst, 3u);
            if (v70.n128_i8[7] < 0)
            {
              operator delete(__dst[0]);
            }

            if (v80 < 0)
            {
              operator delete(v79);
            }

            std::locale::~locale(&v76[1]);
            std::ostream::~ostream();
            std::ios::~ios();
            goto LABEL_143;
          }

          v67 = v76[1].n128_u64[1];
          v65 = v76[2].n128_u64[1] - v76[1].n128_u64[1];
          if (v76[2].n128_u64[1] - v76[1].n128_u64[1] > 0x7FFFFFFFFFFFFFF7)
          {
LABEL_149:
            sub_3244();
          }

LABEL_133:
          if (v65 >= 0x17)
          {
            operator new();
          }

          v70.n128_u8[7] = v65;
          if (v65)
          {
            memmove(__dst, v67, v65);
          }

          goto LABEL_138;
        }
      }

      else
      {
        v64 = v82;
        if ((v82 & 0x10) == 0)
        {
          goto LABEL_127;
        }
      }

      v66 = v81;
      if (v81 < v78)
      {
        v81 = v78;
        v66 = v78;
      }

      v67 = v77;
      v65 = v66 - v77;
      if (v66 - v77 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_149;
      }

      goto LABEL_133;
    }

    sub_19594F8(v76[0].n128_f64);
    v23 = sub_4A5C(v76, "Found long running (", 20);
    v24 = sub_72140(v23, v20);
    v25 = sub_4A5C(v24, ") ", 2);
    if ((atomic_load_explicit(&qword_2733B68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2733B68))
    {
      sub_89C64(0, "AnalyticsModule", 15, &qword_2733B50);
      __cxa_guard_release(&qword_2733B68);
    }

    if (byte_2733B67 >= 0)
    {
      v26 = byte_2733B67;
    }

    else
    {
      v26 = unk_2733B58;
    }

    if (byte_2733B67 >= 0)
    {
      v27 = &qword_2733B50;
    }

    else
    {
      v27 = qword_2733B50;
    }

    v28 = sub_4A5C(v25, v27, v26);
    v29 = sub_4A5C(v28, " in ", 4);
    sub_7B538(*(a1 + 64), __dst);
    if (v70.n128_i8[7] >= 0)
    {
      v30 = __dst;
    }

    else
    {
      v30 = __dst[0];
    }

    if (v70.n128_i8[7] >= 0)
    {
      v31 = v70.n128_u8[7];
    }

    else
    {
      v31 = __dst[1];
    }

    v32 = sub_4A5C(v29, v30, v31);
    sub_4A5C(v32, " step ", 6);
    v33 = std::ostream::operator<<();
    v34 = sub_4A5C(v33, " (request: ", 11);
    sub_17541D0(v73, *(a1 + 48));
    sub_E9209C(v73, *(a1 + 56), &v74);
    if ((v75 & 0x80u) == 0)
    {
      v35 = &v74;
    }

    else
    {
      v35 = v74.n128_u64[0];
    }

    if ((v75 & 0x80u) == 0)
    {
      v36 = v75;
    }

    else
    {
      v36 = v74.n128_i64[1];
    }

    v37 = sub_4A5C(v34, v35, v36);
    sub_4A5C(v37, ")", 1);
    if (v75 < 0)
    {
      operator delete(v74.n128_u64[0]);
      sub_1754598(v73);
      if ((v70.n128_i8[7] & 0x80000000) == 0)
      {
LABEL_58:
        v38 = v82;
        v68 = a3;
        if ((v82 & 0x10) == 0)
        {
          goto LABEL_59;
        }

        goto LABEL_63;
      }
    }

    else
    {
      sub_1754598(v73);
      if ((v70.n128_i8[7] & 0x80000000) == 0)
      {
        goto LABEL_58;
      }
    }

    operator delete(__dst[0]);
    v38 = v82;
    v68 = a3;
    if ((v82 & 0x10) == 0)
    {
LABEL_59:
      if ((v38 & 8) == 0)
      {
        v39 = 0;
        v70.n128_u8[7] = 0;
LABEL_71:
        *(__dst + v39) = 0;
        sub_7E854(__dst, 1u);
        if (v70.n128_i8[7] < 0)
        {
          operator delete(__dst[0]);
        }

        if (v80 < 0)
        {
          operator delete(v79);
        }

        std::locale::~locale(&v76[1]);
        std::ostream::~ostream();
        std::ios::~ios();
        a3 = v68;
        goto LABEL_76;
      }

      v41 = v76[1].n128_u64[1];
      v39 = v76[2].n128_u64[1] - v76[1].n128_u64[1];
      if (v76[2].n128_u64[1] - v76[1].n128_u64[1] > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_147:
        sub_3244();
      }

LABEL_66:
      if (v39 >= 0x17)
      {
        operator new();
      }

      v70.n128_u8[7] = v39;
      if (v39)
      {
        memmove(__dst, v41, v39);
      }

      goto LABEL_71;
    }

LABEL_63:
    v40 = v81;
    if (v81 < v78)
    {
      v81 = v78;
      v40 = v78;
    }

    v41 = v77;
    v39 = v40 - v77;
    if (v40 - v77 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_147;
    }

    goto LABEL_66;
  }

  sub_434934(v76, a1);
  LOBYTE(v83) = 0;
  v84 = v76[0];
  __p = v76[1];
  v86 = v76[2].n128_u64[0];
  memset(&v76[1], 0, 24);
  v87 = v76[2].n128_u32[2];
  sub_D7E7C4(a5, &v83);
  if (v83 == 1)
  {
    sub_D71800(&v83, &v84);
  }

  else
  {
    v10 = __p.n128_u64[0];
    if (__p.n128_u64[0])
    {
      v11 = __p.n128_i64[1];
      v12 = __p.n128_u64[0];
      if (__p.n128_u64[1] != __p.n128_u64[0])
      {
        do
        {
          if (*(v11 - 1) < 0)
          {
            operator delete(*(v11 - 24));
          }

          v11 -= 32;
        }

        while (v11 != v10);
        v12 = __p.n128_u64[0];
      }

      __p.n128_u64[1] = v10;
      operator delete(v12);
    }
  }

  v16 = v76[1].n128_u64[0];
  if (v76[1].n128_u64[0])
  {
    v17 = v76[1].n128_u64[1];
    v18 = v76[1].n128_u64[0];
    if (v76[1].n128_u64[1] != v76[1].n128_u64[0])
    {
      do
      {
        if (*(v17 - 1) < 0)
        {
          operator delete(*(v17 - 24));
        }

        v17 -= 32;
      }

      while (v17 != v16);
      v18 = v76[1].n128_u64[0];
    }

    v76[1].n128_u64[1] = v16;
    operator delete(v18);
  }
}

void sub_E13928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  __cxa_guard_abort(&qword_2733B68);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&STACK[0x2B0]);
  sub_D8138C(&STACK[0x468]);
  sub_CD15B8(v23);
  _Unwind_Resume(a1);
}

void sub_E13A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  v11 = v8;
  v13 = v12;
  ++*(v8 + 80);
  *v12 = 1;
  bzero(v12 + 8, 0x4A8uLL);
  sub_1757EA4(v13 + 8, 0, 0);
  sub_1757EA4(v13 + 584, 0, 0);
  *(v13 + 1192) = 0;
  *(v13 + 1160) = 0u;
  *(v13 + 1176) = 0u;
  if (*(v11 + 8) == &off_2669FE0 && *v11 == 0)
  {
    sub_7E9A4(v31);
    sub_E1471C(v10, &v25);
    sub_D35B30(&v25, &v21);
  }

  sub_434934(&v21, v11);
  LOBYTE(v25) = 0;
  v26 = v21;
  __p = v22;
  v28 = v23;
  v22 = 0uLL;
  v23 = 0;
  v29 = v24;
  sub_D8144C(v13, &v25);
  if (v25 == 1)
  {
    sub_1758FB8(v30);
    sub_1758FB8(&v26);
  }

  else
  {
    v15 = __p;
    if (__p)
    {
      v16 = *(&__p + 1);
      v17 = __p;
      if (*(&__p + 1) != __p)
      {
        do
        {
          if (*(v16 - 1) < 0)
          {
            operator delete(*(v16 - 24));
          }

          v16 -= 32;
        }

        while (v16 != v15);
        v17 = __p;
      }

      *(&__p + 1) = v15;
      operator delete(v17);
    }
  }

  v18 = v22;
  if (v22)
  {
    v19 = *(&v22 + 1);
    v20 = v22;
    if (*(&v22 + 1) != v22)
    {
      do
      {
        if (*(v19 - 1) < 0)
        {
          operator delete(*(v19 - 24));
        }

        v19 -= 32;
      }

      while (v19 != v18);
      v20 = v22;
    }

    *(&v22 + 1) = v18;
    operator delete(v20);
  }
}

void sub_E145D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_guard_abort(&qword_2733B88);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&STACK[0x270]);
  sub_DB048C(&STACK[0x728]);
  sub_D35A8C(v15);
  _Unwind_Resume(a1);
}

void sub_E1471C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v8 = a1[4];
  v29 = a1[5];
  sub_559C9C(v25);
  bzero(&v26, 0x348uLL);
  sub_5C0A00(v28);
  v9 = a1[6];
  v10 = a1[7];
  v23 = 0;
  v24 = v10;
  v11 = a1[8];
  __p = 0;
  v22 = 0;
  sub_DAF1A0(a2, v4, v5, v6, v7, v8, &v30, &v29, v25, v9, &v24, v11, &__p);
  v12 = __p;
  if (__p)
  {
    v13 = v22;
    v14 = __p;
    if (v22 == __p)
    {
LABEL_13:
      v22 = v12;
      operator delete(v14);
      goto LABEL_14;
    }

    while (1)
    {
      if (*(v13 - 1) < 0)
      {
        operator delete(*(v13 - 3));
        v15 = *(v13 - 6);
        if (v15)
        {
          do
          {
LABEL_7:
            v16 = *v15;
            operator delete(v15);
            v15 = v16;
          }

          while (v16);
        }
      }

      else
      {
        v15 = *(v13 - 6);
        if (v15)
        {
          goto LABEL_7;
        }
      }

      v17 = *(v13 - 8);
      *(v13 - 8) = 0;
      if (v17)
      {
        operator delete(v17);
      }

      v13 -= 9;
      if (v13 == v12)
      {
        v14 = __p;
        goto LABEL_13;
      }
    }
  }

LABEL_14:
  sub_5C0F34(v28);
  v18 = v26;
  if (v26)
  {
    v19 = v27;
    v20 = v26;
    if (v27 != v26)
    {
      do
      {
        v19 = sub_3A9518(v19 - 1120);
      }

      while (v19 != v18);
      v20 = v26;
    }

    v27 = v18;
    operator delete(v20);
  }

  sub_559E70(v25);
  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }
}

void sub_E148C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v14 = va_arg(va1, void **);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  sub_D71160(va);
  sub_D0AA6C(va1);
  v13 = *(v11 - 104);
  if (v13)
  {
    *(v11 - 96) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(a1);
}

void sub_E148EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_5706DC((v17 + 1088));
  sub_559E70(va);
  _Unwind_Resume(a1);
}

void sub_E1490C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  if (v4 != a2)
  {
    v5 = *(v4 + 8);
    if ((v5 & 2) != 0)
    {
      v5 = 0;
    }

    else if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v6 = *(a2 + 8);
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

  v7 = *a1;
  if (*a1 != a2)
  {
    v8 = *(v7 + 584);
    if ((v8 & 2) != 0)
    {
      v8 = 0;
    }

    else if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v9 = *(a2 + 584);
    if ((v9 & 2) != 0)
    {
      v9 = 0;
    }

    else if (v9)
    {
      v9 = *(v9 & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (v8 == v9)
    {
      sub_175C55C(v7 + 576, a2 + 576);
    }

    else
    {
      sub_175C1D0(v7 + 576, a2 + 576);
    }
  }
}

void sub_E14A00(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  ++*(a1 + 80);
  *a5 = 1;
  bzero((a5 + 8), 0x2B8uLL);
  *(a5 + 456) = 0x3FF0000000000000;
  *(a5 + 464) = 0;
  *(a5 + 472) = 0u;
  *(a5 + 488) = 5;
  *(a5 + 496) = 0u;
  *(a5 + 512) = 0u;
  *(a5 + 528) = 0u;
  *(a5 + 544) = 0x7FFFFFFF;
  *(a5 + 632) = 0u;
  *(a5 + 552) = 0u;
  *(a5 + 568) = 0u;
  *(a5 + 584) = 0u;
  *(a5 + 600) = 0u;
  *(a5 + 609) = 0u;
  *(a5 + 648) = -1;
  *(a5 + 656) = 0x7FFFFFFF;
  *(a5 + 660) = 0;
  *(a5 + 668) = 0;
  *(a5 + 672) = -1;
  *(a5 + 680) = -1;
  *(a5 + 704) = 0;
  if (*(a1 + 8) != &off_2669FE0 || *a1)
  {
    sub_434934(&__dst, a1);
    LOBYTE(v62[0]) = 0;
    *&v62[1] = __dst;
    *&v62[3] = v59;
    v62[5] = v60;
    v59 = 0uLL;
    v60 = 0;
    LODWORD(v63) = v61;
    sub_D72D60(a5, v62);
    if (LOBYTE(v62[0]) == 1)
    {
      sub_5287C0(&v62[1]);
    }

    else
    {
      v10 = v62[3];
      if (v62[3])
      {
        v11 = v62[4];
        v12 = v62[3];
        if (v62[4] != v62[3])
        {
          do
          {
            if (*(v11 - 1) < 0)
            {
              operator delete(*(v11 - 3));
            }

            v11 -= 4;
          }

          while (v11 != v10);
          v12 = v62[3];
        }

        v62[4] = v10;
        operator delete(v12);
      }
    }

    v16 = v59;
    if (v59)
    {
      v17 = *(&v59 + 1);
      v18 = v59;
      if (*(&v59 + 1) != v59)
      {
        do
        {
          if (*(v17 - 1) < 0)
          {
            operator delete(*(v17 - 24));
          }

          v17 -= 32;
        }

        while (v17 != v16);
        v18 = v59;
      }

      *(&v59 + 1) = v16;
      operator delete(v18);
    }

    return;
  }

  sub_7E9A4(v57);
  sub_D4104C(v56, *a2, *(a2 + 8), **(a2 + 16));
  sub_D40820(v56, v62);
  sub_D72D60(a5, v62);
  if (LOBYTE(v62[0]) == 1)
  {
    sub_5287C0(&v62[1]);
  }

  else
  {
    v13 = v62[3];
    if (v62[3])
    {
      v14 = v62[4];
      v15 = v62[3];
      if (v62[4] != v62[3])
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
        v15 = v62[3];
      }

      v62[4] = v13;
      operator delete(v15);
    }
  }

  v19 = sub_7EAB4(v57);
  v20 = v19;
  v21 = *(a1 + 84);
  v22 = v21 != 0x7FFFFFFF && v21 <= v19;
  if (v22 && sub_7E7E4(1u))
  {
    sub_19594F8(v62);
    v23 = sub_4A5C(v62, "Found long running (", 20);
    v24 = sub_72140(v23, v20);
    v25 = sub_4A5C(v24, ") ", 2);
    v26 = sub_4A5C(v25, "SessionStateParserModule", 24);
    v27 = sub_4A5C(v26, " in ", 4);
    sub_7B538(*(a1 + 64), &__dst);
    if ((SBYTE7(v59) & 0x80u) == 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst.n128_u64[0];
    }

    if ((SBYTE7(v59) & 0x80u) == 0)
    {
      v29 = BYTE7(v59);
    }

    else
    {
      v29 = __dst.n128_i64[1];
    }

    v30 = sub_4A5C(v27, p_dst, v29);
    sub_4A5C(v30, " step ", 6);
    v31 = std::ostream::operator<<();
    v32 = sub_4A5C(v31, " (request: ", 11);
    sub_17541D0(v53, *(a1 + 48));
    sub_E9209C(v53, *(a1 + 56), &v54);
    if ((v55 & 0x80u) == 0)
    {
      v33 = &v54;
    }

    else
    {
      v33 = v54.n128_u64[0];
    }

    if ((v55 & 0x80u) == 0)
    {
      v34 = v55;
    }

    else
    {
      v34 = v54.n128_i64[1];
    }

    v35 = sub_4A5C(v32, v33, v34);
    sub_4A5C(v35, ")", 1);
    if (v55 < 0)
    {
      operator delete(v54.n128_u64[0]);
      sub_1754598(v53);
      if ((SBYTE7(v59) & 0x80000000) == 0)
      {
LABEL_51:
        v36 = v68;
        if ((v68 & 0x10) == 0)
        {
          goto LABEL_52;
        }

        goto LABEL_56;
      }
    }

    else
    {
      sub_1754598(v53);
      if ((SBYTE7(v59) & 0x80000000) == 0)
      {
        goto LABEL_51;
      }
    }

    operator delete(__dst.n128_u64[0]);
    v36 = v68;
    if ((v68 & 0x10) == 0)
    {
LABEL_52:
      if ((v36 & 8) == 0)
      {
        v37 = 0;
        BYTE7(v59) = 0;
LABEL_64:
        __dst.n128_u8[v37] = 0;
        sub_7E854(&__dst, 1u);
        if (SBYTE7(v59) < 0)
        {
          operator delete(__dst.n128_u64[0]);
        }

        if (v66 < 0)
        {
          operator delete(v65);
        }

        std::locale::~locale(&v62[2]);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_69;
      }

      v39 = v62[3];
      v37 = v62[5] - v62[3];
      if ((v62[5] - v62[3]) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_107:
        sub_3244();
      }

LABEL_59:
      if (v37 >= 0x17)
      {
        operator new();
      }

      BYTE7(v59) = v37;
      if (v37)
      {
        memmove(&__dst, v39, v37);
      }

      goto LABEL_64;
    }

LABEL_56:
    v38 = v67;
    if (v67 < v64)
    {
      v67 = v64;
      v38 = v64;
    }

    v39 = v63;
    v37 = v38 - v63;
    if (v38 - v63 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_107;
    }

    goto LABEL_59;
  }

LABEL_69:
  v40 = *(a1 + 88);
  if (v40 != 0x7FFFFFFF && v40 <= v20)
  {
    v54.n128_u64[0] = 10;
    v54.n128_u64[1] = &off_2669FE0;
    sub_434934(&__dst, &v54);
    LOBYTE(v62[0]) = 0;
    *&v62[1] = __dst;
    *&v62[3] = v59;
    v62[5] = v60;
    v59 = 0uLL;
    v60 = 0;
    LODWORD(v63) = v61;
    sub_D72D60(a5, v62);
    if (LOBYTE(v62[0]) == 1)
    {
      sub_5287C0(&v62[1]);
    }

    else
    {
      v41 = v62[3];
      if (v62[3])
      {
        v42 = v62[4];
        v43 = v62[3];
        if (v62[4] != v62[3])
        {
          do
          {
            if (*(v42 - 1) < 0)
            {
              operator delete(*(v42 - 3));
            }

            v42 -= 4;
          }

          while (v42 != v41);
          v43 = v62[3];
        }

        v62[4] = v41;
        operator delete(v43);
      }
    }

    v44 = v59;
    if (v59)
    {
      v45 = *(&v59 + 1);
      v46 = v59;
      if (*(&v59 + 1) != v59)
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
        v46 = v59;
      }

      *(&v59 + 1) = v44;
      operator delete(v46);
    }
  }

  v47 = *(a1 + 64);
  if (*a5 == 1)
  {
    v48 = sub_D72E5C(a5);
    sub_D412B8((v48 + 696), v62);
  }

  else
  {
    memset(v62, 0, sizeof(v62));
  }

  sub_7CA38(v47, a3, v62, *(a1 + 72));
  v49 = v62[3];
  if (v62[3])
  {
    v50 = v62[4];
    v51 = v62[3];
    if (v62[4] != v62[3])
    {
      do
      {
        v52 = *(v50 - 25);
        v50 -= 6;
        if (v52 < 0)
        {
          operator delete(*v50);
        }
      }

      while (v50 != v49);
      v51 = v62[3];
    }

    v62[4] = v49;
    operator delete(v51);
  }

  if ((SHIBYTE(v62[2]) & 0x80000000) == 0)
  {
    if (*a5 != 1)
    {
      return;
    }

    goto LABEL_102;
  }

  operator delete(v62[0]);
  if (*a5 == 1)
  {
LABEL_102:
    sub_D16C58(*a4, a5 + 8);
  }
}

void sub_E151F0(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x297]) < 0)
  {
    operator delete(STACK[0x280]);
    sub_1959728(&STACK[0x2B0]);
    sub_D40D4C(v1);
    _Unwind_Resume(a1);
  }

  sub_1959728(&STACK[0x2B0]);
  sub_D40D4C(v1);
  _Unwind_Resume(a1);
}

void sub_E15344(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE **a4@<X3>, uint64_t a5@<X8>)
{
  ++*(a1 + 80);
  *a5 = 1;
  *(a5 + 8) = 0;
  v7 = (a5 + 8);
  if (*(a1 + 8) != &off_2669FE0 || *a1 != 0)
  {
    sub_434934(v69, a1);
    v9 = v69[2].n128_u64[0];
    v10 = v69[2].n128_u32[2];
    *(a5 + 8) = v69[0].n128_u8[0];
    *(a5 + 9) = *(v69[0].n128_u64 + 1);
    *(a5 + 16) = v69[0].n128_u64[1];
    *(a5 + 24) = v69[1];
    *(a5 + 40) = v9;
    *(a5 + 48) = v10;
    *a5 = 0;
    return;
  }

  sub_7E9A4(v77);
  v14 = sub_D33CCC(v76, *a2, **(a2 + 8), *(a2 + 16), *(a2 + 24));
  sub_D32E24(v14, v69);
  v15 = v69[0].n128_u8[0];
  if (*a5 == 1)
  {
    if (!v69[0].n128_u8[0])
    {
      goto LABEL_16;
    }

LABEL_19:
    LOBYTE(v7->__val_) = v69[0].n128_u8[8];
    *a5 = v15;
    if (v15)
    {
      goto LABEL_28;
    }

    goto LABEL_20;
  }

  if (v69[0].n128_u8[0])
  {
    v16 = *(a5 + 24);
    if (v16)
    {
      v17 = *(a5 + 32);
      v18 = *(a5 + 24);
      if (v17 != v16)
      {
        do
        {
          if (*(v17 - 1) < 0)
          {
            operator delete(*(v17 - 24));
          }

          v17 -= 32;
        }

        while (v17 != v16);
        v18 = *(a5 + 24);
      }

      *(a5 + 32) = v16;
      operator delete(v18);
      v15 = v69[0].n128_u8[0];
    }

    goto LABEL_19;
  }

LABEL_16:
  *v7 = *(v69 + 8);
  *(a5 + 24) = *(&v69[1] + 8);
  *(a5 + 40) = v69[2].n128_u64[1];
  memset(&v69[1].n128_i8[8], 0, 24);
  *(a5 + 48) = v70;
  *a5 = v15;
LABEL_20:
  v19 = v69[1].n128_u64[1];
  if (v69[1].n128_u64[1])
  {
    v20 = v69[2].n128_u64[0];
    v21 = v69[1].n128_u64[1];
    if (v69[2].n128_u64[0] != v69[1].n128_u64[1])
    {
      do
      {
        if (*(v20 - 1) < 0)
        {
          operator delete(*(v20 - 24));
        }

        v20 -= 32;
      }

      while (v20 != v19);
      v21 = v69[1].n128_u64[1];
    }

    v69[2].n128_u64[0] = v19;
    operator delete(v21);
  }

LABEL_28:
  v22 = sub_7EAB4(v77);
  v23 = v22;
  v24 = *(a1 + 84);
  v25 = v24 != 0x7FFFFFFF && v24 <= v22;
  if (!v25 || !sub_7E7E4(1u))
  {
    goto LABEL_66;
  }

  sub_19594F8(v69[0].n128_f64);
  v26 = sub_4A5C(v69, "Found long running (", 20);
  v27 = sub_72140(v26, v23);
  v28 = sub_4A5C(v27, ") ", 2);
  v29 = sub_4A5C(v28, "RequestValidationModule", 23);
  v30 = sub_4A5C(v29, " in ", 4);
  sub_7B538(*(a1 + 64), &__dst);
  if ((v68 & 0x80u) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst.n128_u64[0];
  }

  if ((v68 & 0x80u) == 0)
  {
    v32 = v68;
  }

  else
  {
    v32 = __dst.n128_i64[1];
  }

  v33 = sub_4A5C(v30, p_dst, v32);
  sub_4A5C(v33, " step ", 6);
  v34 = std::ostream::operator<<();
  v35 = sub_4A5C(v34, " (request: ", 11);
  sub_17541D0(v64, *(a1 + 48));
  sub_E9209C(v64, *(a1 + 56), v65);
  if ((v66 & 0x80u) == 0)
  {
    v36 = v65;
  }

  else
  {
    v36 = v65[0];
  }

  if ((v66 & 0x80u) == 0)
  {
    v37 = v66;
  }

  else
  {
    v37 = v65[1];
  }

  v38 = sub_4A5C(v35, v36, v37);
  sub_4A5C(v38, ")", 1);
  if (v66 < 0)
  {
    operator delete(v65[0]);
    sub_1754598(v64);
    if ((v68 & 0x80000000) == 0)
    {
LABEL_48:
      v39 = v75;
      if ((v75 & 0x10) == 0)
      {
        goto LABEL_49;
      }

LABEL_53:
      v41 = v74;
      if (v74 < v71)
      {
        v74 = v71;
        v41 = v71;
      }

      v42 = v70;
      v40 = v41 - v70;
      if (v41 - v70 > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_110:
        sub_3244();
      }

LABEL_56:
      if (v40 >= 0x17)
      {
        operator new();
      }

      v68 = v40;
      if (v40)
      {
        memmove(&__dst, v42, v40);
      }

      goto LABEL_61;
    }
  }

  else
  {
    sub_1754598(v64);
    if ((v68 & 0x80000000) == 0)
    {
      goto LABEL_48;
    }
  }

  operator delete(__dst.n128_u64[0]);
  v39 = v75;
  if ((v75 & 0x10) != 0)
  {
    goto LABEL_53;
  }

LABEL_49:
  if ((v39 & 8) != 0)
  {
    v42 = v69[1].n128_u64[1];
    v40 = v69[2].n128_u64[1] - v69[1].n128_u64[1];
    if (v69[2].n128_u64[1] - v69[1].n128_u64[1] > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_110;
    }

    goto LABEL_56;
  }

  v40 = 0;
  v68 = 0;
LABEL_61:
  __dst.n128_u8[v40] = 0;
  sub_7E854(&__dst, 1u);
  if (v68 < 0)
  {
    operator delete(__dst.n128_u64[0]);
  }

  if (v73 < 0)
  {
    operator delete(v72);
  }

  std::locale::~locale(&v69[1]);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_66:
  v43 = *(a1 + 88);
  if (v43 == 0x7FFFFFFF || v43 > v23)
  {
    v47 = (a1 + 64);
    v48 = *(a1 + 64);
    if (*a5)
    {
      sub_D73B78(a5);
    }
  }

  else
  {
    __dst.n128_u64[0] = 10;
    __dst.n128_u64[1] = &off_2669FE0;
    sub_434934(v69, &__dst);
    v44 = v69[2].n128_u64[0];
    v45 = v69[1];
    v46 = v69[2].n128_u32[2];
    *(a5 + 8) = v69[0].n128_u8[0];
    *(a5 + 9) = *(v69[0].n128_u64 + 1);
    *(a5 + 16) = v69[0].n128_u64[1];
    *(a5 + 24) = v45;
    *(a5 + 40) = v44;
    *(a5 + 48) = v46;
    *a5 = 0;
    v47 = (a1 + 64);
    v48 = *(a1 + 64);
  }

  memset(v69, 0, sizeof(v69));
  sub_7CA38(v48, a3, v69, *(a1 + 72));
  v49 = v69[1].n128_u64[1];
  if (v69[1].n128_u64[1])
  {
    v50 = v69[2].n128_u64[0];
    v51 = v69[1].n128_u64[1];
    if (v69[2].n128_u64[0] != v69[1].n128_u64[1])
    {
      do
      {
        v52 = *(v50 - 25);
        v50 -= 6;
        if (v52 < 0)
        {
          operator delete(*v50);
        }
      }

      while (v50 != v49);
      v51 = v69[1].n128_u64[1];
    }

    v69[2].n128_u64[0] = v49;
    operator delete(v51);
  }

  if (v69[1].n128_i8[7] < 0)
  {
    operator delete(v69[0].n128_u64[0]);
    if (*a5 == 1)
    {
      goto LABEL_81;
    }
  }

  else if (*a5 == 1)
  {
LABEL_81:
    **a4 = 1;
    return;
  }

  sub_DEBB90(*(a1 + 64), v7, *(a1 + 48), *(a1 + 72));
  if (sub_7E7E4(3u))
  {
    sub_19594F8(v69[0].n128_f64);
    sub_7B538(*v47, &__dst);
    if ((v68 & 0x80u) == 0)
    {
      v53 = &__dst;
    }

    else
    {
      v53 = __dst.n128_u64[0];
    }

    if ((v68 & 0x80u) == 0)
    {
      v54 = v68;
    }

    else
    {
      v54 = __dst.n128_i64[1];
    }

    v55 = sub_4A5C(v69, v53, v54);
    sub_4A5C(v55, " failed in step ", 16);
    v56 = std::ostream::operator<<();
    v57 = sub_4A5C(v56, " (", 2);
    v58 = sub_4A5C(v57, "RequestValidationModule", 23);
    v59 = sub_4A5C(v58, ") with error: ", 14);
    sub_D72C3C(v59, v7);
    if (v68 < 0)
    {
      operator delete(__dst.n128_u64[0]);
      v60 = v75;
      if ((v75 & 0x10) == 0)
      {
LABEL_92:
        if ((v60 & 8) == 0)
        {
          v61 = 0;
          v68 = 0;
LABEL_103:
          __dst.n128_u8[v61] = 0;
          sub_7E854(&__dst, 3u);
          if (v68 < 0)
          {
            operator delete(__dst.n128_u64[0]);
          }

          if (v73 < 0)
          {
            operator delete(v72);
          }

          std::locale::~locale(&v69[1]);
          std::ostream::~ostream();
          std::ios::~ios();
          goto LABEL_108;
        }

        v63 = v69[1].n128_u64[1];
        v61 = v69[2].n128_u64[1] - v69[1].n128_u64[1];
        if (v69[2].n128_u64[1] - v69[1].n128_u64[1] > 0x7FFFFFFFFFFFFFF7)
        {
LABEL_112:
          sub_3244();
        }

LABEL_98:
        if (v61 >= 0x17)
        {
          operator new();
        }

        v68 = v61;
        if (v61)
        {
          memmove(&__dst, v63, v61);
        }

        goto LABEL_103;
      }
    }

    else
    {
      v60 = v75;
      if ((v75 & 0x10) == 0)
      {
        goto LABEL_92;
      }
    }

    v62 = v74;
    if (v74 < v71)
    {
      v74 = v71;
      v62 = v71;
    }

    v63 = v70;
    v61 = v62 - v70;
    if (v62 - v70 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_112;
    }

    goto LABEL_98;
  }

LABEL_108:
  sub_434B40(a1, v7);
}

void sub_E15CB4(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x24F]) < 0)
  {
    operator delete(STACK[0x238]);
  }

  sub_1959728(&STACK[0x250]);
  sub_CD6274(v1);
  _Unwind_Resume(a1);
}

void sub_E15E28(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  ++*(a1 + 80);
  *a5 = 1;
  *(a5 + 8) = 0u;
  v7 = (a5 + 8);
  *(a5 + 24) = 0u;
  *(a5 + 40) = 0u;
  *(a5 + 56) = 0u;
  *(a5 + 66) = 0u;
  *(a5 + 82) = 1;
  *(a5 + 88) = 0;
  if (*(a1 + 8) == &off_2669FE0 && !*a1)
  {
    sub_7E9A4(v90);
    v11 = *a2;
    v12 = a2[1];
    v13 = a2[2];
    v85 = v11;
    v86 = 1;
    v87 = v12;
    v88 = sub_E88F70(&v85);
    v89 = v13;
    sub_D11BD4(&v85, v78);
    sub_D12F1C(a5, v78);
    if (LOBYTE(v78[0]) == 1)
    {
      v14 = v78[1];
      if (!v78[1])
      {
        goto LABEL_41;
      }

      v15 = v78[2];
      v16 = v78[1];
      if (v78[2] != v78[1])
      {
        do
        {
          v15 -= 440;
          sub_44FDEC(v15);
        }

        while (v15 != v14);
        v16 = v78[1];
      }

      v78[2] = v14;
    }

    else
    {
      v22 = v78[3];
      if (!v78[3])
      {
        goto LABEL_41;
      }

      v23 = v78[4];
      v16 = v78[3];
      if (v78[4] != v78[3])
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
        v16 = v78[3];
      }

      v78[4] = v22;
    }

    operator delete(v16);
LABEL_41:
    v27 = sub_7EAB4(v90);
    v28 = v27;
    v29 = *(a1 + 84);
    v30 = v29 != 0x7FFFFFFF && v29 <= v27;
    if (!v30 || !sub_7E7E4(1u))
    {
      goto LABEL_79;
    }

    sub_19594F8(v78);
    v31 = sub_4A5C(v78, "Found long running (", 20);
    v32 = sub_72140(v31, v28);
    v33 = sub_4A5C(v32, ") ", 2);
    v34 = sub_4A5C(v33, "InputPointTransformerModule", 27);
    v35 = sub_4A5C(v34, " in ", 4);
    sub_7B538(*(a1 + 64), &__dst);
    if ((SBYTE7(v92) & 0x80u) == 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst.n128_u64[0];
    }

    if ((SBYTE7(v92) & 0x80u) == 0)
    {
      v37 = BYTE7(v92);
    }

    else
    {
      v37 = __dst.n128_i64[1];
    }

    v38 = sub_4A5C(v35, p_dst, v37);
    sub_4A5C(v38, " step ", 6);
    v39 = std::ostream::operator<<();
    v40 = sub_4A5C(v39, " (request: ", 11);
    sub_17541D0(v75, *(a1 + 48));
    sub_E9209C(v75, *(a1 + 56), &v76);
    if ((v77 & 0x80u) == 0)
    {
      v41 = &v76;
    }

    else
    {
      v41 = v76.n128_u64[0];
    }

    if ((v77 & 0x80u) == 0)
    {
      v42 = v77;
    }

    else
    {
      v42 = v76.n128_i64[1];
    }

    v43 = sub_4A5C(v40, v41, v42);
    sub_4A5C(v43, ")", 1);
    if (v77 < 0)
    {
      operator delete(v76.n128_u64[0]);
      sub_1754598(v75);
      if ((SBYTE7(v92) & 0x80000000) == 0)
      {
LABEL_61:
        v44 = v84;
        v74 = a3;
        if ((v84 & 0x10) == 0)
        {
          goto LABEL_62;
        }

        goto LABEL_66;
      }
    }

    else
    {
      sub_1754598(v75);
      if ((SBYTE7(v92) & 0x80000000) == 0)
      {
        goto LABEL_61;
      }
    }

    operator delete(__dst.n128_u64[0]);
    v44 = v84;
    v74 = a3;
    if ((v84 & 0x10) == 0)
    {
LABEL_62:
      if ((v44 & 8) == 0)
      {
        v45 = 0;
        BYTE7(v92) = 0;
LABEL_74:
        __dst.n128_u8[v45] = 0;
        sub_7E854(&__dst, 1u);
        if (SBYTE7(v92) < 0)
        {
          operator delete(__dst.n128_u64[0]);
        }

        if (v82 < 0)
        {
          operator delete(v81);
        }

        std::locale::~locale(&v78[2]);
        std::ostream::~ostream();
        std::ios::~ios();
        a3 = v74;
LABEL_79:
        v48 = *(a1 + 88);
        if (v48 == 0x7FFFFFFF || v48 > v28)
        {
          goto LABEL_104;
        }

        v76.n128_u64[0] = 10;
        v76.n128_u64[1] = &off_2669FE0;
        sub_434934(&__dst, &v76);
        LOBYTE(v78[0]) = 0;
        *&v78[1] = __dst;
        *&v78[3] = v92;
        v78[5] = v93;
        v92 = 0uLL;
        v93 = 0;
        LODWORD(v79) = v94;
        sub_D12F1C(a5, v78);
        if (LOBYTE(v78[0]) == 1)
        {
          v49 = v78[1];
          if (!v78[1])
          {
            goto LABEL_96;
          }

          v50 = v78[2];
          v51 = v78[1];
          if (v78[2] != v78[1])
          {
            do
            {
              v50 -= 440;
              sub_44FDEC(v50);
            }

            while (v50 != v49);
            v51 = v78[1];
          }

          v78[2] = v49;
        }

        else
        {
          v52 = v78[3];
          if (!v78[3])
          {
            goto LABEL_96;
          }

          v53 = v78[4];
          v51 = v78[3];
          if (v78[4] != v78[3])
          {
            do
            {
              if (*(v53 - 1) < 0)
              {
                operator delete(*(v53 - 3));
              }

              v53 -= 4;
            }

            while (v53 != v52);
            v51 = v78[3];
          }

          v78[4] = v52;
        }

        operator delete(v51);
LABEL_96:
        v54 = v92;
        if (v92)
        {
          v55 = *(&v92 + 1);
          v56 = v92;
          if (*(&v92 + 1) != v92)
          {
            do
            {
              if (*(v55 - 1) < 0)
              {
                operator delete(*(v55 - 24));
              }

              v55 -= 32;
            }

            while (v55 != v54);
            v56 = v92;
          }

          *(&v92 + 1) = v54;
          operator delete(v56);
        }

LABEL_104:
        v57 = *(a1 + 64);
        if (*a5 == 1)
        {
          v58 = sub_D73C78(a5);
          sub_D73D78(v58 + 24, v78);
        }

        else
        {
          memset(v78, 0, sizeof(v78));
        }

        sub_7CA38(v57, a3, v78, *(a1 + 72));
        v59 = v78[3];
        if (v78[3])
        {
          v60 = v78[4];
          v61 = v78[3];
          if (v78[4] != v78[3])
          {
            do
            {
              v62 = *(v60 - 25);
              v60 -= 6;
              if (v62 < 0)
              {
                operator delete(*v60);
              }
            }

            while (v60 != v59);
            v61 = v78[3];
          }

          v78[4] = v59;
          operator delete(v61);
        }

        if (SHIBYTE(v78[2]) < 0)
        {
          operator delete(v78[0]);
          if (*a5 == 1)
          {
            goto LABEL_117;
          }
        }

        else if (*a5 == 1)
        {
LABEL_117:
          sub_E16A80(a4, v7);
          return;
        }

        sub_DEBB90(*(a1 + 64), v7, *(a1 + 48), *(a1 + 72));
        if (!sub_7E7E4(3u))
        {
          goto LABEL_144;
        }

        sub_19594F8(v78);
        sub_7B538(*(a1 + 64), &__dst);
        if ((SBYTE7(v92) & 0x80u) == 0)
        {
          v63 = &__dst;
        }

        else
        {
          v63 = __dst.n128_u64[0];
        }

        if ((SBYTE7(v92) & 0x80u) == 0)
        {
          v64 = BYTE7(v92);
        }

        else
        {
          v64 = __dst.n128_i64[1];
        }

        v65 = sub_4A5C(v78, v63, v64);
        sub_4A5C(v65, " failed in step ", 16);
        v66 = std::ostream::operator<<();
        v67 = sub_4A5C(v66, " (", 2);
        v68 = sub_4A5C(v67, "InputPointTransformerModule", 27);
        v69 = sub_4A5C(v68, ") with error: ", 14);
        sub_D72C3C(v69, v7);
        if (SBYTE7(v92) < 0)
        {
          operator delete(__dst.n128_u64[0]);
          v70 = v84;
          if ((v84 & 0x10) == 0)
          {
LABEL_128:
            if ((v70 & 8) == 0)
            {
              v71 = 0;
              BYTE7(v92) = 0;
LABEL_139:
              __dst.n128_u8[v71] = 0;
              sub_7E854(&__dst, 3u);
              if (SBYTE7(v92) < 0)
              {
                operator delete(__dst.n128_u64[0]);
              }

              if (v82 < 0)
              {
                operator delete(v81);
              }

              std::locale::~locale(&v78[2]);
              std::ostream::~ostream();
              std::ios::~ios();
LABEL_144:
              sub_434B40(a1, v7);
              return;
            }

            v73 = v78[3];
            v71 = v78[5] - v78[3];
            if ((v78[5] - v78[3]) > 0x7FFFFFFFFFFFFFF7)
            {
LABEL_149:
              sub_3244();
            }

LABEL_134:
            if (v71 >= 0x17)
            {
              operator new();
            }

            BYTE7(v92) = v71;
            if (v71)
            {
              memmove(&__dst, v73, v71);
            }

            goto LABEL_139;
          }
        }

        else
        {
          v70 = v84;
          if ((v84 & 0x10) == 0)
          {
            goto LABEL_128;
          }
        }

        v72 = v83;
        if (v83 < v80)
        {
          v83 = v80;
          v72 = v80;
        }

        v73 = v79;
        v71 = v72 - v79;
        if (v72 - v79 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_149;
        }

        goto LABEL_134;
      }

      v47 = v78[3];
      v45 = v78[5] - v78[3];
      if ((v78[5] - v78[3]) > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_147:
        sub_3244();
      }

LABEL_69:
      if (v45 >= 0x17)
      {
        operator new();
      }

      BYTE7(v92) = v45;
      if (v45)
      {
        memmove(&__dst, v47, v45);
      }

      goto LABEL_74;
    }

LABEL_66:
    v46 = v83;
    if (v83 < v80)
    {
      v83 = v80;
      v46 = v80;
    }

    v47 = v79;
    v45 = v46 - v79;
    if (v46 - v79 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_147;
    }

    goto LABEL_69;
  }

  sub_434934(&__dst, a1);
  LOBYTE(v78[0]) = 0;
  *&v78[1] = __dst;
  *&v78[3] = v92;
  v78[5] = v93;
  v92 = 0uLL;
  v93 = 0;
  LODWORD(v79) = v94;
  sub_D12F1C(a5, v78);
  if (LOBYTE(v78[0]) == 1)
  {
    v17 = v78[1];
    if (!v78[1])
    {
      goto LABEL_30;
    }

    v18 = v78[2];
    v19 = v78[1];
    if (v78[2] != v78[1])
    {
      do
      {
        v18 -= 440;
        sub_44FDEC(v18);
      }

      while (v18 != v17);
      v19 = v78[1];
    }

    v78[2] = v17;
  }

  else
  {
    v20 = v78[3];
    if (!v78[3])
    {
      goto LABEL_30;
    }

    v21 = v78[4];
    v19 = v78[3];
    if (v78[4] != v78[3])
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
      v19 = v78[3];
    }

    v78[4] = v20;
  }

  operator delete(v19);
LABEL_30:
  v24 = v92;
  if (v92)
  {
    v25 = *(&v92 + 1);
    v26 = v92;
    if (*(&v92 + 1) != v92)
    {
      do
      {
        if (*(v25 - 1) < 0)
        {
          operator delete(*(v25 - 24));
        }

        v25 -= 32;
      }

      while (v25 != v24);
      v26 = v92;
    }

    *(&v92 + 1) = v24;
    operator delete(v26);
  }
}

void sub_E1690C(_Unwind_Exception *a1)
{
  if (*(v2 - 121) < 0)
  {
    operator delete(*(v2 - 144));
  }

  sub_1959728(&STACK[0x240]);
  sub_D130AC(v1);
  _Unwind_Resume(a1);
}

void sub_E16A80(uint64_t a1, uint64_t *a2)
{
  v3 = *a1;
  if (*a1 != a2)
  {
    sub_CD80CC(*a1, *a2, a2[1], 0x6FB586FB586FB587 * ((a2[1] - *a2) >> 3));
    v3 = *a1;
  }

  v4 = *(a1 + 16);
  sub_4E3D18(v8);
  sub_44D46C(v10, v4, v3, v8, *(a1 + 24));
  sub_D9F1F0(*(a1 + 8), v10);
  sub_D9F480(v10);
  if (v9 < 0)
  {
    operator delete(v8[3]);
  }

  v5 = v8[0];
  if (v8[0])
  {
    v6 = v8[1];
    v7 = v8[0];
    if (v8[1] != v8[0])
    {
      do
      {
        v6 = sub_4547F0(v6 - 552);
      }

      while (v6 != v5);
      v7 = v8[0];
    }

    v8[1] = v5;
    operator delete(v7);
  }
}

void sub_E16B6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_454784(va);
  _Unwind_Resume(a1);
}

void sub_E16B80(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a5@<X8>)
{
  ++*(a1 + 80);
  *a5 = 1;
  bzero((a5 + 8), 0x368uLL);
  sub_4E3D18((a5 + 8));
  sub_4E3D18((a5 + 56));
  *(a5 + 104) = -1;
  *(a5 + 288) = 0;
  *(a5 + 296) = 0;
  *(a5 + 424) = 0;
  *(a5 + 556) = 0;
  *(a5 + 544) = 0;
  *(a5 + 552) = 0;
  *(a5 + 560) = 0u;
  *(a5 + 576) = 0u;
  *(a5 + 592) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 128) = 0u;
  *(a5 + 144) = 0u;
  *(a5 + 160) = 0;
  *(a5 + 432) = 0u;
  *(a5 + 448) = 0u;
  *(a5 + 464) = 0u;
  *(a5 + 480) = 0u;
  *(a5 + 496) = 0u;
  *(a5 + 512) = 0u;
  *(a5 + 524) = 0u;
  *(a5 + 608) = 0x3FF0000000000000;
  *(a5 + 632) = 0;
  *(a5 + 616) = 0u;
  *(a5 + 640) = 5;
  *(a5 + 648) = 0u;
  *(a5 + 664) = 0u;
  *(a5 + 680) = 0u;
  *(a5 + 696) = 0x7FFFFFFF;
  *(a5 + 784) = 0u;
  *(a5 + 704) = 0u;
  *(a5 + 720) = 0u;
  *(a5 + 736) = 0u;
  *(a5 + 752) = 0u;
  *(a5 + 761) = 0u;
  *(a5 + 800) = -1;
  *(a5 + 808) = 0x7FFFFFFF;
  *(a5 + 812) = 0;
  *(a5 + 820) = 0;
  *(a5 + 824) = -1;
  *(a5 + 832) = -1;
  *(a5 + 840) = 0;
  *(a5 + 848) = 0;
  *(a5 + 872) = 0;
  *(a5 + 880) = 0;
  *(a5 + 888) = 0;
  *(a5 + 896) = 0u;
  *(a5 + 912) = 0;
  if (*(a1 + 8) == &off_2669FE0 && !*a1)
  {
    sub_7E9A4(v23);
    sub_D75B84(&v19, *a2, *(a2 + 8), *(a2 + 16), *(a2 + 24), *(a2 + 32));
  }

  sub_434934(&v19, a1);
  LOBYTE(v14) = 0;
  v15 = v19;
  __p = v20;
  v17 = v21;
  v20 = 0uLL;
  v21 = 0;
  LODWORD(v18) = v22;
  sub_D1E024(a5, &v14);
  if (v14 == 1)
  {
    sub_D1D6D4(&v15);
  }

  else
  {
    v8 = __p;
    if (__p)
    {
      v9 = *(&__p + 1);
      v10 = __p;
      if (*(&__p + 1) != __p)
      {
        do
        {
          if (*(v9 - 1) < 0)
          {
            operator delete(*(v9 - 24));
          }

          v9 -= 32;
        }

        while (v9 != v8);
        v10 = __p;
      }

      *(&__p + 1) = v8;
      operator delete(v10);
    }
  }

  v11 = v20;
  if (v20)
  {
    v12 = *(&v20 + 1);
    v13 = v20;
    if (*(&v20 + 1) != v20)
    {
      do
      {
        if (*(v12 - 1) < 0)
        {
          operator delete(*(v12 - 24));
        }

        v12 -= 32;
      }

      while (v12 != v11);
      v13 = v20;
    }

    *(&v20 + 1) = v11;
    operator delete(v13);
  }
}

void sub_E178D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_guard_abort(&qword_2733BE8);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&STACK[0x270]);
  sub_D772D8(&STACK[0x608]);
  sub_D1D638(v15);
  _Unwind_Resume(a1);
}

void sub_E17A14(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a5@<X8>)
{
  ++*(a1 + 80);
  *a5 = 1;
  *(a5 + 8) = 0u;
  *(a5 + 24) = 0u;
  *(a5 + 40) = 0u;
  *(a5 + 56) = 0;
  if (*(a1 + 8) == &off_2669FE0 && *a1 == 0)
  {
    sub_7E9A4(v22);
    v12 = *a2;
    v11 = a2[1];
    v14 = a2[2];
    v13 = a2[3];
    v23.n128_u64[0] = v11;
    v15 = sub_3B6890(v13);
    v16 = *v15;
    LODWORD(v24) = *(v15 + 8);
    v23.n128_u64[1] = v16;
    BYTE4(v24) = sub_E7A3D0(v12);
    *(&v24 + 1) = v14;
    LOBYTE(v25) = 1;
    v26 = v13;
    sub_D00C48(&v23, &v17);
  }

  sub_434934(&v23, a1);
  LOBYTE(v17) = 0;
  v18 = v23;
  v19 = v24;
  v20 = v25;
  v24 = 0uLL;
  v25 = 0;
  LODWORD(v21) = v26;
  sub_D79D84(a5, &v17);
  sub_D71434(&v17);
  v7 = v24;
  if (v24)
  {
    v8 = *(&v24 + 1);
    v9 = v24;
    if (*(&v24 + 1) != v24)
    {
      do
      {
        if (*(v8 - 1) < 0)
        {
          operator delete(*(v8 - 24));
        }

        v8 -= 32;
      }

      while (v8 != v7);
      v9 = v24;
    }

    *(&v24 + 1) = v7;
    operator delete(v9);
  }
}

void sub_E18518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_guard_abort(&qword_2733C28);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&STACK[0x270]);
  sub_D71434(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_E186B4(uint64_t a1)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    v5 = *(a1 + 8);
    sub_435834(&v6, (a1 + 24));
    v8 = *(a1 + 48);
    v4 = v8;
    *exception = off_2673D90;
    *(exception + 8) = v5;
    *(exception + 24) = v6;
    *(exception + 5) = v7;
    v6 = 0uLL;
    v7 = 0;
    *(exception + 12) = v4;
  }

  return a1 + 8;
}

void sub_E187B4(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void ****a4@<X3>, uint64_t a5@<X8>)
{
  ++*(a1 + 80);
  *a5 = 1;
  *(a5 + 8) = 0u;
  v7 = (a5 + 8);
  *(a5 + 24) = 0u;
  *(a5 + 40) = 0u;
  *(a5 + 56) = 0u;
  *(a5 + 72) = 0u;
  *(a5 + 88) = 0;
  *(a5 + 96) = 0;
  *(a5 + 88) = 1065353216;
  if (*(a1 + 8) == &off_2669FE0 && !*a1)
  {
    sub_7E9A4(v90);
    sub_E198B8(a2, &v83);
    sub_D39308(&v83, v76);
    sub_E19678(a5, v76);
    if (LOBYTE(v76[0]) == 1)
    {
      sub_D3B548(&v76[1]);
    }

    else
    {
      v14 = v76[3];
      if (v76[3])
      {
        v15 = v76[4];
        v16 = v76[3];
        if (v76[4] != v76[3])
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
          v16 = v76[3];
        }

        v76[4] = v14;
        operator delete(v16);
      }
    }

    v20 = sub_7EAB4(v90);
    v21 = v20;
    v22 = *(a1 + 84);
    v23 = v22 != 0x7FFFFFFF && v22 <= v20;
    if (!v23 || !sub_7E7E4(1u))
    {
LABEL_76:
      v43 = *(a1 + 88);
      if (v43 != 0x7FFFFFFF && v43 <= v21)
      {
        __p.n128_u64[0] = 10;
        __p.n128_u64[1] = &off_2669FE0;
        sub_434934(__dst, &__p);
        LOBYTE(v76[0]) = 0;
        *&v76[1] = *__dst;
        *&v76[3] = v70;
        v76[5] = v71;
        v70 = 0uLL;
        v71 = 0;
        LODWORD(v77) = v72;
        sub_E19678(a5, v76);
        if (LOBYTE(v76[0]) == 1)
        {
          sub_D3B548(&v76[1]);
        }

        else
        {
          v44 = v76[3];
          if (v76[3])
          {
            v45 = v76[4];
            v46 = v76[3];
            if (v76[4] != v76[3])
            {
              do
              {
                if (*(v45 - 1) < 0)
                {
                  operator delete(*(v45 - 3));
                }

                v45 -= 4;
              }

              while (v45 != v44);
              v46 = v76[3];
            }

            v76[4] = v44;
            operator delete(v46);
          }
        }

        v47 = v70;
        if (v70)
        {
          v48 = *(&v70 + 1);
          v49 = v70;
          if (*(&v70 + 1) != v70)
          {
            do
            {
              if (*(v48 - 1) < 0)
              {
                operator delete(*(v48 - 24));
              }

              v48 -= 32;
            }

            while (v48 != v47);
            v49 = v70;
          }

          *(&v70 + 1) = v47;
          operator delete(v49);
        }
      }

      v50 = *(a1 + 64);
      if (*a5 == 1)
      {
        sub_E199A8(a5);
        memset(v76, 0, sizeof(v76));
        operator new();
      }

      memset(v76, 0, sizeof(v76));
      sub_7CA38(v50, a3, v76, *(a1 + 72));
      v51 = v76[3];
      if (v76[3])
      {
        v52 = v76[4];
        v53 = v76[3];
        if (v76[4] != v76[3])
        {
          do
          {
            v54 = *(v52 - 25);
            v52 -= 6;
            if (v54 < 0)
            {
              operator delete(*v52);
            }
          }

          while (v52 != v51);
          v53 = v76[3];
        }

        v76[4] = v51;
        operator delete(v53);
      }

      if (SHIBYTE(v76[2]) < 0)
      {
        operator delete(v76[0]);
        if (*a5 == 1)
        {
          goto LABEL_108;
        }
      }

      else if (*a5 == 1)
      {
LABEL_108:
        sub_E194B0(a4, v7);
        goto LABEL_143;
      }

      sub_DEBB90(*(a1 + 64), v7, *(a1 + 48), *(a1 + 72));
      if (!sub_7E7E4(3u))
      {
LABEL_142:
        sub_434B40(a1, v7);
LABEL_143:
        if (v89)
        {
          operator delete(v89);
        }

        v19 = v87;
        if (v87)
        {
          v88 = v87;
LABEL_147:
          operator delete(v19);
          return;
        }

        return;
      }

      sub_19594F8(v76);
      sub_7B538(*(a1 + 64), __dst);
      if ((SBYTE7(v70) & 0x80u) == 0)
      {
        v55 = __dst;
      }

      else
      {
        v55 = __dst[0];
      }

      if ((SBYTE7(v70) & 0x80u) == 0)
      {
        v56 = BYTE7(v70);
      }

      else
      {
        v56 = __dst[1];
      }

      v57 = sub_4A5C(v76, v55, v56);
      sub_4A5C(v57, " failed in step ", 16);
      v58 = std::ostream::operator<<();
      v59 = sub_4A5C(v58, " (", 2);
      if ((atomic_load_explicit(&qword_2733C48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2733C48))
      {
        sub_89C64(2, "RouteBuilderModule", 18, &qword_2733C30);
        __cxa_guard_release(&qword_2733C48);
      }

      if (byte_2733C47 >= 0)
      {
        v60 = byte_2733C47;
      }

      else
      {
        v60 = unk_2733C38;
      }

      if (byte_2733C47 >= 0)
      {
        v61 = &qword_2733C30;
      }

      else
      {
        v61 = qword_2733C30;
      }

      v62 = sub_4A5C(v59, v61, v60);
      v63 = sub_4A5C(v62, ") with error: ", 14);
      sub_D72C3C(v63, v7);
      if (SBYTE7(v70) < 0)
      {
        operator delete(__dst[0]);
        v64 = v82;
        if ((v82 & 0x10) == 0)
        {
LABEL_126:
          if ((v64 & 8) == 0)
          {
            v65 = 0;
            BYTE7(v70) = 0;
LABEL_137:
            *(__dst + v65) = 0;
            sub_7E854(__dst, 3u);
            if (SBYTE7(v70) < 0)
            {
              operator delete(__dst[0]);
            }

            if (v80 < 0)
            {
              operator delete(v79);
            }

            std::locale::~locale(&v76[2]);
            std::ostream::~ostream();
            std::ios::~ios();
            goto LABEL_142;
          }

          v67 = v76[3];
          v65 = v76[5] - v76[3];
          if ((v76[5] - v76[3]) > 0x7FFFFFFFFFFFFFF7)
          {
LABEL_152:
            sub_3244();
          }

LABEL_132:
          if (v65 >= 0x17)
          {
            operator new();
          }

          BYTE7(v70) = v65;
          if (v65)
          {
            memmove(__dst, v67, v65);
          }

          goto LABEL_137;
        }
      }

      else
      {
        v64 = v82;
        if ((v82 & 0x10) == 0)
        {
          goto LABEL_126;
        }
      }

      v66 = v81;
      if (v81 < v78)
      {
        v81 = v78;
        v66 = v78;
      }

      v67 = v77;
      v65 = v66 - v77;
      if (v66 - v77 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_152;
      }

      goto LABEL_132;
    }

    sub_19594F8(v76);
    v24 = sub_4A5C(v76, "Found long running (", 20);
    v25 = sub_72140(v24, v21);
    v26 = sub_4A5C(v25, ") ", 2);
    if ((atomic_load_explicit(&qword_2733C48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2733C48))
    {
      sub_89C64(2, "RouteBuilderModule", 18, &qword_2733C30);
      __cxa_guard_release(&qword_2733C48);
    }

    if (byte_2733C47 >= 0)
    {
      v27 = byte_2733C47;
    }

    else
    {
      v27 = unk_2733C38;
    }

    if (byte_2733C47 >= 0)
    {
      v28 = &qword_2733C30;
    }

    else
    {
      v28 = qword_2733C30;
    }

    v29 = sub_4A5C(v26, v28, v27);
    v30 = sub_4A5C(v29, " in ", 4);
    sub_7B538(*(a1 + 64), __dst);
    if ((SBYTE7(v70) & 0x80u) == 0)
    {
      v31 = __dst;
    }

    else
    {
      v31 = __dst[0];
    }

    if ((SBYTE7(v70) & 0x80u) == 0)
    {
      v32 = BYTE7(v70);
    }

    else
    {
      v32 = __dst[1];
    }

    v33 = sub_4A5C(v30, v31, v32);
    sub_4A5C(v33, " step ", 6);
    v34 = std::ostream::operator<<();
    v35 = sub_4A5C(v34, " (request: ", 11);
    sub_17541D0(v73, *(a1 + 48));
    sub_E9209C(v73, *(a1 + 56), &__p);
    if ((v75 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.n128_u64[0];
    }

    if ((v75 & 0x80u) == 0)
    {
      v37 = v75;
    }

    else
    {
      v37 = __p.n128_i64[1];
    }

    v38 = sub_4A5C(v35, p_p, v37);
    sub_4A5C(v38, ")", 1);
    if (v75 < 0)
    {
      operator delete(__p.n128_u64[0]);
      sub_1754598(v73);
      if ((SBYTE7(v70) & 0x80000000) == 0)
      {
LABEL_58:
        v39 = v82;
        v68 = a3;
        if ((v82 & 0x10) == 0)
        {
          goto LABEL_59;
        }

        goto LABEL_63;
      }
    }

    else
    {
      sub_1754598(v73);
      if ((SBYTE7(v70) & 0x80000000) == 0)
      {
        goto LABEL_58;
      }
    }

    operator delete(__dst[0]);
    v39 = v82;
    v68 = a3;
    if ((v82 & 0x10) == 0)
    {
LABEL_59:
      if ((v39 & 8) == 0)
      {
        v40 = 0;
        BYTE7(v70) = 0;
LABEL_71:
        *(__dst + v40) = 0;
        sub_7E854(__dst, 1u);
        if (SBYTE7(v70) < 0)
        {
          operator delete(__dst[0]);
        }

        if (v80 < 0)
        {
          operator delete(v79);
        }

        std::locale::~locale(&v76[2]);
        std::ostream::~ostream();
        std::ios::~ios();
        a3 = v68;
        goto LABEL_76;
      }

      v42 = v76[3];
      v40 = v76[5] - v76[3];
      if ((v76[5] - v76[3]) > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_150:
        sub_3244();
      }

LABEL_66:
      if (v40 >= 0x17)
      {
        operator new();
      }

      BYTE7(v70) = v40;
      if (v40)
      {
        memmove(__dst, v42, v40);
      }

      goto LABEL_71;
    }

LABEL_63:
    v41 = v81;
    if (v81 < v78)
    {
      v81 = v78;
      v41 = v78;
    }

    v42 = v77;
    v40 = v41 - v77;
    if (v41 - v77 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_150;
    }

    goto LABEL_66;
  }

  sub_434934(&v83, a1);
  LOBYTE(v76[0]) = 0;
  *&v76[1] = v83;
  *&v76[3] = v84;
  v76[5] = v85;
  v84 = 0uLL;
  v85 = 0;
  LODWORD(v77) = v86;
  sub_E19678(a5, v76);
  if (LOBYTE(v76[0]) == 1)
  {
    sub_D3B548(&v76[1]);
  }

  else
  {
    v11 = v76[3];
    if (v76[3])
    {
      v12 = v76[4];
      v13 = v76[3];
      if (v76[4] != v76[3])
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
        v13 = v76[3];
      }

      v76[4] = v11;
      operator delete(v13);
    }
  }

  v17 = v84;
  if (v84)
  {
    v18 = *(&v84 + 1);
    v19 = v84;
    if (*(&v84 + 1) != v84)
    {
      do
      {
        if (*(v18 - 1) < 0)
        {
          operator delete(*(v18 - 24));
        }

        v18 -= 32;
      }

      while (v18 != v17);
      v19 = v84;
    }

    *(&v84 + 1) = v17;
    goto LABEL_147;
  }
}

void sub_E19378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_guard_abort(&qword_2733C48);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&STACK[0x270]);
  sub_D7A354(&STACK[0x378]);
  sub_D3B4AC(v15);
  _Unwind_Resume(a1);
}

void sub_E194B0(void ****a1, uint64_t a2)
{
  v4 = *a1;
  if (**a1)
  {
    sub_E02D74(*a1);
    operator delete(*v4);
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
  }

  *v4 = *a2;
  v4[2] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a1[1] = ***a1;
  v5 = *a1[1];
  v6 = sub_4EDB30(a1[2]);
  sub_4C516C(v5, v6);
  sub_4C515C(*a1[1], 1);
  v7 = a1[3];
  v8 = *v7;
  if (*v7)
  {
    v9 = v7[1];
    v10 = *v7;
    if (v9 != v8)
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
      v10 = *v7;
    }

    v7[1] = v8;
    operator delete(v10);
    *v7 = 0;
    v7[1] = 0;
    v7[2] = 0;
  }

  *v7 = *(a2 + 24);
  v7[2] = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v12 = sub_4C5074(*a1[1], 1);
  if (*a1[4] == 3)
  {
    if (v12)
    {
      v13 = a1[5];
      v17.n128_u64[0] = 13;
      v17.n128_u64[1] = &off_2669FE0;
      sub_434934(&v18, &v17);
      sub_434B40(v13, &v18);
      v14 = __p;
      if (__p)
      {
        v15 = v20;
        v16 = __p;
        if (v20 != __p)
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
          v16 = __p;
        }

        v20 = v14;
        operator delete(v16);
      }
    }
  }
}

void sub_E19664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_CF3C94(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E19678(uint64_t a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    if (*a2)
    {
      v4 = (a1 + 8);
      if (*(a1 + 8))
      {
        sub_E02D74((a1 + 8));
        operator delete(*v4);
        *v4 = 0;
        *(a1 + 16) = 0;
        *(a1 + 24) = 0;
      }

      *(a1 + 8) = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      v5 = (a1 + 32);
      v6 = *(a1 + 32);
      if (v6)
      {
        v7 = *(a1 + 40);
        v8 = *(a1 + 32);
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
          v8 = *v5;
        }

        *(a1 + 40) = v6;
        operator delete(v8);
        *v5 = 0;
        *(a1 + 40) = 0;
        *(a1 + 48) = 0;
      }

      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = *(a2 + 48);
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      *(a2 + 48) = 0;
      sub_CEBD3C(a1 + 56, (a2 + 56));
LABEL_31:
      *(a1 + 96) = *(a2 + 96);
      goto LABEL_32;
    }

    sub_D3B548((a1 + 8));
  }

  else if (*a2)
  {
    v10 = *(a1 + 24);
    if (v10)
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 24);
      if (v11 != v10)
      {
        do
        {
          if (*(v11 - 1) < 0)
          {
            operator delete(*(v11 - 24));
          }

          v11 -= 32;
        }

        while (v11 != v10);
        v12 = *(a1 + 24);
      }

      *(a1 + 32) = v10;
      operator delete(v12);
    }

    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    v13 = *(a2 + 72);
    *(a1 + 32) = *(a2 + 32);
    v14 = *(a2 + 56);
    *(a1 + 48) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    *(a1 + 72) = v13;
    v15 = *(a2 + 64);
    *(a1 + 56) = v14;
    *(a1 + 64) = v15;
    *(a2 + 64) = 0;
    v16 = *(a2 + 80);
    *(a1 + 80) = v16;
    *(a1 + 88) = *(a2 + 88);
    if (v16)
    {
      v17 = *(v13 + 8);
      v18 = *(a1 + 64);
      if ((v18 & (v18 - 1)) != 0)
      {
        if (v17 >= v18)
        {
          v17 %= v18;
        }
      }

      else
      {
        v17 &= v18 - 1;
      }

      *(v14 + 8 * v17) = a1 + 72;
      *(a2 + 72) = 0;
      *(a2 + 80) = 0;
    }

    goto LABEL_31;
  }

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a1 + 48) = *(a2 + 48);
LABEL_32:
  *a1 = *a2;
  return a1;
}

__n128 sub_E198B8@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[3];
  v5 = *(a1 + 2);
  v6 = a1[7];
  v7 = *a1[6];
  v8 = a1[8];
  v9 = *(v8 + 24);
  *a2 = *(a1 + 1);
  *(a2 + 16) = v4;
  v14 = v5;
  *(a2 + 24) = sub_FF3C1C(v3, v5, 2);
  *(a2 + 32) = sub_6EECC();
  *(a2 + 36) = v7;
  *(a2 + 40) = v6;
  sub_E80194(v3, a2 + 48);
  v10 = *(a2 + 36) - 1;
  if (v10 < 0xD && ((0x1543u >> v10) & 1) != 0)
  {
    v11 = 0;
  }

  else
  {
    v11 = sub_E89630(v3);
  }

  *(a2 + 224) = v11;
  if (v9)
  {
    v12 = v8;
  }

  else
  {
    v12 = 0;
  }

  result = v14;
  *(a2 + 232) = v14;
  *(a2 + 248) = v12;
  return result;
}

uint64_t sub_E199A8(uint64_t a1)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    v5 = *(a1 + 8);
    sub_435834(&v6, (a1 + 24));
    v8 = *(a1 + 48);
    v4 = v8;
    *exception = off_2673D90;
    *(exception + 8) = v5;
    *(exception + 24) = v6;
    *(exception + 5) = v7;
    v6 = 0uLL;
    v7 = 0;
    *(exception + 12) = v4;
  }

  return a1 + 8;
}

void sub_E19AA8(uint64_t a1@<X0>, uint64_t a5@<X8>)
{
  ++*(a1 + 80);
  *a5 = 1;
  *(a5 + 8) = 0u;
  *(a5 + 24) = 0u;
  *(a5 + 40) = 0u;
  *(a5 + 56) = 0u;
  *(a5 + 72) = 0u;
  *(a5 + 88) = 0u;
  *(a5 + 104) = 0;
  if (*(a1 + 8) == &off_2669FE0 && !*a1)
  {
    sub_7E9A4(v21);
    sub_E78844(&v16);
  }

  sub_434934(&v12, a1);
  LOBYTE(v16) = 0;
  v17 = v12;
  __p = v13;
  v19 = v14;
  v13 = 0uLL;
  v14 = 0;
  v20 = v15;
  sub_E1A678(a5, &v16);
  if (v16 == 1)
  {
    if (!v17.n128_u64[0])
    {
      goto LABEL_16;
    }

    sub_E02F70(&v17);
    v6 = v17.n128_u64[0];
  }

  else
  {
    v7 = __p;
    if (!__p)
    {
      goto LABEL_16;
    }

    v8 = *(&__p + 1);
    v6 = __p;
    if (*(&__p + 1) != __p)
    {
      do
      {
        if (*(v8 - 1) < 0)
        {
          operator delete(*(v8 - 24));
        }

        v8 -= 32;
      }

      while (v8 != v7);
      v6 = __p;
    }

    *(&__p + 1) = v7;
  }

  operator delete(v6);
LABEL_16:
  v9 = v13;
  if (v13)
  {
    v10 = *(&v13 + 1);
    v11 = v13;
    if (*(&v13 + 1) != v13)
    {
      do
      {
        if (*(v10 - 1) < 0)
        {
          operator delete(*(v10 - 24));
        }

        v10 -= 32;
      }

      while (v10 != v9);
      v11 = v13;
    }

    *(&v13 + 1) = v9;
    operator delete(v11);
  }
}

void sub_E1A570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&STACK[0x270]);
  sub_528AB4(&STACK[0x380]);
  sub_E02CD8(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_E1A678(uint64_t a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    if (*a2)
    {
      v4 = a1 + 8;
      if (*(a1 + 8))
      {
        sub_E02F70(v4);
        operator delete(*v4);
        *v4 = 0;
        *(v4 + 8) = 0;
        *(v4 + 16) = 0;
      }

      *(a1 + 8) = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 8) = 0;
      v6 = *(a2 + 64);
      v5 = *(a2 + 80);
      v7 = *(a2 + 48);
      *(a1 + 92) = *(a2 + 92);
LABEL_21:
      *(a1 + 64) = v6;
      *(a1 + 80) = v5;
      *(a1 + 48) = v7;
      *(a1 + 32) = *(a2 + 32);
      goto LABEL_22;
    }

    v11 = (a1 + 8);
    if (*(a1 + 8))
    {
      sub_E02F70(v11);
      operator delete(*v11);
    }

    *v11 = *(a2 + 8);
  }

  else
  {
    if (*a2)
    {
      v8 = *(a1 + 24);
      if (v8)
      {
        v9 = *(a1 + 32);
        v10 = *(a1 + 24);
        if (v9 != v8)
        {
          do
          {
            if (*(v9 - 1) < 0)
            {
              operator delete(*(v9 - 24));
            }

            v9 -= 32;
          }

          while (v9 != v8);
          v10 = *(a1 + 24);
        }

        *(a1 + 32) = v8;
        operator delete(v10);
      }

      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 8) = 0;
      v5 = *(a2 + 80);
      v7 = *(a2 + 48);
      v6 = *(a2 + 64);
      *(a1 + 96) = *(a2 + 96);
      goto LABEL_21;
    }

    *(a1 + 8) = *(a2 + 8);
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a1 + 48) = *(a2 + 48);
LABEL_22:
  *a1 = *a2;
  return a1;
}

uint64_t sub_E1A7F4(uint64_t a1)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    v5 = *(a1 + 8);
    sub_435834(&v6, (a1 + 24));
    v8 = *(a1 + 48);
    v4 = v8;
    *exception = off_2673D90;
    *(exception + 8) = v5;
    *(exception + 24) = v6;
    *(exception + 5) = v7;
    v6 = 0uLL;
    v7 = 0;
    *(exception + 12) = v4;
  }

  return a1 + 8;
}

void sub_E1A8F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  ++*(v8 + 80);
  *v9 = 1;
  bzero(v9 + 8, 0x13D0uLL);
  sub_D0EECC((v10 + 8));
}

void sub_E1B52C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  __cxa_guard_abort(&qword_2733C68);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&STACK[0x930]);
  sub_D7E748(&STACK[0x268]);
  sub_D0F09C(v14);
  _Unwind_Resume(a1);
}

uint64_t sub_E1B65C(uint64_t a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    v4 = a1 + 8;
    if (*a2)
    {
      sub_E1B748(v4, a2 + 8);
      goto LABEL_16;
    }

    sub_D0F138(v4);
LABEL_12:
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 24) = 0;
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a1 + 48) = *(a2 + 48);
    goto LABEL_16;
  }

  if (!*a2)
  {
    goto LABEL_12;
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 24);
    if (v6 != v5)
    {
      do
      {
        if (*(v6 - 1) < 0)
        {
          operator delete(*(v6 - 24));
        }

        v6 -= 32;
      }

      while (v6 != v5);
      v7 = *(a1 + 24);
    }

    *(a1 + 32) = v5;
    operator delete(v7);
  }

  sub_D7DE54(a1 + 8, a2 + 8);
LABEL_16:
  *a1 = *a2;
  return a1;
}

uint64_t sub_E1B748(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *(a1 + 8);
    v6 = v4;
    if (v5 != v4)
    {
      do
      {
        v5 = sub_78B5C0(v5 - 7808);
      }

      while (v5 != v4);
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
  sub_CFD5E4((a1 + 24), a2 + 24);
  v7 = *(a1 + 1112);
  if (v7)
  {
    v8 = (a1 + 1112);
    v9 = *(a1 + 1120);
    v10 = *(a1 + 1112);
    if (v9 != v7)
    {
      do
      {
        v9 = sub_3A9518(v9 - 1120);
      }

      while (v9 != v7);
      v10 = *v8;
    }

    *(a1 + 1120) = v7;
    operator delete(v10);
    *v8 = 0;
    *(a1 + 1120) = 0;
    *(a1 + 1128) = 0;
  }

  *(a1 + 1112) = *(a2 + 1112);
  *(a1 + 1120) = *(a2 + 1120);
  *(a2 + 1128) = 0;
  *(a2 + 1112) = 0u;
  sub_D09358(a1 + 1136, a2 + 1136);
  v11 = *(a2 + 1968);
  *(a1 + 1952) = *(a2 + 1952);
  *(a1 + 1968) = v11;
  v12 = *(a2 + 2000);
  v13 = *(a2 + 2016);
  v14 = *(a2 + 2032);
  *(a1 + 1984) = *(a2 + 1984);
  *(a1 + 2032) = v14;
  *(a1 + 2016) = v13;
  *(a1 + 2000) = v12;
  v15 = *(a2 + 2064);
  v16 = *(a2 + 2080);
  v17 = *(a2 + 2096);
  *(a1 + 2048) = *(a2 + 2048);
  *(a1 + 2096) = v17;
  *(a1 + 2080) = v16;
  *(a1 + 2064) = v15;
  v18 = *(a2 + 2128);
  v19 = *(a2 + 2144);
  v20 = *(a2 + 2154);
  *(a1 + 2112) = *(a2 + 2112);
  *(a1 + 2154) = v20;
  *(a1 + 2144) = v19;
  *(a1 + 2128) = v18;
  memcpy((a1 + 2176), (a2 + 2176), 0xAF0uLL);
  v21 = *(a1 + 4976);
  if (v21)
  {
    *(a1 + 4984) = v21;
    operator delete(v21);
    *(a1 + 4976) = 0;
    *(a1 + 4984) = 0;
    *(a1 + 4992) = 0;
  }

  *(a1 + 4976) = *(a2 + 4976);
  *(a1 + 4992) = *(a2 + 4992);
  *(a2 + 4992) = 0;
  *(a2 + 4976) = 0u;
  v22 = (a1 + 5000);
  if (*(a1 + 5023) < 0)
  {
    operator delete(*v22);
  }

  v23 = *(a2 + 5000);
  *(a1 + 5016) = *(a2 + 5016);
  *v22 = v23;
  *(a2 + 5023) = 0;
  *(a2 + 5000) = 0;
  sub_6BA20(a1 + 5024, (a2 + 5024));
  *(a1 + 5064) = *(a2 + 5064);
  return a1;
}

void sub_E1B970(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[3];
  v5 = *a1[2];
  v6 = a1[4];
  v7 = *a1[5];
  *v9 = 0u;
  *v10 = 0u;
  v11 = 1065353216;
  memset(__p, 0, sizeof(__p));
  sub_E1BA68(a2, v2, v3, v5, v4, v6, v7, v9, __p);
}

void sub_E1BA44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  if (__p)
  {
    operator delete(__p);
  }

  sub_616CD4(va);
  _Unwind_Resume(a1);
}

void sub_E1BA68(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_D71E14(a1, *a3, a3[1], 0x6FB586FB586FB587 * ((a3[1] - *a3) >> 3));
  sub_E78844((a1 + 3));
}

void sub_E1BC0C(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 1680) = v4;
    operator delete(v4);
  }

  sub_616CD4(v1 + 1632);
  sub_528AB4(v1 + 24);
  sub_44FD90(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_E1BC74(uint64_t a1)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    v5 = *(a1 + 8);
    sub_435834(&v6, (a1 + 24));
    v8 = *(a1 + 48);
    v4 = v8;
    *exception = off_2673D90;
    *(exception + 8) = v5;
    *(exception + 24) = v6;
    *(exception + 5) = v7;
    v6 = 0uLL;
    v7 = 0;
    *(exception + 12) = v4;
  }

  return a1 + 8;
}

uint64_t sub_E1BD74(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_3ECFD8(a1, *a2, *(a2 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 8) - *a2) >> 4));
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  sub_9B8E8C(a1 + 24, *(a2 + 24), *(a2 + 32), 0xE21A291C077975B9 * ((*(a2 + 32) - *(a2 + 24)) >> 3));
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

  return a1;
}

void sub_E1BE50(_Unwind_Exception *a1)
{
  sub_3EECC8(v2);
  sub_3ECF74(v1);
  _Unwind_Resume(a1);
}

void *sub_E1BE80(void *a1, uint64_t *a2, unint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3)
  {
    if (a3 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_E1BF88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_E0A080(va);
  *(v10 + 8) = v11;
  sub_E1BFA8(&a9);
  _Unwind_Resume(a1);
}

void ****sub_E1BFA8(void ****result)
{
  if ((result[1] & 1) == 0)
  {
    if (**result)
    {
      v1 = result;
      sub_E02D74(*result);
      operator delete(**v1);
      return v1;
    }
  }

  return result;
}

void sub_E1BFF8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  ++*(a1 + 80);
  *a5 = 1;
  *(a5 + 8) = 0u;
  *(a5 + 24) = 0u;
  *(a5 + 40) = 0u;
  *(a5 + 56) = 0u;
  *(a5 + 72) = 0u;
  *(a5 + 88) = 0u;
  *(a5 + 104) = 0u;
  *(a5 + 120) = 0u;
  *(a5 + 136) = 0u;
  *(a5 + 152) = 0u;
  *(a5 + 168) = 0u;
  *(a5 + 184) = 0u;
  *(a5 + 200) = 0u;
  *(a5 + 216) = 0u;
  *(a5 + 232) = 0u;
  *(a5 + 248) = 0u;
  *(a5 + 264) = 0u;
  *(a5 + 280) = 0u;
  *(a5 + 296) = 0u;
  *(a5 + 312) = 0u;
  *(a5 + 328) = 0u;
  *(a5 + 344) = 0u;
  *(a5 + 360) = 0u;
  *(a5 + 376) = 0u;
  *(a5 + 392) = 0u;
  *(a5 + 408) = 0u;
  *(a5 + 424) = 0u;
  sub_12C408C(a5 + 8, 0, 0);
  *(a5 + 412) = 0;
  *(a5 + 404) = 0;
  *(a5 + 420) = 0;
  *(a5 + 424) = 0;
  *(a5 + 431) = 0;
  *(a5 + 264) = 0u;
  *(a5 + 280) = 0u;
  *(a5 + 296) = 0u;
  *(a5 + 312) = 0u;
  *(a5 + 328) = 0u;
  *(a5 + 344) = 0u;
  *(a5 + 360) = 0u;
  *(a5 + 376) = 0u;
  *(a5 + 385) = 0u;
  if (*(a1 + 8) == &off_2669FE0 && !*a1)
  {
    sub_7E9A4(v88);
    sub_E1CD24(v83, *a2, *(a2 + 8), *(a2 + 16), **(a2 + 24), *(a2 + 32), *(a2 + 40), *(a2 + 48), *(a2 + 56), *(a2 + 72), *(a2 + 80), 0, *(a2 + 88), *(a2 + 96));
    sub_CD4144(v83, v76);
    sub_D7E7C4(a5, v76);
    if (v76[0].n128_u8[0] == 1)
    {
      sub_D71800(v76, &v76[0].n128_i64[1]);
    }

    else
    {
      v13 = v76[1].n128_u64[1];
      if (v76[1].n128_u64[1])
      {
        v14 = v76[2].n128_u64[0];
        v15 = v76[1].n128_u64[1];
        if (v76[2].n128_u64[0] != v76[1].n128_u64[1])
        {
          do
          {
            if (*(v14 - 1) < 0)
            {
              operator delete(*(v14 - 24));
            }

            v14 -= 32;
          }

          while (v14 != v13);
          v15 = v76[1].n128_u64[1];
        }

        v76[2].n128_u64[0] = v13;
        operator delete(v15);
      }
    }

    v19 = sub_7EAB4(v88);
    v20 = v19;
    v21 = *(a1 + 84);
    v22 = v21 != 0x7FFFFFFF && v21 <= v19;
    if (!v22 || !sub_7E7E4(1u))
    {
LABEL_76:
      v42 = *(a1 + 88);
      if (v42 != 0x7FFFFFFF && v42 <= v20)
      {
        v74.n128_u64[0] = 10;
        v74.n128_u64[1] = &off_2669FE0;
        sub_434934(__dst, &v74);
        v76[0].n128_u8[0] = 0;
        *(v76 + 8) = *__dst;
        *(&v76[1] + 8) = v70;
        v76[2].n128_u64[1] = v71;
        v70 = 0uLL;
        v71 = 0;
        LODWORD(v77) = v72;
        sub_D7E7C4(a5, v76);
        if (v76[0].n128_u8[0] == 1)
        {
          sub_D71800(v76, &v76[0].n128_i64[1]);
        }

        else
        {
          v43 = v76[1].n128_u64[1];
          if (v76[1].n128_u64[1])
          {
            v44 = v76[2].n128_u64[0];
            v45 = v76[1].n128_u64[1];
            if (v76[2].n128_u64[0] != v76[1].n128_u64[1])
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
              v45 = v76[1].n128_u64[1];
            }

            v76[2].n128_u64[0] = v43;
            operator delete(v45);
          }
        }

        v46 = v70.n128_u64[0];
        if (v70.n128_u64[0])
        {
          v47 = v70.n128_u64[1];
          v48 = v70.n128_u64[0];
          if (v70.n128_u64[1] != v70.n128_u64[0])
          {
            do
            {
              if (*(v47 - 1) < 0)
              {
                operator delete(*(v47 - 24));
              }

              v47 -= 32;
            }

            while (v47 != v46);
            v48 = v70.n128_u64[0];
          }

          v70.n128_u64[1] = v46;
          operator delete(v48);
        }
      }

      v49 = *(a1 + 64);
      if (*a5 == 1)
      {
        v50 = sub_D7ED0C(a5);
        sub_D7EE0C(v50 + 328, v76);
      }

      else
      {
        memset(v76, 0, sizeof(v76));
      }

      sub_7CA38(v49, a3, v76, *(a1 + 72));
      v51 = v76[1].n128_u64[1];
      if (v76[1].n128_u64[1])
      {
        v52 = v76[2].n128_u64[0];
        v53 = v76[1].n128_u64[1];
        if (v76[2].n128_u64[0] != v76[1].n128_u64[1])
        {
          do
          {
            v54 = *(v52 - 25);
            v52 -= 6;
            if (v54 < 0)
            {
              operator delete(*v52);
            }
          }

          while (v52 != v51);
          v53 = v76[1].n128_u64[1];
        }

        v76[2].n128_u64[0] = v51;
        operator delete(v53);
      }

      if (v76[1].n128_i8[7] < 0)
      {
        operator delete(v76[0].n128_u64[0]);
        if (*a5 == 1)
        {
          goto LABEL_109;
        }
      }

      else if (*a5 == 1)
      {
LABEL_109:
        sub_D7E910(*a4, a5 + 8);
LABEL_144:
        sub_E1CF5C(v83);
        return;
      }

      sub_DEBB90(*(a1 + 64), (a5 + 8), *(a1 + 48), *(a1 + 72));
      if (!sub_7E7E4(3u))
      {
LABEL_143:
        sub_434B40(a1, (a5 + 8));
        goto LABEL_144;
      }

      sub_19594F8(v76[0].n128_f64);
      sub_7B538(*(a1 + 64), __dst);
      if (v70.n128_i8[7] >= 0)
      {
        v55 = __dst;
      }

      else
      {
        v55 = __dst[0];
      }

      if (v70.n128_i8[7] >= 0)
      {
        v56 = v70.n128_u8[7];
      }

      else
      {
        v56 = __dst[1];
      }

      v57 = sub_4A5C(v76, v55, v56);
      sub_4A5C(v57, " failed in step ", 16);
      v58 = std::ostream::operator<<();
      v59 = sub_4A5C(v58, " (", 2);
      if ((atomic_load_explicit(&qword_2733C88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2733C88))
      {
        sub_89C64(2, "AnalyticsModule", 15, &qword_2733C70);
        __cxa_guard_release(&qword_2733C88);
      }

      if (byte_2733C87 >= 0)
      {
        v60 = byte_2733C87;
      }

      else
      {
        v60 = unk_2733C78;
      }

      if (byte_2733C87 >= 0)
      {
        v61 = &qword_2733C70;
      }

      else
      {
        v61 = qword_2733C70;
      }

      v62 = sub_4A5C(v59, v61, v60);
      v63 = sub_4A5C(v62, ") with error: ", 14);
      sub_D72C3C(v63, a5 + 8);
      if (v70.n128_i8[7] < 0)
      {
        operator delete(__dst[0]);
        v64 = v82;
        if ((v82 & 0x10) == 0)
        {
LABEL_127:
          if ((v64 & 8) == 0)
          {
            v65 = 0;
            v70.n128_u8[7] = 0;
LABEL_138:
            *(__dst + v65) = 0;
            sub_7E854(__dst, 3u);
            if (v70.n128_i8[7] < 0)
            {
              operator delete(__dst[0]);
            }

            if (v80 < 0)
            {
              operator delete(v79);
            }

            std::locale::~locale(&v76[1]);
            std::ostream::~ostream();
            std::ios::~ios();
            goto LABEL_143;
          }

          v67 = v76[1].n128_u64[1];
          v65 = v76[2].n128_u64[1] - v76[1].n128_u64[1];
          if (v76[2].n128_u64[1] - v76[1].n128_u64[1] > 0x7FFFFFFFFFFFFFF7)
          {
LABEL_149:
            sub_3244();
          }

LABEL_133:
          if (v65 >= 0x17)
          {
            operator new();
          }

          v70.n128_u8[7] = v65;
          if (v65)
          {
            memmove(__dst, v67, v65);
          }

          goto LABEL_138;
        }
      }

      else
      {
        v64 = v82;
        if ((v82 & 0x10) == 0)
        {
          goto LABEL_127;
        }
      }

      v66 = v81;
      if (v81 < v78)
      {
        v81 = v78;
        v66 = v78;
      }

      v67 = v77;
      v65 = v66 - v77;
      if (v66 - v77 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_149;
      }

      goto LABEL_133;
    }

    sub_19594F8(v76[0].n128_f64);
    v23 = sub_4A5C(v76, "Found long running (", 20);
    v24 = sub_72140(v23, v20);
    v25 = sub_4A5C(v24, ") ", 2);
    if ((atomic_load_explicit(&qword_2733C88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2733C88))
    {
      sub_89C64(2, "AnalyticsModule", 15, &qword_2733C70);
      __cxa_guard_release(&qword_2733C88);
    }

    if (byte_2733C87 >= 0)
    {
      v26 = byte_2733C87;
    }

    else
    {
      v26 = unk_2733C78;
    }

    if (byte_2733C87 >= 0)
    {
      v27 = &qword_2733C70;
    }

    else
    {
      v27 = qword_2733C70;
    }

    v28 = sub_4A5C(v25, v27, v26);
    v29 = sub_4A5C(v28, " in ", 4);
    sub_7B538(*(a1 + 64), __dst);
    if (v70.n128_i8[7] >= 0)
    {
      v30 = __dst;
    }

    else
    {
      v30 = __dst[0];
    }

    if (v70.n128_i8[7] >= 0)
    {
      v31 = v70.n128_u8[7];
    }

    else
    {
      v31 = __dst[1];
    }

    v32 = sub_4A5C(v29, v30, v31);
    sub_4A5C(v32, " step ", 6);
    v33 = std::ostream::operator<<();
    v34 = sub_4A5C(v33, " (request: ", 11);
    sub_17541D0(v73, *(a1 + 48));
    sub_E9209C(v73, *(a1 + 56), &v74);
    if ((v75 & 0x80u) == 0)
    {
      v35 = &v74;
    }

    else
    {
      v35 = v74.n128_u64[0];
    }

    if ((v75 & 0x80u) == 0)
    {
      v36 = v75;
    }

    else
    {
      v36 = v74.n128_i64[1];
    }

    v37 = sub_4A5C(v34, v35, v36);
    sub_4A5C(v37, ")", 1);
    if (v75 < 0)
    {
      operator delete(v74.n128_u64[0]);
      sub_1754598(v73);
      if ((v70.n128_i8[7] & 0x80000000) == 0)
      {
LABEL_58:
        v38 = v82;
        v68 = a3;
        if ((v82 & 0x10) == 0)
        {
          goto LABEL_59;
        }

        goto LABEL_63;
      }
    }

    else
    {
      sub_1754598(v73);
      if ((v70.n128_i8[7] & 0x80000000) == 0)
      {
        goto LABEL_58;
      }
    }

    operator delete(__dst[0]);
    v38 = v82;
    v68 = a3;
    if ((v82 & 0x10) == 0)
    {
LABEL_59:
      if ((v38 & 8) == 0)
      {
        v39 = 0;
        v70.n128_u8[7] = 0;
LABEL_71:
        *(__dst + v39) = 0;
        sub_7E854(__dst, 1u);
        if (v70.n128_i8[7] < 0)
        {
          operator delete(__dst[0]);
        }

        if (v80 < 0)
        {
          operator delete(v79);
        }

        std::locale::~locale(&v76[1]);
        std::ostream::~ostream();
        std::ios::~ios();
        a3 = v68;
        goto LABEL_76;
      }

      v41 = v76[1].n128_u64[1];
      v39 = v76[2].n128_u64[1] - v76[1].n128_u64[1];
      if (v76[2].n128_u64[1] - v76[1].n128_u64[1] > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_147:
        sub_3244();
      }

LABEL_66:
      if (v39 >= 0x17)
      {
        operator new();
      }

      v70.n128_u8[7] = v39;
      if (v39)
      {
        memmove(__dst, v41, v39);
      }

      goto LABEL_71;
    }

LABEL_63:
    v40 = v81;
    if (v81 < v78)
    {
      v81 = v78;
      v40 = v78;
    }

    v41 = v77;
    v39 = v40 - v77;
    if (v40 - v77 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_147;
    }

    goto LABEL_66;
  }

  sub_434934(v76, a1);
  v83[0] = 0;
  v84 = v76[0];
  __p = v76[1];
  v86 = v76[2].n128_u64[0];
  memset(&v76[1], 0, 24);
  v87 = v76[2].n128_u32[2];
  sub_D7E7C4(a5, v83);
  if (v83[0] == 1)
  {
    sub_D71800(v83, &v84);
  }

  else
  {
    v10 = __p.n128_u64[0];
    if (__p.n128_u64[0])
    {
      v11 = __p.n128_i64[1];
      v12 = __p.n128_u64[0];
      if (__p.n128_u64[1] != __p.n128_u64[0])
      {
        do
        {
          if (*(v11 - 1) < 0)
          {
            operator delete(*(v11 - 24));
          }

          v11 -= 32;
        }

        while (v11 != v10);
        v12 = __p.n128_u64[0];
      }

      __p.n128_u64[1] = v10;
      operator delete(v12);
    }
  }

  v16 = v76[1].n128_u64[0];
  if (v76[1].n128_u64[0])
  {
    v17 = v76[1].n128_u64[1];
    v18 = v76[1].n128_u64[0];
    if (v76[1].n128_u64[1] != v76[1].n128_u64[0])
    {
      do
      {
        if (*(v17 - 1) < 0)
        {
          operator delete(*(v17 - 24));
        }

        v17 -= 32;
      }

      while (v17 != v16);
      v18 = v76[1].n128_u64[0];
    }

    v76[1].n128_u64[1] = v16;
    operator delete(v18);
  }
}

void sub_E1CBF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  __cxa_guard_abort(&qword_2733C88);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&STACK[0x2B0]);
  sub_E1CF5C(&STACK[0x468]);
  sub_CD15B8(v23);
  _Unwind_Resume(a1);
}

uint64_t sub_E1CD24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t *a11, char a12, uint64_t a13, uint64_t a14)
{
  *a1 = a3;
  *(a1 + 8) = a4;
  *(a1 + 16) = a2;
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  *(a1 + 40) = a7;
  *(a1 + 48) = a8;
  *(a1 + 56) = a9;
  *(a1 + 72) = a10;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  v15 = a11[1];
  if (v15 != *a11)
  {
    if (0xEEEEEEEEEEEEEEEFLL * ((v15 - *a11) >> 4) < 0x111111111111112)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 104) = a12;
  *(a1 + 105) = sub_44F320(a4);
  sub_4ED880(a13, a1 + 112);
  *(a1 + 144) = a13;
  *(a1 + 152) = sub_4EF390(a13);
  *(a1 + 160) = v16;
  sub_E80194(*(a1 + 16), a1 + 168);
  v17 = *a14;
  v18 = *(a14 + 8);
  if (*a14 != v18)
  {
    while (v17[44] != 2)
    {
      v17 += 110;
      if (v17 == v18)
      {
        goto LABEL_9;
      }
    }
  }

  if (v17 == v18)
  {
LABEL_9:
    if ((atomic_load_explicit(&qword_27339A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27339A0))
    {
      sub_78922C(&unk_27337E8);
      __cxa_guard_release(&qword_27339A0);
    }

    v17 = &unk_27337E8;
  }

  sub_4E9DA4(a1 + 344, v17);
  return a1;
}

void sub_E1CEDC(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_27339A0);
  sub_44D36C((v1 + 168));
  sub_4F3AA4(v1 + 112);
  sub_49AE64(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_E1CF5C(uint64_t a1)
{
  sub_44FDEC(a1 + 344);
  v2 = *(a1 + 320);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(a1 + 240);
  if (v3)
  {
    *(a1 + 248) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 120);
  if (v4)
  {
    v5 = *(a1 + 128);
    v6 = *(a1 + 120);
    if (v5 != v4)
    {
      do
      {
        v5 -= 72;
        sub_3E4690(v5);
      }

      while (v5 != v4);
      v6 = *(a1 + 120);
    }

    *(a1 + 128) = v4;
    operator delete(v6);
  }

  v7 = *(a1 + 80);
  if (v7)
  {
    for (i = *(a1 + 88); i != v7; sub_E02B10(a1 + 80, i))
    {
      i -= 30;
    }

    *(a1 + 88) = v7;
    operator delete(*(a1 + 80));
  }

  return a1;
}

void sub_E1D020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  v11 = v8;
  v13 = v12;
  ++*(v8 + 80);
  *v12 = 1;
  bzero(v12 + 8, 0x4A8uLL);
  sub_1757EA4(v13 + 8, 0, 0);
  sub_1757EA4(v13 + 584, 0, 0);
  *(v13 + 1192) = 0;
  *(v13 + 1160) = 0u;
  *(v13 + 1176) = 0u;
  if (*(v11 + 8) == &off_2669FE0 && *v11 == 0)
  {
    sub_7E9A4(v31);
    sub_E1DCE4(v10, &v25);
    sub_D36E10(&v25, &v21);
  }

  sub_434934(&v21, v11);
  LOBYTE(v25) = 0;
  v26 = v21;
  __p = v22;
  v28 = v23;
  v22 = 0uLL;
  v23 = 0;
  v29 = v24;
  sub_D8144C(v13, &v25);
  if (v25 == 1)
  {
    sub_1758FB8(v30);
    sub_1758FB8(&v26);
  }

  else
  {
    v15 = __p;
    if (__p)
    {
      v16 = *(&__p + 1);
      v17 = __p;
      if (*(&__p + 1) != __p)
      {
        do
        {
          if (*(v16 - 1) < 0)
          {
            operator delete(*(v16 - 24));
          }

          v16 -= 32;
        }

        while (v16 != v15);
        v17 = __p;
      }

      *(&__p + 1) = v15;
      operator delete(v17);
    }
  }

  v18 = v22;
  if (v22)
  {
    v19 = *(&v22 + 1);
    v20 = v22;
    if (*(&v22 + 1) != v22)
    {
      do
      {
        if (*(v19 - 1) < 0)
        {
          operator delete(*(v19 - 24));
        }

        v19 -= 32;
      }

      while (v19 != v18);
      v20 = v22;
    }

    *(&v22 + 1) = v18;
    operator delete(v20);
  }
}

void sub_E1DBA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_guard_abort(&qword_2733CA8);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&STACK[0x270]);
  sub_E1EB50(&STACK[0x728]);
  sub_D35A8C(v15);
  _Unwind_Resume(a1);
}

void sub_E1DCE4(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v8 = a1[4];
  v29 = a1[5];
  sub_559C9C(v25);
  bzero(&v26, 0x348uLL);
  sub_5C0A00(v28);
  v9 = a1[6];
  v10 = a1[7];
  v23 = 0;
  v24 = v10;
  v11 = a1[8];
  __p = 0;
  v22 = 0;
  sub_E1DFC8(a2, v4, v5, v6, v7, v8, &v30, &v29, v25, v9, &v24, v11, &__p);
  v12 = __p;
  if (__p)
  {
    v13 = v22;
    v14 = __p;
    if (v22 == __p)
    {
LABEL_13:
      v22 = v12;
      operator delete(v14);
      goto LABEL_14;
    }

    while (1)
    {
      if (*(v13 - 1) < 0)
      {
        operator delete(*(v13 - 3));
        v15 = *(v13 - 6);
        if (v15)
        {
          do
          {
LABEL_7:
            v16 = *v15;
            operator delete(v15);
            v15 = v16;
          }

          while (v16);
        }
      }

      else
      {
        v15 = *(v13 - 6);
        if (v15)
        {
          goto LABEL_7;
        }
      }

      v17 = *(v13 - 8);
      *(v13 - 8) = 0;
      if (v17)
      {
        operator delete(v17);
      }

      v13 -= 9;
      if (v13 == v12)
      {
        v14 = __p;
        goto LABEL_13;
      }
    }
  }

LABEL_14:
  sub_5C0F34(v28);
  v18 = v26;
  if (v26)
  {
    v19 = v27;
    v20 = v26;
    if (v27 != v26)
    {
      do
      {
        v19 = sub_3A9518(v19 - 1120);
      }

      while (v19 != v18);
      v20 = v26;
    }

    v27 = v18;
    operator delete(v20);
  }

  sub_559E70(v25);
  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }
}

void sub_E1DE88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v14 = va_arg(va1, void **);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  sub_D71160(va);
  sub_D0AA6C(va1);
  v13 = *(v11 - 104);
  if (v13)
  {
    *(v11 - 96) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(a1);
}

void sub_E1DEB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_5706DC((v17 + 1088));
  sub_559E70(va);
  _Unwind_Resume(a1);
}

void sub_E1DED4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  if (v4 != a2)
  {
    v5 = *(v4 + 8);
    if ((v5 & 2) != 0)
    {
      v5 = 0;
    }

    else if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v6 = *(a2 + 8);
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

  v7 = *a1;
  if (*a1 != a2)
  {
    v8 = *(v7 + 584);
    if ((v8 & 2) != 0)
    {
      v8 = 0;
    }

    else if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v9 = *(a2 + 584);
    if ((v9 & 2) != 0)
    {
      v9 = 0;
    }

    else if (v9)
    {
      v9 = *(v9 & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (v8 == v9)
    {
      sub_175C55C(v7 + 576, a2 + 576);
    }

    else
    {
      sub_175C1D0(v7 + 576, a2 + 576);
    }
  }
}

uint64_t sub_E1DFC8(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, _OWORD *a6, void *a7, uint64_t *a8, uint64_t a9, __int128 **a10, uint64_t *a11, uint64_t a12, uint64_t a13)
{
  v81 = 0;
  v82 = 0;
  v83 = 0;
  v18 = a7[1];
  if (v18 != *a7)
  {
    if (((v18 - *a7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v80 = *a8;
  v19 = sub_3B2E6C(a5);
  sub_2C1B08(v62, v19);
  v68 = 1;
  sub_E85008(a2, v62, &v69);
  v20 = sub_3B6890(a5);
  v48 = *v20;
  v21 = *(v20 + 8);
  sub_5F4380(v59, a9);
  memset(v60, 0, sizeof(v60));
  sub_5713F4(v60, *(a9 + 1088), *(a9 + 1096), 0xAF8AF8AF8AF8AF8BLL * ((*(a9 + 1096) - *(a9 + 1088)) >> 5));
  sub_5DAD70(v61, a9 + 1112);
  v22 = sub_E7A5E0(a2);
  v23 = sub_E1E518(a2, a4, a3, a5);
  v24 = sub_E7FD98(a2);
  v25 = a6;
  v57 = sub_E80738(a2);
  v58 = v26;
  sub_99A14(&v55, a10);
  v54 = *a11;
  v27 = sub_E7AAC4(a2);
  sub_5ADDC(v52, a12);
  *__p = *a13;
  v51 = *(a13 + 16);
  *(a13 + 8) = 0;
  *(a13 + 16) = 0;
  *a13 = 0;
  v28 = sub_E89630(a2);
  sub_E1E688(a1, a3, a4, a5, v25, &v81, &v80, &v69, v48, v21, v59, v22, v23, v24 & 0xFFFFFFFFFFLL, &v57, &v55, &v54, v27, v52, __p, v28);
  v29 = __p[0];
  if (__p[0])
  {
    v30 = __p[1];
    v31 = __p[0];
    if (__p[1] == __p[0])
    {
LABEL_16:
      __p[1] = v29;
      operator delete(v31);
      goto LABEL_17;
    }

    while (1)
    {
      if (*(v30 - 1) < 0)
      {
        operator delete(*(v30 - 3));
        v32 = *(v30 - 6);
        if (v32)
        {
          do
          {
LABEL_10:
            v33 = *v32;
            operator delete(v32);
            v32 = v33;
          }

          while (v33);
        }
      }

      else
      {
        v32 = *(v30 - 6);
        if (v32)
        {
          goto LABEL_10;
        }
      }

      v34 = *(v30 - 8);
      *(v30 - 8) = 0;
      if (v34)
      {
        operator delete(v34);
      }

      v30 -= 9;
      if (v30 == v29)
      {
        v31 = __p[0];
        goto LABEL_16;
      }
    }
  }

LABEL_17:
  v35 = v53;
  if (v53)
  {
    do
    {
      v36 = *v35;
      v37 = *(v35 + 12);
      if (v37 != -1)
      {
        (off_26740A8[v37])(&v80, v35 + 5);
      }

      *(v35 + 12) = -1;
      if (*(v35 + 39) < 0)
      {
        operator delete(v35[2]);
      }

      operator delete(v35);
      v35 = v36;
    }

    while (v36);
  }

  v38 = v52[0];
  v52[0] = 0;
  if (v38)
  {
    operator delete(v38);
  }

  v39 = v55;
  if (v55)
  {
    v40 = v56;
    v41 = v55;
    if (v56 != v55)
    {
      do
      {
        v42 = *(v40 - 1);
        v40 -= 3;
        if (v42 < 0)
        {
          operator delete(*v40);
        }
      }

      while (v40 != v39);
      v41 = v55;
    }

    v56 = v39;
    operator delete(v41);
  }

  sub_5C0F34(v61);
  v43 = v60[0];
  if (v60[0])
  {
    v44 = v60[1];
    v45 = v60[0];
    if (v60[1] != v60[0])
    {
      do
      {
        v44 = sub_3A9518(v44 - 1120);
      }

      while (v44 != v43);
      v45 = v60[0];
    }

    v60[1] = v43;
    operator delete(v45);
  }

  sub_559E70(v59);
  if (v78)
  {
    v79 = v78;
    operator delete(v78);
  }

  if (v77 < 0)
  {
    operator delete(v76);
  }

  if (v74)
  {
    v75 = v74;
    operator delete(v74);
  }

  if (v72)
  {
    v73 = v72;
    operator delete(v72);
  }

  if (v70)
  {
    v71 = v70;
    operator delete(v70);
  }

  if (v68 == 1)
  {
    if (v67 < 0)
    {
      operator delete(v66);
      if ((v65 & 0x80000000) == 0)
      {
LABEL_52:
        if ((v63 & 0x80000000) == 0)
        {
          goto LABEL_53;
        }

LABEL_58:
        operator delete(v62[0]);
        v46 = v81;
        if (!v81)
        {
          return a1;
        }

        goto LABEL_54;
      }
    }

    else if ((v65 & 0x80000000) == 0)
    {
      goto LABEL_52;
    }

    operator delete(v64);
    if (v63 < 0)
    {
      goto LABEL_58;
    }
  }

LABEL_53:
  v46 = v81;
  if (v81)
  {
LABEL_54:
    v82 = v46;
    operator delete(v46);
  }

  return a1;
}

void sub_E1E46C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void **a38)
{
  sub_5706DC((v38 + 1088));
  sub_559E70(&a38);
  sub_D71D0C(&STACK[0x8C0]);
  sub_D71D80(&STACK[0x870]);
  v41 = *(v39 - 112);
  if (v41)
  {
    *(v39 - 104) = v41;
    operator delete(v41);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_E1E518(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = sub_E7A5E0(a1);
  result = sub_EA7118(v7);
  if (result)
  {
    if (*a2 == a2[1])
    {
      return 0;
    }

    else if (*a3 == a3[1])
    {
      return 0;
    }

    else
    {
      v20 = 15;
      v18 = 0;
      strcpy(v19, "RerouteCategory");
      __p = 0;
      v17 = 0;
      v9 = sub_3AEC94(a4, v19, &__p);
      sub_4EB344(&v21, v9);
      result = sub_6EECC();
      v10 = __p;
      if (__p)
      {
        v11 = result;
        v12 = v17;
        v13 = __p;
        if (v17 != __p)
        {
          do
          {
            v14 = *(v12 - 1);
            v12 -= 3;
            if (v14 < 0)
            {
              operator delete(*v12);
            }
          }

          while (v12 != v10);
          v13 = __p;
        }

        v17 = v10;
        operator delete(v13);
        result = v11;
      }

      if (v20 < 0)
      {
        v15 = result;
        operator delete(v19[0]);
        return v15;
      }
    }
  }

  return result;
}

void sub_E1E664(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_E1E688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6, void *a7, int *a8, uint64_t a9, int a10, uint64_t a11, char a12, char a13, uint64_t a14, uint64_t *a15, uint64_t a16, void *a17, char a18, uint64_t *a19, uint64_t a20, uint64_t a21)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 8) = *a6;
  *(a1 + 24) = *(a6 + 16);
  *(a6 + 16) = 0;
  *a6 = 0u;
  *(a1 + 32) = 0u;
  v27 = a1 + 32;
  *(a1 + 48) = 0;
  *(a1 + 32) = *a11;
  *(a1 + 48) = *(a11 + 16);
  *(a11 + 16) = 0;
  *a11 = 0u;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 56) = *(a11 + 24);
  *(a1 + 72) = *(a11 + 40);
  *(a11 + 40) = 0;
  *(a11 + 24) = 0u;
  sub_55A4D0(a1 + 80, a11 + 48);
  sub_55A4D0(v27 + 544, a11 + 544);
  *(v27 + 1056) = 0;
  *(v27 + 1040) = 0u;
  *(v27 + 1040) = *(a11 + 1040);
  *(v27 + 1056) = *(a11 + 1056);
  *(a11 + 1056) = 0;
  *(a11 + 1040) = 0u;
  *(v27 + 1080) = 0;
  *(v27 + 1064) = 0u;
  *(v27 + 1064) = *(a11 + 1064);
  *(v27 + 1072) = *(a11 + 1072);
  *(a11 + 1080) = 0;
  *(a11 + 1064) = 0u;
  *(v27 + 1104) = 0;
  *(v27 + 1088) = 0u;
  *(v27 + 1088) = *(a11 + 1088);
  *(v27 + 1104) = *(a11 + 1104);
  *(a11 + 1104) = 0;
  *(a11 + 1088) = 0u;
  sub_5DB550(v27 + 1112, a11 + 1112);
  v28 = *a8;
  *(v27 + 1931) = *(a8 + 3);
  *(v27 + 1928) = v28;
  *(v27 + 1936) = 0;
  *(v27 + 1952) = 0;
  *(v27 + 1944) = 0;
  *(v27 + 1936) = *(a8 + 2);
  *(v27 + 1952) = *(a8 + 3);
  *(a8 + 1) = 0;
  *(a8 + 2) = 0;
  *(a8 + 3) = 0;
  v29 = *(a8 + 3);
  *(v27 + 1960) = *(a8 + 2);
  *(v27 + 1976) = v29;
  *(v27 + 1992) = a8[16];
  *(v27 + 2016) = 0;
  *(v27 + 2008) = 0;
  *(v27 + 2000) = 0;
  *(v27 + 2000) = *(a8 + 18);
  *(v27 + 2016) = *(a8 + 11);
  *(a8 + 10) = 0;
  *(a8 + 11) = 0;
  *(a8 + 9) = 0;
  *(v27 + 2024) = a8[24];
  *(v27 + 2032) = 0;
  *(v27 + 2048) = 0;
  *(v27 + 2040) = 0;
  *(v27 + 2032) = *(a8 + 26);
  *(v27 + 2048) = *(a8 + 15);
  *(a8 + 13) = 0;
  *(a8 + 14) = 0;
  *(a8 + 15) = 0;
  v30 = *(a8 + 8);
  *(v27 + 2072) = *(a8 + 18);
  *(v27 + 2056) = v30;
  *(a8 + 17) = 0;
  *(a8 + 18) = 0;
  *(a8 + 16) = 0;
  *(v27 + 2080) = *(a8 + 152);
  v31 = *(a8 + 20);
  *(v27 + 2096) = *(a8 + 168);
  *(v27 + 2088) = v31;
  *(v27 + 2104) = 0;
  *(v27 + 2120) = 0;
  *(v27 + 2112) = 0;
  *(v27 + 2104) = *(a8 + 11);
  *(v27 + 2120) = *(a8 + 24);
  *(a8 + 22) = 0;
  *(a8 + 23) = 0;
  *(a8 + 24) = 0;
  *(v27 + 2128) = a4;
  v32 = *a3;
  v33 = *(a3 + 8);
  if (*a3 != v33)
  {
    while (v32[44] != 1)
    {
      v32 += 110;
      if (v32 == v33)
      {
        goto LABEL_6;
      }
    }
  }

  if (v32 == v33)
  {
LABEL_6:
    if ((atomic_load_explicit(&qword_27339A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27339A0))
    {
      sub_78922C(&unk_27337E8);
      __cxa_guard_release(&qword_27339A0);
    }

    v32 = &unk_27337E8;
  }

  sub_4E9DA4(v27 + 2136, v32);
  v34 = *a3;
  v35 = *(a3 + 8);
  if (*a3 != v35)
  {
    while (v34[44] != 2)
    {
      v34 += 110;
      if (v34 == v35)
      {
        goto LABEL_13;
      }
    }
  }

  if (v34 == v35)
  {
LABEL_13:
    if ((atomic_load_explicit(&qword_27339A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27339A0))
    {
      sub_78922C(&unk_27337E8);
      __cxa_guard_release(&qword_27339A0);
    }

    v34 = &unk_27337E8;
  }

  sub_4E9DA4(a1 + 2608, v34);
  *(a1 + 3048) = *a7;
  *(a1 + 3056) = a3;
  *(a1 + 3064) = a9;
  *(a1 + 3072) = a10;
  *(a1 + 3076) = a12;
  *(a1 + 3077) = a13;
  *(a1 + 3080) = a14;
  v36 = *a15;
  *(a1 + 3096) = *(a15 + 2);
  *(a1 + 3088) = v36;
  *(a1 + 3104) = 0;
  *(a1 + 3120) = 0;
  *(a1 + 3112) = 0;
  *(a1 + 3104) = *a16;
  *(a1 + 3120) = *(a16 + 16);
  *a16 = 0;
  *(a16 + 8) = 0;
  *(a16 + 16) = 0;
  *(a1 + 3128) = *a17;
  *(a1 + 3136) = *a5;
  *(a1 + 3152) = a18;
  v37 = *a19;
  *(a1 + 3168) = a19[1];
  *a19 = 0;
  *(a1 + 3160) = v37;
  a19[1] = 0;
  v38 = a19[3];
  v39 = *(a19 + 8);
  v40 = a19[2];
  *(a1 + 3176) = v40;
  *(a1 + 3184) = v38;
  *(a1 + 3192) = v39;
  if (v38)
  {
    v41 = *(v40 + 8);
    v42 = *(a1 + 3168);
    if ((v42 & (v42 - 1)) != 0)
    {
      if (v41 >= v42)
      {
        v41 %= v42;
      }
    }

    else
    {
      v41 &= v42 - 1;
    }

    *(v37 + 8 * v41) = a1 + 3176;
    a19[2] = 0;
    a19[3] = 0;
  }

  *(a1 + 3216) = 0;
  *(a1 + 3200) = 0u;
  *(a1 + 3200) = *a20;
  *(a1 + 3216) = *(a20 + 16);
  *a20 = 0;
  *(a20 + 8) = 0;
  *(a20 + 16) = 0;
  *(a1 + 3224) = a21;
  return a1;
}

void sub_E1EAEC(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_27339A0);
  sub_44FDEC(v2 + 2136);
  sub_D71D0C(v3);
  sub_D0AA6C(v2);
  v6 = *v4;
  if (*v4)
  {
    *(v1 + 16) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_E1EB50(uint64_t a1)
{
  v2 = *(a1 + 3200);
  if (v2)
  {
    v3 = *(a1 + 3208);
    v4 = *(a1 + 3200);
    if (v3 == v2)
    {
LABEL_13:
      *(a1 + 3208) = v2;
      operator delete(v4);
      goto LABEL_14;
    }

    while (1)
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 24));
        v5 = *(v3 - 48);
        if (v5)
        {
          do
          {
LABEL_7:
            v6 = *v5;
            operator delete(v5);
            v5 = v6;
          }

          while (v6);
        }
      }

      else
      {
        v5 = *(v3 - 48);
        if (v5)
        {
          goto LABEL_7;
        }
      }

      v7 = *(v3 - 64);
      *(v3 - 64) = 0;
      if (v7)
      {
        operator delete(v7);
      }

      v3 -= 72;
      if (v3 == v2)
      {
        v4 = *(a1 + 3200);
        goto LABEL_13;
      }
    }
  }

LABEL_14:
  v8 = *(a1 + 3176);
  if (v8)
  {
    do
    {
      v9 = *v8;
      v10 = *(v8 + 12);
      if (v10 != -1)
      {
        (off_26740A8[v10])(&v25, v8 + 5);
      }

      *(v8 + 12) = -1;
      if (*(v8 + 39) < 0)
      {
        operator delete(v8[2]);
      }

      operator delete(v8);
      v8 = v9;
    }

    while (v9);
  }

  v11 = *(a1 + 3160);
  *(a1 + 3160) = 0;
  if (v11)
  {
    operator delete(v11);
  }

  v12 = *(a1 + 3104);
  if (v12)
  {
    v13 = *(a1 + 3112);
    v14 = *(a1 + 3104);
    if (v13 != v12)
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
      v14 = *(a1 + 3104);
    }

    *(a1 + 3112) = v12;
    operator delete(v14);
  }

  sub_44FDEC(a1 + 2608);
  sub_44FDEC(a1 + 2168);
  v16 = *(a1 + 2136);
  if (v16)
  {
    *(a1 + 2144) = v16;
    operator delete(v16);
  }

  if (*(a1 + 2111) < 0)
  {
    operator delete(*(a1 + 2088));
  }

  v17 = *(a1 + 2064);
  if (v17)
  {
    *(a1 + 2072) = v17;
    operator delete(v17);
  }

  v18 = *(a1 + 2032);
  if (v18)
  {
    *(a1 + 2040) = v18;
    operator delete(v18);
  }

  v19 = *(a1 + 1968);
  if (v19)
  {
    *(a1 + 1976) = v19;
    operator delete(v19);
  }

  sub_5C0F34(a1 + 1144);
  v20 = *(a1 + 1120);
  if (v20)
  {
    v21 = *(a1 + 1128);
    v22 = *(a1 + 1120);
    if (v21 != v20)
    {
      do
      {
        v21 = sub_3A9518(v21 - 1120);
      }

      while (v21 != v20);
      v22 = *(a1 + 1120);
    }

    *(a1 + 1128) = v20;
    operator delete(v22);
  }

  sub_559E70((a1 + 32));
  v23 = *(a1 + 8);
  if (v23)
  {
    *(a1 + 16) = v23;
    operator delete(v23);
  }

  return a1;
}

void sub_E1ED7C()
{
  byte_27B911F = 3;
  LODWORD(qword_27B9108) = 5136193;
  byte_27B9137 = 3;
  LODWORD(qword_27B9120) = 5136194;
  byte_27B914F = 3;
  LODWORD(qword_27B9138) = 5136195;
  byte_27B9167 = 15;
  strcpy(&qword_27B9150, "vehicle_mass_kg");
  byte_27B917F = 21;
  strcpy(&xmmword_27B9168, "vehicle_cargo_mass_kg");
  byte_27B9197 = 19;
  strcpy(&qword_27B9180, "vehicle_aux_power_w");
  byte_27B91AF = 15;
  strcpy(&qword_27B9198, "dcdc_efficiency");
  strcpy(&qword_27B91B0, "drive_train_efficiency");
  HIBYTE(word_27B91C6) = 22;
  operator new();
}

void sub_E1F184(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_objecta, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B90C8)
  {
    qword_27B90D0 = qword_27B90C8;
    operator delete(qword_27B90C8);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_E1F278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  v12 = v11;
  v13 = v8;
  v14 = *sub_3B8500(v11);
  __dst = 0uLL;
  *&v33 = 0;
  v43 = 1851878480;
  v44 = 4;
  sub_D89468(&v45, &__dst);
  v15 = __dst;
  if (__dst)
  {
    v16 = *(&__dst + 1);
    v17 = __dst;
    if (*(&__dst + 1) != __dst)
    {
      do
      {
        v18 = *(v16 - 25);
        v16 -= 6;
        if (v18 < 0)
        {
          operator delete(*v16);
        }
      }

      while (v16 != v15);
      v17 = __dst;
    }

    *(&__dst + 1) = v15;
    operator delete(v17);
  }

  BYTE7(v33) = 12;
  strcpy(&__dst, "Plan.Started");
  sub_7BDA0(13, &__dst, v14);
  if (SBYTE7(v33) < 0)
  {
    operator delete(__dst);
  }

  sub_7E9A4(v42);
  v41[1] = v13;
  v41[2] = v42;
  v41[3] = v10;
  v41[4] = v12;
  *&__dst = v13;
  sub_D3CA48(&__dst, v39);
  if (v39[0])
  {
    v33 = 0u;
    v34 = 0u;
    __dst = 0u;
    sub_195A048(&__dst, "RouteHandleParserModule", 0x17uLL);
    if (v40 == 1)
    {
      LOBYTE(__p) = 1;
      v19 = v34;
      if (v34 >= *(&v34 + 1))
      {
        v20 = sub_D0ACE4(&v33 + 1, "Runtime", &__p, v41);
      }

      else
      {
        sub_D0AE98(v34, "Runtime", &__p, v41);
        v20 = v19 + 48;
      }

      *&v34 = v20;
    }

    sub_7C9C0(13, &__dst, v14);
    v21 = *(&v33 + 1);
    if (*(&v33 + 1))
    {
      v22 = v34;
      v23 = *(&v33 + 1);
      if (v34 != *(&v33 + 1))
      {
        do
        {
          v24 = *(v22 - 25);
          v22 -= 6;
          if (v24 < 0)
          {
            operator delete(*v22);
          }
        }

        while (v22 != v21);
        v23 = *(&v33 + 1);
      }

      *&v34 = v21;
      operator delete(v23);
    }

    if (SBYTE7(v33) < 0)
    {
      operator delete(__dst);
    }

    v25 = sub_3B6890(v12);
    v26 = *v25;
    v38 = *(v25 + 8);
    v37[8] = v26;
    *&__dst = v13;
    DWORD2(__dst) = 1;
    *&v33 = v12;
    BYTE8(v33) = sub_E88F70(&__dst);
    *&v34 = 0;
    sub_D11BD4(&__dst, v35);
    if (v35[0])
    {
      sub_D73D78(v37, &__dst);
      sub_7C9C0(13, &__dst, v14);
      v27 = *(&v33 + 1);
      if (*(&v33 + 1))
      {
        v28 = v34;
        v29 = *(&v33 + 1);
        if (v34 != *(&v33 + 1))
        {
          do
          {
            v30 = *(v28 - 25);
            v28 -= 6;
            if (v30 < 0)
            {
              operator delete(*v28);
            }
          }

          while (v28 != v27);
          v29 = *(&v33 + 1);
        }

        *&v34 = v27;
        operator delete(v29);
      }

      if (SBYTE7(v33) < 0)
      {
        operator delete(__dst);
      }

      sub_D77D70(&__dst, v13, &v36, v12);
    }

    operator new();
  }

  operator new();
}

void sub_E2009C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(__p, a13);
  va_start(va, a13);
  v16 = va_arg(__p, void);
  v18 = va_arg(__p, void);
  v19 = va_arg(__p, void);
  v20 = va_arg(__p, void);
  v21 = va_arg(__p, void);
  v22 = va_arg(__p, void);
  v23 = va_arg(__p, void);
  v24 = va_arg(__p, void);
  v25 = va_arg(__p, void);
  sub_1758FB8((v13 + 576));
  sub_1758FB8(&STACK[0x6A0]);
  sub_E21954(__p);
  sub_D41964(va);
  sub_9FCEE0(&STACK[0x10B0]);
  sub_DE462C(&STACK[0x1368]);
  sub_E25E10(v14 - 160);
  sub_D130AC(&STACK[0x1878]);
  sub_E25EC8(&STACK[0x18E8]);
  sub_9DA0(v14 - 208);
  _Unwind_Resume(a1);
}

void sub_E20360(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x6B7]) < 0)
  {
    operator delete(*v1);
    sub_9DA0(v2 - 208);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0xE20328);
}

void sub_E20384(_Unwind_Exception *a1)
{
  if (*(v1 + 1583) < 0)
  {
    operator delete(*(v1 + 1560));
  }

  sub_9E38(&STACK[0x6A0]);
  _Unwind_Resume(a1);
}

void sub_E203A8(uint64_t *a1, uint64_t **a2, __n128 *a3)
{
  if (!sub_7E7E4(3u))
  {
    goto LABEL_24;
  }

  sub_19594F8(&v22);
  v6 = sub_4A5C(&v22, "[transit directions] ", 21);
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

  sub_4A5C(v6, v8, v9);
  if ((v32 & 0x10) != 0)
  {
    v11 = v31;
    if (v31 < v28)
    {
      v31 = v28;
      v11 = v28;
    }

    v12 = v27;
    v10 = v11 - v27;
    if (v11 - v27 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if ((v32 & 8) == 0)
    {
      v10 = 0;
      v21 = 0;
LABEL_19:
      *(&__dst + v10) = 0;
      sub_7E854(&__dst, 3u);
      if (v21 < 0)
      {
        operator delete(__dst);
      }

      if (v30 < 0)
      {
        operator delete(__p);
      }

      std::locale::~locale(&v24);
      std::ostream::~ostream();
      std::ios::~ios();
LABEL_24:
      v13 = *a1;
      v14 = sub_7EA0C(a1[1]);
      *&v33 = v13;
      *(&v33 + 1) = v14;
      sub_434934(&v18, a3);
      v15 = a1[3];
      v16 = *a1;
      memset(v17, 0, sizeof(v17));
      sub_D7189C(v19, 1, &v18, v15, v16, &v33, v17);
      sub_D34518(v19, &__dst);
    }

    v12 = v25;
    v10 = v26 - v25;
    if ((v26 - v25) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_26:
      sub_3244();
    }
  }

  if (v10 >= 0x17)
  {
    operator new();
  }

  v21 = v10;
  if (v10)
  {
    memmove(&__dst, v12, v10);
  }

  goto LABEL_19;
}

void sub_E207B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *__p)
{
  if (a65 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t *sub_E2085C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v2 = *result;
  v3 = result[1];
  if (*result != v3)
  {
    v5 = 0;
    do
    {
      if (v5 >= *(a2 + 16))
      {
        result = sub_4EA43C(a2, v2);
        v5 = result;
      }

      else
      {
        result = sub_4E9DA4(v5, v2);
        v5 += 55;
      }

      *(a2 + 8) = v5;
      v2 += 440;
    }

    while (v2 != v3);
  }

  return result;
}

void sub_E208F8(_Unwind_Exception *a1)
{
  *(v1 + 8) = v2;
  sub_44FD90(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_E20910(uint64_t a1)
{
  if (*(a1 + 2568) == 1)
  {
    v2 = *(a1 + 2536);
    if (v2)
    {
      *(a1 + 2544) = v2;
      operator delete(v2);
    }

    if (*(a1 + 2535) < 0)
    {
      operator delete(*(a1 + 2512));
    }
  }

  v3 = *(a1 + 2480);
  if (v3)
  {
    *(a1 + 2488) = v3;
    operator delete(v3);
  }

  sub_528AB4(a1 + 880);
  sub_44FDEC(a1 + 440);

  return sub_44FDEC(a1);
}

uint64_t sub_E20990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0u;
  *a2 = *"TransitGuidanceModule";
  *(a2 + 16) = 0u;
  *(a2 + 23) = 21;
  *(a2 + 13) = *"ceModule";
  v31 = 1;
  v30 = round(*a1);
  v4 = sub_D8B2BC((a2 + 24), "Runtime", &v31, &v30);
  v5 = v4;
  v6 = *(a2 + 40);
  v7 = *(a1 + 8);
  *(a2 + 32) = v4;
  v31 = 1;
  v30 = round(v7);
  if (v4 >= v6)
  {
    v8 = sub_E22580((a2 + 24), "Runtime.RouteBuilder", &v31, &v30);
  }

  else
  {
    sub_E22734(v4, "Runtime.RouteBuilder", &v31, &v30);
    v8 = v5 + 48;
  }

  *(a2 + 32) = v8;
  v31 = 1;
  v30 = round(*(a1 + 16));
  if (v8 >= *(a2 + 40))
  {
    v9 = sub_E2288C((a2 + 24), "Runtime.RouteBuilder.FeatureDataBuilder", &v31, &v30);
  }

  else
  {
    sub_E22A40(v8, "Runtime.RouteBuilder.FeatureDataBuilder", &v31, &v30);
    v9 = v8 + 48;
  }

  *(a2 + 32) = v9;
  v31 = 1;
  v30 = round(*(a1 + 24));
  if (v9 >= *(a2 + 40))
  {
    v10 = sub_E22B98((a2 + 24), "Runtime.RouteBuilder.WalkingRouteBuilder", &v31, &v30);
  }

  else
  {
    sub_E22D4C(v9, "Runtime.RouteBuilder.WalkingRouteBuilder", &v31, &v30);
    v10 = v9 + 48;
  }

  *(a2 + 32) = v10;
  v31 = 1;
  v30 = round(*(a1 + 104));
  if (v10 >= *(a2 + 40))
  {
    v11 = sub_E22EA4((a2 + 24), "Runtime.RouteBuilder.IncidentsResolver", &v31, &v30);
  }

  else
  {
    sub_E23058(v10, "Runtime.RouteBuilder.IncidentsResolver", &v31, &v30);
    v11 = v10 + 48;
  }

  *(a2 + 32) = v11;
  v31 = 1;
  v30 = round(*(a1 + 64));
  if (v11 >= *(a2 + 40))
  {
    v12 = sub_E231B0((a2 + 24), "Runtime.TimeDisplayTypeAnnotation", &v31, &v30);
  }

  else
  {
    sub_E23364(v11, "Runtime.TimeDisplayTypeAnnotation", &v31, &v30);
    v12 = v11 + 48;
  }

  *(a2 + 32) = v12;
  v31 = 1;
  v30 = round(*(a1 + 72));
  if (v12 >= *(a2 + 40))
  {
    v13 = sub_E234BC((a2 + 24), "Runtime.BoardingInfoAnnotation", &v31, &v30);
  }

  else
  {
    sub_E23670(v12, "Runtime.BoardingInfoAnnotation", &v31, &v30);
    v13 = v12 + 48;
  }

  *(a2 + 32) = v13;
  v31 = 1;
  v30 = round(*(a1 + 80));
  if (v13 >= *(a2 + 40))
  {
    v14 = sub_E237C8((a2 + 24), "Runtime.StepBadgeAnnotation", &v31, &v30);
  }

  else
  {
    sub_E2397C(v13, "Runtime.StepBadgeAnnotation", &v31, &v30);
    v14 = v13 + 48;
  }

  *(a2 + 32) = v14;
  v31 = 1;
  v30 = round(*(a1 + 88));
  if (v14 >= *(a2 + 40))
  {
    v15 = sub_E23AD4((a2 + 24), "Runtime.VehiclePositionInfoAnnotation", &v31, &v30);
  }

  else
  {
    sub_E23C88(v14, "Runtime.VehiclePositionInfoAnnotation", &v31, &v30);
    v15 = v14 + 48;
  }

  *(a2 + 32) = v15;
  v31 = 1;
  v30 = round(*(a1 + 96));
  if (v15 >= *(a2 + 40))
  {
    v16 = sub_E234BC((a2 + 24), "Runtime.ScheduleInfoAnnotation", &v31, &v30);
  }

  else
  {
    sub_E23670(v15, "Runtime.ScheduleInfoAnnotation", &v31, &v30);
    v16 = v15 + 48;
  }

  *(a2 + 32) = v16;
  v31 = 1;
  v30 = round(*(a1 + 112));
  if (v16 >= *(a2 + 40))
  {
    v17 = sub_E237C8((a2 + 24), "Runtime.IncidentsAnnotation", &v31, &v30);
  }

  else
  {
    sub_E2397C(v16, "Runtime.IncidentsAnnotation", &v31, &v30);
    v17 = v16 + 48;
  }

  *(a2 + 32) = v17;
  v31 = 1;
  v30 = round(*(a1 + 120));
  if (v17 >= *(a2 + 40))
  {
    v18 = sub_E23DE0((a2 + 24), "Runtime.InstructionBuilder", &v31, &v30);
  }

  else
  {
    sub_E23F94(v17, "Runtime.InstructionBuilder", &v31, &v30);
    v18 = v17 + 48;
  }

  *(a2 + 32) = v18;
  v31 = 1;
  v30 = round(*(a1 + 128));
  if (v18 >= *(a2 + 40))
  {
    v19 = sub_E240EC((a2 + 24), "Runtime.AdvisoryBuilder", &v31, &v30);
  }

  else
  {
    sub_E242A0(v18, "Runtime.AdvisoryBuilder", &v31, &v30);
    v19 = v18 + 48;
  }

  *(a2 + 32) = v19;
  v31 = 1;
  v30 = round(*(a1 + 136));
  if (v19 >= *(a2 + 40))
  {
    v20 = sub_E243F8((a2 + 24), "Runtime.ArtworkBuilder", &v31, &v30);
  }

  else
  {
    sub_E245AC(v19, "Runtime.ArtworkBuilder", &v31, &v30);
    v20 = v19 + 48;
  }

  *(a2 + 32) = v20;
  v31 = 1;
  v30 = round(*(a1 + 152));
  if (v20 >= *(a2 + 40))
  {
    v21 = sub_E234BC((a2 + 24), "Runtime.StyleAttributesBuilder", &v31, &v30);
  }

  else
  {
    sub_E23670(v20, "Runtime.StyleAttributesBuilder", &v31, &v30);
    v21 = v20 + 48;
  }

  *(a2 + 32) = v21;
  v31 = 1;
  v30 = round(*(a1 + 160));
  if (v21 >= *(a2 + 40))
  {
    v22 = sub_E24704((a2 + 24), "Runtime.RouteHandleAnnotation", &v31, &v30);
  }

  else
  {
    sub_E248B8(v21, "Runtime.RouteHandleAnnotation", &v31, &v30);
    v22 = v21 + 48;
  }

  *(a2 + 32) = v22;
  v31 = 1;
  v30 = round(*(a1 + 168));
  if (v22 >= *(a2 + 40))
  {
    v23 = sub_E24A10((a2 + 24), "Runtime.StepPaymentMethodIdAnnotationBuilder", &v31, &v30);
  }

  else
  {
    sub_E24BC4(v22, "Runtime.StepPaymentMethodIdAnnotationBuilder", &v31, &v30);
    v23 = v22 + 48;
  }

  *(a2 + 32) = v23;
  v31 = 1;
  v30 = round(*(a1 + 176));
  if (v23 >= *(a2 + 40))
  {
    v24 = sub_E24D1C((a2 + 24), "Runtime.RoutePaymentSuggestionAnnotationBuilder", &v31, &v30);
  }

  else
  {
    sub_E24ED0(v23, "Runtime.RoutePaymentSuggestionAnnotationBuilder", &v31, &v30);
    v24 = v23 + 48;
  }

  *(a2 + 32) = v24;
  v31 = 1;
  v30 = round(*(a1 + 144));
  if (v24 >= *(a2 + 40))
  {
    v25 = sub_E25028((a2 + 24), "Runtime.WalkToAccessPointConnector", &v31, &v30);
  }

  else
  {
    sub_E251DC(v24, "Runtime.WalkToAccessPointConnector", &v31, &v30);
    v25 = v24 + 48;
  }

  *(a2 + 32) = v25;
  v31 = 1;
  v30 = round(*(a1 + 184));
  if (v25 >= *(a2 + 40))
  {
    v26 = sub_E25334((a2 + 24), "Runtime.TicketingURLsAnnotation", &v31, &v30);
    *(a2 + 32) = v26;
    v27 = *(a1 + 40);
    if (v27 != 1)
    {
      goto LABEL_63;
    }
  }

  else
  {
    sub_E254E8(v25, "Runtime.TicketingURLsAnnotation", &v31, &v30);
    v26 = v25 + 48;
    *(a2 + 32) = v26;
    v27 = *(a1 + 40);
    if (v27 != 1)
    {
      goto LABEL_63;
    }
  }

  v31 = v27;
  v30 = round(*(a1 + 32));
  if (v26 >= *(a2 + 40))
  {
    v26 = sub_E25640((a2 + 24), "Runtime.RouteBuilder.TransferInstructionFinder", &v31, &v30);
  }

  else
  {
    sub_E257F4(v26, "Runtime.RouteBuilder.TransferInstructionFinder", &v31, &v30);
    v26 += 48;
  }

  *(a2 + 32) = v26;
LABEL_63:
  v31 = 1;
  v30 = round(*(a1 + 48));
  if (v26 >= *(a2 + 40))
  {
    result = sub_E231B0((a2 + 24), "Runtime.RouteBuilder.FareResolver", &v31, &v30);
    v29 = result;
    *(a2 + 32) = result;
    if (*(a1 + 56) != 1)
    {
      return result;
    }
  }

  else
  {
    result = sub_E23364(v26, "Runtime.RouteBuilder.FareResolver", &v31, &v30);
    v29 = v26 + 48;
    *(a2 + 32) = v29;
    if (*(a1 + 56) != 1)
    {
      return result;
    }
  }

  v31 = 4;
  LODWORD(v30) = 1;
  if (v29 >= *(a2 + 40))
  {
    result = sub_D824E8((a2 + 24), "RouteBuilder.ResponseContainsFares", &v31, &v30);
    *(a2 + 32) = result;
  }

  else
  {
    sub_D8269C(v29, "RouteBuilder.ResponseContainsFares", &v31, &v30);
    result = v29 + 48;
    *(a2 + 32) = v29 + 48;
  }

  return result;
}

void sub_E212C0(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_E214E4@<X0>(double *a1@<X0>, void *a2@<X8>)
{
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *a2 = 0u;
  sub_195A048(a2, "TransitDirectionsAnalyticsModule", 0x20uLL);
  v7 = 1;
  v6 = round(*a1);
  v4 = a2[4];
  if (v4 >= a2[5])
  {
    result = sub_D8B2BC(a2 + 3, "Runtime", &v7, &v6);
    a2[4] = result;
  }

  else
  {
    sub_D8B470(a2[4], "Runtime", &v7, &v6);
    result = v4 + 48;
    a2[4] = v4 + 48;
  }

  return result;
}

void sub_E215BC(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_E215E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _OWORD *a8)
{
  v16 = sub_3B2E6C(a4);
  sub_2C1B08(v18, v16);
  v24 = 1;
  sub_E85008(a2, v18, &v25);
  sub_E25A54(a1, a3, a4, a5, a6, a7, &v25, a8);
  if (__p)
  {
    v35 = __p;
    operator delete(__p);
  }

  if (v33 < 0)
  {
    operator delete(v32);
  }

  if (v30)
  {
    v31 = v30;
    operator delete(v30);
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

  if (v24 == 1)
  {
    if (v23 < 0)
    {
      operator delete(v22);
      if ((v21 & 0x80000000) == 0)
      {
LABEL_14:
        if ((v19 & 0x80000000) == 0)
        {
          return a1;
        }

LABEL_18:
        operator delete(v18[0]);
        return a1;
      }
    }

    else if ((v21 & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    operator delete(v20);
    if ((v19 & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_18;
  }

  return a1;
}

void sub_E21740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  sub_D71D0C(va1);
  sub_D71D80(va);
  _Unwind_Resume(a1);
}

void sub_E2175C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_D71D80(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E21770(uint64_t a1)
{
  sub_44FDEC(a1 + 672);
  sub_44FDEC(a1 + 232);
  v2 = *(a1 + 208);
  if (v2)
  {
    *(a1 + 216) = v2;
    operator delete(v2);
  }

  if (*(a1 + 183) < 0)
  {
    operator delete(*(a1 + 160));
  }

  v3 = *(a1 + 136);
  if (v3)
  {
    *(a1 + 144) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 104);
  if (v4)
  {
    *(a1 + 112) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    *(a1 + 48) = v5;
    operator delete(v5);
  }

  return a1;
}

uint64_t sub_E217F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *a2 = 0u;
  sub_195A048(a2, "TransitResponseBuilderModule", 0x1CuLL);
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

void sub_E218C0(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

unint64_t sub_E218EC(__int128 **a1, char *a2, char *a3, double *a4, int *a5)
{
  v6 = a1[1];
  if (v6 >= a1[2])
  {
    v8 = sub_DEFC2C(a1, a2, a3, a4, a5);
    a1[1] = v8;
    return v8 - 48;
  }

  else
  {
    sub_DEFDF0(a1[1], a2, a3, a4, a5);
    a1[1] = (v6 + 48);
    a1[1] = (v6 + 48);
    return v6;
  }
}

uint64_t sub_E21954(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 584);
    *(a1 + 584) = 0;
    if (v2)
    {
      sub_1758FB8(v2);
      operator delete();
    }

    sub_1758FB8((a1 + 8));
    return a1;
  }

  v4 = *(a1 + 24);
  if (!v4)
  {
    return a1;
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 24);
  if (v5 != v4)
  {
    do
    {
      if (*(v5 - 1) < 0)
      {
        operator delete(*(v5 - 24));
      }

      v5 -= 32;
    }

    while (v5 != v4);
    v6 = *(a1 + 24);
  }

  *(a1 + 32) = v4;
  operator delete(v6);
  return a1;
}

uint64_t sub_E21A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, _DWORD *a5)
{
  sub_E830CC(a3, a1);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v10 = a5[2];
  if (v10 > 1)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v34 = sub_2D390(exception, "Unknown request type supplied to transit journey planner module input", 0x45uLL);
  }

  *(a1 + 56) = 0;
  *(a1 + 48) = v10;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v11 = *a4;
  v12 = a4[1];
  if (*a4 != v12)
  {
    v13 = 0;
    do
    {
      if (*(v11 + 224) == 1)
      {
        if (v13 >= *(a1 + 72))
        {
          v13 = sub_C2DA94(a1 + 56, v11);
        }

        else
        {
          sub_93AFE8(v13, v11);
          v13 += 36;
        }

        *(a1 + 64) = v13;
      }

      v11 += 288;
    }

    while (v11 != v12);
    v11 = *a4;
    v12 = a4[1];
  }

  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  if (v11 != v12)
  {
    v14 = 0;
    do
    {
      if (*(v11 + 224) == 2)
      {
        if (v14 >= *(a1 + 96))
        {
          v14 = sub_C2DA94(a1 + 80, v11);
        }

        else
        {
          sub_93AFE8(v14, v11);
          v14 += 36;
        }

        *(a1 + 88) = v14;
      }

      v11 += 288;
    }

    while (v11 != v12);
  }

  *(a1 + 104) = *a5;
  *(a1 + 108) = a5[1];
  *(a1 + 112) = *(a3 + 536);
  v15 = *(a3 + 336);
  if (!v15)
  {
    v15 = &off_2772E28;
  }

  v16 = v15[12];
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = &off_2773798;
  }

  sub_E87768(v17, (a1 + 120));
  *(a1 + 144) = sub_E7A75C(a3);
  v18 = *(a3 + 360);
  if (!v18)
  {
    v18 = &off_2776700;
  }

  *(a1 + 145) = *(v18 + 234);
  v19 = sub_E7A78C(a3);
  v20 = *(a3 + 336);
  if (!v20)
  {
    v20 = &off_2772E28;
  }

  v21 = v20[12];
  if (!v21)
  {
    v21 = &off_2773798;
  }

  v22 = v21[8];
  if (v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = &off_2773778;
  }

  v24 = sub_E7A7A8(v23);
  v25 = *(a3 + 336);
  if (!v25)
  {
    v25 = &off_2772E28;
  }

  v26 = v25[12];
  if (!v26)
  {
    v26 = &off_2773798;
  }

  v27 = v26[8];
  if (v27)
  {
    v28 = v27;
  }

  else
  {
    v28 = &off_2773778;
  }

  v29 = sub_E7A7BC(v28);
  v30 = sub_3B2E6C(a2);
  *(a1 + 152) = v19;
  *(a1 + 153) = v24;
  *(a1 + 154) = v29;
  if (*(v30 + 47) < 0)
  {
    sub_325C((a1 + 160), *(v30 + 24), *(v30 + 32));
  }

  else
  {
    v31 = *(v30 + 24);
    *(a1 + 176) = *(v30 + 40);
    *(a1 + 160) = v31;
  }

  *(a1 + 184) = sub_E7A7CC(a3);
  *(a1 + 188) = sub_E85C7C(a3);
  return a1;
}

void sub_E21CE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10)
{
  if (*(v10 + 47) < 0)
  {
    operator delete(*a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_E21D78(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  __p = 0;
  v33 = 0;
  v34 = 0;
  sub_E22244(&__p, 0x6FB586FB586FB587 * ((a2[1] - *a2) >> 3));
  v15 = *a2;
  v14 = a2[1];
  if (*a2 == v14)
  {
    v17 = __p;
    v16 = v33;
    if (__p != v33)
    {
LABEL_9:
      while (*(v17 + 44) != 1)
      {
        v17 += 440;
        if (v17 == v16)
        {
          goto LABEL_13;
        }
      }
    }
  }

  else
  {
    v16 = v33;
    do
    {
      while (v16 >= v34)
      {
        v16 = sub_4EA43C(&__p, v15);
        v33 = v16;
        v15 += 440;
        if (v15 == v14)
        {
          goto LABEL_6;
        }
      }

      sub_4E9DA4(v16, v15);
      v16 += 440;
      v33 = v16;
      v15 += 440;
    }

    while (v15 != v14);
LABEL_6:
    v17 = __p;
    if (__p != v16)
    {
      goto LABEL_9;
    }
  }

  if (v17 == v16)
  {
LABEL_13:
    if ((atomic_load_explicit(&qword_27339A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27339A0))
    {
      sub_78922C(&unk_27337E8);
      __cxa_guard_release(&qword_27339A0);
    }

    v17 = &unk_27337E8;
  }

  sub_4E9DA4(a1, v17);
  v18 = __p;
  if (__p)
  {
    v19 = v33;
    v20 = __p;
    if (v33 != __p)
    {
      do
      {
        v19 = sub_44FDEC(v19 - 440);
      }

      while (v19 != v18);
      v20 = __p;
    }

    v33 = v18;
    operator delete(v20);
  }

  __p = 0;
  v33 = 0;
  v34 = 0;
  sub_E22244(&__p, 0x6FB586FB586FB587 * ((a2[1] - *a2) >> 3));
  v22 = *a2;
  v21 = a2[1];
  if (*a2 == v21)
  {
    v24 = __p;
    v23 = v33;
    if (__p != v33)
    {
LABEL_28:
      while (*(v24 + 44) != 2)
      {
        v24 += 440;
        if (v24 == v23)
        {
          goto LABEL_32;
        }
      }
    }
  }

  else
  {
    v23 = v33;
    do
    {
      while (v23 >= v34)
      {
        v23 = sub_4EA43C(&__p, v22);
        v33 = v23;
        v22 += 440;
        if (v22 == v21)
        {
          goto LABEL_25;
        }
      }

      sub_4E9DA4(v23, v22);
      v23 += 440;
      v33 = v23;
      v22 += 440;
    }

    while (v22 != v21);
LABEL_25:
    v24 = __p;
    if (__p != v23)
    {
      goto LABEL_28;
    }
  }

  if (v24 == v23)
  {
LABEL_32:
    if ((atomic_load_explicit(&qword_27339A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27339A0))
    {
      sub_78922C(&unk_27337E8);
      __cxa_guard_release(&qword_27339A0);
    }

    v24 = &unk_27337E8;
  }

  sub_4E9DA4(a1 + 440, v24);
  v25 = __p;
  if (__p)
  {
    v26 = v33;
    v27 = __p;
    if (v33 != __p)
    {
      do
      {
        v26 = sub_44FDEC(v26 - 440);
      }

      while (v26 != v25);
      v27 = __p;
    }

    v33 = v25;
    operator delete(v27);
  }

  sub_527724(a1 + 880, a3);
  *(a1 + 2456) = a4;
  *(a1 + 2464) = a5;
  *(a1 + 2472) = a7;
  *(a1 + 2480) = 0;
  *(a1 + 2496) = 0;
  *(a1 + 2488) = 0;
  v28 = a6[1] - *a6;
  if (v28)
  {
    if ((v28 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 2504) = 0;
  *(a1 + 2568) = 0;
  if (*(a8 + 64) == 1)
  {
    sub_D3D26C(a1 + 2504, a8);
    *(a1 + 2568) = 1;
  }

  return a1;
}

void sub_E22118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  __cxa_guard_abort(&qword_27339A0);
  sub_44FD90(va);
  sub_44FDEC(v7);
  _Unwind_Resume(a1);
}

void sub_E22140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  __cxa_guard_abort(&qword_27339A0);
  sub_44FD90(va);
  _Unwind_Resume(a1);
}

void sub_E22160(_Unwind_Exception *a1)
{
  sub_D3D38C(v1 + 2504);
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 2488) = v4;
    operator delete(v4);
  }

  sub_528AB4(v1 + 880);
  sub_44FDEC(v1 + 440);
  sub_44FDEC(v1);
  _Unwind_Resume(a1);
}

void sub_E221F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_44FD90(va);
  sub_44FDEC(v7);
  _Unwind_Resume(a1);
}

void sub_E22218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_44FD90(va);
  _Unwind_Resume(a1);
}

void sub_E2222C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_44FD90(va);
  _Unwind_Resume(a1);
}

void sub_E22244(void *a1, unint64_t a2)
{
  if (0x6FB586FB586FB587 * ((a1[2] - *a1) >> 3) < a2)
  {
    if (a2 < 0x94F2094F2094F3)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_E22334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_4EA748(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E22348(uint64_t *a1, void *a2)
{
  result = *a1;
  v5 = a1[1];
  v7 = a2[1] + result - v5;
  if (v5 != result)
  {
    v8 = result;
    v9 = a2[1] + result - v5;
    do
    {
      *v9 = *v8;
      v10 = *(v8 + 16);
      v11 = *(v8 + 32);
      v12 = *(v8 + 48);
      *(v9 + 63) = *(v8 + 63);
      *(v9 + 32) = v11;
      *(v9 + 48) = v12;
      *(v9 + 16) = v10;
      *(v9 + 80) = 0;
      *(v9 + 88) = 0;
      *(v9 + 72) = 0;
      *(v9 + 72) = *(v8 + 72);
      *(v9 + 88) = *(v8 + 88);
      *(v8 + 72) = 0;
      *(v8 + 80) = 0;
      *(v8 + 88) = 0;
      v13 = *(v8 + 96);
      *(v9 + 112) = *(v8 + 112);
      *(v9 + 96) = v13;
      v14 = *(v8 + 120);
      *(v9 + 136) = *(v8 + 136);
      *(v9 + 120) = v14;
      *(v9 + 152) = *(v8 + 152);
      *(v9 + 160) = *(v8 + 160);
      *(v8 + 152) = 0;
      *(v8 + 160) = 0;
      *(v8 + 168) = 0;
      v15 = *(v8 + 176);
      *(v9 + 184) = *(v8 + 184);
      *(v9 + 176) = v15;
      v16 = *(v8 + 192);
      *(v9 + 208) = *(v8 + 208);
      *(v9 + 192) = v16;
      *(v8 + 200) = 0;
      *(v8 + 208) = 0;
      *(v8 + 192) = 0;
      v17 = *(v8 + 216);
      *(v9 + 232) = *(v8 + 232);
      *(v9 + 216) = v17;
      *(v8 + 224) = 0;
      *(v8 + 232) = 0;
      *(v8 + 216) = 0;
      v18 = *(v8 + 240);
      *(v9 + 256) = *(v8 + 256);
      *(v9 + 240) = v18;
      *(v8 + 240) = 0;
      *(v8 + 248) = 0;
      *(v8 + 256) = 0;
      v19 = *(v8 + 264);
      *(v9 + 280) = *(v8 + 280);
      *(v9 + 264) = v19;
      *(v8 + 264) = 0;
      *(v8 + 272) = 0;
      *(v8 + 280) = 0;
      v20 = *(v8 + 304);
      *(v9 + 288) = *(v8 + 288);
      *(v9 + 304) = v20;
      *(v9 + 312) = 0;
      *(v9 + 320) = 0;
      *(v9 + 328) = 0;
      *(v9 + 312) = *(v8 + 312);
      *(v9 + 320) = *(v8 + 320);
      *(v8 + 312) = 0;
      *(v8 + 320) = 0;
      *(v8 + 328) = 0;
      *(v9 + 336) = 0;
      *(v9 + 344) = 0;
      *(v9 + 352) = 0;
      *(v9 + 336) = *(v8 + 336);
      *(v9 + 352) = *(v8 + 352);
      *(v8 + 336) = 0;
      *(v8 + 344) = 0;
      *(v8 + 352) = 0;
      *(v9 + 360) = 0;
      *(v9 + 368) = 0;
      *(v9 + 376) = 0;
      *(v9 + 360) = *(v8 + 360);
      *(v9 + 368) = *(v8 + 368);
      *(v8 + 368) = 0;
      *(v8 + 376) = 0;
      *(v8 + 360) = 0;
      *(v9 + 384) = *(v8 + 384);
      *(v9 + 408) = 0;
      *(v9 + 416) = 0;
      *(v9 + 400) = 0;
      *(v9 + 400) = *(v8 + 400);
      *(v9 + 416) = *(v8 + 416);
      *(v8 + 400) = 0;
      *(v8 + 408) = 0;
      *(v8 + 416) = 0;
      *(v9 + 424) = *(v8 + 424);
      *(v9 + 432) = *(v8 + 432);
      v8 += 440;
      v9 += 440;
    }

    while (v8 != v5);
    do
    {
      result = sub_44FDEC(result) + 440;
    }

    while (result != v5);
  }

  a2[1] = v7;
  v21 = *a1;
  *a1 = v7;
  a1[1] = v21;
  a2[1] = v21;
  v22 = a1[1];
  a1[1] = a2[2];
  a2[2] = v22;
  v23 = a1[2];
  a1[2] = a2[3];
  a2[3] = v23;
  *a2 = a2[1];
  return result;
}

uint64_t sub_E22580(__int128 **a1, char *a2, char *a3, double *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_E22734(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 3;
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

void sub_E22720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E22734(uint64_t a1, char *__s, char *a3, double *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_E2288C(__int128 **a1, char *a2, char *a3, double *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_E22A40(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 3;
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

void sub_E22A2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E22A40(uint64_t a1, char *__s, char *a3, double *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_E22B98(__int128 **a1, char *a2, char *a3, double *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_E22D4C(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 3;
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

void sub_E22D38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E22D4C(uint64_t a1, char *__s, char *a3, double *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_E22EA4(__int128 **a1, char *a2, char *a3, double *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_E23058(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 3;
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

void sub_E23044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E23058(uint64_t a1, char *__s, char *a3, double *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_E231B0(__int128 **a1, char *a2, char *a3, double *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_E23364(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 3;
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

void sub_E23350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E23364(uint64_t a1, char *__s, char *a3, double *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_E234BC(__int128 **a1, char *a2, char *a3, double *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_E23670(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 3;
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

void sub_E2365C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E23670(uint64_t a1, char *__s, char *a3, double *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_E237C8(__int128 **a1, char *a2, char *a3, double *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_E2397C(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 3;
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

void sub_E23968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E2397C(uint64_t a1, char *__s, char *a3, double *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_E23AD4(__int128 **a1, char *a2, char *a3, double *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_E23C88(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 3;
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

void sub_E23C74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E23C88(uint64_t a1, char *__s, char *a3, double *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_E23DE0(__int128 **a1, char *a2, char *a3, double *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_E23F94(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 3;
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

void sub_E23F80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E23F94(uint64_t a1, char *__s, char *a3, double *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_E240EC(__int128 **a1, char *a2, char *a3, double *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_E242A0(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 3;
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

void sub_E2428C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E242A0(uint64_t a1, char *__s, char *a3, double *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_E243F8(__int128 **a1, char *a2, char *a3, double *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_E245AC(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 3;
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

void sub_E24598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E245AC(uint64_t a1, char *__s, char *a3, double *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_E24704(__int128 **a1, char *a2, char *a3, double *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_E248B8(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 3;
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

void sub_E248A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E248B8(uint64_t a1, char *__s, char *a3, double *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_E24A10(__int128 **a1, char *a2, char *a3, double *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_E24BC4(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 3;
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