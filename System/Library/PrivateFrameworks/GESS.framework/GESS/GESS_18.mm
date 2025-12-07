void sub_24BDE0738(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BDE0754(uint64_t a1, int a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void *a6, void *a7, void *a8, float a9)
{
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v9 = (*(*(a1 + 40) + 160) - *(*(a1 + 40) + 152)) >> 2;
  LODWORD(v46[0]) = 0;
  if (v9)
  {
    v19 = 0;
    do
    {
      v20 = *a5;
      *(*a5 + 4 * v19) = -1;
      v21 = v46[0];
      if ((*(*a7 + ((LODWORD(v46[0]) >> 3) & 0x1FFFFFF8)) >> SLOBYTE(v46[0])))
      {
        v22 = *(*a6 + 4 * LODWORD(v46[0]));
        if (v22 == a2 || v22 == a3)
        {
          *(v20 + 4 * LODWORD(v46[0])) = (v48 - v47) >> 2;
          sub_24BC97D60(&v47, v46);
          v21 = v46[0];
        }
      }

      v19 = v21 + 1;
      LODWORD(v46[0]) = v19;
    }

    while (v19 < v9);
    v25 = v47;
    v24 = v48;
    if (v47 != v48)
    {
      sub_24BD7009C(a4);
      v26 = ((v24 - v25) >> 2);
      sub_24BD6ED04(a4, v26, 0, 6);
      sub_24BC94F74(v46, v26);
      v41 = 4 * v26;
      v42 = v26;
      if (v26)
      {
        v27 = 0;
        do
        {
          v28 = sub_24BD700D8(a4);
          *(v46[0] + v27) = v28;
          v27 += 4;
        }

        while (v41 != v27);
        v29 = 0;
        do
        {
          v45 = v47[v29];
          sub_24BCB7458(__p, 3uLL);
          v30 = a3;
          sub_24BCD573C(*(a1 + 40), &v45, __p);
          for (i = 0; i != 12; i += 4)
          {
            v43 = *sub_24BCB9024(*(a1 + 40) + 104, (__p[0] + i));
            v32 = sub_24BC9ECE4(*(a1 + 40), *(*(a1 + 40) + 180), v43);
            if ((*v32 & v33) == 0)
            {
              v34 = *(sub_24BCB9024(*(a1 + 40) + 104, &v43) + 16);
              if ((*(*a7 + ((v34 >> 3) & 0x1FFFFFF8)) >> v34))
              {
                v35 = *(*a5 + 4 * v34);
                if (v35 != -1)
                {
                  sub_24BD7012C(a4, *(v46[0] + *(*a5 + 4 * v45)), *(v46[0] + v35), 1.0 / ((*(*a8 + 4 * v43) / a9) + 1.0), 1.0 / ((*(*a8 + 4 * v43) / a9) + 1.0));
                }
              }

              else
              {
                v36 = 3.4028e38;
                if (*(*a6 + 4 * v34) == a2)
                {
                  v37 = 3.4028e38;
                }

                else
                {
                  v37 = 0.0;
                }

                if (*(*a6 + 4 * v34) == a2)
                {
                  v36 = 0.0;
                }

                sub_24BD70130(a4, *(v46[0] + *(*a5 + 4 * v45)), v37, v36);
              }
            }
          }

          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          ++v29;
          a3 = v30;
        }

        while (v29 != v42);
      }

      LODWORD(__p[0]) = 0;
      sub_24BD70134(a4, __p);
      if (v42)
      {
        v38 = 0;
        do
        {
          v39 = v47[v38 / 4];
          if (sub_24BD701B0(a4, *(v46[0] + *(*a5 + 4 * v39))))
          {
            v40 = a2;
          }

          else
          {
            v40 = a3;
          }

          *(*a6 + 4 * v39) = v40;
          v38 += 4;
        }

        while (v41 != v38);
      }

      if (v46[0])
      {
        v46[1] = v46[0];
        operator delete(v46[0]);
      }

      v25 = v47;
    }

    if (v25)
    {
      v48 = v25;
      operator delete(v25);
    }
  }
}

void sub_24BDE0A9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BDE0B08(void *a1, uint64_t *a2, uint64_t a3, unint64_t a4, BOOL *a5)
{
  *a5 = 0;
  if (a4 >= 2 && a1[33] - a1[32] >= 0x11uLL)
  {
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v10 = a1[5];
    v12 = v10[19];
    v11 = v10[20];
    v14 = v10[13];
    v13 = v10[14];
    sub_24BC95764(v25, -858993459 * ((v10[17] - v10[16]) >> 2));
    sub_24BCA123C(v24, (a1[33] - a1[32]) >> 4);
    sub_24BDD4E90(v23, ((v11 - v12) >> 2));
    v20 = 0;
    v21 = 0;
    v22 = 0;
    sub_24BCB7960(&v20, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 2);
    __p = 0;
    v18 = 0;
    v19 = 0;
    v16 = 0.0;
    if (sub_24BDDF93C(a1, v25, &v16))
    {
      sub_24BDE0DBC(a1, &v26, a3, v23, v24);
      sub_24BC8CAB0(&__p, ((v27 - v26) >> 2) * ((v13 - v14) >> 2));
      sub_24BDE1048(a1, a2, &__p, &v26);
      v15 = 0;
      sub_24BDE1284(a1, &__p, &v26, &v15);
      if (v15)
      {
        sub_24BDE14C0(a1, (v27 - v26) >> 2, a3, v16, v23, v24, 2, &__p, v25);
        sub_24BDE004C(a1, a3, &v20, a4, a5);
      }
    }

    if (__p)
    {
      v18 = __p;
      operator delete(__p);
    }

    if (v20)
    {
      v21 = v20;
      operator delete(v20);
    }

    if (v23[0])
    {
      operator delete(v23[0]);
    }

    if (v24[0])
    {
      v24[1] = v24[0];
      operator delete(v24[0]);
    }

    if (v25[0])
    {
      v25[1] = v25[0];
      operator delete(v25[0]);
    }

    if (v26)
    {
      v27 = v26;
      operator delete(v26);
    }
  }
}

void sub_24BDE0D2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a16)
  {
    operator delete(a16);
  }

  if (a19)
  {
    operator delete(a19);
  }

  if (a22)
  {
    operator delete(a22);
  }

  v26 = *(v24 - 112);
  if (v26)
  {
    *(v23 + 8) = v26;
    operator delete(v26);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BDE0DBC(void *a1, const void **a2, uint64_t *a3, void *a4, void *a5)
{
  sub_24BDD4E90(&v38, ((*(a1[5] + 112) - *(a1[5] + 104)) >> 2));
  v9 = a1[32];
  if (a1[33] != v9)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = (v9 + 16 * v10);
      v13 = *(*v12 + 40);
      sub_24BC836D4(__p, "f:index_in_father");
      v39 = -1;
      v14 = sub_24BDBAF64((v13 + 56), &v39, __p);
      if (v37 < 0)
      {
        operator delete(__p[0]);
      }

      v15 = *v12;
      v16 = *(*v12 + 40);
      v17 = (v16[7] + 16 * v14);
      v19 = *v17;
      v18 = v17[1];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v18);
        v15 = *v12;
        v16 = *(*v12 + 40);
      }

      v20 = v16[20] - v16[19];
      if (v20)
      {
        v21 = v20 >> 2;
        v22 = *(v19 + 40);
        v23 = *a3;
        if (v21 <= 1)
        {
          v21 = 1;
        }

        do
        {
          v24 = *v22++;
          *(v23 + 4 * v24) = v11;
          --v21;
        }

        while (v21);
      }

      sub_24BDE1728(v15, a4, (*a5 + 4 * v10));
      v25 = *(*v12 + 40);
      sub_24BC836D4(__p, "v:index_in_father");
      v39 = -1;
      v26 = sub_24BDE2788((v25 + 8), &v39, __p);
      if (v37 < 0)
      {
        operator delete(__p[0]);
      }

      v27 = *v12;
      v28 = (*(*(*v12 + 40) + 8) + 16 * v26);
      v30 = *v28;
      v29 = v28[1];
      if (v29)
      {
        atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v29);
        v27 = *v12;
      }

      v31 = *(v27 + 72);
      if (*(v27 + 80) != v31)
      {
        v32 = 0;
        v33 = v38;
        do
        {
          v34 = *(*(v30 + 40) + 4 * *(v31 + 4 * v32));
          LODWORD(__p[0]) = v34;
          if (((*&v33[(v34 >> 3) & 0x1FFFFFF8] >> v34) & 1) == 0)
          {
            sub_24BC97D60(a2, __p);
            v33 = v38;
            *(v38 + ((LODWORD(__p[0]) >> 3) & 0x1FFFFFF8)) |= 1 << SLOBYTE(__p[0]);
            v27 = *v12;
          }

          ++v32;
          v31 = *(v27 + 72);
        }

        while (v32 < (*(v27 + 80) - v31) >> 2);
      }

      v9 = a1[32];
      v10 = ++v11;
    }

    while (v11 < ((a1[33] - v9) >> 4));
  }

  if (v38)
  {
    operator delete(v38);
  }
}

void sub_24BDE1008(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BDE1048(void *a1, uint64_t *a2, void *a3, void *a4)
{
  __p = 0;
  v36 = 0;
  v37 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v5 = *a4;
  if (a4[1] == *a4)
  {
    v20 = 0;
  }

  else
  {
    v9 = 0;
    v10 = ((*(a1[5] + 112) - *(a1[5] + 104)) >> 2);
    do
    {
      v31 = v5[v9];
      if ((*(a1[26] + ((v31 >> 3) & 0x1FFFFFF8)) >> v31))
      {
        v12 = a1[9];
        v11 = a1[10];
        v13 = v11 - v12;
        if (v11 != v12)
        {
          v14 = 0;
          v15 = v13 >> 2;
          if (v15 <= 1)
          {
            v15 = 1;
          }

          while (1)
          {
            v16 = *v12;
            v12 += 4;
            if (v16 == v31)
            {
              break;
            }

            v14 += 4 * v10;
            if (!--v15)
            {
              goto LABEL_15;
            }
          }

          if (v10)
          {
            v17 = *a2;
            v18 = (*a3 + 4 * ((v36 - __p) >> 2) * v10);
            v19 = v10;
            do
            {
              *v18++ = *(v17 + v14);
              v17 += 4;
              --v19;
            }

            while (v19);
          }

          sub_24BCB4670(&__p, &v31);
        }
      }

      else
      {
        sub_24BCB4670(&v32, &v31);
      }

LABEL_15:
      ++v9;
      v5 = *a4;
    }

    while (v9 < (a4[1] - *a4) >> 2);
    v20 = __p;
    if (v32 != v33)
    {
      sub_24BDFAE60(a1, &v32, (*a3 + 4 * ((v36 - __p) >> 2) * v10));
      v20 = __p;
    }
  }

  v21 = v36 - v20;
  if (v36 != v20)
  {
    v22 = v21 >> 2;
    v23 = *a4;
    if ((v21 >> 2) <= 1)
    {
      v22 = 1;
    }

    v24 = v20;
    do
    {
      v25 = *v24++;
      *v23++ = v25;
      --v22;
    }

    while (v22);
  }

  v26 = v32;
  if (v33 == v32)
  {
    if (!v32)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v27 = v33 - v32;
    v28 = (*a4 + v21);
    if (v27 <= 1)
    {
      v27 = 1;
    }

    v29 = v32;
    do
    {
      v30 = *v29++;
      *v28++ = v30;
      --v27;
    }

    while (v27);
  }

  v33 = v26;
  operator delete(v26);
  v20 = __p;
LABEL_32:
  if (v20)
  {
    v36 = v20;
    operator delete(v20);
  }
}

void sub_24BDE1250(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BDE1284(void *a1, uint64_t *a2, uint64_t *a3, _BYTE *a4)
{
  *a4 = 0;
  v8 = ((*(a1[5] + 112) - *(a1[5] + 104)) >> 2);
  if (v8 != (a1[37] - a1[36]) >> 2)
  {
    sub_24BC8CAB0(a1 + 36, v8);
  }

  v9 = a1[32];
  v10 = a1[33];
  while (v9 != v10)
  {
    v11 = *(*(*v9 + 40) + 112) - *(*(*v9 + 40) + 104);
    if (*(*v9 + 296) - *(*v9 + 288) != v11)
    {
      sub_24BC8CAB0((*v9 + 288), v11 >> 2);
    }

    v9 += 16;
  }

  v12 = *a3;
  v13 = a3[1];
  v14 = v13 - *a3;
  if (v13 != *a3)
  {
    v15 = 0;
    v16 = v14 >> 2;
    v17 = a1[36];
    if (v16 <= 1)
    {
      v16 = 1;
    }

    do
    {
      *(v17 + 4 * *(v12 + 4 * v15)) = v15;
      ++v15;
    }

    while (v16 != v15);
  }

  v18 = a1[32];
  v19 = a1[33];
  if (v19 != v18)
  {
    v20 = 0;
    do
    {
      v21 = v18 + 16 * v20;
      v22 = *(*v21 + 40);
      sub_24BC836D4(__p, "v:index_in_father");
      v39 = -1;
      v23 = sub_24BDE2788((v22 + 8), &v39, __p);
      if (v38 < 0)
      {
        operator delete(__p[0]);
      }

      v24 = *v21;
      v25 = (*(*(*v21 + 40) + 8) + 16 * v23);
      v27 = *v25;
      v26 = v25[1];
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v26);
        v24 = *v21;
      }

      v28 = v24[9];
      v29 = v24[10] - v28;
      if (v29)
      {
        v30 = v29 >> 2;
        v31 = *(v27 + 40);
        v32 = a1[36];
        v33 = v24[36];
        if (v30 <= 1)
        {
          v30 = 1;
        }

        do
        {
          v34 = *v28++;
          *(v33 + 4 * v34) = *(v32 + 4 * *(v31 + 4 * v34));
          --v30;
        }

        while (v30);
      }

      ++v20;
      v18 = a1[32];
      v19 = a1[33];
    }

    while (v20 < (v19 - v18) >> 4);
  }

  __p[0] = 0;
  if (v19 == v18)
  {
LABEL_27:
    *a4 = 1;
  }

  else
  {
    v35 = 0;
    v36 = 0;
    while (1)
    {
      sub_24BDE1BE0(*(v18 + v35), a2, 2uLL, __p);
      if (__p[0] != 2)
      {
        break;
      }

      ++v36;
      v18 = a1[32];
      v35 += 16;
      if (v36 >= (a1[33] - v18) >> 4)
      {
        goto LABEL_27;
      }
    }
  }
}

void sub_24BDE14A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BDE14C0(void *a1, unint64_t a2, void *a3, float a4, void *a5, void *a6, uint64_t a7, uint64_t *a8, void *a9)
{
  sub_24BD6FFEC(v41);
  v15 = a1[32];
  v16 = a1[33] - v15;
  if (v16)
  {
    v17 = v16 >> 4;
    if (v17 <= 1)
    {
      v17 = 1;
    }

    do
    {
      v18 = *v15;
      v15 += 2;
      v19 = (*(v18 + 80) - *(v18 + 72)) >> 2;
      if (a2 <= v19)
      {
        a2 = v19;
      }

      --v17;
    }

    while (v17);
  }

  v20 = a1[5];
  v22 = *(v20 + 152);
  v21 = *(v20 + 160);
  sub_24BC95764(v40, a2);
  sub_24BC95764(v39, (v21 - v22) >> 2);
  sub_24BCA123C(__p, (v21 - v22) >> 2);
  v23 = a1[32];
  v24 = a1[33];
  if (v24 != v23)
  {
    v25 = 0;
    v26 = 0;
    do
    {
      sub_24BDE059C(*(v23 + 16 * v25), v26, a3);
      v23 = a1[32];
      v24 = a1[33];
      v25 = ++v26;
    }

    while (v26 < ((v24 - v23) >> 4));
  }

  if (v24 != v23)
  {
    v27 = 0;
    v28 = 0;
    do
    {
      v29 = (v23 + 16 * v27);
      v30 = *v29;
      v31 = *(*v29 + 232);
      if (*(*v29 + 240) != v31)
      {
        v32 = 0;
        do
        {
          v33 = *(v31 + 4 * v32);
          if (v28 < v33 && (*(*a6 + 4 * v27) || *(*a6 + 4 * v33)))
          {
            sub_24BDE1F3C(a1, v28, v33, v41, __p, a3, a5, a4, a7, a8, a9, v40, v39);
            v30 = *v29;
          }

          ++v32;
          v31 = *(v30 + 232);
        }

        while (v32 < (*(v30 + 240) - v31) >> 2);
        v23 = a1[32];
        v24 = a1[33];
      }

      v27 = ++v28;
    }

    while (v28 < ((v24 - v23) >> 4));
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v39[0])
  {
    v39[1] = v39[0];
    operator delete(v39[0]);
  }

  if (v40[0])
  {
    v40[1] = v40[0];
    operator delete(v40[0]);
  }

  return sub_24BD700D4(v41);
}

void sub_24BDE16C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  if (__p)
  {
    operator delete(__p);
  }

  if (a23)
  {
    operator delete(a23);
  }

  sub_24BD700D4(va);
  _Unwind_Resume(a1);
}

void sub_24BDE1728(uint64_t a1, void *a2, _DWORD *a3)
{
  sub_24BDFAE48(a1);
  v61 = 0;
  v62 = 0;
  v63 = 0;
  v6 = *(a1 + 40);
  v7 = (v6[14] - v6[13]) >> 2;
  v9 = v6[19];
  v8 = v6[20];
  sub_24BDD4E90(v60, v7);
  sub_24BDE00E0(a1, &v61, v60);
  v10 = *(a1 + 40);
  sub_24BC836D4(&__p, "f:index_in_father");
  v55[0] = -1;
  v11 = sub_24BDBAF64((v10 + 56), v55, &__p);
  if (SHIBYTE(v59) < 0)
  {
    operator delete(__p);
  }

  v12 = v8 - v9;
  if (v61 == v62)
  {
    if ((v12 >> 2))
    {
      v26 = 0;
      do
      {
        v27 = (*(*(a1 + 40) + 56) + 16 * v11);
        v29 = *v27;
        v28 = v27[1];
        if (v28)
        {
          atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v28);
        }

        v30 = *(*(v29 + 40) + v26);
        *(*a2 + ((v30 >> 3) & 0x1FFFFFF8)) &= ~(1 << v30);
        v26 += 4;
      }

      while (4 * (v12 >> 2) != v26);
    }

    *a3 = 0;
  }

  else
  {
    __p = 0;
    v58 = 0;
    v59 = 0;
    sub_24BDE032C(a1, &v61, &__p, v60);
    v13 = (v58 - __p) >> 2;
    v14 = (v13 * 0.3) + 0.5;
    v15 = v13 - 1;
    if (v15 >= v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = v15;
    }

    do
    {
      v17 = v16;
      v18 = *(__p + v16);
      v19 = v7 - v18;
      --v16;
    }

    while (v17 && v19 <= 0x18);
    if (v19 <= 0x18)
    {
      if (v7)
      {
        v31 = 0;
        v32 = v60[0];
        do
        {
          *&v32[(v31 >> 3) & 0x1FFFFFFFFFFFFFF8] &= ~(1 << v31);
          ++v31;
        }

        while (v7 != v31);
      }
    }

    else
    {
      v20 = (v62 - v61) >> 2;
      v21 = v20 > v18;
      v22 = v20 - v18;
      if (v21)
      {
        v23 = v60[0];
        v24 = (v61 + 4 * v18);
        do
        {
          v25 = *v24++;
          *&v23[(v25 >> 3) & 0x1FFFFFF8] &= ~(1 << v25);
          --v22;
        }

        while (v22);
      }
    }

    sub_24BDFB650(a1, v60);
    if (v17)
    {
      *a3 = v16;
      if ((v12 >> 2))
      {
        v33 = 0;
        do
        {
          v34 = (*(*(a1 + 40) + 56) + 16 * v11);
          v36 = *v34;
          v35 = v34[1];
          if (v35)
          {
            atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v35);
          }

          v37 = *(*(v36 + 40) + v33);
          *(*a2 + ((v37 >> 3) & 0x1FFFFFF8)) |= 1 << v37;
          v33 += 4;
        }

        while (4 * (v12 >> 2) != v33);
      }

      v38 = *(__p + v16 + 1);
      for (i = v61; v38 < (v62 - v61) >> 2; i = v61)
      {
        v56 = i[v38];
        sub_24BCB9454(v55, (*(a1 + 40) + 104), &v56);
        for (j = sub_24BCB947C(v55); ; j = sub_24BCB947C(v55))
        {
          v54 = j;
          if (j == -1)
          {
            break;
          }

          v41 = sub_24BC9ECE4(*(a1 + 40), *(*(a1 + 40) + 180), j);
          if ((*v41 & v42) == 0)
          {
            v43 = *(sub_24BCB9024(*(a1 + 40) + 104, &v54) + 16);
            v44 = (*(*(a1 + 40) + 56) + 16 * v11);
            v46 = *v44;
            v45 = v44[1];
            if (v45)
            {
              atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_24BC9EC78(v45);
            }

            v47 = *(*(v46 + 40) + 4 * v43);
            *(*a2 + ((v47 >> 3) & 0x1FFFFFF8)) &= ~(1 << v47);
          }
        }

        ++v38;
      }
    }

    else
    {
      *a3 = 0;
      if ((v12 >> 2))
      {
        v48 = 0;
        v49 = 4 * (v12 >> 2);
        do
        {
          v50 = (*(*(a1 + 40) + 56) + 16 * v11);
          v52 = *v50;
          v51 = v50[1];
          if (v51)
          {
            atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v51);
          }

          v53 = *(*(v52 + 40) + v48);
          *(*a2 + ((v53 >> 3) & 0x1FFFFFF8)) &= ~(1 << v53);
          v48 += 4;
        }

        while (v49 != v48);
      }
    }

    if (__p)
    {
      v58 = __p;
      operator delete(__p);
    }
  }

  if (v60[0])
  {
    operator delete(v60[0]);
  }

  if (v61)
  {
    v62 = v61;
    operator delete(v61);
  }
}

void sub_24BDE1B68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  if (a23)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BDE1BE0(uint64_t a1, uint64_t *a2, unint64_t a3, void *a4)
{
  v8 = *(a1 + 40);
  sub_24BC836D4(__p, "v:index_in_father");
  LODWORD(v57[0]) = -1;
  v9 = sub_24BDE2788((v8 + 8), v57, __p);
  if (v59 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = (*(*(a1 + 40) + 8) + 16 * v9);
  v12 = *v10;
  v11 = v10[1];
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v11);
  }

  v14 = *(a1 + 72);
  v13 = *(a1 + 80);
  v15 = (v13 - v14) >> 2;
  sub_24BC95764(__p, v15 * v15);
  v16 = __p[0];
  if (v13 != v14)
  {
    v17 = 0;
    v18 = (*(*(*(a1 + 280) + 40) + 112) - *(*(*(a1 + 280) + 40) + 104)) >> 2;
    v19 = *(a1 + 72);
    v20 = *a2;
    v21 = v15 - 1;
    if (v15 <= 1)
    {
      v22 = 1;
    }

    else
    {
      v22 = (v13 - v14) >> 2;
    }

    v23 = (__p[0] + 4 * v15);
    v24 = 4 * v15 + 4;
    v25 = (v19 + 4);
    v26 = (__p[0] + 4);
    do
    {
      v27 = *(v19 + 4 * v17);
      v16[v17 * v15 + v17] = 0.0;
      if (++v17 < v15)
      {
        v28 = *(a1 + 288);
        v29 = *(v12 + 40);
        v30 = *(v28 + 4 * v27) * v18;
        v31 = *(v29 + 4 * v27);
        v32 = v26;
        v33 = v25;
        v34 = v23;
        v35 = v21;
        do
        {
          v36 = *v33++;
          v37 = *(v20 + 4 * (v31 + *(v28 + 4 * v36) * v18));
          v38 = *(v20 + 4 * (*(v29 + 4 * v36) + v30));
          if (v37 >= v38)
          {
            v37 = v38;
          }

          *v34 = v37;
          *v32++ = v37;
          v34 += v15;
          --v35;
        }

        while (v35);
      }

      --v21;
      v23 = (v23 + v24);
      ++v25;
      v26 = (v26 + v24);
    }

    while (v17 != v22);
  }

  sub_24BDDE53C((a1 + 120), (v13 - v14) >> 2, v16);
  sub_24BDDE780((a1 + 120), a3, a4);
  sub_24BC95764(v57, v15 * a3);
  sub_24BDDF618((a1 + 120), a3, v57[0]);
  v39 = v57[0];
  v40 = *(a1 + 40);
  v41 = (v40[10] + 16 * *(a1 + 192));
  v43 = *v41;
  v42 = v41[1];
  if (v42)
  {
    atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v42);
    v40 = *(a1 + 40);
  }

  (*(*v43 + 32))(v43, (v40[14] - v40[13]) >> 2);
  if (v13 != v14)
  {
    v44 = 0;
    if (v15 <= 1)
    {
      v15 = 1;
    }

    v45 = (v39 + 4);
    v46 = 4 * a3;
    do
    {
      v47 = *(*(a1 + 72) + 4 * v44);
      v48 = *(v45 - 1);
      v49 = *(*(a1 + 40) + 80);
      v50 = (v49 + 16 * *(a1 + 192));
      v52 = *v50;
      v51 = v50[1];
      if (v51)
      {
        atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v51);
        v49 = *(*(a1 + 40) + 80);
      }

      *(*(v52 + 40) + 8 * v47) = v48;
      v53 = *v45;
      v54 = (v49 + 16 * *(a1 + 192));
      v56 = *v54;
      v55 = v54[1];
      if (v55)
      {
        atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v55);
      }

      *(*(v56 + 40) + 8 * v47 + 4) = v53;
      ++v44;
      v45 = (v45 + v46);
    }

    while (v15 != v44);
  }

  if (v57[0])
  {
    v57[1] = v57[0];
    operator delete(v57[0]);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_24BDE1EEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_24BDE1F3C(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t *a4, uint64_t *a5, void *a6, void *a7, float a8, uint64_t a9, uint64_t *a10, void *a11, float **a12, void *a13)
{
  v13 = *(a1 + 256);
  v70 = 0;
  v71 = 0;
  v72 = 0;
  v14 = (*(*(a1 + 40) + 160) - *(*(a1 + 40) + 152)) >> 2;
  LODWORD(v69[0]) = 0;
  if (v14)
  {
    v23 = 0;
    v63 = (v13 + 16 * a2);
    v62 = (v13 + 16 * a3);
    do
    {
      v25 = *a5;
      *(*a5 + 4 * v23) = -1;
      v26 = v69[0];
      if ((*(*a7 + ((LODWORD(v69[0]) >> 3) & 0x1FFFFFF8)) >> SLOBYTE(v69[0])))
      {
        v27 = *(*a6 + 4 * LODWORD(v69[0]));
        if (v27 == a2 || v27 == a3)
        {
          *(v25 + 4 * LODWORD(v69[0])) = (v71 - v70) >> 2;
          sub_24BC97D60(&v70, v69);
          v26 = v69[0];
        }
      }

      v23 = v26 + 1;
      LODWORD(v69[0]) = v26 + 1;
    }

    while (v26 + 1 < v14);
    v29 = v70;
    if (v70 != v71)
    {
      v59 = a3;
      v60 = a2;
      v30 = 0;
      v31 = (v71 - v70) >> 2;
      v61 = v31;
      if (v31 <= 1)
      {
        v31 = 1;
      }

      v65 = v31;
      v32 = 0.0;
      v33 = a12;
      do
      {
        v34 = a13;
        v35 = *(v70 + v30);
        v36 = v33;
        v37 = sub_24BDE2410(a1, *(v70 + v30), *v63, v33, a9, a10);
        v38 = vabds_f32(v37, sub_24BDE2410(a1, v35, *v62, v36, a9, a10));
        a13 = v34;
        *(*v34 + 4 * v35) = v38;
        v32 = v32 + v38;
        ++v30;
        v33 = a12;
      }

      while (v65 != v30);
      sub_24BC94F74(v69, v61);
      sub_24BD7009C(a4);
      sub_24BD6ED04(a4, v61, 0, 6);
      for (i = 0; i != v65; ++i)
      {
        v41 = sub_24BD700D8(a4);
        *(v69[0] + i) = v41;
      }

      for (j = 0; j != v65; ++j)
      {
        v68 = *(v70 + j);
        sub_24BCB7458(__p, 3uLL);
        sub_24BCD573C(*(a1 + 40), &v68, __p);
        for (k = 0; k != 12; k += 4)
        {
          v66 = *(__p[0] + k);
          v44 = *(a1 + 40);
          v45 = sub_24BCB9024(v44 + 104, &v66);
          v46 = sub_24BC9ECE4(v44, *(v44 + 180), *v45);
          if ((*v46 & v47) == 0)
          {
            v48 = *(a1 + 40);
            v49 = sub_24BCB9024(v48 + 104, &v66);
            v50 = *(sub_24BCB9024(v48 + 104, v49) + 16);
            if ((*(*a7 + ((v50 >> 3) & 0x1FFFFFF8)) >> v50))
            {
              v51 = *(*a5 + 4 * v50);
              if (v51 != -1)
              {
                v52 = 0.650000006 / ((*(*a11 + 4 * v66) / a8) + 1.0);
                v40 = (v32 + v32) / v61;
                v53 = v52 + (((*(*v34 + 4 * v68) + *(*v34 + 4 * v50)) / v40) * 0.35);
                sub_24BD7012C(a4, *(v69[0] + *(*a5 + 4 * v68)), *(v69[0] + v51), v53, v53);
              }
            }

            else
            {
              v54 = 3.4028e38;
              if (*(*a6 + 4 * v50) == v60)
              {
                v55 = 3.4028e38;
              }

              else
              {
                v55 = 0.0;
              }

              if (*(*a6 + 4 * v50) == v60)
              {
                v54 = 0.0;
              }

              sub_24BD70130(a4, *(v69[0] + *(*a5 + 4 * v68)), v55, v54);
            }
          }
        }

        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }
      }

      LODWORD(__p[0]) = 0;
      sub_24BD70134(a4, __p);
      for (m = 0; m != v65; ++m)
      {
        v57 = *(v70 + m);
        if (sub_24BD701B0(a4, *(v69[0] + *(*a5 + 4 * v57))))
        {
          v58 = v60;
        }

        else
        {
          v58 = v59;
        }

        *(*a6 + 4 * v57) = v58;
      }

      if (v69[0])
      {
        v69[1] = v69[0];
        operator delete(v69[0]);
      }

      v29 = v70;
    }

    if (v29)
    {
      v71 = v29;
      operator delete(v29);
    }
  }
}

