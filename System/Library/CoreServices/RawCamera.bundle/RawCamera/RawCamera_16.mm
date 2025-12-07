void sub_23385994C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_233859A38(void *a1, void *a2, unint64_t *a3, void *a4, _OWORD *a5, uint64_t a6, char *a7, unsigned int *a8)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2849255C0;
  sub_233859B3C((a1 + 3), a2, *a3, a4, a5, a6, *a7, *a8);
  return a1;
}

void sub_233859AC0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2849255C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_233859B3C(uint64_t a1, void *a2, unint64_t a3, void *a4, _OWORD *a5, uint64_t a6, char a7, int a8)
{
  v12 = sub_2337AD9D8(a1, a2, a3, a4, a5);
  *(v12 + 200) = 0;
  *(v12 + 208) = 0;
  *(v12 + 192) = 0;
  *(v12 + 216) = -1;
  *v12 = &unk_284922460;
  *(v12 + 232) = 0;
  *(v12 + 240) = 0;
  *(v12 + 224) = 0;
  sub_233729070((v12 + 224), *a6, *(a6 + 8), (*(a6 + 8) - *a6) >> 2);
  *(a1 + 248) = a7;
  *(a1 + 252) = a8;
  return a1;
}

void *sub_233859BD8(void *a1)
{
  *a1 = &unk_28490A870;
  v2 = a1[24];
  if (v2)
  {
    a1[25] = v2;
    operator delete(v2);
  }

  return sub_233723A54(a1);
}

void sub_233859C80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_2337239E8(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_233859C98(uint64_t a1)
{
  sub_233859E60(a1);
  sub_23385A12C(a1);
  if (*(a1 + 128))
  {
    v2 = *(**(a1 + 8) + 24);

    v2();
  }
}

uint64_t sub_233859D10(uint64_t result, uint64_t *a2)
{
  *result = &unk_284925610;
  v2 = *a2;
  *(result + 8) = *a2;
  v3 = a2[1];
  *(result + 16) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    v2 = *(result + 8);
  }

  *(result + 32) = 0u;
  *(result + 80) = 0u;
  *(result + 112) = 0u;
  *(result + 128) = 0u;
  *(result + 96) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 0u;
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  *(result + 24) = *(v2 + 48);
  return result;
}

void sub_233859DF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v13 = *(v10 + 136);
  if (v13)
  {
    sub_2337239E8(v13);
  }

  a10 = v11 + 9;
  sub_2337A6DEC(&a10);
  sub_2337A6DEC(&a10);
  a10 = v11 + 3;
  sub_2337A6DEC(&a10);
  a10 = v11;
  sub_2337A6DEC(&a10);
  v14 = *(v10 + 16);
  if (v14)
  {
    sub_2337239E8(v14);
  }

  _Unwind_Resume(a1);
}

void sub_233859E60(uint64_t a1)
{
  sub_233726218(&__p, *(a1 + 24));
  sub_23385BE00(v20, 4uLL, &__p);
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  sub_233726218(v16, *(a1 + 24));
  sub_23385BE00(&__p, 4uLL, v16);
  v2 = v16[0];
  if (v16[0])
  {
    v16[1] = v16[0];
    operator delete(v16[0]);
  }

  v3 = 0;
  LODWORD(v4) = *(a1 + 24);
  do
  {
    if (v4)
    {
      v5 = 0;
      v2 = *(a1 + 8);
      do
      {
        v6 = v2[13];
        v7 = sub_2337B0628(v2);
        if (0xAAAAAAAAAAAAAAABLL * ((v19 - __p) >> 3) <= v3)
        {
          sub_2337306B0();
        }

        v8 = (__p + 24 * v3);
        v9 = *v8;
        if (v5 >= (v8[1] - *v8) >> 1)
        {
          sub_2337306B0();
        }

        v10 = v6 >> 1;
        v11 = *(a1 + 8);
        *(v9 + 2 * v5) = *(v7 + 2 * (*(v11 + 56) * v5) + 2 * (v10 + ~v3));
        v12 = sub_2337B0628(v11);
        if (0xAAAAAAAAAAAAAAABLL * (v20[1] - v20[0]) <= v3)
        {
          sub_2337306B0();
        }

        v13 = v20[0][3 * v3];
        if (v5 >= (v20[0][3 * v3 + 1] - v13) >> 1)
        {
          sub_2337306B0();
        }

        v14 = v12;
        v2 = *(a1 + 8);
        *&v13[2 * v5] = *(v14 + 2 * (v2[14] * v5) + 2 * v3 + 2 * v10);
        ++v5;
        v4 = *(a1 + 24);
      }

      while (v5 < v4);
    }

    ++v3;
  }

  while (v3 != 4);
  sub_23385A5B0(v2, v20);
  sub_23385A5B0(v15, &__p);
  sub_23385A8FC(v20, (a1 + 56), v16);
  sub_23385BF60((a1 + 32));
  *(a1 + 32) = *v16;
  *(a1 + 48) = v17;
  v16[1] = 0;
  v17 = 0;
  v16[0] = 0;
  v21 = v16;
  sub_2337A6DEC(&v21);
  sub_23385A8FC(&__p, (a1 + 104), v16);
  sub_23385BF60((a1 + 80));
  *(a1 + 80) = *v16;
  *(a1 + 96) = v17;
  v16[1] = 0;
  v17 = 0;
  v16[0] = 0;
  v21 = v16;
  sub_2337A6DEC(&v21);
  v16[0] = &__p;
  sub_2337A6DEC(v16);
  __p = v20;
  sub_2337A6DEC(&__p);
}

void sub_23385A0B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char **__p, uint64_t a10, uint64_t a11, char *a12, uint64_t a13, uint64_t a14, char a15)
{
  __p = &a12;
  sub_2337A6DEC(&__p);
  a12 = &a15;
  sub_2337A6DEC(&a12);
  _Unwind_Resume(a1);
}

void sub_23385A12C(void *a1)
{
  v37 = 0;
  v35 = 0.0;
  v36 = 0.0;
  sub_23385AEFC(a1, &v37, &v36, &v35);
  v2 = 0;
  if (v36 > 0.15)
  {
    v2 = v36 / v35 > 0.7;
  }

  v34 = 0.0;
  sub_23385B0D0(a1, 1u, 1, 1, 1, 1, 0, &v34, &v32);
  v4 = v32;
  v3 = v33;
  if (v33)
  {
    atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = v34;
  v31 = 0.0;
  sub_23385B0D0(a1, 1u, 0, 0, 1, 1, 0, &v31, &v29);
  v28 = 0.0;
  sub_23385B0D0(a1, 1u, 1, 1, 0, 0, 0, &v28, &v26);
  if (v37)
  {
    if (v31 >= v28)
    {
      v6 = v28;
    }

    else
    {
      v6 = v31;
    }

    v7 = &v26;
    if (v31 < v28)
    {
      v7 = &v29;
    }

    v9 = *v7;
    v8 = v7[1];
    v10 = v6 / v5;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      if (v10 >= 1.05)
      {
        v6 = v5;
        v9 = v4;
      }

      else
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        if (v3)
        {
          sub_2337239E8(v3);
        }

        v3 = v8;
      }

      sub_2337239E8(v8);
      v12 = v3;
      goto LABEL_34;
    }

    if (v10 < 1.05)
    {
      v12 = 0;
    }

    else
    {
      v12 = v3;
    }

    if (v10 < 1.05)
    {
      v11 = *v7;
    }

    else
    {
      v11 = v4;
    }

    if (v10 < 1.05)
    {
      v5 = v6;
    }

    if (v3 && v10 < 1.05)
    {
      sub_2337239E8(v3);
      v12 = 0;
LABEL_34:
      v11 = v9;
      v5 = v6;
    }
  }

  else
  {
    v11 = v26;
    v12 = v27;
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v3)
    {
      sub_2337239E8(v3);
    }

    v5 = v28;
  }

  v25 = 0.0;
  sub_23385B0D0(a1, 1u, 1, 0, 0, 0, 0, &v25, &v24);
  v13 = v25;
  if (v25 / v5 >= 1.05)
  {
    v14 = v12;
  }

  else
  {
    v14 = v24.n128_u64[1];
    v11 = v24.n128_u64[0];
    if (v24.n128_u64[1])
    {
      atomic_fetch_add_explicit((v24.n128_u64[1] + 8), 1uLL, memory_order_relaxed);
    }

    if (v12)
    {
      sub_2337239E8(v12);
      v5 = v25;
    }

    else
    {
      v5 = v13;
    }
  }

  sub_23385B0D0(a1, 1u, 0, 0, 0, 0, 0, &v25, &v23);
  v15 = v23;
  v23 = 0uLL;
  v16 = v24.n128_u64[1];
  v24 = v15;
  if (v16)
  {
    sub_2337239E8(v16);
    if (v23.n128_u64[1])
    {
      sub_2337239E8(v23.n128_u64[1]);
    }
  }

  v17 = v25;
  if (v25 / v5 >= 1.05)
  {
    v18 = v14;
    if (!v2)
    {
      goto LABEL_64;
    }
  }

  else
  {
    v18 = v24.n128_u64[1];
    v11 = v24.n128_u64[0];
    if (v24.n128_u64[1])
    {
      atomic_fetch_add_explicit((v24.n128_u64[1] + 8), 1uLL, memory_order_relaxed);
    }

    if (v14)
    {
      sub_2337239E8(v14);
      v5 = v25;
      if (!v2)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v5 = v17;
      if (!v2)
      {
        goto LABEL_64;
      }
    }
  }

  sub_23385B0D0(a1, 0, 0, 0, 0, 0, 1, &v25, &v23);
  v19 = v23;
  v23 = 0uLL;
  v20 = v24.n128_u64[1];
  v24 = v19;
  if (v20)
  {
    sub_2337239E8(v20);
    if (v23.n128_u64[1])
    {
      sub_2337239E8(v23.n128_u64[1]);
    }
  }

  if (v25 / v5 >= 1.05)
  {
LABEL_64:
    v21 = v18;
    if (!v11)
    {
      goto LABEL_66;
    }

    goto LABEL_65;
  }

  v21 = v24.n128_u64[1];
  v11 = v24.n128_u64[0];
  if (v24.n128_u64[1])
  {
    atomic_fetch_add_explicit((v24.n128_u64[1] + 8), 1uLL, memory_order_relaxed);
  }

  if (v18)
  {
    sub_2337239E8(v18);
  }

  if (v11)
  {
LABEL_65:
    nullsub_1();
  }

LABEL_66:
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v22 = a1[17];
  a1[16] = v11;
  a1[17] = v21;
  if (v22)
  {
    sub_2337239E8(v22);
  }

  if (v24.n128_u64[1])
  {
    sub_2337239E8(v24.n128_u64[1]);
  }

  if (v27)
  {
    sub_2337239E8(v27);
  }

  if (v30)
  {
    sub_2337239E8(v30);
  }

  if (v33)
  {
    sub_2337239E8(v33);
  }

  if (v21)
  {
    sub_2337239E8(v21);
  }
}

void sub_23385A538(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  if (a16)
  {
    sub_2337239E8(a16);
  }

  if (a19)
  {
    sub_2337239E8(a19);
  }

  if (a22)
  {
    sub_2337239E8(a22);
  }

  if (v22)
  {
    sub_2337239E8(v22);
  }

  _Unwind_Resume(exception_object);
}

void sub_23385A5B0(uint64_t a1, char ***a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v4 == v3)
  {
    sub_2337306B0();
  }

  v6 = v3[1] - *v3;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  sub_23385BFA0(&v46, v3, v4, 0xAAAAAAAAAAAAAAABLL * (v4 - v3));
  v9 = **a2;
  v10 = (*a2)[3];
  v11 = (*a2)[6];
  v12 = 0.0;
  v13 = 0.0;
  v14 = (*a2)[9];
  v15 = v9 + 2;
  v16 = (v10 + 2);
  v17 = (v11 + 2);
  v18 = (v14 + 2);
  v19 = -2;
  v20 = 0.0;
  v21 = 0.0;
  v22 = 0.0;
  v23 = 0.0;
  v24 = 0.0;
  v25 = 0.0;
  do
  {
    LOWORD(v7) = *(v15 - 1);
    *&v26 = *&v7;
    v12 = v12 + *&v26;
    LOWORD(v26) = *(v16 - 1);
    *&v27 = v26;
    v13 = v13 + *&v27;
    LOWORD(v27) = *(v17 - 1);
    *&v28 = v27;
    v25 = v25 + *&v28;
    LOWORD(v28) = *(v18 - 1);
    *&v29 = v28;
    v24 = v24 + *&v29;
    LOWORD(v29) = *v15;
    *&v30 = v29;
    v23 = v23 + *&v30;
    LOWORD(v30) = *v16;
    *&v31 = v30;
    v22 = v22 + *&v31;
    LOWORD(v31) = *v17;
    *&v32 = v31;
    v21 = v21 + *&v32;
    LOWORD(v32) = *v18;
    v7 = v32;
    v19 += 2;
    v15 += 2;
    v20 = v20 + v7;
    v16 += 2;
    v17 += 2;
    v18 += 2;
  }

  while (v19 < 0x62);
  if ((v6 >> 1) >= 0x66)
  {
    v33 = 0;
    v34 = *v46;
    v35 = v46[3];
    v36 = v46[6];
    v37 = v46[9];
    v38 = 101;
    do
    {
      LOWORD(v8) = *&v9[2 * v33 + 100];
      *&v39 = (v12 / 50.0 + *&v8) * 0.5;
      *&v34[2 * v33 + 100] = *&v39;
      LOWORD(v39) = *(v10 + 2 * (v33 + 50));
      *&v40 = (v13 / 50.0 + v39) * 0.5;
      *&v35[2 * v33 + 100] = *&v40;
      LOWORD(v40) = *(v11 + 2 * (v33 + 50));
      *&v41 = (v25 / 50.0 + v40) * 0.5;
      *&v36[2 * v33 + 100] = *&v41;
      LOWORD(v41) = *(v14 + 2 * (v33 + 50));
      *&v42 = (v24 / 50.0 + v41) * 0.5;
      *&v37[2 * v33 + 100] = *&v42;
      LOWORD(v42) = *&v9[2 * v33 + 102];
      *&v43 = (v23 / 50.0 + v42) * 0.5;
      *&v34[2 * v33 + 102] = *&v43;
      LOWORD(v43) = *(v10 + 2 * (v33 + 51));
      *&v44 = (v22 / 50.0 + v43) * 0.5;
      *&v35[2 * v33 + 102] = *&v44;
      LOWORD(v44) = *(v11 + 2 * (v33 + 51));
      *&v45 = (v21 / 50.0 + v44) * 0.5;
      *&v36[2 * v33 + 102] = *&v45;
      LOWORD(v45) = *(v14 + 2 * (v33 + 51));
      *&v37[2 * v33 + 102] = ((v20 / 50.0 + v45) * 0.5);
      v12 = v12 + (*&v9[2 * v33 + 200] - *&v9[2 * v33]);
      v13 = v13 + (*(v10 + 2 * (v33 + 100)) - *(v10 + 2 * v33));
      v25 = v25 + (*(v11 + 2 * (v33 + 100)) - *(v11 + 2 * v33));
      v24 = v24 + (*(v14 + 2 * (v33 + 100)) - *(v14 + 2 * v33));
      v23 = v23 + (*&v9[2 * v38] - *&v9[2 * v33 + 2]);
      v22 = v22 + (*(v10 + 2 * v38) - *(v10 + 2 * (v33 + 1)));
      v21 = v21 + (*(v11 + 2 * v38) - *(v11 + 2 * (v33 + 1)));
      v8 = (*(v14 + 2 * v38) - *(v14 + 2 * (v33 + 1)));
      v20 = v20 + v8;
      v38 = v33 + 103;
      v33 += 2;
    }

    while (v6 >> 1 > v38);
  }

  if (&v46 != a2)
  {
    sub_23385C114(a2, v46, v47, 0xAAAAAAAAAAAAAAABLL * (v47 - v46));
  }

  v49 = &v46;
  sub_2337A6DEC(&v49);
}

void sub_23385A8E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_2337A6DEC(&a12);
  _Unwind_Resume(a1);
}

void sub_23385A8FC(char ***a1@<X1>, uint64_t **a2@<X2>, uint64_t **a3@<X8>)
{
  if (a1[1] == *a1)
  {
    sub_2337306B0();
  }

  v5 = (*a1)[1] - **a1;
  v98 = 0x4197D78400000000;
  sub_233731694(__p, ((v5 >> 1) >> 1) + 1, &v98);
  sub_23385C2FC(v102, (v5 >> 1), __p);
  v6 = v5 >> 1;
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v7 = 2;
  v8 = 2;
  do
  {
    sub_233730758(__p, 9uLL);
    sub_233730758(&v98, 9uLL);
    v9 = 0;
    v10 = 0;
    v11 = v7 + 4;
    v12 = **a1;
    v13 = (*a1)[3];
    v14 = (*a1)[6];
    v15 = (*a1)[9];
    v16 = __p[0];
    v17 = v98;
    v18 = *v12;
    v19 = *v13;
    v20 = *v14;
    v21 = *v15;
    v22 = &v12[v8];
    v23 = &v13[v8];
    v24 = &v14[v8];
    v25 = &v15[v8];
    v26 = 0.0;
    v27 = 0.0;
    do
    {
      v28 = v18 - v22[v10];
      v18 = v12[v10 + 1];
      v29 = (v18 - v22[v10 + 1]);
      v30 = (v19 - v23[v10]);
      v19 = v13[v10 + 1];
      v31 = (v19 - v23[v10 + 1]);
      v32 = (v20 - v24[v10]);
      v33 = v28 * v28 + 0.0 + v30 * v30;
      v20 = v14[v10 + 1];
      v34 = (v20 - v24[v10 + 1]);
      v35 = v29 * v29 + 0.0 + v31 * v31;
      v36 = (v21 - v25[v10]);
      v21 = v15[v10 + 1];
      v37 = (v21 - v25[v10 + 1]);
      v38 = v33 + v32 * v32 + v36 * v36;
      v16[v9] = v38;
      v39 = v35 + v34 * v34 + v37 * v37;
      v26 = v26 + v38;
      v17[v9] = v39;
      v27 = v27 + v39;
      ++v10;
      ++v9;
    }

    while (v10 != 9);
    v40 = (5 * v7) / 400.0;
    v41 = v102[0];
    v42 = *(v102[0] + 24 * v11);
    v43 = 4 * v11;
    *(*(v102[0] + 96) + v43) = v40 * v26;
    *(v42 + 16) = v40 * v27;
    *(*(v41 + 120) + v43) = v40 * v27;
    v44 = (v6 - 4 + ~v7);
    if (v44 < 7)
    {
      goto LABEL_13;
    }

    for (i = 6; i < v44; i += 2)
    {
      v46 = 0.0;
      v47 = 8;
      v48 = v17 + 1;
      v49 = v16 + 1;
      v50 = 0.0;
      do
      {
        v51 = *v49;
        *(v49 - 1) = *v49;
        v46 = v46 + v51;
        v52 = *v48;
        *(v48 - 1) = *v48;
        v50 = v50 + v52;
        ++v49;
        ++v48;
        --v47;
      }

      while (v47);
      v53 = 2 * i + 8;
      v54 = i + v7;
      v55 = v54 * 2 + 8;
      v56 = (*(v12 + v53) - v12[v54 + 4]);
      v57 = 2 * i + 10;
      v54 += 5;
      v58 = (*(v12 + v57) - v12[v54]);
      v59 = (*(v13 + v53) - *(v13 + v55));
      v60 = (*(v13 + v57) - v13[v54]);
      v61 = v56 * v56 + 0.0 + v59 * v59;
      v62 = (*(v14 + v53) - *(v14 + v55));
      v63 = v58 * v58 + 0.0 + v60 * v60;
      v64 = (*(v14 + v57) - v14[v54]);
      v65 = v61 + v62 * v62;
      v66 = (*(v15 + v53) - *(v15 + v55));
      v67 = v63 + v64 * v64;
      v68 = (*(v15 + v57) - v15[v54]);
      v69 = v65 + v66 * v66;
      v16[8] = v69;
      v70 = v46 + v69;
      v71 = v67 + v68 * v68;
      v17[8] = v71;
      v72 = *(v41 + 24 * (i + v7));
      v73 = 4 * (i + v7);
      *(*(v41 + 24 * i) + v73) = v40 * v70;
      v74 = v40 * (v50 + v71);
      *(v72 + 4 * i) = v74;
      *(*(v41 + 24 * (i | 1)) + v73) = v74;
    }

    v17 = v98;
    if (v98)
    {
LABEL_13:
      v99 = v17;
      operator delete(v17);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v8 += 2;
    v75 = v7 >= 0x18E;
    v7 += 2;
  }

  while (!v75);
  sub_233730758(__p, (v5 >> 1));
  sub_23385C2FC(a3, 2uLL, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  sub_233730758(&v98, (v5 >> 1));
  sub_23385C2FC(__p, 2uLL, &v98);
  sub_23385BF60(a2);
  *a2 = *__p;
  a2[2] = v101;
  __p[1] = 0;
  v101 = 0;
  __p[0] = 0;
  v103 = __p;
  sub_2337A6DEC(&v103);
  if (v98)
  {
    v99 = v98;
    operator delete(v98);
  }

  if (v6 >= 1)
  {
    v78 = 0;
    v79 = 0;
    v80 = *a1;
    v81 = v102[0];
    v82 = **a3;
    v83 = (*a3)[3];
    v84 = (*a2)[3];
    v85 = **a2;
    v86 = -400;
    do
    {
      if (v86 <= (v79 & 1))
      {
        v87 = v79 & 1;
      }

      else
      {
        v87 = v86;
      }

      v88 = v78 - 400;
      if (v78 - 400 <= (v78 & 1))
      {
        v88 = v78 & 1;
      }

      LODWORD(v89) = v78 + 400;
      if (v78 + 400 >= v6)
      {
        v89 = v6;
      }

      else
      {
        v89 = v89;
      }

      v90 = 0.0;
      v91 = 0.0;
      v92 = 0.0;
      if (v88 < v89)
      {
        if (v86 <= (v79 & 1))
        {
          v93 = v79 & 1;
        }

        else
        {
          v93 = v86;
        }

        v94 = (*(v81 + 24 * v78) + ((4 * v87) & 0x1FFFFFFF8));
        do
        {
          LOWORD(v76) = *&(*v80)[2 * v93];
          v76 = *&v76;
          LOWORD(v77) = *&v80[3][2 * v93];
          v77 = *&v77;
          v95 = *v94++;
          v90 = v90 + v76 * (1.0 / v95);
          v91 = v91 + v77 * (1.0 / v95);
          v92 = v92 + 1.0 / v95;
          v93 += 2;
        }

        while (v93 < v89);
      }

      *(v82 + 8 * v78) = v90 / v92;
      *(v83 + 8 * v78) = v91 / v92;
      v96 = v92 * v92;
      *(v84 + 8 * v78) = v96;
      *(v85 + 8 * v78++) = v96;
      ++v79;
      ++v86;
    }

    while (v78 != v5 >> 1);
  }

  __p[0] = v102;
  sub_2337A6DEC(__p);
}

void sub_23385AE78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, void *__p, uint64_t a11, uint64_t a12, char *a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  a13 = a9;
  sub_2337A6DEC(&a13);
  a13 = &a17;
  sub_2337A6DEC(&a13);
  _Unwind_Resume(a1);
}

double sub_23385AEFC(void *a1, BOOL *a2, double *a3, double *a4)
{
  v4 = a1[4];
  if (a1[5] == v4)
  {
    sub_2337306B0();
  }

  v5 = (v4[1] - *v4) >> 3;
  v6 = v5;
  if (v5)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0.0;
    v11 = 0.0;
    do
    {
      v12 = 0;
      v13 = 0;
      do
      {
        v14 = v13;
        v15 = v9 | (v13++ >> 1);
        v16 = v14 & 1;
        v17 = *(v4[3 * (v13 & 1)] + 8 * v15);
        v18 = *(*(a1[10] + 24 * (v14 & 1)) + 8 * v15);
        v19 = fmax(v17, v18) > 600.0;
        if (v17 <= 1500.0 && v18 <= 1500.0 && fmin(fmax((v17 - v18) / 133.333333 * ((v17 - v18) / 133.333333 * -((v17 - v18) / 133.333333 * ((v17 - v18) / 133.333333))) * ((v17 - v18) / 133.333333) + 1.0, 0.0), 1.0) * fmin(fmax((fmin(*(*(a1[7] + 24 * (v13 & 1)) + 8 * v15), *(*(a1[13] + 24 * v16) + 8 * v15)) - v5 * 0.0000000018) / (v5 * 0.0000000018), 0.0), 2.0) >= 0.00001)
        {
          v12 |= v19;
          v10 = v9 / v6 + v10;
          v11 = v11 + 1.0;
          ++v8;
        }

        else
        {
          v12 = 1;
        }
      }

      while (v13 != 4);
      if ((v12 & 1) == 0)
      {
        v7 += 4;
      }

      v9 += 2;
    }

    while (v9 < v5);
    v20 = v10 / v11 + -0.5;
    v21 = v7;
    v22 = v8;
  }

  else
  {
    v22 = 0.0;
    v20 = NAN;
    v21 = 0.0;
  }

  *a2 = fabs(v20) < 0.15;
  *a3 = v21 / v6;
  result = v22 / v6;
  *a4 = result;
  return result;
}

