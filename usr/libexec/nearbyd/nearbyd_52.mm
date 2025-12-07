void sub_100401A2C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 224);
  if (v3)
  {
    *(v1 + 232) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

double sub_100401A4C(uint64_t a1, double result, double a3, double a4)
{
  if ((*a1 & 1) != 0 && (v4 = a4 - *(a1 + 8), v4 <= 20.0))
  {
    v5 = v4 * 10.0;
    v6 = *(a1 + 16);
    v7 = v5 + *(a1 + 24);
    *(a1 + 24) = v7;
    if (vabdd_f64(result, v6) <= 50.0)
    {
      v8 = v7 / (v7 + a3);
      result = v6 + v8 * (result - v6);
      *(a1 + 16) = result;
      *(a1 + 24) = v7 * (1.0 - v8);
      *(a1 + 8) = a4;
    }
  }

  else
  {
    *(a1 + 16) = result;
    *(a1 + 24) = a3;
    *(a1 + 8) = a4;
    *a1 = 1;
  }

  return result;
}

uint64_t sub_100401ACC(uint64_t a1)
{
  if (*a1 == 1)
  {
    return *(a1 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100401B40(uint64_t a1, _WORD *a2, void *a3)
{
  *a1 = *a2;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 1065353216;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 1065353216;
  *(a1 + 96) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = a1 + 176;
  *(a1 + 184) = a1 + 176;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 240) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 248) = a1 + 256;
  *(a1 + 280) = 0;
  *(a1 + 272) = a1 + 280;
  *(a1 + 288) = 0;
  sub_1003A7738(a1 + 296);
  *(a1 + 552) = 0;
  sub_1003F0980(a1 + 560);
  v5 = a3[1];
  *(a1 + 976) = *a3;
  *(a1 + 984) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_100401C34(_Unwind_Exception *a1)
{
  sub_1004035CC(v3);
  sub_100021914(v2);
  sub_100021914(v1);
  _Unwind_Resume(a1);
}

void sub_100401C8C(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if ((*(a1 + 20) & 1) == 0)
  {
    sub_1004CE5BC();
  }

  HIDWORD(v3) = *(a1 + 16);
  LODWORD(v3) = HIDWORD(v3);
  *a2 = v3 >> 16;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  v4 = (a2 + 56);
  *(a2 + 88) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  if (*(a1 + 80) == 1)
  {
    *(a2 + 8) = *(a1 + 72) * -299792458.0 * 1.0e-12;
    *(a2 + 16) = 1;
  }

  if (*(a1 + 144) == 1)
  {
    *(a2 + 24) = *(a1 + 136) * -299792458.0 * 1.0e-12;
    *(a2 + 32) = 1;
  }

  if (*(a1 + 32) == 1 && *(a1 + 48) == 1 && *(a1 + 96) == 1 && *(a1 + 112) == 1)
  {
    v5 = *(a1 + 88) - *(a1 + 24);
    if (v5 > 0.0)
    {
      *(a2 + 40) = ((*(a1 + 104) - *(a1 + 40)) / v5 + -1.0) * 299792458.0;
      *(a2 + 48) = 1;
    }
  }

  v6 = *(a1 + 224);
  v7 = *(a1 + 232);
  if (v6 != v7)
  {
    v8 = 0;
    do
    {
      v9 = (*(v6 + 32) * 1.0e-12 + *(v6 + 24) * 0.000001) * -299792458.0;
      v10 = *(a2 + 72);
      if (v8 >= v10)
      {
        v11 = *v4;
        v12 = v8 - *v4;
        v13 = v12 >> 3;
        v14 = (v12 >> 3) + 1;
        if (v14 >> 61)
        {
          sub_100019B38();
        }

        v15 = v10 - v11;
        if (v15 >> 2 > v14)
        {
          v14 = v15 >> 2;
        }

        if (v15 >= 0x7FFFFFFFFFFFFFF8)
        {
          v16 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v14;
        }

        if (v16)
        {
          sub_100012564(a2 + 56, v16);
        }

        *(8 * v13) = v9;
        v8 = (8 * v13 + 8);
        memcpy(0, v11, v12);
        v17 = *(a2 + 56);
        *(a2 + 56) = 0;
        *(a2 + 64) = v8;
        *(a2 + 72) = 0;
        if (v17)
        {
          operator delete(v17);
        }
      }

      else
      {
        *v8++ = v9;
      }

      *(a2 + 64) = v8;
      v6 += 112;
    }

    while (v6 != v7);
  }
}

void sub_100401ED8(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 64) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_100401EF8(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 152);
  if (v3 == 999 || v3 == 1)
  {
    v5 = 0;
    *a3 = 0;
  }

  else
  {
    if (v3)
    {
      return;
    }

    if ((*(a2 + 216) & 1) == 0)
    {
      sub_1004CE5E8();
    }

    v6 = *(a2 + 208);
    *a3 = *(a2 + 192);
    *(a3 + 16) = v6;
    v5 = 1;
  }

  *(a3 + 24) = v5;
}

void sub_100401F4C(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6 = *(a1 + 152);
  if (v6 == 1)
  {
    if (*(a1 + 184) == 1)
    {
      v7 = *(a1 + 160);
      v8 = *(a1 + 168);
      v9 = *(a1 + 176);
LABEL_8:
      if (*(a1 + 20))
      {
        if (*(a1 + 32) == 1 && *(a1 + 48) == 1)
        {
          *v19 = *(a1 + 18);
          v10 = *(a1 + 40);
          *&v19[8] = *(a1 + 24);
          *&v19[16] = v10;
          v20 = v7;
          v21 = v8;
          v22 = v9;
          sub_100402198(a3, v19);
        }

        else if (*(a1 + 96) == 1 && *(a1 + 112) == 1)
        {
          *v19 = *(a1 + 18);
          v11 = *(a1 + 104);
          *&v19[8] = *(a1 + 88);
          *&v19[16] = v11;
          v20 = v7;
          v21 = v8;
          v22 = v9;
          sub_100402198(a3, v19);
        }

        goto LABEL_16;
      }

      goto LABEL_27;
    }

    v17 = "anchorMsg.relative_coordinates.has_value()";
    v18 = 122;
LABEL_31:
    __assert_rtn("_anchorMessageToMeasurement", "PositionEngineManager.cpp", v18, v17);
  }

  if (!v6)
  {
    if (*(a1 + 216))
    {
      if (*(a2 + 24) == 1)
      {
        v7 = sub_100400C60((a1 + 192), a2);
        goto LABEL_8;
      }

      v17 = "refLLA.has_value()";
      v18 = 113;
    }

    else
    {
      v17 = "anchorMsg.geodetic_coordinates.has_value()";
      v18 = 112;
    }

    goto LABEL_31;
  }

  if ((*(a1 + 20) & 1) == 0)
  {
LABEL_27:
    v17 = "anchorMsg.poll_addr.has_value()";
    v18 = 134;
    goto LABEL_31;
  }

LABEL_16:
  v13 = *(a1 + 224);
  v12 = *(a1 + 232);
  while (v13 != v12)
  {
    if (*(v13 + 72) == 1)
    {
      v14 = *(v13 + 48);
      v15 = *(v13 + 56);
      v16 = *(v13 + 64);
    }

    else
    {
      if (*(v13 + 104) != 1)
      {
        goto LABEL_24;
      }

      if ((*(a2 + 24) & 1) == 0)
      {
        __assert_rtn("_anchorMessageToMeasurement", "PositionEngineManager.cpp", 162, "refLLA.has_value()");
      }

      *v19 = *(v13 + 80);
      *&v19[16] = *(v13 + 96);
      v14 = sub_100400C60(v19, a2);
    }

    *v19 = *v13;
    *&v19[8] = *(v13 + 8);
    v20 = v14;
    v21 = v15;
    v22 = v16;
    sub_100402198(a3, v19);
LABEL_24:
    v13 += 112;
  }
}

void sub_100402164(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100402198(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    v10 = v9 + 1;
    if (v9 + 1 > 0x555555555555555)
    {
      sub_100019B38();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 4);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x2AAAAAAAAAAAAAALL)
    {
      v12 = 0x555555555555555;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      sub_100403898(a1, v12);
    }

    v13 = 48 * v9;
    v14 = *a2;
    v15 = a2[2];
    *(v13 + 16) = a2[1];
    *(v13 + 32) = v15;
    *v13 = v14;
    v8 = 48 * v9 + 48;
    v16 = *(a1 + 8) - *a1;
    v17 = v13 - v16;
    memcpy((v13 - v16), *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[2];
    v4[1] = a2[1];
    v4[2] = v7;
    *v4 = v6;
    v8 = (v4 + 3);
  }

  *(a1 + 8) = v8;
}

void sub_1004022A0(uint64_t a1@<X0>, uint64_t a2@<X1>, double a3@<X2>, char a4@<W3>, _BYTE *a5@<X8>)
{
  if ((*(a2 + 20) & 1) == 0)
  {
    sub_1004CE614();
  }

  v73 = *(a2 + 18);
  if (!sub_1000222CC((a1 + 48), &v73))
  {
    *buf = &v73;
    sub_1004038F0((a1 + 48), &v73, &unk_100548C50, buf);
  }

  *buf = &v73;
  sub_1004038F0((a1 + 48), &v73, &unk_100548C50, buf);
  if ((a4 & 1) == 0)
  {
    a3 = 0.0;
  }

  if ((*(a2 + 20) & 1) == 0)
  {
    sub_1004CE640();
  }

  v72 = *(a2 + 18);
  *buf = &v72;
  v10 = sub_100403B28((a1 + 8), &v72, &unk_100548C50, buf);
  v11 = sub_100401ACC((v10 + 3));
  if (v12)
  {
    v13 = v11;
    sub_100401EF8(a2, v70);
    sub_100401F4C(a2, v70, &v68);
    v63 = v13;
    if ((*(a2 + 20) & 1) == 0)
    {
      sub_1000195BC();
    }

    v64 = *(a2 + 18);
    v66 = 0;
    v67 = 0;
    v65 = 0;
    sub_100403D6C(&v65, v68, v69, 0xAAAAAAAAAAAAAAABLL * ((v69 - v68) >> 4));
    v14 = *(a2 + 152);
    sub_10040467C(&v63, &v47, *&a3);
    if (v62 == 1)
    {
      *buf = *(a2 + 8);
      v23 = *(a2 + 16);
      v24 = 0;
      v25 = v14;
      LOBYTE(v26) = 0;
      v28 = 0;
      LOBYTE(v29) = 0;
      v32 = 0;
      v33 = v50;
      v35 = 0;
      v36 = 0;
      v34 = 0;
      sub_1001FBC68(&v34, v51, v52, (v52 - v51) >> 1);
      if ((v62 & 1) == 0)
      {
        sub_1000195BC();
      }

      v37 = 0;
      v38 = 0;
      v39 = 0;
      sub_100012F38(&v37, v53, v54, (v54 - v53) >> 3);
      if ((v62 & 1) == 0)
      {
        sub_1000195BC();
      }

      v40 = 0;
      v41 = 0;
      v42 = 0;
      sub_100012F38(&v40, v55, v56, (v56 - v55) >> 3);
      if ((v62 & 1) == 0)
      {
        sub_1000195BC();
      }

      __p = 0;
      v44 = 0;
      v45 = 0;
      sub_100012F38(&__p, v57, v58, (v58 - v57) >> 3);
      if ((v62 & 1) == 0)
      {
        sub_1000195BC();
      }

      v46 = v59;
      if (v14 == 1)
      {
        v26 = v48;
        v27 = v49;
        if ((v28 & 1) == 0)
        {
          v28 = 1;
        }
      }

      else
      {
        v20 = v48;
        v21 = v49;
        if ((v71 & 1) == 0)
        {
          __assert_rtn("_singleClusterLeastSquareEstimator", "PositionEngineManager.cpp", 249, "refLLA.has_value()");
        }

        sub_1004010B8(&v20, v70);
        v29 = v17;
        v30 = v18;
        v31 = v19;
        if ((v32 & 1) == 0)
        {
          v32 = 1;
        }
      }

      sub_1003CC5B8(a5, buf);
      if (__p)
      {
        v44 = __p;
        operator delete(__p);
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

      if (v34)
      {
        v35 = v34;
        operator delete(v34);
      }
    }

    else
    {
      v16 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#loc-pe,no position solution produced for the given measurements", buf, 2u);
      }

      *a5 = 0;
      a5[200] = 0;
    }

    if (v62 == 1)
    {
      if (v60)
      {
        v61 = v60;
        operator delete(v60);
      }

      if (v57)
      {
        v58 = v57;
        operator delete(v57);
      }

      if (v55)
      {
        v56 = v55;
        operator delete(v55);
      }

      if (v53)
      {
        v54 = v53;
        operator delete(v53);
      }

      if (v51)
      {
        v52 = v51;
        operator delete(v51);
      }
    }

    if (v65)
    {
      v66 = v65;
      operator delete(v65);
    }

    if (v68)
    {
      v69 = v68;
      operator delete(v68);
    }
  }

  else
  {
    v15 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004CE66C(&v72, v15);
    }

    *a5 = 0;
    a5[200] = 0;
  }
}

void sub_100402708(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, uint64_t a36, uint64_t a37, ...)
{
  va_start(va, a37);
  sub_1003CC664(&a13);
  sub_1004027C4(va);
  v39 = *(v37 - 152);
  if (v39)
  {
    *(v37 - 144) = v39;
    operator delete(v39);
  }

  v40 = *(v37 - 128);
  if (v40)
  {
    *(v37 - 120) = v40;
    operator delete(v40);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1004027C4(uint64_t a1)
{
  if (*(a1 + 168) == 1)
  {
    v2 = *(a1 + 144);
    if (v2)
    {
      *(a1 + 152) = v2;
      operator delete(v2);
    }

    v3 = *(a1 + 112);
    if (v3)
    {
      *(a1 + 120) = v3;
      operator delete(v3);
    }

    v4 = *(a1 + 88);
    if (v4)
    {
      *(a1 + 96) = v4;
      operator delete(v4);
    }

    v5 = *(a1 + 64);
    if (v5)
    {
      *(a1 + 72) = v5;
      operator delete(v5);
    }

    v6 = *(a1 + 40);
    if (v6)
    {
      *(a1 + 48) = v6;
      operator delete(v6);
    }
  }

  return a1;
}

void sub_100402844(uint64_t a1@<X0>, uint64_t *a2@<X1>, double a3@<X2>, char a4@<W3>, _BYTE *a5@<X8>)
{
  if ((a4 & 1) == 0)
  {
    a3 = 0.0;
  }

  v8 = *a2;
  if (0xEF7BDEF7BDEF7BDFLL * ((a2[1] - v8) >> 3) > 1)
  {
    sub_100401EF8(v8, v43);
    memset(v42, 0, sizeof(v42));
    v11 = *a2;
    v12 = a2[1];
    if (*a2 != v12)
    {
      do
      {
        if ((*(v11 + 20) & 1) == 0)
        {
          __assert_rtn("_multiClusterLeastSquareEstimator", "PositionEngineManager.cpp", 277, "anchorMsg.poll_addr.has_value()");
        }

        LOWORD(v24) = *(v11 + 18);
        v26 = &v24;
        v13 = sub_100403B28((a1 + 8), &v24, &unk_100548C50, &v26);
        v14 = sub_100401ACC((v13 + 3));
        if (v15)
        {
          v16 = v14;
          sub_100401F4C(v11, v43, &v26);
          *buf = v16;
          if ((*(v11 + 20) & 1) == 0)
          {
            sub_1000195BC();
          }

          v46 = *(v11 + 18);
          v49 = 0uLL;
          __p = 0;
          sub_100403D6C(&__p, v26, v27, 0xAAAAAAAAAAAAAAABLL * ((v27 - v26) >> 4));
          sub_100402E38(v42, buf);
          if (__p)
          {
            *&v49 = __p;
            operator delete(__p);
          }

          if (v26)
          {
            *&v27 = v26;
            operator delete(v26);
          }
        }

        else
        {
          v17 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            *&buf[4] = v24;
            _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "#loc-pe,Clock drift filter not available for address %hu, skipping cluster", buf, 8u);
          }
        }

        v11 += 248;
      }

      while (v11 != v12);
      v11 = *a2;
      v12 = a2[1];
    }

    v18 = *(v11 + 152);
    v19 = *(v12 - 240);
    sub_10040612C(v42, &v26, *&a3);
    if (v41 == 1)
    {
      *buf = v19;
      v46 = *(*a2 + 16);
      v47 = 1;
      LODWORD(__p) = v18;
      LOBYTE(v49) = 0;
      v51 = 0;
      LOBYTE(v52) = 0;
      v55 = 0;
      v56 = v29;
      v58 = 0;
      v59 = 0;
      v57 = 0;
      sub_1001FBC68(&v57, v30, v31, (v31 - v30) >> 1);
      if ((v41 & 1) == 0)
      {
        sub_1000195BC();
      }

      v60 = 0;
      v61 = 0;
      v62 = 0;
      sub_100012F38(&v60, v32, v33, (v33 - v32) >> 3);
      if ((v41 & 1) == 0)
      {
        sub_1000195BC();
      }

      v63 = 0;
      v64 = 0;
      v65 = 0;
      sub_100012F38(&v63, v34, v35, (v35 - v34) >> 3);
      if ((v41 & 1) == 0)
      {
        sub_1000195BC();
      }

      v66 = 0;
      v67 = 0;
      v68 = 0;
      sub_100012F38(&v66, v36, v37, (v37 - v36) >> 3);
      if ((v41 & 1) == 0)
      {
        sub_1000195BC();
      }

      v69 = v38;
      if (v18 == 1)
      {
        v49 = v27;
        v50 = v28;
        if ((v51 & 1) == 0)
        {
          v51 = 1;
        }
      }

      else
      {
        v24 = v27;
        v25 = v28;
        if ((v44 & 1) == 0)
        {
          __assert_rtn("_multiClusterLeastSquareEstimator", "PositionEngineManager.cpp", 327, "refLLA.has_value()");
        }

        sub_1004010B8(&v24, v43);
        v52 = v21;
        v53 = v22;
        v54 = v23;
        if ((v55 & 1) == 0)
        {
          v55 = 1;
        }
      }

      sub_1003CC5B8(a5, buf);
      if (v66)
      {
        v67 = v66;
        operator delete(v66);
      }

      if (v63)
      {
        v64 = v63;
        operator delete(v63);
      }

      if (v60)
      {
        v61 = v60;
        operator delete(v60);
      }

      if (v57)
      {
        v58 = v57;
        operator delete(v57);
      }
    }

    else
    {
      v20 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#loc-pe,no position solution for the given measurements", buf, 2u);
      }

      *a5 = 0;
      a5[200] = 0;
    }

    if (v41 == 1)
    {
      if (v39)
      {
        v40 = v39;
        operator delete(v39);
      }

      if (v36)
      {
        v37 = v36;
        operator delete(v36);
      }

      if (v34)
      {
        v35 = v34;
        operator delete(v34);
      }

      if (v32)
      {
        v33 = v32;
        operator delete(v32);
      }

      if (v30)
      {
        v31 = v30;
        operator delete(v30);
      }
    }

    *buf = v42;
    sub_100019848(buf);
  }

  else
  {
    *a5 = 0;
    a5[200] = 0;
  }
}

void sub_100402D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char *a47)
{
  sub_1003CC664(&a47);
  sub_1004027C4(&a17);
  a47 = &a39;
  sub_100019848(&a47);
  _Unwind_Resume(a1);
}

uint64_t sub_100402E38(unint64_t *a1, uint64_t *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_100403EA4(a1, a2);
  }

  else
  {
    sub_100403E34(a1, a2);
    result = v3 + 40;
  }

  a1[1] = result;
  return result;
}

void sub_100402E78(uint64_t a1@<X0>, uint64_t *a2@<X1>, double a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  LOBYTE(v56[0]) = 0;
  v67 = 0;
  memset(v55, 0, sizeof(v55));
  v8 = *a2;
  v9 = a2[1];
  if (*a2 != v9)
  {
    while (1)
    {
      if ((*(v8 + 20) & 1) == 0)
      {
        __assert_rtn("processMeasurements", "PositionEngineManager.cpp", 347, "pe_meas.poll_addr.has_value()");
      }

      v54 = *(v8 + 18);
      if (!sub_1000222CC((a1 + 8), &v54))
      {
        *buf = &v54;
        v10 = sub_100403B28((a1 + 8), &v54, &unk_100548C50, buf);
        *(v10 + 5) = 0u;
        *(v10 + 3) = 0u;
      }

      *buf = &v54;
      v11 = sub_100403B28((a1 + 8), &v54, &unk_100548C50, buf);
      sub_100401C8C(v8, v35);
      if (v35[16])
      {
        break;
      }

      if ((v37 & 1) == 0 && (v39 & 1) == 0 && __p == v41)
      {
        v31 = 359;
        v32 = "cfos.raw_poll.has_value() || cfos.raw_final.has_value() || cfos.raw_poll_final.has_value() || !cfos.raw_responders.empty()";
LABEL_84:
        __assert_rtn("processMeasurements", "PositionEngineManager.cpp", v31, v32);
      }

      if (LOBYTE(v43))
      {
LABEL_83:
        v31 = 360;
        v32 = "!cfos.filtered.has_value()";
        goto LABEL_84;
      }

      v12 = *(v8 + 8);
      if (v37)
      {
        goto LABEL_14;
      }

LABEL_15:
      v14 = __p;
      v13 = v41;
      while (v14 != v13)
      {
        sub_100401A4C((v11 + 3), *v14++, 2500.0, v12);
      }

      if (v39)
      {
        sub_100401A4C((v11 + 3), v38, 100.0, v12);
      }

      v42 = sub_100401ACC((v11 + 3));
      LOBYTE(v43) = v15;
      sub_100403580(v55, v35);
      if (__p)
      {
        v41 = __p;
        operator delete(__p);
      }

      v8 += 248;
      if (v8 == v9)
      {
        goto LABEL_23;
      }
    }

    if (LOBYTE(v43) == 1)
    {
      goto LABEL_83;
    }

    v12 = *(v8 + 8);
    sub_100401A4C((v11 + 3), *&v35[8], 900.0, v12);
    if ((v37 & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_14:
    sub_100401A4C((v11 + 3), v36, 900.0, v12);
    goto LABEL_15;
  }

LABEL_23:
  v16 = *(a1 + 976);
  if (v16)
  {
    sub_1002E9BB0(v16, v55);
  }

  v18 = *a2;
  v17 = a2[1];
  if (*a2 == v17)
  {
    v22 = *a2;
  }

  else
  {
    do
    {
      sub_1004022A0(a1, v18, a3, a4, v35);
      if (v53 == 1)
      {
        if (v52)
        {
          goto LABEL_38;
        }

        v19 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          if ((*(v18 + 20) & 1) == 0)
          {
            sub_1000195BC();
          }

          v20 = *(v18 + 18);
          *buf = 67109120;
          *&buf[4] = v20;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#loc-pe,single cluster solution from address %hu is obtained", buf, 8u);
        }

        v21 = *(a1 + 976);
        if (v21)
        {
          if ((v53 & 1) == 0)
          {
            goto LABEL_86;
          }

          sub_1002E9820(v21, v35);
        }

        if (v67 == 1)
        {
          if (v53 != 1)
          {
LABEL_86:
            sub_1000195BC();
          }

          if (v43 >= *(&v57 + 1))
          {
            goto LABEL_38;
          }
        }

        sub_100403660(v56, v35);
        if (v53)
        {
LABEL_38:
          if (v50)
          {
            v51 = v50;
            operator delete(v50);
          }

          if (v48)
          {
            v49 = v48;
            operator delete(v48);
          }

          if (v46)
          {
            v47 = v46;
            operator delete(v46);
          }

          if (v44)
          {
            v45 = v44;
            operator delete(v44);
          }
        }
      }

      v18 += 248;
    }

    while (v18 != v17);
    v18 = *a2;
    v22 = a2[1];
  }

  if (0xEF7BDEF7BDEF7BDFLL * ((v22 - v18) >> 3) > 1)
  {
    sub_100402844(a1, a2, a3, a4, v35);
    if (v53 == 1)
    {
      if (v52)
      {
        goto LABEL_58;
      }

      v23 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#loc-pe,multi-cluster solution is obtained", buf, 2u);
      }

      v24 = *(a1 + 976);
      if (v24)
      {
        if ((v53 & 1) == 0)
        {
          sub_1000195BC();
        }

        sub_1002E9820(v24, v35);
      }

      sub_100403660(v56, v35);
      if (v53)
      {
LABEL_58:
        if (v50)
        {
          v51 = v50;
          operator delete(v50);
        }

        if (v48)
        {
          v49 = v48;
          operator delete(v48);
        }

        if (v46)
        {
          v47 = v46;
          operator delete(v46);
        }

        if (v44)
        {
          v45 = v44;
          operator delete(v44);
        }
      }
    }
  }

  if (*a1 == 1)
  {
    sub_1003CBF4C(a1 + 96, a2, v56, a5);
  }

  else
  {
    v25 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#loc-pe,ni dl-tdoa sensor fusion is disabled, return ils solution", v35, 2u);
    }

    *a5 = 0;
    *(a5 + 200) = 0;
    if (v67 == 1)
    {
      v26 = v61;
      *(a5 + 112) = v59;
      *(a5 + 136) = v26;
      v27 = v65;
      *(a5 + 160) = v63;
      v28 = v56[3];
      *(a5 + 32) = v56[2];
      *(a5 + 48) = v28;
      v29 = v57;
      *(a5 + 64) = v56[4];
      *(a5 + 80) = v29;
      v30 = v56[1];
      *a5 = v56[0];
      *(a5 + 16) = v30;
      *(a5 + 96) = v58;
      v58 = 0uLL;
      *(a5 + 120) = v60;
      v61 = 0;
      v59 = 0;
      v60 = 0uLL;
      *(a5 + 144) = v62;
      v62 = 0uLL;
      *(a5 + 168) = v64;
      *(a5 + 184) = v27;
      v63 = 0;
      v64 = 0uLL;
      v65 = 0;
      *(a5 + 192) = v66;
      *(a5 + 200) = 1;
    }
  }

  *v35 = v55;
  sub_10040415C(v35);
  if (v67 == 1)
  {
    if (v64)
    {
      *(&v64 + 1) = v64;
      operator delete(v64);
    }

    if (v62)
    {
      *(&v62 + 1) = v62;
      operator delete(v62);
    }

    if (v60)
    {
      *(&v60 + 1) = v60;
      operator delete(v60);
    }

    if (v58)
    {
      *(&v58 + 1) = v58;
      operator delete(v58);
    }
  }
}

