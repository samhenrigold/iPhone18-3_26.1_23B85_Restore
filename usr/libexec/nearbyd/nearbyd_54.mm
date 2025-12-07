BOOL sub_100420E70(uint64_t a1, unsigned int **a2)
{
  v4 = sub_10046F8E0(a2);
  v5 = sub_10046F8B8(v4);
  v13 = v5;
  v14 = WORD2(v5);
  if (!sub_1004262A0(&v13))
  {
    v11 = *(a1 + 128);
    v10 = (a1 + 128);
    v10[1] = v11;
    sub_1000F5900(v10, a2[1] - *a2);
    sub_100423634(&v15, *a2 + 4, a2[1], v10);
    return 1;
  }

  v6 = sub_1004262C8(&v13);
  v8 = *(a1 + 128);
  v9 = *(a1 + 136);
  if (v6)
  {
    if (v8 != v9)
    {
      sub_100428B48("%s: fDebugLogBufferData not emptied: size = %zu", v7, "collectLogBufferDataEvent", v9 - v8);
      v8 = *(a1 + 128);
    }

    *(a1 + 136) = v8;
    sub_100423634(&v16, *a2 + 4, a2[1], a1 + 128);
    return 0;
  }

  if (v8 != v9)
  {
    sub_100423634(&v17, *a2 + 4, a2[1], a1 + 128);
    return sub_1004262E8(&v13);
  }

  sub_100428B48("%s: start of this multipart packet missing, so this packet is discarded: size = %zu", v7, "collectLogBufferDataEvent", a2[1] - *a2);
  return 0;
}

void *sub_100420FA4(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    sub_10000AD84(v3);
  }

  return a1;
}

unint64_t sub_100420FE4(uint64_t a1)
{
  __dst = 0;
  v5 = 0;
  sub_10046F95C((*a1 + 4), 2uLL, &__dst + 2, 1);
  sub_10046F95C((*a1 + 6), 2uLL, &__dst, 1);
  sub_10046F95C((*a1 + 8), 2uLL, &v5, 1);
  v3 = sub_100427984(HIWORD(__dst), v2);
  return v3 | (__dst << 16) | (v5 << 32);
}

void sub_100421078(void *a1, __int128 *a2)
{
  v3 = a1[9];
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      if (a1[8])
      {
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        operator new();
      }

      sub_10000AD84(v4);
    }
  }
}

void sub_100421180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_1001B3E54(va);
  sub_1001B3E54(va1);
  sub_10000AD84(v7);
  _Unwind_Resume(a1);
}

std::runtime_error *sub_1004211BC(std::runtime_error *a1, const char *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  return result;
}

uint64_t sub_1004211F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X1>)
{
  v4 = *a1;
  if (a1[1] - *a1 != 68)
  {
    sub_100428B48("Range debug V2 event (%zu) not of expected size (%u)", a3, a1[1] - *a1, 68);
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1004211BC(exception, "Range debug V2 event not of expected size");
  }

  __dst = 0;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v18 = 0;
  v19 = 0;
  v16 = 0;
  v17 = 0;
  sub_10046F95C((v4 + 4), 2uLL, &__dst, 1);
  sub_10046F95C((*a1 + 6), 1uLL, &v23, 1);
  sub_10046F95C((*a1 + 7), 2uLL, &v22, 1);
  sub_10046F95C((*a1 + 9), 8uLL, &v21, 1);
  sub_10046F95C((*a1 + 17), 4uLL, &v20, 1);
  sub_10046F95C((*a1 + 28), 5uLL, &v19, 1);
  sub_10046F95C((*a1 + 33), 5uLL, &v18, 1);
  sub_10046F95C((*a1 + 38), 5uLL, &v17, 1);
  sub_10046F95C((*a1 + 43), 5uLL, &v16, 1);
  result = sub_100427658(v23, v6);
  v8 = v22;
  v9 = v21;
  v10 = v20;
  v12 = v18;
  v11 = v19;
  v14 = v16;
  v13 = v17;
  *a2 = __dst;
  *(a2 + 2) = result;
  *(a2 + 4) = v8;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10;
  *(a2 + 24) = v11;
  *(a2 + 32) = v12;
  *(a2 + 40) = v13;
  *(a2 + 48) = v14;
  return result;
}

uint64_t sub_1004213B8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __dst = 0;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  if (a1[1] - *a1 != 17)
  {
    sub_1004CF608();
  }

  sub_10046F95C((*a1 + 4), 2uLL, &__dst, 1);
  sub_10046F95C((*a1 + 6), 8uLL, &v12, 1);
  sub_10046F95C((*a1 + 14), 1uLL, &v11 + 1, 1);
  sub_10046F95C((*a1 + 15), 1uLL, &v11, 1);
  sub_10046F95C((*a1 + 16), 1uLL, &v10, 1);
  result = sub_100427984(__dst, v4);
  v6 = v12;
  v7 = HIBYTE(v11);
  v8 = v11;
  v9 = v10;
  *a2 = result;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 17) = v8;
  *(a2 + 18) = v9;
  return result;
}

void sub_1004214A8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_1000054A8() + 187);
  v63 = a2;
  if (v5 == 1)
  {
    *v64 = *(*a1 + 4);
    *&v64[16] = *(*a1 + 20);
    *&v64[30] = *(*a1 + 34);
    v61 = sub_100427984(*v64, v4);
    v62 = sub_100427658(v64[4], v13);
    v14 = sub_10041C3B4(*&v64[5]);
    v58 = sub_1004272E8(v64[29], 1);
    v57 = sub_1004272E8(v64[30], 1);
    v56 = sub_100427F98(v64[32], v15);
    v17 = sub_100427728(v64[37], v16);
    v19 = sub_1004281F8(v64[38], 1);
    v20 = v64[45];
    v66 = 0;
    v67 = 0;
    v68 = 0;
    if (v64[45])
    {
      v21 = &v65;
      do
      {
        v22 = *v21;
        v23 = sub_100427F98(*(v21 - 1), v18);
        v24 = vcvtd_n_f64_s32(v22, 2uLL);
        v25 = v67;
        if (v67 >= v68)
        {
          v27 = (v67 - v66) >> 4;
          v28 = v27 + 1;
          if ((v27 + 1) >> 60)
          {
            sub_100019B38();
          }

          v29 = v68 - v66;
          if ((v68 - v66) >> 3 > v28)
          {
            v28 = v29 >> 3;
          }

          if (v29 >= 0x7FFFFFFFFFFFFFF0)
          {
            v30 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v30 = v28;
          }

          if (v30)
          {
            sub_100020924(&v66, v30);
          }

          v31 = 16 * v27;
          *v31 = v23;
          *(v31 + 8) = v24;
          v26 = 16 * v27 + 16;
          v32 = (v31 - (v67 - v66));
          memcpy(v32, v66, v67 - v66);
          v33 = v66;
          v66 = v32;
          v67 = v26;
          v68 = 0;
          if (v33)
          {
            operator delete(v33);
          }
        }

        else
        {
          *v67 = v23;
          v25[1] = v24;
          v26 = (v25 + 2);
        }

        v21 = (v21 + 3);
        v67 = v26;
        --v20;
      }

      while (v20);
    }

    sub_10041E754(v63, v61, *&v64[2], v62, *&v64[15], *&v64[13], *&v64[23], *&v64[25], v14, vcvtd_n_f64_s32(*&v64[33], 2uLL), v64[27], v64[28], v58, v57, v64[31], v56, v64[35], v64[36], v17, v19, &v66);
  }

  else
  {
    if (v5 != 2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      sub_1004211BC(exception, "Unknown HSI version");
    }

    *v64 = *(*a1 + 4);
    *&v64[16] = *(*a1 + 20);
    *&v64[31] = *(*a1 + 35);
    v6 = sub_100427984(*v64, v4);
    v8 = sub_100427658(v64[4], v7);
    v10 = sub_10041C3B4(*&v64[5]);
    v11 = 9;
    if (v64[29])
    {
      v12 = 9;
      if (v64[30])
      {
        v12 = sub_1004272E8(v64[29], 2);
        v11 = sub_1004272E8(v64[30], 2);
      }
    }

    else
    {
      v12 = 9;
    }

    v60 = v11;
    v34 = sub_100427F98(v64[32], v9);
    v59 = sub_100427728(v64[37], v35);
    v36 = sub_10042841C(*&v64[38]);
    if ((v37 & 1) == 0 || (v38 = BYTE1(v36), (v36 & 0x10000) == 0))
    {
      sub_1004CF634();
    }

    v55 = v12;
    v39 = v34;
    v40 = v64[46];
    v66 = 0;
    v67 = 0;
    v68 = 0;
    if (v64[46])
    {
      v41 = &v66;
      do
      {
        v42 = *v41;
        v43 = sub_100427F98(*(v41 - 1), v37);
        v44 = vcvtd_n_f64_s32(v42, 2uLL);
        v45 = v67;
        if (v67 >= v68)
        {
          v47 = (v67 - v66) >> 4;
          v48 = v47 + 1;
          if ((v47 + 1) >> 60)
          {
            sub_100019B38();
          }

          v49 = v68 - v66;
          if ((v68 - v66) >> 3 > v48)
          {
            v48 = v49 >> 3;
          }

          if (v49 >= 0x7FFFFFFFFFFFFFF0)
          {
            v50 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v50 = v48;
          }

          if (v50)
          {
            sub_100020924(&v66, v50);
          }

          v51 = 16 * v47;
          *v51 = v43;
          *(v51 + 8) = v44;
          v46 = 16 * v47 + 16;
          v52 = (v51 - (v67 - v66));
          memcpy(v52, v66, v67 - v66);
          v53 = v66;
          v66 = v52;
          v67 = v46;
          v68 = 0;
          if (v53)
          {
            operator delete(v53);
          }
        }

        else
        {
          *v67 = v43;
          v45[1] = v44;
          v46 = (v45 + 2);
        }

        v41 = (v41 + 3);
        v67 = v46;
        --v40;
      }

      while (v40);
    }

    sub_10041E754(v63, v6, *&v64[2], v8, *&v64[15], *&v64[13], *&v64[23], *&v64[25], v10, vcvtd_n_f64_s32(*&v64[33], 2uLL), v64[27], v64[28], v55, v60, v64[31], v39, v64[35], v64[36], v59, v38, &v66);
  }

  if (v66)
  {
    v67 = v66;
    operator delete(v66);
  }
}

void *sub_100421A1C(void *a1)
{
  *a1 = off_1009AB428;
  v2 = a1[8];
  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    sub_10000AD84(v3);
  }

  return a1;
}

void sub_100421A78(void *a1)
{
  *a1 = off_1009AB428;
  v2 = a1[8];
  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    sub_10000AD84(v3);
  }

  operator delete();
}

void sub_100421BC0(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    sub_10000AD84(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void *sub_100421BE0(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  *a2 = off_1009AB428;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 24);
  v7 = *(a1 + 40);
  v8 = *(a1 + 56);
  *(a2 + 64) = 0;
  *(a2 + 56) = v8;
  *(a2 + 40) = v7;
  *(a2 + 24) = v6;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  sub_100020574((a2 + 64), *(a1 + 64), *(a1 + 72), 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 72) - *(a1 + 64)) >> 3));

  return memcpy((a2 + 88), (a1 + 88), 0x181uLL);
}

void sub_100421C9C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_10000AD84(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100421CBC(char *a1)
{
  sub_100421D74(a1 + 1);

  operator delete(a1);
}

uint64_t sub_100421D28(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100421D74(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {

    sub_10000AD84(v3);
  }
}

void *sub_100421DC8(void *a1)
{
  *a1 = off_1009AB4A8;
  v2 = a1[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  return a1;
}

void sub_100421E14(void *a1)
{
  *a1 = off_1009AB4A8;
  v1 = a1[2];
  if (v1)
  {
    sub_10000AD84(v1);
  }

  operator delete();
}

uint64_t sub_100421F00(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_1009AB4A8;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(result + 24);
  *(a2 + 28) = *(result + 28);
  *(a2 + 24) = v4;
  *(a2 + 30) = 0;
  return result;
}

void sub_100421F4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000AD84(v1);
  }
}

void sub_100421F5C(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  operator delete(__p);
}

uint64_t sub_100421FCC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100422018(void *a1)
{
  *a1 = off_1009AB528;
  v2 = a1[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  return a1;
}

void sub_100422064(void *a1)
{
  *a1 = off_1009AB528;
  v1 = a1[2];
  if (v1)
  {
    sub_10000AD84(v1);
  }

  operator delete();
}

__n128 sub_1004221BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = off_1009AB528;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = v6;
  *(a2 + 40) = v5;
  *(a2 + 24) = v4;
  v7 = *(a1 + 88);
  v8 = *(a1 + 104);
  v9 = *(a1 + 120);
  *(a2 + 136) = *(a1 + 136);
  *(a2 + 120) = v9;
  *(a2 + 104) = v8;
  *(a2 + 88) = v7;
  v10 = *(a1 + 152);
  v11 = *(a1 + 168);
  v12 = *(a1 + 184);
  *(a2 + 200) = *(a1 + 200);
  *(a2 + 184) = v12;
  *(a2 + 168) = v11;
  *(a2 + 152) = v10;
  result = *(a1 + 216);
  v14 = *(a1 + 232);
  v15 = *(a1 + 248);
  *(a2 + 264) = *(a1 + 264);
  *(a2 + 248) = v15;
  *(a2 + 232) = v14;
  *(a2 + 216) = result;
  return result;
}

void sub_100422274(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000AD84(v1);
  }
}

void sub_100422284(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  operator delete(__p);
}

uint64_t sub_1004222F4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100422340(uint64_t a1)
{
  *a1 = off_1009AB5A8;
  v4 = (a1 + 72);
  sub_100189A94(&v4);
  v4 = (a1 + 48);
  sub_100189B38(&v4);
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_10000AD84(v2);
  }

  return a1;
}

void sub_1004223B4(uint64_t a1)
{
  *a1 = off_1009AB5A8;
  v3 = (a1 + 72);
  sub_100189A94(&v3);
  v3 = (a1 + 48);
  sub_100189B38(&v3);
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_10000AD84(v2);
  }

  operator delete();
}

void sub_100422520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100189B38(va);
  v5 = v3[2];
  if (v5)
  {
    sub_10000AD84(v5);
  }

  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t *sub_100422554(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  *a2 = off_1009AB5A8;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 24);
  v7 = *(a1 + 40);
  *(a2 + 48) = 0;
  *(a2 + 40) = v7;
  *(a2 + 24) = v6;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  sub_1001895D0((a2 + 48), *(a1 + 48), *(a1 + 56), 0x86BCA1AF286BCA1BLL * ((*(a1 + 56) - *(a1 + 48)) >> 3));
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  return sub_100189C1C((a2 + 72), *(a1 + 72), *(a1 + 80), (*(a1 + 80) - *(a1 + 72)) >> 5);
}

void sub_10042261C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100189B38(va);
  v5 = *(v3 + 16);
  if (v5)
  {
    sub_10000AD84(v5);
  }

  _Unwind_Resume(a1);
}

void sub_100422648(uint64_t a1)
{
  v3 = (a1 + 72);
  sub_100189A94(&v3);
  v3 = (a1 + 48);
  sub_100189B38(&v3);
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_10000AD84(v2);
  }
}

void sub_10042269C(uint64_t a1)
{
  v3 = (a1 + 72);
  sub_100189A94(&v3);
  v3 = (a1 + 48);
  sub_100189B38(&v3);
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_10000AD84(v2);
  }

  operator delete(a1);
}

uint64_t sub_100422728(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100422774(void *a1)
{
  *a1 = off_1009AB628;
  v2 = a1[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  return a1;
}

void sub_1004227C0(void *a1)
{
  *a1 = off_1009AB628;
  v1 = a1[2];
  if (v1)
  {
    sub_10000AD84(v1);
  }

  operator delete();
}

__n128 sub_1004228B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = off_1009AB628;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  v5 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v5;
  *(a2 + 24) = result;
  return result;
}

void sub_100422900(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000AD84(v1);
  }
}

void sub_100422910(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  operator delete(__p);
}

uint64_t sub_100422980(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1004229CC(void *a1)
{
  *a1 = off_1009AB6A8;
  v2 = a1[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  return a1;
}

void sub_100422A18(void *a1)
{
  *a1 = off_1009AB6A8;
  v1 = a1[2];
  if (v1)
  {
    sub_10000AD84(v1);
  }

  operator delete();
}

__n128 sub_100422B08(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = off_1009AB6A8;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  v5 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v5;
  *(a2 + 24) = result;
  return result;
}

void sub_100422B58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000AD84(v1);
  }
}

void sub_100422B68(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  operator delete(__p);
}

uint64_t sub_100422BD8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100422C24(void *a1)
{
  *a1 = off_1009AB728;
  v2 = a1[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  return a1;
}

void sub_100422C70(void *a1)
{
  *a1 = off_1009AB728;
  v1 = a1[2];
  if (v1)
  {
    sub_10000AD84(v1);
  }

  operator delete();
}

__n128 sub_100422D68(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = off_1009AB728;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = v6;
  *(a2 + 40) = v5;
  *(a2 + 24) = result;
  return result;
}

void sub_100422DC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000AD84(v1);
  }
}

void sub_100422DD0(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  operator delete(__p);
}

uint64_t sub_100422E40(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100422E8C(void *a1)
{
  *a1 = off_1009AB7A8;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    sub_10000AD84(v3);
  }

  return a1;
}

void sub_100422EE8(void *a1)
{
  *a1 = off_1009AB7A8;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    sub_10000AD84(v3);
  }

  operator delete();
}