void sub_24BDE239C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, void *a27, uint64_t a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a27)
  {
    operator delete(a27);
  }

  _Unwind_Resume(exception_object);
}

float sub_24BDE2410(uint64_t a1, unsigned int a2, uint64_t a3, float **a4, uint64_t a5, uint64_t *a6)
{
  v36 = a2;
  sub_24BC95764(v35, 0x19uLL);
  sub_24BC95764(v34, 0x19uLL);
  sub_24BCB2008(__p, 3uLL);
  sub_24BCD567C(*(a1 + 40), &v36, __p);
  for (i = 0; i != 3; ++i)
  {
    while (1)
    {
      sub_24BDE2698(a1, v35, *(__p[0] + i), a3, a4, a5, a6);
      if (a5)
      {
        break;
      }

      if (++i == 3)
      {
        goto LABEL_10;
      }
    }

    v12 = v35[0];
    v13 = v34[0];
    v14 = a5;
    do
    {
      v15 = *v12++;
      *v13 = v15 + *v13;
      ++v13;
      --v14;
    }

    while (v14);
  }

  v16 = v34[0];
  do
  {
    *v16 = *v16 / 3.0;
    ++v16;
    --a5;
  }

  while (a5);
LABEL_10:
  v18 = *(a3 + 72);
  v17 = *(a3 + 80);
  v19 = (*(*(a3 + 40) + 80) + 16 * *(a3 + 192));
  v21 = *v19;
  v20 = v19[1];
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v20);
  }

  v22 = (v17 - v18) >> 2;
  if (v17 == v18)
  {
    v25 = 0.0;
    if (!__p[0])
    {
      goto LABEL_23;
    }
  }

  else
  {
    v23 = 0;
    if (v22 <= 1)
    {
      v24 = 1;
    }

    else
    {
      v24 = (v17 - v18) >> 2;
    }

    v25 = 0.0;
    do
    {
      v26 = 0;
      v27 = *(*(a3 + 72) + 4 * v23);
      v28 = (*(v21 + 40) + 8 * v27);
      v29 = *a6 + 4 * ((*(*(a1 + 40) + 112) - *(*(a1 + 40) + 104)) >> 2) * *(*(a3 + 288) + 4 * v27);
      v30 = 0.0;
      do
      {
        v30 = v30 + *(v29 + 4 * *(__p[0] + v26));
        v26 += 4;
      }

      while (v26 != 12);
      v31 = sqrtf((((*v34[0] - *v28) * (*v34[0] - *v28)) + 0.0) + ((*(v34[0] + 1) - v28[1]) * (*(v34[0] + 1) - v28[1]))) + (v30 / -3.0);
      v25 = v25 + (v31 * v31);
      ++v23;
    }

    while (v23 != v24);
  }

  __p[1] = __p[0];
  operator delete(__p[0]);
LABEL_23:
  if (v34[0])
  {
    v34[1] = v34[0];
    operator delete(v34[0]);
  }

  if (v35[0])
  {
    v35[1] = v35[0];
    operator delete(v35[0]);
  }

  return v25 / v22;
}

void sub_24BDE264C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  if (a15)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BDE2698(uint64_t result, uint64_t *a2, int a3, void *a4, float **a5, uint64_t a6, uint64_t *a7)
{
  v8 = a4[9];
  v7 = a4[10];
  v9 = (v7 - v8) >> 2;
  if (v7 != v8)
  {
    v10 = a4[21];
    v11 = (*(*(result + 40) + 112) - *(*(result + 40) + 104)) >> 2;
    v12 = *(result + 288);
    v13 = *a7;
    v14 = *a5;
    if (v9 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = (v7 - v8) >> 2;
    }

    v16 = a4[9];
    do
    {
      v17 = *v16++;
      result = (a3 + *(v12 + 4 * v17) * v11);
      v18 = *(v13 + 4 * result) * *(v13 + 4 * result);
      *v14 = v18;
      v19 = *v10++;
      *v14++ = v19 - v18;
      --v15;
    }

    while (v15);
  }

  if (a6)
  {
    v20 = 0;
    v21 = a4[19];
    v22 = a4[20];
    v23 = *a2;
    v24 = *a5;
    if (v9 <= 1)
    {
      v25 = 1;
    }

    else
    {
      v25 = (v7 - v8) >> 2;
    }

    v26 = 4 * v9;
    do
    {
      *(v23 + 4 * v20) = 0;
      v27 = 0.0;
      if (v7 != v8)
      {
        v28 = v24;
        result = v22;
        v29 = v25;
        do
        {
          v30 = *v28++;
          v31 = v30;
          v32 = *result;
          result += 4;
          v27 = v27 + (v31 * v32);
          *(v23 + 4 * v20) = v27;
          --v29;
        }

        while (v29);
      }

      v33 = *(v21 + 4 * v20);
      v34 = sqrtf(v33);
      v35 = v34 + v34;
      if (v33 >= 0.0)
      {
        v36 = v35;
      }

      else
      {
        v36 = 0.0;
      }

      *(v23 + 4 * v20++) = v27 / v36;
      v22 += v26;
    }

    while (v20 != a6);
  }

  return result;
}

uint64_t sub_24BDE2788(uint64_t **a1, uint64_t a2, const void **a3)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    v6 = 0;
    while (1)
    {
      v7 = *v3;
      if (*v3)
      {
        break;
      }

LABEL_23:
      v3 += 2;
      v6 = (v6 + 1);
      if (v3 == v4)
      {
        return 0xFFFFFFFFLL;
      }
    }

    if (*(v7 + 31) < 0)
    {
      sub_24BC8DE9C(__p, *(v7 + 8), *(v7 + 16));
    }

    else
    {
      v8 = *(v7 + 8);
      v18 = *(v7 + 24);
      *__p = v8;
    }

    v9 = SHIBYTE(v18);
    if (v18 >= 0)
    {
      v10 = HIBYTE(v18);
    }

    else
    {
      v10 = __p[1];
    }

    v11 = *(a3 + 23);
    v12 = v11;
    if (v11 < 0)
    {
      v11 = a3[1];
    }

    if (v10 == v11 && (v18 >= 0 ? (v13 = __p) : (v13 = __p[0]), v12 >= 0 ? (v14 = a3) : (v14 = *a3), !memcmp(v13, v14, v10)))
    {
      v15 = *(*v3 + 32) == sub_24BDE28B0;
      if ((v9 & 0x80000000) == 0)
      {
LABEL_22:
        if (v15)
        {
          return v6;
        }

        goto LABEL_23;
      }
    }

    else
    {
      v15 = 0;
      if ((v9 & 0x80000000) == 0)
      {
        goto LABEL_22;
      }
    }

    operator delete(__p[0]);
    goto LABEL_22;
  }

  return 0xFFFFFFFFLL;
}

BOOL sub_24BDE28C4(uint64_t a1, float *a2, _DWORD *a3, int *a4, _DWORD *a5)
{
  v5 = *a2;
  v6 = *(a1 + 28);
  if (*a2 < v6 && (*a3 | 2) == 2 || v5 > v6 && (*a3 | 2) == 3)
  {
    return 1;
  }

  if (vabds_f32(v5, v6) >= 0.000001)
  {
    return 0;
  }

  v7 = *(a1 + 8);
  if (*a4 < v7)
  {
    return 1;
  }

  return fabsf((*a4 - v7)) < (v7 * 0.05) && *(a1 + 16) < *a5;
}

uint64_t sub_24BDE2968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6, char a7, int a8)
{
  v10 = *a6;
  *(a1 + 80) = 0;
  v11 = a1 + 80;
  *(a1 + 24) = 0;
  *(a1 + 32) = a2;
  *(a1 + 40) = a3;
  *(a1 + 48) = a4;
  *(a1 + 56) = a4;
  *(a1 + 64) = a5;
  *(a1 + 76) = v10;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = -1;
  v12 = (a1 + 104);
  *(a1 + 112) = -1;
  *(a1 + 120) = 1058642330;
  *(a1 + 124) = 1;
  *(a1 + 128) = 0;
  *(a1 + 224) = 0u;
  *(a1 + 180) = 0;
  *(a1 + 164) = 0;
  *(a1 + 172) = 0;
  *(a1 + 236) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 648) = 0;
  *(a1 + 296) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 744) = 0;
  *(a1 + 712) = 0u;
  *(a1 + 728) = 0u;
  *(a1 + 680) = 0u;
  *(a1 + 696) = 0u;
  *(a1 + 752) = a7;
  *(a1 + 756) = a8;
  sub_24BC836D4(__p, off_27F078F78[0]);
  v34 = 0;
  *v12 = sub_24BCB74D4((a2 + 80), &v34, __p);
  if (v33 < 0)
  {
    operator delete(__p[0]);
  }

  v13 = *(a1 + 32);
  sub_24BC836D4(__p, off_27F078FE8[0]);
  sub_24BD265CC(v13, (v11 + 28), __p);
  if (v33 < 0)
  {
    operator delete(__p[0]);
  }

  v14 = *(a1 + 32);
  sub_24BC836D4(__p, off_27F078FC8[0]);
  LODWORD(v34) = 0;
  *(a1 + 112) = sub_24BCCA8D0((v14 + 56), &v34, __p);
  if (v33 < 0)
  {
    operator delete(__p[0]);
  }

  v15 = *(a1 + 32);
  sub_24BC836D4(__p, off_27F078FB8[0]);
  v35 = 0;
  v34 = 0;
  *(a1 + 116) = sub_24BCCAA0C((v15 + 56), &v34, __p);
  if (v33 < 0)
  {
    operator delete(__p[0]);
  }

  v16 = (*(*(a1 + 32) + 80) + 16 * *(a1 + 108));
  v18 = *v16;
  v17 = v16[1];
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v17);
  }

  v19 = (*(*v18 + 16))(v18);
  v20 = *(a1 + 32);
  v22 = *(v20 + 152);
  v21 = *(v20 + 160);
  sub_24BCB8D20(v11, v19);
  v23 = (v21 - v22) >> 2;
  LODWORD(__p[0]) = 0;
  if (v23)
  {
    v24 = 0;
    v25 = 0;
    do
    {
      v26 = (*(*(a1 + 32) + 56) + 16 * *(a1 + 112));
      v28 = *v26;
      v27 = v26[1];
      if (v27)
      {
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v27);
      }

      if (v24 == *(*(v28 + 40) + 4 * v25))
      {
        sub_24BC97D60(v11, __p);
        ++v24;
      }

      v25 = LODWORD(__p[0]) + 1;
      LODWORD(__p[0]) = v25;
    }

    while (v25 < v23);
  }

  *(a1 + 72) = v19;
  v29 = **(a1 + 48);
  if (**(a1 + 56) < v29)
  {
    v29 = **(a1 + 56);
  }

  v30 = vcvts_n_f32_u32(v29, 7uLL);
  if (v30 >= *(a1 + 76))
  {
    v30 = *(a1 + 76);
  }

  *(a1 + 76) = v30;
  return a1;
}

void sub_24BDE2C70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v18 = v15[91];
  if (v18)
  {
    v15[92] = v18;
    operator delete(v18);
  }

  v19 = v15[88];
  if (v19)
  {
    v15[89] = v19;
    operator delete(v19);
  }

  sub_24BD98944(&__p);
  v20 = v15[79];
  if (v20)
  {
    v15[80] = v20;
    operator delete(v20);
  }

  __p = v16 + 66;
  sub_24BC8EE84(&__p);
  __p = v16 + 63;
  sub_24BC8EE84(&__p);
  v21 = v15 + 71;
  v22 = -96;
  while (1)
  {
    v23 = *(v21 - 1);
    if (v23)
    {
      *v21 = v23;
      operator delete(v23);
    }

    v21 -= 3;
    v22 += 24;
    if (!v22)
    {
      v24 = v15 + 59;
      v25 = -96;
      while (1)
      {
        v26 = *(v24 - 1);
        if (v26)
        {
          *v24 = v26;
          operator delete(v26);
        }

        v24 -= 3;
        v25 += 24;
        if (!v25)
        {
          v27 = v15 + 47;
          v28 = -96;
          while (1)
          {
            v29 = *(v27 - 1);
            if (v29)
            {
              *v27 = v29;
              operator delete(v29);
            }

            v27 -= 3;
            v28 += 24;
            if (!v28)
            {
              sub_24BC8EE84(&__p);
              v30 = *v16;
              if (*v16)
              {
                v15[11] = v30;
                operator delete(v30);
              }

              sub_24BC9F10C(v15);
              _Unwind_Resume(a1);
            }
          }
        }
      }
    }
  }
}

uint64_t sub_24BDE2DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_24BDE3340(a1, a2, a3, a4, a5);
  v6 = *(a1 + 24);
  if (v6 && ((*(*v6 + 48))(v6) & 1) != 0)
  {
    return 0;
  }

  v7 = *(a1 + 632);
  v8 = *(a1 + 640) - v7;
  if (v8)
  {
    v10 = *v7;
    v9 = v7 + 1;
    *(a1 + 656) = v10;
    if (v8 >> 2 == 1)
    {
      v9 = (a1 + 72);
    }

    *(a1 + 664) = *v9;
    v11 = *(a1 + 24);
    if (!v11 || ((*(*v11 + 48))(v11) & 1) == 0)
    {
      sub_24BC8EED8((a1 + 584));
      sub_24BC901C0((a1 + 584), *(a1 + 264));
      v12 = *(a1 + 264);
      if (v12)
      {
        v13 = 0;
        for (i = 0; i < v12; ++i)
        {
          v15 = *(a1 + 584) + v13;
          v16 = *(a1 + 256);
          v17 = *(v15 + 8) - *v15;
          if (v16 <= v17)
          {
            if (v16 < v17)
            {
              *(v15 + 8) = *v15 + v16;
            }
          }

          else
          {
            sub_24BC8F9B0(v15, v16 - v17);
            v12 = *(a1 + 264);
          }

          v13 += 24;
        }
      }

      *&v18 = sub_24BDE33FC(a1);
      *(a1 + 124) = 0;
      sub_24BDE34EC(a1, v18, v19, v20, v21);
    }

    return 0;
  }

  v22 = *(a1 + 24);
  if (v22)
  {
    if ((*(*v22 + 48))(v22))
    {
      return 0;
    }
  }

  sub_24BCA123C(v73, *(a1 + 72));
  v24 = *(a1 + 640);
  v25 = *(a1 + 632);
  v26 = v24 - v25;
  if (v24 != v25)
  {
    v27 = 0;
    v28 = v26 >> 2;
    v29 = v26 >> 2 != 0;
    v30 = (v26 >> 2) - 1;
    v31 = v73[0];
    if (v30 == 0 || !v29)
    {
      v28 = 1;
    }

    do
    {
      v32 = *(v25 + 4 * v27);
      v33 = (v25 + 4 + 4 * v27);
      if (v27 == v30)
      {
        v33 = (a1 + 72);
      }

      v34 = *v33;
      if (v32 < v34)
      {
        v35 = v34 - v32;
        v36 = (*(a1 + 704) + 4 * v32);
        do
        {
          v37 = *v36++;
          v31[v37] = v27;
          --v35;
        }

        while (v35);
      }

      ++v27;
    }

    while (v27 != v28);
  }

  v38 = *(a1 + 32);
  if (*(v38 + 160) != *(v38 + 152))
  {
    v39 = 0;
    v40 = 1;
    do
    {
      v41 = (*(v38 + 56) + 16 * *(a1 + 112));
      v43 = *v41;
      v42 = v41[1];
      if (v42)
      {
        atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v42);
        v38 = *(a1 + 32);
        v44 = (*(v38 + 56) + 16 * *(a1 + 112));
        v46 = *v44;
        v45 = v44[1];
        v47 = *(v73[0] + *(*(v43 + 40) + 4 * v39));
        if (v45)
        {
          atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v45);
          v38 = *(a1 + 32);
        }

        v43 = v46;
      }

      else
      {
        v47 = *(v73[0] + *(*(v43 + 40) + 4 * v39));
      }

      *(*(v43 + 40) + 4 * v39) = v47;
      v39 = v40++;
    }

    while (v39 < (*(v38 + 160) - *(v38 + 152)) >> 2);
  }

  v72 = -1;
  sub_24BC836D4(__p, off_27F078FC8[0]);
  v74 = 0;
  v48 = sub_24BD274E4((v38 + 56), &v74, __p);
  v72 = v48;
  if (v71 < 0)
  {
    operator delete(__p[0]);
  }

  if (v48 == -1)
  {
    v49 = *(a1 + 32);
    sub_24BC836D4(__p, off_27F078FC8[0]);
    sub_24BD2CCDC(v49, &v72, __p);
  }

  v50 = *(a1 + 32);
  if (v50[20] != v50[19])
  {
    v51 = 0;
    v52 = 1;
    do
    {
      v53 = v50[7];
      v54 = (v53 + 16 * *(a1 + 112));
      v56 = *v54;
      v55 = v54[1];
      if (v55)
      {
        atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v55);
        v50 = *(a1 + 32);
        v53 = v50[7];
      }

      v57 = *(*(v56 + 40) + 4 * v51);
      v58 = (v53 + 16 * v72);
      v60 = *v58;
      v59 = v58[1];
      if (v59)
      {
        atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v59);
        v50 = *(a1 + 32);
      }

      *(*(v60 + 40) + 2 * v51) = v57;
      v51 = v52++;
    }

    while (v51 < (v50[20] - v50[19]) >> 2);
  }

  v61 = *(a1 + 112);
  if (v61 != -1)
  {
    v62 = (v50[7] + 16 * v61);
    v63 = v62[1];
    *v62 = 0;
    v62[1] = 0;
    if (v63)
    {
      sub_24BC9EC78(v63);
    }
  }

  *(a1 + 112) = -1;
  v64 = (*(*(a1 + 32) + 80) + 16 * *(a1 + 108));
  v66 = *v64;
  v65 = v64[1];
  if (v65)
  {
    atomic_fetch_add_explicit(&v65->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v65);
  }

  (*(*v66 + 32))(v66, (*(a1 + 640) - *(a1 + 632)) >> 2);
  v67 = (*(*(a1 + 32) + 80) + 16 * *(a1 + 108));
  v69 = *v67;
  v68 = v67[1];
  if (v68)
  {
    atomic_fetch_add_explicit(&v68->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v68);
  }

  if ((*(*v69 + 16))(v69) >= 2)
  {
    sub_24BE4E540(*(a1 + 32));
  }

  if (v73[0])
  {
    v73[1] = v73[0];
    operator delete(v73[0]);
  }

  return 1;
}

void sub_24BDE3300(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BDE3340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a1 + 132) = **(a1 + 56) / **(a1 + 48);
  sub_24BDE3BC8((a1 + 680), *(a1 + 72), a3, a4, a5);
  sub_24BC8CAB0((a1 + 704), *(a1 + 72));
  sub_24BDE3C0C((a1 + 728), *(a1 + 72));
  v6 = *(a1 + 76);
  v7 = (2 * **(a1 + 56)) + (v6 * 2.0);
  *(a1 + 256) = ((2 * **(a1 + 48)) + (v6 * 2.0));
  *(a1 + 264) = v7;
  sub_24BDE3C3C(a1);
  sub_24BDE49D0(a1);

  sub_24BDE4A44(a1);
}

float sub_24BDE33FC(uint64_t a1)
{
  *(a1 + 120) = 1058642330;
  *(a1 + 672) = 0;
  v1 = *(a1 + 656);
  v2 = *(a1 + 664);
  if (v1 >= v2)
  {
    v3 = *(a1 + 704);
    v4 = *(a1 + 680);
    result = 0.0;
  }

  else
  {
    v3 = *(a1 + 704);
    v4 = *(a1 + 680);
    result = 0.0;
    v6 = *(a1 + 656);
    do
    {
      result = *(v4 + 232 * *(v3 + 4 * v6++) + 8) + result;
    }

    while (v2 != v6);
    *(a1 + 672) = result;
  }

  v7 = **(a1 + 48);
  v8 = **(a1 + 56);
  v9 = (v4 + 232 * *(v3 + 4 * v1) + 16);
  for (i = 0.6; ; *(a1 + 120) = i)
  {
    v11 = sqrtf(result / (i * (v8 * v7)));
    *(a1 + 288) = v11;
    if (v7 >= vcvtps_s32_f32((v9[4] - v9[2]) / v11) && v8 >= vcvtps_s32_f32((v9[5] - v9[3]) / v11))
    {
      break;
    }

    i = i / 1.01;
  }

  return result;
}

uint64_t sub_24BDE35D8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 120);
  v3 = *(result + 72);
  if (v3 > 0x1D)
  {
    v5 = ((1.0 - (*(result + 140) / *(result + 672))) * 0.25) + ((1.0 - (*(result + 144) / v3)) / 10.0);
    if (v5 < 0.02)
    {
      v5 = 0.01;
    }

    if (v5 > 0.2)
    {
      v5 = 0.2;
    }

    v4 = v2 - v5;
    *(result + 120) = v4;
    if (*(result + 164) >= 0xC9u)
    {
      *(result + 125) = 1;
      v6 = *(result + 40);
      result = sub_24BD6A604(401, a2);
      *v6 = result;
      v6[1] = v7;
      return result;
    }
  }

  else
  {
    v4 = (v2 * *(result + 136)) + -0.005;
    *(result + 120) = v4;
  }

  if (v4 <= 0.0)
  {
    v4 = v2 * 0.9;
    *(result + 120) = v2 * 0.9;
  }

  *(result + 288) = sqrtf(*(result + 672) / (v4 * (**(result + 56) * **(result + 48))));
  return result;
}

uint64_t sub_24BDE36F4(uint64_t result)
{
  v1 = *(result + 76);
  v2 = (*(result + 152) - *(result + 148)) - (v1 * 2.0);
  v3 = (*(result + 160) - *(result + 156)) - (v1 * 2.0);
  v4 = v3;
  v5 = v2;
  v6 = *(result + 132);
  if ((v4 / v5) <= v6)
  {
    v7 = v2;
    v9 = vcvtms_s32_f32((v5 * v6) + 0.5);
    v8 = v2;
  }

  else
  {
    v7 = v3;
    v8 = vcvtms_s32_f32((v4 / v6) + 0.5);
    v9 = v3;
  }

  *(result + 248) = v7;
  *(result + 272) = v8;
  *(result + 280) = v9;
  return result;
}