void sub_1004034EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_10038C500(&a15);
  a15 = &a43;
  sub_10040415C(&a15);
  if (a65 == 1)
  {
    sub_1004CE6E8(&a46);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100403580(unint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_100404280(a1, a2);
  }

  else
  {
    sub_100404200(a1, a2);
    result = v3 + 96;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_1004035CC(uint64_t a1)
{
  *(a1 + 256) = off_1009991A0;
  *(a1 + 184) = off_1009991A0;
  sub_10002074C(a1 + 144, *(a1 + 152));
  sub_10002074C(a1 + 120, *(a1 + 128));
  sub_1001B3D00((a1 + 48));

  return sub_10038F4A4(a1);
}

void sub_100403660(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 200) == *(a2 + 200))
  {
    if (*(a1 + 200))
    {
      v4 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v4;
      v5 = *(a2 + 32);
      v6 = *(a2 + 48);
      v7 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 80) = v7;
      *(a1 + 32) = v5;
      *(a1 + 48) = v6;
      if (a1 != a2)
      {
        sub_1001FBB44((a1 + 96), *(a2 + 96), *(a2 + 104), (*(a2 + 104) - *(a2 + 96)) >> 1);
        sub_10017AF94((a1 + 120), *(a2 + 120), *(a2 + 128), (*(a2 + 128) - *(a2 + 120)) >> 3);
        sub_10017AF94((a1 + 144), *(a2 + 144), *(a2 + 152), (*(a2 + 152) - *(a2 + 144)) >> 3);
        sub_10017AF94((a1 + 168), *(a2 + 168), *(a2 + 176), (*(a2 + 176) - *(a2 + 168)) >> 3);
      }

      *(a1 + 192) = *(a2 + 192);
    }
  }

  else if (*(a1 + 200))
  {
    v8 = *(a1 + 168);
    if (v8)
    {
      *(a1 + 176) = v8;
      operator delete(v8);
    }

    v9 = *(a1 + 144);
    if (v9)
    {
      *(a1 + 152) = v9;
      operator delete(v9);
    }

    v10 = *(a1 + 120);
    if (v10)
    {
      *(a1 + 128) = v10;
      operator delete(v10);
    }

    v11 = *(a1 + 96);
    if (v11)
    {
      *(a1 + 104) = v11;
      operator delete(v11);
    }

    *(a1 + 200) = 0;
  }

  else
  {
    sub_100403774(a1, a2);
    *(a1 + 200) = 1;
  }
}

uint64_t sub_100403774(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  v7 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v7;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  sub_1001FBC68((a1 + 96), *(a2 + 96), *(a2 + 104), (*(a2 + 104) - *(a2 + 96)) >> 1);
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  sub_100012F38((a1 + 120), *(a2 + 120), *(a2 + 128), (*(a2 + 128) - *(a2 + 120)) >> 3);
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  sub_100012F38((a1 + 144), *(a2 + 144), *(a2 + 152), (*(a2 + 152) - *(a2 + 144)) >> 3);
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  sub_100012F38((a1 + 168), *(a2 + 168), *(a2 + 176), (*(a2 + 176) - *(a2 + 168)) >> 3);
  *(a1 + 192) = *(a2 + 192);
  return a1;
}

void sub_10040384C(_Unwind_Exception *exception_object)
{
  v6 = *v4;
  if (*v4)
  {
    v1[19] = v6;
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    v1[16] = v7;
    operator delete(v7);
  }

  v8 = *v2;
  if (*v2)
  {
    v1[13] = v8;
    operator delete(v8);
  }

  _Unwind_Resume(exception_object);
}

void sub_100403898(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_100013B04();
}

uint64_t **sub_1004038F0(void *a1, unsigned __int16 *a2, uint64_t a3, _WORD **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (*&v5 <= v4)
    {
      v7 = v4 % a1[1];
    }
  }

  else
  {
    v7 = (v5.i32[0] - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (*(v9 + 8) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

uint64_t **sub_100403B28(void *a1, unsigned __int16 *a2, uint64_t a3, _WORD **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (*&v5 <= v4)
    {
      v7 = v4 % a1[1];
    }
  }

  else
  {
    v7 = (v5.i32[0] - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (*(v9 + 8) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

uint64_t *sub_100403D6C(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100403DE8(result, a4);
  }

  return result;
}

void sub_100403DCC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100403DE8(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    sub_100403898(a1, a2);
  }

  sub_100019B38();
}

uint64_t *sub_100403E34(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  *(v3 + 8) = *(a2 + 4);
  *v3 = v4;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 16) = 0;
  result = sub_100403D6C((v3 + 16), a2[2], a2[3], 0xAAAAAAAAAAAAAAABLL * ((a2[3] - a2[2]) >> 4));
  *(a1 + 8) = v3 + 40;
  return result;
}

uint64_t sub_100403EA4(unint64_t *a1, uint64_t *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    sub_100019B38();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    sub_100404000(a1, v6);
  }

  v7 = 40 * v2;
  v15 = 0;
  v16 = v7;
  v17 = 40 * v2;
  v8 = *a2;
  *(v7 + 8) = *(a2 + 4);
  *v7 = v8;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 16) = 0;
  sub_100403D6C((40 * v2 + 16), a2[2], a2[3], 0xAAAAAAAAAAAAAAABLL * ((a2[3] - a2[2]) >> 4));
  *&v17 = v17 + 40;
  v9 = a1[1];
  v10 = v16 + *a1 - v9;
  sub_100404058(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_10032C8B0(&v15);
  return v14;
}

void sub_100403FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10032C8B0(va);
  _Unwind_Resume(a1);
}

void sub_100404000(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_100013B04();
}

uint64_t sub_100404058(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v13 = a4;
  v12 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 8) = *(v6 + 4);
      *a4 = v7;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 16) = 0;
      *(a4 + 16) = *(v6 + 1);
      *(a4 + 32) = v6[4];
      v6[2] = 0;
      v6[3] = 0;
      v6[4] = 0;
      v6 += 5;
      a4 += 40;
    }

    while (v6 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      v8 = v5[2];
      if (v8)
      {
        v5[3] = v8;
        operator delete(v8);
      }

      v5 += 5;
    }
  }

  return sub_100404124(v10);
}

uint64_t sub_100404124(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_10032C868(a1);
  }

  return a1;
}

void sub_10040415C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1004041B0(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1004041B0(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 96)
  {
    v4 = *(i - 40);
    if (v4)
    {
      *(i - 32) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

__n128 sub_100404200(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  *(v4 + 48) = *(a2 + 48);
  *(v4 + 16) = v6;
  *(v4 + 32) = v7;
  *v4 = v5;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 56) = 0;
  sub_100012F38((v4 + 56), *(a2 + 7), *(a2 + 8), (*(a2 + 8) - *(a2 + 7)) >> 3);
  result = a2[5];
  *(v4 + 80) = result;
  *(a1 + 8) = v4 + 96;
  return result;
}

uint64_t sub_100404280(unint64_t *a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    sub_100019B38();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    sub_1004043E0(a1, v6);
  }

  v7 = 96 * v2;
  v17 = 0;
  v18 = v7;
  v19 = v7;
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  *(v7 + 48) = *(a2 + 48);
  *(v7 + 16) = v9;
  *(v7 + 32) = v10;
  *v7 = v8;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0;
  *(v7 + 56) = 0;
  sub_100012F38((v7 + 56), *(a2 + 7), *(a2 + 8), (*(a2 + 8) - *(a2 + 7)) >> 3);
  *(v7 + 80) = a2[5];
  *&v19 = v19 + 96;
  v11 = a1[1];
  v12 = v18 + *a1 - v11;
  sub_100404438(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_100404594(&v17);
  return v16;
}

void sub_1004043CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100404594(va);
  _Unwind_Resume(a1);
}

void sub_1004043E0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_100013B04();
}

uint64_t sub_100404438(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v15 = a4;
  v14 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  if (a2 == a3)
  {
    v13 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      v8 = v6[1];
      v9 = v6[2];
      *(a4 + 48) = *(v6 + 48);
      *(a4 + 16) = v8;
      *(a4 + 32) = v9;
      *a4 = v7;
      *(a4 + 64) = 0;
      *(a4 + 72) = 0;
      *(a4 + 56) = 0;
      *(a4 + 56) = *(v6 + 56);
      *(a4 + 72) = *(v6 + 9);
      *(v6 + 7) = 0;
      *(v6 + 8) = 0;
      *(v6 + 9) = 0;
      *(a4 + 80) = v6[5];
      v6 += 6;
      a4 += 96;
    }

    while (v6 != a3);
    v15 = a4;
    v13 = 1;
    while (v5 != a3)
    {
      v10 = *(v5 + 7);
      if (v10)
      {
        *(v5 + 8) = v10;
        operator delete(v10);
      }

      v5 += 6;
    }
  }

  return sub_100404514(v12);
}

uint64_t sub_100404514(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_10040454C(a1);
  }

  return a1;
}

void sub_10040454C(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 40);
    if (v3)
    {
      *(v1 - 32) = v3;
      operator delete(v3);
    }

    v1 -= 96;
  }
}

uint64_t sub_100404594(uint64_t a1)
{
  sub_1004045CC(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1004045CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    *(a1 + 16) = v2 - 96;
    v5 = *(v2 - 40);
    if (v5)
    {
      *(v2 - 32) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 96;
    }
  }
}

void sub_10040467C(double *a1@<X1>, _BYTE *a2@<X8>, uint64_t a3@<D0>)
{
  v7 = a1 + 2;
  v5 = *(a1 + 2);
  v6 = *(v7 + 1);
  v8 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 4);
  if (v8 <= 3)
  {
    v9 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004CE78C(a1, v9);
    }

    *a2 = 0;
    a2[168] = 0;
    return;
  }

  v124 = 0;
  v125 = 0;
  v126 = 0;
  sub_100403D6C(&v124, v5, v6, v8);
  v11 = v124;
  v12 = v125;
  if (0xAAAAAAAAAAAAAAABLL * ((v125 - v124) >> 4) >= 0x10)
  {
    sub_1004079A8(&v124, v124, v124 + 720, 0xFuLL);
    v11 = v124;
    v12 = v125;
  }

  if (v11 != v12)
  {
    v13 = 2.22507386e-308;
    v14 = 2.22507386e-308;
    v15 = v11;
    while (1)
    {
      v16 = v14;
      v17 = v13;
      v13 = v15[1];
      v14 = v15[2];
      if (v13 <= v17 || v14 <= v16)
      {
        break;
      }

      v15 += 6;
      if (v15 == v12)
      {
        goto LABEL_14;
      }
    }

    v62 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004CE748(v62);
    }

    *a2 = 0;
    a2[168] = 0;
    goto LABEL_146;
  }

LABEL_14:
  v121 = 0;
  v122 = 0;
  v123 = 0;
  sub_100404EF0(&v124, a3, 1, &v119);
  v20 = v119;
  v21 = v120;
  if (v119 != v120)
  {
    while (1)
    {
      v117 = *v20;
      v118 = v20[2];
      LOBYTE(v105[0]) = 0;
      v116 = 0;
      v93[0] = 0;
      v104 = 0;
      v81[0] = 0;
      v92 = 0;
      sub_100405114(v19);
      sub_1004076D0(v105, v69);
      if (v80 == 1)
      {
        if (__p)
        {
          v79 = __p;
          operator delete(__p);
        }

        if (v76)
        {
          v77 = v76;
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

        v19 = v70;
        if (v70)
        {
          v71 = v70;
          operator delete(v70);
        }
      }

      if (v116 == 1)
      {
        v22 = 0xAAAAAAAAAAAAAAABLL * ((v125 - v124) >> 4);
        if (v22 >= 5)
        {
          v23 = v114;
          if (v114 == v115)
          {
            v25 = v114;
          }

          else
          {
            v24 = (v114 + 8);
            v25 = v114;
            if (v114 + 8 != v115)
            {
              v26 = *v114;
              v25 = v114;
              v27 = (v114 + 8);
              do
              {
                v28 = *v27++;
                v29 = v28;
                if (v26 < v28)
                {
                  v26 = v29;
                  v25 = v24;
                }

                v24 = v27;
              }

              while (v27 != v115);
            }
          }

          v66 = 0;
          v67 = 0;
          v68 = 0;
          v30 = sub_100403D6C(&v66, v124, v125, v22);
          v31 = (v25 - v23) >> 3;
          v32 = v66 + 48 * v31;
          v33 = v67 - (v32 + 48);
          if (v67 != v32 + 48)
          {
            v30 = memmove(v66 + 48 * v31, v32 + 48, v67 - (v32 + 48));
          }

          v67 = &v32[v33];
          sub_100405114(v30);
          sub_1004076D0(v93, v69);
          if (v80 == 1)
          {
            if (__p)
            {
              v79 = __p;
              operator delete(__p);
            }

            if (v76)
            {
              v77 = v76;
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

            v19 = v70;
            if (v70)
            {
              v71 = v70;
              operator delete(v70);
            }
          }

          v34 = v66;
          if (v104 == 1)
          {
            v35 = 0xAAAAAAAAAAAAAAABLL * ((v67 - v66) >> 4);
            if (v35 >= 5)
            {
              v36 = v102;
              if (v102 == v103)
              {
                v38 = v102;
              }

              else
              {
                v37 = (v102 + 8);
                v38 = v102;
                if (v102 + 8 != v103)
                {
                  v39 = *v102;
                  v38 = v102;
                  v40 = (v102 + 8);
                  do
                  {
                    v41 = *v40++;
                    v42 = v41;
                    if (v39 < v41)
                    {
                      v39 = v42;
                      v38 = v37;
                    }

                    v37 = v40;
                  }

                  while (v40 != v103);
                }
              }

              v63 = 0;
              v64 = 0;
              v65 = 0;
              v43 = sub_100403D6C(&v63, v66, v67, v35);
              v44 = (v38 - v36) >> 3;
              v45 = v63 + 48 * v44;
              v46 = v64 - (v45 + 48);
              if (v64 != v45 + 48)
              {
                v43 = memmove(v63 + 48 * v44, v45 + 48, v64 - (v45 + 48));
              }

              v64 = &v45[v46];
              sub_100405114(v43);
              sub_1004076D0(v81, v69);
              if (v80 == 1)
              {
                if (__p)
                {
                  v79 = __p;
                  operator delete(__p);
                }

                if (v76)
                {
                  v77 = v76;
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
              }

              if (v92 == 1)
              {
                v47 = v90;
                if (v90 != v91)
                {
                  v48 = (v90 + 8);
                  if (v90 + 8 != v91)
                  {
                    v49 = *v90;
                    v50 = (v90 + 8);
                    do
                    {
                      v51 = *v50++;
                      v52 = v51;
                      if (v49 < v51)
                      {
                        v49 = v52;
                        v47 = v48;
                      }

                      v48 = v50;
                    }

                    while (v50 != v91);
                  }
                }

                if ((v104 & 1) == 0)
                {
                  sub_1000195BC();
                }

                v53 = v102;
                v54 = (v102 + 8);
                if (v102 != v103 && v54 != v103)
                {
                  v56 = *v102;
                  v57 = (v102 + 8);
                  do
                  {
                    v58 = *v57++;
                    v59 = v58;
                    if (v56 < v58)
                    {
                      v56 = v59;
                      v53 = v54;
                    }

                    v54 = v57;
                  }

                  while (v57 != v103);
                }

                if (v53 < v47)
                {
                  sub_100406054(v81);
                }
              }

              v19 = v63;
              if (v63)
              {
                v64 = v63;
                operator delete(v63);
              }

              v34 = v66;
            }
          }

          if (v34)
          {
            v67 = v34;
            operator delete(v34);
          }
        }
      }

      if (v92)
      {
        break;
      }

      if (v104)
      {
        v60 = v93;
        goto LABEL_101;
      }

      if (v116 == 1)
      {
        v60 = v105;
        goto LABEL_101;
      }

LABEL_102:
      if (v92 == 1)
      {
        if (v90)
        {
          v91 = v90;
          operator delete(v90);
        }

        if (v88)
        {
          v89 = v88;
          operator delete(v88);
        }

        if (v86)
        {
          v87 = v86;
          operator delete(v86);
        }

        if (v84)
        {
          v85 = v84;
          operator delete(v84);
        }

        v19 = v82;
        if (v82)
        {
          v83 = v82;
          operator delete(v82);
        }
      }

      if (v104 == 1)
      {
        if (v102)
        {
          v103 = v102;
          operator delete(v102);
        }

        if (v100)
        {
          v101 = v100;
          operator delete(v100);
        }

        if (v98)
        {
          v99 = v98;
          operator delete(v98);
        }

        if (v96)
        {
          v97 = v96;
          operator delete(v96);
        }

        v19 = v94;
        if (v94)
        {
          v95 = v94;
          operator delete(v94);
        }
      }

      if (v116 == 1)
      {
        if (v114)
        {
          v115 = v114;
          operator delete(v114);
        }

        if (v112)
        {
          v113 = v112;
          operator delete(v112);
        }

        if (v110)
        {
          v111 = v110;
          operator delete(v110);
        }

        if (v108)
        {
          v109 = v108;
          operator delete(v108);
        }

        v19 = v106;
        if (v106)
        {
          v107 = v106;
          operator delete(v106);
        }
      }

      v20 += 3;
      if (v20 == v21)
      {
        goto LABEL_136;
      }
    }

    v60 = v81;
LABEL_101:
    v19 = sub_1004060D8(&v121, v60);
    goto LABEL_102;
  }

LABEL_136:
  if (v121 == v122 || (sub_10040804C(v121, v122, 126 - 2 * __clz(0xCF3CF3CF3CF3CF3DLL * ((v122 - v121) >> 3)), 1), (*(v121 + 136) & 1) != 0))
  {
    v61 = 0;
    *a2 = 0;
  }

  else
  {
    sub_100407854(a2, v121);
    v61 = 1;
  }

  a2[168] = v61;
  if (v119)
  {
    v120 = v119;
    operator delete(v119);
  }

  v105[0] = &v121;
  sub_100407B04(v105);
LABEL_146:
  if (v124)
  {
    v125 = v124;
    operator delete(v124);
  }
}

void sub_100404E38(_Unwind_Exception *a1)
{
  v3 = *(v1 - 184);
  if (v3)
  {
    *(v1 - 176) = v3;
    operator delete(v3);
  }

  STACK[0x240] = v1 - 160;
  sub_100407B04(&STACK[0x240]);
  v4 = *(v1 - 136);
  if (v4)
  {
    *(v1 - 128) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void sub_100404EF0(uint64_t *a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, void *a4@<X8>)
{
  if ((a3 & 1) == 0)
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    return;
  }

  __p = 0;
  v39 = 0;
  v40 = 0;
  v6 = *a1;
  v7 = a1[1];
  if (*a1 == v7)
  {
    v9 = 0;
  }

  else
  {
    do
    {
      v8 = *(v6 + 40);
      v36 = *(v6 + 24);
      v37 = v8;
      sub_1004075C8(&__p, &v36);
      v6 += 48;
    }

    while (v6 != v7);
    v9 = __p;
    v10 = (__p + 24);
    if (__p != v39 && v10 != v39)
    {
      v12 = *__p;
      v13 = *__p;
      v14 = (__p + 24);
      v15 = __p;
      v16 = (__p + 24);
      do
      {
        v17 = *v16;
        v16 += 3;
        v18 = v17;
        if (v17 < v13)
        {
          v13 = v18;
          v15 = v14;
        }

        v14 = v16;
      }

      while (v16 != v39);
      v19 = *v15;
      v20 = (__p + 24);
      v21 = __p;
      v22 = (__p + 24);
      do
      {
        v23 = *v22;
        v22 += 3;
        v24 = v23;
        if (v12 < v23)
        {
          v12 = v24;
          v21 = v20;
        }

        v20 = v22;
      }

      while (v22 != v39);
      v25 = *v21;
      v26 = (__p + 24);
      v27 = __p;
      do
      {
        if (v26[1] < v27[1])
        {
          v27 = v26;
        }

        v26 += 3;
      }

      while (v26 != v39);
      v28 = v27[1];
      v29 = __p;
      do
      {
        if (v29[1] < v10[1])
        {
          v29 = v10;
        }

        v10 += 3;
      }

      while (v10 != v39);
      goto LABEL_28;
    }
  }

  v19 = *v9;
  v28 = v9[1];
  v25 = *v9;
  v29 = v9;
LABEL_28:
  v30 = v29[1];
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v31 = v19 + -2.0;
  v32 = v25 + 2.0 + 0.00000001;
  if (v19 + -2.0 < v32)
  {
    v33 = v28 + -2.0;
    v34 = v30 + 2.0 + 0.00000001;
    do
    {
      for (i = v33; i < v34; i = i + 7.5)
      {
        *&v36 = v31;
        *(&v36 + 1) = i;
        v37 = a2;
        sub_1004075C8(a4, &v36);
      }

      v31 = v31 + 7.5;
    }

    while (v31 < v32);
    v9 = __p;
  }

  if (v9)
  {
    v39 = v9;
    operator delete(v9);
  }
}

void sub_1004050E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100405114(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  v55 = v3;
  v56 = v4;
  v6 = v5;
  v8 = v7;
  v51 = v9;
  v53 = *v1;
  v54 = v1[1];
  v94 = 0x100000003;
  v93 = xmmword_10056EDA0;
  v92 = off_1009A8F78;
  v95 = &v96;
  sub_1003A8C00(&v92, 3, 1);
  sub_1003A8C50(&v92, 0.0);
  v10 = *v8;
  *sub_1003AFDBC(&v92, 0) = v10;
  v11 = *(v8 + 1);
  *sub_1003AFDBC(&v92, 1) = v11;
  *sub_1003AFDBC(&v92, 2) = v6;
  v89 = 0x10000000FLL;
  v88 = xmmword_100571B90;
  v87 = off_1009AAB20;
  v90 = &v91;
  sub_1003A8C00(&v87, 15, 1);
  sub_1003A8C50(&v87, 0.0);
  v52 = 0xAAAAAAAAAAAAAAABLL * ((v54 - v53) >> 4);
  if (v54 != v53)
  {
    v12 = 0;
    v13 = 0;
    if (v52 <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = 0xAAAAAAAAAAAAAAABLL * ((v54 - v53) >> 4);
    }

    do
    {
      v15 = &(*v2)[v12];
      v17 = v15[1];
      v16 = v15[2];
      *sub_1003AFDBC(&v87, v13++) = (v16 - v17) * 299792458.0;
      v12 += 24;
    }

    while (v14 != v13);
  }

  v84 = 0x100000003;
  v83 = xmmword_10056EDA0;
  v82 = off_1009A8F78;
  v85 = &v86;
  sub_1003A8C00(&v82, 3, 1);
  sub_1003A8C50(&v82, 1.0);
  if (v52 <= 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = 0xAAAAAAAAAAAAAAABLL * ((v54 - v53) >> 4);
  }

  v74 = 0x100000003;
  __p = off_1009A8F78;
  v73 = xmmword_10056EDA0;
  v75 = v76;
  *&v97[24] = 0x100000134;
  *v97 = off_1009A9168;
  *&v97[8] = xmmword_10056EEA0;
  v98 = &v99;
  v117 = 0x100000003;
  v115 = off_1009A8F78;
  v116 = xmmword_10056EDA0;
  v118 = v119;
  sub_1003AFEC0(&v82, &__p, v97, &v115, "2");
  if (v19 > 0.01)
  {
    v112 = 0x10000000FLL;
    v111 = xmmword_100571B90;
    v110 = off_1009AAB20;
    v113 = &v114;
    sub_1003A8C00(&v110, 15, 1);
    sub_1003A8C50(&v110, 0.0);
    *&v97[24] = 0x30000000FLL;
    *&v97[8] = xmmword_100571BA0;
    *v97 = off_1009AAC40;
    v98 = &v99;
    sub_1003A8C00(v97, 15, 3);
    sub_1003A8C50(v97, 0.0);
    if (v54 != v53)
    {
      v20 = 0;
      v21 = 0;
      do
      {
        v22 = &(*v2)[v20];
        v24 = v22[2];
        v23 = v22[3];
        v26 = v22[4];
        v25 = v22[5];
        v27 = *sub_1003AFDBC(&v92, 0);
        v28 = *sub_1003AFDBC(&v92, 1);
        v29 = v8[2];
        v30 = *sub_1003AFDBC(&v92, 2);
        v31 = sqrt((v23 - v27) * (v23 - v27) + (v26 - v28) * (v26 - v28) + (v25 - v29) * (v25 - v29));
        *sub_1003AFDBC(&v110, v21) = v31 + v30 + v55 * (v24 - *&v56);
        v32 = *sub_1003AFDBC(&v92, 0);
        *sub_1003A8DB0(v97, v21, 0) = -(v23 - v32) / v31;
        v33 = *sub_1003AFDBC(&v92, 1);
        *sub_1003A8DB0(v97, v21, 1) = -(v26 - v33) / v31;
        *sub_1003A8DB0(v97, v21++, 2) = 0x3FF0000000000000;
        v20 += 24;
      }

      while (v18 != v21);
    }

    sub_10040D854(&__p, *&v97[12], *&v97[8]);
    sub_1003A9464(v97, &__p);
    v79 = 0x300000003;
    v78 = xmmword_10056EDB0;
    v77 = off_1009A8FC0;
    v80 = &v81;
    sub_1003A90A8(&__p, v97, &v77);
    sub_10040D854(&__p, *&v97[12], *&v97[8]);
    sub_1003A9464(v97, &__p);
    v117 = 0x10000000FLL;
    v116 = xmmword_100571B90;
    v115 = off_1009AAB20;
    v118 = v119;
    sub_1003A920C(&v87, &v110, &v115);
    v69 = 0x100000003;
    v68 = xmmword_10056EDA0;
    v67 = off_1009A8F78;
    v70 = &v71;
    sub_1003A90A8(&__p, &v115, &v67);
    v64 = 0x300000003;
    v63 = xmmword_10056EDB0;
    v62 = off_1009A8FC0;
    v65 = &v66;
    v117 = 0x100000003;
    v116 = xmmword_10056EDA0;
    v115 = off_1009A9098;
    v118 = v119;
    v59 = 0x100000003;
    v57 = off_1009A9098;
    v58 = xmmword_10056EDA0;
    v60 = &v61;
    v74 = 0x10000000CLL;
    v73 = xmmword_10056EDD0;
    __p = off_1009A9120;
    v75 = v76;
    sub_1003A9668(&v77, &v115, &v57, &__p, &v62);
  }

  *v97 = 0;
  sub_100172550(&__p, v52, v97);
  if (v54 != v53)
  {
    v34 = 0;
    v35 = 0;
    do
    {
      v36 = &(*v2)[v34];
      v38 = v36[2];
      v37 = v36[3];
      v40 = v36[4];
      v39 = v36[5];
      v41 = *sub_1003AFDBC(&v92, 0);
      v42 = *sub_1003AFDBC(&v92, 1);
      v43 = v8[2];
      v44 = *sub_1003AFDBC(&v87, v35);
      v45 = sub_1003AFDBC(&v92, 2);
      *(__p + v35++) = v44 - (sqrt((v37 - v41) * (v37 - v41) + (v40 - v42) * (v40 - v42) + (v39 - v43) * (v39 - v43)) + *v45 + v55 * (v38 - *&v56));
      v34 += 24;
    }

    while (v18 != v35);
  }

  *v97 = *(*v2 + 2);
  *&v97[8] = *sub_1003AFDBC(&v92, 0);
  v46 = sub_1003AFDBC(&v92, 1);
  v47 = *(v8 + 2);
  *&v97[16] = *v46;
  *&v97[24] = v47;
  v98 = 0x7FEFFFFFFFFFFFFFLL;
  LOWORD(v57) = **v2;
  v100 = 0;
  v99 = 0uLL;
  sub_1001FE45C(&v99, &v57, &v57 + 1, 1);
  v115 = *sub_1003AFDBC(&v92, 2);
  v102 = 0;
  v101 = 0uLL;
  sub_100019AC4(&v101, &v115, &v116, 1uLL);
  v110 = v56;
  v104 = 0;
  v103 = 0uLL;
  sub_100019AC4(&v103, &v110, &v111, 1uLL);
  v105 = 0uLL;
  v106 = 0;
  v107 = 0;
  v109 = 0;
  v108 = 0uLL;
  sub_100012F38(&v108, __p, v73, (v73 - __p) >> 3);
  v48 = v100;
  *(v51 + 32) = v98;
  *(v51 + 56) = v48;
  v49 = v104;
  *(v51 + 80) = v102;
  v50 = *&v97[16];
  *v51 = *v97;
  *(v51 + 16) = v50;
  *(v51 + 40) = v99;
  v99 = 0uLL;
  *(v51 + 64) = v101;
  v100 = 0;
  v101 = 0uLL;
  v102 = 0;
  *(v51 + 88) = v103;
  *(v51 + 104) = v49;
  v103 = 0uLL;
  *(v51 + 112) = v105;
  *(v51 + 128) = v106;
  v104 = 0;
  v105 = 0uLL;
  v106 = 0;
  *(v51 + 136) = v107;
  *(v51 + 144) = v108;
  *(v51 + 160) = v109;
  *(v51 + 168) = 1;
  if (__p)
  {
    *&v73 = __p;
    operator delete(__p);
  }
}

void sub_100405F70(_Unwind_Exception *a1)
{
  v2 = STACK[0x620];
  if (STACK[0x620])
  {
    STACK[0x628] = v2;
    operator delete(v2);
  }

  v3 = STACK[0x608];
  if (STACK[0x608])
  {
    STACK[0x610] = v3;
    operator delete(v3);
  }

  v4 = STACK[0x5F0];
  if (STACK[0x5F0])
  {
    STACK[0x5F8] = v4;
    operator delete(v4);
  }

  v5 = STACK[0x5D8];
  if (STACK[0x5D8])
  {
    STACK[0x5E0] = v5;
    operator delete(v5);
  }

  v6 = STACK[0x290];
  if (STACK[0x290])
  {
    STACK[0x298] = v6;
    operator delete(v6);
  }

  _Unwind_Resume(a1);
}

void sub_100406054(uint64_t a1)
{
  if (*(a1 + 168) == 1)
  {
    v2 = *(a1 + 144);
    if (v2)
    {
      *(a1 + 152) = v2;
      operator delete(v2);
    }

    v3 = *(a1 + 112);
    if (v3)
    {
      *(a1 + 120) = v3;
      operator delete(v3);
    }

    v4 = *(a1 + 88);
    if (v4)
    {
      *(a1 + 96) = v4;
      operator delete(v4);
    }

    v5 = *(a1 + 64);
    if (v5)
    {
      *(a1 + 72) = v5;
      operator delete(v5);
    }

    v6 = *(a1 + 40);
    if (v6)
    {
      *(a1 + 48) = v6;
      operator delete(v6);
    }

    *(a1 + 168) = 0;
  }
}

uint64_t sub_1004060D8(unint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_100407C34(a1, a2);
  }

  else
  {
    sub_100407854(a1[1], a2);
    result = v3 + 168;
    a1[1] = v3 + 168;
  }

  a1[1] = result;
  return result;
}

void sub_10040612C(uint64_t *a1@<X1>, _BYTE *a2@<X8>, uint64_t a3@<D0>)
{
  v4 = *a1;
  v5 = a1[1];
  v7 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - v4) >> 3);
  if (v7 <= 1)
  {
    *a2 = 0;
    a2[168] = 0;
    return;
  }

  v145 = 0;
  v144 = 0;
  v146 = 0;
  sub_100409F84(&v144, v4, v5, v7);
  v8 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v145 - v144) >> 3));
  if (v145 == v144)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  sub_10040A128(v144, v145, v9, 1);
  v10 = v144;
  v12 = v144[1].n128_u64[0];
  v11 = v144[1].n128_u64[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v11 - v12) >> 4) >= 2)
  {
    v13 = v144[3].n128_u64[1];
    v14 = v144[4].n128_u64[0];
    v15 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v13) >> 4);
    if (v15 > 1 && v15 - 0x5555555555555555 * ((v11 - v12) >> 4) < 0x10)
    {
      if (v12 == v11)
      {
LABEL_18:
        if (v13 == v14)
        {
LABEL_25:
          v28 = *(v12 + 8);
          v29 = *(v12 + 16);
          v30 = *(v13 + 8);
          v31 = *(v13 + 16);
          v143 = 0;
          __dst = 0;
          v141 = 0;
          sub_1004073BC(&v141, v15 - 0x5555555555555555 * ((v11 - v144[1].n128_u64[0]) >> 4));
          sub_10040D054(&v141, __dst, v10[1].n128_u64[0], v10[1].n128_u64[1], 0xAAAAAAAAAAAAAAABLL * ((v10[1].n128_u64[1] - v10[1].n128_u64[0]) >> 4));
          sub_10040D054(&v141, __dst, v10[3].n128_u64[1], v10[4].n128_u64[0], 0xAAAAAAAAAAAAAAABLL * ((v10[4].n128_u64[0] - v10[3].n128_u64[1]) >> 4));
          v139 = 0uLL;
          v140 = 0;
          sub_100404EF0(&v141, a3, 1, &v137);
          v79 = v10[1].n128_u64[1];
          v81 = v10[1].n128_u64[0];
          v78 = v10[4].n128_u64[0];
          v80 = v10[3].n128_u64[1];
          v32 = 0xAAAAAAAAAAAAAAABLL * ((v78 - v80) >> 4);
          if (0xAAAAAAAAAAAAAAABLL * ((__dst - v141) >> 4) != v32 - 0x5555555555555555 * ((v79 - v81) >> 4))
          {
            __assert_rtn("processMeasurements", "IterativeLeastSquareEstimator.cpp", 161, "N == N0 + N1");
          }

          v33 = v137;
          v75 = v138;
          if (v137 != v138)
          {
            v84 = *(v80 + 16);
            v85 = *(v81 + 16);
            v82 = v10[2].n128_f64[1];
            v83 = v10->n128_f64[0];
            v74 = ((v31 - (v30 + 0.000000100069229)) * 299792458.0 + (v31 - v30) * 299792458.0) * 0.5;
            if (0xAAAAAAAAAAAAAAABLL * ((v79 - v81) >> 4) <= 1)
            {
              v34 = 1;
            }

            else
            {
              v34 = 0xAAAAAAAAAAAAAAABLL * ((v79 - v81) >> 4);
            }

            if (v32 <= 1)
            {
              v32 = 1;
            }

            v77 = v32;
            v35 = xmmword_10056ED80;
            do
            {
              v37 = *v33;
              v36 = v33[1];
              v76 = v33;
              v134 = 0x100000004;
              v132 = off_1009A8EE8;
              v133 = v35;
              v135 = &v136;
              sub_1003A8C00(&v132, 4, 1);
              sub_1003A8C50(&v132, 0.0);
              *sub_1003AFDBC(&v132, 0) = v37;
              *sub_1003AFDBC(&v132, 1) = v36;
              *sub_1003AFDBC(&v132, 2) = ((v29 - (v28 + 0.000000100069229)) * 299792458.0 + (v29 - v28) * 299792458.0) * 0.5;
              *sub_1003AFDBC(&v132, 3) = v74;
              if (0.01 < 1.79769313e308)
              {
                v129 = 0x10000000FLL;
                v128 = xmmword_100571B90;
                v127 = off_1009AAB20;
                v130 = &v131;
                sub_1003A8C00(&v127, 15, 1);
                sub_1003A8C50(&v127, 0.0);
                v124 = 0x10000000FLL;
                v123 = xmmword_100571B90;
                v122 = off_1009AAB20;
                v125 = &v126;
                sub_1003A8C00(&v122, 15, 1);
                sub_1003A8C50(&v122, 0.0);
                v104 = 0x40000000FLL;
                v102 = off_1009AAB68;
                v103 = xmmword_100571BB0;
                v105 = &v106;
                sub_1003A8C00(&v102, 15, 4);
                sub_1003A8C50(&v102, 0.0);
                if (v79 != v81)
                {
                  v38 = 0;
                  v39 = 0;
                  do
                  {
                    v40 = v10[1].n128_u64[0] + v38;
                    v42 = *(v40 + 8);
                    v41 = *(v40 + 16);
                    *sub_1003AFDBC(&v127, v39) = (v41 - v42) * 299792458.0;
                    v43 = (v10[1].n128_u64[0] + v38);
                    v45 = v43[2];
                    v44 = v43[3];
                    v46 = v43[4];
                    v47 = v43[5];
                    v48 = *sub_1003AFDBC(&v132, 0);
                    v49 = *sub_1003AFDBC(&v132, 1);
                    v50 = *sub_1003AFDBC(&v132, 2);
                    v51 = sqrt((v47 - *&a3) * (v47 - *&a3) + (v44 - v48) * (v44 - v48) + (v46 - v49) * (v46 - v49));
                    *sub_1003AFDBC(&v122, v39) = v51 + v50 + v83 * (v45 - v85);
                    v52 = *sub_1003AFDBC(&v132, 0);
                    *sub_1003A8DB0(&v102, v39, 0) = -(v44 - v52) / v51;
                    v53 = *sub_1003AFDBC(&v132, 1);
                    *sub_1003A8DB0(&v102, v39, 1) = -(v46 - v53) / v51;
                    *sub_1003A8DB0(&v102, v39, 2) = 0x3FF0000000000000;
                    *sub_1003A8DB0(&v102, v39++, 3) = 0;
                    v38 += 48;
                  }

                  while (v34 != v39);
                }

                if (v78 != v80)
                {
                  v54 = 0;
                  v55 = v77;
                  v56 = -1431655765 * ((v79 - v81) >> 4);
                  do
                  {
                    v57 = v10[3].n128_u64[1] + v54;
                    v59 = *(v57 + 8);
                    v58 = *(v57 + 16);
                    *sub_1003AFDBC(&v127, v56) = (v58 - v59) * 299792458.0;
                    v60 = (v10[3].n128_u64[1] + v54);
                    v62 = v60[2];
                    v61 = v60[3];
                    v63 = v60[4];
                    v64 = v60[5];
                    v65 = *sub_1003AFDBC(&v132, 0);
                    v66 = *sub_1003AFDBC(&v132, 1);
                    v67 = *sub_1003AFDBC(&v132, 3);
                    v68 = sqrt((v64 - *&a3) * (v64 - *&a3) + (v61 - v65) * (v61 - v65) + (v63 - v66) * (v63 - v66));
                    *sub_1003AFDBC(&v122, v56) = v68 + v67 + v82 * (v62 - v84);
                    v69 = *sub_1003AFDBC(&v132, 0);
                    *sub_1003A8DB0(&v102, v56, 0) = -(v61 - v69) / v68;
                    v70 = *sub_1003AFDBC(&v132, 1);
                    *sub_1003A8DB0(&v102, v56, 1) = -(v63 - v70) / v68;
                    *sub_1003A8DB0(&v102, v56, 2) = 0;
                    *sub_1003A8DB0(&v102, v56++, 3) = 0x3FF0000000000000;
                    v54 += 48;
                    --v55;
                  }

                  while (v55);
                }

                sub_10040D3DC(&v152, DWORD1(v103), v103);
                sub_1003A9464(&v102, &v152);
                v159 = 0x400000004;
                v157 = off_1009A8F30;
                v158 = xmmword_10056ED90;
                v160 = &v161;
                sub_1003A90A8(&v152, &v102, &v157);
                sub_10040D3DC(&v152, DWORD1(v103), v103);
                sub_1003A9464(&v102, &v152);
                v149 = 0x10000000FLL;
                v148 = xmmword_100571B90;
                v147 = off_1009AAB20;
                v150 = v151;
                sub_1003A920C(&v127, &v122, &v147);
                v99 = 0x100000004;
                v98 = xmmword_10056ED80;
                v97 = off_1009A8EE8;
                v100 = &v101;
                sub_1003A90A8(&v152, &v147, &v97);
                v149 = 0x400000004;
                v148 = xmmword_10056ED90;
                v147 = off_1009A8F30;
                v150 = v151;
                v94 = 0x100000004;
                v93 = xmmword_10056ED80;
                v92 = off_1009A9658;
                v95 = &v96;
                v89 = 0x100000004;
                v87 = off_1009A9658;
                v88 = xmmword_10056ED80;
                v90 = &v91;
                v154 = 0x100000010;
                v153 = xmmword_10056F210;
                v152 = off_1009A96A0;
                v155 = &v156;
                sub_1003A9668(&v157, &v92, &v87, &v152, &v147);
              }

              v102 = *(v10[1].n128_u64[0] + 16);
              *&v103 = *sub_1003AFDBC(&v132, 0);
              *(&v103 + 1) = *sub_1003AFDBC(&v132, 1);
              v104 = a3;
              v105 = 0x7FEFFFFFFFFFFFFFLL;
              LOWORD(v92) = v10->n128_u16[4];
              WORD1(v92) = v10[3].n128_u16[0];
              v107 = 0;
              v108 = 0;
              v106 = 0;
              sub_1001FE45C(&v106, &v92, &v92 + 2, 2);
              v152 = *sub_1003AFDBC(&v132, 2);
              *&v153 = *sub_1003AFDBC(&v132, 3);
              v110 = 0;
              v111 = 0;
              v109 = 0;
              sub_100019AC4(&v109, &v152, &v153 + 1, 2uLL);
              v157 = *&v85;
              *&v158 = v84;
              v113 = 0;
              v114 = 0;
              v112 = 0;
              sub_100019AC4(&v112, &v157, &v158 + 1, 2uLL);
              v71 = v10[2].n128_u64[1];
              v147 = v10->n128_u64[0];
              *&v148 = v71;
              v116 = 0;
              v117 = 0;
              v115 = 0;
              sub_100019AC4(&v115, &v147, &v148 + 1, 2uLL);
              v118 = 0;
              v120 = 0;
              v121 = 0;
              __p = 0;
              sub_1004060D8(&v139, &v102);
              if (__p)
              {
                v120 = __p;
                operator delete(__p);
              }

              if (v115)
              {
                v116 = v115;
                operator delete(v115);
              }

              if (v112)
              {
                v113 = v112;
                operator delete(v112);
              }

              if (v109)
              {
                v110 = v109;
                operator delete(v109);
              }

              if (v106)
              {
                v107 = v106;
                operator delete(v106);
              }

              v33 = v76 + 3;
              v35 = xmmword_10056ED80;
            }

            while (v76 + 3 != v75);
          }

          if (v139 == *(&v139 + 1))
          {
            v73 = 0;
            v72 = a2;
            *a2 = 0;
          }

          else
          {
            sub_100407550(v139, *(&v139 + 1));
            v72 = sub_100407854(a2, v139);
            v73 = 1;
          }

          v72[168] = v73;
          if (v137)
          {
            v138 = v137;
            operator delete(v137);
          }

          v102 = &v139;
          sub_100407B04(&v102);
          if (v141)
          {
            __dst = v141;
            operator delete(v141);
          }

          goto LABEL_10;
        }

        v22 = 2.22507386e-308;
        v23 = 2.22507386e-308;
        v24 = v144[3].n128_u64[1];
        while (1)
        {
          v25 = v23;
          v26 = v22;
          v22 = *(v24 + 8);
          v23 = *(v24 + 16);
          if (v22 <= v26 || v23 <= v25)
          {
            break;
          }

          v24 += 48;
          if (v24 == v14)
          {
            goto LABEL_25;
          }
        }
      }

      else
      {
        v16 = 2.22507386e-308;
        v17 = 2.22507386e-308;
        v18 = v144[1].n128_u64[0];
        while (1)
        {
          v19 = v17;
          v20 = v16;
          v16 = *(v18 + 8);
          v17 = *(v18 + 16);
          if (v16 <= v20 || v17 <= v19)
          {
            break;
          }

          v18 += 48;
          if (v18 == v11)
          {
            goto LABEL_18;
          }
        }
      }
    }
  }

  *a2 = 0;
  a2[168] = 0;