void sub_100422FF0(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    sub_10000AD84(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_100423010(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = off_1009AB7A8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  a2[3] = 0;
  a2[4] = 0;
  a2[5] = 0;
  return sub_100009A48(a2 + 3, *(a1 + 24), *(a1 + 32), *(a1 + 32) - *(a1 + 24));
}

void sub_100423080(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_10000AD84(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004230A0(char *a1)
{
  sub_100423158(a1 + 1);

  operator delete(a1);
}

uint64_t sub_10042310C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100423158(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {

    sub_10000AD84(v3);
  }
}

void *sub_1004231AC(void *a1)
{
  *a1 = off_1009AB828;
  v2 = a1[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  return a1;
}

void sub_1004231F8(void *a1)
{
  *a1 = off_1009AB828;
  v1 = a1[2];
  if (v1)
  {
    sub_10000AD84(v1);
  }

  operator delete();
}

uint64_t sub_1004232E4(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_1009AB828;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(result + 24);
  *(a2 + 28) = *(result + 28);
  *(a2 + 24) = v4;
  *(a2 + 30) = 0;
  return result;
}

void sub_100423330(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000AD84(v1);
  }
}

void sub_100423340(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  operator delete(__p);
}

uint64_t sub_1004233B0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1004233FC(void *a1)
{
  *a1 = off_1009AB8A8;
  v2 = a1[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  return a1;
}

void sub_100423448(void *a1)
{
  *a1 = off_1009AB8A8;
  v1 = a1[2];
  if (v1)
  {
    sub_10000AD84(v1);
  }

  operator delete();
}

__n128 sub_100423528(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = off_1009AB8A8;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void sub_100423568(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000AD84(v1);
  }
}

void sub_100423578(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  operator delete(__p);
}

uint64_t sub_1004235E8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_100423634(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    v7 = *(a4 + 8);
    do
    {
      v8 = *(a4 + 16);
      if (v7 >= v8)
      {
        v9 = *a4;
        v10 = &v7[-*a4];
        v11 = (v10 + 1);
        if ((v10 + 1) < 0)
        {
          sub_100019B38();
        }

        v12 = v8 - v9;
        if (2 * v12 > v11)
        {
          v11 = 2 * v12;
        }

        if (v12 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v13 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v11;
        }

        if (v13)
        {
          operator new();
        }

        v14 = &v7[-*a4];
        *v10 = *v5;
        v7 = v10 + 1;
        memcpy(0, v9, v14);
        *a4 = 0;
        *(a4 + 8) = v10 + 1;
        *(a4 + 16) = 0;
        if (v9)
        {
          operator delete(v9);
        }
      }

      else
      {
        *v7++ = *v5;
      }

      *(a4 + 8) = v7;
      ++v5;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_100423760(unsigned int *a1@<X0>, uint64_t *a2@<X1>, char *a3@<X8>)
{
  v3 = a3;
  __dst = 0;
  v112 = 0;
  v113 = 0;
  v114 = 0;
  memset(v111, 0, sizeof(v111));
  if (sub_100426878(*a1, 5))
  {
    sub_100004A08(v109, "CIRData");
    if (a2[1] != *a2)
    {
      v104 = 0;
      v5 = 0;
      v6 = 1;
      v101 = 256;
      do
      {
        sub_100193120(&v117);
        sub_10000EA44(&v119, "CIR packet part ", 16);
        v7 = std::ostream::operator<<();
        sub_10000EA44(v7, ":", 1);
        std::stringbuf::str();
        sub_100193120(__src);
        if ((v116 & 0x80u) == 0)
        {
          v8 = v115;
        }

        else
        {
          v8 = v115[0];
        }

        if ((v116 & 0x80u) == 0)
        {
          v9 = v116;
        }

        else
        {
          v9 = v115[1];
        }

        v10 = sub_10000EA44(v135, v8, v9);
        std::ios_base::getloc((v10 + *(*v10 - 24)));
        v11 = std::locale::use_facet(&v132, &std::ctype<char>::id);
        (v11->__vftable[2].~facet_0)(v11, 10);
        std::locale::~locale(&v132);
        std::ostream::put();
        std::ostream::flush();
        v12 = a2[1] - *a2;
        v98 = v5 + 256;
        if (v12 >= v5 + 256)
        {
          v13 = v5 + 256;
        }

        else
        {
          v13 = a2[1] - *a2;
        }

        if (v13 > v5)
        {
          if (v101 < v12)
          {
            v12 = v101;
          }

          v14 = v12 + v104;
          do
          {
            v15 = *&v135[0];
            v16 = v135 + *(*&v135[0] - 24);
            if (*(v16 + 36) == -1)
            {
              std::ios_base::getloc((v135 + *(*&v135[0] - 24)));
              v17 = std::locale::use_facet(&v132, &std::ctype<char>::id);
              (v17->__vftable[2].~facet_0)(v17, 32);
              std::locale::~locale(&v132);
              v15 = *&v135[0];
            }

            *(v16 + 36) = 48;
            *(v135 + *(v15 - 24) + 8) = *(v135 + *(v15 - 24) + 8) & 0xFFFFFFB5 | 8;
            *(&v135[1] + *(v15 - 24) + 8) = 2;
            v18 = std::ostream::operator<<();
            sub_10000EA44(v18, " ", 1);
            if ((~v5 & 0xF) == 0 || v14 == 1)
            {
              std::ios_base::getloc((v135 + *(*&v135[0] - 24)));
              v19 = std::locale::use_facet(&v132, &std::ctype<char>::id);
              (v19->__vftable[2].~facet_0)(v19, 10);
              std::locale::~locale(&v132);
              std::ostream::put();
              std::ostream::flush();
            }

            LOBYTE(v5) = v5 + 1;
            --v14;
          }

          while (v14);
        }

        std::stringbuf::str();
        v27 = __p;
        if (v131 < 0)
        {
          v27 = __p[0];
        }

        sub_100005D28("%s", v20, v21, v22, v23, v24, v25, v26, v27);
        if (SHIBYTE(v131) < 0)
        {
          operator delete(__p[0]);
        }

        __src[0] = v93;
        *(__src + *(v93 - 3)) = v91;
        *&v135[0] = v90;
        if (SHIBYTE(v138[0]) < 0)
        {
          operator delete(*(&v137 + 1));
        }

        std::locale::~locale(&v135[1]);
        std::iostream::~basic_iostream();
        std::ios::~ios();
        if (v116 < 0)
        {
          operator delete(v115[0]);
        }

        v117 = v93;
        *(&v117 + *(v93 - 3)) = v91;
        v119 = v90;
        if ((v128[15] & 0x80000000) != 0)
        {
          operator delete(*(&v127 + 1));
        }

        ++v6;
        std::locale::~locale(&v121);
        std::iostream::~basic_iostream();
        std::ios::~ios();
        v101 += 256;
        v104 -= 256;
        v5 = v98;
        v3 = a3;
      }

      while (v98 < a2[1] - *a2);
    }

    if (v110 < 0)
    {
      operator delete(v109[0]);
    }
  }

  v28 = *a2;
  v29 = a2[1] - *a2;
  if (!v29)
  {
    goto LABEL_196;
  }

  v30 = 0;
  v105 = 0;
  v97 = 0;
  v102 = 0;
  v92 = 0;
  v100 = 0;
  v95 = 0;
  v99 = 0;
  v94 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  do
  {
    v35 = v29 - v30;
    if (v29 - v30 <= 3)
    {
      sub_100428B48("RoseCIRDecoder::decodeRangeCIREventVersion2: bytesRemaining %zu, expect at least %zu for tag and len", v4, v29 - v30, 4);
      goto LABEL_197;
    }

    LOWORD(v109[0]) = 0;
    LOWORD(v132.__locale_) = 0;
    sub_10046F95C((v28 + v30), 2uLL, v109, 1);
    sub_10046F95C((*a2 + v30 + 2), 2uLL, &v132, 1);
    if (!LOWORD(v132.__locale_))
    {
      sub_100428B48("RoseCIRDecoder::decodeRangeCIREventVersion2: got 0 length for tag %hu", v36, LOWORD(v109[0]));
      goto LABEL_197;
    }

    if (v35 - 4 < LOWORD(v132.__locale_))
    {
      sub_100428B48("RoseCIRDecoder::decodeRangeCIREventVersion2: bytesRemaining %zu, expect at least %hu for val", v36, v35 - 4, LOWORD(v132.__locale_));
      goto LABEL_197;
    }

    v37 = v30 + 4;
    if (LOWORD(v109[0]) > 0x11Fu)
    {
      if (LOWORD(v109[0]) > 0x122u)
      {
        if (LOWORD(v109[0]) > 0x124u)
        {
          if (LOWORD(v109[0]) == 293)
          {
            sub_1004289F8("decodeRangeCIREventVersion2: FirstPathIndex", v36);
            if ((v33 & 1) == 0)
            {
              v84 = "RoseCIRDecoder::decodeRangeCIREventVersion2: got FirstPathIndex but no PacketContainer";
              goto LABEL_207;
            }

            if (0xF0F0F0F0F0F0F0F1 * ((v113 - v112) >> 3) > v34)
            {
              __src[0] = 0;
              if (LOWORD(v132.__locale_) >= 9uLL)
              {
                __assert_rtn("decodeFirstPathIndex", "roseCIRDataDecoderV2.cpp", 443, "len <= sizeof firstPathIndex");
              }

              sub_10046F95C((*a2 + v37), LOWORD(v132.__locale_), __src, 1);
              v61 = v112 + 136 * v34;
              *(v61 + 80) = __src[0];
              v33 = 1;
              *(v61 + 88) = 1;
              goto LABEL_152;
            }

            v85 = 216;
          }

          else
          {
            if (LOWORD(v109[0]) != 294)
            {
              goto LABEL_127;
            }

            sub_1004289F8("decodeRangeCIREventVersion2: RxStartTime", v36);
            if ((v33 & 1) == 0)
            {
              v84 = "RoseCIRDecoder::decodeRangeCIREventVersion2: got RxStartTime but no PacketContainer";
              goto LABEL_207;
            }

            if (0xF0F0F0F0F0F0F0F1 * ((v113 - v112) >> 3) > v34)
            {
              __src[0] = 0;
              if (LOWORD(v132.__locale_) >= 9uLL)
              {
                __assert_rtn("decodeRxStartTime", "roseCIRDataDecoderV2.cpp", 451, "len <= sizeof rxStartTime");
              }

              sub_10046F95C((*a2 + v37), LOWORD(v132.__locale_), __src, 1);
              v55 = v112 + 136 * v34;
              *(v55 + 96) = __src[0];
              v33 = 1;
              *(v55 + 104) = 1;
              goto LABEL_152;
            }

            v85 = 225;
          }
        }

        else if (LOWORD(v109[0]) == 291)
        {
          sub_1004289F8("decodeRangeCIREventVersion2: HwRxTimeStatus", v36);
          if ((v33 & 1) == 0)
          {
LABEL_199:
            v84 = "RoseCIRDecoder::decodeRangeCIREventVersion2: got HwConnectionDescriptor but no PacketContainer";
            goto LABEL_207;
          }

          v56 = v112;
          if (0xF0F0F0F0F0F0F0F1 * ((v113 - v112) >> 3) > v34)
          {
            locale_low = LOWORD(v132.__locale_);
            *&v135[0] = 0;
            __src[0] = 0;
            __src[1] = 0;
            if (v37 + LOWORD(v132.__locale_) > v37)
            {
              v58 = v30 + 4;
              do
              {
                sub_1001FE4D0(__src, (*a2 + v58++));
                --locale_low;
              }

              while (locale_low);
              v56 = v112;
            }

            v59 = v56 + 136 * v34;
            v60 = *(v59 + 32);
            v44 = (v59 + 32);
            v43 = v60;
            if (!v60)
            {
              goto LABEL_65;
            }

            goto LABEL_64;
          }

          v85 = 198;
        }

        else
        {
          sub_1004289F8("decodeRangeCIREventVersion2: CIR", v36);
          if ((v33 & 1) == 0)
          {
            v84 = "RoseCIRDecoder::decodeRangeCIREventVersion2: got CIR but no PacketContainer";
            goto LABEL_207;
          }

          if (0xF0F0F0F0F0F0F0F1 * ((v113 - v112) >> 3) > v34)
          {
            sub_10042513C(a2, v37, LOWORD(v132.__locale_), __src);
            v42 = v112 + 136 * v34;
            v45 = *(v42 + 56);
            v44 = (v42 + 56);
            v43 = v45;
            if (v45)
            {
LABEL_64:
              v44[1] = v43;
              operator delete(v43);
              *v44 = 0;
              v44[1] = 0;
              v44[2] = 0;
            }

LABEL_65:
            *v44 = *__src;
            v44[2] = *&v135[0];
            goto LABEL_151;
          }

          v85 = 207;
        }

LABEL_228:
        __assert_rtn("decodeRangeCIREventVersion2", "roseCIRDataDecoderV2.cpp", v85, "currentPacketIdx.value() < packets.size()");
      }

      if (LOWORD(v109[0]) != 288)
      {
        if (LOWORD(v109[0]) == 289)
        {
          sub_1004289F8("decodeRangeCIREventVersion2: RxChainMask", v36);
          if ((v33 & 1) == 0)
          {
            v84 = "RoseCIRDecoder::decodeRangeCIREventVersion2: got RxChainMask but no PacketContainer";
            goto LABEL_207;
          }

          if (0xF0F0F0F0F0F0F0F1 * ((v113 - v112) >> 3) <= v34)
          {
            v85 = 180;
            goto LABEL_228;
          }

          LOBYTE(__src[0]) = 0;
          if (LOWORD(v132.__locale_) >= 2uLL)
          {
            __assert_rtn("decodeRxChainBitMask", "roseCIRDataDecoderV2.cpp", 393, "len <= sizeof rxChainBitMask");
          }

          sub_10046F95C((*a2 + v37), LOWORD(v132.__locale_), __src, 1);
          *(v112 + 136 * v34 + 3) = LOBYTE(__src[0]) | 0x100;
LABEL_151:
          v33 = 1;
          goto LABEL_152;
        }

        if (LOWORD(v109[0]) != 290)
        {
          goto LABEL_127;
        }

        sub_1004289F8("decodeRangeCIREventVersion2: HwConnectionDescriptor", v36);
        if ((v33 & 1) == 0)
        {
          goto LABEL_199;
        }

        v46 = v112;
        if (0xF0F0F0F0F0F0F0F1 * ((v113 - v112) >> 3) <= v34)
        {
          v85 = 189;
          goto LABEL_228;
        }

        v47 = LOWORD(v132.__locale_);
        *&v135[0] = 0;
        __src[0] = 0;
        __src[1] = 0;
        if (v37 + LOWORD(v132.__locale_) > v37)
        {
          v48 = v30 + 4;
          do
          {
            sub_1001FE4D0(__src, (*a2 + v48++));
            --v47;
          }

          while (v47);
          v46 = v112;
        }

        v49 = v46 + 136 * v34;
        v50 = *(v49 + 8);
        v44 = (v49 + 8);
        v43 = v50;
        if (v50)
        {
          goto LABEL_64;
        }

        goto LABEL_65;
      }

      sub_1004289F8("decodeRangeCIREventVersion2: PacketType", v36);
      if ((v33 & 1) == 0)
      {
        v84 = "RoseCIRDecoder::decodeRangeCIREventVersion2: got PacketType but no PacketContainer";
        goto LABEL_207;
      }

      if (0xF0F0F0F0F0F0F0F1 * ((v113 - v112) >> 3) <= v34)
      {
        v85 = 171;
        goto LABEL_228;
      }

      v62 = LOWORD(v132.__locale_);
      v63 = sub_1000054A8();
      v64 = *(v63 + 748);
      switch(v64)
      {
        case 1:
          LOBYTE(__src[0]) = 0;
          if (v62 == 1)
          {
            sub_10046F95C((*a2 + v37), 1uLL, __src, 1);
            v63 = sub_100428610(LOBYTE(__src[0]));
            if ((v63 & 0x10000) == 0)
            {
LABEL_236:
              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Could not decode packet type");
            }

            goto LABEL_148;
          }

          v86 = 360;
          v87 = "len == sizeof(r1PacketTypeInt)";
          break;
        case 2:
          LOWORD(__src[0]) = 0;
          if (v62 == 2)
          {
            sub_10046F95C((*a2 + v37), 2uLL, __src, 1);
            v63 = sub_100428610(LOWORD(__src[0]));
            if ((v63 & 0x10000) == 0)
            {
              goto LABEL_236;
            }

            goto LABEL_148;
          }

          v86 = 372;
          v87 = "len == sizeof(packetTypeAsInt)";
          break;
        case 0:
          v88 = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(v88, "HSI version error");
        default:
LABEL_148:
          v68 = v112 + 136 * v34;
          if ((*(v68 + 2) & 1) == 0)
          {
            *(v68 + 2) = 1;
          }

          *v68 = v63;
          goto LABEL_151;
      }

      __assert_rtn("decodePacketType", "roseCIRDataDecoderV2.cpp", v86, v87);
    }

    if (LOWORD(v109[0]) <= 0x102u)
    {
      switch(LOWORD(v109[0]))
      {
        case 0x100u:
          sub_1004289F8("decodeRangeCIREventVersion2: SessionId", v36);
          LOWORD(__src[0]) = 0;
          if (LOWORD(v132.__locale_) >= 3uLL)
          {
            __assert_rtn("decodeSessionId", "roseCIRDataDecoderV2.cpp", 306, "len <= sizeof sessionId");
          }

          sub_10046F95C((*a2 + v37), LOWORD(v132.__locale_), __src, 1);
          v97 = __src[0];
          v105 = 1;
          goto LABEL_152;
        case 0x101u:
          sub_1004289F8("decodeRangeCIREventVersion2: SessionType", v36);
          LOBYTE(__src[0]) = 0;
          if (LOWORD(v132.__locale_) >= 2uLL)
          {
            __assert_rtn("decodeSessionType", "roseCIRDataDecoderV2.cpp", 314, "len <= sizeof sessionTypeInt");
          }

          sub_10046F95C((*a2 + v37), LOWORD(v132.__locale_), __src, 1);
          v92 = sub_100427658(LOBYTE(__src[0]), v65);
          v102 = 1;
          goto LABEL_152;
        case 0x102u:
          sub_1004289F8("decodeRangeCIREventVersion2: CycleIndex", v36);
          LOWORD(__src[0]) = 0;
          if (LOWORD(v132.__locale_) >= 3uLL)
          {
            __assert_rtn("decodeCycleIdx", "roseCIRDataDecoderV2.cpp", 322, "len <= sizeof cycleIdx");
          }

          sub_10046F95C((*a2 + v37), LOWORD(v132.__locale_), __src, 1);
          v95 = __src[0];
          v100 = 1;
          goto LABEL_152;
      }
    }

    else
    {
      if (LOWORD(v109[0]) <= 0x104u)
      {
        if (LOWORD(v109[0]) == 259)
        {
          sub_1004289F8("decodeRangeCIREventVersion2: DeviceIndex", v36);
          LOBYTE(__src[0]) = 0;
          if (LOWORD(v132.__locale_) >= 2uLL)
          {
            __assert_rtn("decodeDeviceIdx", "roseCIRDataDecoderV2.cpp", 330, "len <= sizeof deviceIdx");
          }

          sub_10046F95C((*a2 + v37), LOWORD(v132.__locale_), __src, 1);
          v94 = __src[0];
          v99 = 1;
        }

        else
        {
          sub_1004250BC(a2, v37, LOWORD(v132.__locale_), __src);
          if ((__src[1] - __src[0]) >= 8)
          {
            v38 = 8;
          }

          else
          {
            v38 = __src[1] - __src[0];
          }

          memcpy(&__dst, __src[0], v38);
          sub_100004A08(__p, "");
          sub_100004A08(v115, "");
          sub_10046FC20(__p, &__dst, 8uLL, 0x10u, v115);
          if (v116 < 0)
          {
            operator delete(v115[0]);
          }

          if (SHIBYTE(v131) < 0)
          {
            operator delete(__p[0]);
          }

          v40 = &v117;
          if (SHIBYTE(v119) < 0)
          {
            v40 = v117;
          }

          sub_1004289F8("decodeRangeCIREventVersion2: MacAddress: len %hu, val: %s", v39, LOWORD(v132.__locale_), v40);
          if (SHIBYTE(v119) < 0)
          {
            operator delete(v117);
          }

          v41 = __src[0];
          if (__src[0])
          {
            __src[1] = __src[0];
LABEL_133:
            operator delete(v41);
            goto LABEL_152;
          }
        }

        goto LABEL_152;
      }

      if (LOWORD(v109[0]) == 261)
      {
        sub_1004289F8("decodeRangeCIREventVersion2: NumPackets", v36);
        LOWORD(__src[0]) = 0;
        if (LOWORD(v132.__locale_) >= 3uLL)
        {
          __assert_rtn("decodeNumPackets", "roseCIRDataDecoderV2.cpp", 349, "len <= sizeof numPackets");
        }

        sub_10046F95C((*a2 + v37), LOWORD(v132.__locale_), __src, 1);
        v32 = __src[0];
LABEL_142:
        v31 = 1;
        goto LABEL_152;
      }

      if (LOWORD(v109[0]) == 262)
      {
        sub_1004289F8("decodeRangeCIREventVersion2: PacketContainer", v36);
        if (v31)
        {
          if (v33)
          {
            v51 = v34 + 1;
          }

          else
          {
            v51 = 0;
          }

          sub_1004289F8("decodeRangeCIREventVersion2: PacketContainer: PacketIdx %hu", v4, v51);
          if (v51 >= v32)
          {
            sub_100428B48("RoseCIRDecoder::decodeRangeCIREventVersion2: currentPacketIdx %hu out of range: expected NumPackets %hu", v52, v51, v32);
            v3 = a3;
            goto LABEL_197;
          }

          *&v139 = 0;
          memset(v138, 0, sizeof(v138));
          v137 = 0u;
          memset(v136, 0, sizeof(v136));
          *__src = 0u;
          memset(v135, 0, sizeof(v135));
          v53 = v113;
          if (v113 >= v114)
          {
            v54 = sub_1004256C0(&v112, __src);
          }

          else
          {
            sub_1004257F4(&v112, v113, __src);
            v54 = v53 + 136;
          }

          v113 = v54;
          v117 = &v138[1];
          sub_100189A94(&v117);
          if (v136[1])
          {
            v136[2] = v136[1];
            operator delete(v136[1]);
          }

          if (*&v135[1])
          {
            *(&v135[1] + 1) = *&v135[1];
            operator delete(*&v135[1]);
          }

          if (__src[1])
          {
            *&v135[0] = __src[1];
            operator delete(__src[1]);
          }

          v33 = 1;
          v34 = v51;
          goto LABEL_142;
        }

        v84 = "RoseCIRDecoder::decodeRangeCIREventVersion2: got PacketContainer tag but no NumPackets tag";
LABEL_207:
        sub_100428B48(v84, v4);
        v3 = a3;
        goto LABEL_197;
      }
    }

LABEL_127:
    sub_1004289F8("Ignoring unrecognized RangeCIREventTag %02x", v36, LOWORD(v109[0]));
    LOWORD(__src[0]) = v109[0];
    WORD1(__src[0]) = v132.__locale_;
    v66 = (v37 + *a2);
    v135[0] = 0uLL;
    __src[1] = 0;
    sub_100296B98(&__src[1], v66, &v66[LOWORD(v132.__locale_)], LOWORD(v132.__locale_));
    if (v33)
    {
      if (0xF0F0F0F0F0F0F0F1 * ((v113 - v112) >> 3) <= v34)
      {
        __assert_rtn("decodeRangeCIREventVersion2", "roseCIRDataDecoderV2.cpp", 237, "currentPacketIdx.value() < packets.size()");
      }

      v67 = (v112 + 136 * v34 + 112);
    }

    else
    {
      v67 = v111;
    }

    sub_10042533C(v67, __src);
    v41 = __src[1];
    if (__src[1])
    {
      *&v135[0] = __src[1];
      goto LABEL_133;
    }

LABEL_152:
    v30 = v37 + LOWORD(v132.__locale_);
    v28 = *a2;
    v29 = a2[1] - *a2;
    v3 = a3;
  }

  while (v30 < v29);
  if (v30 > v29)
  {
    sub_100428B48("RoseCIRDecoder::decodeRangeCIREventVersion2: readIdx %zu exceeds packet size %zu", v4, v30, v29);
LABEL_197:
    *v3 = 0;
    v3[72] = 0;
    goto LABEL_198;
  }

  if ((v31 & 1) == 0)
  {
LABEL_196:
    sub_100428B48("RoseCIRDecoder::decodeRangeCIREventVersion2: no NumPackets field", v4);
    goto LABEL_197;
  }

  if (0xF0F0F0F0F0F0F0F1 * ((v113 - v112) >> 3) != v32)
  {
    sub_100428B48("RoseCIRDecoder::decodeRangeCIREventVersion2: got %zu packets, expected NumPackets %hu", v4, 0xF0F0F0F0F0F0F0F1 * ((v113 - v112) >> 3), v32);
    goto LABEL_197;
  }

  if (v113 == v112)
  {
    sub_100428B48("RoseCIRDecoder::decodeRangeCIREventVersion2: no packets in CIR message", v4);
    goto LABEL_197;
  }

  if ((v105 & 1) == 0)
  {
    sub_100428B48("RoseCIRDecoder::decodeRangeCIREventVersion2: no session ID", v4);
    goto LABEL_197;
  }

  if ((v102 & 1) == 0)
  {
    sub_100428B48("RoseCIRDecoder::decodeRangeCIREventVersion2: no session type", v4);
    goto LABEL_197;
  }

  if ((v100 & 1) == 0)
  {
    sub_100428B48("RoseCIRDecoder::decodeRangeCIREventVersion2: no cycle index", v4);
    goto LABEL_197;
  }

  if ((v99 & 1) == 0)
  {
    sub_100428B48("RoseCIRDecoder::decodeRangeCIREventVersion2: no device index", v4);
    goto LABEL_197;
  }

  sub_1004289F8("decodeRangeCIREventVersion2: converting to libRose format", v4);
  __p[0] = 0;
  __p[1] = 0;
  v131 = 0;
  v70 = v112;
  v71 = v113;
  v72 = *a3;
  if (v112 == v113)
  {
LABEL_195:
    *a3 = v72;
    sub_1004289F8("decodeRangeCIREventVersion2: returning RangeCIREvent", v69);
    sub_100425488(__src, v97, v92, v95, v94, &__dst, __p, v111);
    v83 = *(&v135[1] + 1);
    *(a3 + 2) = *&v135[0];
    *a3 = *__src;
    *(a3 + 24) = *(v135 + 8);
    *(a3 + 5) = v83;
    *(&v135[0] + 1) = 0;
    *&v135[1] = 0;
    *(a3 + 3) = *v136;
    *(a3 + 8) = v136[2];
    *(&v135[1] + 1) = 0;
    memset(v136, 0, 24);
    a3[72] = 1;
    sub_100189E60(__src);
    goto LABEL_215;
  }

  v73 = a3[72];
  while (2)
  {
    if ((*(v70 + 2) & 1) == 0)
    {
      sub_100428B48("convertCIRPacketToLibRoseFormat: no packet type", v69);
LABEL_183:
      LOBYTE(__src[0]) = 0;
      v141 = 0;
      goto LABEL_184;
    }

    if ((*(v70 + 4) & 1) == 0)
    {
      sub_100428B48("convertCIRPacketToLibRoseFormat: no RX chain bit mask", v69);
      goto LABEL_183;
    }

    if ((*(v70 + 88) & 1) == 0)
    {
      sub_100428B48("convertCIRPacketToLibRoseFormat: no first path index", v69);
      goto LABEL_183;
    }

    if ((*(v70 + 104) & 1) == 0)
    {
      sub_100428B48("convertCIRPacketToLibRoseFormat: no rx start time", v69);
      goto LABEL_183;
    }

    LOWORD(v117) = *v70;
    BYTE2(v117) = *(v70 + 3);
    v120 = 0;
    v118 = *(v70 + 8);
    v74 = v118;
    v103 = *(v70 + 16);
    v119 = *(v70 + 16);
    *(v70 + 8) = 0;
    *(v70 + 16) = 0;
    *(v70 + 24) = 0;
    v121 = 0;
    v122 = 0;
    v123 = 0;
    v75 = *(v70 + 32);
    v76 = *(v70 + 48);
    *(v70 + 40) = 0;
    *(v70 + 48) = 0;
    *(v70 + 32) = 0;
    v124 = 0;
    v125 = 0;
    v126 = 0;
    v106 = *(v70 + 56);
    v108 = v75;
    v77 = *(v70 + 72);
    *(v70 + 64) = 0;
    *(v70 + 72) = 0;
    *(v70 + 56) = 0;
    *&v127 = *(v70 + 80) * 0.01;
    BYTE8(v127) = 1;
    *v128 = sub_10041C3B4(*(v70 + 96));
    v128[8] = 1;
    v78 = *(v70 + 96);
    v128[24] = *(v70 + 104);
    *&v128[16] = v78;
    v79 = *(v70 + 128);
    v80 = *(v70 + 112);
    *(v70 + 120) = 0;
    *(v70 + 128) = 0;
    *(v70 + 112) = 0;
    LOWORD(__src[0]) = v117;
    BYTE2(__src[0]) = BYTE2(v117);
    __src[1] = v74;
    v118 = 0;
    v119 = 0;
    v135[0] = v103;
    v135[1] = v108;
    v120 = 0;
    v121 = 0;
    v122 = 0;
    v123 = 0;
    *&v136[1] = v106;
    v136[0] = v76;
    v136[3] = v77;
    v124 = 0;
    v125 = 0;
    v126 = 0;
    *(v138 + 9) = *&v128[9];
    v137 = v127;
    v138[0] = *v128;
    v139 = v80;
    v140 = v79;
    memset(v129, 0, 24);
    v141 = 1;
    v115[0] = v129;
    sub_100189A94(v115);
    if (v124)
    {
      v125 = v124;
      operator delete(v124);
    }

    if (v121)
    {
      v122 = v121;
      operator delete(v121);
    }

    if (v118)
    {
      v119 = v118;
      operator delete(v118);
    }

    if (v141)
    {
      sub_100425D4C(__p, __src);
      v82 = 1;
      goto LABEL_185;
    }

LABEL_184:
    sub_100428B48("RoseCIRDecoder::decodeRangeCIREventVersion2: error converting packet to libRose format", v81);
    v82 = 0;
    v73 = 0;
    v72 = 0;
LABEL_185:
    if (v141 == 1)
    {
      v117 = &v139;
      sub_100189A94(&v117);
      if (v136[1])
      {
        v136[2] = v136[1];
        operator delete(v136[1]);
      }

      if (*&v135[1])
      {
        *(&v135[1] + 1) = *&v135[1];
        operator delete(*&v135[1]);
      }

      if (__src[1])
      {
        *&v135[0] = __src[1];
        operator delete(__src[1]);
      }
    }

    if (v82)
    {
      v70 += 136;
      if (v70 == v71)
      {
        a3[72] = v73;
        goto LABEL_195;
      }

      continue;
    }

    break;
  }

  a3[72] = v73;
  *a3 = v72;
LABEL_215:
  __src[0] = __p;
  sub_100189B38(__src);
LABEL_198:
  __src[0] = v111;
  sub_100189A94(__src);
  __src[0] = &v112;
  sub_1004255B0(__src);
}

void sub_100424E54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v69 = v66;
  v69[72] = v65;
  *v69 = v67;
  if (a21)
  {
    operator delete(a21);
  }

  if (a23)
  {
    operator delete(a23);
  }

  if (v68)
  {
    operator delete(v68);
  }

  STACK[0x220] = &a65;
  sub_100189B38(&STACK[0x220]);
  a65 = &a28;
  sub_100189A94(&a65);
  a65 = &a31;
  sub_1004255B0(&a65);
  _Unwind_Resume(a1);
}

void sub_1004250BC(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (a3 + a2 > a2)
  {
    v5 = a3;
    v6 = a2;
    do
    {
      sub_1001FE4D0(a4, (*a1 + v6++));
      --v5;
    }

    while (v5);
  }
}

void sub_100425120(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10042513C(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, const void **a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if ((a3 & 0x3FF) != 0)
  {
    sub_1004CF660();
  }

  if (a3 >= 0x400)
  {
    v7 = 0;
    v8 = a3 >> 10;
    v22 = a3 >> 10;
    do
    {
      bzero(__src, 0x400uLL);
      for (i = 0; i != 1024; i += 4)
      {
        __dst = 0;
        sub_10046F95C((*a1 + a2 + i), 2uLL, &__dst + 2, 1);
        sub_10046F95C((*a1 + a2 + i + 2), 2uLL, &__dst, 1);
        v10 = HIWORD(__dst);
        v11 = &__src[i];
        *v11 = __dst;
        v11[1] = v10;
      }

      v13 = a4[1];
      v12 = a4[2];
      if (v13 >= v12)
      {
        v15 = *a4;
        v16 = v13 - *a4;
        v17 = (v16 >> 10) + 1;
        if (v17 >> 54)
        {
          sub_100019B38();
        }

        v18 = v12 - v15;
        if (v18 >> 9 > v17)
        {
          v17 = v18 >> 9;
        }

        if (v18 >= 0x7FFFFFFFFFFFFC00)
        {
          v19 = 0x3FFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v17;
        }

        if (v19)
        {
          sub_10018997C(a4, v19);
        }

        v20 = (v16 >> 10 << 10);
        memcpy(v20, __src, 0x400uLL);
        v14 = v20 + 1024;
        memcpy(0, v15, v16);
        v21 = *a4;
        *a4 = 0;
        a4[1] = v20 + 1024;
        a4[2] = 0;
        if (v21)
        {
          operator delete(v21);
        }

        v8 = v22;
      }

      else
      {
        memcpy(a4[1], __src, 0x400uLL);
        v14 = (v13 + 1024);
      }

      a2 += 1024;
      a4[1] = v14;
      ++v7;
    }

    while (v7 != v8);
  }
}

void sub_100425318(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10042533C(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_100425AC8(a1, a2);
  }

  else
  {
    *v3 = *a2;
    *(v3 + 16) = 0;
    *(v3 + 24) = 0;
    *(v3 + 8) = 0;
    *(v3 + 8) = *(a2 + 8);
    *(v3 + 24) = *(a2 + 24);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    result = v3 + 32;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_1004253A4(uint64_t a1)
{
  v6 = (a1 + 112);
  sub_100189A94(&v6);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    *(a1 + 40) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    *(a1 + 16) = v4;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_100425410(uint64_t a1)
{
  if (*(a1 + 152) == 1)
  {
    v6 = (a1 + 128);
    sub_100189A94(&v6);
    v2 = *(a1 + 56);
    if (v2)
    {
      *(a1 + 64) = v2;
      operator delete(v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      *(a1 + 40) = v3;
      operator delete(v3);
    }

    v4 = *(a1 + 8);
    if (v4)
    {
      *(a1 + 16) = v4;
      operator delete(v4);
    }
  }

  return a1;
}

uint64_t sub_100425488(uint64_t a1, __int16 a2, char a3, __int16 a4, char a5, void *a6, uint64_t *a7, uint64_t *a8)
{
  *a1 = a2;
  *(a1 + 2) = a3;
  *(a1 + 4) = a4;
  *(a1 + 6) = a5;
  *(a1 + 7) = *a6;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  sub_1001895D0((a1 + 24), *a7, a7[1], 0x86BCA1AF286BCA1BLL * ((a7[1] - *a7) >> 3));
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  sub_100189C1C((a1 + 48), *a8, a8[1], (a8[1] - *a8) >> 5);
  *(a1 + 16) = *(a1 + 7);
  return a1;
}

void sub_100425530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100189B38(va);
  _Unwind_Resume(a1);
}

void sub_100425548(uint64_t a1, uint64_t a2)
{
  v6 = (a2 + 128);
  sub_100189A94(&v6);
  v3 = *(a2 + 56);
  if (v3)
  {
    *(a2 + 64) = v3;
    operator delete(v3);
  }

  v4 = *(a2 + 32);
  if (v4)
  {
    *(a2 + 40) = v4;
    operator delete(v4);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    *(a2 + 16) = v5;
    operator delete(v5);
  }
}

void sub_1004255B0(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_100425604(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_100425604(uint64_t result, uint64_t a2)
{
  for (i = *(result + 8); i != a2; sub_100425658(result, i))
  {
    i -= 136;
  }

  *(result + 8) = a2;
}

void sub_100425658(uint64_t a1, uint64_t a2)
{
  v6 = (a2 + 112);
  sub_100189A94(&v6);
  v3 = *(a2 + 56);
  if (v3)
  {
    *(a2 + 64) = v3;
    operator delete(v3);
  }

  v4 = *(a2 + 32);
  if (v4)
  {
    *(a2 + 40) = v4;
    operator delete(v4);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    *(a2 + 16) = v5;
    operator delete(v5);
  }
}

uint64_t sub_1004256C0(unint64_t *a1, int *a2)
{
  v2 = 0xF0F0F0F0F0F0F0F1 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1E1E1E1E1E1E1E1)
  {
    sub_100019B38();
  }

  if (0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 3);
  }

  if (0xF0F0F0F0F0F0F0F1 * ((a1[2] - *a1) >> 3) >= 0xF0F0F0F0F0F0F0)
  {
    v6 = 0x1E1E1E1E1E1E1E1;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_100425898(a1, v6);
  }

  v13 = 0;
  v14 = 136 * v2;
  sub_1004257F4(a1, 136 * v2, a2);
  v15 = 136 * v2 + 136;
  v7 = a1[1];
  v8 = 136 * v2 + *a1 - v7;
  sub_1004258EC(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_100425A48(&v13);
  return v12;
}

void sub_1004257E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100425A48(va);
  _Unwind_Resume(a1);
}

__n128 sub_1004257F4(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = *a3;
  *(a2 + 4) = *(a3 + 4);
  *a2 = v3;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  *(a2 + 8) = *(a3 + 2);
  *(a2 + 24) = *(a3 + 3);
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  *(a3 + 3) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 32) = *(a3 + 2);
  *(a2 + 48) = *(a3 + 6);
  *(a3 + 4) = 0;
  *(a3 + 5) = 0;
  *(a3 + 6) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 56) = *(a3 + 14);
  *(a2 + 72) = *(a3 + 9);
  *(a3 + 7) = 0;
  *(a3 + 8) = 0;
  *(a3 + 9) = 0;
  v4 = *(a3 + 5);
  *(a2 + 89) = *(a3 + 89);
  *(a2 + 80) = v4;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 112) = 0;
  result = *(a3 + 7);
  *(a2 + 112) = result;
  *(a2 + 128) = *(a3 + 16);
  *(a3 + 14) = 0;
  *(a3 + 15) = 0;
  *(a3 + 16) = 0;
  return result;
}

void sub_100425898(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1E1E1E1E1E1E1E2)
  {
    operator new();
  }

  sub_100013B04();
}

uint64_t sub_1004258EC(uint64_t a1, int *a2, int *a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      sub_1004257F4(a1, a4, v7);
      v7 += 34;
      a4 = v12 + 136;
      v12 += 136;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      sub_100425658(a1, v5);
      v5 += 34;
    }
  }

  return sub_1004259BC(v9);
}

uint64_t sub_1004259BC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1004259F4(a1);
  }

  return a1;
}

void sub_1004259F4(uint64_t *a1)
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
      v3 -= 136;
      sub_100425658(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t sub_100425A48(uint64_t a1)
{
  sub_100425A80(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100425A80(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 136;
    sub_100425658(v5, v4 - 136);
  }
}

uint64_t sub_100425AC8(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_100019B38();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    sub_100189CE0(a1, v7);
  }

  v8 = 32 * v2;
  v15 = 0;
  v16 = v8;
  *(&v17 + 1) = 0;
  *v8 = *a2;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 8) = 0;
  *(v8 + 8) = *(a2 + 8);
  *(v8 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *&v17 = 32 * v2 + 32;
  v9 = a1[1];
  v10 = 32 * v2 + *a1 - v9;
  sub_100425BF0(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_100425CB4(&v15);
  return v14;
}

void sub_100425BDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100425CB4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100425BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 8) = 0;
      *(a4 + 8) = *(v6 + 8);
      *(a4 + 24) = *(v6 + 24);
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      v6 += 32;
      a4 += 32;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      v7 = *(v5 + 8);
      if (v7)
      {
        *(v5 + 16) = v7;
        operator delete(v7);
      }

      v5 += 32;
    }
  }

  return sub_100189DE0(v9);
}

uint64_t sub_100425CB4(uint64_t a1)
{
  sub_100425CEC(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100425CEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    *(a1 + 16) = v2 - 32;
    v5 = *(v2 - 24);
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 32;
    }
  }
}

uint64_t sub_100425D4C(unint64_t *a1, __int16 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    v4 = sub_100425DB0(a1, a2);
  }

  else
  {
    sub_100425EFC(a1, a1[1], a2);
    v4 = v3 + 152;
    a1[1] = v3 + 152;
  }

  a1[1] = v4;
  return v4 - 152;
}

uint64_t sub_100425DB0(unint64_t *a1, __int16 *a2)
{
  v2 = 0x86BCA1AF286BCA1BLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1AF286BCA1AF286)
  {
    sub_100019B38();
  }

  if (0xD79435E50D79436 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xD79435E50D79436 * ((a1[2] - *a1) >> 3);
  }

  if (0x86BCA1AF286BCA1BLL * ((a1[2] - *a1) >> 3) >= 0xD79435E50D7943)
  {
    v6 = 0x1AF286BCA1AF286;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_1001896A8(a1, v6);
  }

  v13 = 0;
  v14 = 152 * v2;
  sub_100425EFC(a1, 152 * v2, a2);
  v15 = 152 * v2 + 152;
  v7 = a1[1];
  v8 = 152 * v2 + *a1 - v7;
  sub_100425FA0(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_100426070(&v13);
  return v12;
}

void sub_100425EE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100426070(va);
  _Unwind_Resume(a1);
}