void sub_24BDE3780(uint64_t a1)
{
  v2 = *(a1 + 288);
  v3 = *(a1 + 76);
  v4 = *(a1 + 156);
  v69 = -(v2 * (v3 + *(a1 + 148)));
  v70 = -(v2 * (v3 + v4));
  v68[0] = xmmword_24BFBD1C0;
  v68[1] = xmmword_24BFD2970;
  v68[2] = xmmword_24BFBD200;
  v71 = 0x3F80000000000000;
  v62 = (1.0 / v2) / *(a1 + 248);
  v64 = v62;
  v63 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0x3F80000000000000;
  v5 = (*(*(a1 + 32) + 80) + 16 * *(a1 + 104));
  v7 = *v5;
  v6 = v5[1];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v6);
  }

  v8 = (*(*v7 + 16))(v7);
  LOBYTE(v57) = 0;
  sub_24BC9FEFC(&__p, v8, &v57);
  v9 = *(a1 + 656);
  if (v9 < *(a1 + 664))
  {
    do
    {
      v51 = v9;
      v10 = *(*(a1 + 704) + 4 * v9);
      v11 = *(a1 + 80);
      if (v10 == *(a1 + 72) - 1)
      {
        v12 = ((*(*(a1 + 32) + 160) - *(*(a1 + 32) + 152)) >> 2);
      }

      else
      {
        v12 = *(v11 + 4 * (v10 + 1));
      }

      v13 = *(v11 + 4 * v10);
      if (*(*(a1 + 680) + 232 * v10 + 4))
      {
        v14 = 0;
        v56[0] = xmmword_24BFED430;
        v56[1] = unk_24BFED440;
        v56[2] = xmmword_24BFED450;
        v56[3] = unk_24BFED460;
        v15 = &v62;
        do
        {
          v16 = 0;
          v17 = v68;
          do
          {
            v18 = 0;
            v19 = 0.0;
            do
            {
              v19 = v19 + (v15[v18] * *(v17 + v18));
              v18 += 4;
            }

            while (v18 != 16);
            *(v56 + (v14 | (4 * v16++))) = v19;
            ++v17;
          }

          while (v16 != 4);
          ++v14;
          ++v15;
        }

        while (v14 != 4);
        v20 = 0;
        v21 = *(a1 + 728) + (v10 << 6);
        v57 = xmmword_24BFED430;
        v58 = unk_24BFED440;
        v59 = xmmword_24BFED450;
        v60 = unk_24BFED460;
        v22 = v56;
        do
        {
          v23 = 0;
          v24 = v21;
          do
          {
            v25 = 0;
            v26 = 0.0;
            do
            {
              v26 = v26 + (*&v22[v25] * *(v24 + v25 * 4));
              ++v25;
            }

            while (v25 != 4);
            *(&v57 + (v20 | (4 * v23++))) = v26;
            v24 += 16;
          }

          while (v23 != 4);
          ++v20;
          v22 = (v22 + 4);
        }

        while (v20 != 4);
        if (v13 < v12)
        {
          v54 = v58;
          v55 = v57;
          v52 = v60;
          v53 = v59;
          v27 = 12 * v13;
          do
          {
            v28 = (*(*(a1 + 32) + 56) + 16 * *(a1 + 116));
            v30 = *v28;
            v29 = v28[1];
            if (v29)
            {
              atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_24BC9EC78(v29);
            }

            v31 = 0;
            v32 = *(v30 + 40) + v27;
            do
            {
              v33 = *(v32 + v31);
              v34 = *(__p + (v33 >> 6));
              if (((1 << v33) & v34) == 0)
              {
                *(__p + (v33 >> 6)) = (1 << v33) | v34;
                v35 = (*(*(a1 + 32) + 80) + 16 * *(a1 + 104));
                v37 = *v35;
                v36 = v35[1];
                if (v36)
                {
                  atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
                  sub_24BC9EC78(v36);
                  v33 = *(v32 + v31);
                }

                v38 = (*(v37 + 40) + 8 * v33);
                v39 = vmlaq_f32(vmlaq_n_f32(vmlaq_n_f32(v52, v55, *v38), v54, v38[1]), 0, v53);
                *v38 = vdiv_f32(*v39.i8, *&vdupq_laneq_s32(v39, 3));
              }

              v31 += 4;
            }

            while (v31 != 12);
            ++v13;
            v27 += 12;
          }

          while (v13 != v12);
        }
      }

      else if (v13 < v12)
      {
        v40 = 12 * v13;
        do
        {
          v41 = (*(*(a1 + 32) + 56) + 16 * *(a1 + 116));
          v43 = *v41;
          v42 = v41[1];
          if (v42)
          {
            atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v42);
          }

          v44 = 0;
          v45 = *(v43 + 40) + v40;
          do
          {
            v46 = *(v45 + v44);
            v47 = *(__p + (v46 >> 6));
            if (((1 << v46) & v47) == 0)
            {
              *(__p + (v46 >> 6)) = (1 << v46) | v47;
              v48 = (*(*(a1 + 32) + 80) + 16 * *(a1 + 104));
              v50 = *v48;
              v49 = v48[1];
              if (v49)
              {
                atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
                sub_24BC9EC78(v49);
                v46 = *(v45 + v44);
              }

              *(*(v50 + 40) + 8 * v46) = 0;
            }

            v44 += 4;
          }

          while (v44 != 12);
          ++v13;
          v40 += 12;
        }

        while (v13 != v12);
      }

      v9 = v51 + 1;
    }

    while (v51 + 1 < *(a1 + 664));
  }

  if (__p)
  {
    operator delete(__p);
  }
}

void sub_24BDE3BC8(uint64_t **a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = 0x34F72C234F72C235 * (a1[1] - *a1);
  v6 = a2 >= v5;
  v7 = a2 - v5;
  if (v7 != 0 && v6)
  {
    sub_24BDE7020(a1, v7, a3, a4, a5);
  }

  else if (!v6)
  {
    sub_24BD98998(a1, &(*a1)[29 * a2]);
  }
}

void sub_24BDE3C0C(uint64_t *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 6;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + (a2 << 6);
    }
  }

  else
  {
    sub_24BDE75FC(result, a2 - v2);
  }
}

uint64_t sub_24BDE3C3C(uint64_t a1)
{
  for (i = 0; ; ++i)
  {
    v4 = (*(*(a1 + 32) + 80) + 16 * *(a1 + 104));
    v6 = *v4;
    v5 = v4[1];
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v5);
    }

    if ((*(*v6 + 16))(v6) <= i)
    {
      break;
    }

    v7 = 0;
    v8 = 1;
    do
    {
      v9 = v8;
      v10 = *(a1 + 32);
      v11 = *(a1 + 104);
      v12 = (*(v10 + 80) + 16 * v11);
      v14 = *v12;
      v13 = v12[1];
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v13);
        v10 = *(a1 + 32);
        v11 = *(a1 + 104);
      }

      if (fabsf(*(*(v14 + 40) + 8 * i + 4 * v7)) == INFINITY)
      {
        v15 = (*(v10 + 80) + 16 * v11);
        v17 = *v15;
        v16 = v15[1];
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v16);
        }

        *(*(v17 + 40) + 8 * i + 4 * v7) = 0;
      }

      else
      {
        v18 = *(*(v10 + 80) + 16 * v11 + 8);
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v18);
        }
      }

      v8 = 0;
      v7 = 1;
    }

    while ((v9 & 1) != 0);
  }

  if (*(a1 + 72))
  {
    v19 = 0;
    v20 = 8;
    do
    {
      v21 = sub_24BDE6B0C(a1, v19);
      *(*(a1 + 680) + v20) = v21;
      v22 = v21 + *(a1 + 128);
      *(a1 + 128) = v22;
      ++v19;
      v20 += 232;
    }

    while (v19 < *(a1 + 72));
  }

  else
  {
    v22 = *(a1 + 128);
  }

  LOBYTE(v1) = **(a1 + 64);
  v188 = 0u;
  v189 = 0u;
  v190 = 1065353216;
  v23 = (*(*(a1 + 32) + 80) + 16 * *(a1 + 104));
  v25 = *v23;
  v24 = v23[1];
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v24);
  }

  v26 = (*(*v25 + 16))(v25);
  sub_24BDB7474(v187, v26);
  sub_24BCB2008(v186, 3uLL);
  sub_24BCB7458(v185, 3uLL);
  LODWORD(v27) = *(a1 + 72);
  if (v27)
  {
    v28 = 0;
    v161 = 136;
    v159 = sqrtf(v22 / v1);
    do
    {
      v29 = (*(a1 + 80) + 4 * v28);
      if (v28 == v27 - 1)
      {
        v30 = ((*(*(a1 + 32) + 160) - *(*(a1 + 32) + 152)) >> 2);
      }

      else
      {
        v30 = v29[1];
      }

      v163 = *v29;
      if (v163 < v30)
      {
        v31 = *v29;
        v32 = 12 * v163;
        do
        {
          v33 = *(a1 + 32);
          v34 = (*(v33 + 56) + 16 * *(a1 + 116));
          v36 = *v34;
          v35 = v34[1];
          if (v35)
          {
            atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v35);
            v33 = *(a1 + 32);
          }

          v37 = *(v36 + 40);
          LODWORD(v177) = v31;
          sub_24BCD567C(v33, &v177, v186);
          v38 = (v37 + v32);
          v39 = 3;
          do
          {
            sub_24BDE7DD4(&v188, v38, v38);
            ++v38;
            --v39;
          }

          while (v39);
          ++v31;
          v32 += 12;
        }

        while (v31 != v30);
      }

      sinval = 0.0;
      cosval = 1.0;
      v167 = 3.4028e38;
      v165 = 0.0;
      for (j = 1; j != 19; ++j)
      {
        v41 = ((j * 5.0) / 180.0) * 3.14159265;
        if (v41 > 1.57079633)
        {
          v41 = 1.5708;
        }

        v42 = __sincosf_stret(v41);
        v43 = v189;
        if (v189)
        {
          v44 = -v42.__sinval;
          v45 = 3.4028e38;
          v46 = -3.4028e38;
          v47 = -3.4028e38;
          v48 = 3.4028e38;
          do
          {
            v49 = *(v43 + 4);
            v50 = (*(*(a1 + 32) + 80) + 16 * *(a1 + 104));
            v52 = *v50;
            v51 = v50[1];
            if (v51)
            {
              atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_24BC9EC78(v51);
            }

            v53 = (*(v52 + 40) + 8 * v49);
            v54 = v53[1];
            v55 = ((v42.__cosval * *v53) + 0.0) + (v44 * v54);
            v56 = ((v42.__sinval * *v53) + 0.0) + (v42.__cosval * v54);
            if (v55 < v48)
            {
              v48 = ((v42.__cosval * *v53) + 0.0) + (v44 * v54);
            }

            if (v56 < v45)
            {
              v45 = ((v42.__sinval * *v53) + 0.0) + (v42.__cosval * v54);
            }

            if (v47 < v55)
            {
              v47 = ((v42.__cosval * *v53) + 0.0) + (v44 * v54);
            }

            if (v46 < v56)
            {
              v46 = ((v42.__sinval * *v53) + 0.0) + (v42.__cosval * v54);
            }

            v43 = *v43;
          }

          while (v43);
          if (((v47 - v48) * (v46 - v45)) < v167)
          {
            cosval = v42.__cosval;
            sinval = v42.__sinval;
            v165 = -v42.__sinval;
            v167 = (v47 - v48) * (v46 - v45);
          }
        }
      }

      v57 = v189;
      v58 = 0x7F0000007FLL;
      if (v189)
      {
        v59 = v159;
        do
        {
          v60 = *(v57 + 4);
          v61 = (*(*(a1 + 32) + 80) + 16 * *(a1 + 104));
          v63 = *v61;
          v62 = v61[1];
          if (v62)
          {
            atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v62);
            v64 = (*(*(a1 + 32) + 80) + 16 * *(a1 + 104));
            v65 = *v64;
            v62 = v64[1];
          }

          else
          {
            v65 = *v61;
          }

          v66 = (*(v63 + 40) + 8 * v60);
          v67 = *v66;
          v68 = v66[1];
          if (v62)
          {
            atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v62);
          }

          v69 = (*(v65 + 40) + 8 * v60);
          *v69 = ((cosval * v67) + 0.0) + (v165 * v68);
          v69[1] = ((sinval * v67) + 0.0) + (cosval * v68);
          v57 = *v57;
        }

        while (v57);
        v70 = v189;
        v58 = 0x7F0000007FLL;
        if (v189)
        {
          v71 = 0x80000000800000;
          v72 = vneg_f32(0x80000000800000);
          do
          {
            v73 = *(v70 + 4);
            v74 = (*(*(a1 + 32) + 80) + 16 * *(a1 + 104));
            v76 = *v74;
            v75 = v74[1];
            if (v75)
            {
              atomic_fetch_add_explicit(&v75->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_24BC9EC78(v75);
            }

            v77 = *(*(v76 + 40) + 8 * v73);
            v72 = vbsl_s8(vcgt_f32(v72, v77), v77, v72);
            v71 = vbsl_s8(vcgt_f32(v77, v71), v77, v71);
            v70 = *v70;
          }

          while (v70);
          v58 = vsub_f32(v71, v72);
        }
      }

      else
      {
        v59 = v159;
      }

      v78 = v58.f32[1];
      if (v58.f32[0] >= v58.f32[1])
      {
        v78 = v58.f32[0];
      }

      v79 = *(a1 + 680);
      if (v78 > v59)
      {
        v80 = *(v79 + 232 * v28 + 8);
        v81 = v189;
        v168 = v59 / v78;
        if (v189)
        {
          do
          {
            v82 = *(v81 + 4);
            v83 = (*(*(a1 + 32) + 80) + 16 * *(a1 + 104));
            v85 = *v83;
            v84 = v83[1];
            if (v84)
            {
              atomic_fetch_add_explicit(&v84->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_24BC9EC78(v84);
            }

            *(*(v85 + 40) + 8 * v82) = vmul_n_f32(*(*(v85 + 40) + 8 * v82), v168);
            v81 = *v81;
          }

          while (v81);
          v79 = *(a1 + 680);
        }

        v86 = v168 * (v168 * v80);
        *(v79 + 232 * v28 + 8) = v86;
        *(a1 + 128) = *(a1 + 128) - (v80 - v86);
      }

      v87 = 0;
      *(v79 + 232 * v28 + 4) = 1;
      v164 = v30;
      do
      {
        v88 = v87 * 3.14159265 / 3.0 * 0.5;
        v169 = v88;
        v89 = __sincosf_stret(v88);
        v90 = v189;
        if (v189)
        {
          v91 = -v89.__sinval;
          v92 = -3.4028e38;
          v93 = 3.4028e38;
          v94 = 3.4028e38;
          v95 = -3.4028e38;
          do
          {
            v96 = *(v90 + 4);
            v97 = (*(*(a1 + 32) + 80) + 16 * *(a1 + 104));
            v99 = *v97;
            v98 = v97[1];
            if (v98)
            {
              atomic_fetch_add_explicit(&v98->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_24BC9EC78(v98);
            }

            v100 = (*(v99 + 40) + 8 * v96);
            v101 = v100[1];
            v102 = ((v89.__cosval * *v100) + 0.0) + (v91 * v101);
            v103 = ((v89.__sinval * *v100) + 0.0) + (v89.__cosval * v101);
            if (v102 < v93)
            {
              v93 = ((v89.__cosval * *v100) + 0.0) + (v91 * v101);
            }

            if (v103 < v94)
            {
              v94 = ((v89.__sinval * *v100) + 0.0) + (v89.__cosval * v101);
            }

            if (v92 < v102)
            {
              v92 = ((v89.__cosval * *v100) + 0.0) + (v91 * v101);
            }

            if (v95 < v103)
            {
              v95 = ((v89.__sinval * *v100) + 0.0) + (v89.__cosval * v101);
            }

            v104 = (v187[0] + 8 * v96);
            *v104 = v102;
            v104[1] = v103;
            v90 = *v90;
          }

          while (v90);
        }

        else
        {
          v94 = 3.4028e38;
          v95 = -3.4028e38;
          v92 = -3.4028e38;
          v93 = 3.4028e38;
        }

        v105 = (*(a1 + 680) + 232 * v28);
        v106 = &v105[18 * v87];
        v106[14] = v169;
        v106[8] = v92;
        v106[9] = v95;
        v106[6] = v93;
        v106[7] = v94;
        if (!v87)
        {
          v107 = v92 - v93;
          if ((v92 - v93) < (v95 - v94))
          {
            v107 = v95 - v94;
          }

          *v105 = v107;
        }

        v182 = 0;
        v183 = 0;
        v184 = 0;
        v108 = (*(*(a1 + 32) + 80) + 16 * *(a1 + 104));
        v110 = *v108;
        v109 = v108[1];
        if (v109)
        {
          atomic_fetch_add_explicit(&v109->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v109);
        }

        v111 = (*(*v110 + 16))(v110);
        LOBYTE(v177) = 0;
        sub_24BC9FEFC(&v181, v111, &v177);
        v112 = 12 * v163;
        v113 = v163;
        if (v163 < v30)
        {
          do
          {
            v114 = *(a1 + 32);
            v115 = (*(v114 + 56) + 16 * *(a1 + 116));
            v117 = *v115;
            v116 = v115[1];
            if (v116)
            {
              atomic_fetch_add_explicit(&v116->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_24BC9EC78(v116);
              v114 = *(a1 + 32);
            }

            v118 = *(v117 + 40);
            LODWORD(v177) = v113;
            sub_24BCD573C(v114, &v177, v185);
            v119 = 0;
            v166 = v113;
            v170 = v112;
            v120 = v118 + 12 * v113;
            v121 = v118 + v112;
            v122 = 1;
            do
            {
              v123 = *(a1 + 32);
              v124 = sub_24BCB9024(v123 + 104, (v185[0] + v119));
              v125 = sub_24BCB9024(v123 + 104, v124);
              v126 = *(v125 + 16);
              if (v126 == -1)
              {
                goto LABEL_113;
              }

              v127 = (*(*(a1 + 32) + 56) + 16 * *(a1 + 112));
              v129 = *v127;
              v128 = v127[1];
              if (v128)
              {
                atomic_fetch_add_explicit(&v128->__shared_owners_, 1uLL, memory_order_relaxed);
                sub_24BC9EC78(v128);
                v126 = *(v125 + 16);
              }

              if (v28 != *(*(v129 + 40) + 4 * v126))
              {
                goto LABEL_113;
              }

              v130 = (*(*(a1 + 32) + 56) + 16 * *(a1 + 116));
              v132 = *v130;
              v131 = v130[1];
              if (v131)
              {
                atomic_fetch_add_explicit(&v131->__shared_owners_, 1uLL, memory_order_relaxed);
                sub_24BC9EC78(v131);
                LODWORD(v126) = *(v125 + 16);
              }

              v133 = (*(v132 + 40) + 12 * v126);
              v134 = *(v121 + v119);
              if (*v133 != v134 && v133[1] != v134 && v133[2] != v134)
              {
LABEL_113:
                if (v119 == 8)
                {
                  v135 = 0;
                }

                else
                {
                  v135 = v122;
                }

                v136 = (v120 + 4 * v135);
                v137 = (v187[0] + 8 * *v136);
                v138 = *(a1 + 680) + 232 * v28 + 72 * v87;
                v177 = *(v187[0] + *(v121 + v119));
                v139.i64[0] = v177;
                v178 = *v137;
                v140 = v137[1];
                v141.i64[0] = __PAIR64__(v140, v178);
                v141.i64[1] = v177;
                v139.i64[1] = __PAIR64__(v140, v178);
                v179 = v140;
                v180 = vbslq_s8(vcgtq_f32(v139, v141), vdupq_lane_s64(__SPAIR64__(v140, v178), 0), vdupq_lane_s64(v177, 0));
                sub_24BDE6CC8(v138 + 64, &v177);
                if (*(a1 + 756) == 2)
                {
                  v142 = v181;
                  if (((*(v181 + ((*(v121 + v119) >> 3) & 0x1FFFFFF8)) >> *(v121 + v119)) & 1) == 0)
                  {
                    sub_24BC97D60(&v182, (v121 + v119));
                    v142 = v181;
                    *(v181 + ((*(v121 + v119) >> 3) & 0x1FFFFFF8)) |= 1 << *(v121 + v119);
                  }

                  if (((*&v142[(*v136 >> 3) & 0x1FFFFFF8] >> *v136) & 1) == 0)
                  {
                    sub_24BC97D60(&v182, v136);
                    *(v181 + ((*v136 >> 3) & 0x1FFFFFF8)) |= 1 << *v136;
                  }
                }
              }

              v119 += 4;
              ++v122;
            }

            while (v119 != 12);
            v113 = v166 + 1;
            v112 = v170 + 12;
            v30 = v164;
          }

          while (v166 + 1 != v164);
        }

        if (!v87)
        {
          v143 = 2;
          v144 = v161;
          do
          {
            sub_24BDE6D48((*(a1 + 680) + v144), (*(*(a1 + 680) + 232 * v28 + 72) - *(*(a1 + 680) + 232 * v28 + 64)) >> 5);
            v144 += 72;
            --v143;
          }

          while (v143);
        }

        if (*(a1 + 756) == 2)
        {
          v174 = 0;
          v175 = 0;
          v176 = 0;
          sub_24BDB2A0C(&v182, v187[0], &v174);
          __p = 0;
          v172 = 0;
          v173 = 0;
          sub_24BDE6D48(&__p, (v175 - v174) >> 2);
          v145 = v174;
          if (v175 != v174)
          {
            v146 = 0;
            v147 = (v175 - v174) >> 2;
            v148 = 1;
            do
            {
              v149 = v145[v146];
              v146 = v148;
              v150 = (v187[0] + 8 * v145[v148 % v147]);
              v177 = *(v187[0] + v149);
              v151.i64[0] = v177;
              v178 = *v150;
              v152 = v150[1];
              v153.i64[0] = __PAIR64__(v152, v178);
              v153.i64[1] = v177;
              v151.i64[1] = __PAIR64__(v152, v178);
              v179 = v152;
              v180 = vbslq_s8(vcgtq_f32(v151, v153), vdupq_lane_s64(__SPAIR64__(v152, v178), 0), vdupq_lane_s64(v177, 0));
              sub_24BDE6CC8(&__p, &v177);
              v145 = v174;
              v147 = (v175 - v174) >> 2;
              v148 = v146 + 1;
            }

            while (v147 > v146);
          }

          v154 = (*(a1 + 680) + 232 * v28 + 72 * v87);
          v155 = v154[8];
          v154[8] = __p;
          __p = v155;
          v156 = v154[9];
          v154[9] = v172;
          v172 = v156;
          v157 = v154[10];
          v154[10] = v173;
          v173 = v157;
          if (__p)
          {
            v172 = __p;
            operator delete(__p);
          }

          if (v174)
          {
            v175 = v174;
            operator delete(v174);
          }
        }

        if (v181)
        {
          operator delete(v181);
        }

        if (v182)
        {
          v183 = v182;
          operator delete(v182);
        }

        ++v87;
      }

      while (v87 != 3);
      sub_24BD9A318(&v188);
      ++v28;
      v27 = *(a1 + 72);
      v161 += 232;
    }

    while (v28 < v27);
  }

  if (v185[0])
  {
    v185[1] = v185[0];
    operator delete(v185[0]);
  }

  if (v186[0])
  {
    v186[1] = v186[0];
    operator delete(v186[0]);
  }

  if (v187[0])
  {
    v187[1] = v187[0];
    operator delete(v187[0]);
  }

  return sub_24BCA3B84(&v188);
}

void sub_24BDE48FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42)
{
  if (__p)
  {
    operator delete(__p);
  }

  v44 = *(v42 - 232);
  if (v44)
  {
    *(v42 - 224) = v44;
    operator delete(v44);
  }

  sub_24BCA3B84(v42 - 208);
  _Unwind_Resume(a1);
}

uint64_t sub_24BDE49D0(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = *(a1 + 704);
  if (v2)
  {
    v4 = 0;
    do
    {
      *(v3 + 4 * v4) = v4;
      ++v4;
    }

    while (v4 < *(a1 + 72));
  }

  v5 = *(a1 + 712);
  v6 = 126 - 2 * __clz((v5 - v3) >> 2);
  v9 = a1;
  if (v5 == v3)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  return sub_24BDE818C(v3, v5, &v9, v7, 1);
}

void sub_24BDE4A44(uint64_t a1)
{
  v2 = (a1 + 632);
  sub_24BC8CAB0((a1 + 632), **(a1 + 64));
  v3 = *(a1 + 64);
  v4 = *v3;
  if (v4 == 1)
  {
    **v2 = 0;
  }

  else
  {
    v5 = *(a1 + 72);
    if (v5 <= v4)
    {
      sub_24BC8CAB0(v2, v5);
      if (*(a1 + 72))
      {
        v17 = 0;
        v18 = *v2;
        do
        {
          v18[v17] = v17;
          ++v17;
        }

        while (v17 < *(a1 + 72));
      }
    }

    else
    {
      v6 = *(a1 + 632);
      *v6 = 0;
      v7 = *v3;
      v8 = *(a1 + 72);
      if (v8 < 2)
      {
        v16 = 1;
      }

      else
      {
        v9 = *(a1 + 704);
        v10 = *(a1 + 680);
        v11 = *(a1 + 128);
        v12 = v11 / v7;
        v13 = *(v10 + 232 * *v9 + 8);
        v14 = 1;
        v15 = 1;
        do
        {
          if (v13 >= v12)
          {
            v6[v15] = v14;
            v16 = v15 + 1;
            v7 = *v3;
            if (v15 + 1 >= v7)
            {
              break;
            }

            v11 = v11 - v13;
            v12 = v11 / (v7 - v15);
            v8 = *(a1 + 72);
            v13 = 0.0;
            ++v15;
          }

          else
          {
            v16 = v15;
          }

          v13 = v13 + *(v10 + 232 * v9[v14++] + 8);
        }

        while (v14 < v8);
      }

      if (v16 < v7)
      {

        sub_24BC8CAB0(v2, v16);
      }
    }
  }
}

