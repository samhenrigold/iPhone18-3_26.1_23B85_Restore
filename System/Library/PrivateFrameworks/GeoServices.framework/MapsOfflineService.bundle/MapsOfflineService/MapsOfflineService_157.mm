void sub_99F8B0(_Unwind_Exception *exception_object)
{
  if (v4)
  {
    v6 = v3 - 496;
    v7 = -v4;
    do
    {
      v6 = sub_55A8B4(v6) - 496;
      v7 += 496;
    }

    while (v7);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t *sub_99F8DC(uint64_t *result, unint64_t a2)
{
  if (0x8F5C28F5C28F5C29 * ((result[2] - *result) >> 5) < a2)
  {
    if (a2 < 0x51EB851EB851ECLL)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_99F9C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_55B054(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_99F9DC(void *a1, void *a2, uint64_t *a3)
{
  if (a1 != a2)
  {
    v6 = a1;
    do
    {
      v14[0] = *v6;
      v15 = 3;
      v17 = 0;
      __p = 0uLL;
      v7 = a3[1];
      if (v7 >= a3[2])
      {
        v9 = sub_99FB7C(a3, v14);
        v10 = __p;
        a3[1] = v9;
        if (v10)
        {
          v11 = *(&__p + 1);
          v12 = v10;
          if (*(&__p + 1) != v10)
          {
            do
            {
              v13 = *(v11 - 1);
              v11 -= 3;
              if (v13 < 0)
              {
                operator delete(*v11);
              }
            }

            while (v11 != v10);
            v12 = __p;
          }

          *(&__p + 1) = v10;
          operator delete(v12);
        }
      }

      else
      {
        *v7 = 0;
        *(v7 + 768) = -1;
        v8 = v15;
        if (v15 != -1)
        {
          v18[0] = v7;
          (off_266F480[v15])(v18, v14);
          *(v7 + 768) = v8;
        }

        *(v7 + 792) = 0;
        *(v7 + 776) = 0u;
        *(v7 + 776) = __p;
        *(v7 + 792) = v17;
        __p = 0uLL;
        v17 = 0;
        a3[1] = v7 + 800;
      }

      if (v15 != -1)
      {
        (off_266F418[v15])(v18, v14);
      }

      ++v6;
    }

    while (v6 != a2);
  }

  return a3;
}

uint64_t sub_99FB7C(uint64_t *a1, uint64_t a2)
{
  v2 = 0x8F5C28F5C28F5C29 * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x51EB851EB851EBLL)
  {
    sub_1794();
  }

  if (0x1EB851EB851EB852 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x1EB851EB851EB852 * ((a1[2] - *a1) >> 5);
  }

  if (0x8F5C28F5C28F5C29 * ((a1[2] - *a1) >> 5) >= 0x28F5C28F5C28F5)
  {
    v6 = 0x51EB851EB851EBLL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    if (v6 <= 0x51EB851EB851EBLL)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 800 * v2;
  v15 = 0;
  v16 = v7;
  v17 = v7;
  *v7 = 0;
  *(v7 + 768) = -1;
  v8 = *(a2 + 768);
  if (v8 != -1)
  {
    v19 = v7;
    (off_266F480[v8])(&v19, a2);
    *(v7 + 768) = v8;
  }

  *(v7 + 776) = *(a2 + 776);
  *(v7 + 784) = *(a2 + 784);
  *(a2 + 784) = 0;
  *(a2 + 792) = 0;
  *(a2 + 776) = 0;
  *&v17 = v7 + 800;
  v9 = a1[1];
  v10 = v7 + *a1 - v9;
  sub_55B144(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_55B054(&v15);
  return v14;
}

void sub_99FD18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_55B054(va);
  _Unwind_Resume(a1);
}

void sub_99FD2C(char **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
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
              v8 = *(v6 - 1);
              v6 -= 3;
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

        v9 = v3 - 800;
        v10 = *(v3 - 8);
        if (v10 != -1)
        {
          (off_266F418[v10])(&v11, v3 - 800);
        }

        *(v3 - 8) = -1;
        v3 -= 800;
      }

      while (v9 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t sub_99FE28(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 < 1)
  {
    return v5;
  }

  v6 = a5;
  v8 = a1;
  v10 = a1[1];
  v9 = a1[2];
  if ((0x8F5C28F5C28F5C29 * ((v9 - v10) >> 5)) >= a5)
  {
    v15 = v10 - a2;
    if ((0x8F5C28F5C28F5C29 * ((v10 - a2) >> 5)) < a5)
    {
      v16 = v15 + a3;
      v17 = sub_9A0490(a1, v15 + a3, a4, a1[1]);
      v18 = v17;
      v8[1] = v17;
      if (v15 < 1)
      {
        return v5;
      }

      v19 = 800 * v6;
      v20 = v17;
      if (v17 - 800 * v6 < v10)
      {
        v59 = 800 * v6;
        v62 = v6;
        v66 = v8;
        v21 = 0;
        v22 = -800 * v6;
        do
        {
          v23 = v22 + v18;
          v24 = v21 + v18;
          *v24 = 0;
          *(v24 + 768) = -1;
          v25 = *(v22 + v18 + 768);
          if (v25 != -1)
          {
            v67 = v21 + v18;
            (off_266F480[v25])(&v67, v22 + v18);
            *(v24 + 768) = v25;
          }

          *(v24 + 792) = 0;
          *(v24 + 776) = 0u;
          *(v24 + 776) = *(v23 + 776);
          *(v24 + 784) = *(v23 + 784);
          *(v23 + 792) = 0;
          *(v23 + 776) = 0u;
          v22 += 800;
          v21 += 800;
        }

        while (v22 + v18 < v10);
        v20 = v21 + v18;
        v6 = v62;
        v8 = v66;
        v19 = v59;
      }

      v8[1] = v20;
      if (v18 != v5 + v19)
      {
        v52 = v18 - 800;
        v53 = v5 + 800 * v6 - v18;
        v54 = v18 - 800 - 800 * v6;
        do
        {
          sub_9A05B4(v52, v54);
          v52 -= 800;
          v54 -= 800;
          v53 += 800;
        }

        while (v53);
      }

      v55 = 0;
      while (1)
      {
        v56 = v5 + v55;
        v57 = *(v5 + v55 + 768);
        v58 = *(a3 + v55 + 768);
        if (v57 == -1)
        {
          if (v58 != -1)
          {
LABEL_53:
            v67 = v5 + v55;
            (off_266F4A0[v58])(&v67, v5 + v55, a3 + v55);
          }
        }

        else
        {
          if (v58 != -1)
          {
            goto LABEL_53;
          }

          (off_266F418[v57])(&v67, v5 + v55);
          *(v56 + 768) = -1;
        }

        if (a3 + v55 != v56)
        {
          sub_74300((v5 + v55 + 776), *(a3 + v55 + 776), *(a3 + v55 + 784), 0xAAAAAAAAAAAAAAABLL * ((*(a3 + v55 + 784) - *(a3 + v55 + 776)) >> 3));
        }

        v55 += 800;
        if (a3 + v55 == v16)
        {
          return v5;
        }
      }
    }

    v26 = 800 * a5;
    v27 = v10 - 800 * a5;
    v28 = a1[1];
    if (v27 < v10)
    {
      v60 = 800 * a5;
      v29 = 0;
      do
      {
        v30 = v27 + v29;
        v31 = v10 + v29;
        *v31 = 0;
        *(v31 + 768) = -1;
        v32 = *(v27 + v29 + 768);
        if (v32 != -1)
        {
          v67 = v10 + v29;
          (off_266F480[v32])(&v67, v27 + v29, a3, a4);
          *(v31 + 768) = v32;
        }

        *(v31 + 792) = 0;
        *(v31 + 776) = 0u;
        *(v31 + 776) = *(v30 + 776);
        *(v31 + 784) = *(v30 + 784);
        *(v30 + 792) = 0;
        *(v30 + 776) = 0u;
        v29 += 800;
      }

      while (v27 + v29 < v10);
      v28 = v10 + v29;
      v26 = v60;
      v6 = a5;
    }

    v8[1] = v28;
    if (v10 != v5 + v26)
    {
      v45 = v10 - 800;
      v46 = v5 + 800 * v6 - v10;
      v47 = v10 - 800 - 800 * v6;
      do
      {
        sub_9A05B4(v45, v47);
        v45 -= 800;
        v47 -= 800;
        v46 += 800;
      }

      while (v46);
    }

    v48 = 0;
    while (1)
    {
      v49 = v5 + v48;
      v50 = *(v5 + v48 + 768);
      v51 = *(a3 + v48 + 768);
      if (v50 == -1)
      {
        if (v51 != -1)
        {
LABEL_40:
          v67 = v5 + v48;
          (off_266F4A0[v51])(&v67, v5 + v48, a3 + v48);
        }
      }

      else
      {
        if (v51 != -1)
        {
          goto LABEL_40;
        }

        (off_266F418[v50])(&v67, v5 + v48);
        *(v49 + 768) = -1;
      }

      if (a3 + v48 != v49)
      {
        sub_74300((v5 + v48 + 776), *(a3 + v48 + 776), *(a3 + v48 + 784), 0xAAAAAAAAAAAAAAABLL * ((*(a3 + v48 + 784) - *(a3 + v48 + 776)) >> 3));
      }

      v48 += 800;
      if (a3 + v48 == a3 + 800 * v6)
      {
        return v5;
      }
    }
  }

  v11 = *a1;
  v12 = a5 - 0x70A3D70A3D70A3D7 * ((v10 - *a1) >> 5);
  if (v12 > 0x51EB851EB851EBLL)
  {
    sub_1794();
  }

  v13 = 0x8F5C28F5C28F5C29 * ((v9 - v11) >> 5);
  if (2 * v13 > v12)
  {
    v12 = 2 * v13;
  }

  if (v13 >= 0x28F5C28F5C28F5)
  {
    v14 = 0x51EB851EB851EBLL;
  }

  else
  {
    v14 = v12;
  }

  v70 = a1;
  if (v14)
  {
    if (v14 <= 0x51EB851EB851EBLL)
    {
      operator new();
    }

    sub_1808();
  }

  v33 = 0;
  v34 = 32 * ((a2 - v11) >> 5);
  v67 = 0;
  v68 = v34;
  v69 = v34;
  v35 = 800 * a5;
  v61 = v34 + 800 * a5;
  do
  {
    v36 = v34 + v33;
    *v36 = 0;
    *(v36 + 768) = -1;
    v37 = *(a3 + v33 + 768);
    if (v37 != -1)
    {
      v71 = v34 + v33;
      (off_266F438[v37])(&v71, a3 + v33, a3, a4);
      *(v36 + 768) = v37;
    }

    *(v36 + 792) = 0;
    *(v36 + 776) = 0u;
    sub_353184(v36 + 776, *(a3 + v33 + 776), *(a3 + v33 + 784), 0xAAAAAAAAAAAAAAABLL * ((*(a3 + v33 + 784) - *(a3 + v33 + 776)) >> 3));
    v33 += 800;
  }

  while (v35 != v33);
  *&v69 = v61;
  v38 = v68;
  sub_55B144(a1, a2, a1[1], v61);
  v39 = *a1;
  v40 = v68;
  *&v69 = v61 + a1[1] - a2;
  a1[1] = a2;
  v41 = v40 + v39 - a2;
  sub_55B144(a1, v39, a2, v41);
  v42 = *a1;
  *a1 = v41;
  v43 = a1[2];
  *(a1 + 1) = v69;
  *&v69 = v42;
  *(&v69 + 1) = v43;
  v67 = v42;
  v68 = v42;
  sub_55B054(&v67);
  return v38;
}

void sub_9A0424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_55B054(va);
  _Unwind_Resume(a1);
}

void sub_9A0448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  sub_55ABBC(v16 + v15);
  a15 = v16 + v15;
  sub_55B054(&a13);
  _Unwind_Resume(a1);
}

void sub_9A046C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  sub_55AB60(v16 + v15);
  a15 = v16 + v15;
  sub_55B054(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_9A0490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v9 = a4;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      *(v4 + 768) = -1;
      v7 = *(v6 + 768);
      if (v7 != -1)
      {
        v10 = v4;
        (off_266F438[v7])(&v10, v6);
        *(v4 + 768) = v7;
      }

      *(v4 + 792) = 0;
      *(v4 + 776) = 0u;
      sub_353184(v4 + 776, *(v6 + 776), *(v6 + 784), 0xAAAAAAAAAAAAAAABLL * ((*(v6 + 784) - *(v6 + 776)) >> 3));
      v6 += 800;
      v4 = v9 + 800;
      v9 += 800;
    }

    while (v6 != a3);
  }

  return v4;
}

void sub_9A057C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_55ABBC(v3);
  sub_99F154(va);
  _Unwind_Resume(a1);
}

void sub_9A0598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_55AB60(v3);
  sub_99F154(va);
  _Unwind_Resume(a1);
}

uint64_t sub_9A05B4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 768);
  v5 = *(a2 + 768);
  if (v4 == -1)
  {
    if (v5 == -1)
    {
      goto LABEL_6;
    }
  }

  else if (v5 == -1)
  {
    (off_266F418[v4])(&v13, a1);
    *(a1 + 768) = -1;
    goto LABEL_6;
  }

  v12 = a1;
  (off_266F4C0[v5])(&v12, a1, a2);
LABEL_6:
  v6 = *(a1 + 776);
  if (v6)
  {
    v7 = (a1 + 776);
    v8 = *(a1 + 784);
    v9 = *(a1 + 776);
    if (v8 != v6)
    {
      do
      {
        v10 = *(v8 - 1);
        v8 -= 3;
        if (v10 < 0)
        {
          operator delete(*v8);
        }
      }

      while (v8 != v6);
      v9 = *v7;
    }

    *(a1 + 784) = v6;
    operator delete(v9);
    *v7 = 0;
    *(a1 + 784) = 0;
    *(a1 + 792) = 0;
  }

  *(a1 + 776) = *(a2 + 776);
  *(a1 + 784) = *(a2 + 784);
  *(a2 + 792) = 0;
  *(a2 + 776) = 0u;
  return a1;
}

uint64_t *sub_9A06D4(uint64_t *result)
{
  v1 = *result;
  v2 = *(*result + 768);
  if (v2 != -1)
  {
    if (!v2)
    {
      return result;
    }

    result = (off_266F418[v2])(&v3, v1);
  }

  *(v1 + 768) = 0;
  return result;
}

__n128 sub_9A072C(__n128 **a1, uint64_t a2, __n128 *a3)
{
  v4 = *a1;
  v5 = (*a1)[48].n128_u32[0];
  if (v5 == -1)
  {
    goto LABEL_7;
  }

  if (v5 != 1)
  {
    (off_266F418[v5])(&v8, v4);
LABEL_7:
    v4[48].n128_u32[0] = -1;
    result = *a3;
    v4[1].n128_u64[0] = a3[1].n128_u64[0];
    *v4 = result;
    a3->n128_u64[1] = 0;
    a3[1].n128_u64[0] = 0;
    a3->n128_u64[0] = 0;
    v4[48].n128_u32[0] = 1;
    return result;
  }

  if (*(a2 + 23) < 0)
  {
    v6 = a2;
    operator delete(*a2);
    a2 = v6;
  }

  result = *a3;
  *(a2 + 16) = a3[1].n128_u64[0];
  *a2 = result;
  a3[1].n128_u8[7] = 0;
  a3->n128_u8[0] = 0;
  return result;
}

void sub_9A07F0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 768);
  if (v4 == -1)
  {
    goto LABEL_7;
  }

  if (v4 != 2)
  {
    v5 = a3;
    (off_266F418[v4])(&v6, v3);
    a3 = v5;
LABEL_7:
    *(v3 + 768) = -1;
    sub_55B2F8(v3, a3);
    *(v3 + 768) = 2;
    return;
  }

  sub_9A091C(a2, a3);
}

uint64_t *sub_9A0894(uint64_t *result, void *a2, void *a3)
{
  v3 = *result;
  v4 = *(*result + 768);
  if (v4 != -1)
  {
    if (v4 == 3)
    {
      *a2 = *a3;
      return result;
    }

    v5 = a3;
    result = (off_266F418[v4])(&v6, v3);
    a3 = v5;
  }

  *v3 = *a3;
  *(v3 + 768) = 3;
  return result;
}

uint64_t sub_9A091C(uint64_t a1, uint64_t a2)
{
  sub_53D784(a1, a2);
  sub_53D784(a1 + 160, a2 + 160);
  v4 = *(a1 + 352);
  v5 = *(a2 + 352);
  if (v4 == -1)
  {
    if (v5 == -1)
    {
      goto LABEL_6;
    }
  }

  else if (v5 == -1)
  {
    (off_266F3F0[v4])(&v10, a1 + 320);
    *(a1 + 352) = -1;
    goto LABEL_6;
  }

  v9 = a1 + 320;
  (off_266F458[v5])(&v9);
LABEL_6:
  *(a1 + 360) = *(a2 + 360);
  if (*(a1 + 391) < 0)
  {
    operator delete(*(a1 + 368));
  }

  v6 = *(a2 + 368);
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 368) = v6;
  *(a2 + 391) = 0;
  *(a2 + 368) = 0;
  *(a1 + 392) = *(a2 + 392);
  if (*(a1 + 423) < 0)
  {
    operator delete(*(a1 + 400));
  }

  v7 = *(a2 + 400);
  *(a1 + 416) = *(a2 + 416);
  *(a1 + 400) = v7;
  *(a2 + 423) = 0;
  *(a2 + 400) = 0;
  *(a1 + 424) = *(a2 + 424);
  sub_53D784(a1 + 432, a2 + 432);
  sub_53D784(a1 + 592, a2 + 592);
  *(a1 + 752) = *(a2 + 752);
  return a1;
}

void sub_9A3CA8(_Unwind_Exception *a1)
{
  if (qword_27B3060)
  {
    qword_27B3068 = qword_27B3060;
    operator delete(qword_27B3060);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_9A3F40(uint64_t *a1, uint64_t *a2)
{
  v2 = a2;
  v3 = a1;
  memset(v39, 0, sizeof(v39));
  v40 = 1065353216;
  v42 = 0;
  v43 = 0;
  __p = 0;
  sub_3320D0(v38, (a2 + 3), *a1);
  sub_3320D0(v37, v38, (v2 + 3));
  sub_A1328C(v36, v38, (v2 + 3), v3[1]);
  sub_A11B2C(v35, v38, (v2 + 3));
  sub_681624(v34, v38, (v2 + 3), v39);
  v4 = *v2;
  v5 = v2[1];
  if (*v2 != v5)
  {
    v29 = v3;
    v30 = v2;
    v28 = v2[1];
    do
    {
      sub_9E3BE4(v37, v4, &v32);
      sub_9A4294(v7, &v32, v4, v39);
      v8 = sub_9A4D28(v3, v36, v4, v39);
      sub_9A5198(v8, v35, v34, v4, v39);
      v9 = v32;
      if (v32)
      {
        v10 = v33;
        v6 = v32;
        if (v33 != v32)
        {
          v31 = v4;
          v11 = v33;
          do
          {
            v14 = *(v11 - 3);
            v11 -= 3;
            v13 = v14;
            if (v14)
            {
              v15 = *(v10 - 2);
              v12 = v13;
              if (v15 != v13)
              {
                v16 = *(v10 - 2);
                do
                {
                  v19 = *(v16 - 3);
                  v16 -= 3;
                  v18 = v19;
                  if (v19)
                  {
                    v20 = *(v15 - 2);
                    v17 = v18;
                    if (v20 != v18)
                    {
                      do
                      {
                        v21 = *(v20 - 2);
                        if (v21 != -1)
                        {
                          (off_266F4E0[v21])(v44, v20 - 42);
                        }

                        *(v20 - 2) = -1;
                        v20 -= 44;
                      }

                      while (v20 != v18);
                      v17 = *v16;
                    }

                    *(v15 - 2) = v18;
                    operator delete(v17);
                  }

                  v15 = v16;
                }

                while (v16 != v13);
                v12 = *v11;
              }

              *(v10 - 2) = v13;
              operator delete(v12);
            }

            v10 = v11;
          }

          while (v11 != v9);
          v4 = v31;
          v6 = v32;
          v3 = v29;
          v2 = v30;
          v5 = v28;
        }

        v33 = v9;
        operator delete(v6);
      }

      v4 += 412;
    }

    while (v4 != v5);
  }

  if (v2 + 21 != &__p)
  {
    sub_9A64E4(v2 + 21, __p, v42, 0x6DB6DB6DB6DB6DB7 * ((v42 - __p) >> 4));
  }

  v22 = __p;
  if (!__p)
  {
    return sub_9A698C(v39);
  }

  v23 = v42;
  v24 = __p;
  if (v42 == __p)
  {
    goto LABEL_38;
  }

  do
  {
    if (*(v23 - 9) < 0)
    {
      operator delete(*(v23 - 4));
      if (*(v23 - 41) < 0)
      {
LABEL_35:
        operator delete(*(v23 - 8));
        v25 = v23 - 14;
        v26 = *(v23 - 20);
        if (v26 == -1)
        {
          goto LABEL_29;
        }

LABEL_36:
        (off_266F4F0[v26])(v36, v25);
        goto LABEL_29;
      }
    }

    else if (*(v23 - 41) < 0)
    {
      goto LABEL_35;
    }

    v25 = v23 - 14;
    v26 = *(v23 - 20);
    if (v26 != -1)
    {
      goto LABEL_36;
    }

LABEL_29:
    *(v23 - 20) = -1;
    v23 = v25;
  }

  while (v25 != v22);
  v24 = __p;
LABEL_38:
  v42 = v22;
  operator delete(v24);
  return sub_9A698C(v39);
}

void sub_9A4238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  sub_97EA80(a9);
  sub_9A698C(va);
  _Unwind_Resume(a1);
}

void sub_9A426C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void ***a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  sub_9A6304(&a14);
  sub_97EA80(a9);
  sub_9A698C(va);
  _Unwind_Resume(a1);
}