LABEL_10:
  v102 = &v144;
  sub_100019848(&v102);
}

void sub_100407250(_Unwind_Exception *a1)
{
  v2 = STACK[0x6E8];
  if (STACK[0x6E8])
  {
    STACK[0x6F0] = v2;
    operator delete(v2);
  }

  STACK[0x358] = &STACK[0x700];
  sub_100407B04(&STACK[0x358]);
  v3 = STACK[0x720];
  if (STACK[0x720])
  {
    STACK[0x728] = v3;
    operator delete(v3);
  }

  STACK[0x358] = &STACK[0x738];
  sub_100019848(&STACK[0x358]);
  _Unwind_Resume(a1);
}

void sub_1004073BC(void *a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) < a2)
  {
    if (a2 < 0x555555555555556)
    {
      sub_100403898(a1, a2);
    }

    sub_100019B38();
  }
}

void *sub_1004074DC(void *a1)
{
  v2 = a1[18];
  if (v2)
  {
    a1[19] = v2;
    operator delete(v2);
  }

  v3 = a1[14];
  if (v3)
  {
    a1[15] = v3;
    operator delete(v3);
  }

  v4 = a1[11];
  if (v4)
  {
    a1[12] = v4;
    operator delete(v4);
  }

  v5 = a1[8];
  if (v5)
  {
    a1[9] = v5;
    operator delete(v5);
  }

  v6 = a1[5];
  if (v6)
  {
    a1[6] = v6;
    operator delete(v6);
  }

  return a1;
}

void sub_100407550(__int128 *a1, double *a2)
{
  v2 = 126 - 2 * __clz(0xCF3CF3CF3CF3CF3DLL * ((a2 - a1) >> 3));
  if (a2 == a1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  sub_10040804C(a1, a2, v3, 1);
}

void sub_1004075C8(uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_100019B38();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_1003C67F0(a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    v7 = 24 * v8 + 24;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 24;
  }

  *(a1 + 8) = v7;
}

__n128 sub_1004076D0(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 168) == *(a2 + 168))
  {
    if (*(a1 + 168))
    {
      v4 = *a2;
      v5 = a2[1];
      *(a1 + 32) = *(a2 + 4);
      *a1 = v4;
      *(a1 + 16) = v5;
      sub_10016D9A8(a1 + 40, (a2 + 40));
      sub_10016D9A8(a1 + 64, a2 + 4);
      sub_10016D9A8(a1 + 88, (a2 + 88));
      sub_10016D9A8(a1 + 112, a2 + 7);
      *(a1 + 136) = *(a2 + 136);

      result.n128_u64[0] = sub_10016D9A8(a1 + 144, a2 + 9).n128_u64[0];
    }
  }

  else if (*(a1 + 168))
  {

    sub_100406054(a1);
  }

  else
  {
    v7 = a2[1];
    v8 = *(a2 + 4);
    *a1 = *a2;
    *(a1 + 16) = v7;
    *(a1 + 32) = v8;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 7);
    *(a2 + 40) = 0uLL;
    *(a2 + 7) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 64) = a2[4];
    *(a1 + 80) = *(a2 + 10);
    a2[4] = 0uLL;
    *(a2 + 10) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = *(a2 + 13);
    *(a2 + 88) = 0uLL;
    *(a2 + 13) = 0;
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    *(a1 + 112) = a2[7];
    *(a1 + 128) = *(a2 + 16);
    *(a2 + 120) = 0uLL;
    *(a2 + 14) = 0;
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 152) = 0;
    *(a1 + 160) = 0;
    *(a1 + 144) = 0;
    result = a2[9];
    *(a1 + 144) = result;
    *(a1 + 160) = *(a2 + 20);
    *(a2 + 152) = 0uLL;
    *(a2 + 18) = 0;
    *(a1 + 168) = 1;
  }

  return result;
}

uint64_t sub_100407854(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  *(a1 + 32) = *(a2 + 4);
  *a1 = v4;
  *(a1 + 16) = v5;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  sub_1001FBC68((a1 + 40), *(a2 + 5), *(a2 + 6), (*(a2 + 6) - *(a2 + 5)) >> 1);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  sub_100012F38((a1 + 64), *(a2 + 8), *(a2 + 9), (*(a2 + 9) - *(a2 + 8)) >> 3);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  sub_100012F38((a1 + 88), *(a2 + 11), *(a2 + 12), (*(a2 + 12) - *(a2 + 11)) >> 3);
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  sub_100012F38((a1 + 112), *(a2 + 14), *(a2 + 15), (*(a2 + 15) - *(a2 + 14)) >> 3);
  v6 = *(a2 + 136);
  *(a1 + 144) = 0;
  *(a1 + 136) = v6;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  sub_100012F38((a1 + 144), *(a2 + 18), *(a2 + 19), (*(a2 + 19) - *(a2 + 18)) >> 3);
  return a1;
}

void sub_100407944(_Unwind_Exception *exception_object)
{
  v7 = *v5;
  if (*v5)
  {
    v1[15] = v7;
    operator delete(v7);
  }

  v8 = *v4;
  if (*v4)
  {
    v1[12] = v8;
    operator delete(v8);
  }

  v9 = *v3;
  if (*v3)
  {
    v1[9] = v9;
    operator delete(v9);
  }

  v10 = *v2;
  if (*v2)
  {
    v1[6] = v10;
    operator delete(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1004079A8(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 4) < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (a4 <= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 4);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x2AAAAAAAAAAAAAALL)
      {
        v11 = 0x555555555555555;
      }

      else
      {
        v11 = v10;
      }

      sub_100403DE8(v6, v11);
    }

    sub_100019B38();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 4) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

void sub_100407B04(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_100407B58(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_100407B58(uint64_t result, void *a2)
{
  for (i = *(result + 8); i != a2; sub_100407BAC(result, i))
  {
    i -= 21;
  }

  *(result + 8) = a2;
}

void sub_100407BAC(uint64_t a1, void *a2)
{
  v3 = a2[18];
  if (v3)
  {
    a2[19] = v3;
    operator delete(v3);
  }

  v4 = a2[14];
  if (v4)
  {
    a2[15] = v4;
    operator delete(v4);
  }

  v5 = a2[11];
  if (v5)
  {
    a2[12] = v5;
    operator delete(v5);
  }

  v6 = a2[8];
  if (v6)
  {
    a2[9] = v6;
    operator delete(v6);
  }

  v7 = a2[5];
  if (v7)
  {
    a2[6] = v7;

    operator delete(v7);
  }
}

uint64_t sub_100407C34(unint64_t *a1, __int128 *a2)
{
  v2 = 0xCF3CF3CF3CF3CF3DLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x186186186186186)
  {
    sub_100019B38();
  }

  if (0x9E79E79E79E79E7ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x9E79E79E79E79E7ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCF3CF3CF3CF3CF3DLL * ((a1[2] - *a1) >> 3) >= 0xC30C30C30C30C3)
  {
    v6 = 0x186186186186186;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_100407D7C(a1, v6);
  }

  v13 = 0;
  v14 = 168 * v2;
  sub_100407854(168 * v2, a2);
  v15 = 168 * v2 + 168;
  v7 = a1[1];
  v8 = 168 * v2 + *a1 - v7;
  sub_100407DD8(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_100407FCC(&v13);
  return v12;
}

void sub_100407D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100407FCC(va);
  _Unwind_Resume(a1);
}

void sub_100407D7C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x186186186186187)
  {
    operator new();
  }

  sub_100013B04();
}

uint64_t sub_100407DD8(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *(v7 + 1);
      v9 = v7[4];
      *a4 = *v7;
      *(a4 + 16) = v8;
      *(a4 + 32) = v9;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 56) = 0;
      *(a4 + 40) = *(v7 + 5);
      *(a4 + 56) = v7[7];
      v7[5] = 0;
      v7[6] = 0;
      v7[7] = 0;
      *(a4 + 64) = 0;
      *(a4 + 72) = 0;
      *(a4 + 80) = 0;
      *(a4 + 64) = *(v7 + 4);
      *(a4 + 80) = v7[10];
      v7[8] = 0;
      v7[9] = 0;
      v7[10] = 0;
      *(a4 + 88) = 0;
      *(a4 + 96) = 0;
      *(a4 + 104) = 0;
      *(a4 + 88) = *(v7 + 11);
      *(a4 + 104) = v7[13];
      v7[11] = 0;
      v7[12] = 0;
      v7[13] = 0;
      *(a4 + 112) = 0;
      *(a4 + 120) = 0;
      *(a4 + 128) = 0;
      *(a4 + 112) = *(v7 + 7);
      *(a4 + 128) = v7[16];
      v7[15] = 0;
      v7[16] = 0;
      v7[14] = 0;
      *(a4 + 136) = *(v7 + 136);
      *(a4 + 152) = 0;
      *(a4 + 160) = 0;
      *(a4 + 144) = 0;
      *(a4 + 144) = *(v7 + 9);
      *(a4 + 160) = v7[20];
      v7[18] = 0;
      v7[19] = 0;
      v7[20] = 0;
      v7 += 21;
      a4 += 168;
    }

    while (v7 != a3);
    v14 = a4;
    v12 = 1;
    while (v5 != a3)
    {
      sub_100407BAC(a1, v5);
      v5 += 21;
    }
  }

  return sub_100407F40(v11);
}

uint64_t sub_100407F40(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_100407F78(a1);
  }

  return a1;
}