void sub_24BDE4BA4(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = *(*(a1 + 704) + 4 * *(a1 + 656));
  sub_24BDE694C(a1, a2, a3, a4, a5);
  v7 = *(a1 + 680) + 232 * v6;
  v9 = *(v7 + 40);
  v8 = *(v7 + 44);
  if (v9 <= v8)
  {
    v10 = *(v7 + 44);
  }

  else
  {
    v10 = *(v7 + 40);
  }

  v11 = 2 * v10;
  sub_24BC8EED8((a1 + 608));
  sub_24BC8EED8((a1 + 224));
  sub_24BC901C0((a1 + 608), v11);
  sub_24BC901C0((a1 + 224), v11);
  v12 = *(a1 + 608);
  if (*(a1 + 616) != v12)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = v12 + v13;
      v16 = *(v12 + v13);
      v17 = *(v15 + 8) - v16;
      if (v11 <= v17)
      {
        if (v11 < v17)
        {
          *(v15 + 8) = v16 + v11;
        }
      }

      else
      {
        sub_24BC8F9B0(v15, v11 - v17);
      }

      v18 = *(a1 + 224) + v13;
      v19 = *(v18 + 8) - *v18;
      if (v11 <= v19)
      {
        if (v11 < v19)
        {
          *(v18 + 8) = *v18 + v11;
        }
      }

      else
      {
        sub_24BC8F9B0(v18, v11 - v19);
      }

      ++v14;
      v12 = *(a1 + 608);
      v13 += 24;
    }

    while (v14 < 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 616) - v12) >> 3));
  }

  v20 = -96;
  do
  {
    sub_24BC8CAB0((a1 + v20 + 488), v11);
    if (*(a1 + 256) <= *(a1 + 264))
    {
      v21 = *(a1 + 264);
    }

    else
    {
      v21 = *(a1 + 256);
    }

    sub_24BC8CAB0((a1 + v20 + 392), v21);
    v20 += 24;
  }

  while (v20);
  sub_24BDE537C(a1, v6, 0, v22, v23, v24, v25, v26, v27);
  *(a1 + 184) = v8 / v9;
  v28 = *(a1 + 584);
  v29 = (-1431655765 * ((*(a1 + 592) - v28) >> 3)) / 2 - v8 / 2;
  v30 = v29 + v8;
  *(a1 + 156) = v29;
  *(a1 + 160) = v29 + v8;
  v31 = (v28[2] - *v28) / 2 - v9 / 2;
  LODWORD(v32) = v31 + v9;
  *(a1 + 148) = v31;
  *(a1 + 152) = v31 + v9;
  if (v8 >= 1)
  {
    v33 = v29;
    do
    {
      v34 = *(a1 + 148);
      if (v34 < v32)
      {
        do
        {
          *(*(*(a1 + 584) + 24 * v33) + v34) = *(*(*(a1 + 608) + 24 * (v33 - *(a1 + 156))) - *(a1 + 148) + v34);
          ++v34;
          v32 = *(a1 + 152);
        }

        while (v34 < v32);
        v30 = *(a1 + 160);
      }

      ++v33;
    }

    while (v33 < v30);
    v31 = *(a1 + 148);
    v29 = *(a1 + 156);
  }

  v35 = *(a1 + 288);
  v36 = *(a1 + 680) + 232 * v6;
  v37 = *(v36 + 20);
  v38 = *(a1 + 728) + (v6 << 6);
  *(v38 + 48) = -(*(v36 + 16) - (v35 * v31));
  *(v38 + 52) = -(v37 - (v35 * v29));
  *v38 = xmmword_24BFBD1C0;
  *(v38 + 16) = xmmword_24BFD2970;
  *(v38 + 32) = xmmword_24BFBD200;
  *(v38 + 56) = 0x3F80000000000000;

  sub_24BDE5768(a1, a1 + 296, a1 + 584, v31, v32, v29, v30, 0);
}

uint64_t sub_24BDE4E64(uint64_t result, unsigned int a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v15 = *MEMORY[0x277D85DE8];
  v8 = *(result + 680) + 232 * a2;
  if (*(v8 + 4) == 1)
  {
    v9 = result;
    *(result + 200) = 0x7FFFFFFF;
    LODWORD(a3) = *(result + 184);
    LODWORD(a4) = *(result + 132);
    if (*&a3 <= *&a4 && *&a3 >= *&a4)
    {
      v10 = rand();
      LODWORD(a4) = 0.5;
      *&a3 = v10 + 0.5;
    }

    for (i = 0; i != 256; i += 32)
    {
      v12 = &v14[i];
      *v12 = 0;
      *(v12 + 2) = 0x7FFFFFFF;
      *(v12 + 20) = 0;
      *(v12 + 12) = 0;
      *(v12 + 7) = 0;
    }

    sub_24BDE537C(v9, a2, 0, a3, a4, a5, a6, a7, a8);
    sub_24BDE5768(v9, v9 + 392, v9 + 608, 0, *(v8 + 40), 0, *(v8 + 44), 1);
  }

  return result;
}

void sub_24BDE5348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  sub_24BDE7950(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BDE537C(uint64_t a1, unsigned int a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v9 = *(a1 + 680) + 232 * a2 + 72 * a3;
  v10 = *(v9 + 40);
  v11 = *(v9 + 44);
  v12 = *(v9 + 24);
  v13 = *(v9 + 48);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      if (v10)
      {
        for (j = 0; j != v10; ++j)
        {
          *(*(*(a1 + 608) + 24 * i) + j) = 0;
        }
      }
    }
  }

  v16 = *(v9 + 64);
  if (*(v9 + 72) == v16)
  {
    goto LABEL_32;
  }

  v17 = 0;
  v18 = 0;
  v19 = vsub_f32(v12, v13);
  do
  {
    v20 = (v16 + 32 * v18);
    LODWORD(a9) = *(a1 + 288);
    v21 = vdup_lane_s32(*&a9, 0);
    v22 = vcvt_s32_f32(vrndm_f32(vdiv_f32(vsub_f32(v20[2], v19), v21)));
    v23 = vcvt_s32_f32(vrndp_f32(vdiv_f32(vsub_f32(v20[3], v19), v21)));
    v24 = vcgt_s32(0x200000002, vsub_s32(v23, v22));
    if (v24.i32[0] & v24.i32[1])
    {
      *(*(*(a1 + 608) + 24 * (*(a1 + 76) + v22.i32[1])) + (*(a1 + 76) + v22.i32[0])) = 1;
      ++v17;
    }

    else if (v24.i8[0])
    {
      v25 = v22.i32[1] + 1;
      if (v22.i32[1] + 1 < v23.i32[1])
      {
        v26 = floorf((v20->f32[0] - v19.f32[0]) / *&a9);
        do
        {
          *(*(*(a1 + 608) + 24 * (*(a1 + 76) + v25)) + (*(a1 + 76) + v26)) = 1;
          *(*(*(a1 + 608) + 24 * ((*(a1 + 76) + v25) + -1.0)) + (*(a1 + 76) + v26)) = 1;
          v17 += 2;
          ++v25;
        }

        while (v23.i32[1] != v25);
      }
    }

    else if (v24.i8[4])
    {
      v27 = v22.i32[0] + 1;
      if (v22.i32[0] + 1 < v23.i32[0])
      {
        v28 = floorf((v20->f32[1] - v19.f32[1]) / *&a9);
        do
        {
          *(*(*(a1 + 608) + 24 * (*(a1 + 76) + v28)) + (*(a1 + 76) + v27)) = 1;
          *(*(*(a1 + 608) + 24 * (*(a1 + 76) + v28)) + ((*(a1 + 76) + v27) + -1.0)) = 1;
          v17 += 2;
          ++v27;
        }

        while (v23.i32[0] != v27);
      }
    }

    else
    {
      v29 = v20->f32[1];
      v30 = (v20[1].f32[1] - v29) / (v20[1].f32[0] - v20->f32[0]);
      v31 = v29 - (v20->f32[0] * v30);
      if (fabsf(v30) >= 1.0)
      {
        v35 = v22.i32[1] + 1;
        if (v22.i32[1] + 1 < v23.i32[1])
        {
          do
          {
            *v23.i32 = floorf(((((v19.f32[1] + (v35 * *(a1 + 288))) - v31) / v30) - v19.f32[0]) / *(a1 + 288));
            *(*(*(a1 + 608) + 24 * (*(a1 + 76) + v35)) + (*(a1 + 76) + *v23.i32)) = 1;
            *(*(*(a1 + 608) + 24 * ((*(a1 + 76) + v35) + -1.0)) + (*(a1 + 76) + *v23.i32)) = 1;
            v17 += 2;
            ++v35;
          }

          while (v23.i32[1] != v35);
        }
      }

      else
      {
        v32 = v22.i32[0] + 1;
        v33 = v23.i32[0];
        if (v22.i32[0] + 1 < v23.i32[0])
        {
          do
          {
            v34 = floorf(((v31 + (v30 * (v19.f32[0] + (v32 * *(a1 + 288))))) - v19.f32[1]) / *(a1 + 288));
            *(*(*(a1 + 608) + 24 * (*(a1 + 76) + v34)) + (*(a1 + 76) + v32)) = 1;
            *(*(*(a1 + 608) + 24 * (*(a1 + 76) + v34)) + ((*(a1 + 76) + v32) + -1.0)) = 1;
            v17 += 2;
            ++v32;
          }

          while (v33 != v32);
        }
      }
    }

    ++v18;
    v16 = *(v9 + 64);
  }

  while (v18 < (*(v9 + 72) - v16) >> 5);
  if (!v17)
  {
LABEL_32:
    v36 = *(a1 + 76);
    if (v10 != 2 * v36 && v11 != 2 * v36)
    {
      return 0;
    }
  }

  else
  {
    v36 = *(a1 + 76);
  }

  sub_24BDE6A0C(a1, a2, a3, v36);
  return 1;
}

void sub_24BDE5768(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, char a8)
{
  v12 = *MEMORY[0x277D85DE8];
  v10 = a5;
  v11 = a4;
  v8 = a7;
  v9 = a6;
  operator new();
}

void sub_24BDE58E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  sub_24BDB73F4(va);
  sub_24BDB73F4(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_24BDE5910(uint64_t a1, unsigned int a2)
{
  sub_24BDE5FB8(a1, a2);
  result = sub_24BDE6104(a1);
  if (!result)
  {
    return result;
  }

  v5 = *(a1 + 680) + 232 * a2 + 72 * *(a1 + 192);
  v7 = *(v5 + 16);
  v6 = (v5 + 16);
  v8 = *(a1 + 212);
  v9 = (v8 / 180.0);
  v10 = v9 * 3.14159265;
  v11 = __sincosf_stret(v10);
  v12 = v6[1];
  *v6 = ((v11.__cosval * v7) + 0.0) - (v11.__sinval * v12);
  v6[1] = ((v11.__sinval * v7) + 0.0) + (v11.__cosval * v12);
  v13 = v6[10] + v9 * 3.14159265;
  v14 = __sincosf_stret(v13);
  v64[0] = LODWORD(v14.__cosval);
  v64[1] = LODWORD(v14.__sinval);
  v66 = -v14.__sinval;
  cosval = v14.__cosval;
  v65 = 0;
  v68 = 0;
  v69 = 0;
  v70 = xmmword_24BFBD1C0;
  v71 = 0x3F80000000000000;
  v59 = 1065353216;
  v60 = 0uLL;
  *v61 = 1065353216;
  *&v61[4] = 0;
  *&v61[12] = 0;
  *&v61[20] = 1065353216;
  *v63 = 0;
  v62 = 0;
  *&v63[8] = 1065353216;
  *(a1 + 184) = *(a1 + 220);
  if (v8 > 179)
  {
    if (v8 == 180)
    {
      v39 = *(a1 + 180);
      v40 = *(a1 + 176);
      if (v40 >= v39)
      {
        v41 = *(a1 + 172);
      }

      else
      {
        v41 = *(a1 + 172);
        do
        {
          v42 = *(a1 + 168);
          if (v42 < v41)
          {
            v43 = ~v42;
            do
            {
              v44 = *(*(a1 + 584) + 24 * v40);
              if (*(v44 + v42) != 1)
              {
                v45 = *(*(*(a1 + 224) + 24 * (*(a1 + 180) + ~v40)) + v41 + v43);
                if (v45)
                {
                  *(v44 + v42) = v45;
                  v41 = *(a1 + 172);
                }
              }

              ++v42;
              --v43;
            }

            while (v42 < v41);
            v39 = *(a1 + 180);
          }

          ++v40;
        }

        while (v40 < v39);
      }

      v29 = *(a1 + 288);
      v30 = v6[1];
      v31 = -(*v6 - (v29 * v41));
      v32 = v39;
    }

    else
    {
      if (v8 != 270)
      {
        goto LABEL_56;
      }

      v22 = *(a1 + 180);
      v23 = *(a1 + 176);
      if (v23 < v22)
      {
        v24 = *(a1 + 172);
        do
        {
          v25 = *(a1 + 168);
          if (v25 < v24)
          {
            v26 = 24 * v25;
            do
            {
              v27 = *(*(a1 + 584) + 24 * v23);
              if (*(v27 + v25) != 1)
              {
                v28 = *(*(*(a1 + 224) - 24 * *(a1 + 168) + v26) + *(a1 + 180) + ~v23);
                if (v28)
                {
                  *(v27 + v25) = v28;
                  v24 = *(a1 + 172);
                }
              }

              ++v25;
              v26 += 24;
            }

            while (v25 < v24);
            v22 = *(a1 + 180);
          }

          ++v23;
        }

        while (v23 < v22);
      }

      v29 = *(a1 + 288);
      v30 = v6[1];
      v31 = -(*v6 - (v29 * *(a1 + 168)));
      v32 = v22;
    }
  }

  else if (v8)
  {
    if (v8 != 90)
    {
      goto LABEL_56;
    }

    LODWORD(v15) = *(a1 + 176);
    v16 = *(a1 + 180);
    if (v15 >= v16)
    {
      v17 = *(a1 + 172);
    }

    else
    {
      v15 = v15;
      v17 = *(a1 + 172);
      do
      {
        v18 = *(a1 + 168);
        if (v18 < v17)
        {
          v19 = ~v18;
          do
          {
            v20 = *(*(a1 + 584) + 24 * v15);
            if (*(v20 + v18) != 1)
            {
              v21 = *(*(*(a1 + 224) + 24 * (v17 + v19)) + v15 - *(a1 + 176));
              if (v21)
              {
                *(v20 + v18) = v21;
                v17 = *(a1 + 172);
              }
            }

            ++v18;
            --v19;
          }

          while (v18 < v17);
          v16 = *(a1 + 180);
        }

        ++v15;
      }

      while (v15 < v16);
      LODWORD(v15) = *(a1 + 176);
    }

    v29 = *(a1 + 288);
    v30 = v6[1];
    v31 = -(*v6 - (v29 * v17));
    v32 = v15;
  }

  else
  {
    LODWORD(v33) = *(a1 + 176);
    v34 = *(a1 + 180);
    if (v33 < v34)
    {
      v33 = v33;
      v35 = *(a1 + 172);
      do
      {
        v36 = *(a1 + 168);
        if (v36 < v35)
        {
          do
          {
            v37 = *(*(a1 + 584) + 24 * v33);
            if (*(v37 + v36) != 1)
            {
              v38 = *(*(*(a1 + 224) + 24 * (v33 - *(a1 + 176))) - *(a1 + 168) + v36);
              if (v38)
              {
                *(v37 + v36) = v38;
                v35 = *(a1 + 172);
              }
            }

            ++v36;
          }

          while (v36 < v35);
          v34 = *(a1 + 180);
        }

        ++v33;
      }

      while (v33 < v34);
      LODWORD(v33) = *(a1 + 176);
    }

    v29 = *(a1 + 288);
    v30 = v6[1];
    v31 = -(*v6 - (v29 * *(a1 + 168)));
    v32 = v33;
  }

  v59 = 1065353216;
  v60 = 0uLL;
  *(&v62 + 1) = v31;
  *v63 = -(v30 - (v29 * v32));
  *&v61[16] = 0x3F80000000000000;
  *v61 = xmmword_24BFBD1C0;
  LODWORD(v62) = 0;
  *&v63[4] = 0x3F80000000000000;
LABEL_56:
  v46 = 0;
  v55 = xmmword_24BFED430;
  v56 = unk_24BFED440;
  v57 = xmmword_24BFED450;
  v58 = unk_24BFED460;
  v47 = &v59;
  do
  {
    v48 = 0;
    v49 = v64;
    do
    {
      v50 = 0;
      v51 = 0.0;
      do
      {
        v51 = v51 + (*&v47[v50 * 4] * *&v49[v50]);
        ++v50;
      }

      while (v50 != 4);
      *(&v55 + (v46 | (4 * v48++))) = v51;
      v49 += 4;
    }

    while (v48 != 4);
    ++v46;
    ++v47;
  }

  while (v46 != 4);
  v52 = (*(a1 + 728) + (a2 << 6));
  v53 = v56;
  *v52 = v55;
  v52[1] = v53;
  v54 = v58;
  v52[2] = v57;
  v52[3] = v54;
  return sub_24BDE61F8(a1, *(a1 + 216));
}

uint64_t sub_24BDE5DD0(uint64_t result, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, uint64_t a10)
{
  v43 = result;
  v47 = a3;
  v10 = a8 - a7;
  v11 = a8 - a9;
  if (a8 - a7 >= a9 && v11 >= a7)
  {
    v41 = result + 24 * a3;
    v15 = *(result + 76);
    v16 = a9 - v15;
    v17 = v15;
    v18 = v10;
    v19 = a3 & 0xFFFFFFFD;
    v40 = a6 + a5;
    v20 = v10 / a6;
    v21 = a7;
    v22 = v11 + 1;
    v23 = 4 * a7 + 4 * v15;
    v39 = *a2 + 4 * v15;
    v38 = v15 + 1;
    v24 = a6 / v10;
    do
    {
      v25 = 0;
      if (v16 <= v17)
      {
        v29 = 100000000;
      }

      else
      {
        v26 = (*(v41 + 296) + v23);
        v27 = v38;
        v28 = v39;
        v29 = 100000000;
        do
        {
          v31 = *v26++;
          v30 = v31;
          v32 = *v28++;
          v33 = v32 + v30;
          v25 += v33;
          if (v33 < v29)
          {
            v29 = v33;
          }

          v34 = v27++;
        }

        while (v16 > v34);
      }

      v35 = v25 - v29 * a9;
      v45 = v35;
      v46 = v29;
      if (v29 <= a5)
      {
        v37 = (v40 - v29);
        if (v19)
        {
          v36 = v18 / v37;
        }

        else
        {
          v36 = v37 / v18;
        }

        v44 = v36;
      }

      else if (v19)
      {
        v44 = v20;
        v36 = v20;
      }

      else
      {
        v44 = v24;
        v36 = v24;
      }

      result = sub_24BDE28C4(a10, &v44, &v47, &v45, &v46);
      if (result)
      {
        *a10 = *(v43 + 188);
        *(a10 + 28) = v36;
        *(a10 + 8) = v35;
        *(a10 + 12) = v21;
        *(a10 + 16) = v29;
        *(a10 + 20) = a4;
        *(a10 + 24) = a3;
      }

      ++v21;
      v23 += 4;
    }

    while (v22 != v21);
  }

  return result;
}

uint64_t sub_24BDE5FB8(uint64_t result, unsigned int a2)
{
  v2 = *(result + 680) + 232 * a2 + 72 * *(result + 192);
  v3 = *(result + 216);
  if (v3 <= 1)
  {
    if (v3)
    {
      if (v3 != 1)
      {
        goto LABEL_22;
      }

      v4 = *(result + 204);
      *(result + 168) = *(result + 152) - *(result + 208);
    }

    else
    {
      *(result + 168) = *(result + 204);
      v8 = *(result + 212);
      if (v8 == 180 || v8 == 0)
      {
        v11 = *(v2 + 44);
      }

      else
      {
        v11 = *(v2 + 40);
      }

      v4 = *(result + 156) - v11 + *(result + 208);
    }

    goto LABEL_18;
  }

  if (v3 == 2)
  {
    v10 = *(result + 208);
    *(result + 168) = *(result + 204);
    v4 = *(result + 160) - v10;
LABEL_18:
    v12 = 176;
    goto LABEL_21;
  }

  if (v3 != 3)
  {
    goto LABEL_22;
  }

  *(result + 176) = *(result + 204);
  v5 = *(result + 212);
  if (v5 != 180 && v5)
  {
    v6 = *(result + 208) + *(result + 148);
    v7 = *(v2 + 44);
  }

  else
  {
    v6 = *(result + 208) + *(result + 148);
    v7 = *(v2 + 40);
  }

  v4 = v6 - v7;
  v12 = 168;
LABEL_21:
  *(result + v12) = v4;
LABEL_22:
  v13 = *(result + 212);
  if (v13 <= 179)
  {
    if (v13)
    {
      if (v13 != 90)
      {
        return result;
      }

      goto LABEL_30;
    }

    goto LABEL_28;
  }

  if (v13 == 270)
  {
LABEL_30:
    v14 = *(result + 168);
    v17 = v2 + 40;
    v15 = *(v2 + 40);
    v16 = *(v17 + 4);
    goto LABEL_31;
  }

  if (v13 == 180)
  {
LABEL_28:
    v14 = *(result + 168);
    v16 = *(v2 + 40);
    v15 = *(v2 + 44);
LABEL_31:
    *(result + 172) = v16 + v14;
    *(result + 180) = v15 + *(result + 176);
  }

  return result;
}

uint64_t sub_24BDE6104(uint64_t a1)
{
  v1 = *(a1 + 168);
  v2 = *(a1 + 172);
  if (v1 >= *(a1 + 148))
  {
    v1 = *(a1 + 148);
  }

  v3 = *(a1 + 176);
  if (v3 >= *(a1 + 156))
  {
    v3 = *(a1 + 156);
  }

  if (v2 <= *(a1 + 152))
  {
    v2 = *(a1 + 152);
  }

  if (*(a1 + 180) <= *(a1 + 160))
  {
    v4 = *(a1 + 160);
  }

  else
  {
    v4 = *(a1 + 180);
  }

  v5 = *(a1 + 76);
  v6 = ((v2 - v1) + (v5 * -2.0));
  v7 = ((v4 - v3) + (v5 * -2.0));
  v8 = **(a1 + 48);
  if (v8 < v6)
  {
    *(a1 + 124) = 1;
    if (*(a1 + 72) < 0x1Eu)
    {
      *(a1 + 136) = v8 / v6;
      v9 = **(a1 + 56);
      goto LABEL_15;
    }

    return 0;
  }

  v9 = **(a1 + 56);
  v10 = 1;
  if (v9 >= v7)
  {
    return v10;
  }

  *(a1 + 124) = 1;
  if (*(a1 + 72) >= 0x1Eu)
  {
    return 0;
  }

LABEL_15:
  if (v9 >= v7)
  {
    v11 = *(a1 + 136);
  }

  else
  {
    v11 = v9 / v7;
  }

  v10 = 0;
  *(a1 + 136) = v11 * v11;
  return v10;
}

uint64_t sub_24BDE61F8(uint64_t result, int a2)
{
  LODWORD(v2) = *(result + 168);
  v3 = *(result + 172);
  v4 = *(result + 152);
  v5 = *(result + 148);
  if (v2 >= v5)
  {
    v6 = *(result + 148);
  }

  else
  {
    v6 = *(result + 168);
  }

  LODWORD(v7) = *(result + 176);
  v8 = *(result + 180);
  v9 = *(result + 160);
  v10 = *(result + 156);
  if (v7 >= v10)
  {
    v11 = *(result + 156);
  }

  else
  {
    v11 = *(result + 176);
  }

  if (v3 <= v4)
  {
    v12 = *(result + 152);
  }

  else
  {
    v12 = *(result + 172);
  }

  if (v8 <= v9)
  {
    v13 = *(result + 160);
  }

  else
  {
    v13 = *(result + 180);
  }

  if (a2 > 1)
  {
    if (a2 == 2)
    {
      if (v8 > v9)
      {
        if (v5 < v2)
        {
          v67 = *(result + 344);
          do
          {
            *(v67 + 4 * v5++) += *(result + 180) - *(result + 160);
          }

          while (v5 < *(result + 168));
          v3 = *(result + 172);
          v4 = *(result + 152);
          LODWORD(v2) = *(result + 168);
        }

        if (v3 < v4)
        {
          v68 = *(result + 344);
          v69 = v3;
          do
          {
            *(v68 + 4 * v69++) += *(result + 180) - *(result + 160);
          }

          while (v69 < *(result + 152));
          LODWORD(v2) = *(result + 168);
          v3 = *(result + 172);
        }
      }

      if (v2 < v3)
      {
        v70 = *(result + 344);
        v2 = v2;
        do
        {
          v71 = 24 * v13 - 24;
          v72 = v13;
          v73 = v13;
          while (v72 > v11)
          {
            --v72;
            --v73;
            v74 = *(*(*(result + 584) + v71) + v2);
            v71 -= 24;
            if (v74)
            {
              goto LABEL_127;
            }
          }

          v73 = v72;
LABEL_127:
          *(v70 + 4 * v2++) = v13 + ~v73;
        }

        while (v2 < *(result + 172));
      }

      v75 = *(result + 176);
      if (v75 < *(result + 180))
      {
        v76 = *(result + 368);
        v77 = *(result + 320);
        do
        {
          v78 = v6;
          v79 = v6;
          while (v78 < v12)
          {
            v80 = *(*(*(result + 584) + 24 * v75) + v78++);
            ++v79;
            if (v80)
            {
              goto LABEL_135;
            }
          }

          v79 = v78;
LABEL_135:
          *(v76 + 4 * v75) = v79 + ~v6;
          v81 = v12;
          v82 = v12;
          while (v81 > v6)
          {
            v83 = *(*(result + 584) + 24 * v75) + v81--;
            --v82;
            if (*(v83 - 1))
            {
              goto LABEL_140;
            }
          }

          v82 = v81;
LABEL_140:
          *(v77 + 4 * v75++) = v12 + ~v82;
        }

        while (v75 < *(result + 180));
      }
    }

    else if (a2 == 3)
    {
      if (v2 < v5)
      {
        if (v10 < v7)
        {
          v32 = *(result + 368);
          do
          {
            *(v32 + 4 * v10++) += *(result + 148) - *(result + 168);
            v7 = *(result + 176);
          }

          while (v10 < v7);
          v8 = *(result + 180);
          v9 = *(result + 160);
        }

        if (v8 < v9)
        {
          v33 = *(result + 368);
          v34 = v8;
          do
          {
            *(v33 + 4 * v34++) += *(result + 148) - *(result + 168);
          }

          while (v34 < *(result + 160));
          LODWORD(v7) = *(result + 176);
          v8 = *(result + 180);
        }
      }

      if (v7 < v8)
      {
        v35 = *(result + 368);
        v7 = v7;
        do
        {
          v36 = v6;
          v37 = v6;
          while (v36 < v12)
          {
            v38 = *(*(*(result + 584) + 24 * v7) + v36++);
            ++v37;
            if (v38)
            {
              goto LABEL_65;
            }
          }

          v37 = v36;
LABEL_65:
          *(v35 + 4 * v7++) = v37 + ~v6;
        }

        while (v7 < *(result + 180));
      }

      v39 = *(result + 168);
      if (v39 < *(result + 172))
      {
        v40 = *(result + 296);
        v41 = *(result + 344);
        do
        {
          v42 = 24 * v11;
          v43 = v11;
          v44 = v11;
          while (v43 < v13)
          {
            ++v43;
            ++v44;
            v45 = *(*(*(result + 584) + v42) + v39);
            v42 += 24;
            if (v45)
            {
              goto LABEL_73;
            }
          }

          v44 = v43;
LABEL_73:
          *(v40 + 4 * v39) = v44 + ~v11;
          v46 = 24 * v13 - 24;
          v47 = v13;
          v48 = v13;
          while (v47 > v11)
          {
            --v47;
            --v48;
            v49 = *(*(*(result + 584) + v46) + v39);
            v46 -= 24;
            if (v49)
            {
              goto LABEL_78;
            }
          }

          v48 = v47;
LABEL_78:
          *(v41 + 4 * v39++) = v13 + ~v48;
        }

        while (v39 < *(result + 172));
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      if (v3 > v4)
      {
        if (v10 < v7)
        {
          v14 = *(result + 320);
          do
          {
            *(v14 + 4 * v10++) += *(result + 172) - *(result + 152);
            v7 = *(result + 176);
          }

          while (v10 < v7);
          v8 = *(result + 180);
          v9 = *(result + 160);
        }

        if (v8 < v9)
        {
          v15 = *(result + 320);
          v16 = v8;
          do
          {
            *(v15 + 4 * v16++) += *(result + 172) - *(result + 152);
          }

          while (v16 < *(result + 160));
          LODWORD(v7) = *(result + 176);
          v8 = *(result + 180);
        }
      }

      if (v7 < v8)
      {
        v17 = *(result + 320);
        v7 = v7;
        do
        {
          v18 = v12;
          v19 = v12;
          while (v18 > v6)
          {
            v20 = *(*(result + 584) + 24 * v7) + v18--;
            --v19;
            if (*(v20 - 1))
            {
              goto LABEL_32;
            }
          }

          v19 = v18;
LABEL_32:
          *(v17 + 4 * v7++) = v12 + ~v19;
        }

        while (v7 < *(result + 180));
      }

      v21 = *(result + 168);
      if (v21 < *(result + 172))
      {
        v22 = *(result + 296);
        v23 = *(result + 344);
        do
        {
          v24 = 24 * v11;
          v25 = v11;
          v26 = v11;
          while (v25 < v13)
          {
            ++v25;
            ++v26;
            v27 = *(*(*(result + 584) + v24) + v21);
            v24 += 24;
            if (v27)
            {
              goto LABEL_40;
            }
          }

          v26 = v25;
LABEL_40:
          *(v22 + 4 * v21) = v26 + ~v11;
          v28 = 24 * v13 - 24;
          v29 = v13;
          v30 = v13;
          while (v29 > v11)
          {
            --v29;
            --v30;
            v31 = *(*(*(result + 584) + v28) + v21);
            v28 -= 24;
            if (v31)
            {
              goto LABEL_45;
            }
          }

          v30 = v29;
LABEL_45:
          *(v23 + 4 * v21++) = v13 + ~v30;
        }

        while (v21 < *(result + 172));
      }
    }
  }

  else
  {
    if (v7 < v10)
    {
      if (v5 < v2)
      {
        v50 = *(result + 296);
        do
        {
          *(v50 + 4 * v5++) += *(result + 156) - *(result + 176);
          v2 = *(result + 168);
        }

        while (v5 < v2);
        v3 = *(result + 172);
        v4 = *(result + 152);
      }

      if (v3 < v4)
      {
        v51 = *(result + 296);
        v52 = v3;
        do
        {
          *(v51 + 4 * v52++) += *(result + 156) - *(result + 176);
        }

        while (v52 < *(result + 152));
        LODWORD(v2) = *(result + 168);
        v3 = *(result + 172);
      }
    }

    if (v2 < v3)
    {
      v53 = *(result + 296);
      v2 = v2;
      do
      {
        v54 = 24 * v11;
        v55 = v11;
        v56 = v11;
        while (v55 < v13)
        {
          ++v55;
          ++v56;
          v57 = *(*(*(result + 584) + v54) + v2);
          v54 += 24;
          if (v57)
          {
            goto LABEL_96;
          }
        }

        v56 = v55;
LABEL_96:
        *(v53 + 4 * v2++) = v56 + ~v11;
      }

      while (v2 < *(result + 172));
    }

    v58 = *(result + 176);
    if (v58 < *(result + 180))
    {
      v59 = *(result + 368);
      v60 = *(result + 320);
      do
      {
        v61 = v6;
        v62 = v6;
        while (v61 < v12)
        {
          v63 = *(*(*(result + 584) + 24 * v58) + v61++);
          ++v62;
          if (v63)
          {
            goto LABEL_104;
          }
        }

        v62 = v61;
LABEL_104:
        *(v59 + 4 * v58) = v62 + ~v6;
        v64 = v12;
        v65 = v12;
        while (v64 > v6)
        {
          v66 = *(*(result + 584) + 24 * v58) + v64--;
          --v65;
          if (*(v66 - 1))
          {
            goto LABEL_109;
          }
        }

        v65 = v64;
LABEL_109:
        *(v60 + 4 * v58++) = v12 + ~v65;
      }

      while (v58 < *(result + 180));
    }
  }

  *(result + 148) = v6;
  *(result + 152) = v12;
  *(result + 156) = v11;
  *(result + 160) = v13;
  return result;
}

uint64_t sub_24BDE694C(uint64_t result, double a2, double a3, double a4, double a5)
{
  v5 = *(result + 656);
  v6 = *(result + 664);
  if (v5 < v6)
  {
    v7 = *(result + 704);
    v8 = *(result + 680);
    do
    {
      v9 = *(v7 + 4 * v5);
      if (*(v8 + 232 * v9 + 4) == 1)
      {
        v10 = (v8 + 48 + 232 * v9);
        v11 = 3;
        do
        {
          v12 = (result + 288);
          LODWORD(a5) = *(result + 288);
          v13 = *(v10 - 3);
          v14 = vsub_f32(*(v10 - 2), v13);
          v15 = vcvt_f32_s32(vmax_u32(vcvt_s32_f32(vrndp_f32(vdiv_f32(v14, vdup_lane_s32(*&a5, 0)))), 0x100000001));
          v16 = vmla_n_f32(vneg_f32(v14), v15, *&a5);
          v17 = vmul_f32(v16, 0x3F0000003F000000);
          *v10 = *&v17;
          v16.i32[0] = *(result + 76);
          v18 = vld1_dup_f32(v12);
          *(v10 - 4) = vsub_f32(vmls_lane_f32(v13, v18, v16, 0), v17);
          a5 = COERCE_DOUBLE(vcvt_s32_f32(vmla_n_f32(v15, 0x4000000040000000, *(result + 76))));
          *(v10 - 1) = a5;
          v10 += 9;
          --v11;
        }

        while (v11);
      }

      ++v5;
    }

    while (v5 != v6);
  }

  return result;
}

void *sub_24BDE6A0C(void *result, unsigned int a2, uint64_t a3, int a4)
{
  if (a4 >= 1)
  {
    v4 = 0;
    v6 = *(result[85] + 232 * a2 + 72 * a3 + 40);
    v5 = *(result[85] + 232 * a2 + 72 * a3 + 44);
    do
    {
      v7 = v4 + 1;
      if (v5)
      {
        v8 = 0;
        v9 = v4 + 2;
        do
        {
          if (v6)
          {
            v10 = 0;
            v11 = -1;
            do
            {
              if (v7 == *(*(result[76] + 24 * v8) + v10))
              {
                for (i = -1; i != 2; ++i)
                {
                  v13 = i + v8;
                  if (i + v8 >= 0 && 0xAAAAAAAAAAAAAAABLL * ((result[77] - result[76]) >> 3) > v13)
                  {
                    v14 = 3;
                    v15 = v11;
                    do
                    {
                      if ((v15 & 0x80000000) == 0)
                      {
                        v16 = *(result[76] + 24 * v13);
                        if (*(result[76] + 24 * v13 + 8) - v16 > v15 && !*(v16 + v15))
                        {
                          *(v16 + v15) = v9;
                        }
                      }

                      ++v15;
                      --v14;
                    }

                    while (v14);
                  }
                }
              }

              ++v10;
              ++v11;
            }

            while (v10 != v6);
          }

          ++v8;
        }

        while (v8 != v5);
      }

      v4 = v7;
    }

    while (v7 != a4);
  }

  return result;
}

float sub_24BDE6B0C(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 80);
  v4 = *(v3 + 4 * a2);
  if (*(a1 + 72) - 1 == a2)
  {
    v3 = (*(*(a1 + 32) + 160) - *(*(a1 + 32) + 152)) >> 2;
  }

  else
  {
    LODWORD(v3) = *(v3 + 4 * (a2 + 1));
  }

  v5 = 0.0;
  if (v3 > v4)
  {
    v6 = 12 * v4;
    for (i = v3 - v4; i; --i)
    {
      v8 = *(a1 + 32);
      v9 = (*(v8 + 56) + 16 * *(a1 + 116));
      v11 = *v9;
      v10 = v9[1];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v10);
        v8 = *(a1 + 32);
      }

      v12 = *(v11 + 40);
      v13 = (*(v8 + 80) + 16 * *(a1 + 104));
      v15 = *v13;
      v14 = v13[1];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v14);
        v16 = (*(*(a1 + 32) + 80) + 16 * *(a1 + 104));
        v18 = *v16;
        v17 = v16[1];
        v19 = (*(v15 + 40) + 8 * *(v12 + v6));
        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v17);
          v20 = (*(*(a1 + 32) + 80) + 16 * *(a1 + 104));
          v15 = *v20;
          v21 = v20[1];
          v22 = (*(v18 + 40) + 8 * *(v12 + v6 + 4));
          if (v21)
          {
            atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v21);
          }

          goto LABEL_15;
        }

        v15 = *v16;
      }

      else
      {
        v19 = (*(v15 + 40) + 8 * *(v12 + v6));
      }

      v22 = (*(v15 + 40) + 8 * *(v12 + v6 + 4));
