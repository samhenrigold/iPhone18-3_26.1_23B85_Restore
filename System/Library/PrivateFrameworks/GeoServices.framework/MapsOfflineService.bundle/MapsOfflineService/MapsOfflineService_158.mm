void sub_9AFB48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B3210)
  {
    qword_27B3218 = qword_27B3210;
    operator delete(qword_27B3210);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_9AFBF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (a5)
  {
    v5 = 0;
  }

  else
  {
    v5 = 8;
  }

  result = *(a1 + v5);
  if (!result)
  {
    v7 = a5;
    sub_527724(v12, a4);
    v20 = v7 ^ 1;
    v19 = 0;
    if (v7)
    {
      goto LABEL_14;
    }

    v9 = __p;
    if (v17 == __p)
    {
      if (v17)
      {
        v16 = __p;
        operator delete(__p);
        __p = 0;
        v16 = 0;
        v17 = 0;
      }

      operator new();
    }

    v10 = v16;
    v11 = v16 - __p;
    if (v16 == __p)
    {
      *v16 = 0;
      v16 = &v10[v11 + 4];
      v21 = 0;
      if (!*(a4 + 1444))
      {
LABEL_14:
        operator new();
      }
    }

    else
    {
      *__p = 0;
      v16 = v9 + 4;
      v21 = 0;
      if (!*(a4 + 1444))
      {
        goto LABEL_14;
      }
    }

    v14 = v13;
    v18 = 0;
    goto LABEL_14;
  }

  return result;
}

void sub_9AFD88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_528AB4(va);
  _Unwind_Resume(a1);
}

void sub_9AFDC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_528AB4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_9AFDDC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4)
  {
    v4 = 24;
  }

  else
  {
    v4 = 16;
  }

  result = *(a1 + v4);
  if (!result)
  {
    HIBYTE(v7[2]) = 19;
    strcpy(v7, "TransitRouteBuilder");
    memset(v6, 0, sizeof(v6));
    sub_3AEC94(a2, v7, v6);
    operator new();
  }

  return result;
}

void sub_9AFFD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void **a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1A104(&a15);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    sub_1A104(&a15);
    if ((a23 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(a18);
  _Unwind_Resume(a1);
}

uint64_t sub_9B0054(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = sub_3AFEE8(a3);
  *(a1 + 24) = sub_3AFB1C(a3);
  *(a1 + 32) = sub_3AFC64(a3);
  nullsub_1();
  nullsub_1();
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = a5;
  *(a1 + 88) = a4;
  *(a1 + 96) = *(a4 + 968);
  if (*(a6 + 23) < 0)
  {
    sub_325C((a1 + 104), *a6, *(a6 + 1));
  }

  else
  {
    v11 = *a6;
    *(a1 + 120) = *(a6 + 2);
    *(a1 + 104) = v11;
  }

  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 1065353216;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 1065353216;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 1065353216;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 1065353216;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 1065353216;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 1065353216;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 1065353216;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 1065353216;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  return a1;
}

double sub_9B018C(uint64_t *a1, unint64_t *a2)
{
  if (!sub_446608(a1 + 16, a2))
  {
    sub_7E9A4(v58);
    v5 = a1[10];
    v6 = *(v5 + 8);
    if (v6 >= *(v5 + 16))
    {
      v7 = sub_9B6E18(a1[10]);
    }

    else
    {
      *(v6 + 8) = 0u;
      *(v6 + 24) = 0u;
      *(v6 + 40) = 0u;
      *(v6 + 56) = 0u;
      *(v6 + 72) = 0u;
      *(v6 + 88) = 0u;
      *(v6 + 104) = 0u;
      *(v6 + 152) = 0u;
      *(v6 + 136) = 0u;
      *(v6 + 120) = 0u;
      *v6 = -1;
      *(v6 + 8) = 0x7FFFFFFF;
      *(v6 + 16) = 0u;
      *(v6 + 32) = 0u;
      *(v6 + 48) = 0u;
      *(v6 + 64) = 0u;
      *(v6 + 80) = 0;
      *(v6 + 88) = -1;
      *(v6 + 100) = -1;
      *(v6 + 104) = -1;
      *(v6 + 157) = 0;
      *(v6 + 128) = 0u;
      *(v6 + 144) = 0u;
      v7 = v6 + 168;
      *(v6 + 112) = 0u;
    }

    *(v5 + 8) = v7;
    v8 = *(a1[10] + 8);
    v9 = sub_502FF8(a1[3], *a2, 0, "stop");
    v10 = v9 + *(v9 - *v9 + 6);
    v11 = *v10;
    LODWORD(v10) = *(v10 + 4);
    if (v10 >= 0xFFFFFFFE)
    {
      v10 = 4294967294;
    }

    else
    {
      v10 = v10;
    }

    *(v8 - 168) = v11 | (v10 << 32);
    *(v8 - 160) = 0x7FFFFFFF;
    v12 = a1[3];
    v13 = sub_502FF8(v12, *a2, 0, "stop");
    v14 = (v13 - *v13);
    if (*v14 >= 5u && (v15 = v14[2]) != 0)
    {
      v16 = *(v13 + v15);
      v17 = sub_2C939C(v12, 1u, 0);
      if (!v17)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v16 = 0;
      v17 = sub_2C939C(v12, 1u, 0);
      if (!v17)
      {
        goto LABEL_56;
      }
    }

    v18 = &v17[-*v17];
    if (*v18 < 0xDu || (v19 = *(v18 + 6)) == 0)
    {
LABEL_56:
      exception = __cxa_allocate_exception(0x40uLL);
      v51 = sub_2D390(exception, "Root quad node of transit network layer does not contain info object", 0x44uLL);
    }

    v20 = &v17[v19 + *&v17[v19]];
    v21 = &v20[-*v20];
    if (*v21 >= 0xBu)
    {
      v22 = *(v21 + 5);
      if (v22)
      {
        if (v20[v22])
        {
          nullsub_1();
          v16 = v23;
        }
      }
    }

    *(v8 - 80) = v16;
    *(v8 - 72) = *a2;
    v24 = sub_502FF8(a1[3], *a2, 0, "stop");
    v25 = (v24 - *v24);
    if (*v25 >= 9u && (v26 = v25[4]) != 0)
    {
      v27 = (v24 + v26 + *(v24 + v26));
      __dst = 0uLL;
      v53 = 0;
      sub_943AEC(&__dst, *v27);
      v60 = (v27 + 1);
      v59 = &v27[*v27 + 1];
      sub_943E24(&v60, &v59, &__dst, sub_509164);
      v28 = __dst;
      v29 = v53;
    }

    else
    {
      v29 = 0;
      v28 = 0uLL;
    }

    v54 = v28;
    v55 = v29;
    sub_9D6590(&v54, a1[11] + 968, &v56);
    v30 = (v8 - 152);
    v31 = *(v8 - 152);
    if (!v31)
    {
LABEL_33:
      *(v8 - 152) = v56;
      *(v8 - 136) = v57;
      v56 = 0uLL;
      v57 = 0;
      v35 = v54;
      if (v54)
      {
        v36 = *(&v54 + 1);
        v37 = v54;
        if (*(&v54 + 1) != v54)
        {
          do
          {
            v38 = *(v36 - 24);
            if (v38)
            {
              v39 = *(v36 - 16);
              v40 = *(v36 - 24);
              if (v39 != v38)
              {
                do
                {
                  if (*(v39 - 1) < 0)
                  {
                    operator delete(*(v39 - 24));
                  }

                  v39 -= 32;
                }

                while (v39 != v38);
                v40 = *(v36 - 24);
              }

              *(v36 - 16) = v38;
              operator delete(v40);
            }

            v41 = (v36 - 64);
            if (*(v36 - 41) < 0)
            {
              operator delete(*v41);
            }

            v36 -= 64;
          }

          while (v41 != v35);
          v37 = v54;
        }

        *(&v54 + 1) = v35;
        operator delete(v37);
      }

      sub_9D43A4((v8 - 152), &__dst);
      v42 = (v8 - 128);
      if (*(v8 - 105) < 0)
      {
        operator delete(*v42);
      }

      v43 = __dst;
      *(v8 - 112) = v53;
      *v42 = v43;
      v44 = sub_502FF8(a1[3], *a2, 0, "stop");
      v45 = (v44 - *v44);
      if (*v45 >= 0x31u && (v46 = v45[24]) != 0)
      {
        v47 = (v44 + v46 + *(v44 + v46));
        __dst = 0uLL;
        v53 = 0;
        sub_9B717C(&__dst, *v47);
        v60 = (v47 + 1);
        v59 = &v47[*v47 + 1];
        sub_9B7574(&v60, &v59, &__dst, sub_9B7070);
        v48 = __dst;
        v49 = v53;
      }

      else
      {
        v49 = 0;
        v48 = 0uLL;
      }

      v54 = v48;
      v55 = v49;
      sub_9D79D4(a1 + 5, &v54);
    }

    v32 = *(v8 - 144);
    v33 = *(v8 - 152);
    if (v32 == v31)
    {
LABEL_32:
      *(v8 - 144) = v31;
      operator delete(v33);
      *v30 = 0;
      *(v8 - 144) = 0;
      *(v8 - 136) = 0;
      goto LABEL_33;
    }

    while (1)
    {
      if (*(v32 - 1) < 0)
      {
        operator delete(*(v32 - 3));
        v34 = v32 - 7;
        if ((*(v32 - 33) & 0x80000000) == 0)
        {
          goto LABEL_27;
        }

LABEL_30:
        operator delete(*v34);
        v32 = v34;
        if (v34 == v31)
        {
LABEL_31:
          v33 = *v30;
          goto LABEL_32;
        }
      }

      else
      {
        v34 = v32 - 7;
        if (*(v32 - 33) < 0)
        {
          goto LABEL_30;
        }

LABEL_27:
        v32 = v34;
        if (v34 == v31)
        {
          goto LABEL_31;
        }
      }
    }
  }

  return result;
}

void sub_9B0E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (*(v5 - 121) < 0)
  {
    operator delete(*(v5 - 144));
    sub_1959728(va);
    _Unwind_Resume(a1);
  }

  sub_1959728(va);
  _Unwind_Resume(a1);
}

void sub_9B0ED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_9B0F68(va);
  _Unwind_Resume(a1);
}

void sub_9B0EE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_941AEC(va);
  _Unwind_Resume(a1);
}

void sub_9B0EFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, void *__p, uint64_t a11)
{
  if (a9)
  {
    *(v11 - 136) = a9;
    operator delete(a9);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

char **sub_9B0F68(char **a1)
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
              if (*(v6 - 1) < 0)
              {
                operator delete(*(v6 - 24));
              }

              v6 -= 32;
            }

            while (v6 != v5);
            v7 = *(v3 - 3);
          }

          *(v3 - 2) = v5;
          operator delete(v7);
        }

        if (*(v3 - 41) < 0)
        {
          operator delete(*(v3 - 8));
        }

        v3 -= 80;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_9B102C(uint64_t a1, unsigned __int8 **a2)
{
  if (*a2 != a2[1])
  {
    operator new();
  }

  return 0;
}

void sub_9B123C(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

double sub_9B1270(uint64_t *a1, unint64_t *a2)
{
  if (!sub_446608(a1 + 21, a2))
  {
    sub_7E9A4(v56);
    v5 = a1[10];
    v6 = *(v5 + 32);
    if (v6 >= *(v5 + 40))
    {
      v7 = sub_9B78C4(v5 + 24);
    }

    else
    {
      *(v6 + 8) = 0u;
      *(v6 + 24) = 0u;
      *(v6 + 40) = 0u;
      *(v6 + 56) = 0u;
      *(v6 + 72) = 0u;
      *(v6 + 88) = 0u;
      *(v6 + 104) = 0u;
      *v6 = -1;
      *(v6 + 8) = 0x7FFFFFFF;
      *(v6 + 16) = 0u;
      *(v6 + 32) = 0u;
      *(v6 + 48) = 0u;
      *(v6 + 64) = 0u;
      *(v6 + 80) = 0;
      *(v6 + 88) = -1;
      *(v6 + 100) = -1;
      *(v6 + 104) = -1;
      *(v6 + 120) = 0;
      *(v6 + 128) = 0;
      v7 = v6 + 144;
      *(v6 + 136) = 0;
    }

    *(v5 + 32) = v7;
    v8 = *(a1[10] + 32);
    v9 = sub_93D2F4(a1[3], *a2, 0, "hall");
    v10 = v9 + *(v9 - *v9 + 6);
    v11 = *v10;
    LODWORD(v10) = *(v10 + 4);
    if (v10 >= 0xFFFFFFFE)
    {
      v10 = 4294967294;
    }

    else
    {
      v10 = v10;
    }

    *(v8 - 144) = v11 | (v10 << 32);
    *(v8 - 136) = 0x7FFFFFFF;
    v12 = a1[3];
    v13 = sub_93D2F4(v12, *a2, 0, "hall");
    v14 = (v13 - *v13);
    if (*v14 >= 5u && (v15 = v14[2]) != 0)
    {
      v16 = *(v13 + v15);
      v17 = sub_2C939C(v12, 1u, 0);
      if (!v17)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v16 = 0;
      v17 = sub_2C939C(v12, 1u, 0);
      if (!v17)
      {
        goto LABEL_56;
      }
    }

    v18 = &v17[-*v17];
    if (*v18 < 0xDu || (v19 = *(v18 + 6)) == 0)
    {
LABEL_56:
      exception = __cxa_allocate_exception(0x40uLL);
      v51 = sub_2D390(exception, "Root quad node of transit network layer does not contain info object", 0x44uLL);
    }

    v20 = &v17[v19 + *&v17[v19]];
    v21 = &v20[-*v20];
    if (*v21 >= 0xBu)
    {
      v22 = *(v21 + 5);
      if (v22)
      {
        if (v20[v22])
        {
          nullsub_1();
          v16 = v23;
        }
      }
    }

    *(v8 - 56) = v16;
    *(v8 - 48) = *a2;
    v24 = sub_93D2F4(a1[3], *a2, 0, "hall");
    v25 = (v24 - *v24);
    if (*v25 >= 9u && (v26 = v25[4]) != 0)
    {
      v27 = (v24 + v26 + *(v24 + v26));
      v58 = 0uLL;
      v59 = 0;
      sub_943AEC(&v58, *v27);
      v60 = (v27 + 1);
      v57 = &v27[*v27 + 1];
      sub_943E24(&v60, &v57, &v58, sub_509164);
      v28 = v58;
      v29 = v59;
    }

    else
    {
      v29 = 0;
      v28 = 0uLL;
    }

    *__p = v28;
    v53 = v29;
    sub_9D6590(__p, a1[11] + 968, &v54);
    v30 = (v8 - 128);
    v31 = *(v8 - 128);
    if (!v31)
    {
LABEL_33:
      *(v8 - 128) = v54;
      *(v8 - 112) = v55;
      v54 = 0uLL;
      v55 = 0;
      v35 = __p[0];
      if (__p[0])
      {
        v36 = __p[1];
        v37 = __p[0];
        if (__p[1] != __p[0])
        {
          do
          {
            v38 = *(v36 - 3);
            if (v38)
            {
              v39 = *(v36 - 2);
              v40 = *(v36 - 3);
              if (v39 != v38)
              {
                do
                {
                  if (*(v39 - 1) < 0)
                  {
                    operator delete(*(v39 - 24));
                  }

                  v39 -= 32;
                }

                while (v39 != v38);
                v40 = *(v36 - 3);
              }

              *(v36 - 2) = v38;
              operator delete(v40);
            }

            v41 = (v36 - 64);
            if (*(v36 - 41) < 0)
            {
              operator delete(*v41);
            }

            v36 -= 64;
          }

          while (v41 != v35);
          v37 = __p[0];
        }

        __p[1] = v35;
        operator delete(v37);
      }

      sub_9D43A4((v8 - 128), &v58);
      v42 = (v8 - 104);
      if (*(v8 - 81) < 0)
      {
        operator delete(*v42);
      }

      v43 = v58;
      *(v8 - 88) = v59;
      *v42 = v43;
      v44 = sub_93D2F4(a1[3], *a2, 0, "hall");
      v45 = (v44 - *v44);
      if (*v45 >= 0x25u && (v46 = v45[18]) != 0)
      {
        v47 = (v44 + v46 + *(v44 + v46));
        v58 = 0uLL;
        v59 = 0;
        sub_9B717C(&v58, *v47);
        v60 = (v47 + 1);
        v57 = &v47[*v47 + 1];
        sub_9B7574(&v60, &v57, &v58, sub_9B7070);
        v48 = v58;
        v49 = v59;
      }

      else
      {
        v49 = 0;
        v48 = 0uLL;
      }

      *__p = v48;
      v53 = v49;
      sub_9D79D4(a1 + 5, __p);
    }

    v32 = *(v8 - 120);
    v33 = *(v8 - 128);
    if (v32 == v31)
    {
LABEL_32:
      *(v8 - 120) = v31;
      operator delete(v33);
      *v30 = 0;
      *(v8 - 120) = 0;
      *(v8 - 112) = 0;
      goto LABEL_33;
    }

    while (1)
    {
      if (*(v32 - 1) < 0)
      {
        operator delete(*(v32 - 3));
        v34 = v32 - 7;
        if ((*(v32 - 33) & 0x80000000) == 0)
        {
          goto LABEL_27;
        }

LABEL_30:
        operator delete(*v34);
        v32 = v34;
        if (v34 == v31)
        {
LABEL_31:
          v33 = *v30;
          goto LABEL_32;
        }
      }

      else
      {
        v34 = v32 - 7;
        if (*(v32 - 33) < 0)
        {
          goto LABEL_30;
        }

LABEL_27:
        v32 = v34;
        if (v34 == v31)
        {
          goto LABEL_31;
        }
      }
    }
  }

  return result;
}

void sub_9B1AF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  sub_9B0F68(va);
  _Unwind_Resume(a1);
}

void sub_9B1B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  sub_941AEC(va);
  _Unwind_Resume(a1);
}

void sub_9B1B18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (a9)
  {
    operator delete(a9);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

double sub_9B1B84(uint64_t *a1, unint64_t *a2)
{
  if (!sub_446608(a1 + 26, a2))
  {
    sub_7E9A4(v43);
    v5 = a1[10];
    v6 = *(v5 + 56);
    if (v6 >= *(v5 + 64))
    {
      v7 = sub_9B7AE4(v5 + 48);
    }

    else
    {
      *(v6 + 8) = 0u;
      *(v6 + 24) = 0u;
      *(v6 + 40) = 0u;
      *(v6 + 56) = 0u;
      *(v6 + 72) = 0u;
      *(v6 + 88) = 0u;
      *(v6 + 104) = 0;
      *(v6 + 112) = 0;
      *v6 = -1;
      *(v6 + 8) = 0x7FFFFFFF;
      *(v6 + 16) = 0u;
      *(v6 + 32) = 0u;
      *(v6 + 48) = 0u;
      *(v6 + 64) = 0u;
      *(v6 + 80) = 0;
      *(v6 + 88) = -1;
      *(v6 + 100) = -1;
      v7 = v6 + 136;
      *(v6 + 120) = 0;
      *(v6 + 128) = 0;
    }

    *(v5 + 56) = v7;
    v8 = *(a1[10] + 56);
    v9 = sub_93D480(a1[3], *a2, 0, "station");
    v10 = v9 + *(v9 - *v9 + 6);
    v11 = *v10;
    LODWORD(v10) = *(v10 + 4);
    if (v10 >= 0xFFFFFFFE)
    {
      v10 = 4294967294;
    }

    else
    {
      v10 = v10;
    }

    *(v8 - 136) = v11 | (v10 << 32);
    *(v8 - 128) = 0x7FFFFFFF;
    sub_9B2454(a1[3], a2);
    *(v8 - 48) = v12;
    *(v8 - 40) = *a2;
    v13 = sub_93D480(a1[3], *a2, 0, "station");
    v14 = (v13 - *v13);
    if (*v14 >= 9u && (v15 = v14[4]) != 0)
    {
      v16 = (v13 + v15 + *(v13 + v15));
      v45 = 0uLL;
      v46 = 0;
      sub_943AEC(&v45, *v16);
      v47 = (v16 + 1);
      v44 = &v16[*v16 + 1];
      sub_943E24(&v47, &v44, &v45, sub_509164);
      v17 = v45;
      v18 = v46;
    }

    else
    {
      v18 = 0;
      v17 = 0uLL;
    }

    *__p = v17;
    v40 = v18;
    sub_9D6590(__p, a1[11] + 968, &v41);
    v19 = (v8 - 120);
    v20 = *(v8 - 120);
    if (!v20)
    {
LABEL_22:
      *(v8 - 120) = v41;
      *(v8 - 104) = v42;
      v41 = 0uLL;
      v42 = 0;
      v24 = __p[0];
      if (__p[0])
      {
        v25 = __p[1];
        v26 = __p[0];
        if (__p[1] != __p[0])
        {
          do
          {
            v27 = *(v25 - 3);
            if (v27)
            {
              v28 = *(v25 - 2);
              v29 = *(v25 - 3);
              if (v28 != v27)
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
                v29 = *(v25 - 3);
              }

              *(v25 - 2) = v27;
              operator delete(v29);
            }

            v30 = (v25 - 64);
            if (*(v25 - 41) < 0)
            {
              operator delete(*v30);
            }

            v25 -= 64;
          }

          while (v30 != v24);
          v26 = __p[0];
        }

        __p[1] = v24;
        operator delete(v26);
      }

      sub_9D43A4((v8 - 120), &v45);
      v31 = (v8 - 96);
      if (*(v8 - 73) < 0)
      {
        operator delete(*v31);
      }

      v32 = v45;
      *(v8 - 80) = v46;
      *v31 = v32;
      v33 = sub_93D480(a1[3], *a2, 0, "station");
      v34 = (v33 - *v33);
      if (*v34 >= 0x29u && (v35 = v34[20]) != 0)
      {
        v36 = (v33 + v35 + *(v33 + v35));
        v45 = 0uLL;
        v46 = 0;
        sub_9B717C(&v45, *v36);
        v47 = (v36 + 1);
        v44 = &v36[*v36 + 1];
        sub_9B7574(&v47, &v44, &v45, sub_9B7070);
        v37 = v45;
        v38 = v46;
      }

      else
      {
        v38 = 0;
        v37 = 0uLL;
      }

      *__p = v37;
      v40 = v38;
      sub_9D79D4(a1 + 5, __p);
    }

    v21 = *(v8 - 112);
    v22 = *(v8 - 120);
    if (v21 == v20)
    {
LABEL_21:
      *(v8 - 112) = v20;
      operator delete(v22);
      *v19 = 0;
      *(v8 - 112) = 0;
      *(v8 - 104) = 0;
      goto LABEL_22;
    }

    while (1)
    {
      if (*(v21 - 1) < 0)
      {
        operator delete(*(v21 - 3));
        v23 = v21 - 7;
        if ((*(v21 - 33) & 0x80000000) == 0)
        {
          goto LABEL_16;
        }

LABEL_19:
        operator delete(*v23);
        v21 = v23;
        if (v23 == v20)
        {
LABEL_20:
          v22 = *v19;
          goto LABEL_21;
        }
      }

      else
      {
        v23 = v21 - 7;
        if (*(v21 - 33) < 0)
        {
          goto LABEL_19;
        }

LABEL_16:
        v21 = v23;
        if (v23 == v20)
        {
          goto LABEL_20;
        }
      }
    }
  }

  return result;
}