void sub_9A4294(uint64_t a1, uint64_t ***a2, void *a3, void *a4)
{
  v83 = *a2;
  v81 = a2[1];
  if (*a2 != v81)
  {
    v4 = a4;
    v87 = a4 + 5;
    v82 = a3;
    do
    {
      v5 = a3[133];
      v6 = a3[134];
      if (v5 >= v6)
      {
        v8 = a3[132];
        v9 = v5 - v8;
        v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v8) >> 3);
        v11 = v10 + 1;
        if (v10 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_1794();
        }

        v12 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v8) >> 3);
        if (2 * v12 > v11)
        {
          v11 = 2 * v12;
        }

        if (v12 >= 0x555555555555555)
        {
          v13 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v13 = v11;
        }

        if (v13)
        {
          if (v13 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

LABEL_133:
          sub_1808();
        }

        v14 = 24 * v10;
        *v14 = 0;
        *(v14 + 8) = 0;
        *(v14 + 16) = 0;
        v15 = (24 * v10 - v9);
        memcpy(v15, v8, v9);
        v82[132] = v15;
        v82[133] = 24 * v10 + 24;
        v82[134] = 0;
        if (v8)
        {
          operator delete(v8);
        }

        a3 = v82;
        v7 = 24 * v10 + 24;
      }

      else
      {
        *v5 = 0;
        *(v5 + 1) = 0;
        v7 = (v5 + 24);
        *(v5 + 2) = 0;
      }

      a3[133] = v7;
      v85 = v7;
      v86 = *v83;
      v84 = v83[1];
      if (*v83 != v84)
      {
        do
        {
          v16 = *(v7 - 16);
          v17 = *(v7 - 8);
          if (v16 >= v17)
          {
            v21 = *(v7 - 24);
            v22 = v16 - v21;
            v23 = 0xAAAAAAAAAAAAAAABLL * ((v16 - v21) >> 3);
            v24 = v23 + 1;
            if (v23 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              sub_1794();
            }

            v25 = 0xAAAAAAAAAAAAAAABLL * ((v17 - v21) >> 3);
            if (2 * v25 > v24)
            {
              v24 = 2 * v25;
            }

            if (v25 >= 0x555555555555555)
            {
              v26 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v26 = v24;
            }

            if (v26)
            {
              if (v26 <= 0xAAAAAAAAAAAAAAALL)
              {
                operator new();
              }

              goto LABEL_133;
            }

            v27 = 24 * v23;
            *v27 = 0;
            *(v27 + 8) = 0;
            *(v27 + 16) = 0;
            v18 = 24 * v23 + 24;
            v28 = (24 * v23 - v22);
            memcpy(v28, v21, v22);
            *(v85 - 24) = v28;
            *(v85 - 16) = v18;
            *(v85 - 8) = 0;
            if (v21)
            {
              operator delete(v21);
            }

            *(v85 - 16) = v18;
            v20 = *v86;
            v19 = v86[1];
            if (*v86 != v19)
            {
LABEL_36:
              v90 = v18;
              v91 = (v18 - 24);
              v89 = v19;
              while (1)
              {
                v30 = *(v20 + 168);
                if (v30 == 1)
                {
                  v36 = *(v18 - 16);
                  if (v36 >= *(v18 - 8))
                  {
                    v29 = sub_9A6C6C(v91, v20 + 8);
                  }

                  else
                  {
                    sub_55BD50(*(v18 - 16), v20 + 8);
                    *(v36 + 160) = 1;
                    v29 = (v36 + 168);
                    *(v18 - 16) = v36 + 168;
                  }

                  goto LABEL_38;
                }

                if (!v30)
                {
                  break;
                }

LABEL_39:
                v20 += 176;
                if (v20 == v19)
                {
                  goto LABEL_20;
                }
              }

              v31 = sub_94AD3C(v4, v20 + 8);
              v32 = v4[1];
              if (v32)
              {
                v33 = v31;
                v34 = vcnt_s8(v32);
                v34.i16[0] = vaddlv_u8(v34);
                if (v34.u32[0] > 1uLL)
                {
                  v35 = v31;
                  if (v31 >= *&v32)
                  {
                    v35 = v31 % *&v32;
                  }
                }

                else
                {
                  v35 = (*&v32 - 1) & v31;
                }

                v37 = *(*v4 + 8 * v35);
                if (v37)
                {
                  v38 = *v37;
                  if (*v37)
                  {
                    if (v34.u32[0] < 2uLL)
                    {
                      while (1)
                      {
                        v40 = v38[1];
                        if (v40 == v33)
                        {
                          if (sub_55DD5C((v38 + 2), v20 + 8))
                          {
                            goto LABEL_109;
                          }
                        }

                        else if ((v40 & (*&v32 - 1)) != v35)
                        {
                          goto LABEL_64;
                        }

                        v38 = *v38;
                        if (!v38)
                        {
                          goto LABEL_64;
                        }
                      }
                    }

                    do
                    {
                      v39 = v38[1];
                      if (v39 == v33)
                      {
                        if (sub_55DD5C((v38 + 2), v20 + 8))
                        {
LABEL_109:
                          v67 = v38[16];
                          v69 = *(v18 - 16);
                          v68 = *(v18 - 8);
                          if (v69 >= v68)
                          {
LABEL_110:
                            v70 = *v91;
                            v71 = v69 - *v91;
                            v72 = 0xCF3CF3CF3CF3CF3DLL * (v71 >> 3) + 1;
                            if (v72 > 0x186186186186186)
                            {
                              sub_1794();
                            }

                            v73 = 0xCF3CF3CF3CF3CF3DLL * ((v68 - v70) >> 3);
                            if (2 * v73 > v72)
                            {
                              v72 = 2 * v73;
                            }

                            if (v73 >= 0xC30C30C30C30C3)
                            {
                              v74 = 0x186186186186186;
                            }

                            else
                            {
                              v74 = v72;
                            }

                            if (v74)
                            {
                              if (v74 <= 0x186186186186186)
                              {
                                operator new();
                              }

                              goto LABEL_133;
                            }

                            v75 = 8 * (v71 >> 3);
                            *v75 = v67;
                            *(v75 + 160) = 0;
                            v76 = v75 - v71;
                            if (v70 != v69)
                            {
                              v77 = v75 - v71;
                              v78 = v70;
                              do
                              {
                                *v77 = 0;
                                *(v77 + 160) = -1;
                                v79 = *(v78 + 40);
                                if (v79 != -1)
                                {
                                  v93 = v77;
                                  (off_266F550[v79])(&v93, v78);
                                  *(v77 + 160) = v79;
                                }

                                v78 += 168;
                                v77 += 168;
                              }

                              while (v78 != v69);
                              v18 = v90;
                              do
                              {
                                v80 = *(v70 + 40);
                                if (v80 != -1)
                                {
                                  (off_266F540[v80])(&v93, v70);
                                }

                                *(v70 + 40) = -1;
                                v70 += 168;
                              }

                              while (v70 != v69);
                              v70 = *v91;
                            }

                            v29 = (v75 + 168);
                            *(v18 - 24) = v76;
                            *(v18 - 16) = v75 + 168;
                            *(v18 - 8) = 0;
                            v19 = v89;
                            if (v70)
                            {
                              operator delete(v70);
                            }

                            v4 = a4;
LABEL_38:
                            *(v18 - 16) = v29;
                            goto LABEL_39;
                          }

LABEL_108:
                          *v69 = v67;
                          *(v69 + 160) = 0;
                          v29 = (v69 + 168);
                          v19 = v89;
                          goto LABEL_38;
                        }
                      }

                      else
                      {
                        if (v39 >= *&v32)
                        {
                          v39 %= *&v32;
                        }

                        if (v39 != v35)
                        {
                          break;
                        }
                      }

                      v38 = *v38;
                    }

                    while (v38);
                  }
                }
              }

LABEL_64:
              v41 = v4[5];
              v42 = v4[6];
              v43 = 0x6DB6DB6DB6DB6DB7 * ((v42 - v41) >> 4);
              v92 = v43;
              v44 = v4[7];
              if (v42 < v44)
              {
                *v42 = 0;
                *(v42 + 32) = -1;
                v45 = *(v20 + 40);
                if (v45 != -1)
                {
                  v93 = v42;
                  (off_266F518[v45])(&v93, v20 + 8);
                  *(v42 + 32) = v45;
                }

                *(v42 + 40) = *(v20 + 48);
                if (*(v20 + 79) < 0)
                {
                  sub_325C((v42 + 48), *(v20 + 56), *(v20 + 64));
                }

                else
                {
                  v46 = *(v20 + 56);
                  *(v42 + 64) = *(v20 + 72);
                  *(v42 + 48) = v46;
                }

                *(v42 + 72) = *(v20 + 80);
                if (*(v20 + 111) < 0)
                {
                  sub_325C((v42 + 80), *(v20 + 88), *(v20 + 96));
                }

                else
                {
                  v50 = *(v20 + 88);
                  *(v42 + 96) = *(v20 + 104);
                  *(v42 + 80) = v50;
                }

                *(v42 + 104) = *(v20 + 112);
                v51 = v42 + 112;
                v4[6] = v42 + 112;
                goto LABEL_107;
              }

              if ((v43 + 1) > 0x249249249249249)
              {
                sub_1794();
              }

              v47 = 0x6DB6DB6DB6DB6DB7 * ((v44 - v41) >> 4);
              v48 = 2 * v47;
              if (2 * v47 <= v43 + 1)
              {
                v48 = v43 + 1;
              }

              if (v47 >= 0x124924924924924)
              {
                v49 = 0x249249249249249;
              }

              else
              {
                v49 = v48;
              }

              v97 = v87;
              if (v49)
              {
                if (v49 <= 0x249249249249249)
                {
                  operator new();
                }

                goto LABEL_133;
              }

              v52 = 112 * v43;
              v93 = 0;
              v94 = v52;
              v95 = 112 * v43;
              v96 = 0;
              *v52 = 0;
              *(v52 + 32) = -1;
              v53 = *(v20 + 40);
              if (v53 != -1)
              {
                v98[0] = v52;
                (off_266F518[v53])(v98, v20 + 8);
                *(v52 + 32) = v53;
              }

              *(v52 + 40) = *(v20 + 48);
              if (*(v20 + 79) < 0)
              {
                sub_325C((v52 + 48), *(v20 + 56), *(v20 + 64));
              }

              else
              {
                v54 = *(v20 + 56);
                *(v52 + 64) = *(v20 + 72);
                *(v52 + 48) = v54;
              }

              *(v52 + 72) = *(v20 + 80);
              if (*(v20 + 111) < 0)
              {
                sub_325C((v52 + 80), *(v20 + 88), *(v20 + 96));
              }

              else
              {
                v55 = *(v20 + 88);
                *(v52 + 96) = *(v20 + 104);
                *(v52 + 80) = v55;
              }

              *(v52 + 104) = *(v20 + 112);
              v51 = v95 + 112;
              v95 += 112;
              v56 = v4[5];
              v57 = v4[6];
              v58 = v94 + v56 - v57;
              if (v56 == v57)
              {
LABEL_105:
                v66 = v4[5];
                v4[5] = v58;
                v4[6] = v51;
                v4[7] = v96;
                if (v66)
                {
                  operator delete(v66);
                }

LABEL_107:
                v4[6] = v51;
                sub_9A7108(v4, v20 + 8, v20 + 8, &v92);
                v67 = v92;
                v18 = v90;
                v69 = *(v90 - 16);
                v68 = *(v90 - 8);
                if (v69 >= v68)
                {
                  goto LABEL_110;
                }

                goto LABEL_108;
              }

              v59 = 0;
              do
              {
                v62 = v58 + v59;
                v63 = v56 + v59;
                *v62 = 0;
                *(v62 + 32) = -1;
                v64 = *(v56 + v59 + 32);
                if (v64 != -1)
                {
                  v98[0] = v58 + v59;
                  (off_266F588[v64])(v98, v56 + v59);
                  *(v62 + 32) = v64;
                }

                v59 += 112;
                *(v62 + 40) = *(v63 + 40);
                v60 = *(v63 + 48);
                *(v62 + 64) = *(v63 + 64);
                *(v62 + 48) = v60;
                *(v63 + 56) = 0;
                *(v63 + 64) = 0;
                *(v63 + 48) = 0;
                *(v62 + 72) = *(v63 + 72);
                v61 = *(v63 + 80);
                *(v62 + 96) = *(v63 + 96);
                *(v62 + 80) = v61;
                *(v63 + 88) = 0;
                *(v63 + 96) = 0;
                *(v63 + 80) = 0;
                *(v62 + 104) = *(v63 + 104);
              }

              while (v56 + v59 != v57);
              v4 = a4;
              while (2)
              {
                if (*(v56 + 103) < 0)
                {
                  operator delete(*(v56 + 80));
                  if (*(v56 + 71) < 0)
                  {
                    goto LABEL_103;
                  }

LABEL_100:
                  v65 = *(v56 + 32);
                  if (v65 != -1)
                  {
LABEL_104:
                    (off_266F4F0[v65])(v98, v56);
                  }
                }

                else
                {
                  if ((*(v56 + 71) & 0x80000000) == 0)
                  {
                    goto LABEL_100;
                  }

LABEL_103:
                  operator delete(*(v56 + 48));
                  v65 = *(v56 + 32);
                  if (v65 != -1)
                  {
                    goto LABEL_104;
                  }
                }

                *(v56 + 32) = -1;
                v56 += 112;
                if (v56 == v57)
                {
                  goto LABEL_105;
                }

                continue;
              }
            }
          }

          else
          {
            *v16 = 0;
            *(v16 + 1) = 0;
            v18 = (v16 + 24);
            *(v16 + 2) = 0;
            *(v7 - 16) = v16 + 24;
            v20 = *v86;
            v19 = v86[1];
            if (*v86 != v19)
            {
              goto LABEL_36;
            }
          }

LABEL_20:
          v7 = v85;
          v86 += 3;
        }

        while (v86 != v84);
      }

      a3 = v82;
      v83 += 3;
    }

    while (v83 != v81);
  }
}

void sub_9A4C54(_Unwind_Exception *a1)
{
  if (*(v2 + 71) < 0)
  {
    operator delete(*(v2 + 48));
    sub_55DB28(v2);
    *(v1 + 48) = v2;
    _Unwind_Resume(a1);
  }

  sub_55DB28(v2);
  *(v1 + 48) = v2;
  _Unwind_Resume(a1);
}

void sub_9A4C94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  if (*(v21 + 71) < 0)
  {
    operator delete(*(v21 + 48));
    sub_55DB28(v21);
    sub_55F0EC(va);
    _Unwind_Resume(a1);
  }

  sub_55DB28(v21);
  sub_55F0EC(va);
  _Unwind_Resume(a1);
}

void sub_9A4CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_55DB84(v21);
  sub_55F0EC(va);
  _Unwind_Resume(a1);
}

void sub_9A4CF8(_Unwind_Exception *a1)
{
  sub_55DB84(v2);
  *(v1 + 48) = v2;
  _Unwind_Resume(a1);
}

void *sub_9A4D28(uint64_t a1, unint64_t a2, void *a3, void *a4)
{
  sub_A21C90(v47, a3);
  while (1)
  {
    sub_A21CE8(v47, &v24);
    v6 = sub_A21B4C(v47, &v24);
    sub_98ED24(&v24);
    if (!v6)
    {
      return sub_98ED24(v47);
    }

    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    memset(v28, 255, sizeof(v28));
    v29 = 0;
    v31 = 0;
    v30 = 0;
    v32 = 0;
    v34 = 0;
    v35 = 0;
    v33 = 0;
    v36 = 0;
    v27 = 0;
    v37 = 0;
    memset(v38, 255, sizeof(v38));
    v41 = 0;
    v42 = 0;
    v39 = 0;
    v40 = 0;
    v43 = 0;
    v44 = 0;
    v46 = 0;
    v45 = 0;
    v7 = *sub_A21CB8(v47);
    if (v7 > 4)
    {
      if (v7 > 6)
      {
        if (v7 == 7)
        {
          v17 = sub_A21CB8(v47);
          sub_A14348(a2, v17, v23);
        }

        else
        {
          if (v7 != 8)
          {
            goto LABEL_31;
          }

          v13 = sub_A21CB8(v47);
          sub_A14668(a2, v13, 0, v23);
        }

        goto LABEL_30;
      }

      if (v7 == 5)
      {
        v15 = sub_A21CB8(v47);
        sub_A21730(v47, &__p);
        sub_A21834(v47, 0xFFFFFFFFFFFFFFFFLL, v20);
        sub_A14B44(a2, v15, &__p, v20, v23);
      }

      else
      {
        sub_A21730(v47, &__p);
        sub_A21834(v47, 0xFFFFFFFFFFFFFFFFLL, v20);
        sub_A14004(a2, &__p, v20, v23);
      }

      sub_9A58F8(&v24, v23);
      sub_97E978(v23);
      if (v20[0])
      {
        v20[1] = v20[0];
        operator delete(v20[0]);
      }

      goto LABEL_27;
    }

    if (v7 <= 2)
    {
      if (v7 != 1)
      {
        if (v7 != 2)
        {
          goto LABEL_31;
        }

        v8 = sub_A21CB8(v47);
        sub_A13298(a2, v8, 0, v23);
LABEL_30:
        sub_9A58F8(&v24, v23);
        sub_97E978(v23);
        goto LABEL_31;
      }

      v14 = sub_A21CB8(v47);
      sub_A21834(v47, 0xFFFFFFFFFFFFFFFFLL, &__p);
      sub_A14D94(a2, v14, &__p, v23);
LABEL_26:
      sub_9A58F8(&v24, v23);
      sub_97E978(v23);
LABEL_27:
      if (__p)
      {
        v22 = __p;
        operator delete(__p);
      }

      goto LABEL_31;
    }

    if (v7 == 3)
    {
      v16 = sub_A21CB8(v47);
      sub_A21730(v47, &__p);
      sub_A15300(a2, v16, &__p, v23);
      goto LABEL_26;
    }

    v9 = sub_A21CB8(v47);
    sub_A21730(v47, &__p);
    sub_A13AD0(a2, v9, &__p, v23);
    sub_9A58F8(&v24, v23);
    sub_97E978(v23);
    if (__p)
    {
      v22 = __p;
      operator delete(__p);
    }

    v10 = sub_A21CB8(v47);
    if (*(&v25 + 1) != v26)
    {
      v11 = *(v10 + 3424);
      for (i = *(v10 + 3432); v11 != i; v11 += 464)
      {
        sub_5410A0(v11 + 320, *(&v25 + 1));
      }
    }

LABEL_31:
    v18 = sub_A21CB8(v47);
    sub_9A5B04(v18, &v24, v18, a4);
    sub_97E978(&v24);
    sub_A21708(v47);
  }
}

void sub_9A50BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, ...)
{
  va_start(va, a48);
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
    sub_97E978(va);
    sub_98ED24((v48 - 216));
    _Unwind_Resume(a1);
  }

  sub_97E978(va);
  sub_98ED24((v48 - 216));
  _Unwind_Resume(a1);
}

void sub_9A5198(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t **a4, void *a5)
{
  v5 = *a4;
  v46 = a4[1];
  if (*a4 != v46)
  {
    v7 = a2;
    v50 = a5 + 5;
    while (1)
    {
      v8 = *v5;
      v9 = v5[1];
      v48 = v5;
      v51 = v9;
      if (*v5 != v9)
      {
        break;
      }

LABEL_3:
      sub_A0C17C(a3, v48);
      v5 = v48 + 4;
      if (v48 + 4 == v46)
      {
        return;
      }
    }

    while (1)
    {
      sub_A11B34(v7, v8, v52);
      if (v55 > 2)
      {
        if (v55 != 3 && v55 != 4)
        {
          goto LABEL_87;
        }

        v10 = HIBYTE(v54);
        if (v54 < 0)
        {
          v10 = v53;
        }

        if (!v10)
        {
          goto LABEL_87;
        }
      }

      else if (v55 == 1)
      {
        if (v52[0] == -1)
        {
          goto LABEL_87;
        }
      }

      else if (v55 != 2 || v52[1] == -1 && v52[0] == -1 && v53 == v54)
      {
        goto LABEL_87;
      }

      v11 = sub_94AD3C(a5, v52);
      v12 = a5[1];
      if (v12)
      {
        v13 = v11;
        v14 = vcnt_s8(v12);
        v14.i16[0] = vaddlv_u8(v14);
        if (v14.u32[0] > 1uLL)
        {
          v15 = v11;
          if (v11 >= *&v12)
          {
            v15 = v11 % *&v12;
          }
        }

        else
        {
          v15 = (*&v12 - 1) & v11;
        }

        v16 = *(*a5 + 8 * v15);
        if (v16)
        {
          v17 = *v16;
          if (*v16)
          {
            if (v14.u32[0] < 2uLL)
            {
              while (1)
              {
                v19 = v17[1];
                if (v19 == v13)
                {
                  if (sub_55DD5C((v17 + 2), v52))
                  {
                    goto LABEL_41;
                  }
                }

                else if ((v19 & (*&v12 - 1)) != v15)
                {
                  goto LABEL_42;
                }

                v17 = *v17;
                if (!v17)
                {
                  goto LABEL_42;
                }
              }
            }

            do
            {
              v18 = v17[1];
              if (v18 == v13)
              {
                if (sub_55DD5C((v17 + 2), v52))
                {
LABEL_41:
                  v20 = v17[16];
                  goto LABEL_86;
                }
              }

              else
              {
                if (v18 >= *&v12)
                {
                  v18 %= *&v12;
                }

                if (v18 != v15)
                {
                  break;
                }
              }

              v17 = *v17;
            }

            while (v17);
          }
        }
      }

LABEL_42:
      v21 = a5[5];
      v22 = a5[6];
      v23 = 0x6DB6DB6DB6DB6DB7 * ((v22 - v21) >> 4);
      v63 = v23;
      v24 = a5[7];
      if (v22 < v24)
      {
        *v22 = 0;
        *(v22 + 32) = -1;
        v25 = v55;
        if (v55 != -1)
        {
          v64 = v22;
          (off_266F518[v55])(&v64, v52);
          *(v22 + 32) = v25;
        }

        *(v22 + 40) = v56;
        if (SHIBYTE(v58) < 0)
        {
          sub_325C((v22 + 48), v57, *(&v57 + 1));
        }

        else
        {
          v26 = v57;
          *(v22 + 64) = v58;
          *(v22 + 48) = v26;
        }

        *(v22 + 72) = v59;
        if (SHIBYTE(v61) < 0)
        {
          sub_325C((v22 + 80), __p, *(&__p + 1));
        }

        else
        {
          v30 = __p;
          *(v22 + 96) = v61;
          *(v22 + 80) = v30;
        }

        *(v22 + 104) = v62;
        v31 = v22 + 112;
        a5[6] = v22 + 112;
        goto LABEL_85;
      }

      if ((v23 + 1) > 0x249249249249249)
      {
        sub_1794();
      }

      v27 = 0x6DB6DB6DB6DB6DB7 * ((v24 - v21) >> 4);
      v28 = 2 * v27;
      if (2 * v27 <= v23 + 1)
      {
        v28 = v23 + 1;
      }

      if (v27 >= 0x124924924924924)
      {
        v29 = 0x249249249249249;
      }

      else
      {
        v29 = v28;
      }

      v68 = v50;
      if (v29)
      {
        if (v29 <= 0x249249249249249)
        {
          operator new();
        }

        sub_1808();
      }

      v32 = 112 * v23;
      v64 = 0;
      v65 = v32;
      v66 = 112 * v23;
      v67 = 0;
      *v32 = 0;
      *(v32 + 32) = -1;
      v33 = v55;
      if (v55 != -1)
      {
        v69[0] = v32;
        (off_266F518[v55])(v69, v52);
        *(v32 + 32) = v33;
      }

      *(v32 + 40) = v56;
      if (SHIBYTE(v58) < 0)
      {
        sub_325C((v32 + 48), v57, *(&v57 + 1));
      }

      else
      {
        *(v32 + 48) = v57;
        *(v32 + 64) = v58;
      }

      *(v32 + 72) = v59;
      if (SHIBYTE(v61) < 0)
      {
        sub_325C((v32 + 80), __p, *(&__p + 1));
      }

      else
      {
        *(v32 + 80) = __p;
        *(v32 + 96) = v61;
      }

      *(v32 + 104) = v62;
      v31 = v66 + 112;
      v66 += 112;
      v35 = a5[5];
      v34 = a5[6];
      v36 = v65 + v35 - v34;
      if (v35 != v34)
      {
        break;
      }

LABEL_83:
      v44 = a5[5];
      a5[5] = v36;
      a5[6] = v31;
      a5[7] = v67;
      if (v44)
      {
        operator delete(v44);
      }

LABEL_85:
      a5[6] = v31;
      sub_9A7108(a5, v52, v52, &v63);
      v9 = v51;
      v20 = v63;
LABEL_86:
      *(v8 + 64) = v20;
      *(v8 + 72) = v20;
LABEL_87:
      if (SHIBYTE(v61) < 0)
      {
        operator delete(__p);
        if ((SHIBYTE(v58) & 0x80000000) == 0)
        {
LABEL_89:
          v45 = v55;
          if (v55 == -1)
          {
            goto LABEL_6;
          }

LABEL_93:
          (off_266F4F0[v45])(&v64, v52);
          goto LABEL_6;
        }
      }

      else if ((SHIBYTE(v58) & 0x80000000) == 0)
      {
        goto LABEL_89;
      }

      operator delete(v57);
      v45 = v55;
      if (v55 != -1)
      {
        goto LABEL_93;
      }

LABEL_6:
      v8 += 104;
      if (v8 == v9)
      {
        goto LABEL_3;
      }
    }

    v37 = 0;
    do
    {
      v40 = v36 + v37;
      v41 = v35 + v37;
      *v40 = 0;
      *(v40 + 32) = -1;
      v42 = *(v35 + v37 + 32);
      if (v42 != -1)
      {
        v69[0] = v36 + v37;
        (off_266F588[v42])(v69, v35 + v37);
        *(v40 + 32) = v42;
      }

      v37 += 112;
      *(v40 + 40) = *(v41 + 40);
      v38 = *(v41 + 48);
      *(v40 + 64) = *(v41 + 64);
      *(v40 + 48) = v38;
      *(v41 + 56) = 0;
      *(v41 + 64) = 0;
      *(v41 + 48) = 0;
      *(v40 + 72) = *(v41 + 72);
      v39 = *(v41 + 80);
      *(v40 + 96) = *(v41 + 96);
      *(v40 + 80) = v39;
      *(v41 + 88) = 0;
      *(v41 + 96) = 0;
      *(v41 + 80) = 0;
      *(v40 + 104) = *(v41 + 104);
    }

    while (v35 + v37 != v34);
    v7 = a2;
    while (1)
    {
      if (*(v35 + 103) < 0)
      {
        operator delete(*(v35 + 80));
        if ((*(v35 + 71) & 0x80000000) == 0)
        {
LABEL_78:
          v43 = *(v35 + 32);
          if (v43 == -1)
          {
            goto LABEL_75;
          }

LABEL_82:
          (off_266F4F0[v43])(v69, v35);
          goto LABEL_75;
        }
      }

      else if ((*(v35 + 71) & 0x80000000) == 0)
      {
        goto LABEL_78;
      }

      operator delete(*(v35 + 48));
      v43 = *(v35 + 32);
      if (v43 != -1)
      {
        goto LABEL_82;
      }

LABEL_75:
      *(v35 + 32) = -1;
      v35 += 112;
      if (v35 == v34)
      {
        goto LABEL_83;
      }
    }
  }
}