LABEL_15:
      v23 = (*(v15 + 40) + 8 * *(v12 + v6 + 8));
      v5 = v5 + (fabsf(((*v22 - *v19) * (v23[1] - v19[1])) - ((v22[1] - v19[1]) * (*v23 - *v19))) * 0.5);
      v6 += 12;
    }
  }

  return v5;
}

_DWORD *sub_24BDE6CC8(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_24BDE8004(a1, a2);
  }

  else
  {
    *v3 = *a2;
    v3[1] = a2[1];
    v3[2] = a2[2];
    v3[3] = a2[3];
    v3[4] = a2[4];
    v3[5] = a2[5];
    v3[6] = a2[6];
    v3[7] = a2[7];
    result = v3 + 8;
  }

  *(a1 + 8) = result;
  return result;
}

void sub_24BDE6D48(void **a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 5)
  {
    if (!(a2 >> 59))
    {
      sub_24BCA3670(a1, a2);
    }

    sub_24BC8E01C();
  }
}

void sub_24BDE6E00(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BDE6E18(uint64_t a1, uint64_t a2)
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

uint64_t sub_24BDE6EB0(uint64_t a1, unint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  sub_24BDE6E18(v8, a1);
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v7 = a2 >> 1;
  if (!v9)
  {
    sub_24BCA1F3C();
  }

  (*(*v9 + 48))(v9, &v7, v4 + 4 * (a2 & 1), a1 + 40, v5 + 32 * a2);
  return sub_24BDE7950(v8);
}

uint64_t sub_24BDE6F90(uint64_t a1, int a2)
{
  v5 = *MEMORY[0x277D85DE8];
  sub_24BDB43C4(v4, a1);
  sub_24BDB44EC(v4, a2);
  return sub_24BDB73F4(v4);
}

void sub_24BDE7004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_24BDB73F4(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_24BDE7020(uint64_t **result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = result;
  v7 = result[1];
  v8 = result[2];
  if (0x34F72C234F72C235 * ((v8 - v7) >> 3) >= a2)
  {
    if (a2)
    {
      v13 = v7 + 232 * a2;
      do
      {
        v14 = 0;
        *v7 = 0;
        *(v7 + 4) = 0;
        *(v7 + 8) = 0;
        do
        {
          v15 = (v7 + v14);
          v15[6] = 0;
          v15[9] = 0;
          v15[10] = 0;
          v15[8] = 0;
          v15[3] = 0;
          v15[4] = 0;
          v14 += 72;
          v15[2] = 0;
        }

        while (v14 != 216);
        v7 += 232;
      }

      while (v7 != v13);
      v7 = v13;
    }

    result[1] = v7;
  }

  else
  {
    v9 = 0x34F72C234F72C235 * ((v7 - *result) >> 3);
    v10 = v9 + a2;
    if (v9 + a2 > 0x11A7B9611A7B961)
    {
      sub_24BC8E01C();
    }

    v11 = 0x34F72C234F72C235 * ((v8 - *result) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x8D3DCB08D3DCB0)
    {
      v12 = 0x11A7B9611A7B961;
    }

    else
    {
      v12 = v10;
    }

    v27 = result;
    if (v12)
    {
      sub_24BDE71FC(result, v12);
    }

    v16 = 232 * v9;
    v24 = 0;
    v25 = 232 * v9;
    *(&v26 + 1) = 0;
    v17 = 232 * v9;
    do
    {
      v18 = 0;
      *v17 = 0;
      *(v17 + 4) = 0;
      *(v17 + 8) = 0;
      do
      {
        v19 = (v17 + v18);
        v19[6] = 0;
        v19[9] = 0;
        v19[10] = 0;
        v19[8] = 0;
        v19[3] = 0;
        v19[4] = 0;
        v18 += 72;
        v19[2] = 0;
      }

      while (v18 != 216);
      v17 += 232;
    }

    while (v17 != 232 * v9 + 232 * a2);
    *&v26 = v16 + 232 * a2;
    v20 = result[1];
    v21 = v16 + *result - v20;
    sub_24BDE7258(result, *result, v20, v21, a5);
    v22 = *v6;
    *v6 = v21;
    v23 = v6[2];
    *(v6 + 1) = v26;
    *&v26 = v22;
    *(&v26 + 1) = v23;
    v24 = v22;
    v25 = v22;
    return sub_24BDE7550(&v24);
  }

  return result;
}

void sub_24BDE71E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_24BDE7550(va);
  _Unwind_Resume(a1);
}

void sub_24BDE71FC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x11A7B9611A7B962)
  {
    operator new();
  }

  sub_24BC8DFE8();
}

uint64_t sub_24BDE7258(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v19 = a4;
  v20 = a4;
  v17[0] = a1;
  v17[1] = &v19;
  v17[2] = &v20;
  v18 = 0;
  if (a2 == a3)
  {
    v18 = 1;
  }

  else
  {
    v5 = a4;
    v7 = a2;
    v8 = a2;
    do
    {
      v9 = 0;
      v10 = *v8;
      *(v5 + 8) = *(v8 + 2);
      *v5 = v10;
      do
      {
        v11 = v5 + v9 * 8;
        *(v11 + 16) = v8[v9 + 2];
        *(v11 + 20) = HIDWORD(v8[v9 + 2]);
        *(v11 + 24) = v8[v9 + 3];
        *(v11 + 28) = HIDWORD(v8[v9 + 3]);
        *(v11 + 32) = v8[v9 + 4];
        *(v11 + 36) = HIDWORD(v8[v9 + 4]);
        *(v11 + 40) = v8[v9 + 5];
        *(v11 + 48) = v8[v9 + 6];
        *(v11 + 52) = HIDWORD(v8[v9 + 6]);
        v12 = v8[v9 + 7];
        *(v11 + 64) = 0;
        v13 = (v5 + v9 * 8 + 64);
        *(v13 - 2) = v12;
        v13[1] = 0;
        v13[2] = 0;
        sub_24BDE73D4(v13, v8[v9 + 8], v8[v9 + 9], (v8[v9 + 9] - v8[v9 + 8]) >> 5);
        v9 += 9;
      }

      while (v9 != 27);
      v8 += 29;
      v5 = v20 + 232;
      v20 += 232;
    }

    while (v8 != a3);
    v18 = 1;
    while (v7 != a3)
    {
      for (i = 0; i != -27; i -= 9)
      {
        v15 = v7[i + 26];
        if (v15)
        {
          v7[i + 27] = v15;
          operator delete(v15);
        }
      }

      v7 += 29;
    }
  }

  return sub_24BDE74B0(v17);
}

void sub_24BDE73B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (v10)
  {
    sub_24BFB9488(v10 + 16, v9);
  }

  sub_24BDE74B0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_24BDE73D4(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BCA3634(result, a4);
  }

  return result;
}

void sub_24BDE742C(_Unwind_Exception *exception_object)
{
  *(v1 + 8) = v2;
  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *sub_24BDE7454(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  result = a4;
  while (a2 != a3)
  {
    *result = *a2;
    result[1] = a2[1];
    result[2] = a2[2];
    result[3] = a2[3];
    result[4] = a2[4];
    result[5] = a2[5];
    result[6] = a2[6];
    result[7] = a2[7];
    a2 += 8;
    result += 8;
  }

  return result;
}

uint64_t sub_24BDE74B0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_24BDE74E8(a1);
  }

  return a1;
}

void sub_24BDE74E8(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = 0;
    v4 = v1;
    v1 -= 232;
    do
    {
      v5 = *(v4 + v3 - 24);
      if (v5)
      {
        *(v4 + v3 - 16) = v5;
        operator delete(v5);
      }

      v3 -= 72;
    }

    while (v3 != -216);
  }
}

uint64_t sub_24BDE7550(uint64_t a1)
{
  sub_24BDE7588(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_24BDE7588(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 16); i != a2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 232;
    v5 = i - 24;
    v6 = -216;
    do
    {
      v7 = *v5;
      if (*v5)
      {
        *(v5 + 8) = v7;
        operator delete(v7);
      }

      v5 -= 72;
      v6 += 72;
    }

    while (v6);
  }
}