void sub_9B23BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  sub_9B0F68(va);
  _Unwind_Resume(a1);
}

void sub_9B23D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  sub_941AEC(va);
  _Unwind_Resume(a1);
}

void sub_9B23E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (a9)
  {
    operator delete(a9);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_9B2454(uint64_t a1, unint64_t *a2)
{
  v3 = sub_93D480(a1, *a2, 0, "station");
  v4 = (v3 - *v3);
  if (*v4 >= 5u && v4[2])
  {
    v5 = sub_2C939C(a1, 1u, 0);
    if (!v5)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = sub_2C939C(a1, 1u, 0);
    if (!v5)
    {
      goto LABEL_15;
    }
  }

  v6 = &v5[-*v5];
  if (*v6 < 0xDu || (v7 = *(v6 + 6)) == 0)
  {
LABEL_15:
    exception = __cxa_allocate_exception(0x40uLL);
    v12 = sub_2D390(exception, "Root quad node of transit network layer does not contain info object", 0x44uLL);
  }

  v8 = &v5[v7 + *&v5[v7]];
  v9 = &v8[-*v8];
  if (*v9 >= 0xBu)
  {
    v10 = *(v9 + 5);
    if (v10)
    {
      if (v8[v10])
      {

        nullsub_1();
      }
    }
  }
}

void sub_9B257C(uint64_t *a1@<X0>, unint64_t *a2@<X1>, void **a3@<X8>)
{
  v6 = sub_93D480(a1[3], *a2, 0, "station");
  v7 = (v6 - *v6);
  if (*v7 >= 0x1Fu && (v8 = v7[15]) != 0)
  {
    v9 = (v6 + v8 + *(v6 + v8));
    v35 = 0uLL;
    v36.__locale_ = 0;
    sub_9A9974(&v35, *v9);
    __dst = (v9 + 1);
    v50[0] = &v9[*v9 + 1];
    sub_9A9C28(&__dst, v50, &v35, sub_9A97C4);
    v10 = v35;
    locale = v36.__locale_;
  }

  else
  {
    locale = 0;
    v10 = 0uLL;
  }

  v48 = v10;
  v49 = locale;
  *a3 = 0;
  a3[1] = 0;
  v12 = *(&v10 + 1);
  a3[2] = 0;
  v13 = v10;
  sub_9B6D40(a3, 0x2E8BA2E8BA2E8BA3 * ((*(&v10 + 1) - v10) >> 3));
  sub_9B2454(a1[3], a2);
  v50[0] = v15;
  if (v13 != v12)
  {
    v16 = (v13 + 80);
    while (1)
    {
      if (!*v16 || *(v16 + 1) == -1)
      {
        if (sub_7E7E4(1u))
        {
          sub_19594F8(&v35);
          v21 = sub_4A5C(&v35, "Invalid station line shield for station ", 40);
          std::ostream::operator<<(v21, v50[0]);
          if ((v47 & 0x10) != 0)
          {
            v24 = v46;
            v25 = &v40;
            if (v46 < v41)
            {
              v46 = v41;
              v24 = v41;
              v25 = &v40;
            }
          }

          else
          {
            if ((v47 & 8) == 0)
            {
              v22 = 0;
              v34 = 0;
LABEL_34:
              *(&__dst + v22) = 0;
              sub_7E854(&__dst, 1u);
              if (v34 < 0)
              {
                operator delete(__dst);
              }

              *&v35 = v32;
              *(&v35 + *(*&v32 - 24)) = v31;
              if (v45 < 0)
              {
                operator delete(v43);
              }

              std::locale::~locale(&v36);
              std::ostream::~ostream();
              std::ios::~ios();
              goto LABEL_8;
            }

            v24 = v39;
            v25 = &v37;
          }

          v26 = *v25;
          v22 = v24 - *v25;
          if (v22 >= 0x7FFFFFFFFFFFFFF8)
          {
            sub_3244();
          }

          if (v22 >= 0x17)
          {
            operator new();
          }

          v34 = v24 - *v25;
          if (v22)
          {
            memmove(&__dst, v26, v22);
          }

          goto LABEL_34;
        }
      }

      else
      {
        sub_9A77D0((v16 - 10), 7, &v35, v14);
        sub_9B4704(a1[4], v16);
        __dst = v18;
        v19 = a3[1];
        if (v19 >= a3[2])
        {
          v20 = sub_9B96A0(a3, v50, &__dst, &v35);
        }

        else
        {
          *v19 = v50[0];
          v19[1] = v18;
          sub_55F1E8((v19 + 2), &v35);
          v20 = v19 + 16;
        }

        a3[1] = v20;
        if (SHIBYTE(v46) < 0)
        {
          operator delete(__p);
          if ((v42 & 0x80000000) == 0)
          {
LABEL_20:
            v23 = v38;
            if (v38 == -1)
            {
              goto LABEL_8;
            }

LABEL_26:
            (off_266F5B0[v23])(&__dst, &v35);
            goto LABEL_8;
          }
        }

        else if ((v42 & 0x80000000) == 0)
        {
          goto LABEL_20;
        }

        operator delete(v40);
        v23 = v38;
        if (v38 != -1)
        {
          goto LABEL_26;
        }
      }

LABEL_8:
      v17 = (v16 + 1);
      v16 += 11;
      if (v17 == v12)
      {
        v13 = v48;
        break;
      }
    }
  }

  if (v13)
  {
    for (i = *(&v48 + 1); i != v13; i -= 88)
    {
      v28 = *(i - 5);
      if (v28)
      {
        v29 = *(i - 4);
        v30 = *(i - 5);
        if (v29 != v28)
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
          v30 = *(i - 5);
        }

        *(i - 4) = v28;
        operator delete(v30);
      }

      if (*(i - 57) < 0)
      {
        operator delete(*(i - 10));
      }
    }

    *(&v48 + 1) = v13;
    operator delete(v13);
  }
}

void sub_9B2A74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_9A9700(va);
  _Unwind_Resume(a1);
}

void sub_9B2A88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  sub_9B7DAC(v20);
  sub_9A9700((v21 - 128));
  _Unwind_Resume(a1);
}