void sub_100407F78(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 21;
      sub_100407BAC(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t sub_100407FCC(uint64_t a1)
{
  sub_100408004(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100408004(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 168;
    sub_100407BAC(v5, (v4 - 168));
  }
}

void sub_10040804C(__int128 *a1, double *a2, uint64_t a3, char a4)
{
LABEL_1:
  v208 = a2 - 42;
  v209 = (a2 - 21);
  v207 = a2 - 63;
  v7 = a1;
  v274 = a2;
  while (1)
  {
    a1 = v7;
    v8 = a2 - v7;
    v9 = 0xCF3CF3CF3CF3CF3DLL * ((a2 - v7) >> 3);
    v10 = v9 - 2;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return;
      }

      if (v9 == 2)
      {
        if (*(a2 - 32) == *(v7 + 136))
        {
          v76 = *(a2 - 17) < *(v7 + 4);
        }

        else
        {
          v76 = *(a2 - 32) == 0;
        }

        if (v76)
        {
          v77 = v7;
          v78 = v209;
LABEL_118:

          sub_100409DB4(v77, v78);
          return;
        }

        return;
      }

      goto LABEL_9;
    }

    if (v9 == 3)
    {

      sub_100409634(v7, v7 + 168, v209);
      return;
    }

    if (v9 == 4)
    {
      break;
    }

    if (v9 == 5)
    {

      sub_100409764(v7, v7 + 168, (v7 + 21), v7 + 504, v209);
      return;
    }

LABEL_9:
    if (v8 <= 4031)
    {
      v82 = v7 + 21;
      v84 = v7 == a2 || v82 == a2;
      if (a4)
      {
        if (!v84)
        {
          v85 = 0;
          v86 = v7;
          do
          {
            v87 = v82;
            v88 = *(v86 + 304);
            v89 = *(v86 + 304) == 0;
            if (v88 == *(v86 + 136))
            {
              v89 = *(v86 + 25) < *(v86 + 4);
            }

            if (v89)
            {
              v279 = *v87;
              v285 = *(v87 + 1);
              v90 = v87[4];
              v236 = *(v86 + 26);
              v230 = *(v86 + 216);
              *(v86 + 26) = 0;
              *(v86 + 27) = 0;
              v91 = *(v86 + 29);
              v242 = v86[15];
              *(v86 + 28) = 0;
              *(v86 + 29) = 0;
              *(v86 + 30) = 0;
              *(v86 + 31) = 0;
              v92 = *(v86 + 32);
              v93 = *(v86 + 264);
              *(v86 + 32) = 0;
              *(v86 + 33) = 0;
              v94 = *(v86 + 35);
              v256 = v93;
              v263 = v86[18];
              *(v86 + 34) = 0;
              *(v86 + 35) = 0;
              *(v86 + 36) = 0;
              *(v86 + 37) = 0;
              v95 = *(v86 + 39);
              v269 = v86[20];
              *(v86 + 39) = 0;
              *(v86 + 40) = 0;
              *(v86 + 41) = 0;
              v96 = v85;
              v249 = v94;
              while (1)
              {
                v97 = v96;
                v98 = a1 + v96;
                v99 = *(a1 + v96 + 16);
                *(v98 + 168) = *(a1 + v96);
                *(v98 + 184) = v99;
                *(v98 + 25) = *(a1 + v96 + 32);
                sub_10016D9A8(a1 + v96 + 208, (a1 + v96 + 40));
                sub_10016D9A8((v98 + 232), v98 + 4);
                sub_10016D9A8((v98 + 256), (v98 + 88));
                sub_10016D9A8((v98 + 280), v98 + 7);
                v98[304] = v98[136];
                sub_10016D9A8((v98 + 312), v98 + 9);
                if (!v97)
                {
                  break;
                }

                if (v88 == *(v98 - 32))
                {
                  v100 = v90 < *(v98 - 17);
                }

                else
                {
                  v100 = v88 == 0;
                }

                v96 = v97 - 168;
                if (!v100)
                {
                  v101 = (a1 + v97);
                  goto LABEL_157;
                }
              }

              v101 = a1;
LABEL_157:
              *v101 = v279;
              v101[1] = v285;
              *(v101 + 4) = v90;
              v102 = *(v98 + 5);
              if (v102)
              {
                *(v101 + 6) = v102;
                operator delete(v102);
                v103 = a1 + v97;
                *(v103 + 6) = 0;
                *(v103 + 7) = 0;
              }

              *(v98 + 5) = v236;
              v101[3] = v230;
              v104 = *(v98 + 8);
              if (v104)
              {
                *(v101 + 9) = v104;
                operator delete(v104);
                v105 = a1 + v97;
                *(v105 + 9) = 0;
                *(v105 + 10) = 0;
              }

              *(v98 + 8) = v91;
              *(v101 + 72) = v242;
              v106 = *(v98 + 11);
              if (v106)
              {
                *(v101 + 12) = v106;
                operator delete(v106);
                v107 = a1 + v97;
                *(v107 + 12) = 0;
                *(v107 + 13) = 0;
              }

              *(v98 + 11) = v92;
              v101[6] = v256;
              v108 = *(v98 + 14);
              if (v108)
              {
                *(v101 + 15) = v108;
                operator delete(v108);
                v109 = a1 + v97;
                *(v109 + 15) = 0;
                *(v109 + 16) = 0;
              }

              *(v98 + 14) = v249;
              *(v101 + 120) = v263;
              *(v101 + 136) = v88;
              v110 = *(v98 + 18);
              if (v110)
              {
                *(v101 + 19) = v110;
                operator delete(v110);
                v111 = a1 + v97;
                *(v111 + 19) = 0;
                *(v111 + 20) = 0;
              }

              *(v98 + 18) = v95;
              *(v101 + 152) = v269;
              a2 = v274;
            }

            v82 = v87 + 21;
            v85 += 168;
            v86 = v87;
          }

          while (v87 + 21 != a2);
        }
      }

      else if (!v84)
      {
        v183 = v7 - 136;
        do
        {
          v184 = v82;
          v185 = *(a1 + 304);
          v186 = *(a1 + 304) == 0;
          if (v185 == *(a1 + 136))
          {
            v186 = *(a1 + 25) < *(a1 + 4);
          }

          if (v186)
          {
            v187 = a1 + 35;
            v282 = *v82;
            v288 = *(v82 + 1);
            v188 = v82[4];
            v189 = a1[13];
            v190 = *(a1 + 28);
            *(a1 + 26) = 0;
            *(a1 + 27) = 0;
            v246 = v189;
            v253 = *(a1 + 232);
            v191 = *(a1 + 31);
            *(a1 + 28) = 0;
            *(a1 + 29) = 0;
            *(a1 + 30) = 0;
            *(a1 + 31) = 0;
            v192 = a1[16];
            v193 = *(a1 + 34);
            *(a1 + 32) = 0;
            *(a1 + 33) = 0;
            *(a1 + 34) = 0;
            v260 = v192;
            v267 = *(a1 + 280);
            v194 = *(a1 + 37);
            *(a1 + 35) = 0;
            *(a1 + 36) = 0;
            *(a1 + 37) = 0;
            v273 = *(a1 + 312);
            v195 = *(a1 + 41);
            v187[4] = 0;
            v187[5] = 0;
            v187[6] = 0;
            v196 = v183;
            do
            {
              v197 = *(v196 + 152);
              *(v196 + 19) = *(v196 + 136);
              *(v196 + 20) = v197;
              *(v196 + 42) = *(v196 + 21);
              sub_10016D9A8((v196 + 344), v196 + 11);
              sub_10016D9A8((v196 + 368), (v196 + 200));
              sub_10016D9A8((v196 + 392), v196 + 14);
              sub_10016D9A8((v196 + 416), (v196 + 248));
              v196[440] = v196[272];
              sub_10016D9A8((v196 + 448), (v196 + 280));
              v198 = v196[104];
              v199 = *v196;
              v196 -= 168;
              v200 = v188 < v199;
              if (v185 == v198)
              {
                v201 = v200;
              }

              else
              {
                v201 = v185 == 0;
              }
            }

            while (v201);
            *(v196 + 19) = v282;
            *(v196 + 20) = v288;
            *(v196 + 42) = v188;
            v202 = *(v196 + 43);
            if (v202)
            {
              *(v196 + 44) = v202;
              operator delete(v202);
            }

            *(v196 + 344) = v246;
            *(v196 + 45) = v190;
            v203 = *(v196 + 46);
            if (v203)
            {
              *(v196 + 47) = v203;
              operator delete(v203);
            }

            *(v196 + 23) = v253;
            *(v196 + 48) = v191;
            v204 = *(v196 + 49);
            if (v204)
            {
              *(v196 + 50) = v204;
              operator delete(v204);
            }

            *(v196 + 392) = v260;
            *(v196 + 51) = v193;
            v205 = *(v196 + 52);
            if (v205)
            {
              *(v196 + 53) = v205;
              operator delete(v205);
            }

            *(v196 + 26) = v267;
            *(v196 + 54) = v194;
            v196[440] = v185;
            v206 = *(v196 + 56);
            a2 = v274;
            if (v206)
            {
              *(v196 + 57) = v206;
              operator delete(v206);
            }

            *(v196 + 28) = v273;
            *(v196 + 58) = v195;
          }

          v82 = v184 + 21;
          v183 += 168;
          a1 = v184;
        }

        while (v184 + 21 != a2);
      }

      return;
    }

    if (!a3)
    {
      if (v7 != a2)
      {
        v112 = v10 >> 1;
        v113 = v10 >> 1;
        do
        {
          v114 = v113;
          if (v112 >= v113)
          {
            v115 = (2 * v113) | 1;
            v116 = a1 + 168 * v115;
            if (2 * v114 + 2 < v9)
            {
              v117 = v116[136] == v116[304] ? *(v116 + 4) < *(v116 + 25) : v116[136] == 0;
              v118 = !v117;
              v119 = v117 ? 168 : 0;
              v116 += v119;
              if (!v118)
              {
                v115 = 2 * v114 + 2;
              }
            }

            v120 = a1 + 168 * v114;
            v121 = v120[136];
            v122 = *(v120 + 4);
            if (v116[136] == v121)
            {
              v123 = *(v116 + 4) < v122;
            }

            else
            {
              v123 = v116[136] == 0;
            }

            if (!v123)
            {
              v280 = *v120;
              v286 = *(v120 + 1);
              v222 = *(v120 + 40);
              v218 = *(v120 + 7);
              *(v120 + 5) = 0;
              *(v120 + 6) = 0;
              v231 = *(v120 + 4);
              v226 = *(v120 + 10);
              *(v120 + 7) = 0;
              *(v120 + 8) = 0;
              *(v120 + 9) = 0;
              *(v120 + 10) = 0;
              v243 = *(v120 + 88);
              v237 = *(v120 + 13);
              *(v120 + 11) = 0;
              *(v120 + 12) = 0;
              v257 = *(v120 + 7);
              v250 = *(v120 + 16);
              *(v120 + 13) = 0;
              *(v120 + 14) = 0;
              *(v120 + 15) = 0;
              *(v120 + 16) = 0;
              v270 = *(v120 + 9);
              v264 = *(v120 + 20);
              *(v120 + 18) = 0;
              *(v120 + 19) = 0;
              *(v120 + 20) = 0;
              do
              {
                v124 = v116;
                v125 = *v116;
                v126 = *(v116 + 1);
                *(v120 + 4) = *(v116 + 4);
                *v120 = v125;
                *(v120 + 1) = v126;
                sub_10016D9A8((v120 + 40), (v116 + 40));
                sub_10016D9A8((v120 + 64), v124 + 4);
                sub_10016D9A8((v120 + 88), (v124 + 88));
                sub_10016D9A8((v120 + 112), v124 + 7);
                v120[136] = v124[136];
                sub_10016D9A8((v120 + 144), v124 + 9);
                if (v112 < v115)
                {
                  break;
                }

                v127 = (2 * v115) | 1;
                v116 = a1 + 168 * v127;
                if (2 * v115 + 2 < v9)
                {
                  v128 = v116[136] == v116[304] ? *(v116 + 4) < *(v116 + 25) : v116[136] == 0;
                  v129 = !v128;
                  v130 = v128 ? 168 : 0;
                  v116 += v130;
                  if (!v129)
                  {
                    v127 = 2 * v115 + 2;
                  }
                }

                v131 = v116[136] == v121 ? *(v116 + 4) < v122 : v116[136] == 0;
                v120 = v124;
                v115 = v127;
              }

              while (!v131);
              *v124 = v280;
              *(v124 + 1) = v286;
              *(v124 + 4) = v122;
              v132 = *(v124 + 5);
              if (v132)
              {
                *(v124 + 6) = v132;
                operator delete(v132);
              }

              *(v124 + 40) = v222;
              *(v124 + 7) = v218;
              v133 = *(v124 + 8);
              if (v133)
              {
                *(v124 + 9) = v133;
                operator delete(v133);
              }

              *(v124 + 4) = v231;
              *(v124 + 10) = v226;
              v134 = *(v124 + 11);
              if (v134)
              {
                *(v124 + 12) = v134;
                operator delete(v134);
              }

              *(v124 + 88) = v243;
              *(v124 + 13) = v237;
              v135 = *(v124 + 14);
              if (v135)
              {
                *(v124 + 15) = v135;
                operator delete(v135);
              }

              *(v124 + 7) = v257;
              *(v124 + 16) = v250;
              v124[136] = v121;
              v136 = *(v124 + 18);
              if (v136)
              {
                *(v124 + 19) = v136;
                operator delete(v136);
              }

              *(v124 + 9) = v270;
              *(v124 + 20) = v264;
            }
          }

          v113 = v114 - 1;
        }

        while (v114);
        v137 = 0xCF3CF3CF3CF3CF3DLL * (v8 >> 3);
        v138 = v274;
        do
        {
          v139 = 0;
          v140 = v138;
          v141 = *(a1 + 5);
          v289 = *(a1 + 4);
          v281 = *a1;
          v287 = a1[1];
          v143 = *(a1 + 6);
          v142 = *(a1 + 7);
          *(a1 + 5) = 0;
          *(a1 + 6) = 0;
          v215 = *(a1 + 9);
          v219 = *(a1 + 8);
          *(a1 + 7) = 0;
          *(a1 + 8) = 0;
          v211 = v141;
          v213 = *(a1 + 10);
          v232 = *(a1 + 11);
          *(a1 + 9) = 0;
          *(a1 + 10) = 0;
          v227 = *(a1 + 12);
          v223 = *(a1 + 13);
          *(a1 + 11) = 0;
          *(a1 + 12) = 0;
          v258 = *(a1 + 14);
          v251 = *(a1 + 15);
          v244 = *(a1 + 16);
          *(a1 + 13) = 0;
          *(a1 + 14) = 0;
          *(a1 + 15) = 0;
          *(a1 + 16) = 0;
          v238 = *(a1 + 136);
          v275 = *(a1 + 18);
          v271 = *(a1 + 19);
          v265 = *(a1 + 20);
          *(a1 + 18) = 0;
          *(a1 + 19) = 0;
          v144 = a1;
          *(a1 + 20) = 0;
          do
          {
            v145 = v144 + 21 * v139;
            v146 = (v145 + 21);
            if (2 * v139 + 2 >= v137)
            {
              v139 = (2 * v139) | 1;
            }

            else
            {
              if (*(v145 + 304) == *(v145 + 472))
              {
                v147 = v145[25] < v145[46];
              }

              else
              {
                v147 = *(v145 + 304) == 0;
              }

              v148 = (v145 + 42);
              if (v147)
              {
                v146 = v148;
                v139 = 2 * v139 + 2;
              }

              else
              {
                v139 = (2 * v139) | 1;
              }
            }

            v149 = *v146;
            v150 = *(v146 + 1);
            *(v144 + 4) = *(v146 + 4);
            *v144 = v149;
            v144[1] = v150;
            sub_10016D9A8(v144 + 40, (v146 + 40));
            sub_10016D9A8((v144 + 4), v146 + 4);
            sub_10016D9A8(v144 + 88, (v146 + 88));
            sub_10016D9A8((v144 + 7), v146 + 7);
            *(v144 + 136) = v146[136];
            sub_10016D9A8((v144 + 9), v146 + 9);
            v144 = v146;
          }

          while (v139 <= ((v137 - 2) >> 1));
          v138 -= 21;
          if (v146 == (v140 - 21))
          {
            *(v146 + 4) = v289;
            *v146 = v281;
            *(v146 + 1) = v287;
            v177 = *(v146 + 5);
            if (v177)
            {
              *(v146 + 6) = v177;
              operator delete(v177);
            }

            *(v146 + 5) = v211;
            *(v146 + 6) = v143;
            *(v146 + 7) = v142;
            v178 = *(v146 + 8);
            if (v178)
            {
              *(v146 + 9) = v178;
              operator delete(v178);
            }

            *(v146 + 8) = v219;
            *(v146 + 9) = v215;
            *(v146 + 10) = v213;
            v179 = *(v146 + 11);
            if (v179)
            {
              *(v146 + 12) = v179;
              operator delete(v179);
            }

            *(v146 + 11) = v232;
            *(v146 + 12) = v227;
            *(v146 + 13) = v223;
            v180 = *(v146 + 14);
            if (v180)
            {
              *(v146 + 15) = v180;
              operator delete(v180);
            }

            *(v146 + 14) = v258;
            *(v146 + 15) = v251;
            *(v146 + 16) = v244;
            v146[136] = v238;
            v181 = *(v146 + 18);
            if (v181)
            {
              *(v146 + 19) = v181;
              operator delete(v181);
            }

            *(v146 + 18) = v275;
            *(v146 + 19) = v271;
            *(v146 + 20) = v265;
          }

          else
          {
            v151 = *v138;
            v152 = *(v140 - 19);
            *(v146 + 4) = *(v140 - 17);
            *v146 = v151;
            *(v146 + 1) = v152;
            sub_10016D9A8((v146 + 40), v140 - 8);
            sub_10016D9A8((v146 + 64), (v140 - 13));
            sub_10016D9A8((v146 + 88), v140 - 5);
            sub_10016D9A8((v146 + 112), (v140 - 7));
            v146[136] = *(v140 - 32);
            sub_10016D9A8((v146 + 144), (v140 - 3));
            *(v140 - 17) = v289;
            *v138 = v281;
            *(v140 - 19) = v287;
            v153 = *(v140 - 16);
            if (v153)
            {
              *(v140 - 15) = v153;
              operator delete(v153);
            }

            *(v140 - 16) = v211;
            *(v140 - 15) = v143;
            *(v140 - 14) = v142;
            v154 = *(v140 - 13);
            if (v154)
            {
              *(v140 - 12) = v154;
              operator delete(v154);
            }

            *(v140 - 13) = v219;
            *(v140 - 12) = v215;
            *(v140 - 11) = v213;
            v155 = *(v140 - 10);
            if (v155)
            {
              *(v140 - 9) = v155;
              operator delete(v155);
            }

            *(v140 - 10) = v232;
            *(v140 - 9) = v227;
            *(v140 - 8) = v223;
            v156 = *(v140 - 7);
            if (v156)
            {
              *(v140 - 6) = v156;
              operator delete(v156);
            }

            *(v140 - 7) = v258;
            *(v140 - 6) = v251;
            *(v140 - 5) = v244;
            *(v140 - 32) = v238;
            v157 = *(v140 - 3);
            if (v157)
            {
              *(v140 - 2) = v157;
              operator delete(v157);
            }

            *(v140 - 3) = v275;
            *(v140 - 2) = v271;
            *(v140 - 1) = v265;
            v158 = v146 + 168 - a1;
            if (v158 >= 169)
            {
              v159 = (-2 - 0x30C30C30C30C30C3 * (v158 >> 3)) >> 1;
              v160 = a1 + 168 * v159;
              v161 = v146[136];
              v162 = *(v146 + 4);
              if (v160[136] == v161 ? *(v160 + 4) < v162 : v160[136] == 0)
              {
                v276 = v140 - 21;
                v290 = *v146;
                v291 = *(v146 + 1);
                v164 = *(v146 + 40);
                v165 = *(v146 + 7);
                *(v146 + 5) = 0;
                *(v146 + 6) = 0;
                v233 = v164;
                v239 = *(v146 + 4);
                v166 = *(v146 + 10);
                *(v146 + 9) = 0;
                *(v146 + 10) = 0;
                *(v146 + 7) = 0;
                *(v146 + 8) = 0;
                v245 = *(v146 + 88);
                v167 = *(v146 + 13);
                *(v146 + 11) = 0;
                *(v146 + 12) = 0;
                v259 = *(v146 + 7);
                v252 = *(v146 + 16);
                *(v146 + 13) = 0;
                *(v146 + 14) = 0;
                *(v146 + 15) = 0;
                *(v146 + 16) = 0;
                v272 = *(v146 + 9);
                v266 = *(v146 + 20);
                *(v146 + 18) = 0;
                *(v146 + 19) = 0;
                *(v146 + 20) = 0;
                do
                {
                  v168 = v160;
                  v169 = *v160;
                  v170 = *(v160 + 1);
                  *(v146 + 4) = *(v160 + 4);
                  *v146 = v169;
                  *(v146 + 1) = v170;
                  sub_10016D9A8((v146 + 40), (v160 + 40));
                  sub_10016D9A8((v146 + 64), v168 + 4);
                  sub_10016D9A8((v146 + 88), (v168 + 88));
                  sub_10016D9A8((v146 + 112), v168 + 7);
                  v146[136] = v168[136];
                  sub_10016D9A8((v146 + 144), v168 + 9);
                  if (!v159)
                  {
                    break;
                  }

                  v159 = (v159 - 1) >> 1;
                  v160 = a1 + 168 * v159;
                  v171 = v160[136] == v161 ? *(v160 + 4) < v162 : v160[136] == 0;
                  v146 = v168;
                }

                while (v171);
                *v168 = v290;
                *(v168 + 1) = v291;
                *(v168 + 4) = v162;
                v172 = *(v168 + 5);
                if (v172)
                {
                  *(v168 + 6) = v172;
                  operator delete(v172);
                }

                *(v168 + 40) = v233;
                *(v168 + 7) = v165;
                v173 = *(v168 + 8);
                if (v173)
                {
                  *(v168 + 9) = v173;
                  operator delete(v173);
                }

                *(v168 + 4) = v239;
                *(v168 + 10) = v166;
                v174 = *(v168 + 11);
                v138 = v276;
                if (v174)
                {
                  *(v168 + 12) = v174;
                  operator delete(v174);
                }

                *(v168 + 88) = v245;
                *(v168 + 13) = v167;
                v175 = *(v168 + 14);
                if (v175)
                {
                  *(v168 + 15) = v175;
                  operator delete(v175);
                }

                *(v168 + 7) = v259;
                *(v168 + 16) = v252;
                v168[136] = v161;
                v176 = *(v168 + 18);
                if (v176)
                {
                  *(v168 + 19) = v176;
                  operator delete(v176);
                }

                *(v168 + 9) = v272;
                *(v168 + 20) = v266;
              }
            }
          }
        }

        while (v137-- > 2);
      }

      return;
    }

    v11 = v9 >> 1;
    v12 = (v7 + 168 * (v9 >> 1));
    if (v8 < 0x5401)
    {
      sub_100409634(v12, v7, v209);
    }

    else
    {
      sub_100409634(v7, v12, v209);
      v13 = 168 * v11;
      sub_100409634(v7 + 168, v7 + v13 - 168, v208);
      sub_100409634((v7 + 21), v7 + v13 + 168, v207);
      sub_100409634(v7 + v13 - 168, v12, v7 + v13 + 168);
      sub_100409DB4(v7, v12);
    }

    v14 = *(v7 + 136);
    v268 = a3 - 1;
    if (a4)
    {
      v15 = *(v7 + 4);
LABEL_20:
      v17 = 0;
      v277 = *v7;
      v283 = v7[1];
      v216 = *(v7 + 40);
      v212 = v7 + 40;
      v214 = *(v7 + 7);
      *(v7 + 5) = 0;
      *(v7 + 6) = 0;
      *(v7 + 7) = 0;
      v224 = v7[4];
      v220 = *(v7 + 10);
      *(v7 + 8) = 0;
      *(v7 + 9) = 0;
      *(v7 + 10) = 0;
      v234 = *(v7 + 88);
      v228 = *(v7 + 13);
      *(v7 + 11) = 0;
      v247 = v7[7];
      *(v7 + 12) = 0;
      *(v7 + 13) = 0;
      v240 = *(v7 + 16);
      *(v7 + 14) = 0;
      *(v7 + 15) = 0;
      *(v7 + 16) = 0;
      v261 = v7[9];
      v254 = *(v7 + 20);
      *(v7 + 18) = 0;
      *(v7 + 19) = 0;
      *(v7 + 20) = 0;
      do
      {
        v18 = *(v7 + v17 + 200) < v15;
        if (*(v7 + v17 + 304) != v14)
        {
          v18 = *(v7 + v17 + 304) == 0;
        }

        v17 += 168;
      }

      while (v18);
      v19 = (v7 + v17);
      v20 = v274;
      if (v17 == 168)
      {
        v26 = v274;
        while (v19 < v26)
        {
          v21 = (v26 - 21);
          v27 = *(v26 - 32);
          v28 = *(v26 - 32) == 0;
          v29 = *(v26 - 17) < v15;
          if (v27 == v14)
          {
            v30 = v29;
          }

          else
          {
            v30 = v28;
          }

          v26 = v21;
          if (v30)
          {
            goto LABEL_38;
          }
        }

        v21 = v26;
      }

      else
      {
        do
        {
          v21 = (v20 - 21);
          v22 = *(v20 - 32);
          v23 = *(v20 - 32) == 0;
          v24 = *(v20 - 17) < v15;
          if (v22 == v14)
          {
            v25 = v24;
          }

          else
          {
            v25 = v23;
          }

          v20 = v21;
        }

        while (!v25);
      }

LABEL_38:
      v7 = v19;
      if (v19 < v21)
      {
        v31 = v21;
        do
        {
          sub_100409DB4(v7, v31);
          do
          {
            v32 = *(v7 + 304);
            v33 = *(v7 + 25);
            v7 = (v7 + 168);
            if (v32 == v14)
            {
              v34 = v33 < v15;
            }

            else
            {
              v34 = v32 == 0;
            }
          }

          while (v34);
          do
          {
            v35 = *(v31 - 32);
            v36 = *(v31 - 17);
            v31 = (v31 - 168);
            if (v35 == v14)
            {
              v37 = v36 < v15;
            }

            else
            {
              v37 = v35 == 0;
            }
          }

          while (!v37);
        }

        while (v7 < v31);
      }

      v38 = (v7 - 168);
      if ((v7 - 168) != a1)
      {
        v39 = *v38;
        v40 = *(v7 - 152);
        *(a1 + 4) = *(v7 - 17);
        *a1 = v39;
        a1[1] = v40;
        sub_10016D9A8(v212, v7 - 8);
        sub_10016D9A8((a1 + 4), (v7 - 104));
        sub_10016D9A8(a1 + 88, v7 - 5);
        sub_10016D9A8((a1 + 7), (v7 - 56));
        *(a1 + 136) = *(v7 - 32);
        sub_10016D9A8((a1 + 9), (v7 - 24));
      }

      *v38 = v277;
      *(v7 - 152) = v283;
      *(v7 - 17) = v15;
      v41 = *(v7 - 16);
      if (v41)
      {
        *(v7 - 15) = v41;
        operator delete(v41);
      }

      *(v7 - 8) = v216;
      *(v7 - 14) = v214;
      v42 = *(v7 - 13);
      --a3;
      if (v42)
      {
        *(v7 - 12) = v42;
        operator delete(v42);
      }

      *(v7 - 104) = v224;
      *(v7 - 11) = v220;
      v43 = *(v7 - 10);
      if (v43)
      {
        *(v7 - 9) = v43;
        operator delete(v43);
      }

      *(v7 - 5) = v234;
      *(v7 - 8) = v228;
      v44 = *(v7 - 7);
      if (v44)
      {
        *(v7 - 6) = v44;
        operator delete(v44);
      }

      *(v7 - 56) = v247;
      *(v7 - 5) = v240;
      *(v7 - 32) = v14;
      v45 = *(v7 - 3);
      if (v45)
      {
        *(v7 - 2) = v45;
        operator delete(v45);
      }

      *(v7 - 24) = v261;
      *(v7 - 1) = v254;
      v46 = v19 >= v21;
      a2 = v274;
      if (!v46)
      {
        goto LABEL_66;
      }

      v47 = sub_10040996C(a1, (v7 - 168));
      if (sub_10040996C(v7, v274))
      {
        a2 = v7 - 21;
        if (!v47)
        {
          goto LABEL_1;
        }

        return;
      }

      if (!v47)
      {
LABEL_66:
        sub_10040804C(a1, v7 - 21, v268, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v15 = *(v7 + 4);
      if (*(v7 - 32) == v14)
      {
        v16 = *(v7 - 17) < v15;
      }

      else
      {
        v16 = *(v7 - 32) == 0;
      }

      if (v16)
      {
        goto LABEL_20;
      }

      v278 = *v7;
      v284 = v7[1];
      v48 = *(v7 + 40);
      v49 = *(v7 + 7);
      *(v7 + 5) = 0;
      *(v7 + 6) = 0;
      *(v7 + 7) = 0;
      v225 = v48;
      v229 = v7[4];
      v217 = *(v7 + 10);
      *(v7 + 8) = 0;
      *(v7 + 9) = 0;
      *(v7 + 10) = 0;
      v235 = *(v7 + 88);
      v221 = *(v7 + 13);
      *(v7 + 11) = 0;
      *(v7 + 12) = 0;
      *(v7 + 13) = 0;
      v248 = v7[7];
      v241 = *(v7 + 16);
      *(v7 + 14) = 0;
      *(v7 + 15) = 0;
      *(v7 + 16) = 0;
      v262 = v7[9];
      v255 = *(v7 + 20);
      *(v7 + 18) = 0;
      *(v7 + 19) = 0;
      v50 = v14 == 0;
      *(v7 + 20) = 0;
      if (v14 == *(a2 - 32))
      {
        v50 = v15 < *(a2 - 17);
      }

      if (v50)
      {
        v51 = v7;
        do
        {
          v52 = v14 == 0;
          v7 = (v51 + 168);
          v53 = *(v51 + 304);
          v54 = v15 < *(v51 + 25);
          if (v14 == v53)
          {
            v52 = v54;
          }

          v51 = v7;
        }

        while (!v52);
      }

      else
      {
        v55 = (v7 + 168);
        do
        {
          v7 = v55;
          if (v55 >= v274)
          {
            break;
          }

          v56 = v14 == *(v55 + 136) ? v15 < *(v55 + 4) : v14 == 0;
          v55 = (v55 + 168);
        }

        while (!v56);
      }

      v57 = v274;
      if (v7 < v274)
      {
        v58 = v274;
        do
        {
          v59 = v14 == 0;
          v57 = (v58 - 21);
          v60 = *(v58 - 32);
          v61 = v15 < *(v58 - 17);
          if (v14 == v60)
          {
            v59 = v61;
          }

          v58 = v57;
        }

        while (v59);
      }

      while (v7 < v57)
      {
        sub_100409DB4(v7, v57);
        do
        {
          v62 = v14 == 0;
          v63 = *(v7 + 304);
          v64 = *(v7 + 25);
          v7 = (v7 + 168);
          if (v14 == v63)
          {
            v62 = v15 < v64;
          }
        }

        while (!v62);
        do
        {
          v65 = v14 == 0;
          v66 = *(v57 - 32);
          v67 = *(v57 - 17);
          v57 = (v57 - 168);
          if (v14 == v66)
          {
            v65 = v15 < v67;
          }
        }

        while (v65);
      }

      v68 = (v7 - 168);
      if ((v7 - 168) != a1)
      {
        v69 = *v68;
        v70 = *(v7 - 152);
        *(a1 + 4) = *(v7 - 17);
        *a1 = v69;
        a1[1] = v70;
        sub_10016D9A8(a1 + 40, v7 - 8);
        sub_10016D9A8((a1 + 4), (v7 - 104));
        sub_10016D9A8(a1 + 88, v7 - 5);
        sub_10016D9A8((a1 + 7), (v7 - 56));
        *(a1 + 136) = *(v7 - 32);
        sub_10016D9A8((a1 + 9), (v7 - 24));
      }

      *v68 = v278;
      *(v7 - 152) = v284;
      *(v7 - 17) = v15;
      v71 = *(v7 - 16);
      if (v71)
      {
        *(v7 - 15) = v71;
        operator delete(v71);
      }

      *(v7 - 8) = v225;
      *(v7 - 14) = v49;
      v72 = *(v7 - 13);
      if (v72)
      {
        *(v7 - 12) = v72;
        operator delete(v72);
      }

      *(v7 - 104) = v229;
      *(v7 - 11) = v217;
      v73 = *(v7 - 10);
      a3 = v268;
      if (v73)
      {
        *(v7 - 9) = v73;
        operator delete(v73);
      }

      *(v7 - 5) = v235;
      *(v7 - 8) = v221;
      v74 = *(v7 - 7);
      a2 = v274;
      if (v74)
      {
        *(v7 - 6) = v74;
        operator delete(v74);
      }

      *(v7 - 56) = v248;
      *(v7 - 5) = v241;
      *(v7 - 32) = v14;
      v75 = *(v7 - 3);
      if (v75)
      {
        *(v7 - 2) = v75;
        operator delete(v75);
      }

      a4 = 0;
      *(v7 - 24) = v262;
      *(v7 - 1) = v255;
    }
  }

  sub_100409634(v7, v7 + 168, (v7 + 21));
  if (*(a2 - 32) == *(v7 + 472))
  {
    v79 = *(a2 - 17) < *(v7 + 46);
  }

  else
  {
    v79 = *(a2 - 32) == 0;
  }

  if (v79)
  {
    sub_100409DB4(v7 + 21, v209);
    if (*(v7 + 472) == *(v7 + 304) ? *(v7 + 46) < *(v7 + 25) : *(v7 + 472) == 0)
    {
      sub_100409DB4((v7 + 168), v7 + 21);
      if (*(v7 + 304) == *(v7 + 136) ? *(v7 + 25) < *(v7 + 4) : *(v7 + 304) == 0)
      {
        v78 = (v7 + 168);
        v77 = v7;
        goto LABEL_118;
      }
    }
  }
}

double sub_100409634(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *(a2 + 136);
  v7 = *(a2 + 136) == 0;
  v8 = *(a2 + 32);
  if (v6 == *(result + 136))
  {
    v7 = v8 < *(result + 32);
  }

  if (*(a3 + 136) == v6)
  {
    v9 = *(a3 + 32) < v8;
  }

  else
  {
    v9 = *(a3 + 136) == 0;
  }

  if (v7)
  {
    if (v9)
    {
LABEL_13:
      v11 = a3;
LABEL_20:

      *&v8 = sub_100409DB4(result, v11).n128_u64[0];
      return v8;
    }

    sub_100409DB4(result, a2);
    v8 = *(a3 + 32);
    if (*(a3 + 136) == *(a2 + 136))
    {
      v10 = v8 < *(a2 + 32);
    }

    else
    {
      v10 = *(a3 + 136) == 0;
    }

    if (v10)
    {
      result = a2;
      goto LABEL_13;
    }
  }

  else if (v9)
  {
    sub_100409DB4(a2, a3);
    v8 = *(a2 + 32);
    if (*(a2 + 136) == *(v5 + 136) ? v8 < *(v5 + 32) : *(a2 + 136) == 0)
    {
      result = v5;
      v11 = a2;
      goto LABEL_20;
    }
  }

  return v8;
}

double sub_100409764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100409634(a1, a2, a3);
  if (*(a4 + 136) == *(a3 + 136))
  {
    v10 = *(a4 + 32) < *(a3 + 32);
  }

  else
  {
    v10 = *(a4 + 136) == 0;
  }

  if (v10)
  {
    sub_100409DB4(a3, a4);
    if (*(a3 + 136) == *(a2 + 136) ? *(a3 + 32) < *(a2 + 32) : *(a3 + 136) == 0)
    {
      sub_100409DB4(a2, a3);
      if (*(a2 + 136) == *(a1 + 136) ? *(a2 + 32) < *(a1 + 32) : *(a2 + 136) == 0)
      {
        sub_100409DB4(a1, a2);
      }
    }
  }

  result = *(a5 + 32);
  if (*(a5 + 136) == *(a4 + 136))
  {
    v14 = result < *(a4 + 32);
  }

  else
  {
    v14 = *(a5 + 136) == 0;
  }

  if (v14)
  {
    sub_100409DB4(a4, a5);
    result = *(a4 + 32);
    if (*(a4 + 136) == *(a3 + 136) ? result < *(a3 + 32) : *(a4 + 136) == 0)
    {
      sub_100409DB4(a3, a4);
      result = *(a3 + 32);
      if (*(a3 + 136) == *(a2 + 136) ? result < *(a2 + 32) : *(a3 + 136) == 0)
      {
        sub_100409DB4(a2, a3);
        result = *(a2 + 32);
        if (*(a2 + 136) == *(a1 + 136) ? result < *(a1 + 32) : *(a2 + 136) == 0)
        {

          *&result = sub_100409DB4(a1, a2).n128_u64[0];
        }
      }
    }
  }

  return result;
}

BOOL sub_10040996C(uint64_t a1, __int128 *a2)
{
  v4 = 0xCF3CF3CF3CF3CF3DLL * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_100409634(a1, a1 + 168, a2 - 168);
        return 1;
      case 4:
        sub_100409634(a1, a1 + 168, a1 + 336);
        if (*(a2 - 32) == *(a1 + 472))
        {
          v33 = *(a2 - 17) < *(a1 + 368);
        }

        else
        {
          v33 = *(a2 - 32) == 0;
        }

        if (!v33)
        {
          return 1;
        }

        sub_100409DB4((a1 + 336), (a2 - 168));
        if (!(*(a1 + 472) == *(a1 + 304) ? *(a1 + 368) < *(a1 + 200) : *(a1 + 472) == 0))
        {
          return 1;
        }

        sub_100409DB4((a1 + 168), (a1 + 336));
        if (!(*(a1 + 304) == *(a1 + 136) ? *(a1 + 200) < *(a1 + 32) : *(a1 + 304) == 0))
        {
          return 1;
        }

        v6 = (a1 + 168);
LABEL_9:
        sub_100409DB4(a1, v6);
        return 1;
      case 5:
        sub_100409764(a1, a1 + 168, a1 + 336, a1 + 504, a2 - 168);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      if (*(a2 - 32) == *(a1 + 136))
      {
        v5 = *(a2 - 17) < *(a1 + 32);
      }

      else
      {
        v5 = *(a2 - 32) == 0;
      }

      if (!v5)
      {
        return 1;
      }

      v6 = (a2 - 168);
      goto LABEL_9;
    }
  }

  v7 = (a1 + 336);
  sub_100409634(a1, a1 + 168, a1 + 336);
  v8 = (a1 + 504);
  if ((a1 + 504) == a2)
  {
    return 1;
  }

  v9 = 0;
  v10 = 0;
  while (1)
  {
    v11 = *(v8 + 136);
    v12 = *(v8 + 136) == 0;
    v13 = *(v8 + 4);
    if (v11 == *(v7 + 136))
    {
      v12 = v13 < v7[4];
    }

    if (v12)
    {
      v46 = *v8;
      v47 = v8[1];
      v14 = *(v8 + 5);
      v15 = v8[3];
      *(v8 + 5) = 0;
      *(v8 + 6) = 0;
      v39 = *(v8 + 8);
      v37 = v15;
      v38 = *(v8 + 72);
      *(v8 + 7) = 0;
      *(v8 + 8) = 0;
      *(v8 + 9) = 0;
      *(v8 + 10) = 0;
      v41 = *(v8 + 11);
      v40 = v8[6];
      *(v8 + 11) = 0;
      *(v8 + 12) = 0;
      v43 = *(v8 + 14);
      v42 = *(v8 + 120);
      *(v8 + 13) = 0;
      *(v8 + 14) = 0;
      *(v8 + 15) = 0;
      *(v8 + 16) = 0;
      v45 = *(v8 + 18);
      v44 = *(v8 + 152);
      *(v8 + 18) = 0;
      *(v8 + 19) = 0;
      v16 = v9;
      *(v8 + 20) = 0;
      while (1)
      {
        v17 = v16;
        v18 = a1 + v16;
        v19 = (a1 + v16 + 504);
        v20 = *(v18 + 352);
        *v19 = *(v18 + 336);
        v19[1] = v20;
        *(v18 + 536) = *(v18 + 368);
        sub_10016D9A8(v18 + 544, (v18 + 376));
        sub_10016D9A8(v18 + 568, (v18 + 400));
        sub_10016D9A8(v18 + 592, (v18 + 424));
        sub_10016D9A8(v18 + 616, (v18 + 448));
        *(v18 + 640) = *(v18 + 472);
        sub_10016D9A8(v18 + 648, (v18 + 480));
        if (v17 == -336)
        {
          break;
        }

        if (v11 == *(v18 + 304))
        {
          v21 = v13 < *(v18 + 200);
        }

        else
        {
          v21 = v11 == 0;
        }

        v16 = v17 - 168;
        if (!v21)
        {
          v22 = a1 + v16 + 504;
          goto LABEL_28;
        }
      }

      v22 = a1;
LABEL_28:
      *v22 = v46;
      *(v22 + 16) = v47;
      *(v22 + 32) = v13;
      v23 = *(v18 + 376);
      if (v23)
      {
        *(v22 + 48) = v23;
        operator delete(v23);
        v24 = a1 + v17;
        *(v24 + 384) = 0;
        *(v24 + 392) = 0;
      }

      *(v18 + 376) = v14;
      *(v22 + 48) = v37;
      v25 = *(v18 + 400);
      if (v25)
      {
        *(v22 + 72) = v25;
        operator delete(v25);
        v26 = a1 + v17;
        *(v26 + 408) = 0;
        *(v26 + 416) = 0;
      }

      *(v18 + 400) = v39;
      *(v22 + 72) = v38;
      v27 = *(v18 + 424);
      if (v27)
      {
        *(v22 + 96) = v27;
        operator delete(v27);
        v28 = a1 + v17;
        *(v28 + 432) = 0;
        *(v28 + 440) = 0;
      }

      *(v18 + 424) = v41;
      *(v22 + 96) = v40;
      v29 = *(v18 + 448);
      if (v29)
      {
        *(v22 + 120) = v29;
        operator delete(v29);
        v30 = a1 + v17;
        *(v30 + 456) = 0;
        *(v30 + 464) = 0;
      }

      *(v18 + 448) = v43;
      *(v22 + 120) = v42;
      *(v22 + 136) = v11;
      v31 = *(v18 + 480);
      if (v31)
      {
        *(v22 + 152) = v31;
        operator delete(v31);
        v32 = a1 + v17;
        *(v32 + 488) = 0;
        *(v32 + 496) = 0;
      }

      *(v18 + 480) = v45;
      *(v22 + 152) = v44;
      if (++v10 == 8)
      {
        return (v8 + 168) == a2;
      }
    }

    v7 = v8;
    v9 += 168;
    v8 = (v8 + 168);
    if (v8 == a2)
    {
      return 1;
    }
  }
}