void sub_24BDE75FC(uint64_t *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (a2 <= (v4 - v3) >> 6)
  {
    if (a2)
    {
      v10 = &v3[4 * a2];
      v11 = a2 << 6;
      do
      {
        *v3 = xmmword_24BFED430;
        v3[1] = unk_24BFED440;
        v3[2] = xmmword_24BFED450;
        v3[3] = unk_24BFED460;
        v3 += 4;
        v11 -= 64;
      }

      while (v11);
      v3 = v10;
    }

    a1[1] = v3;
  }

  else
  {
    v5 = v3 - *a1;
    v6 = a2 + (v5 >> 6);
    if (v6 >> 58)
    {
      sub_24BC8E01C();
    }

    v7 = v5 >> 6;
    v8 = v4 - *a1;
    if (v8 >> 5 > v6)
    {
      v6 = v8 >> 5;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFC0)
    {
      v9 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v6;
    }

    v18 = a1;
    if (v9)
    {
      sub_24BCCB0AC(a1, v9);
    }

    v12 = (v7 << 6);
    __p = 0;
    v15 = v7 << 6;
    v17 = 0;
    v13 = a2 << 6;
    do
    {
      *v12 = xmmword_24BFED430;
      v12[1] = unk_24BFED440;
      v12[2] = xmmword_24BFED450;
      v12[3] = unk_24BFED460;
      v12 += 4;
      v13 -= 64;
    }

    while (v13);
    v16 = (v7 << 6) + (a2 << 6);
    sub_24BCCB014(a1, &__p);
    if (v16 != v15)
    {
      v16 += (v15 - v16 + 63) & 0xFFFFFFFFFFFFFFC0;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_24BDE7748(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_24BDE77F4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F96528;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_24BDE7824(uint64_t a1, int *a2, int *a3, _DWORD *a4, uint64_t a5)
{
  v6 = *(a1 + 8);
  v7 = *a2;
  v8 = *a3;
  if (*a2 == v8)
  {
    v9 = 1;
    goto LABEL_14;
  }

  v9 = 0;
  if (v8 > 1)
  {
    if (v8 != 2)
    {
      if (v8 != 3)
      {
        goto LABEL_14;
      }

      goto LABEL_9;
    }

LABEL_10:
    v10 = v7 - v8 == 1;
LABEL_11:
    v9 = v10;
    goto LABEL_14;
  }

  if (!v8)
  {
    goto LABEL_10;
  }

  if (v8 == 1)
  {
LABEL_9:
    v10 = v7 - v8 == -1;
    goto LABEL_11;
  }

LABEL_14:
  v11 = v8 - v7 + 6;
  v12 = v11 & 3;
  v14 = -v11;
  v13 = v14 < 0;
  v15 = v14 & 3;
  if (v13)
  {
    v16 = v12;
  }

  else
  {
    v16 = -v15;
  }

  v17 = 90 * v16;
  v18 = 28;
  if (((v7 - 1) & 0xFFFFFFFD) != 0)
  {
    v19 = 28;
  }

  else
  {
    v19 = 24;
  }

  v20 = *(a1 + 16);
  v21 = *(v20 + v19);
  if (((v7 - 1) & 0xFFFFFFFD) != 0)
  {
    v18 = 24;
  }

  v22 = *(v20 + v18);
  v23 = *a4 == 0;
  v24 = 160;
  if (*a4)
  {
    v25 = 160;
  }

  else
  {
    v25 = 152;
  }

  v26 = 156;
  if (*a4)
  {
    v27 = 156;
  }

  else
  {
    v27 = 148;
  }

  if (!v23)
  {
    v24 = 152;
    v26 = 148;
  }

  v10 = (v9 & 1) == 0;
  v28 = 392;
  if (!v10)
  {
    v28 = 488;
  }

  return sub_24BDE5DD0(v6, (v6 + v28 + 24 * v7), v8, v17, v21, *(v6 + v25) - *(v6 + v27), *(v6 + v26), *(v6 + v24), v22, a5);
}

uint64_t sub_24BDE7950(uint64_t a1)
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

__n128 sub_24BDE7A5C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F96570;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_24BDE7AA4(uint64_t result, int *a2)
{
  v2 = *a2;
  if (*a2 > 1)
  {
    if (v2 == 2)
    {
      v46 = *(result + 16);
      v47 = **(result + 8);
      if (v47 < *v46)
      {
        v48 = *(result + 40);
        v49 = *(*(result + 56) + 48);
        v51 = *(result + 24);
        v50 = *(result + 32);
        do
        {
          v52 = *v50;
          v53 = *v51;
          if (v53 >= *v50)
          {
            v54 = *v50;
          }

          else
          {
            v54 = *v51;
          }

          v55 = *(result + 48);
          v56 = 24 * v52 - 24;
          v57 = *v50;
          if (v48)
          {
            while (v57 > v53)
            {
              --v57;
              v58 = *(*(*v55 + v56) + v47);
              v56 -= 24;
              if (v58 == 1)
              {
                goto LABEL_60;
              }
            }
          }

          else
          {
            while (v57 > v53)
            {
              --v57;
              v59 = *(*(*v55 + v56) + v47);
              v56 -= 24;
              if (v59)
              {
LABEL_60:
                v54 = v57;
                break;
              }
            }
          }

          *(v49 + 4 * v47++) = v52 + ~v54;
        }

        while (v47 < *v46);
      }
    }

    else if (v2 == 3)
    {
      v18 = *(result + 32);
      v19 = **(result + 24);
      if (v19 < *v18)
      {
        v20 = *(result + 40);
        v21 = *(*(result + 56) + 72);
        v22 = *(result + 8);
        v23 = *(result + 16);
        do
        {
          v24 = *v23;
          if (*v23 <= *v22)
          {
            v24 = *v22;
          }

          v25 = *(result + 48);
          v26 = *v22;
          if (v20)
          {
            v27 = *v22;
            while (v24 != v27)
            {
              v28 = v27 + 1;
              v29 = *(*(*v25 + 24 * v19) + v27++);
              if (v29 == 1)
              {
                v24 = v28;
                break;
              }
            }
          }

          else
          {
            while (v24 != v26)
            {
              v30 = v26 + 1;
              if (*(*(*v25 + 24 * v19) + v26++))
              {
                v24 = v30;
                break;
              }
            }
          }

          *(v21 + 4 * v19++) = v24 + ~*v22;
        }

        while (v19 < *v18);
      }
    }
  }

  else if (v2)
  {
    if (v2 == 1)
    {
      v3 = *(result + 32);
      v4 = **(result + 24);
      if (v4 < *v3)
      {
        v5 = *(result + 40);
        v6 = *(*(result + 56) + 24);
        v8 = *(result + 8);
        v7 = *(result + 16);
        do
        {
          v9 = *v8;
          if (v9 >= *v7)
          {
            v10 = *v7;
          }

          else
          {
            v10 = *v8;
          }

          v11 = *(result + 48);
          v12 = *v7;
          if (v5)
          {
            v13 = *v7;
            while (v13 > v9)
            {
              v14 = v13 - 1;
              v15 = *(*(*v11 + 24 * v4) + v13-- - 1);
              if (v15 == 1)
              {
                v10 = v14;
                break;
              }
            }
          }

          else
          {
            while (v12 > v9)
            {
              v16 = v12 - 1;
              if (*(*(*v11 + 24 * v4) + v12-- - 1))
              {
                v10 = v16;
                break;
              }
            }
          }

          *(v6 + 4 * v4++) = *v7 + ~v10;
        }

        while (v4 < *v3);
      }
    }
  }

  else
  {
    v32 = *(result + 16);
    v33 = **(result + 8);
    if (v33 < *v32)
    {
      v34 = *(result + 40);
      v35 = **(result + 56);
      v36 = *(result + 24);
      v37 = *(result + 32);
      do
      {
        v38 = *v36;
        v39 = *v37;
        if (*v37 <= *v36)
        {
          v39 = *v36;
        }

        v40 = *(result + 48);
        v41 = 24 * v38;
        v42 = v39 - v38;
        v43 = *v36;
        if (v34)
        {
          while (v42)
          {
            v44 = *(*(*v40 + v41) + v33);
            v41 += 24;
            ++v43;
            --v42;
            if (v44 == 1)
            {
              goto LABEL_47;
            }
          }
        }

        else
        {
          while (v42)
          {
            v45 = *(*(*v40 + v41) + v33);
            v41 += 24;
            ++v43;
            --v42;
            if (v45)
            {
              goto LABEL_47;
            }
          }
        }

        v43 = v39;
LABEL_47:
        *(v35 + 4 * v33++) = v43 + ~v38;
      }

      while (v33 < *v32);
    }
  }

  return result;
}

uint64_t *sub_24BDE7DD4(void *a1, unsigned int *a2, _DWORD *a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (*&v4 <= v3)
    {
      v6 = v3 % v4.i32[0];
    }
  }

  else
  {
    v6 = (v4.i32[0] - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (*(v8 + 4) != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

_DWORD *sub_24BDE8004(void **a1, _DWORD *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 5;
  v6 = v5 + 1;
  if ((v5 + 1) >> 59)
  {
    sub_24BC8E01C();
  }

  v8 = a1[2] - v3;
  if (v8 >> 4 > v6)
  {
    v6 = v8 >> 4;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFE0)
  {
    v6 = 0x7FFFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    sub_24BCA3670(a1, v6);
  }

  v9 = (v4 - *a1) >> 5;
  v10 = (32 * v5);
  *v10 = *a2;
  v10[1] = a2[1];
  v10[2] = a2[2];
  v10[3] = a2[3];
  v10[4] = a2[4];
  v10[5] = a2[5];
  v10[6] = a2[6];
  v10[7] = a2[7];
  v11 = (32 * v5 - 32 * v9);
  sub_24BDE8134(a1, v3, v4, &v10[-8 * v9]);
  v12 = *a1;
  *a1 = v11;
  a1[1] = v10 + 8;
  a1[2] = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v10 + 8;
}

float sub_24BDE8134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (a2 != a3)
  {
    *a4 = *a2;
    *(a4 + 4) = *(a2 + 4);
    *(a4 + 8) = *(a2 + 8);
    *(a4 + 12) = *(a2 + 12);
    *(a4 + 16) = *(a2 + 16);
    *(a4 + 20) = *(a2 + 20);
    *(a4 + 24) = *(a2 + 24);
    result = *(a2 + 28);
    *(a4 + 28) = result;
    a2 += 32;
    a4 += 32;
  }

  return result;
}

uint64_t sub_24BDE818C(uint64_t result, unsigned int *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  while (1)
  {
    v9 = v10;
    v11 = a2 - v10;
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        v80 = *(a2 - 1);
        v81 = *v10;
        if (*(*(*a3 + 680) + 232 * v80) <= *(*(*a3 + 680) + 232 * *v10))
        {
          return result;
        }

        *v10 = v80;
LABEL_174:
        *(a2 - 1) = v81;
        return result;
      }

      goto LABEL_10;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {
      v88 = v10 + 1;
      v89 = v10[1];
      v90 = v10 + 2;
      v91 = v10[2];
      v92 = *v10;
      v93 = *(*a3 + 680);
      v94 = *(v93 + 232 * v89);
      v95 = *(v93 + 232 * v92);
      v96 = v91;
      v97 = *(v93 + 232 * v91);
      if (v94 <= v95)
      {
        if (v97 > v94)
        {
          *v88 = v91;
          *v90 = v89;
          v98 = v10;
          v99 = v10 + 1;
          result = v89;
          v91 = v89;
          if (v97 > v95)
          {
            goto LABEL_176;
          }

LABEL_178:
          v154 = *(a2 - 1);
          if (*(v93 + 232 * v154) > *(v93 + 232 * v91))
          {
            *v90 = v154;
            *(a2 - 1) = v89;
            v155 = *v90;
            v156 = *v88;
            v157 = *(v93 + 232 * v155);
            if (v157 > *(v93 + 232 * v156))
            {
              v10[1] = v155;
              v10[2] = v156;
              v158 = *v10;
              if (v157 > *(v93 + 232 * *v10))
              {
                *v10 = v155;
                v10[1] = v158;
              }
            }
          }

          return result;
        }
      }

      else
      {
        if (v97 > v94)
        {
          v98 = v10;
          v99 = v10 + 2;
          result = *v10;
          LODWORD(v89) = *v10;
          goto LABEL_176;
        }

        *v10 = v89;
        v10[1] = v92;
        v98 = v10 + 1;
        v99 = v10 + 2;
        result = v92;
        LODWORD(v89) = v92;
        if (v97 > v95)
        {
LABEL_176:
          *v98 = v96;
          *v99 = v92;
          v91 = result;
          goto LABEL_178;
        }
      }

      LODWORD(v89) = v91;
      goto LABEL_178;
    }

    if (v11 == 5)
    {

      return sub_24BDE8D38(v10, v10 + 1, v10 + 2, v10 + 3, a2 - 1, a3);
    }

LABEL_10:
    if (v11 <= 23)
    {
      if (a5)
      {
        if (v10 != a2)
        {
          v100 = v10 + 1;
          if (v10 + 1 != a2)
          {
            v101 = 0;
            v102 = *(*a3 + 680);
            v103 = v10;
            do
            {
              v105 = *v103;
              v104 = v103[1];
              v103 = v100;
              v106 = v105;
              v107 = *(v102 + 232 * v104);
              if (v107 > *(v102 + 232 * v105))
              {
                v108 = v101;
                while (1)
                {
                  *(v10 + v108 + 4) = v106;
                  if (!v108)
                  {
                    break;
                  }

                  v106 = *(v10 + v108 - 4);
                  v108 -= 4;
                  if (v107 <= *(v102 + 232 * v106))
                  {
                    v109 = (v10 + v108 + 4);
                    goto LABEL_124;
                  }
                }

                v109 = v10;
LABEL_124:
                *v109 = v104;
              }

              v100 = v103 + 1;
              v101 += 4;
            }

            while (v103 + 1 != a2);
          }
        }
      }

      else if (v10 != a2)
      {
        v146 = v10 + 1;
        if (v10 + 1 != a2)
        {
          v147 = *(*a3 + 680);
          do
          {
            v149 = *v9;
            v148 = v9[1];
            v9 = v146;
            v150 = v149;
            v151 = *(v147 + 232 * v148);
            if (v151 > *(v147 + 232 * v149))
            {
              v152 = v9;
              do
              {
                *v152 = v150;
                v150 = *(v152 - 2);
                --v152;
              }

              while (v151 > *(v147 + 232 * v150));
              *v152 = v148;
            }

            v146 = v9 + 1;
          }

          while (v9 + 1 != a2);
        }
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v110 = (v11 - 2) >> 1;
        v111 = *a3;
        v112 = v110;
        do
        {
          v113 = v112;
          if (v110 >= v112)
          {
            v114 = (2 * v112) | 1;
            v115 = &v10[v114];
            if (2 * v113 + 2 >= v11)
            {
              v116 = *(v111 + 680);
            }

            else
            {
              v116 = *(v111 + 680);
              if (*(v116 + 232 * *v115) > *(v116 + 232 * v115[1]))
              {
                ++v115;
                v114 = 2 * v113 + 2;
              }
            }

            v117 = &v10[v113];
            v118 = *v115;
            v119 = *v117;
            v120 = *(v116 + 232 * *v117);
            if (*(v116 + 232 * *v115) <= v120)
            {
              do
              {
                v121 = v115;
                *v117 = v118;
                if (v110 < v114)
                {
                  break;
                }

                v122 = 2 * v114;
                v114 = (2 * v114) | 1;
                v115 = &v10[v114];
                v123 = v122 + 2;
                if (v123 < v11 && *(v116 + 232 * *v115) > *(v116 + 232 * v115[1]))
                {
                  ++v115;
                  v114 = v123;
                }

                v118 = *v115;
                v117 = v121;
              }

              while (*(v116 + 232 * *v115) <= v120);
              *v121 = v119;
            }
          }

          v112 = v113 - 1;
        }

        while (v113);
        do
        {
          v124 = 0;
          v125 = *v10;
          v126 = *a3;
          v127 = v10;
          do
          {
            v128 = v127;
            v129 = &v127[v124];
            v127 = v129 + 1;
            v130 = 2 * v124;
            result = (2 * v124) | 1;
            v124 = result;
            v131 = v130 + 2;
            if (v131 < v11)
            {
              v133 = v129[2];
              v132 = v129 + 2;
              result = 232 * v133;
              if (*(*(v126 + 680) + 232 * *(v132 - 1)) > *(*(v126 + 680) + result))
              {
                v127 = v132;
                v124 = v131;
              }
            }

            *v128 = *v127;
          }

          while (v124 <= ((v11 - 2) >> 1));
          if (v127 == --a2)
          {
            *v127 = v125;
          }

          else
          {
            *v127 = *a2;
            *a2 = v125;
            v134 = (v127 - v10 + 4) >> 2;
            v135 = v134 < 2;
            v136 = v134 - 2;
            if (!v135)
            {
              v137 = v136 >> 1;
              v138 = &v10[v137];
              v139 = *v138;
              v140 = *v127;
              v141 = *(v126 + 680);
              v142 = *(v141 + 232 * *v127);
              if (*(v141 + 232 * *v138) > v142)
              {
                do
                {
                  v143 = v138;
                  *v127 = v139;
                  if (!v137)
                  {
                    break;
                  }

                  v137 = (v137 - 1) >> 1;
                  v138 = &v10[v137];
                  v139 = *v138;
                  v127 = v143;
                }

                while (*(v141 + 232 * *v138) > v142);
                *v143 = v140;
              }
            }
          }

          v135 = v11-- <= 2;
        }

        while (!v135);
      }

      return result;
    }

    v12 = &v10[v11 >> 1];
    v13 = v12;
    v14 = *(*a3 + 680);
    v15 = *(a2 - 1);
    v16 = *(v14 + 232 * v15);
    if (v11 >= 0x81)
    {
      v17 = *v12;
      v18 = *v10;
      v19 = *(v14 + 232 * *v12);
      v20 = *(v14 + 232 * *v10);
      if (v19 <= v20)
      {
        if (v16 > v19)
        {
          *v12 = v15;
          *(a2 - 1) = v17;
          v25 = *v10;
          if (*(v14 + 232 * *v12) > *(v14 + 232 * *v10))
          {
            *v10 = *v12;
            *v12 = v25;
          }
        }
      }

      else
      {
        if (v16 > v19)
        {
          *v10 = v15;
          goto LABEL_27;
        }

        *v10 = v17;
        *v12 = v18;
        v27 = *(a2 - 1);
        if (*(v14 + 232 * v27) > v20)
        {
          *v12 = v27;
LABEL_27:
          *(a2 - 1) = v18;
        }
      }

      v28 = v12 - 1;
      v29 = *(v12 - 1);
      v30 = v10[1];
      v31 = *(v14 + 232 * v29);
      v32 = *(v14 + 232 * v30);
      v33 = *(a2 - 2);
      v34 = *(v14 + 232 * v33);
      if (v31 <= v32)
      {
        if (v34 > v31)
        {
          *v28 = v33;
          *(a2 - 2) = v29;
          v35 = v10[1];
          if (*(v14 + 232 * *v28) > *(v14 + 232 * v35))
          {
            v10[1] = *v28;
            *v28 = v35;
          }
        }
      }

      else
      {
        if (v34 > v31)
        {
          v10[1] = v33;
          goto LABEL_39;
        }

        v10[1] = v29;
        *v28 = v30;
        v37 = *(a2 - 2);
        if (*(v14 + 232 * v37) > v32)
        {
          *v28 = v37;
LABEL_39:
          *(a2 - 2) = v30;
        }
      }

      v40 = v12[1];
      v38 = v12 + 1;
      v39 = v40;
      v41 = v10[2];
      v42 = *(v14 + 232 * v40);
      v43 = *(v14 + 232 * v41);
      v44 = *(a2 - 3);
      v45 = *(v14 + 232 * v44);
      if (v42 <= v43)
      {
        if (v45 > v42)
        {
          *v38 = v44;
          *(a2 - 3) = v39;
          v46 = v10[2];
          if (*(v14 + 232 * *v38) > *(v14 + 232 * v46))
          {
            v10[2] = *v38;
            *v38 = v46;
          }
        }
      }

      else
      {
        if (v45 > v42)
        {
          v10[2] = v44;
          goto LABEL_48;
        }

        v10[2] = v39;
        *v38 = v41;
        v47 = *(a2 - 3);
        if (*(v14 + 232 * v47) > v43)
        {
          *v38 = v47;
LABEL_48:
          *(a2 - 3) = v41;
        }
      }

      v48 = *v13;
      v49 = *v28;
      v50 = *(v14 + 232 * *v13);
      v51 = *(v14 + 232 * *v28);
      v52 = *v38;
      v53 = *(v14 + 232 * *v38);
      if (v50 <= v51)
      {
        if (v53 <= v50)
        {
          goto LABEL_56;
        }

        *v13 = v52;
        *v38 = v48;
        v38 = v13;
        v48 = v49;
        if (v53 <= v51)
        {
          v48 = v52;
          goto LABEL_56;
        }
      }

      else if (v53 <= v50)
      {
        *v28 = v48;
        *v13 = v49;
        v28 = v13;
        v48 = v52;
        if (v53 <= v51)
        {
          v48 = v49;
LABEL_56:
          v54 = *v10;
          *v10 = v48;
          *v13 = v54;
          goto LABEL_57;
        }
      }

      *v28 = v52;
      *v38 = v49;
      goto LABEL_56;
    }

    v21 = *v10;
    v22 = *v13;
    v23 = *(v14 + 232 * *v10);
    v24 = *(v14 + 232 * *v13);
    if (v23 <= v24)
    {
      if (v16 > v23)
      {
        *v10 = v15;
        *(a2 - 1) = v21;
        v26 = *v13;
        if (*(v14 + 232 * *v10) > *(v14 + 232 * *v13))
        {
          *v13 = *v10;
          *v10 = v26;
        }
      }

      goto LABEL_57;
    }

    if (v16 > v23)
    {
      *v13 = v15;
LABEL_36:
      *(a2 - 1) = v22;
      goto LABEL_57;
    }

    *v13 = v21;
    *v10 = v22;
    v36 = *(a2 - 1);
    if (*(v14 + 232 * v36) > v24)
    {
      *v10 = v36;
      goto LABEL_36;
    }

LABEL_57:
    --a4;
    v55 = *v10;
    if (a5)
    {
      v56 = *(v14 + 232 * v55);
LABEL_60:
      v57 = 0;
      do
      {
        v58 = v10[++v57];
      }

      while (*(v14 + 232 * v58) > v56);
      v59 = &v10[v57];
      v60 = a2;
      if (v57 == 1)
      {
        v60 = a2;
        do
        {
          if (v59 >= v60)
          {
            break;
          }

          v62 = *--v60;
        }

        while (*(v14 + 232 * v62) <= v56);
      }

      else
      {
        do
        {
          v61 = *--v60;
        }

        while (*(v14 + 232 * v61) <= v56);
      }

      if (v59 >= v60)
      {
        v69 = v59 - 1;
      }

      else
      {
        v63 = *v60;
        v64 = v58;
        v65 = &v10[v57];
        v66 = v60;
        do
        {
          *v65 = v63;
          *v66 = v64;
          do
          {
            v67 = v65[1];
            ++v65;
            v64 = v67;
          }

          while (*(v14 + 232 * v67) > v56);
          do
          {
            v68 = *--v66;
            v63 = v68;
          }

          while (*(v14 + 232 * v68) <= v56);
        }

        while (v65 < v66);
        v69 = v65 - 1;
      }

      if (v69 != v10)
      {
        *v10 = *v69;
      }

      *v69 = v55;
      if (v59 < v60)
      {
        goto LABEL_81;
      }

      v70 = sub_24BDE8F40(v10, v69, a3);
      v10 = v69 + 1;
      result = sub_24BDE8F40(v69 + 1, a2, a3);
      if (result)
      {
        a2 = v69;
        if (!v70)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v70)
      {
LABEL_81:
        result = sub_24BDE818C(v9, v69, a3, a4, a5 & 1);
        a5 = 0;
        v10 = v69 + 1;
      }
    }

    else
    {
      v56 = *(v14 + 232 * v55);
      if (*(v14 + 232 * *(v10 - 1)) > v56)
      {
        goto LABEL_60;
      }

      if (v56 <= *(v14 + 232 * *(a2 - 1)))
      {
        v72 = (v10 + 1);
        do
        {
          v10 = v72;
          if (v72 >= a2)
          {
            break;
          }

          v72 += 4;
        }

        while (v56 <= *(v14 + 232 * *v10));
      }

      else
      {
        do
        {
          v71 = v10[1];
          ++v10;
        }

        while (v56 <= *(v14 + 232 * v71));
      }

      v73 = a2;
      if (v10 < a2)
      {
        v73 = a2;
        do
        {
          v74 = *--v73;
        }

        while (v56 > *(v14 + 232 * v74));
      }

      if (v10 < v73)
      {
        v75 = *v10;
        v76 = *v73;
        do
        {
          *v10 = v76;
          *v73 = v75;
          do
          {
            v77 = v10[1];
            ++v10;
            v75 = v77;
          }

          while (v56 <= *(v14 + 232 * v77));
          do
          {
            v78 = *--v73;
            v76 = v78;
          }

          while (v56 > *(v14 + 232 * v78));
        }

        while (v10 < v73);
      }

      v79 = v10 - 1;
      if (v10 - 1 != v9)
      {
        *v9 = *v79;
      }

      a5 = 0;
      *v79 = v55;
    }
  }

  v81 = *v10;
  v82 = v10[1];
  v83 = *(*a3 + 680);
  v84 = *(v83 + 232 * v82);
  v85 = *(v83 + 232 * *v10);
  v86 = *(a2 - 1);
  v87 = *(v83 + 232 * v86);
  if (v84 > v85)
  {
    if (v87 <= v84)
    {
      *v10 = v82;
      v10[1] = v81;
      v153 = *(a2 - 1);
      if (*(v83 + 232 * v153) <= v85)
      {
        return result;
      }

      v10[1] = v153;
    }

    else
    {
      *v10 = v86;
    }

    goto LABEL_174;
  }

  if (v87 > v84)
  {
    v10[1] = v86;
    *(a2 - 1) = v82;
    v145 = *v10;
    v144 = v10[1];
    if (*(v83 + 232 * v144) > *(v83 + 232 * *v10))
    {
      *v10 = v144;
      v10[1] = v145;
    }
  }

  return result;
}

unsigned int *sub_24BDE8D38(unsigned int *result, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, uint64_t a6)
{
  v6 = *a2;
  v7 = *result;
  v8 = *(*a6 + 680);
  v9 = *(v8 + 232 * *a2);
  v10 = *(v8 + 232 * *result);
  v11 = *a3;
  v12 = *(v8 + 232 * *a3);
  if (v9 <= v10)
  {
    if (v12 <= v9)
    {
      v7 = *a3;
      goto LABEL_14;
    }

    *a2 = v11;
    *a3 = v6;
    v13 = *result;
    if (*(v8 + 232 * *a2) <= *(v8 + 232 * *result))
    {
      v7 = v6;
      v11 = v6;
      goto LABEL_14;
    }

    *result = *a2;
    *a2 = v13;
    v7 = *a3;
  }

  else
  {
    if (v12 <= v9)
    {
      *result = v6;
      *a2 = v7;
      v11 = *a3;
      if (*(v8 + 232 * *a3) <= v10)
      {
        v7 = *a3;
        goto LABEL_14;
      }

      *a2 = v11;
    }

    else
    {
      *result = v11;
    }

    *a3 = v7;
  }

  v11 = v7;
LABEL_14:
  if (*(v8 + 232 * *a4) > *(v8 + 232 * v7))
  {
    *a3 = *a4;
    *a4 = v11;
    v14 = *a2;
    if (*(v8 + 232 * *a3) > *(v8 + 232 * *a2))
    {
      *a2 = *a3;
      *a3 = v14;
      v15 = *result;
      if (*(v8 + 232 * *a2) > *(v8 + 232 * *result))
      {
        *result = *a2;
        *a2 = v15;
      }
    }
  }

  v16 = *a4;
  if (*(v8 + 232 * *a5) > *(v8 + 232 * *a4))
  {
    *a4 = *a5;
    *a5 = v16;
    v17 = *a3;
    if (*(v8 + 232 * *a4) > *(v8 + 232 * *a3))
    {
      *a3 = *a4;
      *a4 = v17;
      v18 = *a2;
      if (*(v8 + 232 * *a3) > *(v8 + 232 * *a2))
      {
        *a2 = *a3;
        *a3 = v18;
        v19 = *result;
        if (*(v8 + 232 * *a2) > *(v8 + 232 * *result))
        {
          *result = *a2;
          *a2 = v19;
        }
      }
    }
  }

  return result;
}

BOOL sub_24BDE8F40(unsigned int *a1, unsigned int *a2, uint64_t a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v5 = *a1;
      v6 = a1[1];
      v7 = *(*a3 + 680);
      v8 = *(v7 + 232 * v6);
      v9 = *(v7 + 232 * *a1);
      v10 = *(a2 - 1);
      v11 = *(v7 + 232 * v10);
      if (v8 <= v9)
      {
        if (v11 > v8)
        {
          a1[1] = v10;
          *(a2 - 1) = v6;
          v36 = *a1;
          v35 = a1[1];
          if (*(v7 + 232 * v35) > *(v7 + 232 * *a1))
          {
            *a1 = v35;
            a1[1] = v36;
          }
        }

        return 1;
      }

      if (v11 > v8)
      {
        *a1 = v10;
        goto LABEL_42;
      }

      *a1 = v6;
      a1[1] = v5;
      v46 = *(a2 - 1);
      if (*(v7 + 232 * v46) > v9)
      {
        a1[1] = v46;
        goto LABEL_42;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 == 5)
      {
        sub_24BDE8D38(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        return 1;
      }

      goto LABEL_13;
    }

    v22 = a1 + 1;
    v23 = a1[1];
    v24 = a1 + 2;
    v25 = a1[2];
    v26 = *a1;
    v27 = *(*a3 + 680);
    v28 = *(v27 + 232 * v23);
    v29 = *(v27 + 232 * *a1);
    v30 = v25;
    v31 = *(v27 + 232 * v25);
    if (v28 <= v29)
    {
      if (v31 > v28)
      {
        *v22 = v25;
        *v24 = v23;
        v32 = a1;
        v33 = a1 + 1;
        v34 = v23;
        v25 = v23;
        if (v31 <= v29)
        {
          goto LABEL_46;
        }

        goto LABEL_44;
      }
    }

    else
    {
      if (v31 > v28)
      {
        v32 = a1;
        v33 = a1 + 2;
        v34 = *a1;
        v23 = *a1;
LABEL_44:
        *v32 = v30;
        *v33 = v26;
        v25 = v34;
LABEL_46:
        v47 = *(a2 - 1);
        if (*(v27 + 232 * v47) > *(v27 + 232 * v25))
        {
          *v24 = v47;
          *(a2 - 1) = v23;
          v48 = *v24;
          v49 = *v22;
          v50 = *(v27 + 232 * v48);
          if (v50 > *(v27 + 232 * v49))
          {
            a1[1] = v48;
            a1[2] = v49;
            v51 = *a1;
            if (v50 > *(v27 + 232 * *a1))
            {
              *a1 = v48;
              a1[1] = v51;
            }
          }
        }

        return 1;
      }

      *a1 = v23;
      a1[1] = v26;
      v32 = a1 + 1;
      v33 = a1 + 2;
      v34 = v26;
      v23 = v26;
      if (v31 > v29)
      {
        goto LABEL_44;
      }
    }

    v23 = v25;
    goto LABEL_46;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v4 = *(a2 - 1);
    v5 = *a1;
    if (*(*(*a3 + 680) + 232 * v4) > *(*(*a3 + 680) + 232 * *a1))
    {
      *a1 = v4;
LABEL_42:
      *(a2 - 1) = v5;
      return 1;
    }

    return 1;
  }

LABEL_13:
  v13 = a1 + 2;
  v12 = a1[2];
  v14 = a1[1];
  v15 = *a1;
  v16 = *(*a3 + 680);
  v17 = *(v16 + 232 * v14);
  v18 = *(v16 + 232 * *a1);
  v19 = *(v16 + 232 * v12);
  if (v17 > v18)
  {
    v20 = a1;
    v21 = a1 + 2;
    if (v19 <= v17)
    {
      *a1 = v14;
      a1[1] = v15;
      v20 = a1 + 1;
      v21 = a1 + 2;
      if (v19 <= v18)
      {
        goto LABEL_26;
      }
    }

LABEL_25:
    *v20 = v12;
    *v21 = v15;
    goto LABEL_26;
  }

  if (v19 > v17)
  {
    a1[1] = v12;
    *v13 = v14;
    v20 = a1;
    v21 = a1 + 1;
    if (v19 > v18)
    {
      goto LABEL_25;
    }
  }

LABEL_26:
  v37 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v38 = 0;
  for (i = 12; ; i += 4)
  {
    v40 = *v37;
    v41 = *v13;
    v42 = *(v16 + 232 * *v37);
    if (v42 > *(v16 + 232 * v41))
    {
      v43 = i;
      while (1)
      {
        *(a1 + v43) = v41;
        v44 = v43 - 4;
        if (v43 == 4)
        {
          break;
        }

        v41 = *(a1 + v43 - 8);
        v43 -= 4;
        if (v42 <= *(v16 + 232 * v41))
        {
          v45 = (a1 + v44);
          goto LABEL_34;
        }
      }

      v45 = a1;
LABEL_34:
      *v45 = v40;
      if (++v38 == 8)
      {
        break;
      }
    }

    v13 = v37++;
    if (v37 == a2)
    {
      return 1;
    }
  }

  return v37 + 1 == a2;
}

void sub_24BDE92E4(uint64_t a1, void *a2, char **a3, _WORD *a4)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*a4)
  {
    v5 = *(a1 + 112) - *(a1 + 104);
    v6 = v5 >> 2;
    if (*a4 < (v5 >> 2))
    {
      sub_24BD51FA4();
    }

    v7 = (v5 >> 2);
    sub_24BC9A554(a2, v7);
    if (v6)
    {
      v8 = 0;
      do
      {
        *(*a2 + 4 * v8) = v8;
        ++v8;
      }

      while (v7 != v8);
    }
  }
}

void sub_24BDE9430(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, char a13)
{
  if (a12)
  {
    sub_24BC9EC78(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BDE9464(uint64_t a1, void *a2, _WORD *a3, unsigned int **a4)
{
  __p = 0;
  v59 = 0;
  v60 = 0;
  v8 = ((*(a1 + 112) - *(a1 + 104)) >> 2);
  sub_24BDAF1BC(&__p, v8);
  if (v8)
  {
    v9 = 0;
    v10 = v59;
    do
    {
      v11 = *(*a2 + 4 * v9);
      if (v10 >= v60)
      {
        v12 = (v10 - __p) >> 3;
        if ((v12 + 1) >> 61)
        {
          sub_24BC8E01C();
        }

        v13 = (v60 - __p) >> 2;
        if (v13 <= v12 + 1)
        {
          v13 = v12 + 1;
        }

        if (v60 - __p >= 0x7FFFFFFFFFFFFFF8)
        {
          v14 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v13;
        }

        if (v14)
        {
          sub_24BC91F60(&__p, v14);
        }

        v15 = (8 * v12);
        *v15 = v9 + (v11 << 32);
        v10 = (8 * v12 + 8);
        v16 = v15 - (v59 - __p);
        memcpy(v16, __p, v59 - __p);
        v17 = __p;
        __p = v16;
        v59 = v10;
        v60 = 0;
        if (v17)
        {
          operator delete(v17);
        }
      }

      else
      {
        *v10 = v9 + (v11 << 32);
        v10 += 8;
      }

      v59 = v10;
      ++v9;
    }

    while (v8 != v9);
  }

  else
  {
    v10 = v59;
  }

  v18 = 126 - 2 * __clz((v10 - __p) >> 3);
  if (v10 == __p)
  {
    v19 = 0;
  }

  else
  {
    v19 = v18;
  }

  sub_24BDEA044(__p, v10, v19, 1);
  a4[1] = *a4;
  v21 = *(a1 + 104);
  v20 = *(a1 + 112);
  if (v20 == v21)
  {
    v30.i64[0] = 0x7F0000007FLL;
    v30.i64[1] = 0x7F0000007FLL;
  }

  else
  {
    v22 = 0;
    v23.i64[0] = 0x80000000800000;
    v23.i64[1] = 0x80000000800000;
    v24 = vnegq_f32(v23);
    v25 = 1;
    do
    {
      v26 = (*(a1 + 8) + 16 * *(a1 + 176));
      v28 = *v26;
      v27 = v26[1];
      if (v27)
      {
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
        v52 = v24;
        v53 = v23;
        sub_24BC9EC78(v27);
        v24 = v52;
        v23 = v53;
        v21 = *(a1 + 104);
        v20 = *(a1 + 112);
      }

      v29 = *(*(v28 + 40) + 16 * v22);
      v24 = vminq_f32(v24, v29);
      v23 = vmaxq_f32(v23, v29);
      v22 = v25++;
    }

    while (v22 < (v20 - v21) >> 2);
    v30 = vsubq_f32(v23, v24);
  }

  v54 = v30;
  LOWORD(v4) = *a3;
  LOBYTE(v56) = 0;
  sub_24BC9FEFC(&v57, (v59 - __p) >> 3, &v56);
  v31 = __p;
  v32 = v59;
  if (v59 != __p)
  {
    v33 = 0;
    v34 = vmulq_f32(v54, v54);
    v34.i32[3] = 0;
    v35 = (sqrtf(vaddv_f32(*&vpaddq_f32(v34, v34))) / v4) * 0.5;
    do
    {
      v56 = *&v31[8 * v33];
      v36 = *a4;
      v37 = a4[1];
      while (v36 != v37)
      {
        v38 = v56;
        v39 = (*(a1 + 8) + 16 * *(a1 + 176));
        v41 = *v39;
        v40 = v39[1];
        if (v40)
        {
          atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v40);
          v42 = (*(a1 + 8) + 16 * *(a1 + 176));
          v44 = *v42;
          v43 = v42[1];
          v45 = *(*(v41 + 40) + 16 * v38);
          v46 = *v36;
          if (v43)
          {
            atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
            v55 = v45;
            sub_24BC9EC78(v43);
            v45 = v55;
          }

          v41 = v44;
        }

        else
        {
          v45 = *(*(v41 + 40) + 16 * v56);
          v46 = *v36;
        }

        v47 = vsubq_f32(v45, *(*(v41 + 40) + 16 * v46));
        v48 = vmulq_f32(v47, v47);
        v48.i32[3] = 0;
        if (sqrtf(vaddv_f32(*&vpaddq_f32(v48, v48))) < v35)
        {
          goto LABEL_40;
        }

        ++v36;
      }

      sub_24BCB4670(a4, &v56);
      *(v57 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
      if (*a3 <= (a4[1] - *a4))
      {
        goto LABEL_47;
      }

LABEL_40:
      ++v33;
      v31 = __p;
      v32 = v59;
    }

    while (v33 < (v59 - __p) >> 3);
  }

  if (v32 != v31)
  {
    v49 = 0;
    v50 = 0;
    do
    {
      v56 = *&v31[v49];
      if (((*(v57 + ((v50 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v50) & 1) == 0)
      {
        sub_24BCB4670(a4, &v56);
        if (*a3 <= (a4[1] - *a4))
        {
          break;
        }

        v31 = __p;
        v32 = v59;
      }

      ++v50;
      v49 += 8;
    }

    while (v50 < (v32 - v31) >> 3);
  }

LABEL_47:
  if (v57)
  {
    operator delete(v57);
  }

  if (__p)
  {
    v59 = __p;
    operator delete(__p);
  }
}

void sub_24BDE9858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BDE9A2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_24BDE9F90(&a22);
  if (a20)
  {
    sub_24BC9EC78(a20);
  }

  _Unwind_Resume(a1);
}

void sub_24BDE9A84(uint64_t a1, _WORD *a2, void *a3)
{
  v6 = (*(a1 + 112) - *(a1 + 104)) >> 2;
  v7 = 0;
  sub_24BC9FEFC(__p, v6, &v7);
  sub_24BDE9B10(a1, a2, __p, a3);
  if (__p[0])
  {
    operator delete(__p[0]);
  }
}

void sub_24BDE9AF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BDE9B10(uint64_t a1, _WORD *a2, void *a3, void *a4)
{
  sub_24BC836D4(&__p, "v:importance");
  LODWORD(v57[0]) = 0;
  v8 = sub_24BCCA8D0((a1 + 8), v57, &__p);
  if (v60 < 0)
  {
    operator delete(__p);
  }

  if (v8 == -1)
  {
    sub_24BDE9898(a1);
  }

  v9 = ((*(a1 + 112) - *(a1 + 104)) >> 2);
  sub_24BDEAFE8(&__p, v9);
  v10 = __p;
  if (v9)
  {
    v11 = 0;
    for (i = 0; i != v9; ++i)
    {
      LODWORD(v10[v11]) = i;
      v13 = (*(a1 + 8) + 16 * v8);
      v15 = *v13;
      v14 = v13[1];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v14);
      }

      v10 = __p;
      *(__p + v11 * 8 + 4) = *(*(v15 + 40) + 4 * i);
      ++v11;
    }
  }

  v16 = 126 - 2 * __clz(v59 - v10);
  if (v59 == v10)
  {
    v17 = 0;
  }

  else
  {
    v17 = v16;
  }

  sub_24BDEA044(v10, v59, v17, 1);
  a4[1] = *a4;
  v19 = *(a1 + 104);
  v18 = *(a1 + 112);
  if (v18 == v19)
  {
    v28.i64[0] = 0x7F0000007FLL;
    v28.i64[1] = 0x7F0000007FLL;
  }

  else
  {
    v20 = 0;
    v21.i64[0] = 0x80000000800000;
    v21.i64[1] = 0x80000000800000;
    v22 = vnegq_f32(v21);
    v23 = 1;
    do
    {
      v24 = (*(a1 + 8) + 16 * *(a1 + 176));
      v26 = *v24;
      v25 = v24[1];
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        v52 = v22;
        v53 = v21;
        sub_24BC9EC78(v25);
        v22 = v52;
        v21 = v53;
        v19 = *(a1 + 104);
        v18 = *(a1 + 112);
      }

      v27 = *(*(v26 + 40) + 16 * v20);
      v22 = vminq_f32(v22, v27);
      v21 = vmaxq_f32(v21, v27);
      v20 = v23++;
    }

    while (v20 < (v18 - v19) >> 2);
    v28 = vsubq_f32(v21, v22);
  }

  v54 = v28;
  LOWORD(v4) = *a2;
  LOBYTE(v56) = 0;
  sub_24BC9FEFC(v57, (v59 - __p) >> 3, &v56);
  v29 = __p;
  v30 = v59;
  if (v59 != __p)
  {
    v31 = 0;
    v32 = vmulq_f32(v54, v54);
    v32.i32[3] = 0;
    v33 = (sqrtf(vaddv_f32(*&vpaddq_f32(v32, v32))) / v4) * 0.3;
    do
    {
      v34 = LODWORD(v29[v31]);
      v56 = v34;
      v35 = *a4;
      v36 = a4[1];
      if (*a4 == v36)
      {
LABEL_31:
        if (((*(*a3 + ((v34 >> 3) & 0x1FFFFFF8)) >> v34) & 1) == 0)
        {
          sub_24BCB4670(a4, &v56);
          *(v57[0] + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
          if (*a2 <= ((a4[1] - *a4) >> 2))
          {
            goto LABEL_41;
          }
        }
      }

      else
      {
        while (1)
        {
          v37 = v56;
          v38 = (*(a1 + 8) + 16 * *(a1 + 176));
          v40 = *v38;
          v39 = v38[1];
          if (v39)
          {
            atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v39);
            v41 = (*(a1 + 8) + 16 * *(a1 + 176));
            v43 = *v41;
            v42 = v41[1];
            v44 = *(*(v40 + 40) + 16 * v37);
            v45 = *v35;
            if (v42)
            {
              atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
              v55 = v44;
              sub_24BC9EC78(v42);
              v44 = v55;
            }

            v40 = v43;
          }

          else
          {
            v44 = *(*(v40 + 40) + 16 * v56);
            v45 = *v35;
          }

          v46 = vsubq_f32(v44, *(*(v40 + 40) + 16 * v45));
          v47 = vmulq_f32(v46, v46);
          v47.i32[3] = 0;
          if (sqrtf(vaddv_f32(*&vpaddq_f32(v47, v47))) < v33)
          {
            break;
          }

          if (++v35 == v36)
          {
            v34 = v56;
            goto LABEL_31;
          }
        }
      }

      ++v31;
      v29 = __p;
      v30 = v59;
    }

    while (v31 < (v59 - __p) >> 3);
  }

  if (v30 != v29)
  {
    v48 = 0;
    v49 = 0;
    do
    {
      v50 = LODWORD(v29[v48]);
      v56 = v29[v48];
      if (((*(v57[0] + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v49) & 1) == 0 && ((*(*a3 + ((v50 >> 3) & 0x1FFFFFF8)) >> v50) & 1) == 0)
      {
        sub_24BCB4670(a4, &v56);
        if (*a2 <= ((a4[1] - *a4) >> 2))
        {
          break;
        }

        v29 = __p;
        v30 = v59;
      }

      ++v49;
      ++v48;
    }

    while (v49 < v30 - v29);
  }

LABEL_41:
  if (v57[0])
  {
    operator delete(v57[0]);
  }

  if (__p)
  {
    v59 = __p;
    operator delete(__p);
  }
}

void sub_24BDE9F44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BDE9F90(uint64_t a1)
{
  v2 = *(a1 + 232);
  if (v2)
  {
    *(a1 + 240) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 208);
  if (v3)
  {
    *(a1 + 216) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 184);
  if (v4)
  {
    *(a1 + 192) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 160);
  if (v5)
  {
    *(a1 + 168) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 136);
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *(a1 + 112);
  if (v7)
  {
    *(a1 + 120) = v7;
    operator delete(v7);
  }

  v8 = *(a1 + 88);
  if (v8)
  {
    *(a1 + 96) = v8;
    operator delete(v8);
  }

  v9 = *(a1 + 80);
  if (v9)
  {
    sub_24BC9EC78(v9);
  }

  sub_24BC9F10C(a1 + 24);
  v10 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v10;
    operator delete(v10);
  }

  return a1;
}

unint64_t sub_24BDEA044(unint64_t result, unint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
  while (2)
  {
    v8 = a2 - 1;
    v9 = v7;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v7 = v9;
          v10 = (a2 - v9) >> 3;
          if (v10 > 2)
          {
            switch(v10)
            {
              case 3:
                v114 = *v9;
                v113 = *(v9 + 8);
                v115 = HIDWORD(v113);
                v116 = HIDWORD(*v9);
                v117 = *(a2 - 1);
                v118 = HIDWORD(v117);
                if (v116 >= HIDWORD(v113))
                {
                  if (v115 >= v118)
                  {
                    return result;
                  }

                  *(v9 + 8) = v117;
                  *(a2 - 2) = v113;
                  v8 = (v9 + 12);
                  v158 = *(v9 + 12);
                  *(v9 + 12) = *(a2 - 1);
                  *(a2 - 1) = v158;
                  v159 = *v9;
                  v160 = *(v9 + 8);
                  if (HIDWORD(*v9) >= HIDWORD(v160))
                  {
                    return result;
                  }

                  *v9 = v160;
                  *(v9 + 8) = v159;
                  v119 = (v9 + 4);
                }

                else if (v115 >= v118)
                {
                  *(v9 + 4) = HIDWORD(v113);
                  *(v9 + 8) = v114;
                  *(v9 + 12) = v116;
                  *v9 = v113;
                  v167 = *(a2 - 1);
                  v168 = *(v9 + 8);
                  if (HIDWORD(v168) >= HIDWORD(v167))
                  {
                    return result;
                  }

                  *(v9 + 8) = v167;
                  *(a2 - 2) = v168;
                  v119 = (v9 + 12);
                }

                else
                {
                  *v9 = v117;
                  v119 = (v9 + 4);
                  *(a2 - 2) = v114;
                }

                v169 = *v119;
                *v119 = *v8;
                *v8 = v169;
                return result;
              case 4:

                return sub_24BDEAB5C(v9, (v9 + 8), (v9 + 16), (a2 - 1));
              case 5:
                result = sub_24BDEAB5C(v9, (v9 + 8), (v9 + 16), v9 + 24);
                v99 = *(a2 - 1);
                v100 = *(v9 + 24);
                if (HIDWORD(v100) < HIDWORD(v99))
                {
                  *(v9 + 24) = v99;
                  *(a2 - 2) = v100;
                  v101 = *(v9 + 28);
                  *(v9 + 28) = *(a2 - 1);
                  *(a2 - 1) = v101;
                  v102 = *(v9 + 16);
                  v103 = *(v9 + 24);
                  v104 = HIDWORD(v103);
                  if (HIDWORD(v103) > HIDWORD(v102))
                  {
                    *(v9 + 16) = v103;
                    *(v9 + 24) = v102;
                    v105 = *(v9 + 8);
                    v106 = *(v9 + 16);
                    if (HIDWORD(v105) < HIDWORD(v106))
                    {
                      *(v9 + 8) = v106;
                      *(v9 + 12) = v104;
                      *(v9 + 16) = v105;
                      v107 = *v9;
                      v108 = *(v9 + 8);
                      v109 = HIDWORD(*v9);
                      if (v109 < HIDWORD(v108))
                      {
                        *v9 = v108;
                        *(v9 + 4) = v104;
                        *(v9 + 8) = v107;
                        *(v9 + 12) = v109;
                      }
                    }
                  }
                }

                return result;
            }
          }

          else
          {
            if (v10 < 2)
            {
              return result;
            }

            if (v10 == 2)
            {
              v110 = *(a2 - 1);
              v111 = *v9;
              if (HIDWORD(*v9) < HIDWORD(v110))
              {
                *v9 = v110;
                *(a2 - 2) = v111;
                v112 = *(v9 + 4);
                *(v9 + 4) = *(a2 - 1);
                *(a2 - 1) = v112;
              }

              return result;
            }
          }

          if (v10 <= 23)
          {
            v120 = (v9 + 8);
            v122 = v9 == a2 || v120 == a2;
            if (a4)
            {
              if (!v122)
              {
                v123 = 0;
                v124 = v9;
                do
                {
                  v126 = *v124;
                  v125 = v124[1];
                  v124 = v120;
                  if (HIDWORD(v125) > HIDWORD(v126))
                  {
                    v127 = v123;
                    while (1)
                    {
                      v128 = v9 + v127;
                      v129 = *(v9 + v127 + 4);
                      *(v128 + 8) = v126;
                      *(v128 + 12) = v129;
                      if (!v127)
                      {
                        break;
                      }

                      v126 = *(v128 - 8);
                      v127 -= 8;
                      if (HIDWORD(v125) <= HIDWORD(v126))
                      {
                        v130 = (v9 + v127 + 8);
                        goto LABEL_141;
                      }
                    }

                    v130 = v9;
LABEL_141:
                    *v130 = v125;
                  }

                  ++v120;
                  v123 += 8;
                }

                while (v124 + 1 != a2);
              }
            }

            else if (!v122)
            {
              v161 = v9 + 12;
              do
              {
                v163 = *v7;
                v162 = *(v7 + 8);
                v7 = v120;
                if (HIDWORD(v162) > HIDWORD(v163))
                {
                  v164 = v161;
                  do
                  {
                    v165 = v164;
                    v166 = *(v164 - 2);
                    v164 -= 2;
                    *(v165 - 1) = v163;
                    *v165 = v166;
                    v163 = *(v165 - 5);
                  }

                  while (HIDWORD(v162) > HIDWORD(v163));
                  *(v164 - 1) = v162;
                }

                ++v120;
                v161 += 8;
              }

              while ((v7 + 8) != a2);
            }

            return result;
          }

          if (!a3)
          {
            if (v9 != a2)
            {
              v131 = (v10 - 2) >> 1;
              v132 = v131;
              do
              {
                v133 = v132;
                if (v131 >= v132)
                {
                  v134 = (2 * v132) | 1;
                  v135 = v9 + 8 * v134;
                  v136 = *v135;
                  if (2 * v133 + 2 < v10 && HIDWORD(*(v135 + 8)) < HIDWORD(v136))
                  {
                    v136 = *(v135 + 8);
                    v135 += 8;
                    v134 = 2 * v133 + 2;
                  }

                  v137 = (v9 + 8 * v133);
                  v138 = *v137;
                  v139 = HIDWORD(*v137);
                  if (v139 >= HIDWORD(v136))
                  {
                    LODWORD(v140) = *v135;
                    do
                    {
                      v141 = v137;
                      v137 = v135;
                      *v141 = v140;
                      v141[1] = *(v135 + 4);
                      if (v131 < v134)
                      {
                        break;
                      }

                      v142 = (2 * v134) | 1;
                      v135 = v9 + 8 * v142;
                      v134 = 2 * v134 + 2;
                      v140 = *v135;
                      if (v134 >= v10)
                      {
                        v134 = v142;
                      }

                      else
                      {
                        result = v135 + 8;
                        if (HIDWORD(*(v135 + 8)) >= HIDWORD(v140))
                        {
                          v134 = v142;
                        }

                        else
                        {
                          v140 = *(v135 + 8);
                          v135 += 8;
                        }
                      }
                    }

                    while (v139 >= HIDWORD(v140));
                    *v137 = v138;
                    v137[1] = v139;
                  }
                }

                v132 = v133 - 1;
              }

              while (v133);
              do
              {
                v143 = 0;
                v144 = *v9;
                v145 = v9;
                do
                {
                  v146 = &v145[2 * v143];
                  v147 = (v146 + 2);
                  v148 = (2 * v143) | 1;
                  v143 = 2 * v143 + 2;
                  if (v143 >= v10)
                  {
                    v143 = v148;
                  }

                  else if (v146[5] >= v146[3])
                  {
                    v143 = v148;
                  }

                  else
                  {
                    v147 = (v146 + 4);
                  }

                  *v145 = *v147;
                  v145[1] = *(v147 + 1);
                  v145 = v147;
                }

                while (v143 <= ((v10 - 2) >> 1));
                if (v147 == a2 - 1)
                {
                  *v147 = v144;
                }

                else
                {
                  *v147 = *(a2 - 2);
                  *(v147 + 1) = *(a2 - 1);
                  *(a2 - 1) = v144;
                  v149 = (v147 - v9 + 8) >> 3;
                  v150 = v149 < 2;
                  v151 = v149 - 2;
                  if (!v150)
                  {
                    v152 = v151 >> 1;
                    v153 = v9 + 8 * v152;
                    v154 = *v153;
                    v155 = *v147;
                    v156 = HIDWORD(*v147);
                    if (v156 < HIDWORD(*v153))
                    {
                      do
                      {
                        v157 = v147;
                        v147 = v153;
                        *v157 = v154;
                        *(v157 + 1) = *(v153 + 4);
                        if (!v152)
                        {
                          break;
                        }

                        v152 = (v152 - 1) >> 1;
                        v153 = v9 + 8 * v152;
                        v154 = *v153;
                      }

                      while (v156 < HIDWORD(*v153));
                      *v147 = v155;
                      *(v147 + 1) = v156;
                    }
                  }
                }

                --a2;
                v150 = v10-- <= 2;
              }

              while (!v150);
            }

            return result;
          }

          v11 = v9 + 8 * (v10 >> 1);
          v12 = v11;
          v13 = *(a2 - 1);
          v14 = HIDWORD(v13);
          if (v10 >= 0x81)
          {
            v15 = *v11;
            v16 = *v9;
            v17 = HIDWORD(*v11);
            v18 = HIDWORD(*v9);
            if (v18 >= v17)
            {
              if (v17 >= v14 || (*v11 = v13, *(a2 - 2) = v15, v26 = (v11 + 4), v25 = *(v11 + 4), *(v11 + 4) = *(a2 - 1), *(a2 - 1) = v25, v27 = *v9, HIDWORD(*v9) >= HIDWORD(*v11)))
              {
LABEL_29:
                v34 = v11 - 8;
                v35 = *(v11 - 8);
                v36 = *(v9 + 8);
                v37 = HIDWORD(v35);
                v38 = *(a2 - 2);
                v39 = HIDWORD(v38);
                if (HIDWORD(v36) >= HIDWORD(v35))
                {
                  if (v37 >= v39 || (*v34 = v38, *(a2 - 4) = v35, v42 = (v11 - 4), v41 = *(v11 - 4), *(v11 - 4) = *(a2 - 3), *(a2 - 3) = v41, v43 = *(v9 + 8), HIDWORD(v43) >= HIDWORD(*v34)))
                  {
LABEL_43:
                    v52 = *(v11 + 8);
                    v50 = (v11 + 8);
                    LODWORD(v51) = v52;
                    v53 = *(v9 + 16);
                    v54 = HIDWORD(v52);
                    v55 = *(a2 - 3);
                    v56 = HIDWORD(v55);
                    if (HIDWORD(v53) >= HIDWORD(v52))
                    {
                      if (v54 >= v56 || (*v50 = v55, *(a2 - 6) = v51, v59 = v50 + 1, v58 = v50[1], v50[1] = *(a2 - 5), *(a2 - 5) = v58, v51 = *v50, v60 = *(v9 + 16), v54 = HIDWORD(*v50), v54 <= HIDWORD(v60)))
                      {
LABEL_53:
                        v63 = *v12;
                        v64 = *v34;
                        v65 = HIDWORD(*v12);
                        v66 = HIDWORD(*v34);
                        if (v66 >= v65)
                        {
                          if (v65 >= v54)
                          {
LABEL_63:
                            v70 = *v9;
                            *v9 = v63;
                            *(v9 + 4) = v65;
                            *v12 = v70;
                            goto LABEL_64;
                          }

                          *v12 = v51;
                          *(v12 + 4) = v54;
                          v69 = (v12 + 4);
                          *v50 = v63;
                          v50[1] = v65;
                          v63 = *v12;
                          v54 = HIDWORD(*v12);
                          if (v66 >= v54)
                          {
                            v65 = HIDWORD(*v12);
                            goto LABEL_63;
                          }

                          *v34 = v63;
                          v67 = (v34 + 4);
                          *v12 = v64;
                        }

                        else
                        {
                          if (v65 >= v54)
                          {
                            *v12 = v64;
                            *(v12 + 4) = v66;
                            *v34 = v63;
                            *(v34 + 4) = v65;
                            v63 = *v12;
                            v66 = HIDWORD(*v12);
                            if (v66 >= v54)
                            {
                              v65 = HIDWORD(*v12);
                              goto LABEL_63;
                            }

                            *v12 = v51;
                            *v50 = v63;
                            v68 = v50 + 1;
                            v67 = (v12 + 4);
                          }

                          else
                          {
                            *v34 = v51;
                            v67 = (v34 + 4);
                            *v50 = v64;
                            v68 = v50 + 1;
                          }

                          v69 = v68;
                        }

                        *v67 = v54;
                        *v69 = v66;
                        LODWORD(v63) = *v12;
                        LODWORD(v65) = *(v12 + 4);
                        goto LABEL_63;
                      }

                      *(v9 + 16) = v51;
                      *v50 = v60;
                      v57 = (v9 + 20);
                    }

                    else
                    {
                      if (v54 >= v56)
                      {
                        *(v9 + 16) = v51;
                        *(v9 + 20) = v54;
                        *v50 = v53;
                        v57 = v50 + 1;
                        v61 = *(a2 - 3);
                        v51 = *v50;
                        v54 = HIDWORD(*v50);
                        if (v54 >= HIDWORD(v61))
                        {
                          goto LABEL_53;
                        }

                        *v50 = v61;
                        *(a2 - 6) = v51;
                      }

                      else
                      {
                        *(v9 + 16) = v55;
                        *(a2 - 6) = v53;
                        v57 = (v9 + 20);
                      }

                      v59 = a2 - 5;
                    }

                    v62 = *v57;
                    *v57 = *v59;
                    *v59 = v62;
                    v51 = *v50;
                    v54 = HIDWORD(*v50);
                    goto LABEL_53;
                  }

                  *(v9 + 8) = *v34;
                  *v34 = v43;
                  v40 = (v9 + 12);
                }

                else
                {
                  if (v37 >= v39)
                  {
                    *(v9 + 8) = v35;
                    *v34 = v36;
                    *(v11 - 4) = HIDWORD(v36);
                    v40 = (v11 - 4);
                    v47 = *(a2 - 2);
                    v48 = *v34;
                    if (HIDWORD(*v34) >= HIDWORD(v47))
                    {
                      goto LABEL_43;
                    }

                    *v34 = v47;
                    *(a2 - 4) = v48;
                  }

                  else
                  {
                    *(v9 + 8) = v38;
                    *(a2 - 4) = v36;
                    v40 = (v9 + 12);
                  }

                  v42 = a2 - 3;
                }

                v49 = *v40;
                *v40 = *v42;
                *v42 = v49;
                goto LABEL_43;
              }

              *v9 = *v11;
              v19 = (v9 + 4);
              *v11 = v27;
            }

            else
            {
              if (v17 >= v14)
              {
                *v9 = v15;
                *(v9 + 4) = v17;
                *v11 = v16;
                *(v11 + 4) = v18;
                v19 = (v11 + 4);
                v31 = *(a2 - 1);
                v32 = *v11;
                if (HIDWORD(*v11) >= HIDWORD(v31))
                {
                  goto LABEL_29;
                }

                *v11 = v31;
                *(a2 - 2) = v32;
              }

              else
              {
                *v9 = v13;
                v19 = (v9 + 4);
                *(a2 - 2) = v16;
              }

              v26 = a2 - 1;
            }

            v33 = *v19;
            *v19 = *v26;
            *v26 = v33;
            goto LABEL_29;
          }

          v20 = *v9;
          v21 = *v12;
          v22 = HIDWORD(*v9);
          v23 = HIDWORD(*v12);
          if (v23 >= v22)
          {
            if (v22 < v14)
            {
              *v9 = v13;
              *(a2 - 2) = v20;
              v28 = (v9 + 4);
              v29 = *(v9 + 4);
              *(v9 + 4) = *(a2 - 1);
              *(a2 - 1) = v29;
              v30 = *v12;
              if (HIDWORD(*v12) < HIDWORD(*v9))
              {
                *v12 = *v9;
                v24 = (v12 + 4);
                *v9 = v30;
LABEL_38:
                v46 = *v24;
                *v24 = *v28;
                *v28 = v46;
              }
            }
          }

          else
          {
            if (v22 < v14)
            {
              *v12 = v13;
              v24 = (v12 + 4);
              *(a2 - 2) = v21;
LABEL_37:
              v28 = a2 - 1;
              goto LABEL_38;
            }

            *v12 = v20;
            *(v12 + 4) = v22;
            *v9 = v21;
            *(v9 + 4) = v23;
            v24 = (v9 + 4);
            v44 = *(a2 - 1);
            v45 = *v9;
            if (HIDWORD(*v9) < HIDWORD(v44))
            {
              *v9 = v44;
              *(a2 - 2) = v45;
              goto LABEL_37;
            }
          }

LABEL_64:
          --a3;
          v71 = *v9;
          v72 = HIDWORD(*v9);
          if ((a4 & 1) != 0 || v72 < *(v9 - 4))
          {
            break;
          }

          if (*(a2 - 1) >= v72)
          {
            v89 = v9 + 8;
            do
            {
              v9 = v89;
              if (v89 >= a2)
              {
                break;
              }

              v90 = *(v89 + 4);
              v89 += 8;
            }

            while (v90 >= v72);
          }

          else
          {
            v87 = v9;
            do
            {
              v9 = v87 + 8;
              v88 = *(v87 + 12);
              v87 += 8;
            }

            while (v88 >= v72);
          }

          v91 = a2;
          if (v9 < a2)
          {
            v92 = a2;
            do
            {
              v91 = v92 - 1;
              v93 = *(v92-- - 1);
            }

            while (v93 < v72);
          }

          if (v9 < v91)
          {
            v94 = *v9;
            v95 = *v91;
            do
            {
              *v9 = v95;
              *v91 = v94;
              v96 = *(v9 + 4);
              *(v9 + 4) = *(v91 + 1);
              *(v91 + 1) = v96;
              do
              {
                v97 = *(v9 + 8);
                v9 += 8;
                v94 = v97;
              }

              while (v72 <= HIDWORD(v97));
              do
              {
                v98 = *--v91;
                v95 = v98;
              }

              while (v72 > HIDWORD(v98));
            }

            while (v9 < v91);
          }

          if (v9 - 8 != v7)
          {
            *v7 = *(v9 - 8);
            *(v7 + 4) = *(v9 - 4);
          }

          a4 = 0;
          *(v9 - 8) = v71;
        }

        v73 = 0;
        do
        {
          v74 = *(v9 + v73 + 8);
          v73 += 8;
        }

        while (v72 < HIDWORD(v74));
        v75 = v9 + v73;
        v76 = a2;
        if (v73 == 8)
        {
          v79 = a2;
          while (v75 < v79)
          {
            v77 = v79 - 1;
            v80 = *(v79-- - 1);
            if (v72 < v80)
            {
              goto LABEL_76;
            }
          }

          v77 = v79;
        }

        else
        {
          do
          {
            v77 = v76 - 1;
            v78 = *(v76-- - 1);
          }

          while (v72 >= v78);
        }

LABEL_76:
        if (v75 >= v77)
        {
          v9 = v75;
        }

        else
        {
          v81 = *v77;
          v9 = v75;
          v82 = v77;
          do
          {
            *v9 = v81;
            *v82 = v74;
            v83 = *(v9 + 4);
            *(v9 + 4) = *(v82 + 1);
            *(v82 + 1) = v83;
            do
            {
              v84 = *(v9 + 8);
              v9 += 8;
              LODWORD(v74) = v84;
            }

            while (v72 < HIDWORD(v84));
            do
            {
              v85 = *--v82;
              v81 = v85;
            }

            while (v72 >= HIDWORD(v85));
          }

          while (v9 < v82);
        }

        if (v9 - 8 != v7)
        {
          *v7 = *(v9 - 8);
          *(v7 + 4) = *(v9 - 4);
        }

        *(v9 - 8) = v71;
        *(v9 - 4) = v72;
        if (v75 >= v77)
        {
          break;
        }

LABEL_89:
        result = sub_24BDEA044(v7, (v9 - 8), a3, a4 & 1);
        a4 = 0;
      }

      v86 = sub_24BDEACA8(v7, (v9 - 8));
      result = sub_24BDEACA8(v9, a2);
      if (result)
      {
        break;
      }

      if (!v86)
      {
        goto LABEL_89;
      }
    }

    a2 = (v9 - 8);
    if (!v86)
    {
      continue;
    }

    return result;
  }
}

uint64_t *sub_24BDEAB5C(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v4 = *a2;
  v5 = *result;
  v6 = HIDWORD(*a2);
  v7 = *a3;
  v8 = HIDWORD(*a3);
  if (v6 <= HIDWORD(*result))
  {
    if (v6 < v8)
    {
      *a2 = v7;
      *a3 = v4;
      v11 = a2 + 4;
      v10 = *(a2 + 1);
      *(a2 + 1) = *(a3 + 1);
      *(a3 + 1) = v10;
      v12 = *result;
      if (HIDWORD(*result) < HIDWORD(*a2))
      {
        *result = *a2;
        v9 = result + 4;
        *a2 = v12;
LABEL_10:
        v14 = *v9;
        *v9 = *v11;
        *v11 = v14;
      }
    }
  }

  else
  {
    if (v6 < v8)
    {
      *result = v7;
      v9 = result + 4;
LABEL_9:
      *a3 = v5;
      v11 = a3 + 4;
      goto LABEL_10;
    }

    *result = v4;
    *a2 = v5;
    v9 = a2 + 4;
    v13 = *(result + 1);
    *(result + 1) = *(a2 + 1);
    *(a2 + 1) = v13;
    v5 = *a2;
    if (HIDWORD(*a2) < HIDWORD(*a3))
    {
      *a2 = *a3;
      goto LABEL_9;
    }
  }

  v15 = *a3;
  if (HIDWORD(*a3) < HIDWORD(*a4))
  {
    *a3 = *a4;
    *a4 = v15;
    v16 = *(a3 + 1);
    *(a3 + 1) = *(a4 + 4);
    *(a4 + 4) = v16;
    v17 = *a2;
    if (HIDWORD(*a2) < HIDWORD(*a3))
    {
      *a2 = *a3;
      *a3 = v17;
      v18 = *(a2 + 1);
      *(a2 + 1) = *(a3 + 1);
      *(a3 + 1) = v18;
      v19 = *result;
      if (HIDWORD(*result) < HIDWORD(*a2))
      {
        *result = *a2;
        *a2 = v19;
        v20 = *(result + 1);
        *(result + 1) = *(a2 + 1);
        *(a2 + 1) = v20;
      }
    }
  }

  return result;
}

BOOL sub_24BDEACA8(uint64_t a1, unint64_t *a2)
{
  v4 = (a2 - a1) >> 3;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v21 = *a1;
      v20 = *(a1 + 8);
      v22 = HIDWORD(v20);
      v23 = HIDWORD(*a1);
      v24 = *(a2 - 1);
      v25 = HIDWORD(v24);
      if (v23 >= HIDWORD(v20))
      {
        if (v22 >= v25)
        {
          return 1;
        }

        *(a1 + 8) = v24;
        *(a2 - 2) = v20;
        v27 = (a1 + 12);
        v37 = *(a1 + 12);
        *(a1 + 12) = *(a2 - 1);
        *(a2 - 1) = v37;
        v38 = *a1;
        v39 = *(a1 + 8);
        if (HIDWORD(*a1) >= HIDWORD(v39))
        {
          return 1;
        }

        *a1 = v39;
        *(a1 + 8) = v38;
        v26 = (a1 + 4);
      }

      else if (v22 >= v25)
      {
        *(a1 + 4) = HIDWORD(v20);
        *(a1 + 8) = v21;
        *(a1 + 12) = v23;
        *a1 = v20;
        v41 = *(a2 - 1);
        v42 = *(a1 + 8);
        if (HIDWORD(v42) >= HIDWORD(v41))
        {
          return 1;
        }

        *(a1 + 8) = v41;
        *(a2 - 2) = v42;
        v27 = a2 - 1;
        v26 = (a1 + 12);
      }

      else
      {
        *a1 = v24;
        v26 = (a1 + 4);
        *(a2 - 2) = v21;
        v27 = a2 - 1;
      }

      v43 = *v26;
      *v26 = *v27;
      *v27 = v43;
      return 1;
    }

    if (v4 != 4)
    {
      if (v4 == 5)
      {
        sub_24BDEAB5C(a1, (a1 + 8), (a1 + 16), a1 + 24);
        v8 = *(a2 - 1);
        v9 = *(a1 + 24);
        if (HIDWORD(v9) < HIDWORD(v8))
        {
          *(a1 + 24) = v8;
          *(a2 - 2) = v9;
          v10 = *(a1 + 28);
          *(a1 + 28) = *(a2 - 1);
          *(a2 - 1) = v10;
          v11 = *(a1 + 16);
          v12 = *(a1 + 24);
          v13 = HIDWORD(v12);
          if (HIDWORD(v12) > HIDWORD(v11))
          {
            *(a1 + 16) = v12;
            *(a1 + 24) = v11;
            v14 = *(a1 + 8);
            v15 = *(a1 + 16);
            if (HIDWORD(v14) < HIDWORD(v15))
            {
              *(a1 + 8) = v15;
              *(a1 + 12) = v13;
              *(a1 + 16) = v14;
              v16 = *a1;
              v17 = *(a1 + 8);
              v18 = HIDWORD(*a1);
              if (v18 < HIDWORD(v17))
              {
                *a1 = v17;
                *(a1 + 4) = v13;
                result = 1;
                *(a1 + 8) = v16;
                *(a1 + 12) = v18;
                return result;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_17;
    }

    sub_24BDEAB5C(a1, (a1 + 8), (a1 + 16), (a2 - 1));
    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 1);
    v6 = *a1;
    if (HIDWORD(*a1) < HIDWORD(v5))
    {
      *a1 = v5;
      *(a2 - 2) = v6;
      v7 = *(a1 + 4);
      *(a1 + 4) = *(a2 - 1);
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_17:
  v28 = (a1 + 16);
  v29 = *(a1 + 16);
  v30 = *a1;
  v31 = *(a1 + 8);
  v32 = HIDWORD(v31);
  v33 = HIDWORD(*a1);
  v34 = HIDWORD(v29);
  if (v33 < HIDWORD(v31))
  {
    if (v32 >= v34)
    {
      *(a1 + 4) = HIDWORD(v31);
      *(a1 + 8) = v30;
      *(a1 + 12) = v33;
      v35 = (a1 + 12);
      *a1 = v31;
      v44 = *(a1 + 8);
      if (v34 <= HIDWORD(v44))
      {
        goto LABEL_33;
      }

      *(a1 + 8) = v29;
      *(a1 + 16) = v44;
      v36 = (a1 + 20);
      v33 = HIDWORD(v44);
    }

    else
    {
      *a1 = v29;
      *(a1 + 16) = v30;
      v35 = (a1 + 4);
      v36 = (a1 + 20);
    }

    goto LABEL_32;
  }

  if (v32 < v34)
  {
    *(a1 + 8) = v29;
    v36 = (a1 + 12);
    *(a1 + 16) = v31;
    v40 = *(a1 + 8);
    if (v33 < HIDWORD(v40))
    {
      *a1 = v40;
      *(a1 + 8) = v30;
      v35 = (a1 + 4);
      v34 = HIDWORD(v40);
LABEL_32:
      *v35 = v34;
      *v36 = v33;
    }
  }

LABEL_33:
  v45 = (a1 + 24);
  if ((a1 + 24) == a2)
  {
    return 1;
  }

  v46 = 0;
  v47 = 0;
  while (1)
  {
    v48 = *v45;
    v49 = *v28;
    v50 = HIDWORD(*v45);
    if (v50 > HIDWORD(v49))
    {
      v51 = v46;
      while (1)
      {
        v52 = a1 + v51;
        v53 = *(a1 + v51 + 20);
        *(v52 + 24) = v49;
        *(v52 + 28) = v53;
        if (v51 == -16)
        {
          break;
        }

        v49 = *(v52 + 8);
        v51 -= 8;
        if (v50 <= HIDWORD(v49))
        {
          v54 = (a1 + v51 + 24);
          goto LABEL_41;
        }
      }

      v54 = a1;
LABEL_41:
      *v54 = v48;
      v54[1] = v50;
      if (++v47 == 8)
      {
        return v45 + 1 == a2;
      }
    }

    v28 = v45;
    v46 += 8;
    if (++v45 == a2)
    {
      return 1;
    }
  }
}

uint64_t *sub_24BDEAFE8(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_24BC91F24(a1, a2);
  }

  return a1;
}

void sub_24BDEB044(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BDEB060(void *result, int a2)
{
  v2 = *result;
  *v2 = xmmword_24BFED470;
  *(v2 + 16) = xmmword_24BFED480;
  *(v2 + 32) = xmmword_24BFED490;
  *(v2 + 48) = xmmword_24BFED4A0;
  *(v2 + 64) = xmmword_24BFED4B0;
  *(v2 + 80) = xmmword_24BFED4C0;
  *(v2 + 96) = xmmword_24BFED4D0;
  *(v2 + 112) = xmmword_24BFED4E0;
  *(v2 + 128) = xmmword_24BFED4F0;
  *(v2 + 144) = xmmword_24BFED500;
  *(v2 + 160) = xmmword_24BFED510;
  *(v2 + 176) = xmmword_24BFED520;
  *(v2 + 192) = xmmword_24BFED530;
  *(v2 + 208) = xmmword_24BFED540;
  *(v2 + 224) = xmmword_24BFED550;
  *(v2 + 240) = xmmword_24BFED560;
  *(v2 + 256) = xmmword_24BFED570;
  *(v2 + 272) = xmmword_24BFED580;
  *(v2 + 288) = xmmword_24BFED590;
  *(v2 + 304) = xmmword_24BFED5A0;
  *(v2 + 320) = xmmword_24BFED5B0;
  *(v2 + 336) = xmmword_24BFED5C0;
  *(v2 + 352) = xmmword_24BFED5D0;
  *(v2 + 368) = xmmword_24BFED5E0;
  *(v2 + 384) = xmmword_24BFED5F0;
  *(v2 + 400) = 0x1A00000019;
  v3 = *result;
  v4 = result[1];
  v5 = (*result + 408);
  *v5 = xmmword_24BFED600;
  v5[1] = xmmword_24BFED610;
  v5[2] = xmmword_24BFED620;
  v5[3] = xmmword_24BFED630;
  v5[4] = xmmword_24BFED640;
  v5[5] = xmmword_24BFED650;
  v5[6] = xmmword_24BFED660;
  v5[7] = xmmword_24BFED670;
  v5[8] = xmmword_24BFED680;
  v5[9] = xmmword_24BFED690;
  v5[10] = xmmword_24BFED6A0;
  v5[11] = xmmword_24BFED6B0;
  v5[12] = xmmword_24BFED6C0;
  v5[13] = xmmword_24BFED6D0;
  v5[14] = xmmword_24BFED6E0;
  v5[15] = xmmword_24BFED6F0;
  v5[16] = xmmword_24BFED700;
  v5[17] = xmmword_24BFED710;
  v5[18] = xmmword_24BFED720;
  v5[19] = xmmword_24BFED730;
  v5[20] = xmmword_24BFED740;
  v5[21] = xmmword_24BFED750;
  *(v3 + 760) = 0x2C0000002BLL;
  v6 = v4 - v3;
  if (v4 != v3)
  {
    v7 = 0;
    v8 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 2);
    if (v8 <= 1)
    {
      v8 = 1;
    }

    do
    {
      for (i = 0; i != 12; i += 4)
      {
        *(v3 + i) += a2;
      }

      ++v7;
      v3 += 12;
    }

    while (v7 != v8);
  }

  return result;
}

float sub_24BDEB2B0(uint64_t a1, unsigned int *a2, unsigned int *a3, unsigned int *a4)
{
  v6 = *a2;
  v7 = (*(a1 + 56) + 16 * *a3);
  v9 = *v7;
  v8 = v7[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v8);
  }

  v10 = *(v9 + 40);
  v11 = (*(a1 + 80) + 16 * *a4);
  v13 = *v11;
  v12 = v11[1];
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v12);
  }

  v14 = (v10 + 12 * v6);
  v15 = *(v13 + 40);
  v16 = (v15 + 8 * *v14);
  v17 = (v15 + 8 * v14[1]);
  v18 = (v15 + 8 * v14[2]);
  return fabsf((((*v17 - *v16) * (v18[1] - v16[1])) - ((v17[1] - v16[1]) * (*v18 - *v16))) * 0.5);
}

uint64_t sub_24BDEB37C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v56[0] = -1;
  sub_24BC836D4(v54, "f:imt");
  v52 = 0;
  v53 = 0;
  v6 = sub_24BCB6470((a1 + 56), &v52, v54);
  v56[0] = v6;
  if (v55 < 0)
  {
    operator delete(v54[0]);
    v6 = v56[0];
  }

  if (v6 == -1)
  {
    sub_24BC836D4(v54, "f:imt");
    sub_24BCB3C88(a1, v56, v54);
  }

  for (i = 0; ; ++i)
  {
    v8 = (*(a1 + 56) + 16 * v56[0]);
    v10 = *v8;
    v9 = v8[1];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v9);
    }

    if (i >= (*(*v10 + 16))(v10))
    {
      break;
    }

    v11 = (*(a1 + 56) + 16 * v56[0]);
    v13 = *v11;
    v12 = v11[1];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v12);
    }

    v14 = (*(v13 + 40) + 16 * i);
    *v14 = 0;
    v14[1] = 0;
  }

  sub_24BCA18B0(v54, 45 * ((*(a1 + 160) - *(a1 + 152)) >> 2));
  sub_24BCA18B0(&v52, 45 * ((*(a1 + 160) - *(a1 + 152)) >> 2));
  sub_24BCB2008(v51, 3uLL);
  if (*(a1 + 160) != *(a1 + 152))
  {
    v15 = 0;
    for (j = 0; j < (*(a1 + 160) - *(a1 + 152)) >> 2; ++j)
    {
      v49[0].i32[0] = j;
      sub_24BCD567C(a1, v49, v51);
      v17 = v51[0];
      v18 = *v51[0];
      v19 = (*(a1 + 8) + 16 * *(a1 + 176));
      v21 = *v19;
      v20 = v19[1];
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v20);
        v17 = v51[0];
        v22 = (*(a1 + 8) + 16 * *(a1 + 176));
        v24 = *v22;
        v23 = v22[1];
        v25 = *(*(v21 + 40) + 16 * v18);
        v26 = *(v51[0] + 1);
        v46 = v25;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v23);
          v27 = (*(a1 + 8) + 16 * *(a1 + 176));
          v21 = *v27;
          v28 = v27[1];
          v45 = *(*(v24 + 40) + 16 * v26);
          v29 = *(v51[0] + 2);
          if (v28)
          {
            atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v28);
          }

          goto LABEL_21;
        }

        v21 = *v22;
      }

      else
      {
        v46 = *(*(v21 + 40) + 16 * v18);
        v26 = *(v51[0] + 1);
      }

      v45 = *(*(v21 + 40) + 16 * v26);
      v29 = v17[2];