uint64_t sub_9B2B2C(void *a1, unint64_t *a2, unint64_t *a3)
{
  v5 = a1;
  v6 = *a3;
  *&v54 = *a2;
  *(&v54 + 1) = v6;
  v7 = sub_9BA254(a1 + 31, &v54);
  if (!v7)
  {
    v51 = a3;
    sub_7E9A4(v62);
    v9 = v5[10];
    v10 = *(v9 + 80);
    if (v10 >= *(v9 + 88))
    {
      v11 = sub_9B7DE8((v9 + 72));
    }

    else
    {
      bzero(*(v9 + 80), 0x288uLL);
      *(v10 + 48) = -1;
      *(v10 + 60) = -1;
      *(v10 + 64) = -1;
      *(v10 + 72) = 0;
      *(v10 + 80) = 0u;
      *(v10 + 96) = -1;
      *(v10 + 98) = -1;
      *(v10 + 144) = -1;
      *(v10 + 147) = -1;
      *(v10 + 151) = 0;
      *(v10 + 159) = 0u;
      *(v10 + 175) = 0;
      *(v10 + 184) = 0;
      *(v10 + 192) = 0u;
      *(v10 + 208) = 0;
      *(v10 + 259) = -1;
      *(v10 + 256) = -1;
      *(v10 + 263) = 0u;
      *(v10 + 287) = 0;
      *(v10 + 279) = 0;
      *(v10 + 320) = 0;
      *(v10 + 312) = 0;
      *(v10 + 296) = 0u;
      *(v10 + 368) = -1;
      *(v10 + 371) = -1;
      *(v10 + 391) = 0;
      *(v10 + 375) = 0u;
      *(v10 + 399) = 0;
      *(v10 + 424) = 0;
      *(v10 + 408) = 0u;
      *(v10 + 432) = 0;
      *(v10 + 480) = -1;
      *(v10 + 483) = -1;
      *(v10 + 503) = 0;
      *(v10 + 487) = 0u;
      *(v10 + 511) = 0;
      *(v10 + 544) = 0;
      *(v10 + 536) = 0;
      *(v10 + 520) = 0u;
      *(v10 + 552) = 0x7FFF;
      *(v10 + 554) = 2;
      *(v10 + 556) = 2;
      *(v10 + 568) = 0u;
      *(v10 + 584) = 0u;
      *(v10 + 600) = 0u;
      *(v10 + 616) = 0u;
      *(v10 + 626) = 0u;
      *(v10 + 664) = 0u;
      *(v10 + 680) = 0u;
      v11 = v10 + 696;
      *(v10 + 648) = 0u;
    }

    *(v9 + 80) = v11;
    v12 = *(v5[10] + 80);
    sub_9B4704(v5[4], a2);
    *(v12 - 648) = v13;
    *(v12 - 640) = *a2;
    v14 = sub_92FC60(v5[4], *a2, 0, "line");
    *&v54 = *(v14 + *(v14 - *v14 + 6));
    sub_9B482C(v5, &v54);
    v15 = (v12 - 632);
    *(v12 - 632) = v16;
    v53 = a2;
    v17 = sub_92FC60(v5[4], *a2, 0, "line");
    v18 = (v17 - *v17);
    if (*v18 >= 0xFu && (v19 = v18[7]) != 0)
    {
      v20 = (v17 + v19 + *(v17 + v19));
      v54 = 0uLL;
      *&v55 = 0;
      sub_943AEC(&v54, *v20);
      v66 = (v20 + 1);
      v65 = &v20[*v20 + 1];
      sub_943E24(&v66, &v65, &v54, sub_509164);
      v21 = v54;
      v22 = v55;
    }

    else
    {
      v22 = 0;
      v21 = 0uLL;
    }

    *__p = v21;
    v61 = v22;
    sub_9D6590(__p, v5[11] + 968, &v63);
    v23 = (v12 - 696);
    v24 = *(v12 - 696);
    v52 = v5;
    if (!v24)
    {
LABEL_20:
      *v23 = v63;
      *(v12 - 680) = v64;
      v63 = 0uLL;
      v64 = 0;
      v28 = __p[0];
      if (__p[0])
      {
        v29 = __p[1];
        v30 = __p[0];
        if (__p[1] != __p[0])
        {
          do
          {
            v31 = *(v29 - 3);
            if (v31)
            {
              v32 = *(v29 - 2);
              v33 = *(v29 - 3);
              if (v32 != v31)
              {
                do
                {
                  if (*(v32 - 1) < 0)
                  {
                    operator delete(*(v32 - 24));
                  }

                  v32 -= 32;
                }

                while (v32 != v31);
                v33 = *(v29 - 3);
              }

              *(v29 - 2) = v31;
              operator delete(v33);
            }

            v34 = (v29 - 64);
            if (*(v29 - 41) < 0)
            {
              operator delete(*v34);
            }

            v29 -= 64;
          }

          while (v34 != v28);
          v30 = __p[0];
        }

        __p[1] = v28;
        operator delete(v30);
        v5 = v52;
      }

      sub_9D4538((v12 - 696), &v54);
      v35 = (v12 - 672);
      if (*(v12 - 649) < 0)
      {
        operator delete(*v35);
      }

      v36 = v54;
      *(v12 - 656) = v55;
      *v35 = v36;
      v37 = sub_92FC60(v5[4], *v53, 0, "line");
      v38 = (v37 - *v37);
      if (*v38 >= 0x13u && (v39 = v38[9]) != 0)
      {
        *(v12 - 600) = *(v37 + v39);
        v40 = *v5;
        if (*v5 == 1)
        {
          goto LABEL_41;
        }
      }

      else
      {
        *(v12 - 600) = 0xFFFFFF;
        v40 = *v5;
        if (*v5 == 1)
        {
LABEL_41:
          sub_9A8ED8(v5[2], v5[3], v5[4], *v53, *v51, v5[11]);
        }
      }

      if (!v40)
      {
        operator new();
      }

      v56 = 0;
      v54 = 0u;
      v55 = 0u;
      *v57 = -1;
      *&v57[3] = -1;
      memset(&v57[7], 0, 33);
      v58[0] = 0;
      v58[1] = 0;
      v59 = 0uLL;
      v41 = (v12 - 592);
      v42 = (v12 - 560);
      *&v63 = v12 - 592;
      (sub_55D784)(&v63, v12 - 592, &v54);
      *(v12 - 552) = *v57;
      v43 = (v12 - 544);
      if (*(v12 - 521) < 0)
      {
        operator delete(*v43);
      }

      v44 = *&v57[8];
      *(v12 - 528) = *&v57[24];
      *v43 = v44;
      v57[31] = 0;
      v57[8] = 0;
      *(v12 - 520) = v57[32];
      v45 = (v12 - 512);
      if (*(v12 - 489) < 0)
      {
        operator delete(*v45);
      }

      v46 = *v58;
      *(v12 - 496) = v59;
      *v45 = v46;
      BYTE7(v59) = 0;
      LOBYTE(v58[0]) = 0;
      *(v12 - 488) = BYTE8(v59);
      if (SBYTE7(v59) < 0)
      {
        operator delete(v58[0]);
        if ((v57[31] & 0x80000000) == 0)
        {
LABEL_51:
          v47 = v56;
          if (v56 == -1)
          {
LABEL_56:
            v48 = *v42;
            if (*v42 > 2)
            {
              if (v48 != 3 && v48 != 4)
              {
                goto LABEL_75;
              }

              if ((*(v12 - 569) & 0x8000000000000000) != 0)
              {
                if (!*(v12 - 584))
                {
                  goto LABEL_75;
                }
              }

              else if (!*(v12 - 569))
              {
                goto LABEL_75;
              }
            }

            else if (v48 == 1)
            {
              if (*v41 == -1)
              {
                goto LABEL_75;
              }
            }

            else if (v48 != 2 || *(v12 - 588) == -1 && *v41 == -1 && *(v12 - 584) == *(v12 - 576))
            {
              goto LABEL_75;
            }

            v49 = *(v5[10] + 96);
            if ((0x4EC4EC4EC4EC4EC5 * ((*(v5[10] + 104) - v49) >> 4)) <= *v15)
            {
              sub_6FAB4();
            }

            sub_9BC758((v12 - 696), (v49 + 208 * *v15), &v54);
            if (*(v12 - 489) < 0)
            {
              operator delete(*v45);
            }

            v50 = v54;
            *(v12 - 496) = v55;
            *v45 = v50;
LABEL_75:
            v63 = 0uLL;
            v64 = 0;
            operator new();
          }

LABEL_55:
          (off_266F5B0[v47])(&v63, &v54);
          goto LABEL_56;
        }
      }

      else if ((v57[31] & 0x80000000) == 0)
      {
        goto LABEL_51;
      }

      operator delete(*&v57[8]);
      v47 = v56;
      if (v56 == -1)
      {
        goto LABEL_56;
      }

      goto LABEL_55;
    }

    v25 = *(v12 - 688);
    v26 = *(v12 - 696);
    if (v25 == v24)
    {
LABEL_19:
      *(v12 - 688) = v24;
      operator delete(v26);
      *v23 = 0;
      *(v12 - 688) = 0;
      *(v12 - 680) = 0;
      v5 = v52;
      goto LABEL_20;
    }

    while (1)
    {
      if (*(v25 - 1) < 0)
      {
        operator delete(*(v25 - 3));
        v27 = v25 - 7;
        if ((*(v25 - 33) & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

LABEL_17:
        operator delete(*v27);
        v25 = v27;
        if (v27 == v24)
        {
LABEL_18:
          v26 = *v23;
          goto LABEL_19;
        }
      }

      else
      {
        v27 = v25 - 7;
        if (*(v25 - 33) < 0)
        {
          goto LABEL_17;
        }

LABEL_14:
        v25 = v27;
        if (v27 == v24)
        {
          goto LABEL_18;
        }
      }
    }
  }

  return v7[4];
}

void sub_9B4608(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  v31 = *(v29 - 128);
  if (v31)
  {
    *(v29 - 120) = v31;
    operator delete(v31);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_9B4704(uint64_t a1, unint64_t *a2)
{
  v3 = sub_92FC60(a1, *a2, 0, "line");
  v4 = (v3 - *v3);
  if (*v4 >= 5u && v4[2])
  {
    v5 = sub_2C939C(a1, 1u, 0);
    if (!v5)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = sub_2C939C(a1, 1u, 0);
    if (!v5)
    {
      goto LABEL_15;
    }
  }

  v6 = &v5[-*v5];
  if (*v6 < 0xDu || (v7 = *(v6 + 6)) == 0)
  {
LABEL_15:
    exception = __cxa_allocate_exception(0x40uLL);
    v12 = sub_2D390(exception, "Root quad node of transit network layer does not contain info object", 0x44uLL);
  }

  v8 = &v5[v7 + *&v5[v7]];
  v9 = &v8[-*v8];
  if (*v9 >= 0xBu)
  {
    v10 = *(v9 + 5);
    if (v10)
    {
      if (v8[v10])
      {

        nullsub_1();
      }
    }
  }
}

double sub_9B482C(uint64_t a1, unint64_t *a2)
{
  if (sub_446608((a1 + 288), a2))
  {
    return result;
  }

  sub_7E9A4(v71);
  v5 = *(a1 + 80);
  v6 = v5[13];
  if (v6 >= v5[14])
  {
    sub_9B83F0(v5 + 12);
  }

  else
  {
    *(v6 + 64) = 0u;
    *(v6 + 80) = 0u;
    *(v6 + 176) = 0u;
    *(v6 + 192) = 0u;
    *(v6 + 144) = 0u;
    *(v6 + 160) = 0u;
    *(v6 + 112) = 0u;
    *(v6 + 128) = 0u;
    *(v6 + 96) = 0u;
    *(v6 + 32) = 0u;
    *(v6 + 48) = 0u;
    *v6 = 0u;
    *(v6 + 16) = 0u;
    *(v6 + 48) = -1;
    *(v6 + 60) = -1;
    *(v6 + 64) = 0;
    *(v6 + 72) = 0;
    *(v6 + 80) = 0;
    *(v6 + 128) = -1;
    *(v6 + 131) = -1;
    *(v6 + 143) = 0;
    *(v6 + 135) = 0;
    *(v6 + 159) = 0;
    *(v6 + 151) = 0;
    *(v6 + 168) = 0;
    *(v6 + 176) = 0;
    *(v6 + 192) = 0;
    v7 = v6 + 208;
    *(v6 + 184) = 0;
  }

  v5[13] = v7;
  v8 = *(*(a1 + 80) + 104);
  v9 = *(a1 + 16);
  v10 = sub_93E04C(v9, *a2, 0, "system");
  v11 = (v10 - *v10);
  if (*v11 >= 5u && (v12 = v11[2]) != 0)
  {
    v13 = *(v10 + v12);
    v14 = sub_2C939C(v9, 1u, 0);
    if (!v14)
    {
      goto LABEL_79;
    }
  }

  else
  {
    v13 = 0;
    v14 = sub_2C939C(v9, 1u, 0);
    if (!v14)
    {
      goto LABEL_79;
    }
  }

  v15 = &v14[-*v14];
  if (*v15 < 0xDu || (v16 = *(v15 + 6)) == 0)
  {
LABEL_79:
    exception = __cxa_allocate_exception(0x40uLL);
    v56 = sub_2D390(exception, "Root quad node of transit network layer does not contain info object", 0x44uLL);
  }

  v17 = &v14[v16 + *&v14[v16]];
  v18 = &v17[-*v17];
  if (*v18 >= 0xBu)
  {
    v19 = *(v18 + 5);
    if (v19)
    {
      if (v17[v19])
      {
        nullsub_1();
        v13 = v20;
      }
    }
  }

  *(v8 - 160) = v13;
  *(v8 - 152) = *a2;
  v21 = sub_93E04C(*(a1 + 16), *a2, 0, "system");
  v22 = (v21 - *v21);
  if (*v22 < 0x13u)
  {
    LOBYTE(v23) = 0;
  }

  else
  {
    v23 = v22[9];
    if (v23)
    {
      LOBYTE(v23) = *(v21 + v23) != 0;
    }
  }

  *(v8 - 8) = v23;
  v24 = sub_93E04C(*(a1 + 16), *a2, 0, "system");
  v25 = (v24 - *v24);
  if (*v25 >= 7u && (v26 = v25[3]) != 0)
  {
    v27 = (v24 + v26 + *(v24 + v26));
    v57 = 0uLL;
    v58 = 0;
    sub_943AEC(&v57, *v27);
    v73 = (v27 + 1);
    v72 = &v27[*v27 + 1];
    sub_943E24(&v73, &v72, &v57, sub_509164);
    v28 = v57;
    v29 = v58;
  }

  else
  {
    v29 = 0;
    v28 = 0uLL;
  }

  *__p = v28;
  v68 = v29;
  sub_9D6590(__p, *(a1 + 88) + 968, &v69);
  v30 = (v8 - 208);
  v31 = *(v8 - 208);
  if (v31)
  {
    v32 = *(v8 - 200);
    v33 = *(v8 - 208);
    if (v32 == v31)
    {
LABEL_33:
      *(v8 - 200) = v31;
      operator delete(v33);
      *v30 = 0;
      *(v8 - 200) = 0;
      *(v8 - 192) = 0;
      goto LABEL_34;
    }

    while (1)
    {
      if (*(v32 - 1) < 0)
      {
        operator delete(*(v32 - 3));
        v34 = v32 - 7;
        if ((*(v32 - 33) & 0x80000000) == 0)
        {
          goto LABEL_28;
        }

LABEL_31:
        operator delete(*v34);
        v32 = v34;
        if (v34 == v31)
        {
LABEL_32:
          v33 = *v30;
          goto LABEL_33;
        }
      }

      else
      {
        v34 = v32 - 7;
        if (*(v32 - 33) < 0)
        {
          goto LABEL_31;
        }

LABEL_28:
        v32 = v34;
        if (v34 == v31)
        {
          goto LABEL_32;
        }
      }
    }
  }

LABEL_34:
  *(v8 - 208) = v69;
  *(v8 - 192) = v70;
  v69 = 0uLL;
  v70 = 0;
  v35 = __p[0];
  if (__p[0])
  {
    v36 = __p[1];
    v37 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v38 = *(v36 - 3);
        if (v38)
        {
          v39 = *(v36 - 2);
          v40 = *(v36 - 3);
          if (v39 != v38)
          {
            do
            {
              if (*(v39 - 1) < 0)
              {
                operator delete(*(v39 - 24));
              }

              v39 -= 32;
            }

            while (v39 != v38);
            v40 = *(v36 - 3);
          }

          *(v36 - 2) = v38;
          operator delete(v40);
        }

        v41 = (v36 - 64);
        if (*(v36 - 41) < 0)
        {
          operator delete(*v41);
        }

        v36 -= 64;
      }

      while (v41 != v35);
      v37 = __p[0];
    }

    __p[1] = v35;
    operator delete(v37);
  }

  if (*a1 == 1)
  {
    v52 = sub_93E04C(*(a1 + 16), *a2, 0, "system");
    v53 = (v52 - *v52);
    if (*v53 >= 0x27u && (v54 = v53[19]) != 0)
    {
      sub_9D4650(*(v52 + v54), (v8 - 208), &v57);
      v42 = v8 - 184;
      if (*(v8 - 161) < 0)
      {
        goto LABEL_53;
      }
    }

    else
    {
      sub_9D4650(127, (v8 - 208), &v57);
      v42 = v8 - 184;
      if (*(v8 - 161) < 0)
      {
        goto LABEL_53;
      }
    }
  }

  else
  {
    if (!*a1)
    {
      sub_9D43A4((v8 - 208), &v57);
      v42 = v8 - 184;
      if ((*(v8 - 161) & 0x80000000) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_53;
    }

    v57 = 0uLL;
    v58 = 0;
    v42 = v8 - 184;
    if (*(v8 - 161) < 0)
    {
LABEL_53:
      operator delete(*v42);
    }
  }

LABEL_54:
  v43 = v57;
  *(v42 + 16) = v58;
  *v42 = v43;
  sub_9A809C(*(a1 + 16), *a2, &v57);
  v44 = *(v8 - 88);
  if (v44 == -1)
  {
    if (v59 == -1)
    {
      goto LABEL_59;
    }
  }

  else if (v59 == -1)
  {
    (off_266F5B0[v44])(&v69, v8 - 120);
    *(v8 - 88) = -1;
    goto LABEL_59;
  }

  *&v69 = v8 - 120;
  (off_266F600[v59])(&v69);
LABEL_59:
  *(v8 - 80) = v60;
  v45 = (v8 - 72);
  if (*(v8 - 49) < 0)
  {
    operator delete(*v45);
  }

  v46 = *v61;
  *(v8 - 56) = v62;
  *v45 = v46;
  HIBYTE(v62) = 0;
  LOBYTE(v61[0]) = 0;
  *(v8 - 48) = v63;
  v47 = (v8 - 40);
  if (*(v8 - 17) < 0)
  {
    operator delete(*v47);
  }

  v48 = v64;
  *(v8 - 24) = v65;
  *v47 = v48;
  HIBYTE(v65) = 0;
  LOBYTE(v64) = 0;
  *(v8 - 16) = v66;
  if ((SHIBYTE(v62) & 0x80000000) == 0)
  {
    v49 = v59;
    if (v59 == -1)
    {
      goto LABEL_68;
    }

    goto LABEL_67;
  }

  operator delete(v61[0]);
  v49 = v59;
  if (v59 != -1)
  {
LABEL_67:
    (off_266F5B0[v49])(&v69, &v57);
  }

LABEL_68:
  sub_9BC8E0((v8 - 208), &v57);
  if (*(v8 - 17) < 0)
  {
    operator delete(*v47);
  }

  v50 = v57;
  *(v8 - 24) = v58;
  *v47 = v50;
  v51 = 0x4EC4EC4EC4EC4EC5 * ((*(*(a1 + 80) + 104) - *(*(a1 + 80) + 96)) >> 4) - 1;
  *&v57 = a2;
  sub_9BA81C((a1 + 288), a2, &unk_229EB70, &v57)[3] = v51;
  result = sub_7EA60(v71) + *(a1 + 448);
  *(a1 + 448) = result;
  return result;
}

void sub_9B4EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  sub_941AEC(va);
  _Unwind_Resume(a1);
}

void sub_9B4F04(void *a1@<X1>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = a1[1];
  if (v2 != *a1)
  {
    if (((v2 - *a1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  a2[2] = 0;
  *a2 = 0;
}

void sub_9B50B0(_Unwind_Exception *exception_object)
{
  v1[2] = v3;
  *v1 = v2;
  if (v2)
  {
    v1[1] = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_9B50DC(uint64_t a1, unint64_t *a2)
{
  v2 = a2;
  v4 = sub_446608((a1 + 328), a2);
  if (v4)
  {
    return v4[3];
  }

  sub_7E9A4(v124);
  v6 = *(a1 + 80);
  v7 = *(v6 + 128);
  if (v7 >= *(v6 + 136))
  {
    v8 = sub_9B8764((v6 + 120));
  }

  else
  {
    *(v7 + 8) = 0u;
    *(v7 + 264) = 0u;
    *(v7 + 280) = 0u;
    *(v7 + 296) = 0;
    *(v7 + 248) = 0u;
    *(v7 + 232) = 0u;
    *(v7 + 216) = 0u;
    *(v7 + 200) = 0u;
    *(v7 + 184) = 0u;
    *(v7 + 168) = 0u;
    *(v7 + 152) = 0u;
    *(v7 + 136) = 0u;
    *(v7 + 120) = 0u;
    *(v7 + 104) = 0u;
    *(v7 + 88) = 0u;
    *(v7 + 72) = 0u;
    *(v7 + 56) = 0u;
    *(v7 + 40) = 0u;
    *(v7 + 24) = 0u;
    *v7 = -1;
    *(v7 + 8) = 0x7FFFFFFF;
    *(v7 + 16) = 0u;
    *(v7 + 32) = 0u;
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
    *(v7 + 80) = 0u;
    *(v7 + 96) = 0u;
    *(v7 + 112) = 0u;
    *(v7 + 128) = 0u;
    *(v7 + 144) = 0u;
    *(v7 + 160) = -1;
    *(v7 + 168) = 0;
    *(v7 + 176) = 0;
    *(v7 + 184) = 0;
    *(v7 + 232) = -1;
    *(v7 + 235) = -1;
    *(v7 + 247) = 0;
    *(v7 + 255) = 0;
    *(v7 + 239) = 0;
    *(v7 + 263) = 0;
    *(v7 + 272) = 0;
    *(v7 + 280) = 0;
    *(v7 + 296) = 0;
    v8 = v7 + 304;
    *(v7 + 288) = 0;
  }

  *(v6 + 128) = v8;
  v9 = *(*(a1 + 80) + 128);
  v10 = sub_503310(*(a1 + 24), *v2, 0, "access point");
  v11 = v10 + *(v10 - *v10 + 14);
  v12 = *v11;
  LODWORD(v11) = *(v11 + 4);
  if (v11 >= 0xFFFFFFFE)
  {
    v11 = 4294967294;
  }

  else
  {
    v11 = v11;
  }

  *(v9 - 304) = v12 | (v11 << 32);
  *(v9 - 296) = 0x7FFFFFFF;
  v13 = *(a1 + 24);
  v14 = sub_503310(v13, *v2, 0, "access point");
  v15 = (v14 - *v14);
  if (*v15 >= 5u && (v16 = v15[2]) != 0)
  {
    v17 = *(v14 + v16);
    v18 = sub_2C939C(v13, 1u, 0);
    if (!v18)
    {
      goto LABEL_164;
    }
  }

  else
  {
    v17 = 0;
    v18 = sub_2C939C(v13, 1u, 0);
    if (!v18)
    {
      goto LABEL_164;
    }
  }

  v19 = &v18[-*v18];
  if (*v19 < 0xDu || (v20 = *(v19 + 6)) == 0)
  {
LABEL_164:
    exception = __cxa_allocate_exception(0x40uLL);
    v105 = sub_2D390(exception, "Root quad node of transit network layer does not contain info object", 0x44uLL);
  }

  v21 = &v18[v20 + *&v18[v20]];
  v22 = &v21[-*v21];
  if (*v22 >= 0xBu)
  {
    v23 = *(v22 + 5);
    if (v23)
    {
      if (v21[v23])
      {
        nullsub_1();
        v17 = v24;
      }
    }
  }

  *(v9 - 144) = v17;
  v25 = sub_503310(*(a1 + 24), *v2, 0, "access point");
  v26 = (v25 - *v25);
  if (*v26 >= 0xBu && (v27 = v26[5]) != 0)
  {
    v28 = (v25 + v27 + *(v25 + v27));
    memset(v107, 0, sizeof(v107));
    sub_943AEC(v107, *v28);
    v126[0] = (v28 + 1);
    v125 = &v28[*v28 + 1];
    sub_943E24(v126, &v125, v107, sub_509164);
    v29 = *v107;
    v30 = v107[2];
  }

  else
  {
    v30 = 0;
    v29 = 0uLL;
  }

  v122 = v29;
  v123 = v30;
  sub_9D6590(&v122, *(a1 + 88) + 968, v115);
  v31 = (v9 - 288);
  v32 = *(v9 - 288);
  if (v32)
  {
    v33 = *(v9 - 280);
    v34 = *(v9 - 288);
    if (v33 == v32)
    {
LABEL_33:
      *(v9 - 280) = v32;
      operator delete(v34);
      *v31 = 0;
      *(v9 - 280) = 0;
      *(v9 - 272) = 0;
      goto LABEL_34;
    }

    while (1)
    {
      if (*(v33 - 1) < 0)
      {
        operator delete(*(v33 - 3));
        v35 = v33 - 7;
        if ((*(v33 - 33) & 0x80000000) == 0)
        {
          goto LABEL_28;
        }

LABEL_31:
        operator delete(*v35);
        v33 = v35;
        if (v35 == v32)
        {
LABEL_32:
          v34 = *v31;
          goto LABEL_33;
        }
      }

      else
      {
        v35 = v33 - 7;
        if (*(v33 - 33) < 0)
        {
          goto LABEL_31;
        }

LABEL_28:
        v33 = v35;
        if (v35 == v32)
        {
          goto LABEL_32;
        }
      }
    }
  }

LABEL_34:
  *v31 = *v115;
  *(v9 - 272) = *v116;
  v115[0] = 0;
  v115[1] = 0;
  *v116 = 0;
  v36 = v122;
  if (v122)
  {
    v37 = *(&v122 + 1);
    v38 = v122;
    if (*(&v122 + 1) != v122)
    {
      do
      {
        v39 = *(v37 - 24);
        if (v39)
        {
          v40 = *(v37 - 16);
          v41 = *(v37 - 24);
          if (v40 != v39)
          {
            do
            {
              if (*(v40 - 1) < 0)
              {
                operator delete(*(v40 - 24));
              }

              v40 -= 32;
            }

            while (v40 != v39);
            v41 = *(v37 - 24);
          }

          *(v37 - 16) = v39;
          operator delete(v41);
        }

        v42 = (v37 - 64);
        if (*(v37 - 41) < 0)
        {
          operator delete(*v42);
        }

        v37 -= 64;
      }

      while (v42 != v36);
      v38 = v122;
    }

    *(&v122 + 1) = v36;
    operator delete(v38);
  }

  v43 = sub_503310(*(a1 + 24), *v2, 0, "access point");
  v44 = (v43 - *v43);
  if (*v44 >= 0xDu && (v45 = v44[6]) != 0)
  {
    v46 = (v43 + v45 + *(v43 + v45));
    memset(v107, 0, sizeof(v107));
    sub_943AEC(v107, *v46);
    v126[0] = (v46 + 1);
    v125 = &v46[*v46 + 1];
    sub_943E24(v126, &v125, v107, sub_509164);
    v47 = *v107;
    v48 = v107[2];
  }

  else
  {
    v48 = 0;
    v47 = 0uLL;
  }

  v122 = v47;
  v123 = v48;
  sub_9D6590(&v122, *(a1 + 88) + 968, v115);
  v49 = (v9 - 264);
  v50 = *(v9 - 264);
  if (v50)
  {
    v51 = *(v9 - 256);
    v52 = *(v9 - 264);
    if (v51 == v50)
    {
LABEL_63:
      *(v9 - 256) = v50;
      operator delete(v52);
      *v49 = 0;
      *(v9 - 256) = 0;
      *(v9 - 248) = 0;
      goto LABEL_64;
    }

    while (1)
    {
      if (*(v51 - 1) < 0)
      {
        operator delete(*(v51 - 3));
        v53 = v51 - 7;
        if ((*(v51 - 33) & 0x80000000) == 0)
        {
          goto LABEL_58;
        }

LABEL_61:
        operator delete(*v53);
        v51 = v53;
        if (v53 == v50)
        {
LABEL_62:
          v52 = *v49;
          goto LABEL_63;
        }
      }

      else
      {
        v53 = v51 - 7;
        if (*(v51 - 33) < 0)
        {
          goto LABEL_61;
        }

LABEL_58:
        v51 = v53;
        if (v53 == v50)
        {
          goto LABEL_62;
        }
      }
    }
  }

LABEL_64:
  *v49 = *v115;
  *(v9 - 248) = *v116;
  v115[0] = 0;
  v115[1] = 0;
  *v116 = 0;
  v54 = v122;
  if (v122)
  {
    v55 = *(&v122 + 1);
    v56 = v122;
    if (*(&v122 + 1) != v122)
    {
      do
      {
        v57 = *(v55 - 24);
        if (v57)
        {
          v58 = *(v55 - 16);
          v59 = *(v55 - 24);
          if (v58 != v57)
          {
            do
            {
              if (*(v58 - 1) < 0)
              {
                operator delete(*(v58 - 24));
              }

              v58 -= 32;
            }

            while (v58 != v57);
            v59 = *(v55 - 24);
          }

          *(v55 - 16) = v57;
          operator delete(v59);
        }

        v60 = (v55 - 64);
        if (*(v55 - 41) < 0)
        {
          operator delete(*v60);
        }

        v55 -= 64;
      }

      while (v60 != v54);
      v56 = v122;
    }

    *(&v122 + 1) = v54;
    operator delete(v56);
  }

  sub_9D8578((v9 - 288), v107);
  v62 = (v9 - 192);
  v61 = *(v9 - 192);
  if (v61)
  {
    v63 = *(v9 - 184);
    v64 = *(v9 - 192);
    if (v63 == v61)
    {
LABEL_89:
      *(v9 - 184) = v61;
      operator delete(v64);
      *v62 = 0;
      *(v9 - 184) = 0;
      *(v9 - 176) = 0;
      goto LABEL_90;
    }

    while (1)
    {
      if (*(v63 - 1) < 0)
      {
        operator delete(*(v63 - 24));
        if ((*(v63 - 33) & 0x80000000) == 0)
        {
          goto LABEL_84;
        }

LABEL_87:
        operator delete(*(v63 - 56));
        v63 -= 64;
        if (v63 == v61)
        {
LABEL_88:
          v64 = *v62;
          goto LABEL_89;
        }
      }

      else
      {
        if (*(v63 - 33) < 0)
        {
          goto LABEL_87;
        }

LABEL_84:
        v63 -= 64;
        if (v63 == v61)
        {
          goto LABEL_88;
        }
      }
    }
  }

LABEL_90:
  *(v9 - 192) = *v107;
  *(v9 - 176) = v107[2];
  sub_9D8650((v9 - 264), v107);
  v66 = (v9 - 168);
  v65 = *(v9 - 168);
  if (!v65)
  {
    goto LABEL_100;
  }

  v67 = *(v9 - 160);
  v68 = *(v9 - 168);
  if (v67 != v65)
  {
    while (1)
    {
      if (*(v67 - 1) < 0)
      {
        operator delete(*(v67 - 24));
        if ((*(v67 - 33) & 0x80000000) == 0)
        {
          goto LABEL_94;
        }

LABEL_97:
        operator delete(*(v67 - 56));
        v67 -= 64;
        if (v67 == v65)
        {
LABEL_98:
          v68 = *v66;
          break;
        }
      }

      else
      {
        if (*(v67 - 33) < 0)
        {
          goto LABEL_97;
        }

LABEL_94:
        v67 -= 64;
        if (v67 == v65)
        {
          goto LABEL_98;
        }
      }
    }
  }

  *(v9 - 160) = v65;
  operator delete(v68);
  *v66 = 0;
  *(v9 - 160) = 0;
  *(v9 - 152) = 0;
LABEL_100:
  *(v9 - 168) = *v107;
  *(v9 - 152) = v107[2];
  sub_9D4608((v9 - 288), v107);
  v69 = (v9 - 240);
  if (*(v9 - 217) < 0)
  {
    operator delete(*v69);
  }

  v70 = *v107;
  *(v9 - 224) = v107[2];
  *v69 = v70;
  HIBYTE(v107[2]) = 0;
  LOBYTE(v107[0]) = 0;
  if ((v109[15] & 0x80000000) != 0)
  {
    operator delete(*(&v108 + 1));
    if (SHIBYTE(v107[2]) < 0)
    {
      operator delete(v107[0]);
    }
  }

  sub_9D4608((v9 - 264), v107);
  v71 = (v9 - 216);
  if (*(v9 - 193) < 0)
  {
    operator delete(*v71);
  }

  v72 = *v107;
  *(v9 - 200) = v107[2];
  *v71 = v72;
  HIBYTE(v107[2]) = 0;
  LOBYTE(v107[0]) = 0;
  if ((v109[15] & 0x80000000) != 0)
  {
    operator delete(*(&v108 + 1));
    if (SHIBYTE(v107[2]) < 0)
    {
      operator delete(v107[0]);
    }
  }

  v73 = sub_503310(*(a1 + 24), *v2, 0, "access point");
  v74 = (v73 - *v73);
  if (*v74 < 0x1Bu || (v75 = v74[13]) == 0)
  {
    LOBYTE(v115[0]) = 0;
    v121 = 0;
    goto LABEL_141;
  }

  v76 = (v73 + v75 + *(v73 + v75));
  v77 = (v76 - *v76);
  v78 = *v77;
  if (v78 < 7)
  {
    v79 = 0;
    v80 = 0xFFFFFFLL;
    if (v78 < 5)
    {
      goto LABEL_124;
    }

    v81 = v77[2];
    if (!v81)
    {
      goto LABEL_124;
    }

    goto LABEL_121;
  }

  if (v77[3])
  {
    v79 = *(v76 + v77[3]);
    if (v78 >= 9)
    {
      goto LABEL_115;
    }
  }

  else
  {
    v79 = 0;
    if (v78 >= 9)
    {
LABEL_115:
      if (v77[4])
      {
        v80 = *(v76 + v77[4]);
        v81 = v77[2];
        if (!v81)
        {
          goto LABEL_124;
        }
      }

      else
      {
        v80 = 0xFFFFFFLL;
        v81 = v77[2];
        if (!v81)
        {
          goto LABEL_124;
        }
      }

LABEL_121:
      v82 = (v76 + v81 + *(v76 + v81));
      goto LABEL_125;
    }
  }

  v80 = 0xFFFFFFLL;
  v81 = v77[2];
  if (v81)
  {
    goto LABEL_121;
  }

LABEL_124:
  v82 = 0;
LABEL_125:
  sub_509164(v82, v107);
  v115[1] = v107[0];
  *v116 = v107[1];
  *&v116[7] = *(&v107[1] + 7);
  v115[0] = (v79 | (v80 << 32));
  v117 = HIBYTE(v107[2]);
  v118 = v108;
  *v119 = *v109;
  v120 = *&v109[16];
  v121 = 1;
  sub_9A77D0(v115, 5, v107, *&v108);
  v83 = *(v9 - 80);
  if (v83 == -1)
  {
    if (DWORD2(v108) == -1)
    {
      goto LABEL_130;
    }
  }

  else if (DWORD2(v108) == -1)
  {
    (off_266F5B0[v83])(&v122, v9 - 112);
    *(v9 - 80) = -1;
    goto LABEL_130;
  }

  *&v122 = v9 - 112;
  (off_266F600[DWORD2(v108)])(&v122);
LABEL_130:
  *(v9 - 72) = *v109;
  v84 = (v9 - 64);
  if (*(v9 - 41) < 0)
  {
    operator delete(*v84);
  }

  v85 = *&v109[8];
  *(v9 - 48) = v110;
  *v84 = v85;
  HIBYTE(v110) = 0;
  v109[8] = 0;
  *(v9 - 40) = v111;
  v86 = (v9 - 32);
  if (*(v9 - 9) < 0)
  {
    operator delete(*v86);
  }

  v87 = *v112;
  *(v9 - 16) = v113;
  *v86 = v87;
  HIBYTE(v113) = 0;
  LOBYTE(v112[0]) = 0;
  *(v9 - 8) = v114;
  if ((SHIBYTE(v113) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v110) & 0x80000000) == 0)
    {
      goto LABEL_136;
    }

LABEL_139:
    operator delete(*&v109[8]);
    v88 = DWORD2(v108);
    if (DWORD2(v108) == -1)
    {
      goto LABEL_141;
    }

    goto LABEL_140;
  }

  operator delete(v112[0]);
  if (SHIBYTE(v110) < 0)
  {
    goto LABEL_139;
  }

LABEL_136:
  v88 = DWORD2(v108);
  if (DWORD2(v108) != -1)
  {
LABEL_140:
    (off_266F5B0[v88])(&v122, v107);
  }

LABEL_141:
  v89 = *(a1 + 24);
  v90 = sub_503310(v89, *v2, 0, "access point");
  v91 = (v90 - *v90);
  if (*v91 >= 0x11u)
  {
    v92 = v91[8];
    if (v92)
    {
      v93 = (v90 + v92 + *(v90 + v92));
      v94 = *v93;
      if (v94)
      {
        v106 = v2;
        v95 = 8 * v94;
        v96 = v93 + 1;
        do
        {
          if (*(v89 + 3888) != 1 || sub_2D5204(*(v89 + 3872)))
          {
            operator new();
          }

          v96 += 2;
          v95 -= 8;
        }

        while (v95);
        v2 = v106;
      }
    }
  }

  v97 = *(a1 + 80);
  v99 = *(v97 + 120);
  v98 = *(v97 + 128);
  v107[0] = v2;
  v100 = 0x86BCA1AF286BCA1BLL * ((v98 - v99) >> 4) - 1;
  sub_9BAB9C((a1 + 328), v2, &unk_229EB70, v107)[3] = v100;
  *(a1 + 448) = sub_7EA60(v124) + *(a1 + 448);
  if (v121 == 1)
  {
    v101 = v119[0];
    if (v119[0])
    {
      v102 = v119[1];
      v103 = v119[0];
      if (v119[1] != v119[0])
      {
        do
        {
          if (*(v102 - 1) < 0)
          {
            operator delete(*(v102 - 3));
          }

          v102 -= 4;
        }

        while (v102 != v101);
        v103 = v119[0];
      }

      v119[1] = v101;
      operator delete(v103);
    }

    if (v117 < 0)
    {
      operator delete(v115[1]);
    }
  }

  return v100;
}

void sub_9B5DF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  sub_9A7C50(va);
  _Unwind_Resume(a1);
}

void sub_9B5E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_941AEC(va);
  _Unwind_Resume(a1);
}

void sub_9B5E18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_941AEC(va);
  _Unwind_Resume(a1);
}

void sub_9B5E2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  sub_9A7C50(va);
  _Unwind_Resume(a1);
}

void sub_9B5E40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  sub_9A7C50(va);
  _Unwind_Resume(a1);
}

void sub_9B5E7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  if (v24)
  {
    operator delete(v24);
  }

  sub_9A7C50(va);
  _Unwind_Resume(a1);
}

double sub_9B5EA4(uint64_t a1, void *a2)
{
  if (!sub_9BAF1C((a1 + 368), a2))
  {
    sub_7E9A4(v10);
    v5 = *(a1 + 80);
    v6 = *(v5 + 248);
    if (v6 >= *(v5 + 256))
    {
      v8 = sub_9B8AFC((v5 + 240), a2);
    }

    else
    {
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
      v7 = a2[1];
      if (v7 != *a2)
      {
        if (0xAAAAAAAAAAAAAAABLL * ((v7 - *a2) >> 2) < 0x1555555555555556)
        {
          operator new();
        }

        sub_1794();
      }

      v8 = (v6 + 3);
      *(v5 + 248) = v6 + 3;
    }

    *(v5 + 248) = v8;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((*(*(a1 + 80) + 248) - *(*(a1 + 80) + 240)) >> 3) - 1;
    v12 = a2;
    sub_9BB0E8((a1 + 368), a2, &unk_229EB70, &v12, &v11)[5] = v9;
    result = sub_7EA60(v10) + *(a1 + 448);
    *(a1 + 448) = result;
  }

  return result;
}