void sub_23385B0D0(void *a1@<X0>, unsigned int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, double *a8@<X7>, void *a9@<X8>)
{
  v9 = a1[4];
  if (a1[5] == v9)
  {
    sub_2337306B0();
  }

  v16 = v9[1] - *v9;
  v65 = a3 + a2;
  v66 = a3 + a2 + a4;
  v67 = v66 + a5;
  if (a7)
  {
    v17 = 4;
  }

  else
  {
    v17 = 0;
  }

  v64 = v66 + a5 + a6;
  v18 = v64 + v17;
  v71[0] = 0;
  sub_233731694(&__p, (v18 + 1), v71);
  sub_23385C2FC(v74, (v16 >> 2) & 0xFFFFFFFE, &__p);
  if (__p)
  {
    v73 = __p;
    operator delete(__p);
  }

  v19 = a1[4];
  if (a1[5] == v19)
  {
    sub_2337306B0();
  }

  v20 = v16 >> 3;
  if ((v16 >> 3))
  {
    v21 = 0;
    v22 = 0;
    v23 = ((v19[1] - *v19) >> 3) * 0.0000000018;
    v61 = v20;
    v62 = v20;
    v24 = v17 + a6 + a5 + a4 + a3 + a2 + 1;
    while (1)
    {
      sub_233730758(&__p, 4uLL);
      sub_233730758(v71, 4uLL);
      sub_233730758(v70, 4uLL);
      sub_233730758(v69, 4uLL);
      sub_233730758(v68, 4uLL);
      v25 = 0;
      v26 = a1[4];
      v27 = v22 / v62;
      v28 = __p;
      v29 = a1[10];
      v30 = v71[0];
      v31 = a1[7];
      v32 = v70[0];
      v33 = a1[13];
      v34 = v69[0];
      v35 = 1;
      v36 = v68[0];
      do
      {
        v37 = v25 + 1;
        v38 = (8 * ((v25 + 1) & 1)) & 0xEF | (16 * ((v25 + 1) & 1));
        v39 = v22 | (v25 >> 1);
        v28[v25] = *(*(v26 + v38) + 8 * v39);
        v40 = (8 * (v25 & 1)) & 0xEF | (16 * (v25 & 1));
        v30[v25] = *(*(v29 + v40) + 8 * v39);
        v32[v25] = *(*(v31 + v38) + 8 * v39);
        v34[v25] = *(*(v33 + v40) + 8 * v39);
        v41 = *&v28[v25];
        if (v41 <= 1500.0 && (v42 = *&v30[v25], v42 <= 1500.0))
        {
          v43 = fmax(v41, v42) <= 600.0;
          v44 = fmin(fmax((v41 - v42) / 133.333333 * ((v41 - v42) / 133.333333 * -((v41 - v42) / 133.333333 * ((v41 - v42) / 133.333333))) * ((v41 - v42) / 133.333333) + 1.0, 0.0), 1.0);
          v36[v25] = v44;
          v45 = v44 * fmin(fmax((fmin(*&v32[v25], *&v34[v25]) - v23) / v23, 0.0), 2.0);
          v36[v25] = v45;
          if (v45 < 0.00001)
          {
            v43 = 0;
          }

          v35 &= v43;
          v46 = fmin(*&v28[v25], *&v30[v25]);
          v36[v25] = v45 * ((v46 * -0.5 + 2000.0) / 2000.0 * ((v46 * -0.5 + 2000.0) / 2000.0));
        }

        else
        {
          v35 = 0;
        }

        ++v25;
      }

      while (v37 != 4);
      if (a7)
      {
        v47 = v68[0];
        v48 = (*v68[0] + *(v68[0] + 1) + *(v68[0] + 2) + *(v68[0] + 3)) * 0.25;
        *(v68[0] + 2) = v48;
        v47[3] = v48;
        *v47 = v48;
        v47[1] = v48;
      }

      v49 = 0;
      v50 = v68[0];
      v51 = __p;
      v52 = v71[0];
      v53 = v74[0];
      do
      {
        if (v50[v49] < 0.00001)
        {
          goto LABEL_40;
        }

        v54 = v51[v49];
        v55 = v52[v49];
        if (a2)
        {
          **(v53 + 24 * v21) = 0x3FF0000000000000;
        }

        v56 = (v54 + v55) * 0.5;
        if (a3)
        {
          *(*(v53 + 24 * v21) + 8 * a2) = v56;
          if (!a4)
          {
LABEL_26:
            if (!a5)
            {
              goto LABEL_27;
            }

            goto LABEL_32;
          }
        }

        else if (!a4)
        {
          goto LABEL_26;
        }

        *(*(v53 + 24 * v21) + 8 * v65) = v56 * v56;
        if (!a5)
        {
LABEL_27:
          if (!a6)
          {
            goto LABEL_28;
          }

          goto LABEL_33;
        }

LABEL_32:
        *(*(v53 + 24 * v21) + 8 * v66) = v27;
        if (!a6)
        {
LABEL_28:
          if (!a7)
          {
            goto LABEL_37;
          }

          goto LABEL_34;
        }

LABEL_33:
        *(*(v53 + 24 * v21) + 8 * v67) = v27 * v27;
        if (!a7)
        {
          goto LABEL_37;
        }

LABEL_34:
        if (v35)
        {
          *(*(v53 + 24 * v21) + 8 * v49 + 8 * v64) = 0x3FF0000000000000;
        }

        else if (!(a5 | a6 | a3 | a2 | a4))
        {
          goto LABEL_40;
        }

LABEL_37:
        v57 = *(v53 + 24 * v21);
        v57[v18] = v51[v49] - v52[v49];
        v58 = v24;
        do
        {
          *v57 = v50[v49] * *v57;
          ++v57;
          --v58;
        }

        while (v58);
        ++v21;
LABEL_40:
        ++v49;
      }

      while (v49 != 4);
      if (v68[0])
      {
        v68[1] = v68[0];
        operator delete(v68[0]);
        v34 = v69[0];
      }

      if (v34)
      {
        v69[1] = v34;
        operator delete(v34);
      }

      if (v70[0])
      {
        v70[1] = v70[0];
        operator delete(v70[0]);
      }

      if (v71[0])
      {
        v71[1] = v71[0];
        operator delete(v71[0]);
      }

      if (__p)
      {
        v73 = __p;
        operator delete(__p);
      }

      v22 += 2;
      if (v22 >= v61)
      {
        if (v21 >= 0x64)
        {
          sub_233730758(&__p, v18);
          operator new[]();
        }

        break;
      }
    }
  }

  *a8 = 1.0e10;
  *a9 = 0;
  a9[1] = 0;
  __p = v74;
  sub_2337A6DEC(&__p);
}

void sub_23385B788(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a32)
  {
    a33 = a32;
    operator delete(a32);
  }

  a32 = (v33 - 176);
  sub_2337A6DEC(&a32);
  _Unwind_Resume(a1);
}

void *sub_23385B894(uint64_t a1, int a2, int a3, const void *a4, void *a5)
{
  v7 = dgels_NEWLAPACK();
  MEMORY[0x28223BE20](v7);
  dgels_NEWLAPACK();
  return memcpy(a5, a4, 8 * a2);
}

double sub_23385B9FC(char ***a1, double ***a2)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  memset(v11, 0, sizeof(v11));
  sub_23385BB38(a1, a2, &v12, v11);
  if (v13 == v12)
  {
    sub_2337306B0();
  }

  v2 = v12[1] - *v12;
  if ((v2 >> 3))
  {
    v3 = 0;
    v4 = 0.0;
    do
    {
      for (i = 0; i != 4; ++i)
      {
        v6 = v3 | (i >> 1);
        v7 = *(v12[3 * ((i + 1) & 1)] + 8 * v6);
        v8 = *(v11[0][3 * (i & 1)] + v6);
        v4 = v4 + (v7 - v8) * (v7 - v8);
      }

      v3 += 2;
    }

    while (v3 < (v2 >> 3));
  }

  else
  {
    v4 = 0.0;
  }

  v9 = v4 / (v2 >> 3);
  v15 = v11;
  sub_2337A6DEC(&v15);
  v11[0] = &v12;
  sub_2337A6DEC(v11);
  return v9;
}

void sub_23385BB08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v13 - 40) = &a10;
  sub_2337A6DEC((v13 - 40));
  a10 = &a13;
  sub_2337A6DEC(&a10);
  _Unwind_Resume(a1);
}

void sub_23385BB38(char ***result, double ***a2, uint64_t a3, uint64_t **a4)
{
  if (result + 4 != a3)
  {
    sub_23385C3B8(a3, result[4], result[5], 0xAAAAAAAAAAAAAAABLL * (result[5] - result[4]));
  }

  if (result + 10 != a4)
  {
    sub_23385C3B8(a4, result[10], result[11], 0xAAAAAAAAAAAAAAABLL * (result[11] - result[10]));
  }

  v8 = *a3;
  if (*(a3 + 8) == *a3)
  {
    sub_2337306B0();
  }

  v9 = *a2;
  v10 = **a2;
  v11 = 0.0;
  v12 = 0.0;
  v13 = 0.0;
  v14 = 0.0;
  v15 = ((*a2)[1] - v10);
  if (v15)
  {
    v13 = *v10;
    if (v15 >= 9)
    {
      v12 = v10[1];
      if (v15 != 16)
      {
        v14 = v10[2];
      }
    }
  }

  v16 = v9[6];
  v17 = v9[7] - v16;
  if (v17)
  {
    v18 = *v16;
    if (v17 >= 9)
    {
      v11 = v16[1];
    }
  }

  else
  {
    v18 = 0.0;
  }

  v19 = ((v8[1] - *v8) >> 3);
  if (((v8[1] - *v8) >> 3))
  {
    v20 = 0;
    v22 = v9 + 3;
    v21 = v9[3];
    v23 = v22[1] - v21;
    v24 = *a4;
    do
    {
      v25 = 0;
      do
      {
        v26 = v25 + 1;
        v27 = v20 | (v25 >> 1);
        v28 = v8[3 * ((v25 + 1) & 1)];
        v29 = v24[3 * (v25 & 1)];
        v30 = *(v28 + 8 * v27);
        v31 = *(v29 + 8 * v27);
        if (v30 <= 2000.0 && v31 <= 2000.0)
        {
          if (v23 == 32)
          {
            v33 = v21[v25];
            v34 = v30 + ((((v30 * v30) * -0.0000015625) + 1.0) * (v33 * 0.5));
            if (v30 <= 800.0)
            {
              v30 = v34;
            }
          }

          v35 = ((v11 * v27) * v27) + (v18 * v27);
          if (v30 <= 2000.0)
          {
            v30 = v30 + ((((v30 * v30) * -0.00000025) + 1.0) * ((v35 + ((v13 + (v12 * v30)) + ((v14 * v30) * v30))) * 0.5));
          }

          if (v23 == 32)
          {
            v36 = v21[v25];
            v37 = v31 + ((((v31 * v31) * -0.0000015625) + 1.0) * (v36 * -0.5));
            if (v31 <= 800.0)
            {
              v31 = v37;
            }
          }

          v38 = v31 + ((((v31 * v31) * -0.00000025) + 1.0) * ((v35 + ((v13 + (v12 * v31)) + ((v14 * v31) * v31))) * -0.5));
          if (v31 <= 2000.0)
          {
            v31 = v38;
          }

          *(v28 + 8 * v27) = v30;
          *(v29 + 8 * v27) = v31;
        }

        ++v25;
      }

      while (v26 != 4);
      v20 += 2;
    }

    while (v20 < v19);
  }
}

void sub_23385BDC8(uint64_t a1)
{
  sub_23385C7F0(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t *sub_23385BE00(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_23385BEBC(a1, a2);
  }

  return a1;
}

void sub_23385BEBC(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_23385BF08(a1, a2);
  }

  sub_2337235BC();
}

void sub_23385BF08(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_2337236AC();
}

void sub_23385BF60(uint64_t *a1)
{
  if (*a1)
  {
    sub_2337A6E40(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t *sub_23385BFA0(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_23385BEBC(result, a4);
  }

  return result;
}

void sub_23385C008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_2337A6DEC(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_23385C028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      sub_233728FF4(v4, *v6, *(v6 + 8), (*(v6 + 8) - *v6) >> 1);
      v6 += 24;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_23385C0DC(v8);
  return v4;
}

uint64_t sub_23385C0DC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_2337A6D9C(a1);
  }

  return a1;
}

void sub_23385C114(uint64_t a1, char **a2, char **a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    sub_23385BF60(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      sub_23385BEBC(a1, v10);
    }

    sub_2337235BC();
  }

  v11 = *(a1 + 8) - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 3) >= a4)
  {
    sub_23385C28C(&v19, a2, a3, v8);
    v13 = v12;
    v14 = *(a1 + 8);
    if (v14 != v12)
    {
      v15 = *(a1 + 8);
      do
      {
        v17 = *(v15 - 24);
        v15 -= 24;
        v16 = v17;
        if (v17)
        {
          *(v14 - 16) = v16;
          operator delete(v16);
        }

        v14 = v15;
      }

      while (v15 != v13);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    sub_23385C28C(&v18, a2, (a2 + v11), v8);
    *(a1 + 8) = sub_23385C028(a1, a2 + v11, a3, *(a1 + 8));
  }
}

char **sub_23385C28C(int a1, char **a2, char **a3, uint64_t *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        sub_233754F80(a4, *v5, v5[1], (v5[1] - *v5) >> 1);
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t *sub_23385C2FC(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_2337A6C64(a1, a2);
  }

  return a1;
}

void sub_23385C3B8(uint64_t **a1, char **a2, char **a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) < a4)
  {
    sub_23385BF60(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * (a1[2] - *a1);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      sub_2337A6C64(a1, v10);
    }

    sub_2337235BC();
  }

  v11 = a1[1] - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 3) >= a4)
  {
    sub_23385C61C(&v19, a2, a3, v8);
    v13 = v12;
    v14 = a1[1];
    if (v14 != v12)
    {
      v15 = a1[1];
      do
      {
        v17 = *(v15 - 24);
        v15 -= 24;
        v16 = v17;
        if (v17)
        {
          *(v14 - 16) = v16;
          operator delete(v16);
        }

        v14 = v15;
      }

      while (v15 != v13);
    }

    a1[1] = v13;
  }

  else
  {
    sub_23385C61C(&v18, a2, (a2 + v11), v8);
    a1[1] = sub_23385C530(a1, a2 + v11, a3, a1[1]);
  }
}

uint64_t *sub_23385C530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      sub_2337236E0(v4, *v6, *(v6 + 8), (*(v6 + 8) - *v6) >> 3);
      v6 += 24;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_23385C5E4(v8);
  return v4;
}

uint64_t sub_23385C5E4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_2337A6D9C(a1);
  }

  return a1;
}

char **sub_23385C61C(int a1, char **a2, char **a3, uint64_t *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        sub_23373176C(a4, *v5, v5[1], (v5[1] - *v5) >> 3);
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void *sub_23385C6F8(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284925640;
  sub_233859D10((a1 + 3), a2);
  return a1;
}

void sub_23385C774(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284925640;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_23385C7F0(uint64_t a1)
{
  *a1 = &unk_284925610;
  v2 = *(a1 + 136);
  if (v2)
  {
    sub_2337239E8(v2);
  }

  v5 = (a1 + 104);
  sub_2337A6DEC(&v5);
  v5 = (a1 + 80);
  sub_2337A6DEC(&v5);
  v5 = (a1 + 56);
  sub_2337A6DEC(&v5);
  v5 = (a1 + 32);
  sub_2337A6DEC(&v5);
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_2337239E8(v3);
  }

  return a1;
}

double sub_23385C8C0(uint64_t a1)
{
  (*(*a1 + 8))(&v6);
  v1 = -1.0;
  if (v6 != v7)
  {
    v2 = v6;
    do
    {
      v3 = *v2++;
      v4 = v3;
      if (v3 > v1)
      {
        v1 = v4;
      }
    }

    while (v2 != v7);
  }

  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }

  return v1;
}

uint64_t *sub_23385C944@<X0>(uint64_t a1@<X1>, unsigned int a2@<W2>, uint64_t *a3@<X8>, double a4@<D0>)
{
  v8 = a2;
  result = sub_233730758(a3, a2);
  if (a2)
  {
    v10 = 0;
    v11 = *(a1 + 8);
    v12 = *a3;
    v13 = (a3[1] - *a3) >> 3;
    do
    {
      v14 = v11 + 16 * v10;
      v15 = *(v14 + 4);
      if (v15)
      {
        v16 = 0;
        v17 = *(v14 + 8);
        while (*v17 <= a4)
        {
          ++v16;
          v17 += 3;
          if (v15 == v16)
          {
            LODWORD(v16) = *(v14 + 4);
            break;
          }
        }
      }

      else
      {
        LODWORD(v16) = 0;
      }

      if (v13 <= v10)
      {
        sub_2337306B0();
      }

      *(v12 + 8 * v10++) = *(*(v14 + 8) + 24 * (v16 - (v16 == v15)) + 8) + *(*(v14 + 8) + 24 * (v16 - (v16 == v15)) + 16) * a4;
    }

    while (v10 != v8);
  }

  return result;
}

void sub_23385CA24(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_23385CA40(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t *a3@<X8>, double a4@<D0>)
{
  v5 = a4;
  v7 = *(a1 + 24);
  v8 = *(v7 + 4);
  if (!v8)
  {
    goto LABEL_10;
  }

  v11 = 0;
  v12 = *(v7 + 8);
  while (*v12 < a2)
  {
    ++v11;
    v12 += 4;
    if (v8 == v11)
    {
      LODWORD(v11) = *(v7 + 4);
      goto LABEL_7;
    }
  }

  if (*v12 == a2)
  {
    goto LABEL_11;
  }

LABEL_7:
  if (!v11)
  {
LABEL_10:
    v12 = *(v7 + 8);
    goto LABEL_11;
  }

  if (v11 == v8)
  {
    v12 = (*(v7 + 8) + 16 * (v8 - 1));
LABEL_11:
    v13 = *v7;

    sub_23385C944(v12, v13, a3, a4);
    return;
  }

  v14 = (v11 - 1);
  sub_23385C944(*(v7 + 8) + 16 * v14, *v7, &v28, a4);
  sub_23385C944(*(*(a1 + 24) + 8) + 16 * v11, **(a1 + 24), &__p, v5);
  v15 = v28;
  v16 = v29;
  v17 = v29 - v28;
  if (v29 - v28 != v27 - __p)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v18 = *(*(a1 + 24) + 8);
  LODWORD(v4) = *(v18 + 16 * v14);
  LODWORD(v5) = *(v18 + 16 * v11);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  sub_2337236E0(a3, v15, v16, v17 >> 3);
  v19 = __p;
  v20 = v28;
  v21 = v29;
  if (v28 != v29)
  {
    v22 = v28;
    v23 = __p;
    do
    {
      v24 = *v23++;
      *v22 = *v22 + (*v22 + v24) * ((a2 - v4) / (*&v5 - v4));
      ++v22;
    }

    while (v22 != v21);
  }

  if (v19)
  {
    v27 = v19;
    operator delete(v19);
    v20 = v28;
  }

  if (v20)
  {
    v29 = v20;
    operator delete(v20);
  }
}

void sub_23385CC50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_23385CC98(void *a1)
{
  *a1 = &unk_284919438;
  v1 = a1[2];
  if (v1)
  {
    sub_2337239E8(v1);
  }

  JUMPOUT(0x2383ABF10);
}

void *sub_23385CD78(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2849256D8;
  sub_23385CE74(a1 + 3, *a2, a3);
  return a1;
}

void sub_23385CDF8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2849256D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void *sub_23385CE74(void *result, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v3 = a3[1];
  *result = &unk_284919438;
  result[1] = v4;
  result[2] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *result = &unk_284925690;
  result[3] = a2;
  if (!a2 || !*(a2 + 4))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void sub_23385CF5C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v3);
  *v1 = v2;
  v5 = v1[2];
  if (v5)
  {
    sub_2337239E8(v5);
  }

  _Unwind_Resume(a1);
}

void sub_23385CFBC(uint64_t result, uint64_t a2, float *a3, _BYTE *a4)
{
  *(a3 + 2) = 0u;
  *(a3 + 3) = 0u;
  *a3 = 0u;
  *(a3 + 1) = 0u;
  v4 = *(result + 8);
  if (v4)
  {
    v6 = a2;
    *a4 = *(v4 + 8);
    sub_23385D108(result, a2, &v28);
    v9 = v28;
    v8 = v29;
    if (v28 != v29)
    {
      v10 = a3;
      v11 = v28;
      do
      {
        v12 = *v11++;
        v13 = v12;
        *v10 = v13;
        v10 += 4;
      }

      while (v11 != v8);
    }

    sub_23385D38C(result, v6, &v26);
    if (v9)
    {
      operator delete(v9);
    }

    v15 = v26;
    v14 = v27;
    if (v26 != v27)
    {
      v16 = a3 + 1;
      v17 = v26;
      do
      {
        v18 = *v17++;
        v19 = v18;
        *v16 = v19;
        v16 += 4;
      }

      while (v17 != v14);
    }

    sub_23385D600(result, v6, &v26);
    if (v15)
    {
      operator delete(v15);
    }

    v21 = v26;
    v20 = v27;
    if (v26 != v27)
    {
      v22 = a3 + 2;
      v23 = v26;
      do
      {
        v24 = *v23++;
        v25 = v24;
        *v22 = v25;
        v22 += 4;
      }

      while (v23 != v20);
    }

    sub_23385D874(result, &v26);
    sub_2338FD13C(v21, &v28, a3, &v26);
  }
}

void sub_23385D0E8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_23385D108(uint64_t a1@<X0>, unsigned int a2@<W1>, double **a3@<X8>)
{
  sub_233730758(&__p, **(a1 + 8));
  v6 = *(a1 + 8);
  v7 = *(v6 + 3);
  v8 = v6[1];
  if (!v8)
  {
    goto LABEL_14;
  }

  v9 = 0;
  v10 = v7 + 16 * (v8 - 1) + 16;
  while (*v7 < a2)
  {
    ++v9;
    v7 += 16;
    if (v8 == v9)
    {
      v7 = v10;
      goto LABEL_9;
    }
  }

  if (!v9 || *v7 == a2)
  {
LABEL_14:
    v18 = *v6;
    v12 = __p;
    v13 = v34;
    if (v18)
    {
      v19 = 0;
      v20 = (v34 - __p) >> 3;
      v21 = 24 * v18;
      v22 = __p;
      while (v20)
      {
        *v22++ = *(*(v7 + 8) + v19);
        --v20;
        v19 += 24;
        if (v21 == v19)
        {
          goto LABEL_18;
        }
      }

LABEL_29:
      sub_2337306B0();
    }

    goto LABEL_18;
  }

  if (v8 == v9)
  {
LABEL_9:
    v11 = *v6;
    v12 = __p;
    v13 = v34;
    if (v11)
    {
      v14 = 0;
      v15 = (v34 - __p) >> 3;
      v16 = 24 * v11;
      v17 = __p;
      while (v15)
      {
        *v17++ = *(*(v7 - 8) + v14);
        --v15;
        v14 += 24;
        if (v16 == v14)
        {
          goto LABEL_18;
        }
      }

      goto LABEL_29;
    }

LABEL_18:
    *a3 = v12;
    a3[1] = v13;
    a3[2] = v35;
    return;
  }

  sub_23385D108(a1, *(v7 - 16), a3);
  sub_23385D108(a1, *v7, v32);
  v26 = *a3;
  v25 = a3[1];
  v27 = v32[0];
  if (v25 - *a3 != v32[1] - v32[0])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (v26 != v25)
  {
    LODWORD(v23) = *(v7 - 16);
    LODWORD(v24) = *v7;
    v28 = (a2 - v23) / (v24 - v23);
    v29 = v32[0];
    do
    {
      v30 = *v29++;
      *v26 = *v26 + (v30 - *v26) * v28;
      ++v26;
    }

    while (v26 != v25);
  }

  if (v27)
  {
    operator delete(v27);
  }

  if (__p)
  {
    v34 = __p;
    operator delete(__p);
  }
}