void sub_9A5808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  if (*(v13 + 71) < 0)
  {
    operator delete(*(v13 + 48));
  }

  sub_55DB28(v13);
  sub_55F0EC((v14 - 136));
  sub_5CEBB8(va);
  _Unwind_Resume(a1);
}

void sub_9A589C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_5CEBB8(va);
  _Unwind_Resume(a1);
}

void sub_9A58B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_5CEBB8(va);
  _Unwind_Resume(a1);
}

void sub_9A58C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_5CEBB8(va);
  _Unwind_Resume(a1);
}

void sub_9A58DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_5CEBB8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_9A58F8(uint64_t a1, uint64_t a2)
{
  sub_9A67C8(a1);
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_9A67C8((a1 + 24));
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v4 = *(a1 + 80);
  v5 = *(a2 + 80);
  if (v4 == -1)
  {
    if (v5 == -1)
    {
      goto LABEL_6;
    }
  }

  else if (v5 == -1)
  {
    (off_266F4F0[v4])(&v13, a1 + 48);
    *(a1 + 80) = -1;
    goto LABEL_6;
  }

  v13 = a1 + 48;
  (off_266F560[v5])(&v13);
LABEL_6:
  *(a1 + 88) = *(a2 + 88);
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v6 = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 96) = v6;
  *(a2 + 119) = 0;
  *(a2 + 96) = 0;
  *(a1 + 120) = *(a2 + 120);
  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  v7 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 128) = v7;
  *(a2 + 151) = 0;
  *(a2 + 128) = 0;
  *(a1 + 152) = *(a2 + 152);
  v8 = *(a1 + 192);
  v9 = *(a2 + 192);
  if (v8 == -1)
  {
    if (v9 == -1)
    {
      goto LABEL_15;
    }
  }

  else if (v9 == -1)
  {
    (off_266F4F0[v8])(&v13, a1 + 160);
    *(a1 + 192) = -1;
    goto LABEL_15;
  }

  v13 = a1 + 160;
  (off_266F560[v9])(&v13);
LABEL_15:
  *(a1 + 200) = *(a2 + 200);
  if (*(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  v10 = *(a2 + 208);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 208) = v10;
  *(a2 + 231) = 0;
  *(a2 + 208) = 0;
  *(a1 + 232) = *(a2 + 232);
  if (*(a1 + 263) < 0)
  {
    operator delete(*(a1 + 240));
  }

  v11 = *(a2 + 240);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 240) = v11;
  *(a2 + 263) = 0;
  *(a2 + 240) = 0;
  *(a1 + 264) = *(a2 + 264);
  return a1;
}

void sub_9A5B04(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (sub_9A619C(a2))
  {
    return;
  }

  v7 = *a2;
  v8 = *(a2 + 8);
  while (v7 != v8)
  {
    v10 = *(v7 + 32);
    if (v10 > 2)
    {
      if (v10 == 3 || v10 == 4)
      {
        if ((*(v7 + 23) & 0x8000000000000000) != 0)
        {
          if (*(v7 + 8))
          {
            goto LABEL_22;
          }
        }

        else if (*(v7 + 23))
        {
          goto LABEL_22;
        }
      }
    }

    else if (v10 == 1)
    {
      if (*v7 != -1)
      {
        goto LABEL_22;
      }
    }

    else if (v10 == 2 && (*(v7 + 4) != -1 || *v7 != -1 || *(v7 + 8) != *(v7 + 16)))
    {
LABEL_22:
      v11 = sub_9A6E7C(a4, v7);
      if (v11)
      {
        v12 = v11[16];
        v13 = *(a3 + 1952);
        v14 = *(a3 + 1960);
        if (v13 >= v14)
        {
          goto LABEL_29;
        }

LABEL_3:
        *v13 = v12;
        v9 = v13 + 8;
      }

      else
      {
        v15 = a4[6];
        v58 = 0x6DB6DB6DB6DB6DB7 * ((v15 - a4[5]) >> 4);
        if (v15 >= a4[7])
        {
          v16 = sub_9A6FB4(a4 + 5, v7);
        }

        else
        {
          sub_55F1E8(v15, v7);
          v16 = v15 + 112;
          a4[6] = v15 + 112;
        }

        a4[6] = v16;
        sub_9A7108(a4, v7, v7, &v58);
        v12 = v58;
        v13 = *(a3 + 1952);
        v14 = *(a3 + 1960);
        if (v13 < v14)
        {
          goto LABEL_3;
        }

LABEL_29:
        v17 = *(a3 + 1944);
        v18 = v13 - v17;
        v19 = (v13 - v17) >> 3;
        v20 = v19 + 1;
        if ((v19 + 1) >> 61)
        {
LABEL_121:
          sub_1794();
        }

        v21 = v14 - v17;
        if (v21 >> 2 > v20)
        {
          v20 = v21 >> 2;
        }

        if (v21 >= 0x7FFFFFFFFFFFFFF8)
        {
          v22 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v22 = v20;
        }

        if (v22)
        {
          if (!(v22 >> 61))
          {
            operator new();
          }

          goto LABEL_122;
        }

        v23 = (v13 - v17) >> 3;
        v24 = (8 * v19);
        v25 = (8 * v19 - 8 * v23);
        *v24 = v12;
        v9 = v24 + 1;
        memcpy(v25, v17, v18);
        *(a3 + 1944) = v25;
        *(a3 + 1952) = v9;
        *(a3 + 1960) = 0;
        if (v17)
        {
          operator delete(v17);
        }
      }

      *(a3 + 1952) = v9;
    }

    v7 += 112;
  }

  v26 = *(a2 + 24);
  v27 = *(a2 + 32);
  while (v26 != v27)
  {
    v29 = *(v26 + 32);
    if (v29 > 2)
    {
      if (v29 == 3 || v29 == 4)
      {
        if ((*(v26 + 23) & 0x8000000000000000) != 0)
        {
          if (*(v26 + 8))
          {
            goto LABEL_60;
          }
        }

        else if (*(v26 + 23))
        {
          goto LABEL_60;
        }
      }
    }

    else if (v29 == 1)
    {
      if (*v26 != -1)
      {
        goto LABEL_60;
      }
    }

    else if (v29 == 2 && (*(v26 + 4) != -1 || *v26 != -1 || *(v26 + 8) != *(v26 + 16)))
    {
LABEL_60:
      v30 = sub_9A6E7C(a4, v26);
      if (v30)
      {
        v31 = v30[16];
        v32 = *(a3 + 1928);
        v33 = *(a3 + 1936);
        if (v32 >= v33)
        {
          goto LABEL_67;
        }

LABEL_41:
        *v32 = v31;
        v28 = v32 + 8;
      }

      else
      {
        v34 = a4[6];
        v58 = 0x6DB6DB6DB6DB6DB7 * ((v34 - a4[5]) >> 4);
        if (v34 >= a4[7])
        {
          v35 = sub_9A6FB4(a4 + 5, v26);
        }

        else
        {
          sub_55F1E8(v34, v26);
          v35 = v34 + 112;
          a4[6] = v34 + 112;
        }

        a4[6] = v35;
        sub_9A7108(a4, v26, v26, &v58);
        v31 = v58;
        v32 = *(a3 + 1928);
        v33 = *(a3 + 1936);
        if (v32 < v33)
        {
          goto LABEL_41;
        }

LABEL_67:
        v36 = *(a3 + 1920);
        v37 = v32 - v36;
        v38 = (v32 - v36) >> 3;
        v39 = v38 + 1;
        if ((v38 + 1) >> 61)
        {
          goto LABEL_121;
        }

        v40 = v33 - v36;
        if (v40 >> 2 > v39)
        {
          v39 = v40 >> 2;
        }

        if (v40 >= 0x7FFFFFFFFFFFFFF8)
        {
          v41 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v41 = v39;
        }

        if (v41)
        {
          if (!(v41 >> 61))
          {
            operator new();
          }

LABEL_122:
          sub_1808();
        }

        v42 = (v32 - v36) >> 3;
        v43 = (8 * v38);
        v44 = (8 * v38 - 8 * v42);
        *v43 = v31;
        v28 = v43 + 1;
        memcpy(v44, v36, v37);
        *(a3 + 1920) = v44;
        *(a3 + 1928) = v28;
        *(a3 + 1936) = 0;
        if (v36)
        {
          operator delete(v36);
        }
      }

      *(a3 + 1928) = v28;
    }

    v26 += 112;
  }

  v45 = *(a2 + 80);
  if (v45 > 2)
  {
    if (v45 == 3 || v45 == 4)
    {
      v46 = *(a2 + 71);
      if ((v46 & 0x80u) != 0)
      {
        v46 = *(a2 + 56);
      }

      if (v46)
      {
        goto LABEL_90;
      }
    }

LABEL_101:
    v48 = *(a2 + 192);
    if (v48 <= 2)
    {
      goto LABEL_102;
    }

LABEL_92:
    if (v48 == 3 || v48 == 4)
    {
      v49 = *(a2 + 183);
      if ((v49 & 0x80u) != 0)
      {
        v49 = *(a2 + 168);
      }

      if (v49)
      {
        goto LABEL_109;
      }
    }
  }

  else
  {
    if (v45 == 1)
    {
      if (*(a2 + 48) == -1)
      {
        goto LABEL_101;
      }
    }

    else if (v45 != 2 || *(a2 + 52) == -1 && *(a2 + 48) == -1 && *(a2 + 56) == *(a2 + 64))
    {
      goto LABEL_101;
    }

LABEL_90:
    v47 = sub_9A6E7C(a4, a2 + 48);
    if (v47)
    {
      *(a3 + 1968) = v47[16];
      v48 = *(a2 + 192);
      if (v48 > 2)
      {
        goto LABEL_92;
      }
    }

    else
    {
      v50 = a4[6];
      v51 = a4[7];
      v58 = 0x6DB6DB6DB6DB6DB7 * ((v50 - a4[5]) >> 4);
      if (v50 >= v51)
      {
        v52 = sub_9A6FB4(a4 + 5, a2 + 48);
      }

      else
      {
        sub_55F1E8(v50, a2 + 48);
        v52 = v50 + 112;
        a4[6] = v50 + 112;
      }

      a4[6] = v52;
      sub_9A7108(a4, a2 + 48, a2 + 48, &v58);
      *(a3 + 1968) = v58;
      v48 = *(a2 + 192);
      if (v48 > 2)
      {
        goto LABEL_92;
      }
    }

LABEL_102:
    if (v48 == 1)
    {
      if (*(a2 + 160) == -1)
      {
        return;
      }
    }

    else if (v48 != 2 || *(a2 + 164) == -1 && *(a2 + 160) == -1 && *(a2 + 168) == *(a2 + 176))
    {
      return;
    }

LABEL_109:
    if (*(a3 + 792) == 1)
    {
      v53 = sub_9A6E7C(a4, a2 + 160);
      if (v53)
      {
        v54 = v53[16];
      }

      else
      {
        v55 = a4[6];
        v56 = a4[7];
        v58 = 0x6DB6DB6DB6DB6DB7 * ((v55 - a4[5]) >> 4);
        if (v55 >= v56)
        {
          v57 = sub_9A6FB4(a4 + 5, a2 + 160);
        }

        else
        {
          sub_55F1E8(v55, a2 + 160);
          v57 = v55 + 112;
          a4[6] = v55 + 112;
        }

        a4[6] = v57;
        sub_9A7108(a4, a2 + 160, a2 + 160, &v58);
        v54 = v58;
      }

      *(a3 + 712) = v54;
    }
  }
}

uint64_t sub_9A619C(uint64_t a1)
{
  if (*a1 != *(a1 + 8))
  {
    return 0;
  }

  if (*(a1 + 24) != *(a1 + 32))
  {
    return 0;
  }

  v2 = *(a1 + 80);
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v4 = *(a1 + 71);
      if (v4 < 0)
      {
        v4 = *(a1 + 56);
      }

      if (v4)
      {
        return 0;
      }
    }

    else if (v2 == 4)
    {
      v3 = *(a1 + 71);
      if (v3 < 0)
      {
        v3 = *(a1 + 56);
      }

      if (v3)
      {
        return 0;
      }
    }
  }

  else if (v2 == 1)
  {
    if (*(a1 + 48) != -1)
    {
      return 0;
    }
  }

  else if (v2 == 2)
  {
    if (*(a1 + 52) != -1)
    {
      return 0;
    }

    if (*(a1 + 48) != -1)
    {
      return 0;
    }

    if (*(a1 + 56) != *(a1 + 64))
    {
      return 0;
    }
  }

  v5 = 0;
  v6 = *(a1 + 192);
  if (v6 > 2)
  {
    if (v6 != 3 && v6 != 4)
    {
      return v5 ^ 1u;
    }

    v7 = *(a1 + 183);
    if (v7 < 0)
    {
      v7 = *(a1 + 168);
    }

    v8 = v7 == 0;
    goto LABEL_37;
  }

  if (v6 == 1)
  {
    v8 = *(a1 + 160) == -1;
    goto LABEL_37;
  }

  if (v6 != 2)
  {
    return v5 ^ 1u;
  }

  if (*(a1 + 164) != -1)
  {
    return 0;
  }

  if (*(a1 + 160) == -1)
  {
    v8 = *(a1 + 168) == *(a1 + 176);
LABEL_37:
    v5 = !v8;
    return v5 ^ 1u;
  }

  return 0;
}

void ****sub_9A6304(void ****a1)
{
  v2 = *a1;
  if (*a1)
  {
    for (i = a1[1]; i != v2; sub_9A6368(a1, i))
    {
      i -= 3;
    }

    a1[1] = v2;
    operator delete(*a1);
  }

  return a1;
}

void sub_9A6368(uint64_t a1, void ***a2)
{
  v2 = *a2;
  if (*a2)
  {
    v4 = a2[1];
    v5 = *a2;
    if (v4 != v2)
    {
      v6 = a2[1];
      do
      {
        v9 = *(v6 - 3);
        v6 -= 3;
        v8 = v9;
        if (v9)
        {
          v10 = *(v4 - 2);
          v7 = v8;
          if (v10 != v8)
          {
            do
            {
              v11 = *(v10 - 2);
              if (v11 != -1)
              {
                (off_266F4E0[v11])(&v12, v10 - 42);
              }

              *(v10 - 2) = -1;
              v10 -= 44;
            }

            while (v10 != v8);
            v7 = *v6;
          }

          *(v4 - 2) = v8;
          operator delete(v7);
        }

        v4 = v6;
      }

      while (v6 != v2);
      v5 = *a2;
    }

    a2[1] = v2;
    operator delete(v5);
  }
}

void sub_9A644C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 103) < 0)
  {
    operator delete(*(a2 + 80));
    if ((*(a2 + 71) & 0x80000000) == 0)
    {
LABEL_3:
      v3 = *(a2 + 32);
      if (v3 == -1)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else if ((*(a2 + 71) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a2 + 48));
  v3 = *(a2 + 32);
  if (v3 != -1)
  {
LABEL_7:
    (off_266F4F0[v3])(&v4, a2);
  }

LABEL_8:
  *(a2 + 32) = -1;
}

void sub_9A64E4(void ***a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 4) < a4)
  {
    sub_9A67C8(a1);
    if (a4 <= 0x249249249249249)
    {
      v9 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 4)) >= 0x124924924924924)
      {
        v10 = 0x249249249249249;
      }

      else
      {
        v10 = v9;
      }

      if (v10 <= 0x249249249249249)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v11 = a1[1];
  v12 = v11 - v8;
  if (0x6DB6DB6DB6DB6DB7 * ((v11 - v8) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        sub_5410A0(v8, v6);
        v6 += 112;
        v8 += 14;
      }

      while (v6 != a3);
      v11 = a1[1];
    }

    if (v11 == v8)
    {
LABEL_31:
      a1[1] = v8;
      return;
    }

    while (1)
    {
      if (*(v11 - 9) < 0)
      {
        operator delete(*(v11 - 32));
        if ((*(v11 - 41) & 0x80000000) == 0)
        {
LABEL_26:
          v15 = (v11 - 112);
          v16 = *(v11 - 80);
          if (v16 == -1)
          {
            goto LABEL_23;
          }

LABEL_30:
          (off_266F4F0[v16])(v17, v15);
          goto LABEL_23;
        }
      }

      else if ((*(v11 - 41) & 0x80000000) == 0)
      {
        goto LABEL_26;
      }

      operator delete(*(v11 - 64));
      v15 = (v11 - 112);
      v16 = *(v11 - 80);
      if (v16 != -1)
      {
        goto LABEL_30;
      }

LABEL_23:
      *(v11 - 80) = -1;
      v11 = v15;
      if (v15 == v8)
      {
        goto LABEL_31;
      }
    }
  }

  v13 = a2 + v12;
  if (v11 != v8)
  {
    do
    {
      sub_5410A0(v8, v6);
      v6 += 112;
      v8 += 14;
      v12 -= 112;
    }

    while (v12);
    v11 = a1[1];
  }

  v19 = v11;
  v20 = v11;
  v17[0] = a1;
  v17[1] = &v19;
  v17[2] = &v20;
  v14 = v11;
  v18 = 0;
  if (v13 != a3)
  {
    v14 = v11;
    do
    {
      sub_55F1E8(v14, v13);
      v13 += 112;
      v14 = v20 + 112;
      v20 += 112;
    }

    while (v13 != a3);
  }

  a1[1] = v14;
}

void sub_9A6798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_9A68B0(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_9A67B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_9A68B0(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_9A67C8(void ***a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return;
  }

  v3 = a1[1];
  v4 = *a1;
  if (v3 == v1)
  {
    goto LABEL_13;
  }

  do
  {
    if (*(v3 - 9) < 0)
    {
      operator delete(*(v3 - 4));
      if (*(v3 - 41) < 0)
      {
LABEL_10:
        operator delete(*(v3 - 8));
        v5 = v3 - 14;
        v6 = *(v3 - 20);
        if (v6 == -1)
        {
          goto LABEL_4;
        }

LABEL_11:
        (off_266F4F0[v6])(&v7, v5);
        goto LABEL_4;
      }
    }

    else if (*(v3 - 41) < 0)
    {
      goto LABEL_10;
    }

    v5 = v3 - 14;
    v6 = *(v3 - 20);
    if (v6 != -1)
    {
      goto LABEL_11;
    }

LABEL_4:
    *(v3 - 20) = -1;
    v3 = v5;
  }

  while (v5 != v1);
  v4 = *a1;
LABEL_13:
  a1[1] = v1;
  operator delete(v4);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t sub_9A68B0(uint64_t a1)
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
        if (*(v4 - 9) < 0)
        {
          operator delete(*(v4 - 32));
          if ((*(v4 - 41) & 0x80000000) == 0)
          {
LABEL_7:
            v6 = v4 - 112;
            v7 = *(v4 - 80);
            if (v7 == -1)
            {
              goto LABEL_4;
            }

LABEL_11:
            (off_266F4F0[v7])(&v9, v6);
            goto LABEL_4;
          }
        }

        else if ((*(v4 - 41) & 0x80000000) == 0)
        {
          goto LABEL_7;
        }

        operator delete(*(v4 - 64));
        v6 = v4 - 112;
        v7 = *(v4 - 80);
        if (v7 != -1)
        {
          goto LABEL_11;
        }

LABEL_4:
        *(v4 - 80) = -1;
        v4 = v6;
      }

      while (v6 != v5);
    }
  }

  return a1;
}