void sub_9B6000(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  *(v1 + 248) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t *sub_9B6020(uint64_t *a1, uint64_t a2, _OWORD *a3, unsigned int *a4, int a5)
{
  v9 = *a4;
  v79[0] = *a3;
  v79[1] = v9;
  v80 = a5;
  v10 = sub_9BB644(a1 + 51, v79);
  if (!v10)
  {
    sub_7E9A4(v78);
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v39 = -1;
    v40 = -1;
    v41 = 0x7FFFFFFFFFFFFFFFLL;
    v42 = 0;
    v43 = -1935635296;
    v44[0] = 0;
    *(v44 + 7) = 0;
    memset(&v44[2], 0, 24);
    v45 = 0;
    v46 = 0x7FFFFFFFFFFFFFFFLL;
    v47 = 100;
    v49 = 0;
    v48 = 0;
    v50 = vnegq_f64(v11);
    v53 = 0;
    v51 = 0;
    v52 = 0;
    v56 = 0;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0;
    v70 = -1;
    v71 = -1;
    v72 = 0;
    v75 = 0;
    v73 = 0;
    v74 = 0;
    v76 = 0;
    v77 = 0;
    v55 = 0;
    v54 = 2;
    v37 = sub_9B6AA4(a1, a4);
    v38 = v12;
    sub_7E9A4(v36);
    sub_790648(&v83, a2);
    LODWORD(v18) = 0;
    v16 = 0u;
    v17 = 0u;
    v82 = 0;
    LOBYTE(__p) = 0;
    sub_4C63BC(&v27, &v83, 0, &v16, &__p);
    if (v82 < 0)
    {
      operator delete(__p);
    }

    sub_3EEA68(&v83);
    memset(v26, 0, sizeof(v26));
    v13 = sub_9AFDDC((a1 + 6), a1[1], a1[11], a5);
    sub_F4BDFC(v13, &v27, v26);
    v16 = 0uLL;
    *&v17 = 0;
    v83 = &v16;
    v84 = 0;
    if (v28 != v27)
    {
      if (0xCCCCCCCCCCCCCCCDLL * ((v28 - v27) >> 4) < 0x333333333333334)
      {
        operator new();
      }

      sub_1794();
    }

    v18 = 0;
    v19 = 0;
    *(&v17 + 1) = 0;
    sub_9B8E8C(&v17 + 8, v29, v30, 0xE21A291C077975B9 * ((v30 - v29) >> 3));
    v20 = v31;
    v21 = v32;
    *v22 = *v33;
    *&v22[14] = *&v33[14];
    if (SHIBYTE(v35) < 0)
    {
      sub_325C(&v23, v34, *(&v34 + 1));
    }

    else
    {
      v23 = v34;
      v24 = v35;
    }

    sub_9B8D08(v25, v26);
    sub_9AFBF4((a1 + 6), a1[1], (a1 + 13), a1[11], a5);
    sub_4E9DA4(&v83, &v37);
    memset(v15, 0, sizeof(v15));
    *&__p = v15;
    BYTE8(__p) = 0;
    operator new();
  }

  return v10[7];
}

void sub_9B68D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_785D84(&a38);
  sub_9B90F0(&a41);
  sub_9B93D4(&a61);
  sub_419F70(&a64);
  sub_44FDEC(&STACK[0x250]);
  _Unwind_Resume(a1);
}

uint64_t sub_9B6AA4(uint64_t a1, unsigned int *a2)
{
  v2 = a2[3];
  if (v2 == 2)
  {
    v6 = *a2;
    v3 = 0xFFFFFFFFLL;
    if (*a2 <= 1)
    {
      if (v6)
      {
        v4 = -1;
        if (v6 != 1)
        {
          return v4 | (v3 << 32);
        }

        v7 = sub_93D2F4(*(a1 + 24), a2[2] | (a2[1] << 32), 0, "hall");
      }

      else
      {
        v7 = sub_502FF8(*(a1 + 24), a2[2] | (a2[1] << 32), 0, "stop");
      }
    }

    else
    {
      if (v6 != 2)
      {
        if (v6 == 3)
        {
          v7 = sub_503310(*(a1 + 24), a2[2] | (a2[1] << 32), 0, "access point");
          v8 = *(v7 - *v7 + 14);
        }

        else
        {
          v4 = -1;
          if (v6 != 4)
          {
            return v4 | (v3 << 32);
          }

          v7 = sub_503184(*(a1 + 24), a2[2] | (a2[1] << 32), 0, "road access point");
          v8 = *(v7 - *v7 + 8);
        }

        goto LABEL_18;
      }

      v7 = sub_93D480(*(a1 + 24), a2[2] | (a2[1] << 32), 0, "station");
    }

    v8 = *(v7 - *v7 + 6);
LABEL_18:
    v9 = v7 + v8;
    v10 = *v9;
    LODWORD(v9) = *(v9 + 4);
    if (v9 >= 0xFFFFFFFE)
    {
      v9 = 4294967294;
    }

    else
    {
      v9 = v9;
    }

    return v10 | (v9 << 32);
  }

  if (v2 == 1)
  {
    v4 = *a2;
    v3 = a2[1];
    return v4 | (v3 << 32);
  }

  return -1;
}

uint64_t sub_9B6C24(uint64_t a1, uint64_t a2)
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

  sub_9B8D08((a1 + 128), (a2 + 128));
  return a1;
}

void sub_9B6CFC(_Unwind_Exception *a1)
{
  sub_3EECC8(v2);
  sub_3ECF74(v1);
  _Unwind_Resume(a1);
}

void sub_9B6D40(void **a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 7)
  {
    if (!(a2 >> 57))
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_9B6DF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_9B9438(va);
  _Unwind_Resume(a1);
}

uint64_t sub_9B6E18(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = v3 - v2;
  v6 = 0xCF3CF3CF3CF3CF3DLL * ((v3 - v2) >> 3) + 1;
  if (v6 > 0x186186186186186)
  {
    sub_1794();
  }

  if (0x9E79E79E79E79E7ALL * ((*(a1 + 16) - v2) >> 3) > v6)
  {
    v6 = 0x9E79E79E79E79E7ALL * ((*(a1 + 16) - v2) >> 3);
  }

  if (0xCF3CF3CF3CF3CF3DLL * ((*(a1 + 16) - v2) >> 3) >= 0xC30C30C30C30C3)
  {
    v7 = 0x186186186186186;
  }

  else
  {
    v7 = v6;
  }

  if (v7)
  {
    if (v7 <= 0x186186186186186)
    {
      operator new();
    }

    sub_1808();
  }

  v8 = 8 * ((v3 - v2) >> 3);
  *(v8 + 8) = 0u;
  *(v8 + 24) = 0u;
  *(v8 + 40) = 0u;
  *(v8 + 56) = 0u;
  *(v8 + 72) = 0u;
  *(v8 + 88) = 0u;
  *(v8 + 104) = 0u;
  *(v8 + 152) = 0u;
  *(v8 + 136) = 0u;
  *(v8 + 120) = 0u;
  *v8 = -1;
  *(v8 + 8) = 0x7FFFFFFF;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0u;
  *(v8 + 64) = 0u;
  *(v8 + 80) = 0;
  *(v8 + 88) = -1;
  *(v8 + 100) = -1;
  *(v8 + 104) = -1;
  *(v8 + 157) = 0;
  *(v8 + 128) = 0u;
  *(v8 + 144) = 0u;
  v9 = v8 + 168;
  v10 = v8 - v5;
  *(v8 + 112) = 0u;
  if (v2 != v3)
  {
    v11 = v2;
    v12 = v8 - v5;
    do
    {
      v13 = *v11;
      *(v12 + 8) = *(v11 + 2);
      *v12 = v13;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0;
      *(v12 + 16) = *(v11 + 1);
      *(v12 + 32) = *(v11 + 4);
      *(v11 + 2) = 0;
      *(v11 + 3) = 0;
      *(v11 + 4) = 0;
      v14 = *(v11 + 40);
      *(v12 + 56) = *(v11 + 7);
      *(v12 + 40) = v14;
      *(v11 + 6) = 0;
      *(v11 + 7) = 0;
      *(v11 + 5) = 0;
      *(v12 + 72) = 0;
      *(v12 + 80) = 0;
      *(v12 + 64) = *(v11 + 4);
      *(v12 + 80) = *(v11 + 10);
      *(v11 + 8) = 0;
      *(v11 + 9) = 0;
      *(v11 + 10) = 0;
      v15 = *(v11 + 88);
      *(v12 + 104) = *(v11 + 13);
      *(v12 + 88) = v15;
      *(v12 + 120) = 0;
      *(v12 + 128) = 0;
      *(v12 + 112) = *(v11 + 7);
      *(v12 + 128) = *(v11 + 16);
      *(v11 + 14) = 0;
      *(v11 + 15) = 0;
      *(v11 + 16) = 0;
      v16 = *(v11 + 136);
      *(v12 + 152) = *(v11 + 19);
      *(v12 + 136) = v16;
      *(v11 + 18) = 0;
      *(v11 + 19) = 0;
      *(v11 + 17) = 0;
      LODWORD(v13) = *(v11 + 40);
      *(v12 + 164) = v11[164];
      *(v12 + 160) = v13;
      v11 += 168;
      v12 += 168;
    }

    while (v11 != v3);
    do
    {
      v2 = (sub_943834(v2) + 168);
    }

    while (v2 != v3);
    v2 = *a1;
  }

  *a1 = v10;
  *(a1 + 8) = v9;
  *(a1 + 16) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return v9;
}

double sub_9B7070@<D0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 - *a1);
  v4 = *v3;
  if (v4 >= 5)
  {
    if (v3[2])
    {
      v10 = *(a1 + v3[2]);
      if (v4 >= 9)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v10 = -1;
      if (v4 >= 9)
      {
LABEL_4:
        if (v3[4])
        {
          v5 = *(a1 + v3[4]) != 0;
          v6 = v3[3];
          if (!v6)
          {
            goto LABEL_13;
          }
        }

        else
        {
          v5 = 0;
          v6 = v3[3];
          if (!v6)
          {
LABEL_13:
            v7 = 0;
            goto LABEL_14;
          }
        }

        goto LABEL_11;
      }
    }

    v5 = 0;
    if (v4 < 7)
    {
      goto LABEL_13;
    }

    v6 = v3[3];
    if (!v6)
    {
      goto LABEL_13;
    }

LABEL_11:
    v7 = (a1 + v6 + *(a1 + v6));
    goto LABEL_14;
  }

  v5 = 0;
  v7 = 0;
  v10 = -1;
LABEL_14:
  sub_509164(v7, &v11);
  v8 = v11;
  *a2 = v10;
  *(a2 + 8) = v5;
  *(a2 + 16) = v8;
  *(a2 + 32) = v12;
  *(a2 + 40) = v13;
  result = *&v14;
  *(a2 + 56) = v14;
  *(a2 + 72) = v15;
  return result;
}

void sub_9B717C(void *a1, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) < a2)
  {
    if (a2 < 0x333333333333334)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_9B72B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_9B7424(va);
  _Unwind_Resume(a1);
}

void sub_9B72C4(uint64_t *a1, void *a2)
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
      *(v8 + 8) = *(v7 + 8);
      *v8 = v9;
      v10 = *(v7 + 16);
      *(v8 + 32) = *(v7 + 32);
      *(v8 + 16) = v10;
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      *(v7 + 16) = 0;
      *(v8 + 40) = *(v7 + 40);
      *(v8 + 64) = 0;
      *(v8 + 72) = 0;
      *(v8 + 56) = 0;
      *(v8 + 56) = *(v7 + 56);
      *(v8 + 72) = *(v7 + 72);
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      *(v7 + 72) = 0;
      v7 += 80;
      v8 += 80;
    }

    while (v7 != v4);
    do
    {
      v11 = *(v5 + 56);
      if (v11)
      {
        v12 = *(v5 + 64);
        v13 = *(v5 + 56);
        if (v12 != v11)
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
          v13 = *(v5 + 56);
        }

        *(v5 + 64) = v11;
        operator delete(v13);
      }

      if (*(v5 + 39) < 0)
      {
        operator delete(*(v5 + 16));
      }

      v5 += 80;
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

uint64_t sub_9B7424(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 80;
    v4 = *(i - 24);
    if (v4)
    {
      v5 = *(i - 16);
      v6 = *(i - 24);
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
        v6 = *(i - 24);
      }

      *(i - 16) = v4;
      operator delete(v6);
    }

    if (*(i - 41) < 0)
    {
      operator delete(*(i - 64));
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_9B74DC(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    v3 = *(a1 + 64);
    v4 = *(a1 + 56);
    if (v3 != v2)
    {
      do
      {
        if (*(v3 - 1) < 0)
        {
          operator delete(*(v3 - 24));
        }

        v3 -= 32;
      }

      while (v3 != v2);
      v4 = *(a1 + 56);
    }

    *(a1 + 64) = v2;
    operator delete(v4);
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t *sub_9B7574(char **a1, unsigned int **a2, uint64_t *a3, void (*a4)(uint64_t *__return_ptr, char *))
{
  if (*a1 != *a2)
  {
    a4(&v17, &(*a1)[**a1]);
    while (1)
    {
      v9 = a3[1];
      if (v9 >= a3[2])
      {
        v12 = sub_9B76EC(a3, &v17);
        v13 = __p[0];
        a3[1] = v12;
        if (v13)
        {
          v14 = __p[1];
          v15 = v13;
          if (__p[1] != v13)
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
            v15 = __p[0];
          }

          __p[1] = v13;
          operator delete(v15);
        }
      }

      else
      {
        v10 = v17;
        *(v9 + 8) = v18;
        *v9 = v10;
        v11 = v19;
        *(v9 + 32) = v20;
        *(v9 + 16) = v11;
        v20 = 0;
        v19 = 0uLL;
        *(v9 + 40) = v21;
        *(v9 + 64) = 0;
        *(v9 + 72) = 0;
        *(v9 + 56) = 0;
        *(v9 + 56) = *__p;
        *(v9 + 72) = v23;
        __p[0] = 0;
        __p[1] = 0;
        v23 = 0;
        a3[1] = v9 + 80;
      }

      if (SHIBYTE(v20) < 0)
      {
        operator delete(v19);
      }

      v8 = (*a1 + 4);
      *a1 = v8;
      if (v8 == *a2)
      {
        break;
      }

      a4(&v17, v8 + *v8);
    }
  }

  return a3;
}

uint64_t sub_9B76EC(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v5 = 0x333333333333333;
  }

  else
  {
    v5 = v3;
  }

  v18 = a1;
  if (v5)
  {
    if (v5 <= 0x333333333333333)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 80 * v2;
  *v6 = *a2;
  __p = 0;
  v15 = 80 * v2;
  *(v6 + 8) = *(a2 + 8);
  *(v6 + 16) = *(a2 + 16);
  *(v6 + 32) = *(a2 + 32);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(v6 + 40) = *(a2 + 40);
  *(v6 + 56) = *(a2 + 56);
  *(v6 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v16 = 80 * v2 + 80;
  v17 = 0;
  sub_9B72C4(a1, &__p);
  v7 = a1[1];
  v8 = v15;
  while (1)
  {
    v9 = v16;
    if (v16 == v8)
    {
      break;
    }

    v16 -= 80;
    v10 = *(v9 - 24);
    if (v10)
    {
      v11 = *(v9 - 16);
      v12 = *(v9 - 24);
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
        v12 = *(v9 - 24);
      }

      *(v9 - 16) = v10;
      operator delete(v12);
    }

    if (*(v9 - 41) < 0)
    {
      operator delete(*(v9 - 64));
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v7;
}

void sub_9B78B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_9B7424(va);
  _Unwind_Resume(a1);
}

uint64_t sub_9B78C4(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = v3 - v2;
  v6 = 0x8E38E38E38E38E39 * ((v3 - v2) >> 4) + 1;
  if (v6 > 0x1C71C71C71C71C7)
  {
    sub_1794();
  }

  if (0x1C71C71C71C71C72 * ((*(a1 + 16) - v2) >> 4) > v6)
  {
    v6 = 0x1C71C71C71C71C72 * ((*(a1 + 16) - v2) >> 4);
  }

  if (0x8E38E38E38E38E39 * ((*(a1 + 16) - v2) >> 4) >= 0xE38E38E38E38E3)
  {
    v7 = 0x1C71C71C71C71C7;
  }

  else
  {
    v7 = v6;
  }

  if (v7)
  {
    if (v7 <= 0x1C71C71C71C71C7)
    {
      operator new();
    }

    sub_1808();
  }

  v8 = 16 * ((v3 - v2) >> 4);
  *(v8 + 8) = 0u;
  *(v8 + 24) = 0u;
  *(v8 + 40) = 0u;
  *(v8 + 56) = 0u;
  *(v8 + 72) = 0u;
  *(v8 + 88) = 0u;
  *(v8 + 104) = 0u;
  *v8 = -1;
  *(v8 + 8) = 0x7FFFFFFF;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0u;
  *(v8 + 64) = 0u;
  *(v8 + 80) = 0;
  *(v8 + 88) = -1;
  *(v8 + 100) = -1;
  *(v8 + 104) = -1;
  *(v8 + 120) = 0;
  *(v8 + 128) = 0;
  v9 = v8 + 144;
  v10 = v8 - v5;
  *(v8 + 136) = 0;
  if (v2 != v3)
  {
    v11 = v2;
    v12 = v8 - v5;
    do
    {
      v13 = *v11;
      *(v12 + 8) = *(v11 + 2);
      *v12 = v13;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0;
      *(v12 + 16) = *(v11 + 1);
      *(v12 + 32) = *(v11 + 4);
      *(v11 + 2) = 0;
      *(v11 + 3) = 0;
      *(v11 + 4) = 0;
      v14 = *(v11 + 40);
      *(v12 + 56) = *(v11 + 7);
      *(v12 + 40) = v14;
      *(v11 + 6) = 0;
      *(v11 + 7) = 0;
      *(v11 + 5) = 0;
      *(v12 + 72) = 0;
      *(v12 + 80) = 0;
      *(v12 + 64) = *(v11 + 4);
      *(v12 + 80) = *(v11 + 10);
      *(v11 + 8) = 0;
      *(v11 + 9) = 0;
      *(v11 + 10) = 0;
      v15 = *(v11 + 88);
      *(v12 + 98) = *(v11 + 98);
      *(v12 + 88) = v15;
      *(v12 + 128) = 0;
      *(v12 + 136) = 0;
      *(v12 + 120) = *(v11 + 120);
      *(v12 + 136) = *(v11 + 17);
      *(v11 + 15) = 0;
      *(v11 + 16) = 0;
      *(v11 + 17) = 0;
      v11 += 144;
      v12 += 144;
    }

    while (v11 != v3);
    do
    {
      v2 = (sub_943718(v2) + 144);
    }

    while (v2 != v3);
    v2 = *a1;
  }

  *a1 = v10;
  *(a1 + 8) = v9;
  *(a1 + 16) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return v9;
}

uint64_t sub_9B7AE4(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = v3 - v2;
  v6 = 0xF0F0F0F0F0F0F0F1 * ((v3 - v2) >> 3) + 1;
  if (v6 > 0x1E1E1E1E1E1E1E1)
  {
    sub_1794();
  }

  if (0xE1E1E1E1E1E1E1E2 * ((*(a1 + 16) - v2) >> 3) > v6)
  {
    v6 = 0xE1E1E1E1E1E1E1E2 * ((*(a1 + 16) - v2) >> 3);
  }

  if (0xF0F0F0F0F0F0F0F1 * ((*(a1 + 16) - v2) >> 3) >= 0xF0F0F0F0F0F0F0)
  {
    v7 = 0x1E1E1E1E1E1E1E1;
  }

  else
  {
    v7 = v6;
  }

  if (v7)
  {
    if (v7 <= 0x1E1E1E1E1E1E1E1)
    {
      operator new();
    }

    sub_1808();
  }

  v8 = 8 * ((v3 - v2) >> 3);
  *(v8 + 8) = 0u;
  *(v8 + 24) = 0u;
  *(v8 + 40) = 0u;
  *(v8 + 56) = 0u;
  *(v8 + 72) = 0u;
  *(v8 + 88) = 0u;
  *(v8 + 104) = 0;
  *(v8 + 112) = 0;
  *v8 = -1;
  *(v8 + 8) = 0x7FFFFFFF;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0u;
  *(v8 + 64) = 0u;
  *(v8 + 80) = 0;
  *(v8 + 88) = -1;
  *(v8 + 100) = -1;
  v9 = v8 + 136;
  v10 = v8 - v5;
  *(v8 + 120) = 0;
  *(v8 + 128) = 0;
  if (v2 != v3)
  {
    v11 = v2;
    v12 = v8 - v5;
    do
    {
      v13 = *v11;
      *(v12 + 8) = *(v11 + 2);
      *v12 = v13;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0;
      *(v12 + 16) = *(v11 + 1);
      *(v12 + 32) = *(v11 + 4);
      *(v11 + 2) = 0;
      *(v11 + 3) = 0;
      *(v11 + 4) = 0;
      v14 = *(v11 + 40);
      *(v12 + 56) = *(v11 + 7);
      *(v12 + 40) = v14;
      *(v11 + 6) = 0;
      *(v11 + 7) = 0;
      *(v11 + 5) = 0;
      *(v12 + 72) = 0;
      *(v12 + 80) = 0;
      *(v12 + 64) = *(v11 + 4);
      *(v12 + 80) = *(v11 + 10);
      *(v11 + 8) = 0;
      *(v11 + 9) = 0;
      *(v11 + 10) = 0;
      v15 = *(v11 + 88);
      *(v12 + 103) = *(v11 + 103);
      *(v12 + 88) = v15;
      *(v12 + 120) = 0;
      *(v12 + 128) = 0;
      *(v12 + 112) = *(v11 + 7);
      *(v12 + 128) = *(v11 + 16);
      *(v11 + 14) = 0;
      *(v11 + 15) = 0;
      *(v11 + 16) = 0;
      v11 += 136;
      v12 += 136;
    }

    while (v11 != v3);
    do
    {
      v2 = (sub_943558(v2) + 136);
    }

    while (v2 != v3);
    v2 = *a1;
  }

  *a1 = v10;
  *(a1 + 8) = v9;
  *(a1 + 16) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return v9;
}

void sub_9B7CE4(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      if (*(v3 - 9) < 0)
      {
        operator delete(*(v3 - 32));
        if ((*(v3 - 41) & 0x80000000) == 0)
        {
LABEL_6:
          v4 = *(v3 - 80);
          if (v4 == -1)
          {
            goto LABEL_3;
          }

LABEL_10:
          (off_266F5B0[v4])(&v5, v3 - 112);
          goto LABEL_3;
        }
      }

      else if ((*(v3 - 41) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      operator delete(*(v3 - 64));
      v4 = *(v3 - 80);
      if (v4 != -1)
      {
        goto LABEL_10;
      }

LABEL_3:
      *(v3 - 80) = -1;
      v3 -= 128;
    }

    while (v3 != v2);
  }

  a1[1] = v2;
}

uint64_t *sub_9B7DAC(uint64_t *a1)
{
  if (*a1)
  {
    sub_9B7CE4(a1);
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_9B7DE8(void **a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = v2 - *a1;
  v4 = 0x66FD0EB66FD0EB67 * (v3 >> 3) + 1;
  if (v4 > 0x5E293205E29320)
  {
    sub_1794();
  }

  if (0xCDFA1D6CDFA1D6CELL * ((a1[2] - v1) >> 3) > v4)
  {
    v4 = 0xCDFA1D6CDFA1D6CELL * ((a1[2] - v1) >> 3);
  }

  if ((0x66FD0EB66FD0EB67 * ((a1[2] - v1) >> 3)) >= 0x2F149902F14990)
  {
    v6 = 0x5E293205E29320;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    if (v6 <= 0x5E293205E29320)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 8 * (v3 >> 3);
  bzero(v7, 0x288uLL);
  *(v7 + 48) = -1;
  *(v7 + 60) = -1;
  *(v7 + 64) = -1;
  *(v7 + 72) = 0;
  *(v7 + 80) = 0u;
  *(v7 + 96) = -1;
  *(v7 + 98) = -1;
  *(v7 + 144) = -1;
  *(v7 + 147) = -1;
  *(v7 + 151) = 0;
  *(v7 + 159) = 0u;
  *(v7 + 175) = 0;
  *(v7 + 184) = 0;
  *(v7 + 192) = 0u;
  *(v7 + 208) = 0;
  *(v7 + 259) = -1;
  *(v7 + 256) = -1;
  *(v7 + 263) = 0u;
  *(v7 + 287) = 0;
  *(v7 + 279) = 0;
  *(v7 + 320) = 0;
  *(v7 + 312) = 0;
  *(v7 + 296) = 0u;
  *(v7 + 368) = -1;
  *(v7 + 371) = -1;
  *(v7 + 391) = 0;
  *(v7 + 375) = 0u;
  *(v7 + 399) = 0;
  *(v7 + 424) = 0;
  *(v7 + 408) = 0u;
  *(v7 + 432) = 0;
  *(v7 + 480) = -1;
  *(v7 + 483) = -1;
  *(v7 + 503) = 0;
  *(v7 + 487) = 0u;
  *(v7 + 511) = 0;
  *(v7 + 544) = 0;
  *(v7 + 536) = 0;
  *(v7 + 520) = 0u;
  *(v7 + 552) = 0x7FFF;
  *(v7 + 554) = 2;
  *(v7 + 556) = 2;
  *(v7 + 568) = 0u;
  *(v7 + 584) = 0u;
  *(v7 + 600) = 0u;
  *(v7 + 616) = 0u;
  *(v7 + 626) = 0u;
  *(v7 + 664) = 0u;
  *(v7 + 680) = 0u;
  v8 = v7 + 696;
  v9 = v7 - v3;
  *(v7 + 648) = 0u;
  if (v1 != v2)
  {
    v10 = v1;
    v11 = v9;
    do
    {
      v12 = sub_9B8048(v11, v10);
      v10 += 696;
      v11 = v12 + 696;
    }

    while (v10 != v2);
    do
    {
      sub_9357A0(v1);
      v1 += 696;
    }

    while (v1 != v2);
    v1 = *a1;
  }

  *a1 = v9;
  a1[1] = v8;
  a1[2] = 0;
  if (v1)
  {
    operator delete(v1);
  }

  return v8;
}

uint64_t sub_9B8048(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v4;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 24) = 0;
  v5 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v5;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 72) = 0;
  v6 = *(a2 + 96);
  *(a1 + 104) = 0;
  *(a1 + 96) = v6;
  *(a1 + 136) = -1;
  v7 = *(a2 + 136);
  if (v7 != -1)
  {
    v22 = a1 + 104;
    (off_266F5D8[v7])(&v22, a2 + 104);
    *(a1 + 136) = v7;
  }

  *(a1 + 144) = *(a2 + 144);
  v8 = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 152) = v8;
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  *(a2 + 152) = 0;
  *(a1 + 176) = *(a2 + 176);
  v9 = *(a2 + 184);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 184) = v9;
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  *(a2 + 184) = 0;
  v10 = *(a2 + 208);
  *(a1 + 216) = 0;
  *(a1 + 208) = v10;
  *(a1 + 248) = -1;
  v11 = *(a2 + 248);
  if (v11 != -1)
  {
    v22 = a1 + 216;
    (off_266F5D8[v11])(&v22, a2 + 216);
    *(a1 + 248) = v11;
  }

  *(a1 + 256) = *(a2 + 256);
  v12 = *(a2 + 264);
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 264) = v12;
  *(a2 + 272) = 0;
  *(a2 + 280) = 0;
  *(a2 + 264) = 0;
  *(a1 + 288) = *(a2 + 288);
  v13 = *(a2 + 296);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 296) = v13;
  *(a2 + 304) = 0;
  *(a2 + 312) = 0;
  *(a2 + 296) = 0;
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 328) = 0;
  *(a1 + 360) = -1;
  v14 = *(a2 + 360);
  if (v14 != -1)
  {
    v22 = a1 + 328;
    (off_266F5D8[v14])(&v22, a2 + 328);
    *(a1 + 360) = v14;
  }

  *(a1 + 368) = *(a2 + 368);
  v15 = *(a2 + 376);
  *(a1 + 392) = *(a2 + 392);
  *(a1 + 376) = v15;
  *(a2 + 384) = 0;
  *(a2 + 392) = 0;
  *(a2 + 376) = 0;
  *(a1 + 400) = *(a2 + 400);
  v16 = *(a2 + 408);
  *(a1 + 424) = *(a2 + 424);
  *(a1 + 408) = v16;
  *(a2 + 416) = 0;
  *(a2 + 424) = 0;
  *(a2 + 408) = 0;
  *(a1 + 432) = *(a2 + 432);
  *(a1 + 440) = 0;
  *(a1 + 472) = -1;
  v17 = *(a2 + 472);
  if (v17 != -1)
  {
    v22 = a1 + 440;
    (off_266F5D8[v17])(&v22, a2 + 440);
    *(a1 + 472) = v17;
  }

  *(a1 + 480) = *(a2 + 480);
  v18 = *(a2 + 488);
  *(a1 + 504) = *(a2 + 504);
  *(a1 + 488) = v18;
  *(a2 + 496) = 0u;
  *(a2 + 488) = 0;
  *(a1 + 512) = *(a2 + 512);
  v19 = *(a2 + 520);
  *(a1 + 536) = *(a2 + 536);
  *(a1 + 520) = v19;
  *(a2 + 528) = 0u;
  *(a2 + 520) = 0;
  *(a1 + 544) = *(a2 + 544);
  v20 = *(a2 + 552);
  *(a1 + 560) = *(a2 + 560);
  *(a1 + 552) = v20;
  *(a1 + 568) = 0;
  *(a1 + 576) = 0u;
  *(a1 + 568) = *(a2 + 568);
  *(a1 + 576) = *(a2 + 576);
  *(a2 + 584) = 0;
  *(a2 + 568) = 0u;
  *(a1 + 608) = 0;
  *(a1 + 592) = 0u;
  *(a1 + 592) = *(a2 + 592);
  *(a1 + 608) = *(a2 + 608);
  *(a2 + 608) = 0;
  *(a2 + 592) = 0u;
  *(a1 + 632) = 0;
  *(a1 + 616) = 0u;
  *(a1 + 616) = *(a2 + 616);
  *(a1 + 624) = *(a2 + 624);
  *(a2 + 632) = 0;
  *(a2 + 616) = 0u;
  *(a1 + 640) = *(a2 + 640);
  *(a1 + 656) = 0u;
  *(a1 + 648) = 0;
  *(a1 + 648) = *(a2 + 648);
  *(a1 + 656) = *(a2 + 656);
  *(a2 + 664) = 0;
  *(a2 + 648) = 0u;
  *(a1 + 688) = 0;
  *(a1 + 672) = 0u;
  *(a1 + 672) = *(a2 + 672);
  *(a1 + 688) = *(a2 + 688);
  *(a2 + 688) = 0;
  *(a2 + 672) = 0u;
  return a1;
}