LABEL_21:
      v44 = *(*(v21 + 40) + 16 * v29);
      sub_24BD3FD60(a1, j, v49);
      v30 = 0;
      v31 = 0;
      v32.i64[0] = 0x3E0000003E000000;
      v32.i64[1] = 0x3E0000003E000000;
      v33 = vmulq_f32(vsubq_f32(v45, v46), v32);
      v34 = vmulq_f32(vsubq_f32(v44, v46), v32);
      do
      {
        v35 = 0;
        for (k = v30; k != -1; --k)
        {
          v37 = v15 + v31 + v35;
          *(v54[0] + v37) = vaddq_f32(vmulq_n_f32(v34, k), vaddq_f32(v46, vmulq_n_f32(v33, v35)));
          v52[v37] = v49[0];
          ++v35;
        }

        ++v30;
        v31 += v35;
      }

      while (v30 != 9);
      v15 += 45;
    }
  }

  sub_24BE243D0(a1);
  v39 = v38;
  v50 = 0;
  sub_24BE4784C(v49, a2, &v50, a3);
  if (sub_24BE47944(v49))
  {
    v40 = (*(a2 + 160) - *(a2 + 152)) >> 2;
    memset(v48, 0, sizeof(v48));
    memset(v47, 0, sizeof(v47));
    sub_24BE19C84(v54, &v52, v49, v40, v48, v47, v39);
  }

  if (v56[0] != -1)
  {
    v41 = (*(a1 + 56) + 16 * v56[0]);
    v42 = v41[1];
    *v41 = 0;
    v41[1] = 0;
    if (v42)
    {
      sub_24BC9EC78(v42);
    }
  }

  v56[0] = -1;
  sub_24BE47934(v49);
  if (v51[0])
  {
    v51[1] = v51[0];
    operator delete(v51[0]);
  }

  if (v52)
  {
    v53 = v52;
    operator delete(v52);
  }

  if (v54[0])
  {
    v54[1] = v54[0];
    operator delete(v54[0]);
  }

  return 0;
}