uint64_t sub_9A698C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      if (*(v2 + 119) < 0)
      {
        operator delete(v2[12]);
        if ((*(v2 + 87) & 0x80000000) == 0)
        {
LABEL_6:
          v4 = *(v2 + 12);
          if (v4 == -1)
          {
            goto LABEL_3;
          }

LABEL_10:
          (off_266F4F0[v4])(&v7, v2 + 2);
          goto LABEL_3;
        }
      }

      else if ((*(v2 + 87) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      operator delete(v2[8]);
      v4 = *(v2 + 12);
      if (v4 != -1)
      {
        goto LABEL_10;
      }

LABEL_3:
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

void sub_9A6A54(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 103) < 0)
  {
    operator delete(*(a2 + 80));
    if ((*(a2 + 71) & 0x80000000) == 0)
    {
LABEL_3:
      v3 = *(a2 + 32);
      if (v3 == -1)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else if ((*(a2 + 71) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a2 + 48));
  v3 = *(a2 + 32);
  if (v3 != -1)
  {
LABEL_7:
    (off_266F4F0[v3])(&v4, a2);
  }

LABEL_8:
  *(a2 + 32) = -1;
}

uint64_t sub_9A6AF0(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != v2)
  {
    do
    {
      v4 = v3 - 168;
      *(a1 + 16) = v3 - 168;
      v5 = *(v3 - 8);
      if (v5 != -1)
      {
        (off_266F540[v5])(&v7);
        v4 = *(a1 + 16);
      }

      *(v3 - 8) = -1;
      v3 = v4;
    }

    while (v4 != v2);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 sub_9A6BA0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  *v2 = *a2;
  *(v2 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 24) = *(a2 + 24);
  *(v2 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 48) = *(a2 + 48);
  *(v2 + 64) = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 80) = 0;
  *(v2 + 88) = 0;
  *(v2 + 72) = *(a2 + 72);
  v3 = *(a2 + 96);
  *(v2 + 88) = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(v2 + 96) = v3;
  v4 = *(a2 + 104);
  *(v2 + 108) = *(a2 + 108);
  *(v2 + 104) = v4;
  v5 = *(a2 + 112);
  *(v2 + 128) = *(a2 + 128);
  *(v2 + 112) = v5;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 112) = 0;
  result = *(a2 + 136);
  *(v2 + 152) = *(a2 + 152);
  *(v2 + 136) = result;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a2 + 136) = 0;
  return result;
}

unsigned int *sub_9A6C6C(char **a1, uint64_t a2)
{
  v2 = 0xCF3CF3CF3CF3CF3DLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x186186186186186)
  {
    sub_1794();
  }

  if (0x9E79E79E79E79E7ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x9E79E79E79E79E7ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCF3CF3CF3CF3CF3DLL * ((a1[2] - *a1) >> 3) >= 0xC30C30C30C30C3)
  {
    v5 = 0x186186186186186;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x186186186186186)
    {
      operator new();
    }

    sub_1808();
  }

  v15 = 8 * ((a1[1] - *a1) >> 3);
  *(sub_55BD50(v15, a2) + 160) = 1;
  v6 = (168 * v2 + 168);
  v7 = *a1;
  v8 = a1[1];
  v9 = (v15 + *a1 - v8);
  if (*a1 != v8)
  {
    v10 = (v15 + *a1 - v8);
    v11 = *a1;
    do
    {
      *v10 = 0;
      *(v10 + 40) = -1;
      v12 = *(v11 + 40);
      if (v12 != -1)
      {
        v16 = v10;
        (off_266F550[v12])(&v16, v11);
        *(v10 + 40) = v12;
      }

      v11 += 168;
      v10 += 168;
    }

    while (v11 != v8);
    do
    {
      v13 = *(v7 + 40);
      if (v13 != -1)
      {
        (off_266F540[v13])(&v16, v7);
      }

      *(v7 + 40) = -1;
      v7 += 168;
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

void *sub_9A6E7C(void *a1, uint64_t a2)
{
  v4 = sub_94AD3C(a1, a2);
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

  v10 = *(*a1 + 8 * v8);
  if (!v10)
  {
    return 0;
  }

  v9 = *v10;
  if (*v10)
  {
    if (v7.u32[0] < 2uLL)
    {
      v11 = *&v5 - 1;
      while (1)
      {
        v12 = v9[1];
        if (v12 == v6)
        {
          if (sub_55DD5C((v9 + 2), a2))
          {
            return v9;
          }
        }

        else if ((v12 & v11) != v8)
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

    do
    {
      v13 = v9[1];
      if (v13 == v6)
      {
        if (sub_55DD5C((v9 + 2), a2))
        {
          return v9;
        }
      }

      else
      {
        if (v13 >= *&v5)
        {
          v13 %= *&v5;
        }

        if (v13 != v8)
        {
          return 0;
        }
      }

      v9 = *v9;
    }

    while (v9);
  }

  return v9;
}

uint64_t sub_9A6FB4(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x249249249249249)
  {
    sub_1794();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 4)) >= 0x124924924924924)
  {
    v5 = 0x249249249249249;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x249249249249249)
    {
      operator new();
    }

    sub_1808();
  }

  v11 = 16 * ((a1[1] - *a1) >> 4);
  sub_55F1E8(v11, a2);
  v6 = 112 * v2 + 112;
  v7 = a1[1];
  v8 = v11 + *a1 - v7;
  sub_55EF68(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  a1[1] = v6;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v6;
}

void sub_9A70F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_55F0EC(va);
  _Unwind_Resume(a1);
}

void *sub_9A7108(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_94AD3C(a1, a2);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_23;
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
LABEL_23:
    operator new();
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v14 = v12[1];
      if (v14 == v7)
      {
        if (sub_55DD5C((v12 + 2), a2))
        {
          return v12;
        }
      }

      else if ((v14 & (*&v8 - 1)) != v10)
      {
        goto LABEL_23;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_23;
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
      goto LABEL_23;
    }

LABEL_12:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_23;
    }
  }

  if (!sub_55DD5C((v12 + 2), a2))
  {
    goto LABEL_12;
  }

  return v12;
}

void sub_9A7460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_9A7488(va);
  _Unwind_Resume(a1);
}

void sub_9A7474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_9A7488(va);
  _Unwind_Resume(a1);
}

uint64_t sub_9A7488(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_9A6A54(*(a1 + 8), v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_9A74DC()
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
  xmmword_27B3178 = 0u;
  unk_27B3188 = 0u;
  dword_27B3198 = 1065353216;
  sub_3A9A34(&xmmword_27B3178, v0, v0);
  sub_3A9A34(&xmmword_27B3178, v3, v3);
  sub_3A9A34(&xmmword_27B3178, __p, __p);
  sub_3A9A34(&xmmword_27B3178, v9, v9);
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
    qword_27B3150 = 0;
    qword_27B3158 = 0;
    qword_27B3148 = 0;
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

void sub_9A7724(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B3160)
  {
    qword_27B3168 = qword_27B3160;
    operator delete(qword_27B3160);
  }

  _Unwind_Resume(exception_object);
}

void sub_9A77D0(uint64_t a2@<X1>, char a3@<W2>, uint64_t a5@<X8>, uint8x8_t a6@<D0>)
{
  *&v20[3] = -1;
  *v20 = -1;
  memset(&v20[7], 0, 25);
  v9 = *(a2 + 31);
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a2 + 16);
  }

  if (v9)
  {
    __len[0] = sub_12331FC();
    if (sub_1232EE0(a2 + 40, __len))
    {
      sub_9D69F4(a2 + 8, __len);
      v10 = HIBYTE(v16);
      if (v16 < 0)
      {
        v10 = __len[1];
      }

      if (v10)
      {
        v11 = v19;
        if ((v19 & 0x80u) != 0)
        {
          v11 = v18;
        }

        if (v11)
        {
          if (SHIBYTE(v16) < 0)
          {
            sub_13A68(&v20[8], __len[0], __len[1]);
          }

          else
          {
            a6.i32[1] = HIDWORD(__len[0]);
            *&v20[8] = *__len;
            *&v20[24] = v16;
          }
        }
      }

      if (v19 < 0)
      {
        operator delete(__p);
        if ((SHIBYTE(v16) & 0x80000000) == 0)
        {
          goto LABEL_16;
        }
      }

      else if ((SHIBYTE(v16) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      operator delete(__len[0]);
    }
  }

LABEL_16:
  *v20 = *a2;
  a6.i32[0] = *(a2 + 4);
  v12 = vmovl_u8(a6).u64[0];
  if (vuzp1_s8(v12, v12).u32[0] != 0xFFFFFF)
  {
    *&v20[4] = *(a2 + 4);
  }

  *a5 = *v20;
  v13 = (a5 + 8);
  if ((v20[31] & 0x80000000) != 0)
  {
    sub_325C(v13, *&v20[8], *&v20[16]);
    v14 = v20[31];
    *(a5 + 32) = 1;
    *(a5 + 40) = -1;
    *(a5 + 43) = -1;
    *(a5 + 47) = 0;
    *(a5 + 63) = 0;
    *(a5 + 55) = 0;
    *(a5 + 71) = 0;
    *(a5 + 72) = a3;
    *(a5 + 88) = 0;
    *(a5 + 96) = 0;
    *(a5 + 80) = 0;
    *(a5 + 104) = 0;
    if (v14 < 0)
    {
      operator delete(*&v20[8]);
    }
  }

  else
  {
    *v13 = *&v20[8];
    *(a5 + 24) = *&v20[24];
    *(a5 + 32) = 1;
    *(a5 + 40) = -1;
    *(a5 + 43) = -1;
    *(a5 + 47) = 0;
    *(a5 + 63) = 0;
    *(a5 + 55) = 0;
    *(a5 + 71) = 0;
    *(a5 + 72) = a3;
    *(a5 + 88) = 0;
    *(a5 + 96) = 0;
    *(a5 + 80) = 0;
    *(a5 + 104) = 0;
  }
}

void sub_9A79E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  sub_509680(&a10);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_9A7A18(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v5 = sub_503310(a1, a2, 0, "access point");
  v6 = (v5 - *v5);
  if (*v6 < 0x1Bu || (v7 = v6[13]) == 0)
  {
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *(a4 + 64) = 0u;
    *(a4 + 80) = 0u;
    *(a4 + 96) = 0u;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 40) = -1;
    *(a4 + 43) = -1;
    *(a4 + 47) = 0;
    *(a4 + 55) = 0;
    *(a4 + 63) = 0;
    *(a4 + 71) = 0;
    *(a4 + 80) = 0;
    *(a4 + 88) = 0;
    *(a4 + 96) = 0;
    *(a4 + 104) = 0;
    return;
  }

  v8 = (v5 + v7 + *(v5 + v7));
  v9 = (v8 - *v8);
  v10 = *v9;
  if (v10 < 7)
  {
    v11 = 0;
    v12 = 0xFFFFFFLL;
    if (v10 < 5)
    {
      goto LABEL_16;
    }

    v13 = v9[2];
    if (!v13)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  if (v9[3])
  {
    v11 = *(v8 + v9[3]);
    if (v10 >= 9)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v11 = 0;
    if (v10 >= 9)
    {
LABEL_6:
      if (v9[4])
      {
        v12 = *(v8 + v9[4]);
        v13 = v9[2];
        if (!v13)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v12 = 0xFFFFFFLL;
        v13 = v9[2];
        if (!v13)
        {
          goto LABEL_16;
        }
      }

LABEL_13:
      v14 = (v8 + v13 + *(v8 + v13));
      goto LABEL_17;
    }
  }

  v12 = 0xFFFFFFLL;
  v13 = v9[2];
  if (v13)
  {
    goto LABEL_13;
  }

LABEL_16:
  v14 = 0;
LABEL_17:
  sub_509164(v14, &v27);
  v20 = v27;
  *v21 = *v28;
  *&v21[7] = *&v28[7];
  v19 = v11 | (v12 << 32);
  v22 = v29;
  v23 = v30;
  *__p = v31;
  v25 = v32;
  v26 = 1;
  LOBYTE(v27) = 0;
  nullsub_1();
  sub_9A77D0(&v19, 5, a4, v15);
  if (v26)
  {
    v16 = __p[0];
    if (__p[0])
    {
      v17 = __p[1];
      v18 = __p[0];
      if (__p[1] != __p[0])
      {
        do
        {
          if (*(v17 - 1) < 0)
          {
            operator delete(*(v17 - 3));
          }

          v17 -= 4;
        }

        while (v17 != v16);
        v18 = __p[0];
      }

      __p[1] = v16;
      operator delete(v18);
    }

    if (v22 < 0)
    {
      operator delete(v20);
    }
  }
}

uint64_t sub_9A7C50(uint64_t a1)
{
  if (*(a1 + 72) != 1)
  {
    return a1;
  }

  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 48);
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
      v4 = *(a1 + 48);
    }

    *(a1 + 56) = v2;
    operator delete(v4);
  }

  if ((*(a1 + 31) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*(a1 + 8));
  return a1;
}

void sub_9A7CF4(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v5 = sub_92FC60(a1, a2, 0, "line");
  v6 = (v5 - *v5);
  if (*v6 < 0x17u || (v7 = v6[11]) == 0)
  {
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *(a4 + 64) = 0u;
    *(a4 + 80) = 0u;
    *(a4 + 96) = 0u;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 40) = -1;
    *(a4 + 43) = -1;
    *(a4 + 47) = 0;
    *(a4 + 55) = 0;
    *(a4 + 63) = 0;
    *(a4 + 71) = 0;
    *(a4 + 80) = 0;
    *(a4 + 88) = 0;
    *(a4 + 96) = 0;
    *(a4 + 104) = 0;
    return;
  }

  v8 = (v5 + v7 + *(v5 + v7));
  v9 = (v8 - *v8);
  v10 = *v9;
  if (v10 < 7)
  {
    v11 = 0;
    v12 = 0xFFFFFFLL;
    if (v10 < 5)
    {
      goto LABEL_16;
    }

    v13 = v9[2];
    if (!v13)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  if (v9[3])
  {
    v11 = *(v8 + v9[3]);
    if (v10 >= 9)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v11 = 0;
    if (v10 >= 9)
    {
LABEL_6:
      if (v9[4])
      {
        v12 = *(v8 + v9[4]);
        v13 = v9[2];
        if (!v13)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v12 = 0xFFFFFFLL;
        v13 = v9[2];
        if (!v13)
        {
          goto LABEL_16;
        }
      }

LABEL_13:
      v14 = (v8 + v13 + *(v8 + v13));
      goto LABEL_17;
    }
  }

  v12 = 0xFFFFFFLL;
  v13 = v9[2];
  if (v13)
  {
    goto LABEL_13;
  }

LABEL_16:
  v14 = 0;
LABEL_17:
  sub_509164(v14, &v27);
  v20 = v27;
  *v21 = *v28;
  *&v21[7] = *&v28[7];
  v19 = v11 | (v12 << 32);
  v22 = v29;
  v23 = v30;
  *__p = v31;
  v25 = v32;
  v26 = 1;
  LOBYTE(v27) = 0;
  nullsub_1();
  sub_9A77D0(&v19, 2, a4, v15);
  if (v26)
  {
    v16 = __p[0];
    if (__p[0])
    {
      v17 = __p[1];
      v18 = __p[0];
      if (__p[1] != __p[0])
      {
        do
        {
          if (*(v17 - 1) < 0)
          {
            operator delete(*(v17 - 3));
          }

          v17 -= 4;
        }

        while (v17 != v16);
        v18 = __p[0];
      }

      __p[1] = v16;
      operator delete(v18);
    }

    if (v22 < 0)
    {
      operator delete(v20);
    }
  }
}

__n128 sub_9A7F2C@<Q0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = sub_92FC60(a1, *a2, 0, "line");
  v6 = (v4 - *v4);
  if (*v6 < 0x17u || (v7 = v6[11]) == 0)
  {
    *a3 = 0;
    *(a3 + 72) = 0;
    return result;
  }

  v8 = (v4 + v7 + *(v4 + v7));
  v9 = (v8 - *v8);
  v10 = *v9;
  if (v10 <= 6)
  {
    v11 = 0;
    v12 = 0xFFFFFFLL;
    if (v10 < 5)
    {
      goto LABEL_15;
    }

    v13 = v9[2];
    if (!v13)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (v9[3])
  {
    v11 = *(v8 + v9[3]);
    if (v10 >= 9)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v11 = 0;
    if (v10 >= 9)
    {
LABEL_6:
      if (v9[4])
      {
        v12 = *(v8 + v9[4]);
        v13 = v9[2];
        if (!v13)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v12 = 0xFFFFFFLL;
        v13 = v9[2];
        if (!v13)
        {
          goto LABEL_15;
        }
      }

      goto LABEL_12;
    }
  }

  v12 = 0xFFFFFFLL;
  v13 = v9[2];
  if (!v13)
  {
LABEL_15:
    v14 = 0;
    goto LABEL_16;
  }

LABEL_12:
  v14 = (v8 + v13 + *(v8 + v13));
LABEL_16:
  sub_509164(v14, &v18);
  v15 = *v19;
  *(a3 + 8) = v18;
  *(a3 + 16) = v15;
  *(a3 + 23) = *&v19[7];
  LOBYTE(v15) = v20;
  result = v21;
  v16 = v23;
  v17 = v22;
  *a3 = v11 | (v12 << 32);
  *(a3 + 31) = v15;
  *(a3 + 32) = result;
  *(a3 + 48) = v17;
  *(a3 + 64) = v16;
  *(a3 + 72) = 1;
  return result;
}

int *sub_9A809C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_93E04C(a1, a2, 0, "system");
  v7 = (v6 - *v6);
  if (*v7 >= 0x11u && (v8 = v7[8]) != 0)
  {
    v9 = *(v6 + v8);
  }

  else
  {
    v9 = -1;
  }

  if (v9 == -1)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  result = sub_93E04C(a1, a2, 0, "system");
  v12 = (result - *result);
  v13 = *v12;
  if (v13 < 0xF)
  {
    if (v13 < 0xD)
    {
      if (v9 != -1)
      {
        v17 = *&v9 | 0xFFFFFFFF00000000;
LABEL_28:
        *a3 = v17;
        *(a3 + 8) = 0;
        *(a3 + 16) = 0;
        *(a3 + 24) = 0;
        *(a3 + 32) = 2;
        *(a3 + 40) = -1;
        *(a3 + 43) = -1;
        *(a3 + 47) = 0;
        *(a3 + 63) = 0;
        *(a3 + 55) = 0;
        *(a3 + 71) = 768;
        goto LABEL_29;
      }

      goto LABEL_21;
    }
  }

  else if (v12[7])
  {
    v14 = *(result + v12[7]);
    v15 = v12[6];
    if (!v12[6])
    {
      goto LABEL_11;
    }

LABEL_17:
    v16 = *(result + v15);
    if (v14 == 0x7FFF)
    {
      v14 = v16;
    }

    if (v14 != 0x7FFF)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  v14 = 0x7FFF;
  v15 = v12[6];
  if (v12[6])
  {
    goto LABEL_17;
  }

LABEL_11:
  if (v14 == 0x7FFF)
  {
    v14 = 0x7FFF;
  }

  if (v14 != 0x7FFF)
  {
    goto LABEL_22;
  }

LABEL_20:
  if (v9 != -1)
  {
LABEL_22:
    v17 = *&v10 | 0xFFFFFFFF00000000;
    if (v9 == -1)
    {
      v17 = -1;
    }

    if (v14 != 0x7FFF)
    {
      v17 = v17 | (v14 << 32);
    }

    goto LABEL_28;
  }

LABEL_21:
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 64) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 40) = -1;
  *(a3 + 43) = -1;
  *(a3 + 47) = 0;
  *(a3 + 55) = 0;
  *(a3 + 63) = 0;
  *(a3 + 71) = 0;
LABEL_29:
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  *(a3 + 104) = 0;
  *(a3 + 96) = 0;
  return result;
}