void sub_23385D328(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  __pa = *v15;
  if (*v15)
  {
    *(v15 + 8) = __pa;
    operator delete(__pa);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_23385D38C(uint64_t a1@<X0>, unsigned int a2@<W1>, double **a3@<X8>)
{
  sub_233730758(&__p, **(a1 + 8));
  v6 = *(a1 + 8);
  v7 = *(v6 + 3);
  v8 = v6[1];
  if (!v8)
  {
    goto LABEL_14;
  }

  v9 = 0;
  v10 = v7 + 16 * (v8 - 1) + 16;
  while (*v7 < a2)
  {
    ++v9;
    v7 += 16;
    if (v8 == v9)
    {
      v7 = v10;
      goto LABEL_9;
    }
  }

  if (!v9 || *v7 == a2)
  {
LABEL_14:
    v17 = *v6;
    v12 = __p;
    v13 = v32;
    if (v17)
    {
      v18 = (v32 - __p) >> 3;
      v19 = 8;
      v20 = __p;
      while (v18)
      {
        *v20++ = *(*(v7 + 8) + v19);
        --v18;
        v19 += 24;
        if (!--v17)
        {
          goto LABEL_18;
        }
      }

LABEL_29:
      sub_2337306B0();
    }

    goto LABEL_18;
  }

  if (v8 == v9)
  {
LABEL_9:
    v11 = *v6;
    v12 = __p;
    v13 = v32;
    if (v11)
    {
      v14 = (v32 - __p) >> 3;
      v15 = 8;
      v16 = __p;
      while (v14)
      {
        *v16++ = *(*(v7 - 8) + v15);
        --v14;
        v15 += 24;
        if (!--v11)
        {
          goto LABEL_18;
        }
      }

      goto LABEL_29;
    }

LABEL_18:
    *a3 = v12;
    a3[1] = v13;
    a3[2] = v33;
    return;
  }

  sub_23385D38C(a1, *(v7 - 16), a3);
  sub_23385D38C(a1, *v7, v30);
  v24 = *a3;
  v23 = a3[1];
  v25 = v30[0];
  if (v23 - *a3 != v30[1] - v30[0])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (v24 != v23)
  {
    LODWORD(v21) = *(v7 - 16);
    LODWORD(v22) = *v7;
    v26 = (a2 - v21) / (v22 - v21);
    v27 = v30[0];
    do
    {
      v28 = *v27++;
      *v24 = *v24 + (v28 - *v24) * v26;
      ++v24;
    }

    while (v24 != v23);
  }

  if (v25)
  {
    operator delete(v25);
  }

  if (__p)
  {
    v32 = __p;
    operator delete(__p);
  }
}

void sub_23385D59C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  __pa = *v15;
  if (*v15)
  {
    *(v15 + 8) = __pa;
    operator delete(__pa);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_23385D600(uint64_t a1@<X0>, unsigned int a2@<W1>, double **a3@<X8>)
{
  sub_233730758(&__p, **(a1 + 8));
  v6 = *(a1 + 8);
  v7 = *(v6 + 3);
  v8 = v6[1];
  if (!v8)
  {
    goto LABEL_14;
  }

  v9 = 0;
  v10 = v7 + 16 * (v8 - 1) + 16;
  while (*v7 < a2)
  {
    ++v9;
    v7 += 16;
    if (v8 == v9)
    {
      v7 = v10;
      goto LABEL_9;
    }
  }

  if (!v9 || *v7 == a2)
  {
LABEL_14:
    v17 = *v6;
    v12 = __p;
    v13 = v32;
    if (v17)
    {
      v18 = (v32 - __p) >> 3;
      v19 = 16;
      v20 = __p;
      while (v18)
      {
        *v20++ = *(*(v7 + 8) + v19);
        --v18;
        v19 += 24;
        if (!--v17)
        {
          goto LABEL_18;
        }
      }

LABEL_29:
      sub_2337306B0();
    }

    goto LABEL_18;
  }

  if (v8 == v9)
  {
LABEL_9:
    v11 = *v6;
    v12 = __p;
    v13 = v32;
    if (v11)
    {
      v14 = (v32 - __p) >> 3;
      v15 = 16;
      v16 = __p;
      while (v14)
      {
        *v16++ = *(*(v7 - 8) + v15);
        --v14;
        v15 += 24;
        if (!--v11)
        {
          goto LABEL_18;
        }
      }

      goto LABEL_29;
    }

LABEL_18:
    *a3 = v12;
    a3[1] = v13;
    a3[2] = v33;
    return;
  }

  sub_23385D600(a1, *(v7 - 16), a3);
  sub_23385D600(a1, *v7, v30);
  v24 = *a3;
  v23 = a3[1];
  v25 = v30[0];
  if (v23 - *a3 != v30[1] - v30[0])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (v24 != v23)
  {
    LODWORD(v21) = *(v7 - 16);
    LODWORD(v22) = *v7;
    v26 = (a2 - v21) / (v22 - v21);
    v27 = v30[0];
    do
    {
      v28 = *v27++;
      *v24 = *v24 + (v28 - *v24) * v26;
      ++v24;
    }

    while (v24 != v23);
  }

  if (v25)
  {
    operator delete(v25);
  }

  if (__p)
  {
    v32 = __p;
    operator delete(__p);
  }
}

void sub_23385D810(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  __pa = *v15;
  if (*v15)
  {
    *(v15 + 8) = __pa;
    operator delete(__pa);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

double sub_23385D874@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_233730758(a2, **(a1 + 8));
  v5 = *(a1 + 8);
  v6 = *v5;
  if (v6)
  {
    v7 = 0;
    v8 = *a2;
    v9 = (a2[1] - *a2) >> 3;
    do
    {
      if (v9 == v7)
      {
        sub_2337306B0();
      }

      result = *(*(v5 + 2) + 8 * v7);
      *(v8 + 8 * v7++) = result;
    }

    while (v6 != v7);
  }

  return result;
}

void sub_23385D8EC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_23385D908(void *a1)
{
  *a1 = &unk_284925728;
  v2 = a1[3];
  if (v2)
  {
    sub_2337239E8(v2);
  }

  return a1;
}

void sub_23385D954(void *a1)
{
  *a1 = &unk_284925728;
  v1 = a1[3];
  if (v1)
  {
    sub_2337239E8(v1);
  }

  JUMPOUT(0x2383ABF10);
}

void sub_23385DA88(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284925760;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t *sub_23385DB34@<X0>(uint64_t a1@<X1>, unsigned int a2@<W2>, uint64_t *a3@<X8>, double a4@<D0>)
{
  v8 = a2;
  result = sub_233730758(a3, a2);
  if (a2)
  {
    v10 = 0;
    v11 = *(a1 + 8);
    v12 = *a3;
    v13 = (a3[1] - *a3) >> 3;
    do
    {
      v14 = v11 + 16 * v10;
      v15 = *(v14 + 4);
      if (v15)
      {
        v16 = 0;
        v17 = *(v14 + 8);
        while (*v17 <= a4)
        {
          ++v16;
          v17 += 3;
          if (v15 == v16)
          {
            LODWORD(v16) = *(v14 + 4);
            break;
          }
        }
      }

      else
      {
        LODWORD(v16) = 0;
      }

      if (v13 <= v10)
      {
        sub_2337306B0();
      }

      *(v12 + 8 * v10++) = *(*(v14 + 8) + 24 * (v16 - (v16 == v15)) + 8) + *(*(v14 + 8) + 24 * (v16 - (v16 == v15)) + 16) * fmin(a4, *(*(v14 + 8) + 24 * (v15 - 1)));
    }

    while (v10 != v8);
  }

  return result;
}

void sub_23385DC24(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_23385DC40(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t *a3@<X8>, double a4@<D0>)
{
  v6 = *(a1 + 8);
  if (!v6)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return;
  }

  v7 = a4;
  v8 = *(v6 + 4);
  if (!v8)
  {
    goto LABEL_11;
  }

  v11 = 0;
  v12 = *(v6 + 8);
  while (*v12 < a2)
  {
    ++v11;
    v12 += 4;
    if (v8 == v11)
    {
      LODWORD(v11) = *(v6 + 4);
      goto LABEL_8;
    }
  }

  if (*v12 == a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  if (!v11)
  {
LABEL_11:
    v12 = *(v6 + 8);
    goto LABEL_12;
  }

  if (v11 == v8)
  {
    v12 = (*(v6 + 8) + 16 * (v8 - 1));
LABEL_12:
    v13 = *v6;

    sub_23385DB34(v12, v13, a3, a4);
    return;
  }

  v14 = (v11 - 1);
  sub_23385DB34(*(v6 + 8) + 16 * v14, *v6, &v28, a4);
  sub_23385DB34(*(*(a1 + 8) + 8) + 16 * v11, **(a1 + 8), &__p, v7);
  v15 = v28;
  v16 = v29;
  v17 = v29 - v28;
  if (v29 - v28 != v27 - __p)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v18 = *(*(a1 + 8) + 8);
  LODWORD(v4) = *(v18 + 16 * v14);
  LODWORD(v7) = *(v18 + 16 * v11);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  sub_2337236E0(a3, v15, v16, v17 >> 3);
  v19 = __p;
  v20 = v28;
  v21 = v29;
  if (v28 != v29)
  {
    v22 = v28;
    v23 = __p;
    do
    {
      v24 = *v23++;
      *v22 = *v22 + (*v22 + v24) * ((a2 - v4) / (*&v7 - v4));
      ++v22;
    }

    while (v22 != v21);
  }

  if (v19)
  {
    v27 = v19;
    operator delete(v19);
    v20 = v28;
  }

  if (v20)
  {
    v29 = v20;
    operator delete(v20);
  }
}

void sub_23385DE60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void *sub_23385DEA8(void *a1)
{
  *a1 = &unk_2849257B0;
  v2 = a1[3];
  if (v2)
  {
    sub_2337239E8(v2);
  }

  return a1;
}

void sub_23385DEF4(void *a1)
{
  *a1 = &unk_2849257B0;
  v1 = a1[3];
  if (v1)
  {
    sub_2337239E8(v1);
  }

  JUMPOUT(0x2383ABF10);
}

void sub_23385E028(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2849257E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_23385E0A4(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = *a2;
  v6 = a2[1];
  *a1 = &unk_284925838;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    v5 = *(a1 + 8);
  }

  *(a1 + 24) = 0x80000000800;
  v7 = (*(*v5 + 520))(v5);
  *(a1 + 88) = 0;
  *(a1 + 80) = a1 + 88;
  *(a1 + 32) = v7;
  v9 = *(a1 + 24);
  v8 = *(a1 + 28);
  v10 = (v7 + v9 - 1) / v9;
  v11 = (HIDWORD(v7) + v8 - 1) / v8;
  *(a1 + 40) = v10;
  *(a1 + 44) = v11;
  v12 = (v11 * v10);
  *(a1 + 48) = v12;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 52) = 0;
  *(a1 + 68) = 0;
  *(a1 + 60) = 0;
  *(a1 + 76) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = *a3;
  if (v9 >> 4 > 0x270 || (v8 - 10000) <= 0xFFFFD8F0 || (v7 - 100000) < 0xFFFE7961 || (HIDWORD(v7) - 100000) < 0xFFFE7961)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  sub_23385E2E4((a1 + 56), v12);
  return a1;
}

void sub_23385E284(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v12 = *(v10 + 16);
  if (v12)
  {
    sub_2337239E8(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_23385E2E4(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 16 * a2;
    }
  }

  else
  {
    sub_23385EEE4(result, a2 - v2);
  }
}

void sub_23385E340(uint64_t a1, uint64_t *a2)
{
  v4 = sub_2338571C8(*a2);
  sub_23385E4E0(a1, v4);
  v13 = *(*a2 + 48);
  sub_23385E544(a1, &v13, &v14);
  v11 = 0;
  v12 = 0;
  __p = 0;
  sub_233729070(&__p, v14, v15, (v15 - v14) >> 2);
  sub_23385E93C(a1, &__p, &v13);
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }

  for (i = v13.i64[0]; i != v13.i64[1]; i += 2)
  {
    v6 = i[1];
    *&v9 = *i;
    *(&v9 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    sub_23385778C(*a2, &v9);
    if (*(&v9 + 1))
    {
      sub_2337239E8(*(&v9 + 1));
    }
  }

  v8 = *(a1 + 104);
  v7 = *(a1 + 112);
  if (*(a1 + 48) == (v7 - v8) >> 4)
  {
    while (v8 != v7)
    {
      if (!*v8)
      {
        goto LABEL_14;
      }

      v8 += 16;
    }

    sub_233738F10(*(a1 + 8));
  }

LABEL_14:
  *&v9 = &v13;
  sub_233723948(&v9);
  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }
}

void sub_23385E480(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15)
{
  a10 = &a15;
  sub_233723948(&a10);
  v17 = *(v15 - 56);
  if (v17)
  {
    *(v15 - 48) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_23385E4E0(uint64_t result, int a2)
{
  v2 = *(result + 52);
  if (v2 != a2 && v2 != 0)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  *(result + 52) = a2;
  return result;
}

void sub_23385E544(uint64_t a1@<X0>, uint32x4_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6.i64[0] = 0x7F0000007FLL;
  v6.i64[1] = 0x7F0000007FLL;
  v36 = vcgtq_u32(*a2, v6);
  v7 = (HIDWORD(a2->i64[0]) << 32) + (a2->u32[0] << 48) + (a2->i64[1] << 16) + HIDWORD(*a2);
  v40 = v7;
  if (vmaxv_u16(vmovn_s32(v36)))
  {
    goto LABEL_2;
  }

  v29 = *(a1 + 88);
  if (!v29)
  {
    goto LABEL_2;
  }

  v30 = (a1 + 88);
  do
  {
    v31 = v29[4];
    v25 = v31 >= v7;
    v32 = v31 < v7;
    if (v25)
    {
      v30 = v29;
    }

    v29 = v29[v32];
  }

  while (v29);
  if (v30 == (a1 + 88) || v7 < v30[4])
  {
LABEL_2:
    v38 = 0;
    v39 = *(a1 + 32);
    if (!sub_23385F3FC(a2->i32, &v38))
    {
      __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0]();
      sub_2338F83F4();
    }

    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    v8 = *(a1 + 40);
    sub_233754C14(a3, *(a1 + 48));
    if (*(a1 + 44))
    {
      v9 = 0;
      v37 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      do
      {
        if (v11 >= v8)
        {
          v12 = v11;
        }

        else
        {
          while (1)
          {
            v13 = v11 + *(a1 + 40) * v9;
            v14 = sub_23385EC98(a1, v13);
            v38 = v14;
            v39 = v15;
            if (a2->i32[2] + a2->i32[0] <= v14)
            {
              break;
            }

            v16 = a2->i32[1];
            if (v16 >= HIDWORD(v15) + HIDWORD(v14))
            {
              goto LABEL_32;
            }

            if (a2->i32[3] + v16 <= SHIDWORD(v14))
            {
              v9 = *(a1 + 44);
              goto LABEL_32;
            }

            if (v10)
            {
              v12 = v12;
            }

            else
            {
              v12 = v11;
            }

            if (sub_23385F470(&v38, a2->i32))
            {
              v18 = *(a3 + 8);
              v17 = *(a3 + 16);
              if (v18 >= v17)
              {
                v20 = *a3;
                v21 = v18 - *a3;
                v22 = v21 >> 2;
                v23 = (v21 >> 2) + 1;
                if (v23 >> 62)
                {
                  sub_2337235BC();
                }

                v24 = v17 - v20;
                if (v24 >> 1 > v23)
                {
                  v23 = v24 >> 1;
                }

                v25 = v24 >= 0x7FFFFFFFFFFFFFFCLL;
                v26 = 0x3FFFFFFFFFFFFFFFLL;
                if (!v25)
                {
                  v26 = v23;
                }

                if (v26)
                {
                  sub_2337235D4(a3, v26);
                }

                *(4 * v22) = v13;
                v19 = 4 * v22 + 4;
                memcpy(0, v20, v21);
                v27 = *a3;
                *a3 = 0;
                *(a3 + 8) = v19;
                *(a3 + 16) = 0;
                if (v27)
                {
                  operator delete(v27);
                }
              }

              else
              {
                *v18 = v13;
                v19 = (v18 + 1);
              }

              *(a3 + 8) = v19;
            }

            LODWORD(v11) = v11 + 1;
            v10 = 1;
            if (v8 == v11)
            {
              goto LABEL_32;
            }
          }

          if ((v37 & 1) == 0)
          {
            v8 = v11;
          }

          v37 = 1;
        }

LABEL_32:
        ++v9;
        v11 = v12;
      }

      while (v9 < *(a1 + 44));
    }

    if (*(a3 + 8) == *a3)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](exception, "RawCameraException");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    if ((vaddvq_s32(vandq_s8(v36, xmmword_23390A090)) & 0xF) == 0 && *(a1 + 96) <= 0x3FFuLL)
    {
      v38 = &v40;
      v28 = (sub_23385F2A8(a1 + 80, &v40, &unk_233905F1C, &v38) + 5);
      if (v28 != a3)
      {
        sub_233723454(v28, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 2);
      }
    }
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    v33 = v30[5];
    v34 = v30[6];

    sub_233729070(a3, v33, v34, (v34 - v33) >> 2);
  }
}

void sub_23385E8F8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_23385E93C(void **a1@<X0>, unsigned int **a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  memset(v12, 0, sizeof(v12));
  for (i = *a2; i != a2[1]; ++i)
  {
    v7 = *i;
    v8 = a1[13];
    v9 = (v7 + 1);
    if (v9 > (a1[14] - v8) >> 4)
    {
      v11 = 0uLL;
      sub_23385EABC(a1 + 13, v9, &v11);
      if (*(&v11 + 1))
      {
        sub_2337239E8(*(&v11 + 1));
      }

      v8 = a1[13];
    }

    v10 = *&v8[16 * v7];
    v11 = v10;
    if (*(&v10 + 1))
    {
      atomic_fetch_add_explicit((*(&v10 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    if (!v10)
    {
      sub_23385EB4C(a1, v7);
    }

    sub_233753C74(a3, &v11);
    if (*(&v11 + 1))
    {
      sub_2337239E8(*(&v11 + 1));
    }
  }

  sub_23385EBD4(a1[1]);
  *&v11 = v12;
  sub_233723948(&v11);
}

void sub_23385EA78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  va_copy(v6, va1);
  sub_233723948(va);
  sub_233723948(va1);
  _Unwind_Resume(a1);
}

void sub_23385EABC(void **a1, unint64_t a2, void *a3)
{
  v4 = a1[1];
  v5 = (v4 - *a1) >> 4;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v7 = *a1 + 16 * a2;
      while (v4 != v7)
      {
        v8 = *(v4 - 1);
        if (v8)
        {
          sub_2337239E8(v8);
        }

        v4 -= 16;
      }

      a1[1] = v7;
    }
  }

  else
  {
    v6 = a2 - v5;

    sub_23385EFF8(a1, v6, a3);
  }
}

void sub_23385EB4C(uint64_t a1, uint64_t a2)
{
  v6[0] = sub_23385EC98(a1, a2);
  v6[1] = v4;
  v5 = sub_23385EE50(a1);
  sub_233857B6C(v6, v5);
}

uint64_t sub_23385EBD4(uint64_t a1)
{
  (*(*a1 + 2720))(&v3);
  v1 = (**v3)();
  if (v4)
  {
    sub_2337239E8(v4);
  }

  return v1;
}

void sub_23385EC80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23385EC98(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 56);
  v3 = a2;
  if (a2 >= ((*(a1 + 64) - v2) >> 4))
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v6 = (v2 + 16 * a2);
  if (v6[2] && v6[3])
  {
    return *v6;
  }

  v8 = *(a1 + 40);
  v9 = a2 / v8;
  v10 = a2 / v8 * v8;
  v11 = a2 % v8;
  if (a2 % v8 >= v8)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  sub_2337238F0(&v28, *(a1 + 24) * v11, *(a1 + 28) * v9);
  v12 = v29;
  v13 = *(a1 + 32);
  v14 = *(a1 + 36);
  if ((*(a1 + 24) + v28) <= v13)
  {
    v15 = *(a1 + 24);
  }

  else
  {
    v15 = v13 - v28;
  }

  if ((*(a1 + 28) + v29) <= v14)
  {
    v16 = *(a1 + 28);
  }

  else
  {
    v16 = v14 - v29;
  }

  v17 = *(a1 + 128);
  v18 = *(a1 + 132);
  v19 = v17 + v28;
  if (v11 == v8 - 1)
  {
    v20 = *(a1 + 128);
  }

  else
  {
    v20 = 0;
  }

  v21 = v15 - v20;
  LODWORD(v22) = v17 + v15;
  if (a2 == v10)
  {
    v23 = v28;
  }

  else
  {
    v23 = v19;
  }

  if (a2 == v10)
  {
    v22 = v22;
  }

  else
  {
    v22 = v21;
  }

  if (v8 <= a2)
  {
    v12 = v18 + v29;
    if (v9 != *(a1 + 44) - 1)
    {
      v18 = 0;
    }

    v24 = (v16 - v18);
  }

  else
  {
    v24 = (v18 + v16);
  }

  if (v24 < 1 || v22 <= 0)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v26 = v22 | (v24 << 32);
  v27 = (*(a1 + 56) + 16 * v3);
  result = v23 | (v12 << 32);
  *v27 = result;
  v27[1] = v26;
  return result;
}

uint64_t sub_23385EE50(uint64_t a1)
{
  result = *(a1 + 52);
  if (!result)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

void sub_23385EEAC(uint64_t a1)
{
  sub_23385F37C(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_23385EEE4(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 16 * a2);
      v5 += 16 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      sub_2337235BC();
    }

    v8 = v4 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_23377FC40(a1, v9);
    }

    v10 = (16 * (v6 >> 4));
    bzero(v10, 16 * a2);
    v11 = &v10[16 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void **sub_23385EFF8(void **result, unint64_t a2, void *a3)
{
  v4 = result;
  v5 = result[1];
  v6 = result[2];
  if (a2 <= (v6 - v5) >> 4)
  {
    if (a2)
    {
      v12 = &v5[2 * a2];
      do
      {
        v13 = a3[1];
        *v5 = *a3;
        v5[1] = v13;
        if (v13)
        {
          atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
        }

        v5 += 2;
      }

      while (v5 != v12);
      v5 = v12;
    }

    result[1] = v5;
  }

  else
  {
    v7 = v5 - *result;
    v8 = a2 + (v7 >> 4);
    if (v8 >> 60)
    {
      sub_2337235BC();
    }

    v9 = v7 >> 4;
    v10 = v6 - *result;
    if (v10 >> 3 > v8)
    {
      v8 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    v24 = result;
    if (v11)
    {
      sub_233724F4C(result, v11);
    }

    v14 = 16 * v9;
    v23 = 0;
    v15 = 16 * v9 + 16 * a2;
    v16 = (16 * v9);
    do
    {
      v17 = a3[1];
      *v16 = *a3;
      v16[1] = v17;
      if (v17)
      {
        atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
      }

      v16 += 2;
    }

    while (v16 != v15);
    v18 = result[1] - *result;
    v19 = (v14 - v18);
    memcpy((v14 - v18), *result, v18);
    v20 = *v4;
    *v4 = v19;
    v4[1] = v15;
    v21 = v4[2];
    v4[2] = v23;
    v22[2] = v20;
    v23 = v21;
    v22[0] = v20;
    v22[1] = v20;
    return sub_2337555EC(v22);
  }

  return result;
}

void *sub_23385F1B0(void *a1, uint64_t *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284925868;
  sub_23385E0A4((a1 + 3), a2, a3);
  return a1;
}

void sub_23385F22C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284925868;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void *sub_23385F2A8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = v4[4];
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_23385F37C(uint64_t a1)
{
  *a1 = &unk_284925838;
  v5 = (a1 + 104);
  sub_233723948(&v5);
  sub_233730B2C(a1 + 80, *(a1 + 88));
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    sub_2337239E8(v3);
  }

  return a1;
}

BOOL sub_23385F3FC(int *a1, int *a2)
{
  v2 = *a2;
  v3 = *a1;
  if (*a2 > *a1)
  {
    return 0;
  }

  v4 = a2[2] + v2;
  if (v3 > v4)
  {
    return 0;
  }

  v5 = a1[2] + v3;
  if (v2 > v5 || v5 > v4)
  {
    return 0;
  }

  v7 = a2[1];
  v8 = a1[1];
  if (v7 > v8)
  {
    return 0;
  }

  v9 = a2[3] + v7;
  if (v8 > v9)
  {
    return 0;
  }

  v11 = a1[3] + v8;
  return v7 <= v11 && v11 <= v9;
}

uint64_t sub_23385F470(int *a1, int *a2)
{
  v2 = a1[2];
  if (v2 < 1)
  {
    return 0;
  }

  v3 = a2[2];
  if (v3 < 1)
  {
    return 0;
  }

  v4 = a1[3];
  if (v4 < 1)
  {
    return 0;
  }

  v5 = a2[3];
  if (v5 < 1)
  {
    return 0;
  }

  v6 = *a1;
  v7 = *a2;
  if (*a1 >= *a2)
  {
    if (v7 + v3 <= v6)
    {
      return 0;
    }
  }

  else if (v6 + v2 <= v7)
  {
    return 0;
  }

  v8 = a1[1];
  v9 = a2[1];
  if (v8 >= v9)
  {
    if (v9 + v5 <= v8)
    {
      return 0;
    }
  }

  else if (v8 + v4 <= v9)
  {
    return 0;
  }

  return 1;
}

id sub_23385F504(int a1)
{
  v9[3] = *MEMORY[0x277D85DE8];
  if (qword_27DE3DE18 != -1)
  {
    sub_2338FD198();
  }

  v2 = qword_27DE3DE08[a1];
  objc_sync_enter(v2);
  if ([v2 count])
  {
    v3 = [v2 firstObject];
    [v2 removeObjectAtIndex:0];
  }

  else
  {
    v8[0] = *MEMORY[0x277CBF928];
    v8[1] = @"kCIContextUseMetalRenderer";
    v4 = MEMORY[0x277CBF740];
    v9[0] = @"RawCamera-Internal-Context";
    v9[1] = MEMORY[0x277CBEC38];
    v8[2] = *MEMORY[0x277CBF950];
    v5 = [MEMORY[0x277CCABB0] numberWithInt:*MEMORY[0x277CBF9D8]];
    v9[2] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
    v3 = [v4 contextWithOptions:v6];
  }

  objc_sync_exit(v2);

  return v3;
}

void sub_23385F698(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

uint64_t sub_23385F6D8()
{
  v0 = objc_opt_new();
  v1 = qword_27DE3DE08[0];
  qword_27DE3DE08[0] = v0;

  v2 = objc_opt_new();
  v3 = qword_27DE3DE10;
  qword_27DE3DE10 = v2;

  return MEMORY[0x2821F96F8](v2, v3);
}

void sub_23385F734(void *a1, int a2)
{
  v4 = a1;
  v3 = qword_27DE3DE08[a2];
  objc_sync_enter(v3);
  if ([v3 count] <= 4)
  {
    [v3 addObject:v4];
  }

  objc_sync_exit(v3);
}

void sub_23385F7C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

id sub_23385F80C(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = (a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23385F8A8;
  block[3] = &unk_2789EE800;
  block[4] = a1;
  if (v3 != -1)
  {
    dispatch_once(v2, block);
  }

  v4 = *(a1 + 24);

  return v4;
}

void sub_23385F8A8(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_23385F938(v1, &v4);
  v2 = sub_2337D2F6C(v4, 1);
  v3 = *(v1 + 24);
  *(v1 + 24) = v2;

  if (v5)
  {
    sub_2337239E8(v5);
  }
}

void sub_23385F904(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  __cxa_begin_catch(a1);
  v12 = *(v10 + 24);
  *(v10 + 24) = 0;

  __cxa_end_catch();
  JUMPOUT(0x23385F8F4);
}

uint64_t sub_23385F938@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 8);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    sub_2338F90E4(exception);
  }

  v3 = *(result + 16);
  *a2 = v2;
  a2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_23385F9A8(uint64_t a1, unsigned int ***a2)
{
  v65[1] = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(byte_280C04EC0, memory_order_acquire) & 1) == 0)
  {
    sub_2338FD1AC();
  }

  v3 = objc_autoreleasePoolPush();
  if (*a2 != a2[1])
  {
    context = v3;
    v51 = *MEMORY[0x277CBF9D8];
    if ((**a2)[11] == 16)
    {
      v4 = *MEMORY[0x277CBF9D8];
    }

    else
    {
      v4 = *MEMORY[0x277CBF9C8];
    }

    v53 = v4;
    sub_23385F938(a1, &dest);
    v5 = sub_233739B84(dest.data);
    if (dest.height)
    {
      sub_2337239E8(dest.height);
    }

    if (v5)
    {
      if (v5 != 3)
      {
        goto LABEL_17;
      }

      sub_23385F938(a1, &dest);
      v6 = sub_233739B8C(dest.data);
      if (dest.height)
      {
        sub_2337239E8(dest.height);
      }

      if (v6 == 3)
      {
        v52 = sub_2338F297C();
        v53 = *MEMORY[0x277CBF980];
LABEL_18:
        v7 = sub_23385F80C(a1);
        v8 = *MEMORY[0x277CBF348];
        v9 = *(MEMORY[0x277CBF348] + 8);
        v10 = sub_23385F504(0);
        v60 = v10;
        v11 = *a2;
        v50 = a2[1];
        if (*a2 != v50)
        {
          do
          {
            v12 = sub_23378E0C0(v10);
            v13 = v12;
            v14 = v7;
            if (v7 + 1 >= 2 && os_signpost_enabled(v12))
            {
              v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"{{%d, %d}, {%d, %d}}", *(*v11 + 7), HIDWORD(*(*v11 + 7)), *(*v11 + 9), HIDWORD(*(*v11 + 9))];
              v44 = v43;
              v45 = [v43 UTF8String];
              LODWORD(dest.data) = 136315138;
              *(&dest.data + 4) = v45;
              _os_signpost_emit_with_name_impl(&dword_23371F000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v14, "renderToBlock", "%s", &dest, 0xCu);
            }

            v62[0] = MEMORY[0x277D85DD0];
            v62[1] = 3221225472;
            v62[2] = sub_2338602A8;
            v62[3] = &unk_2789EF2C8;
            v62[4] = v14;
            v62[5] = v11;
            v59 = MEMORY[0x2383AC810](v62);
            v15 = *(*v11 + 7);
            v16 = *(*v11 + 9);
            v58 = sub_233857E34(*v11);
            v17 = v14;
            v18 = (*(**v11 + 8))(*v11, 0);
            if (byte_280C04EB8 == 1)
            {
              v19 = MEMORY[0x277CCACA8];
              sub_23385F938(a1, &dest);
              v20 = sub_233739B8C(dest.data);
              v21 = sub_2338191A8(v20);
              v56 = [v19 stringWithFormat:@"Requested Sushi Mode : %@", v21];

              if (dest.height)
              {
                sub_2337239E8(dest.height);
              }

              v22 = MEMORY[0x277CCACA8];
              sub_23385F938(a1, &dest);
              v23 = sub_233739B84(dest.data);
              v24 = sub_2338191A8(v23);
              v55 = [v22 stringWithFormat:@"Sushi Mode : %@", v24];

              if (dest.height)
              {
                sub_2337239E8(dest.height);
              }

              v25 = MEMORY[0x277CCACA8];
              sub_23385F938(a1, &dest);
              v61 = (*(*dest.data + 120))(dest.data);
              v26 = sub_2337584A8(&v61);
              v54 = [v25 stringWithFormat:@"Version : %@", v26];

              if (dest.height)
              {
                sub_2337239E8(dest.height);
              }

              v27 = [MEMORY[0x277CCACA8] stringWithFormat:@" %@ \n %@ \n %@ ", v56, v55, v54];
              v28 = MEMORY[0x277CBF750];
              v64 = @"inputText";
              v65[0] = v27;
              v49 = v27;
              v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:&v64 count:1];
              v30 = [v28 filterWithName:@"CITextImageGenerator" withInputParameters:v29];

              [v14 extent];
              v32 = v31;
              v33 = [v30 outputImage];
              [v33 extent];
              v35 = v34;

              v36 = [MEMORY[0x277CCABB0] numberWithDouble:v32 * 0.25 / v35];
              [v30 setValue:v36 forKey:@"inputScaleFactor"];

              v37 = [MEMORY[0x277CBF758] whiteImage];
              v38 = [v30 outputImage];
              [v38 extent];
              v39 = [v37 imageByCroppingToRect:?];

              v40 = [v30 outputImage];
              v41 = [v40 imageByCompositingOverImage:v39];

              v17 = [v41 imageByCompositingOverImage:v14];
            }

            [v17 extent];
            [v60 render:v17 toBitmap:v18 rowBytes:v58 bounds:v53 format:v52 colorSpace:{v15 - v8, v42 - SHIDWORD(v15) - SHIDWORD(v16) - v9, v16}];
            if (v53 == v51)
            {
              dest.data = v18;
              dest.height = v16 >> 32;
              dest.width = 4 * v16;
              dest.rowBytes = v58;
              vImageConvert_16Fto16U(&dest, &dest, 0);
            }

            [v60 clearCaches];
            v59[2](v59);

            v11 += 2;
            v7 = v17;
          }

          while (v11 != v50);
        }

        sub_23385F734(v60, 0);

        v3 = context;
        goto LABEL_35;
      }

      sub_23385F938(a1, &dest);
      v47 = sub_233739B94(dest.data);
      if (dest.height)
      {
        sub_2337239E8(dest.height);
      }

      if (!v47)
      {
LABEL_17:
        v52 = sub_2338F28E4();
        goto LABEL_18;
      }
    }

    sub_23385F938(a1, &dest);
    v52 = sub_233739BB4(dest.data);
    if (dest.height)
    {
      sub_2337239E8(dest.height);
    }

    goto LABEL_18;
  }

LABEL_35:
  objc_autoreleasePoolPop(v3);
  return 1;
}

void sub_2338600D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v31 = *(v29 - 184);
  if (v31)
  {
    sub_2337239E8(v31);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338602A8(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = sub_23378E0C0(a1);
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"{{%d, %d}, {%d, %d}}", *(**(a1 + 40) + 28), HIDWORD(*(**(a1 + 40) + 28)), *(**(a1 + 40) + 36), HIDWORD(*(**(a1 + 40) + 36))];
    *buf = 136315138;
    v7 = [v5 UTF8String];
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "renderToBlock", "%s", buf, 0xCu);
  }
}

void sub_2338603E0(uint64_t a1)
{
  sub_233860418(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_233860418(uint64_t a1)
{
  *a1 = &unk_2849258D8;

  v2 = *(a1 + 16);
  if (v2)
  {
    sub_2337239E8(v2);
  }

  return a1;
}

void *sub_2338604D8(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284925910;
  sub_2338605D0(a1 + 3, a2);
  return a1;
}

void sub_233860554(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284925910;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void *sub_2338605D0(void *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  *result = &unk_2849258D8;
  result[1] = v2;
  result[2] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    v2 = result[1];
  }

  result[3] = 0;
  result[4] = 0;
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void sub_233860678(_Unwind_Exception *a1)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_2337239E8(v3);
  }

  _Unwind_Resume(a1);
}

void *sub_2338606A8(uint64_t a1, void *a2, int a3, uint64_t a4, uint64_t a5)
{
  result = sub_2337DE7D0(a1, a2, a3);
  *result = &unk_284925960;
  result[4] = a4;
  result[5] = a5;
  return result;
}

uint64_t *sub_233860700(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v32 = *MEMORY[0x277D85DE8];
  sub_233754E04(v19, a2);
  v30 = 0u;
  memset(v31, 0, sizeof(v31));
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v14 = 0;
  v15 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  JxlDecoderCreate();
  JxlDecoderSubscribeEvents();
  v5 = *(a1 + 40);
  sub_233726154(__p, v5);
  v6 = *a2;
  sub_2337268D8(&v9, (a1 + 32));
  (*(*v6 + 40))(v6, &v9, 0);
  (*(**a2 + 32))(*a2, __p[0], v5);
  if (!JxlDecoderSetInput() && JxlDecoderProcessInput() == 64 && !JxlDecoderGetBasicInfo() && JxlDecoderProcessInput() == 256)
  {
    if (JxlDecoderGetColorAsEncodedProfile())
    {
      if (JxlDecoderGetICCProfileSize())
      {
        goto LABEL_15;
      }

      if (v15)
      {
        sub_233860CC8(&v16, v15);
      }

      ColorAsICCProfile = JxlDecoderGetColorAsICCProfile();
    }

    else
    {
      ColorAsICCProfile = JxlDecoderSetPreferredColorProfile();
    }

    if (!ColorAsICCProfile)
    {
      v11 = 0x200000003;
      v13 = 1;
      if (!JxlDecoderImageOutBufferSize() && !JxlDecoderSetImageOutBuffer())
      {
        JxlDecoderProcessInput();
      }
    }
  }

LABEL_15:
  JxlDecoderDestroy();
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  return sub_233725FD4(v19);
}

void sub_23386096C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, uint64_t a33, uint64_t a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_233725FD4(&a34);
  _Unwind_Resume(a1);
}

CGColorSpaceRef sub_2338609D0(uint64_t a1, uint64_t *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  sub_233754E04(v19, a2);
  v30 = 0u;
  memset(v31, 0, sizeof(v31));
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v15 = 0;
  JxlDecoderCreate();
  JxlDecoderSubscribeEvents();
  v4 = *(a1 + 40);
  sub_233726154(__p, v4);
  v5 = *a2;
  sub_2337268D8(&v13, (a1 + 32));
  (*(*v5 + 40))(v5, &v13, 0);
  (*(**a2 + 32))(*a2, __p[0], v4);
  if (JxlDecoderSetInput() || JxlDecoderProcessInput() != 64 || JxlDecoderGetBasicInfo() || JxlDecoderProcessInput() != 256)
  {
LABEL_25:
    v8 = 0;
    goto LABEL_20;
  }

  if (JxlDecoderGetColorAsEncodedProfile())
  {
    if (!JxlDecoderGetICCProfileSize())
    {
      if (v15)
      {
        sub_233860CC8(&v16, v15);
      }

      if (!JxlDecoderGetColorAsICCProfile())
      {
        v7 = CFDataCreate(0, v16, v15);
        v8 = CGColorSpaceCreateWithICCData(v7);
        CFRelease(v7);
        goto LABEL_20;
      }
    }

    goto LABEL_25;
  }

  if (v10 == 1 && v11 == 1 && v12 == 13)
  {
    v6 = MEMORY[0x277CBF4B8];
LABEL_19:
    v8 = CGColorSpaceCreateWithName(*v6);
    goto LABEL_20;
  }

  v8 = 0;
  if (v10 == 1 && v11 == 11 && v12 == 13)
  {
    v6 = MEMORY[0x277CBF3E0];
    goto LABEL_19;
  }

LABEL_20:
  JxlDecoderDestroy();
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  sub_233725FD4(v19);
  return v8;
}

void sub_233860C60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_233725FD4(&a30);
  _Unwind_Resume(a1);
}