double sub_9B83F0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = v2 - *a1;
  v4 = 0x4EC4EC4EC4EC4EC5 * (v3 >> 4);
  v5 = v4 + 1;
  if ((v4 + 1) > 0x13B13B13B13B13BLL)
  {
    sub_1794();
  }

  if (0x9D89D89D89D89D8ALL * ((a1[2] - v1) >> 4) > v5)
  {
    v5 = 0x9D89D89D89D89D8ALL * ((a1[2] - v1) >> 4);
  }

  if ((0x4EC4EC4EC4EC4EC5 * ((a1[2] - v1) >> 4)) >= 0x9D89D89D89D89DLL)
  {
    v7 = 0x13B13B13B13B13BLL;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x13B13B13B13B13BLL)
    {
      operator new();
    }

    sub_1808();
  }

  v12 = 16 * (v3 >> 4);
  *(v12 + 64) = 0u;
  *(v12 + 80) = 0u;
  *v12 = 0u;
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0u;
  *(v12 + 48) = 0u;
  *(v12 + 96) = 0u;
  *(v12 + 112) = 0u;
  *(v12 + 128) = 0u;
  *(v12 + 144) = 0u;
  *(v12 + 160) = 0u;
  *(v12 + 176) = 0u;
  *(v12 + 192) = 0u;
  *(v12 + 48) = -1;
  *(v12 + 60) = -1;
  *(v12 + 64) = 0;
  *(v12 + 72) = 0;
  *(v12 + 80) = 0;
  *(v12 + 131) = -1;
  *(v12 + 128) = -1;
  *(v12 + 151) = 0;
  *(v12 + 135) = 0;
  *(v12 + 143) = 0;
  *(v12 + 159) = 0;
  *(v12 + 176) = 0;
  *(v12 + 184) = 0;
  *(v12 + 168) = 0;
  *(v12 + 192) = 0;
  v8 = v12 - v3;
  sub_9B8590(a1, v1, v2, v12 - v3);
  v9 = *a1;
  *a1 = v8;
  v10 = (208 * v4 + 208);
  *(a1 + 1) = v10;
  if (v9)
  {
    operator delete(v9);
    *&v10 = 208 * v4 + 208;
  }

  return *&v10;
}

void sub_9B857C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_9B8710(va);
  _Unwind_Resume(a1);
}

uint64_t sub_9B8590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      v10 = v6 + v7;
      v11 = a4 + v7;
      *v11 = 0;
      *(v11 + 8) = 0;
      *(v11 + 16) = 0;
      *v11 = *(v6 + v7);
      *(v11 + 16) = *(v6 + v7 + 16);
      *v10 = 0;
      *(v10 + 8) = 0;
      *(v10 + 16) = 0;
      v12 = *(v6 + v7 + 24);
      *(v11 + 40) = *(v6 + v7 + 40);
      *(v11 + 24) = v12;
      *(v10 + 32) = 0;
      *(v10 + 40) = 0;
      *(v10 + 24) = 0;
      *(v11 + 48) = *(v6 + v7 + 48);
      *(v11 + 72) = 0;
      *(v11 + 80) = 0;
      *(v11 + 64) = 0;
      *(v11 + 64) = *(v6 + v7 + 64);
      *(v11 + 80) = *(v6 + v7 + 80);
      *(v10 + 64) = 0;
      *(v10 + 72) = 0;
      *(v10 + 80) = 0;
      *(a4 + v7 + 88) = 0;
      *(v11 + 120) = -1;
      v13 = *(v6 + v7 + 120);
      if (v13 != -1)
      {
        v15 = a4 + v7 + 88;
        result = (off_266F5D8[v13])(&v15, v10 + 88);
        *(v11 + 120) = v13;
      }

      *(v11 + 128) = *(v10 + 128);
      v8 = *(v10 + 136);
      *(v11 + 152) = *(v10 + 152);
      *(v11 + 136) = v8;
      *(v10 + 144) = 0;
      *(v10 + 152) = 0;
      *(v10 + 136) = 0;
      *(v11 + 160) = *(v10 + 160);
      v9 = *(v10 + 168);
      *(v11 + 184) = *(v10 + 184);
      *(v11 + 168) = v9;
      *(v10 + 176) = 0;
      *(v10 + 184) = 0;
      *(v10 + 168) = 0;
      *(v11 + 192) = *(v10 + 192);
      *(v11 + 200) = *(v10 + 200);
      v7 += 208;
    }

    while (v10 + 208 != a3);
    while (v6 != a3)
    {
      result = sub_935DD4(v6);
      v6 += 208;
    }
  }

  return result;
}

uint64_t sub_9B8710(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 208;
    sub_935DD4(i - 208);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

unint64_t sub_9B8764(void **a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = v2 - *a1;
  v4 = 0x86BCA1AF286BCA1BLL * (v3 >> 4) + 1;
  if (v4 > 0xD79435E50D7943)
  {
    sub_1794();
  }

  if (0xD79435E50D79436 * ((a1[2] - v1) >> 4) > v4)
  {
    v4 = 0xD79435E50D79436 * ((a1[2] - v1) >> 4);
  }

  if (0x86BCA1AF286BCA1BLL * ((a1[2] - v1) >> 4) >= 0x6BCA1AF286BCA1)
  {
    v6 = 0xD79435E50D7943;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    if (v6 <= 0xD79435E50D7943)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 16 * (v3 >> 4);
  *(v7 + 248) = 0u;
  *(v7 + 232) = 0u;
  *(v7 + 216) = 0u;
  *(v7 + 200) = 0u;
  *(v7 + 184) = 0u;
  *(v7 + 168) = 0u;
  *(v7 + 152) = 0u;
  *(v7 + 136) = 0u;
  *(v7 + 120) = 0u;
  *(v7 + 104) = 0u;
  *(v7 + 88) = 0u;
  *(v7 + 72) = 0u;
  *(v7 + 56) = 0u;
  *(v7 + 40) = 0u;
  *(v7 + 24) = 0u;
  *&dword_8[v7 / 4] = 0u;
  *(v7 + 264) = 0u;
  *(v7 + 280) = 0u;
  *v7 = -1;
  *(v7 + 8) = 0x7FFFFFFF;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0u;
  *(v7 + 80) = 0u;
  *(v7 + 96) = 0u;
  *(v7 + 112) = 0u;
  *(v7 + 128) = 0u;
  *(v7 + 144) = 0u;
  *(v7 + 160) = -1;
  *(v7 + 168) = 0;
  *(v7 + 176) = 0;
  *(v7 + 184) = 0;
  *(v7 + 232) = -1;
  *(v7 + 235) = -1;
  *(v7 + 247) = 0;
  *(v7 + 255) = 0;
  *(v7 + 272) = 0;
  *(v7 + 280) = 0;
  *(v7 + 288) = 0;
  *(v7 + 296) = 0;
  *(v7 + 296) = 0;
  v8 = v7 + 304;
  v9 = v7 - v3;
  *(v7 + 239) = 0;
  *(v7 + 263) = 0;
  if (v1 != v2)
  {
    v10 = v1;
    v11 = v7 - v3;
    do
    {
      sub_9B895C(v11, v10);
      v10 += 38;
      v11 = v12 + 304;
    }

    while (v10 != v2);
    do
    {
      sub_9432AC(v1);
      v1 += 38;
    }

    while (v1 != v2);
    v1 = *a1;
  }

  *a1 = v9;
  a1[1] = v8;
  a1[2] = 0;
  if (v1)
  {
    operator delete(v1);
  }

  return v8;
}

__n128 sub_9B895C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(a1 + 8) = *(a2 + 2);
  *a1 = v3;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 16) = *(a2 + 1);
  *(a1 + 32) = a2[4];
  a2[2] = 0;
  a2[3] = 0;
  a2[4] = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 56) = a2[7];
  a2[5] = 0;
  a2[6] = 0;
  a2[7] = 0;
  v4 = *(a2 + 4);
  *(a1 + 80) = a2[10];
  *(a1 + 64) = v4;
  a2[9] = 0;
  a2[10] = 0;
  a2[8] = 0;
  v5 = *(a2 + 11);
  *(a1 + 104) = a2[13];
  *(a1 + 88) = v5;
  a2[12] = 0;
  a2[13] = 0;
  a2[11] = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 112) = *(a2 + 7);
  *(a1 + 128) = a2[16];
  a2[14] = 0;
  a2[15] = 0;
  a2[16] = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 136) = *(a2 + 17);
  v6 = a2[20];
  *(a1 + 152) = a2[19];
  a2[18] = 0;
  a2[19] = 0;
  a2[17] = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 160) = v6;
  *(a1 + 168) = 0;
  *(a1 + 168) = *(a2 + 21);
  *(a1 + 184) = a2[23];
  a2[21] = 0;
  a2[22] = 0;
  a2[23] = 0;
  *(a1 + 192) = 0;
  *(a1 + 224) = -1;
  v7 = *(a2 + 56);
  if (v7 != -1)
  {
    v8 = a1;
    v11 = a1 + 192;
    (off_266F5D8[v7])(&v11, a2 + 24);
    a1 = v8;
    *(v8 + 224) = v7;
  }

  *(a1 + 232) = a2[29];
  v9 = *(a2 + 15);
  *(a1 + 256) = a2[32];
  *(a1 + 240) = v9;
  a2[31] = 0;
  a2[32] = 0;
  a2[30] = 0;
  *(a1 + 264) = *(a2 + 264);
  result = *(a2 + 17);
  *(a1 + 288) = a2[36];
  *(a1 + 272) = result;
  a2[35] = 0;
  a2[36] = 0;
  a2[34] = 0;
  *(a1 + 296) = *(a2 + 296);
  return result;
}

void **sub_9B8AFC(void ***a1, void *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v2)
  {
    v2 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x555555555555555)
  {
    v4 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  v5 = 8 * (a1[1] - *a1);
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  *v5 = 0;
  v6 = a2[1] - *a2;
  if (v6)
  {
    if (0xAAAAAAAAAAAAAAABLL * (v6 >> 2) < 0x1555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  v7 = (v5 + 24);
  v8 = *a1;
  v9 = a1[1];
  v10 = (v5 + *a1 - v9);
  if (v9 != *a1)
  {
    v11 = *a1;
    v12 = v10;
    do
    {
      *v12 = 0;
      v12[1] = 0;
      v12[2] = 0;
      *v12 = *v11;
      v12[2] = v11[2];
      *v11 = 0;
      v11[1] = 0;
      v11[2] = 0;
      v11 += 3;
      v12 += 3;
    }

    while (v11 != v9);
    do
    {
      v13 = *v8;
      if (*v8)
      {
        v8[1] = v13;
        operator delete(v13);
      }

      v8 += 3;
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

void sub_9B8CE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v5 = *v3;
  if (*v3)
  {
    *(v3 + 8) = v5;
    operator delete(v5);
  }

  sub_42F8B4(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_9B8D08(uint64_t *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if ((0x6DB6DB6DB6DB6DB7 * ((v2 - *a2) >> 4)) < 0x24924924924924ALL)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_9B8E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_9B8FA8(va);
  *(v10 + 8) = v11;
  sub_60B854(&a9);
  _Unwind_Resume(a1);
}

void sub_9B8E8C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x3BCBADC7F10D15)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_9B8F74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  if (v12)
  {
    v14 = v11 - 1096;
    v15 = -v12;
    do
    {
      v14 = sub_3EEA68(v14) - 1096;
      v15 += 1096;
    }

    while (v15);
  }

  *(v9 + 8) = v10;
  sub_3EEC50(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_9B8FA8(uint64_t *a1)
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
        v4 -= 14;
        sub_9B9010(v6, v4);
      }

      while (v4 != v5);
    }
  }

  return a1;
}

void sub_9B9010(uint64_t a1, char **a2)
{
  v3 = a2[10];
  if (v3)
  {
    do
    {
      v4 = *v3;
      operator delete(v3);
      v3 = v4;
    }

    while (v4);
  }

  v5 = a2[8];
  a2[8] = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = a2[5];
  if (v6)
  {
    do
    {
      v7 = *v6;
      operator delete(v6);
      v6 = v7;
    }

    while (v7);
  }

  v8 = a2[3];
  a2[3] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  v9 = *a2;
  if (*a2)
  {
    v10 = a2[1];
    v11 = *a2;
    if (v10 != v9)
    {
      v12 = a2[1];
      do
      {
        v14 = *(v12 - 5);
        v12 -= 40;
        v13 = v14;
        if (v14)
        {
          *(v10 - 4) = v13;
          operator delete(v13);
        }

        v10 = v12;
      }

      while (v12 != v9);
      v11 = *a2;
    }

    a2[1] = v9;

    operator delete(v11);
  }
}

uint64_t sub_9B90F0(uint64_t a1)
{
  v2 = a1 + 128;
  v3 = *(a1 + 128);
  if (v3)
  {
    for (i = *(a1 + 136); i != v3; sub_9B9010(v2, i))
    {
      i -= 14;
    }

    *(a1 + 136) = v3;
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
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
        v6 = sub_3EEA68(v6 - 1096);
      }

      while (v6 != v5);
      v7 = *(a1 + 24);
    }

    *(a1 + 32) = v5;
    operator delete(v7);
  }

  v8 = *a1;
  if (*a1)
  {
    v9 = *(a1 + 8);
    v10 = *a1;
    if (v9 != v8)
    {
      do
      {
        v9 -= 80;
        sub_3ED230(v9);
      }

      while (v9 != v8);
      v10 = *a1;
    }

    *(a1 + 8) = v8;
    operator delete(v10);
  }

  return a1;
}

void **sub_9B91D8(void **a1)
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
        v3 = sub_9B90F0(v3 - 152);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_9B9234(void **a1, uint64_t a2)
{
  v2 = 0x4FBCDA3AC10C9715 * ((a1[1] - *a1) >> 7);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x864B8A7DE6D1DLL)
  {
    sub_1794();
  }

  if (0x9F79B47582192E2ALL * ((a1[2] - *a1) >> 7) > v3)
  {
    v3 = 0x9F79B47582192E2ALL * ((a1[2] - *a1) >> 7);
  }

  if ((0x4FBCDA3AC10C9715 * ((a1[2] - *a1) >> 7)) >= 0x4325C53EF368ELL)
  {
    v5 = 0x864B8A7DE6D1DLL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x864B8A7DE6D1DLL)
    {
      operator new();
    }

    sub_1808();
  }

  v15 = (a1[1] - *a1) >> 7 << 7;
  sub_7E4D94(v15, a2);
  v6 = 7808 * v2 + 7808;
  v7 = *a1;
  v8 = a1[1];
  v9 = *a1 - v8;
  v10 = &v9[v15];
  if (v8 != *a1)
  {
    v11 = *a1;
    v12 = &v9[v15];
    do
    {
      v13 = sub_78A944(v12, v11);
      v11 += 7808;
      v12 = v13 + 7808;
    }

    while (v11 != v8);
    do
    {
      sub_78B5C0(v7);
      v7 += 7808;
    }

    while (v7 != v8);
    v7 = *a1;
  }

  *a1 = v10;
  a1[1] = v6;
  a1[2] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return v6;
}

void sub_9B93C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_7E5740(va);
  _Unwind_Resume(a1);
}