__n128 sub_100409DB4(__int128 *a1, __int128 *a2)
{
  v25 = *a1;
  v26 = a1[1];
  v27 = *(a1 + 4);
  v5 = *(a1 + 40);
  v4 = a1 + 5;
  v6 = *(a1 + 7);
  *v4 = 0;
  *(a1 + 6) = 0;
  *(a1 + 7) = 0;
  v18 = v5;
  v19 = a1[4];
  v7 = *(a1 + 10);
  *(a1 + 8) = 0;
  *(a1 + 9) = 0;
  *(a1 + 10) = 0;
  v20 = *(a1 + 88);
  v8 = *(a1 + 13);
  *(a1 + 11) = 0;
  *(a1 + 12) = 0;
  *(a1 + 13) = 0;
  v22 = a1[7];
  v21 = *(a1 + 16);
  *(a1 + 14) = 0;
  *(a1 + 15) = 0;
  *(a1 + 16) = 0;
  v9 = *(a1 + 136);
  v24 = a1[9];
  v23 = *(a1 + 20);
  *(a1 + 18) = 0;
  *(a1 + 19) = 0;
  *(a1 + 20) = 0;
  v10 = *a2;
  v11 = a2[1];
  *(a1 + 4) = *(a2 + 4);
  *a1 = v10;
  a1[1] = v11;
  sub_10016D9A8(v4, (a2 + 40));
  sub_10016D9A8((a1 + 4), a2 + 4);
  sub_10016D9A8(a1 + 88, (a2 + 88));
  sub_10016D9A8((a1 + 7), a2 + 7);
  *(a1 + 136) = *(a2 + 136);
  sub_10016D9A8((a1 + 9), a2 + 9);
  *a2 = v25;
  a2[1] = v26;
  *(a2 + 4) = v27;
  v12 = *(a2 + 5);
  if (v12)
  {
    *(a2 + 6) = v12;
    operator delete(v12);
  }

  *(a2 + 40) = v18;
  *(a2 + 7) = v6;
  v13 = *(a2 + 8);
  if (v13)
  {
    *(a2 + 9) = v13;
    operator delete(v13);
  }

  a2[4] = v19;
  *(a2 + 10) = v7;
  v14 = *(a2 + 11);
  if (v14)
  {
    *(a2 + 12) = v14;
    operator delete(v14);
  }

  *(a2 + 88) = v20;
  *(a2 + 13) = v8;
  v15 = *(a2 + 14);
  if (v15)
  {
    *(a2 + 15) = v15;
    operator delete(v15);
  }

  a2[7] = v22;
  *(a2 + 16) = v21;
  *(a2 + 136) = v9;
  v16 = *(a2 + 18);
  if (v16)
  {
    *(a2 + 19) = v16;
    operator delete(v16);
  }

  result = v24;
  a2[9] = v24;
  *(a2 + 20) = v23;
  return result;
}

uint64_t *sub_100409F84(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10040A00C(result, a4);
  }

  return result;
}

void sub_100409FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_100019848(&a9);
  _Unwind_Resume(a1);
}

void sub_10040A00C(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    sub_100404000(a1, a2);
  }

  sub_100019B38();
}

uint64_t sub_10040A058(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v7 = *v6;
      *(v4 + 8) = *(v6 + 4);
      *v4 = v7;
      *(v4 + 24) = 0;
      *(v4 + 32) = 0;
      *(v4 + 16) = 0;
      sub_100403D6C((v4 + 16), v6[2], v6[3], 0xAAAAAAAAAAAAAAABLL * ((v6[3] - v6[2]) >> 4));
      v6 += 5;
      v4 = v12 + 40;
      v12 += 40;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_100404124(v9);
  return v4;
}