void sub_9A8248(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, int **a6@<X5>, uint64_t a7@<X8>)
{
  v63 = a3;
  v13 = *a6;
  v12 = a6[1];
  if (*a6 == v12)
  {
LABEL_91:
    *(a7 + 32) = 0u;
    *(a7 + 48) = 0u;
    *(a7 + 64) = 0u;
    *(a7 + 80) = 0u;
    *(a7 + 96) = 0u;
    *a7 = 0u;
    *(a7 + 16) = 0u;
    *(a7 + 40) = -1;
    *(a7 + 43) = -1;
    *(a7 + 47) = 0;
    *(a7 + 55) = 0;
    *(a7 + 63) = 0;
    *(a7 + 71) = 0;
    *(a7 + 80) = 0;
    *(a7 + 88) = 0;
    *(a7 + 96) = 0;
    *(a7 + 104) = 0;
    return;
  }

  v15 = a4 > 0xFFFFFFFEFFFFFFFFLL || a4 == 0;
  v50 = v15;
  while (1)
  {
    v16 = *v13;
    LOBYTE(v54) = 0;
    v62 = 0;
    if (v16 > 1)
    {
      if (v16 == 2)
      {
        sub_9A7F2C(a2, &v63, &v64);
        if (v69 == 1)
        {
          v9 = v64;
          v10 = *v65;
          v70[0] = *&v65[8];
          *(v70 + 7) = *&v65[15];
          v7 = v65[23];
          v53 = *&v65[24];
          v8 = v66;
          v11 = v67;
          v30 = 1;
          v31 = v68;
          v32 = 2;
          if (v62 != 1)
          {
            goto LABEL_42;
          }
        }

        else
        {
          v30 = 0;
          v9 &= 0xFFFFFFFFFFFFFF00;
          v32 = 2;
        }

        goto LABEL_44;
      }

      if (v16 != 3)
      {
        if (v16 != 4)
        {
          goto LABEL_41;
        }

        v17 = sub_92FC60(a2, v63, 0, "line");
        v18 = (v17 - *v17);
        if (*v18 < 0x41u)
        {
          goto LABEL_36;
        }

        v19 = v18[32];
        if (!v19)
        {
          goto LABEL_36;
        }

        v20 = (v17 + v19 + *(v17 + v19));
        v21 = (v20 - *v20);
        v22 = *v21;
        if (v22 < 7)
        {
          if (v22 < 5)
          {
            v23 = 0;
            v41 = 0;
            v39 = 0xFFFFFFLL;
            goto LABEL_89;
          }

          v23 = 0;
          v39 = 0xFFFFFFLL;
          v42 = v21[2];
          if (v42)
          {
            goto LABEL_82;
          }

          goto LABEL_64;
        }

        if (v21[3])
        {
          v23 = *(v20 + v21[3]);
          if (v22 >= 9)
          {
LABEL_78:
            if (v21[4])
            {
              v39 = *(v20 + v21[4]);
              v42 = v21[2];
              if (!v42)
              {
                goto LABEL_64;
              }

              goto LABEL_82;
            }
          }
        }

        else
        {
          v23 = 0;
          if (v22 >= 9)
          {
            goto LABEL_78;
          }
        }

        v39 = 0xFFFFFFLL;
        v42 = v21[2];
        if (v42)
        {
LABEL_82:
          v41 = (v20 + v42 + *(v20 + v42));
          goto LABEL_89;
        }

LABEL_64:
        v41 = 0;
        goto LABEL_89;
      }

      v33 = sub_92FC60(a2, v63, 0, "line");
      v34 = (v33 - *v33);
      if (*v34 < 0x43u)
      {
        goto LABEL_36;
      }

      v35 = v34[33];
      if (!v35)
      {
        goto LABEL_36;
      }

      v36 = (v33 + v35 + *(v33 + v35));
      v37 = (v36 - *v36);
      v38 = *v37;
      if (v38 < 7)
      {
        if (v38 < 5)
        {
          v23 = 0;
          v41 = 0;
          v39 = 0xFFFFFFLL;
          goto LABEL_89;
        }

        v23 = 0;
        v39 = 0xFFFFFFLL;
        v40 = v37[2];
        if (v40)
        {
          goto LABEL_76;
        }

        goto LABEL_61;
      }

      if (v37[3])
      {
        v23 = *(v36 + v37[3]);
        if (v38 >= 9)
        {
LABEL_72:
          if (v37[4])
          {
            v39 = *(v36 + v37[4]);
            v40 = v37[2];
            if (!v40)
            {
              goto LABEL_61;
            }

LABEL_76:
            v41 = (v36 + v40 + *(v36 + v40));
            goto LABEL_89;
          }
        }
      }

      else
      {
        v23 = 0;
        if (v38 >= 9)
        {
          goto LABEL_72;
        }
      }

      v39 = 0xFFFFFFLL;
      v40 = v37[2];
      if (v40)
      {
        goto LABEL_76;
      }

LABEL_61:
      v41 = 0;
      goto LABEL_89;
    }

    if (v16)
    {
      if (v16 != 1)
      {
LABEL_41:
        v32 = 0;
        v30 = 0;
        v9 &= 0xFFFFFFFFFFFFFF00;
        goto LABEL_44;
      }

      v24 = sub_92FC60(a2, v63, 0, "line");
      v25 = (v24 - *v24);
      if (*v25 < 0x15u || (v26 = v25[10]) == 0)
      {
LABEL_36:
        v30 = 0;
        v9 &= 0xFFFFFFFFFFFFFF00;
        v32 = 1;
        goto LABEL_44;
      }

      v27 = (v24 + v26 + *(v24 + v26));
      v28 = (v27 - *v27);
      v29 = *v28;
      if (v29 < 7)
      {
        if (v29 < 5)
        {
          v23 = 0;
          v41 = 0;
          v39 = 0xFFFFFFLL;
          goto LABEL_89;
        }

        v23 = 0;
        v39 = 0xFFFFFFLL;
        v43 = v28[2];
        if (v43)
        {
          goto LABEL_88;
        }

        goto LABEL_67;
      }

      if (v28[3])
      {
        v23 = *(v27 + v28[3]);
        if (v29 >= 9)
        {
LABEL_84:
          if (v28[4])
          {
            v39 = *(v27 + v28[4]);
            v43 = v28[2];
            if (!v43)
            {
              goto LABEL_67;
            }

LABEL_88:
            v41 = (v27 + v43 + *(v27 + v43));
LABEL_89:
            sub_509164(v41, &v64);
            v10 = v64;
            v9 = v23 | (v39 << 32);
            v70[0] = *v65;
            *(v70 + 7) = *&v65[7];
            v7 = v65[15];
            v53 = *&v65[16];
            v8 = *&v65[32];
            v11 = v66;
            v32 = 1;
            v30 = 1;
            v31 = v67;
            if (v62 != 1)
            {
LABEL_42:
              v54 = v9;
              __p = v10;
              *v56 = v70[0];
              *&v56[7] = *(v70 + 7);
              v57 = v7;
              v70[0] = 0;
              *(v70 + 7) = 0;
              v58 = v53;
              v59 = v8;
              v60 = v11;
              v61 = v31;
              v62 = 1;
              v11 = 0;
              v8 = 0;
              v7 = 0;
              v10 = 0;
              goto LABEL_45;
            }

            goto LABEL_44;
          }
        }
      }

      else
      {
        v23 = 0;
        if (v29 >= 9)
        {
          goto LABEL_84;
        }
      }

      v39 = 0xFFFFFFLL;
      v43 = v28[2];
      if (v43)
      {
        goto LABEL_88;
      }

LABEL_67:
      v41 = 0;
      goto LABEL_89;
    }

    if (v50 || (sub_9A94B4(a1, a4, v63, &v64), (v69 & 1) == 0))
    {
      v30 = 0;
      v9 &= 0xFFFFFFFFFFFFFF00;
      v32 = 7;
    }

    else
    {
      v9 = v64;
      v10 = *v65;
      v70[0] = *&v65[8];
      *(v70 + 7) = *&v65[15];
      v7 = v65[23];
      v53 = *&v65[24];
      v8 = v66;
      v11 = v67;
      v30 = 1;
      v31 = v68;
      v32 = 7;
      if (v62 != 1)
      {
        goto LABEL_42;
      }
    }

LABEL_44:
    if (!v30)
    {
      goto LABEL_55;
    }

LABEL_45:
    if (v8)
    {
      break;
    }

    if ((v7 & 0x80) == 0)
    {
      goto LABEL_55;
    }

LABEL_53:
    operator delete(v10);
    if (v62 == 1)
    {
      goto LABEL_93;
    }

LABEL_56:
    if (++v13 == v12)
    {
      goto LABEL_91;
    }
  }

  while (v11 != v8)
  {
    if (*(v11 - 1) < 0)
    {
      operator delete(*(v11 - 3));
    }

    v11 -= 4;
  }

  operator delete(v8);
  v11 = v8;
  if (v7 < 0)
  {
    goto LABEL_53;
  }

LABEL_55:
  if (v62 != 1)
  {
    goto LABEL_56;
  }

LABEL_93:
  LOBYTE(v64) = 0;
  nullsub_1();
  sub_9A77D0(&v54, v32, a7, v44);
  if (v62 == 1)
  {
    v45 = v59;
    if (v59)
    {
      v46 = v60;
      v47 = v59;
      if (v60 != v59)
      {
        do
        {
          if (*(v46 - 1) < 0)
          {
            operator delete(*(v46 - 3));
          }

          v46 -= 4;
        }

        while (v46 != v45);
        v47 = v59;
      }

      v60 = v45;
      operator delete(v47);
    }

    if (v57 < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_9A8A48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_9A7C50(va);
  _Unwind_Resume(a1);
}

void sub_9A8A5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_9A7C50(va);
  _Unwind_Resume(a1);
}

void sub_9A8A70(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v7 = sub_92FC60(a3, a4, 0, "line");
  v8 = (v7 - *v7);
  if (*v8 >= 0x45u)
  {
    v9 = v8[34];
    if (v9)
    {
      if (*(v7 + v9 + *(v7 + v9)))
      {
        operator new();
      }
    }
  }

  if (*(a5 + 1433) == 1)
  {
    operator new();
  }

  operator new();
}

void sub_9A8DA8(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if (*(a5 + 1433) == 1)
  {
    operator new();
  }

  operator new();
}

void sub_9A8ED8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v12 = sub_92FC60(a3, a4, 0, "line");
  v13 = (v12 - *v12);
  if (*v13 >= 0x45u)
  {
    v14 = v13[34];
    if (v14)
    {
      if (*(v12 + v14 + *(v12 + v14)))
      {
        operator new();
      }
    }
  }

  sub_9A8DA8(a2, a3, a4, a5, a6);
}

void sub_9A9160(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = sub_92FC60(a3, a4, 0, "line");
  v9 = (v8 - *v8);
  if (*v9 >= 0x45u)
  {
    v10 = v9[34];
    if (v10)
    {
      if (*(v8 + v10 + *(v8 + v10)))
      {
        operator new();
      }
    }
  }

  if (*(a6 + 1433) == 1)
  {
    operator new();
  }

  operator new();
}

void sub_9A94B4(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = sub_93D480(a1, a2, 0, "station");
  v7 = (v6 - *v6);
  if (*v7 >= 0x1Fu && (v8 = v7[15]) != 0)
  {
    v9 = (v6 + v8 + *(v6 + v8));
    v18 = 0uLL;
    v19 = 0;
    sub_9A9974(&v18, *v9);
    v21 = (v9 + 1);
    v20 = &v9[*v9 + 1];
    sub_9A9C28(&v21, &v20, &v18, sub_9A97C4);
    v17 = v18;
    v10 = v18;
    v11 = v18;
    if (v18 != *(&v18 + 1))
    {
      v11 = v18;
      while (*(v11 + 80) != a3)
      {
        v11 += 88;
        if (v11 == *(&v18 + 1))
        {
          goto LABEL_11;
        }
      }
    }

    if (v11 != *(&v18 + 1))
    {
      *a4 = *v11;
      if (*(v11 + 31) < 0)
      {
        sub_325C((a4 + 8), *(v11 + 8), *(v11 + 16));
      }

      else
      {
        v12 = *(v11 + 8);
        *(a4 + 24) = *(v11 + 24);
        *(a4 + 8) = v12;
      }

      *(a4 + 32) = *(v11 + 32);
      sub_39A3D8((a4 + 48), (v11 + 48));
      *(a4 + 72) = 1;
      v10 = v17;
      if (!v17)
      {
        return;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v10 = 0;
    v17 = 0uLL;
  }

LABEL_11:
  *a4 = 0;
  *(a4 + 72) = 0;
  if (!v10)
  {
    return;
  }

LABEL_12:
  for (i = *(&v17 + 1); i != v10; i -= 88)
  {
    v14 = *(i - 5);
    if (v14)
    {
      v15 = *(i - 4);
      v16 = *(i - 5);
      if (v15 != v14)
      {
        do
        {
          if (*(v15 - 1) < 0)
          {
            operator delete(*(v15 - 24));
          }

          v15 -= 32;
        }

        while (v15 != v14);
        v16 = *(i - 5);
      }

      *(i - 4) = v14;
      operator delete(v16);
    }

    if (*(i - 57) < 0)
    {
      operator delete(*(i - 10));
    }
  }

  operator delete(v10);
}

void sub_9A96C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 + 31) < 0)
  {
    operator delete(*v10);
  }

  sub_9A9700(&a9);
  _Unwind_Resume(a1);
}

void sub_9A96EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_9A9700(va);
  _Unwind_Resume(a1);
}

char **sub_9A9700(char **a1)
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
        v5 = *(v3 - 5);
        if (v5)
        {
          v6 = *(v3 - 4);
          v7 = *(v3 - 5);
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
            v7 = *(v3 - 5);
          }

          *(v3 - 4) = v5;
          operator delete(v7);
        }

        if (*(v3 - 57) < 0)
        {
          operator delete(*(v3 - 10));
        }

        v3 -= 88;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

__n128 sub_9A97C4@<Q0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a1 - *a1);
  if (*v4 < 9u)
  {
    v5 = 0;
    v6 = (&loc_1120530 + 1);
    v7 = *(&loc_1120530 + 1);
    if (*(&loc_1120530 + 1) >= 7u)
    {
      goto LABEL_5;
    }

LABEL_11:
    v8 = 0;
    v9 = 0xFFFFFFLL;
    if (v7 < 5)
    {
      goto LABEL_16;
    }

    v10 = v6[2];
    if (!v10)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  v5 = v4[4];
  if (v5)
  {
    v5 = (v5 + a1 + *(v5 + a1));
  }

  v6 = (v5 - *v5);
  v7 = *v6;
  if (v7 < 7)
  {
    goto LABEL_11;
  }

LABEL_5:
  if (v6[3])
  {
    v8 = *(v5 + v6[3]);
    if (v7 >= 9)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = 0;
    if (v7 >= 9)
    {
LABEL_7:
      if (v6[4])
      {
        v9 = *(v5 + v6[4]);
        v10 = v6[2];
        if (!v10)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v9 = 0xFFFFFFLL;
        v10 = v6[2];
        if (!v10)
        {
          goto LABEL_16;
        }
      }

      goto LABEL_13;
    }
  }

  v9 = 0xFFFFFFLL;
  v10 = v6[2];
  if (!v10)
  {
LABEL_16:
    v11 = 0;
    goto LABEL_17;
  }

LABEL_13:
  v11 = (v5 + v10 + *(v5 + v10));
LABEL_17:
  sub_509164(v11, &v20);
  v12 = v20;
  v26[0] = *v21;
  *(v26 + 7) = *&v21[7];
  v13 = v22;
  result = v23;
  v15 = v24;
  v16 = v25;
  v17 = a1 - *a1;
  v18 = *(a1 + *(v17 + 2));
  v19 = *(a1 + *(v17 + 3));
  *a2 = v8 | (v9 << 32);
  *(a2 + 8) = v12;
  *(a2 + 16) = v26[0];
  *(a2 + 23) = *(v26 + 7);
  *(a2 + 31) = v13;
  *(a2 + 32) = result;
  *(a2 + 48) = v15;
  *(a2 + 64) = v16;
  *(a2 + 72) = v18;
  *(a2 + 80) = v19;
  return result;
}

void sub_9A9974(void **a1, unint64_t a2)
{
  if (0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3) < a2)
  {
    if (a2 < 0x2E8BA2E8BA2E8BBLL)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_9A9A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_9A9A68(va);
  _Unwind_Resume(a1);
}

uint64_t sub_9A9A68(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 88;
    v4 = *(i - 40);
    if (v4)
    {
      v5 = *(i - 32);
      v6 = *(i - 40);
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
        v6 = *(i - 40);
      }

      *(i - 32) = v4;
      operator delete(v6);
    }

    if (*(i - 57) < 0)
    {
      operator delete(*(i - 80));
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_9A9B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 8);
      *(a4 + 24) = *(v6 + 24);
      *(a4 + 8) = v7;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      *(v6 + 8) = 0;
      *(a4 + 32) = *(v6 + 32);
      *(a4 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 48) = 0;
      *(a4 + 48) = *(v6 + 48);
      *(a4 + 64) = *(v6 + 64);
      *(v6 + 48) = 0;
      *(v6 + 56) = 0;
      *(v6 + 64) = 0;
      *(a4 + 72) = *(v6 + 72);
      v6 += 88;
      a4 += 88;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      v8 = *(v5 + 48);
      if (v8)
      {
        v9 = *(v5 + 56);
        v10 = *(v5 + 48);
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
          v10 = *(v5 + 48);
        }

        *(v5 + 56) = v8;
        operator delete(v10);
      }

      if (*(v5 + 31) < 0)
      {
        operator delete(*(v5 + 8));
      }

      v5 += 88;
    }
  }
}

uint64_t *sub_9A9C28(char **a1, unsigned int **a2, uint64_t *a3, void (*a4)(uint64_t *__return_ptr, char *))
{
  if (*a1 != *a2)
  {
    a4(&v16, &(*a1)[**a1]);
    while (1)
    {
      v9 = a3[1];
      if (v9 >= a3[2])
      {
        sub_9A9DA0(a3, &v16);
        v11 = __p[0];
        a3[1] = v12;
        if (v11)
        {
          v13 = __p[1];
          v14 = v11;
          if (__p[1] != v11)
          {
            do
            {
              if (*(v13 - 1) < 0)
              {
                operator delete(*(v13 - 3));
              }

              v13 -= 4;
            }

            while (v13 != v11);
            v14 = __p[0];
          }

          __p[1] = v11;
          operator delete(v14);
        }
      }

      else
      {
        *v9 = v16;
        v10 = v17;
        *(v9 + 24) = v18;
        *(v9 + 8) = v10;
        v18 = 0;
        v17 = 0uLL;
        *(v9 + 32) = v19;
        *(v9 + 56) = 0;
        *(v9 + 64) = 0;
        *(v9 + 48) = 0;
        *(v9 + 48) = *__p;
        *(v9 + 64) = v21;
        __p[0] = 0;
        __p[1] = 0;
        v21 = 0;
        *(v9 + 72) = v22;
        a3[1] = v9 + 88;
      }

      if (SHIBYTE(v18) < 0)
      {
        operator delete(v17);
      }

      v8 = (*a1 + 4);
      *a1 = v8;
      if (v8 == *a2)
      {
        break;
      }

      a4(&v16, v8 + *v8);
    }
  }

  return a3;
}

void sub_9A9D8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_3A2284(va);
  _Unwind_Resume(a1);
}

double sub_9A9DA0(uint64_t *a1, uint64_t a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    sub_1794();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v5 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x2E8BA2E8BA2E8BALL)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 8 * ((a1[1] - *a1) >> 3);
  *v6 = *a2;
  *(v6 + 8) = *(a2 + 8);
  *(v6 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v7 = *(a2 + 48);
  *(v6 + 32) = *(a2 + 32);
  *(v6 + 48) = v7;
  *(v6 + 64) = *(a2 + 64);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 48) = 0;
  *(v6 + 72) = *(a2 + 72);
  v8 = a1[1];
  v9 = 88 * v2 + *a1 - v8;
  sub_9A9B20(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = (88 * v2 + 88);
  *(a1 + 1) = v11;
  if (v10)
  {
    operator delete(v10);
    *&v11 = 88 * v2 + 88;
  }

  return *&v11;
}

void sub_9A9F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_9A9A68(va);
  _Unwind_Resume(a1);
}

void *sub_9A9F28(uint64_t *a1, uint64_t a2, int a3)
{
  result = &unk_22A5C60;
  if (a3 > 3)
  {
    switch(a3)
    {
      case 4:
        if (*(a2 + 792))
        {
          return (a2 + 600);
        }

        break;
      case 5:
        if (*(a2 + 952) == 1)
        {
          v29 = *(a2 + 856);
          if (v29 != -1)
          {
            v30 = (*a1 + 120);
            v31 = *v30 + 304 * v29 + 192;
            if (0x86BCA1AF286BCA1BLL * ((v30[1] - *v30) >> 4) > v29)
            {
              return v31;
            }
          }
        }

        break;
      case 7:
        v11 = *(a2 + 48);
        if (v11 != -1 && *(a2 + 792) == 1)
        {
          v12 = *(a2 + 752);
          if (v12 != -1)
          {
            v13 = *a1;
            v14 = *(*a1 + 72);
            if (0x66FD0EB66FD0EB67 * ((v13[10] - v14) >> 3) > v12 && 0xCF3CF3CF3CF3CF3DLL * ((v13[1] - *v13) >> 3) > v11)
            {
              v15 = *(*v13 + 168 * v11 + 104);
              if (v15 != -1)
              {
                v16 = v13[3];
                if (v15 < 0x8E38E38E38E38E39 * ((v13[4] - v16) >> 4))
                {
                  v17 = *(v16 + 144 * v15 + 104);
                  if (v17 != -1)
                  {
                    v18 = v13[6];
                    result = &unk_22A5C60;
                    if (v17 < 0xF0F0F0F0F0F0F0F1 * ((v13[7] - v18) >> 3))
                    {
                      v19 = v18 + 136 * v17;
                      v20 = *(v19 + 112);
                      v21 = *(v19 + 120);
                      if (v20 != v21)
                      {
                        v22 = *(v14 + 696 * v12 + 48);
                        result = &unk_22A5C60;
                        while (*(v20 + 8) != v22)
                        {
                          v20 += 128;
                          if (v20 == v21)
                          {
                            return result;
                          }
                        }
                      }

                      if (v20 == v21)
                      {
                        return &unk_22A5C60;
                      }

                      else
                      {
                        return (v20 + 16);
                      }
                    }
                  }
                }
              }
            }
          }
        }

        break;
    }
  }

  else if (a3 == 1)
  {
    if (*(a2 + 792) == 1)
    {
      v23 = *(a2 + 752);
      if (v23 != -1)
      {
        v24 = (*a1 + 72);
        v25 = *v24 + 696 * v23 + 104;
        if (0x66FD0EB66FD0EB67 * ((v24[1] - *v24) >> 3) > v23)
        {
          return v25;
        }
      }
    }
  }

  else if (a3 == 2)
  {
    if (*(a2 + 792) == 1)
    {
      v26 = *(a2 + 752);
      if (v26 != -1)
      {
        v27 = (*a1 + 72);
        v28 = *v27 + 696 * v26 + 216;
        if (0x66FD0EB66FD0EB67 * ((v27[1] - *v27) >> 3) > v26)
        {
          return v28;
        }
      }
    }
  }

  else if (a3 == 3 && *(a2 + 792) == 1)
  {
    v5 = *a1;
    v6 = *(*(*a1 + 72) + 696 * *(a2 + 752) + 64);
    if (v6 != -1)
    {
      v8 = v5 + 96;
      v7 = *(v5 + 96);
      v9 = 0x4EC4EC4EC4EC4EC5 * ((*(v8 + 8) - v7) >> 4);
      v10 = v7 + 208 * v6 + 88;
      if (v9 > v6)
      {
        return v10;
      }
    }
  }

  return result;
}