__n128 sub_100425EFC(uint64_t a1, uint64_t a2, __int16 *a3)
{
  v3 = *a3;
  *(a2 + 2) = *(a3 + 2);
  *a2 = v3;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  *(a2 + 8) = *(a3 + 4);
  *(a2 + 24) = *(a3 + 3);
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  *(a3 + 3) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 32) = *(a3 + 2);
  *(a2 + 48) = *(a3 + 6);
  *(a3 + 4) = 0;
  *(a3 + 5) = 0;
  *(a3 + 6) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 56) = *(a3 + 28);
  *(a2 + 72) = *(a3 + 9);
  *(a3 + 7) = 0;
  *(a3 + 8) = 0;
  *(a3 + 9) = 0;
  v4 = *(a3 + 5);
  v5 = *(a3 + 6);
  *(a2 + 105) = *(a3 + 105);
  *(a2 + 80) = v4;
  *(a2 + 96) = v5;
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(a2 + 128) = 0;
  result = *(a3 + 8);
  *(a2 + 128) = result;
  *(a2 + 144) = *(a3 + 18);
  *(a3 + 16) = 0;
  *(a3 + 17) = 0;
  *(a3 + 18) = 0;
  return result;
}

uint64_t sub_100425FA0(uint64_t a1, __int16 *a2, __int16 *a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      sub_100425EFC(a1, a4, v7);
      v7 += 76;
      a4 = v12 + 152;
      v12 += 152;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      sub_100425548(a1, v5);
      v5 += 76;
    }
  }

  return sub_1001899C4(v9);
}

uint64_t sub_100426070(uint64_t a1)
{
  sub_1004260A8(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1004260A8(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 152;
    sub_100425548(v5, v4 - 152);
  }
}

uint64_t sub_1004260F0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *a1 = 0;
  *(a1 + 8) = a2;
  sub_100426188(a1 + 16, a3);
  *(a1 + 48) = a4;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  return a1;
}

std::thread *sub_100426130(std::thread *this)
{
  atomic_store(0, &this[8]);
  v2 = this + 7;
  if (this[7].__t_)
  {
    std::thread::join(this + 7);
  }

  std::thread::~thread(v2);
  sub_100426220(&this[2]);
  return this;
}

uint64_t sub_100426188(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_100426220(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_100426320(unsigned __int8 *a1)
{
  result = *a1;
  if ((result - 1) >= 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1004211BC(exception, "Unknown message type");
  }

  return result;
}

uint64_t sub_100426398(uint64_t a1)
{
  result = *(a1 + 1);
  if (result >= 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1004211BC(exception, "Unknown group ID");
  }

  return result;
}

uint64_t sub_10042640C(uint64_t a1)
{
  if (*(a1 + 1) > 2u || sub_100426398(a1))
  {
    sub_100193120(v10);
    sub_10000EA44(v11, "not ranging group ID: ", 22);
    std::ostream::operator<<();
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::runtime_error::runtime_error(exception, &v9);
  }

  result = *(a1 + 2);
  v3 = result > 0x16 || ((1 << result) & 0x60023F) == 0;
  if (v3 && ((result - 80) > 0x20 || ((1 << (result - 80)) & 0x10001003FLL) == 0) && ((result - 512) > 0xD || ((1 << result) & 0x243B) == 0))
  {
    sub_100193120(v10);
    v5 = sub_10000EA44(v11, "Unknown ranging group message ID: ", 34);
    *(v5 + *(*v5 - 24) + 8) = *(v5 + *(*v5 - 24) + 8) & 0xFFFFFFB5 | 8;
    v6 = sub_10000EA44(v5, "0x", 2);
    v7 = *v6;
    *(v6 + *(*v6 - 24) + 24) = 3;
    sub_100426884((v6 + *(v7 - 24)), 0x30u);
    std::ostream::operator<<();
    v8 = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::runtime_error::runtime_error(v8, &v9);
  }

  return result;
}

void sub_100426690(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      sub_100193C68(&a15);
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

uint64_t sub_1004266E8(uint64_t a1)
{
  if (*(a1 + 1) > 2u || sub_100426398(a1) != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1004211BC(exception, "not debug group ID");
    goto LABEL_7;
  }

  result = *(a1 + 2);
  if ((result - 82) >= 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1004211BC(exception, "Debug group message IDs not defined");
LABEL_7:
  }

  return result;
}

uint64_t sub_10042679C(uint64_t a1)
{
  if (*(a1 + 1) > 2u || sub_100426398(a1) != 2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1004211BC(exception, "not factory test group ID");
LABEL_12:
  }

  result = *(a1 + 2);
  v3 = result > 0x20 || ((1 << result) & 0x104090011) == 0;
  if (v3 && result != 78 && result != 128)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1004211BC(exception, "Unknown factory test group message ID");
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_100426884(std::ios_base *this, std::ios_base::fmtflags a2)
{
  fmtflags = this[1].__fmtflags_;
  if (fmtflags == -1)
  {
    std::ios_base::getloc(this);
    v5 = std::locale::use_facet(&v7, &std::ctype<char>::id);
    fmtflags = (v5->__vftable[2].~facet_0)(v5, 32);
    std::locale::~locale(&v7);
    this[1].__fmtflags_ = fmtflags;
  }

  this[1].__fmtflags_ = a2;
  return fmtflags;
}

void sub_100426934(uint64_t a1@<X0>, char *a2@<X8>, uint64_t a3@<X1>)
{
  if (sub_100426A4C(a1, a3))
  {
    sub_1004289F8("RoseCIRDecoder::getBufferedCIREvent, version %d", v5, *(a1 + 5));
    v7 = *(a1 + 5);
    if (v7 == 2)
    {

      sub_100423760(a1, (a1 + 8), a2);
    }

    else
    {
      if (v7 != 1)
      {
        sub_100428B48("collectRangeCIREvent: Unexpected version number %u in CIR debug data. Only versions 1 and 2 are supported.", v6, *(a1 + 5));
        exception = __cxa_allocate_exception(0x10uLL);
        sub_1004211BC(exception, "Unexpected version number in CIR debug data. Only versions 1 and 2 are supported.");
      }

      sub_10045EF14((a1 + 8), a2);
    }
  }

  else
  {
    *a2 = 0;
    a2[72] = 0;
  }
}

BOOL sub_100426A4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10046F8E0(a2);
  v5 = sub_10046F8B8(v4);
  v22 = v5;
  v23 = WORD2(v5);
  if (*(a1 + 4) == 1 && !sub_1004262C8(&v22))
  {
    sub_100005D28("collectRangeCIREvent: waiting for start of multipart message; ignoring partial data", v6, v7, v8, v9, v10, v11, v12, v21);
    return 0;
  }

  if (sub_1004262C8(&v22))
  {
    v13 = *(a1 + 8);
    *(a1 + 4) = 0;
    *(a1 + 16) = v13;
    sub_10046F95C((*a2 + 4), 1uLL, (a1 + 5), 1);
    sub_10046F95C((*a2 + 5), 2uLL, (a1 + 6), 1);
    if (*(a1 + 5) - 1 >= 2)
    {
      sub_100428B48("collectRangeCIREvent: Unexpected version number %u in CIR debug data. Only versions 1 and 2 are supported.", v14, *(a1 + 5));
      exception = __cxa_allocate_exception(0x10uLL);
      sub_1004211BC(exception, "Unexpected version number in CIR debug data. Only versions 1 and 2 are supported.");
    }

    sub_1000F5900((a1 + 8), *(a1 + 6));
    v15 = 7;
  }

  else
  {
    v15 = 4;
  }

  sub_100426C1C(a1 + 8, *(a1 + 16), (v15 + *a2), *(a2 + 8), *(a2 + 8) - (v15 + *a2));
  if (*(a1 + 16) - *(a1 + 8) > *(a1 + 6))
  {
    sub_100428B48("collectRangeCIREvent: Collected CIR data exceeds expected size %hu", v16, *(a1 + 6));
    result = 0;
    *(a1 + 4) = 1;
    return result;
  }

  result = sub_1004262E8(&v22);
  if (result)
  {
    result = 1;
    *(a1 + 4) = 1;
    v19 = *(a1 + 16) - *(a1 + 8);
    if (v19 != *(a1 + 6))
    {
      sub_100428B48("collectRangeCIREvent: end of multipart message, expected %hu bytes but received %zu", v18, *(a1 + 6), v19);
      return 0;
    }
  }

  return result;
}

char *sub_100426C1C(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v6 = a5;
  v7 = __src;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  if ((v10 - v9) >= a5)
  {
    v15 = v9 - __dst;
    if ((v9 - __dst) >= a5)
    {
      v19 = &__dst[a5];
      v20 = (v9 - a5);
      v21 = *(a1 + 8);
      if (v9 >= a5)
      {
        do
        {
          v22 = *v20++;
          *v21++ = v22;
        }

        while (v20 != v9);
      }

      *(a1 + 8) = v21;
      if (v9 != v19)
      {
        memmove(&__dst[a5], __dst, v9 - v19);
      }

      v23 = v5;
      v24 = v7;
      v25 = v6;
    }

    else
    {
      v16 = &__src[v15];
      if (&__src[v15] == a4)
      {
        v17 = *(a1 + 8);
        v18 = v17;
      }

      else
      {
        v17 = (&a4[v9] - v16);
        v18 = *(a1 + 8);
        do
        {
          v34 = *v16++;
          *v18++ = v34;
        }

        while (v16 != a4);
      }

      *(a1 + 8) = v17;
      if (v15 < 1)
      {
        return v5;
      }

      v35 = &__dst[a5];
      v36 = &v17[-a5];
      v37 = v17;
      if (&v17[-a5] < v9)
      {
        do
        {
          v38 = *v36++;
          *v37++ = v38;
        }

        while (v36 != v9);
      }

      *(a1 + 8) = v37;
      if (v18 != v35)
      {
        memmove(&__dst[a5], __dst, v17 - v35);
      }

      v23 = v5;
      v24 = v7;
      v25 = v15;
    }

    memmove(v23, v24, v25);
    return v5;
  }

  v11 = *a1;
  v12 = v9 - *a1 + a5;
  if (v12 < 0)
  {
    sub_100019B38();
  }

  v13 = v10 - v11;
  if (2 * v13 > v12)
  {
    v12 = 2 * v13;
  }

  if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v14 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    operator new();
  }

  v26 = (__dst - v11);
  v27 = (__dst - v11 + a5);
  v28 = (__dst - v11);
  do
  {
    v29 = *v7++;
    *v28++ = v29;
    --v6;
  }

  while (v6);
  v30 = *(a1 + 8) - __dst;
  memcpy(v27, __dst, v30);
  v31 = &v27[v30];
  *(a1 + 8) = v5;
  v32 = *a1;
  v33 = &v26[*a1 - v5];
  memcpy(v33, *a1, &v5[-*a1]);
  *a1 = v33;
  *(a1 + 8) = v31;
  *(a1 + 16) = 0;
  if (v32)
  {
    operator delete(v32);
  }

  return v26;
}

void sub_100426E3C(uint64_t a1, __int16 **a2)
{
  v2 = a1 + 8;
  *(a1 + 16) = *(a1 + 8);
  v3 = *a2;
  v4 = a2[1];
  while (v3 != v4)
  {
    v5 = *v3++;
    v7 = v5;
    sub_1001FE4D0(v2, &v7);
    v6 = HIBYTE(v5);
    sub_1001FE4D0(v2, &v6);
  }
}

uint64_t sub_100426EAC(unsigned __int8 *a1)
{
  sub_10026B0D4(&v17);
  sub_100427248(*a1, &v14);
  v2 = std::string::append(&v14, ": [");
  v3 = *&v2->__r_.__value_.__l.__data_;
  v16 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (v16 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v16 >= 0)
  {
    v5 = HIBYTE(v16);
  }

  else
  {
    v5 = __p[1];
  }

  sub_10000EA44(&v17, v4, v5);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  v6 = v17;
  v7 = &v17 + *(v17 - 3);
  if (*(v7 + 36) == -1)
  {
    std::ios_base::getloc((&v17 + *(v17 - 3)));
    v8 = std::locale::use_facet(__p, &std::ctype<char>::id);
    (v8->__vftable[2].~facet_0)(v8, 32);
    std::locale::~locale(__p);
    v6 = v17;
  }

  *(v7 + 36) = 48;
  *(&v17 + *(v6 - 3) + 8) = *(&v17 + *(v6 - 3) + 8) & 0xFFFFFFB5 | 8;
  if (*(a1 + 2) != *(a1 + 1))
  {
    v9 = 0;
    do
    {
      v10 = sub_10000EA44(&v17, "0x", 2);
      *(v10 + *(*v10 - 24) + 24) = 2;
      std::ostream::operator<<();
      v12 = *(a1 + 1);
      v11 = *(a1 + 2);
      if (v9 != ~v12 + v11)
      {
        sub_10000EA44(&v17, ", ", 2);
        v12 = *(a1 + 1);
        v11 = *(a1 + 2);
      }

      ++v9;
    }

    while (v9 < v11 - v12);
  }

  sub_10000EA44(&v17, "]", 1);
  std::stringbuf::str();
  if (v20 < 0)
  {
    operator delete(v19[7].__locale_);
  }

  std::locale::~locale(v19);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_1004271D0(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, std::locale a9, void *a10, int a11, __int16 a12, char a13, char a14, char a15, std::locale a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, ...)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void *sub_100427248@<X0>(int a1@<W0>, void *a2@<X8>)
{
  if ((a1 - 1) > 0x37)
  {
    v2 = "Unknown";
  }

  else
  {
    v2 = off_1009AB918[(a1 - 1)];
  }

  return sub_100004A08(a2, v2);
}

uint64_t sub_10042727C(uint64_t a1, int a2)
{
  v2 = 0;
  if (a2 < 0)
  {
    v4 = 0;
  }

  else
  {
    v3 = *(a1 + 8);
    v4 = 0;
    if (*(a1 + 16) - v3 > a2)
    {
      v4 = *(v3 + a2);
      v2 = 1;
    }
  }

  return v4 | (v2 << 8);
}

BOOL sub_1004272B4(uint64_t a1, int a2, char a3)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16) - v3;
  if (v4 > a2)
  {
    *(v3 + a2) = a3;
  }

  return v4 > a2;
}

uint64_t sub_1004272E8(unsigned int a1, int a2)
{
  if (a2 == 2)
  {
    if (a1 < 0x21 && ((0x1FFFFFE01uLL >> a1) & 1) != 0)
    {
      return byte_100572B60[a1];
    }

LABEL_9:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1004211BC(exception, "Invalid raw value for extended preamble");
  }

  if (a2 != 1 || a1 >= 4)
  {
    goto LABEL_9;
  }

  return (a1 + 9);
}

uint64_t sub_100427398(uint64_t result, uint64_t a2)
{
  if (a2 == 1)
  {
    if (result <= 10)
    {
      if (result == 9)
      {
        return 0;
      }

      if (result == 10)
      {
        return 1;
      }

      if (result)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (result == 11)
      {
        return 2;
      }

      if (result == 12)
      {
        return 3;
      }

      if ((result - 13) >= 0x14)
      {
        goto LABEL_15;
      }
    }

    sub_100428B48("Preambles not supported in HSI 1.x", a2);
LABEL_15:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1004211BC(exception, "Invalid extended preamble");
    goto LABEL_16;
  }

  if (a2 != 2)
  {
    if (!a2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      sub_1004211BC(exception, "Unknown HSI version");
LABEL_16:
    }

    goto LABEL_15;
  }

  return result;
}

uint64_t sub_10042749C(char a1)
{
  sub_100193120(v5);
  v2 = sub_10000EA44(&v6, "Preamble_", 9);
  v10 = a1;
  sub_10000EA44(v2, &v10, 1);
  std::stringbuf::str();
  v6 = v3;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

uint64_t sub_100427658(uint64_t result, uint64_t a2)
{
  if (result > 0x1B || ((1 << result) & 0xFDB548F) == 0)
  {
    sub_100428B48("Exception: %s - 0x%x", a2, "Invalid session type", result);
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1004211BC(exception, "Invalid session type");
  }

  return result;
}

void *sub_1004276FC@<X0>(unsigned int a1@<W0>, void *a2@<X8>)
{
  if (a1 > 0x1B)
  {
    v2 = "UNKNOWN";
  }

  else
  {
    v2 = off_1009ABAD8[a1];
  }

  return sub_100004A08(a2, v2);
}

uint64_t sub_100427728(uint64_t result, uint64_t a2)
{
  if (result > 4)
  {
    sub_100428B48("Exception: %s - 0x%x", a2, "Invalid gr superframe format", result);
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1004211BC(exception, "Invalid session type");
  }

  return result;
}

uint64_t sub_1004277B8(uint64_t result, uint64_t a2)
{
  if (result > 1)
  {
    sub_100428B48("Exception: %s - 0x%x", a2, "Invalid session role", result);
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1004211BC(exception, "Invalid session role");
  }

  return result;
}

uint64_t sub_100427844(uint64_t result, uint64_t a2)
{
  if (result > 0x38 || ((1 << result) & 0x149E3C884FAA1F2) == 0)
  {
    sub_100428B48("Exception: Invalid config parameter ID %d", a2, result);
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1004211BC(exception, "Invalid config parameter ID");
  }

  return result;
}

double sub_1004278F0@<D0>(unsigned int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (a1 < 0x33 && (a2 - 1) > 0xFFFFFFCC)
  {
    v5[0] = a1;
    v5[1] = a2;
    v7 = 0;
    v6 = 0uLL;
    sub_1000069DC(&v6, v5, &v6, 2);
    result = *&v6;
    *a3 = v6;
    *(a3 + 16) = v7;
    *(a3 + 24) = 1;
  }

  else
  {
    *a3 = 0;
    *(a3 + 24) = 0;
  }

  return result;
}

uint64_t sub_100427984(uint64_t result, uint64_t a2)
{
  if (result >= 0x62 && result != 16398 && result != 0xFFFF)
  {
    sub_100428D00("Fault: %s - 0x%x", a2, "Unknown error code", result, v2, v3);
    return 0xFFFFLL;
  }

  return result;
}

void *sub_1004279E4@<X0>(int a1@<W0>, void *a2@<X8>)
{
  v2 = "SUCCESS";
  switch(a1)
  {
    case 0:
      return sub_100004A08(a2, v2);
    case 1:
      v2 = "INVALID_CMD_PARAM";
      break;
    case 2:
      v2 = "UNKNOWN_CMD";
      break;
    case 3:
      v2 = "INVALID_CMD_LEN";
      break;
    case 4:
      v2 = "MEMORY_FAILURE";
      break;
    case 5:
      v2 = "INTERNAL";
      break;
    case 6:
      v2 = "BUSY";
      break;
    case 7:
      v2 = "CMD_DISALLOWED";
      break;
    case 8:
      v2 = "SES_MAX_LIMIT_REACHED";
      break;
    case 9:
      v2 = "SES_NOT_FOUND";
      break;
    case 10:
      v2 = "TBD3";
      break;
    case 11:
      v2 = "TBD4";
      break;
    case 12:
      v2 = "SES_TIMEOUT";
      break;
    case 13:
      v2 = "SES_SYNC_TIMEOUT";
      break;
    case 14:
      v2 = "MISSED_RANGING_CYCLE";
      break;
    case 15:
      v2 = "LOCAL_SES_REMOVE_SUCCESS";
      break;
    case 16:
      v2 = "LOCAL_SES_DISABLE_SUCCESS";
      break;
    case 17:
      v2 = "SES_COMPLETED";
      break;
    case 18:
      v2 = "SES_ALREADY_ACTIVE";
      break;
    case 19:
      v2 = "SES_ALREADY_DISABLED";
      break;
    case 20:
      v2 = "SES_SCHEDULING_CONFLICT";
      break;
    case 21:
      v2 = "SES_COEX_CONFLICT";
      break;
    case 22:
      v2 = "SES_WRONG_SYNC";
      break;
    case 23:
      v2 = "START_TIME_ELAPSED";
      break;
    case 24:
      v2 = "SES_UAP_ALREADY_PENDING";
      break;
    case 25:
      v2 = "COEX_UNSUPPORTED";
      break;
    case 26:
      v2 = "INVALID_TX_MINI_SLOT_SIZE";
      break;
    case 27:
      v2 = "INVALID_RX_MINI_SLOT_SIZE";
      break;
    case 28:
      v2 = "INVALID_SES_ROLE";
      break;
    case 29:
      v2 = "INVALID_ANTENNA_CFG";
      break;
    case 30:
      v2 = "INVALID_NACCESS_SLOTS";
      break;
    case 31:
      v2 = "INVALID_PREAMBLE";
      break;
    case 32:
      v2 = "INVALID_FEM_CFG";
      break;
    case 33:
      v2 = "SUPERFRAMES_OVERLAP";
      break;
    case 34:
      v2 = "INVALID_INTERVAL";
      break;
    case 35:
      v2 = "INVALID_PKT_TYPE";
      break;
    case 36:
      v2 = "INVALID_MAC_ADDR";
      break;
    case 37:
      v2 = "MUTE_UNMUTE_DISALLOWED";
      break;
    case 38:
      v2 = "SES_MUTED";
      break;
    case 39:
      v2 = "INVALID_CHANNEL";
      break;
    case 40:
      v2 = "DTM_CMD_UNSUPPORTED";
      break;
    case 41:
      v2 = "DTM_SES_NOT_READY";
      break;
    case 42:
      v2 = "DTM_SES_BUSY";
      break;
    case 43:
      v2 = "DTM_PAYLOAD_INVALID_LEN";
      break;
    case 44:
      v2 = "DTM_INVALID_SES_TO";
      break;
    case 45:
      v2 = "MP_CMD_INTERLEAVED";
      break;
    case 46:
      v2 = "MP_CMD_LEN_OVERFLOW";
      break;
    case 47:
      v2 = "INVALID_SES_TYPE";
      break;
    case 48:
      v2 = "INVALID_ALISHA_UWB_CFG_ID";
      break;
    case 49:
      v2 = "INVALID_ALISHA_RAN_MULTIPLIER";
      break;
    case 50:
      v2 = "INVALID_ALISHA_NRESPONDERS";
      break;
    case 51:
      v2 = "INVALID_ALISHA_NCHAPS_PER_SLOT";
      break;
    case 52:
      v2 = "INVALID_ALISHA_NSLOTS_PER_ROUND";
      break;
    case 53:
      v2 = "INVALID_ALISHA_RBLOCK_CFG";
      break;
    case 54:
      v2 = "ALISHA_UWB_SES_ID_NOT_FOUND";
      break;
    case 55:
      v2 = "ALISHA_UWB_SES_ID_ALREADY_IN_USE";
      break;
    case 56:
      v2 = "ALISHA_KEY_STORE_FULL";
      break;
    case 57:
      v2 = "INVALID_ALISHA_RESPONDER_IDX";
      break;
    case 58:
      v2 = "SES_GRUAP_ALREADY_PENDING";
      break;
    case 59:
      v2 = "INVALID_CHANNEL_HOP_PATTERN";
      break;
    case 60:
      v2 = "INVALID_ACCESS_SLOT_IDX";
      break;
    case 61:
      v2 = "INVALID_GR_TYPE";
      break;
    case 62:
      v2 = "SLOT_TIME_ELAPSED";
      break;
    case 63:
      v2 = "INVALID_ALISHA_PULSE_SHAPE_COMBO";
      break;
    case 64:
      v2 = "INVALID_ALISHA_HOP_MODE";
      break;
    case 65:
      v2 = "INVALID_ALISHA_HOP_SEQUENCE";
      break;
    case 66:
      v2 = "INVALID_SUBRATE";
      break;
    case 67:
      v2 = "SES_NOT_ACTIVE";
      break;
    case 68:
      v2 = "SES_SUBRATE_ALREADY_PENDING";
      break;
    case 69:
      v2 = "SES_SUBRATE_ALREADY_EFFECTIVE";
      break;
    case 70:
      v2 = "UAP_RX_FAILED";
      break;
    case 71:
      v2 = "ALISHA_URSK_RETRIEVAL_FAILED";
      break;
    case 72:
      v2 = "ALISHA_GET_KEY_ALREADY_PENDING";
      break;
    case 73:
      v2 = "ALISHA_STS_INDEX_EXHAUSTED";
      break;
    case 74:
      v2 = "ALISHA_BLOCK_IDX_EXHAUSTED";
      break;
    case 75:
      v2 = "ALISHA_URSK_TTL_EXPIRED";
      break;
    case 76:
      v2 = "INVALID_ALISHA_STS_INDEX_0";
      break;
    case 77:
      v2 = "ALISHA_RESPONSE_TIMEOUT";
      break;
    case 78:
      v2 = "ALISHA_TOTAL_TIMEOUT";
      break;
    case 79:
      v2 = "UNAUTHENTICATED_CAL_BLOB";
      break;
    case 80:
      v2 = "INVALID_SFD";
      break;
    case 81:
      v2 = "INVALID_ALISHA_NSIMRESPONDERS";
      break;
    case 82:
      v2 = "DUPLICATE";
      break;
    case 83:
      v2 = "NMI_NAP_RX_FAILED";
      break;
    case 84:
      v2 = "NMI_NAR_RX_FAILED";
      break;
    case 85:
      v2 = "NMI_SOR_RX_FAILED";
      break;
    case 86:
      v2 = "NMI_NAP_WRONG_SYNC";
      break;
    case 87:
      v2 = "NMI_WRONG_IRK";
      break;
    case 88:
      v2 = "NMI_RNG_DIS_BOTH_SIDES";
      break;
    case 89:
      v2 = "NMI_POLL_RSP_RX_OTHER_FAILURE";
      break;
    case 90:
      v2 = "NMI_DATA_RX_OTHER_FAILURE";
      break;
    case 91:
      v2 = "NMI_POLL_RSP_WRONG_SYNC";
      break;
    case 92:
      v2 = "NMI_DATA_WRONG_SYNC";
      break;
    case 93:
      v2 = "SES_EXCLUSIVE_MAC_DISALLOWED";
      break;
    case 94:
      v2 = "NMI_NAR_WRONG_SYNC";
      break;
    case 95:
      v2 = "NMI_SOR_WRONG_SYNC";
      break;
    case 96:
      v2 = "NMI_INVALID_RTT_TAT";
      break;
    case 97:
      v2 = "NMI_POLL_RSP_MISSED_CYCLE";
      break;
    default:
      v3 = "UNKNOWN";
      if (a1 == 0xFFFF)
      {
        v3 = "UNKNOWN_ERROR";
      }

      if (a1 == 16398)
      {
        v2 = "FACTORY_STOP_TEST";
      }

      else
      {
        v2 = v3;
      }

      break;
  }

  return sub_100004A08(a2, v2);
}

uint64_t sub_100427EE0(uint64_t result, uint64_t a2)
{
  if (result > 6)
  {
    sub_100428B48("Exception: %s - 0x%x", a2, "Invalid Rose hardware version", result);
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1004211BC(exception, "Invalid Rose hardware version");
  }

  return result;
}

void *sub_100427F6C@<X0>(unsigned int a1@<W0>, void *a2@<X8>)
{
  if (a1 > 6)
  {
    v2 = "UNKNOWN";
  }

  else
  {
    v2 = off_1009ABBB8[a1];
  }

  return sub_100004A08(a2, v2);
}

uint64_t sub_100427F98(uint64_t result, uint64_t a2)
{
  if (((result - 208) > 0x2E || ((1 << (result + 48)) & 0x7FFF47FF1FFFLL) == 0) && (result > 0x18 || ((1 << result) & 0x116003F) == 0))
  {
    sub_100428B48("Exception: %s - 0x%x", a2, "Invalid rx status.", result);
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1004211BC(exception, "Invalid rx status.");
  }

  return result;
}

uint64_t sub_100428064(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *v1++;
      v6 = v5 - 2;
      v7 = v3 | 2;
      if (v5 == 1)
      {
        v3 |= 1u;
      }

      if (v6 < 4)
      {
        ++v4;
        v3 = v7;
      }
    }

    while (v1 != v2);
    if ((v4 & 0xFFFFFFFB) != 0)
    {
      sub_1004CF68C();
    }
  }

  return v3;
}

uint64_t sub_1004280CC(uint64_t a1, uint64_t a2)
{
  if (a1 >= 4)
  {
    sub_1004CF6B8();
  }

  return a1 & 1;
}

BOOL sub_1004280EC(uint64_t a1, uint64_t a2)
{
  if (a1 >= 4)
  {
    sub_1004CF6E4();
  }

  return a1 > 1;
}

void *sub_100428110@<X0>(int a1@<W0>, void *a2@<X8>)
{
  if ((a1 - 1) > 4)
  {
    v2 = "UNKNOWN";
  }

  else
  {
    v2 = off_1009ABBF0[(a1 - 1)];
  }

  return sub_100004A08(a2, v2);
}

void *sub_100428144@<X0>(int a1@<W0>, void *a2@<X8>)
{
  v2 = "UNKNOWN";
  if (a1 == 9)
  {
    v2 = "CHANNEL9";
  }

  if (a1 == 5)
  {
    v3 = "CHANNEL5";
  }

  else
  {
    v3 = v2;
  }

  return sub_100004A08(a2, v3);
}

void *sub_100428174@<X0>(unsigned int a1@<W0>, void *a2@<X8>)
{
  if (a1 > 6)
  {
    v2 = "UNKNOWN";
  }

  else
  {
    v2 = off_1009ABC18[a1];
  }

  return sub_100004A08(a2, v2);
}

_BYTE *sub_1004281A0(_BYTE *result, int a2)
{
  if (a2 == 5)
  {
    v2 = 1;
  }

  else
  {
    if (a2 != 9)
    {
      return result;
    }

    v2 = 2;
  }

  *result |= v2;
  return result;
}

_WORD *sub_1004281CC(_WORD *result, int a2)
{
  if ((a2 - 1) <= 5)
  {
    *result |= word_100572B82[(a2 - 1)];
  }

  return result;
}