void sub_233860CC8(char **a1, size_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 - v5 >= a2)
  {
    if (a2)
    {
      bzero(a1[1], a2);
      v5 += a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = *a1;
    v7 = (v5 - *a1);
    v8 = &v7[a2];
    if (&v7[a2] < 0)
    {
      sub_2337235BC();
    }

    v9 = v4 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = v5 - *a1;
    bzero(v7, a2);
    memcpy(&v7[v6 - v5], v6, v11);
    *a1 = &v7[v6 - v5];
    a1[1] = &v7[a2];
    a1[2] = 0;
    if (v6)
    {

      operator delete(v6);
    }
  }
}

uint64_t sub_233860E00(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_2338F4DD0(a1, a2);
  *v5 = &unk_2849259D0;
  v5[6] = 0;
  v6 = (v5 + 6);
  v5[7] = 0;
  v5[8] = 0;
  *(a1 + 12) = sub_233725614(*a3);
  *(a1 + 16) = sub_233725614(*a3);
  *(a1 + 20) = sub_233725614(*a3);
  *(a1 + 24) = sub_233725614(*a3);
  *(a1 + 28) = sub_233725614(*a3);
  *(a1 + 32) = sub_233725614(*a3);
  *(a1 + 36) = sub_233725614(*a3);
  *(a1 + 40) = sub_233725614(*a3);
  for (i = sub_233725614(*a3); i; --i)
  {
    v8 = sub_233725730(*a3);
    v10 = *(a1 + 56);
    v9 = *(a1 + 64);
    if (v10 >= v9)
    {
      v12 = *v6;
      v13 = v10 - *v6;
      v14 = v13 >> 2;
      v15 = (v13 >> 2) + 1;
      if (v15 >> 62)
      {
        sub_2337235BC();
      }

      v16 = v9 - v12;
      if (v16 >> 1 > v15)
      {
        v15 = v16 >> 1;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v17 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        sub_2337235D4(v6, v17);
      }

      *(4 * v14) = v8;
      v11 = 4 * v14 + 4;
      memcpy(0, v12, v13);
      v18 = *(a1 + 48);
      *(a1 + 48) = 0;
      *(a1 + 56) = v11;
      *(a1 + 64) = 0;
      if (v18)
      {
        operator delete(v18);
      }
    }

    else
    {
      *v10 = v8;
      v11 = (v10 + 1);
    }

    *(a1 + 56) = v11;
  }

  return a1;
}

void sub_233860FB0(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 56) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

RAWOpcodeScalePerRow *sub_233860FDC(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 12)];
  [v2 setObject:v3 forKeyedSubscript:@"Top"];

  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 16)];
  [v2 setObject:v4 forKeyedSubscript:@"Left"];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 20)];
  [v2 setObject:v5 forKeyedSubscript:@"Bottom"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 24)];
  [v2 setObject:v6 forKeyedSubscript:@"Right"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 28)];
  [v2 setObject:v7 forKeyedSubscript:@"Plane"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 32)];
  [v2 setObject:v8 forKeyedSubscript:@"Planes"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 36)];
  [v2 setObject:v9 forKeyedSubscript:@"RowPitch"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 40)];
  [v2 setObject:v10 forKeyedSubscript:@"ColPitch"];

  v11 = [MEMORY[0x277CBEB18] array];
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  while (v13 != v14)
  {
    LODWORD(v12) = *v13;
    v15 = [MEMORY[0x277CCABB0] numberWithFloat:v12];
    [v11 addObject:v15];

    ++v13;
  }

  [v2 setObject:v11 forKeyedSubscript:@"Scale"];
  v16 = [[RAWOpcodeScalePerRow alloc] initWithArguments:v2];

  return v16;
}