void sub_10040A128(__n128 *a1, __n128 *a2, uint64_t a3, int a4)
{
  v6 = a2;
  v7 = a1;
  v335 = a2;
  v336 = a1;
  while (1)
  {
    v8 = v6 - v7;
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - v7) >> 3);
    if (v9 > 2)
    {
      switch(v9)
      {
        case 3:
          v335 = (v6 - 40);
          sub_10040C024(v7, (v7 + 40), (v6 - 40));
          return;
        case 4:
          v335 = (v6 - 40);
          sub_10040C4A8(v7, (v7 + 40), v7 + 5, (v6 - 40));
          return;
        case 5:
          v335 = (v6 - 40);
          sub_10040C78C(v7, (v7 + 40), v7 + 5, (v7 + 120), (v6 - 40));
          return;
      }
    }

    else
    {
      if (v9 < 2)
      {
        return;
      }

      if (v9 == 2)
      {
        v335 = (v6 - 40);
        v121 = v6[-3].n128_u64[1];
        v331 = v6[-2].n128_u16[0];
        v330 = v121;
        v333 = 0;
        v334 = 0;
        v332 = 0;
        sub_100403D6C(&v332, v6[-2].n128_u64[1], v6[-1].n128_i64[0], 0xAAAAAAAAAAAAAAABLL * ((v6[-1].n128_u64[0] - v6[-2].n128_u64[1]) >> 4));
        v122 = v7->n128_u64[0];
        v326 = v7->n128_u16[4];
        v325 = v122;
        v328 = 0;
        v329 = 0;
        v327 = 0;
        sub_100403D6C(&v327, v7[1].n128_u64[0], v7[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((v7[1].n128_u64[1] - v7[1].n128_u64[0]) >> 4));
        v124 = v332;
        v123 = v333;
        v125 = v327;
        v126 = v328;
        if (v327)
        {
          v328 = v327;
          operator delete(v327);
        }

        v277 = v123 - v124;
        v278 = v126 - v125;
        if (v332)
        {
          v333 = v332;
          operator delete(v332);
        }

        if (v277 > v278)
        {
          sub_10040BF8C(&v336, &v335);
        }

        return;
      }
    }

    v304 = v7;
    if (v8 <= 959)
    {
      break;
    }

    if (!a3)
    {
      if (v7 == v6)
      {
        return;
      }

      v279 = v6 - v7;
      v284 = v6;
      v156 = (v9 - 2) >> 1;
      v157 = v156;
      while (2)
      {
        v158 = v157;
        if (v156 < v157)
        {
          goto LABEL_194;
        }

        v159 = (2 * v157) | 1;
        v160 = v7 + 40 * v159;
        if (2 * v157 + 2 < v9)
        {
          v161 = *v160;
          v397 = *(v160 + 4);
          v396 = v161;
          v399 = 0;
          v400 = 0;
          v398 = 0;
          sub_100403D6C(&v398, *(v160 + 2), *(v160 + 3), 0xAAAAAAAAAAAAAAABLL * ((*(v160 + 3) - *(v160 + 2)) >> 4));
          v162 = *(v160 + 5);
          v392 = *(v160 + 24);
          v391 = v162;
          v394 = 0;
          v395 = 0;
          v393 = 0;
          sub_100403D6C(&v393, *(v160 + 7), *(v160 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(v160 + 8) - *(v160 + 7)) >> 4));
          v164 = v398;
          v163 = v399;
          v165 = v393;
          v166 = v394;
          if (v393)
          {
            v394 = v393;
            operator delete(v393);
          }

          v167 = v163 - v164;
          v168 = v166 - v165;
          if (v398)
          {
            v399 = v398;
            operator delete(v398);
          }

          v104 = v167 > v168;
          v7 = v304;
          if (v104)
          {
            v160 += 40;
            v159 = 2 * v158 + 2;
          }
        }

        v287 = v158;
        v169 = v7 + 40 * v158;
        v170 = *v160;
        v387 = *(v160 + 4);
        v386 = v170;
        v389 = 0;
        v390 = 0;
        v388 = 0;
        sub_100403D6C(&v388, *(v160 + 2), *(v160 + 3), 0xAAAAAAAAAAAAAAABLL * ((*(v160 + 3) - *(v160 + 2)) >> 4));
        v171 = *v169;
        v382 = *(v169 + 4);
        v381 = v171;
        v384 = 0;
        v385 = 0;
        v383 = 0;
        sub_100403D6C(&v383, *(v169 + 2), *(v169 + 3), 0xAAAAAAAAAAAAAAABLL * ((*(v169 + 3) - *(v169 + 2)) >> 4));
        v173 = v388;
        v172 = v389;
        v174 = v383;
        v175 = v384;
        if (v383)
        {
          v384 = v383;
          operator delete(v383);
          v176 = v388;
          if (v388)
          {
            goto LABEL_172;
          }
        }

        else
        {
          v176 = v388;
          if (v388)
          {
LABEL_172:
            v389 = v176;
            operator delete(v176);
          }
        }

        v104 = v172 - v173 > (v175 - v174);
        v7 = v304;
        v156 = (v9 - 2) >> 1;
        if (v104)
        {
LABEL_194:
          v157 = v158 - 1;
          if (!v158)
          {
            v201 = 0xCCCCCCCCCCCCCCCDLL * (v279 >> 3);
            v202 = v284;
            while (1)
            {
              v203 = v7;
              v204 = 0;
              v205 = v203->n128_u64[0];
              v372 = v203->n128_u16[4];
              v371 = v205;
              v301 = v203[1].n128_u64[0];
              v297 = v203[1].n128_u64[1];
              v288 = v202;
              v292 = v203[2].n128_u64[0];
              v203[1].n128_u64[1] = 0;
              v203[2].n128_u64[0] = 0;
              v203[1].n128_u64[0] = 0;
              v206 = (v201 - 2) >> 1;
              do
              {
                v207 = v203;
                v208 = v203 + 40 * v204;
                v203 = (v208 + 40);
                v209 = 2 * v204;
                v204 = (2 * v204) | 1;
                v210 = v209 + 2;
                if (v210 < v201)
                {
                  v314 = v210;
                  v211 = v203->n128_u64[0];
                  v397 = *(v208 + 24);
                  v396 = v211;
                  v399 = 0;
                  v400 = 0;
                  v398 = 0;
                  sub_100403D6C(&v398, *(v208 + 7), *(v208 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(v208 + 8) - *(v208 + 7)) >> 4));
                  v212 = v201;
                  v214 = *(v208 + 10);
                  v213 = v208 + 80;
                  v392 = *(v213 + 4);
                  v391 = v214;
                  v394 = 0;
                  v395 = 0;
                  v393 = 0;
                  sub_100403D6C(&v393, *(v213 + 2), *(v213 + 3), 0xAAAAAAAAAAAAAAABLL * ((*(v213 + 3) - *(v213 + 2)) >> 4));
                  v216 = v398;
                  v215 = v399;
                  v217 = v393;
                  v218 = v394;
                  if (v393)
                  {
                    v394 = v393;
                    operator delete(v393);
                  }

                  v219 = v215 - v216;
                  v220 = v218 - v217;
                  if (v398)
                  {
                    v399 = v398;
                    operator delete(v398);
                  }

                  v104 = v219 > v220;
                  v201 = v212;
                  if (v104)
                  {
                    v203 = v213;
                    v204 = v314;
                  }
                }

                v221 = v203->n128_u64[0];
                v207->n128_u16[4] = v203->n128_u16[4];
                v207->n128_u64[0] = v221;
                sub_10016D9A8(&v207[1], v203 + 1);
              }

              while (v204 <= v206);
              v202 = v288 - 5;
              if (v203 == (v288 - 5))
              {
                v247 = v371;
                v203->n128_u16[4] = v372;
                v203->n128_u64[0] = v247;
                v248 = v203[1].n128_u64[0];
                if (v248)
                {
                  v203[1].n128_u64[1] = v248;
                  operator delete(v248);
                  v203[1].n128_u64[0] = 0;
                  v203[1].n128_u64[1] = 0;
                  v203[2].n128_u64[0] = 0;
                }

                v203[1].n128_u64[0] = v301;
                v203[1].n128_u64[1] = v297;
                v203[2].n128_u64[0] = v292;
                v7 = v304;
              }

              else
              {
                v222 = *v202;
                v203->n128_u16[4] = *(v288 - 16);
                v203->n128_u64[0] = v222;
                sub_10016D9A8(&v203[1], (v288 - 3));
                *v202 = v371;
                *(v288 - 16) = v372;
                v223 = *(v288 - 3);
                if (v223)
                {
                  *(v288 - 2) = v223;
                  operator delete(v223);
                  *(v288 - 3) = 0;
                  *(v288 - 2) = 0;
                  *(v288 - 1) = 0;
                }

                *(v288 - 3) = v301;
                *(v288 - 2) = v297;
                *(v288 - 1) = v292;
                v7 = v304;
                v224 = &v203[2].n128_i8[8] - v304;
                if (v224 >= 41)
                {
                  v225 = (-2 - 0x3333333333333333 * (v224 >> 3)) >> 1;
                  v226 = v304 + 40 * v225;
                  v227 = *v226;
                  v397 = *(v226 + 4);
                  v396 = v227;
                  v399 = 0;
                  v400 = 0;
                  v398 = 0;
                  sub_100403D6C(&v398, *(v226 + 2), *(v226 + 3), 0xAAAAAAAAAAAAAAABLL * ((*(v226 + 3) - *(v226 + 2)) >> 4));
                  v228 = v203->n128_u64[0];
                  v392 = v203->n128_u16[4];
                  v391 = v228;
                  v394 = 0;
                  v395 = 0;
                  v393 = 0;
                  sub_100403D6C(&v393, v203[1].n128_u64[0], v203[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((v203[1].n128_u64[1] - v203[1].n128_u64[0]) >> 4));
                  v230 = v398;
                  v229 = v399;
                  v231 = v393;
                  v232 = v394;
                  if (v393)
                  {
                    v394 = v393;
                    operator delete(v393);
                    v233 = v398;
                    if (v398)
                    {
                      goto LABEL_214;
                    }
                  }

                  else
                  {
                    v233 = v398;
                    if (v398)
                    {
LABEL_214:
                      v399 = v233;
                      operator delete(v233);
                    }
                  }

                  v104 = v229 - v230 > (v232 - v231);
                  v7 = v304;
                  if (!v104)
                  {
                    goto LABEL_232;
                  }

                  v234 = v203->n128_u64[0];
                  v377 = v203->n128_u16[4];
                  v376 = v234;
                  v235 = v203[1].n128_u64[0];
                  v236 = *(&v203[1] + 8);
                  v203[1].n128_u64[1] = 0;
                  v203[2].n128_u64[0] = 0;
                  v203[1].n128_u64[0] = 0;
                  v298 = v236;
                  v315 = v235;
                  v237 = v236;
                  v302 = 0xAAAAAAAAAAAAAAABLL * ((v236 - v235) >> 4);
                  while (2)
                  {
                    v238 = v226;
                    v239 = *v226;
                    v203->n128_u16[4] = *(v226 + 4);
                    v203->n128_u64[0] = v239;
                    sub_10016D9A8(&v203[1], v226 + 1);
                    if (!v225)
                    {
LABEL_229:
                      v249 = v376;
                      v238->n128_u16[4] = v377;
                      v238->n128_u64[0] = v249;
                      v250 = v238[1].n128_u64[0];
                      if (v250)
                      {
                        v238[1].n128_u64[1] = v250;
                        operator delete(v250);
                        v238[1].n128_u64[0] = 0;
                        v238[1].n128_u64[1] = 0;
                        v238[2].n128_u64[0] = 0;
                      }

                      v238[1].n128_u64[0] = v315;
                      *(v238 + 24) = v298;
                      v7 = v304;
                      v202 = v288 - 5;
                      break;
                    }

                    v225 = (v225 - 1) >> 1;
                    v226 = v304 + 40 * v225;
                    v240 = *v226;
                    v387 = *(v226 + 4);
                    v386 = v240;
                    v389 = 0;
                    v390 = 0;
                    v388 = 0;
                    sub_100403D6C(&v388, *(v226 + 2), *(v226 + 3), 0xAAAAAAAAAAAAAAABLL * ((*(v226 + 3) - *(v226 + 2)) >> 4));
                    v381 = v376;
                    v382 = v377;
                    v384 = 0;
                    v385 = 0;
                    v383 = 0;
                    sub_100403D6C(&v383, v315, v237, v302);
                    v242 = v388;
                    v241 = v389;
                    v243 = v383;
                    v244 = v384;
                    if (v383)
                    {
                      v384 = v383;
                      operator delete(v383);
                      v245 = v388;
                      if (v388)
                      {
                        goto LABEL_221;
                      }
                    }

                    else
                    {
                      v245 = v388;
                      if (v388)
                      {
LABEL_221:
                        v389 = v245;
                        operator delete(v245);
                      }
                    }

                    v246 = v244 - v243;
                    v203 = v238;
                    if (v241 - v242 <= v246)
                    {
                      goto LABEL_229;
                    }

                    continue;
                  }
                }
              }

LABEL_232:
              v104 = v201-- <= 2;
              if (v104)
              {
                return;
              }
            }
          }

          continue;
        }

        break;
      }

      v177 = *v169;
      v357 = *(v169 + 4);
      v356 = v177;
      v178 = *(v169 + 2);
      v179 = *(v169 + 24);
      *(v169 + 3) = 0;
      *(v169 + 4) = 0;
      *(v169 + 2) = 0;
      v281 = v179;
      v313 = v178;
      v300 = v179;
      v296 = 0xAAAAAAAAAAAAAAABLL * ((v179 - v178) >> 4);
      while (2)
      {
        v180 = v160;
        v181 = *v160;
        *(v169 + 4) = *(v160 + 4);
        *v169 = v181;
        sub_10016D9A8((v169 + 16), v160 + 1);
        if (v156 < v159)
        {
LABEL_191:
          v199 = v356;
          *(v180 + 4) = v357;
          *v180 = v199;
          v200 = *(v180 + 2);
          if (v200)
          {
            *(v180 + 3) = v200;
            operator delete(v200);
            *(v180 + 2) = 0;
            *(v180 + 3) = 0;
            *(v180 + 4) = 0;
          }

          *(v180 + 2) = v313;
          *(v180 + 24) = v281;
          v158 = v287;
          goto LABEL_194;
        }

        v182 = 2 * v159;
        v159 = (2 * v159) | 1;
        v160 = v7 + 40 * v159;
        v183 = v182 + 2;
        if (v182 + 2 < v9)
        {
          v184 = *v160;
          v377 = *(v160 + 4);
          v376 = v184;
          v379 = 0;
          v380 = 0;
          v378 = 0;
          sub_100403D6C(&v378, *(v160 + 2), *(v160 + 3), 0xAAAAAAAAAAAAAAABLL * ((*(v160 + 3) - *(v160 + 2)) >> 4));
          v185 = *(v160 + 5);
          v372 = *(v160 + 24);
          v371 = v185;
          v374 = 0;
          v375 = 0;
          __p = 0;
          sub_100403D6C(&__p, *(v160 + 7), *(v160 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(v160 + 8) - *(v160 + 7)) >> 4));
          v186 = v379;
          v187 = v378;
          v188 = v374;
          v189 = __p;
          if (__p)
          {
            v374 = __p;
            operator delete(__p);
          }

          v190 = v186 - v187;
          v191 = v188 - v189;
          if (v378)
          {
            v379 = v378;
            operator delete(v378);
          }

          v104 = v190 > v191;
          v7 = v304;
          v156 = (v9 - 2) >> 1;
          if (v104)
          {
            v160 += 40;
            v159 = v183;
          }
        }

        v192 = *v160;
        v367 = *(v160 + 4);
        v366 = v192;
        v369 = 0;
        v370 = 0;
        v368 = 0;
        sub_100403D6C(&v368, *(v160 + 2), *(v160 + 3), 0xAAAAAAAAAAAAAAABLL * ((*(v160 + 3) - *(v160 + 2)) >> 4));
        v361 = v356;
        v362 = v357;
        v364 = 0;
        v365 = 0;
        v363 = 0;
        sub_100403D6C(&v363, v313, v300, v296);
        v193 = v369;
        v194 = v368;
        v195 = v364;
        v196 = v363;
        if (v363)
        {
          v364 = v363;
          operator delete(v363);
          v197 = v368;
          if (v368)
          {
            goto LABEL_186;
          }
        }

        else
        {
          v197 = v368;
          if (v368)
          {
LABEL_186:
            v369 = v197;
            operator delete(v197);
          }
        }

        v198 = v193 - v194;
        v169 = v180;
        if (v198 > v195 - v196)
        {
          goto LABEL_191;
        }

        continue;
      }
    }

    v10 = v9 >> 1;
    v11 = (v6 - 40);
    if (v8 < 0x1401)
    {
      sub_10040C024((v7 + 40 * v10), v7, v11);
      v18 = v336;
    }

    else
    {
      sub_10040C024(v7, (v7 + 40 * (v9 >> 1)), v11);
      v12 = v335;
      v13 = v336;
      v14 = v336 + 40 * v10;
      sub_10040C024((v336 + 40), (v14 - 40), v335 - 5);
      sub_10040C024(v13 + 5, (v14 + 40), (v12 - 120));
      sub_10040C024((v14 - 40), v14, (v14 + 40));
      v396 = v13->n128_u64[0];
      v397 = v13->n128_u16[4];
      v307 = v13[1];
      v15 = v13[2].n128_u64[0];
      v13[1].n128_u64[0] = 0;
      v13[1].n128_u64[1] = 0;
      v13[2].n128_u64[0] = 0;
      v16 = *v14;
      v13->n128_u16[4] = *(v14 + 4);
      v13->n128_u64[0] = v16;
      sub_10016D9A8(&v13[1], v14 + 1);
      *v14 = v396;
      *(v14 + 4) = v397;
      v17 = *(v14 + 2);
      if (v17)
      {
        *(v14 + 3) = v17;
        operator delete(v17);
      }

      *(v14 + 1) = v307;
      *(v14 + 4) = v15;
      v18 = v13;
    }

    v299 = a3 - 1;
    v305 = v18;
    if ((a4 & 1) == 0)
    {
      v19 = v18[-3].n128_u64[1];
      v321 = v18[-2].n128_u16[0];
      v320 = v19;
      v323 = 0;
      v324 = 0;
      v322 = 0;
      v20 = v18;
      sub_100403D6C(&v322, v18[-2].n128_u64[1], v18[-1].n128_i64[0], 0xAAAAAAAAAAAAAAABLL * ((v18[-1].n128_u64[0] - v18[-2].n128_u64[1]) >> 4));
      v318 = 0;
      v319 = 0;
      v317 = 0;
      v21 = v20 + 1;
      sub_100403D6C(&v317, v20[1].n128_u64[0], v20[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((v20[1].n128_u64[1] - v20[1].n128_u64[0]) >> 4));
      v23 = v322;
      v22 = v323;
      v24 = v317;
      v25 = v318;
      if (v317)
      {
        v318 = v317;
        operator delete(v317);
      }

      v26 = v22 - v23;
      v27 = v25 - v24;
      if (v322)
      {
        v323 = v322;
        operator delete(v322);
      }

      v18 = v305;
      if (v26 <= v27)
      {
        v72 = v335;
        v349 = v335;
        v350 = v305;
        v347 = v305->n128_u64[0];
        v73 = v347;
        v348 = v305->n128_u16[4];
        v74 = v348;
        v75 = v305[1].n128_u64[0];
        v76 = *(&v305[1] + 8);
        v21->n128_u64[1] = 0;
        v21[1].n128_u64[0] = 0;
        v290 = v21;
        v21->n128_u64[0] = 0;
        v396 = v73;
        v397 = v74;
        v399 = 0;
        v400 = 0;
        v398 = 0;
        v294 = v76;
        v77 = v76;
        v78 = 0xAAAAAAAAAAAAAAABLL * ((v76 - v75) >> 4);
        sub_100403D6C(&v398, v75, v76, v78);
        v79 = v75;
        v80 = v72[-3].n128_u64[1];
        v392 = v72[-2].n128_u16[0];
        v391 = v80;
        v394 = 0;
        v395 = 0;
        v393 = 0;
        sub_100403D6C(&v393, v72[-2].n128_u64[1], v72[-1].n128_i64[0], 0xAAAAAAAAAAAAAAABLL * ((v72[-1].n128_u64[0] - v72[-2].n128_u64[1]) >> 4));
        v81 = v398;
        v309 = v399;
        v82 = v393;
        v83 = v394;
        if (v393)
        {
          v394 = v393;
          operator delete(v393);
          v84 = v398;
          if (!v398)
          {
LABEL_74:
            if (v309 - v81 > (v83 - v82))
            {
              while (1)
              {
                v350 = (v350 + 40);
                v386 = v347;
                v387 = v348;
                v389 = 0;
                v390 = 0;
                v388 = 0;
                sub_100403D6C(&v388, v79, v77, v78);
                v85 = v350->n128_u16[4];
                v381 = v350->n128_u64[0];
                v382 = v85;
                v384 = 0;
                v385 = 0;
                v383 = 0;
                sub_100403D6C(&v383, v350[1].n128_u64[0], v350[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((v350[1].n128_u64[1] - v350[1].n128_u64[0]) >> 4));
                v86 = v388;
                v310 = v389;
                v88 = v383;
                v87 = v384;
                if (!v383)
                {
                  break;
                }

                v384 = v383;
                operator delete(v383);
                v89 = v388;
                if (v388)
                {
                  goto LABEL_77;
                }

LABEL_78:
                if (v310 - v86 > (v87 - v88))
                {
                  goto LABEL_88;
                }
              }

              v89 = v388;
              if (!v388)
              {
                goto LABEL_78;
              }

LABEL_77:
              v389 = v89;
              operator delete(v89);
              goto LABEL_78;
            }

            do
            {
              v350 = (v350 + 40);
              if (v350 >= v349)
              {
                break;
              }

              v376 = v347;
              v377 = v348;
              v379 = 0;
              v380 = 0;
              v378 = 0;
              sub_100403D6C(&v378, v79, v77, v78);
              v90 = v350->n128_u16[4];
              v371 = v350->n128_u64[0];
              v372 = v90;
              v374 = 0;
              v375 = 0;
              __p = 0;
              sub_100403D6C(&__p, v350[1].n128_u64[0], v350[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((v350[1].n128_u64[1] - v350[1].n128_u64[0]) >> 4));
              v91 = v379;
              v92 = v378;
              v93 = v374;
              v94 = __p;
              if (__p)
              {
                v374 = __p;
                operator delete(__p);
              }

              v95 = v91 - v92;
              if (v378)
              {
                v379 = v378;
                operator delete(v378);
              }
            }

            while (v95 <= v93 - v94);
LABEL_88:
            v96 = v349;
            v97 = v350;
            v98 = v79;
            if (v350 >= v349)
            {
              goto LABEL_101;
            }

            while (1)
            {
              v349 = (v349 - 40);
              v366 = v347;
              v367 = v348;
              v369 = 0;
              v370 = 0;
              v368 = 0;
              sub_100403D6C(&v368, v98, v77, v78);
              v99 = v349->n128_u16[4];
              v361 = v349->n128_u64[0];
              v362 = v99;
              v364 = 0;
              v365 = 0;
              v363 = 0;
              sub_100403D6C(&v363, v349[1].n128_u64[0], v349[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((v349[1].n128_u64[1] - v349[1].n128_u64[0]) >> 4));
              v311 = v369;
              v100 = v368;
              v101 = v364;
              v102 = v363;
              if (!v363)
              {
                break;
              }

              v364 = v363;
              operator delete(v363);
              v103 = v368;
              if (v368)
              {
                goto LABEL_91;
              }

LABEL_92:
              v104 = v311 - v100 > (v101 - v102);
              v98 = v79;
              if (!v104)
              {
LABEL_100:
                v96 = v349;
                v97 = v350;
LABEL_101:
                if (v97 < v96)
                {
                  sub_10040BF8C(&v350, &v349);
                  while (1)
                  {
                    v350 = (v350 + 40);
                    v356 = v347;
                    v357 = v348;
                    v359 = 0;
                    v360 = 0;
                    v358 = 0;
                    sub_100403D6C(&v358, v98, v77, v78);
                    v105 = v350->n128_u16[4];
                    v351 = v350->n128_u64[0];
                    v352 = v105;
                    v354 = 0;
                    v355 = 0;
                    v353 = 0;
                    sub_100403D6C(&v353, v350[1].n128_u64[0], v350[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((v350[1].n128_u64[1] - v350[1].n128_u64[0]) >> 4));
                    v107 = v358;
                    v106 = v359;
                    v109 = v353;
                    v108 = v354;
                    if (!v353)
                    {
                      break;
                    }

                    v354 = v353;
                    operator delete(v353);
                    v110 = v358;
                    if (v358)
                    {
                      goto LABEL_105;
                    }

LABEL_106:
                    v104 = v106 - v107 > (v108 - v109);
                    v98 = v79;
                    if (v104)
                    {
                      while (1)
                      {
                        v349 = (v349 - 40);
                        v342 = v347;
                        v343 = v348;
                        v345 = 0;
                        v346 = 0;
                        v344 = 0;
                        sub_100403D6C(&v344, v98, v77, v78);
                        v112 = v349->n128_u16[4];
                        v337 = v349->n128_u64[0];
                        v338 = v112;
                        v340 = 0;
                        v341 = 0;
                        v339 = 0;
                        sub_100403D6C(&v339, v349[1].n128_u64[0], v349[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((v349[1].n128_u64[1] - v349[1].n128_u64[0]) >> 4));
                        v114 = v344;
                        v113 = v345;
                        v116 = v339;
                        v115 = v340;
                        if (!v339)
                        {
                          break;
                        }

                        v340 = v339;
                        operator delete(v339);
                        v111 = v344;
                        if (v344)
                        {
                          goto LABEL_115;
                        }

LABEL_116:
                        v104 = v113 - v114 > (v115 - v116);
                        v98 = v79;
                        if (!v104)
                        {
                          goto LABEL_100;
                        }
                      }

                      v111 = v344;
                      if (!v344)
                      {
                        goto LABEL_116;
                      }

LABEL_115:
                      v345 = v111;
                      operator delete(v111);
                      goto LABEL_116;
                    }
                  }

                  v110 = v358;
                  if (!v358)
                  {
                    goto LABEL_106;
                  }

LABEL_105:
                  v359 = v110;
                  operator delete(v110);
                  goto LABEL_106;
                }

                v117 = &v97[-3].n128_u64[1];
                if (&v97[-3].n128_i8[8] != v305)
                {
                  v118 = *v117;
                  v305->n128_u16[4] = v97[-2].n128_u16[0];
                  v305->n128_u64[0] = v118;
                  sub_10016D9A8(v290, (v97 - 24));
                }

                v119 = v347;
                v97[-2].n128_u16[0] = v348;
                *v117 = v119;
                v120 = v97[-2].n128_u64[1];
                if (v120)
                {
                  v97[-1].n128_u64[0] = v120;
                  operator delete(v120);
                  v97[-2].n128_u64[1] = 0;
                  v97[-1].n128_u64[0] = 0;
                  v97[-1].n128_u64[1] = 0;
                }

                a4 = 0;
                v97[-2].n128_u64[1] = v98;
                v97[-1] = v294;
                v7 = v350;
LABEL_123:
                v336 = v7;
                goto LABEL_124;
              }
            }

            v103 = v368;
            if (!v368)
            {
              goto LABEL_92;
            }

LABEL_91:
            v369 = v103;
            operator delete(v103);
            goto LABEL_92;
          }
        }

        else
        {
          v84 = v398;
          if (!v398)
          {
            goto LABEL_74;
          }
        }

        v399 = v84;
        operator delete(v84);
        goto LABEL_74;
      }
    }

    v308 = a4;
    v337 = v18;
    v347 = v335;
    v342 = v18->n128_u64[0];
    v343 = v18->n128_u16[4];
    v28 = v18[1].n128_u64[0];
    v29 = *(&v18[1] + 8);
    v282 = &v18[1];
    v18[1].n128_u64[0] = 0;
    v18[1].n128_u64[1] = 0;
    v18[2].n128_u64[0] = 0;
    v293 = v29;
    v30 = v29;
    v31 = 0xAAAAAAAAAAAAAAABLL * ((v29 - v28) >> 4);
    do
    {
      v32 = v337[2].n128_u64[1];
      v337 = (v337 + 40);
      v396 = v32;
      v397 = v337->n128_u16[4];
      v399 = 0;
      v400 = 0;
      v398 = 0;
      sub_100403D6C(&v398, v337[1].n128_u64[0], v337[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((v337[1].n128_u64[1] - v337[1].n128_u64[0]) >> 4));
      v391 = v342;
      v392 = v343;
      v394 = 0;
      v395 = 0;
      v393 = 0;
      sub_100403D6C(&v393, v28, v30, v31);
      v34 = v398;
      v33 = v399;
      v35 = v393;
      v36 = v394;
      if (v393)
      {
        v394 = v393;
        operator delete(v393);
        v37 = v398;
        if (!v398)
        {
          continue;
        }

LABEL_26:
        v399 = v37;
        operator delete(v37);
        continue;
      }

      v37 = v398;
      if (v398)
      {
        goto LABEL_26;
      }
    }

    while (v33 - v34 > (v36 - v35));
    v38 = v337;
    if (&v337[-3].n128_i8[8] != v305)
    {
      while (1)
      {
        v39 = v347;
        v347 = (v347 - 40);
        v40 = v347->n128_u64[0];
        v377 = v39[-2].n128_u16[0];
        v376 = v40;
        v379 = 0;
        v380 = 0;
        v378 = 0;
        sub_100403D6C(&v378, v39[-2].n128_u64[1], v39[-1].n128_i64[0], 0xAAAAAAAAAAAAAAABLL * ((v39[-1].n128_u64[0] - v39[-2].n128_u64[1]) >> 4));
        v371 = v342;
        v372 = v343;
        v374 = 0;
        v375 = 0;
        __p = 0;
        sub_100403D6C(&__p, v28, v30, v31);
        v41 = v379;
        v42 = v378;
        v43 = v374;
        v44 = __p;
        if (!__p)
        {
          break;
        }

        v374 = __p;
        operator delete(__p);
        v45 = v378;
        if (v378)
        {
          goto LABEL_34;
        }

LABEL_35:
        if (v41 - v42 > (v43 - v44))
        {
          goto LABEL_46;
        }
      }

      v45 = v378;
      if (!v378)
      {
        goto LABEL_35;
      }

LABEL_34:
      v379 = v45;
      operator delete(v45);
      goto LABEL_35;
    }

    while (1)
    {
      v46 = v347;
      if (v38 >= v347)
      {
        break;
      }

      v347 = (v347 - 40);
      v47 = v46[-3].n128_u64[1];
      v387 = v46[-2].n128_u16[0];
      v386 = v47;
      v389 = 0;
      v390 = 0;
      v388 = 0;
      sub_100403D6C(&v388, v46[-2].n128_u64[1], v46[-1].n128_i64[0], 0xAAAAAAAAAAAAAAABLL * ((v46[-1].n128_u64[0] - v46[-2].n128_u64[1]) >> 4));
      v381 = v342;
      v382 = v343;
      v384 = 0;
      v385 = 0;
      v383 = 0;
      sub_100403D6C(&v383, v28, v30, v31);
      v49 = v388;
      v48 = v389;
      v50 = v383;
      v51 = v384;
      if (v383)
      {
        v384 = v383;
        operator delete(v383);
      }

      v52 = v48 - v49;
      v53 = v51 - v50;
      if (v388)
      {
        v389 = v388;
        operator delete(v388);
      }

      if (v52 > v53)
      {
        break;
      }

      v38 = v337;
    }

LABEL_46:
    v7 = v337;
    v285 = v347;
    v289 = v337;
    if (v337 >= v347)
    {
      goto LABEL_62;
    }

    while (2)
    {
      sub_10040BF8C(&v337, &v347);
      while (2)
      {
        v54 = v337[2].n128_u64[1];
        v337 = (v337 + 40);
        v366 = v54;
        v367 = v337->n128_u16[4];
        v369 = 0;
        v370 = 0;
        v368 = 0;
        sub_100403D6C(&v368, v337[1].n128_u64[0], v337[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((v337[1].n128_u64[1] - v337[1].n128_u64[0]) >> 4));
        v361 = v342;
        v362 = v343;
        v364 = 0;
        v365 = 0;
        v363 = 0;
        sub_100403D6C(&v363, v28, v30, v31);
        v55 = v369;
        v56 = v368;
        v57 = v364;
        v58 = v363;
        if (v363)
        {
          v364 = v363;
          operator delete(v363);
          v59 = v368;
          if (v368)
          {
            goto LABEL_50;
          }
        }

        else
        {
          v59 = v368;
          if (v368)
          {
LABEL_50:
            v369 = v59;
            operator delete(v59);
          }
        }

        if (v55 - v56 > (v57 - v58))
        {
          continue;
        }

        break;
      }

      while (2)
      {
        v61 = v347;
        v347 = (v347 - 40);
        v62 = v347->n128_u64[0];
        v357 = v61[-2].n128_u16[0];
        v356 = v62;
        v359 = 0;
        v360 = 0;
        v358 = 0;
        sub_100403D6C(&v358, v61[-2].n128_u64[1], v61[-1].n128_i64[0], 0xAAAAAAAAAAAAAAABLL * ((v61[-1].n128_u64[0] - v61[-2].n128_u64[1]) >> 4));
        v351 = v342;
        v352 = v343;
        v354 = 0;
        v355 = 0;
        v353 = 0;
        sub_100403D6C(&v353, v28, v30, v31);
        v63 = v358;
        v64 = v359;
        v65 = v353;
        v66 = v354;
        if (v353)
        {
          v354 = v353;
          operator delete(v353);
          v60 = v358;
          if (v358)
          {
LABEL_59:
            v359 = v60;
            operator delete(v60);
          }
        }

        else
        {
          v60 = v358;
          if (v358)
          {
            goto LABEL_59;
          }
        }

        if (v64 - v63 <= (v66 - v65))
        {
          continue;
        }

        break;
      }

      v7 = v337;
      if (v337 < v347)
      {
        continue;
      }

      break;
    }

LABEL_62:
    v67 = &v7[-3].n128_u64[1];
    if (&v7[-3].n128_i8[8] != v305)
    {
      v68 = *v67;
      v305->n128_u16[4] = v7[-2].n128_u16[0];
      v305->n128_u64[0] = v68;
      sub_10016D9A8(v282, (v7 - 24));
    }

    *v67 = v342;
    v7[-2].n128_u16[0] = v343;
    v69 = v7[-2].n128_u64[1];
    a4 = v308;
    if (v69)
    {
      v7[-1].n128_u64[0] = v69;
      operator delete(v69);
      v7[-2].n128_u64[1] = 0;
      v7[-1].n128_u64[0] = 0;
      v7[-1].n128_u64[1] = 0;
    }

    v7[-2].n128_u64[1] = v28;
    v7[-1] = v293;
    v70 = v336;
    if (v289 < v285)
    {
LABEL_67:
      a3 = v299;
      sub_10040A128(v70, &v7[-3].n128_i8[8], v299, v308 & 1);
      a4 = 0;
      v336 = v7;
      goto LABEL_125;
    }

    v71 = sub_10040CB50(v336, (v7 - 40));
    if (!sub_10040CB50(v7, v335))
    {
      if (!v71)
      {
        v70 = v336;
        goto LABEL_67;
      }

      goto LABEL_123;
    }

    if (v71)
    {
      return;
    }

    v335 = (v7 - 40);
    v7 = v336;
LABEL_124:
    a3 = v299;
LABEL_125:
    v6 = v335;
  }

  if (a4)
  {
    if (v7 == v6)
    {
      return;
    }

    v127 = &v7[2].n128_u64[1];
    if (&v7[2].n128_i8[8] == v6)
    {
      return;
    }

    v283 = v6;
    v286 = 0;
    v128 = v7;
    while (2)
    {
      v129 = v127;
      v130 = *v127;
      v291 = v129;
      v397 = *(v129 + 4);
      v396 = v130;
      v131 = v128[3].n128_u64[1];
      v399 = 0;
      v400 = 0;
      v398 = 0;
      sub_100403D6C(&v398, v131, v128[4].n128_i64[0], 0xAAAAAAAAAAAAAAABLL * ((v128[4].n128_u64[0] - v131) >> 4));
      v132 = v128->n128_u64[0];
      v392 = v128->n128_u16[4];
      v391 = v132;
      v394 = 0;
      v395 = 0;
      v393 = 0;
      v133 = &v128[1];
      sub_100403D6C(&v393, v128[1].n128_u64[0], v128[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((v128[1].n128_u64[1] - v128[1].n128_u64[0]) >> 4));
      v135 = v398;
      v134 = v399;
      v136 = v393;
      v137 = v394;
      if (v393)
      {
        v394 = v393;
        operator delete(v393);
        v138 = v398;
        if (v398)
        {
          goto LABEL_137;
        }
      }

      else
      {
        v138 = v398;
        if (v398)
        {
LABEL_137:
          v399 = v138;
          operator delete(v138);
        }
      }

      v104 = v134 - v135 > (v137 - v136);
      v139 = v304;
      if (v104)
      {
        v140 = *v291;
        v377 = *(v291 + 4);
        v376 = v140;
        v141 = v128[3].n128_u64[1];
        v280 = v128[4];
        v128[4].n128_u64[0] = 0;
        v128[4].n128_u64[1] = 0;
        v128[3].n128_u64[1] = 0;
        *v291 = v128->n128_u64[0];
        *(v291 + 4) = v128->n128_u16[4];
        sub_10016D9A8((v291 + 2), v128 + 1);
        if (v128 != v304)
        {
          v295 = 0xAAAAAAAAAAAAAAABLL * ((v280.n128_u64[0] - v141) >> 4);
          v142 = v286;
          do
          {
            v312 = v128;
            v386 = v376;
            v387 = v377;
            v389 = 0;
            v390 = 0;
            v388 = 0;
            sub_100403D6C(&v388, v141, v280.n128_i64[0], v295);
            v143 = v141;
            v144 = v139 + v142;
            v146 = *(&v139[-2] + v142 - 8);
            v145 = &v139[-2] + v142 - 8;
            v382 = *(v144 - 32);
            v381 = v146;
            v384 = 0;
            v385 = 0;
            v383 = 0;
            sub_100403D6C(&v383, *(v144 - 24), *(v144 - 16), 0xAAAAAAAAAAAAAAABLL * ((*(v144 - 16) - *(v144 - 24)) >> 4));
            v147 = v388;
            v148 = v389;
            v150 = v383;
            v149 = v384;
            if (v383)
            {
              v384 = v383;
              operator delete(v383);
            }

            v151 = v148 - v147;
            v152 = v149 - v150;
            if (v388)
            {
              v389 = v388;
              operator delete(v388);
              v104 = v151 > v152;
              v141 = v143;
              if (!v104)
              {
                v139 = (v304 + v142);
                v133 = &v304[1] + v142;
                goto LABEL_153;
              }
            }

            else
            {
              v104 = v151 > v152;
              v141 = v143;
              if (!v104)
              {
                v6 = v283;
                v139 = v312;
                goto LABEL_154;
              }
            }

            v128 = (v312 - 40);
            v133 = &v312[-2].n128_i64[1];
            *v144 = *v145;
            *(v144 + 8) = *(v145 + 8);
            v139 = v304;
            sub_10016D9A8(&v304[1] + v142, (v144 - 24));
            v142 -= 40;
          }

          while (v142);
          v133 = &v304[1];
LABEL_153:
          v6 = v283;
        }

LABEL_154:
        v153 = v280;
        v154 = v376;
        v139->n128_u16[4] = v377;
        v139->n128_u64[0] = v154;
        v155 = *v133;
        if (*v133)
        {
          v139[1].n128_u64[1] = v155;
          operator delete(v155);
          v153 = v280;
          *v133 = 0;
          *(v133 + 8) = 0;
          *(v133 + 16) = 0;
        }

        *v133 = v141;
        *(v139 + 24) = v153;
      }

      v128 = v291;
      v127 = v291 + 5;
      v286 += 40;
      if (v291 + 5 == v6)
      {
        return;
      }

      continue;
    }
  }

  if (v7 == v6)
  {
    return;
  }

  v251 = &v7[2].n128_u64[1];
  if (&v7[2].n128_i8[8] == v6)
  {
    return;
  }

  v316 = v7 + 1;
  while (2)
  {
    v252 = v251;
    v253 = *v251;
    v306 = v252;
    v397 = *(v252 + 4);
    v396 = v253;
    v255 = &v7[3].n128_u64[1];
    v254 = v7[3].n128_u64[1];
    v399 = 0;
    v400 = 0;
    v398 = 0;
    sub_100403D6C(&v398, v254, v7[4].n128_i64[0], 0xAAAAAAAAAAAAAAABLL * ((v7[4].n128_u64[0] - v254) >> 4));
    v256 = v7->n128_u64[0];
    v392 = v7->n128_u16[4];
    v391 = v256;
    v394 = 0;
    v395 = 0;
    v393 = 0;
    v257 = v7;
    sub_100403D6C(&v393, v7[1].n128_u64[0], v7[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((v7[1].n128_u64[1] - v7[1].n128_u64[0]) >> 4));
    v259 = v398;
    v258 = v399;
    v260 = v393;
    v261 = v394;
    if (v393)
    {
      v394 = v393;
      operator delete(v393);
      v262 = v398;
      if (v398)
      {
        goto LABEL_242;
      }
    }

    else
    {
      v262 = v398;
      if (v398)
      {
LABEL_242:
        v399 = v262;
        operator delete(v262);
      }
    }

    if (v258 - v259 <= (v261 - v260))
    {
      goto LABEL_255;
    }

    v263 = *v306;
    v377 = *(v306 + 4);
    v376 = v263;
    v264 = v257[3].n128_u64[1];
    v265 = v257[4];
    v255[1] = 0;
    v255[2] = 0;
    *v255 = 0;
    v303 = v265;
    v266 = v265.n128_u64[0];
    v267 = 0xAAAAAAAAAAAAAAABLL * ((v265.n128_u64[0] - v264) >> 4);
    v268 = v316;
    while (2)
    {
      v268[1].n128_u64[1] = v268[-1].n128_u64[0];
      v268[2].n128_u16[0] = v268[-1].n128_u16[4];
      sub_10016D9A8(&v268[2].n128_i64[1], v268);
      v386 = v376;
      v387 = v377;
      v389 = 0;
      v390 = 0;
      v388 = 0;
      sub_100403D6C(&v388, v264, v266, v267);
      v269 = v268[-4].n128_u64[1];
      v382 = v268[-3].n128_u16[0];
      v381 = v269;
      v384 = 0;
      v385 = 0;
      v383 = 0;
      sub_100403D6C(&v383, v268[-3].n128_u64[1], v268[-2].n128_i64[0], 0xAAAAAAAAAAAAAAABLL * ((v268[-2].n128_u64[0] - v268[-3].n128_u64[1]) >> 4));
      v270 = v388;
      v271 = v389;
      v273 = v383;
      v272 = v384;
      if (v383)
      {
        v384 = v383;
        operator delete(v383);
        v274 = v388;
        if (v388)
        {
          goto LABEL_247;
        }
      }

      else
      {
        v274 = v388;
        if (v388)
        {
LABEL_247:
          v389 = v274;
          operator delete(v274);
        }
      }

      v268 = (v268 - 40);
      if (v271 - v270 > (v272 - v273))
      {
        continue;
      }

      break;
    }

    v275 = v376;
    v276 = v268[2].n128_u64[1];
    v268[2].n128_u16[0] = v377;
    v268[1].n128_u64[1] = v275;
    if (v276)
    {
      v268[3].n128_u64[0] = v276;
      operator delete(v276);
      v268[2].n128_u64[1] = 0;
      v268[3].n128_u64[0] = 0;
      v268[3].n128_u64[1] = 0;
    }

    v268[2].n128_u64[1] = v264;
    v268[3] = v303;
LABEL_255:
    v7 = v306;
    v251 = v306 + 5;
    v316 = (v316 + 40);
    if (v306 + 5 != v6)
    {
      continue;
    }

    break;
  }
}

void sub_10040BD60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10040BF8C(__n128 **a1, __n128 **a2)
{
  v2 = *a1;
  v3 = *a2;
  v9 = (*a1)->n128_u64[0];
  v10 = (*a1)->n128_u16[4];
  v8 = (*a1)[1];
  v4 = (*a1)[2].n128_u64[0];
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  v5 = v3->n128_u64[0];
  *(v2 + 8) = v3->n128_u16[4];
  *v2 = v5;
  sub_10016D9A8(v2 + 16, v3 + 1);
  v3->n128_u64[0] = v9;
  v3->n128_u16[4] = v10;
  v6 = v3[1].n128_u64[0];
  if (v6)
  {
    v3[1].n128_u64[1] = v6;
    operator delete(v6);
  }

  result = v8;
  v3[1] = v8;
  v3[2].n128_u64[0] = v4;
  return result;
}

double sub_10040C024(__n128 *a1, __n128 *a2, __n128 *a3)
{
  v93 = a2;
  v94 = a1;
  v91 = 0;
  v92 = a3;
  v87 = a2->n128_u64[0];
  v88 = a2->n128_u16[4];
  v89 = 0;
  v90 = 0;
  sub_100403D6C(&v89, a2[1].n128_u64[0], a2[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1].n128_u64[1] - a2[1].n128_u64[0]) >> 4));
  v82 = a1->n128_u64[0];
  v83 = a1->n128_u16[4];
  v85 = 0;
  v86 = 0;
  v84 = 0;
  sub_100403D6C(&v84, a1[1].n128_u64[0], a1[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((a1[1].n128_u64[1] - a1[1].n128_u64[0]) >> 4));
  v5 = v89;
  v4 = v90;
  v6 = v84;
  v7 = v85;
  if (v84)
  {
    v85 = v84;
    operator delete(v84);
  }

  v8 = v4 - v5;
  v9 = v7 - v6;
  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }

  if (v8 <= v9)
  {
    v16 = v92->n128_u64[0];
    v78 = v92->n128_u16[4];
    v77 = v16;
    v80 = 0;
    v81 = 0;
    v79 = 0;
    sub_100403D6C(&v79, v92[1].n128_u64[0], v92[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((v92[1].n128_u64[1] - v92[1].n128_u64[0]) >> 4));
    v17 = v93->n128_u16[4];
    v72 = v93->n128_u64[0];
    v73 = v17;
    v75 = 0;
    v76 = 0;
    v74 = 0;
    sub_100403D6C(&v74, v93[1].n128_u64[0], v93[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((v93[1].n128_u64[1] - v93[1].n128_u64[0]) >> 4));
    v20 = v79;
    v19 = v80;
    v21 = v74;
    v22 = v75;
    if (v74)
    {
      v75 = v74;
      operator delete(v74);
    }

    v31 = v19 - v20;
    v32 = v22 - v21;
    if (v79)
    {
      v80 = v79;
      operator delete(v79);
    }

    if (v31 > v32)
    {
      sub_10040BF8C(&v93, &v92);
      v33 = v93->n128_u16[4];
      v67 = v93->n128_u64[0];
      v68 = v33;
      v70 = 0;
      v71 = 0;
      v69 = 0;
      sub_100403D6C(&v69, v93[1].n128_u64[0], v93[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((v93[1].n128_u64[1] - v93[1].n128_u64[0]) >> 4));
      v34 = v94->n128_u16[4];
      v62 = v94->n128_u64[0];
      v63 = v34;
      v65 = 0;
      v66 = 0;
      v64 = 0;
      sub_100403D6C(&v64, v94[1].n128_u64[0], v94[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((v94[1].n128_u64[1] - v94[1].n128_u64[0]) >> 4));
      v36 = v69;
      v35 = v70;
      v37 = v64;
      v38 = v65;
      if (v64)
      {
        v65 = v64;
        operator delete(v64);
      }

      v42 = v35 - v36;
      v43 = v38 - v37;
      if (v69)
      {
        v70 = v69;
        operator delete(v69);
      }

      if (v42 > v43)
      {
        v25 = &v94;
        v41 = &v93;
        goto LABEL_30;
      }
    }
  }

  else
  {
    v10 = v92->n128_u64[0];
    v58 = v92->n128_u16[4];
    v57 = v10;
    v60 = 0;
    v61 = 0;
    v59 = 0;
    sub_100403D6C(&v59, v92[1].n128_u64[0], v92[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((v92[1].n128_u64[1] - v92[1].n128_u64[0]) >> 4));
    v11 = v93->n128_u16[4];
    v52 = v93->n128_u64[0];
    v53 = v11;
    v55 = 0;
    v56 = 0;
    v54 = 0;
    sub_100403D6C(&v54, v93[1].n128_u64[0], v93[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((v93[1].n128_u64[1] - v93[1].n128_u64[0]) >> 4));
    v13 = v59;
    v12 = v60;
    v14 = v54;
    v15 = v55;
    if (v54)
    {
      v55 = v54;
      operator delete(v54);
    }

    v23 = v12 - v13;
    v24 = v15 - v14;
    if (v59)
    {
      v60 = v59;
      operator delete(v59);
    }

    if (v23 > v24)
    {
      v25 = &v94;
LABEL_25:
      v41 = &v92;
LABEL_30:
      *&result = sub_10040BF8C(v25, v41).n128_u64[0];
      return result;
    }

    sub_10040BF8C(&v94, &v93);
    v26 = v92->n128_u16[4];
    v47 = v92->n128_u64[0];
    v48 = v26;
    v50 = 0;
    v51 = 0;
    v49 = 0;
    sub_100403D6C(&v49, v92[1].n128_u64[0], v92[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((v92[1].n128_u64[1] - v92[1].n128_u64[0]) >> 4));
    v45 = 0;
    v46 = 0;
    v44 = 0;
    sub_100403D6C(&v44, v93[1].n128_u64[0], v93[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((v93[1].n128_u64[1] - v93[1].n128_u64[0]) >> 4));
    v28 = v49;
    v27 = v50;
    v29 = v44;
    v30 = v45;
    if (v44)
    {
      v45 = v44;
      operator delete(v44);
    }

    v39 = v27 - v28;
    v40 = v30 - v29;
    if (v49)
    {
      v50 = v49;
      operator delete(v49);
    }

    if (v39 > v40)
    {
      v25 = &v93;
      goto LABEL_25;
    }
  }

  return result;
}

void sub_10040C448(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p)
{
  if (__p)
  {
    *v37 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_10040C4A8(uint64_t a1, __n128 *a2, __n128 *a3, __n128 *a4)
{
  v59 = a2;
  v60 = a1;
  v57 = a4;
  v58 = a3;
  sub_10040C024(a1, a2, a3);
  v52 = a4->n128_u64[0];
  v53 = a4->n128_u16[4];
  v55 = 0;
  v56 = 0;
  v54 = 0;
  sub_100403D6C(&v54, a4[1].n128_u64[0], a4[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((a4[1].n128_u64[1] - a4[1].n128_u64[0]) >> 4));
  v47 = a3->n128_u64[0];
  v48 = a3->n128_u16[4];
  v50 = 0;
  v51 = 0;
  v49 = 0;
  sub_100403D6C(&v49, a3[1].n128_u64[0], a3[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1].n128_u64[1] - a3[1].n128_u64[0]) >> 4));
  v10 = v54;
  v9 = v55;
  v11 = v49;
  v12 = v50;
  if (v49)
  {
    v50 = v49;
    operator delete(v49);
  }

  v13 = v9 - v10;
  v14 = v12 - v11;
  if (v54)
  {
    v55 = v54;
    operator delete(v54);
  }

  if (v13 > v14)
  {
    sub_10040BF8C(&v58, &v57);
    v15 = v58->n128_u16[4];
    v42 = v58->n128_u64[0];
    v43 = v15;
    v45 = 0;
    v46 = 0;
    v44 = 0;
    sub_100403D6C(&v44, v58[1].n128_u64[0], v58[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((v58[1].n128_u64[1] - v58[1].n128_u64[0]) >> 4));
    v37 = a2->n128_u64[0];
    v38 = a2->n128_u16[4];
    v40 = 0;
    v41 = 0;
    v39 = 0;
    sub_100403D6C(&v39, a2[1].n128_u64[0], a2[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1].n128_u64[1] - a2[1].n128_u64[0]) >> 4));
    v17 = v44;
    v16 = v45;
    v18 = v39;
    v19 = v40;
    if (v39)
    {
      v40 = v39;
      operator delete(v39);
    }

    v20 = v16 - v17;
    v21 = v19 - v18;
    if (v44)
    {
      v45 = v44;
      operator delete(v44);
    }

    if (v20 > v21)
    {
      sub_10040BF8C(&v59, &v58);
      v22 = v59->n128_u16[4];
      v32 = v59->n128_u64[0];
      v33 = v22;
      v35 = 0;
      v36 = 0;
      v34 = 0;
      sub_100403D6C(&v34, v59[1].n128_u64[0], v59[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((v59[1].n128_u64[1] - v59[1].n128_u64[0]) >> 4));
      v30 = 0;
      v31 = 0;
      v29 = 0;
      sub_100403D6C(&v29, *(a1 + 16), *(a1 + 24), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 24) - *(a1 + 16)) >> 4));
      v24 = v34;
      v23 = v35;
      v25 = v29;
      v26 = v30;
      if (v29)
      {
        v30 = v29;
        operator delete(v29);
      }

      v27 = v23 - v24;
      v28 = v26 - v25;
      if (v34)
      {
        v35 = v34;
        operator delete(v34);
      }

      if (v27 > v28)
      {
        *&result = sub_10040BF8C(&v60, &v59).n128_u64[0];
      }
    }
  }

  return result;
}

void sub_10040C74C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (__p)
  {
    *v26 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_10040C78C(uint64_t a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5)
{
  v79 = a2;
  v80 = a1;
  v77 = a4;
  v78 = a3;
  v76 = a5;
  sub_10040C4A8(a1, a2, a3, a4);
  v71 = a5->n128_u64[0];
  v72 = a5->n128_u16[4];
  v74 = 0;
  v75 = 0;
  v73 = 0;
  sub_100403D6C(&v73, a5[1].n128_u64[0], a5[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((a5[1].n128_u64[1] - a5[1].n128_u64[0]) >> 4));
  v66 = a4->n128_u64[0];
  v67 = a4->n128_u16[4];
  v69 = 0;
  v70 = 0;
  v68 = 0;
  sub_100403D6C(&v68, a4[1].n128_u64[0], a4[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((a4[1].n128_u64[1] - a4[1].n128_u64[0]) >> 4));
  v12 = v73;
  v11 = v74;
  v13 = v68;
  v14 = v69;
  if (v68)
  {
    v69 = v68;
    operator delete(v68);
  }

  v15 = v11 - v12;
  v16 = v14 - v13;
  if (v73)
  {
    v74 = v73;
    operator delete(v73);
  }

  if (v15 > v16)
  {
    sub_10040BF8C(&v77, &v76);
    v17 = v77->n128_u16[4];
    v61 = v77->n128_u64[0];
    v62 = v17;
    v64 = 0;
    v65 = 0;
    v63 = 0;
    sub_100403D6C(&v63, v77[1].n128_u64[0], v77[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((v77[1].n128_u64[1] - v77[1].n128_u64[0]) >> 4));
    v56 = a3->n128_u64[0];
    v57 = a3->n128_u16[4];
    v59 = 0;
    v60 = 0;
    v58 = 0;
    sub_100403D6C(&v58, a3[1].n128_u64[0], a3[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1].n128_u64[1] - a3[1].n128_u64[0]) >> 4));
    v19 = v63;
    v18 = v64;
    v20 = v58;
    v21 = v59;
    if (v58)
    {
      v59 = v58;
      operator delete(v58);
    }

    v22 = v18 - v19;
    v23 = v21 - v20;
    if (v63)
    {
      v64 = v63;
      operator delete(v63);
    }

    if (v22 > v23)
    {
      sub_10040BF8C(&v78, &v77);
      v24 = v78->n128_u16[4];
      v51 = v78->n128_u64[0];
      v52 = v24;
      v54 = 0;
      v55 = 0;
      v53 = 0;
      sub_100403D6C(&v53, v78[1].n128_u64[0], v78[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((v78[1].n128_u64[1] - v78[1].n128_u64[0]) >> 4));
      v46 = a2->n128_u64[0];
      v47 = a2->n128_u16[4];
      v49 = 0;
      v50 = 0;
      v48 = 0;
      sub_100403D6C(&v48, a2[1].n128_u64[0], a2[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1].n128_u64[1] - a2[1].n128_u64[0]) >> 4));
      v26 = v53;
      v25 = v54;
      v27 = v48;
      v28 = v49;
      if (v48)
      {
        v49 = v48;
        operator delete(v48);
      }

      v29 = v25 - v26;
      v30 = v28 - v27;
      if (v53)
      {
        v54 = v53;
        operator delete(v53);
      }

      if (v29 > v30)
      {
        sub_10040BF8C(&v79, &v78);
        v31 = v79->n128_u16[4];
        v41 = v79->n128_u64[0];
        v42 = v31;
        v44 = 0;
        v45 = 0;
        v43 = 0;
        sub_100403D6C(&v43, v79[1].n128_u64[0], v79[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((v79[1].n128_u64[1] - v79[1].n128_u64[0]) >> 4));
        v39 = 0;
        v40 = 0;
        v38 = 0;
        sub_100403D6C(&v38, *(a1 + 16), *(a1 + 24), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 24) - *(a1 + 16)) >> 4));
        v33 = v43;
        v32 = v44;
        v34 = v38;
        v35 = v39;
        if (v38)
        {
          v39 = v38;
          operator delete(v38);
        }

        v36 = v32 - v33;
        v37 = v35 - v34;
        if (v43)
        {
          v44 = v43;
          operator delete(v43);
        }

        if (v36 > v37)
        {
          *&result = sub_10040BF8C(&v80, &v79).n128_u64[0];
        }
      }
    }
  }

  return result;
}

void sub_10040CB00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  if (__p)
  {
    *v37 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10040CB50(uint64_t *a1, __n128 *a2)
{
  v2 = a2;
  v73 = a2;
  v74 = a1;
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_10040C024(a1, (a1 + 5), (a2 - 40));
        return 1;
      case 4:
        sub_10040C4A8(a1, (a1 + 5), a1 + 5, (a2 - 40));
        return 1;
      case 5:
        sub_10040C78C(a1, (a1 + 5), a1 + 5, (a1 + 15), (a2 - 40));
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = a2[-3].n128_u64[1];
      v72 = 0;
      v73 = (a2 - 40);
      v68 = v5;
      v69 = a2[-2].n128_u16[0];
      v70 = 0;
      v71 = 0;
      sub_100403D6C(&v70, a2[-2].n128_u64[1], a2[-1].n128_i64[0], 0xAAAAAAAAAAAAAAABLL * ((a2[-1].n128_u64[0] - a2[-2].n128_u64[1]) >> 4));
      v63 = *a1;
      v64 = *(a1 + 4);
      v66 = 0;
      v67 = 0;
      v65 = 0;
      sub_100403D6C(&v65, a1[2], a1[3], 0xAAAAAAAAAAAAAAABLL * ((a1[3] - a1[2]) >> 4));
      v7 = v70;
      v6 = v71;
      v8 = v65;
      v9 = v66;
      if (v65)
      {
        v66 = v65;
        operator delete(v65);
      }

      v36 = v6 - v7;
      v37 = v9 - v8;
      if (v70)
      {
        v71 = v70;
        operator delete(v70);
      }

      if (v36 > v37)
      {
        sub_10040BF8C(&v74, &v73);
      }

      return 1;
    }
  }

  v10 = (a1 + 10);
  sub_10040C024(a1, (a1 + 5), a1 + 5);
  v11 = a1 + 15;
  if (a1 + 15 == v2)
  {
    return 1;
  }

  v39 = 0;
  v42 = a1 + 7;
  while (2)
  {
    v58 = *v11;
    v59 = *(v11 + 4);
    v13 = v11 + 2;
    v12 = v11[2];
    v61 = 0;
    v62 = 0;
    __p = 0;
    v41 = v11;
    sub_100403D6C(&__p, v12, v11[3], 0xAAAAAAAAAAAAAAABLL * ((v11[3] - v12) >> 4));
    v14 = v10->n128_u64[0];
    v54 = v10->n128_i16[4];
    v53 = v14;
    v56 = 0;
    v57 = 0;
    v55 = 0;
    v15 = &v10[1];
    sub_100403D6C(&v55, v10[1].n128_u64[0], v10[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((v10[1].n128_u64[1] - v10[1].n128_u64[0]) >> 4));
    v17 = __p;
    v16 = v61;
    v19 = v55;
    v18 = v56;
    if (!v55)
    {
      v20 = __p;
      if (!__p)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    v56 = v55;
    operator delete(v55);
    v20 = __p;
    if (__p)
    {
LABEL_15:
      v61 = v20;
      operator delete(v20);
    }

LABEL_16:
    if (v16 - v17 <= (v18 - v19))
    {
      v21 = v41;
      goto LABEL_37;
    }

    v21 = v41;
    v51 = *v41;
    v52 = *(v41 + 4);
    v22 = v41[2];
    v40 = *(v41 + 3);
    v13[1] = 0;
    v13[2] = 0;
    *v13 = 0;
    *v41 = v10->n128_u64[0];
    *(v41 + 4) = v10->n128_u16[4];
    sub_10016D9A8(v13, v10 + 1);
    if (v10 == v74)
    {
      v32 = v10;
      goto LABEL_33;
    }

    v23 = v42;
    while (1)
    {
      v46 = v51;
      v47 = v52;
      v49 = 0;
      v50 = 0;
      v48 = 0;
      sub_100403D6C(&v48, v22, v40, 0xAAAAAAAAAAAAAAABLL * ((v40 - v22) >> 4));
      v44 = 0;
      v45 = 0;
      v43 = 0;
      sub_100403D6C(&v43, *v23, v23[1], 0xAAAAAAAAAAAAAAABLL * ((v23[1] - *v23) >> 4));
      v24 = v48;
      v25 = v49;
      v26 = v43;
      v27 = v44;
      if (v43)
      {
        v44 = v43;
        operator delete(v43);
      }

      v28 = v25 - v24;
      v29 = v27 - v26;
      if (v48)
      {
        v49 = v48;
        operator delete(v48);
        if (v28 <= v29)
        {
          v32 = v10;
          goto LABEL_32;
        }

        goto LABEL_25;
      }

      if (v28 <= v29)
      {
        break;
      }

LABEL_25:
      v32 = &v10[-3].n128_i64[1];
      v15 = &v10[-2].n128_i64[1];
      v23[3] = *(v23 - 2);
      *(v23 + 16) = *(v23 - 4);
      sub_10016D9A8((v23 + 5), v23);
      v30 = v23 - 5;
      v31 = (v23 - 2);
      v23 -= 5;
      v10 = (v10 - 40);
      if (v31 == v74)
      {
        v15 = v30 + 5;
        goto LABEL_32;
      }
    }

    v15 = v23 + 5;
    v32 = v23 + 3;
LABEL_32:
    v21 = v41;
LABEL_33:
    v33 = v40;
    v34 = v51;
    *(v32 + 4) = v52;
    *v32 = v34;
    v35 = *v15;
    if (*v15)
    {
      v32[3] = v35;
      operator delete(v35);
      v33 = v40;
      *v15 = 0;
      v15[1] = 0;
      v15[2] = 0;
    }

    *v15 = v22;
    *(v32 + 3) = v33;
    if (v39 != 7)
    {
      ++v39;
      v2 = v73;
LABEL_37:
      v10 = v21;
      v42 += 5;
      v11 = &v21[2].n128_i64[1];
      if (&v21[2].n128_i8[8] == v2)
      {
        return 1;
      }

      continue;
    }

    return &v21[2].n128_i8[8] == v73;
  }
}

void sub_10040CFFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  v38 = *(v36 - 128);
  if (v38)
  {
    *(v36 - 120) = v38;
    operator delete(v38);
  }

  _Unwind_Resume(exception_object);
}

char *sub_10040D054(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 >= 1)
  {
    v6 = __src;
    v8 = a1[1];
    v9 = a1[2];
    if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 4)) >= a5)
    {
      v15 = v8 - __dst;
      if ((0xAAAAAAAAAAAAAAABLL * ((v8 - __dst) >> 4)) >= a5)
      {
        v21 = 3 * a5;
        v22 = &__dst[48 * a5];
        v23 = &v8[-48 * a5];
        v24 = a1[1];
        while (v23 < v8)
        {
          v25 = *v23;
          v26 = *(v23 + 2);
          v24[1] = *(v23 + 1);
          v24[2] = v26;
          *v24 = v25;
          v24 += 3;
          v23 += 48;
        }

        a1[1] = v24;
        if (v8 != v22)
        {
          memmove(&__dst[48 * a5], __dst, v8 - v22);
        }

        v32 = 16 * v21;
        v33 = v5;
        v34 = v6;
      }

      else
      {
        v16 = &__src[v15];
        v17 = a1[1];
        v18 = v17;
        while (v16 != a4)
        {
          v19 = *v16;
          v20 = *(v16 + 2);
          *(v18 + 1) = *(v16 + 1);
          *(v18 + 2) = v20;
          *v18 = v19;
          v18 += 48;
          v16 += 48;
          v17 += 48;
        }

        a1[1] = v17;
        if (v15 < 1)
        {
          return v5;
        }

        v27 = &__dst[48 * a5];
        v28 = &v17[-48 * a5];
        v29 = v17;
        while (v28 < v8)
        {
          v30 = *v28;
          v31 = *(v28 + 2);
          *(v29 + 1) = *(v28 + 1);
          *(v29 + 2) = v31;
          *v29 = v30;
          v29 += 48;
          v28 += 48;
        }

        a1[1] = v29;
        if (v18 != v27)
        {
          memmove(&__dst[48 * a5], __dst, v17 - v27);
        }

        v33 = v5;
        v34 = v6;
        v32 = v15;
      }

      memmove(v33, v34, v32);
      return v5;
    }

    v10 = *a1;
    v11 = a5 - 0x5555555555555555 * (&v8[-*a1] >> 4);
    if (v11 > 0x555555555555555)
    {
      sub_100019B38();
    }

    v12 = __dst - v10;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 4);
    if (2 * v13 > v11)
    {
      v11 = 2 * v13;
    }

    if (v13 >= 0x2AAAAAAAAAAAAAALL)
    {
      v14 = 0x555555555555555;
    }

    else
    {
      v14 = v11;
    }

    if (v14)
    {
      sub_100403898(a1, v14);
    }

    v35 = 16 * (v12 >> 4);
    v36 = (v35 + 48 * a5);
    v37 = 48 * a5;
    v38 = v35;
    do
    {
      v39 = *v6;
      v40 = *(v6 + 2);
      v38[1] = *(v6 + 1);
      v38[2] = v40;
      *v38 = v39;
      v38 += 3;
      v6 += 48;
      v37 -= 48;
    }

    while (v37);
    memcpy(v36, v5, a1[1] - v5);
    v41 = *a1;
    v42 = &v36[a1[1] - v5];
    a1[1] = v5;
    v43 = v5 - v41;
    v44 = (v35 - (v5 - v41));
    memcpy(v44, v41, v43);
    v45 = *a1;
    *a1 = v44;
    a1[1] = v42;
    a1[2] = 0;
    if (v45)
    {
      operator delete(v45);
    }

    return v35;
  }

  return v5;
}

uint64_t sub_10040D3DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  *(result + 24) = 0xF00000004;
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = off_1009AABB0;
  if (a2 > 4)
  {
    v3 = "this->max_num_rows_ >= num_rows";
    v4 = 422;
    goto LABEL_6;
  }

  if (a3 >= 0x10)
  {
    v3 = "this->max_num_cols_ >= num_cols";
    v4 = 423;
LABEL_6:
    __assert_rtn("SetMatrixSize", "cnmatrixbase.h", v4, v3);
  }

  *(result + 8) = a2;
  *(result + 12) = a3;
  *(result + 16) = a3 * a2;
  *(result + 20) = a2;
  *(result + 32) = result + 40;
  return result;
}

void sub_10040D538(uint64_t a1)
{
  *(a1 + 24) = 0x100000650;
  *a1 = &off_1009AABF8;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 8) = xmmword_100571BC0;
  sub_10040D650(a1);
}

void sub_10040D5A0(_Unwind_Exception *exception_object)
{
  v3 = v1[5];
  v1[5] = 0;
  if (v3)
  {
    operator delete[]();
  }

  *v1 = off_1009991A0;
  _Unwind_Resume(exception_object);
}

void sub_10040D5E8(void *a1)
{
  sub_10040D74C(a1);

  operator delete();
}

void *sub_10040D74C(void *a1)
{
  *a1 = &off_1009AABF8;
  v2 = a1[5];
  a1[5] = 0;
  if (v2)
  {
    operator delete[]();
  }

  *a1 = off_1009991A0;
  return a1;
}

uint64_t sub_10040D854(uint64_t result, unsigned int a2, unsigned int a3)
{
  *(result + 24) = 0xF00000003;
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = off_1009AAC88;
  if (a2 > 3)
  {
    v3 = "this->max_num_rows_ >= num_rows";
    v4 = 422;
    goto LABEL_6;
  }

  if (a3 >= 0x10)
  {
    v3 = "this->max_num_cols_ >= num_cols";
    v4 = 423;
LABEL_6:
    __assert_rtn("SetMatrixSize", "cnmatrixbase.h", v4, v3);
  }

  *(result + 8) = a2;
  *(result + 12) = a3;
  *(result + 16) = a3 * a2;
  *(result + 20) = a2;
  *(result + 32) = result + 40;
  return result;
}

uint64_t sub_10040D9AC(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __int128 *a8, float a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v22 = sub_1003FFC98(a1, a3);
  sub_10041087C(v22 + 32, a4);
  sub_1003FFD30(a1 + 64, a5);
  sub_10038D8EC(a1 + 96, a10);
  sub_10038D984(a1 + 128, a11);
  sub_10038DA1C(a1 + 160, a12);
  sub_10038DAB4(a1 + 192, a13);
  sub_10038DB4C(a1 + 224, a14);
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 256) = a1 + 264;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 1065353216;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 1065353216;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 1065353216;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 1065353216;
  sub_10038C990((a1 + 440), a6);
  memcpy((a1 + 464), (a6 + 24), 0x18CuLL);
  *(a1 + 864) = *(a6 + 424);
  sub_10029F1D8((a1 + 880), a6 + 440);
  v23 = *(a6 + 464);
  *(a1 + 916) = *(a6 + 476);
  *(a1 + 904) = v23;
  sub_10029F2B8((a1 + 936), (a6 + 496));
  v24 = *(a6 + 544);
  *(a1 + 968) = *(a6 + 528);
  *(a1 + 984) = v24;
  v25 = *(a6 + 560);
  v26 = *(a6 + 576);
  v27 = *(a6 + 608);
  *(a1 + 1032) = *(a6 + 592);
  *(a1 + 1048) = v27;
  *(a1 + 1000) = v25;
  *(a1 + 1016) = v26;
  v28 = *(a6 + 624);
  v29 = *(a6 + 640);
  v30 = *(a6 + 672);
  *(a1 + 1096) = *(a6 + 656);
  *(a1 + 1112) = v30;
  *(a1 + 1064) = v28;
  *(a1 + 1080) = v29;
  v31 = *(a6 + 688);
  v32 = *(a6 + 704);
  v33 = *(a6 + 720);
  *(a1 + 1176) = *(a6 + 736);
  *(a1 + 1144) = v32;
  *(a1 + 1160) = v33;
  *(a1 + 1128) = v31;
  *(a1 + 1184) = 0;
  *(a1 + 1192) = 0;
  *(a1 + 1216) = 0;
  *(a1 + 1224) = 0;
  *(a1 + 1208) = 0;
  *(a1 + 1232) = a9;
  v34 = *a8;
  v35 = a8[1];
  *(a1 + 1272) = *(a8 + 4);
  *(a1 + 1240) = v34;
  *(a1 + 1256) = v35;
  *(a1 + 1280) = 0;
  *(a1 + 1328) = 0;
  *(a1 + 1336) = 0;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 0;
  *(a1 + 1392) = 0;
  *(a1 + 1400) = 0;
  *(a1 + 1432) = 0;
  sub_10040DD48(a1, a2);
  sub_10029EED4((a1 + 1336), a7);
  sub_10029EED4((a1 + 1368), (a7 + 32));
  *(a1 + 1201) = 1;
  return a1;
}

void sub_10040DBB8(_Unwind_Exception *a1)
{
  if (*(v1 + 1432) == 1)
  {
    for (i = 0; i != -32; i -= 16)
    {
      v7 = *(v1 + 1424 + i);
      if (v7)
      {
        sub_10000AD84(v7);
      }
    }
  }

  v8 = (v1 + 1208);
  v9 = (v1 + 1392);
  v10 = -64;
  v11 = (v1 + 1392);
  while (1)
  {
    v12 = *v11;
    v11 -= 4;
    if (v12 == 1 && *(v9 - 1) < 0)
    {
      operator delete(*(v9 - 3));
    }

    v9 = v11;
    v10 += 32;
    if (!v10)
    {
      if (*(v1 + 1328) == 1 && *(v1 + 1303) < 0)
      {
        operator delete(*(v1 + 1280));
      }

      v13 = *v8;
      if (*v8)
      {
        *(v1 + 1216) = v13;
        operator delete(v13);
      }

      if (*(v1 + 1192) == 1)
      {
      }

      sub_1001BB564(v1 + 440);
      sub_100410BEC((v1 + 400));
      sub_100410BEC(v3);
      sub_100410B6C(v1 + 320);
      sub_100410974(v2);
      sub_100410914(v1 + 256, *v4);
      sub_10038CC70(v1 + 224);
      sub_10038CBF0(v1 + 192);
      sub_10038CB70(v1 + 160);
      sub_10038CAF0(v1 + 128);
      sub_10038CA70(v1 + 96);
      sub_10038DBE4(v1 + 64);
      sub_10038DC64(v1 + 32);
      sub_10038DCE4(v1);
      _Unwind_Resume(a1);
    }
  }
}

void sub_10040DD48(uint64_t a1, uint64_t **a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 == v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Region vector is empty.");
  }

  v31 = (a1 + 264);
  do
  {
    v5 = *(v2 + 28);
    v32 = v5;
    for (i = v31; ; ++i)
    {
      do
      {
        i = *i;
        if (!i)
        {
          operator new();
        }

        v7 = *(i + 8);
      }

      while (v5 < v7);
      if (v7 >= v5)
      {
        break;
      }
    }

    v8 = sub_100011390(a1 + 256, &v32);
    v9 = sub_1000113E8(v8, &unk_100571CBC);
    sub_100410FD8(*v9, v2, v2);
    if ((v10 & 1) == 0)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
      {
        sub_1004CE834();
      }

      sub_100410914(a1 + 256, *(a1 + 264));
      *(a1 + 264) = 0;
      *(a1 + 272) = 0;
      *(a1 + 256) = v31;
      v28 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v28, "Region radii are not unique.");
    }

    if (*(v2 + 41) == 1)
    {
      v11 = sub_100011390(a1 + 256, &v32);
      LOBYTE(buf) = 1;
      v12 = sub_1000113E8(v11, &buf);
      sub_100410FD8(*v12, v2, v2);
      if ((v13 & 1) == 0)
      {
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
        {
          sub_1004CE834();
        }

        sub_100410914(a1 + 256, *(a1 + 264));
        *(a1 + 264) = 0;
        *(a1 + 272) = 0;
        *(a1 + 256) = v31;
        v29 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v29, "Region radii are not unique.");
      }
    }

    if (v32 == 5 && *(v2 + 36) == 4)
    {
      sub_10001308C((a1 + 1280), v2);
    }

    v14 = qword_1009F9820;
    v15 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG);
    if (v15)
    {
      v16 = v2;
      if (*(v2 + 23) < 0)
      {
        v16 = *v2;
      }

      v17 = *(v2 + 24);
      buf = 136315650;
      *buf_4 = v16;
      v35 = 2048;
      *v36 = v17;
      *&v36[8] = 1024;
      *&v36[10] = v32;
      _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "#regionmon #region-class adding region (%s: %.2f) to region category %d dictionary", &buf, 0x1Cu);
    }

    v2 += 48;
  }

  while (v2 != v3);
  v18 = *(a1 + 256);
  if (v18 != v31)
  {
    do
    {
      v19 = v18[5];
      if (v19 != v18 + 6)
      {
        do
        {
          sub_10040E504(v15, v19[5]);
          v20 = qword_1009F9820;
          v15 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
          if (v15)
          {
            v21 = *(v19[5] + 16);
            v22 = *(v18 + 8);
            buf = 134218498;
            *buf_4 = v21;
            v35 = 1024;
            *v36 = v22;
            *&v36[4] = 2080;
            *&v36[6] = "YES";
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#regionmon region-class %lu regions for region category %d valid: %s", &buf, 0x1Cu);
          }

          v23 = v19[1];
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
              v24 = v19[2];
              v25 = *v24 == v19;
              v19 = v24;
            }

            while (!v25);
          }

          v19 = v24;
        }

        while (v24 != v18 + 6);
      }

      v26 = v18[1];
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
          v27 = v18[2];
          v25 = *v27 == v18;
          v18 = v27;
        }

        while (!v25);
      }

      v18 = v27;
    }

    while (v27 != v31);
  }
}