uint64_t sub_1004281F8(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  switch(a2)
  {
    case 1:
      if (a1)
      {
        if (a1 != 1)
        {
          sub_100428B48("Exception: %s - %d", a2, "Invalid Rose channel config for HSI V1", a1);
          exception = __cxa_allocate_exception(0x10uLL);
          sub_1004211BC(exception, "Invalid Rose channel config");
LABEL_12:
        }

        return 9;
      }

      else
      {
        return 5;
      }

    case 2:
      sub_1004282F4(a1, a2);
      break;
    case 0:
      sub_100428B48("Exception: %s", a2, "Unknown HSI version");
      exception = __cxa_allocate_exception(0x10uLL);
      sub_1004211BC(exception, "Unknown HSI version");
      goto LABEL_12;
  }

  return v2;
}

uint64_t sub_1004282F4(uint64_t result, uint64_t a2)
{
  if (result != 9 && result != 5)
  {
    sub_100428B48("Exception: %s - %d", a2, "Invalid Rose channel config for HSI V2", result);
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1004211BC(exception, "Invalid Rose channel config");
  }

  return result;
}

uint64_t sub_10042838C(int a1, int a2)
{
  if (a2 == 2)
  {
    if (a1 == 5)
    {
      return 5;
    }

    else
    {
      return 9;
    }
  }

  else
  {
    if (a2 != 1)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      sub_1004211BC(exception, "Unknown HSI version");
    }

    return a1 != 5;
  }
}

unint64_t sub_10042841C(unsigned int a1)
{
  v1 = a1 >> 11;
  if ((v1 - 1) >= 6)
  {
    if (!v1 && (a1 == 9 || a1 == 5))
    {
      v1 = 0;
      v2 = a1 | 0x100u;
    }

    else
    {
      v1 = 0;
      v2 = 0;
    }
  }

  else
  {
    v2 = ((a1 & 0x7FF) << 24) | 0x10000000000;
  }

  return v1 | (v2 << 8);
}

uint64_t sub_100428478(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 << 11;
  v3 = v1 - 1;
  if ((v1 - 1) >= 6)
  {
    if (*a1)
    {
      return v3;
    }

    if (a1[2])
    {
      return (v2 | a1[1]);
    }

LABEL_8:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1004211BC(exception, "Missing channel-select for band");
  }

  if ((a1[6] & 1) == 0)
  {
    goto LABEL_8;
  }

  return (*(a1 + 2) | v2);
}

uint64_t sub_100428540(int a1)
{
  if ((a1 & 0x10000) != 0)
  {
    v3 = sub_10042841C(a1);
    v5 = v3 >> 8;
    v6 = v3 >> 16;
    if (v3)
    {
      LOBYTE(v5) = 0;
      LODWORD(v6) = 0;
    }

    if (v4)
    {
      v1 = v5;
    }

    else
    {
      v1 = 0;
    }

    if (v4)
    {
      v2 = v6;
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v1 = 0;
    v2 = 0;
  }

  return v1 | (v2 << 8);
}

uint64_t sub_100428594(int a1)
{
  if (a1)
  {
    return 32 * (a1 == 1);
  }

  else
  {
    return 16;
  }
}

uint64_t sub_1004285B0(int a1)
{
  if (a1 == 32)
  {
    v1 = 1;
  }

  else
  {
    v1 = 4;
  }

  if (a1 == 16)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1004285C8(uint64_t result, unsigned int a2)
{
  v2 = 32 * (result == 1);
  if (!result)
  {
    v2 = 16;
  }

  v3 = 32 * (a2 == 1);
  if (!a2)
  {
    v3 = 16;
  }

  if (v2 <= v3)
  {
    return result;
  }

  else
  {
    return a2;
  }
}

uint64_t sub_100428610(unsigned int a1)
{
  v1 = a1 >> 8;
  v2 = __rev16(a1);
  v3 = bswap32(a1) >> 24;
  if (((1 << SBYTE1(a1)) & 0x101F7) == 0)
  {
    v2 = 0;
    v3 = a1 >> 8;
  }

  v4 = v1 > 0x10;
  v5 = v1 <= 0x10 && ((1 << SBYTE1(a1)) & 0x101F7) != 0;
  if (v4)
  {
    v2 = 0;
    LOWORD(v3) = v5;
  }

  return (v2 | (v3 << 8)) | (v5 << 16);
}

uint64_t sub_100428674(unsigned __int8 *a1)
{
  v1 = a1[1];
  v2 = *a1;
  if (*a1)
  {
    if (a1[1] == 1 && v2 == 16)
    {
      v2 = 16;
    }
  }

  else
  {
    v4 = v1 - 1;
    if (v4 >= 0xD)
    {
      v1 = 0;
      v2 = 0;
    }

    else
    {
      v2 = 0;
      v1 = byte_100572B8E[v4];
    }
  }

  return v1 | (v2 << 8);
}

uint64_t sub_1004286CC(unsigned __int8 *a1)
{
  sub_100193120(v14);
  v2 = *a1;
  if (v2 <= 4)
  {
    if (*a1 > 1u)
    {
      if (v2 == 2)
      {
        v9 = &v15;
        v10 = "IEEE_";
        v11 = 5;
      }

      else
      {
        if (v2 != 4)
        {
          goto LABEL_26;
        }

        v9 = &v15;
        v10 = "Proprietary_";
        v11 = 12;
      }

LABEL_18:
      v3 = sub_10000EA44(v9, v10, v11);
      v4 = "HPRF";
LABEL_22:
      v5 = 4;
      goto LABEL_25;
    }

    v6 = &v15;
    if (*a1)
    {
      v7 = "IEEE_";
      v8 = 5;
    }

    else
    {
      v7 = "Legacy_";
      v8 = 7;
    }

LABEL_21:
    v3 = sub_10000EA44(v6, v7, v8);
    v4 = "BPRF";
    goto LABEL_22;
  }

  if (*a1 <= 6u)
  {
    if (v2 != 5)
    {
      if (v2 != 6)
      {
        goto LABEL_26;
      }

      v9 = sub_10000EA44(&v15, "Split", 5);
      v10 = "ND_";
      v11 = 3;
      goto LABEL_18;
    }

    v6 = sub_10000EA44(&v15, "Split", 5);
    v7 = "ND_";
    v8 = 3;
    goto LABEL_21;
  }

  switch(v2)
  {
    case 7u:
      v3 = &v15;
      break;
    case 8u:
      v3 = sub_10000EA44(&v15, "Mixed_", 6);
      break;
    case 0x10u:
      v3 = &v15;
      v4 = "NB";
      v5 = 2;
      goto LABEL_25;
    default:
      goto LABEL_26;
  }

  v4 = "MMS";
  v5 = 3;
LABEL_25:
  sub_10000EA44(v3, v4, v5);
LABEL_26:
  sub_10000EA44(&v15, " PktIdx ", 8);
  std::ostream::operator<<();
  std::stringbuf::str();
  v15 = v12;
  if (v18 < 0)
  {
    operator delete(v17[7].__locale_);
  }

  std::locale::~locale(v17);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1004289E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100193C68(va);
  _Unwind_Resume(a1);
}

void sub_1004289F8(char *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  va_copy(v12, va);
  v3 = sub_100005E0C(a1, a2);
  sub_100428ADC(v3, a1, va);
  sub_100004A08(&v9, a1);
  v4 = std::string::append(&v9, "\n");
  v6 = *&v4->__r_.__value_.__l.__data_;
  v11 = v4->__r_.__value_.__r.__words[2];
  *__p = v6;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  v7 = sub_100005F14(v4, v5);
  if (v11 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  sub_100005EB0(v7, v8, v12);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100428AAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100428ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  std::mutex::lock((a1 + 8));
  os_log_with_args();

  std::mutex::unlock((a1 + 8));
}

void sub_100428B48(char *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  va_copy(v12, va);
  v3 = sub_100005E0C(a1, a2);
  sub_100428C2C(v3, a1, va);
  sub_100004A08(&v9, a1);
  v4 = std::string::append(&v9, "\n");
  v6 = *&v4->__r_.__value_.__l.__data_;
  v11 = v4->__r_.__value_.__r.__words[2];
  *__p = v6;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  v7 = sub_100005F14(v4, v5);
  if (v11 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  sub_100428C98(v7, v8, v12);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100428BFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100428C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  std::mutex::lock((a1 + 8));
  os_log_with_args();

  std::mutex::unlock((a1 + 8));
}

void sub_100428C98(std::mutex *a1, const char *a2, va_list a3)
{
  std::mutex::lock(a1);
  vfprintf(__stderrp, a2, a3);
  fflush(__stderrp);

  std::mutex::unlock(a1);
}

void sub_100428D00(char *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  va_copy(v12, va);
  v3 = sub_100005E0C(a1, a2);
  sub_100428DE4(v3, a1, va);
  sub_100004A08(&v9, a1);
  v4 = std::string::append(&v9, "\n");
  v6 = *&v4->__r_.__value_.__l.__data_;
  v11 = v4->__r_.__value_.__r.__words[2];
  *__p = v6;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  v7 = sub_100005F14(v4, v5);
  if (v11 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  sub_100428C98(v7, v8, v12);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100428DB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100428DE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  std::mutex::lock((a1 + 8));
  os_log_with_args();

  std::mutex::unlock((a1 + 8));
}

uint64_t sub_100428E54(uint64_t a1)
{
  os_release(*a1);
  std::mutex::~mutex((a1 + 8));
  return a1;
}

uint64_t sub_100428E90(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100428F20;
  block[3] = &unk_1009ABC50;
  block[4] = a1;
  if (qword_1009F91E8 != -1)
  {
    dispatch_once(&qword_1009F91E8, block);
  }

  return byte_1009F91F0;
}

void sub_100428F20(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (v1 + 48);
  if (*(v1 + 48))
  {
    sub_1004CF844();
  }

  v3 = dlopen("/usr/lib/libRoseBooter.dylib", 1);
  *v2 = v3;
  if (!v3)
  {
    v8 = dlerror();
    sub_100428B48("Failed to dlopen %s, error: %s", v9, "/usr/lib/libRoseBooter.dylib", v8);
LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  v4 = "RoseBooterHasFailedForward";
  *(v1 + 56) = dlsym(v3, "RoseBooterHasFailedForward");
  v5 = dlerror();
  if (!v5)
  {
    if (*(v1 + 56))
    {
      v4 = "RoseBooterPerformHealing";
      *(v1 + 64) = dlsym(*(v1 + 48), "RoseBooterPerformHealing");
      v5 = dlerror();
      if (!v5)
      {
        if (*(v1 + 64))
        {
          v4 = "RoseBooterAllocate";
          *(v1 + 72) = dlsym(*(v1 + 48), "RoseBooterAllocate");
          v5 = dlerror();
          if (!v5)
          {
            if (*(v1 + 72))
            {
              v4 = "RoseBooterPreflight";
              *(v1 + 80) = dlsym(*(v1 + 48), "RoseBooterPreflight");
              v5 = dlerror();
              if (!v5)
              {
                if (*(v1 + 80))
                {
                  v4 = "RoseBooterBootChip";
                  *(v1 + 88) = dlsym(*(v1 + 48), "RoseBooterBootChip");
                  v5 = dlerror();
                  if (!v5)
                  {
                    if (*(v1 + 88))
                    {
                      v4 = "RoseBooterSendCalWithOptions";
                      *(v1 + 96) = dlsym(*(v1 + 48), "RoseBooterSendCalWithOptions");
                      v5 = dlerror();
                      if (!v5)
                      {
                        if (*(v1 + 96))
                        {
                          v4 = "RoseBooterGetCal";
                          *(v1 + 104) = dlsym(*(v1 + 48), "RoseBooterGetCal");
                          v5 = dlerror();
                          if (!v5)
                          {
                            if (*(v1 + 104))
                            {
                              v4 = "RoseBooterDestroy";
                              *(v1 + 112) = dlsym(*(v1 + 48), "RoseBooterDestroy");
                              v5 = dlerror();
                              if (!v5)
                              {
                                if (*(v1 + 112))
                                {
                                  v7 = 1;
                                  goto LABEL_8;
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  sub_100428B48("Failed to dlsym %s, error: %s", v6, v4, v5);
  if (!*v2)
  {
    goto LABEL_7;
  }

  dlclose(*v2);
  v7 = 0;
  *v2 = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0;
LABEL_8:
  byte_1009F91F0 = v7;
}

uint64_t sub_100429114(uint64_t a1, uint64_t a2)
{
  *child = 0;
  if (qword_1009F91F8 != -1)
  {
    sub_1004CF870();
  }

  if (byte_1009F91F1 != 1)
  {
    return 0;
  }

  v4 = (a1 + 8);
  if (*(a1 + 8))
  {
    return 1;
  }

  if (!*(a1 + 40))
  {
    v15 = "packet receive callback uninitialized";
LABEL_25:
    sub_100428B48(v15, a2, *byte7);
    return 0;
  }

  if (!*(a1 + 144))
  {
    v15 = "crash callback needs to be registered first";
    goto LABEL_25;
  }

  if (!*(a1 + 176))
  {
    v15 = "state change available callback needs to be registered first";
    goto LABEL_25;
  }

  if (!*(a1 + 208))
  {
    v15 = "error reporting callback needs to be registered first";
    goto LABEL_25;
  }

  if (!a2)
  {
    v15 = "invalid dispatch queue parameter";
    goto LABEL_25;
  }

  if ((sub_100428E90(a1) & 1) == 0)
  {
    v15 = "unable to load booter library";
    goto LABEL_25;
  }

  v6 = IOServiceNameMatching("rose");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v6);
  if (!MatchingService)
  {
    v15 = "failed to get rose service";
    goto LABEL_25;
  }

  v8 = MatchingService;
  ChildEntry = IORegistryEntryGetChildEntry(MatchingService, "IOService", child);
  IOObjectRelease(v8);
  if (ChildEntry || (v10 = child[0]) == 0)
  {
    sub_100429514(a1);
    *byte7 = ChildEntry;
    v15 = "failed to get rose driver: 0x%x";
    goto LABEL_25;
  }

  v11 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0xAu, 0x3Au, 0xB3u, 0x17u, 0x88u, 0xE7u, 0x40u, 0xA0u, 0x89u, 0x68u, 0x33u, 0x55u, 0x58u, 0x14u, 0x66u, 0x63u);
  v12 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu);
  v13 = IOCreatePlugInInterfaceForService(v10, v11, v12, a1, &child[1]);
  IOObjectRelease(child[0]);
  if (v13 || (v16 = *a1) == 0)
  {
    sub_100429514(a1);
    sub_100428B48("creating rose plugin interface failed: 0x%x", v14, v13);
    return 0;
  }

  QueryInterface = (*v16)->QueryInterface;
  v18 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0x10u, 0x3Au, 0xBDu, 0x4Au, 0x60u, 0x94u, 0x4Bu, 0xC0u, 0xAEu, 0xEEu, 0x3Eu, 0x37u, 0xF5u, 0xA2u, 0xFu, 0x3Bu);
  v19 = CFUUIDGetUUIDBytes(v18);
  (QueryInterface)(v16, *&v19.byte0, *&v19.byte8, a1 + 8);
  if (!*v4)
  {
    sub_100429514(a1);
    v15 = "failed to query rose plugin interface";
    goto LABEL_25;
  }

  (*(**v4 + 72))(*v4, a2);
  v20 = (*(**(a1 + 8) + 344))(*(a1 + 8), sub_100429570, a1);
  if (v20)
  {
    sub_100428B48("failed to register event callback: 0x%x", v21, v20);
  }

  else
  {
    v22 = (*(**(a1 + 8) + 392))(*(a1 + 8), sub_100429594, a1);
    if (v22)
    {
      sub_100428B48("failed to register crashHandlerCallback: 0x%x", v23, v22);
    }

    else
    {
      v24 = (*(**(a1 + 8) + 400))(*(a1 + 8), sub_1004295D0, a1);
      if (v24)
      {
        sub_100428B48("failed to register fwStateChangeCallback: 0x%x", v25, v24);
      }

      else
      {
        v26 = (*(**(a1 + 8) + 408))(*(a1 + 8), sub_100429640, a1);
        if (!v26)
        {
          return 1;
        }

        sub_100428B48("failed to register errorReportCallback: 0x%x", v27, v26);
      }
    }
  }

  sub_100429514(a1);
  return 0;
}

uint64_t sub_1004294DC(uint64_t a1, uint64_t a2)
{
  if (qword_1009F91F8 != -1)
  {
    sub_1004CF870();
  }

  return byte_1009F91F1;
}

IOCFPlugInInterface **sub_100429514(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    (*(*v2 + 72))(v2, 0);
    (*(**(a1 + 8) + 24))(*(a1 + 8));
    *(a1 + 8) = 0;
  }

  result = *a1;
  if (*a1)
  {
    result = IODestroyPlugInInterface(result);
    *a1 = 0;
  }

  return result;
}

void sub_100429570(uint64_t a1, const void *a2, uint64_t a3)
{
  if (a1)
  {

    sub_100429730(a1, a2, a3);
  }

  else
  {
    v4 = sub_1004CF884(a1, a2);
    sub_100429594(v4);
  }
}

uint64_t sub_100429594(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    a1 = sub_1004CF8D4(0, a2);
    goto LABEL_7;
  }

  if (!*(a1 + 144))
  {
LABEL_7:
    v4 = sub_1004CF8AC(a1, a2);
    return sub_1004295D0(v4, v5);
  }

  v2 = a1 + 120;

  return sub_10042A418(v2, a2);
}

uint64_t sub_1004295D0(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    a1 = sub_1004CF924(a2, a2);
    goto LABEL_9;
  }

  v2 = a1;
  if (!*(a1 + 176))
  {
LABEL_9:
    v4 = sub_1004CF8FC(a1, a2);
    return sub_100429640(v4, v5, v6, v7);
  }

  if (a2 >= 4)
  {
    sub_100428B48("RoseControllerInterface::fwStateChangeCallback() unknown state: 0x%x", a2, a2);
    LODWORD(a2) = 4;
  }

  return sub_10042A46C(v2 + 152, a2);
}

uint64_t sub_100429640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    sub_1004CF984(a2, a2);
    goto LABEL_9;
  }

  if (!*(a1 + 208))
  {
LABEL_9:
    v8 = sub_1004CF95C(a1, a2);
    return sub_1004296C8(v8, v9);
  }

  if (a2 >= 0xB)
  {
    sub_100428B48("errorReportCallback: UnknownError: %d", a2, a2);
    LODWORD(a2) = 12;
  }

  return sub_100429820(a1 + 184, a2, a3, a4);
}

uint64_t sub_1004296C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    sub_100428B48("%s: rose not connected", a2, "reset");
    return 0;
  }

  v3 = (*(*v2 + 112))(v2, a2);
  if (v3)
  {
    sub_100428B48("RoseController reset failed: 0x%x", v4, v3);
    return 0;
  }

  return 1;
}

void sub_100429730(uint64_t a1, const void *a2, uint64_t a3)
{
  if (a2 && (a3 - 113) > 0xFFFFFFFFFFFFFF92)
  {
    __p = 0;
    v7 = 0;
    v8 = 0;
    sub_100009A48(&__p, a2, a2 + a3, a3);
    sub_100429880(a1 + 16, &__p, 0);
    if (__p)
    {
      v7 = __p;
      operator delete(__p);
    }
  }

  else
  {
    sub_100428B48("invalid event parameter (size: %zu)", a2, a3);
    if (*(a1 + 208))
    {

      sub_100429820(a1 + 184, 11, a2, a3);
    }
  }
}

void sub_100429804(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100429820(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v8 = a2;
  v6 = a4;
  v7 = a3;
  v4 = *(a1 + 24);
  if (!v4)
  {
    sub_100037B10();
  }

  return (*(*v4 + 48))(v4, &v8, &v7, &v6);
}

uint64_t sub_100429880(uint64_t a1, uint64_t a2, char a3)
{
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_100037B10();
  }

  return (*(*v3 + 48))(v3, a2, &v5);
}

uint64_t sub_1004298D4(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v3 = *(a1 + 8);
  if (!v3)
  {
    v7 = "driver interface not created";
LABEL_10:
    sub_100428B48(v7, a2);
    return 0;
  }

  if (((*(a1 + 72))(v3, &v9) & 1) == 0)
  {
    v7 = "creating RoseBooter failed";
    goto LABEL_10;
  }

  v4 = (*(a1 + 80))(v9);
  if (v4)
  {
    v6 = v4;
    if ((*(a1 + 112))(v9))
    {
      return v6;
    }

    goto LABEL_9;
  }

  sub_100428B48("rose preflight failed", v5);
  if (((*(a1 + 112))(v9) & 1) == 0)
  {
LABEL_9:
    v7 = "destroying RoseBooter failed";
    goto LABEL_10;
  }

  return 0;
}

uint64_t sub_100429988(uint64_t a1, _DWORD *a2)
{
  v12 = -1;
  v13 = -1;
  v11 = 0;
  v3 = *(a1 + 8);
  if (v3)
  {
    if ((*(a1 + 72))(v3, &v11))
    {
      v5 = (*(a1 + 88))(v11, &v13, &v12);
      v7 = v12;
      v8 = v13;
      a2[1] = v13;
      a2[2] = v7;
      *a2 = v5;
      if (v5)
      {
        sub_100428B48("rose boot failed: %d, driver state %d, status reg %d", v6, v5, v8, v7);
        if ((*(a1 + 112))(v11))
        {
          return 0;
        }
      }

      else if ((*(a1 + 112))(v11))
      {
        return 1;
      }

      v9 = "destroying RoseBooter failed";
    }

    else
    {
      v9 = "creating RoseBooter failed";
    }
  }

  else
  {
    v9 = "driver interface not created";
  }

  sub_100428B48(v9, a2);
  return 0;
}

BOOL sub_100429A64(uint64_t a1, uint64_t a2, _BYTE *a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v17 = 0;
  *a3 = 0;
  if (!*(a1 + 8))
  {
    v11 = "driver interface not created";
LABEL_12:
    sub_100428B48(v11, a2);
    return 0;
  }

  if ((a2 - 1) > 3)
  {
    v10 = 0;
  }

  else
  {
    v10 = dword_100572BA0[(a2 - 1)];
  }

  v16 = 0;
  if (((*(a1 + 72))() & 1) == 0)
  {
    v11 = "creating RoseBooter failed";
    goto LABEL_12;
  }

  v12 = (*(a1 + 96))(v17, v10, &v16, a4);
  *(a6 + 12) = v12;
  v14 = v12 == 0;
  if (v12)
  {
    sub_100428B48("send calibration failed: %d", v13, v12);
  }

  *a3 = ((v16 & 2) != 0) + (v16 & 1) + ((v16 & 4) != 0);
  if (((*(a1 + 112))(v17) & 1) == 0)
  {
    v11 = "destroying RoseBooter failed";
    goto LABEL_12;
  }

  return v14;
}

uint64_t sub_100429B7C(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 8))
  {
    v6 = "driver interface not created";
    goto LABEL_11;
  }

  if ((a2 - 1) >= 3)
  {
    v6 = "please select a single cal file to retrieve";
    goto LABEL_11;
  }

  v3 = dword_100572BB0[(a2 - 1)];
  if (((*(a1 + 72))() & 1) == 0)
  {
    v6 = "creating RoseBooter failed";
    goto LABEL_11;
  }

  v5 = (*(a1 + 104))(0, v3);
  if (!v5)
  {
    sub_100428B48("failed to get cal file", v4);
  }

  if (((*(a1 + 112))(0) & 1) == 0)
  {
    v6 = "destroying RoseBooter failed";
LABEL_11:
    sub_100428B48(v6, a2);
    return 0;
  }

  return v5;
}

uint64_t sub_100429C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  LOBYTE(v14) = 0;
  sub_100025100(&__p, 112, &v14);
  v14 = 0;
  v7 = *(a1 + 8);
  if (!v7)
  {
    sub_100428B48("%s: rose not connected", v6, "send");
    goto LABEL_10;
  }

  v8 = *v7;
  if ((a4 & 0x100000000) != 0)
  {
    v11 = (*(v8 + 472))();
    if (v11)
    {
      sub_100428B48("PerformCommandWithTimeout failed: 0x%x", v10, v11);
      goto LABEL_10;
    }
  }

  else
  {
    v9 = (*(v8 + 264))();
    if (v9)
    {
      sub_100428B48("PerformCommand failed: 0x%x", v10, v9);
LABEL_10:
      v12 = 0;
      goto LABEL_11;
    }
  }

  if (v14 - 113 <= 0xFFFFFFFFFFFFFF92)
  {
    sub_100428B48("invalid response (length: %zu)", v10, v14);
    goto LABEL_10;
  }

  if (v14 <= v16 - __p)
  {
    if (v14 < v16 - __p)
    {
      v16 = __p + v14;
    }
  }

  else
  {
    sub_100009838(&__p, v14 - (v16 - __p));
  }

  v12 = 1;
  sub_100429880(a1 + 16, &__p, 1);
LABEL_11:
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_100429DA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100429DC4(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 8))
  {
    v6 = "driver interface not created";
LABEL_29:
    sub_100428B48(v6, a2, v25);
    return 0;
  }

  if (!a2)
  {
    v6 = "invalid parameter";
    goto LABEL_29;
  }

  *a2 = 0;
  *(a2 + 16) = 0;
  *(a2 + 8) = 0;
  v4 = (*(**(a1 + 8) + 128))(*(a1 + 8), a2 + 8);
  if (v4)
  {
    sub_100428B48("get chip id failed: 0x%x", v5, v4);
    return 0;
  }

  v7 = (*(**(a1 + 8) + 136))(*(a1 + 8), a2 + 10);
  if (v7)
  {
    sub_100428B48("get board id failed: 0x%x", v8, v7);
    return 0;
  }

  v9 = (*(**(a1 + 8) + 144))(*(a1 + 8), a2);
  if (v9)
  {
    sub_100428B48("get ecid failed: 0x%x", v10, v9);
    return 0;
  }

  v11 = (*(**(a1 + 8) + 200))(*(a1 + 8), a2 + 12);
  if (v11)
  {
    sub_100428B48("get boot mode failed: 0x%x", v12, v11);
    return 0;
  }

  v13 = (*(**(a1 + 8) + 232))(*(a1 + 8), a2 + 17);
  v15 = *(a2 + 17);
  if (v13)
  {
    v16 = 1;
  }

  else
  {
    v16 = v15 >= 2;
  }

  if (v16)
  {
    sub_100428B48("get secure mode failed: 0x%08x secureMode: 0x%x", v14, v13, v15);
    return 0;
  }

  v17 = (*(**(a1 + 8) + 224))(*(a1 + 8), a2 + 16);
  v19 = *(a2 + 16);
  if (v17)
  {
    v20 = 1;
  }

  else
  {
    v20 = v19 >= 2;
  }

  if (v20)
  {
    sub_100428B48("get production mode failed: 0x%08x prodMode: 0x%02x", v18, v17, v19);
    return 0;
  }

  v21 = (*(**(a1 + 8) + 240))(*(a1 + 8), a2 + 18);
  if (v21)
  {
    sub_100428B48("get security domain failed: 0x%08x", v22, v21);
    return 0;
  }

  v23 = (*(**(a1 + 8) + 360))(*(a1 + 8), a2 + 20);
  if (v23)
  {
    v25 = v23;
    v6 = "get chip revision failed: 0x%08x";
    goto LABEL_29;
  }

  return 1;
}

uint64_t sub_100429F84(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    v5 = "driver interface not created";
LABEL_7:
    sub_100428B48(v5, a2);
    return 0;
  }

  if (!a2)
  {
    v5 = "invalid time dictionary";
    goto LABEL_7;
  }

  v3 = (*(*v2 + 216))(v2);
  if (!v3)
  {
    return 1;
  }

  sub_100428B48("perform timesync failed: 0x%x", v4, v3);
  return 0;
}

uint64_t sub_100429FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 8);
  if (!v6)
  {
    v11 = "driver interface not created";
LABEL_7:
    sub_100428B48(v11, a2);
    return 0;
  }

  if (!a6)
  {
    v11 = "Invalid arguments";
    goto LABEL_7;
  }

  v9 = (*(*v6 + 368))(v6, a2, a3, a4, a5);
  if (v9)
  {
    sub_100428B48("error while trying to dequeue FirwmareCrashLogs for core - %d: 0x%x", v10, a2, v9);
    return 0;
  }

  if (a3)
  {
    v13 = *(a3 + 13);
    if (v13 != a2)
    {
      sub_100428B48("Expecting a crash log for core: %d. But, got a crash log for core: %d", v10, a2, v13);
      return 0;
    }
  }

  return 1;
}

BOOL sub_10042A08C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v4 = (*(*v2 + 376))(v2);
    v6 = v4 == -536870160 || v4 == 0;
    if (v4 != -536870160 && v4 != 0)
    {
      sub_100428B48("error while trying to read the coredump information for core - %d: 0x%x", v5, a2, v4);
    }
  }

  else
  {
    sub_100428B48("driver interface not created", a2);
    return 0;
  }

  return v6;
}

uint64_t sub_10042A110(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    sub_100428B48("driver interface not created", a2);
    return 0;
  }

  v4 = (*(*v2 + 384))(v2);
  if (v4)
  {
    sub_100428B48("error while trying to read the coredump for core - %d: 0x%x", v5, a2, v4);
    return 0;
  }

  return 1;
}

uint64_t sub_10042A178(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    sub_100428B48("driver interface not created", a2);
    return 0;
  }

  v3 = (*(*v2 + 280))(v2, a2);
  if (v3)
  {
    sub_100428B48("error while trying to pause firmware logs: 0x%x", v4, v3);
    return 0;
  }

  return 1;
}

uint64_t sub_10042A1D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    sub_100428B48("driver interface not created", a2);
    return 0;
  }

  v3 = (*(*v2 + 296))(v2, a2);
  if (v3)
  {
    sub_100428B48("error while trying to resume firmware logs: 0x%x", v4, v3);
    return 0;
  }

  return 1;
}