void *sub_23386126C(void *a1)
{
  *a1 = &unk_2849259D0;
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_2338612BC(void *a1)
{
  *a1 = &unk_2849259D0;
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_233861390(uint64_t a1, unsigned int a2, _OWORD *a3, _BYTE *a4)
{
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  v7 = log(a2);
  v8 = 0;
  v9 = pow(1.9, v7 + -5.768321) * (*(a1 + 56) / 12810.0);
  v10 = a3 + 3;
  __asm { FMOV            V0.2D, #2.0 }

  v24 = *(&_Q0 + 1);
  do
  {
    v16 = *(a1 + 32);
    if (v8 >= (*(a1 + 40) - v16) >> 3)
    {
      sub_2337306B0();
    }

    v25 = dbl_23390A1D0[v8] - *(v16 + 8 * v8);
    result = sub_233858FAC(*(a1 + 64), v8);
    if (result == 2)
    {
      v18 = &unk_23390A1C0;
    }

    else
    {
      v18 = &unk_23390A1A0;
    }

    if (result == 3)
    {
      v18 = &unk_23390A1B0;
    }

    v19 = v9 * *(a1 + 72);
    v20 = *(v18 + 3);
    v21 = v18[2];
    v22.f64[0] = *v18 + v18[1] * v25;
    v22.f64[1] = v18[1];
    v23.f64[1] = v24;
    v23.f64[0] = v25;
    *(v10 - 3) = vcvt_f32_f64(vmulq_n_f64(vmlaq_n_f64(v22, vmulq_n_f64(v23, v21), v25), v19));
    *&v19 = v19 * v21;
    *(v10 - 1) = LODWORD(v19);
    *v10 = v20;
    ++v8;
    v10 += 4;
  }

  while (v8 != 4);
  *a4 = 0;
  return result;
}

void *sub_2338614F4(void *a1)
{
  *a1 = &unk_284925A18;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  *a1 = &unk_284925728;
  v3 = a1[3];
  if (v3)
  {
    sub_2337239E8(v3);
  }

  return a1;
}

void sub_23386156C(void *a1)
{
  *a1 = &unk_284925A18;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  *a1 = &unk_284925728;
  v3 = a1[3];
  if (v3)
  {
    sub_2337239E8(v3);
  }

  JUMPOUT(0x2383ABF10);
}

void *sub_233861690(void *a1, uint64_t a2, double *a3, unsigned int *a4, double *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284925A58;
  sub_233861794((a1 + 3), a2, *a4, *a3, *a5);
  return a1;
}

void sub_233861718(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284925A58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_233861794(uint64_t a1, uint64_t a2, int a3, double a4, double a5)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *a1 = &unk_284925A18;
  *(a1 + 8) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  sub_2337236E0((a1 + 32), *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
  *(a1 + 56) = a4;
  *(a1 + 64) = a3;
  *(a1 + 72) = a5;
  return a1;
}

void sub_233861814(_Unwind_Exception *exception_object)
{
  *v1 = &unk_284925728;
  v3 = v1[3];
  if (v3)
  {
    sub_2337239E8(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233861848(void *a1)
{
  v2 = NSPageSize();
  v3 = (v2 + a1[3] - 1) & -v2;
  v4 = v3 + 2 * v2;
  if ((*(*a1 + 40))(a1))
  {
    v5 = 1325400066;
  }

  else
  {
    v5 = 1325400064;
  }

  a1[5] = v4;
  v6 = j__mmap(0, v4, 3, 4098, v5, 0);
  if (v6 == -1)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  a1[4] = v6;
  a1[2] = &v6[v2];
  mprotect(v6, v2, 1);
  result = mprotect((a1[2] + v3), v2, 1);
  if (!a1[2])
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

uint64_t sub_23386197C(void *a1)
{
  *a1 = &unk_284925AA8;
  v2 = a1[4];
  if (v2)
  {
    munmap(v2, a1[5]);
    a1[4] = 0;
  }

  return sub_2337AD55C(a1);
}

void sub_2338619E8(void *a1)
{
  sub_23386197C(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_233861A20(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *a1 = &unk_284925AE8;
  *(a1 + 48) = 1;
  sub_23384F87C();
}

uint64_t *sub_233861A94(uint64_t a1)
{
  result = (*(*a1 + 40))(a1);
  if (result && *(a1 + 16))
  {
    sub_233785314(v5, (a1 + 56));
    v3 = *(a1 + 48);
    v4 = __OFSUB__(v3--, 1);
    *(a1 + 48) = v3;
    if ((v3 < 0) ^ v4 | (v3 == 0))
    {
      sub_23378972C(a1);
    }

    return sub_2337853E4(v5);
  }

  return result;
}

uint64_t sub_233861B2C(uint64_t a1)
{
  if ((*(*a1 + 40))(a1) && *(a1 + 16))
  {
    sub_233785314(v4, (a1 + 56));
    v2 = *(a1 + 48);
    *(a1 + 48) = v2 + 1;
    if (v2 <= 1)
    {
      sub_23378972C(a1);
    }

    sub_2337853E4(v4);
  }

  return 1;
}

void sub_233861BD0(void *a1)
{
  sub_233861C08(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_233861C08(void *a1)
{
  *a1 = &unk_284925AE8;
  v2 = a1[8];
  if (v2)
  {
    sub_2337239E8(v2);
  }

  return sub_23386197C(a1);
}

void sub_233861C64(_DWORD *a1)
{
  v2 = sub_23378E038(a1);
  v3 = v2;
  if (a1 + 1 >= 2 && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, a1, "CPacked14Unpacker", &unk_233945DBE, buf, 2u);
  }

  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = sub_2338620D4;
  v36[3] = &unk_2789EE800;
  v36[4] = a1;
  v4 = MEMORY[0x2383AC810](v36);
  v5 = a1[11];
  v6 = a1[12];
  if (v6 * v5 > (*(*a1 + 152))(a1))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v29 = v4;
  (*(*a1 + 112))(buf, a1);
  v7 = sub_23378972C(*buf);
  if (v35)
  {
    sub_2337239E8(v35);
  }

  if (v6)
  {
    v8 = 0;
    v9 = 0;
    v10 = (14 * v5) >> 3;
    v11 = (2 * v5) & 0x1FFFFFFE;
    v33 = (v11 - v10);
    v31 = 14 * v5;
    v32 = (14 * v5) & 0x18;
    LODWORD(v12) = (14 * v5) >> 5;
    v13 = v5 & 0xFFFFFFFC;
    if (v12 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = v12;
    }

    v30 = v12;
    do
    {
      v14 = v6;
      (*(*a1 + 112))(buf, a1);
      v15 = sub_23378972C(*buf);
      if (v35)
      {
        sub_2337239E8(v35);
      }

      v16 = (v15 + v33 + (v11 * v9));
      if (&v16[v10] > (*(*a1 + 120))(a1) || ((*(**(a1 + 3) + 32))(*(a1 + 3), v15 + v33 + (v11 * v9), v10), v32))
      {
        v27 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](v27, "RawCameraException");
        __cxa_throw(v27, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      if (v31 >= 0x20)
      {
        v17 = (v15 + v33 + v8);
        v18 = v30;
        do
        {
          *v17 = bswap32(*v17);
          ++v17;
          --v18;
        }

        while (v18);
      }

      if (v13)
      {
        v19 = 0;
        v6 = v14;
        do
        {
          v20 = v16[1];
          v21 = v16[3];
          v22 = v16[4];
          v23 = v16[5];
          v24 = v20 >> 2;
          v25 = (16 * v16[2]) & 0xCFFF | ((v20 & 3) << 12) | (v21 >> 4);
          v26 = v16[6] | ((v23 & 0x3F) << 8);
          *v7 = v24 | (*v16 << 6);
          v7[1] = v25;
          v7[2] = (4 * v22) & 0xC3FF | ((v21 & 0xF) << 10) | (v23 >> 6);
          v7[3] = v26;
          v7 += 4;
          v19 += 4;
          v16 += 7;
        }

        while (v19 < v13);
      }

      else
      {
        v6 = v14;
      }

      ++v9;
      v8 += v11;
    }

    while (v9 != v6);
  }

  v29[2](v29);
}

void sub_2338620D4(uint64_t a1)
{
  v2 = sub_23378E038(a1);
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CPacked14Unpacker", &unk_233945DBE, v5, 2u);
  }
}

double sub_233862170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42[101] = *MEMORY[0x277D85DE8];
  bzero(v42, 0x328uLL);
  v6 = 0;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  v10 = *(a1 + 24) + 1.0;
  v11 = vdupq_lane_s64(v9, 0);
  v12 = vdupq_lane_s64(*&v10, 0);
  v13 = vdupq_n_s64(0x3F84AFD6A052BF5BuLL);
  v14 = 0x100000000;
  __asm { FMOV            V2.2D, #1.0 }

  do
  {
    v20.i64[0] = v14.u32[0];
    v20.i64[1] = v14.u32[1];
    v21 = vmulq_f64(vcvtq_f64_u64(v20), v13);
    v22 = vmulq_f64(v21, v21);
    *&v42[v6] = vdivq_f64(vmulq_f64(v21, vmlaq_f64(vmlaq_f64(vmlaq_f64(_Q2, v22, v11), v22, vmulq_n_f64(v22, v7)), v22, vmulq_f64(v22, vmulq_n_f64(v22, v8)))), v12);
    v14 = vadd_s32(v14, 0x200000002);
    v6 += 2;
  }

  while (v6 != 100);
  v23 = 0;
  while (v42[v23] + -1.0 <= 1.0)
  {
    if (++v23 == 100)
    {
      v24 = 1.0;
      goto LABEL_8;
    }
  }

  v24 = v23 * 0.0101010101;
LABEL_8:
  v25 = 0;
  v26 = vdupq_lane_s64(v9, 0);
  v27 = vdupq_lane_s64(*&v10, 0);
  v28 = 0x100000000;
  v29 = v24 / 99.0;
  do
  {
    v30.i64[0] = v28.u32[0];
    v30.i64[1] = v28.u32[1];
    v31 = vmulq_n_f64(vcvtq_f64_u64(v30), v29);
    v32 = vmulq_f64(v31, v31);
    *&v42[v25] = vdivq_f64(vmulq_f64(v31, vmlaq_f64(vmlaq_f64(vmlaq_f64(_Q2, v32, v26), v32, vmulq_n_f64(v32, v7)), v32, vmulq_f64(v32, vmulq_n_f64(v32, v8)))), v27);
    v28 = vadd_s32(v28, 0x200000002);
    v25 += 2;
  }

  while (v25 != 100);
  for (i = 0; i != 100; ++i)
  {
    v34 = i * 0.0101010101;
    v41[i] = v34;
    for (j = 1; j != 100; ++j)
    {
      if (v42[j] >= v34)
      {
        break;
      }
    }

    v40[i] = v29 * ((v34 - v42[j - 1]) / (v42[j] - v42[j - 1]) + (j - 1));
  }

  v36 = 0;
  v37 = v40[0];
  do
  {
    if (v36 * 8)
    {
      v38 = v41[v36];
      v40[v36] = v40[v36] / v38;
    }

    else
    {
      v37 = 1.0;
      v38 = v41[0];
    }

    v41[v36++] = v38 * v38;
  }

  while (v36 != 100);
  v40[0] = v37;
  return sub_233862404(a1, a2, a3, v41, v40, 100);
}

double sub_233862404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v27 = *MEMORY[0x277D85DE8];
  if (a6 < 2)
  {
    v13 = 0;
  }

  else
  {
    v12 = 1;
    while (*(a4 + 8 * v12) < *(a1 + 128))
    {
      if (a6 == ++v12)
      {
        LODWORD(v12) = a6;
        break;
      }
    }

    v13 = v12 - 1;
  }

  v25 = xmmword_23390A2A8;
  *v26 = unk_23390A2B8;
  v23 = xmmword_23390A2A8;
  v24 = unk_23390A2B8;
  v14 = sub_233862580(a1, &v25, a4, a5, 0, v13);
  sub_233862580(v14, &v23, a4, a5, v13, a6 - v13);
  v15 = *(a1 + 128) * *(a1 + 128);
  v16 = *(&v25 + 1);
  v17 = v26[0];
  v18 = v23;
  v19 = v24;
  v20 = *(&v24 + 1) + v15 * (v15 * *(&v23 + 1)) + v15 * (v15 * *&v23) * v15 + *&v24 * v15 - (v26[1] + v15 * (v15 * *(&v25 + 1)) + v15 * (*&v25 * v15) * v15 + v26[0] * v15);
  v21 = v26[1] + v20 * 0.8;
  result = *(&v24 + 1) + v20 * -0.2;
  *a2 = v25;
  *(a2 + 8) = v16;
  *(a2 + 16) = v17;
  *(a2 + 24) = v21;
  *a3 = v18;
  *(a3 + 16) = v19;
  *(a3 + 24) = result;
  return result;
}

void *sub_233862580(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5, unsigned int a6)
{
  v31 = *MEMORY[0x277D85DE8];
  if (a6 - 2000 <= 0xFFFFF830)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    sub_2338F90E4(exception);
  }

  v11 = a6;
  MEMORY[0x28223BE20](a1);
  v12 = &v22[-32 * v11];
  bzero(v12, v13);
  v15 = 0;
  do
  {
    v16 = *(a3 + 8 * a5 + v15);
    *&v12[v15] = v16 * (v16 * v16);
    *&v12[8 * a6 + v15] = v16 * v16;
    *&v12[16 * a6 + v15] = v16;
    *&v12[24 * a6 + v15] = 0x3FF0000000000000;
    v15 += 8;
  }

  while (8 * a6 != v15);
  MEMORY[0x28223BE20](v14);
  v18 = &v22[-((v17 + 15) & 0xFFFFFFFF0)];
  memcpy(v18, (a4 + 8 * v19), v17);
  v29 = 4;
  v30 = a6;
  v27 = a6;
  v28 = 1;
  v26 = a6;
  v25 = 0.0;
  v23[2] = 0;
  *&v23[3] = 0;
  v24 = -1;
  strcpy(v23, "N");
  result = dgels_NEWLAPACK();
  if (!*&v23[1])
  {
    v24 = llround(ceil(v25));
    MEMORY[0x28223BE20](result);
    result = dgels_NEWLAPACK();
    if (!*&v23[1])
    {
      return memcpy(a2, v18, 8 * v29);
    }
  }

  return result;
}

uint64_t sub_23386283C(uint64_t a1)
{
  (*(*a1 + 160))(&v9);
  v2 = v9;
  sub_23372A488(__p, "IFD0");
  v3 = (*(*v2 + 264))(v2, __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v10)
  {
    sub_2337239E8(v10);
  }

  if (v3 == 0xFFFF)
  {
    (*(*a1 + 160))(&v9, a1);
    v4 = v9;
    sub_23372A488(__p, "EmbeddedThumbnail:IFD0:EXIF");
    v5 = (*(*v4 + 264))(v4, __p);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }

    if (v10)
    {
      sub_2337239E8(v10);
    }

    if (v5 < 0x10000)
    {
      return 0xFFFFLL;
    }

    else
    {
      return v5;
    }
  }

  return v3;
}

void sub_2338629A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_2337239E8(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338629DC(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = (*(*a1 + 2952))(a1);
  v22 = v4;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  (*(*a1 + 160))(&v17, a1);
  v5 = v17;
  sub_23372A488(__p, "IFD0:OBCorrection");
  if ((*(*v5 + 248))(v5, __p, &v19, 0))
  {
    v7 = v19;
    v6 = v20;
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    v8 = v6 - v7;
    if (v18)
    {
      sub_2337239E8(v18);
    }

    if (v8 == 32)
    {
      v10 = v19;
      v9 = v20;
      if (v20 != v19)
      {
        v11 = (v20 - v19) >> 3;
        v12 = 1;
        v13 = v19;
        do
        {
          *v13 = v4 + *v13;
          ++v13;
        }

        while (v11 > v12++);
      }

      *a2 = v10;
      a2[1] = v9;
      a2[2] = v21;
      return;
    }
  }

  else
  {
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    if (v18)
    {
      sub_2337239E8(v18);
    }
  }

  sub_233731694(a2, 4uLL, &v22);
  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }
}

void sub_233862B74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_233862BC0(uint64_t a1)
{
  v6 = &unk_28490E658;
  (*(*a1 + 160))(&v4);
  v1 = v4;
  sub_23372A488(__p, "redGreenBlue");
  (*(*v1 + 600))(v1, __p, &v6, 3);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  if (v5)
  {
    sub_2337239E8(v5);
  }
}

void sub_233862CA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_233862CFC(uint64_t a1)
{
  (*(*a1 + 160))(&v3);
  sub_2337D032C(&v3, &v5);
  if (v4)
  {
    sub_2337239E8(v4);
  }

  if (v5)
  {
    (*(*v5 + 800))(v5, &v3);
    v1 = v3 != 0;
  }

  else
  {
    v1 = 0;
  }

  if (v6)
  {
    sub_2337239E8(v6);
  }

  return v1;
}

void sub_233862DBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_2337239E8(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233862DD4(uint64_t a1)
{
  (*(*a1 + 160))(&v5);
  sub_2337D032C(&v5, &v7);
  if (v6)
  {
    sub_2337239E8(v6);
  }

  if (v7)
  {
    v2 = (*(*v7 + 792))(v7);
  }

  else
  {
    v2 = sub_2337D1FD0(a1);
  }

  v3 = v2;
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v3;
}

void sub_233862E90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  _Unwind_Resume(exception_object);
}

id sub_233862EA8(uint64_t a1, unsigned int a2)
{
  v3 = sub_2337C4398(a1, a2);
  if (sub_233739B6C(a1))
  {
    v4 = v3;
  }

  else
  {
    (*(*a1 + 160))(&v22, a1);
    sub_2337D032C(&v22, &v29);
    if (v23)
    {
      sub_2337239E8(v23);
    }

    if (v29)
    {
      (*(*v29 + 800))(v29, &v22);
      if (v22)
      {
        v5 = sub_2337854A4(v3, @"PanasonicChromaticAberration", 0);
        v6 = objc_autoreleasePoolPush();
        v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v22];
        [v5 setObject:v7 forKeyedSubscript:@"ChAber_SW"];

        v8 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:WORD1(v22)];
        [v5 setObject:v8 forKeyedSubscript:@"CA1"];

        v9 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:WORD2(v22)];
        [v5 setObject:v9 forKeyedSubscript:@"CA2"];

        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:HIWORD(v22)];
        [v5 setObject:v10 forKeyedSubscript:@"CA3"];

        v11 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v23];
        [v5 setObject:v11 forKeyedSubscript:@"CA4"];

        v12 = [MEMORY[0x277CCABB0] numberWithShort:SWORD1(v23)];
        [v5 setObject:v12 forKeyedSubscript:@"RG1"];

        v13 = [MEMORY[0x277CCABB0] numberWithShort:SWORD2(v23)];
        [v5 setObject:v13 forKeyedSubscript:@"RG2"];

        v14 = [MEMORY[0x277CCABB0] numberWithShort:SHIWORD(v23)];
        [v5 setObject:v14 forKeyedSubscript:@"RG3"];

        v15 = [MEMORY[0x277CCABB0] numberWithShort:v24];
        [v5 setObject:v15 forKeyedSubscript:@"RG4"];

        v16 = [MEMORY[0x277CCABB0] numberWithShort:v25];
        [v5 setObject:v16 forKeyedSubscript:@"BG1"];

        v17 = [MEMORY[0x277CCABB0] numberWithShort:v26];
        [v5 setObject:v17 forKeyedSubscript:@"BG2"];

        v18 = [MEMORY[0x277CCABB0] numberWithShort:v27];
        [v5 setObject:v18 forKeyedSubscript:@"BG3"];

        v19 = [MEMORY[0x277CCABB0] numberWithShort:v28];
        [v5 setObject:v19 forKeyedSubscript:@"BG4"];

        objc_autoreleasePoolPop(v6);
      }
    }

    v20 = v3;
    if (v30)
    {
      sub_2337239E8(v30);
    }
  }

  return v3;
}

void sub_23386321C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_2337239E8(a14);
  }

  _Unwind_Resume(a1);
}

id sub_233863290(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isEqualToString:@"leicaCropRect"])
  {
    (*(*a1 + 160))(&v9, a1);
    v11 = (*(*v9 + 448))(v9);
    v12 = v4;
    v5 = sub_2337D891C(&v11);
  }

  else
  {
    if (![v3 isEqualToString:@"cropRectFromTag"])
    {
      v7 = sub_2338D3C20(a1, v3);
      goto LABEL_8;
    }

    (*(*a1 + 160))(&v9, a1);
    v11 = (*(*v9 + 456))(v9);
    v12 = v6;
    v5 = sub_2337D891C(&v11);
  }

  v7 = v5;
  if (v10)
  {
    sub_2337239E8(v10);
  }

LABEL_8:

  return v7;
}

double sub_233863430(uint64_t a1)
{
  (*(*a1 + 72))(&v6);
  v2 = v6;
  v3 = (*(*a1 + 120))(a1);
  v4 = sub_2337F5668(v2, @"blackLevelOffsetAdjustment", v3, &unk_284925C78);
  if (v7)
  {
    sub_2337239E8(v7);
  }

  return v4;
}

void sub_2338634E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

void **sub_233863504(uint64_t a1, int a2, int a3, char **a4, char **a5)
{
  *(a1 + 188) = a2;
  *(a1 + 192) = a3;
  v7 = (a1 + 200);
  if (v7 != a4)
  {
    sub_233723454(v7, *a4, a4[1], (a4[1] - *a4) >> 2);
  }

  result = (a1 + 224);
  if ((a1 + 224) != a5)
  {
    v9 = *a5;
    v10 = a5[1];
    v11 = (v10 - *a5) >> 2;

    return sub_233723454(result, v9, v10, v11);
  }

  return result;
}

void *sub_23386357C(uint64_t a1, int a2, size_t size)
{
  v9 = a2;
  v4 = size;
  v5 = malloc_type_malloc(size, 0x100004077774924uLL);
  v6 = *(a1 + 24);
  sub_233723AE0(&v8, &v9);
  (*(*v6 + 40))(v6, &v8, 0);
  (*(**(a1 + 24) + 32))(*(a1 + 24), v5, v4);
  return v5;
}

void sub_23386364C(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    free(v1);
  }

  __cxa_end_catch();
  JUMPOUT(0x233863634);
}

void sub_233863670(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, int *a5, uint64_t a6, uint64_t a7)
{
  applejpeg_decode_create();
  if (applejpeg_decode_open_mem() || applejpeg_decode_set_option_outformat() || applejpeg_decode_get_image_info() || a5[2] != 2 * v27 || a5[3] != 2 * v28 || applejpeg_decode_get_output_buffer_size() || 2 * a5[2] * a5[2])
  {
    v11 = 0;
  }

  else
  {
    v11 = [MEMORY[0x277CBEB28] dataWithLength:?];
    [v11 mutableBytes];
    if (!applejpeg_decode_image_all())
    {
      v29.origin.x = *a3;
      v29.origin.y = a3[1];
      v29.size.width = a3[2];
      v29.size.height = a3[3];
      v31.origin.x = *a5;
      v31.origin.y = a5[1];
      v31.size.width = a5[2];
      v31.size.height = a5[3];
      v30 = CGRectIntersection(v29, v31);
      v12 = (v30.origin.y - a3[1]);
      v13 = v12 + v30.size.height;
      if (v13 > v12)
      {
        v14 = (v30.origin.x - *a3);
        v15 = v14 + v30.size.width;
        v16 = v12 * a4 + 2 * v14;
        v17 = v16 + a4 + a2 + 2;
        v18 = 2 * a4;
        v19 = a2 + v16;
        v20 = v12;
        do
        {
          v21 = [v11 bytes];
          if (v15 > v14)
          {
            v22 = 0;
            v23 = v14;
            do
            {
              v24 = *(v21 + ((2 * v22) | 4));
              v25 = *(v21 + ((2 * v22) | 6));
              *(v19 + v22) = *(v21 + 2 * (v22 & 0x7FFFFFFFFFFFFFFCLL));
              v26 = (v17 + v22);
              *(v26 - 1) = v24;
              *v26 = v25;
              v23 += 2;
              v22 += 4;
            }

            while (v23 < v15);
          }

          v20 += 2;
          v17 += v18;
          v19 += v18;
        }

        while (v20 < v13);
      }
    }
  }

  applejpeg_decode_destroy();
}

void sub_233863908(uint64_t a1)
{
  v3 = *(a1 + 44);
  v2 = *(a1 + 48);
  v4 = *(a1 + 188);
  v5 = *(a1 + 192);
  v16 = (*(a1 + 208) - *(a1 + 200)) >> 2;
  sub_233723B40(&v19, &v16);
  if (*(a1 + 208) - *(a1 + 200) != *(a1 + 232) - *(a1 + 224))
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if ((v3 - 100000) < 0xFFFE7961)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if ((v2 - 100000) < 0xFFFE7961)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if (v4 - 100000 < 0xFFFE7961)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if (v5 - 100000 < 0xFFFE7961)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v6 = v19;
  if (v19 >= 20000)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if ((v2 + v5 - 1) / v5 * ((v3 + v4 - 1) / v4) != v19)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v15 = sub_2337ADCC4(a1);
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 4 * v6;
    do
    {
      v16 = __PAIR64__(v8, v9);
      v17 = v4;
      v18 = v5;
      v11 = sub_23386357C(a1, *(*(a1 + 200) + v7), *(*(a1 + 224) + v7));
      if (v11)
      {
        v12 = v11;
        sub_233863670(v11, v15 + 2 * v8 * v3 + 2 * v9, &v16, 2 * v3, &v16, v11, *(*(a1 + 224) + v7));
        free(v12);
      }

      v7 += 4;
      v13 = v9 + v4;
      if ((v9 + v4) >= v3)
      {
        v9 = 0;
      }

      else
      {
        v9 += v4;
      }

      if (v13 >= v3)
      {
        v14 = v5;
      }

      else
      {
        v14 = 0;
      }

      v8 += v14;
    }

    while (v10 != v7);
  }
}

void sub_233863BB0(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  v7 = *(a1 + 44);
  v6 = *(a1 + 48);
  v8 = *(a1 + 188);
  v9 = *(a1 + 192);
  v19 = (*(a1 + 208) - *(a1 + 200)) >> 2;
  sub_233723B40(&v22, &v19);
  if (*(a1 + 208) - *(a1 + 200) != *(a1 + 232) - *(a1 + 224))
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if ((v7 - 100000) < 0xFFFE7961)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if ((v6 - 100000) < 0xFFFE7961)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if (v8 - 100000 < 0xFFFE7961)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if (v9 - 100000 < 0xFFFE7961)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if (v22 >= 20000)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if ((v6 + v9 - 1) / v9 * ((v7 + v8 - 1) / v8) != v22)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if (v22)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 4 * v22;
    do
    {
      v19 = __PAIR64__(v12, v11);
      v20 = v8;
      v21 = v9;
      if (sub_23385F470(&v19, a3))
      {
        v14 = sub_23386357C(a1, *(*(a1 + 200) + v10), *(*(a1 + 224) + v10));
        if (v14)
        {
          v15 = v14;
          sub_233863670(v14, a2, a3, a4, &v19, v14, *(*(a1 + 224) + v10));
          free(v15);
        }
      }

      if ((v11 + v8) >= v7)
      {
        v16 = v9;
      }

      else
      {
        v16 = 0;
      }

      v12 += v16;
      if ((v11 + v8) >= v7)
      {
        v11 = 0;
      }

      else
      {
        v11 += v8;
      }

      v10 += 4;
    }

    while (v13 != v10);
  }
}

void *sub_233863E50(void *a1)
{
  *a1 = &unk_284926878;
  v2 = a1[28];
  if (v2)
  {
    a1[29] = v2;
    operator delete(v2);
  }

  v3 = a1[25];
  if (v3)
  {
    a1[26] = v3;
    operator delete(v3);
  }

  return sub_233723A54(a1);
}

void sub_233863EC0(void *a1)
{
  *a1 = &unk_284926878;
  v2 = a1[28];
  if (v2)
  {
    a1[29] = v2;
    operator delete(v2);
  }

  v3 = a1[25];
  if (v3)
  {
    a1[26] = v3;
    operator delete(v3);
  }

  sub_233723A54(a1);

  JUMPOUT(0x2383ABF10);
}

id sub_2338641B0()
{
  v20[1] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CD3720];
  v11 = *MEMORY[0x277CD3700];
  v12 = v0;
  v19[0] = MEMORY[0x277CBEC38];
  v19[1] = @"com.samsung.raw-image";
  v1 = *MEMORY[0x277CD3718];
  v13 = *MEMORY[0x277CD36E0];
  v19[2] = @".srw.";
  v19[3] = &unk_284957FD0;
  v19[4] = &unk_284957FE8;
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{sub_2338644A8, v11, v12, v13, v1, *MEMORY[0x277CD3708], *MEMORY[0x277CD3710]}];
  v19[5] = v2;
  v14 = *MEMORY[0x277CD36C8];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_2338644F4];
  v19[6] = v3;
  v15 = *MEMORY[0x277CD36E8];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_233864500];
  v19[7] = v4;
  v16 = *MEMORY[0x277CD36D0];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_23378BC54];
  v19[8] = v5;
  v17 = *MEMORY[0x277CD36F0];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_23386450C];
  v19[9] = v6;
  v18 = *MEMORY[0x277CD36F8];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_233864518];
  v19[10] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v11 count:11];
  v20[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];

  return v9;
}

uint64_t sub_2338644A8(unsigned __int8 *a1, unint64_t a2, void *a3)
{
  v5 = 42;
  result = sub_2338F9020(a1, a2, &v5);
  if (result)
  {
    return sub_23378E728(@"com.samsung.raw-image", a3);
  }

  return result;
}

void sub_233864524(void x0_0, uint64_t a1, char a2, void *a3, void *a4)
{
  a3;
  a4;
  sub_233865B50();
}

uint64_t sub_2338645C0(uint64_t a1)
{
  sub_2337338AC(a1, &v5);
  v2 = (*(*v5 + 48))(v5);
  if (v6)
  {
    sub_2337239E8(v6);
  }

  v7 = v2;
  sub_2337338AC(a1, &v5);
  v3 = sub_233725404(v5);
  (*(*a1 + 128))(a1, v3);
  if (v6)
  {
    sub_2337239E8(v6);
  }

  sub_2337268D8(&v5, &v7);
  (*(*a1 + 144))(a1, &v5);
  LODWORD(v5) = 0;
  (*(*a1 + 160))(a1, &v5);
  return 1;
}