void *sub_9AA228(uint64_t *a1, unint64_t a2, int a3)
{
  if (a3 == 3)
  {
    v9 = *a1;
    v10 = *(*(*a1 + 72) + 696 * a2 + 64);
    result = &unk_22A5C60;
    if (v10 != -1)
    {
      v12 = v9 + 96;
      v11 = *(v9 + 96);
      v13 = 0x4EC4EC4EC4EC4EC5 * ((*(v12 + 8) - v11) >> 4);
      v14 = v11 + 208 * v10 + 88;
      if (v13 > v10)
      {
        return v14;
      }
    }
  }

  else
  {
    result = &unk_22A5C60;
    if (a3 == 2)
    {
      if (a2 != -1)
      {
        v7 = (*a1 + 72);
        v8 = *v7 + 696 * a2 + 216;
        if (0x66FD0EB66FD0EB67 * ((v7[1] - *v7) >> 3) > a2)
        {
          return v8;
        }
      }
    }

    else if (a2 != -1)
    {
      v5 = (*a1 + 72);
      v6 = *v5 + 696 * a2 + 104;
      if (0x66FD0EB66FD0EB67 * ((v5[1] - *v5) >> 3) > a2)
      {
        return v6;
      }
    }
  }

  return result;
}

void sub_9AA338(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 27) = 0;
  *(a3 + 24) = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = a2 | 0xFFFFFF00000000;
  *(a3 + 31) = 0;
  *(a3 + 32) = 1;
  *(a3 + 40) = -1;
  *(a3 + 43) = -1;
  *(a3 + 47) = 0;
  *(a3 + 63) = 0;
  *(a3 + 55) = 0;
  *(a3 + 80) = 0;
  v4 = (a3 + 80);
  *(a3 + 71) = 1536;
  *(a3 + 88) = 0;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
  if (a2 > 210012)
  {
    if (a2 == 210013)
    {
      v8 = *(a1 + 8);
      v14 = 8;
      strcpy(__p, "Transfer");
      v6 = sub_9274F4(v8, __p);
      if (v4 == v6)
      {
        goto LABEL_29;
      }

      v9 = *(v6 + 23);
      if ((*(a3 + 103) & 0x80000000) == 0)
      {
        if ((*(v6 + 23) & 0x80) != 0)
        {
LABEL_28:
          sub_13A68(v4, *v6, v6[1]);
LABEL_29:
          if (v14 < 0)
          {
            operator delete(__p[0]);
          }

          return;
        }

LABEL_14:
        v10 = *v6;
        v4[2] = v6[2];
        *v4 = v10;
        goto LABEL_29;
      }

      if (v9 >= 0)
      {
        v11 = v6;
      }

      else
      {
        v11 = *v6;
      }

      if (v9 >= 0)
      {
        v12 = *(v6 + 23);
      }

      else
      {
        v12 = v6[1];
      }

LABEL_21:
      sub_13B38(v4, v11, v12);
      goto LABEL_29;
    }

    if (a2 != 211002)
    {
      return;
    }

LABEL_7:
    v5 = *(a1 + 8);
    v14 = 12;
    strcpy(__p, "WALK_COMMAND");
    v6 = sub_9274F4(v5, __p);
    if (v4 == v6)
    {
      goto LABEL_29;
    }

    v7 = *(v6 + 23);
    if ((*(a3 + 103) & 0x80000000) == 0)
    {
      if ((*(v6 + 23) & 0x80) != 0)
      {
        goto LABEL_28;
      }

      goto LABEL_14;
    }

    if (v7 >= 0)
    {
      v11 = v6;
    }

    else
    {
      v11 = *v6;
    }

    if (v7 >= 0)
    {
      v12 = *(v6 + 23);
    }

    else
    {
      v12 = v6[1];
    }

    goto LABEL_21;
  }

  if (a2 == 210002 || a2 == 210004)
  {
    goto LABEL_7;
  }
}

void sub_9AA52C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_5CEBB8(v15);
  _Unwind_Resume(a1);
}

void sub_9AA554()
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
  xmmword_27B31D0 = 0u;
  unk_27B31E0 = 0u;
  dword_27B31F0 = 1065353216;
  sub_3A9A34(&xmmword_27B31D0, v0, v0);
  sub_3A9A34(&xmmword_27B31D0, v3, v3);
  sub_3A9A34(&xmmword_27B31D0, __p, __p);
  sub_3A9A34(&xmmword_27B31D0, v9, v9);
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
    qword_27B31A8 = 0;
    qword_27B31B0 = 0;
    qword_27B31A0 = 0;
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

void sub_9AA79C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B31B8)
  {
    qword_27B31C0 = qword_27B31B8;
    operator delete(qword_27B31B8);
  }

  _Unwind_Resume(exception_object);
}

void sub_9AA980(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_9AA9A8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(a3 + 968);
  v4 = sub_3AF4C0(a2);
  sub_21E2C18(v4, 5, v3);
}

void sub_9AAA88(uint64_t a1, uint64_t a2, void *a3)
{
  *a1 = *(a2 + 1444) > 1u;
  v12 = 17;
  strcpy(__p, "countdown_max_num");
  v5 = sub_63FDC(a3, __p);
  if (v12 < 0)
  {
    v6 = v5;
    operator delete(*__p);
    v5 = v6;
  }

  *(a1 + 8) = v5;
  strcpy(__p, "timestamp_list_max_num");
  v12 = 22;
  v7 = sub_63FDC(a3, __p);
  if (v12 < 0)
  {
    v8 = v7;
    operator delete(*__p);
    v7 = v8;
  }

  *(a1 + 16) = v7;
  v12 = 17;
  strcpy(__p, "exit_plan_enabled");
  v9 = sub_5F9D0(a3, __p);
  if (v12 < 0)
  {
    v10 = v9;
    operator delete(*__p);
    v9 = v10;
  }

  *(a1 + 24) = v9;
  operator new();
}

void sub_9AAD54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_9AAD88(void *result, uint64_t *a2)
{
  if (*result == 1)
  {
    v2 = *a2;
    v3 = a2[1];
    if (*a2 != v3)
    {
      v4 = result;
      do
      {
        sub_A21C90(v30, v2);
        while (1)
        {
          sub_A21CE8(v30, v20);
          v5 = sub_A21B4C(v30, v20);
          v6 = v26;
          v7 = v27;
          if (v27 == v26)
          {
            v7 = v26;
            v29 = 0;
            v14 = 0;
          }

          else
          {
            v8 = &v26[v28 >> 7];
            v9 = *v8;
            v10 = *v8 + 32 * (v28 & 0x7F);
            v11 = *(v26 + (((v29 + v28) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((v29 + v28) & 0x7F);
            if (v10 != v11)
            {
              do
              {
                v12 = *v10;
                if (*v10)
                {
                  *(v10 + 8) = v12;
                  operator delete(v12);
                  v9 = *v8;
                }

                v10 += 32;
                if (v10 - v9 == 4096)
                {
                  v13 = v8[1];
                  ++v8;
                  v9 = v13;
                  v10 = v13;
                }
              }

              while (v10 != v11);
              v6 = v26;
              v7 = v27;
            }

            v29 = 0;
            v14 = v7 - v6;
            if (v14 >= 3)
            {
              do
              {
                operator delete(*v6);
                v7 = v27;
                v6 = v26 + 1;
                v26 = v6;
                v14 = v27 - v6;
              }

              while (v14 > 2);
            }
          }

          if (v14 == 1)
          {
            v15 = 64;
            goto LABEL_23;
          }

          if (v14 == 2)
          {
            v15 = 128;
LABEL_23:
            v28 = v15;
          }

          if (v6 != v7)
          {
            do
            {
              v16 = *v6++;
              operator delete(v16);
            }

            while (v6 != v7);
            if (v27 != v26)
            {
              v27 = (v27 + ((v26 - v27 + 7) & 0xFFFFFFFFFFFFFFF8));
            }
          }

          if (__p)
          {
            operator delete(__p);
          }

          v17 = v24;
          if (v24)
          {
            do
            {
              v18 = *v17;
              operator delete(v17);
              v17 = v18;
            }

            while (v18);
          }

          v19 = v23;
          v23 = 0;
          if (v19)
          {
            operator delete(v19);
          }

          if (v21)
          {
            v22 = v21;
            operator delete(v21);
          }

          if (!v5)
          {
            break;
          }

          if (*sub_A21CB8(v30) == 2)
          {
            sub_9AB014(v4, v30);
          }

          sub_A21708(v30);
        }

        result = sub_98ED24(v30);
        v2 += 412;
      }

      while (v2 != v3);
    }
  }

  return result;
}

void sub_9AAFD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_98ED24(&a9);
  sub_98ED24(&a28);
  _Unwind_Resume(a1);
}

void sub_9AB014(uint64_t a1, uint64_t a2)
{
  v4 = sub_A21CB8(a2);
  v5 = v4;
  v6 = *(v4 + 1008);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        if (*(a1 + 16) >= (0x6DB6DB6DB6DB6DB7 * ((*(v4 + 496) - *(v4 + 488)) >> 2)))
        {
          v16 = 0x6DB6DB6DB6DB6DB7 * ((*(v4 + 496) - *(v4 + 488)) >> 2);
        }

        else
        {
          v16 = *(a1 + 16);
        }

        if (v16)
        {
          v17 = 0;
          v18 = *(v4 + 2232);
          do
          {
            while (1)
            {
              v19 = *(v5 + 488);
              if (v18 < *(v5 + 2240))
              {
                break;
              }

              v18 = sub_9ADC7C((v5 + 2224), (v19 + v17));
              *(v5 + 2232) = v18;
              v17 += 28;
              if (!--v16)
              {
                goto LABEL_37;
              }
            }

            sub_9ADE20(v18, (v19 + v17));
            v18 = (v18 + 696);
            *(v5 + 2232) = v18;
            *(v5 + 2232) = v18;
            v17 += 28;
            --v16;
          }

          while (v16);
        }

        break;
      case 4:
        if (*(a1 + 8) >= (0x6DB6DB6DB6DB6DB7 * ((*(v4 + 496) - *(v4 + 488)) >> 2)))
        {
          v20 = 0x6DB6DB6DB6DB6DB7 * ((*(v4 + 496) - *(v4 + 488)) >> 2);
        }

        else
        {
          v20 = *(a1 + 8);
        }

        if (v20)
        {
          v21 = 0;
          v22 = *(v4 + 2232);
          do
          {
            while (1)
            {
              v23 = *(v5 + 488);
              if (v22 < *(v5 + 2240))
              {
                break;
              }

              v22 = sub_9ADC7C((v5 + 2224), (v23 + v21));
              *(v5 + 2232) = v22;
              v21 += 28;
              if (!--v20)
              {
                goto LABEL_37;
              }
            }

            sub_9ADE20(v22, (v23 + v21));
            v22 = (v22 + 696);
            *(v5 + 2232) = v22;
            *(v5 + 2232) = v22;
            v21 += 28;
            --v20;
          }

          while (v20);
        }

        break;
      case 5:
        v7 = *(v4 + 768);
        v37 = *(v4 + 40) | (*(v4 + 40) << 32);
        v38 = 0;
        v39 = v7;
        v40 = *(v4 + 776);
        v8 = *(v4 + 2232);
        if (v8 >= *(v4 + 2240))
        {
          v9 = sub_9AE1D0((v4 + 2224), &v37);
        }

        else
        {
          sub_9AE374(*(v4 + 2232), &v37);
          v9 = (v8 + 696);
          *(v5 + 2232) = v8 + 696;
        }

        goto LABEL_34;
    }

    goto LABEL_37;
  }

  if (v6 != 1)
  {
    if (v6 != 2)
    {
      goto LABEL_37;
    }

    v10 = (v4 + 116);
    v11 = *(v4 + 116);
    v12 = *(v4 + 2232);
    if (v12 >= *(v4 + 2240))
    {
      v13 = sub_9ADF80((v4 + 2224));
      *(v5 + 2232) = v13;
      v14 = v13 - 696;
      if (v11 != 0x7FFFFFFF)
      {
        goto LABEL_11;
      }
    }

    else
    {
      bzero(*(v4 + 2232), 0x2B8uLL);
      sub_9AE128(v12);
      v13 = (v12 + 696);
      *(v5 + 2232) = v12 + 696;
      *(v5 + 2232) = v12 + 696;
      v14 = v12;
      if (v11 != 0x7FFFFFFF)
      {
LABEL_11:
        v15 = *v10;
        *(v14 + 12) = *(v5 + 128);
        *v14 = v15;
        goto LABEL_37;
      }
    }

    v25 = *(v5 + 768);
    v26 = *(v5 + 776);
    *v14 = *(v5 + 40) | (*(v5 + 40) << 32);
    *(v13 - 344) = 0;
    *(v13 - 684) = v25;
    *(v13 - 676) = v26;
    goto LABEL_37;
  }

  v24 = *(v4 + 2232);
  if (v24 >= *(v4 + 2240))
  {
    v9 = sub_9AD494((v4 + 2224), (v4 + 116));
LABEL_34:
    *(v5 + 2232) = v9;
    goto LABEL_37;
  }

  sub_9AD638(*(v4 + 2232), (v4 + 116));
  *(v5 + 2232) = v24 + 696;
  *(v5 + 2232) = v24 + 696;
LABEL_37:
  v27 = *(v5 + 2224);
  v28 = *(v5 + 2232);
  while (v27 != v28)
  {
    v30 = *(v27 + 20);
    if (v30 != -1)
    {
      v31 = *(a1 + 64);
      v32 = **(v31 + 3896);
      if (v32)
      {
        if (sub_3A7E8C(v32, *(v27 + 12), v30, *(v31 + 3904)))
        {
          v33 = *(a1 + 64);
          v34 = *(v27 + 12);
          v35 = *(v27 + 20);
          v36 = **(v33 + 3896);
          if (v35 == -1)
          {
            v29 = sub_3A7F20(v36, v34, *(v33 + 3904));
          }

          else
          {
            v29 = sub_3A7E8C(v36, v34, v35, *(v33 + 3904));
          }

          *(v27 + 688) = *(v29 + 64);
        }
      }
    }

    v27 += 696;
  }

  if (*(a1 + 24))
  {
    sub_9AB3B4(a1, a2);
  }
}

void sub_9AB3B4(uint64_t a1, uint64_t a2)
{
  sub_A21834(a2, 0xFFFFFFFFFFFFFFFFLL, &v53);
  v4 = v53;
  if (v53 != __p[0])
  {
    v5 = &qword_22A5CE0;
    v4 = v53;
    while ((**v4 & 0xFFFFFFFD) != 5)
    {
      if (++v4 == __p[0])
      {
        goto LABEL_16;
      }
    }
  }

  if (v4 != __p[0])
  {
    v6 = *v4;
    v7 = **v4;
    if (v7 == 7)
    {
      if (*(v6 + 952) == 1 && *(v6 + 115) != *(v6 + 116))
      {
        v5 = (v6 + 230);
        v8 = *(v6 + 118);
        goto LABEL_17;
      }
    }

    else if (v7 == 5 && *(v6 + 1000) == 1 && *(v6 + 121) != *(v6 + 122))
    {
      v5 = (v6 + 242);
      v8 = *(v6 + 124);
      goto LABEL_17;
    }
  }

  v5 = &qword_22A5CE0;
LABEL_16:
  v8 = 0xFFFFFFFF00000000;
LABEL_17:
  if (v53)
  {
    __p[0] = v53;
    operator delete(v53);
  }

  if (*v5 != v5[1])
  {
    v59 = 0;
    v60 = 0uLL;
    v9 = sub_994FB4(*(a1 + 72), v8, 0, "transfer graph");
    v10 = (v9 - *v9);
    if (*v10 >= 0x15u)
    {
      v11 = v10[10];
      if (v11)
      {
        if (*(v9 + v11 + *(v9 + v11)))
        {
          v52 = a2;
          v12 = sub_504BC8(*(a1 + 72), **v5, 0, "transfer");
          v13 = *(v12 + *(v12 - *v12 + 6));
          v14 = sub_504BC8(*(a1 + 72), *(v5[1] - 8), 0, "transfer");
          sub_9AC220(*(a1 + 72), v8, v13, *(v14 + *(v14 - *v14 + 8)), &v53);
          v15 = v53;
          v59 = v53;
          v60 = *__p;
          v16 = __p[0];
          if (v53 == __p[0])
          {
            goto LABEL_84;
          }

          v17 = sub_A21CB8(a2);
          if ((*(v17 + 792) & 1) == 0)
          {
            sub_4F0F0C();
          }

          v18 = (v17 + 768);
          v19 = sub_9AC394(*(a1 + 80), (v17 + 768), *(v17 + 780));
          if (v19 && v19 <= 0xFFFFFFFEFFFFFFFFLL)
          {
            operator new();
          }

          v20 = *(a1 + 80);
          v21 = sub_3A25A8(v20, *v18, 0, "trip");
          v22 = sub_92FC60(v20, *(v21 + *(v21 - *v21 + 6)), 0, "line");
          v23 = (v22 - *v22);
          if (*v23 >= 0x4Bu && (v24 = v23[37]) != 0 && (v25 = (v22 + v24 + *(v22 + v24)), v26 = *v25, v26))
          {
            v27 = 8 * v26;
            v28 = v25 + 1;
            do
            {
              if (*(v20 + 3888) != 1 || sub_2D5204(*(v20 + 3872)))
              {
                operator new();
              }

              v28 += 2;
              v27 -= 8;
            }

            while (v27);
            v15 = v59;
            v16 = v60;
            v29 = v59;
            if (v59 == v60)
            {
LABEL_39:
              if (v29 != v16)
              {
                v30 = v29 + 32;
                if (v29 + 32 == v16)
                {
                  v31 = v29;
                  if (v29 != v16)
                  {
LABEL_47:
                    while (v16 != v31)
                    {
                      v33 = *(v16 - 3);
                      if (v33)
                      {
                        *(v16 - 2) = v33;
                        operator delete(v33);
                      }

                      v16 -= 32;
                    }

                    *&v60 = v31;
                    v15 = v59;
                    if (v59 == v31)
                    {
                      goto LABEL_83;
                    }

                    goto LABEL_54;
                  }
                }

                else
                {
                  v31 = v29;
                  do
                  {
                    v32 = v30;
                    v30 += 32;
                  }

                  while (v32 + 32 != v16);
                  v15 = v59;
                  v16 = v60;
                  if (v31 != v60)
                  {
                    goto LABEL_47;
                  }
                }
              }

              v31 = v16;
              if (v15 == v16)
              {
LABEL_83:
                v15 = v59;
LABEL_84:
                if (v15)
                {
                  for (i = v60; i != v15; i -= 32)
                  {
                    v51 = *(i - 3);
                    if (v51)
                    {
                      *(i - 2) = v51;
                      operator delete(v51);
                    }
                  }

                  operator delete(v15);
                }

                return;
              }

LABEL_54:
              v56 = 0;
              v57 = 0;
              v58 = 0;
              do
              {
                sub_9AC500(a1, v15, &v53);
                v34 = v57;
                if (v57 >= v58)
                {
                  v36 = sub_9AEC9C(&v56, &v53);
                }

                else
                {
                  v35 = v53;
                  *(v57 + 1) = 0;
                  *v34 = v35;
                  *(v34 + 2) = 0;
                  *(v34 + 3) = 0;
                  if (__p[1] != __p[0])
                  {
                    if (((__p[1] - __p[0]) & 0x8000000000000000) == 0)
                    {
                      operator new();
                    }

                    sub_1794();
                  }

                  sub_55BD50((v34 + 32), v55);
                  v36 = v34 + 192;
                }

                v57 = v36;
                sub_53A868(v55);
                if (__p[0])
                {
                  __p[1] = __p[0];
                  operator delete(__p[0]);
                }

                v15 += 32;
              }

              while (v15 != v31);
              v37 = v56;
              v38 = v57;
              if (v57 == v56)
              {
                sub_6FAB4();
              }

              if (v57 - v56 == 192 || (v39 = v56 + 192, v56 + 192 == v57))
              {
LABEL_72:
                v44 = sub_A21CB8(v52);
                v45 = v44;
                *(v44 + 2248) = *v37;
                if ((v44 + 2248) != v37)
                {
                  sub_31F64((v44 + 2256), *(v37 + 1), *(v37 + 2), (*(v37 + 2) - *(v37 + 1)) >> 3);
                }

                sub_594568(v45 + 2280, (v37 + 32));
              }

              else
              {
                while (*v39 == *v37)
                {
                  v40 = v39[1];
                  v41 = v39[2] - v40;
                  v42 = *(v37 + 1);
                  if (v41 != *(v37 + 2) - v42)
                  {
                    break;
                  }

                  if (memcmp(v40, v42, v41))
                  {
                    break;
                  }

                  v43 = v39 + 4;
                  if ((sub_64AFB4(v39 + 4, v37 + 4) & 1) == 0)
                  {
                    break;
                  }

                  v39 += 24;
                  if (v43 + 20 == v38)
                  {
                    goto LABEL_72;
                  }
                }
              }

              v46 = v56;
              if (v56)
              {
                v47 = v57;
                v48 = v56;
                if (v57 != v56)
                {
                  do
                  {
                    sub_53A868((v47 - 160));
                    v49 = *(v47 - 23);
                    if (v49)
                    {
                      *(v47 - 22) = v49;
                      operator delete(v49);
                    }

                    v47 -= 192;
                  }

                  while (v47 != v46);
                  v48 = v56;
                }

                v57 = v46;
                operator delete(v48);
              }

              goto LABEL_83;
            }
          }

          else
          {
            v29 = v15;
            if (v15 == v16)
            {
              goto LABEL_39;
            }
          }

          v29 = v15;
          goto LABEL_39;
        }
      }
    }
  }
}