uint64_t sub_10040E344(uint64_t a1)
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#regionmon ~RegionMonitor", v9, 2u);
  }

  sub_100410C80(a1);
  if (*(a1 + 1432) == 1)
  {
    for (i = 0; i != -32; i -= 16)
    {
      v4 = *(a1 + 1424 + i);
      if (v4)
      {
        sub_10000AD84(v4);
      }
    }
  }

  for (j = 0; j != -64; j -= 32)
  {
    v6 = a1 + j;
    if (*(a1 + j + 1392) == 1 && *(v6 + 1391) < 0)
    {
      operator delete(*(v6 + 1368));
    }
  }

  if (*(a1 + 1328) == 1 && *(a1 + 1303) < 0)
  {
    operator delete(*(a1 + 1280));
  }

  v7 = *(a1 + 1208);
  if (v7)
  {
    *(a1 + 1216) = v7;
    operator delete(v7);
  }

  if (*(a1 + 1192) == 1)
  {
  }

  if (*(a1 + 960) == 1 && *(a1 + 959) < 0)
  {
    operator delete(*(a1 + 936));
  }

  sub_10002074C(a1 + 880, *(a1 + 888));
  sub_10002074C(a1 + 440, *(a1 + 448));
  sub_100410BEC((a1 + 400));
  sub_100410BEC((a1 + 360));
  sub_100410B6C(a1 + 320);
  sub_100410974(a1 + 280);
  sub_100410914(a1 + 256, *(a1 + 264));
  sub_10038CC70(a1 + 224);
  sub_10038CBF0(a1 + 192);
  sub_10038CB70(a1 + 160);
  sub_10038CAF0(a1 + 128);
  sub_10038CA70(a1 + 96);
  sub_10038DBE4(a1 + 64);
  sub_10038DC64(a1 + 32);
  return sub_10038DCE4(a1);
}