void sub_2338646E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_2337239E8(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_233864700(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  nullsub_6();
  v6 = *a3;
  if (v6 <= 0xA020)
  {
    switch(v6)
    {
      case 0xA010u:
        if (a3[1] == 4 && *(a3 + 1) == 8 && ((*(*a1 + 56))(a1) & 1) == 0)
        {
          sub_2337338AC(a1, &__p);
          LODWORD(v41[0]) = *(a3 + 2);
          sub_233723AE0(&v43, v41);
          sub_233725F08(&__dst, &__p, &v43, 0);
          if (__p.__r_.__value_.__l.__size_)
          {
            sub_2337239E8(__p.__r_.__value_.__l.__size_);
          }

          sub_2337338AC(a1, &v43);
          LODWORD(v41[0]) = *(a3 + 1);
          sub_233725C7C(v43, v41, &__p);
          sub_2338FD208(v41, &v43, &__p, &__dst);
        }

        break;
      case 0xA020u:
        if (((*(*a1 + 56))(a1) & 1) == 0 && a3[1] == 4 && *(a3 + 1) == 11)
        {
          sub_2337338AC(a1, &__p);
          LODWORD(v41[0]) = *(a3 + 2);
          sub_233723AE0(&v43, v41);
          sub_233725F08(&__dst, &__p, &v43, 0);
          if (__p.__r_.__value_.__l.__size_)
          {
            sub_2337239E8(__p.__r_.__value_.__l.__size_);
          }

          memset(&__p, 0, sizeof(__p));
          if (*(a3 + 1))
          {
            v7 = 0;
            do
            {
              sub_2337338AC(a1, &v43);
              LODWORD(v41[0]) = sub_233725614(v43);
              sub_2337539D0(&__p.__r_.__value_.__l.__data_, v41);
              if (v44)
              {
                sub_2337239E8(v44);
              }

              ++v7;
            }

            while (v7 < *(a3 + 1));
            v8 = __p.__r_.__value_.__r.__words[0];
          }

          else
          {
            v8 = 0;
          }

          if ((a1 + 1184) != &__p)
          {
            sub_233723454((a1 + 1184), v8, __p.__r_.__value_.__l.__size_, (__p.__r_.__value_.__l.__size_ - v8) >> 2);
            v8 = __p.__r_.__value_.__r.__words[0];
          }

          if (v8)
          {
            __p.__r_.__value_.__l.__size_ = v8;
            operator delete(v8);
          }

          sub_233725FD4(&__dst);
        }

        break;
      case 0x35u:
        sub_2338FCD48(a3, a1, a2);
        break;
    }

    return;
  }

  if (v6 != 40993)
  {
    if (v6 != 41000 || ((*(*a1 + 56))(a1) & 1) != 0 || a3[1] != 9 || *(a3 + 1) != 4)
    {
      return;
    }

    if (*(a1 + 1192) - *(a1 + 1184) != 44)
    {
      __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0]();
      sub_2338F83F4();
    }

    if (*(a2 + 23) < 0)
    {
      sub_233731FB8(&__dst, *a2, *(a2 + 8));
    }

    else
    {
      __dst = *a2;
    }

    std::string::append(&__dst, ":BlackLevel", 0xBuLL);
    memset(&__p, 0, sizeof(__p));
    sub_2337338AC(a1, v41);
    LODWORD(p_dst) = *(a3 + 2);
    sub_233723AE0(v40, &p_dst);
    sub_233725F08(&v43, v41, v40, 0);
    if (v41[1])
    {
      sub_2337239E8(v41[1]);
    }

    if (*(a3 + 1))
    {
      v9 = 0;
      do
      {
        sub_2337338AC(a1, v41);
        v10 = sub_233725614(v41[0]);
        size = __p.__r_.__value_.__l.__size_;
        if (__p.__r_.__value_.__l.__size_ >= __p.__r_.__value_.__r.__words[2])
        {
          v13 = __p.__r_.__value_.__r.__words[0];
          v14 = __p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0];
          v15 = (__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 2;
          v16 = v15 + 1;
          if ((v15 + 1) >> 62)
          {
            sub_2337235BC();
          }

          v17 = __p.__r_.__value_.__r.__words[2] - __p.__r_.__value_.__r.__words[0];
          if ((__p.__r_.__value_.__r.__words[2] - __p.__r_.__value_.__r.__words[0]) >> 1 > v16)
          {
            v16 = v17 >> 1;
          }

          if (v17 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v18 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v18 = v16;
          }

          if (v18)
          {
            sub_2337235D4(&__p, v18);
          }

          *(4 * v15) = v10;
          v12 = 4 * v15 + 4;
          memcpy(0, v13, v14);
          v19 = __p.__r_.__value_.__r.__words[0];
          __p.__r_.__value_.__r.__words[0] = 0;
          *&__p.__r_.__value_.__r.__words[1] = v12;
          if (v19)
          {
            operator delete(v19);
          }
        }

        else
        {
          *__p.__r_.__value_.__l.__size_ = v10;
          v12 = size + 4;
        }

        __p.__r_.__value_.__l.__size_ = v12;
        if (v41[1])
        {
          sub_2337239E8(v41[1]);
        }

        ++v9;
      }

      while (v9 < *(a3 + 1));
    }

    v20 = __p.__r_.__value_.__l.__size_;
    v21 = __p.__r_.__value_.__r.__words[0];
    v22 = (__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 2;
    if (__p.__r_.__value_.__l.__size_ != __p.__r_.__value_.__r.__words[0])
    {
      v23 = 0;
      v24 = *(a1 + 1184);
      do
      {
        v21[v23] -= *(v24 + 4 * (v23 % v22));
        ++v23;
      }

      while (v22 > v23);
    }

    v41[0] = 0;
    v41[1] = 0;
    v42 = 0;
    sub_233865A78(v41, v21, v20, v22);
    v40[0] = &__dst;
    v25 = sub_233757B14((a1 + 264), &__dst, &unk_233905F1C, v40, &p_dst);
    v26 = v25[7];
    if (v26)
    {
      v25[8] = v26;
      operator delete(v26);
      v25[7] = 0;
      v25[8] = 0;
      v25[9] = 0;
    }

    *(v25 + 7) = *v41;
    v25[9] = v42;
    sub_233725FD4(&v43);
    v27 = __p.__r_.__value_.__r.__words[0];
    if (!__p.__r_.__value_.__r.__words[0])
    {
      goto LABEL_93;
    }

    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    goto LABEL_92;
  }

  if (((*(*a1 + 56))(a1) & 1) != 0 || a3[1] != 4 || *(a3 + 1) != 4)
  {
    return;
  }

  if (*(a1 + 1192) - *(a1 + 1184) != 44)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if (*(a2 + 23) < 0)
  {
    sub_233731FB8(&__dst, *a2, *(a2 + 8));
    if (*(a2 + 23) < 0)
    {
      sub_233731FB8(&__p, *a2, *(a2 + 8));
      goto LABEL_72;
    }
  }

  else
  {
    __dst = *a2;
  }

  __p = *a2;
LABEL_72:
  std::string::append(&__dst, ":WhitePoint", 0xBuLL);
  std::string::append(&__p, ":WhitePointDecrypted", 0x14uLL);
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v41[0] = 0;
  v41[1] = 0;
  v42 = 0;
  sub_2337338AC(a1, &p_dst);
  v36 = *(a3 + 2);
  sub_233723AE0(&v37, &v36);
  sub_233725F08(v40, &p_dst, &v37, 0);
  if (v39)
  {
    sub_2337239E8(v39);
  }

  if (*(a3 + 1))
  {
    v28 = 0;
    do
    {
      sub_2337338AC(a1, &p_dst);
      v37 = sub_233725614(p_dst);
      sub_2337539D0(&v43, &v37);
      if (v39)
      {
        sub_2337239E8(v39);
      }

      ++v28;
    }

    while (v28 < *(a3 + 1));
  }

  sub_233723454(v41, v43, v44, (v44 - v43) >> 2);
  v29 = v41[0];
  if (v41[1] != v41[0])
  {
    v30 = (v41[1] - v41[0]) >> 2;
    v31 = *(a1 + 1184);
    v32 = 4;
    do
    {
      *v29++ -= *(v31 + 4 * (v32 % v30));
      v33 = v32 - 3;
      ++v32;
    }

    while (v30 > v33);
  }

  p_dst = &__dst;
  v34 = (sub_2337577E4((a1 + 120), &__dst, &unk_233905F1C, &p_dst, &v37) + 7);
  if (v34 != &v43)
  {
    sub_233723454(v34, v43, v44, (v44 - v43) >> 2);
  }

  p_dst = &__p;
  v35 = (sub_2337577E4((a1 + 120), &__p, &unk_233905F1C, &p_dst, &v37) + 7);
  if (v35 != v41)
  {
    sub_233723454(v35, v41[0], v41[1], (v41[1] - v41[0]) >> 2);
  }

  sub_233725FD4(v40);
  if (v41[0])
  {
    v41[1] = v41[0];
    operator delete(v41[0]);
  }

  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }

  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_93;
  }

  v27 = __p.__r_.__value_.__r.__words[0];
LABEL_92:
  operator delete(v27);