void sub_9ABBEC(_Unwind_Exception *a1)
{
  sub_9AF038((v2 - 136));
  if (v1)
  {
    operator delete(v1);
  }

  sub_37484((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_9ABCF0(unint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = 0;
  v4 = 0;
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = a1 / a2;
  v6 = a1 % a2;
  v11 = a1 / a2;
  do
  {
    if (v6 >= v3)
    {
      v7 = v3;
    }

    else
    {
      v7 = v6;
    }

    v8 = v4;
    v9 = v4 >> 3;
    if (((v4 >> 3) + 1) >> 61)
    {
      a3[1] = v4;
      a3[2] = 0;
      *a3 = 0;
      sub_1794();
    }

    if (v4 >> 3 != -1)
    {
      if (!(((v4 >> 3) + 1) >> 61))
      {
        operator new();
      }

      a3[1] = v4;
      a3[2] = 0;
      *a3 = 0;
      sub_1808();
    }

    *(8 * v9) = v7 + v3 * v5;
    v4 = 8 * v9 + 8;
    memcpy(0, 0, v8);
    v5 = v11;
    ++v3;
  }

  while (a2 != v3);
  a3[1] = v4;
  a3[2] = 0;
  *a3 = 0;
}

void sub_9ABE58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  a10[1] = v11;
  a10[2] = v12;
  *a10 = v10;
  if (v10)
  {
    a10[1] = v10;
    operator delete(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_9ABE8C(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a4 == 2 && a3[1] - *a3 == 8)
  {
    return 0;
  }

  result = 1;
  if ((a4 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v5 = a2[1] - *a2;
    if (v5 != 2)
    {
      v6 = v5 >> 1;
      if (v6 >= 2)
      {
        v7 = 0;
        v8 = 1;
        do
        {
          if (*(*a2 + 2 * v7) + 1 != *(*a2 + 2 * v7 + 2))
          {
            operator new();
          }

          ++v8;
          ++v7;
        }

        while (v6 - 1 != v7);
      }

      operator new();
    }
  }

  return result;
}

void sub_9AC200(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

int *sub_9AC220@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v19 = a4;
  v20 = a3;
  result = sub_994FB4(a1, a2, 0, "transfer graph");
  v18 = result;
  v7 = (result - *result);
  if (*v7 >= 0x15u && (v8 = v7[10]) != 0 && (v9 = (result + v8 + *(result + v8)), v10 = *v9, v10) && (v23 = &v9[v10 + 1], v24 = v9 + 1, *&v21 = &v18, *(&v21 + 1) = &v20, v22 = &v19, result = sub_9AE4D4(&v24, &v23, &v21, &v17), v17 != &v9[*v9 + 1]))
  {
    v11 = (v17 + *v17);
    v12 = (v11 - *v11);
    if (*v12 >= 9u && (v13 = v12[4]) != 0)
    {
      v14 = (v11 + v13 + *(v11 + v13));
      v21 = 0uLL;
      v22 = 0;
      sub_9AE7B4(&v21, *v14);
      v24 = v14 + 1;
      v23 = &v14[*v14 + 1];
      result = sub_9AE8D4(&v24, &v23, &v21);
      v15 = v21;
      v16 = v22;
    }

    else
    {
      v16 = 0;
      v15 = 0uLL;
    }

    *a5 = v15;
    *(a5 + 16) = v16;
  }

  else
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = 0;
  }

  return result;
}

void sub_9AC380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_37484(va);
  _Unwind_Resume(a1);
}

unint64_t sub_9AC394(uint64_t a1, unint64_t *a2, unsigned int a3)
{
  v6 = sub_3A25A8(a1, *a2, 0, "trip");
  v7 = (v6 - *v6);
  if (*v7 >= 0x2Du && (v8 = v7[22]) != 0)
  {
    v9 = *(v6 + v8);
  }

  else
  {
    v9 = 0xFFFFFFFF00000000;
  }

  v10 = *a2;
  v11 = sub_3A231C(a1, v10, 0);
  v12 = &v11[-*v11];
  if (*v12 < 5u)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(v12 + 2);
    if (*(v12 + 2))
    {
      v13 += &v11[*&v11[v13]];
    }
  }

  v14 = (v13 + 4 * HIDWORD(v10) + 4 + *(v13 + 4 * HIDWORD(v10) + 4));
  v15 = (v14 - *v14);
  if (*v15 < 0x29u || (v16 = v15[20]) == 0 || (v17 = *(&v14[a3 + 1] + v16 + *(v14 + v16)), v17 == -1) || (v18 = &v11[4 * v17 + *(v12 + 10) + *&v11[*(v12 + 10)]], v19 = (v18 + 4 + *(v18 + 4)), v20 = (v19 - *v19), *v20 < 9u) || (v21 = v20[4]) == 0 || ((v23 = *(v19 + v21), v22 = HIDWORD(v23), v23 = v23, v23) ? (v24 = v22 == 0xFFFFFFFF) : (v24 = 1), v24))
  {
    v22 = HIDWORD(v9);
    v23 = v9;
  }

  return v23 | (v22 << 32);
}

void sub_9AC500(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_9AF0B4(*(a1 + 80), *a2, 0, "vehicle configuration");
  v7 = (v6 - *v6);
  if (*v7 < 7u || (v8 = v7[3]) == 0 || (v9 = *(v6 + v8), v9 <= 1) || v9 == (a2[2] - a2[1]) >> 1)
  {
    *(a3 + 160) = 0u;
    *(a3 + 176) = 0u;
    *(a3 + 128) = 0u;
    *(a3 + 144) = 0u;
    *(a3 + 96) = 0u;
    *(a3 + 112) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    sub_64B998(a3 + 32);
  }

  else
  {
    v49 = (a2 + 1);
    if (*(a1 + 32) >= v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = *(a1 + 32);
    }

    sub_9ABCF0(v9, v10, &v55);
    *a3 = 0u;
    *(a3 + 16) = 0u;
    sub_64B998(a3 + 32);
    v48 = a1;
    *a3 = v10;
    v12 = a2[1];
    v11 = a2[2];
    v47 = a2;
    if (v12 != v11)
    {
      v14 = v55;
      v13 = v56;
      v50 = (v56 - v55) >> 3;
      do
      {
        if (v13 == v14)
        {
          v17 = v13;
        }

        else
        {
          v16 = v50;
          v17 = v14;
          do
          {
            v18 = v16 >> 1;
            v19 = &v17[8 * (v16 >> 1)];
            v21 = *v19;
            v20 = v19 + 1;
            v16 += ~(v16 >> 1);
            if (v21 > *v12)
            {
              v16 = v18;
            }

            else
            {
              v17 = v20;
            }
          }

          while (v16);
        }

        if (v14 != v17)
        {
          v17 -= 8;
        }

        v22 = (v17 - v14) >> 3;
        v24 = *(a3 + 16);
        v23 = *(a3 + 24);
        if (v24 < v23)
        {
          *v24 = v22;
          v15 = v24 + 1;
        }

        else
        {
          v25 = *(a3 + 8);
          v26 = v24 - v25;
          v27 = (v24 - v25) >> 3;
          v28 = v27 + 1;
          if ((v27 + 1) >> 61)
          {
            sub_1794();
          }

          v29 = v23 - v25;
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

          if (v30)
          {
            if (!(v30 >> 61))
            {
              operator new();
            }

            sub_1808();
          }

          v31 = v27;
          v32 = (8 * v27);
          v33 = &v32[-v31];
          *v32 = v22;
          v15 = v32 + 1;
          memcpy(v33, v25, v26);
          *(a3 + 8) = v33;
          *(a3 + 16) = v15;
          *(a3 + 24) = 0;
          if (v25)
          {
            operator delete(v25);
          }
        }

        *(a3 + 16) = v15;
        ++v12;
      }

      while (v12 != v11);
    }

    std::__sort<std::__less<unsigned long,unsigned long> &,unsigned long *>();
    v35 = *(a3 + 8);
    v34 = *(a3 + 16);
    if (v35 != v34)
    {
      v36 = v35 + 1;
      while (v36 != v34)
      {
        v37 = *(v36 - 1);
        v38 = *v36++;
        if (v37 == v38)
        {
          v39 = v36 - 2;
          while (v36 != v34)
          {
            v40 = v37;
            v37 = *v36;
            if (v40 != *v36)
            {
              v39[1] = v37;
              ++v39;
            }

            ++v36;
          }

          if (v39 + 1 != v34)
          {
            *(a3 + 16) = v39 + 1;
          }

          break;
        }
      }
    }

    if (sub_9ABE8C(v48, v49, (a3 + 8), v10))
    {
      v41 = sub_9AF0B4(*(v48 + 80), *v47, 0, "vehicle configuration");
      v42 = (v41 - *v41);
      if (*v42 >= 9u && (v43 = v42[4]) != 0)
      {
        v44 = (v41 + v43 + *(v41 + v43));
        v51 = 0;
        v52 = 0uLL;
        sub_943AEC(&v51, *v44);
        v58 = (v44 + 1);
        v57 = &v44[*v44 + 1];
        sub_943E24(&v58, &v57, &v51, sub_509164);
        v45 = v51;
        v46 = v52;
      }

      else
      {
        v45 = 0;
        v46 = 0uLL;
      }

      v53 = v45;
      v54 = v46;
      sub_9ACA50(v48, v49, &v53);
    }

    sub_9ACEA4(v48, a3 + 8, v10, &v51);
    sub_53D784(a3 + 32, &v51);
    sub_53A868(&v51);
    if (v55)
    {
      operator delete(v55);
    }
  }
}

void sub_9AC9D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_941AEC(va);
  sub_9749E0(v15);
  v18 = *(v16 - 128);
  if (v18)
  {
    operator delete(v18);
  }

  _Unwind_Resume(a1);
}

void sub_9ACA50(uint64_t a1, unsigned __int16 **a2, uint64_t *a3)
{
  v6 = *(a1 + 96);
  *(&__p.__r_.__value_.__s + 23) = 20;
  strcpy(&__p, "Board: Car {CarList}");
  v7 = sub_9274F4(v6, &__p);
  if (*(v7 + 23) < 0)
  {
    sub_325C(&v18, *v7, v7[1]);
  }

  else
  {
    v8 = *v7;
    v18.__r_.__value_.__r.__words[2] = v7[2];
    *&v18.__r_.__value_.__l.__data_ = v8;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v9 = *a2;
    v10 = a2[1];
    v11 = v10 - *a2;
    if (v10 == *a2)
    {
LABEL_10:
      v20 = &v15;
      while (1)
      {
        if (v9 == v10)
        {
          operator new();
        }

        v12 = *v9;
        v14 = *a3;
        v13 = a3[1];
        if (*a3 == v13 || v12 >= (v13 - v14) >> 6)
        {
          std::to_string(&v19, v12 + 1);
          goto LABEL_21;
        }

        nullsub_1();
        sub_9D69F4(v14 + (v12 << 6), &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_325C(&v19, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
        }

        else
        {
          v19 = __p;
        }

        if (v23 < 0)
        {
          operator delete(v22);
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_21;
          }
        }

        else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_21;
        }

        operator delete(__p.__r_.__value_.__l.__data_);
LABEL_21:
        sub_9A5A0(&v20, &v19);
        if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v19.__r_.__value_.__l.__data_);
        }

        ++v9;
      }
    }
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v9 = *a2;
    v10 = a2[1];
    v11 = v10 - *a2;
    if (v10 == *a2)
    {
      goto LABEL_10;
    }
  }

  if ((v11 >> 1) < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1794();
}

void sub_9ACE1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(a13);
  }

  _Unwind_Resume(a1);
}

void sub_9ACEA4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  if (*a2 == v7)
  {
    v11 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    goto LABEL_39;
  }

  v8 = *a2;
  while (*v8)
  {
    if (++v8 == v7)
    {
      v8 = *(a2 + 8);
      break;
    }
  }

  v9 = *a2;
  while (*v9 != a3 - 1)
  {
    if (++v9 == v7)
    {
      v9 = *(a2 + 8);
      break;
    }
  }

  if (a3 != 3)
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    if (v9 == v7)
    {
      v11 = 0;
      goto LABEL_31;
    }

    v10 = 0;
    goto LABEL_21;
  }

  if (v6 != v7)
  {
    while (*v6 != 1)
    {
      if (++v6 == v7)
      {
        v6 = *(a2 + 8);
        break;
      }
    }
  }

  v10 = v6 != v7;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  if (v9 != v7)
  {
LABEL_21:
    v12 = a3 == 2 || v10;
    if (v8 != v7 && v12)
    {
      v11 = sub_9AF240(&v23, "Any Section");
LABEL_38:
      v24 = v11;
      goto LABEL_39;
    }

    v11 = sub_9AF3F0(&v23, "Rear");
    v24 = v11;
    if (!v10)
    {
      goto LABEL_31;
    }

    goto LABEL_28;
  }

  v11 = 0;
  if (v6 == v7)
  {
LABEL_31:
    if (v8 == v7)
    {
      goto LABEL_39;
    }

    goto LABEL_35;
  }

LABEL_28:
  if (v11 >= v25)
  {
    v11 = sub_9AF5A0(&v23, "Middle");
  }

  else
  {
    v11[23] = 6;
    strcpy(v11, "Middle");
    v11 += 24;
  }

  v24 = v11;
  if (v8 != v7)
  {
LABEL_35:
    if (v11 >= v25)
    {
      v11 = sub_9AF750(&v23, "Front");
    }

    else
    {
      v11[23] = 5;
      strcpy(v11, "Front");
      v11 += 24;
    }

    goto LABEL_38;
  }

LABEL_39:
  sub_73F5C(v23, v11, ", ", &v20);
  v13 = std::string::insert(&v20, 0, "Board: ", 7uLL);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v22 = v13->__r_.__value_.__r.__words[2];
  *__p = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  v15 = sub_9274F4(*(a1 + 96), __p);
  sub_64BC50(a4, v15, (*(a1 + 88) + 1177));
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[0]);
  }

  v16 = v23;
  if (v23)
  {
    v17 = v24;
    v18 = v23;
    if (v24 != v23)
    {
      do
      {
        v19 = *(v17 - 1);
        v17 -= 3;
        if (v19 < 0)
        {
          operator delete(*v17);
        }
      }

      while (v17 != v16);
      v18 = v23;
    }

    v24 = v16;
    operator delete(v18);
  }
}

void sub_9AD16C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_9AD180(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void **a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1A104(&a22);
  _Unwind_Resume(a1);
}

uint64_t sub_9AD1CC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t **a3@<X4>, _BYTE *a4@<X8>)
{
  sub_19594F8(&v24);
  if (a1 != a2)
  {
    v9 = *(a1 - 24);
    v10 = *(a1 - 16);
    v11 = a1 - 24;
    v12 = *(v11 + 23);
    if (v12 >= 0)
    {
      v13 = v11;
    }

    else
    {
      v13 = v9;
    }

    if (v12 >= 0)
    {
      v14 = *(v11 + 23);
    }

    else
    {
      v14 = v10;
    }

    while (1)
    {
      sub_4A5C(&v24, v13, v14);
      if (v11 == a2)
      {
        break;
      }

      v15 = *(a3 + 23);
      if (v15 >= 0)
      {
        v16 = a3;
      }

      else
      {
        v16 = *a3;
      }

      if (v15 >= 0)
      {
        v17 = *(a3 + 23);
      }

      else
      {
        v17 = a3[1];
      }

      sub_4A5C(&v24, v16, v17);
      v19 = *(v11 - 24);
      v11 -= 24;
      v18 = v19;
      v20 = *(v11 + 23);
      if (v20 >= 0)
      {
        v13 = v11;
      }

      else
      {
        v13 = v18;
      }

      if (v20 >= 0)
      {
        v14 = *(v11 + 23);
      }

      else
      {
        v14 = *(v11 + 8);
      }
    }
  }

  if ((v34 & 0x10) != 0)
  {
    v21 = v33;
    if (v33 < v30)
    {
      v33 = v30;
      v21 = v30;
    }

    v22 = v29;
    v8 = v21 - v29;
    if (v21 - v29 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_36;
    }
  }

  else
  {
    if ((v34 & 8) == 0)
    {
      v8 = 0;
      a4[23] = 0;
      goto LABEL_32;
    }

    v22 = v27;
    v8 = v28 - v27;
    if ((v28 - v27) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_36:
      sub_3244();
    }
  }

  if (v8 >= 0x17)
  {
    operator new();
  }

  a4[23] = v8;
  if (v8)
  {
    memmove(a4, v22, v8);
  }

LABEL_32:
  a4[v8] = 0;
  if (v32 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v26);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_9AD458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1959728(va);
  _Unwind_Resume(a1);
}

void sub_9AD46C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1959728(va);
  _Unwind_Resume(a1);
}

void sub_9AD480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1959728(va);
  _Unwind_Resume(a1);
}

__int128 *sub_9AD494(__int128 **a1, __int128 *a2)
{
  v2 = 0x66FD0EB66FD0EB67 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x5E293205E29320)
  {
    sub_1794();
  }

  if (0xCDFA1D6CDFA1D6CELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xCDFA1D6CDFA1D6CELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x66FD0EB66FD0EB67 * ((a1[2] - *a1) >> 3)) >= 0x2F149902F14990)
  {
    v5 = 0x5E293205E29320;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x5E293205E29320)
    {
      operator new();
    }

    sub_1808();
  }

  v15 = 8 * ((a1[1] - *a1) >> 3);
  sub_9AD638(v15, a2);
  v6 = (696 * v2 + 696);
  v7 = *a1;
  v8 = a1[1];
  v9 = (*a1 - v8);
  v10 = &v9[v15];
  if (v8 != *a1)
  {
    v11 = &v9[v15];
    v12 = *a1;
    do
    {
      sub_9AD8E4(v11, v12);
      v12 = (v12 + 696);
      v11 = v13 + 696;
    }

    while (v12 != v8);
    do
    {
      sub_53A868(v7 + 520);
      sub_53A868(v7 + 360);
      sub_53A868((v7 + 12));
      sub_53A868((v7 + 2));
      v7 = (v7 + 696);
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

void sub_9AD624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_9AD864(va);
  _Unwind_Resume(a1);
}

uint64_t sub_9AD638(uint64_t a1, __int128 *a2)
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  memset(v9, 0, sizeof(v9));
  sub_64B998(v9);
  sub_64B998(v10);
  LOBYTE(v11) = 0;
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  memset(v6, 0, sizeof(v6));
  sub_64B998(v6);
  sub_64B998(v7);
  LOBYTE(v8) = 0;
  v5 = 0;
  sub_9AD798(a1, a2, v9, v6, &v5);
  sub_53A868(v7);
  sub_53A868(v6);
  sub_53A868(v10);
  sub_53A868(v9);
  return a1;
}

void sub_9AD748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, ...)
{
  va_start(va, a52);
  sub_53A868(v53 + 160);
  sub_53A868(&a11);
  sub_53A868(v52 + 160);
  sub_53A868(va);
  _Unwind_Resume(a1);
}

void sub_9AD784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, ...)
{
  va_start(va, a52);
  sub_53A868(va);
  _Unwind_Resume(a1);
}

uint64_t sub_9AD798(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v9 = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = v9;
  sub_55BD50(a1 + 32, a3);
  sub_55BD50(a1 + 192, a3 + 160);
  *(a1 + 352) = *(a3 + 320);
  sub_55BD50(a1 + 360, a4);
  sub_55BD50(a1 + 520, a4 + 160);
  *(a1 + 680) = *(a4 + 320);
  *(a1 + 688) = *a5;
  return a1;
}

void sub_9AD824(_Unwind_Exception *a1)
{
  sub_53A868(v1 + 360);
  sub_53A868(v1 + 192);
  sub_53A868(v1 + 32);
  _Unwind_Resume(a1);
}

uint64_t sub_9AD864(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 696;
    sub_53A868(i - 176);
    sub_53A868(i - 336);
    sub_53A868(i - 504);
    sub_53A868(i - 664);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 sub_9AD8E4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = v2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 32) = a2[2];
  *(a1 + 48) = *(a2 + 6);
  *(a2 + 6) = 0;
  a2[2] = 0u;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 9);
  *(a2 + 9) = 0;
  *(a2 + 56) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 80) = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a2 + 12) = 0;
  a2[5] = 0u;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0u;
  *(a1 + 104) = *(a2 + 104);
  v3 = *(a2 + 16);
  *(a1 + 120) = *(a2 + 15);
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0uLL;
  *(a1 + 128) = v3;
  v4 = *(a2 + 34);
  *(a1 + 140) = *(a2 + 70);
  *(a1 + 136) = v4;
  v5 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 144) = v5;
  *(a2 + 18) = 0;
  *(a2 + 152) = 0u;
  v6 = *(a2 + 168);
  *(a1 + 184) = *(a2 + 23);
  *(a1 + 168) = v6;
  a2[11] = 0u;
  *(a2 + 21) = 0;
  *(a1 + 208) = 0;
  *(a1 + 192) = 0u;
  *(a1 + 192) = a2[12];
  *(a1 + 208) = *(a2 + 26);
  *(a2 + 26) = 0;
  a2[12] = 0u;
  *(a1 + 232) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 232) = *(a2 + 29);
  *(a2 + 29) = 0;
  *(a2 + 216) = 0u;
  *(a1 + 256) = 0;
  *(a1 + 240) = 0u;
  *(a1 + 240) = a2[15];
  *(a1 + 256) = *(a2 + 32);
  *(a2 + 32) = 0;
  a2[15] = 0u;
  *(a1 + 280) = 0;
  *(a1 + 264) = 0u;
  *(a1 + 264) = *(a2 + 33);
  *(a1 + 272) = a2[17];
  *(a2 + 264) = 0u;
  v7 = *(a2 + 36);
  *(a2 + 280) = 0uLL;
  *(a1 + 288) = v7;
  LODWORD(v7) = *(a2 + 74);
  *(a1 + 300) = *(a2 + 150);
  *(a1 + 296) = v7;
  v8 = a2[19];
  *(a1 + 320) = *(a2 + 40);
  *(a1 + 304) = v8;
  *(a2 + 38) = 0;
  *(a2 + 312) = 0u;
  v9 = *(a2 + 328);
  *(a1 + 344) = *(a2 + 43);
  *(a1 + 328) = v9;
  a2[21] = 0u;
  *(a2 + 41) = 0;
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 360) = 0;
  *(a1 + 368) = 0u;
  *(a1 + 360) = *(a2 + 45);
  *(a1 + 368) = a2[23];
  *(a2 + 47) = 0;
  *(a2 + 360) = 0u;
  *(a1 + 400) = 0;
  *(a1 + 384) = 0u;
  *(a1 + 384) = a2[24];
  *(a1 + 400) = *(a2 + 50);
  *(a2 + 50) = 0;
  a2[24] = 0u;
  *(a1 + 424) = 0;
  *(a1 + 408) = 0u;
  *(a1 + 408) = *(a2 + 51);
  *(a1 + 416) = a2[26];
  *(a2 + 53) = 0;
  *(a2 + 408) = 0u;
  *(a1 + 448) = 0;
  *(a1 + 432) = 0u;
  *(a1 + 432) = a2[27];
  v10 = *(a2 + 57);
  *(a1 + 448) = *(a2 + 56);
  a2[27] = 0u;
  a2[28] = 0uLL;
  *(a1 + 456) = v10;
  LODWORD(v7) = *(a2 + 116);
  *(a1 + 468) = *(a2 + 234);
  *(a1 + 464) = v7;
  v11 = *(a2 + 472);
  *(a1 + 488) = *(a2 + 61);
  *(a1 + 472) = v11;
  *(a2 + 59) = 0;
  a2[30] = 0u;
  v12 = a2[31];
  *(a1 + 512) = *(a2 + 64);
  *(a1 + 496) = v12;
  *(a2 + 504) = 0u;
  *(a2 + 62) = 0;
  *(a1 + 536) = 0;
  *(a1 + 520) = 0u;
  *(a1 + 520) = *(a2 + 65);
  *(a1 + 528) = a2[33];
  *(a2 + 67) = 0;
  *(a2 + 520) = 0u;
  *(a1 + 560) = 0;
  *(a1 + 544) = 0u;
  *(a1 + 544) = a2[34];
  *(a1 + 560) = *(a2 + 70);
  *(a2 + 70) = 0;
  a2[34] = 0u;
  *(a1 + 584) = 0;
  *(a1 + 568) = 0u;
  *(a1 + 568) = *(a2 + 71);
  *(a1 + 576) = a2[36];
  *(a2 + 73) = 0;
  *(a2 + 568) = 0u;
  *(a1 + 608) = 0;
  *(a1 + 592) = 0u;
  *(a1 + 592) = a2[37];
  *(a1 + 608) = *(a2 + 76);
  *(a2 + 76) = 0;
  a2[37] = 0u;
  v13 = *(a2 + 77);
  *(a2 + 77) = 0;
  *(a1 + 616) = v13;
  LODWORD(v13) = *(a2 + 156);
  *(a1 + 628) = *(a2 + 314);
  *(a1 + 624) = v13;
  v14 = *(a2 + 632);
  *(a1 + 648) = *(a2 + 81);
  *(a1 + 632) = v14;
  *(a2 + 79) = 0;
  a2[40] = 0uLL;
  result = a2[41];
  *(a1 + 672) = *(a2 + 84);
  *(a1 + 656) = result;
  *(a2 + 664) = 0uLL;
  *(a2 + 82) = 0;
  *(a1 + 680) = *(a2 + 680);
  *(a1 + 688) = *(a2 + 688);
  return result;
}