char ***sub_9B93D4(char ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    for (i = a1[1]; i != v2; sub_9B9010(a1, i))
    {
      i -= 14;
    }

    a1[1] = v2;
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_9B9438(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 128;
    if (*(i - 9) < 0)
    {
      operator delete(*(i - 32));
      if ((*(i - 41) & 0x80000000) == 0)
      {
LABEL_6:
        v4 = *(i - 80);
        if (v4 == -1)
        {
          goto LABEL_3;
        }

LABEL_10:
        (off_266F5B0[v4])(&v6, i - 112);
        goto LABEL_3;
      }
    }

    else if ((*(i - 41) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    operator delete(*(i - 64));
    v4 = *(i - 80);
    if (v4 != -1)
    {
      goto LABEL_10;
    }

LABEL_3:
    *(i - 80) = -1;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_9B9510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      v10 = v6 + v7;
      v11 = a4 + v7;
      *v11 = *(v6 + v7);
      *(a4 + v7 + 16) = 0;
      *(v11 + 48) = -1;
      v12 = *(v6 + v7 + 48);
      if (v12 != -1)
      {
        v14 = a4 + v7 + 16;
        (off_266F5D8[v12])(&v14, v10 + 16);
        *(v11 + 48) = v12;
      }

      *(v11 + 56) = *(v10 + 56);
      v8 = *(v10 + 64);
      *(v11 + 80) = *(v10 + 80);
      *(v11 + 64) = v8;
      *(v10 + 72) = 0;
      *(v10 + 80) = 0;
      *(v10 + 64) = 0;
      *(v11 + 88) = *(v10 + 88);
      v9 = *(v10 + 96);
      *(v11 + 112) = *(v10 + 112);
      *(v11 + 96) = v9;
      *(v10 + 104) = 0;
      *(v10 + 112) = 0;
      *(v10 + 96) = 0;
      *(v11 + 120) = *(v10 + 120);
      v7 += 128;
    }

    while (v10 + 128 != a3);
    for (; v6 != a3; v6 += 128)
    {
      if (*(v6 + 119) < 0)
      {
        operator delete(*(v6 + 96));
        if ((*(v6 + 87) & 0x80000000) == 0)
        {
LABEL_11:
          v13 = *(v6 + 48);
          if (v13 == -1)
          {
            goto LABEL_8;
          }

LABEL_15:
          (off_266F5B0[v13])(&v15, v6 + 16);
          goto LABEL_8;
        }
      }

      else if ((*(v6 + 87) & 0x80000000) == 0)
      {
        goto LABEL_11;
      }

      operator delete(*(v6 + 64));
      v13 = *(v6 + 48);
      if (v13 != -1)
      {
        goto LABEL_15;
      }

LABEL_8:
      *(v6 + 48) = -1;
    }
  }
}

void *sub_9B96A0(uint64_t *a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v4 = (a1[1] - *a1) >> 7;
  v5 = v4 + 1;
  if ((v4 + 1) >> 57)
  {
    sub_1794();
  }

  v7 = a1[2] - *a1;
  if (v7 >> 6 > v5)
  {
    v5 = v7 >> 6;
  }

  if (v7 >= 0x7FFFFFFFFFFFFF80)
  {
    v8 = 0x1FFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v5;
  }

  if (v8)
  {
    if (!(v8 >> 57))
    {
      operator new();
    }

    sub_1808();
  }

  v14 = (v4 << 7);
  v9 = *a3;
  *v14 = *a2;
  v14[1] = v9;
  sub_55F1E8((v4 << 7) + 16, a4);
  v10 = a1[1];
  v11 = (v4 << 7) + *a1 - v10;
  sub_9B9510(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  a1[1] = (v4 << 7) + 128;
  a1[2] = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return ((v4 << 7) + 128);
}

void sub_9B97C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_9B9438(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_9B97D4(void *a1, void *a2, uint64_t a3, void **a4)
{
  v4 = *a2;
  v5 = __ROR8__(*a2, 32);
  v6 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) >> 33));
  v7 = v6 ^ (v6 >> 33);
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_31;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6 ^ (v6 >> 33);
    if (v7 >= *&v8)
    {
      v10 = v7 % *&v8;
    }
  }

  else
  {
    v10 = v7 & (*&v8 - 1);
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_31:
    operator new();
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v15 = v12[1];
      if (v15 == v7)
      {
        if (*(v12 + 4) == v4 && *(v12 + 5) == HIDWORD(v4))
        {
          return v12;
        }
      }

      else if ((v15 & (*&v8 - 1)) != v10)
      {
        goto LABEL_31;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_31;
      }
    }
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v7)
    {
      break;
    }

    if (v13 >= *&v8)
    {
      v13 %= *&v8;
    }

    if (v13 != v10)
    {
      goto LABEL_31;
    }

LABEL_12:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_31;
    }
  }

  if (*(v12 + 4) != v4 || *(v12 + 5) != HIDWORD(v4))
  {
    goto LABEL_12;
  }

  return v12;
}

uint64_t *sub_9B9B54(void *a1, void *a2, uint64_t a3, void **a4)
{
  v4 = *a2;
  v5 = __ROR8__(*a2, 32);
  v6 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) >> 33));
  v7 = v6 ^ (v6 >> 33);
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_31;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6 ^ (v6 >> 33);
    if (v7 >= *&v8)
    {
      v10 = v7 % *&v8;
    }
  }

  else
  {
    v10 = v7 & (*&v8 - 1);
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_31:
    operator new();
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v15 = v12[1];
      if (v15 == v7)
      {
        if (*(v12 + 4) == v4 && *(v12 + 5) == HIDWORD(v4))
        {
          return v12;
        }
      }

      else if ((v15 & (*&v8 - 1)) != v10)
      {
        goto LABEL_31;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_31;
      }
    }
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v7)
    {
      break;
    }

    if (v13 >= *&v8)
    {
      v13 %= *&v8;
    }

    if (v13 != v10)
    {
      goto LABEL_31;
    }

LABEL_12:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_31;
    }
  }

  if (*(v12 + 4) != v4 || *(v12 + 5) != HIDWORD(v4))
  {
    goto LABEL_12;
  }

  return v12;
}

uint64_t *sub_9B9ED4(void *a1, void *a2, uint64_t a3, void **a4)
{
  v4 = *a2;
  v5 = __ROR8__(*a2, 32);
  v6 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) >> 33));
  v7 = v6 ^ (v6 >> 33);
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_31;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6 ^ (v6 >> 33);
    if (v7 >= *&v8)
    {
      v10 = v7 % *&v8;
    }
  }

  else
  {
    v10 = v7 & (*&v8 - 1);
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_31:
    operator new();
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v15 = v12[1];
      if (v15 == v7)
      {
        if (*(v12 + 4) == v4 && *(v12 + 5) == HIDWORD(v4))
        {
          return v12;
        }
      }

      else if ((v15 & (*&v8 - 1)) != v10)
      {
        goto LABEL_31;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_31;
      }
    }
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v7)
    {
      break;
    }

    if (v13 >= *&v8)
    {
      v13 %= *&v8;
    }

    if (v13 != v10)
    {
      goto LABEL_31;
    }

LABEL_12:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_31;
    }
  }

  if (*(v12 + 4) != v4 || *(v12 + 5) != HIDWORD(v4))
  {
    goto LABEL_12;
  }

  return v12;
}

uint64_t *sub_9BA254(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v4 = *a2;
  v3 = a2[1];
  v5 = __ROR8__(*a2, 32);
  v6 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) >> 33));
  v7 = __ROR8__(v3, 32);
  v8 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v7 ^ (v7 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v7 ^ (v7 >> 33))) >> 33));
  v9 = ((v8 ^ (v8 >> 33)) + ((((v6 ^ (v6 >> 33)) + 0x388152A534) ^ 0xDEADBEEF) << 6) + ((((v6 ^ (v6 >> 33)) + 0x388152A534) ^ 0xDEADBEEF) >> 2) + 2654435769u) ^ ((v6 ^ (v6 >> 33)) + 0x388152A534) ^ 0xDEADBEEF;
  v10 = vcnt_s8(v2);
  v10.i16[0] = vaddlv_u8(v10);
  if (v10.u32[0] > 1uLL)
  {
    v11 = v9;
    if (v9 >= *&v2)
    {
      v11 = v9 % *&v2;
    }
  }

  else
  {
    v11 = v9 & (*&v2 - 1);
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12)
  {
    return 0;
  }

  result = *v12;
  if (*v12)
  {
    if (v10.u32[0] < 2uLL)
    {
      v14 = *&v2 - 1;
      while (1)
      {
        v15 = result[1];
        if (v15 == v9)
        {
          if (*(result + 1) == __PAIR128__(v3, v4))
          {
            return result;
          }
        }

        else if ((v15 & v14) != v11)
        {
          return 0;
        }

        result = *result;
        if (!result)
        {
          return result;
        }
      }
    }

    do
    {
      v16 = result[1];
      if (v16 == v9)
      {
        if (*(result + 1) == __PAIR128__(v3, v4))
        {
          return result;
        }
      }

      else
      {
        if (v16 >= *&v2)
        {
          v16 %= *&v2;
        }

        if (v16 != v11)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t *sub_9BA408(void *a1, unint64_t *a2, uint64_t a3, _OWORD **a4)
{
  v5 = *a2;
  v4 = a2[1];
  v6 = __ROR8__(*a2, 32);
  v7 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v6 ^ (v6 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v6 ^ (v6 >> 33))) >> 33));
  v8 = __ROR8__(v4, 32);
  v9 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v8 ^ (v8 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v8 ^ (v8 >> 33))) >> 33));
  v10 = ((v9 ^ (v9 >> 33)) + ((((v7 ^ (v7 >> 33)) + 0x388152A534) ^ 0xDEADBEEF) << 6) + ((((v7 ^ (v7 >> 33)) + 0x388152A534) ^ 0xDEADBEEF) >> 2) + 2654435769u) ^ ((v7 ^ (v7 >> 33)) + 0x388152A534) ^ 0xDEADBEEF;
  v11 = a1[1];
  if (!*&v11)
  {
    goto LABEL_23;
  }

  v12 = vcnt_s8(v11);
  v12.i16[0] = vaddlv_u8(v12);
  if (v12.u32[0] > 1uLL)
  {
    v13 = ((v9 ^ (v9 >> 33)) + ((((v7 ^ (v7 >> 33)) + 0x388152A534) ^ 0xDEADBEEF) << 6) + ((((v7 ^ (v7 >> 33)) + 0x388152A534) ^ 0xDEADBEEF) >> 2) + 2654435769u) ^ ((v7 ^ (v7 >> 33)) + 0x388152A534) ^ 0xDEADBEEF;
    if (v10 >= *&v11)
    {
      v13 = v10 % *&v11;
    }
  }

  else
  {
    v13 = v10 & (*&v11 - 1);
  }

  v14 = *(*a1 + 8 * v13);
  if (!v14 || (v15 = *v14) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v12.u32[0] < 2uLL)
  {
    while (1)
    {
      v16 = v15[1];
      if (v16 == v10)
      {
        if (*(v15 + 1) == __PAIR128__(v4, v5))
        {
          return v15;
        }
      }

      else if ((v16 & (*&v11 - 1)) != v13)
      {
        goto LABEL_23;
      }

      v15 = *v15;
      if (!v15)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v18 = v15[1];
    if (v18 == v10)
    {
      break;
    }

    if (v18 >= *&v11)
    {
      v18 %= *&v11;
    }

    if (v18 != v13)
    {
      goto LABEL_23;
    }

LABEL_17:
    v15 = *v15;
    if (!v15)
    {
      goto LABEL_23;
    }
  }

  if (*(v15 + 1) != __PAIR128__(v4, v5))
  {
    goto LABEL_17;
  }

  return v15;
}

uint64_t *sub_9BA81C(void *a1, void *a2, uint64_t a3, void **a4)
{
  v4 = *a2;
  v5 = __ROR8__(*a2, 32);
  v6 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) >> 33));
  v7 = v6 ^ (v6 >> 33);
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_31;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6 ^ (v6 >> 33);
    if (v7 >= *&v8)
    {
      v10 = v7 % *&v8;
    }
  }

  else
  {
    v10 = v7 & (*&v8 - 1);
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_31:
    operator new();
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v15 = v12[1];
      if (v15 == v7)
      {
        if (*(v12 + 4) == v4 && *(v12 + 5) == HIDWORD(v4))
        {
          return v12;
        }
      }

      else if ((v15 & (*&v8 - 1)) != v10)
      {
        goto LABEL_31;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_31;
      }
    }
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v7)
    {
      break;
    }

    if (v13 >= *&v8)
    {
      v13 %= *&v8;
    }

    if (v13 != v10)
    {
      goto LABEL_31;
    }

LABEL_12:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_31;
    }
  }

  if (*(v12 + 4) != v4 || *(v12 + 5) != HIDWORD(v4))
  {
    goto LABEL_12;
  }

  return v12;
}

uint64_t *sub_9BAB9C(void *a1, void *a2, uint64_t a3, void **a4)
{
  v4 = *a2;
  v5 = __ROR8__(*a2, 32);
  v6 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) >> 33));
  v7 = v6 ^ (v6 >> 33);
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_31;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6 ^ (v6 >> 33);
    if (v7 >= *&v8)
    {
      v10 = v7 % *&v8;
    }
  }

  else
  {
    v10 = v7 & (*&v8 - 1);
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_31:
    operator new();
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v15 = v12[1];
      if (v15 == v7)
      {
        if (*(v12 + 4) == v4 && *(v12 + 5) == HIDWORD(v4))
        {
          return v12;
        }
      }

      else if ((v15 & (*&v8 - 1)) != v10)
      {
        goto LABEL_31;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_31;
      }
    }
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v7)
    {
      break;
    }

    if (v13 >= *&v8)
    {
      v13 %= *&v8;
    }

    if (v13 != v10)
    {
      goto LABEL_31;
    }

LABEL_12:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_31;
    }
  }

  if (*(v12 + 4) != v4 || *(v12 + 5) != HIDWORD(v4))
  {
    goto LABEL_12;
  }

  return v12;
}

void *sub_9BAF1C(void *a1, uint64_t a2)
{
  v4 = sub_3B4B4(a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v4;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v9 = *(*a1 + 8 * v7);
  if (!v9)
  {
    return v9;
  }

  v9 = *v9;
  if (!v9)
  {
    return v9;
  }

  v10 = *(a2 + 8) - *a2;
  if (v6.u32[0] < 2uLL)
  {
    v11 = *&v5 - 1;
    while (1)
    {
      v16 = v9[1];
      if (v16 == v4)
      {
        v18 = v9[2];
        v17 = v9[3];
        if (v17 - v18 == v10)
        {
          if (v18 == v17)
          {
            return v9;
          }

          for (i = *a2; *v18 == *i && *(v18 + 1) == i[1] && *(v18 + 2) == i[2]; i += 3)
          {
            v18 += 12;
            if (v18 == v17)
            {
              return v9;
            }
          }
        }
      }

      else if ((v16 & v11) != v7)
      {
        return 0;
      }

      v9 = *v9;
      if (!v9)
      {
        return v9;
      }
    }
  }

  while (1)
  {
    v12 = v9[1];
    if (v12 != v4)
    {
      break;
    }

    v14 = v9[2];
    v13 = v9[3];
    if (v13 - v14 == v10)
    {
      if (v14 == v13)
      {
        return v9;
      }

      for (j = *a2; *v14 == *j && *(v14 + 1) == j[1] && *(v14 + 2) == j[2]; j += 3)
      {
        v14 += 12;
        if (v14 == v13)
        {
          return v9;
        }
      }
    }

LABEL_12:
    v9 = *v9;
    if (!v9)
    {
      return v9;
    }
  }

  if (v12 >= *&v5)
  {
    v12 %= *&v5;
  }

  if (v12 == v7)
  {
    goto LABEL_12;
  }

  return 0;
}

void *sub_9BB0E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_3B4B4(a1, a2);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_35;
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
  if (!v12 || (result = *v12) == 0)
  {
LABEL_35:
    sub_9BB4C8();
  }

  v14 = *(a2 + 8) - *a2;
  if (v10.u32[0] < 2uLL)
  {
    while (1)
    {
      v19 = result[1];
      if (v19 == v8)
      {
        v21 = result[2];
        v20 = result[3];
        if (v20 - v21 == v14)
        {
          if (v21 == v20)
          {
            return result;
          }

          for (i = *a2; *v21 == *i && *(v21 + 1) == i[1] && *(v21 + 2) == i[2]; i += 3)
          {
            v21 += 12;
            if (v21 == v20)
            {
              return result;
            }
          }
        }
      }

      else if ((v19 & (*&v9 - 1)) != v11)
      {
        goto LABEL_35;
      }

      result = *result;
      if (!result)
      {
        goto LABEL_35;
      }
    }
  }

  while (1)
  {
    v15 = result[1];
    if (v15 == v8)
    {
      break;
    }

    if (v15 >= *&v9)
    {
      v15 %= *&v9;
    }

    if (v15 != v11)
    {
      goto LABEL_35;
    }

LABEL_12:
    result = *result;
    if (!result)
    {
      goto LABEL_35;
    }
  }

  v17 = result[2];
  v16 = result[3];
  if (v16 - v17 != v14)
  {
    goto LABEL_12;
  }

  if (v17 != v16)
  {
    for (j = *a2; *v17 == *j && *(v17 + 1) == j[1] && *(v17 + 2) == j[2]; j += 3)
    {
      v17 += 12;
      if (v17 == v16)
      {
        return result;
      }
    }

    goto LABEL_12;
  }

  return result;
}

void sub_9BB4B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_9BB5DC(va);
  _Unwind_Resume(a1);
}

void sub_9BB5B8(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 24) = v5;
    operator delete(v5);
  }

  sub_9BB5DC(v1);
  _Unwind_Resume(a1);
}

void **sub_9BB5DC(void **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1)
    {
      v4 = v2[2];
      if (v4)
      {
        v2[3] = v4;
        v5 = v2;
        operator delete(v4);
        v2 = v5;
      }
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

uint64_t **sub_9BB644(void *a1, uint64_t a2)
{
  v4 = sub_9BB888(a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= *&v5)
    {
      v8 = v4 % *&v5;
    }
  }

  else
  {
    v8 = (*&v5 - 1) & v4;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9)
  {
    return 0;
  }

  v10 = *v9;
  if (*v9)
  {
    if (v7.u32[0] < 2uLL)
    {
      v11 = *&v5 - 1;
      while (1)
      {
        v12 = v10[1];
        if (v12 != v6)
        {
          if ((v12 & v11) != v8)
          {
            return 0;
          }

          goto LABEL_11;
        }

        v13 = *(v10 + 7);
        v14 = *(a2 + 12);
        if (v13 != -1 && v14 == v13)
        {
          v26 = &v25;
          if (((off_266F628[v13])(&v26, v10 + 2, a2) & 1) == 0)
          {
            goto LABEL_11;
          }
        }

        else if (v14 != v13)
        {
          goto LABEL_11;
        }

        v16 = *(v10 + 11);
        v17 = *(a2 + 28);
        if (v16 == -1 || v17 != v16)
        {
          if (v17 != v16)
          {
            goto LABEL_11;
          }
        }

        else
        {
          v26 = &v25;
          if (((off_266F628[v16])(&v26, v10 + 4, a2 + 16) & 1) == 0)
          {
            goto LABEL_11;
          }
        }

        if (*(v10 + 48) == *(a2 + 32))
        {
          return v10;
        }

LABEL_11:
        v10 = *v10;
        if (!v10)
        {
          return v10;
        }
      }
    }

    do
    {
      v18 = v10[1];
      if (v18 == v6)
      {
        v19 = *(v10 + 7);
        v20 = *(a2 + 12);
        if (v19 != -1 && v20 == v19)
        {
          v26 = &v25;
          if (((off_266F628[v19])(&v26, v10 + 2, a2) & 1) == 0)
          {
            goto LABEL_29;
          }
        }

        else if (v20 != v19)
        {
          goto LABEL_29;
        }

        v22 = *(v10 + 11);
        v23 = *(a2 + 28);
        if (v22 == -1 || v23 != v22)
        {
          if (v23 != v22)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v26 = &v25;
          if (((off_266F628[v22])(&v26, v10 + 4, a2 + 16) & 1) == 0)
          {
            goto LABEL_29;
          }
        }

        if (*(v10 + 48) == *(a2 + 32))
        {
          return v10;
        }
      }

      else
      {
        if (v18 >= *&v5)
        {
          v18 %= *&v5;
        }

        if (v18 != v8)
        {
          return 0;
        }
      }

LABEL_29:
      v10 = *v10;
    }

    while (v10);
  }

  return v10;
}

unint64_t sub_9BB888(uint64_t a1, unsigned int *a2)
{
  v2 = a2[3];
  v3 = (v2 + 0x388152A534) ^ 0xDEADBEEFLL;
  v4 = 0x385FFF1BDCLL;
  if (v2 != -1)
  {
    v4 = (v2 + 0x388152A534) ^ 0xDEADBEEFLL;
  }

  if (v2 == 2)
  {
    v5 = (*a2 + 0x388152A534) ^ 0xDEADBEEFLL;
    v7 = 0xFF51AFD7ED558CCDLL * (*(a2 + 1) ^ (*(a2 + 1) >> 33));
    v6 = (v5 << 6) + 2654435769u + (v5 >> 2) + ((0xC4CEB9FE1A85EC53 * (v7 ^ (v7 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v7 ^ (v7 >> 33))) >> 33));
  }

  else
  {
    if (v2 != 1)
    {
      goto LABEL_8;
    }

    v5 = (a2[1] + 2654435769 + (((*a2 + 0x388152A534) ^ 0xDEADBEEFLL) << 6) + (((*a2 + 0x388152A534) ^ 0xDEADBEEFuLL) >> 2)) ^ (*a2 + 0x388152A534) ^ 0xDEADBEEFLL;
    v6 = a2[2] + 2654435769 + (v5 << 6) + (v5 >> 2);
  }

  v4 = ((v3 << 6) + 2654435769u + (v3 >> 2) + (v6 ^ v5)) ^ v3;
LABEL_8:
  v8 = a2[7];
  v9 = v8 + 2654435769;
  if (v8 == -1)
  {
    v9 = 2654435768;
  }

  v10 = ((v4 >> 2) + (v4 << 6) + v9) ^ v4;
  if (v8 == 2)
  {
    v11 = (a2[4] + 0x388152A534) ^ 0xDEADBEEFLL;
    v13 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (*(a2 + 5) ^ (*(a2 + 5) >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (*(a2 + 5) ^ (*(a2 + 5) >> 33))) >> 33));
    v12 = (v11 << 6) + 2654435769u + (v11 >> 2) + (v13 ^ (v13 >> 33));
    goto LABEL_14;
  }

  if (v8 == 1)
  {
    v11 = (a2[5] + 2654435769 + (((a2[4] + 0x388152A534) ^ 0xDEADBEEFLL) << 6) + (((a2[4] + 0x388152A534) ^ 0xDEADBEEFuLL) >> 2)) ^ (a2[4] + 0x388152A534) ^ 0xDEADBEEFLL;
    v12 = a2[6] + 2654435769 + (v11 << 6) + (v11 >> 2);
LABEL_14:
    v10 ^= (v10 << 6) + 2654435769u + (v10 >> 2) + (v12 ^ v11);
  }

  return ((v10 << 6) + 2654435769u + (v10 >> 2) + *(a2 + 32)) ^ v10;
}