LABEL_93:
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_233864EF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (*(v26 - 89) < 0)
  {
    operator delete(*(v26 - 112));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233865090(uint64_t a1)
{
  v6 = 1;
  sub_23372A488(__p, "IFD0:SUBIFD1");
  v2 = sub_23374C360(a1, __p, &v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v2)
  {
    return v6;
  }

  else
  {
    return 1;
  }
}

void sub_233865100(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23386511C(uint64_t a1)
{
  sub_23372A488(__p, "IFD0:SUBIFD1");
  v2 = sub_233753D88(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_233865178(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233865194(uint64_t a1)
{
  sub_23372A488(__p, "IFD0:SUBIFD1");
  v2 = sub_233753DFC(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_2338651F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_23386520C(uint64_t a1)
{
  sub_23372A488(__p, "IFD0:SUBIFD1");
  v2 = sub_233753F24(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_233865268(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_233865284(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23372A488(v7, "IFD0");
  sub_233735E3C(a1 + 704, v7);
  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_23372A488(v7, "IFD0:SUBIFD0");
  sub_233753354(a1, v7, &v6);
  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  sub_23372A488(v7, "IFD0:EXIF:MAKERNOTE:SUBIFD0");
  sub_233753354(a1, v7, &v5);
  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  sub_23372A488(v7, "IFD1:SUBIFD0");
  sub_233753354(a1, v7, &v4);
  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  if (v6)
  {
    sub_233753C74(a2, &v6);
  }

  if (v5)
  {
    sub_233753C74(a2, &v5);
  }

  if (v4)
  {
    sub_233753C74(a2, &v4);
  }

  if (*(&v4 + 1))
  {
    sub_2337239E8(*(&v4 + 1));
  }

  if (*(&v5 + 1))
  {
    sub_2337239E8(*(&v5 + 1));
  }

  if (*(&v6 + 1))
  {
    sub_2337239E8(*(&v6 + 1));
  }
}

void sub_2338653D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (*(v16 - 17) < 0)
  {
    operator delete(*(v16 - 40));
  }

  if (a13)
  {
    sub_2337239E8(a13);
  }

  if (a15)
  {
    sub_2337239E8(a15);
  }

  *(v16 - 40) = v15;
  sub_233723948((v16 - 40));
  _Unwind_Resume(a1);
}

uint64_t sub_233865488(uint64_t a1)
{
  sub_23372A488(__p, "IFD0:SUBIFD1");
  v2 = sub_233735E3C(a1 + 656, __p);
  if (a1 + 664 == v2 || (v3 = *(v2 + 56), *(v2 + 64) == v3))
  {
    LOBYTE(v4) = 0;
    v5 = 0;
  }

  else
  {
    v4 = *v3;
    v5 = 1;
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
    if (v5)
    {
      goto LABEL_7;
    }

LABEL_9:
    LOWORD(result) = sub_233733AF4();
    return result;
  }

  if (!v5)
  {
    goto LABEL_9;
  }

LABEL_7:
  LODWORD(result) = ~(-1 << v4);
  return result;
}

void sub_233865534(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233865550(void *a1)
{
  if ((*(*a1 + 536))(a1) == 32769)
  {
    return 1;
  }

  return sub_23373279C(a1);
}

void sub_2338655CC(uint64_t a1@<X0>, void *a4@<X8>)
{
  v6 = (*(*a1 + 536))(a1);
  if (v6 == 32769)
  {
    (*(*a1 + 384))(&v7, a1);
    (*(*a1 + 424))(a1);
    sub_23376419C();
  }

  if (v6 == 32770)
  {
    (*(*a1 + 384))(&v7, a1);
    (*(*a1 + 424))(a1);
    sub_2337646DC();
  }

  *a4 = 0;
  a4[1] = 0;
}

void sub_2338657B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_2337239E8(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338657DC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_23372A488(&__p, "srw");
  sub_233735478(a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_23372A488(&__p, "samsung");
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

void sub_233865890(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_233735AD4(&__p);
  _Unwind_Resume(a1);
}

id sub_2338658D0()
{
  v6[5] = *MEMORY[0x277D85DE8];
  v0 = sub_23374CF00();
  v1 = [v0 mutableCopy];

  v5[0] = &unk_284958000;
  v5[1] = &unk_284958030;
  v6[0] = &unk_28495D9D8;
  v6[1] = &unk_28495DA00;
  v5[2] = &unk_284958048;
  v5[3] = &unk_284958060;
  v6[2] = &unk_28495DA28;
  v6[3] = &unk_28495DA50;
  v5[4] = &unk_284958078;
  v6[4] = &unk_28495DA78;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:5];
  [v1 addEntriesFromDictionary:v2];

  v3 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v1];

  return v3;
}

void sub_233865A04(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_233865A40(void *a1)
{
  sub_233865AF0(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t *sub_233865A78(uint64_t *result, int *a2, int *a3, unint64_t a4)
{
  if (a4)
  {
    sub_23372375C(result, a4);
  }

  return result;
}

void sub_233865AD4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233865AF0(void *a1)
{
  *a1 = &unk_284926990;
  v2 = a1[148];
  if (v2)
  {
    a1[149] = v2;
    operator delete(v2);
  }

  return sub_2337557B4(a1);
}

void *sub_233865BF4(void *a1, void *a2, char *a3, void **a4, void **a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284926CC8;
  sub_23374B844((a1 + 3), a2, *a3, *a4, *a5);
  a1[3] = &unk_284926990;
  a1[151] = 0;
  a1[153] = 0;
  a1[152] = 0;
  return a1;
}

void sub_233865CA4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284926CC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

id sub_233865D20(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isEqualToString:@"isSonySRFCompressedRaw"])
  {
    v4 = sub_233865DBC(a1);
    v5 = MEMORY[0x277CBEC28];
    if (v4)
    {
      v5 = MEMORY[0x277CBEC38];
    }

    v6 = v5;
  }

  else
  {
    v6 = sub_2338D3C20(a1, v3);
  }

  v7 = v6;

  return v7;
}

BOOL sub_233865DBC(uint64_t a1)
{
  (*(*a1 + 160))(&v4);
  sub_2337D03B0(&v4, &v6);
  if (v5)
  {
    sub_2337239E8(v5);
  }

  if (v6)
  {
    v2 = sub_233790CA4(v6) == 2;
  }

  else if ((*(*a1 + 176))(a1))
  {
    v2 = (*(*a1 + 864))(a1) > 0xFFF;
  }

  else
  {
    v2 = 0;
  }

  if (v7)
  {
    sub_2337239E8(v7);
  }

  return v2;
}

void sub_233865EB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_233865ED4(uint64_t a1)
{
  v2 = (*(*a1 + 2192))(a1);
  (*(*a1 + 2200))(__p, a1);
  v6 = 0;
  v7 = v2;
  v5 = &unk_284917748;
  (*(*a1 + 160))(&v3, a1);
  (*(*v3 + 600))(v3, __p, &v5, 3);
  if (v4)
  {
    sub_2337239E8(v4);
  }

  if (v9 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_233866024(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a11)
  {
    sub_2337239E8(a11);
  }

  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_233866054(uint64_t a1@<X0>, void **a2@<X8>)
{
  v4 = (*(*a1 + 960))(a1);
  if (v4 == 11)
  {
    goto LABEL_19;
  }

  if (v4 == 10)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    (*(*a1 + 160))(&v17, a1);
    v5 = v17;
    sub_23372A488(&__p, "IFD0:DNGPrivate:SR2Private:SR2SubIFD:BlackLevels");
    if ((*(*v5 + 248))(v5, &__p, a2, 0))
    {
      v7 = *a2;
      v6 = a2[1];
      if (v16 < 0)
      {
        operator delete(__p);
      }

      v8 = &v6[-v7];
      if (v18)
      {
        sub_2337239E8(v18);
      }

      if (v8 == 32)
      {
        return;
      }
    }

    else
    {
      if (v16 < 0)
      {
        operator delete(__p);
      }

      if (v18)
      {
        sub_2337239E8(v18);
      }
    }

    v9 = *a2;
    if (*a2)
    {
      a2[1] = v9;
      operator delete(v9);
    }

LABEL_19:
    (*(*a1 + 72))(&__p, a1);
    v10 = __p;
    v11 = off_27DE37618[0];
    v12 = (*(*a1 + 120))(a1);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_2338662F8;
    v13[3] = &unk_2789EEF48;
    v13[4] = a1;
    sub_2337BE5F8(v10, v11, v12, v13, a2);
    if (v15)
    {
      sub_2337239E8(v15);
    }

    return;
  }

  sub_2338D50CC(a1, a2);
}

void sub_23386629C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  v22 = *(v20 - 40);
  if (v22)
  {
    sub_2337239E8(v22);
  }

  v23 = *v19;
  if (*v19)
  {
    *(v19 + 8) = v23;
    operator delete(v23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233866300(uint64_t a1)
{
  if ((*(*a1 + 176))(a1) && (*(*a1 + 2808))(a1) == 7)
  {
    return 1;
  }

  if (sub_233739B74(a1))
  {
    return 0;
  }

  result = (*(*a1 + 312))(a1);
  if (result)
  {
    result = (*(*a1 + 2792))(a1);
    if (result)
    {
      v3 = *(*a1 + 2800);

      return v3(a1);
    }
  }

  return result;
}

uint64_t sub_23386644C(uint64_t a1)
{
  (*(*a1 + 160))(&v7);
  sub_2337D03B0(&v7, &v9);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  if (v9)
  {
    v1 = sub_233790810(v9);
    v2 = v1 & 1;
    if ((v1 & 0x10) != 0)
    {
      v2 = 0;
    }

    if ((~v1 & 0x11) != 0)
    {
      v3 = v2;
    }

    else
    {
      v3 = 1;
    }

    if (v1 == 255)
    {
      v4 = 0;
    }

    else
    {
      v4 = v3;
    }

    if (v1)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  if (v10)
  {
    sub_2337239E8(v10);
  }

  return v5;
}

void sub_233866504(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23386651C(uint64_t a1)
{
  v2 = (*(*a1 + 2808))(a1);
  if (v2 == 3 || v2 == 5)
  {
    return 1;
  }

  if (v2 != 4)
  {
    return 0;
  }

  (*(*a1 + 160))(&v11, a1);
  sub_2337D03B0(&v11, &v13);
  if (v12)
  {
    sub_2337239E8(v12);
  }

  if (v13)
  {
    v5 = sub_233790810(v13);
    v6 = v5 & 1;
    if ((v5 & 0x10) != 0)
    {
      v6 = 0;
    }

    if ((~v5 & 0x11) != 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 1;
    }

    if (v5 == 255)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7;
    }

    if ((v5 & 0x100) != 0)
    {
      v9 = 0;
    }

    else
    {
      v9 = v8;
    }

    if ((v5 - 1) <= 0xFEFEu)
    {
      v4 = v9;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  if (v14)
  {
    sub_2337239E8(v14);
  }

  return v4;
}

void sub_233866640(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_233866948(uint64_t a1)
{
  (*(*a1 + 2824))(&v4);
  v1 = v4;
  v2 = v5;
  if (v4)
  {
    v5 = v4;
    operator delete(v4);
  }

  return v2 != v1;
}

void sub_2338669B8(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 480) = 0u;
  *(a3 + 496) = 0u;
  *(a3 + 448) = 0u;
  *(a3 + 464) = 0u;
  *(a3 + 416) = 0u;
  *(a3 + 432) = 0u;
  *(a3 + 384) = 0u;
  *(a3 + 400) = 0u;
  *(a3 + 352) = 0u;
  *(a3 + 368) = 0u;
  *(a3 + 320) = 0u;
  *(a3 + 336) = 0u;
  *(a3 + 288) = 0u;
  *(a3 + 304) = 0u;
  *(a3 + 256) = 0u;
  *(a3 + 272) = 0u;
  *(a3 + 224) = 0u;
  *(a3 + 240) = 0u;
  *(a3 + 192) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 176) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  sub_233855004(a1, a2, a3);
  if ((sub_233739B6C(a1) & 1) == 0)
  {
    (*(*a1 + 2824))(&v37, a1);
    v9 = v37;
    v10 = v38 - v37;
    if (v38 == v37)
    {
      if (!v38)
      {
        return;
      }
    }

    else
    {
      if ((v10 & 8) != 0 || (v11 = v10 >> 3, ((v10 >> 3) - 35) <= 0xFFFFFFFFFFFFFFE2))
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](exception, "RawCameraException");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      LOBYTE(v34) = 1;
      v12 = *v37;
      if (v12 - 9 < 0xFFFFFFFFFFFFFFF8 || (v13 = (v11 - 4) >> 1, v13 < v12))
      {
        v32 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](v32, "RawCameraException");
        __cxa_throw(v32, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v14 = v37[2 * v12 + 1];
      if (v14 - 9 < 0xFFFFFFFFFFFFFFF8 || v13 < v14)
      {
        v33 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](v33, "RawCameraException");
        __cxa_throw(v33, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v16 = &v35 + 1;
      v17 = v37 + 2;
      v18 = *v37;
      do
      {
        *(v16 - 8) = *(v17 - 1);
        *v16++ = v17[2 * v12];
        ++v17;
        --v18;
      }

      while (v18);
      v19 = &v9[v12];
      v20 = vcvtq_s64_f64(*(v19 + 7));
      v21 = vmovn_s64(v20);
      v22 = vmovn_s64(vcvtq_s64_f64(*(v19 + 5)));
      v23 = vmovn_s64(vcvtq_s64_f64(*(v19 + 3)));
      *v20.i8 = vmovn_s64(vcvtq_s64_f64(*(v19 + 1)));
      *&v36[2] = vqtbl4q_s8(*(&v5 - 3), xmmword_23390A3A0);
      v24 = &v9[2 * v12 + v12];
      v25 = vcvtq_s64_f64(v24[4]);
      v26 = vmovn_s64(v25);
      v27 = vmovn_s64(vcvtq_s64_f64(v24[3]));
      v28 = vmovn_s64(vcvtq_s64_f64(v24[2]));
      *v25.i8 = vmovn_s64(vcvtq_s64_f64(v24[1]));
      *&v36[18] = vqtbl4q_s8(*(&v6 - 3), xmmword_23390A3A0);
      v29 = v34;
      *(a3 + 120) = v35;
      *(a3 + 104) = v29;
      v30 = *&v36[16];
      *(a3 + 136) = *v36;
      *(a3 + 152) = v30;
      *(a3 + 168) = *&v36[32];
    }

    v38 = v9;
    operator delete(v9);
  }
}

void sub_233866C78(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  if (v3)
  {
    *(v1 - 32) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

id sub_233866CB4(uint64_t a1, unsigned int a2)
{
  v3 = sub_2337C4398(a1, a2);
  if (sub_233739B6C(a1))
  {
    v4 = v3;
  }

  else
  {
    (*(*a1 + 2824))(&v82, a1);
    v9 = v82;
    v10 = v83 - v82;
    if (v83 == v82)
    {
      v66 = v3;
    }

    else
    {
      if ((v10 & 8) != 0 || (v11 = v10 >> 3, ((v10 >> 3) - 35) <= 0xFFFFFFFFFFFFFFE2))
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](exception, "RawCameraException");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v12 = *v82;
      v13 = (v11 - 4) >> 1;
      if (v12 - 9 < 0xFFFFFFFFFFFFFFF8 || v13 < v12)
      {
        v69 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](v69, "RawCameraException");
        __cxa_throw(v69, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v15 = v82[2 * v12 + 1];
      if (v15 - 9 < 0xFFFFFFFFFFFFFFF8 || v13 < v15)
      {
        v70 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](v70, "RawCameraException");
        __cxa_throw(v70, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v17 = &v82[2 * v12];
      v18 = v79;
      v19 = v82 + 2;
      v20 = *v82;
      do
      {
        *(v18 - 8) = *(v19 - 1);
        *v18++ = v19[2 * v12];
        ++v19;
        --v20;
      }

      while (v20);
      v21 = &v9[v12];
      v22 = vcvtq_s64_f64(*(v21 + 7));
      v23 = vmovn_s64(v22);
      v24 = vmovn_s64(vcvtq_s64_f64(*(v21 + 5)));
      v25 = vmovn_s64(vcvtq_s64_f64(*(v21 + 3)));
      *v22.i8 = vmovn_s64(vcvtq_s64_f64(*(v21 + 1)));
      v80 = vqtbl4q_s8(*(&v5 - 3), xmmword_23390A3A0);
      v26 = &v17[v12];
      v27 = vcvtq_s64_f64(v26[4]);
      v28 = vmovn_s64(v27);
      v29 = vmovn_s64(vcvtq_s64_f64(v26[3]));
      v30 = vmovn_s64(vcvtq_s64_f64(v26[2]));
      *v27.i8 = vmovn_s64(vcvtq_s64_f64(v26[1]));
      v81 = vqtbl4q_s8(*(&v6 - 3), xmmword_23390A3A0);
      v31 = sub_2337854A4(v3, @"PanasonicChromaticAberrationExtended", 0);
      v32 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:1];
      [v31 setObject:v32 forKeyedSubscript:@"ChAber_SW_Extended"];

      v33 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v71];
      [v31 setObject:v33 forKeyedSubscript:@"CA_blu0"];

      v34 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v72];
      [v31 setObject:v34 forKeyedSubscript:@"CA_blu1"];

      v35 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v73];
      [v31 setObject:v35 forKeyedSubscript:@"CA_blu2"];

      v36 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v74];
      [v31 setObject:v36 forKeyedSubscript:@"CA_blu3"];

      v37 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v75];
      [v31 setObject:v37 forKeyedSubscript:@"CA_blu4"];

      v38 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v76];
      [v31 setObject:v38 forKeyedSubscript:@"CA_blu5"];

      v39 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v77];
      [v31 setObject:v39 forKeyedSubscript:@"CA_blu6"];

      v40 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v78];
      [v31 setObject:v40 forKeyedSubscript:@"CA_blu7"];

      v41 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v79[0]];
      [v31 setObject:v41 forKeyedSubscript:@"CA_red0"];

      v42 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v79[1]];
      [v31 setObject:v42 forKeyedSubscript:@"CA_red1"];

      v43 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v79[2]];
      [v31 setObject:v43 forKeyedSubscript:@"CA_red2"];

      v44 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v79[3]];
      [v31 setObject:v44 forKeyedSubscript:@"CA_red3"];

      v45 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v79[4]];
      [v31 setObject:v45 forKeyedSubscript:@"CA_red4"];

      v46 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v79[5]];
      [v31 setObject:v46 forKeyedSubscript:@"CA_red5"];

      v47 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v79[6]];
      [v31 setObject:v47 forKeyedSubscript:@"CA_red6"];

      v48 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v79[7]];
      [v31 setObject:v48 forKeyedSubscript:@"CA_red7"];

      v49 = [MEMORY[0x277CCABB0] numberWithShort:v80.i16[0]];
      [v31 setObject:v49 forKeyedSubscript:@"BG0"];

      v50 = [MEMORY[0x277CCABB0] numberWithShort:v80.i16[1]];
      [v31 setObject:v50 forKeyedSubscript:@"BG1"];

      v51 = [MEMORY[0x277CCABB0] numberWithShort:v80.i16[2]];
      [v31 setObject:v51 forKeyedSubscript:@"BG2"];

      v52 = [MEMORY[0x277CCABB0] numberWithShort:v80.i16[3]];
      [v31 setObject:v52 forKeyedSubscript:@"BG3"];

      v53 = [MEMORY[0x277CCABB0] numberWithShort:v80.i16[4]];
      [v31 setObject:v53 forKeyedSubscript:@"BG4"];

      v54 = [MEMORY[0x277CCABB0] numberWithShort:v80.i16[5]];
      [v31 setObject:v54 forKeyedSubscript:@"BG5"];

      v55 = [MEMORY[0x277CCABB0] numberWithShort:v80.i16[6]];
      [v31 setObject:v55 forKeyedSubscript:@"BG6"];

      v56 = [MEMORY[0x277CCABB0] numberWithShort:v80.i16[7]];
      [v31 setObject:v56 forKeyedSubscript:@"BG7"];

      v57 = [MEMORY[0x277CCABB0] numberWithShort:v81.i16[0]];
      [v31 setObject:v57 forKeyedSubscript:@"RG0"];

      v58 = [MEMORY[0x277CCABB0] numberWithShort:v81.i16[1]];
      [v31 setObject:v58 forKeyedSubscript:@"RG1"];

      v59 = [MEMORY[0x277CCABB0] numberWithShort:v81.i16[2]];
      [v31 setObject:v59 forKeyedSubscript:@"RG2"];

      v60 = [MEMORY[0x277CCABB0] numberWithShort:v81.i16[3]];
      [v31 setObject:v60 forKeyedSubscript:@"RG3"];

      v61 = [MEMORY[0x277CCABB0] numberWithShort:v81.i16[4]];
      [v31 setObject:v61 forKeyedSubscript:@"RG4"];

      v62 = [MEMORY[0x277CCABB0] numberWithShort:v81.i16[5]];
      [v31 setObject:v62 forKeyedSubscript:@"RG5"];

      v63 = [MEMORY[0x277CCABB0] numberWithShort:v81.i16[6]];
      [v31 setObject:v63 forKeyedSubscript:@"RG6"];

      v64 = [MEMORY[0x277CCABB0] numberWithShort:v81.i16[7]];
      [v31 setObject:v64 forKeyedSubscript:@"RG7"];

      v65 = v3;
    }

    if (v82)
    {
      v83 = v82;
      operator delete(v82);
    }
  }

  return v3;
}

void sub_23386750C(_Unwind_Exception *a1)
{
  v5 = *(v4 - 56);
  if (v5)
  {
    *(v4 - 48) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2338675F8(uint64_t a1)
{
  (*(*a1 + 72))(&v6);
  v2 = v6;
  v3 = (*(*a1 + 120))(a1);
  v4 = sub_2337D0E68(v2, @"applyLensCorrection", v3, &unk_2849278B8);
  if (v7)
  {
    sub_2337239E8(v7);
  }

  return v4;
}

void sub_2338676A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338676C4(uint64_t a1)
{
  (*(*a1 + 72))(&v6);
  v2 = v6;
  v3 = (*(*a1 + 120))(a1);
  v4 = sub_2337BE174(v2, @"lensCorrectionFilter", v3, &unk_2849278D8);
  if (v7)
  {
    sub_2337239E8(v7);
  }

  return v4;
}

void sub_233867770(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_233867790(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  (*(*a1 + 72))(&v6);
  v4 = v6;
  v5 = (*(*a1 + 120))(a1);
  sub_2337BE5F8(v4, @"lensCorrectionParameters", v5, &unk_2849278F8, a2);
  if (v7)
  {
    sub_2337239E8(v7);
  }
}

void sub_233867844(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_23386785C(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void sub_233867868(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  (*(*a1 + 72))(&v6);
  v4 = v6;
  v5 = (*(*a1 + 120))(a1);
  sub_2337BE5F8(v4, @"chromaticAberrationParameters", v5, &unk_284927918, a2);
  if (v7)
  {
    sub_2337239E8(v7);
  }
}

void sub_23386791C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_233867934(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void sub_233867948(uint64_t a1)
{
  v1[2] = &unk_28490E658;
  (*(*a1 + 160))(v1);
  operator new();
}

void sub_233867A68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

void **sub_233867A98(void **a1, void *a2)
{
  v3 = a2;
  *a1 = 0;
  a1[1] = 0;
  v4 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v3];
  v5 = *a1;
  *a1 = v4;

  v6 = MEMORY[0x277CE1CB8];
  v7 = [v3 pathExtension];
  v8 = [v6 typeWithFilenameExtension:v7];
  v9 = [v8 identifier];
  v10 = a1[1];
  a1[1] = v9;

  return a1;
}

void sub_233867B3C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_233867B78(float a1, uint64_t a2, void *a3, void *a4)
{
  v8 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%af\t// %g", a1, a1];
  [v8 setValue:v7 forKey:v6];
}

void sub_233867C38(uint64_t a1, void *a2, void *a3, uint64_t a4, int a5)
{
  v12 = a2;
  v8 = a3;
  if (a5)
  {
    v9 = 0;
    do
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%af\t// %g", *(a4 + 4 * v9), *(a4 + 4 * v9)];
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@[%d]", v8, v9];
      [v12 setValue:v10 forKey:v11];

      ++v9;
    }

    while (a5 != v9);
  }
}

void sub_233867D5C(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = a2;
  sub_233867B78(*a3, v12, v12, @"otrc.s0");
  sub_233867B78(*(a3 + 4), v4, v12, @"otrc.y1");
  sub_233867B78(*(a3 + 8), v5, v12, @"otrc.s1");
  sub_233867B78(*(a3 + 12), v6, v12, @"otrc.y2");
  sub_233867B78(*(a3 + 16), v7, v12, @"otrc.s2");
  sub_233867B78(*(a3 + 20), v8, v12, @"otrc.y3");
  sub_233867B78(*(a3 + 24), v9, v12, @"otrc.s3");
  sub_233867B78(*(a3 + 28), v10, v12, @"otrc.s4");
  v11 = [MEMORY[0x277CCABB0] numberWithBool:*(a3 + 32)];
  [v12 setObject:v11 forKeyedSubscript:@"otrc.disabled"];
}

id sub_233867E90(uint64_t a1, uint64_t *a2)
{
  memset(v191, 0, 96);
  v190 = 0u;
  v188 = 0u;
  memset(v189, 0, sizeof(v189));
  v186 = 0u;
  v187 = 0u;
  v184 = 0u;
  v185 = 0u;
  v182 = 0u;
  v183 = 0u;
  v180 = 0u;
  v181 = 0u;
  v178 = 0u;
  v179 = 0u;
  v176 = 0u;
  v177 = 0u;
  v2 = *a2;
  v3 = sub_233739B84(*a2);
  (*(*v2 + 2696))(&v176, v2, v3);
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%#x", v176];
  [v4 setObject:v5 forKeyedSubscript:@"pattern"];

  v6 = [MEMORY[0x277CCABB0] numberWithInt:DWORD1(v176)];
  [v4 setObject:v6 forKeyedSubscript:@"bitmapType"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:BYTE8(v176)];
  [v4 setObject:v7 forKeyedSubscript:@"despeckleBlackNoiseEnabled"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:BYTE9(v176)];
  [v4 setObject:v8 forKeyedSubscript:@"blackLevelExtendEnabled"];

  sub_233867B78(*(&v176 + 3), v9, v4, @"blackDespeckleNoiseFactor");
  v10 = [MEMORY[0x277CCABB0] numberWithBool:v177];
  [v4 setObject:v10 forKeyedSubscript:@"greenSplitEnabled"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:BYTE1(v177)];
  [v4 setObject:v11 forKeyedSubscript:@"unknownDNGCamera"];

  sub_233867B78(*(&v177 + 1), v12, v4, @"greenSplitRed");
  sub_233867B78(*(&v177 + 2), v13, v4, @"greenSplitGreen1");
  sub_233867B78(*(&v177 + 3), v14, v4, @"greenSplitBlue");
  v15 = [MEMORY[0x277CCABB0] numberWithInt:v178];
  [v4 setObject:v15 forKeyedSubscript:@"greenBayerSplit"];

  v16 = [MEMORY[0x277CCABB0] numberWithBool:BYTE4(v178)];
  [v4 setObject:v16 forKeyedSubscript:@"HREnabled"];

  sub_233867B78(*(&v178 + 2), v17, v4, @"HRGreenClip");
  v18 = [MEMORY[0x277CCABB0] numberWithBool:BYTE12(v178)];
  [v4 setObject:v18 forKeyedSubscript:@"SPEEnabled"];

  sub_233867B78(*&v179, v19, v4, @"SPEDeadNoiseFactor");
  sub_233867B78(*(&v179 + 1), v20, v4, @"SPEDeadNoticeabilityFactor");
  sub_233867B78(*(&v179 + 2), v21, v4, @"SPEHotNoiseFactor");
  v22 = [MEMORY[0x277CCABB0] numberWithBool:BYTE12(v179)];
  [v4 setObject:v22 forKeyedSubscript:@"DESEnabled"];

  sub_233867B78(*&v180, v23, v4, @"DESNoiseFactor");
  sub_233867B78(*(&v180 + 1), v24, v4, @"DESSignalToNoiseThreshold");
  v25 = [MEMORY[0x277CCABB0] numberWithInt:DWORD2(v180)];
  [v4 setObject:v25 forKeyedSubscript:@"DESDoEarlyOut"];

  sub_233867B78(*(&v180 + 3), v26, v4, @"DESEarlyOutFactor");
  v27 = [MEMORY[0x277CCABB0] numberWithInt:v181];
  [v4 setObject:v27 forKeyedSubscript:@"DESDoRed"];

  v28 = [MEMORY[0x277CCABB0] numberWithInt:DWORD1(v181)];
  [v4 setObject:v28 forKeyedSubscript:@"DESDoGreen"];

  v29 = [MEMORY[0x277CCABB0] numberWithInt:DWORD2(v181)];
  [v4 setObject:v29 forKeyedSubscript:@"DESDoBlue"];

  v30 = [MEMORY[0x277CCABB0] numberWithInt:HIDWORD(v181)];
  [v4 setObject:v30 forKeyedSubscript:@"DESTaperMethod"];

  v31 = [MEMORY[0x277CCABB0] numberWithInt:v182];
  [v4 setObject:v31 forKeyedSubscript:@"DESMethod"];

  v32 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE8(v182)];
  [v4 setObject:v32 forKeyedSubscript:@"CAParameters.ChAber_SW_Extended"];

  v33 = 0;
  v34 = &v185 + 5;
  do
  {
    v35 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(v34 - 24)];
    v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"CAParameters.CA_blu[%d]", v33];
    [v4 setValue:v35 forKey:v36];

    v37 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(v34 - 16)];
    v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"CAParameters.CA_red[%d]", v33];
    [v4 setValue:v37 forKey:v38];

    v39 = [MEMORY[0x277CCABB0] numberWithShort:*(v34 - 8)];
    v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"CAParameters.BG[%d]", v33];
    [v4 setValue:v39 forKey:v40];

    v41 = [MEMORY[0x277CCABB0] numberWithShort:*v34];
    v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"CAParameters.RG[%d]", v33];
    [v4 setValue:v41 forKey:v42];
    ++v34;

    ++v33;
  }

  while (v33 != 8);
  v43 = [MEMORY[0x277CCABB0] numberWithBool:BYTE10(v186)];
  [v4 setObject:v43 forKeyedSubscript:@"CACorrectionEnabled"];

  sub_233867B78(*(&v186 + 3), v44, v4, @"CACorrectionRedPower");
  sub_233867B78(*&v187, v45, v4, @"CACorrectionBluePower");
  sub_233867B78(*(&v187 + 1), v46, v4, @"CACorrectionRedScale");
  sub_233867B78(*(&v187 + 2), v47, v4, @"CACorrectionBlueScale");
  v48 = [MEMORY[0x277CCABB0] numberWithInt:HIDWORD(v187)];
  [v4 setObject:v48 forKeyedSubscript:@"fullWidth"];

  v49 = [MEMORY[0x277CCABB0] numberWithInt:v188];
  [v4 setObject:v49 forKeyedSubscript:@"fullHeight"];

  v50 = [MEMORY[0x277CCABB0] numberWithBool:BYTE4(v188)];
  [v4 setObject:v50 forKeyedSubscript:@"vignetteCorrectionEnabled"];

  sub_233867B78(*(&v188 + 2), v51, v4, @"vignetteCorrectionPower");
  sub_233867B78(*(&v188 + 3), v52, v4, @"vignetteCorrectionAmount");
  v53 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:LOBYTE(v189[0])];
  [v4 setObject:v53 forKeyedSubscript:@"fujiCAParameters.FujiCAEnable"];

  if (LOBYTE(v189[0]))
  {
    v54 = [MEMORY[0x277CCABB0] numberWithInt:DWORD1(v189[0])];
    [v4 setObject:v54 forKeyedSubscript:@"fujiCAParameters.numberOfPoints"];

    v55 = [MEMORY[0x277CCABB0] numberWithInt:DWORD2(v189[0])];
    [v4 setObject:v55 forKeyedSubscript:@"fujiCAParameters.maxDistance"];

    sub_233867C38(v56, v4, @"fujiCAParameters.CA_LR", v189 + 12, 16);
    sub_233867C38(v57, v4, @"fujiCAParameters.CA_red", &v189[4] + 12, 16);
    sub_233867C38(v58, v4, @"fujiCAParameters.CA_blu", &v189[8] + 12, 16);
  }

  v59 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE12(v190)];
  [v4 setObject:v59 forKeyedSubscript:@"fujiLensParameters.FujiLensCorrectionEnable"];

  if (BYTE12(v190))
  {
    v61 = [MEMORY[0x277CCABB0] numberWithInt:LODWORD(v191[0])];
    [v4 setObject:v61 forKeyedSubscript:@"fujiLensParameters.maxDistance"];

    v62 = [MEMORY[0x277CCABB0] numberWithInt:DWORD1(v191[0])];
    [v4 setObject:v62 forKeyedSubscript:@"fujiLensParameters.numberOfPoints"];

    sub_233867C38(v63, v4, @"fujiLensParameters.lengthRatio", v191 + 8, 16);
    sub_233867C38(v64, v4, @"fujiLensParameters.factor", &v191[4] + 8, 16);
  }

  sub_233867B78(v192, v60, v4, off_27DE37638[0]);
  sub_233867B78(v193, v65, v4, off_27DE37608[0]);
  v66 = [MEMORY[0x277CCABB0] numberWithBool:v194];
  [v4 setObject:v66 forKeyedSubscript:@"chromaBlurEnabled"];

  v67 = [MEMORY[0x277CCABB0] numberWithBool:v195];
  [v4 setObject:v67 forKeyedSubscript:@"noAntiAliasingFilter"];

  sub_233867B78(v196, v68, v4, off_27DE37740[0]);
  sub_233867B78(v197, v69, v4, @"chromaBlurRadius2");
  sub_233867B78(v198, v70, v4, off_27DE37650[0]);
  sub_233867B78(v199, v71, v4, @"cnrNoiseFactor");
  sub_233867B78(v200, v72, v4, @"cnrRadius");
  sub_233867B78(v201, v73, v4, @"cnrAmount");
  sub_233867B78(v202, v74, v4, off_27DE37748[0]);
  sub_233867B78(v203, v75, v4, @"chromaBlurEdgeThreshold2");
  sub_233867B78(v204, v76, v4, @"adaptiveNormalizationNoiseFactor");
  v77 = [MEMORY[0x277CCABB0] numberWithBool:v205];
  [v4 setObject:v77 forKeyedSubscript:@"adaptiveNormalizationSimple"];

  v78 = [MEMORY[0x277CCABB0] numberWithInt:v206];
  [v4 setObject:v78 forKeyedSubscript:@"adaptiveNormalizationDirectionFindingMethod"];

  v79 = [MEMORY[0x277CCABB0] numberWithBool:v207];
  [v4 setObject:v79 forKeyedSubscript:@"fujiGreenReconstructionCopyRaw"];

  v80 = [MEMORY[0x277CCABB0] numberWithBool:v208];
  [v4 setObject:v80 forKeyedSubscript:@"fujiGreenReconstructionHighFrequency"];

  sub_233867B78(v209, v81, v4, @"fujiDirectionsNoiseFactor");
  v82 = [MEMORY[0x277CCABB0] numberWithInt:v210];
  [v4 setObject:v82 forKeyedSubscript:@"fujiGreenSmoothingEnabled"];

  v83 = [MEMORY[0x277CCABB0] numberWithInt:v211];
  [v4 setObject:v83 forKeyedSubscript:@"fujiGreenSmoothingThreshold"];

  sub_233867B78(v212, v84, v4, @"fujiGreenSmoothingSharpeningAmount");
  sub_233867B78(v213, v85, v4, @"fujiGreenSmoothingCornerThreshold");
  sub_233867B78(v214, v86, v4, @"fujiGreenSmoothingAdjuster");
  v87 = [MEMORY[0x277CCABB0] numberWithBool:v215];
  [v4 setObject:v87 forKeyedSubscript:@"fujiRedBluePlanarValidity"];

  v88 = [MEMORY[0x277CCABB0] numberWithInt:v216];
  [v4 setObject:v88 forKeyedSubscript:@"redBlueDefringe"];

  v89 = [MEMORY[0x277CCABB0] numberWithInt:v217];
  [v4 setObject:v89 forKeyedSubscript:@"redBlueRangeLimit"];

  v90 = [MEMORY[0x277CCABB0] numberWithInt:v218];
  [v4 setObject:v90 forKeyedSubscript:@"redBlueGradientThreshold"];

  v91 = [MEMORY[0x277CCABB0] numberWithInt:v219];
  [v4 setObject:v91 forKeyedSubscript:@"redBlueDumbOnly"];

  v92 = [MEMORY[0x277CCABB0] numberWithInt:v220];
  [v4 setObject:v92 forKeyedSubscript:@"redBlueGreenOnly"];

  v93 = [MEMORY[0x277CCABB0] numberWithInt:v221];
  [v4 setObject:v93 forKeyedSubscript:@"colorSmoothingEnabled"];

  sub_233867B78(v222, v94, v4, @"colorSmoothingSharpnessAmount");
  sub_233867B78(v223, v95, v4, @"resampleHorizScale");
  sub_233867B78(v224, v96, v4, @"resampleVertScale");
  sub_233867B78(v225, v97, v4, @"resampleVSharpness");
  sub_233867B78(v226, v98, v4, @"minimumSignalToNoiseRatio");
  sub_233867B78(v227, v99, v4, @"maximumSignalToNoiseRatio");
  sub_233867C38(v100, v4, @"factors", &v228, 3);
  sub_233867C38(v101, v4, @"RVector", &v229, 3);
  sub_233867C38(v102, v4, @"GVector", &v230, 3);
  sub_233867C38(v103, v4, @"BVector", &v231, 3);
  sub_233867C38(v104, v4, @"bias", &v232, 3);
  sub_233867C38(v105, v4, @"clipLevels", v233, 3);
  v106 = [MEMORY[0x277CCABB0] numberWithInt:v233[3]];
  [v4 setObject:v106 forKeyedSubscript:@"biasOff"];

  v107 = [MEMORY[0x277CCABB0] numberWithBool:v234];
  [v4 setObject:v107 forKeyedSubscript:@"boostEnabled"];

  sub_233867D5C(v108, v4, v235);
  sub_233867B78(v235[9], v109, v4, @"gamma");
  sub_233867B78(v235[10], v110, v4, @"shadowDesaturatePoint");
  sub_233867B78(v235[11], v111, v4, @"shadowDesaturateWidth");
  sub_233867B78(v235[12], v112, v4, @"shadowDesaturateAmount");
  sub_233867B78(v235[13], v113, v4, off_27DE37660[0]);
  sub_233867B78(v235[14], v114, v4, off_27DE37668[0]);
  v115 = [MEMORY[0x277CCABB0] numberWithInt:LODWORD(v235[15])];
  [v4 setObject:v115 forKeyedSubscript:@"ISO"];

  sub_233867C38(v116, v4, @"blackLevels", &v236, 4);
  sub_233867C38(v117, v4, @"darkNoise", v237, 4);
  v118 = [MEMORY[0x277CCABB0] numberWithBool:v237[16]];
  [v4 setObject:v118 forKeyedSubscript:@"individualQuadratics"];

  v119 = 0;
  v120 = v238;
  do
  {
    v121 = [MEMORY[0x277CCACA8] stringWithFormat:@"signalNoiseModels[%d].a", v119];
    sub_233867B78(*(v120 - 3), v121, v4, v121);

    v122 = [MEMORY[0x277CCACA8] stringWithFormat:@"signalNoiseModels[%d].b", v119];
    sub_233867B78(*(v120 - 2), v122, v4, v122);

    v123 = [MEMORY[0x277CCACA8] stringWithFormat:@"signalNoiseModels[%d].c", v119];
    sub_233867B78(*(v120 - 1), v123, v4, v123);

    v124 = [MEMORY[0x277CCACA8] stringWithFormat:@"signalNoiseModels[%d].PRNU", v119];
    sub_233867B78(*v120, v124, v4, v124);

    ++v119;
    v120 += 4;
  }

  while (v119 != 4);
  v125 = [MEMORY[0x277CCABB0] numberWithBool:v238[52]];
  [v4 setObject:v125 forKeyedSubscript:@"moireSuppressionEnabled"];

  sub_233867B78(v239, v126, v4, @"hueMagMR");
  sub_233867B78(v240, v127, v4, @"hueMagRY");
  sub_233867B78(v241, v128, v4, @"hueMagYG");
  sub_233867B78(v242, v129, v4, @"hueMagGC");
  sub_233867B78(v243, v130, v4, @"hueMagCB");
  sub_233867B78(v244, v131, v4, @"hueMagBM");
  v132 = [MEMORY[0x277CCABB0] numberWithInt:v245];
  [v4 setObject:v132 forKeyedSubscript:@"bitmapType"];

  v133 = [MEMORY[0x277CCABB0] numberWithBool:v246];
  [v4 setObject:v133 forKeyedSubscript:@"luminanceNoiseReductionEnabled"];

  v134 = [MEMORY[0x277CCABB0] numberWithBool:v247];
  [v4 setObject:v134 forKeyedSubscript:@"chromaNoiseReductionEnabled"];

  sub_233867B78(v248, v135, v4, @"luminanceNoiseReductionAmount");
  v136 = [MEMORY[0x277CCABB0] numberWithBool:v249];
  [v4 setObject:v136 forKeyedSubscript:@"vectorFieldProcessingEnabled"];

  v137 = [MEMORY[0x277CCABB0] numberWithBool:v250];
  [v4 setObject:v137 forKeyedSubscript:@"vectorFieldCorners"];

  sub_233867B78(v251, v138, v4, @"vectorFieldSmoothingCoefficient");
  sub_233867B78(v252, v139, v4, @"vectorFieldCornerThreshold");
  sub_233867B78(v253, v140, v4, @"fullSizeSmoothingAmount");
  sub_233867B78(v254, v141, v4, @"halfSizeSmoothingAmount");
  sub_233867B78(v255, v142, v4, @"quarterSizeSmoothingAmount");
  sub_233867B78(v256, v143, v4, @"fullSizeThreshold");
  sub_233867B78(v257, v144, v4, @"fullSizeThresholdSoftness");
  sub_233867B78(v258, v145, v4, @"halfSizeThreshold");
  sub_233867B78(v259, v146, v4, @"halfSizeThresholdSoftness");
  sub_233867B78(v260, v147, v4, @"quarterSizeThreshold");
  sub_233867B78(v261, v148, v4, @"quarterSizeThresholdSoftness");
  sub_233867B78(v262, v149, v4, @"fullSizeGradientMaskAmount");
  sub_233867B78(v263, v150, v4, @"halfSizeGradientMaskAmount");
  sub_233867B78(v264, v151, v4, @"quarterSizeGradientMaskAmount");
  sub_233867B78(v265, v152, v4, @"contrastOverdrive");
  v153 = [MEMORY[0x277CCABB0] numberWithBool:v266];
  [v4 setObject:v153 forKeyedSubscript:@"sharpenEdgesEnabled"];

  sub_233867B78(v267, v154, v4, @"sharpenIntensity");
  sub_233867B78(v268, v155, v4, @"addNoiseAmount");
  sub_233867C38(v156, v4, @"factors", v269, 3);
  sub_233869688(v269[3], v157, v4, @"representativeNoiseAmount");
  sub_233869688(v269[4], v158, v4, @"CNR_value");
  sub_233869688(v269[5], v159, v4, @"CNR_radius");
  sub_233867B78(v269[7], v160, v4, @"CNR_bias");
  sub_233869688(v269[6], v161, v4, @"CNR_noiseFactor");
  v162 = [MEMORY[0x277CCABB0] numberWithBool:v270];
  [v4 setObject:v162 forKeyedSubscript:@"powerBlurPass1Enabled"];

  v163 = [MEMORY[0x277CCABB0] numberWithBool:v271];
  [v4 setObject:v163 forKeyedSubscript:@"powerBlurPass2Enabled"];

  v164 = [MEMORY[0x277CCABB0] numberWithBool:v272];
  [v4 setObject:v164 forKeyedSubscript:@"powerBlurPass3Enabled"];

  v165 = [MEMORY[0x277CCABB0] numberWithBool:v273];
  [v4 setObject:v165 forKeyedSubscript:@"powerBlurPass4Enabled"];

  sub_233867B78(v274, v166, v4, @"powerBlurPass1Threshold");
  sub_233867B78(v275, v167, v4, @"powerBlurPass2Threshold");
  sub_233867B78(v276, v168, v4, @"powerBlurPass3Threshold");
  sub_233867B78(v277, v169, v4, @"powerBlurPass4Threshold");
  v170 = [MEMORY[0x277CCABB0] numberWithBool:v278];
  [v4 setObject:v170 forKeyedSubscript:@"powerBlurPass2Despeckle"];

  v171 = [MEMORY[0x277CCABB0] numberWithInt:v279];
  [v4 setObject:v171 forKeyedSubscript:@"powerBlurPass2DespeckleCountThreshold"];

  v172 = [MEMORY[0x277CCABB0] numberWithInt:v280];
  [v4 setObject:v172 forKeyedSubscript:@"powerBlurPass2DespeckleLuminanceThreshold"];

  sub_233867B78(v281, v173, v4, @"powerBlurPass2DespeckleDifferenceAmount");
  v174 = [MEMORY[0x277CCABB0] numberWithBool:v282];
  [v4 setObject:v174 forKeyedSubscript:@"powerBlurPass2DespeckleAverageCloseIn"];

  return v4;
}