uint64_t sub_10040E504(uint64_t a1, void *a2)
{
  if (a2[2] >= 2uLL)
  {
    v2 = a2 + 1;
    v3 = *a2;
    if (*a2 != a2 + 1)
    {
      do
      {
        v4 = v3[1];
        v5 = v4;
        v6 = v3;
        if (v4)
        {
          do
          {
            v7 = v5;
            v5 = *v5;
          }

          while (v5);
        }

        else
        {
          do
          {
            v7 = v6[2];
            v8 = *v7 == v6;
            v6 = v7;
          }

          while (!v8);
        }

        if (v7 != v2)
        {
          v9 = *(v3 + 15);
          while (v9 == *(v7 + 15))
          {
            v10 = *(v3 + 55);
            if (v10 >= 0)
            {
              v11 = *(v3 + 55);
            }

            else
            {
              v11 = v3[5];
            }

            v12 = *(v7 + 55);
            v13 = v12;
            if ((v12 & 0x80u) != 0)
            {
              v12 = v7[5];
            }

            if (v11 == v12)
            {
              v14 = v10 >= 0 ? v3 + 4 : v3[4];
              v15 = v13 >= 0 ? v7 + 4 : v7[4];
              if (!memcmp(v14, v15, v11))
              {
                v23 = qword_1009F9820;
                if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
                {
                  sub_1004CE9AC(v3 + 55, v3 + 4, v23);
                }

                exception = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(exception, "Region names are not unique.");
                goto LABEL_49;
              }
            }

            v16 = *(v7 + 14);
            v17 = *(v3 + 14);
            if (v16 <= v17)
            {
              sub_1004CE980();
            }

            if ((v16 - v17) < 0.1)
            {
              if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
              {
                sub_1004CE8EC();
              }

              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Regions are too close together.");
              goto LABEL_49;
            }

            v18 = v7[1];
            if (v18)
            {
              do
              {
                v19 = v18;
                v18 = *v18;
              }

              while (v18);
            }

            else
            {
              do
              {
                v19 = v7[2];
                v8 = *v19 == v7;
                v7 = v19;
              }

              while (!v8);
            }

            v7 = v19;
            if (v19 == v2)
            {
              goto LABEL_32;
            }
          }

          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
          {
            sub_1004CE8B0();
          }

          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Region categories in set doesn't match");
LABEL_49:
        }

LABEL_32:
        if (v4)
        {
          do
          {
            v20 = v4;
            v4 = *v4;
          }

          while (v4);
        }

        else
        {
          do
          {
            v20 = v3[2];
            v8 = *v20 == v3;
            v3 = v20;
          }

          while (!v8);
        }

        v3 = v20;
      }

      while (v20 != v2);
    }
  }

  return 1;
}

uint64_t sub_10040E7A0(std::string::size_type a1, std::string::size_type a2, int a3, int a4, int a5, double a6)
{
  v8 = 0;
  v44 = a2;
  v42 = a4;
  v43 = a3;
  v41 = 0;
  if (a3 <= 2)
  {
    if (a3 == 1)
    {
      v41 = a5;
      v8 = a5;
      goto LABEL_15;
    }

    if (a3 != 2)
    {
      goto LABEL_15;
    }

    goto LABEL_8;
  }

  switch(a3)
  {
    case 3:
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004CEA68();
      }

      goto LABEL_22;
    case 4:
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004CEA34();
      }

      goto LABEL_22;
    case 5:
LABEL_8:
      v9 = qword_1009F9820;
      v8 = 0;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#regionmon Setting typePredictor as None since WifiToF/ObjectTracking based ranging does not use user intent score.", &buf, 2u);
        v8 = 0;
      }

      break;
  }

LABEL_15:
  sub_10041114C((a1 + 280), &v44);
  v39 = 0;
  v40 = 0;
  v10 = *(a1 + 264);
  if (!v10)
  {
LABEL_20:
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004CEB1C();
    }

LABEL_22:
    v12 = 0;
    return v12 & 1;
  }

  while (1)
  {
    v11 = *(v10 + 8);
    if (v42 >= v11)
    {
      break;
    }

LABEL_19:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_20;
    }
  }

  if (v11 < v42)
  {
    ++v10;
    goto LABEL_19;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004CEA9C();
  }

  v14 = sub_100011390(a1 + 256, &v42);
  v15 = sub_1000113E8(v14, &unk_100571CBC);
  v17 = *v15;
  v16 = v15[1];
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v39 = v17;
  v40 = v16;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v20 = *v17;
  v18 = (v17 + 1);
  v19 = v20;
  if (v20 != v18)
  {
    do
    {
      sub_1003FFF40(&v36, v19 + 2);
      v21 = *(v19 + 1);
      if (v21)
      {
        do
        {
          v22 = v21;
          v21 = *v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v22 = *(v19 + 2);
          v23 = *v22 == v19;
          v19 = v22;
        }

        while (!v23);
      }

      v19 = v22;
    }

    while (v22 != v18);
    v8 = v41;
  }

  v35 = 0;
  if ((v8 & 0xFFFFFFFD) == 1 && (*(a1 + 1432) != 1 || !*(a1 + 1400)))
  {
    memset(&buf, 0, sizeof(buf));
    v48 = 0x3FE8000000000000;
    v47 = *(a1 + 1248);
    if (*(a1 + 1360))
    {
      std::string::operator=(&buf, (a1 + 1336));
      if (*(a1 + 1432))
      {
        LODWORD(v45) = 0;
        sub_1004111E4();
      }

      LODWORD(v45) = 0;
      sub_1004111E4();
    }

    __assert_rtn("initStateForDevice", "NRBYRegionMonitor.mm", 266, "_pathToModelWeights[kIdxUwbSpatialGesturePredictor].has_value()");
  }

  if (v8 <= 1)
  {
    if (v8)
    {
      if (v8 != 1)
      {
        goto LABEL_57;
      }

      v27 = *(a1 + 1248);
      v35 = v27;
      v25 = qword_1009F9820;
      if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_57;
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 134218240;
      *(buf.__r_.__value_.__r.__words + 4) = v27;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v44;
      v26 = "#regionmon Single antenna spatial gesture threshold set to %f for dev 0x%llx";
    }

    else
    {
      v28 = *(a1 + 1264);
      v35 = v28;
      v25 = qword_1009F9820;
      if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_57;
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 134218240;
      *(buf.__r_.__value_.__r.__words + 4) = v28;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v44;
      v26 = "#regionmon No intent classifier threshold set to %f for dev 0x%llx";
    }

LABEL_56:
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, v26, &buf, 0x16u);
    goto LABEL_57;
  }

  switch(v8)
  {
    case 2:
      v29 = *(a1 + 1240);
      v35 = v29;
      v25 = qword_1009F9820;
      if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        break;
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 134218240;
      *(buf.__r_.__value_.__r.__words + 4) = v29;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v44;
      v26 = "#regionmon AoA intent threshold set to %f for dev 0x%llx";
      goto LABEL_56;
    case 3:
      v24 = *(a1 + 1256);
      v35 = v24;
      v25 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf.__r_.__value_.__l.__data_) = 134218240;
        *(buf.__r_.__value_.__r.__words + 4) = v24;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v44;
        v26 = "#regionmon Dual antenna spatial gesture threshold set to %f for dev 0x%llx";
        goto LABEL_56;
      }

      break;
    case 4:
      __assert_rtn("initStateForDevice", "NRBYRegionMonitor.mm", 298, "0");
  }

LABEL_57:
  v45 = &v44;
  buf.__r_.__value_.__r.__words[0] = &v44;
  buf.__r_.__value_.__l.__size_ = a1;
  buf.__r_.__value_.__r.__words[2] = a1 + 64;
  *&v47 = &v39;
  *(&v47 + 1) = a1 + 440;
  v48 = &v43;
  v49 = &v41;
  v50 = &v35;
  v51 = &v42;
  v52 = a1 + 1400;
  sub_100411350((a1 + 280), &v44);
  v12 = v30;
  if (v30)
  {
    v31 = v44;
    v32 = v42;
    memset(v33, 0, sizeof(v33));
    sub_10038D514(v33, v36, v37, 0xAAAAAAAAAAAAAAABLL * ((v37 - v36) >> 4));
    v34 = 1;
    sub_10040EF34(a1 + 32, 1, v31, v32, v33, v41, a6);
    if (v34 == 1)
    {
      buf.__r_.__value_.__r.__words[0] = v33;
      sub_10038C574(&buf);
    }
  }

  buf.__r_.__value_.__r.__words[0] = &v36;
  sub_10038C574(&buf);
  if (v40)
  {
    sub_10000AD84(v40);
  }

  return v12 & 1;
}

void sub_10040EDEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, char *a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a14)
  {
    sub_10000AD84(a14);
  }

  if (a34 < 0)
  {
    operator delete(__p);
  }

  a13 = &a19;
  sub_10038C574(&a13);
  if (a23)
  {
    sub_10000AD84(a23);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10040EEA4(uint64_t a1, __int128 *a2)
{
  v2 = a2;
  if (*(a1 + 32) == 1)
  {
    v4 = (a1 + 8);
    v5 = 2;
    do
    {
      v6 = *v2;
      *v2 = 0;
      *(v2 + 1) = 0;
      v7 = *v4;
      *(v4 - 1) = v6;
      if (v7)
      {
        sub_10000AD84(v7);
      }

      ++v2;
      v4 += 2;
      --v5;
    }

    while (v5);
  }

  else
  {
    *a1 = *a2;
    *a2 = 0uLL;
    *(a1 + 16) = a2[1];
    a2[1] = 0uLL;
    *(a1 + 32) = 1;
  }

  return a1;
}