BOOL sub_9BBA70(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  if (*a2 == *a3 && (v3 = *(a3 + 4), a2[2] == HIDWORD(v3)))
  {
    return a2[1] == v3;
  }

  else
  {
    return 0;
  }
}

void ***sub_9BBAAC(void ***result)
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
          v4 = sub_9B90F0(v4 - 152);
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

uint64_t **sub_9BBB24(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_9BB888(a1, a2);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_48;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v8)
    {
      v10 = v6 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_48:
    operator new();
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v13 = v12[1];
      if (v13 != v7)
      {
        if ((v13 & (*&v8 - 1)) != v10)
        {
          goto LABEL_48;
        }

        goto LABEL_12;
      }

      v14 = *(v12 + 7);
      v15 = *(a2 + 12);
      if (v14 != -1 && v15 == v14)
      {
        v27 = &v26;
        if (((off_266F628[v14])(&v27, v12 + 2, a2) & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      else if (v15 != v14)
      {
        goto LABEL_12;
      }

      v17 = *(v12 + 11);
      v18 = *(a2 + 28);
      if (v17 == -1 || v18 != v17)
      {
        if (v18 != v17)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v27 = &v26;
        if (((off_266F628[v17])(&v27, v12 + 4, a2 + 16) & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      if (*(v12 + 48) == *(a2 + 32))
      {
        return v12;
      }

LABEL_12:
      v12 = *v12;
      if (!v12)
      {
        goto LABEL_48;
      }
    }
  }

  while (1)
  {
    v19 = v12[1];
    if (v19 != v7)
    {
      if (v19 >= *&v8)
      {
        v19 %= *&v8;
      }

      if (v19 != v10)
      {
        goto LABEL_48;
      }

      goto LABEL_30;
    }

    v20 = *(v12 + 7);
    v21 = *(a2 + 12);
    if (v20 != -1 && v21 == v20)
    {
      v27 = &v26;
      if (((off_266F628[v20])(&v27, v12 + 2, a2) & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    else if (v21 != v20)
    {
      goto LABEL_30;
    }

    v23 = *(v12 + 11);
    v24 = *(a2 + 28);
    if (v23 == -1 || v24 != v23)
    {
      break;
    }

    v27 = &v26;
    if ((off_266F628[v23])(&v27, v12 + 4, a2 + 16))
    {
      goto LABEL_46;
    }

LABEL_30:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_48;
    }
  }

  if (v24 != v23)
  {
    goto LABEL_30;
  }

LABEL_46:
  if (*(v12 + 48) != *(a2 + 32))
  {
    goto LABEL_30;
  }

  return v12;
}

void sub_9BBF98()
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
  xmmword_27B3280 = 0u;
  *algn_27B3290 = 0u;
  dword_27B32A0 = 1065353216;
  sub_3A9A34(&xmmword_27B3280, v0, v0);
  sub_3A9A34(&xmmword_27B3280, v3, v3);
  sub_3A9A34(&xmmword_27B3280, __p, __p);
  sub_3A9A34(&xmmword_27B3280, v9, v9);
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
    qword_27B3258 = 0;
    qword_27B3260 = 0;
    qword_27B3250 = 0;
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

void sub_9BC1E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B3268)
  {
    qword_27B3270 = qword_27B3268;
    operator delete(qword_27B3268);
  }

  _Unwind_Resume(exception_object);
}

void sub_9BC28C(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, std::string *a5@<X8>)
{
  nullsub_1();
  v10 = sub_92FC60(a3, a1, 0, "line");
  v11 = (v10 - *v10);
  if (*v11 >= 0xFu && (v12 = v11[7]) != 0)
  {
    v13 = (v10 + v12 + *(v10 + v12));
    v53 = 0uLL;
    v54 = 0;
    sub_943AEC(&v53, *v13);
    v46[0] = v13 + 1;
    v55 = &v13[*v13 + 1];
    sub_943E24(v46, &v55, &v53, sub_509164);
    v14 = v53;
    v15 = v54;
  }

  else
  {
    v15 = 0;
    v14 = 0uLL;
  }

  *__p = v14;
  v49 = v15;
  sub_9D6590(__p, a4 + 968, &v50);
  v16 = __p[0];
  if (__p[0])
  {
    v17 = __p[1];
    v18 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v19 = *(v17 - 3);
        if (v19)
        {
          v20 = *(v17 - 2);
          v21 = *(v17 - 3);
          if (v20 != v19)
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
            v21 = *(v17 - 3);
          }

          *(v17 - 2) = v19;
          operator delete(v21);
        }

        v22 = (v17 - 64);
        if (*(v17 - 41) < 0)
        {
          operator delete(*v22);
        }

        v17 -= 64;
      }

      while (v22 != v16);
      v18 = __p[0];
    }

    __p[1] = v16;
    operator delete(v18);
  }

  v23 = sub_92FC60(a3, a1, 0, "line");
  v24 = *(v23 + *(v23 - *v23 + 6));
  nullsub_1();
  v25 = sub_93E04C(a2, v24, 0, "system");
  v26 = (v25 - *v25);
  if (*v26 >= 7u && (v27 = v26[3]) != 0)
  {
    v28 = (v25 + v27 + *(v25 + v27));
    v53 = 0uLL;
    v54 = 0;
    sub_943AEC(&v53, *v28);
    v55 = v28 + 1;
    v52 = &v28[*v28 + 1];
    sub_943E24(&v55, &v52, &v53, sub_509164);
    v29 = v53;
    v30 = v54;
  }

  else
  {
    v30 = 0;
    v29 = 0uLL;
  }

  *v46 = v29;
  v47 = v30;
  sub_9D6590(v46, a4 + 968, __p);
  v31 = v46[0];
  if (v46[0])
  {
    v32 = v46[1];
    v33 = v46[0];
    if (v46[1] != v46[0])
    {
      do
      {
        v34 = *(v32 - 3);
        if (v34)
        {
          v35 = *(v32 - 2);
          v36 = *(v32 - 3);
          if (v35 != v34)
          {
            do
            {
              if (*(v35 - 1) < 0)
              {
                operator delete(*(v35 - 24));
              }

              v35 -= 32;
            }

            while (v35 != v34);
            v36 = *(v32 - 3);
          }

          *(v32 - 2) = v34;
          operator delete(v36);
        }

        v37 = (v32 - 64);
        if (*(v32 - 41) < 0)
        {
          operator delete(*v37);
        }

        v32 -= 64;
      }

      while (v37 != v31);
      v33 = v46[0];
    }

    v46[1] = v31;
    operator delete(v33);
  }

  sub_9BC758(&v50, __p, a5);
  v38 = __p[0];
  if (__p[0])
  {
    v39 = __p[1];
    v40 = __p[0];
    if (__p[1] == __p[0])
    {
LABEL_51:
      __p[1] = v38;
      operator delete(v40);
      goto LABEL_52;
    }

    while (1)
    {
      if (*(v39 - 1) < 0)
      {
        operator delete(*(v39 - 3));
        v41 = v39 - 7;
        if (*(v39 - 33) < 0)
        {
LABEL_49:
          operator delete(*v41);
        }
      }

      else
      {
        v41 = v39 - 7;
        if (*(v39 - 33) < 0)
        {
          goto LABEL_49;
        }
      }

      v39 = v41;
      if (v41 == v38)
      {
        v40 = __p[0];
        goto LABEL_51;
      }
    }
  }

LABEL_52:
  v42 = v50;
  if (!v50)
  {
    return;
  }

  v43 = v51;
  v44 = v50;
  if (v51 != v50)
  {
    while (1)
    {
      if (*(v43 - 1) < 0)
      {
        operator delete(*(v43 - 3));
        v45 = v43 - 7;
        if (*(v43 - 33) < 0)
        {
LABEL_60:
          operator delete(*v45);
        }
      }

      else
      {
        v45 = v43 - 7;
        if (*(v43 - 33) < 0)
        {
          goto LABEL_60;
        }
      }

      v43 = v45;
      if (v45 == v42)
      {
        v44 = v50;
        break;
      }
    }
  }

  v51 = v42;
  operator delete(v44);
}

void sub_9BC6A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void **);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  sub_941AEC(va1);
  sub_9354C4(va);
  _Unwind_Resume(a1);
}

void sub_9BC6BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_941AEC(va);
  _Unwind_Resume(a1);
}

void sub_9BC6D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void **);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  sub_9354C4(va);
  sub_9354C4(va1);
  _Unwind_Resume(a1);
}

void sub_9BC6EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17)
{
  sub_941AEC(&a9);
  sub_9354C4(&a17);
  _Unwind_Resume(a1);
}

void sub_9BC708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_9354C4(va);
  _Unwind_Resume(a1);
}

void sub_9BC71C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_9354C4(va);
  _Unwind_Resume(a1);
}

void sub_9BC730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_9354C4(va);
  _Unwind_Resume(a1);
}

void sub_9BC744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_941AEC(va);
  _Unwind_Resume(a1);
}

void sub_9BC758(uint64_t *a1@<X0>, uint64_t *a2@<X1>, std::string *a3@<X8>)
{
  sub_9D45F0(a2, v9);
  *v7 = *v9;
  v8 = v10;
  v9[0] = 0;
  v9[1] = 0;
  v10 = 0;
  if (v12 < 0)
  {
    operator delete(__p);
    if (SHIBYTE(v10) < 0)
    {
      operator delete(v9[0]);
    }
  }

  sub_9D45F0(a1, v9);
  *v5 = *v9;
  v6 = v10;
  v9[1] = 0;
  v10 = 0;
  v9[0] = 0;
  if (v12 < 0)
  {
    operator delete(__p);
    if (SHIBYTE(v10) < 0)
    {
      operator delete(v9[0]);
    }
  }

  HIBYTE(v10) = 1;
  LOWORD(v9[0]) = 32;
  sub_2A8074(v9, v7, v5, a3);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9[0]);
    if ((SHIBYTE(v6) & 0x80000000) == 0)
    {
LABEL_9:
      if ((SHIBYTE(v8) & 0x80000000) == 0)
      {
        return;
      }

LABEL_13:
      operator delete(v7[0]);
      return;
    }
  }

  else if ((SHIBYTE(v6) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(v5[0]);
  if (SHIBYTE(v8) < 0)
  {
    goto LABEL_13;
  }
}

void sub_9BC87C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a21 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  if ((a21 & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(a16);
  _Unwind_Resume(exception_object);
}

void sub_9BC8E0(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_9D45F0(a1, v3);
  *a2 = *v3;
  *(a2 + 16) = v4;
  v3[1] = 0;
  v4 = 0;
  v3[0] = 0;
  if (v6 < 0)
  {
    operator delete(__p);
    if (SHIBYTE(v4) < 0)
    {
      operator delete(v3[0]);
    }
  }
}

void sub_9BC958(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  nullsub_1();
  v8 = sub_93E04C(a2, a1, 0, "system");
  v9 = (v8 - *v8);
  if (*v9 >= 7u && (v10 = v9[3]) != 0)
  {
    v11 = (v8 + v10 + *(v8 + v10));
    v31[0] = 0;
    v31[1] = 0;
    v32 = 0;
    sub_943AEC(v31, *v11);
    v30 = (v11 + 1);
    v29 = &v11[*v11 + 1];
    sub_943E24(&v30, &v29, v31, sub_509164);
    v12 = *v31;
    v13 = v32;
  }

  else
  {
    v13 = 0;
    v12 = 0uLL;
  }

  *v25 = v12;
  v26 = v13;
  sub_9D6590(v25, a3 + 968, &v27);
  sub_9D45F0(&v27, v31);
  *a4 = *v31;
  *(a4 + 16) = v32;
  v31[1] = 0;
  v32 = 0;
  v31[0] = 0;
  if (v34 < 0)
  {
    operator delete(__p);
    if (SHIBYTE(v32) < 0)
    {
      operator delete(v31[0]);
    }
  }

  v14 = v27;
  if (v27)
  {
    v15 = v28;
    v16 = v27;
    if (v28 == v27)
    {
LABEL_18:
      v28 = v14;
      operator delete(v16);
      goto LABEL_19;
    }

    while (1)
    {
      if (*(v15 - 1) < 0)
      {
        operator delete(*(v15 - 3));
        v17 = v15 - 7;
        if (*(v15 - 33) < 0)
        {
LABEL_16:
          operator delete(*v17);
        }
      }

      else
      {
        v17 = v15 - 7;
        if (*(v15 - 33) < 0)
        {
          goto LABEL_16;
        }
      }

      v15 = v17;
      if (v17 == v14)
      {
        v16 = v27;
        goto LABEL_18;
      }
    }
  }

LABEL_19:
  v18 = v25[0];
  if (v25[0])
  {
    v19 = v25[1];
    v20 = v25[0];
    if (v25[1] != v25[0])
    {
      do
      {
        v21 = *(v19 - 3);
        if (v21)
        {
          v22 = *(v19 - 2);
          v23 = *(v19 - 3);
          if (v22 != v21)
          {
            do
            {
              if (*(v22 - 1) < 0)
              {
                operator delete(*(v22 - 24));
              }

              v22 -= 32;
            }

            while (v22 != v21);
            v23 = *(v19 - 3);
          }

          *(v19 - 2) = v21;
          operator delete(v23);
        }

        v24 = (v19 - 64);
        if (*(v19 - 41) < 0)
        {
          operator delete(*v24);
        }

        v19 -= 64;
      }

      while (v24 != v18);
      v20 = v25[0];
    }

    v25[1] = v18;
    operator delete(v20);
  }
}

void sub_9BCB98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_941AEC(va);
  _Unwind_Resume(a1);
}

void sub_9BCBAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14)
{
  sub_9354C4(&a14);
  sub_941AEC(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_9BCBDC(void *a1, unint64_t a2)
{
  if (0xCF3CF3CF3CF3CF3DLL * ((a1[1] - *a1) >> 3) <= a2)
  {
    sub_6FAB4();
  }

  v2 = *a1 + 168 * a2;
  v3 = *(v2 + 104);
  if (v3 == -1)
  {
    goto LABEL_10;
  }

  v4 = a1[3];
  if (0x8E38E38E38E38E39 * ((a1[4] - v4) >> 4) <= v3)
  {
    sub_6FAB4();
  }

  v5 = v4 + 144 * v3;
  if (*(v5 + 113) == 1)
  {
    return *(v5 + 112);
  }

  v7 = *(v5 + 104);
  if (v7 != -1)
  {
    v8 = a1[6];
    if (0xF0F0F0F0F0F0F0F1 * ((a1[7] - v8) >> 3) <= v7)
    {
      sub_6FAB4();
    }

    v9 = v8 + 136 * v7;
    if (*(v9 + 106))
    {
      return *(v9 + 105);
    }
  }

LABEL_10:
  if (*(v2 + 161) == 1)
  {
    return *(v2 + 160);
  }

  return 0;
}

void *sub_9BCCEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 104);
  if (v2 == -1)
  {
    return (a1 + 16);
  }

  v3 = (*(a2 + 24) + 144 * v2);
  v4 = v3 + 2;
  if (v3[2] == v3[3] && ((v6 = v3[13], v6 == -1) || (v7 = *(a2 + 48) + 136 * v6, v8 = *(v7 + 16), v9 = *(v7 + 24), v4 = (v7 + 16), v8 == v9)))
  {
    return (a1 + 16);
  }

  else
  {
    return v4;
  }
}

void sub_9BCD50(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 104);
  if (v3 == -1 || (v4 = (*(a2 + 24) + 144 * v3), v5 = v4 + 2, v4[2] == v4[3]) && ((v7 = v4[13], v7 == -1) || (v8 = *(a2 + 48) + 136 * v7, v9 = *(v8 + 16), v10 = *(v8 + 24), v5 = (v8 + 16), v9 == v10)))
  {
    v6 = (a1 + 16);
  }

  else
  {
    v6 = v5;
  }

  sub_9D43A4(v6, a3);
}

uint64_t sub_9BCDB4(unsigned int a1, int a2)
{
  if (a1 > 9)
  {
    goto LABEL_8;
  }

  if (((1 << a1) & 0x10E) != 0)
  {
    return 0;
  }

  if (((1 << a1) & 0x270) != 0)
  {
    return 1;
  }

  if (a1 == 7)
  {
    return 2;
  }

LABEL_8:
  if ((a2 - 2) < 3)
  {
    v3 = 1;
  }

  else
  {
    v3 = 3;
  }

  if (a1)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_9BCE28(void *a1, unint64_t a2)
{
  if (0xCF3CF3CF3CF3CF3DLL * ((a1[1] - *a1) >> 3) <= a2)
  {
    sub_6FAB4();
  }

  v2 = *(*a1 + 168 * a2 + 104);
  if (v2 == -1)
  {
    return 0;
  }

  v3 = a1[3];
  if (0x8E38E38E38E38E39 * ((a1[4] - v3) >> 4) <= v2)
  {
    sub_6FAB4();
  }

  v4 = *(v3 + 144 * v2 + 104);
  if (v4 == -1)
  {
    return 0;
  }

  v5 = a1[6];
  if (0xF0F0F0F0F0F0F0F1 * ((a1[7] - v5) >> 3) <= v4)
  {
    sub_6FAB4();
  }

  return *(v5 + 136 * v4 + 104);
}

uint64_t sub_9BCEF8(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v1 == v2)
  {
    return 0;
  }

  while (*(v1 + 2000) == *(v1 + 2008) || *v1 > 8u || ((1 << *v1) & 0x144) == 0)
  {
    v1 += 5704;
    if (v1 == v2)
    {
      return 0;
    }
  }

  return 1;
}

BOOL sub_9BCF58(void *a1)
{
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 0;
  }

  v2 = *a1 + 28;
  do
  {
    v3 = *(v2 - 24) != 0x7FFFFFFF && *(v2 - 20) == 1;
    result = v3;
    if (v3)
    {
      break;
    }

    v3 = v2 == v1;
    v2 += 28;
  }

  while (!v3);
  return result;
}

uint64_t sub_9BCFA4(unint64_t a1, uint64_t a2)
{
  v2 = sub_2C9210(a2, a1, 0, "payment_method");
  v3 = (v2 - *v2);
  if (*v3 >= 9u)
  {
    v4 = v3[4];
    if (!v4)
    {
      return v4 & 1;
    }

    v5 = *(v2 + v4);
    if (v5 <= 4)
    {
      LODWORD(v4) = 2u >> v5;
      return v4 & 1;
    }
  }

  return 0;
}

uint64_t sub_9BD018(unint64_t a1, uint64_t a2)
{
  v2 = sub_2C9210(a2, a1, 0, "payment_method");
  v3 = (v2 - *v2);
  if (*v3 >= 9u)
  {
    v4 = v3[4];
    if (!v4)
    {
      return v4 & 1;
    }

    v5 = *(v2 + v4);
    if (v5 <= 4)
    {
      LODWORD(v4) = 0x14u >> v5;
      return v4 & 1;
    }
  }

  return 0;
}

uint64_t sub_9BD0A4(unint64_t a1, uint64_t a2)
{
  v2 = sub_2C9210(a2, a1, 0, "payment_method");
  v3 = (v2 - *v2);
  if (*v3 >= 9u)
  {
    v4 = v3[4];
    if (!v4)
    {
      return v4 & 1;
    }

    v5 = *(v2 + v4);
    if (v5 <= 4)
    {
      LODWORD(v4) = 8u >> v5;
      return v4 & 1;
    }
  }

  return 0;
}

uint64_t sub_9BD118(void *a1)
{
  sub_9D4074(&v8, a1);
  v6 = v8;
  v7 = v9;
  sub_9D4040(v1, v5);
  v2 = 0;
  while (sub_9D427C(&v6, v5))
  {
    v3 = *(sub_9D42B8(&v6) + 1888);
    if (v3 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v3 = 0;
    }

    v2 += v3;
    sub_9D40D8(&v6);
  }

  return v2;
}