void sub_233869528(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
  JUMPOUT(0x2338694F4);
}

void sub_233869688(double a1, uint64_t a2, void *a3, void *a4)
{
  v8 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%a\t// %lg", *&a1, *&a1];
  [v8 setValue:v7 forKey:v6];
}

void sub_23386989C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  v12 = v11;

  if (a10)
  {
    sub_2337239E8(a10);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x23386984CLL);
}

void sub_2338698F8(id *a1, void *a2)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_2337583E0(a2, v4);
}

void sub_233869AB0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  v21 = v16[1];
  if (v21)
  {
    sub_2337239E8(v21);
  }

  if (a16)
  {
    sub_2337239E8(a16);
  }

  v22 = *(v19 - 56);
  if (v22)
  {
    sub_2337239E8(v22);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  *v16 = 0;
  v16[1] = 0;
  JUMPOUT(0x233869A58);
}

void sub_233869D4C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x233869D00);
}

id sub_233869DB8(uint64_t a1, void *a2, int a3)
{
  v49[1] = *MEMORY[0x277D85DE8];
  v37 = a2;
  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 8);
  v48 = *MEMORY[0x277CD3668];
  v49[0] = v6;
  v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:&v48 count:1];
  v7 = CGImageSourceCreateWithData(*a1, v36);
  context = v5;
  if (!v7)
  {
    v25 = 0;
    goto LABEL_21;
  }

  v8 = *MEMORY[0x277CD3628];
  v46[0] = *MEMORY[0x277CD3628];
  v9 = sub_2338191A8(1);
  v46[1] = *MEMORY[0x277CD35D8];
  v47[0] = v9;
  v47[1] = MEMORY[0x277CBEC38];
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:2];

  v11 = CGImageSourceCopyPropertiesAtIndex(v7, 0, v10);
  v34 = [(__CFDictionary *)v11 valueForKeyPath:@"kCGImageSourceRawReconstructionOptions.kCGImageSourceSupportedSushiLevels"];
  v33 = [(__CFDictionary *)v11 valueForKeyPath:@"kCGImageSourceRawReconstructionOptions.kCGImageSourceRawReconstructionMethodVersions"];
  v12 = sub_2338191A8(a3);
  if ([v34 containsObject:v12])
  {
    v13 = [v33 containsObject:v37];

    if (!v13)
    {
      v25 = 0;
      goto LABEL_20;
    }

    v44[0] = v8;
    v14 = sub_2338191A8(a3);
    v44[1] = *MEMORY[0x277CD3640];
    v45[0] = v14;
    v45[1] = v37;
    options = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:2];

    image = CGImageSourceCreateImageAtIndex(v7, 0, options);
    v31 = CGImageSourceCopyPropertiesAtIndex(v7, 0, options);

    v12 = [MEMORY[0x277CBF758] imageWithCGImage:image];
    v29 = [v12 debugDescription];
    v15 = [(__CFDictionary *)v31 objectForKeyedSubscript:@"{Raw}"];
    v27 = v15;
    if (v15)
    {
      [v15 objectForKeyedSubscript:{@"filters", v15}];
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v16 = v39 = 0u;
      v17 = [v16 countByEnumeratingWithState:&v38 objects:v43 count:16];
      if (v17)
      {
        v18 = *v39;
        v19 = *MEMORY[0x277CBFAF0];
        v20 = *MEMORY[0x277CBFB50];
        do
        {
          v21 = 0;
          v22 = v12;
          do
          {
            if (*v39 != v18)
            {
              objc_enumerationMutation(v16);
            }

            v23 = *(*(&v38 + 1) + 8 * v21);
            [v23 setValue:v22 forKey:v19];
            v12 = [v23 valueForKey:v20];

            [v23 setValue:0 forKey:v19];
            ++v21;
            v22 = v12;
          }

          while (v17 != v21);
          v17 = [v16 countByEnumeratingWithState:&v38 objects:v43 count:16];
        }

        while (v17);
      }
    }

    v24 = [v12 debugDescription];
    if (image)
    {
      CGImageRelease(image);
    }

    v42[0] = v29;
    v42[1] = v24;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:2];

    v11 = v31;
    v10 = options;
  }

  else
  {
    v25 = 0;
  }

LABEL_20:
  CFRelease(v7);

LABEL_21:
  objc_autoreleasePoolPop(context);

  return v25;
}

void sub_23386A1DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, void *a12, void *a13, void *a14, void *a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (a2)
  {

    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x23386A184);
  }

  _Unwind_Resume(exception_object);
}

void sub_23386A590(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x23386A544);
}

id sub_23386A604(uint64_t a1)
{
  v36[1] = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 8);
  v35 = *MEMORY[0x277CD3668];
  v36[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
  v5 = CGImageSourceCreateWithData(*a1, v4);
  if (!v5)
  {
    v21 = 0;
    goto LABEL_22;
  }

  v6 = *MEMORY[0x277CD3628];
  v33[0] = *MEMORY[0x277CD3628];
  v7 = sub_2338191A8(1);
  v33[1] = *MEMORY[0x277CD35D8];
  v34[0] = v7;
  v34[1] = MEMORY[0x277CBEC38];
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:2];

  v9 = CGImageSourceCopyPropertiesAtIndex(v5, 0, v8);
  v26 = [(__CFDictionary *)v9 valueForKeyPath:@"kCGImageSourceRawReconstructionOptions.kCGImageSourceSupportedSushiLevels"];
  v25 = [(__CFDictionary *)v9 valueForKeyPath:@"kCGImageSourceRawReconstructionOptions.kCGImageSourceRawReconstructionMethodVersions"];
  v10 = sub_2338191A8(2);
  if ([v26 containsObject:v10])
  {
    v11 = [v25 containsObject:@"6"];

    if (v11)
    {
      v12 = *MEMORY[0x277CD3640];
      v31[0] = v6;
      v31[1] = v12;
      v32[0] = @"2";
      v32[1] = @"6";
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];

      ImageAtIndex = CGImageSourceCreateImageAtIndex(v5, 0, v13);
      DataProvider = CGImageGetDataProvider(ImageAtIndex);
      v16 = CGDataProviderCopyData(DataProvider);
      if (v16)
      {
        CC_SHA256_Init(&c);
        BytePtr = CFDataGetBytePtr(v16);
        Length = CFDataGetLength(v16);
        CC_SHA256_Update(&c, BytePtr, Length);
        image = ImageAtIndex;
        CC_SHA256_Final(md, &c);
        v19 = 0;
        __s1[0] = 0;
        do
        {
          __s2 = 0;
          if (asprintf(&__s2, "%02xd", md[v19]) != 3)
          {
            exception = __cxa_allocate_exception(0x10uLL);
            MEMORY[0x2383ABCE0](exception, "RawCameraException");
            __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          v20 = __s2;
          strncat(__s1, __s2, 2uLL);
          if (v19 != 31 && (v19 & 1) != 0)
          {
            *&__s1[strlen(__s1)] = 58;
          }

          if (v20)
          {
            free(v20);
          }

          ++v19;
        }

        while (v19 != 32);
        v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:__s1];
        CFRelease(v16);
        ImageAtIndex = image;
        if (!image)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v21 = 0;
        if (!ImageAtIndex)
        {
LABEL_20:
          v8 = v13;
          goto LABEL_21;
        }
      }

      CGImageRelease(ImageAtIndex);
      goto LABEL_20;
    }
  }

  else
  {
  }

  v21 = 0;
LABEL_21:
  CFRelease(v5);

LABEL_22:
  objc_autoreleasePoolPop(v2);

  return v21;
}

void sub_23386A9A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, void *a15)
{
  if (a2)
  {

    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x23386A918);
  }

  _Unwind_Resume(exception_object);
}

void sub_23386ABD4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  if (a12)
  {
    sub_2337239E8(a12);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x23386AB98);
}

void sub_23386AD78(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_2337239E8(a17);
  }

  if (a19)
  {
    sub_2337239E8(a19);
  }

  v21 = *(v19 - 24);
  if (v21)
  {
    sub_2337239E8(v21);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x23386AD1CLL);
}

void sub_23386AF4C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, std::__shared_weak_count *a20)
{
  *(v21 - 56) = &a10;
  sub_233735AD4((v21 - 56));
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a20)
  {
    sub_2337239E8(a20);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x23386AF20);
}

void *RawCameraTP(void *a1)
{
  v1 = a1;
  v2 = objc_autoreleasePoolPush();
  if (v1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [v1 objectForKeyedSubscript:@"path"];
      if (v3)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          sub_233867A98(&v5, v3);
          [MEMORY[0x277CBEB38] dictionary];
          objc_claimAutoreleasedReturnValue();
          [MEMORY[0x277CBEB38] dictionary];
          objc_claimAutoreleasedReturnValue();
          sub_23386ADE4(&v5);
        }
      }
    }
  }

  objc_autoreleasePoolPop(v2);

  return 0;
}

uint64_t sub_23386B460(uint64_t a1)
{
  (*(*a1 + 160))(&v6);
  v1 = (*(*v6 + 504))();
  if (v7)
  {
    sub_2337239E8(v7);
  }

  result = 1;
  if ((v1 + 2122219136) >= 0x12)
  {
    if (v1 > 555819296)
    {
      if (v1 > 1229539656)
      {
        v3 = v1 == 1229539657;
        v4 = 1633771873;
      }

      else
      {
        v3 = v1 == 555819297;
        v4 = 825307441;
      }
    }

    else if (v1 > 320017170)
    {
      v3 = v1 == 320017171;
      v4 = 370546198;
    }

    else
    {
      v3 = v1 == -1802201964;
      v4 = 303174162;
    }

    if (!v3 && v1 != v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_23386B5AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_23386B5C4(uint64_t a1)
{
  v6[0] = &unk_284917748;
  v6[1] = 0;
  (*(*a1 + 160))(&v4);
  v1 = v4;
  sub_23372A488(__p, "IFD0");
  (*(*v1 + 600))(v1, __p, v6, 3);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  if (v5)
  {
    sub_2337239E8(v5);
  }
}

void sub_23386B6A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_2337239E8(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_23386B6D4(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v11[0] = 0;
  v11[1] = 0;
  v12 = 0;
  (*(*a1 + 160))(&v9);
  v3 = v9;
  sub_23372A488(__p, "IFD0");
  if ((*(*v3 + 248))(v3, __p, v11, 0))
  {
    v5 = v11[0];
    v4 = v11[1];
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }

    v6 = v4 - v5;
    if (v10)
    {
      sub_2337239E8(v10);
    }

    if (v6 == 32)
    {
      *a2 = *v11;
      a2[2] = v12;
      return;
    }
  }

  else
  {
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }

    if (v10)
    {
      sub_2337239E8(v10);
    }
  }

  __p[0] = 0;
  sub_233731694(a2, 4uLL, __p);
  if (v11[0])
  {
    v11[1] = v11[0];
    operator delete(v11[0]);
  }
}

void sub_23386B800(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_23386B84C(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isEqualToString:@"automaticDynamicRange"])
  {
    (*(*a1 + 160))(&v9, a1);
    sub_2337D065C(&v9, &v11);
    if (v10)
    {
      sub_2337239E8(v10);
    }

    if (v11)
    {
      v4 = (*(*v11 + 808))(v11);
    }

    else
    {
      v4 = 0;
    }

    if (v12)
    {
      sub_2337239E8(v12);
    }

    v6 = [MEMORY[0x277CCABB0] numberWithInt:v4];
  }

  else if ([v3 isEqualToString:@"hasExtendedRawData"])
  {
    (*(*a1 + 160))(&v9, a1);
    sub_2337D065C(&v9, &v11);
    if (v10)
    {
      sub_2337239E8(v10);
    }

    if (v11)
    {
      v5 = (*(*v11 + 800))(v11);
    }

    else
    {
      v5 = 0;
    }

    if (v12)
    {
      sub_2337239E8(v12);
    }

    v6 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  }

  else
  {
    v6 = sub_2338D3C20(a1, v3);
  }

  v7 = v6;

  return v7;
}

void sub_23386BA1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  _Unwind_Resume(a1);
}

BOOL sub_23386BA80(uint64_t a1)
{
  (*(*a1 + 160))(v3);
  sub_2337D065C(v3, &v4);
  if (*(&v3[0] + 1))
  {
    sub_2337239E8(*(&v3[0] + 1));
  }

  if (v4)
  {
    memset(v3, 0, 204);
    (*(*v4 + 848))(v3);
    v1 = LOBYTE(v3[0]) != 0;
  }

  else
  {
    v1 = 0;
  }

  if (v5)
  {
    sub_2337239E8(v5);
  }

  return v1;
}

void sub_23386BB6C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 24);
  if (v3)
  {
    sub_2337239E8(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23386BB84(uint64_t a1)
{
  (*(*a1 + 160))(&v5);
  sub_2337D065C(&v5, &v7);
  if (v6)
  {
    sub_2337239E8(v6);
  }

  v3 = v7;
  if (v7)
  {
    v1 = (*(*v7 + 824))(v7);
  }

  if (v8)
  {
    sub_2337239E8(v8);
  }

  if (!v3)
  {
    v1 = sub_2337D1FD0(a1);
  }

  return v1 & 1;
}

void sub_23386BC54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_23386BC6C(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 480) = 0u;
  *(a3 + 496) = 0u;
  *(a3 + 448) = 0u;
  *(a3 + 464) = 0u;
  *(a3 + 416) = 0u;
  *(a3 + 432) = 0u;
  *(a3 + 384) = 0u;
  *(a3 + 400) = 0u;
  *(a3 + 352) = 0u;
  *(a3 + 368) = 0u;
  *(a3 + 320) = 0u;
  *(a3 + 336) = 0u;
  *(a3 + 288) = 0u;
  *(a3 + 304) = 0u;
  *(a3 + 256) = 0u;
  *(a3 + 272) = 0u;
  *(a3 + 224) = 0u;
  *(a3 + 240) = 0u;
  *(a3 + 192) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 176) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  sub_233855004(a1, a2, a3);
  if ((sub_233739B6C(a1) & 1) == 0)
  {
    (*(*a1 + 160))(&v15, a1);
    sub_2337D065C(&v15, &v26);
    if (*(&v15 + 1))
    {
      sub_2337239E8(*(&v15 + 1));
    }

    if (v26)
    {
      (*(*v26 + 848))(&v15);
      v5 = v25[0];
      *(a3 + 368) = v24;
      *(a3 + 384) = v5;
      v6 = *v22;
      *(a3 + 304) = v21;
      *(a3 + 320) = v6;
      v7 = v23;
      *(a3 + 336) = *&v22[16];
      *(a3 + 352) = v7;
      v8 = v18;
      *(a3 + 240) = v17;
      *(a3 + 256) = v8;
      v9 = v20;
      *(a3 + 272) = v19;
      *(a3 + 288) = v9;
      v10 = v16;
      *(a3 + 208) = v15;
      *(a3 + 224) = v10;
      *(a3 + 396) = *(v25 + 12);
      (*(*v26 + 856))(&v15);
      v11 = *v22;
      *(a3 + 508) = v21;
      *(a3 + 524) = v11;
      *(a3 + 536) = *&v22[12];
      v12 = v18;
      *(a3 + 444) = v17;
      *(a3 + 460) = v12;
      v13 = v20;
      *(a3 + 476) = v19;
      *(a3 + 492) = v13;
      v14 = v16;
      *(a3 + 412) = v15;
      *(a3 + 428) = v14;
    }

    if (v27)
    {
      sub_2337239E8(v27);
    }
  }
}

void sub_23386BE24(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  if (v3)
  {
    sub_2337239E8(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23386BE40(uint64_t *a1)
{
  v2 = sub_2338503F4(a1);
  if (v2 >> 8 == 8487297)
  {
    v3 = (*(*a1 + 432))(a1);
    v4 = (12 * HIDWORD(v3) + v2 - 128) % 18;
    return (v4 - 2122219264 - (v4 - 6 * ((((43 * v4) & 0x8000) != 0) + ((43 * v4) >> 8))) + (v3 + (v4 - 6 * ((((43 * v4) & 0x8000) != 0) + ((43 * v4) >> 8)))) % 6 + 128);
  }

  return v2;
}

double sub_23386BF40(uint64_t a1)
{
  (*(*a1 + 160))(&v9);
  sub_2337D065C(&v9, &v11);
  if (v10)
  {
    sub_2337239E8(v10);
  }

  if (v11)
  {
    v1 = *(v11 + 3);
    v2 = *(v11 + 4);
    if (v2)
    {
      atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v3 = sub_23386D8DC(v1);
    if (v2)
    {
      sub_2337239E8(v2);
    }

    if (!v3)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](exception, "RawCameraException");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v4 = sub_23384B074(v3);
    v5 = 0.0;
    if (v4 >= sub_23384B074(@"9.20"))
    {
      v6 = 0.0;
      if (*(v11 + 1640) == 1)
      {
        v6 = v11[204];
      }

      v5 = 0.0 - v6;
    }
  }

  else
  {
    v5 = 0.0;
  }

  if (v12)
  {
    sub_2337239E8(v12);
  }

  return v5;
}

void sub_23386C088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  _Unwind_Resume(a1);
}

void sub_23386C0D4(void *a1)
{
  v1 = a1;
  [v1 bytes];
  v2 = [v1 length];
  sub_233723C18(&v3, &v2);
  sub_233725138();
}

void sub_23386C164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  _Unwind_Resume(a1);
}

void sub_23386C1E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v11 = *(v9 + 8);
  if (v11)
  {
    sub_2337239E8(v11);
  }

  _Unwind_Resume(a1);
}

void sub_23386C20C(void *a1)
{
  v2 = a1;
  v3 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v2 options:1 error:0];
  if (v3)
  {
    sub_23386C0D4(v3);
  }

  [v2 path];
  [objc_claimAutoreleasedReturnValue() UTF8String];
  sub_2337250F0();
}

void sub_23386C2C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(a1);
}

void sub_23386C304(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 24);
  if (!v2)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if (!*(a1 + 48))
  {
    sub_23372540C(v2, 1);
    v3 = *(a1 + 24);
    *v38 = -278;
    (*(*v3 + 40))(v3, v38, 2);
    memset(v38, 0, sizeof(v38));
    if ((*(**(a1 + 24) + 32))(*(a1 + 24), v38, 278) != 278)
    {
      __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0]();
      sub_2338F83F4();
    }

    v4 = -4;
    v5 = 277;
    while (v38[v5 - 3] != 80 || v38[v5 - 2] != 75 || v38[v5 - 1] != 5 || v38[v5] != 6)
    {
      --v4;
      if (--v5 == 2)
      {
        return;
      }
    }

    v6 = *(a1 + 24);
    LODWORD(__p[0]) = v4;
    (*(*v6 + 40))(v6, __p, 2);
    if (sub_233725614(*(a1 + 24)) != 101010256)
    {
      __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0]();
      sub_2338F83F4();
    }

    v7 = sub_2337255C0(*(a1 + 24));
    if (v7 != sub_2337255C0(*(a1 + 24)))
    {
      __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0]();
      sub_2338F83F4();
    }

    v8 = sub_2337255C0(*(a1 + 24));
    v9 = sub_2337255C0(*(a1 + 24));
    if (v8 != v9)
    {
      __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0]();
      sub_2338F83F4();
    }

    v10 = sub_233725614(*(a1 + 24));
    v37 = sub_233725614(*(a1 + 24));
    if (v10 >= (*(**(a1 + 24) + 16))())
    {
      __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0]();
      sub_2338F83F4();
    }

    v11 = (*(**(a1 + 24) + 16))(*(a1 + 24));
    if (v37 >= v11)
    {
      __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0]();
      sub_2338F83F4();
    }

    v12 = sub_2337255C0(*(a1 + 24));
    if ((*(**(a1 + 24) + 16))() <= v12)
    {
      __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0]();
      sub_2338F83F4();
    }

    v13 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:v8];
    v14 = *(a1 + 24);
    sub_233723AE0(__p, &v37);
    (*(*v14 + 40))(v14, __p, 0);
    if (v8)
    {
      do
      {
        if (sub_233725614(*(a1 + 24)) != 33639248)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x2383ABCE0](exception, "RawCameraException");
          __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        sub_2337255C0(*(a1 + 24));
        sub_2337255C0(*(a1 + 24));
        sub_2337255C0(*(a1 + 24));
        if (sub_2337255C0(*(a1 + 24)))
        {
          v29 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x2383ABCE0](v29, "RawCameraException");
          __cxa_throw(v29, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        sub_2337255C0(*(a1 + 24));
        sub_2337255C0(*(a1 + 24));
        sub_233725614(*(a1 + 24));
        v15 = sub_233725614(*(a1 + 24));
        if (v15 != sub_233725614(*(a1 + 24)))
        {
          v30 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x2383ABCE0](v30, "RawCameraException");
          __cxa_throw(v30, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        v16 = sub_2337255C0(*(a1 + 24));
        if (!v16)
        {
          v31 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x2383ABCE0](v31, "RawCameraException");
          __cxa_throw(v31, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        v17 = sub_2337255C0(*(a1 + 24));
        v18 = sub_2337255C0(*(a1 + 24));
        sub_2337255C0(*(a1 + 24));
        sub_2337255C0(*(a1 + 24));
        sub_233725614(*(a1 + 24));
        v19 = sub_233725614(*(a1 + 24));
        if (v19 >= (*(**(a1 + 24) + 16))(*(a1 + 24)))
        {
          v32 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x2383ABCE0](v32, "RawCameraException");
          __cxa_throw(v32, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        __p[0] = 0;
        __p[1] = 0;
        v36 = 0;
        v20 = *(a1 + 24);
        v34 = v16;
        sub_2337257E8(v20, &v34, __p);
        v21 = *(a1 + 24);
        v34 = v17;
        (*(*v21 + 40))(v21, &v34, 1);
        v22 = *(a1 + 24);
        v34 = v18;
        (*(*v22 + 40))(v22, &v34, 1);
        v23 = sub_233729FBC(__p);
        v24 = sub_233739ACC(v13, v23);

        if (v24)
        {
          v33 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x2383ABCE0](v33, "RawCameraException");
          __cxa_throw(v33, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        v25 = sub_233729FBC(__p);
        v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v19];
        [v13 setObject:v26 forKeyedSubscript:v25];

        if (SHIBYTE(v36) < 0)
        {
          operator delete(__p[0]);
        }

        --v9;
      }

      while (v9);
    }

    v27 = *(a1 + 48);
    *(a1 + 48) = v13;
  }
}

void sub_23386CBE4(void *a1, void *a2, void *a3)
{
  v4 = a3;
  *a1 = &unk_284929CB8;
  sub_23384F87C();
}

void sub_23386CC6C(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = a2;
  if (sub_233739ACC(*(a1 + 48), v6))
  {
    v5 = sub_2337397B0(*(a1 + 48), v6);
    sub_23386CCFC(a1, v5);
  }

  *a3 = 0;
  a3[1] = 0;
}

void sub_23386CCFC(uint64_t a1, uint64_t a2)
{
  v16 = a2;
  sub_233785314(&v15, (a1 + 8));
  v4 = *(a1 + 24);
  if (v4)
  {
    sub_23372540C(v4, 1);
    v5 = *(a1 + 24);
    sub_2337268D8(v14, &v16);
    (*(*v5 + 40))(v5, v14, 0);
    if (sub_233725614(*(a1 + 24)) == 67324752)
    {
      sub_2337255C0(*(a1 + 24));
      sub_2337255C0(*(a1 + 24));
      if (!sub_2337255C0(*(a1 + 24)))
      {
        sub_2337255C0(*(a1 + 24));
        sub_2337255C0(*(a1 + 24));
        sub_233725614(*(a1 + 24));
        v6 = sub_233725614(*(a1 + 24));
        if (v6 == sub_233725614(*(a1 + 24)))
        {
          v7 = sub_2337255C0(*(a1 + 24));
          if (v7)
          {
            v8 = sub_2337255C0(*(a1 + 24));
            v9 = *(a1 + 24);
            LODWORD(v14[0]) = v8 + v7;
            (*(*v9 + 40))(v9, v14, 1);
            sub_2337AD310(v6, v14);
          }

          exception = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x2383ABCE0](exception, "RawCameraException");
          __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        v12 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](v12, "RawCameraException");
        __cxa_throw(v12, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v11 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](v11, "RawCameraException");
      __cxa_throw(v11, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v10 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v10, "RawCameraException");
  }

  else
  {
    v10 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v10, "RawCameraException");
  }

  __cxa_throw(v10, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_23386CFB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2337853E4(va);
  _Unwind_Resume(a1);
}

void sub_23386D03C(uint64_t a1)
{
  sub_23386D1E4(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_23386D0E8(void *a1, void *a2, void **a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284929CE8;
  sub_23386CBE4(a1 + 3, a2, *a3);
}

void sub_23386D168(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284929CE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}