uint64_t sub_10042A230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    v7 = "driver interface not created";
LABEL_9:
    sub_100428B48(v7, a2);
    return 0;
  }

  if (!a2 || !a3 || !a4)
  {
    v7 = "Invalid arguments";
    goto LABEL_9;
  }

  v5 = (*(*v4 + 288))(v4);
  if (!v5)
  {
    return 1;
  }

  sub_100428B48("error while trying to dequeue FirwmareCrashLogs: 0x%x", v6, v5);
  return 0;
}

void *sub_10042A2AC(void *a1, uint64_t a2)
{
  sub_10042ABD0(v4, a2);
  sub_10042AC68(v4, a1);
  sub_10042AA50(v4);
  return a1;
}

void *sub_10042A328(void *a1, uint64_t a2)
{
  sub_10042AECC(v4, a2);
  sub_10042AF64(v4, a1);
  sub_10042AAD0(v4);
  return a1;
}

void *sub_10042A3A4(void *a1, uint64_t a2)
{
  sub_10042B1C8(v4, a2);
  sub_10042B260(v4, a1);
  sub_10042AB50(v4);
  return a1;
}

uint64_t sub_10042A418(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100037B10();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_10042A46C(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100037B10();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_10042A4C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    sub_100428B48("driver interface not created", a2);
    return 0;
  }

  v3 = (*(*v2 + 352))(v2, a2);
  if (v3)
  {
    sub_100428B48("error while trying to trigger a crashlog: 0x%x", v4, v3);
    return 0;
  }

  return 1;
}

uint64_t sub_10042A51C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    v4 = "driver interface not created";
LABEL_7:
    sub_100428B48(v4, a2, v6);
    return 4;
  }

  v7 = 0;
  v3 = (*(*v2 + 312))(v2, &v7);
  if (!v3)
  {
    result = v7;
    if (v7 < 4u)
    {
      return result;
    }

    v6 = v7;
    v4 = "RoseControllerInterface::getFirmwareState() unknown state: 0x%x";
    goto LABEL_7;
  }

  sub_100428B48("error while trying to get the firmware state: 0x%x", a2, v3);
  return 4;
}

void sub_10042A594(id a1)
{
  v1 = IOServiceNameMatching("rose");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v1);
  if (!MatchingService)
  {
    v6 = "failed to find rose service";
LABEL_6:
    sub_100428B48(v6, v3);
    v5 = 0;
    goto LABEL_7;
  }

  CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"ECID", kCFAllocatorDefault, 0);
  if (!CFProperty)
  {
    v6 = "rose ECID property not found in registry";
    goto LABEL_6;
  }

  CFRelease(CFProperty);
  v5 = 1;
LABEL_7:
  byte_1009F91F1 = v5;
}

uint64_t sub_10042A628(uint64_t a1, _BYTE *a2)
{
  if ((sub_100428E90(a1) & 1) == 0)
  {
    sub_100005D28("couldn't load booter library, so we are answering to the best of our ability", v4, v5, v6, v7, v8, v9, v10, v22);
    LOBYTE(v20) = 0;
    goto LABEL_5;
  }

  v11 = (*(a1 + 56))();
  v12 = v11;
  sub_100005D28("fail forward state %d", v13, v14, v15, v16, v17, v18, v19, v11);
  if ((v12 - 1) <= 2)
  {
    v20 = 0x10001u >> (8 * (v12 - 1));
LABEL_5:
    *a2 = v20;
    return 1;
  }

  return 0;
}

uint64_t sub_10042A6B4(uint64_t a1)
{
  if (sub_100428E90(a1))
  {
    v9 = *(a1 + 64);

    return v9();
  }

  else
  {
    sub_100005D28("couldn't load booter library, so we are answering to the best of our ability", v2, v3, v4, v5, v6, v7, v8, v11);
    return 0;
  }
}

uint64_t sub_10042A70C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    sub_100428B48("driver interface not created", a2);
    return 0;
  }

  v3 = (*(*v2 + 440))(v2, a2);
  if (v3)
  {
    sub_100428B48("error while trying to deallocate firmware log cache: 0x%x", v4, v3);
    return 0;
  }

  sub_100005D28("successfully deallocated firmware log cache", v4, v5, v6, v7, v8, v9, v10, v12);
  return 1;
}

uint64_t sub_10042A774(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    sub_100428B48("driver interface not created", a2);
    return 0;
  }

  v3 = (*(*v2 + 416))(v2, a2);
  if (v3)
  {
    sub_100428B48("error while trying to SetPowerState : 0x%x", v4, v3);
    return 0;
  }

  return 1;
}

uint64_t sub_10042A7D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = a2;
    v4 = (*(*v2 + 464))(v2);
    if (!v4)
    {
      return 1;
    }

    if (v4 == -536870203)
    {
      v11 = "off";
      if (v3)
      {
        v11 = "on";
      }

      sub_100005D28("deep sleep state %s was requested, which was already the current state, so the request was a no-op", a2, v5, v6, v7, v8, v9, v10, v11);
      return 1;
    }

    v14 = v4;
    v13 = "error while trying to SetDeepSleepState : 0x%x";
  }

  else
  {
    v13 = "driver interface not created";
  }

  sub_100428B48(v13, a2, v14);
  return 0;
}

uint64_t sub_10042A870(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    v5 = "driver interface not created";
LABEL_7:
    sub_100428B48(v5, a2);
    return 0;
  }

  if (!a2)
  {
    v5 = "invalid time dictionary";
    goto LABEL_7;
  }

  v3 = (*(*v2 + 256))(v2);
  if (!v3)
  {
    return 1;
  }

  sub_100428B48("error getting debug info: 0x%x", v4, v3);
  return 0;
}