uint64_t sub_9BD1AC(uint64_t result, unsigned int *a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  while (1)
  {
    v9 = v10;
    v11 = a2 - v10;
    if (v11 > 2)
    {
      break;
    }

    if (v11 < 2)
    {
      return result;
    }

    if (v11 == 2)
    {
      v74 = *(a2 - 1);
      v75 = *v10;
      if (v74 < *v10)
      {
        *v10 = v74;
        *(a2 - 1) = v75;
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v86 = v10 + 1;
      v88 = v10 == a2 || v86 == a2;
      if (a5)
      {
        if (!v88)
        {
          v89 = 0;
          v90 = v10;
          do
          {
            v93 = *v90;
            v92 = v90[1];
            v90 = v86;
            if (v92 < v93)
            {
              v94 = v89;
              do
              {
                *(v10 + v94 + 4) = v93;
                if (!v94)
                {
                  v91 = v10;
                  goto LABEL_128;
                }

                v93 = *(v10 + v94 - 4);
                v94 -= 4;
              }

              while (v92 < v93);
              v91 = (v10 + v94 + 4);
LABEL_128:
              *v91 = v92;
            }

            v86 = v90 + 1;
            v89 += 4;
          }

          while (v90 + 1 != a2);
        }
      }

      else if (!v88)
      {
        do
        {
          v100 = *v9;
          v99 = v9[1];
          v9 = v86;
          if (v99 < v100)
          {
            do
            {
              *v86 = v100;
              v100 = *(v86 - 2);
              --v86;
            }

            while (v99 < v100);
            *v86 = v99;
          }

          v86 = v9 + 1;
        }

        while (v9 + 1 != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {

        return sub_9BDE80(v10, a2, a2);
      }

      return result;
    }

    v12 = &v10[v11 >> 1];
    v13 = v12;
    v14 = *(a2 - 1);
    if (v11 < 0x81)
    {
      v17 = *v10;
      v18 = *v12;
      if (*v10 < *v13)
      {
        if (v14 < v17)
        {
          *v13 = v14;
          goto LABEL_37;
        }

        *v13 = v17;
        *v10 = v18;
        v28 = *(a2 - 1);
        if (v28 < v18)
        {
          *v10 = v28;
LABEL_37:
          *(a2 - 1) = v18;
        }

LABEL_38:
        --a4;
        v21 = *v10;
        if (a5)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      if (v14 >= v17)
      {
        goto LABEL_38;
      }

      *v10 = v14;
      *(a2 - 1) = v17;
      v20 = *v13;
      if (*v10 >= *v13)
      {
        goto LABEL_38;
      }

      *v13 = *v10;
      *v10 = v20;
      --a4;
      v21 = v20;
      if (a5)
      {
        goto LABEL_62;
      }

LABEL_61:
      if (*(v10 - 1) < v21)
      {
        goto LABEL_62;
      }

      if (v21 >= *(a2 - 1))
      {
        v57 = (v10 + 1);
        do
        {
          v10 = v57;
          if (v57 >= a2)
          {
            break;
          }

          v57 += 4;
        }

        while (v21 >= *v10);
      }

      else
      {
        do
        {
          v56 = v10[1];
          ++v10;
        }

        while (v21 >= v56);
      }

      v58 = a2;
      if (v10 < a2)
      {
        v58 = a2;
        do
        {
          v59 = *--v58;
        }

        while (v21 < v59);
      }

      if (v10 < v58)
      {
        v60 = *v10;
        v61 = *v58;
        do
        {
          *v10 = v61;
          *v58 = v60;
          do
          {
            v62 = v10[1];
            ++v10;
            v60 = v62;
          }

          while (v21 >= v62);
          do
          {
            v63 = *--v58;
            v61 = v63;
          }

          while (v21 < v63);
        }

        while (v10 < v58);
      }

      v64 = (v10 - 1);
      if (v10 - 1 != v9)
      {
        *v9 = *v64;
      }

      a5 = 0;
      *v64 = v21;
    }

    else
    {
      v15 = *v12;
      v16 = *v10;
      if (*v12 >= *v10)
      {
        if (v14 < v15)
        {
          *v12 = v14;
          *(a2 - 1) = v15;
          v19 = *v10;
          if (*v12 < *v10)
          {
            *v10 = *v12;
            *v12 = v19;
          }
        }
      }

      else
      {
        if (v14 >= v15)
        {
          *v10 = v15;
          *v12 = v16;
          v22 = *(a2 - 1);
          if (v22 >= v16)
          {
            goto LABEL_29;
          }

          *v12 = v22;
        }

        else
        {
          *v10 = v14;
        }

        *(a2 - 1) = v16;
      }

LABEL_29:
      v23 = (v12 - 1);
      v24 = *(v12 - 1);
      v25 = v10[1];
      v26 = *(a2 - 2);
      if (v24 >= v25)
      {
        if (v26 < v24)
        {
          *v23 = v26;
          *(a2 - 2) = v24;
          v27 = v10[1];
          if (*v23 < v27)
          {
            v10[1] = *v23;
            *v23 = v27;
          }
        }
      }

      else
      {
        if (v26 >= v24)
        {
          v10[1] = v24;
          *v23 = v25;
          v29 = *(a2 - 2);
          if (v29 >= v25)
          {
            goto LABEL_43;
          }

          *v23 = v29;
        }

        else
        {
          v10[1] = v26;
        }

        *(a2 - 2) = v25;
      }

LABEL_43:
      v32 = v12[1];
      v30 = (v12 + 1);
      v31 = v32;
      v33 = v10[2];
      v34 = *(a2 - 3);
      if (v32 >= v33)
      {
        if (v34 < v31)
        {
          *v30 = v34;
          *(a2 - 3) = v31;
          v35 = v10[2];
          if (*v30 < v35)
          {
            v10[2] = *v30;
            *v30 = v35;
          }
        }
      }

      else
      {
        if (v34 >= v31)
        {
          v10[2] = v31;
          *v30 = v33;
          v36 = *(a2 - 3);
          if (v36 >= v33)
          {
            goto LABEL_52;
          }

          *v30 = v36;
        }

        else
        {
          v10[2] = v34;
        }

        *(a2 - 3) = v33;
      }

LABEL_52:
      v37 = *v13;
      v38 = *v23;
      v39 = *v30;
      if (*v13 >= *v23)
      {
        if (v39 >= v37)
        {
          goto LABEL_60;
        }

        *v13 = v39;
        *v30 = v37;
        v30 = v13;
        v37 = v38;
        if (v39 < v38)
        {
LABEL_59:
          *v23 = v39;
          *v30 = v38;
LABEL_60:
          v41 = *v10;
          *v10 = v37;
          *v13 = v41;
          --a4;
          v21 = *v10;
          if ((a5 & 1) == 0)
          {
            goto LABEL_61;
          }

          goto LABEL_62;
        }

        v55 = *v10;
        *v10 = v39;
        *v13 = v55;
        --a4;
        v21 = *v10;
        if (a5)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      if (v39 < v37)
      {
        goto LABEL_59;
      }

      *v23 = v37;
      *v13 = v38;
      v23 = v13;
      v37 = v39;
      if (v39 < v38)
      {
        goto LABEL_59;
      }

      v40 = *v10;
      *v10 = v38;
      *v13 = v40;
      --a4;
      v21 = *v10;
      if ((a5 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_62:
      v42 = 0;
      do
      {
        v43 = v10[++v42];
      }

      while (v43 < v21);
      v44 = &v10[v42];
      v45 = a2;
      if (v42 == 1)
      {
        v45 = a2;
        do
        {
          if (v44 >= v45)
          {
            break;
          }

          v47 = *--v45;
        }

        while (v47 >= v21);
      }

      else
      {
        do
        {
          v46 = *--v45;
        }

        while (v46 >= v21);
      }

      if (v44 >= v45)
      {
        v53 = (v44 - 1);
        if (v44 - 1 == v10)
        {
          goto LABEL_80;
        }

LABEL_79:
        *v10 = *v53;
        goto LABEL_80;
      }

      v48 = *v45;
      v49 = &v10[v42];
      v50 = v45;
      do
      {
        *v49 = v48;
        *v50 = v43;
        do
        {
          v51 = v49[1];
          ++v49;
          v43 = v51;
        }

        while (v51 < v21);
        do
        {
          v52 = *--v50;
          v48 = v52;
        }

        while (v52 >= v21);
      }

      while (v49 < v50);
      v53 = (v49 - 1);
      if (v49 - 1 != v10)
      {
        goto LABEL_79;
      }

LABEL_80:
      *v53 = v21;
      if (v44 < v45)
      {
        goto LABEL_83;
      }

      v54 = sub_9BDA94(v10, v53);
      v10 = (v53 + 1);
      result = sub_9BDA94(v53 + 1, a2);
      if (result)
      {
        a2 = v53;
        if (!v54)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v54)
      {
LABEL_83:
        result = sub_9BD1AC(v9, v53, a3, a4, a5 & 1);
        a5 = 0;
        v10 = (v53 + 1);
      }
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {
      v79 = (v10 + 1);
      v80 = v10[1];
      v81 = (v10 + 2);
      v82 = v10[2];
      v83 = *v10;
      if (v80 >= v83)
      {
        if (v82 < v80)
        {
          *v79 = v82;
          *v81 = v80;
          v84 = v10;
          v85 = v10 + 1;
          result = v80;
          if (v82 < v83)
          {
            goto LABEL_148;
          }

          goto LABEL_149;
        }

LABEL_157:
        LODWORD(v80) = v82;
        v98 = *(a2 - 1);
        if (v98 >= v80)
        {
          return result;
        }
      }

      else
      {
        v84 = v10;
        v85 = v10 + 2;
        result = *v10;
        if (v82 >= v80)
        {
          *v10 = v80;
          v10[1] = v83;
          v84 = v10 + 1;
          v85 = v10 + 2;
          result = v83;
          if (v82 >= v83)
          {
            goto LABEL_157;
          }
        }

LABEL_148:
        *v84 = v82;
        *v85 = v83;
        LODWORD(v80) = result;
LABEL_149:
        v98 = *(a2 - 1);
        if (v98 >= v80)
        {
          return result;
        }
      }

      *v81 = v98;
      *(a2 - 1) = v80;
      v101 = *v81;
      v102 = *v79;
      if (v101 < v102)
      {
        v10[1] = v101;
        v10[2] = v102;
        v103 = *v10;
        if (v101 < *v10)
        {
          *v10 = v101;
          v10[1] = v103;
        }
      }

      return result;
    }

    if (v11 == 5)
    {
      v65 = (v10 + 1);
      v66 = v10[1];
      v68 = (v10 + 2);
      v67 = v10[2];
      v69 = *v10;
      if (v66 >= v69)
      {
        if (v67 >= v66)
        {
          v72 = *v10;
          LODWORD(v69) = v10[1];
          v95 = v10[3];
          if (v95 >= v67)
          {
            goto LABEL_167;
          }
        }

        else
        {
          v70 = v10;
          v71 = v10 + 1;
          *v65 = v67;
          *v68 = v66;
          v72 = v67;
          result = v69;
          v73 = v66;
          if (v67 < v69)
          {
            goto LABEL_162;
          }

          v72 = v69;
          LODWORD(v69) = v67;
          LODWORD(v67) = v66;
          v95 = v10[3];
          if (v95 >= v67)
          {
            goto LABEL_167;
          }
        }
      }

      else
      {
        if (v67 < v66)
        {
          v70 = v10;
          v71 = v10 + 2;
          v72 = v10[2];
          result = v10[1];
          v73 = *v10;
          goto LABEL_162;
        }

        v70 = v10 + 1;
        v71 = v10 + 2;
        *v10 = v66;
        v10[1] = v69;
        v72 = v66;
        result = v67;
        v73 = v69;
        if (v67 < v69)
        {
LABEL_162:
          *v70 = v67;
          *v71 = v69;
          LODWORD(v69) = result;
          LODWORD(v67) = v73;
          v95 = v10[3];
          if (v95 < v73)
          {
            goto LABEL_163;
          }

LABEL_167:
          LODWORD(v67) = v95;
LABEL_168:
          v104 = *(a2 - 1);
          if (v104 >= v67)
          {
            return result;
          }

          v10[3] = v104;
          *(a2 - 1) = v67;
          v105 = v10[2];
          v96 = v10[3];
          if (v96 >= v105)
          {
            return result;
          }

          v10[2] = v96;
          v10[3] = v105;
          v106 = v10[1];
          if (v96 >= v106)
          {
            return result;
          }

          v10[1] = v96;
          v10[2] = v106;
          v97 = *v10;
          if (v96 >= *v10)
          {
            return result;
          }

LABEL_172:
          *v10 = v96;
          v10[1] = v97;
          return result;
        }

        v72 = v66;
        v95 = v10[3];
        if (v95 >= v67)
        {
          goto LABEL_167;
        }
      }

LABEL_163:
      v10[2] = v95;
      v10[3] = v67;
      if (v95 < v69)
      {
        *v65 = v95;
        *v68 = v69;
        if (v95 < v72)
        {
          *v10 = v95;
          v10[1] = v72;
        }
      }

      goto LABEL_168;
    }

    goto LABEL_10;
  }

  v76 = *v10;
  v77 = v10[1];
  v78 = *(a2 - 1);
  if (v77 < *v10)
  {
    if (v78 >= v77)
    {
      *v10 = v77;
      v10[1] = v76;
      v107 = *(a2 - 1);
      if (v107 >= v76)
      {
        return result;
      }

      v10[1] = v107;
    }

    else
    {
      *v10 = v78;
    }

    *(a2 - 1) = v76;
    return result;
  }

  if (v78 < v77)
  {
    v10[1] = v78;
    *(a2 - 1) = v77;
    v97 = *v10;
    v96 = v10[1];
    if (v96 < *v10)
    {
      goto LABEL_172;
    }
  }

  return result;
}

BOOL sub_9BDA94(int *a1, int *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v16 = *a1;
      v17 = a1[1];
      v18 = *(a2 - 1);
      if (v17 < *a1)
      {
        if (v18 >= v17)
        {
          *a1 = v17;
          a1[1] = v16;
          v47 = *(a2 - 1);
          if (v47 >= v16)
          {
            return 1;
          }

          a1[1] = v47;
          *(a2 - 1) = v16;
          return 1;
        }

        else
        {
          *a1 = v18;
          *(a2 - 1) = v16;
          return 1;
        }
      }

      if (v18 >= v17)
      {
        return 1;
      }

      a1[1] = v18;
      *(a2 - 1) = v17;
      v34 = *a1;
      v33 = a1[1];
      if (v33 >= *a1)
      {
        return 1;
      }

LABEL_66:
      *a1 = v33;
      a1[1] = v34;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_16;
      }

      v4 = a1 + 1;
      v5 = a1[1];
      v7 = a1 + 2;
      v6 = a1[2];
      v8 = *a1;
      if (v5 >= *a1)
      {
        if (v6 >= v5)
        {
          v11 = *a1;
          v8 = a1[1];
          v42 = a1[3];
          if (v42 < v6)
          {
            goto LABEL_57;
          }

          goto LABEL_61;
        }

        v9 = a1;
        v10 = a1 + 1;
        *v4 = v6;
        *v7 = v5;
        v11 = v6;
        v12 = v8;
        v13 = v5;
        if (v6 >= v8)
        {
          v11 = v8;
          v8 = v6;
          v6 = v5;
          v42 = a1[3];
          if (v42 < v6)
          {
LABEL_57:
            a1[2] = v42;
            a1[3] = v6;
            if (v42 < v8)
            {
              *v4 = v42;
              *v7 = v8;
              if (v42 < v11)
              {
                *a1 = v42;
                a1[1] = v11;
              }
            }

LABEL_62:
            v48 = *(a2 - 1);
            if (v48 >= v6)
            {
              return 1;
            }

            a1[3] = v48;
            *(a2 - 1) = v6;
            v49 = a1[2];
            v33 = a1[3];
            if (v33 >= v49)
            {
              return 1;
            }

            a1[2] = v33;
            a1[3] = v49;
            v50 = a1[1];
            if (v33 >= v50)
            {
              return 1;
            }

            a1[1] = v33;
            a1[2] = v50;
            v34 = *a1;
            if (v33 >= *a1)
            {
              return 1;
            }

            goto LABEL_66;
          }

LABEL_61:
          v6 = v42;
          goto LABEL_62;
        }
      }

      else if (v6 >= v5)
      {
        v9 = a1 + 1;
        v10 = a1 + 2;
        *a1 = v5;
        a1[1] = v8;
        v11 = v5;
        v12 = v6;
        v13 = v8;
        if (v6 >= v8)
        {
          v11 = v5;
          v42 = a1[3];
          if (v42 < v6)
          {
            goto LABEL_57;
          }

          goto LABEL_61;
        }
      }

      else
      {
        v9 = a1;
        v10 = a1 + 2;
        v11 = a1[2];
        v12 = a1[1];
        v13 = *a1;
      }

      *v9 = v6;
      *v10 = v8;
      v8 = v12;
      v6 = v13;
      v42 = a1[3];
      if (v42 < v13)
      {
        goto LABEL_57;
      }

      goto LABEL_61;
    }

    v25 = a1 + 1;
    v26 = a1[1];
    v27 = a1 + 2;
    v28 = a1[2];
    v29 = *a1;
    if (v26 >= *a1)
    {
      if (v28 >= v26)
      {
        goto LABEL_49;
      }

      *v25 = v28;
      *v27 = v26;
      v30 = a1;
      v31 = a1 + 1;
      v32 = v26;
      if (v28 >= v29)
      {
LABEL_47:
        v43 = *(a2 - 1);
        if (v43 >= v26)
        {
          return 1;
        }

        goto LABEL_50;
      }
    }

    else
    {
      v30 = a1;
      v31 = a1 + 2;
      v32 = *a1;
      if (v28 >= v26)
      {
        *a1 = v26;
        a1[1] = v29;
        v30 = a1 + 1;
        v31 = a1 + 2;
        v32 = v29;
        if (v28 >= v29)
        {
LABEL_49:
          v26 = v28;
          v43 = *(a2 - 1);
          if (v43 >= v26)
          {
            return 1;
          }

LABEL_50:
          *v27 = v43;
          *(a2 - 1) = v26;
          v44 = *v27;
          v45 = *v25;
          if (v44 >= v45)
          {
            return 1;
          }

          a1[1] = v44;
          a1[2] = v45;
          v46 = *a1;
          if (v44 >= *a1)
          {
            return 1;
          }

          *a1 = v44;
          a1[1] = v46;
          return 1;
        }
      }
    }

    *v30 = v28;
    *v31 = v29;
    v26 = v32;
    goto LABEL_47;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 != 2)
  {
LABEL_16:
    v20 = a1 + 2;
    v19 = a1[2];
    v21 = a1[1];
    v22 = *a1;
    if (v21 >= *a1)
    {
      if (v19 >= v21)
      {
        goto LABEL_30;
      }

      a1[1] = v19;
      *v20 = v21;
      v23 = a1;
      v24 = a1 + 1;
    }

    else
    {
      v23 = a1;
      v24 = a1 + 2;
      if (v19 < v21)
      {
LABEL_29:
        *v23 = v19;
        *v24 = v22;
        goto LABEL_30;
      }

      *a1 = v21;
      a1[1] = v22;
      v23 = a1 + 1;
      v24 = a1 + 2;
    }

    if (v19 < v22)
    {
      goto LABEL_29;
    }

LABEL_30:
    v35 = a1 + 3;
    if (a1 + 3 == a2)
    {
      return 1;
    }

    v36 = 0;
    for (i = 12; ; i += 4)
    {
      v38 = *v35;
      v39 = *v20;
      if (*v35 < v39)
      {
        break;
      }

LABEL_33:
      v20 = v35++;
      if (v35 == a2)
      {
        return 1;
      }
    }

    v40 = i;
    do
    {
      *(a1 + v40) = v39;
      v41 = v40 - 4;
      if (v40 == 4)
      {
        *a1 = v38;
        if (++v36 != 8)
        {
          goto LABEL_33;
        }

        return v35 + 1 == a2;
      }

      v39 = *(a1 + v40 - 8);
      v40 -= 4;
    }

    while (v38 < v39);
    *(a1 + v41) = v38;
    if (++v36 != 8)
    {
      goto LABEL_33;
    }

    return v35 + 1 == a2;
  }

  v14 = *(a2 - 1);
  v15 = *a1;
  if (v14 >= *a1)
  {
    return 1;
  }

  *a1 = v14;
  *(a2 - 1) = v15;
  return 1;
}

int *sub_9BDE80(char *a1, int *a2, int *a3)
{
  if (a1 == a2)
  {
    return a3;
  }

  v3 = (a2 - a1) >> 2;
  if (v3 >= 2)
  {
    v4 = (v3 - 2) >> 1;
    v5 = v4;
    do
    {
      if (v4 >= v5)
      {
        v6 = (2 * (v5 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
        v7 = &a1[4 * v6];
        if (2 * (v5 & 0x3FFFFFFFFFFFFFFFLL) + 2 >= v3)
        {
          v8 = *v7;
          v10 = &a1[4 * v5];
          v11 = *v10;
          if (*v7 >= *v10)
          {
            goto LABEL_22;
          }
        }

        else
        {
          v8 = v7[1];
          v9 = *v7 < v8;
          if (*v7 > v8)
          {
            v8 = *v7;
          }

          if (v9)
          {
            ++v7;
            v6 = 2 * (v5 & 0x3FFFFFFFFFFFFFFFLL) + 2;
          }

          v10 = &a1[4 * v5];
          v11 = *v10;
          if (v8 >= *v10)
          {
LABEL_22:
            while (1)
            {
              *v10 = v8;
              v10 = v7;
              if (v4 < v6)
              {
                break;
              }

              v13 = (2 * v6) | 1;
              v7 = &a1[4 * v13];
              v6 = 2 * v6 + 2;
              if (v6 < v3)
              {
                v8 = *v7;
                v12 = v7[1];
                if (*v7 <= v12)
                {
                  v8 = v7[1];
                }

                if (*v7 >= v12)
                {
                  v6 = v13;
                }

                else
                {
                  ++v7;
                }

                if (v8 < v11)
                {
                  break;
                }
              }

              else
              {
                v8 = *v7;
                v6 = v13;
                if (*v7 < v11)
                {
                  break;
                }
              }
            }

            *v10 = v11;
          }
        }
      }

      v9 = v5-- <= 0;
    }

    while (!v9);
  }

  i = a2;
  if (a2 != a3)
  {
    if (v3 < 2)
    {
      v15 = *a1;
      i = a2;
      do
      {
        v16 = *i;
        if (*i < v15)
        {
          *i = v15;
          *a1 = v16;
          v15 = v16;
        }

        ++i;
      }

      while (i != a3);
      goto LABEL_59;
    }

    for (i = a2; i != a3; ++i)
    {
      v17 = *i;
      if (*i < *a1)
      {
        *i = *a1;
        *a1 = v17;
        v18 = *(a1 + 1);
        if (a2 - a1 == 8)
        {
          v19 = (a1 + 4);
          v20 = 1;
          if (v18 >= v17)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v21 = *(a1 + 2);
          v22 = v18 < v21;
          if (v18 <= v21)
          {
            v18 = *(a1 + 2);
          }

          if (v22)
          {
            v19 = (a1 + 8);
          }

          else
          {
            v19 = (a1 + 4);
          }

          if (v22)
          {
            v20 = 2;
          }

          else
          {
            v20 = 1;
          }

          if (v18 >= v17)
          {
LABEL_48:
            v23 = a1;
            while (1)
            {
              *v23 = v18;
              v23 = v19;
              if (((v3 - 2) >> 1) < v20)
              {
                break;
              }

              v25 = (2 * v20) | 1;
              v19 = &a1[4 * v25];
              v20 = 2 * v20 + 2;
              if (v20 < v3)
              {
                v18 = *v19;
                v24 = v19[1];
                if (*v19 <= v24)
                {
                  v18 = v19[1];
                }

                if (*v19 >= v24)
                {
                  v20 = v25;
                }

                else
                {
                  ++v19;
                }

                if (v18 < v17)
                {
                  break;
                }
              }

              else
              {
                v18 = *v19;
                v20 = v25;
                if (*v19 < v17)
                {
                  break;
                }
              }
            }

            *v23 = v17;
          }
        }
      }
    }
  }

LABEL_59:
  if (v3 >= 2)
  {
    do
    {
      v27 = 0;
      v28 = *a1;
      v29 = (v3 - 2) >> 1;
      v30 = a1;
      do
      {
        while (1)
        {
          v37 = &v30[4 * v27];
          v36 = (v37 + 4);
          v38 = (2 * v27) | 1;
          v27 = 2 * v27 + 2;
          if (v27 < v3)
          {
            break;
          }

          v27 = v38;
          *v30 = *v36;
          v30 = v37 + 4;
          if (v38 > v29)
          {
            goto LABEL_73;
          }
        }

        v33 = *(v37 + 2);
        v32 = (v37 + 8);
        v31 = v33;
        v34 = *(v32 - 1);
        v35 = v34 < v33;
        if (v34 > v33)
        {
          v31 = *(v32 - 1);
        }

        if (v35)
        {
          v36 = v32;
        }

        else
        {
          v27 = v38;
        }

        *v30 = v31;
        v30 = v36;
      }

      while (v27 <= v29);
LABEL_73:
      if (v36 == --a2)
      {
        *v36 = v28;
      }

      else
      {
        *v36 = *a2;
        *a2 = v28;
        v39 = (v36 - a1 + 4) >> 2;
        v9 = v39 < 2;
        v40 = v39 - 2;
        if (!v9)
        {
          v41 = v40 >> 1;
          v42 = &a1[4 * v41];
          v43 = *v42;
          v44 = *v36;
          if (*v42 < *v36)
          {
            do
            {
              *v36 = v43;
              v36 = v42;
              if (!v41)
              {
                break;
              }

              v41 = (v41 - 1) >> 1;
              v42 = &a1[4 * v41];
              v43 = *v42;
            }

            while (*v42 < v44);
            *v36 = v44;
          }
        }
      }

      v9 = v3-- <= 2;
    }

    while (!v9);
  }

  return i;
}

void sub_9BE1C8()
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
  xmmword_27B32D8 = 0u;
  unk_27B32E8 = 0u;
  dword_27B32F8 = 1065353216;
  sub_3A9A34(&xmmword_27B32D8, v0, v0);
  sub_3A9A34(&xmmword_27B32D8, v3, v3);
  sub_3A9A34(&xmmword_27B32D8, __p, __p);
  sub_3A9A34(&xmmword_27B32D8, v9, v9);
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
    qword_27B32B0 = 0;
    qword_27B32B8 = 0;
    qword_27B32A8 = 0;
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

void sub_9BE410(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B32C0)
  {
    qword_27B32C8 = qword_27B32C0;
    operator delete(qword_27B32C0);
  }

  _Unwind_Resume(exception_object);
}