void sub_24BDEBB7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, void **a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a27)
  {
    operator delete(a27);
  }

  if (a30)
  {
    operator delete(a30);
  }

  if (a33)
  {
    operator delete(a33);
  }

  sub_24BE47934(&a36);
  v38 = v36[5];
  if (v38)
  {
    v36[6] = v38;
    operator delete(v38);
  }

  v39 = v36[8];
  if (v39)
  {
    v36[9] = v39;
    operator delete(v39);
  }

  v40 = v36[12];
  if (v40)
  {
    v36[13] = v40;
    operator delete(v40);
  }

  _Unwind_Resume(a1);
}

void sub_24BDEBC98(float32x4_t *a1, float *a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  v34[1] = *MEMORY[0x277D85DE8];
  sub_24BC95764(v28, a4);
  sub_24BC95764(__p, v4);
  v32 = 0;
  v33 = 0;
  v34[0] = 0;
  v25 = 0u;
  v26 = 0u;
  sub_24BDF20F0(a1, a1 + 1, a1 + 2, &v32, &v33, v34, &v26, &v25);
  v8 = fabsf((((*&v33 - *&v32) * (*(v34 + 1) - *(&v32 + 1))) - ((*(&v33 + 1) - *(&v32 + 1)) * (*v34 - *&v32))) * 0.5);
  if (v8 >= 1.0e-16 && v4)
  {
    v9 = 0;
    v10 = v28[0];
    v11 = __p[0];
    do
    {
      v12 = 0;
      v13 = a2;
      do
      {
        *(&v29 + v12) = *v13;
        v12 += 4;
        v13 += v4;
      }

      while (v12 != 12);
      v14 = v29;
      v15 = v30;
      v16 = v31;
      v10[v9] = (((v30 * (*(v34 + 1) - *(&v32 + 1))) + (v29 * (*(&v33 + 1) - *(v34 + 1)))) + (v31 * (*(&v32 + 1) - *(&v33 + 1)))) / v8;
      v11[v9++] = (((v15 * (*&v32 - *v34)) + (v14 * (*v34 - *&v33))) + (v16 * (*&v33 - *&v32))) / v8;
      ++a2;
    }

    while (v9 != v4);
    *(a3 + 8) = 0;
    *a3 = 0;
    v17 = 0.0;
    v18 = v28[0];
    v19 = 0.0;
    v20 = 0.0;
    v21 = __p[0];
    do
    {
      v17 = v17 + (*v18 * *v18);
      *a3 = v17;
      v19 = v19 + (*v21 * *v21);
      *(a3 + 8) = v19;
      v22 = *v18++;
      v23 = v22;
      v24 = *v21++;
      v20 = v20 + (v23 * v24);
      *(a3 + 4) = v20;
      --v4;
    }

    while (v4);
  }

  else
  {
    *(a3 + 8) = 0;
    *a3 = 0;
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v28[0])
  {
    v28[1] = v28[0];
    operator delete(v28[0]);
  }
}