CFDataRef sub_10042A8DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = 0;
  v10 = 0;
  v3 = *(a1 + 8);
  if (!v3)
  {
    v7 = "driver interface not created";
LABEL_14:
    sub_100428B48(v7, a2, a3);
    return 0;
  }

  v4 = (*(*v3 + 448))(v3, kCFAllocatorDefault, &v10, &v9);
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = v10 == 0;
  }

  if (v5 || v9 == 0)
  {
    sub_100428B48("get sik public key failed: 0x%x, size %zu", v10, v9, v4, v9);
    return 0;
  }

  result = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, v10, v9, kCFAllocatorDefault);
  if (!result)
  {
    v7 = "failed to package sik public key";
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_10042A980(uint64_t a1)
{
  sub_100429514(a1);
  sub_10042AB50(a1 + 184);
  sub_10042AAD0(a1 + 152);
  sub_10042AA50(a1 + 120);
  sub_10042A9D0(a1 + 16);
  return a1;
}

uint64_t sub_10042A9D0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_10042AA50(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_10042AAD0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_10042AB50(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_10042ABD0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *sub_10042AC68(void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_10042AEC0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_100020444(a1);
}

uint64_t sub_10042AECC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *sub_10042AF64(void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_10042B1BC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_100020444(a1);
}

uint64_t sub_10042B1C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *sub_10042B260(void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_10042B4B8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_100020444(a1);
}

void sub_10042B4C4(uint64_t a1)
{
  __chkstk_darwin(a1);
  v3 = v2;
  v4 = 0;
  if (v1 <= 201)
  {
    if ((v1 - 122) >= 5 && (v1 - 24) >= 4)
    {
      goto LABEL_12;
    }

LABEL_11:
    v4 = 1;
    goto LABEL_12;
  }

  if (v1 != 999 && v1 != 997)
  {
    if (v1 != 202)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004CF9BC(v5);
  }

  v4 = 0;
LABEL_12:
  sub_100004A08(v1953, "US");
  sub_100004A08(v1947, "United States");
  sub_100004A08(v1949, "US");
  v1951 = 257;
  v1952 = 0;
  sub_100439B9C(v1955, v1953, v1947);
  sub_100004A08(v1945, "CA");
  sub_100004A08(v1939, "Canada");
  sub_100004A08(&v1941, "CA");
  v1943 = 257;
  v1944 = 0;
  sub_100439B9C(v1956, v1945, v1939);
  sub_100004A08(v1937, "MX");
  sub_100004A08(v1931, "Mexico");
  sub_100004A08(&v1933, "MX");
  v1935 = 257;
  v1936 = 0;
  sub_100439B9C(v1957, v1937, v1931);
  sub_100004A08(v1929, "SV");
  sub_100004A08(v1923, "El Salvador");
  sub_100004A08(&v1925, "SV");
  v1927 = 257;
  v1928 = 0;
  sub_100439B9C(v1958, v1929, v1923);
  sub_100004A08(v1921, "CO");
  sub_100004A08(v1915, "Colombia");
  sub_100004A08(&v1917, "CO");
  v1919 = 257;
  v1920 = 0;
  sub_100439B9C(v1959, v1921, v1915);
  sub_100004A08(v1913, "PR");
  sub_100004A08(v1907, "Puerto Rico");
  sub_100004A08(&v1909, "PR");
  v1911 = 257;
  v1912 = 0;
  sub_100439B9C(v1960, v1913, v1907);
  sub_100004A08(v1905, "CR");
  sub_100004A08(v1899, "Costa Rica");
  sub_100004A08(&v1901, "CR");
  v1903 = 257;
  v1904 = 0;
  sub_100439B9C(v1961, v1905, v1899);
  sub_100004A08(v1897, "EC");
  sub_100004A08(v1891, "Ecuador");
  sub_100004A08(&v1893, "EC");
  v1895 = 257;
  v1896 = 0;
  sub_100439B9C(v1962, v1897, v1891);
  sub_100004A08(v1889, "AR");
  sub_100004A08(v1883, "Argentina");
  sub_100004A08(&v1885, "AR");
  v1887 = 257;
  v1888 = 7;
  sub_100439B9C(v1963, v1889, v1883);
  sub_100004A08(v1881, "VI");
  sub_100004A08(v1875, "US Virgin Islands");
  sub_100004A08(&v1877, "VI");
  v1879 = 257;
  v1880 = 0;
  sub_100439B9C(v1964, v1881, v1875);
  sub_100004A08(v1873, "GT");
  sub_100004A08(v1867, "Guatemala");
  sub_100004A08(&v1869, "GT");
  v1871 = 257;
  v1872 = 0;
  sub_100439B9C(v1965, v1873, v1867);
  sub_100004A08(v1865, "BR");
  sub_100004A08(v1859, "Brazil");
  sub_100004A08(&v1861, "BR");
  v1863 = 257;
  v1864 = 0;
  sub_100439B9C(v1966, v1865, v1859);
  sub_100004A08(v1857, "UM");
  sub_100004A08(v1851, "United States Minor Outlying Islands");
  sub_100004A08(&v1853, "UM");
  v1855 = 257;
  v1856 = 0;
  sub_100439B9C(v1967, v1857, v1851);
  sub_100004A08(v1849, "JP");
  sub_100004A08(v1843, "Japan");
  sub_100004A08(&v1845, "JP");
  v1847 = 256;
  v1848 = 4;
  sub_100439B9C(v1968, v1849, v1843);
  sub_100004A08(v1841, "AT");
  sub_100004A08(v1835, "Austria");
  sub_100004A08(&v1837, "AT");
  v1839 = 257;
  v1840 = 1;
  sub_100439B9C(v1969, v1841, v1835);
  sub_100004A08(v1833, "BE");
  sub_100004A08(v1827, "Belgium");
  sub_100004A08(&v1829, "BE");
  v1831 = 257;
  v1832 = 1;
  sub_100439B9C(v1970, v1833, v1827);
  sub_100004A08(v1825, "BG");
  sub_100004A08(v1819, "Bulgaria");
  sub_100004A08(&v1821, "BG");
  v1823 = 257;
  v1824 = 1;
  sub_100439B9C(v1971, v1825, v1819);
  sub_100004A08(v1817, "CY");
  sub_100004A08(v1811, "Cyprus");
  sub_100004A08(&v1813, "CY");
  v1815 = 257;
  v1816 = 1;
  sub_100439B9C(v1972, v1817, v1811);
  sub_100004A08(v1809, "CZ");
  sub_100004A08(v1803, "Czech Republic");
  sub_100004A08(&v1805, "CZ");
  v1807 = 257;
  v1808 = 1;
  sub_100439B9C(v1973, v1809, v1803);
  sub_100004A08(v1801, "DK");
  sub_100004A08(v1795, "Denmark");
  sub_100004A08(&v1797, "DK");
  v1799 = 257;
  v1800 = 1;
  sub_100439B9C(v1974, v1801, v1795);
  sub_100004A08(v1793, "EE");
  sub_100004A08(v1787, "Estonia");
  sub_100004A08(&v1789, "EE");
  v1791 = 257;
  v1792 = 1;
  sub_100439B9C(v1975, v1793, v1787);
  sub_100004A08(v1785, "FR");
  sub_100004A08(v1779, "France");
  sub_100004A08(&v1781, "FR");
  v1783 = 257;
  v1784 = 1;
  sub_100439B9C(v1976, v1785, v1779);
  sub_100004A08(v1777, "FI");
  sub_100004A08(v1771, "Finland");
  sub_100004A08(&v1773, "FI");
  v1775 = 257;
  v1776 = 1;
  sub_100439B9C(v1977, v1777, v1771);
  sub_100004A08(v1769, "DE");
  sub_100004A08(v1763, "Germany");
  sub_100004A08(&v1765, "DE");
  v1767 = 257;
  v1768 = 1;
  sub_100439B9C(v1978, v1769, v1763);
  sub_100004A08(v1761, "GR");
  sub_100004A08(v1755, "Greece");
  sub_100004A08(&v1757, "GR");
  v1759 = 257;
  v1760 = 1;
  sub_100439B9C(v1979, v1761, v1755);
  sub_100004A08(v1753, "HU");
  sub_100004A08(v1747, "Hungary");
  sub_100004A08(&v1749, "HU");
  v1751 = 257;
  v1752 = 1;
  sub_100439B9C(v1980, v1753, v1747);
  sub_100004A08(v1745, "IS");
  sub_100004A08(v1739, "Iceland");
  sub_100004A08(&v1741, "IS");
  v1743 = 257;
  v1744 = 1;
  sub_100439B9C(v1981, v1745, v1739);
  sub_100004A08(v1737, "IT");
  sub_100004A08(v1731, "Italy");
  sub_100004A08(&v1733, "IT");
  v1735 = 257;
  v1736 = 1;
  sub_100439B9C(v1982, v1737, v1731);
  sub_100004A08(v1729, "IE");
  sub_100004A08(v1723, "Ireland");
  sub_100004A08(&v1725, "IE");
  v1727 = 257;
  v1728 = 1;
  sub_100439B9C(v1983, v1729, v1723);
  sub_100004A08(v1721, "LV");
  sub_100004A08(v1715, "Latvia");
  sub_100004A08(&v1717, "LV");
  v1719 = 257;
  v1720 = 1;
  sub_100439B9C(v1984, v1721, v1715);
  sub_100004A08(v1713, "LI");
  sub_100004A08(v1707, "Liechtenstein");
  sub_100004A08(&v1709, "LI");
  v1711 = 257;
  v1712 = 1;
  sub_100439B9C(v1985, v1713, v1707);
  sub_100004A08(v1705, "LT");
  sub_100004A08(v1699, "Lithuania");
  sub_100004A08(&v1701, "LT");
  v1703 = 257;
  v1704 = 1;
  sub_100439B9C(v1986, v1705, v1699);
  sub_100004A08(v1697, "LU");
  sub_100004A08(v1691, "Luxembourg");
  sub_100004A08(&v1693, "LU");
  v1695 = 257;
  v1696 = 1;
  sub_100439B9C(v1987, v1697, v1691);
  sub_100004A08(v1689, "MT");
  sub_100004A08(v1683, "Malta");
  sub_100004A08(&v1685, "MT");
  v1687 = 257;
  v1688 = 1;
  sub_100439B9C(v1988, v1689, v1683);
  sub_100004A08(v1681, "NL");
  sub_100004A08(v1675, "Netherlands");
  sub_100004A08(&v1677, "NL");
  v1679 = 257;
  v1680 = 1;
  sub_100439B9C(v1989, v1681, v1675);
  sub_100004A08(v1673, "NO");
  sub_100004A08(v1667, "Norway");
  sub_100004A08(&v1669, "NO");
  v1671 = 257;
  v1672 = 1;
  sub_100439B9C(v1990, v1673, v1667);
  sub_100004A08(v1665, "PL");
  sub_100004A08(v1659, "Poland");
  sub_100004A08(&v1661, "PL");
  v1663 = 257;
  v1664 = 1;
  sub_100439B9C(v1991, v1665, v1659);
  sub_100004A08(v1657, "PT");
  sub_100004A08(v1651, "Portugal");
  sub_100004A08(&v1653, "PT");
  v1655 = 257;
  v1656 = 1;
  sub_100439B9C(v1992, v1657, v1651);
  sub_100004A08(v1649, "RO");
  sub_100004A08(v1643, "Romania");
  sub_100004A08(&v1645, "RO");
  v1647 = 257;
  v1648 = 1;
  sub_100439B9C(v1993, v1649, v1643);
  sub_100004A08(v1641, "SK");
  sub_100004A08(v1635, "Slovak Republic");
  sub_100004A08(&v1637, "SK");
  v1639 = 257;
  v1640 = 1;
  sub_100439B9C(v1994, v1641, v1635);
  sub_100004A08(v1633, "SI");
  sub_100004A08(v1627, "Slovenia");
  sub_100004A08(&v1629, "SI");
  v1631 = 257;
  v1632 = 1;
  sub_100439B9C(v1995, v1633, v1627);
  sub_100004A08(v1625, "ES");
  sub_100004A08(v1619, "Spain");
  sub_100004A08(&v1621, "ES");
  v1623 = 257;
  v1624 = 1;
  sub_100439B9C(v1996, v1625, v1619);
  sub_100004A08(v1617, "SE");
  sub_100004A08(v1611, "Sweden");
  sub_100004A08(&v1613, "SE");
  v1615 = 257;
  v1616 = 1;
  sub_100439B9C(v1997, v1617, v1611);
  sub_100004A08(v1609, "CH");
  sub_100004A08(v1603, "Switzerland");
  sub_100004A08(&v1605, "CH");
  v1607 = 257;
  v1608 = 1;
  sub_100439B9C(v1998, v1609, v1603);
  sub_100004A08(v1601, "GB");
  sub_100004A08(v1595, "United Kingdom");
  sub_100004A08(&v1597, "GB");
  v1599 = 257;
  v1600 = 1;
  sub_100439B9C(v1999, v1601, v1595);
  sub_100004A08(v1593, "ZA");
  sub_100004A08(v1587, "South Africa");
  sub_100004A08(&v1589, "ZA");
  v1591 = 257;
  v1592 = 1;
  sub_100439B9C(v2000, v1593, v1587);
  sub_100004A08(v1585, "TR");
  sub_100004A08(v1579, "Turkey");
  sub_100004A08(&v1581, "TR");
  v1583 = 257;
  v1584 = 1;
  sub_100439B9C(v2001, v1585, v1579);
  sub_100004A08(v1577, "AE");
  sub_100004A08(v1571, "United Arab Emirates");
  sub_100004A08(&v1573, "AE");
  v1575 = 257;
  v1576 = 1;
  sub_100439B9C(v2002, v1577, v1571);
  sub_100004A08(v1569, "SA");
  sub_100004A08(v1563, "Saudi Arabia");
  sub_100004A08(&v1565, "SA");
  v1567 = 257;
  v1568 = 1;
  sub_100439B9C(v2003, v1569, v1563);
  sub_100004A08(v1561, "HR");
  sub_100004A08(v1555, "Croatia");
  sub_100004A08(&v1557, "HR");
  v1559 = 257;
  v1560 = 1;
  sub_100439B9C(v2004, v1561, v1555);
  sub_100004A08(v1553, "RS");
  sub_100004A08(v1547, "Serbia");
  sub_100004A08(&v1549, "RS");
  v1551 = 257;
  v1552 = 1;
  sub_100439B9C(v2005, v1553, v1547);
  sub_100004A08(v1545, "AU");
  sub_100004A08(v1539, "Australia");
  sub_100004A08(&v1541, "AU");
  v1543 = 257;
  v1544 = 1;
  sub_100439B9C(v2006, v1545, v1539);
  sub_100004A08(v1537, "HK");
  sub_100004A08(v1531, "Hong Kong");
  sub_100004A08(&v1533, "HK");
  v1535 = 257;
  v1536 = 1;
  sub_100439B9C(v2007, v1537, v1531);
  sub_100004A08(v1529, "NZ");
  sub_100004A08(v1523, "New Zealand");
  sub_100004A08(&v1525, "NZ");
  v1527 = 257;
  v1528 = 1;
  sub_100439B9C(v2008, v1529, v1523);
  sub_100004A08(v1521, "SG");
  sub_100004A08(v1515, "Singapore");
  sub_100004A08(&v1517, "SG");
  v1519 = 257;
  v1520 = 1;
  sub_100439B9C(v2009, v1521, v1515);
  sub_100004A08(v1513, "MY");
  sub_100004A08(v1507, "Malaysia");
  sub_100004A08(&v1509, "MY");
  v1511 = 257;
  v1512 = 1;
  sub_100439B9C(v2010, v1513, v1507);
  sub_100004A08(v1505, "VN");
  sub_100004A08(v1499, "Vietnam");
  sub_100004A08(&v1501, "VN");
  v1503 = 256;
  v1504 = 1;
  sub_100439B9C(v2011, v1505, v1499);
  sub_100004A08(v1497, "BN");
  sub_100004A08(v1491, "Brunei");
  sub_100004A08(&v1493, "BN");
  v1495 = 257;
  v1496 = 1;
  sub_100439B9C(v2012, v1497, v1491);
  sub_100004A08(v1489, "TH");
  sub_100004A08(v1483, "Thailand");
  sub_100004A08(&v1485, "TH");
  v1487 = 257;
  v1488 = 1;
  sub_100439B9C(v2013, v1489, v1483);
  sub_100004A08(v1481, "KH");
  sub_100004A08(v1475, "Cambodia");
  sub_100004A08(&v1477, "KH");
  v1479 = 257;
  v1480 = 1;
  sub_100439B9C(v2014, v1481, v1475);
  sub_100004A08(v1473, "LA");
  sub_100004A08(v1467, "Laos");
  sub_100004A08(&v1469, "LA");
  v1471 = 257;
  v1472 = 1;
  sub_100439B9C(v2015, v1473, v1467);
  sub_100004A08(v1465, "MM");
  sub_100004A08(v1459, "Myanmar");
  sub_100004A08(&v1461, "MM");
  v1463 = 257;
  v1464 = 1;
  sub_100439B9C(v2016, v1465, v1459);
  sub_100004A08(v1457, "CN");
  sub_100004A08(v1451, "China");
  sub_100004A08(&v1453, "CN");
  v1455 = 256;
  v1456 = 3;
  sub_100439B9C(v2017, v1457, v1451);
  sub_100004A08(v1449, "TW");
  sub_100004A08(v1443, "Taiwan");
  sub_100004A08(&v1445, "TW");
  v1447 = 257;
  v1448 = 2;
  sub_100439B9C(v2018, v1449, v1443);
  sub_100004A08(v1441, "PK");
  sub_100004A08(v1435, "Pakistan");
  sub_100004A08(&v1437, "PK");
  v1439 = 257;
  v1440 = 1;
  sub_100439B9C(v2019, v1441, v1435);
  sub_100004A08(v1433, "BD");
  sub_100004A08(v1427, "Bangladesh");
  sub_100004A08(&v1429, "BD");
  v1431 = 257;
  v1432 = 1;
  sub_100439B9C(v2020, v1433, v1427);
  sub_100004A08(v1425, "KR");
  sub_100004A08(v1419, "South Korea");
  sub_100004A08(&v1421, "KR");
  v1423 = 256;
  v1424 = 5;
  sub_100439B9C(v2021, v1425, v1419);
  sub_100004A08(v1417, "CL");
  sub_100004A08(v1411, "Chile");
  sub_100004A08(&v1413, "CL");
  v1415 = 257;
  v1416 = 0;
  sub_100439B9C(v2022, v1417, v1411);
  sub_100004A08(v1409, "PA");
  sub_100004A08(v1403, "Panama");
  sub_100004A08(&v1405, "PA");
  v1407 = 257;
  v1408 = 0;
  sub_100439B9C(v2023, v1409, v1403);
  sub_100004A08(v1401, "VE");
  sub_100004A08(v1395, "Venezuela");
  sub_100004A08(&v1397, "VE");
  v1399 = 257;
  v1400 = 0;
  sub_100439B9C(v2024, v1401, v1395);
  sub_100004A08(v1393, "UY");
  sub_100004A08(v1387, "Uruguay");
  sub_100004A08(&v1389, "UY");
  v1391 = 257;
  v1392 = 0;
  sub_100439B9C(v2025, v1393, v1387);
  sub_100004A08(v1385, "LK");
  sub_100004A08(v1379, "Sri Lanka");
  sub_100004A08(&v1381, "LK");
  v1383 = 257;
  v1384 = 1;
  sub_100439B9C(v2026, v1385, v1379);
  sub_100004A08(v1377, "MV");
  sub_100004A08(v1371, "Maldives");
  sub_100004A08(&v1373, "MV");
  v1375 = 257;
  v1376 = 1;
  sub_100439B9C(v2027, v1377, v1371);
  sub_100004A08(v1369, "AF");
  sub_100004A08(v1363, "Afghanistan");
  sub_100004A08(&v1365, "AF");
  v1367 = 257;
  v1368 = 1;
  sub_100439B9C(v2028, v1369, v1363);
  sub_100004A08(v1361, "MN");
  sub_100004A08(v1355, "Mongolia");
  sub_100004A08(&v1357, "MN");
  v1359 = 257;
  v1360 = 1;
  sub_100439B9C(v2029, v1361, v1355);
  sub_100004A08(v1353, "BT");
  sub_100004A08(v1347, "Bhutan");
  sub_100004A08(&v1349, "BT");
  v1351 = 257;
  v1352 = 1;
  sub_100439B9C(v2030, v1353, v1347);
  sub_100004A08(v1345, "MO");
  sub_100004A08(v1339, "Macau");
  sub_100004A08(&v1341, "MO");
  v1343 = 257;
  v1344 = 1;
  sub_100439B9C(v2031, v1345, v1339);
  sub_100004A08(v1337, "IN");
  sub_100004A08(v1331, "India");
  sub_100004A08(&v1333, "IN");
  v1335 = 257;
  v1336 = 1;
  sub_100439B9C(v2032, v1337, v1331);
  sub_100004A08(v1329, "PH");
  sub_100004A08(v1323, "Philippines");
  sub_100004A08(&v1325, "PH");
  v1327 = 257;
  v1328 = 1;
  sub_100439B9C(v2033, v1329, v1323);
  sub_100004A08(v1321, "PE");
  sub_100004A08(v1315, "Peru");
  sub_100004A08(&v1317, "PE");
  v1319 = 257;
  v1320 = 0;
  sub_100439B9C(v2034, v1321, v1315);
  sub_100004A08(v1313, "DO");
  sub_100004A08(v1307, "Dominican Republic");
  sub_100004A08(&v1309, "DO");
  v1311 = 257;
  v1312 = 0;
  sub_100439B9C(v2035, v1313, v1307);
  sub_100004A08(v1305, "GU");
  sub_100004A08(v1299, "Guam");
  sub_100004A08(&v1301, "GU");
  v1303 = 257;
  v1304 = 0;
  sub_100439B9C(v2036, v1305, v1299);
  sub_100004A08(v1297, "FJ");
  sub_100004A08(v1291, "Fiji");
  sub_100004A08(&v1293, "FJ");
  v1295 = 257;
  v1296 = 1;
  sub_100439B9C(v2037, v1297, v1291);
  sub_100004A08(v1289, "NC");
  sub_100004A08(v1283, "New Caledonia");
  sub_100004A08(&v1285, "NC");
  v1287 = 257;
  v1288 = 1;
  sub_100439B9C(v2038, v1289, v1283);
  sub_100004A08(v1281, "PG");
  sub_100004A08(v1275, "Papua New Guinea");
  sub_100004A08(&v1277, "PG");
  v1279 = 257;
  v1280 = 1;
  sub_100439B9C(v2039, v1281, v1275);
  sub_100004A08(v1273, "WS");
  sub_100004A08(v1267, "Samoa");
  sub_100004A08(&v1269, "WS");
  v1271 = 257;
  v1272 = 1;
  sub_100439B9C(v2040, v1273, v1267);
  sub_100004A08(v1265, "VU");
  sub_100004A08(v1259, "Vanuatu");
  sub_100004A08(&v1261, "VU");
  v1263 = 257;
  v1264 = 1;
  sub_100439B9C(v2041, v1265, v1259);
  sub_100004A08(v1257, "RU");
  sub_100004A08(v1251, "Russia");
  sub_100004A08(&v1253, "RU");
  v1255 = 0;
  v1256 = 6;
  sub_100439B9C(v2042, v1257, v1251);
  sub_100004A08(v1249, "IL");
  sub_100004A08(v1243, "Israel");
  sub_100004A08(&v1245, "IL");
  v1247 = 257;
  v1248 = 1;
  sub_100439B9C(v2043, v1249, v1243);
  sub_100004A08(v1241, "EG");
  sub_100004A08(v1235, "Egypt");
  sub_100004A08(&v1237, "EG");
  v1239 = 257;
  v1240 = 1;
  sub_100439B9C(v2044, v1241, v1235);
  sub_100004A08(v1233, "KW");
  sub_100004A08(v1227, "Kuwait");
  sub_100004A08(&v1229, "KW");
  v1231 = 257;
  v1232 = 1;
  sub_100439B9C(v2045, v1233, v1227);
  sub_100004A08(v1225, "MA");
  sub_100004A08(v1219, "Morocco");
  sub_100004A08(&v1221, "MA");
  v1223 = 257;
  v1224 = 1;
  sub_100439B9C(v2046, v1225, v1219);
  sub_100004A08(v1217, "UA");
  sub_100004A08(v1211, "Ukraine");
  sub_100004A08(&v1213, "UA");
  v1215 = 0;
  v1216 = 6;
  sub_100439B9C(v2047, v1217, v1211);
  sub_100004A08(v1209, "BY");
  sub_100004A08(v1203, "Belarus");
  sub_100004A08(&v1205, "BY");
  v1207 = 0;
  v1208 = 6;
  sub_100439B9C(v2048, v1209, v1203);
  sub_100004A08(v1201, "AZ");
  sub_100004A08(v1195, "Azerbaijan");
  sub_100004A08(&v1197, "AZ");
  v1199 = 0;
  v1200 = 6;
  sub_100439B9C(v2049, v1201, v1195);
  sub_100004A08(v1193, "KZ");
  sub_100004A08(v1187, "Kazakhstan");
  sub_100004A08(&v1189, "KZ");
  v1191 = 0;
  v1192 = 6;
  sub_100439B9C(v2050, v1193, v1187);
  sub_100004A08(v1185, "HN");
  sub_100004A08(v1179, "Honduras");
  sub_100004A08(&v1181, "HN");
  v1183 = 257;
  v1184 = 0;
  sub_100439B9C(v2051, v1185, v1179);
  sub_100004A08(v1177, "AI");
  sub_100004A08(v1171, "Anguilla");
  sub_100004A08(&v1173, "AI");
  v1175 = 257;
  v1176 = 0;
  sub_100439B9C(v2052, v1177, v1171);
  sub_100004A08(v1169, "AG");
  sub_100004A08(v1163, "Antigua/Barbuda");
  sub_100004A08(&v1165, "AG");
  v1167 = 257;
  v1168 = 0;
  sub_100439B9C(v2053, v1169, v1163);
  sub_100004A08(v1161, "AW");
  sub_100004A08(v1155, "Aruba");
  sub_100004A08(&v1157, "AW");
  v1159 = 257;
  v1160 = 0;
  sub_100439B9C(v2054, v1161, v1155);
  sub_100004A08(v1153, "BS");
  sub_100004A08(v1147, "Bahamas");
  sub_100004A08(&v1149, "BS");
  v1151 = 257;
  v1152 = 0;
  sub_100439B9C(v2055, v1153, v1147);
  sub_100004A08(v1145, "BB");
  sub_100004A08(v1139, "Barbados");
  sub_100004A08(&v1141, "BB");
  v1143 = 257;
  v1144 = 0;
  sub_100439B9C(v2056, v1145, v1139);
  sub_100004A08(v1137, "BM");
  sub_100004A08(v1131, "Bermuda");
  sub_100004A08(&v1133, "BM");
  v1135 = 257;
  v1136 = 0;
  sub_100439B9C(v2057, v1137, v1131);
  sub_100004A08(v1129, "VG");
  sub_100004A08(v1123, "British Virgin Islands");
  sub_100004A08(&v1125, "VG");
  v1127 = 257;
  v1128 = 0;
  sub_100439B9C(v2058, v1129, v1123);
  sub_100004A08(v1121, "KY");
  sub_100004A08(v1115, "Cayman Islands");
  sub_100004A08(&v1117, "KY");
  v1119 = 257;
  v1120 = 0;
  sub_100439B9C(v2059, v1121, v1115);
  sub_100004A08(v1113, "DM");
  sub_100004A08(v1107, "Dominica");
  sub_100004A08(&v1109, "DM");
  v1111 = 257;
  v1112 = 0;
  sub_100439B9C(v2060, v1113, v1107);
  sub_100004A08(v1105, "GD");
  sub_100004A08(v1099, "Grenada");
  sub_100004A08(&v1101, "GD");
  v1103 = 257;
  v1104 = 0;
  sub_100439B9C(v2061, v1105, v1099);
  sub_100004A08(v1097, "MS");
  sub_100004A08(v1091, "Montserrat");
  sub_100004A08(&v1093, "MS");
  v1095 = 257;
  v1096 = 0;
  sub_100439B9C(v2062, v1097, v1091);
  sub_100004A08(v1089, "NI");
  sub_100004A08(v1083, "Nicaragua");
  sub_100004A08(&v1085, "NI");
  v1087 = 257;
  v1088 = 0;
  sub_100439B9C(v2063, v1089, v1083);
  sub_100004A08(v1081, "KN");
  sub_100004A08(v1075, "St Kitts/Nevis");
  sub_100004A08(&v1077, "KN");
  v1079 = 257;
  v1080 = 0;
  sub_100439B9C(v2064, v1081, v1075);
  sub_100004A08(v1073, "LC");
  sub_100004A08(v1067, "St Lucia");
  sub_100004A08(&v1069, "LC");
  v1071 = 257;
  v1072 = 0;
  sub_100439B9C(v2065, v1073, v1067);
  sub_100004A08(v1065, "VC");
  sub_100004A08(v1059, "St Vincent/Grenadines");
  sub_100004A08(&v1061, "VC");
  v1063 = 257;
  v1064 = 0;
  sub_100439B9C(v2066, v1065, v1059);
  sub_100004A08(v1057, "TC");
  sub_100004A08(v1051, "Turks and Caicos");
  sub_100004A08(&v1053, "TC");
  v1055 = 257;
  v1056 = 0;
  sub_100439B9C(v2067, v1057, v1051);
  sub_100004A08(v1049, "BO");
  sub_100004A08(v1043, "Bolivia");
  sub_100004A08(&v1045, "BO");
  v1047 = 257;
  v1048 = 0;
  sub_100439B9C(v2068, v1049, v1043);
  sub_100004A08(v1041, "JM");
  sub_100004A08(v1035, "Jamaica");
  sub_100004A08(&v1037, "JM");
  v1039 = 257;
  v1040 = 0;
  sub_100439B9C(v2069, v1041, v1035);
  sub_100004A08(v1033, "PY");
  sub_100004A08(v1027, "Paraguay");
  sub_100004A08(&v1029, "PY");
  v1031 = 257;
  v1032 = 0;
  sub_100439B9C(v2070, v1033, v1027);
  sub_100004A08(v1025, "TT");
  sub_100004A08(v1019, "Trinidad/Tobago");
  sub_100004A08(&v1021, "TT");
  v1023 = 257;
  v1024 = 0;
  sub_100439B9C(v2071, v1025, v1019);
  sub_100004A08(v1017, "AL");
  sub_100004A08(v1011, "Albania");
  sub_100004A08(&v1013, "AL");
  v1015 = 257;
  v1016 = 1;
  sub_100439B9C(v2072, v1017, v1011);
  sub_100004A08(v1009, "DZ");
  sub_100004A08(v1003, "Algeria");
  sub_100004A08(&v1005, "DZ");
  v1007 = 257;
  v1008 = 1;
  sub_100439B9C(v2073, v1009, v1003);
  sub_100004A08(v1001, "AO");
  sub_100004A08(v995, "Angola");
  sub_100004A08(&v997, "AO");
  v999 = 257;
  v1000 = 1;
  sub_100439B9C(v2074, v1001, v995);
  sub_100004A08(v993, "AM");
  sub_100004A08(v987, "Armenia");
  sub_100004A08(&v989, "AM");
  v991 = 0;
  v992 = 6;
  sub_100439B9C(v2075, v993, v987);
  sub_100004A08(v985, "BJ");
  sub_100004A08(v979, "Benin");
  sub_100004A08(&v981, "BJ");
  v983 = 257;
  v984 = 1;
  sub_100439B9C(v2076, v985, v979);
  sub_100004A08(v977, "BA");
  sub_100004A08(v971, "Bosina & Herzegovina");
  sub_100004A08(&v973, "BA");
  v975 = 257;
  v976 = 1;
  sub_100439B9C(v2077, v977, v971);
  sub_100004A08(v969, "BI");
  sub_100004A08(v963, "Burundi");
  sub_100004A08(&v965, "BI");
  v967 = 257;
  v968 = 1;
  sub_100439B9C(v2078, v969, v963);
  sub_100004A08(v961, "BF");
  sub_100004A08(v955, "Burkina Faso");
  sub_100004A08(&v957, "BF");
  v959 = 257;
  v960 = 1;
  sub_100439B9C(v2079, v961, v955);
  sub_100004A08(v953, "CF");
  sub_100004A08(v947, "Central Africa Republic");
  sub_100004A08(&v949, "CF");
  v951 = 257;
  v952 = 1;
  sub_100439B9C(v2080, v953, v947);
  sub_100004A08(v945, "TD");
  sub_100004A08(v939, "Chad");
  sub_100004A08(&v941, "TD");
  v943 = 257;
  v944 = 1;
  sub_100439B9C(v2081, v945, v939);
  sub_100004A08(v937, "CD");
  sub_100004A08(v931, "Congo (Brazzaville)");
  sub_100004A08(&v933, "CD");
  v935 = 257;
  v936 = 1;
  sub_100439B9C(v2082, v937, v931);
  sub_100004A08(v929, "CG");
  sub_100004A08(v923, "Democratic Republic of Congo");
  sub_100004A08(&v925, "CG");
  v927 = 257;
  v928 = 1;
  sub_100439B9C(v2083, v929, v923);
  sub_100004A08(v921, "GQ");
  sub_100004A08(v915, "Equatorial Guinea");
  sub_100004A08(&v917, "GQ");
  v919 = 257;
  v920 = 1;
  sub_100439B9C(v2084, v921, v915);
  sub_100004A08(v913, "ET");
  sub_100004A08(v907, "Ethiopia");
  sub_100004A08(&v909, "ET");
  v911 = 257;
  v912 = 1;
  sub_100439B9C(v2085, v913, v907);
  sub_100004A08(v905, "PF");
  sub_100004A08(v899, "French Polynesia");
  sub_100004A08(&v901, "PF");
  v903 = 257;
  v904 = 1;
  sub_100439B9C(v2086, v905, v899);
  sub_100004A08(v897, "GA");
  sub_100004A08(v891, "Gabon");
  sub_100004A08(&v893, "GA");
  v895 = 257;
  v896 = 1;
  sub_100439B9C(v2087, v897, v891);
  sub_100004A08(v889, "GM");
  sub_100004A08(v883, "Gambia");
  sub_100004A08(&v885, "GM");
  v887 = 257;
  v888 = 1;
  sub_100439B9C(v2088, v889, v883);
  sub_100004A08(v881, "GH");
  sub_100004A08(v875, "Ghana");
  sub_100004A08(&v877, "GH");
  v879 = 257;
  v880 = 1;
  sub_100439B9C(v2089, v881, v875);
  sub_100004A08(v873, "GI");
  sub_100004A08(v867, "Gibraltar");
  sub_100004A08(&v869, "GI");
  v871 = 257;
  v872 = 1;
  sub_100439B9C(v2090, v873, v867);
  sub_100004A08(v865, "GL");
  sub_100004A08(v859, "Greenland");
  sub_100004A08(&v861, "GL");
  v863 = 257;
  v864 = 1;
  sub_100439B9C(v2091, v865, v859);
  sub_100004A08(v857, "GP");
  sub_100004A08(v851, "Guadeloupe");
  sub_100004A08(&v853, "GP");
  v855 = 257;
  v856 = 1;
  sub_100439B9C(v2092, v857, v851);
  sub_100004A08(v849, "GW");
  sub_100004A08(v843, "Guinea Bissau");
  sub_100004A08(&v845, "GW");
  v847 = 257;
  v848 = 1;
  sub_100439B9C(v2093, v849, v843);
  sub_100004A08(v841, "GN");
  sub_100004A08(v835, "Guinea Conakry");
  sub_100004A08(&v837, "GN");
  v839 = 257;
  v840 = 1;
  sub_100439B9C(v2094, v841, v835);
  sub_100004A08(v833, "IQ");
  sub_100004A08(v827, "Iraq");
  sub_100004A08(&v829, "IQ");
  v831 = 257;
  v832 = 1;
  sub_100439B9C(v2095, v833, v827);
  sub_100004A08(v825, "CI");
  sub_100004A08(v819, "Ivory Coast");
  sub_100004A08(&v821, "CI");
  v823 = 257;
  v824 = 1;
  sub_100439B9C(v2096, v825, v819);
  sub_100004A08(v817, "KE");
  sub_100004A08(v811, "Kenya");
  sub_100004A08(&v813, "KE");
  v815 = 257;
  v816 = 1;
  sub_100439B9C(v2097, v817, v811);
  sub_100004A08(v809, "KG");
  sub_100004A08(v803, "Kyrgzstan");
  sub_100004A08(&v805, "KG");
  v807 = 0;
  v808 = 6;
  sub_100439B9C(v2098, v809, v803);
  sub_100004A08(v801, "LB");
  sub_100004A08(v795, "Lebanon");
  sub_100004A08(&v797, "LB");
  v799 = 257;
  v800 = 1;
  sub_100439B9C(v2099, v801, v795);
  sub_100004A08(v793, "LS");
  sub_100004A08(v787, "Lesotho");
  sub_100004A08(&v789, "LS");
  v791 = 257;
  v792 = 1;
  sub_100439B9C(v2100, v793, v787);
  sub_100004A08(v785, "LR");
  sub_100004A08(v779, "Liberia");
  sub_100004A08(&v781, "LR");
  v783 = 257;
  v784 = 1;
  sub_100439B9C(v2101, v785, v779);
  sub_100004A08(v777, "LY");
  sub_100004A08(v771, "Libya");
  sub_100004A08(&v773, "LY");
  v775 = 257;
  v776 = 1;
  sub_100439B9C(v2102, v777, v771);
  sub_100004A08(v769, "MK");
  sub_100004A08(v763, "Macedonia");
  sub_100004A08(&v765, "MK");
  v767 = 257;
  v768 = 1;
  sub_100439B9C(v2103, v769, v763);
  sub_100004A08(v761, "MG");
  sub_100004A08(v755, "Madagascar");
  sub_100004A08(&v757, "MG");
  v759 = 257;
  v760 = 1;
  sub_100439B9C(v2104, v761, v755);
  sub_100004A08(v753, "ML");
  sub_100004A08(v747, "Mali");
  sub_100004A08(&v749, "ML");
  v751 = 257;
  v752 = 1;
  sub_100439B9C(v2105, v753, v747);
  sub_100004A08(v745, "MQ");
  sub_100004A08(v739, "Martinique");
  sub_100004A08(&v741, "MQ");
  v743 = 257;
  v744 = 1;
  sub_100439B9C(v2106, v745, v739);
  sub_100004A08(v737, "MU");
  sub_100004A08(v731, "Mauritius");
  sub_100004A08(&v733, "MU");
  v735 = 257;
  v736 = 1;
  sub_100439B9C(v2107, v737, v731);
  sub_100004A08(v729, "MD");
  sub_100004A08(v723, "Moldova");
  sub_100004A08(&v725, "MD");
  v727 = 257;
  v728 = 1;
  sub_100439B9C(v2108, v729, v723);
  sub_100004A08(v721, "MC");
  sub_100004A08(v715, "Monaco");
  sub_100004A08(&v717, "MC");
  v719 = 257;
  v720 = 1;
  sub_100439B9C(v2109, v721, v715);
  sub_100004A08(v713, "ME");
  sub_100004A08(v707, "Montenegro");
  sub_100004A08(&v709, "ME");
  v711 = 257;
  v712 = 1;
  sub_100439B9C(v2110, v713, v707);
  sub_100004A08(v705, "MZ");
  sub_100004A08(v699, "Mozambique");
  sub_100004A08(&v701, "MZ");
  v703 = 257;
  v704 = 1;
  sub_100439B9C(v2111, v705, v699);
  sub_100004A08(v697, "NA");
  sub_100004A08(v691, "Namibia");
  sub_100004A08(&v693, "NA");
  v695 = 257;
  v696 = 1;
  sub_100439B9C(v2112, v697, v691);
  sub_100004A08(v689, "NE");
  sub_100004A08(v683, "Niger");
  sub_100004A08(&v685, "NE");
  v687 = 257;
  v688 = 1;
  sub_100439B9C(v2113, v689, v683);
  sub_100004A08(v681, "OM");
  sub_100004A08(v675, "Oman");
  sub_100004A08(&v677, "OM");
  v679 = 257;
  v680 = 1;
  sub_100439B9C(v2114, v681, v675);
  sub_100004A08(v673, "RE");
  sub_100004A08(v667, "Reunion");
  sub_100004A08(&v669, "RE");
  v671 = 257;
  v672 = 1;
  sub_100439B9C(v2115, v673, v667);
  sub_100004A08(v665, "SN");
  sub_100004A08(v659, "Senegal");
  sub_100004A08(&v661, "SN");
  v663 = 257;
  v664 = 1;
  sub_100439B9C(v2116, v665, v659);
  sub_100004A08(v657, "TZ");
  sub_100004A08(v651, "Tanzania");
  sub_100004A08(&v653, "TZ");
  v655 = 257;
  v656 = 1;
  sub_100439B9C(v2117, v657, v651);
  sub_100004A08(v649, "TG");
  sub_100004A08(v643, "Togo");
  sub_100004A08(&v645, "TG");
  v647 = 257;
  v648 = 1;
  sub_100439B9C(v2118, v649, v643);
  sub_100004A08(v641, "TN");
  sub_100004A08(v635, "Tunisia");
  sub_100004A08(&v637, "TN");
  v639 = 257;
  v640 = 1;
  sub_100439B9C(v2119, v641, v635);
  sub_100004A08(v633, "UG");
  sub_100004A08(v627, "Uganda");
  sub_100004A08(&v629, "UG");
  v631 = 257;
  v632 = 1;
  sub_100439B9C(v2120, v633, v627);
  sub_100004A08(v625, "UZ");
  sub_100004A08(v619, "Uzbekistan");
  sub_100004A08(&v621, "UZ");
  v623 = 0;
  v624 = 6;
  sub_100439B9C(v2121, v625, v619);
  sub_100004A08(v617, "ZM");
  sub_100004A08(v611, "Zambia");
  sub_100004A08(&v613, "ZM");
  v615 = 257;
  v616 = 1;
  sub_100439B9C(v2122, v617, v611);
  sub_100004A08(v609, "ZW");
  sub_100004A08(v603, "Zimbabwe");
  sub_100004A08(&v605, "ZW");
  v607 = 257;
  v608 = 1;
  sub_100439B9C(v2123, v609, v603);
  sub_100004A08(v601, "GE");
  sub_100004A08(v595, "Georgia");
  sub_100004A08(&v597, "GE");
  v599 = 257;
  v600 = 1;
  sub_100439B9C(v2124, v601, v595);
  sub_100004A08(v593, "MW");
  sub_100004A08(v587, "Malawi");
  sub_100004A08(&v589, "MW");
  v591 = 257;
  v592 = 1;
  sub_100439B9C(v2125, v593, v587);
  sub_100004A08(v585, "RW");
  sub_100004A08(v579, "Rwanda");
  sub_100004A08(&v581, "RW");
  v583 = 257;
  v584 = 1;
  sub_100439B9C(v2126, v585, v579);
  sub_100004A08(v577, "SC");
  sub_100004A08(v571, "Seychelles");
  sub_100004A08(&v573, "SC");
  v575 = 257;
  v576 = 1;
  sub_100439B9C(v2127, v577, v571);
  sub_100004A08(v569, "SZ");
  sub_100004A08(v563, "Swaziland");
  sub_100004A08(&v565, "SZ");
  v567 = 257;
  v568 = 1;
  sub_100439B9C(v2128, v569, v563);
  sub_100004A08(v561, "QA");
  sub_100004A08(v555, "Qatar");
  sub_100004A08(&v557, "QA");
  v559 = 257;
  v560 = 1;
  sub_100439B9C(v2129, v561, v555);
  sub_100004A08(v553, "JO");
  sub_100004A08(v547, "Jordan");
  sub_100004A08(&v549, "JO");
  v551 = 257;
  v552 = 1;
  sub_100439B9C(v2130, v553, v547);
  sub_100004A08(v545, "BH");
  sub_100004A08(v539, "Bahrain");
  sub_100004A08(&v541, "BH");
  v543 = 257;
  v544 = 1;
  sub_100439B9C(v2131, v545, v539);
  sub_100004A08(v537, "AD");
  sub_100004A08(v531, "ANDORRA (all EIRP locales)");
  sub_100004A08(&v533, "AD");
  v535 = 257;
  v536 = 1;
  sub_100439B9C(v2132, v537, v531);
  sub_100004A08(v529, "CW");
  sub_100004A08(v523, "CURACAO");
  sub_100004A08(&v525, "CW");
  v527 = 257;
  v528 = 0;
  sub_100439B9C(v2133, v529, v523);
  sub_100004A08(v521, "BZ");
  sub_100004A08(v515, "BELIZE");
  sub_100004A08(&v517, "BZ");
  v519 = 257;
  v520 = 0;
  sub_100439B9C(v2134, v521, v515);
  sub_100004A08(v513, "CC");
  sub_100004A08(v507, "COCOS (KEELING) ISLANDS");
  sub_100004A08(&v509, "CC");
  v511 = 257;
  v512 = 1;
  sub_100439B9C(v2135, v513, v507);
  sub_100004A08(v505, "CK");
  sub_100004A08(v499, "COOK ISLANDS");
  sub_100004A08(&v501, "CK");
  v503 = 257;
  v504 = 1;
  sub_100439B9C(v2136, v505, v499);
  sub_100004A08(v497, "CM");
  sub_100004A08(v491, "CAMEROON");
  sub_100004A08(&v493, "CM");
  v495 = 257;
  v496 = 1;
  sub_100439B9C(v2137, v497, v491);
  sub_100004A08(v489, "CV");
  sub_100004A08(v483, "CAPE VERDE");
  sub_100004A08(&v485, "CV");
  v487 = 257;
  v488 = 1;
  sub_100439B9C(v2138, v489, v483);
  sub_100004A08(v481, "CX");
  sub_100004A08(v475, "CHRISTMAS ISLAND");
  sub_100004A08(&v477, "CX");
  v479 = 257;
  v480 = 1;
  sub_100439B9C(v2139, v481, v475);
  sub_100004A08(v473, "FM");
  sub_100004A08(v467, "MICRONESIA. FEDERATED STATES OF");
  sub_100004A08(&v469, "FM");
  v471 = 257;
  v472 = 1;
  sub_100439B9C(v2140, v473, v467);
  sub_100004A08(v465, "GF");
  sub_100004A08(v459, "FRENCH GUIANA");
  sub_100004A08(&v461, "GF");
  v463 = 257;
  v464 = 0;
  sub_100439B9C(v2141, v465, v459);
  sub_100004A08(v457, "GG");
  sub_100004A08(v451, "Guernsey (All EIRP Locales)");
  sub_100004A08(&v453, "GG");
  v455 = 257;
  v456 = 1;
  sub_100439B9C(v2142, v457, v451);
  sub_100004A08(v449, "HM");
  sub_100004A08(v443, "HEARD ISLAND AND MCDONALD ISLANDS");
  sub_100004A08(&v445, "HM");
  v447 = 257;
  v448 = 1;
  sub_100439B9C(v2143, v449, v443);
  sub_100004A08(v441, "HT");
  sub_100004A08(v435, "HAITI");
  sub_100004A08(&v437, "HT");
  v439 = 257;
  v440 = 0;
  sub_100439B9C(v2144, v441, v435);
  sub_100004A08(v433, "IO");
  sub_100004A08(v427, "BRITISH INDIAN OCEAN TERRITORY");
  sub_100004A08(&v429, "IO");
  v431 = 257;
  v432 = 1;
  sub_100439B9C(v2145, v433, v427);
  sub_100004A08(v425, "MF");
  sub_100004A08(v419, "Saint Martin (North of Island)");
  sub_100004A08(&v421, "MF");
  v423 = 257;
  v424 = 0;
  sub_100439B9C(v2146, v425, v419);
  sub_100004A08(v417, "MH");
  sub_100004A08(v411, "MARSHALL ISLANDS");
  sub_100004A08(&v413, "MH");
  v415 = 257;
  v416 = 1;
  sub_100439B9C(v2147, v417, v411);
  sub_100004A08(v409, "MR");
  sub_100004A08(v403, "MAURITANIA");
  sub_100004A08(&v405, "MR");
  v407 = 257;
  v408 = 1;
  sub_100439B9C(v2148, v409, v403);
  sub_100004A08(v401, "NG");
  sub_100004A08(v395, "NIGERIA");
  sub_100004A08(&v397, "NG");
  v399 = 257;
  v400 = 1;
  sub_100439B9C(v2149, v401, v395);
  sub_100004A08(v393, "NR");
  sub_100004A08(v387, "NAURU");
  sub_100004A08(&v389, "NR");
  v391 = 257;
  v392 = 1;
  sub_100439B9C(v2150, v393, v387);
  sub_100004A08(v385, "NU");
  sub_100004A08(v379, "NIUE");
  sub_100004A08(&v381, "NU");
  v383 = 257;
  v384 = 1;
  sub_100439B9C(v2151, v385, v379);
  sub_100004A08(v377, "PN");
  sub_100004A08(v371, "PITCAIRN");
  sub_100004A08(&v373, "PN");
  v375 = 257;
  v376 = 1;
  sub_100439B9C(v2152, v377, v371);
  sub_100004A08(v369, "PW");
  sub_100004A08(v363, "PALAU ");
  sub_100004A08(&v365, "PW");
  v367 = 257;
  v368 = 0;
  sub_100439B9C(v2153, v369, v363);
  sub_100004A08(v361, "SB");
  sub_100004A08(v355, "SOLOMON ISLANDS");
  sub_100004A08(&v357, "SB");
  v359 = 257;
  v360 = 1;
  sub_100439B9C(v2154, v361, v355);
  sub_100004A08(v353, "SL");
  sub_100004A08(v347, "SIERRA LEONE");
  sub_100004A08(&v349, "SL");
  v351 = 257;
  v352 = 1;
  sub_100439B9C(v2155, v353, v347);
  sub_100004A08(v345, "SR");
  sub_100004A08(v339, "SURINAME");
  sub_100004A08(&v341, "SR");
  v343 = 257;
  v344 = 0;
  sub_100439B9C(v2156, v345, v339);
  sub_100004A08(v337, "ST");
  sub_100004A08(v331, "SAO TOME AND PRINCIPE");
  sub_100004A08(&v333, "ST");
  v335 = 257;
  v336 = 1;
  sub_100439B9C(v2157, v337, v331);
  sub_100004A08(v329, "TF");
  sub_100004A08(v323, "FRENCH SOUTHERN TERRITORIES");
  sub_100004A08(&v325, "TF");
  v327 = 257;
  v328 = 1;
  sub_100439B9C(v2158, v329, v323);
  sub_100004A08(v321, "TK");
  sub_100004A08(v315, "TOKELAU");
  sub_100004A08(&v317, "TK");
  v319 = 257;
  v320 = 1;
  sub_100439B9C(v2159, v321, v315);
  sub_100004A08(v313, "TM");
  sub_100004A08(v307, "TURKMENISTAN");
  sub_100004A08(&v309, "TM");
  v311 = 0;
  v312 = 6;
  sub_100439B9C(v2160, v313, v307);
  sub_100004A08(v305, "TO");
  sub_100004A08(v299, "TONGA");
  sub_100004A08(&v301, "TO");
  v303 = 257;
  v304 = 1;
  sub_100439B9C(v2161, v305, v299);
  sub_100004A08(v297, "TV");
  sub_100004A08(v291, "TUVALU");
  sub_100004A08(&v293, "TV");
  v295 = 257;
  v296 = 1;
  sub_100439B9C(v2162, v297, v291);
  sub_100004A08(v289, "VA");
  sub_100004A08(v283, "HOLY SEE (VATICAN CITY STATE)");
  sub_100004A08(&v285, "VA");
  v287 = 257;
  v288 = 1;
  sub_100439B9C(v2163, v289, v283);
  sub_100004A08(v281, "WF");
  sub_100004A08(v275, "WALLIS AND FUTUNA");
  sub_100004A08(&v277, "WF");
  v279 = 257;
  v280 = 1;
  sub_100439B9C(v2164, v281, v275);
  sub_100004A08(v273, "YE");
  sub_100004A08(v267, "YEMEN");
  sub_100004A08(&v269, "YE");
  v271 = 257;
  v272 = 1;
  sub_100439B9C(v2165, v273, v267);
  sub_100004A08(v265, "YT");
  sub_100004A08(v259, "MAYOTTE");
  sub_100004A08(&v261, "YT");
  v263 = 257;
  v264 = 1;
  sub_100439B9C(v2166, v265, v259);
  sub_100004A08(v257, "ER");
  sub_100004A08(v251, "ERITREA");
  sub_100004A08(&v253, "ER");
  v255 = 257;
  v256 = 1;
  sub_100439B9C(v2167, v257, v251);
  sub_100004A08(v249, "FO");
  sub_100004A08(v243, "FAROE ISLANDS");
  sub_100004A08(&v245, "FO");
  v247 = 257;
  v248 = 1;
  sub_100439B9C(v2168, v249, v243);
  sub_100004A08(v241, "SO");
  sub_100004A08(v235, "SOMALIA");
  sub_100004A08(&v237, "SO");
  v239 = 257;
  v240 = 1;
  sub_100439B9C(v2169, v241, v235);
  sub_100004A08(v233, "BQ");
  sub_100004A08(v227, "BES");
  sub_100004A08(&v229, "BQ");
  v231 = 257;
  v232 = 0;
  sub_100439B9C(v2170, v233, v227);
  sub_100004A08(v225, "GY");
  sub_100004A08(v219, "Guyana");
  sub_100004A08(&v221, "GY");
  v223 = 257;
  v224 = 0;
  sub_100439B9C(v2171, v225, v219);
  sub_100004A08(v217, "AS");
  sub_100004A08(v211, "America Samoa");
  sub_100004A08(&v213, "AS");
  v215 = 257;
  v216 = 0;
  sub_100439B9C(v2172, v217, v211);
  sub_100004A08(v209, "BW");
  sub_100004A08(v203, "Botswana");
  sub_100004A08(&v205, "BW");
  v207 = 257;
  v208 = 1;
  sub_100439B9C(v2173, v209, v203);
  sub_100004A08(v201, "XK");
  sub_100004A08(v195, "Kosovo");
  sub_100004A08(&v197, "XK");
  v199 = 257;
  v200 = 1;
  sub_100439B9C(v2174, v201, v195);
  sub_100004A08(v193, "PS");
  sub_100004A08(v187, "Palestine");
  sub_100004A08(&v189, "PS");
  v191 = 257;
  v192 = 1;
  sub_100439B9C(v2175, v193, v187);
  sub_100004A08(v185, "TJ");
  sub_100004A08(v179, "Tajikistan");
  sub_100004A08(&v181, "TJ");
  v183 = 0;
  v184 = 6;
  sub_100439B9C(v2176, v185, v179);
  sub_100004A08(v177, "SD");
  sub_100004A08(v171, "SUDAN");
  sub_100004A08(&v173, "SD");
  v175 = 257;
  v176 = 1;
  sub_100439B9C(v2177, v177, v171);
  sub_100004A08(v169, "IM");
  sub_100004A08(v163, "Isle of MAN");
  sub_100004A08(&v165, "IM");
  v167 = 257;
  v168 = 1;
  sub_100439B9C(v2178, v169, v163);
  sub_100004A08(v161, "TL");
  sub_100004A08(v155, "East Timor");
  sub_100004A08(&v157, "TL");
  v159 = 257;
  v160 = 1;
  sub_100439B9C(v2179, v161, v155);
  sub_100004A08(v153, "DJ");
  sub_100004A08(v147, "Djibouti ");
  sub_100004A08(&v149, "DJ");
  v151 = 257;
  v152 = 1;
  sub_100439B9C(v2180, v153, v147);
  sub_100004A08(v145, "FK");
  sub_100004A08(v139, "Falkland Islands");
  sub_100004A08(&v141, "FK");
  v143 = 257;
  v144 = 1;
  sub_100439B9C(v2181, v145, v139);
  sub_100004A08(v137, "KI");
  sub_100004A08(v131, "Kiribati");
  sub_100004A08(&v133, "KI");
  v135 = 257;
  v136 = 1;
  sub_100439B9C(v2182, v137, v131);
  sub_100004A08(v129, "KM");
  sub_100004A08(v123, "Comoros ");
  sub_100004A08(&v125, "KM");
  v127 = 257;
  v128 = 1;
  sub_100439B9C(v2183, v129, v123);
  sub_100004A08(v121, "PM");
  sub_100004A08(v115, "St. Pierre & Miquelon");
  sub_100004A08(&v117, "PM");
  v119 = 257;
  v120 = 1;
  sub_100439B9C(v2184, v121, v115);
  sub_100004A08(v113, "SM");
  sub_100004A08(v107, "San Marino");
  sub_100004A08(&v109, "SM");
  v111 = 257;
  v112 = 1;
  sub_100439B9C(v2185, v113, v107);
  sub_100004A08(v105, "MP");
  sub_100004A08(v99, "Northern Mariana Islands");
  sub_100004A08(&v101, "MP");
  v103 = 257;
  v104 = 0;
  sub_100439B9C(v2186, v105, v99);
  sub_100004A08(v97, "A2");
  sub_100004A08(v91, "French West Indies");
  sub_100004A08(&v93, "A2");
  v95 = 257;
  v96 = 1;
  sub_100439B9C(v2187, v97, v91);
  sub_100004A08(v89, "ID");
  sub_100004A08(v82, "Indonesia");
  sub_100004A08(&v84, "ID");
  v86 = v4;
  v87 = v4;
  v88 = 1;
  sub_100439B9C(v2188, v89, v82);
  sub_100004A08(v80, "NP");
  sub_100004A08(v73, "Nepal");
  sub_100004A08(&v75, "NP");
  v77 = v4;
  v78 = v4;
  v79 = 1;
  sub_100439B9C(v2189, v80, v73);
  sub_100004A08(v71, off_1009EC3F0[0]);
  sub_100004A08(v65, "Shared MCC");
  sub_100004A08(&v67, off_1009EC3F0[0]);
  v69 = 0;
  v70 = 0;
  sub_100439B9C(v2190, v71, v65);
  sub_100004A08(v63, off_1009EC410[0]);
  sub_100004A08(v57, "JPSS");
  sub_100004A08(&v59, off_1009EC410[0]);
  v61 = 0;
  v62 = 4;
  sub_100439B9C(v2191, v63, v57);
  sub_100004A08(v55, off_1009EC418[0]);
  sub_100004A08(v49, "USCW");
  sub_100004A08(&v51, off_1009EC418[0]);
  v53 = 0;
  v54 = 0;
  sub_100439B9C(v2192, v55, v49);
  sub_100004A08(v47, off_1009EC420[0]);
  sub_100004A08(v41, "GridRestricted");
  sub_100004A08(&v43, off_1009EC420[0]);
  v45 = 0;
  v46 = 0;
  sub_100439B9C(v2193, v47, v41);
  sub_100004A08(v39, off_1009EC438[0]);
  sub_100004A08(v33, "BACKOFF");
  sub_100004A08(&v35, off_1009EC438[0]);
  v37 = 0;
  v38 = 0;
  sub_100439B9C(v2194, v39, v33);
  sub_100004A08(v31, off_1009EC3F8[0]);
  sub_100004A08(v25, "TEST5");
  sub_100004A08(&v27, off_1009EC3F8[0]);
  v29 = 1;
  v30 = 0;
  sub_100439B9C(v2195, v31, v25);
  sub_100004A08(v23, off_1009EC408[0]);
  sub_100004A08(v17, "ApFakeCountry");
  sub_100004A08(&v19, off_1009EC408[0]);
  v21 = 0;
  v22 = 0;
  sub_100439B9C(v2196, v23, v17);
  sub_100004A08(v15, off_1009EC400[0]);
  sub_100004A08(v9, "kUnknownCountry");
  sub_100004A08(&__p, off_1009EC400[0]);
  v13 = 0;
  v14 = 0;
  sub_100439B9C(v2197, v15, v9);
  sub_10043A0A8(v3, v1955, 243);
  v6 = 2430;
  v7 = 19431;
  do
  {
    v8 = &v1955[v6];
    if (*(v1955 + v7) < 0)
    {
      operator delete(*(v8 - 4));
    }

    if (*(v1953 + v7) < 0)
    {
      operator delete(*(v8 - 7));
    }

    if (*(&v1949[1] + v7) < 0)
    {
      operator delete(*(v8 - 10));
    }

    v7 -= 80;
    v6 -= 10;
  }

  while (v6 * 8);
  if (v12 < 0)
  {
    operator delete(__p);
  }

  if (v10 < 0)
  {
    operator delete(v9[0]);
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  if (v20 < 0)
  {
    operator delete(v19);
  }

  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  if (v24 < 0)
  {
    operator delete(v23[0]);
  }

  if (v28 < 0)
  {
    operator delete(v27);
  }

  if (v26 < 0)
  {
    operator delete(v25[0]);
  }

  if (v32 < 0)
  {
    operator delete(v31[0]);
  }

  if (v36 < 0)
  {
    operator delete(v35);
  }

  if (v34 < 0)
  {
    operator delete(v33[0]);
  }

  if (v40 < 0)
  {
    operator delete(v39[0]);
  }

  if (v44 < 0)
  {
    operator delete(v43);
  }

  if (v42 < 0)
  {
    operator delete(v41[0]);
  }

  if (v48 < 0)
  {
    operator delete(v47[0]);
  }

  if (v52 < 0)
  {
    operator delete(v51);
  }

  if (v50 < 0)
  {
    operator delete(v49[0]);
  }

  if (v56 < 0)
  {
    operator delete(v55[0]);
  }

  if (v60 < 0)
  {
    operator delete(v59);
  }

  if (v58 < 0)
  {
    operator delete(v57[0]);
  }

  if (v64 < 0)
  {
    operator delete(v63[0]);
  }

  if (v68 < 0)
  {
    operator delete(v67);
  }

  if (v66 < 0)
  {
    operator delete(v65[0]);
  }

  if (v72 < 0)
  {
    operator delete(v71[0]);
  }

  if (v76 < 0)
  {
    operator delete(v75);
  }

  if (v74 < 0)
  {
    operator delete(v73[0]);
  }

  if (v81 < 0)
  {
    operator delete(v80[0]);
  }

  if (v85 < 0)
  {
    operator delete(v84);
  }

  if (v83 < 0)
  {
    operator delete(v82[0]);
  }

  if (v90 < 0)
  {
    operator delete(v89[0]);
  }

  if (v94 < 0)
  {
    operator delete(v93);
  }

  if (v92 < 0)
  {
    operator delete(v91[0]);
  }

  if (v98 < 0)
  {
    operator delete(v97[0]);
  }

  if (v102 < 0)
  {
    operator delete(v101);
  }

  if (v100 < 0)
  {
    operator delete(v99[0]);
  }

  if (v106 < 0)
  {
    operator delete(v105[0]);
  }

  if (v110 < 0)
  {
    operator delete(v109);
  }

  if (v108 < 0)
  {
    operator delete(v107[0]);
  }

  if (v114 < 0)
  {
    operator delete(v113[0]);
  }

  if (v118 < 0)
  {
    operator delete(v117);
  }

  if (v116 < 0)
  {
    operator delete(v115[0]);
  }

  if (v122 < 0)
  {
    operator delete(v121[0]);
  }

  if (v126 < 0)
  {
    operator delete(v125);
  }

  if (v124 < 0)
  {
    operator delete(v123[0]);
  }

  if (v130 < 0)
  {
    operator delete(v129[0]);
  }

  if (v134 < 0)
  {
    operator delete(v133);
  }

  if (v132 < 0)
  {
    operator delete(v131[0]);
  }

  if (v138 < 0)
  {
    operator delete(v137[0]);
  }

  if (v142 < 0)
  {
    operator delete(v141);
  }

  if (v140 < 0)
  {
    operator delete(v139[0]);
  }

  if (v146 < 0)
  {
    operator delete(v145[0]);
  }

  if (v150 < 0)
  {
    operator delete(v149);
  }

  if (v148 < 0)
  {
    operator delete(v147[0]);
  }

  if (v154 < 0)
  {
    operator delete(v153[0]);
  }

  if (v158 < 0)
  {
    operator delete(v157);
  }

  if (v156 < 0)
  {
    operator delete(v155[0]);
  }

  if (v162 < 0)
  {
    operator delete(v161[0]);
  }

  if (v166 < 0)
  {
    operator delete(v165);
  }

  if (v164 < 0)
  {
    operator delete(v163[0]);
  }

  if (v170 < 0)
  {
    operator delete(v169[0]);
  }

  if (v174 < 0)
  {
    operator delete(v173);
  }

  if (v172 < 0)
  {
    operator delete(v171[0]);
  }

  if (v178 < 0)
  {
    operator delete(v177[0]);
  }

  if (v182 < 0)
  {
    operator delete(v181);
  }

  if (v180 < 0)
  {
    operator delete(v179[0]);
  }

  if (v186 < 0)
  {
    operator delete(v185[0]);
  }

  if (v190 < 0)
  {
    operator delete(v189);
  }

  if (v188 < 0)
  {
    operator delete(v187[0]);
  }

  if (v194 < 0)
  {
    operator delete(v193[0]);
  }

  if (v198 < 0)
  {
    operator delete(v197);
  }

  if (v196 < 0)
  {
    operator delete(v195[0]);
  }

  if (v202 < 0)
  {
    operator delete(v201[0]);
  }

  if (v206 < 0)
  {
    operator delete(v205);
  }

  if (v204 < 0)
  {
    operator delete(v203[0]);
  }

  if (v210 < 0)
  {
    operator delete(v209[0]);
  }

  if (v214 < 0)
  {
    operator delete(v213);
  }

  if (v212 < 0)
  {
    operator delete(v211[0]);
  }

  if (v218 < 0)
  {
    operator delete(v217[0]);
  }

  if (v222 < 0)
  {
    operator delete(v221);
  }

  if (v220 < 0)
  {
    operator delete(v219[0]);
  }

  if (v226 < 0)
  {
    operator delete(v225[0]);
  }

  if (v230 < 0)
  {
    operator delete(v229);
  }

  if (v228 < 0)
  {
    operator delete(v227[0]);
  }

  if (v234 < 0)
  {
    operator delete(v233[0]);
  }

  if (v238 < 0)
  {
    operator delete(v237);
  }

  if (v236 < 0)
  {
    operator delete(v235[0]);
  }

  if (v242 < 0)
  {
    operator delete(v241[0]);
  }

  if (v246 < 0)
  {
    operator delete(v245);
  }

  if (v244 < 0)
  {
    operator delete(v243[0]);
  }

  if (v250 < 0)
  {
    operator delete(v249[0]);
  }

  if (v254 < 0)
  {
    operator delete(v253);
  }

  if (v252 < 0)
  {
    operator delete(v251[0]);
  }

  if (v258 < 0)
  {
    operator delete(v257[0]);
  }

  if (v262 < 0)
  {
    operator delete(v261);
  }

  if (v260 < 0)
  {
    operator delete(v259[0]);
  }

  if (v266 < 0)
  {
    operator delete(v265[0]);
  }

  if (v270 < 0)
  {
    operator delete(v269);
  }

  if (v268 < 0)
  {
    operator delete(v267[0]);
  }

  if (v274 < 0)
  {
    operator delete(v273[0]);
  }

  if (v278 < 0)
  {
    operator delete(v277);
  }

  if (v276 < 0)
  {
    operator delete(v275[0]);
  }

  if (v282 < 0)
  {
    operator delete(v281[0]);
  }

  if (v286 < 0)
  {
    operator delete(v285);
  }

  if (v284 < 0)
  {
    operator delete(v283[0]);
  }

  if (v290 < 0)
  {
    operator delete(v289[0]);
  }

  if (v294 < 0)
  {
    operator delete(v293);
  }

  if (v292 < 0)
  {
    operator delete(v291[0]);
  }

  if (v298 < 0)
  {
    operator delete(v297[0]);
  }

  if (v302 < 0)
  {
    operator delete(v301);
  }

  if (v300 < 0)
  {
    operator delete(v299[0]);
  }

  if (v306 < 0)
  {
    operator delete(v305[0]);
  }

  if (v310 < 0)
  {
    operator delete(v309);
  }

  if (v308 < 0)
  {
    operator delete(v307[0]);
  }

  if (v314 < 0)
  {
    operator delete(v313[0]);
  }

  if (v318 < 0)
  {
    operator delete(v317);
  }

  if (v316 < 0)
  {
    operator delete(v315[0]);
  }

  if (v322 < 0)
  {
    operator delete(v321[0]);
  }

  if (v326 < 0)
  {
    operator delete(v325);
  }

  if (v324 < 0)
  {
    operator delete(v323[0]);
  }

  if (v330 < 0)
  {
    operator delete(v329[0]);
  }

  if (v334 < 0)
  {
    operator delete(v333);
  }

  if (v332 < 0)
  {
    operator delete(v331[0]);
  }

  if (v338 < 0)
  {
    operator delete(v337[0]);
  }

  if (v342 < 0)
  {
    operator delete(v341);
  }

  if (v340 < 0)
  {
    operator delete(v339[0]);
  }

  if (v346 < 0)
  {
    operator delete(v345[0]);
  }

  if (v350 < 0)
  {
    operator delete(v349);
  }

  if (v348 < 0)
  {
    operator delete(v347[0]);
  }

  if (v354 < 0)
  {
    operator delete(v353[0]);
  }

  if (v358 < 0)
  {
    operator delete(v357);
  }

  if (v356 < 0)
  {
    operator delete(v355[0]);
  }

  if (v362 < 0)
  {
    operator delete(v361[0]);
  }

  if (v366 < 0)
  {
    operator delete(v365);
  }

  if (v364 < 0)
  {
    operator delete(v363[0]);
  }

  if (v370 < 0)
  {
    operator delete(v369[0]);
  }

  if (v374 < 0)
  {
    operator delete(v373);
  }

  if (v372 < 0)
  {
    operator delete(v371[0]);
  }

  if (v378 < 0)
  {
    operator delete(v377[0]);
  }

  if (v382 < 0)
  {
    operator delete(v381);
  }

  if (v380 < 0)
  {
    operator delete(v379[0]);
  }

  if (v386 < 0)
  {
    operator delete(v385[0]);
  }

  if (v390 < 0)
  {
    operator delete(v389);
  }

  if (v388 < 0)
  {
    operator delete(v387[0]);
  }

  if (v394 < 0)
  {
    operator delete(v393[0]);
  }

  if (v398 < 0)
  {
    operator delete(v397);
  }

  if (v396 < 0)
  {
    operator delete(v395[0]);
  }

  if (v402 < 0)
  {
    operator delete(v401[0]);
  }

  if (v406 < 0)
  {
    operator delete(v405);
  }

  if (v404 < 0)
  {
    operator delete(v403[0]);
  }

  if (v410 < 0)
  {
    operator delete(v409[0]);
  }

  if (v414 < 0)
  {
    operator delete(v413);
  }

  if (v412 < 0)
  {
    operator delete(v411[0]);
  }

  if (v418 < 0)
  {
    operator delete(v417[0]);
  }

  if (v422 < 0)
  {
    operator delete(v421);
  }

  if (v420 < 0)
  {
    operator delete(v419[0]);
  }

  if (v426 < 0)
  {
    operator delete(v425[0]);
  }

  if (v430 < 0)
  {
    operator delete(v429);
  }

  if (v428 < 0)
  {
    operator delete(v427[0]);
  }

  if (v434 < 0)
  {
    operator delete(v433[0]);
  }

  if (v438 < 0)
  {
    operator delete(v437);
  }

  if (v436 < 0)
  {
    operator delete(v435[0]);
  }

  if (v442 < 0)
  {
    operator delete(v441[0]);
  }

  if (v446 < 0)
  {
    operator delete(v445);
  }

  if (v444 < 0)
  {
    operator delete(v443[0]);
  }

  if (v450 < 0)
  {
    operator delete(v449[0]);
  }

  if (v454 < 0)
  {
    operator delete(v453);
  }

  if (v452 < 0)
  {
    operator delete(v451[0]);
  }

  if (v458 < 0)
  {
    operator delete(v457[0]);
  }

  if (v462 < 0)
  {
    operator delete(v461);
  }

  if (v460 < 0)
  {
    operator delete(v459[0]);
  }

  if (v466 < 0)
  {
    operator delete(v465[0]);
  }

  if (v470 < 0)
  {
    operator delete(v469);
  }

  if (v468 < 0)
  {
    operator delete(v467[0]);
  }

  if (v474 < 0)
  {
    operator delete(v473[0]);
  }

  if (v478 < 0)
  {
    operator delete(v477);
  }

  if (v476 < 0)
  {
    operator delete(v475[0]);
  }

  if (v482 < 0)
  {
    operator delete(v481[0]);
  }

  if (v486 < 0)
  {
    operator delete(v485);
  }

  if (v484 < 0)
  {
    operator delete(v483[0]);
  }

  if (v490 < 0)
  {
    operator delete(v489[0]);
  }

  if (v494 < 0)
  {
    operator delete(v493);
  }

  if (v492 < 0)
  {
    operator delete(v491[0]);
  }

  if (v498 < 0)
  {
    operator delete(v497[0]);
  }

  if (v502 < 0)
  {
    operator delete(v501);
  }

  if (v500 < 0)
  {
    operator delete(v499[0]);
  }

  if (v506 < 0)
  {
    operator delete(v505[0]);
  }

  if (v510 < 0)
  {
    operator delete(v509);
  }

  if (v508 < 0)
  {
    operator delete(v507[0]);
  }

  if (v514 < 0)
  {
    operator delete(v513[0]);
  }

  if (v518 < 0)
  {
    operator delete(v517);
  }

  if (v516 < 0)
  {
    operator delete(v515[0]);
  }

  if (v522 < 0)
  {
    operator delete(v521[0]);
  }

  if (v526 < 0)
  {
    operator delete(v525);
  }

  if (v524 < 0)
  {
    operator delete(v523[0]);
  }

  if (v530 < 0)
  {
    operator delete(v529[0]);
  }

  if (v534 < 0)
  {
    operator delete(v533);
  }

  if (v532 < 0)
  {
    operator delete(v531[0]);
  }

  if (v538 < 0)
  {
    operator delete(v537[0]);
  }

  if (v542 < 0)
  {
    operator delete(v541);
  }

  if (v540 < 0)
  {
    operator delete(v539[0]);
  }

  if (v546 < 0)
  {
    operator delete(v545[0]);
  }

  if (v550 < 0)
  {
    operator delete(v549);
  }

  if (v548 < 0)
  {
    operator delete(v547[0]);
  }

  if (v554 < 0)
  {
    operator delete(v553[0]);
  }

  if (v558 < 0)
  {
    operator delete(v557);
  }

  if (v556 < 0)
  {
    operator delete(v555[0]);
  }

  if (v562 < 0)
  {
    operator delete(v561[0]);
  }

  if (v566 < 0)
  {
    operator delete(v565);
  }

  if (v564 < 0)
  {
    operator delete(v563[0]);
  }

  if (v570 < 0)
  {
    operator delete(v569[0]);
  }

  if (v574 < 0)
  {
    operator delete(v573);
  }

  if (v572 < 0)
  {
    operator delete(v571[0]);
  }

  if (v578 < 0)
  {
    operator delete(v577[0]);
  }

  if (v582 < 0)
  {
    operator delete(v581);
  }

  if (v580 < 0)
  {
    operator delete(v579[0]);
  }

  if (v586 < 0)
  {
    operator delete(v585[0]);
  }

  if (v590 < 0)
  {
    operator delete(v589);
  }

  if (v588 < 0)
  {
    operator delete(v587[0]);
  }

  if (v594 < 0)
  {
    operator delete(v593[0]);
  }

  if (v598 < 0)
  {
    operator delete(v597);
  }

  if (v596 < 0)
  {
    operator delete(v595[0]);
  }

  if (v602 < 0)
  {
    operator delete(v601[0]);
  }

  if (v606 < 0)
  {
    operator delete(v605);
  }

  if (v604 < 0)
  {
    operator delete(v603[0]);
  }

  if (v610 < 0)
  {
    operator delete(v609[0]);
  }

  if (v614 < 0)
  {
    operator delete(v613);
  }

  if (v612 < 0)
  {
    operator delete(v611[0]);
  }

  if (v618 < 0)
  {
    operator delete(v617[0]);
  }

  if (v622 < 0)
  {
    operator delete(v621);
  }

  if (v620 < 0)
  {
    operator delete(v619[0]);
  }

  if (v626 < 0)
  {
    operator delete(v625[0]);
  }

  if (v630 < 0)
  {
    operator delete(v629);
  }

  if (v628 < 0)
  {
    operator delete(v627[0]);
  }

  if (v634 < 0)
  {
    operator delete(v633[0]);
  }

  if (v638 < 0)
  {
    operator delete(v637);
  }

  if (v636 < 0)
  {
    operator delete(v635[0]);
  }

  if (v642 < 0)
  {
    operator delete(v641[0]);
  }

  if (v646 < 0)
  {
    operator delete(v645);
  }

  if (v644 < 0)
  {
    operator delete(v643[0]);
  }

  if (v650 < 0)
  {
    operator delete(v649[0]);
  }

  if (v654 < 0)
  {
    operator delete(v653);
  }

  if (v652 < 0)
  {
    operator delete(v651[0]);
  }

  if (v658 < 0)
  {
    operator delete(v657[0]);
  }

  if (v662 < 0)
  {
    operator delete(v661);
  }

  if (v660 < 0)
  {
    operator delete(v659[0]);
  }

  if (v666 < 0)
  {
    operator delete(v665[0]);
  }

  if (v670 < 0)
  {
    operator delete(v669);
  }

  if (v668 < 0)
  {
    operator delete(v667[0]);
  }

  if (v674 < 0)
  {
    operator delete(v673[0]);
  }

  if (v678 < 0)
  {
    operator delete(v677);
  }

  if (v676 < 0)
  {
    operator delete(v675[0]);
  }

  if (v682 < 0)
  {
    operator delete(v681[0]);
  }

  if (v686 < 0)
  {
    operator delete(v685);
  }

  if (v684 < 0)
  {
    operator delete(v683[0]);
  }

  if (v690 < 0)
  {
    operator delete(v689[0]);
  }

  if (v694 < 0)
  {
    operator delete(v693);
  }

  if (v692 < 0)
  {
    operator delete(v691[0]);
  }

  if (v698 < 0)
  {
    operator delete(v697[0]);
  }

  if (v702 < 0)
  {
    operator delete(v701);
  }

  if (v700 < 0)
  {
    operator delete(v699[0]);
  }

  if (v706 < 0)
  {
    operator delete(v705[0]);
  }

  if (v710 < 0)
  {
    operator delete(v709);
  }

  if (v708 < 0)
  {
    operator delete(v707[0]);
  }

  if (v714 < 0)
  {
    operator delete(v713[0]);
  }

  if (v718 < 0)
  {
    operator delete(v717);
  }

  if (v716 < 0)
  {
    operator delete(v715[0]);
  }

  if (v722 < 0)
  {
    operator delete(v721[0]);
  }

  if (v726 < 0)
  {
    operator delete(v725);
  }

  if (v724 < 0)
  {
    operator delete(v723[0]);
  }

  if (v730 < 0)
  {
    operator delete(v729[0]);
  }

  if (v734 < 0)
  {
    operator delete(v733);
  }

  if (v732 < 0)
  {
    operator delete(v731[0]);
  }

  if (v738 < 0)
  {
    operator delete(v737[0]);
  }

  if (v742 < 0)
  {
    operator delete(v741);
  }

  if (v740 < 0)
  {
    operator delete(v739[0]);
  }

  if (v746 < 0)
  {
    operator delete(v745[0]);
  }

  if (v750 < 0)
  {
    operator delete(v749);
  }

  if (v748 < 0)
  {
    operator delete(v747[0]);
  }

  if (v754 < 0)
  {
    operator delete(v753[0]);
  }

  if (v758 < 0)
  {
    operator delete(v757);
  }

  if (v756 < 0)
  {
    operator delete(v755[0]);
  }

  if (v762 < 0)
  {
    operator delete(v761[0]);
  }

  if (v766 < 0)
  {
    operator delete(v765);
  }

  if (v764 < 0)
  {
    operator delete(v763[0]);
  }

  if (v770 < 0)
  {
    operator delete(v769[0]);
  }

  if (v774 < 0)
  {
    operator delete(v773);
  }

  if (v772 < 0)
  {
    operator delete(v771[0]);
  }

  if (v778 < 0)
  {
    operator delete(v777[0]);
  }

  if (v782 < 0)
  {
    operator delete(v781);
  }

  if (v780 < 0)
  {
    operator delete(v779[0]);
  }

  if (v786 < 0)
  {
    operator delete(v785[0]);
  }

  if (v790 < 0)
  {
    operator delete(v789);
  }

  if (v788 < 0)
  {
    operator delete(v787[0]);
  }

  if (v794 < 0)
  {
    operator delete(v793[0]);
  }

  if (v798 < 0)
  {
    operator delete(v797);
  }

  if (v796 < 0)
  {
    operator delete(v795[0]);
  }

  if (v802 < 0)
  {
    operator delete(v801[0]);
  }

  if (v806 < 0)
  {
    operator delete(v805);
  }

  if (v804 < 0)
  {
    operator delete(v803[0]);
  }

  if (v810 < 0)
  {
    operator delete(v809[0]);
  }

  if (v814 < 0)
  {
    operator delete(v813);
  }

  if (v812 < 0)
  {
    operator delete(v811[0]);
  }

  if (v818 < 0)
  {
    operator delete(v817[0]);
  }

  if (v822 < 0)
  {
    operator delete(v821);
  }

  if (v820 < 0)
  {
    operator delete(v819[0]);
  }

  if (v826 < 0)
  {
    operator delete(v825[0]);
  }

  if (v830 < 0)
  {
    operator delete(v829);
  }

  if (v828 < 0)
  {
    operator delete(v827[0]);
  }

  if (v834 < 0)
  {
    operator delete(v833[0]);
  }

  if (v838 < 0)
  {
    operator delete(v837);
  }

  if (v836 < 0)
  {
    operator delete(v835[0]);
  }

  if (v842 < 0)
  {
    operator delete(v841[0]);
  }

  if (v846 < 0)
  {
    operator delete(v845);
  }

  if (v844 < 0)
  {
    operator delete(v843[0]);
  }

  if (v850 < 0)
  {
    operator delete(v849[0]);
  }

  if (v854 < 0)
  {
    operator delete(v853);
  }

  if (v852 < 0)
  {
    operator delete(v851[0]);
  }

  if (v858 < 0)
  {
    operator delete(v857[0]);
  }

  if (v862 < 0)
  {
    operator delete(v861);
  }

  if (v860 < 0)
  {
    operator delete(v859[0]);
  }

  if (v866 < 0)
  {
    operator delete(v865[0]);
  }

  if (v870 < 0)
  {
    operator delete(v869);
  }

  if (v868 < 0)
  {
    operator delete(v867[0]);
  }

  if (v874 < 0)
  {
    operator delete(v873[0]);
  }

  if (v878 < 0)
  {
    operator delete(v877);
  }

  if (v876 < 0)
  {
    operator delete(v875[0]);
  }

  if (v882 < 0)
  {
    operator delete(v881[0]);
  }

  if (v886 < 0)
  {
    operator delete(v885);
  }

  if (v884 < 0)
  {
    operator delete(v883[0]);
  }

  if (v890 < 0)
  {
    operator delete(v889[0]);
  }

  if (v894 < 0)
  {
    operator delete(v893);
  }

  if (v892 < 0)
  {
    operator delete(v891[0]);
  }

  if (v898 < 0)
  {
    operator delete(v897[0]);
  }

  if (v902 < 0)
  {
    operator delete(v901);
  }

  if (v900 < 0)
  {
    operator delete(v899[0]);
  }

  if (v906 < 0)
  {
    operator delete(v905[0]);
  }

  if (v910 < 0)
  {
    operator delete(v909);
  }

  if (v908 < 0)
  {
    operator delete(v907[0]);
  }

  if (v914 < 0)
  {
    operator delete(v913[0]);
  }

  if (v918 < 0)
  {
    operator delete(v917);
  }

  if (v916 < 0)
  {
    operator delete(v915[0]);
  }

  if (v922 < 0)
  {
    operator delete(v921[0]);
  }

  if (v926 < 0)
  {
    operator delete(v925);
  }

  if (v924 < 0)
  {
    operator delete(v923[0]);
  }

  if (v930 < 0)
  {
    operator delete(v929[0]);
  }

  if (v934 < 0)
  {
    operator delete(v933);
  }

  if (v932 < 0)
  {
    operator delete(v931[0]);
  }

  if (v938 < 0)
  {
    operator delete(v937[0]);
  }

  if (v942 < 0)
  {
    operator delete(v941);
  }

  if (v940 < 0)
  {
    operator delete(v939[0]);
  }

  if (v946 < 0)
  {
    operator delete(v945[0]);
  }

  if (v950 < 0)
  {
    operator delete(v949);
  }

  if (v948 < 0)
  {
    operator delete(v947[0]);
  }

  if (v954 < 0)
  {
    operator delete(v953[0]);
  }

  if (v958 < 0)
  {
    operator delete(v957);
  }

  if (v956 < 0)
  {
    operator delete(v955[0]);
  }

  if (v962 < 0)
  {
    operator delete(v961[0]);
  }

  if (v966 < 0)
  {
    operator delete(v965);
  }

  if (v964 < 0)
  {
    operator delete(v963[0]);
  }

  if (v970 < 0)
  {
    operator delete(v969[0]);
  }

  if (v974 < 0)
  {
    operator delete(v973);
  }

  if (v972 < 0)
  {
    operator delete(v971[0]);
  }

  if (v978 < 0)
  {
    operator delete(v977[0]);
  }

  if (v982 < 0)
  {
    operator delete(v981);
  }

  if (v980 < 0)
  {
    operator delete(v979[0]);
  }

  if (v986 < 0)
  {
    operator delete(v985[0]);
  }

  if (v990 < 0)
  {
    operator delete(v989);
  }

  if (v988 < 0)
  {
    operator delete(v987[0]);
  }

  if (v994 < 0)
  {
    operator delete(v993[0]);
  }

  if (v998 < 0)
  {
    operator delete(v997);
  }

  if (v996 < 0)
  {
    operator delete(v995[0]);
  }

  if (v1002 < 0)
  {
    operator delete(v1001[0]);
  }

  if (v1006 < 0)
  {
    operator delete(v1005);
  }

  if (v1004 < 0)
  {
    operator delete(v1003[0]);
  }

  if (v1010 < 0)
  {
    operator delete(v1009[0]);
  }

  if (v1014 < 0)
  {
    operator delete(v1013);
  }

  if (v1012 < 0)
  {
    operator delete(v1011[0]);
  }

  if (v1018 < 0)
  {
    operator delete(v1017[0]);
  }

  if (v1022 < 0)
  {
    operator delete(v1021);
  }

  if (v1020 < 0)
  {
    operator delete(v1019[0]);
  }

  if (v1026 < 0)
  {
    operator delete(v1025[0]);
  }

  if (v1030 < 0)
  {
    operator delete(v1029);
  }

  if (v1028 < 0)
  {
    operator delete(v1027[0]);
  }

  if (v1034 < 0)
  {
    operator delete(v1033[0]);
  }

  if (v1038 < 0)
  {
    operator delete(v1037);
  }

  if (v1036 < 0)
  {
    operator delete(v1035[0]);
  }

  if (v1042 < 0)
  {
    operator delete(v1041[0]);
  }

  if (v1046 < 0)
  {
    operator delete(v1045);
  }

  if (v1044 < 0)
  {
    operator delete(v1043[0]);
  }

  if (v1050 < 0)
  {
    operator delete(v1049[0]);
  }

  if (v1054 < 0)
  {
    operator delete(v1053);
  }

  if (v1052 < 0)
  {
    operator delete(v1051[0]);
  }

  if (v1058 < 0)
  {
    operator delete(v1057[0]);
  }

  if (v1062 < 0)
  {
    operator delete(v1061);
  }

  if (v1060 < 0)
  {
    operator delete(v1059[0]);
  }

  if (v1066 < 0)
  {
    operator delete(v1065[0]);
  }

  if (v1070 < 0)
  {
    operator delete(v1069);
  }

  if (v1068 < 0)
  {
    operator delete(v1067[0]);
  }

  if (v1074 < 0)
  {
    operator delete(v1073[0]);
  }

  if (v1078 < 0)
  {
    operator delete(v1077);
  }

  if (v1076 < 0)
  {
    operator delete(v1075[0]);
  }

  if (v1082 < 0)
  {
    operator delete(v1081[0]);
  }

  if (v1086 < 0)
  {
    operator delete(v1085);
  }

  if (v1084 < 0)
  {
    operator delete(v1083[0]);
  }

  if (v1090 < 0)
  {
    operator delete(v1089[0]);
  }

  if (v1094 < 0)
  {
    operator delete(v1093);
  }

  if (v1092 < 0)
  {
    operator delete(v1091[0]);
  }

  if (v1098 < 0)
  {
    operator delete(v1097[0]);
  }

  if (v1102 < 0)
  {
    operator delete(v1101);
  }

  if (v1100 < 0)
  {
    operator delete(v1099[0]);
  }

  if (v1106 < 0)
  {
    operator delete(v1105[0]);
  }

  if (v1110 < 0)
  {
    operator delete(v1109);
  }

  if (v1108 < 0)
  {
    operator delete(v1107[0]);
  }

  if (v1114 < 0)
  {
    operator delete(v1113[0]);
  }

  if (v1118 < 0)
  {
    operator delete(v1117);
  }

  if (v1116 < 0)
  {
    operator delete(v1115[0]);
  }

  if (v1122 < 0)
  {
    operator delete(v1121[0]);
  }

  if (v1126 < 0)
  {
    operator delete(v1125);
  }

  if (v1124 < 0)
  {
    operator delete(v1123[0]);
  }

  if (v1130 < 0)
  {
    operator delete(v1129[0]);
  }

  if (v1134 < 0)
  {
    operator delete(v1133);
  }

  if (v1132 < 0)
  {
    operator delete(v1131[0]);
  }

  if (v1138 < 0)
  {
    operator delete(v1137[0]);
  }

  if (v1142 < 0)
  {
    operator delete(v1141);
  }

  if (v1140 < 0)
  {
    operator delete(v1139[0]);
  }

  if (v1146 < 0)
  {
    operator delete(v1145[0]);
  }

  if (v1150 < 0)
  {
    operator delete(v1149);
  }

  if (v1148 < 0)
  {
    operator delete(v1147[0]);
  }

  if (v1154 < 0)
  {
    operator delete(v1153[0]);
  }

  if (v1158 < 0)
  {
    operator delete(v1157);
  }

  if (v1156 < 0)
  {
    operator delete(v1155[0]);
  }

  if (v1162 < 0)
  {
    operator delete(v1161[0]);
  }

  if (v1166 < 0)
  {
    operator delete(v1165);
  }

  if (v1164 < 0)
  {
    operator delete(v1163[0]);
  }

  if (v1170 < 0)
  {
    operator delete(v1169[0]);
  }

  if (v1174 < 0)
  {
    operator delete(v1173);
  }

  if (v1172 < 0)
  {
    operator delete(v1171[0]);
  }

  if (v1178 < 0)
  {
    operator delete(v1177[0]);
  }

  if (v1182 < 0)
  {
    operator delete(v1181);
  }

  if (v1180 < 0)
  {
    operator delete(v1179[0]);
  }

  if (v1186 < 0)
  {
    operator delete(v1185[0]);
  }

  if (v1190 < 0)
  {
    operator delete(v1189);
  }

  if (v1188 < 0)
  {
    operator delete(v1187[0]);
  }

  if (v1194 < 0)
  {
    operator delete(v1193[0]);
  }

  if (v1198 < 0)
  {
    operator delete(v1197);
  }

  if (v1196 < 0)
  {
    operator delete(v1195[0]);
  }

  if (v1202 < 0)
  {
    operator delete(v1201[0]);
  }

  if (v1206 < 0)
  {
    operator delete(v1205);
  }

  if (v1204 < 0)
  {
    operator delete(v1203[0]);
  }

  if (v1210 < 0)
  {
    operator delete(v1209[0]);
  }

  if (v1214 < 0)
  {
    operator delete(v1213);
  }

  if (v1212 < 0)
  {
    operator delete(v1211[0]);
  }

  if (v1218 < 0)
  {
    operator delete(v1217[0]);
  }

  if (v1222 < 0)
  {
    operator delete(v1221);
  }

  if (v1220 < 0)
  {
    operator delete(v1219[0]);
  }

  if (v1226 < 0)
  {
    operator delete(v1225[0]);
  }

  if (v1230 < 0)
  {
    operator delete(v1229);
  }

  if (v1228 < 0)
  {
    operator delete(v1227[0]);
  }

  if (v1234 < 0)
  {
    operator delete(v1233[0]);
  }

  if (v1238 < 0)
  {
    operator delete(v1237);
  }

  if (v1236 < 0)
  {
    operator delete(v1235[0]);
  }

  if (v1242 < 0)
  {
    operator delete(v1241[0]);
  }

  if (v1246 < 0)
  {
    operator delete(v1245);
  }

  if (v1244 < 0)
  {
    operator delete(v1243[0]);
  }

  if (v1250 < 0)
  {
    operator delete(v1249[0]);
  }

  if (v1254 < 0)
  {
    operator delete(v1253);
  }

  if (v1252 < 0)
  {
    operator delete(v1251[0]);
  }

  if (v1258 < 0)
  {
    operator delete(v1257[0]);
  }

  if (v1262 < 0)
  {
    operator delete(v1261);
  }

  if (v1260 < 0)
  {
    operator delete(v1259[0]);
  }

  if (v1266 < 0)
  {
    operator delete(v1265[0]);
  }

  if (v1270 < 0)
  {
    operator delete(v1269);
  }

  if (v1268 < 0)
  {
    operator delete(v1267[0]);
  }

  if (v1274 < 0)
  {
    operator delete(v1273[0]);
  }

  if (v1278 < 0)
  {
    operator delete(v1277);
  }

  if (v1276 < 0)
  {
    operator delete(v1275[0]);
  }

  if (v1282 < 0)
  {
    operator delete(v1281[0]);
  }

  if (v1286 < 0)
  {
    operator delete(v1285);
  }

  if (v1284 < 0)
  {
    operator delete(v1283[0]);
  }

  if (v1290 < 0)
  {
    operator delete(v1289[0]);
  }

  if (v1294 < 0)
  {
    operator delete(v1293);
  }

  if (v1292 < 0)
  {
    operator delete(v1291[0]);
  }

  if (v1298 < 0)
  {
    operator delete(v1297[0]);
  }

  if (v1302 < 0)
  {
    operator delete(v1301);
  }

  if (v1300 < 0)
  {
    operator delete(v1299[0]);
  }

  if (v1306 < 0)
  {
    operator delete(v1305[0]);
  }

  if (v1310 < 0)
  {
    operator delete(v1309);
  }

  if (v1308 < 0)
  {
    operator delete(v1307[0]);
  }

  if (v1314 < 0)
  {
    operator delete(v1313[0]);
  }

  if (v1318 < 0)
  {
    operator delete(v1317);
  }

  if (v1316 < 0)
  {
    operator delete(v1315[0]);
  }

  if (v1322 < 0)
  {
    operator delete(v1321[0]);
  }

  if (v1326 < 0)
  {
    operator delete(v1325);
  }

  if (v1324 < 0)
  {
    operator delete(v1323[0]);
  }

  if (v1330 < 0)
  {
    operator delete(v1329[0]);
  }

  if (v1334 < 0)
  {
    operator delete(v1333);
  }

  if (v1332 < 0)
  {
    operator delete(v1331[0]);
  }

  if (v1338 < 0)
  {
    operator delete(v1337[0]);
  }

  if (v1342 < 0)
  {
    operator delete(v1341);
  }

  if (v1340 < 0)
  {
    operator delete(v1339[0]);
  }

  if (v1346 < 0)
  {
    operator delete(v1345[0]);
  }

  if (v1350 < 0)
  {
    operator delete(v1349);
  }

  if (v1348 < 0)
  {
    operator delete(v1347[0]);
  }

  if (v1354 < 0)
  {
    operator delete(v1353[0]);
  }

  if (v1358 < 0)
  {
    operator delete(v1357);
  }

  if (v1356 < 0)
  {
    operator delete(v1355[0]);
  }

  if (v1362 < 0)
  {
    operator delete(v1361[0]);
  }

  if (v1366 < 0)
  {
    operator delete(v1365);
  }

  if (v1364 < 0)
  {
    operator delete(v1363[0]);
  }

  if (v1370 < 0)
  {
    operator delete(v1369[0]);
  }

  if (v1374 < 0)
  {
    operator delete(v1373);
  }

  if (v1372 < 0)
  {
    operator delete(v1371[0]);
  }

  if (v1378 < 0)
  {
    operator delete(v1377[0]);
  }

  if (v1382 < 0)
  {
    operator delete(v1381);
  }

  if (v1380 < 0)
  {
    operator delete(v1379[0]);
  }

  if (v1386 < 0)
  {
    operator delete(v1385[0]);
  }

  if (v1390 < 0)
  {
    operator delete(v1389);
  }

  if (v1388 < 0)
  {
    operator delete(v1387[0]);
  }

  if (v1394 < 0)
  {
    operator delete(v1393[0]);
  }

  if (v1398 < 0)
  {
    operator delete(v1397);
  }

  if (v1396 < 0)
  {
    operator delete(v1395[0]);
  }

  if (v1402 < 0)
  {
    operator delete(v1401[0]);
  }

  if (v1406 < 0)
  {
    operator delete(v1405);
  }

  if (v1404 < 0)
  {
    operator delete(v1403[0]);
  }

  if (v1410 < 0)
  {
    operator delete(v1409[0]);
  }

  if (v1414 < 0)
  {
    operator delete(v1413);
  }

  if (v1412 < 0)
  {
    operator delete(v1411[0]);
  }

  if (v1418 < 0)
  {
    operator delete(v1417[0]);
  }

  if (v1422 < 0)
  {
    operator delete(v1421);
  }

  if (v1420 < 0)
  {
    operator delete(v1419[0]);
  }

  if (v1426 < 0)
  {
    operator delete(v1425[0]);
  }

  if (v1430 < 0)
  {
    operator delete(v1429);
  }

  if (v1428 < 0)
  {
    operator delete(v1427[0]);
  }

  if (v1434 < 0)
  {
    operator delete(v1433[0]);
  }

  if (v1438 < 0)
  {
    operator delete(v1437);
  }

  if (v1436 < 0)
  {
    operator delete(v1435[0]);
  }

  if (v1442 < 0)
  {
    operator delete(v1441[0]);
  }

  if (v1446 < 0)
  {
    operator delete(v1445);
  }

  if (v1444 < 0)
  {
    operator delete(v1443[0]);
  }

  if (v1450 < 0)
  {
    operator delete(v1449[0]);
  }

  if (v1454 < 0)
  {
    operator delete(v1453);
  }

  if (v1452 < 0)
  {
    operator delete(v1451[0]);
  }

  if (v1458 < 0)
  {
    operator delete(v1457[0]);
  }

  if (v1462 < 0)
  {
    operator delete(v1461);
  }

  if (v1460 < 0)
  {
    operator delete(v1459[0]);
  }

  if (v1466 < 0)
  {
    operator delete(v1465[0]);
  }

  if (v1470 < 0)
  {
    operator delete(v1469);
  }

  if (v1468 < 0)
  {
    operator delete(v1467[0]);
  }

  if (v1474 < 0)
  {
    operator delete(v1473[0]);
  }

  if (v1478 < 0)
  {
    operator delete(v1477);
  }

  if (v1476 < 0)
  {
    operator delete(v1475[0]);
  }

  if (v1482 < 0)
  {
    operator delete(v1481[0]);
  }

  if (v1486 < 0)
  {
    operator delete(v1485);
  }

  if (v1484 < 0)
  {
    operator delete(v1483[0]);
  }

  if (v1490 < 0)
  {
    operator delete(v1489[0]);
  }

  if (v1494 < 0)
  {
    operator delete(v1493);
  }

  if (v1492 < 0)
  {
    operator delete(v1491[0]);
  }

  if (v1498 < 0)
  {
    operator delete(v1497[0]);
  }

  if (v1502 < 0)
  {
    operator delete(v1501);
  }

  if (v1500 < 0)
  {
    operator delete(v1499[0]);
  }

  if (v1506 < 0)
  {
    operator delete(v1505[0]);
  }

  if (v1510 < 0)
  {
    operator delete(v1509);
  }

  if (v1508 < 0)
  {
    operator delete(v1507[0]);
  }

  if (v1514 < 0)
  {
    operator delete(v1513[0]);
  }

  if (v1518 < 0)
  {
    operator delete(v1517);
  }

  if (v1516 < 0)
  {
    operator delete(v1515[0]);
  }

  if (v1522 < 0)
  {
    operator delete(v1521[0]);
  }

  if (v1526 < 0)
  {
    operator delete(v1525);
  }

  if (v1524 < 0)
  {
    operator delete(v1523[0]);
  }

  if (v1530 < 0)
  {
    operator delete(v1529[0]);
  }

  if (v1534 < 0)
  {
    operator delete(v1533);
  }

  if (v1532 < 0)
  {
    operator delete(v1531[0]);
  }

  if (v1538 < 0)
  {
    operator delete(v1537[0]);
  }

  if (v1542 < 0)
  {
    operator delete(v1541);
  }

  if (v1540 < 0)
  {
    operator delete(v1539[0]);
  }

  if (v1546 < 0)
  {
    operator delete(v1545[0]);
  }

  if (v1550 < 0)
  {
    operator delete(v1549);
  }

  if (v1548 < 0)
  {
    operator delete(v1547[0]);
  }

  if (v1554 < 0)
  {
    operator delete(v1553[0]);
  }

  if (v1558 < 0)
  {
    operator delete(v1557);
  }

  if (v1556 < 0)
  {
    operator delete(v1555[0]);
  }

  if (v1562 < 0)
  {
    operator delete(v1561[0]);
  }

  if (v1566 < 0)
  {
    operator delete(v1565);
  }

  if (v1564 < 0)
  {
    operator delete(v1563[0]);
  }

  if (v1570 < 0)
  {
    operator delete(v1569[0]);
  }

  if (v1574 < 0)
  {
    operator delete(v1573);
  }

  if (v1572 < 0)
  {
    operator delete(v1571[0]);
  }

  if (v1578 < 0)
  {
    operator delete(v1577[0]);
  }

  if (v1582 < 0)
  {
    operator delete(v1581);
  }

  if (v1580 < 0)
  {
    operator delete(v1579[0]);
  }

  if (v1586 < 0)
  {
    operator delete(v1585[0]);
  }

  if (v1590 < 0)
  {
    operator delete(v1589);
  }

  if (v1588 < 0)
  {
    operator delete(v1587[0]);
  }

  if (v1594 < 0)
  {
    operator delete(v1593[0]);
  }

  if (v1598 < 0)
  {
    operator delete(v1597);
  }

  if (v1596 < 0)
  {
    operator delete(v1595[0]);
  }

  if (v1602 < 0)
  {
    operator delete(v1601[0]);
  }

  if (v1606 < 0)
  {
    operator delete(v1605);
  }

  if (v1604 < 0)
  {
    operator delete(v1603[0]);
  }

  if (v1610 < 0)
  {
    operator delete(v1609[0]);
  }

  if (v1614 < 0)
  {
    operator delete(v1613);
  }

  if (v1612 < 0)
  {
    operator delete(v1611[0]);
  }

  if (v1618 < 0)
  {
    operator delete(v1617[0]);
  }

  if (v1622 < 0)
  {
    operator delete(v1621);
  }

  if (v1620 < 0)
  {
    operator delete(v1619[0]);
  }

  if (v1626 < 0)
  {
    operator delete(v1625[0]);
  }

  if (v1630 < 0)
  {
    operator delete(v1629);
  }

  if (v1628 < 0)
  {
    operator delete(v1627[0]);
  }

  if (v1634 < 0)
  {
    operator delete(v1633[0]);
  }

  if (v1638 < 0)
  {
    operator delete(v1637);
  }

  if (v1636 < 0)
  {
    operator delete(v1635[0]);
  }

  if (v1642 < 0)
  {
    operator delete(v1641[0]);
  }

  if (v1646 < 0)
  {
    operator delete(v1645);
  }

  if (v1644 < 0)
  {
    operator delete(v1643[0]);
  }

  if (v1650 < 0)
  {
    operator delete(v1649[0]);
  }

  if (v1654 < 0)
  {
    operator delete(v1653);
  }

  if (v1652 < 0)
  {
    operator delete(v1651[0]);
  }

  if (v1658 < 0)
  {
    operator delete(v1657[0]);
  }

  if (v1662 < 0)
  {
    operator delete(v1661);
  }

  if (v1660 < 0)
  {
    operator delete(v1659[0]);
  }

  if (v1666 < 0)
  {
    operator delete(v1665[0]);
  }

  if (v1670 < 0)
  {
    operator delete(v1669);
  }

  if (v1668 < 0)
  {
    operator delete(v1667[0]);
  }

  if (v1674 < 0)
  {
    operator delete(v1673[0]);
  }

  if (v1678 < 0)
  {
    operator delete(v1677);
  }

  if (v1676 < 0)
  {
    operator delete(v1675[0]);
  }

  if (v1682 < 0)
  {
    operator delete(v1681[0]);
  }

  if (v1686 < 0)
  {
    operator delete(v1685);
  }

  if (v1684 < 0)
  {
    operator delete(v1683[0]);
  }

  if (v1690 < 0)
  {
    operator delete(v1689[0]);
  }

  if (v1694 < 0)
  {
    operator delete(v1693);
  }

  if (v1692 < 0)
  {
    operator delete(v1691[0]);
  }

  if (v1698 < 0)
  {
    operator delete(v1697[0]);
  }

  if (v1702 < 0)
  {
    operator delete(v1701);
  }

  if (v1700 < 0)
  {
    operator delete(v1699[0]);
  }

  if (v1706 < 0)
  {
    operator delete(v1705[0]);
  }

  if (v1710 < 0)
  {
    operator delete(v1709);
  }

  if (v1708 < 0)
  {
    operator delete(v1707[0]);
  }

  if (v1714 < 0)
  {
    operator delete(v1713[0]);
  }

  if (v1718 < 0)
  {
    operator delete(v1717);
  }

  if (v1716 < 0)
  {
    operator delete(v1715[0]);
  }

  if (v1722 < 0)
  {
    operator delete(v1721[0]);
  }

  if (v1726 < 0)
  {
    operator delete(v1725);
  }

  if (v1724 < 0)
  {
    operator delete(v1723[0]);
  }

  if (v1730 < 0)
  {
    operator delete(v1729[0]);
  }

  if (v1734 < 0)
  {
    operator delete(v1733);
  }

  if (v1732 < 0)
  {
    operator delete(v1731[0]);
  }

  if (v1738 < 0)
  {
    operator delete(v1737[0]);
  }

  if (v1742 < 0)
  {
    operator delete(v1741);
  }

  if (v1740 < 0)
  {
    operator delete(v1739[0]);
  }

  if (v1746 < 0)
  {
    operator delete(v1745[0]);
  }

  if (v1750 < 0)
  {
    operator delete(v1749);
  }

  if (v1748 < 0)
  {
    operator delete(v1747[0]);
  }

  if (v1754 < 0)
  {
    operator delete(v1753[0]);
  }

  if (v1758 < 0)
  {
    operator delete(v1757);
  }

  if (v1756 < 0)
  {
    operator delete(v1755[0]);
  }

  if (v1762 < 0)
  {
    operator delete(v1761[0]);
  }

  if (v1766 < 0)
  {
    operator delete(v1765);
  }

  if (v1764 < 0)
  {
    operator delete(v1763[0]);
  }

  if (v1770 < 0)
  {
    operator delete(v1769[0]);
  }

  if (v1774 < 0)
  {
    operator delete(v1773);
  }

  if (v1772 < 0)
  {
    operator delete(v1771[0]);
  }

  if (v1778 < 0)
  {
    operator delete(v1777[0]);
  }

  if (v1782 < 0)
  {
    operator delete(v1781);
  }

  if (v1780 < 0)
  {
    operator delete(v1779[0]);
  }

  if (v1786 < 0)
  {
    operator delete(v1785[0]);
  }

  if (v1790 < 0)
  {
    operator delete(v1789);
  }

  if (v1788 < 0)
  {
    operator delete(v1787[0]);
  }

  if (v1794 < 0)
  {
    operator delete(v1793[0]);
  }

  if (v1798 < 0)
  {
    operator delete(v1797);
  }

  if (v1796 < 0)
  {
    operator delete(v1795[0]);
  }

  if (v1802 < 0)
  {
    operator delete(v1801[0]);
  }

  if (v1806 < 0)
  {
    operator delete(v1805);
  }

  if (v1804 < 0)
  {
    operator delete(v1803[0]);
  }

  if (v1810 < 0)
  {
    operator delete(v1809[0]);
  }

  if (v1814 < 0)
  {
    operator delete(v1813);
  }

  if (v1812 < 0)
  {
    operator delete(v1811[0]);
  }

  if (v1818 < 0)
  {
    operator delete(v1817[0]);
  }

  if (v1822 < 0)
  {
    operator delete(v1821);
  }

  if (v1820 < 0)
  {
    operator delete(v1819[0]);
  }

  if (v1826 < 0)
  {
    operator delete(v1825[0]);
  }

  if (v1830 < 0)
  {
    operator delete(v1829);
  }

  if (v1828 < 0)
  {
    operator delete(v1827[0]);
  }

  if (v1834 < 0)
  {
    operator delete(v1833[0]);
  }

  if (v1838 < 0)
  {
    operator delete(v1837);
  }

  if (v1836 < 0)
  {
    operator delete(v1835[0]);
  }

  if (v1842 < 0)
  {
    operator delete(v1841[0]);
  }

  if (v1846 < 0)
  {
    operator delete(v1845);
  }

  if (v1844 < 0)
  {
    operator delete(v1843[0]);
  }

  if (v1850 < 0)
  {
    operator delete(v1849[0]);
  }

  if (v1854 < 0)
  {
    operator delete(v1853);
  }

  if (v1852 < 0)
  {
    operator delete(v1851[0]);
  }

  if (v1858 < 0)
  {
    operator delete(v1857[0]);
  }

  if (v1862 < 0)
  {
    operator delete(v1861);
  }

  if (v1860 < 0)
  {
    operator delete(v1859[0]);
  }

  if (v1866 < 0)
  {
    operator delete(v1865[0]);
  }

  if (v1870 < 0)
  {
    operator delete(v1869);
  }

  if (v1868 < 0)
  {
    operator delete(v1867[0]);
  }

  if (v1874 < 0)
  {
    operator delete(v1873[0]);
  }

  if (v1878 < 0)
  {
    operator delete(v1877);
  }

  if (v1876 < 0)
  {
    operator delete(v1875[0]);
  }

  if (v1882 < 0)
  {
    operator delete(v1881[0]);
  }

  if (v1886 < 0)
  {
    operator delete(v1885);
  }

  if (v1884 < 0)
  {
    operator delete(v1883[0]);
  }

  if (v1890 < 0)
  {
    operator delete(v1889[0]);
  }

  if (v1894 < 0)
  {
    operator delete(v1893);
  }

  if (v1892 < 0)
  {
    operator delete(v1891[0]);
  }

  if (v1898 < 0)
  {
    operator delete(v1897[0]);
  }

  if (v1902 < 0)
  {
    operator delete(v1901);
  }

  if (v1900 < 0)
  {
    operator delete(v1899[0]);
  }

  if (v1906 < 0)
  {
    operator delete(v1905[0]);
  }

  if (v1910 < 0)
  {
    operator delete(v1909);
  }

  if (v1908 < 0)
  {
    operator delete(v1907[0]);
  }

  if (v1914 < 0)
  {
    operator delete(v1913[0]);
  }

  if (v1918 < 0)
  {
    operator delete(v1917);
  }

  if (v1916 < 0)
  {
    operator delete(v1915[0]);
  }

  if (v1922 < 0)
  {
    operator delete(v1921[0]);
  }

  if (v1926 < 0)
  {
    operator delete(v1925);
  }

  if (v1924 < 0)
  {
    operator delete(v1923[0]);
  }

  if (v1930 < 0)
  {
    operator delete(v1929[0]);
  }

  if (v1934 < 0)
  {
    operator delete(v1933);
  }

  if (v1932 < 0)
  {
    operator delete(v1931[0]);
  }

  if (v1938 < 0)
  {
    operator delete(v1937[0]);
  }

  if (v1942 < 0)
  {
    operator delete(v1941);
  }

  if (v1940 < 0)
  {
    operator delete(v1939[0]);
  }

  if (v1946 < 0)
  {
    operator delete(v1945[0]);
  }

  if (v1950 < 0)
  {
    operator delete(v1949[0]);
  }

  if (v1948 < 0)
  {
    operator delete(v1947[0]);
  }

  if (v1954 < 0)
  {
    operator delete(v1953[0]);
  }
}