__int128 *sub_9ADC7C(char **a1, __int128 *a2)
{
  v2 = 0x66FD0EB66FD0EB67 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x5E293205E29320)
  {
    sub_1794();
  }

  if (0xCDFA1D6CDFA1D6CELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xCDFA1D6CDFA1D6CELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x66FD0EB66FD0EB67 * ((a1[2] - *a1) >> 3)) >= 0x2F149902F14990)
  {
    v5 = 0x5E293205E29320;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x5E293205E29320)
    {
      operator new();
    }

    sub_1808();
  }

  v15 = 8 * ((a1[1] - *a1) >> 3);
  sub_9ADE20(v15, a2);
  v6 = (696 * v2 + 696);
  v7 = *a1;
  v8 = a1[1];
  v9 = (*a1 - v8);
  v10 = &v9[v15];
  if (v8 != *a1)
  {
    v11 = &v9[v15];
    v12 = *a1;
    do
    {
      sub_9AD8E4(v11, v12);
      v12 += 696;
      v11 = v13 + 696;
    }

    while (v12 != v8);
    do
    {
      sub_53A868((v7 + 520));
      sub_53A868((v7 + 360));
      sub_53A868((v7 + 192));
      sub_53A868((v7 + 32));
      v7 += 696;
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

void sub_9ADE0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_9AD864(va);
  _Unwind_Resume(a1);
}

uint64_t sub_9ADE20(uint64_t a1, __int128 *a2)
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  memset(v9, 0, sizeof(v9));
  sub_64B998(v9);
  sub_64B998(v10);
  LOBYTE(v11) = 0;
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  memset(v6, 0, sizeof(v6));
  sub_64B998(v6);
  sub_64B998(v7);
  LOBYTE(v8) = 0;
  v5 = 0;
  sub_9AD798(a1, a2, v9, v6, &v5);
  sub_53A868(v7);
  sub_53A868(v6);
  sub_53A868(v10);
  sub_53A868(v9);
  return a1;
}

void sub_9ADF30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, ...)
{
  va_start(va, a52);
  sub_53A868(v53 + 160);
  sub_53A868(&a11);
  sub_53A868(v52 + 160);
  sub_53A868(va);
  _Unwind_Resume(a1);
}

void sub_9ADF6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, ...)
{
  va_start(va, a52);
  sub_53A868(va);
  _Unwind_Resume(a1);
}

char *sub_9ADF80(char **a1)
{
  v1 = 0x66FD0EB66FD0EB67 * ((a1[1] - *a1) >> 3);
  v2 = v1 + 1;
  if ((v1 + 1) > 0x5E293205E29320)
  {
    sub_1794();
  }

  if (0xCDFA1D6CDFA1D6CELL * ((a1[2] - *a1) >> 3) > v2)
  {
    v2 = 0xCDFA1D6CDFA1D6CELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x66FD0EB66FD0EB67 * ((a1[2] - *a1) >> 3)) >= 0x2F149902F14990)
  {
    v4 = 0x5E293205E29320;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0x5E293205E29320)
    {
      operator new();
    }

    sub_1808();
  }

  v14 = 8 * ((a1[1] - *a1) >> 3);
  bzero(v14, 0x2B8uLL);
  sub_9AE128(696 * v1);
  v5 = (696 * v1 + 696);
  v6 = *a1;
  v7 = a1[1];
  v8 = (*a1 - v7);
  v9 = &v8[v14];
  if (v7 != *a1)
  {
    v10 = &v8[v14];
    v11 = *a1;
    do
    {
      sub_9AD8E4(v10, v11);
      v11 += 696;
      v10 = v12 + 696;
    }

    while (v11 != v7);
    do
    {
      sub_53A868((v6 + 520));
      sub_53A868((v6 + 360));
      sub_53A868((v6 + 192));
      sub_53A868((v6 + 32));
      v6 += 696;
    }

    while (v6 != v7);
    v6 = *a1;
  }

  *a1 = v9;
  a1[1] = v5;
  a1[2] = 0;
  if (v6)
  {
    operator delete(v6);
  }

  return v5;
}

void sub_9AE114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_9AD864(va);
  _Unwind_Resume(a1);
}

uint64_t sub_9AE128(uint64_t a1)
{
  *a1 = 0x8000000080000000;
  *(a1 + 8) = 0;
  *(a1 + 12) = xmmword_22A5CD0;
  sub_64B998(a1 + 32);
  sub_64B998(a1 + 192);
  *(a1 + 352) = 0;
  sub_64B998(a1 + 360);
  sub_64B998(a1 + 520);
  *(a1 + 680) = 0;
  *(a1 + 688) = 0;
  return a1;
}

void sub_9AE190(_Unwind_Exception *a1)
{
  sub_53A868(v1 + 360);
  sub_53A868(v1 + 192);
  sub_53A868(v1 + 32);
  _Unwind_Resume(a1);
}

__int128 *sub_9AE1D0(char **a1, __int128 *a2)
{
  v2 = 0x66FD0EB66FD0EB67 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x5E293205E29320)
  {
    sub_1794();
  }

  if (0xCDFA1D6CDFA1D6CELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xCDFA1D6CDFA1D6CELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x66FD0EB66FD0EB67 * ((a1[2] - *a1) >> 3)) >= 0x2F149902F14990)
  {
    v5 = 0x5E293205E29320;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x5E293205E29320)
    {
      operator new();
    }

    sub_1808();
  }

  v15 = 8 * ((a1[1] - *a1) >> 3);
  sub_9AE374(v15, a2);
  v6 = (696 * v2 + 696);
  v7 = *a1;
  v8 = a1[1];
  v9 = (*a1 - v8);
  v10 = &v9[v15];
  if (v8 != *a1)
  {
    v11 = &v9[v15];
    v12 = *a1;
    do
    {
      sub_9AD8E4(v11, v12);
      v12 += 696;
      v11 = v13 + 696;
    }

    while (v12 != v8);
    do
    {
      sub_53A868((v7 + 520));
      sub_53A868((v7 + 360));
      sub_53A868((v7 + 192));
      sub_53A868((v7 + 32));
      v7 += 696;
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

void sub_9AE360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_9AD864(va);
  _Unwind_Resume(a1);
}

uint64_t sub_9AE374(uint64_t a1, __int128 *a2)
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  memset(v9, 0, sizeof(v9));
  sub_64B998(v9);
  sub_64B998(v10);
  LOBYTE(v11) = 0;
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  memset(v6, 0, sizeof(v6));
  sub_64B998(v6);
  sub_64B998(v7);
  LOBYTE(v8) = 0;
  v5 = 0;
  sub_9AD798(a1, a2, v9, v6, &v5);
  sub_53A868(v7);
  sub_53A868(v6);
  sub_53A868(v10);
  sub_53A868(v9);
  return a1;
}

void sub_9AE484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, ...)
{
  va_start(va, a52);
  sub_53A868(v53 + 160);
  sub_53A868(&a11);
  sub_53A868(v52 + 160);
  sub_53A868(va);
  _Unwind_Resume(a1);
}

void sub_9AE4C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, ...)
{
  va_start(va, a52);
  sub_53A868(va);
  _Unwind_Resume(a1);
}

unsigned int **sub_9AE4D4@<X0>(unsigned int **result@<X0>, unsigned int **a2@<X1>, int ***a3@<X2>, unsigned int **a4@<X8>)
{
  v4 = *result;
  if (*result != *a2)
  {
    v5 = a3[1];
    v6 = **a3;
    v7 = (v6 - *v6);
    v8 = *v5;
    if (*v7 > 6u)
    {
      v9 = v7[3];
      if (v9)
      {
        v10 = v6 + v9 + *(v6 + v9);
        v11 = v10 + 4;
        while (1)
        {
          v12 = *v4;
          v13 = v12 - *(v4 + v12);
          v14 = *(v4 + v13);
          if (v14 <= 4)
          {
            v20 = 0;
            v17 = *(v10 + 2);
            if (*(v10 + 1) != v8)
            {
              goto LABEL_5;
            }
          }

          else
          {
            v15 = *(v4 + v13 + 4);
            if (*(v4 + v13 + 4))
            {
              v15 = 8 * *(v4 + v12 + v15);
            }

            v16 = &v11[v15];
            v18 = *v16;
            v17 = *(v16 + 1);
            if (v14 >= 7 && (v19 = *(v4 + v13 + 6)) != 0)
            {
              v20 = 8 * *(v4 + v12 + v19);
              if (v18 != v8)
              {
                goto LABEL_5;
              }
            }

            else
            {
              v20 = 0;
              if (v18 != v8)
              {
                goto LABEL_5;
              }
            }
          }

          if (v17 == *(v5 + 1) && *a3[2] == *&v11[v20])
          {
            goto LABEL_48;
          }

LABEL_5:
          *result = ++v4;
          if (v4 == *a2)
          {
            goto LABEL_48;
          }
        }
      }

      while (1)
      {
        v30 = *v4;
        v31 = v30 - *(v4 + v30);
        v32 = *(v4 + v31);
        if (v32 <= 4)
        {
          v38 = 0;
          v35 = -2147483646;
          if (v8 != 16777228)
          {
            goto LABEL_35;
          }
        }

        else
        {
          v33 = *(v4 + v31 + 4);
          if (*(v4 + v31 + 4))
          {
            v33 = 8 * *(v4 + v30 + v33);
          }

          v34 = (v33 + 4);
          v36 = *v34;
          v35 = v34[1];
          if (v32 >= 7 && (v37 = *(v4 + v31 + 6)) != 0)
          {
            v38 = 8 * *(v4 + v30 + v37);
            if (v36 != v8)
            {
              goto LABEL_35;
            }
          }

          else
          {
            v38 = 0;
            if (v36 != v8)
            {
              goto LABEL_35;
            }
          }
        }

        if (v35 == *(v5 + 1) && *a3[2] == *(v38 + 4))
        {
          goto LABEL_48;
        }

LABEL_35:
        *result = ++v4;
        if (v4 == *a2)
        {
          goto LABEL_48;
        }
      }
    }

    do
    {
      v21 = *v4;
      v22 = v21 - *(v4 + v21);
      v23 = *(v4 + v22);
      if (v23 <= 4)
      {
        v29 = 0;
        v26 = -2147483646;
        if (v8 != 16777228)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v24 = *(v4 + v22 + 4);
        if (*(v4 + v22 + 4))
        {
          v24 = 8 * *(v4 + v21 + v24);
        }

        v25 = (v24 + 4);
        v27 = *v25;
        v26 = v25[1];
        if (v23 >= 7 && (v28 = *(v4 + v22 + 6)) != 0)
        {
          v29 = 8 * *(v4 + v21 + v28);
          if (v27 != v8)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v29 = 0;
          if (v27 != v8)
          {
            goto LABEL_20;
          }
        }
      }

      if (v26 == *(v5 + 1) && *a3[2] == *(v29 + 4))
      {
        break;
      }

LABEL_20:
      *result = ++v4;
    }

    while (v4 != *a2);
  }

LABEL_48:
  *a4 = v4;
  return result;
}

void sub_9AE7B4(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 5)
  {
    if (!(a2 >> 59))
    {
      operator new();
    }

    sub_1794();
  }
}

uint64_t *sub_9AE8D4(unsigned int **a1, unsigned int **a2, uint64_t *a3)
{
  v4 = *a1;
  for (i = *a2; v4 != i; i = *a2)
  {
    v6 = (v4 + *v4);
    v7 = (v6 - *v6);
    v8 = *(v6 + v7[2]);
    if (*v7 >= 7u)
    {
      v9 = v7[3];
      if (v9)
      {
        if (*(v6 + v9 + *(v6 + v9)))
        {
          operator new();
        }
      }
    }

    v16 = v8;
    __p[0] = 0;
    __p[1] = 0;
    v18 = 0;
    v10 = a3[1];
    if (v10 < a3[2])
    {
      *v10 = v8;
      v10[1] = 0;
      v10[2] = 0;
      v10[3] = 0;
      *(v10 + 1) = *__p;
      v10[3] = v18;
      a3[1] = (v10 + 4);
    }

    else
    {
      v11 = sub_9AEB40(a3, &v16);
      v12 = __p[0];
      a3[1] = v11;
      if (v12)
      {
        __p[1] = v12;
        operator delete(v12);
      }
    }

    v4 = *a1 + 1;
    *a1 = v4;
  }

  return a3;
}

void sub_9AEB10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_9AEB40(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_1794();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 4 > v3)
  {
    v3 = v5 >> 4;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFE0)
  {
    v6 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 32 * v2;
  *v7 = *a2;
  *(v7 + 8) = *(a2 + 8);
  *(v7 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v8 = 32 * v2 + 32;
  v9 = *a1;
  v10 = a1[1];
  v11 = v7 + *a1 - v10;
  if (*a1 != v10)
  {
    v12 = v7 + *a1 - v10;
    v13 = *a1;
    do
    {
      *v12 = *v13;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = *(v13 + 1);
      *(v12 + 24) = v13[3];
      v13[1] = 0;
      v13[2] = 0;
      v13[3] = 0;
      v13 += 4;
      v12 += 32;
    }

    while (v13 != v10);
    do
    {
      v14 = v9[1];
      if (v14)
      {
        v9[2] = v14;
        operator delete(v14);
      }

      v9 += 4;
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

void *sub_9AEC9C(void **a1, void *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 6) + 1;
  if (v2 > 0x155555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 6) > v2)
  {
    v2 = 0x5555555555555556 * ((a1[2] - *a1) >> 6);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 6) >= 0xAAAAAAAAAAAAAALL)
  {
    v4 = 0x155555555555555;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0x155555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v5 = ((a1[1] - *a1) >> 6 << 6);
  v6 = a2[1];
  *v5 = *a2;
  v5[1] = 0;
  v5[2] = 0;
  v5[3] = 0;
  v7 = a2[2];
  if (v7 != v6)
  {
    if (((v7 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  sub_55BD50((v5 + 4), (a2 + 4));
  v8 = a1[1];
  v9 = v5 + *a1 - v8;
  sub_9AEE70(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  a1[1] = v5 + 24;
  a1[2] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v5 + 24;
}

void sub_9AEE34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_9AEFC8(va);
  _Unwind_Resume(a1);
}

void sub_9AEE48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v6 = *v4;
  if (*v4)
  {
    *(v3 + 16) = v6;
    operator delete(v6);
  }

  sub_9AEFC8(va);
  _Unwind_Resume(a1);
}

void sub_9AEE70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 8) = *(v6 + 8);
      *(a4 + 24) = *(v6 + 24);
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 32) = *(v6 + 32);
      *(a4 + 48) = *(v6 + 48);
      *(v6 + 32) = 0;
      *(v6 + 40) = 0;
      *(v6 + 48) = 0;
      *(a4 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 72) = 0;
      *(a4 + 56) = *(v6 + 56);
      *(a4 + 72) = *(v6 + 72);
      *(v6 + 56) = 0;
      *(v6 + 64) = 0;
      *(v6 + 72) = 0;
      *(a4 + 80) = 0;
      *(a4 + 88) = 0;
      *(a4 + 96) = 0;
      *(a4 + 80) = *(v6 + 80);
      *(a4 + 96) = *(v6 + 96);
      *(v6 + 80) = 0;
      *(v6 + 88) = 0;
      *(v6 + 96) = 0;
      *(a4 + 104) = 0;
      *(a4 + 112) = 0;
      *(a4 + 120) = 0;
      *(a4 + 104) = *(v6 + 104);
      v7 = *(v6 + 128);
      *(a4 + 120) = *(v6 + 120);
      *(v6 + 104) = 0;
      *(v6 + 112) = 0;
      *(v6 + 120) = 0;
      *(v6 + 128) = 0;
      *(a4 + 128) = v7;
      v8 = *(v6 + 136);
      *(a4 + 140) = *(v6 + 140);
      *(a4 + 136) = v8;
      v9 = *(v6 + 144);
      *(a4 + 160) = *(v6 + 160);
      *(a4 + 144) = v9;
      *(v6 + 152) = 0;
      *(v6 + 160) = 0;
      *(v6 + 144) = 0;
      v10 = *(v6 + 168);
      *(a4 + 184) = *(v6 + 184);
      *(a4 + 168) = v10;
      *(v6 + 176) = 0;
      *(v6 + 184) = 0;
      *(v6 + 168) = 0;
      v6 += 192;
      a4 += 192;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      sub_53A868(v5 + 32);
      v11 = *(v5 + 8);
      if (v11)
      {
        *(v5 + 16) = v11;
        operator delete(v11);
      }

      v5 += 192;
    }
  }
}

uint64_t sub_9AEFC8(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 192;
    sub_53A868(i - 160);
    v4 = *(i - 184);
    if (v4)
    {
      *(i - 176) = v4;
      operator delete(v4);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

char **sub_9AF038(char **a1)
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
        sub_53A868((v3 - 160));
        v5 = *(v3 - 23);
        if (v5)
        {
          *(v3 - 22) = v5;
          operator delete(v5);
        }

        v3 -= 192;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_9AF0B4(uint64_t a1, unint64_t a2, int a3, const char *a4)
{
  v5 = a2;
  v6 = HIDWORD(a2);
  v23 = a4;
  v7 = sub_2C939C(a1, a2, a3);
  if (!v7)
  {
    v9 = 0;
    goto LABEL_7;
  }

  v8 = &v7[-*v7];
  if (*v8 >= 0x2Fu)
  {
    v9 = *(v8 + 23);
    if (v9)
    {
      v9 = (v9 + v7 + *(v9 + v7));
      if (*v9 > v6)
      {
        return &v9[v6 + 1] + v9[v6 + 1];
      }
    }

LABEL_7:
    if (a3 != 1)
    {
      goto LABEL_8;
    }

    return 0;
  }

  v9 = 0;
  if (a3 != 1)
  {
LABEL_8:
    if (!a3)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v12 = v5;
      v13 = exception;
      v19 = v6;
      v20 = v12;
      v18[0] = sub_7FCF0(6u);
      v18[1] = v14;
      sub_2C956C("Failed to acquire entity ", &v23, " in quad node ", " at position ", " on layer ", v18, v21);
      if ((v22 & 0x80u) == 0)
      {
        v15 = v21;
      }

      else
      {
        v15 = v21[0];
      }

      if ((v22 & 0x80u) == 0)
      {
        v16 = v22;
      }

      else
      {
        v16 = v21[1];
      }

      v17 = sub_2D390(v13, v15, v16);
    }

    return &v9[v6 + 1] + v9[v6 + 1];
  }

  return 0;
}

void sub_9AF210(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_9AF240(uint64_t a1, const char *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v14 = v6;
  v15 = v6;
  v7 = strlen(a2);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v6[23] = v7;
  if (v7)
  {
    memmove(v6, a2, v7);
  }

  v6[v8] = 0;
  v9 = v6 + 24;
  v10 = *(a1 + 8) - *a1;
  v11 = &v6[-v10];
  memcpy(&v14[-v10], *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v15 + 24;
  *(a1 + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9;
}

void sub_9AF3DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D03C(va);
  _Unwind_Resume(a1);
}

void *sub_9AF3F0(uint64_t a1, const char *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v14 = v6;
  v15 = v6;
  v7 = strlen(a2);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v6[23] = v7;
  if (v7)
  {
    memmove(v6, a2, v7);
  }

  v6[v8] = 0;
  v9 = v6 + 24;
  v10 = *(a1 + 8) - *a1;
  v11 = &v6[-v10];
  memcpy(&v14[-v10], *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v15 + 24;
  *(a1 + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9;
}

void sub_9AF58C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D03C(va);
  _Unwind_Resume(a1);
}

void *sub_9AF5A0(uint64_t a1, const char *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v14 = v6;
  v15 = v6;
  v7 = strlen(a2);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v6[23] = v7;
  if (v7)
  {
    memmove(v6, a2, v7);
  }

  v6[v8] = 0;
  v9 = v6 + 24;
  v10 = *(a1 + 8) - *a1;
  v11 = &v6[-v10];
  memcpy(&v14[-v10], *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v15 + 24;
  *(a1 + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9;
}

void sub_9AF73C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D03C(va);
  _Unwind_Resume(a1);
}

void *sub_9AF750(uint64_t a1, const char *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v14 = v6;
  v15 = v6;
  v7 = strlen(a2);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v6[23] = v7;
  if (v7)
  {
    memmove(v6, a2, v7);
  }

  v6[v8] = 0;
  v9 = v6 + 24;
  v10 = *(a1 + 8) - *a1;
  v11 = &v6[-v10];
  memcpy(&v14[-v10], *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v15 + 24;
  *(a1 + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9;
}

void sub_9AF8EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D03C(va);
  _Unwind_Resume(a1);
}

void sub_9AF900()
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
  xmmword_27B3228 = 0u;
  unk_27B3238 = 0u;
  dword_27B3248 = 1065353216;
  sub_3A9A34(&xmmword_27B3228, v0, v0);
  sub_3A9A34(&xmmword_27B3228, v3, v3);
  sub_3A9A34(&xmmword_27B3228, __p, __p);
  sub_3A9A34(&xmmword_27B3228, v9, v9);
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
    qword_27B3200 = 0;
    qword_27B3208 = 0;
    qword_27B31F8 = 0;
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